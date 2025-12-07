uint64_t *re::HMAssetCompiler<re::SceneCompiler>::compile@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, re::AssetSerializationScheme *a4@<X3>, uint64_t a5@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35 = 0;
  v36 = 0;
  re::DynamicString::setCapacity(&v33, 0);
  v32 = 0;
  v29[1] = 0;
  v30 = 0;
  v29[0] = 0;
  v31 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(v29, re::SceneCompiler::getSupportedExtensions(void)const::supportedExtensions);
  if (v30)
  {
    v9 = v32;
    v10 = 8 * v30;
    while (1)
    {
      v11 = *v9;
      *&v37 = &unk_1F5D0B020;
      *(&v37 + 1) = v11;
      *(&v38 + 1) = &v37;
      re::pathsToFilesInDirectory(a2, &v37, &v25);
      std::__function::__value_func<BOOL ()(char const*)>::~__value_func[abi:nn200100](&v37);
      if (v25)
      {
        if (v27)
        {
          re::DynamicString::operator=(&v33, v28);
          v12 = 0;
          v13 = 2;
        }

        else
        {
          v13 = 0;
          v12 = 1;
        }
      }

      else
      {
        *&v37 = 100;
        *(&v37 + 1) = re::AssetErrorCategory(void)::instance;
        re::DynamicString::DynamicString(&v38, (&v25 + 8));
        v12 = 0;
        v14 = v38;
        *(a5 + 8) = v37;
        v15 = v39;
        v16 = v40;
        *a5 = 0;
        *(a5 + 24) = v14;
        *(a5 + 40) = v15;
        *(a5 + 48) = v16;
        v13 = 1;
      }

      if (v25 == 1)
      {
        re::DynamicArray<re::DynamicString>::deinit(&v25 + 8);
      }

      else if (*(&v25 + 1) && (v26 & 1) != 0)
      {
        (*(**(&v25 + 1) + 40))();
      }

      if ((v12 & 1) == 0)
      {
        break;
      }

      ++v9;
      v10 -= 8;
      if (!v10)
      {
        v13 = 2;
        break;
      }
    }

    v17 = v13 == 2;
  }

  else
  {
    v17 = 1;
  }

  v18 = v29[0];
  if (v29[0] && v32)
  {
    v18 = (*(*v29[0] + 40))();
  }

  if (v17)
  {
    v19 = v34 >> 1;
    if ((v34 & 1) == 0)
    {
      v19 = v34 >> 1;
    }

    if (v19)
    {
      if (v34)
      {
        v20 = v35;
      }

      else
      {
        v20 = (&v34 + 1);
      }

      re::SceneCompiler::compile((a1 + 8), v20, a4, a5);
    }

    else
    {
      v21 = v25;
      v22 = v26;
      v23 = v27;
      *a5 = 0;
      *(a5 + 8) = 100;
      *(a5 + 16) = re::AssetErrorCategory(void)::instance;
      *(a5 + 24) = v21;
      *(a5 + 40) = v22;
      *(a5 + 48) = v23;
    }
  }

  result = v33;
  if (v33)
  {
    if (v34)
    {
      return (*(*v33 + 40))();
    }
  }

  return result;
}

uint64_t *re::HMAssetCompiler<re::RenderGraphCompiler>::compile@<X0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, re::AssetSerializationScheme *a3@<X3>, uint64_t a4@<X8>)
{
  v6 = a1;
  v41 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35 = 0;
  v36 = 0;
  re::DynamicString::setCapacity(&v33, 0);
  v32 = 0;
  v29[1] = 0;
  v30 = 0;
  v29[0] = 0;
  v31 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(v29, &re::RenderGraphCompiler::getSupportedExtensions(void)const::supportedExtensions);
  re::DynamicArray<re::TransitionCondition *>::add(v29, &off_1ECEF5DE8);
  if (v30)
  {
    v24 = v6;
    v8 = v32;
    v9 = 8 * v30;
    while (1)
    {
      v10 = *v8;
      *&v37 = &unk_1F5D0B020;
      *(&v37 + 1) = v10;
      *(&v38 + 1) = &v37;
      re::pathsToFilesInDirectory(a2, &v37, &v25);
      std::__function::__value_func<BOOL ()(char const*)>::~__value_func[abi:nn200100](&v37);
      if (v25)
      {
        if (v27)
        {
          re::DynamicString::operator=(&v33, v28);
          v11 = 0;
          v12 = 2;
        }

        else
        {
          v12 = 0;
          v11 = 1;
        }
      }

      else
      {
        *&v37 = 100;
        *(&v37 + 1) = re::AssetErrorCategory(void)::instance;
        re::DynamicString::DynamicString(&v38, (&v25 + 8));
        v11 = 0;
        v13 = v38;
        *(a4 + 8) = v37;
        v14 = v39;
        v15 = v40;
        *a4 = 0;
        *(a4 + 24) = v13;
        *(a4 + 40) = v14;
        *(a4 + 48) = v15;
        v12 = 1;
      }

      if (v25 == 1)
      {
        re::DynamicArray<re::DynamicString>::deinit(&v25 + 8);
      }

      else if (*(&v25 + 1) && (v26 & 1) != 0)
      {
        (*(**(&v25 + 1) + 40))();
      }

      if ((v11 & 1) == 0)
      {
        break;
      }

      ++v8;
      v9 -= 8;
      if (!v9)
      {
        v12 = 2;
        break;
      }
    }

    v16 = v12 == 2;
    v6 = v24;
  }

  else
  {
    v16 = 1;
  }

  v17 = v29[0];
  if (v29[0] && v32)
  {
    v17 = (*(*v29[0] + 40))();
  }

  if (v16)
  {
    v18 = v34 >> 1;
    if ((v34 & 1) == 0)
    {
      v18 = v34 >> 1;
    }

    if (v18)
    {
      if (v34)
      {
        v19 = v35;
      }

      else
      {
        v19 = (&v34 + 1);
      }

      re::RenderGraphCompiler::compile((v6 + 8), v19, a3, a4);
    }

    else
    {
      v20 = v25;
      v21 = v26;
      v22 = v27;
      *a4 = 0;
      *(a4 + 8) = 100;
      *(a4 + 16) = re::AssetErrorCategory(void)::instance;
      *(a4 + 24) = v20;
      *(a4 + 40) = v21;
      *(a4 + 48) = v22;
    }
  }

  result = v33;
  if (v33)
  {
    if (v34)
    {
      return (*(*v33 + 40))();
    }
  }

  return result;
}

uint64_t *re::HMAssetCompiler<re::RenderGraphEmitterCompiler>::compile@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, re::AssetSerializationScheme *a3@<X3>, uint64_t a4@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34 = 0;
  v35 = 0;
  re::DynamicString::setCapacity(&v32, 0);
  v31 = 0;
  v28[1] = 0;
  v29 = 0;
  v28[0] = 0;
  v30 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(v28, &re::RenderGraphEmitterCompiler::getSupportedExtensions(void)const::supportedExtensions);
  if (v29)
  {
    v8 = v31;
    v9 = 8 * v29;
    while (1)
    {
      v10 = *v8;
      *&v36 = &unk_1F5D0B020;
      *(&v36 + 1) = v10;
      *(&v37 + 1) = &v36;
      re::pathsToFilesInDirectory(a2, &v36, &v24);
      std::__function::__value_func<BOOL ()(char const*)>::~__value_func[abi:nn200100](&v36);
      if (v24)
      {
        if (v26)
        {
          re::DynamicString::operator=(&v32, v27);
          v11 = 0;
          v12 = 2;
        }

        else
        {
          v12 = 0;
          v11 = 1;
        }
      }

      else
      {
        *&v36 = 100;
        *(&v36 + 1) = re::AssetErrorCategory(void)::instance;
        re::DynamicString::DynamicString(&v37, (&v24 + 8));
        v11 = 0;
        v13 = v37;
        *(a4 + 8) = v36;
        v14 = v38;
        v15 = v39;
        *a4 = 0;
        *(a4 + 24) = v13;
        *(a4 + 40) = v14;
        *(a4 + 48) = v15;
        v12 = 1;
      }

      if (v24 == 1)
      {
        re::DynamicArray<re::DynamicString>::deinit(&v24 + 8);
      }

      else if (*(&v24 + 1) && (v25 & 1) != 0)
      {
        (*(**(&v24 + 1) + 40))();
      }

      if ((v11 & 1) == 0)
      {
        break;
      }

      ++v8;
      v9 -= 8;
      if (!v9)
      {
        v12 = 2;
        break;
      }
    }

    v16 = v12 == 2;
  }

  else
  {
    v16 = 1;
  }

  v17 = v28[0];
  if (v28[0] && v31)
  {
    v17 = (*(*v28[0] + 40))();
  }

  if (v16)
  {
    v18 = v33 >> 1;
    if ((v33 & 1) == 0)
    {
      v18 = v33 >> 1;
    }

    if (v18)
    {
      if (v33)
      {
        v19 = v34;
      }

      else
      {
        v19 = (&v33 + 1);
      }

      re::RenderGraphEmitterCompiler::compile((a1 + 8), v19, a3, a4);
    }

    else
    {
      v20 = v24;
      v21 = v25;
      v22 = v26;
      *a4 = 0;
      *(a4 + 8) = 100;
      *(a4 + 16) = re::AssetErrorCategory(void)::instance;
      *(a4 + 24) = v20;
      *(a4 + 40) = v21;
      *(a4 + 48) = v22;
    }
  }

  result = v32;
  if (v32)
  {
    if (v33)
    {
      return (*(*v32 + 40))();
    }
  }

  return result;
}

re::DynamicString *re::SceneCompiler::getCurrentCompiledAssetInfo@<X0>(re::SceneCompiler *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = re::DynamicString::setCapacity((a2 + 8), 0);
  *a2 = 0x100000001;
  v5[0] = *re::SceneAsset::assetType(v3);
  v5[1] = strlen(v5[0]);
  return re::DynamicString::operator=((a2 + 8), v5);
}

uint64_t re::SceneCompiler::assetIntrospectionType(re::SceneCompiler *this)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::SceneAsset>(BOOL)::info = re::introspect_SceneAsset(0, v4, v5, v6, v7, v8);
      v1 = &unk_1EE187000;
    }
  }

  return v1[244];
}

_anonymous_namespace_ *re::SceneCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  return re::DynamicArray<re::TransitionCondition *>::add(a1, re::SceneCompiler::getSupportedExtensions(void)const::supportedExtensions);
}

re *re::SceneCompiler::compile@<X0>(re::SceneCompiler *this@<X0>, re::AssetUtilities *a2@<X1>, re::AssetSerializationScheme *a3@<X3>, uint64_t a4@<X8>)
{
  v7 = re::globalAllocators(this);
  v8 = (*(*v7[2] + 32))(v7[2], 40, 8);
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  {
    re::introspect<re::ecs2::SceneAssetData>(BOOL)::info = re::ecs2::introspect_SceneAssetData(0, v14, v15, v16, v17, v18);
  }

  result = re::AssetUtilities::readSourceJson(&v23, a2, v8, re::introspect<re::ecs2::SceneAssetData>(BOOL)::info, a3);
  if (v23 == 1)
  {
    *a4 = v23;
    *(a4 + 8) = v8;
  }

  else
  {
    v10 = re::globalAllocators(result)[2];
    re::DynamicArray<re::ecs2::EntityAssetData>::deinit(v8);
    (*(*v10 + 40))(v10, v8);
    *&v19 = 100;
    *(&v19 + 1) = re::AssetErrorCategory(void)::instance;
    result = re::DynamicString::DynamicString(&v20, &v24);
    v11 = v20;
    *(a4 + 8) = v19;
    v12 = v21;
    v13 = v22;
    *a4 = 0;
    *(a4 + 24) = v11;
    *(a4 + 40) = v12;
    *(a4 + 48) = v13;
    if ((v23 & 1) == 0)
    {
      result = v24;
      if (v24)
      {
        if (v25)
        {
          return (*(*v24 + 40))();
        }
      }
    }
  }

  return result;
}

re::DynamicString *re::RigCompiler::getCurrentCompiledAssetInfo@<X0>(re::RigCompiler *this@<X0>, void *a2@<X8>)
{
  *a2 = 0x100000001;
  v2 = (a2 + 1);
  v3 = re::RigAsset::assetType(this);
  v4 = *v3;
}

uint64_t re::RigCompiler::assetIntrospectionType(re::RigCompiler *this)
{
  v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v3)
    {
      re::introspect<re::RigAsset>(BOOL)::info = re::introspect_RigAsset(0, v4, v5, v6, v7, v8);
      v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v1 + 350);
}

uint64_t re::RigCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  v3 = "rerig";
  v2[0] = &v3;
  v2[1] = 1;
  return re::DynamicArray<char const*>::DynamicArray(a1, v2);
}

uint64_t re::RigCompiler::compile@<X0>(re::RigCompiler *this@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, re::AssetSerializationScheme *a4@<X3>, uint64_t a5@<X8>)
{
  v71 = *MEMORY[0x1E69E9840];
  v10 = re::globalAllocators(this);
  v11 = (*(*v10[2] + 32))(v10[2], 120, 8);
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 80) = 0u;
  *(v11 + 96) = 0u;
  *(v11 + 112) = 0;
  *&v66 = &unk_1F5CD1C08;
  *(&v67 + 1) = &v66;
  v58 = v57;
  v56 = v11;
  v57[0] = &unk_1F5CD1C08;
  std::__function::__value_func<void ()(re::RigAsset *)>::~__value_func[abi:nn200100](&v66);
  v12 = strrchr(a2, 46);
  if (strcasecmp(v12 + 1, "rerig"))
  {
    re::DynamicString::format(&v66, "Invalid Asset Path: %s.", v13, a2);
    v14 = v66;
    v16 = *(&v67 + 1);
    v15 = v67;
    *a5 = 0;
    v17 = 200;
    goto LABEL_3;
  }

  v20 = v56;
  v5 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    goto LABEL_48;
  }

  while (1)
  {
    v21 = *(v5 + 350);
    v5 = &v51;
    SourceJson = re::AssetUtilities::readSourceJson(&v51, a2, v20, v21, a4);
    if ((v51 & 1) == 0)
    {
      *&v66 = 100;
      *(&v66 + 1) = re::AssetErrorCategory(void)::instance;
      re::DynamicString::DynamicString(&v67, &v52[4]);
      v30 = v67;
      *(a5 + 8) = v66;
      v31 = v68;
      *a5 = 0;
      *(a5 + 24) = v30;
      *(a5 + 40) = v31;
      if (v51)
      {
        goto LABEL_4;
      }

      v32 = *&v52[4];
      if (!*&v52[4] || (v52[12] & 1) == 0)
      {
        goto LABEL_4;
      }

      v33 = *&v54[4];
      goto LABEL_27;
    }

    if (a3 && (*a3 & 1) == 0)
    {
      v24 = v56;
LABEL_29:
      *a5 = 1;
      *(a5 + 8) = v24;
      v56 = 0;
      return std::__function::__value_func<void ()(re::RigAsset *)>::~__value_func[abi:nn200100](v57);
    }

    v24 = v56;
    a2 = *(v56 + 2);
    if (!a2)
    {
      goto LABEL_18;
    }

    v25 = 0;
    a4 = 0;
    do
    {
      v5 = *(v56 + 2);
      if (v5 <= a4)
      {
        v50 = 0;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v66 = 0u;
        v37 = MEMORY[0x1E69E9C10];
        v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v59 = 136315906;
        *&v59[4] = "operator[]";
        v60 = 1024;
        if (v38)
        {
          v39 = 3;
        }

        else
        {
          v39 = 2;
        }

        v61 = 789;
        v62 = 2048;
        v63 = a4;
        v64 = 2048;
        v65 = v5;
        _os_log_send_and_compose_impl(v39, &v50, &v66, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v59, 38, v49);
        _os_crash_msg();
        __break(1u);
LABEL_43:
        *v59 = 0;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v66 = 0u;
        v40 = MEMORY[0x1E69E9C10];
        v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v51 = 136315906;
        *v52 = "operator[]";
        *&v52[8] = 1024;
        if (v41)
        {
          v42 = 3;
        }

        else
        {
          v42 = 2;
        }

        *&v52[10] = 789;
        v53 = 2048;
        *v54 = a3;
        *&v54[8] = 2048;
        *&v54[10] = a4;
        _os_log_send_and_compose_impl(v42, v59, &v66, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v51, 38, v49, v50);
        _os_crash_msg();
        __break(1u);
      }

      if ((v51 & 1) == 0)
      {
        if (v54[12])
        {
          v34 = v55;
        }

        else
        {
          v34 = &v54[13];
        }

        re::DynamicString::format(&v66, "Rig %zu Validation Failed: %s.", v23, a4, v34);
        v35 = v66;
        v36 = v67;
        *a5 = 0;
        *(a5 + 8) = 100;
        *(a5 + 16) = re::AssetErrorCategory(void)::instance;
        *(a5 + 24) = v35;
        *(a5 + 40) = v36;
        if (v51)
        {
          goto LABEL_4;
        }

        v32 = *&v54[4];
        if (!*&v54[4] || (v54[12] & 1) == 0)
        {
          goto LABEL_4;
        }

        v33 = v55;
LABEL_27:
        (*(*v32 + 40))(v32, v33);
        goto LABEL_4;
      }

      a4 = (a4 + 1);
      v25 += 1144;
    }

    while (a2 != a4);
    v24 = v56;
LABEL_18:
    a4 = *(v24 + 12);
    if (!a4)
    {
      goto LABEL_29;
    }

    a3 = 0;
    v27 = (*(v24 + 14) + 56);
    while (1)
    {
      v29 = *v27;
      v27 += 16;
      v28 = v29;
      if (a2 <= v29)
      {
        break;
      }

      a3 = (a3 + 1);
      if (a4 == a3)
      {
        goto LABEL_29;
      }
    }

    if (a4 <= a3)
    {
      goto LABEL_43;
    }

    re::DynamicString::format(&v66, "Mesh Rig %zu uses an invalid rig: %u.", v23, a3, v28);
    v14 = v66;
    v16 = *(&v67 + 1);
    v15 = v67;
    *a5 = 0;
    v17 = 100;
LABEL_3:
    *(a5 + 8) = v17;
    *(a5 + 16) = re::AssetErrorCategory(void)::instance;
    *(a5 + 24) = v14;
    *(a5 + 40) = v15;
    *(a5 + 48) = v16;
LABEL_4:
    v18 = v56;
    v56 = 0;
    if (!v18)
    {
      return std::__function::__value_func<void ()(re::RigAsset *)>::~__value_func[abi:nn200100](v57);
    }

    *&v66 = v18;
    if (v58)
    {
      (*(*v58 + 48))(v58, &v66);
      return std::__function::__value_func<void ()(re::RigAsset *)>::~__value_func[abi:nn200100](v57);
    }

    std::__throw_bad_function_call[abi:nn200100]();
LABEL_48:
    v43 = v20;
    v20 = v43;
    if (v44)
    {
      *(v5 + 350) = re::introspect_RigAsset(0, v43, v45, v46, v47, v48);
      v20 = v43;
    }
  }
}

uint64_t std::__function::__func<re::RigCompiler::compile(char const*,void *,re::AssetSerializationScheme &)::$_0,std::allocator<re::RigCompiler::compile(char const*,void *,re::AssetSerializationScheme &)::$_0>,void ()(re::RigAsset *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::RigAsset *)>::~__value_func[abi:nn200100](uint64_t a1)
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

re::DynamicString *re::LUTTextureCompiler::getCurrentCompiledAssetInfo@<X0>(re::LUTTextureCompiler *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = re::DynamicString::setCapacity((a2 + 8), 0);
  *a2 = 0x100000001;
  v5[0] = *re::TextureAsset::assetType(v3);
  v5[1] = strlen(v5[0]);
  return re::DynamicString::operator=((a2 + 8), v5);
}

uint64_t re::LUTTextureCompiler::assetIntrospectionType(re::LUTTextureCompiler *this)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::TextureAsset>(BOOL)::info = re::introspect_TextureAsset(0, v4, v5, v6, v7, v8);
      v1 = &unk_1EE187000;
    }
  }

  return v1[235];
}

_anonymous_namespace_ *re::LUTTextureCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  return re::DynamicArray<re::TransitionCondition *>::add(a1, re::LUTTextureCompiler::getSupportedExtensions(void)const::supportedExtensions);
}

void re::LUTTextureCompiler::compile(id *this@<X0>, const re::mtl::Device *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    memset(buf, 0, sizeof(buf));
    *v34 = 1;
    *&v34[24] = 0;
    v34[28] = 0;
    *&v34[32] = 0;
    v34[36] = 0;
    memset(&v34[4], 0, 17);
    *&v34[40] = 6;
    v36 = 0uLL;
    v35 = 0;
    v37 = -65536;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    if (a3)
    {
      v8 = *(a3 + 1);
      *buf = *a3;
      *v34 = v8;
      *&v34[16] = *(a3 + 2);
      *&v34[28] = *(a3 + 44);
      re::ObjCObject::operator=(&v35, a3 + 8);
      v36 = *(a3 + 72);
      v37 = *(a3 + 22);
      re::FixedArray<short>::operator=(&v38, a3 + 12);
      v41 = a3[120];
      v9 = v35;
    }

    else
    {
      v9 = 0;
    }

    v26 = *&v34[8];
    v27 = *&v34[40];
    v28 = v9;
    re::FixedArray<short>::FixedArray(&v29, &v38);
    v32 = v41;
    re::load3DTextureFromLutDataFile(&v42, this + 1, a2, v15);
    if (v43)
    {
      v24 = std::__throw_bad_variant_access[abi:nn200100]();
      re::LUTTextureCompiler::deleteAsset(v24, v25);
    }

    else
    {
      v16 = v42;
      v17 = v16;
      v18 = off_1F5CD1CF0;
      if (v43 != -1)
      {
        v16 = (off_1F5CD1CF0[v43])(&v49, &v42);
      }

      if (v17)
      {
        v19 = v17;
        v48 = 0;
        *&v49 = v19;
        DWORD2(v49) = 0;
        LOWORD(v42) = 0;
        v43 = 0uLL;
        *&v45[8] = 0u;
        memset(v46, 0, 28);
        v44 = 0;
        v47 = 0;
        TextureAsset = re::TextureAsset::makeTextureAsset(&v49, &v42, v27, v26);
        if (v46[0])
        {
          if (v47)
          {
            (*(*v46[0] + 40))(v46[0]);
          }

          v47 = 0;
          memset(v46, 0, 24);
          ++LODWORD(v46[3]);
        }

        if (*&v45[8])
        {
        }

        if (DWORD2(v49) != -1)
        {
          (off_1F5CD1CF0[DWORD2(v49)])(&v42, &v49);
        }

        v21 = 1;
        LOBYTE(v42) = 1;
        *&v43 = TextureAsset;
      }

      else
      {
        v54 = 0;
        v55 = 0;
        v56 = 0;
        re::DynamicString::setCapacity(&v53, 0);
        re::DynamicString::assignf(&v53, "failed to load texture %s", a2);
        *&v49 = 100;
        *(&v49 + 1) = re::AssetErrorCategory(void)::instance;
        re::DynamicString::DynamicString(&v50, &v53);
        TextureAsset = *(&v51 + 1);
        v18 = v50;
        v22 = v51;
        LOBYTE(v42) = 0;
        v43 = v49;
        *&v45[16] = v52;
        v44 = v50;
        *v45 = v51;
        if (v53 && (v54 & 1) != 0)
        {
          (*(*v53 + 40))(v53, v55);
        }

        v21 = (v22 & 1) == 0;
      }

      if (v29)
      {
        if (v30)
        {
          (*(*v29 + 40))();
          v30 = 0;
          v31 = 0;
        }

        v29 = 0;
      }

      if (v17)
      {
        v23 = v43;
        *a4 = 1;
        *(a4 + 8) = v23;
      }

      else
      {
        v49 = v43;
        re::DynamicString::DynamicString(&v50, &v44);
        *a4 = 0;
        *(a4 + 8) = v49;
        *(a4 + 24) = v50;
        *(a4 + 48) = v52;
        *(a4 + 32) = v51;
        if (v18 != 0 && !v21)
        {
          (*(*v18 + 5))(v18, TextureAsset);
        }
      }

      if (v38)
      {
        if (v39)
        {
          (*(*v38 + 40))();
          v39 = 0;
          v40 = 0;
        }

        v38 = 0;
      }
    }
  }

  else
  {
    v10 = *re::pipelineLogObjects(this);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "TextureAssetCompiler: sourceFilePath is null.", buf, 2u);
    }

    v12 = *buf;
    v13 = *v34;
    v14 = *&v34[8];
    *a4 = 0;
    *(a4 + 8) = 100;
    *(a4 + 16) = re::AssetErrorCategory(void)::instance;
    *(a4 + 24) = v12;
    *(a4 + 40) = v13;
    *(a4 + 48) = v14;
  }
}

void re::LUTTextureCompiler::~LUTTextureCompiler(id *this)
{
}

{

  JUMPOUT(0x1E6906520);
}

void re::getLibraryHash(re *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  memset(v9, 0, sizeof(v9));
  if (!a5[1])
  {
    if (*(a4 + 72))
    {
      a5 = (a4 + 64);
    }

    else
    {
      if (!*(a3 + 104))
      {
        v7 = *(*(a2 + 48) + 368);
        *a1 = 1;
        *(a1 + 1) = v7;
        goto LABEL_7;
      }

      a5 = (a3 + 96);
    }
  }

  re::AssetHandle::operator=(v9, a5);
  re::AssetHandle::AssetHandle(v8, v9);
  re::getLibraryHash(a1, a2, v8);
  re::AssetHandle::~AssetHandle(v8);
LABEL_7:
  re::AssetHandle::~AssetHandle(v9);
}

void re::getLibraryHash(re *a1, uint64_t a2, const re::AssetHandle *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 1);
  if (v5 && (v6 = atomic_load((v5 + 896)), v6 == 2))
  {
    re::AssetHandle::AssetHandle(v25, a3);
    re::validateAssetType(v25, "Attempting to get library hash");
    re::AssetHandle::~AssetHandle(v25);
    v9 = *(a3 + 1);
    if (v9)
    {
      v10 = *(v9 + 280);
      v11 = re::ShaderLibraryAsset::assetType(v8);
      if (v10 == v11)
      {
        v12 = re::AssetHandle::loadedAsset<re::ShaderLibraryAsset>(a3);
        v13 = *(v12 + 48);
        v14 = v13 >> 1;
        if ((v13 & 1) == 0)
        {
          v14 = v13 >> 1;
        }

        v15 = *(a2 + 48);
        if (v14)
        {
          if (v13)
          {
            v16 = *(v12 + 56);
          }

          else
          {
            v16 = (v12 + 49);
          }

          *buf = re::ShaderManager::getLibraryHash(*(a2 + 48), v16);
          if (re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v15 + 376, buf))
          {
            v17 = *buf;
            if (*buf)
            {
              goto LABEL_15;
            }
          }

          v15 = *(a2 + 48);
        }

        v17 = *(v15 + 368);
LABEL_15:
        *a1 = 1;
        *(a1 + 1) = v17;
        return;
      }
    }

    else
    {
      v11 = re::ShaderLibraryAsset::assetType(v8);
    }

    v21 = *(a3 + 1);
    if (v21)
    {
      v22 = *(v21 + 280);
      v23 = re::ShaderGraphAsset::assetType(v11);
      if (v22 == v23)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v23 = re::ShaderGraphAsset::assetType(v11);
    }

    v18 = *re::assetsLogObjects(v23);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v24 = **(*(a3 + 1) + 280);
      *buf = 136315138;
      *&buf[4] = v24;
      v20 = "Encountered asset with unexpected type %s in MaterialCompiler.cpp";
      goto LABEL_25;
    }
  }

  else
  {
    v18 = *re::assetsLogObjects(a1);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = **(*(a3 + 1) + 280);
      *buf = 136315138;
      *&buf[4] = v19;
      v20 = "Can't get hash for not loaded %s";
LABEL_25:
      _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, v20, buf, 0xCu);
    }
  }

LABEL_26:
  *a1 = 0;
}

BOOL re::materialTextureParamIsAsset(re *this, const char *a2)
{
  v2 = strrchr(this, 46);
  result = 0;
  if (v2)
  {
    v4 = v2;
    if (re::canLoadTextureFileWithExtension((v2 + 1), v3) || !strcmp(v4, ".compiledtexture"))
    {
      return 1;
    }
  }

  return result;
}

void re::tryLoadTexture(re *this, re::RenderManager *a2, AssetService *a3, re::MaterialTextureParam *a4)
{
  if (LODWORD(a3[4].var0) != 1 || (v5 = a4, (v7 = re::AssetHandle::loadedAsset<re::TextureAsset>(a3)) == 0))
  {
LABEL_19:
    *this = 0;
    return;
  }

  v8 = v7;
  if (!v5 || !re::TextureAsset::isLegacyLinearFormatWithSRGBData(v7) || (!*(v8 + 13) || !*(v8 + 12)) && ((re::TextureAsset::addLegacyLinearFormatWithSRGBDataTexture(v8, a2), !*(v8 + 13)) || !*(v8 + 12)))
  {
    isValid = re::TextureData::isValid((v8 + 112));
    if (isValid)
    {
      if (*(v8 + 30))
      {
        v10 = *re::pipelineLogObjects(isValid);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *v11 = 0;
          _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Cannot render a texture asset that is not backed by a MTLAsset.", v11, 2u);
        }
      }
    }

    if (*(v8 + 2) && *(v8 + 1))
    {
      *this = 1;
      re::TextureHandle::TextureHandle((this + 8), (v8 + 8));
      return;
    }

    goto LABEL_19;
  }

  *this = 1;

  re::TextureHandle::TextureHandle((this + 8), (v8 + 96));
}

uint64_t re::makeFlattenedMaterialFile(re *this, const re::MaterialDefinitionFile *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v32 = 0;
  memset(v30, 0, sizeof(v30));
  v31 = 0;
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v29 = 0x7FFFFFFFLL;
  re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&v26, this);
  v21 = this;
  re::DynamicArray<re::RigDataValue *>::add(v30, &v21);
  re::AssetHandle::AssetHandle(v25, (this + 120));
  if (*(re::AssetHandle::assetInfo(v25) + 22))
  {
    while (1)
    {
      v3 = re::AssetHandle::loadedAsset<re::MaterialDefinitionAsset>(v25);
      if (!v3)
      {
        v7 = 0;
        goto LABEL_41;
      }

      v4 = v3;
      v5 = (v3 + 8);
      v6 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::contains(&v26, (v3 + 8));
      if (v6)
      {
        break;
      }

      re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&v26, v5);
      v21 = v5;
      re::DynamicArray<re::RigDataValue *>::add(v30, &v21);
      re::AssetHandle::operator=(v25, (v4 + 128));
      if (!*(re::AssetHandle::assetInfo(v25) + 22))
      {
        goto LABEL_40;
      }
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    v8 = re::DynamicString::setCapacity(&v21, 0);
    v9 = v28;
    if (v28)
    {
      v10 = 0;
      v11 = (v27 + 8);
      while (1)
      {
        v12 = *v11;
        v11 += 12;
        if (v12 < 0)
        {
          break;
        }

        if (v28 == ++v10)
        {
          LODWORD(v10) = v28;
          break;
        }
      }
    }

    else
    {
      LODWORD(v10) = 0;
    }

    if (v10 != v28)
    {
      v13 = v27;
      do
      {
        re::DynamicString::DynamicString(buf, (v13 + 48 * v10 + 16));
        if (buf[8])
        {
          v14 = *&v35[2];
        }

        else
        {
          v14 = &buf[9];
        }

        re::DynamicString::appendf(&v21, "-> %s", v14);
        v8 = *buf;
        if (*buf && (buf[8] & 1) != 0)
        {
          v8 = (*(**buf + 40))();
        }

        v13 = v27;
        if (v28 <= v10 + 1)
        {
          v15 = v10 + 1;
        }

        else
        {
          v15 = v28;
        }

        while (v15 - 1 != v10)
        {
          LODWORD(v10) = v10 + 1;
          if ((*(v27 + 48 * v10 + 8) & 0x80000000) != 0)
          {
            goto LABEL_28;
          }
        }

        LODWORD(v10) = v15;
LABEL_28:
        ;
      }

      while (v10 != v9);
    }

    v16 = *re::pipelineLogObjects(v8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      if (*(this + 1))
      {
        v17 = *(this + 2);
      }

      else
      {
        v17 = this + 9;
      }

      if (v22)
      {
        v18 = v23;
      }

      else
      {
        v18 = &v22 + 1;
      }

      *buf = 136315394;
      *&buf[4] = v17;
      v34 = 2080;
      *v35 = v18;
      _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "Found circular dependency in material %s: {%s}", buf, 0x16u);
    }

    if (v21 && (v22 & 1) != 0)
    {
      (*(*v21 + 40))();
    }
  }

LABEL_40:
  v7 = re::resolveOverrideMaterials(this, v30);
LABEL_41:
  re::AssetHandle::~AssetHandle(v25);
  v19 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v26);
  if (v30[0] && v32)
  {
    (*(*v30[0] + 40))(v19);
  }

  return v7;
}

uint64_t re::resolveOverrideMaterials(re *a1, uint64_t a2)
{
  v281 = *MEMORY[0x1E69E9840];
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 736, 8);
  re::MaterialDefinitionFile::MaterialDefinitionFile(v5);
  v270 = 0;
  v268 = 0u;
  v269 = 0u;
  v271 = 0x7FFFFFFFLL;
  v266 = 0;
  v264 = 0u;
  v265 = 0u;
  v267 = 0x7FFFFFFFLL;
  v262 = 0;
  v260 = 0u;
  v261 = 0u;
  v263 = 0x7FFFFFFFLL;
  v258 = 0;
  v256 = 0u;
  v257 = 0u;
  v259 = 0x7FFFFFFFLL;
  v254 = 0;
  v253 = 0u;
  *__b = 0u;
  v255 = 0x7FFFFFFFLL;
  v250 = 0;
  v248 = 0u;
  v249 = 0u;
  v251 = 0x7FFFFFFFLL;
  v7 = *(a2 + 16);
  if (!v7)
  {
    goto LABEL_357;
  }

  v242 = v5;
  v8 = *(a2 + 32) + 8 * v7;
  v231 = a1 + 9;
  *&v6 = 136315394;
  v230 = v6;
  v5 = 88;
  v232 = a1;
  v233 = a2;
  do
  {
    if (HIDWORD(v253))
    {
      if (DWORD2(v253))
      {
        memset_pattern16(__b[1], &memset_pattern_178, 4 * DWORD2(v253));
      }

      v9 = v254;
      if (v254)
      {
        v10 = v253;
        do
        {
          re::HashTable<re::DynamicString,re::DynamicArray<unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(v10);
          v10 += 22;
          --v9;
        }

        while (v9);
      }

      v254 = 0;
      HIDWORD(v253) = 0;
      LODWORD(v255) = 0x7FFFFFFF;
      ++HIDWORD(v255);
    }

    re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(&v248);
    v11 = *(v8 - 8);
    v8 -= 8;
    re::DynamicString::operator=(v242, v11);
    v12 = *(v242 + 40);
    if (v12)
    {
      v13 = v12 >> 1;
    }

    else
    {
      v13 = v12 >> 1;
    }

    if (!v13)
    {
      re::DynamicString::operator=((v242 + 32), (*v8 + 32));
    }

    v14 = re::AssetHandle::operator=(v242 + 96, (*v8 + 96));
    v15 = *v8;
    v16 = *(*v8 + 72);
    if (v16)
    {
      v17 = v16 >> 1;
    }

    else
    {
      v17 = v16 >> 1;
    }

    if (v17)
    {
      v18 = *re::pipelineLogObjects(v14);
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      v15 = *v8;
      if (v19)
      {
        if (*(v15 + 72))
        {
          v20 = *(v15 + 80);
        }

        else
        {
          v20 = v15 + 73;
        }

        *buf = 136315138;
        *&buf[4] = v20;
        _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
        v15 = *v8;
      }
    }

    re::append<re::DynamicString,re::DynamicString>((v242 + 192), v15 + 192);
    v21 = *v8;
    v22 = *(*v8 + 272);
    if (v22)
    {
      v23 = 0;
      v24 = *(v21 + 256);
      while (1)
      {
        v25 = *v24;
        v24 += 22;
        if (v25 < 0)
        {
          break;
        }

        if (v22 == ++v23)
        {
          LODWORD(v23) = *(*v8 + 272);
          break;
        }
      }
    }

    else
    {
      LODWORD(v23) = 0;
    }

    if (v23 != v22)
    {
      v26 = *(v21 + 256);
      do
      {
        v27 = v26 + 88 * v23;
        memset(buf, 0, 24);
        v28 = re::Hash<re::DynamicString>::operator()(v276, (v27 + 8));
        re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v242 + 240, v28, buf, v27 + 8);
        v29 = *&buf[12];
        if (*&buf[12] == 0x7FFFFFFF)
        {
          re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::MaterialTextureParam const&>(v242 + 240, buf, (v27 + 8), v27 + 40);
        }

        else
        {
          ++*(v242 + 280);
          std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>,(std::__variant_detail::_Trait)1> const&>(*(v242 + 256) + 88 * v29 + 40, v27 + 40);
        }

        if (*(v21 + 272) <= (v23 + 1))
        {
          v30 = v23 + 1;
        }

        else
        {
          v30 = *(v21 + 272);
        }

        v26 = *(v21 + 256);
        while (v30 - 1 != v23)
        {
          LODWORD(v23) = v23 + 1;
          if ((*(v26 + 88 * v23) & 0x80000000) != 0)
          {
            goto LABEL_43;
          }
        }

        LODWORD(v23) = v30;
LABEL_43:
        ;
      }

      while (v23 != v22);
      v21 = *v8;
    }

    v31 = re::append<re::DynamicString,re::DynamicString>((v242 + 144), v21 + 144);
    v32 = *v8;
    v33 = *(*v8 + 368);
    if (v33)
    {
      v34 = 0;
      v35 = *(v32 + 352);
      while (1)
      {
        v36 = *v35;
        v35 += 38;
        if (v36 < 0)
        {
          break;
        }

        if (v33 == ++v34)
        {
          LODWORD(v34) = *(*v8 + 368);
          break;
        }
      }
    }

    else
    {
      LODWORD(v34) = 0;
    }

    if (v34 != v33)
    {
      v37 = *(v32 + 352);
      do
      {
        v38 = v37 + 152 * v34;
        memset(buf, 0, 24);
        v39 = re::Hash<re::DynamicString>::operator()(v276, (v38 + 8));
        re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v242 + 336, v38 + 8, v39, buf);
        v40 = *&buf[12];
        if (*&buf[12] == 0x7FFFFFFF)
        {
          v31 = re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::OptionalMaterialSamplerData const&>(v242 + 336, buf, (v38 + 8), v38 + 40);
        }

        else
        {
          ++*(v242 + 376);
          v31 = re::OptionalMaterialSamplerData::operator=(*(v242 + 352) + 152 * v40 + 40, v38 + 40);
        }

        if (*(v32 + 368) <= (v34 + 1))
        {
          v41 = v34 + 1;
        }

        else
        {
          v41 = *(v32 + 368);
        }

        v37 = *(v32 + 352);
        while (v41 - 1 != v34)
        {
          LODWORD(v34) = v34 + 1;
          if ((*(v37 + 152 * v34) & 0x80000000) != 0)
          {
            goto LABEL_64;
          }
        }

        LODWORD(v34) = v41;
LABEL_64:
        ;
      }

      while (v34 != v33);
      v32 = *v8;
    }

    v235 = *(v32 + 320);
    if (v235)
    {
      v42 = 0;
      v43 = *(v32 + 304);
      while (1)
      {
        v44 = *v43;
        v43 += 40;
        if (v44 < 0)
        {
          break;
        }

        if (v235 == ++v42)
        {
          LODWORD(v42) = *(v32 + 320);
          break;
        }
      }
    }

    else
    {
      LODWORD(v42) = 0;
    }

    if (v42 != v235)
    {
      do
      {
        v45 = *(v32 + 304) + 160 * v42;
        v46 = re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(v242 + 288, (v45 + 8));
        if (v46)
        {
          v48 = v46;
          if (*re::MaterialTextureParam::serializationString((v45 + 40), v47))
          {
            std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>,(std::__variant_detail::_Trait)1> const&>(v48, v45 + 40);
          }

          v31 = re::replaceIfValid<re::DynamicString>((v48 + 40), (v45 + 80));
          if (*(v45 + 144) == 1)
          {
            if ((*(v48 + 104) & 1) == 0)
            {
              *(v48 + 104) = 1;
            }

            *(v48 + 108) = *(v45 + 148);
          }

          v49 = *(v45 + 120);
          v50 = v49 >> 1;
          if ((v49 & 1) == 0)
          {
            v50 = v49 >> 1;
          }

          if (v50)
          {
            v51 = (v49 & 1) != 0 ? *(v45 + 128) : (v45 + 121);
            v31 = strcmp("dynamicSamplers", v51);
            if (v31)
            {
              v53 = *re::pipelineLogObjects(v31);
              v31 = os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);
              if (v31)
              {
                v54 = *v8;
                if (*(*v8 + 8))
                {
                  v55 = *(v54 + 16);
                }

                else
                {
                  v55 = v54 + 9;
                }

                if (*(v45 + 120))
                {
                  v56 = *(v45 + 128);
                }

                else
                {
                  v56 = v45 + 121;
                }

                *buf = 136315650;
                *&buf[4] = v55;
                *&buf[12] = 2080;
                *&buf[14] = v56;
                *&buf[22] = 2080;
                *&buf[24] = "dynamicSamplers";
                _os_log_impl(&dword_1E1C61000, v53, OS_LOG_TYPE_DEFAULT, "Material '%s' uses custom dynamic sampler array %s, but custom array names are no longer supported. Please ensure the array name in the shader is %s and remove SamplerArray from your material file.", buf, 0x20u);
              }
            }
          }
        }

        else
        {
          memset(buf, 0, 24);
          v52 = re::Hash<re::DynamicString>::operator()(v276, (v45 + 8));
          v31 = re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v242 + 288, v45 + 8, v52, buf);
          if (*&buf[12] == 0x7FFFFFFF)
          {
            v31 = re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::MaterialTextureBlockData const&>(v242 + 288, buf, (v45 + 8), v45 + 40);
          }
        }

        v57 = *(v32 + 320);
        if (v57 <= v42 + 1)
        {
          v57 = v42 + 1;
        }

        while (v57 - 1 != v42)
        {
          LODWORD(v42) = v42 + 1;
          if ((*(*(v32 + 304) + 160 * v42) & 0x80000000) != 0)
          {
            goto LABEL_104;
          }
        }

        LODWORD(v42) = v57;
LABEL_104:
        ;
      }

      while (v42 != v235);
      v32 = *v8;
    }

    v247 = &v268;
    v276[0] = 0;
    if (*(v32 + 400))
    {
      v58 = 0;
      do
      {
        v59 = (*(v32 + 416) + 664 * v58);
        v60 = v59[5];
        if (v60)
        {
          v61 = v60 >> 1;
        }

        else
        {
          v61 = v60 >> 1;
        }

        if (v61)
        {
          memset(buf, 0, 24);
          v62 = re::Hash<re::DynamicString>::operator()(&v245, v59 + 4);
          re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(buf, __b, (v59 + 4), v62);
          if (*&buf[12] == 0x7FFFFFFF)
          {
            v63 = re::HashTable<re::DynamicString,re::DynamicArray<unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(__b, *&buf[8], *buf);
            re::DynamicString::DynamicString((v63 + 8), (v59 + 4));
            *(v63 + 40) = 0;
            v64 = v63 + 40;
            *(v64 + 32) = 0;
            *(v64 + 8) = 0;
            *(v64 + 16) = 0;
            *(v64 + 24) = 1;
            ++HIDWORD(v255);
          }

          else
          {
            v64 = v253 + 88 * *&buf[12] + 40;
          }

          v31 = re::DynamicArray<unsigned long>::add(v64, v276);
        }

        else
        {
          re::resolveOverrideMaterials(re::MaterialDefinitionFile const&,re::DynamicArray<re::MaterialDefinitionFile const*> const&)::$_0::operator()(&v247, v59, v59);
        }

        v58 = v276[0] + 1;
        v276[0] = v58;
        v32 = *v8;
      }

      while (v58 < *(*v8 + 400));
    }

    v65 = HIDWORD(v253);
    do
    {
      v66 = v254;
      v236 = v65;
      if (v254)
      {
        v67 = 0;
        v68 = v253;
        while (1)
        {
          v69 = *v68;
          v68 += 22;
          if (v69 < 0)
          {
            break;
          }

          if (v254 == ++v67)
          {
            LODWORD(v67) = v254;
            break;
          }
        }
      }

      else
      {
        LODWORD(v67) = 0;
      }

      if (v67 != v254)
      {
        v70 = v253;
        while (1)
        {
          v71 = v70 + 88 * v67;
          v72 = re::Hash<re::DynamicString>::operator()(buf, (v71 + 8));
          v31 = re::HashTable<re::DynamicString,re::MaterialTechniqueData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(buf, &v268, v71 + 8, v72);
          if (*&buf[12] != 0x7FFFFFFF)
          {
            v73 = v70 + 88 * v67;
            v31 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&v248, (v71 + 8));
            v74 = *(v73 + 56);
            if (v74)
            {
              break;
            }
          }

LABEL_132:
          if (v254 <= v67 + 1)
          {
            v81 = v67 + 1;
          }

          else
          {
            v81 = v254;
          }

          v70 = v253;
          while (v81 - 1 != v67)
          {
            LODWORD(v67) = v67 + 1;
            if ((*(v253 + 88 * v67) & 0x80000000) != 0)
            {
              goto LABEL_140;
            }
          }

          LODWORD(v67) = v81;
LABEL_140:
          if (v67 == v66)
          {
            goto LABEL_141;
          }
        }

        v75 = *(v73 + 72);
        v76 = 8 * v74;
        while (1)
        {
          v77 = *v75;
          v78 = *(*v8 + 400);
          if (v78 <= *v75)
          {
            break;
          }

          v79 = (*(*v8 + 416) + 664 * v77);
          v80 = re::HashTable<re::DynamicString,re::MaterialTechniqueData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](&v268, v79 + 4);
          re::resolveOverrideMaterials(re::MaterialDefinitionFile const&,re::DynamicArray<re::MaterialDefinitionFile const*> const&)::$_0::operator()(&v247, v79, v80);
          re::resolveOverrideMaterials(re::MaterialDefinitionFile const&,re::DynamicArray<re::MaterialDefinitionFile const*> const&)::$_0::operator()(&v247, v79, v79);
          ++v75;
          v76 -= 8;
          if (!v76)
          {
            goto LABEL_132;
          }
        }

        v245 = 0;
        v279 = 0u;
        v280 = 0u;
        v278 = 0u;
        memset(buf, 0, sizeof(buf));
        v196 = MEMORY[0x1E69E9C10];
        v200 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v276[0]) = 136315906;
        *(v276 + 4) = "operator[]";
        WORD2(v276[1]) = 1024;
        if (v200)
        {
          v201 = 3;
        }

        else
        {
          v201 = 2;
        }

        *(&v276[1] + 6) = 797;
        WORD1(v276[2]) = 2048;
        *(&v276[2] + 4) = v77;
        WORD2(v276[3]) = 2048;
        *(&v276[3] + 6) = v78;
        _os_log_send_and_compose_impl(v201, &v245, buf, 80, &dword_1E1C61000, v196, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v276, 38, v230, *(&v230 + 1));
        _os_crash_msg();
        __break(1u);
LABEL_368:
        LODWORD(v197) = 0;
        goto LABEL_369;
      }

LABEL_141:
      v82 = v250;
      if (v250)
      {
        v83 = 0;
        v84 = (v249 + 8);
        while (1)
        {
          v85 = *v84;
          v84 += 12;
          if (v85 < 0)
          {
            break;
          }

          if (v250 == ++v83)
          {
            LODWORD(v83) = v250;
            break;
          }
        }
      }

      else
      {
        LODWORD(v83) = 0;
      }

      if (v83 != v250)
      {
        v86 = v249;
        do
        {
          v87 = v86 + 48 * v83;
          v88 = re::Hash<re::DynamicString>::operator()(buf, (v87 + 16));
          v31 = re::HashTable<re::DynamicString,re::internal::AssetNetworkLoader::FragmentedNetworkAsset,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(buf, __b, v87 + 16, v88);
          v89 = *&buf[12];
          if (*&buf[12] != 0x7FFFFFFF)
          {
            v90 = (v253 + 88 * *&buf[12]);
            v91 = *v90 & 0x7FFFFFFF;
            if (*&buf[16] == 0x7FFFFFFF)
            {
              *(__b[1] + *&buf[8]) = v91;
            }

            else
            {
              *(v253 + 88 * *&buf[16]) = *(v253 + 88 * *&buf[16]) & 0x80000000 | v91;
            }

            v31 = re::HashTable<re::DynamicString,re::DynamicArray<unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(v90);
            v92 = HIDWORD(v253);
            *v90 = *v90 & 0x80000000 | v255;
            HIDWORD(v253) = v92 - 1;
            v255 = __PAIR64__(HIDWORD(v255), v89) + 0x100000000;
          }

          v86 = v249;
          if (v250 <= v83 + 1)
          {
            v93 = v83 + 1;
          }

          else
          {
            v93 = v250;
          }

          while (v93 - 1 != v83)
          {
            LODWORD(v83) = v83 + 1;
            if ((*(v249 + 48 * v83 + 8) & 0x80000000) != 0)
            {
              goto LABEL_161;
            }
          }

          LODWORD(v83) = v93;
LABEL_161:
          ;
        }

        while (v83 != v82);
      }

      v65 = HIDWORD(v253);
    }

    while (v236 > HIDWORD(v253));
    if (v254)
    {
      v94 = 0;
      v95 = v253;
      while (1)
      {
        v96 = *v95;
        v95 += 22;
        if (v96 < 0)
        {
          break;
        }

        if (v254 == ++v94)
        {
          LODWORD(v94) = v254;
          break;
        }
      }
    }

    else
    {
      LODWORD(v94) = 0;
    }

    if (v94 != v254)
    {
      v97 = v253;
      v234 = v254;
      do
      {
        v98 = v97 + 88 * v94;
        v99 = *(v98 + 56);
        if (v99)
        {
          v100 = *(v98 + 72);
          v237 = v97 + 88 * v94;
          v101 = 8 * v99;
          do
          {
            v102 = *v100;
            v103 = *(*v8 + 400);
            if (v103 <= *v100)
            {
              v245 = 0;
              v279 = 0u;
              v280 = 0u;
              v278 = 0u;
              memset(buf, 0, sizeof(buf));
              v227 = MEMORY[0x1E69E9C10];
              v228 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v276[0]) = 136315906;
              *(v276 + 4) = "operator[]";
              WORD2(v276[1]) = 1024;
              if (v228)
              {
                v229 = 3;
              }

              else
              {
                v229 = 2;
              }

              *(&v276[1] + 6) = 797;
              WORD1(v276[2]) = 2048;
              *(&v276[2] + 4) = v102;
              WORD2(v276[3]) = 2048;
              *(&v276[3] + 6) = v103;
              _os_log_send_and_compose_impl(v229, &v245, buf, 80, &dword_1E1C61000, v227, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v276, 38, v230, *(&v230 + 1));
              _os_crash_msg();
              __break(1u);
            }

            v104 = *(*v8 + 416);
            v105 = *re::assetsLogObjects(v31);
            v31 = os_log_type_enabled(v105, OS_LOG_TYPE_ERROR);
            if (v31)
            {
              v106 = *v8;
              if (*(*v8 + 8))
              {
                v107 = *(v106 + 16);
              }

              else
              {
                v107 = v106 + 9;
              }

              v108 = v104 + 664 * v102;
              if (*(v108 + 8))
              {
                v109 = *(v108 + 16);
              }

              else
              {
                v109 = v108 + 9;
              }

              v110 = v237 + 17;
              if (*(v237 + 16))
              {
                v110 = *(v237 + 24);
              }

              *buf = 136315650;
              *&buf[4] = v107;
              *&buf[12] = 2080;
              *&buf[14] = v109;
              *&buf[22] = 2080;
              *&buf[24] = v110;
              _os_log_error_impl(&dword_1E1C61000, v105, OS_LOG_TYPE_ERROR, "Material definition '%s' contains technique '%s' which inherits from non-existent technique '%s', or forms a dependency cycle, so it will be skipped.", buf, 0x20u);
            }

            ++v100;
            v101 -= 8;
          }

          while (v101);
        }

        if (v234 <= v94 + 1)
        {
          v111 = v94 + 1;
        }

        else
        {
          v111 = v234;
        }

        while (v111 - 1 != v94)
        {
          LODWORD(v94) = v94 + 1;
          if ((*(v97 + 88 * v94) & 0x80000000) != 0)
          {
            goto LABEL_193;
          }
        }

        LODWORD(v94) = v111;
LABEL_193:
        ;
      }

      while (v94 != v234);
    }

    v112 = *v8;
    v113 = *(*v8 + 440);
    if (v113)
    {
      v114 = *(v112 + 456);
      v115 = &v114[9 * v113];
      v238 = v115;
      do
      {
        re::DynamicString::DynamicString(buf, v114);
        re::DynamicArray<re::DynamicString>::DynamicArray(&v278, v114 + 4);
        v116 = re::Hash<re::DynamicString>::operator()(v276, buf);
        v117 = v116;
        if (v264)
        {
          v118 = v116 % DWORD2(v265);
          v119 = *(*(&v264 + 1) + 4 * v118);
          if (v119 != 0x7FFFFFFF)
          {
            v120 = v265;
            for (i = v265 + 120 * v119 + 8; ; i = v120 + 120 * v119 + 8)
            {
              if (re::DynamicString::operator==(i, buf))
              {
                ++HIDWORD(v267);
                v123 = v120 + 120 * v119;
                re::DynamicString::operator=((v123 + 40), buf);
                re::DynamicArray<re::DynamicString>::operator=(v123 + 72, &v278);
                v115 = v238;
                goto LABEL_205;
              }

              LODWORD(v119) = *(v120 + 120 * v119) & 0x7FFFFFFF;
              if (v119 == 0x7FFFFFFF)
              {
                break;
              }
            }

            v115 = v238;
          }
        }

        else
        {
          LODWORD(v118) = 0;
        }

        v122 = re::HashTable<re::DynamicString,re::MaterialTechniqueGroupData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(&v264, v118, v117);
        re::DynamicString::DynamicString((v122 + 8), buf);
        re::DynamicString::DynamicString((v122 + 40), buf);
        re::DynamicArray<re::DynamicString>::DynamicArray(v122 + 72, &v278);
        ++HIDWORD(v267);
LABEL_205:
        re::MaterialTechniqueGroupData::deinit(buf);
        re::DynamicArray<re::DynamicString>::deinit(&v278);
        if (*buf && (buf[8] & 1) != 0)
        {
          (*(**buf + 40))();
        }

        v114 += 9;
      }

      while (v114 != v115);
      v112 = *v8;
    }

    v124 = *(v112 + 576);
    if (v124)
    {
      v125 = *(v112 + 592);
      v126 = (v125 + 80 * v124);
      do
      {
        re::DynamicString::DynamicString(buf, v125);
        re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(&v278, v125 + 32);
        v127 = re::Hash<re::DynamicString>::operator()(v276, buf);
        re::HashTable<re::DynamicString,re::DebugMapping,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v276, &v260, buf, v127);
        if (HIDWORD(v276[1]) == 0x7FFFFFFF)
        {
          memset(v276, 0, 24);
          v128 = re::Hash<re::DynamicString>::operator()(&v245, buf);
          re::HashTable<re::DynamicString,re::DebugMapping,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v276, &v260, buf, v128);
          if (HIDWORD(v276[1]) == 0x7FFFFFFF)
          {
            v129 = re::HashTable<re::DynamicString,re::DebugMapping,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(&v260, v276[1], v276[0]);
            re::DynamicString::DynamicString((v129 + 8), buf);
            re::DynamicString::DynamicString((v129 + 40), buf);
            re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v129 + 72, &v278);
            ++HIDWORD(v263);
          }
        }

        else
        {
          v130 = re::Hash<re::DynamicString>::operator()(v276, buf);
          re::HashTable<re::DynamicString,re::DebugMapping,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v276, &v260, buf, v130);
          v131 = v280;
          if (v280)
          {
            v132 = 0;
            v133 = v279;
            while (1)
            {
              v134 = *v133;
              v133 += 14;
              if (v134 < 0)
              {
                break;
              }

              if (v280 == ++v132)
              {
                LODWORD(v132) = v280;
                break;
              }
            }
          }

          else
          {
            LODWORD(v132) = 0;
          }

          if (v132 != v280)
          {
            v135 = v261 + (HIDWORD(v276[1]) << 7);
            v136 = v279;
            do
            {
              re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(v135 + 72, (v136 + 56 * v132 + 8), (v136 + 56 * v132 + 40));
              if (v280 <= v132 + 1)
              {
                v137 = v132 + 1;
              }

              else
              {
                v137 = v280;
              }

              v136 = v279;
              while (v137 - 1 != v132)
              {
                LODWORD(v132) = v132 + 1;
                if ((*(v279 + 56 * v132) & 0x80000000) != 0)
                {
                  goto LABEL_232;
                }
              }

              LODWORD(v132) = v137;
LABEL_232:
              ;
            }

            while (v132 != v131);
          }
        }

        v138 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v278);
        if (*buf && (buf[8] & 1) != 0)
        {
          (*(**buf + 40))(v138);
        }

        v125 = (v125 + 80);
      }

      while (v125 != v126);
      v112 = *v8;
    }

    v139 = *(v112 + 664);
    if (!v139)
    {
      goto LABEL_251;
    }

    v140 = *(v112 + 680);
    v141 = (v140 + 104 * v139);
    v239 = v141;
    while (2)
    {
      re::MaterialTechniqueQualityLevelSetData::MaterialTechniqueQualityLevelSetData(buf, v140);
      v142 = re::Hash<re::DynamicString>::operator()(v276, buf);
      v143 = v142;
      if (!v256)
      {
        LODWORD(v144) = 0;
LABEL_247:
        v148 = re::HashTable<re::DynamicString,re::MaterialTechniqueQualityLevelSetData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(&v256, v144, v143);
        re::DynamicString::DynamicString((v148 + 8), buf);
        re::MaterialTechniqueQualityLevelSetData::MaterialTechniqueQualityLevelSetData((v148 + 40), buf);
        ++HIDWORD(v259);
        goto LABEL_249;
      }

      v144 = v142 % DWORD2(v257);
      v145 = *(*(&v256 + 1) + 4 * v144);
      if (v145 == 0x7FFFFFFF)
      {
        goto LABEL_247;
      }

      v146 = v257;
      while (!re::DynamicString::operator==(v146 + 152 * v145 + 8, buf))
      {
        v147 = *(v146 + 152 * v145);
        v145 = v147 & 0x7FFFFFFF;
        if ((v147 & 0x7FFFFFFF) == 0x7FFFFFFF)
        {
          v141 = v239;
          goto LABEL_247;
        }
      }

      ++HIDWORD(v259);
      re::MaterialTechniqueQualityLevelSetData::operator=((v146 + 152 * v145 + 40), buf);
      v141 = v239;
LABEL_249:
      re::MaterialTechniqueQualityLevelSetData::~MaterialTechniqueQualityLevelSetData(buf);
      v140 = (v140 + 104);
      if (v140 != v141)
      {
        continue;
      }

      break;
    }

    v112 = *v8;
LABEL_251:
    v149 = *(v112 + 720);
    if (v149)
    {
      v150 = 0;
      v151 = *(v112 + 704);
      while (1)
      {
        v152 = *v151;
        v151 += 14;
        if (v152 < 0)
        {
          break;
        }

        if (v149 == ++v150)
        {
          LODWORD(v150) = *(v112 + 720);
          break;
        }
      }
    }

    else
    {
      LODWORD(v150) = 0;
    }

    if (v150 != v149)
    {
      do
      {
        v153 = *(v112 + 704) + 56 * v150;
        re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(v242 + 688, (v153 + 8), (v153 + 40));
        v154 = *(v112 + 720);
        if (v154 <= v150 + 1)
        {
          v154 = v150 + 1;
        }

        while (v154 - 1 != v150)
        {
          LODWORD(v150) = v150 + 1;
          if ((*(*(v112 + 704) + 56 * v150) & 0x80000000) != 0)
          {
            goto LABEL_264;
          }
        }

        LODWORD(v150) = v154;
LABEL_264:
        ;
      }

      while (v150 != v149);
      v112 = *v8;
    }

    v155 = *(v112 + 632);
    if (v155)
    {
      v156 = 0;
      v157 = *(v112 + 616);
      while (1)
      {
        v158 = *v157;
        v157 += 24;
        if (v158 < 0)
        {
          break;
        }

        if (v155 == ++v156)
        {
          LODWORD(v156) = *(v112 + 632);
          break;
        }
      }
    }

    else
    {
      LODWORD(v156) = 0;
    }

    v240 = *(v112 + 632);
    if (v156 == v155)
    {
      goto LABEL_311;
    }

    while (2)
    {
      v159 = *(v112 + 616) + 96 * v156;
      v160 = v159 + 8;
      v161 = re::Hash<re::DynamicString>::operator()(buf, (v159 + 8));
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v242 + 192, v161, buf, v159 + 8);
      if (*&buf[12] == 0x7FFFFFFF)
      {
        v162 = re::Hash<re::DynamicString>::operator()(buf, (v159 + 8));
        re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v242 + 240, v162, buf, v159 + 8);
        if (*&buf[12] == 0x7FFFFFFF)
        {
          v163 = re::Hash<re::DynamicString>::operator()(buf, (v159 + 8));
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v242 + 144, v163, buf, v159 + 8);
          if (*&buf[12] == 0x7FFFFFFF)
          {
            v164 = re::Hash<re::DynamicString>::operator()(buf, (v159 + 8));
            v165 = re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v242 + 288, v159 + 8, v164, buf);
            if (*&buf[12] == 0x7FFFFFFF)
            {
              v166 = *re::pipelineLogObjects(v165);
              if (os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
              {
                if (*(v160 + 8))
                {
                  v167 = *(v160 + 16);
                }

                else
                {
                  v167 = v160 + 9;
                }

                v178 = v231;
                if (*(v232 + 1))
                {
                  v178 = *(v232 + 2);
                }

                *buf = v230;
                *&buf[4] = v167;
                *&buf[12] = 2080;
                *&buf[14] = v178;
                _os_log_impl(&dword_1E1C61000, v166, OS_LOG_TYPE_DEFAULT, "Ignoring property for unknown parameter (%s) in material (%s)", buf, 0x16u);
              }

              goto LABEL_303;
            }
          }
        }
      }

      v168 = (v159 + 40);
      v169 = re::Hash<re::DynamicString>::operator()(buf, v160);
      re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v242 + 600, v160, v169, buf);
      if (*&buf[12] != 0x7FFFFFFF)
      {
        v175 = re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v242 + 600, v160);
        if (*v168 == 1)
        {
          re::Optional<re::DynamicString>::operator=(v175, v168);
        }

        v176 = re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v242 + 600, v160);
        if (v168[40] == 1)
        {
          if ((*(v176 + 40) & 1) == 0)
          {
            *(v176 + 40) = 1;
          }

          *(v176 + 41) = v168[41];
        }

        goto LABEL_303;
      }

      memset(buf, 0, 24);
      v170 = re::Hash<re::DynamicString>::operator()(v276, v160);
      re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v242 + 600, v160, v170, buf);
      v171 = *&buf[12];
      if (*&buf[12] == 0x7FFFFFFF)
      {
        v172 = re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v242 + 600, *&buf[8], *buf);
        re::DynamicString::DynamicString((v172 + 8), v160);
        v173 = *v168;
        v172[40] = v173;
        if (v173 == 1)
        {
          re::DynamicString::DynamicString((v172 + 48), (v168 + 8));
        }

        v174 = v168[40];
        v172[80] = v174;
        if (v174 == 1)
        {
          v172[81] = v168[41];
        }

        LODWORD(v155) = v240;
        ++*(v242 + 640);
        goto LABEL_303;
      }

      ++*(v242 + 640);
      v177 = (*(v242 + 616) + 96 * v171);
      re::Optional<re::DynamicString>::operator=(v177 + 40, v168);
      if (v177[80])
      {
        if ((v168[40] & 1) == 0)
        {
          v177[80] = 0;
          goto LABEL_303;
        }

LABEL_298:
        v177[81] = v168[41];
      }

      else if (v168[40])
      {
        v177[80] = 1;
        goto LABEL_298;
      }

LABEL_303:
      v179 = *(v112 + 632);
      if (v179 <= v156 + 1)
      {
        v179 = v156 + 1;
      }

      while (v179 - 1 != v156)
      {
        LODWORD(v156) = v156 + 1;
        if ((*(*(v112 + 616) + 96 * v156) & 0x80000000) != 0)
        {
          goto LABEL_309;
        }
      }

      LODWORD(v156) = v179;
LABEL_309:
      if (v156 != v155)
      {
        continue;
      }

      break;
    }

    v112 = *v8;
LABEL_311:
    re::appendOrDelete<re::DynamicString,re::DynamicString>(v242 + 464, v112 + 464);
    re::StackScratchAllocator::StackScratchAllocator(buf);
    re::DynamicString::DynamicString(&v245, "Transparent", buf);
    re::DynamicString::DynamicString(&v243, "FadeOpaque", buf);
    v180 = *v8;
    if (*(*v8 + 540))
    {
      v241 = *(v180 + 544);
      if (v241)
      {
        v181 = 0;
        v182 = *(v180 + 528);
        while (1)
        {
          v183 = *v182;
          v182 += 24;
          if (v183 < 0)
          {
            break;
          }

          if (v241 == ++v181)
          {
            LODWORD(v181) = *(v180 + 544);
            break;
          }
        }
      }

      else
      {
        LODWORD(v181) = 0;
      }

LABEL_334:
      while (v181 != v241)
      {
        v184 = (*(v180 + 528) + 96 * v181);
        memset(v276, 0, sizeof(v276));
        HIDWORD(v276[4]) = 0x7FFFFFFF;
        v273 = 0;
        v272 = 0;
        v274 = 0;
        v185 = re::Hash<re::DynamicString>::operator()(&v275, v184 + 1);
        re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v242 + 512, (v184 + 1), v185, &v272);
        if (HIDWORD(v273) == 0x7FFFFFFF)
        {
          v186 = re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>(v242 + 512, &v272, (v184 + 1), v276);
        }

        else
        {
          v186 = (*(v242 + 528) + 96 * HIDWORD(v273) + 40);
        }

        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v276);
        if (v184[2])
        {
          v187 = v184[3];
        }

        else
        {
          v187 = v184 + 17;
        }

        if (!strcmp(v187, "Fade"))
        {
          v188 = re::Hash<re::DynamicString>::operator()(v276, &v245);
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>((v184 + 5), v188, v276, &v245);
          if (HIDWORD(v276[1]) != 0x7FFFFFFF)
          {
            v189 = re::Hash<re::DynamicString>::operator()(v276, &v243);
            re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v186, v189, v276, &v243);
            if (HIDWORD(v276[1]) != 0x7FFFFFFF)
            {
              re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(v186, &v243);
            }
          }
        }

        re::append<re::DynamicString,re::DynamicString>(v186, (v184 + 5));
        v190 = *(v180 + 544);
        if (v190 <= v181 + 1)
        {
          v190 = v181 + 1;
        }

        while (v190 - 1 != v181)
        {
          LODWORD(v181) = v181 + 1;
          if ((*(*(v180 + 528) + 96 * v181) & 0x80000000) != 0)
          {
            goto LABEL_334;
          }
        }

        LODWORD(v181) = v190;
      }
    }

    if (v243 && (v244 & 1) != 0)
    {
      (*(*v243 + 40))();
    }

    if (v245 && (v246 & 1) != 0)
    {
      (*(*v245 + 40))();
    }

    re::StackScratchAllocator::~StackScratchAllocator(buf);
  }

  while (v8 != *(v233 + 32));
  v191 = v270;
  v5 = v242;
  if (v270)
  {
    v192 = 0;
    v193 = v269;
    v194 = v269;
    while ((*v194 & 0x80000000) == 0)
    {
      v194 += 178;
      if (v270 == ++v192)
      {
        LODWORD(v192) = v270;
        break;
      }
    }

    if (v270 != v192)
    {
      do
      {
        re::DynamicArray<re::MaterialTechniqueData>::add((v242 + 384), v193 + 712 * v192 + 40);
        if (v270 <= v192 + 1)
        {
          v195 = v192 + 1;
        }

        else
        {
          v195 = v270;
        }

        v193 = v269;
        while (v195 - 1 != v192)
        {
          LODWORD(v192) = v192 + 1;
          if ((*(v269 + 712 * v192) & 0x80000000) != 0)
          {
            goto LABEL_356;
          }
        }

        LODWORD(v192) = v195;
LABEL_356:
        ;
      }

      while (v192 != v191);
    }
  }

LABEL_357:
  re::HashTable<re::DynamicString,re::MaterialTechniqueData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v268);
  if (*(v5 + 432) < HIDWORD(v265))
  {
    re::DynamicArray<re::MaterialTechniqueGroupData>::setCapacity((v5 + 424), HIDWORD(v265));
  }

  LODWORD(v196) = v266;
  if (!v266)
  {
    goto LABEL_368;
  }

  v197 = 0;
  v198 = v265;
  while (1)
  {
    v199 = *v198;
    v198 += 30;
    if (v199 < 0)
    {
      break;
    }

    if (v266 == ++v197)
    {
      LODWORD(v197) = v266;
      break;
    }
  }

LABEL_369:
  if (v197 != v196)
  {
    v202 = v265;
    do
    {
      v203 = v202 + 120 * v197 + 8;
      v204 = re::Hash<re::DynamicString>::operator()(buf, v203);
      v205 = re::HashTable<re::DynamicString,re::MaterialTechniqueData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(buf, &v268, v203, v204);
      if (*&buf[12] == 0x7FFFFFFF)
      {
        re::DynamicArray<re::MaterialTechniqueGroupData>::add((v5 + 424), v202 + 120 * v197 + 40);
      }

      else
      {
        v206 = *re::pipelineLogObjects(v205);
        if (os_log_type_enabled(v206, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v203 + 8))
          {
            v207 = *(v203 + 16);
          }

          else
          {
            v207 = v203 + 9;
          }

          *buf = 136315138;
          *&buf[4] = v207;
          _os_log_impl(&dword_1E1C61000, v206, OS_LOG_TYPE_DEFAULT, "Technique group %s has the same name as a technique. Skipping the group.", buf, 0xCu);
        }
      }

      if (v266 <= v197 + 1)
      {
        v208 = v197 + 1;
      }

      else
      {
        v208 = v266;
      }

      v202 = v265;
      while (v208 - 1 != v197)
      {
        LODWORD(v197) = v197 + 1;
        if ((*(v265 + 120 * v197) & 0x80000000) != 0)
        {
          goto LABEL_386;
        }
      }

      LODWORD(v197) = v208;
LABEL_386:
      ;
    }

    while (v197 != v196);
  }

  re::HashTable<re::DynamicString,re::MaterialTechniqueGroupData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v264);
  v209 = v262;
  if (v262)
  {
    v210 = 0;
    v211 = v261;
    while (1)
    {
      v212 = *v211;
      v211 += 32;
      if (v212 < 0)
      {
        break;
      }

      if (v262 == ++v210)
      {
        LODWORD(v210) = v262;
        break;
      }
    }
  }

  else
  {
    LODWORD(v210) = 0;
  }

  if (v210 != v262)
  {
    v213 = v261;
    do
    {
      re::DynamicArray<re::DebugMapping>::add((v5 + 560), (v213 + (v210 << 7) + 40));
      if (v262 <= v210 + 1)
      {
        v214 = v210 + 1;
      }

      else
      {
        v214 = v262;
      }

      v213 = v261;
      while (v214 - 1 != v210)
      {
        LODWORD(v210) = v210 + 1;
        if ((*(v261 + (v210 << 7)) & 0x80000000) != 0)
        {
          goto LABEL_404;
        }
      }

      LODWORD(v210) = v214;
LABEL_404:
      ;
    }

    while (v210 != v209);
  }

  re::HashTable<re::DynamicString,re::DebugMapping,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v260);
  if (*(v5 + 656) < HIDWORD(v257))
  {
    re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::setCapacity((v5 + 648), HIDWORD(v257));
  }

  v215 = v258;
  if (v258)
  {
    v216 = 0;
    v217 = v257;
    while (1)
    {
      v218 = *v217;
      v217 += 38;
      if (v218 < 0)
      {
        break;
      }

      if (v258 == ++v216)
      {
        LODWORD(v216) = v258;
        break;
      }
    }
  }

  else
  {
    LODWORD(v216) = 0;
  }

  if (v216 != v258)
  {
    v219 = v257;
    do
    {
      v220 = v219 + 152 * v216 + 8;
      v221 = re::Hash<re::DynamicString>::operator()(buf, v220);
      v222 = re::HashTable<re::DynamicString,re::MaterialTechniqueData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(buf, &v268, v220, v221);
      if (*&buf[12] == 0x7FFFFFFF)
      {
        re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::add((v5 + 648), v219 + 152 * v216 + 40);
      }

      else
      {
        v223 = *re::pipelineLogObjects(v222);
        if (os_log_type_enabled(v223, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v220 + 8))
          {
            v224 = *(v220 + 16);
          }

          else
          {
            v224 = v220 + 9;
          }

          *buf = 136315138;
          *&buf[4] = v224;
          _os_log_impl(&dword_1E1C61000, v223, OS_LOG_TYPE_DEFAULT, "Technique group %s has the same name as a technique. Skipping the group.", buf, 0xCu);
        }
      }

      if (v258 <= v216 + 1)
      {
        v225 = v216 + 1;
      }

      else
      {
        v225 = v258;
      }

      v219 = v257;
      while (v225 - 1 != v216)
      {
        LODWORD(v216) = v216 + 1;
        if ((*(v257 + 152 * v216) & 0x80000000) != 0)
        {
          goto LABEL_430;
        }
      }

      LODWORD(v216) = v225;
LABEL_430:
      ;
    }

    while (v216 != v215);
  }

  re::HashTable<re::DynamicString,re::MaterialTechniqueQualityLevelSetData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v256);
  re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v248);
  re::HashTable<re::DynamicString,re::DynamicArray<unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(__b);
  re::HashTable<re::DynamicString,re::MaterialTechniqueQualityLevelSetData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v256);
  re::HashTable<re::DynamicString,re::DebugMapping,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v260);
  re::HashTable<re::DynamicString,re::MaterialTechniqueGroupData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v264);
  re::HashTable<re::DynamicString,re::MaterialTechniqueData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v268);
  return v5;
}

uint64_t re::makeFlattenedMaterialFile(uint64_t a1, char *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v37 = 0;
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v34 = 0x7FFFFFFFLL;
  re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&v31, a2);
  v28 = a2;
  re::DynamicArray<re::RigDataValue *>::add(v35, &v28);
  re::AssetHandle::AssetHandle(v30, (a2 + 120));
  while (1)
  {
    re::AssetHandle::serializationString(v30, &v28);
    if (v29[0])
    {
      v4 = v29[0] >> 1;
    }

    else
    {
      v4 = LOBYTE(v29[0]) >> 1;
    }

    if (v28)
    {
      v5 = (v29[0] & 1) == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      (*(*v28 + 40))();
    }

    if (!v4)
    {
      break;
    }

    re::AssetHandle::serializationString(v30, v27);
    re::makeTruncatedAssetPath(v27, &v28);
    if (*&v27[0])
    {
      if (BYTE8(v27[0]))
      {
        (*(**&v27[0] + 40))();
      }

      memset(v27, 0, sizeof(v27));
    }

    v6 = re::Hash<re::DynamicString>::operator()(&buf, &v28);
    v7 = re::HashTable<re::DynamicString,re::MaterialDefinitionFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, &v28, v6, &buf);
    if (HIDWORD(buf) == 0x7FFFFFFF)
    {
      v11 = *re::pipelineLogObjects(v7);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        if (v29[0])
        {
          v12 = v29[1];
        }

        else
        {
          v12 = v29 + 1;
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v12;
        _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Cannot find asset path %s in overrideMaterials.", &buf, 0xCu);
      }

LABEL_58:
      if (v28 && (v29[0] & 1) != 0)
      {
        (*(*v28 + 40))();
      }

      break;
    }

    v8 = re::Hash<re::DynamicString>::operator()(&buf, &v28);
    re::HashTable<re::DynamicString,re::MaterialDefinitionFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, &v28, v8, &buf);
    v9 = (*(a1 + 16) + 784 * HIDWORD(buf) + 40);
    v10 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::contains(&v31, v9);
    if (v10)
    {
      *(&buf + 1) = 0;
      v42 = 0;
      v43 = 0;
      v13 = re::DynamicString::setCapacity(&buf, 0);
      v14 = v33;
      if (v33)
      {
        v15 = 0;
        v16 = (v32 + 8);
        while (1)
        {
          v17 = *v16;
          v16 += 12;
          if (v17 < 0)
          {
            break;
          }

          if (v33 == ++v15)
          {
            LODWORD(v15) = v33;
            break;
          }
        }
      }

      else
      {
        LODWORD(v15) = 0;
      }

      if (v15 != v33)
      {
        v18 = v32;
        do
        {
          re::DynamicString::DynamicString(v38, (v18 + 48 * v15 + 16));
          if (v38[8])
          {
            v19 = *&v40[2];
          }

          else
          {
            v19 = &v38[9];
          }

          re::DynamicString::appendf(&buf, "-> %s", v19);
          v13 = *v38;
          if (*v38 && (v38[8] & 1) != 0)
          {
            v13 = (*(**v38 + 40))();
          }

          v18 = v32;
          if (v33 <= v15 + 1)
          {
            v20 = v15 + 1;
          }

          else
          {
            v20 = v33;
          }

          while (v20 - 1 != v15)
          {
            LODWORD(v15) = v15 + 1;
            if ((*(v32 + 48 * v15 + 8) & 0x80000000) != 0)
            {
              goto LABEL_46;
            }
          }

          LODWORD(v15) = v20;
LABEL_46:
          ;
        }

        while (v15 != v14);
      }

      v21 = *re::pipelineLogObjects(v13);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 1))
        {
          v22 = *(a2 + 2);
        }

        else
        {
          v22 = a2 + 9;
        }

        if (BYTE8(buf))
        {
          v23 = v42;
        }

        else
        {
          v23 = &buf + 9;
        }

        *v38 = 136315394;
        *&v38[4] = v22;
        v39 = 2080;
        *v40 = v23;
        _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "Found circular dependency in material %s: {%s}", v38, 0x16u);
      }

      if (buf && (BYTE8(buf) & 1) != 0)
      {
        (*(*buf + 40))();
      }

      goto LABEL_58;
    }

    re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&v31, v9);
    *&buf = v9;
    re::DynamicArray<re::RigDataValue *>::add(v35, &buf);
    re::AssetHandle::operator=(v30, v9 + 15);
    if (v28)
    {
      if (v29[0])
      {
        (*(*v28 + 40))();
      }
    }
  }

  v24 = re::resolveOverrideMaterials(a2, v35);
  re::AssetHandle::~AssetHandle(v30);
  v25 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v31);
  if (v35[0] && v37)
  {
    (*(*v35[0] + 40))(v25);
  }

  return v24;
}

void re::makeTruncatedAssetPath(re::DynamicString *a1@<X0>, re::DynamicString *a2@<X8>)
{
  LOBYTE(v18) = 58;
  re::DynamicString::find(v22, a1, &v18, 1, 0);
  if (LOBYTE(v22[0]) == 1)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      v5 = v4 >> 1;
    }

    else
    {
      v5 = v4 >> 1;
    }

    re::DynamicString::substr(&v18, a1, v22[1] + 1, v5);
    if (v19)
    {
      v6 = v21;
    }

    else
    {
      v6 = v20;
    }

    memset(&v16, 0, sizeof(v16));
    v7 = (v6 - 1);
    do
    {
      v8 = v7->__r_.__value_.__s.__data_[1];
      v7 = (v7 + 1);
    }

    while (v8);
    std::string::append[abi:nn200100]<char const*,0>(&v16, v6, v7);
    p_p = &__p;
    std::__fs::filesystem::path::filename[abi:nn200100](&v16, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (v18)
    {
      if (v19)
      {
        (*(*v18 + 40))();
      }
    }
  }

  else
  {
    if (*(a1 + 8))
    {
      v11 = *(a1 + 2);
    }

    else
    {
      v11 = (a1 + 9);
    }

    memset(&__p, 0, sizeof(__p));
    v12 = (v11 - 1);
    do
    {
      v13 = v12->__r_.__value_.__s.__data_[1];
      v12 = (v12 + 1);
    }

    while (v13);
    std::string::append[abi:nn200100]<char const*,0>(&__p, v11, v12);
    v14 = &v18;
    std::__fs::filesystem::path::filename[abi:nn200100](&__p, &v18);
    if (SHIBYTE(v21) < 0)
    {
      v14 = v18;
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

double std::__fs::filesystem::path::filename[abi:nn200100]@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__filename(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v6;
  return result;
}

re::DynamicString *re::append<re::DynamicString,re::DynamicString>(re::DynamicString *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = 0;
    v6 = *(a2 + 16);
    while (1)
    {
      v7 = *v6;
      v6 += 20;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(a2 + 32);
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
    v8 = *(a2 + 16);
    do
    {
      result = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(v3, (v8 + 80 * v5 + 8), (v8 + 80 * v5 + 40));
      if (*(a2 + 32) <= (v5 + 1))
      {
        v9 = v5 + 1;
      }

      else
      {
        v9 = *(a2 + 32);
      }

      v8 = *(a2 + 16);
      while (v9 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(v8 + 80 * v5) & 0x80000000) != 0)
        {
          goto LABEL_17;
        }
      }

      LODWORD(v5) = v9;
LABEL_17:
      ;
    }

    while (v5 != v4);
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v4, v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 160 * v7 + 40;
  }
}

re::DynamicString *re::replaceIfValid<re::DynamicString>(re::DynamicString *this, re::DynamicString *a2)
{
  if (*a2)
  {
    v2 = *(a2 + 1);
    if (v2)
    {
      v3 = v2 >> 1;
    }

    else
    {
      v3 = v2 >> 1;
    }

    if (v3)
    {
      return re::DynamicString::operator=(this, a2);
    }
  }

  return this;
}

void re::resolveOverrideMaterials(re::MaterialDefinitionFile const&,re::DynamicArray<re::MaterialDefinitionFile const*> const&)::$_0::operator()(uint64_t *a1, re::DynamicString *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = re::Hash<re::DynamicString>::operator()(v22, a2);
  re::HashTable<re::DynamicString,re::MaterialTechniqueData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v22, v6, a2, v7);
  if (v23 == 0x7FFFFFFF)
  {
    re::MaterialTechniqueData::MaterialTechniqueData(v22, a3);
    re::DynamicString::operator=(v22, a2);
    v8 = *a1;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v9 = re::Hash<re::DynamicString>::operator()(&v27, a2);
    re::HashTable<re::DynamicString,re::MaterialTechniqueData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v24, v8, a2, v9);
    if (HIDWORD(v25) == 0x7FFFFFFF)
    {
      v10 = re::HashTable<re::DynamicString,re::MaterialTechniqueData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v8, v25, v24);
      re::DynamicString::DynamicString((v10 + 8), a2);
      re::MaterialTechniqueData::MaterialTechniqueData(v10 + 40, v22);
      ++*(v8 + 40);
    }

    re::MaterialTechniqueData::~MaterialTechniqueData(v22);
    return;
  }

  v11 = re::HashTable<re::DynamicString,re::MaterialTechniqueData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a1, a2);
  v12 = v11;
  if (*(a3 + 72) && !*(v11 + 72))
  {
    re::AssetHandle::operator=(v11 + 64, (a3 + 64));
  }

  if ((*(a3 + 552) & 1) == 0)
  {
    v13 = *(a3 + 200);
    v14 = *(a3 + 216);
    v15 = *(a3 + 232);
    *(v12 + 248) = *(a3 + 248);
    *(v12 + 232) = v15;
    *(v12 + 216) = v14;
    *(v12 + 200) = v13;
    if (*(v12 + 252))
    {
      if ((*(a3 + 252) & 1) == 0)
      {
        *(v12 + 252) = 0;
LABEL_15:
        re::DynamicArray<re::RenderAttachmentState>::operator=(v12 + 256, (a3 + 256));
        goto LABEL_16;
      }
    }

    else
    {
      if ((*(a3 + 252) & 1) == 0)
      {
        goto LABEL_15;
      }

      *(v12 + 252) = 1;
    }

    *(v12 + 253) = *(a3 + 253);
    goto LABEL_15;
  }

LABEL_16:
  if (*(a3 + 96) && !*(v12 + 96))
  {
    re::AssetHandle::operator=(v12 + 88, (a3 + 88));
  }

  re::replaceIfValid<re::DynamicString>((v12 + 112), (a3 + 112));
  if (*(a3 + 152) && !*(v12 + 152))
  {
    re::AssetHandle::operator=(v12 + 144, (a3 + 144));
  }

  re::replaceIfValid<re::DynamicString>((v12 + 168), (a3 + 168));
  re::append<re::DynamicString,re::DynamicString>((v12 + 328), a3 + 328);
  re::append<re::DynamicString,re::DynamicString>((v12 + 560), a3 + 560);
  re::append<re::DynamicString,re::DynamicArray<re::DynamicString>>(v12 + 608, a3 + 608);
  if (*(a3 + 553) == 1)
  {
    *(v12 + 553) = 1;
  }

  if (*(a3 + 656) == 1)
  {
    *(v12 + 656) = 1;
  }

  if (*(a3 + 657) == 1)
  {
    if ((*(v12 + 657) & 1) == 0)
    {
      *(v12 + 657) = 1;
    }

    *(v12 + 658) = *(a3 + 658);
  }

  if (*(a3 + 659) == 1)
  {
    if ((*(v12 + 659) & 1) == 0)
    {
      *(v12 + 659) = 1;
    }

    *(v12 + 660) = *(a3 + 660);
  }

  re::replaceIfValid<re::DynamicString>((v12 + 296), (a3 + 296));
  re::appendOrDelete<re::DynamicString,re::DynamicString>(v12 + 464, a3 + 464);
  v16 = *(a3 + 440);
  if (v16)
  {
    v17 = *(a3 + 456);
    v18 = (v17 + 32 * v16);
    do
    {
      v19 = *(v12 + 440);
      if (v19)
      {
        v20 = *(v12 + 456);
        v21 = 32 * v19;
        while (!re::DynamicString::operator==(v17, v20))
        {
          v20 += 32;
          v21 -= 32;
          if (!v21)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
LABEL_40:
        re::DynamicArray<re::DynamicString>::add((v12 + 424), v17);
      }

      v17 = (v17 + 32);
    }

    while (v17 != v18);
  }

  re::append<re::DynamicString,re::DynamicArray<re::DynamicString>>(v12 + 376, a3 + 376);
  if (*(a3 + 512) && *(a3 + 528))
  {
    re::DynamicArray<re::DynamicString>::operator=(v12 + 512, (a3 + 512));
  }
}

uint64_t re::HashTable<re::DynamicString,re::MaterialTechniqueData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](uint64_t a1, void *a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,re::MaterialTechniqueData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v6, a1, a2, v4);
  return *(a1 + 16) + 712 * v7 + 40;
}

uint64_t re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, _DWORD *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v13, a2);
  result = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, v6, &v10, a2);
  v8 = HIDWORD(v11);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    v9 = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v11, v10);
    result = re::DynamicString::DynamicString((v9 + 8), a2);
    *(v9 + 40) = *a3;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    *(*(a1 + 16) + 56 * v8 + 40) = *a3;
  }

  return result;
}

{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v15, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, v6, &v12, a2);
  v7 = HIDWORD(v13);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v13, v12);
    re::DynamicString::DynamicString((v8 + 8), a2);
    *(v8 + 40) = *a3;
    v9 = v8 + 40;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v10 = *(a1 + 16) + 56 * v7;
    *(v10 + 40) = *a3;
    return v10 + 40;
  }

  return v9;
}

uint64_t re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](uint64_t a1, void *a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(&v6, a2);
  re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v4, &v6);
  return *(a1 + 16) + 96 * v7 + 40;
}

uint64_t re::appendOrDelete<re::DynamicString,re::DynamicString>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = 0;
    v6 = *(a2 + 16);
    while (1)
    {
      v7 = *v6;
      v6 += 20;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(a2 + 32);
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
    v8 = *(a2 + 16);
    do
    {
      v9 = (v8 + 80 * v5);
      v10 = v9[6];
      if (v10)
      {
        v11 = v10 >> 1;
      }

      else
      {
        v11 = v10 >> 1;
      }

      if (v11)
      {
        result = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(v3, (v9 + 1), (v9 + 5));
      }

      else
      {
        v12 = re::Hash<re::DynamicString>::operator()(v14, v9 + 1);
        result = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v3, v12, v14, (v9 + 1));
        if (v15 != 0x7FFFFFFF)
        {
          result = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(v3, v9 + 1);
        }
      }

      if (*(a2 + 32) <= (v5 + 1))
      {
        v13 = v5 + 1;
      }

      else
      {
        v13 = *(a2 + 32);
      }

      v8 = *(a2 + 16);
      while (v13 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(v8 + 80 * v5) & 0x80000000) != 0)
        {
          goto LABEL_24;
        }
      }

      LODWORD(v5) = v13;
LABEL_24:
      ;
    }

    while (v5 != v4);
  }

  return result;
}

uint64_t re::DynamicArray<re::MaterialTechniqueData>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::MaterialTechniqueData>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = re::MaterialTechniqueData::MaterialTechniqueData(*(this + 4) + 664 * v4, a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

double re::HashTable<re::DynamicString,re::MaterialTechniqueData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
          v8 = (v6 + v4);
          *v8 = v7 & 0x7FFFFFFF;
          v9 = (v8 + 10);
          re::DynamicString::deinit((v8 + 2));
          re::MaterialTechniqueData::~MaterialTechniqueData(v9);
          v3 = *(a1 + 8);
        }

        v4 += 712;
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

void re::DynamicArray<re::MaterialTechniqueGroupData>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::MaterialTechniqueGroupData>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  re::MaterialTechniqueGroupData::MaterialTechniqueGroupData(*(this + 4) + 72 * v4, a2);
  ++*(this + 2);
  ++*(this + 6);
}

double re::HashTable<re::DynamicString,re::MaterialTechniqueGroupData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
          v8 = v6 + v4;
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          v9 = v6 + v4 + 72;
          re::DynamicString::deinit((v6 + v4 + 8));
          re::MaterialTechniqueGroupData::deinit((v8 + 40));
          re::DynamicArray<re::DynamicString>::deinit(v9);
          re::DynamicString::deinit((v8 + 40));
          v3 = *(a1 + 8);
        }

        v4 += 120;
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

uint64_t *re::DynamicArray<re::DebugMapping>::add(_anonymous_namespace_ *this, void *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::DebugMapping>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 80 * v4;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 24) = a2[3];
  v6 = a2[1];
  *v5 = *a2;
  *a2 = 0;
  v7 = a2[2];
  a2[3] = 0;
  v9 = *(v5 + 8);
  v8 = *(v5 + 16);
  *(v5 + 8) = v6;
  *(v5 + 16) = v7;
  a2[1] = v9;
  a2[2] = v8;
  *(v5 + 32) = 0u;
  v5 += 32;
  *(v5 + 32) = 0;
  *(v5 + 16) = 0u;
  *(v5 + 36) = 0x7FFFFFFFLL;
  result = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v5, a2 + 4);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

double re::HashTable<re::DynamicString,re::DebugMapping,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
          v8 = v6 + v4;
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          v9 = (v6 + v4 + 72);
          re::DynamicString::deinit((v6 + v4 + 8));
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
          re::DynamicString::deinit((v8 + 40));
          v3 = *(a1 + 8);
        }

        v4 += 128;
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

void re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  re::MaterialTechniqueQualityLevelSetData::MaterialTechniqueQualityLevelSetData(*(this + 4) + 104 * v4, a2);
  ++*(this + 2);
  ++*(this + 6);
}

double re::HashTable<re::DynamicString,re::MaterialTechniqueQualityLevelSetData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
          v8 = (v6 + v4);
          *v8 = v7 & 0x7FFFFFFF;
          v9 = (v8 + 10);
          re::DynamicString::deinit((v8 + 2));
          re::MaterialTechniqueQualityLevelSetData::~MaterialTechniqueQualityLevelSetData(v9);
          v3 = *(a1 + 8);
        }

        v4 += 152;
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

FILE *re::readJsonInCompatibilityMode@<X0>(re *this@<X0>, const char *a2@<X1>, _OWORD *a3@<X2>, const re::IntrospectionBase *a4@<X3>, uint64_t a5@<X8>)
{
  re::FileStreamReader::open(&v32, this);
  if (v32)
  {
    v31 = 0u;
    v30 = 0u;
    v29 = a4;
    v21 = a3[2];
    if (v24 == 1)
    {
      *a5 = v24;
    }

    else
    {
      if (v27)
      {
        v17 = *&v28[7];
      }

      else
      {
        v17 = v28;
      }

      re::DynamicString::format(&v21, "Failed to read JSON source asset %s: %s", v12, this, v17);
      v18 = v21;
      v19 = v22;
      v20 = v23;
      *a5 = 0;
      *(a5 + 8) = v18;
      *(a5 + 24) = v19;
      *(a5 + 32) = v20;
      if (v24 & 1) == 0 && v26 && (v27)
      {
        (*(*v26 + 40))();
      }
    }
  }

  else
  {
    re::formattedErrorMessage<re::DetailedError>(&v33, &v24);
    v13 = v24;
    v14 = v25;
    v15 = v26;
    *a5 = 0;
    *(a5 + 8) = v13;
    *(a5 + 24) = v14;
    *(a5 + 32) = v15;
  }

  if (v32 == 1)
  {
    result = v34;
    if (v34)
    {
      if (v36 == 1)
      {
        return fclose(v34);
      }
    }
  }

  else
  {
    result = v35;
    if (v35 && (v36 & 1) != 0)
    {
      return (*(v35->_p + 5))();
    }
  }

  return result;
}

FILE *re::compileMaterialFile@<X0>(char *a1@<X0>, re *this@<X1>, re::IntrospectionBase *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3;
  v7 = a1;
  v8 = &unk_1EE187000;
  {
    v16 = this;
    v15 = a4;
    v8 = &unk_1EE187000;
    a4 = v15;
    this = v16;
    v7 = a1;
    v5 = a3;
    if (v11)
    {
      re::introspect<re::MaterialFile>(BOOL)::info = re::introspect_MaterialFile(0, a1, v12, a3, v13, v14);
      v8 = &unk_1EE187000;
      a4 = v15;
      this = v16;
      v7 = a1;
      v5 = a3;
    }
  }

  v9 = v8[237];

  return re::readJsonInCompatibilityMode(this, v7, v9, v5, a4);
}

FILE *re::compileMaterialDefinitionFile@<X0>(re *this@<X0>, re::MaterialDefinitionFile *a2@<X1>, re::IntrospectionBase *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3;
  v7 = this;
  v8 = &unk_1EE187000;
  {
    v16 = a2;
    v15 = a4;
    v8 = &unk_1EE187000;
    a4 = v15;
    a2 = v16;
    v7 = this;
    v5 = a3;
    if (v11)
    {
      re::introspect<re::MaterialDefinitionFile>(BOOL)::info = re::introspect_MaterialDefinitionFile(0, this, v12, a3, v13, v14);
      v8 = &unk_1EE187000;
      a4 = v15;
      a2 = v16;
      v7 = this;
      v5 = a3;
    }
  }

  v9 = v8[194];

  return re::readJsonInCompatibilityMode(a2, v7, v9, v5, a4);
}

void re::generateShaderParameterTableBuilder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v131 = a1;
  v168 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = *(a2 + 160);
    if (v5)
    {
      LODWORD(v5) = *v5;
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  v127 = v5;
  v6 = *(a4 + 32);
  if (v6)
  {
    v7 = 0;
    v8 = *(a4 + 16);
    while (1)
    {
      v9 = *v8;
      v8 += 20;
      if (v9 < 0)
      {
        break;
      }

      v7 = (v7 + 1);
      if (v6 == v7)
      {
        LODWORD(v7) = *(a4 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  if (v7 == v6)
  {
    goto LABEL_12;
  }

  v14 = *(a4 + 16);
  v128 = *(a4 + 32);
  do
  {
    v15 = v14 + 80 * v7;
    v17 = *(v15 + 40);
    v16 = v15 + 40;
    v133 = v16 - 32;
    if (!v17)
    {
      v23 = *re::pipelineLogObjects(a1);
      a1 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
      if (a1)
      {
        if (*(v133 + 8))
        {
          v24 = *(v133 + 16);
        }

        else
        {
          v24 = v133 + 9;
        }

        v164[0].i32[0] = 136315394;
        *(v164[0].i64 + 4) = a3;
        v164[0].i16[6] = 2080;
        *(&v164[0].i64[1] + 6) = v24;
        _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, "%s: skipping constant: %s, Parsed parameters contained invalid types. All floats/arrays must be string data.", v164, 0x16u);
      }

      goto LABEL_206;
    }

    v132 = v16;
    v153 = 3;
    v18 = re::StringID::invalid(v164);
    v154 = v164[0].i64[0] >> 1;
    if (v164[0].i8[0])
    {
      if (v164[0].i8[0])
      {
      }
    }

    v155 = 0;
    re::StringID::invalid(&v156);
    v19 = *(v133 + 8);
    if ((v19 & 1) == 0)
    {
      v20 = v19 >> 8;
      v21 = (v133 + 9);
      v22 = v132;
      goto LABEL_29;
    }

    v21 = *(v133 + 16);
    v22 = v132;
    if (v21)
    {
      LOBYTE(v20) = *v21;
LABEL_29:
      if (v20)
      {
        v20 = v20;
        v25 = v21[1];
        if (v25)
        {
          v26 = v21 + 2;
          do
          {
            v20 = 31 * v20 + v25;
            v27 = *v26++;
            v25 = v27;
          }

          while (v27);
        }

        v28 = v20 & 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = 0;
      }

      goto LABEL_36;
    }

    v28 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_36:
    v154 = v28;
    v164[0].i8[0] = 46;
    v165.i64[1] = 0;
    memset(&v164[0].u32[2], 0, 24);
    v165.i32[0] = 0;
    if (*(v22 + 8))
    {
      v29 = *(v22 + 16);
    }

    else
    {
      v29 = (v22 + 9);
    }

    re::TokenizedMember::tokenize(v164, v29);
    if (v164[1].i64[1] == 2)
    {
      v30 = re::TokenizedMember::operator[](2uLL, v165.i64[1], 0);
      if (re::MaterialManager::isEngineDefinedConstantBufferTable(v30, v31))
      {
        v153 = 1;
        v32 = re::TokenizedMember::operator[](v164[1].u64[1], v165.i64[1], 0);
        v33 = 0;
        while (strcmp(re::s_materialTableIDMappings[v33], v32))
        {
          if (++v33 == 168)
          {
            LOBYTE(v33) = 0;
            break;
          }
        }

        v155 = v33;
        v34 = re::TokenizedMember::operator[](v164[1].u64[1], v165.i64[1], 1u);
        *v160 = 0;
        *&v160[8] = &str_67;
        v36 = *v160;
        v37 = *&v160[8];
        *v160 = 0;
        *&v160[8] = &str_67;
        var0 = v156.var0;
        *&v156.var0 = v36;
        v156.var1 = v37;
        if (var0)
        {
          if (v160[0])
          {
            if (v160[0])
            {
            }
          }
        }
      }
    }

    re::TokenizedMember::deinit(v164);
    v40 = v164[0].i64[1];
    if (v164[0].i64[1] && v165.i64[1])
    {
      v40 = (*(*v164[0].i64[1] + 40))(v164[0].i64[1]);
    }

    v41 = v153;
    if (v153 != 3)
    {
      goto LABEL_199;
    }

    v42 = *(v132 + 8);
    if (v42)
    {
      v44 = *(v132 + 16);
      v43 = *v44;
    }

    else
    {
      v43 = BYTE1(v42);
      v44 = (v132 + 9);
    }

    v162 = 0;
    memset(v160, 0, sizeof(v160));
    v161 = 0;
    if (v43)
    {
LABEL_57:
      memset(v164, 0, sizeof(v164));
      re::DynamicString::setCapacity(v164, 0);
      --v44;
      do
      {
        v47 = *++v44;
        v46 = v47;
      }

      while (v47 == 32);
      while ((v46 - 32) <= 0x3B && ((1 << (v46 - 32)) & 0x800000000001001) != 0)
      {
        v48 = *++v44;
        v46 = v48;
      }

      while (1)
      {
        if (v46 != 32)
        {
          if (!v46 || v46 == 93)
          {
            if (v46 == 93)
            {
              ++v44;
            }

            if (v164[0].i8[8])
            {
              v50 = v164[0].i64[1] >> 1;
            }

            else
            {
              v50 = v164[0].i8[8] >> 1;
            }

            if (v50)
            {
              v45.n128_f64[0] = re::DynamicArray<re::DynamicString>::add(v160, v164);
            }

            v40 = v164[0].i64[0];
            if (v164[0].i64[0] && (v164[0].i8[8] & 1) != 0)
            {
              v40 = (*(*v164[0].i64[0] + 40))(v45);
            }

            if (!*v44)
            {
              break;
            }

            goto LABEL_57;
          }

          __src[0] = v46;
          re::DynamicString::append(v164, __src, 1uLL);
        }

        v49 = *++v44;
        v46 = v49;
      }
    }

    v129 = v7;
    v152 = 0;
    v51 = v133;
    if (*(v133 + 8))
    {
      v52 = *(v133 + 16);
    }

    else
    {
      v52 = v133 + 9;
    }

    if (*(v132 + 8))
    {
      v53 = *(v132 + 16);
    }

    else
    {
      v53 = v132 + 9;
    }

    v136 = v53;
    v54 = *&v160[16];
    v151 = 0;
    v148 = 0;
    v149 = 0;
    *__src = 0;
    v150 = 0;
    if (!*&v160[16])
    {
      v4 = a4;
      LODWORD(v6) = v128;
      goto LABEL_192;
    }

    v55 = 0;
    v56 = 0;
    v57 = v162;
    v134 = v162 + 32 * *&v160[16];
    v135 = *&v160[16];
    do
    {
      v165.i64[1] = 0;
      memset(&v164[0].u32[2], 0, 24);
      v165.i32[0] = 0;
      v164[0].i8[0] = 44;
      if (*(v57 + 8))
      {
        v58 = *(v57 + 16);
      }

      else
      {
        v58 = (v57 + 9);
      }

      v59 = re::TokenizedMember::tokenize(v164, v58);
      if (v54 >= 2)
      {
        if (v55)
        {
          if (v164[1].i64[1] != v55)
          {
            v60 = *re::graphicsLogObjects(v59);
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = v52;
              *&buf[12] = 2080;
              *&buf[14] = v136;
              _os_log_impl(&dword_1E1C61000, v60, OS_LOG_TYPE_DEFAULT, "Inconsistent parameter constant vector size for key '%s' with value '%s'", buf, 0x16u);
            }
          }
        }

        else
        {
          v55 = v164[1].i64[1];
        }
      }

      v137 = v55;
      v158 = 0;
      v157 = 0.0;
      if (v164[1].i64[1])
      {
        v61 = 0;
        while (1)
        {
          v62 = *(v165.i64[1] + 8 * v61);
          if (strcasecmp(v62, "true"))
          {
            break;
          }

          re::validateParsedType(&v152, v52, v62, 2, "BOOL");
          buf[0] = 1;
LABEL_148:
          re::DynamicArray<unsigned char>::add(__src, buf);
LABEL_149:
          if (v164[1].i64[1] <= ++v61)
          {
            goto LABEL_152;
          }
        }

        if (!strcasecmp(v62, "false"))
        {
          re::validateParsedType(&v152, v52, v62, 2, "BOOL");
LABEL_147:
          buf[0] = 0;
          goto LABEL_148;
        }

        v63 = strlen(v62);
        if (!v63)
        {
          re::internal::assertLog(4, v64, "assertion failure: '%s' (%s:line %i) ", "tokenLen > 0", "makeConstantBytes", 902);
          _os_crash("assertion failure: (tokenLen > 0) ");
          __break(1u);
LABEL_281:
          __endptr = 0;
          v166 = 0u;
          v167 = 0u;
          v165 = 0u;
          memset(v164, 0, sizeof(v164));
          v121 = MEMORY[0x1E69E9C10];
          v122 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *buf = 136315906;
          *&buf[4] = "operator[]";
          *&buf[12] = 1024;
          if (v122)
          {
            v123 = 3;
          }

          else
          {
            v123 = 2;
          }

          *&buf[14] = 789;
          *&buf[18] = 2048;
          *&buf[20] = v62;
          *&buf[28] = 2048;
          *&buf[30] = v57;
          _os_log_send_and_compose_impl(v123, &__endptr, v164, 80, &dword_1E1C61000, v121, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v124, v125);
          _os_crash_msg();
          __break(1u);
        }

        v65 = v63;
        while ((v149 & 3) != 0)
        {
          buf[0] = 0;
          re::DynamicArray<unsigned char>::add(__src, buf);
        }

        if ((v61 - 3) <= 1)
        {
          v66 = v164[1].i64[1];
          if (v164[1].i64[1] - 1 == v61)
          {
            v67 = *v62;
            if (v67 < 0 || v67 != 45 && (*(MEMORY[0x1E69E9830] + 4 * v67 + 60) & 0x400) == 0)
            {
              re::ColorHelpers::getColorGamutFromSerializationLiteral(buf, v62);
              if (buf[0] == 1)
              {
                v68 = v152;
                if (v152 == 1)
                {
                  v68 = 0;
                }

                v152 = v68;
                if (v61 == 3)
                {
                  v69 = "color3";
                }

                else
                {
                  v69 = "color4";
                }

                if (v61 == 3)
                {
                  v70 = 20;
                }

                else
                {
                  v70 = 21;
                }

                re::validateParsedType(&v152, v52, v62, v70, v69);
                if (v61 == 3)
                {
                  LOBYTE(__endptr) = 0;
                  re::DynamicArray<unsigned char>::add(__src, &__endptr);
                  LOBYTE(__endptr) = 0;
                  re::DynamicArray<unsigned char>::add(__src, &__endptr);
                  LOBYTE(__endptr) = 0;
                  re::DynamicArray<unsigned char>::add(__src, &__endptr);
                  LOBYTE(__endptr) = 0;
                  re::DynamicArray<unsigned char>::add(__src, &__endptr);
                }

                LODWORD(v158) = buf[1];
                v71 = &v158;
LABEL_141:
                re::DynamicArray<unsigned char>::add(__src, v71);
                re::DynamicArray<unsigned char>::add(__src, v71 + 1);
                re::DynamicArray<unsigned char>::add(__src, v71 + 2);
                re::DynamicArray<unsigned char>::add(__src, v71 + 3);
                ++v56;
                if (v164[1].i64[1] == 3)
                {
                  if ((-1431655765 * v61 - 1431655766) > 0x55555554)
                  {
                    goto LABEL_149;
                  }
                }

                else if ((-1431655765 * v61 - 1431655766) > 0x55555554 || v164[1].i64[1] != 9)
                {
                  goto LABEL_149;
                }

                buf[0] = 0;
                re::DynamicArray<unsigned char>::add(__src, buf);
                buf[0] = 0;
                re::DynamicArray<unsigned char>::add(__src, buf);
                buf[0] = 0;
                re::DynamicArray<unsigned char>::add(__src, buf);
                goto LABEL_147;
              }
            }
          }

          if (v61 == 4 && v66 == 5)
          {
            v72 = *v62;
            if ((v72 < 0 || v72 != 45 && (*(MEMORY[0x1E69E9830] + 4 * v72 + 60) & 0x400) == 0) && !strcmp(v62, "matrix"))
            {
              v152 = 48;
              goto LABEL_149;
            }
          }
        }

        v73 = &v62[v65];
        v75 = &v62[v65 - 1];
        v74 = *v75;
        __endptr = 0;
        switch(v74)
        {
          case 'f':
            v73 = &v62[v65 - 1];
            break;
          case 'u':
            re::validateParsedType(&v152, v52, v62, 7, "uint");
            v76 = strtoul(v62, &__endptr, 10);
            LODWORD(v158) = v76;
            v71 = &v158;
            goto LABEL_137;
          case 'i':
            re::validateParsedType(&v152, v52, v62, 3, "int");
            v76 = strtol(v62, &__endptr, 10);
            HIDWORD(v158) = v76;
            v71 = &v158 + 1;
            goto LABEL_137;
        }

        re::validateParsedType(&v152, v52, v62, 1, "float");
        v157 = strtof(v62, &__endptr);
        v71 = &v157;
        v75 = v73;
LABEL_137:
        if (__endptr != v75 || __endptr == v62)
        {
          v77 = *re::graphicsLogObjects(v76);
          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = v52;
            *&buf[12] = 2080;
            *&buf[14] = v136;
            *&buf[22] = 2080;
            *&buf[24] = v62;
            _os_log_impl(&dword_1E1C61000, v77, OS_LOG_TYPE_DEFAULT, "Invalid token found while parsing key '%s' with value '%s': %s", buf, 0x20u);
          }
        }

        goto LABEL_141;
      }

LABEL_152:
      re::TokenizedMember::deinit(v164);
      v55 = v137;
      if (v164[0].i64[1] && v165.i64[1])
      {
        (*(*v164[0].i64[1] + 40))();
      }

      v57 += 32;
      v54 = v135;
    }

    while (v57 != v134);
    LOBYTE(v54) = v152;
    if (v152 == 1)
    {
      v78 = v56;
      LODWORD(v6) = v128;
      LODWORD(v7) = v129;
      v51 = v133;
      if (v56 <= 3u)
      {
        v4 = a4;
        if (v78 == 2)
        {
          LOBYTE(v54) = 32;
        }

        else
        {
          if (v78 != 3)
          {
            goto LABEL_192;
          }

          LOBYTE(v54) = 33;
        }
      }

      else
      {
        v4 = a4;
        switch(v78)
        {
          case 4:
            LOBYTE(v54) = 34;
            break;
          case 9:
            LOBYTE(v54) = 49;
            break;
          case 16:
            LOBYTE(v54) = 50;
            break;
          default:
            goto LABEL_192;
        }
      }

      goto LABEL_180;
    }

    LODWORD(v6) = v128;
    LODWORD(v7) = v129;
    v51 = v133;
    if (v152 == 3)
    {
      if ((v56 - 2) >= 3u)
      {
        LOBYTE(v54) = 3;
        goto LABEL_171;
      }

      LOBYTE(v54) = v56 + 2;
LABEL_180:
      v152 = v54;
LABEL_181:
      v4 = a4;
      if ((v54 & 0xFE) == 0x14)
      {
        v57 = v149;
        v62 = (v149 - 4);
        if (v149 <= 3)
        {
          goto LABEL_281;
        }

        v7 = v151;
        v79 = v62[v151];
        v80 = *v151;
        v81 = HIDWORD(*&v151[1]);
        *&buf[4] = vzip1_s32((*v151->i8 >> 32), v151[1]);
        *buf = v80.i32[0];
        *&buf[12] = v81;
        buf[16] = v79;
        re::ShaderParameterTableBuilder::addOriginalColorConstant(v131, v51, buf, v54);
        v82 = v127;
        if (v79 != v127)
        {
          if (buf[16] == v127)
          {
            v83.i64[0] = *buf;
            v84 = *&buf[8];
            v85 = *&buf[12];
          }

          else
          {
            re::ColorHelpers::computeGamutTransformMatrix(buf[16], v127, v164);
            v82 = v127;
            v85 = *&buf[12];
            v86 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v164[0], *buf), v164[1], *&buf[4]), v165, *&buf[8]);
            v86.i32[3] = 0;
            v83 = vmaxnmq_f32(v86, 0);
            v84 = v83.i32[2];
          }

          *buf = v83.i64[0];
          *&buf[8] = v84;
          *&buf[12] = v85;
          buf[16] = v82;
        }

        if (v54 == 20)
        {
          LOBYTE(v54) = 33;
        }

        else
        {
          LOBYTE(v54) = 34;
        }

        v152 = v54;
        *v7->i8 = *buf;
        re::DynamicArray<BOOL>::resize(__src, v62);
        LODWORD(v6) = v128;
        LODWORD(v7) = v129;
        v51 = v133;
      }

      goto LABEL_192;
    }

    if (v152 != 7)
    {
      goto LABEL_181;
    }

    if ((v56 - 2) < 3u)
    {
      LOBYTE(v54) = v56 + 6;
      goto LABEL_180;
    }

    LOBYTE(v54) = 7;
LABEL_171:
    v4 = a4;
LABEL_192:
    v153 = 0;
    v164[0].i64[0] = v151;
    v164[0].i64[1] = v149;
    re::ShaderParameterTableBuilder::addConstant(v131, v51, v164, v54);
    if (*__src && v151)
    {
      (*(**__src + 40))();
    }

    v87 = re::DynamicArray<re::DynamicString>::deinit(v160);
    v41 = v153;
    if (v153 == 3)
    {
      v88 = *re::pipelineLogObjects(v87);
      a1 = os_log_type_enabled(v88, OS_LOG_TYPE_ERROR);
      if (a1)
      {
        if (*(v133 + 8))
        {
          v89 = *(v133 + 16);
        }

        else
        {
          v89 = v133 + 9;
        }

        if (*(v132 + 8))
        {
          v91 = *(v132 + 16);
        }

        else
        {
          v91 = v132 + 9;
        }

        v164[0].i32[0] = 136315394;
        *(v164[0].i64 + 4) = v89;
        v164[0].i16[6] = 2080;
        *(&v164[0].i64[1] + 6) = v91;
        _os_log_error_impl(&dword_1E1C61000, v88, OS_LOG_TYPE_ERROR, "Invalid constant %s: %s", v164, 0x16u);
      }

      goto LABEL_203;
    }

LABEL_199:
    v143 = v41;
    v144 = v154;
    v145 = v155;
    re::StringID::StringID(v146, &v156);
    a1 = re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v131, v133, &v143);
    if (v146[0])
    {
      if (v146[0])
      {
      }
    }

    v146[0] = 0;
    v146[1] = &str_67;
    v144 = 0;
LABEL_203:
    if (*&v156.var0)
    {
      if (*&v156.var0)
      {
      }
    }

LABEL_206:
    if (*(v4 + 32) <= (v7 + 1))
    {
      v90 = v7 + 1;
    }

    else
    {
      v90 = *(v4 + 32);
    }

    v14 = *(v4 + 16);
    while (v90 - 1 != v7)
    {
      LODWORD(v7) = v7 + 1;
      if ((*(v14 + 80 * v7) & 0x80000000) != 0)
      {
        goto LABEL_214;
      }
    }

    LODWORD(v7) = v90;
LABEL_214:
    ;
  }

  while (v7 != v6);
LABEL_12:
  v10 = *(v4 + 80);
  if (v10)
  {
    v11 = 0;
    v12 = *(v4 + 64);
    while (1)
    {
      v13 = *v12;
      v12 += 20;
      if (v13 < 0)
      {
        break;
      }

      if (v10 == ++v11)
      {
        LODWORD(v11) = *(v4 + 80);
        break;
      }
    }
  }

  else
  {
    LODWORD(v11) = 0;
  }

  if (v11 != v10)
  {
    v92 = *(v4 + 64);
    while (1)
    {
      v153 = 3;
      v93 = re::StringID::invalid(v164);
      v154 = v164[0].i64[0] >> 1;
      if (v164[0].i8[0])
      {
        if (v164[0].i8[0])
        {
        }
      }

      v94 = v92 + 80 * v11;
      v95 = v94 + 8;
      v155 = 0;
      re::StringID::invalid(&v156);
      v96 = *(v94 + 16);
      if ((v96 & 1) == 0)
      {
        break;
      }

      v98 = *(v94 + 24);
      if (v98)
      {
        LOBYTE(v97) = *v98;
LABEL_231:
        if (v97)
        {
          v97 = v97;
          v99 = v98[1];
          if (v99)
          {
            v100 = v98 + 2;
            do
            {
              v97 = 31 * v97 + v99;
              v101 = *v100++;
              v99 = v101;
            }

            while (v101);
          }

          v102 = v97 & 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v102 = 0;
        }

        goto LABEL_238;
      }

      v102 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_238:
      v103 = v94 + 40;
      v154 = v102;
      v164[0].i8[0] = 46;
      v165.i64[1] = 0;
      memset(&v164[0].u32[2], 0, 24);
      v165.i32[0] = 0;
      if (*(v94 + 48))
      {
        v104 = *(v94 + 56);
      }

      else
      {
        v104 = (v94 + 49);
      }

      isEngineDefinedBufferTable = re::TokenizedMember::tokenize(v164, v104);
      if (v164[1].i64[1] == 2)
      {
        v106 = re::TokenizedMember::operator[](2uLL, v165.i64[1], 0);
        isEngineDefinedBufferTable = re::MaterialManager::isEngineDefinedBufferTable(v106, v107);
        if (isEngineDefinedBufferTable)
        {
          v153 = 1;
          v108 = re::TokenizedMember::operator[](v164[1].u64[1], v165.i64[1], 0);
          v109 = 0;
          while (strcmp(re::s_materialTableIDMappings[v109], v108))
          {
            if (++v109 == 168)
            {
              LOBYTE(v109) = 0;
              break;
            }
          }

          v155 = v109;
          v110 = re::TokenizedMember::operator[](v164[1].u64[1], v165.i64[1], 1u);
          *v160 = 0;
          *&v160[8] = &str_67;
          v111 = *v160;
          v112 = *&v160[8];
          *v160 = 0;
          *&v160[8] = &str_67;
          v113 = v156.var0;
          var1 = v156.var1;
          *&v156.var0 = v111;
          v156.var1 = v112;
          if (v113)
          {
            if (v160[0])
            {
              if (v160[0])
              {
              }
            }
          }

          v4 = a4;
        }
      }

      if (v153 == 3)
      {
        v115 = *re::pipelineLogObjects(isEngineDefinedBufferTable);
        if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
        {
          if (*(v95 + 8))
          {
            v116 = *(v95 + 16);
          }

          else
          {
            v116 = v95 + 9;
          }

          if (*(v103 + 8))
          {
            v120 = *(v103 + 16);
          }

          else
          {
            v120 = v103 + 9;
          }

          *v160 = 136315394;
          *&v160[4] = v116;
          *&v160[12] = 2080;
          *&v160[14] = v120;
          _os_log_error_impl(&dword_1E1C61000, v115, OS_LOG_TYPE_ERROR, "Invalid buffer binding %s: %s", v160, 0x16u);
        }
      }

      else
      {
        v138 = v153;
        v139 = v154;
        v140 = v155;
        re::StringID::StringID(&v141, &v156);
        v117 = re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v131 + 48, v95, &v138);
        if (v141)
        {
          if (v141)
          {
          }
        }

        v141 = 0;
        v142 = &str_67;
        v139 = 0;
      }

      re::TokenizedMember::deinit(v164);
      v118 = v164[0].i64[1];
      if (v164[0].i64[1] && v165.i64[1])
      {
        v118 = (*(*v164[0].i64[1] + 40))();
      }

      if (*&v156.var0)
      {
        if (*&v156.var0)
        {
        }
      }

      v119 = *(v4 + 80);
      if (v119 <= v11 + 1)
      {
        v119 = v11 + 1;
      }

      v92 = *(v4 + 64);
      while (v119 - 1 != v11)
      {
        LODWORD(v11) = v11 + 1;
        if ((*(v92 + 80 * v11) & 0x80000000) != 0)
        {
          goto LABEL_273;
        }
      }

      LODWORD(v11) = v119;
LABEL_273:
      if (v11 == v10)
      {
        return;
      }
    }

    v97 = v96 >> 8;
    v98 = (v94 + 17);
    goto LABEL_231;
  }
}

re *re::TokenizedMember::tokenize(re *this, const char *a2)
{
  if (*a2)
  {
    v2 = a2;
    v3 = this;
    v4 = a2;
    do
    {
      v5 = 0;
      do
      {
        v6 = v2[++v5];
        if (v6)
        {
          v7 = v6 == *v3;
        }

        else
        {
          v7 = 1;
        }
      }

      while (!v7);
      if (v2 - v4 + v5)
      {
        v8 = v2 - v4 + v5;
        v9 = re::globalAllocators(this);
        v10 = (*(*v9[2] + 32))(v9[2], v8 + 1, 0);
        memcpy(v10, v4, v8);
        *(v10 + v8) = 0;
        this = re::DynamicArray<re::TransitionCondition *>::add((v3 + 8), &v10);
        v6 = v2[v5];
      }

      v2 += v5;
      v4 = v2 + 1;
    }

    while (v6);
  }

  return this;
}

uint64_t re::TokenizedMember::operator[](unint64_t a1, uint64_t a2, unsigned int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (a3 >= a1)
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
    v15 = v3;
    v16 = 2048;
    v17 = a1;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 8 * a3);
}

__n128 re::HashTable<re::DynamicString,re::MaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew(uint64_t a1, const re::DynamicString *a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v14, a2);
  re::HashTable<re::DynamicString,re::MaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v11, a1, a2, v6);
  if (HIDWORD(v12) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::DynamicString,re::MaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v12, v11);
    re::DynamicString::DynamicString((v8 + 8), a2);
    result = *a3;
    v9 = *(a3 + 16);
    v10 = *(a3 + 32);
    *(v8 + 88) = *(a3 + 48);
    *(v8 + 72) = v10;
    *(v8 + 56) = v9;
    *(v8 + 40) = result;
    ++*(a1 + 40);
  }

  return result;
}

BOOL re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::contains(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v5 = *(*(a1 + 8) + 4 * (((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31)) % v2));
  if (v5 == 0x7FFFFFFF)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  if (*(v7 + 16 * v5 + 8) == v3)
  {
    return 1;
  }

  do
  {
    v5 = *(v7 + 16 * v5) & 0x7FFFFFFF;
    result = v5 != 0x7FFFFFFF;
  }

  while (v5 != 0x7FFFFFFF && *(v7 + 16 * v5 + 8) != v3);
  return result;
}

double re::parseShaderParameterData@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v26 = 0x7FFFFFFFLL;
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  v30 = 0x7FFFFFFFLL;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v34 = 0;
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  memset(v37, 0, sizeof(v37));
  v38 = 0x7FFFFFFFLL;
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v41 = 0x7FFFFFFFLL;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v45 = 0x7FFFFFFFLL;
  re::generateShaderParameterTableBuilder(v24, a1, a2, a3);
  re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(&v21, v24);
  v5 = v29;
  if (v29)
  {
    v6 = 0;
    v7 = v28;
    while (1)
    {
      v8 = *v7;
      v7 += 22;
      if (v8 < 0)
      {
        break;
      }

      if (v29 == ++v6)
      {
        LODWORD(v6) = v29;
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 != v29)
  {
    v9 = v28;
    do
    {
      re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&v21, (v9 + 88 * v6 + 8), v9 + 88 * v6 + 40);
      if (v29 <= v6 + 1)
      {
        v10 = v6 + 1;
      }

      else
      {
        v10 = v29;
      }

      v9 = v28;
      while (v10 - 1 != v6)
      {
        LODWORD(v6) = v6 + 1;
        if ((*(v28 + 88 * v6) & 0x80000000) != 0)
        {
          goto LABEL_17;
        }
      }

      LODWORD(v6) = v10;
LABEL_17:
      ;
    }

    while (v6 != v5);
  }

  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 128) = &unk_1F5CC38C8;
  *(a4 + 136) = 0;
  *(a4 + 144) = 0;
  *(a4 + 152) = 0;
  *(a4 + 160) = 0;
  *(a4 + 336) = 0u;
  *(a4 + 352) = 0u;
  *(a4 + 368) = 0;
  *(a4 + 384) = 0;
  *(a4 + 392) = 0;
  *(a4 + 376) = 0;
  *(a4 + 328) = 0;
  *(a4 + 248) = 0u;
  *(a4 + 232) = 0u;
  *(a4 + 216) = 0u;
  *(a4 + 200) = 0u;
  *(a4 + 184) = 0u;
  *(a4 + 168) = 0u;
  *(a4 + 296) = 0u;
  *(a4 + 312) = 0u;
  *(a4 + 264) = 0u;
  *(a4 + 280) = 0u;
  *(a4 + 400) = 1;
  *(a4 + 408) = 0;
  *(a4 + 416) = 0;
  *(a4 + 432) = 0;
  *(a4 + 424) = 0;
  *(a4 + 440) = 0;
  *(a4 + 448) = 0;
  *(a4 + 464) = 0;
  *(a4 + 456) = 0;
  *(a4 + 512) = 0;
  *(a4 + 520) = 0;
  *(a4 + 504) = 0;
  *(a4 + 472) = 0u;
  *(a4 + 488) = 0u;
  re::ShaderParameterTableBuilder::build(v24, a4);
  *(a4 + 528) = 0u;
  *(a4 + 544) = 0u;
  *(a4 + 560) = 0x7FFFFFFF00000000;
  *(a4 + 568) = 0;
  if (v42)
  {
    v11 = HIDWORD(v43) <= 3 ? 3 : HIDWORD(v43);
    re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a4 + 528, v42, v11);
    v12 = v44;
    if (v44)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        if ((*(v43 + v13) & 0x80000000) != 0)
        {
          v15 = 0xBF58476D1CE4E5B9 * (*(v43 + v13 + 8) ^ (*(v43 + v13 + 8) >> 30));
          v16 = (0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) ^ ((0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) >> 31);
          v17 = re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(a4 + 528, v16 % *(a4 + 552), v16);
          v18 = v43 + v13;
          *(v17 + 8) = *(v43 + v13 + 8);
          v19 = *(v18 + 16);
          *(v17 + 32) = *(v18 + 32);
          *(v17 + 16) = v19;
          v12 = v44;
        }

        ++v14;
        v13 += 40;
      }

      while (v14 < v12);
    }
  }

  *(a4 + 576) = v21;
  v21 = 0uLL;
  *(a4 + 592) = v22;
  v22 = 0;
  *(a4 + 600) = v23;
  v23 = xmmword_1E3058120;
  *(a4 + 616) = 1;
  re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v21);
  re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(&v42);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v39);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v37[8]);
  re::DynamicArray<re::BufferSlice>::deinit(v35 + 8);
  if (v31)
  {
    if (*&v35[0])
    {
      (*(*v31 + 40))();
    }

    *&v35[0] = 0;
    v32 = 0;
    v33 = 0;
    v31 = 0;
    ++v34;
  }

  re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v27);
  return re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v24);
}

double re::downgradeShaderParameterDataFromSpring2023@<D0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v33 = 0x7FFFFFFFLL;
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  v36 = 0x7FFFFFFFLL;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  memset(v41, 0, sizeof(v41));
  v40 = 0;
  v42 = 0;
  memset(v43, 0, sizeof(v43));
  v44 = 0x7FFFFFFFLL;
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  v47 = 0x7FFFFFFFLL;
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  v50 = 0x7FFFFFFFLL;
  re::generateShaderParameterTableBuilder(v31, 0, "<downgrade version>", a1);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = 0;
    v6 = *(a1 + 16);
    while (1)
    {
      v7 = *v6;
      v6 += 20;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(a1 + 32);
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
    v8 = *(a1 + 16);
    do
    {
      v9 = v8 + 80 * v5;
      v10 = v9 + 8;
      v11 = *(v9 + 16);
      if (v11)
      {
        v13 = *(v10 + 16);
        if (!v13)
        {
          v17 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_20;
        }

        LOBYTE(v10) = *v13;
      }

      else
      {
        v12 = v11 >> 8;
        v13 = (v10 + 9);
        LOBYTE(v10) = v12;
      }

      if (v10)
      {
        v10 = v10;
        v14 = v13[1];
        if (v14)
        {
          v15 = v13 + 2;
          do
          {
            v10 = 31 * v10 + v14;
            v16 = *v15++;
            v14 = v16;
          }

          while (v16);
        }

        v17 = v10 & 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = 0;
      }

LABEL_20:
      v25 = v17;
      v18 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v48, &v25);
      if (v18)
      {
        v19 = v18;
        re::ColorGamut4F::as(v18, 0, 3, &v27);
        if (*(v19 + 20) == 20)
        {
          re::DynamicString::format(&v25, "[%f, %f, %f]", v20, v27, v28, v29, v24);
        }

        else
        {
          re::DynamicString::format(&v25, "[%f, %f, %f, %f]", v20, v27, v28, v29, v30);
        }

        re::DynamicString::operator=((*(a1 + 16) + 80 * v5 + 40), &v25);
        if (v25)
        {
          if (v26)
          {
            (*(*v25 + 40))();
          }
        }
      }

      v21 = *(a1 + 32);
      if (v21 <= v5 + 1)
      {
        v22 = v5 + 1;
      }

      else
      {
        v22 = *(a1 + 32);
      }

      v8 = *(a1 + 16);
      while (v22 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(v8 + 80 * v5) & 0x80000000) != 0)
        {
          goto LABEL_35;
        }
      }

      LODWORD(v5) = v22;
LABEL_35:
      ;
    }

    while (v5 != v21);
  }

  *a2 = 1;
  re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v48);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v45);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v43[8]);
  re::DynamicArray<re::BufferSlice>::deinit(&v41[1]);
  if (v37)
  {
    if (v41[0])
    {
      (*(*v37 + 40))();
    }

    v41[0] = 0;
    v38 = 0;
    v39 = 0;
    v37 = 0;
    ++v40;
  }

  re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v34);
  return re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v31);
}

void re::parseTextureParameterData(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v147 = a1;
  v213 = *MEMORY[0x1E69E9840];
  v149 = 0;
  memset(v148, 0, sizeof(v148));
  v150 = 0x7FFFFFFFLL;
  v151 = 0u;
  v152 = 0u;
  v153 = 0;
  v154 = 0x7FFFFFFFLL;
  v155[1] = 0;
  v156 = 0;
  v155[0] = 0;
  v157 = 0;
  v158 = 0u;
  v159 = 0u;
  v160 = 0;
  memset(v161, 0, sizeof(v161));
  v162 = 0x7FFFFFFFLL;
  v164 = 0;
  memset(v163, 0, sizeof(v163));
  v165 = 0x7FFFFFFFLL;
  v167 = 0;
  memset(v166, 0, sizeof(v166));
  v168 = 0x7FFFFFFFLL;
  v170 = 0;
  memset(v169, 0, sizeof(v169));
  v171 = 0x7FFFFFFFLL;
  v207 = 0;
  v205 = 0u;
  v206 = 0u;
  v208 = 0x7FFFFFFFLL;
  v203 = 0;
  v201 = 0u;
  v202 = 0u;
  v204 = 0x7FFFFFFFLL;
  v4 = *(a2 + 224);
  if (v4)
  {
    v5 = 0;
    v6 = *(a2 + 208);
    while (1)
    {
      v7 = *v6;
      v6 += 38;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(a2 + 224);
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
    v8 = *(a2 + 208);
    do
    {
      v9 = v8 + 152 * v5;
      re::OptionalMaterialSamplerData::makeSamplerData(v200, (v9 + 40));
      v16 = re::MaterialSamplerData::hash(v200, v10, v11, v12, v13, v14, v15);
      v17 = v16;
      v18 = v16 ^ (v16 >> 30);
      if (v201)
      {
        v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v18) ^ ((0xBF58476D1CE4E5B9 * v18) >> 27));
        v20 = *(*(&v201 + 1) + 4 * ((v19 ^ (v19 >> 31)) % DWORD2(v202)));
        if (v20 != 0x7FFFFFFF)
        {
          v21 = v20;
          while (*(v202 + 32 * v21 + 8) != v16)
          {
            v21 = *(v202 + 32 * v21) & 0x7FFFFFFF;
            if (v21 == 0x7FFFFFFF)
            {
              goto LABEL_14;
            }
          }

          while (*(v202 + 32 * v20 + 8) != v16)
          {
            v20 = *(v202 + 32 * v20) & 0x7FFFFFFF;
            if (v20 == 0x7FFFFFFF)
            {
              v20 = 0x7FFFFFFFLL;
              break;
            }
          }

          v199 = *(v202 + 32 * v20 + 16);
          *buf = BYTE8(v159);
          re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v163, (v9 + 8), buf);
          re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((&v158 + 8), &v199);
          if (v199)
          {

            v199 = 0;
          }

          re::HashTable<re::DynamicString,re::MaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew(&v205, (v9 + 8), v200);
          goto LABEL_33;
        }
      }

LABEL_14:
      v22 = *(v147 + 5);
      re::MaterialSamplerData::makeDescriptor(&v198, v200);
      v23 = [*v22 newSamplerStateWithDescriptor_];
      if (v198)
      {

        v198 = 0;
      }

      re::HashTable<re::DynamicString,re::MaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew(&v205, (v9 + 8), v200);
      v24 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v18) ^ ((0xBF58476D1CE4E5B9 * v18) >> 27));
      v25 = v24 ^ (v24 >> 31);
      if (v201)
      {
        v26 = v25 % DWORD2(v202);
        v27 = *(*(&v201 + 1) + 4 * v26);
        if (v27 != 0x7FFFFFFF)
        {
          while (*(v202 + 32 * v27 + 8) != v17)
          {
            v27 = *(v202 + 32 * v27) & 0x7FFFFFFF;
            if (v27 == 0x7FFFFFFF)
            {
              goto LABEL_28;
            }
          }

          goto LABEL_29;
        }
      }

      else
      {
        LODWORD(v26) = 0;
      }

LABEL_28:
      v28 = re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v201, v26, v25);
      *(v28 + 8) = v17;
      *(v28 + 16) = v23;
      ++HIDWORD(v204);
LABEL_29:
      v197 = v23;
      *buf = BYTE8(v159);
      re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v163, (v9 + 8), buf);
      re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((&v158 + 8), &v197);
      a1 = v197;
      if (v197)
      {

        v197 = 0;
      }

      if (v23)
      {
      }

LABEL_33:
      if (*(a2 + 224) <= (v5 + 1))
      {
        v29 = v5 + 1;
      }

      else
      {
        v29 = *(a2 + 224);
      }

      v8 = *(a2 + 208);
      while (v29 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(v8 + 152 * v5) & 0x80000000) != 0)
        {
          goto LABEL_41;
        }
      }

      LODWORD(v5) = v29;
LABEL_41:
      ;
    }

    while (v5 != v4);
  }

  memset(v200, 0, 36);
  *&v200[36] = 0x7FFFFFFFLL;
  v146 = *(a2 + 176);
  if (v146)
  {
    v30 = 0;
    v31 = *(a2 + 160);
    while (1)
    {
      v32 = *v31;
      v31 += 40;
      if (v32 < 0)
      {
        break;
      }

      if (v146 == ++v30)
      {
        LODWORD(v30) = *(a2 + 176);
        break;
      }
    }
  }

  else
  {
    LODWORD(v30) = 0;
  }

  if (v30 != v146)
  {
    v38 = *(a2 + 160);
    do
    {
      v39 = v38 + 160 * v30;
      v40 = v39 + 8;
      v41 = *(v39 + 16);
      if (v41)
      {
        v43 = *(v39 + 24);
        if (!v43)
        {
          v47 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_66;
        }

        LOBYTE(v42) = *v43;
      }

      else
      {
        v42 = v41 >> 8;
        v43 = (v39 + 17);
      }

      if (v42)
      {
        v42 = v42;
        v44 = v43[1];
        if (v44)
        {
          v45 = v43 + 2;
          do
          {
            v42 = 31 * v42 + v44;
            v46 = *v45++;
            v44 = v46;
          }

          while (v46);
        }

        v47 = v42 & 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v47 = 0;
      }

LABEL_66:
      *buf = v47;
      v48 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v47 ^ (v47 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v47 ^ (v47 >> 30))) >> 27));
      v49 = v48 ^ (v48 >> 31);
      if (*&v200[24])
      {
        v50 = v49 % *&v200[24];
        v51 = *(*&v200[8] + 4 * v50);
        if (v51 != 0x7FFFFFFF)
        {
          while (*(*&v200[16] + 16 * v51 + 8) != v47)
          {
            v51 = *(*&v200[16] + 16 * v51) & 0x7FFFFFFF;
            if (v51 == 0x7FFFFFFF)
            {
              goto LABEL_72;
            }
          }

          goto LABEL_73;
        }
      }

      else
      {
        LODWORD(v50) = 0;
      }

LABEL_72:
      re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::addAsMove(v200, v50, v49, buf, buf);
      ++*&v200[40];
LABEL_73:
      v193 = 3;
      v52 = re::StringID::invalid(buf);
      v194 = *buf >> 1;
      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      v195 = 0;
      v53 = re::StringID::invalid(&v196);
      if (*(v39 + 16))
      {
        v54 = *(v39 + 24);
      }

      else
      {
        v54 = (v39 + 17);
      }

      v55 = v39 + 40;
      v184 = 0;
      v185 = &str_67;
      v194 = v184 >> 1;
      v57 = re::MaterialTextureParam::serializationString(v55, v56);
      isColorTextureParameter = re::MaterialAsset::isColorTextureParameter(&v184, v58);
      re::tryLoadTexture(&v172, v147, v55, isColorTextureParameter);
      if (v172 == 1)
      {
        re::TextureHandle::TextureHandle(v192, &v173);
        *buf = v156;
        re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&v161[8], v40, buf);
        re::DynamicArray<re::TextureHandle>::add(v155, v192);
        re::TextureHandle::invalidate(v192);
        v193 = 2;
        *buf = 0;
        *&buf[8] = &str_67;
        v62 = *buf;
        v63 = *&buf[8];
        *buf = 0;
        *&buf[8] = &str_67;
        var0 = v196.var0;
        var1 = v196.var1;
        v196.var1 = v63;
        *&v196.var0 = v62;
        if (var0)
        {
          if (buf[0])
          {
            if (buf[0])
            {
            }
          }
        }

        v195 = 0;
      }

      else
      {
        buf[0] = 46;
        v212 = 0;
        *&buf[16] = 0;
        v210 = 0;
        *&buf[8] = 0;
        v211 = 0;
        re::TokenizedMember::tokenize(buf, v57);
        if (v210 == 2)
        {
          v68 = v212;
          if (re::MaterialManager::isEngineDefinedTextureTable(*v212, v67))
          {
            v193 = 1;
            v69 = re::TokenizedMember::operator[](2uLL, v68, 0);
            v70 = 0;
            while (strcmp(re::s_materialTableIDMappings[v70], v69))
            {
              if (++v70 == 168)
              {
                LOBYTE(v70) = 0;
                break;
              }
            }

            v195 = v70;
            v71 = re::TokenizedMember::operator[](v210, v212, 1u);
            v180 = 0;
            v181[0] = &str_67;
            v73 = v180;
            v74 = v181[0];
            v181[0] = &str_67;
            v180 = 0;
            v75 = v196.var0;
            v76 = v196.var1;
            v196.var1 = v74;
            *&v196.var0 = v73;
            if (v75)
            {
              if (v180)
              {
                if (v180)
                {
                }
              }
            }
          }
        }

        re::TokenizedMember::deinit(buf);
        if (*&buf[8] && v212)
        {
          (*(**&buf[8] + 40))(*&buf[8]);
        }
      }

      v78 = re::Hash<re::DynamicString>::operator()(buf, (v55 + 40));
      v79 = re::HashTable<re::DynamicString,re::MaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(buf, &v205, v55 + 40, v78);
      if (*&buf[12] == 0x7FFFFFFF)
      {
        v86 = *(v55 + 48);
        if (v86)
        {
          v87 = v86 >> 1;
        }

        else
        {
          v87 = v86 >> 1;
        }

        if (v87)
        {
          v88 = *re::pipelineLogObjects(v79);
          v79 = os_log_type_enabled(v88, OS_LOG_TYPE_ERROR);
          if (v79)
          {
            if (*(v40 + 8))
            {
              v89 = *(v40 + 16);
            }

            else
            {
              v89 = v40 + 9;
            }

            if (*(v55 + 48))
            {
              v96 = *(v55 + 56);
            }

            else
            {
              v96 = v55 + 49;
            }

            *buf = 136315394;
            *&buf[4] = v89;
            *&buf[12] = 2080;
            *&buf[14] = v96;
            _os_log_error_impl(&dword_1E1C61000, v88, OS_LOG_TYPE_ERROR, "Invalid sampler binding on texture block %s: %s", buf, 0x16u);
          }
        }
      }

      else
      {
        v90 = re::MaterialSamplerData::hash((v206 + 104 * *&buf[12] + 40), v80, v81, v82, v83, v84, v85);
        v79 = re::TextureParameterTableBuilder::bindTextureToSampler(v148, v40, (v55 + 40), v90);
      }

      if (*(v55 + 104) == 1)
      {
        if (*(v55 + 108) >= 2u)
        {
          v91 = *re::pipelineLogObjects(v79);
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v40 + 8))
            {
              v92 = *(v40 + 16);
            }

            else
            {
              v92 = v40 + 9;
            }

            *buf = 136315138;
            *&buf[4] = v92;
            _os_log_impl(&dword_1E1C61000, v91, OS_LOG_TYPE_DEFAULT, "Texture block %s has uv index > 1; this will be clamped to 1 in RE Pbr materials", buf, 0xCu);
          }
        }

        *buf = *(v55 + 108);
        v79 = re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(v169, v40, buf);
      }

      if (v193 == 3)
      {
        v93 = *re::pipelineLogObjects(v79);
        a1 = os_log_type_enabled(v93, OS_LOG_TYPE_ERROR);
        if (a1)
        {
          if (*(v40 + 8))
          {
            v94 = *(v40 + 16);
          }

          else
          {
            v94 = v40 + 9;
          }

          *buf = 136315394;
          *&buf[4] = v94;
          *&buf[12] = 2080;
          *&buf[14] = v57;
          _os_log_error_impl(&dword_1E1C61000, v93, OS_LOG_TYPE_ERROR, "Invalid texture binding %s: %s", buf, 0x16u);
        }
      }

      else
      {
        v188 = v193;
        v189 = v194;
        v190 = v195;
        v191 = v196;
        v196.var1 = &str_67;
        *&v196.var0 = 0;
        a1 = re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v148, v40, &v188);
        if (*&v191.var0)
        {
          if (*&v191.var0)
          {
          }
        }

        v191.var1 = &str_67;
        *&v191.var0 = 0;
        v189 = 0;
      }

      if (v172 == 1)
      {
        re::TextureHandle::invalidate(&v173);
      }

      if (v184)
      {
        if (v184)
        {
        }
      }

      if (*&v196.var0)
      {
        if (*&v196.var0)
        {
        }
      }

      if (*(a2 + 176) <= (v30 + 1))
      {
        v95 = v30 + 1;
      }

      else
      {
        v95 = *(a2 + 176);
      }

      v38 = *(a2 + 160);
      while (v95 - 1 != v30)
      {
        LODWORD(v30) = v30 + 1;
        if ((*(v38 + 160 * v30) & 0x80000000) != 0)
        {
          goto LABEL_139;
        }
      }

      LODWORD(v30) = v95;
LABEL_139:
      ;
    }

    while (v30 != v146);
  }

  v186 = 0;
  v185 = 0;
  v187 = 0;
  v33 = re::DynamicString::setCapacity(&v184, 0);
  v34 = *(a2 + 128);
  if (v34)
  {
    v35 = 0;
    v36 = *(a2 + 112);
    while (1)
    {
      v37 = *v36;
      v36 += 22;
      if (v37 < 0)
      {
        break;
      }

      if (v34 == ++v35)
      {
        LODWORD(v35) = *(a2 + 128);
        break;
      }
    }
  }

  else
  {
    LODWORD(v35) = 0;
  }

  if (v35 != v34)
  {
    v104 = *(a2 + 112);
    while (1)
    {
      v105 = (v104 + 88 * v35);
      v106 = (v105 + 1);
      v107 = v105[2];
      if ((v107 & 1) == 0)
      {
        break;
      }

      v109 = v105[3];
      if (v109)
      {
        LOBYTE(v108) = *v109;
LABEL_167:
        if (v108)
        {
          v108 = v108;
          v110 = v109[1];
          if (v110)
          {
            v111 = v109 + 2;
            do
            {
              v108 = 31 * v108 + v110;
              v112 = *v111++;
              v110 = v112;
            }

            while (v112);
          }

          v113 = v108 & 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v113 = 0;
        }

        goto LABEL_174;
      }

      v113 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_174:
      *buf = v113;
      if (re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::contains(v200, buf))
      {
        if (v105[2])
        {
          v114 = v105[3];
        }

        else
        {
          v114 = v105 + 17;
        }

        v33 = re::DynamicString::appendf(&v184, "%s, ", v114);
      }

      else
      {
        v193 = 3;
        v115 = re::StringID::invalid(buf);
        v194 = *buf >> 1;
        if (buf[0])
        {
          if (buf[0])
          {
          }
        }

        v195 = 0;
        v116 = re::StringID::invalid(&v196);
        if (v105[2])
        {
          v117 = v105[3];
        }

        else
        {
          v117 = v105 + 17;
        }

        v182 = 0;
        v183 = &str_67;
        v194 = v182 >> 1;
        v119 = re::MaterialTextureParam::serializationString((v105 + 5), v118);
        v120 = strcmp(v119, "null");
        if (v120)
        {
          v122 = re::MaterialAsset::isColorTextureParameter(&v182, v121);
          re::tryLoadTexture(&v180, v147, v105 + 5, v122);
          if (v180 == 1)
          {
            re::TextureHandle::TextureHandle(v179, v181);
            *buf = v156;
            re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&v161[8], (v105 + 1), buf);
            re::DynamicArray<re::TextureHandle>::add(v155, v179);
            re::TextureHandle::invalidate(v179);
            v193 = 2;
            *buf = 0;
            *&buf[8] = &str_67;
            v124 = *buf;
            v125 = *&buf[8];
            *buf = 0;
            *&buf[8] = &str_67;
            v126 = v196.var0;
            v127 = v196.var1;
            v196.var1 = v125;
            *&v196.var0 = v124;
            if (v126)
            {
              if (buf[0])
              {
                if (buf[0])
                {
                }
              }
            }

            v195 = 0;
          }

          else
          {
            buf[0] = 46;
            v212 = 0;
            *&buf[16] = 0;
            v210 = 0;
            *&buf[8] = 0;
            v211 = 0;
            re::TokenizedMember::tokenize(buf, v119);
            if (v210 == 2)
            {
              v129 = v212;
              if (re::MaterialManager::isEngineDefinedTextureTable(*v212, v128))
              {
                v193 = 1;
                v130 = re::TokenizedMember::operator[](2uLL, v129, 0);
                v131 = 0;
                while (strcmp(re::s_materialTableIDMappings[v131], v130))
                {
                  if (++v131 == 168)
                  {
                    LOBYTE(v131) = 0;
                    break;
                  }
                }

                v195 = v131;
                v132 = re::TokenizedMember::operator[](v210, v212, 1u);
                v177 = 0;
                v178 = &str_67;
                v134 = v177;
                v135 = v178;
                v178 = &str_67;
                v177 = 0;
                v136 = v196.var0;
                v137 = v196.var1;
                v196.var1 = v135;
                *&v196.var0 = v134;
                if (v136)
                {
                  if (v177)
                  {
                    if (v177)
                    {
                    }
                  }
                }
              }
            }

            re::TokenizedMember::deinit(buf);
            v120 = *&buf[8];
            if (*&buf[8] && v212)
            {
              v120 = (*(**&buf[8] + 40))();
            }
          }

          if (v180 == 1)
          {
            re::TextureHandle::invalidate(v181);
          }
        }

        else
        {
          v193 = 1;
          v195 = 0;
          if (*&v196.var0)
          {
            if (*&v196.var0)
            {
            }
          }

          v196.var1 = "null";
          *&v196.var0 = 6785806;
        }

        if (v193 == 3)
        {
          v139 = *re::pipelineLogObjects(v120);
          v33 = os_log_type_enabled(v139, OS_LOG_TYPE_ERROR);
          if (v33)
          {
            if (*(v106 + 8))
            {
              v140 = *(v106 + 2);
            }

            else
            {
              v140 = v106 + 9;
            }

            *buf = 136315394;
            *&buf[4] = v140;
            *&buf[12] = 2080;
            *&buf[14] = v119;
            _os_log_error_impl(&dword_1E1C61000, v139, OS_LOG_TYPE_ERROR, "Invalid texture binding %s: %s", buf, 0x16u);
          }
        }

        else
        {
          v172 = v193;
          v173 = v194;
          v174 = v195;
          re::StringID::StringID(&v175, &v196);
          v33 = re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v148, v106, &v172);
          if (v175)
          {
            if (v175)
            {
            }
          }

          v175 = 0;
          v176 = &str_67;
          v173 = 0;
        }

        if (v182)
        {
          if (v182)
          {
          }
        }

        if (*&v196.var0)
        {
          if (*&v196.var0)
          {
          }
        }
      }

      if (*(a2 + 128) <= (v35 + 1))
      {
        v141 = v35 + 1;
      }

      else
      {
        v141 = *(a2 + 128);
      }

      v104 = *(a2 + 112);
      while (v141 - 1 != v35)
      {
        LODWORD(v35) = v35 + 1;
        if ((*(v104 + 88 * v35) & 0x80000000) != 0)
        {
          goto LABEL_233;
        }
      }

      LODWORD(v35) = v141;
LABEL_233:
      if (v35 == v34)
      {
        goto LABEL_150;
      }
    }

    v108 = v107 >> 8;
    v109 = v105 + 17;
    goto LABEL_167;
  }

LABEL_150:
  v97 = v185;
  v98 = v185 >> 1;
  if ((v185 & 1) == 0)
  {
    v98 = v185 >> 1;
  }

  if (v98)
  {
    v99 = *re::pipelineLogObjects(v33);
    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
    {
      v144 = v186;
      if ((v97 & 1) == 0)
      {
        v144 = &v185 + 1;
      }

      *buf = 136315138;
      *&buf[4] = v144;
      _os_log_debug_impl(&dword_1E1C61000, v99, OS_LOG_TYPE_DEBUG, "Duplicate texture keys found: %s using TextureBlock entries", buf, 0xCu);
    }
  }

  if (v184 && (v185 & 1) != 0)
  {
    (*(*v184 + 40))();
  }

  re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v200);
  re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v201);
  re::HashTable<re::DynamicString,re::MaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v205);
  re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v200, v148);
  v100 = v153;
  if (v153)
  {
    v101 = 0;
    v102 = v152;
    while (1)
    {
      v103 = *v102;
      v102 += 22;
      if (v103 < 0)
      {
        break;
      }

      if (v153 == ++v101)
      {
        LODWORD(v101) = v153;
        break;
      }
    }
  }

  else
  {
    LODWORD(v101) = 0;
  }

  if (v101 != v153)
  {
    v142 = v152;
    do
    {
      re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v200, (v142 + 88 * v101 + 8), v142 + 88 * v101 + 40);
      if (v153 <= v101 + 1)
      {
        v143 = v101 + 1;
      }

      else
      {
        v143 = v153;
      }

      v142 = v152;
      while (v143 - 1 != v101)
      {
        LODWORD(v101) = v101 + 1;
        if ((*(v152 + 88 * v101) & 0x80000000) != 0)
        {
          goto LABEL_248;
        }
      }

      LODWORD(v101) = v143;
LABEL_248:
      ;
    }

    while (v101 != v100);
  }

  *(a3 + 232) = 0;
  *(a3 + 216) = 0u;
  *(a3 + 200) = 0u;
  *(a3 + 184) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 152) = 0u;
  *(a3 + 136) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = &unk_1F5CC8148;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 316) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 464) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 336) = 0u;
  re::TextureParameterTableBuilder::build(v148, a3);
  *(a3 + 480) = *v200;
  *v200 = 0uLL;
  *(a3 + 496) = *&v200[16];
  *&v200[16] = 0;
  *(a3 + 504) = *&v200[24];
  *&v200[24] = xmmword_1E3058120;
  *(a3 + 520) = 1;
  re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v200);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v169);
  re::HashTable<re::DynamicString,re::WeakStringID,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v166);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v163);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v161[8]);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(&v158 + 8);
  re::DynamicArray<re::TextureHandle>::deinit(v155);
  re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v151);
  re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v148);
}

uint64_t re::parseConstant(uint64_t a1, uint64_t a2, const char *a3, int a4, __int16 a5, uint64_t a6)
{
  v83 = *MEMORY[0x1E69E9840];
  *(&v80 + 1) = 0;
  v81 = 0uLL;
  re::DynamicString::setCapacity(&v80, 0);
  memset(&v82[4], 0, 64);
  *&v75 = a3;
  *(&v75 + 1) = strlen(a3);
  v12 = re::DynamicString::operator=(&v80, &v75);
  *v82 = a4;
  *&v82[2] = a5;
  if (a4 == 53)
  {
    if (*(a6 + 8))
    {
      v14 = *(a6 + 16);
    }

    else
    {
      v14 = (a6 + 9);
    }

    re::stringToLowerCase(&v75, v14);
    re::DynamicString::find(v69, &v75, "true", 4, 0);
    v16 = BYTE8(v75);
    v17 = *(&v75 + 1) >> 1;
    if ((BYTE8(v75) & 1) == 0)
    {
      v17 = BYTE8(v75) >> 1;
    }

    if (v69[0] != 1 || *&v69[8] == v17)
    {
      v18 = 1;
      re::DynamicString::find(&v73, &v75, "1", 1, 0);
      v16 = BYTE8(v75);
      v19 = *(&v75 + 1) >> 1;
      if ((BYTE8(v75) & 1) == 0)
      {
        v19 = BYTE8(v75) >> 1;
      }

      if (v73 != 1 || *(&v73 + 1) == v19)
      {
        re::DynamicString::find(v69, &v75, "false", 5, 0);
        v16 = BYTE8(v75);
        v20 = *(&v75 + 1) >> 1;
        if ((BYTE8(v75) & 1) == 0)
        {
          v20 = BYTE8(v75) >> 1;
        }

        if (v69[0] != 1 || *&v69[8] == v20)
        {
          re::DynamicString::find(&v73, &v75, "0", 1, 0);
          v16 = BYTE8(v75);
          v22 = *(&v75 + 1) >> 1;
          if ((BYTE8(v75) & 1) == 0)
          {
            v22 = BYTE8(v75) >> 1;
          }

          if (v73 != 1 || *(&v73 + 1) == v22)
          {
            re::DynamicString::format(v69, "Type mismatch between function constant and material: %s[%s], %s", v21, a3, "BOOL", a2);
            v54 = *v69;
            v55 = v70;
            v56 = v71;
            *a1 = 0;
            *(a1 + 8) = v54;
            *(a1 + 24) = v55;
            *(a1 + 32) = v56;
            v57 = v75;
            if (v75 && (BYTE8(v75) & 1) != 0)
            {
              v58 = v76;
              goto LABEL_125;
            }

            goto LABEL_106;
          }
        }

        v18 = 0;
      }
    }

    else
    {
      v18 = 1;
    }

    memset(&v82[4], 0, 64);
    v82[4] = v18;
    v23 = v75;
    if (!v75 || (v16 & 1) == 0)
    {
LABEL_105:
      v49 = v80;
      v50 = v81;
      v80 = 0u;
      v81 = 0u;
      *(a1 + 8) = v49;
      v51 = *v82;
      *(a1 + 56) = *&v82[16];
      v52 = *&v82[48];
      *(a1 + 72) = *&v82[32];
      *a1 = 1;
      *(a1 + 24) = v50;
      *(a1 + 88) = v52;
      *(a1 + 104) = *&v82[64];
      *(a1 + 40) = v51;
      goto LABEL_106;
    }

    v24 = v76;
LABEL_29:
    (*(*v23 + 40))(v23, v24);
    goto LABEL_105;
  }

  if ((a4 - 3) > 3)
  {
    if (a4 == 33)
    {
      if (*(a6 + 8))
      {
        v42 = *(a6 + 16);
      }

      else
      {
        v42 = (a6 + 9);
      }

      v48 = strtoul(v42, 0, 0);
      memset(&v82[8], 0, 60);
      *&v82[4] = v48;
    }

    else
    {
      if (a4 != 29)
      {
        re::DynamicString::format(&v75, "Unsupported type provided data for function constant in material: %s, %s", v13, a3, a2);
        v43 = v75;
        v44 = v76;
        v45 = v77;
        *a1 = 0;
        *(a1 + 8) = v43;
        *(a1 + 24) = v44;
        *(a1 + 32) = v45;
        goto LABEL_106;
      }

      if (*(a6 + 8))
      {
        v25 = *(a6 + 16);
      }

      else
      {
        v25 = (a6 + 9);
      }

      v47 = atoi(v25);
      memset(&v82[8], 0, 60);
      *&v82[4] = v47;
    }

    goto LABEL_105;
  }

  v79 = 0;
  v76 = 0;
  v77 = 0;
  *(&v75 + 1) = 0;
  v78 = 0;
  LOBYTE(v75) = 44;
  v73 = 0u;
  v74 = 0u;
  re::DynamicString::setCapacity(&v73, 0);
  if (*(a6 + 8))
  {
    v15 = *(a6 + 16);
  }

  else
  {
    v15 = (a6 + 9);
  }

  do
  {
    v27 = *v15++;
    v26 = v27;
  }

  while (v27 == 32);
  if (v26 == 91)
  {
    v28 = 0;
  }

  else
  {
    v28 = -1;
  }

  while (1)
  {
    v29 = v15[v28];
    if (v29 == 32)
    {
      goto LABEL_43;
    }

    if (!v15[v28] || v29 == 93)
    {
      break;
    }

    v69[0] = v15[v28];
    re::DynamicString::append(&v73, v69, 1uLL);
LABEL_43:
    ++v28;
  }

  if (BYTE8(v73))
  {
    v30 = v74;
  }

  else
  {
    v30 = (&v73 | 9);
  }

  re::TokenizedMember::tokenize(&v75, v30);
  __src = 0;
  v70 = 0;
  memset(v69, 0, sizeof(v69));
  LODWORD(v71) = 0;
  v31 = v77;
  if (!v77)
  {
    v39 = 0;
    v40 = 0;
    goto LABEL_74;
  }

  v63 = a2;
  v64 = a3;
  for (i = 0; i < v77; ++i)
  {
    v33 = *(v79 + 8 * i);
    if (!strcasecmp(v33, "true"))
    {
      LOBYTE(v65) = 1;
LABEL_59:
      v35 = &v65;
LABEL_66:
      re::DynamicArray<unsigned char>::add(v69, v35);
      continue;
    }

    if (!strcasecmp(v33, "false"))
    {
      LOBYTE(v65) = 0;
      goto LABEL_59;
    }

    LODWORD(v65) = strtof(v33, 0);
    while ((v70 & 3) != 0)
    {
      v68 = 0;
      re::DynamicArray<unsigned char>::add(v69, &v68);
    }

    re::DynamicArray<unsigned char>::add(v69, &v65);
    re::DynamicArray<unsigned char>::add(v69, &v65 + 1);
    re::DynamicArray<unsigned char>::add(v69, &v65 + 2);
    re::DynamicArray<unsigned char>::add(v69, &v65 + 3);
    if (v77 == 3)
    {
      if ((-1431655766 - 1431655765 * i) <= 0x55555554)
      {
        goto LABEL_65;
      }
    }

    else if ((-1431655766 - 1431655765 * i) <= 0x55555554 && v77 == 9)
    {
LABEL_65:
      v68 = 0;
      re::DynamicArray<unsigned char>::add(v69, &v68);
      v68 = 0;
      re::DynamicArray<unsigned char>::add(v69, &v68);
      v68 = 0;
      re::DynamicArray<unsigned char>::add(v69, &v68);
      v68 = 0;
      v35 = &v68;
      goto LABEL_66;
    }
  }

  if (v77 != 1)
  {
    v38 = v63;
    v37 = v64;
    if (v77 == 2 && *v82 != 4 || v77 == 3 && *v82 != 5 || v77 == 4 && *v82 != 6)
    {
      if (*v82 == 3)
      {
        v46 = 1;
        goto LABEL_114;
      }

      if (*v82 != 4)
      {
        goto LABEL_98;
      }

LABEL_97:
      v46 = 2;
      goto LABEL_114;
    }

LABEL_72:
    v39 = __src;
    v40 = *v69;
    v31 = v70;
LABEL_74:
    memset(&v82[4], 0, 64);
    if (v31 >= 0x40)
    {
      v41 = 64;
    }

    else
    {
      v41 = v31;
    }

    memcpy(&v82[4], v39, v41);
    if (v40 && v39)
    {
      (*(*v40 + 40))(v40, v39);
    }

    if (v73 && (BYTE8(v73) & 1) != 0)
    {
      (*(*v73 + 40))();
    }

    re::TokenizedMember::deinit(&v75);
    v23 = *(&v75 + 1);
    if (!*(&v75 + 1))
    {
      goto LABEL_105;
    }

    v24 = v79;
    if (!v79)
    {
      goto LABEL_105;
    }

    goto LABEL_29;
  }

  v38 = v63;
  v37 = v64;
  switch(*v82)
  {
    case 3u:
      goto LABEL_72;
    case 4u:
      goto LABEL_97;
    case 0x35u:
      goto LABEL_72;
  }

LABEL_98:
  if (*v82 == 5)
  {
    v46 = 3;
  }

  else
  {
    v46 = 4;
  }

LABEL_114:
  if (*(a6 + 8))
  {
    v59 = *(a6 + 16);
  }

  else
  {
    v59 = a6 + 9;
  }

  re::DynamicString::format(&v65, "Incorrect data for float type function constant: %s[%s%u], %s[%s]", v34, v37, "float", v46, v38, v59);
  v60 = v65;
  v61 = v66;
  v62 = v67;
  *a1 = 0;
  *(a1 + 8) = v60;
  *(a1 + 24) = v61;
  *(a1 + 32) = v62;
  if (*v69 && __src)
  {
    (*(**v69 + 40))();
  }

  if (v73 && (BYTE8(v73) & 1) != 0)
  {
    (*(*v73 + 40))();
  }

  re::TokenizedMember::deinit(&v75);
  v57 = *(&v75 + 1);
  if (*(&v75 + 1))
  {
    v58 = v79;
    if (v79)
    {
LABEL_125:
      (*(*v57 + 40))(v57, v58);
    }
  }

LABEL_106:
  result = v80;
  if (v80)
  {
    if (BYTE8(v80))
    {
      return (*(*v80 + 40))();
    }
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(uint64_t a1, char *a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(&v19, a2);
  if (!*a1)
  {
    return 0;
  }

  v5 = *(*(a1 + 8) + 4 * (v4 % *(a1 + 24)));
  if (v5 == 0x7FFFFFFF)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  v8 = v7 + (v5 << 6);
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);
  v11 = (v8 + 17);
  if (v9)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if (strcmp(v12, a2))
  {
    while (1)
    {
      v13 = *(v7 + (v5 << 6));
      v5 = v13 & 0x7FFFFFFF;
      if ((v13 & 0x7FFFFFFF) == 0x7FFFFFFF)
      {
        break;
      }

      v14 = v7 + (v5 << 6);
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      v17 = (v14 + 17);
      if (v15)
      {
        v18 = v16;
      }

      else
      {
        v18 = v17;
      }

      if (!strcmp(v18, a2))
      {
        return v7 + (v5 << 6) + 40;
      }
    }

    return 0;
  }

  return v7 + (v5 << 6) + 40;
}

double re::parseFunctionConstants@<D0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v88 = *MEMORY[0x1E69E9840];
  memset(v80, 0, 36);
  v65 = 0u;
  *&v80[36] = 0x7FFFFFFFLL;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  re::DynamicString::setCapacity(&v76, 0);
  v10 = *(a2 + 32);
  if (v10)
  {
    v11 = 0;
    v12 = *(a2 + 16);
    while (1)
    {
      v13 = *v12;
      v12 += 8;
      if (v13 < 0)
      {
        break;
      }

      if (v10 == ++v11)
      {
        LODWORD(v11) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v11) = 0;
  }

  v14 = xmmword_1E3058120;
  if (v11 != v10)
  {
    v66 = 0;
    v17 = *(a2 + 16);
    while (1)
    {
      v18 = v17 + 32 * v11;
      v20 = *(v18 + 8);
      v19 = (v18 + 8);
      v21 = (v19 + 1);
      v22 = [v19[1] index];
      v23 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(a3, v20);
      v24 = v23;
      if (v22 < 0x10001 && v23 == 0)
      {
        snprintf(__str, 6uLL, "%lu", v22);
        v24 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(a3, __str);
      }

      if (v24)
      {
        re::parseConstant(__str, a1, *v19, [*v21 type], objc_msgSend(*v21, sel_index), v24);
        if (__str[0] != 1)
        {
          re::DynamicString::DynamicString(buf, &__str[8]);
          *a9 = 0;
          *(a9 + 8) = *buf;
          *(a9 + 32) = v82;
          *(a9 + 16) = *&buf[8];
          if (*&__str[8] && (__str[16] & 1) != 0)
          {
            (*(**&__str[8] + 40))(*&__str[8], *&__str[24]);
          }

          goto LABEL_106;
        }

        v26 = re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(v80, *v19, &__str[8]);
        v27 = *&__str[8];
        if (!*&__str[8] || (__str[16] & 1) == 0)
        {
          goto LABEL_58;
        }

        v28 = *&__str[24];
        goto LABEL_22;
      }

      v29 = *v19;
      v30 = [*v21 index];
      if (*a4 == 1 && *a5 == 1)
      {
        v31 = v30;
        v32 = re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>((a4 + 8), v29);
        if (v31 < 0x10001 && v32 == 0)
        {
          snprintf(__str, 6uLL, "%lu", v31);
          v32 = re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>((a4 + 8), __str);
        }

        if (v32)
        {
          v34 = *(a5 + 40);
          if (v34)
          {
            v35 = *v32;
            v36 = *(v32 + 8);
            __n = re::mtl::getTypeSize(v36);
            v37 = [*v21 index];
            v38 = v37;
            memset(__str, 0, 32);
            re::DynamicString::setCapacity(__str, 0);
            v87 = 0u;
            v86 = 0u;
            v85 = 0u;
            *&__str[36] = 0u;
            v39 = strlen(*v19);
            *buf = *v19;
            *&buf[8] = v39;
            re::DynamicString::operator=(__str, buf);
            v87 = 0u;
            v86 = 0u;
            v85 = 0u;
            *&__str[36] = 0u;
            memcpy(&__str[36], (v34 + v35), __n);
            *&__str[32] = v36;
            *&__str[34] = v38;
            v26 = re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(v80, *v19, __str);
LABEL_91:
            v27 = *__str;
            if (!*__str || (__str[8] & 1) == 0)
            {
              goto LABEL_58;
            }

            v28 = *&__str[16];
LABEL_22:
            (*(*v27 + 40))(v27, v28, v26);
            goto LABEL_58;
          }
        }
      }

      if (a6 && (v40 = *(a6 + 8)) != 0)
      {
        v41 = *v19;
        v42 = 104 * v40 - 104;
        v43 = (*(a6 + 16) + 16);
        do
        {
          if (*(v43 - 1))
          {
            v44 = *v43;
          }

          else
          {
            v44 = v43 - 7;
          }

          v45 = strcmp(v44, v41);
          v46 = v45 != 0;
          if (v45)
          {
            v47 = v42 == 0;
          }

          else
          {
            v47 = 1;
          }

          v42 -= 104;
          v43 += 13;
        }

        while (!v47);
      }

      else
      {
        v46 = 1;
      }

      if ((a8 & 1) == 0)
      {
        v48 = [*v21 required];
        if ((v46 & v48) == 1)
        {
          if (!a7)
          {
            v51 = *re::pipelineLogObjects(v48);
            v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
            if (v52)
            {
              v53 = *v19;
              *__str = 136315138;
              *&__str[4] = v53;
              _os_log_impl(&dword_1E1C61000, v51, OS_LOG_TYPE_DEFAULT, "Material requires function constant %s but it was not provided by the material. Providing 0s as a fallback.", __str, 0xCu);
            }

            memset(__str, 0, 32);
            re::DynamicString::setCapacity(__str, 0);
            v87 = 0u;
            v86 = 0u;
            v85 = 0u;
            *&__str[36] = 0u;
            v54 = strlen(*v19);
            *buf = *v19;
            *&buf[8] = v54;
            re::DynamicString::operator=(__str, buf);
            v55 = [*v21 type];
            v56 = [*v21 index];
            *&__str[32] = v55;
            *&__str[34] = v56;
            if ([*v21 type] == 53)
            {
LABEL_71:
              v87 = 0u;
              v86 = 0u;
              v85 = 0u;
              *&__str[36] = 0u;
              goto LABEL_90;
            }

            if ([*v21 &selRef_setStiffness_] != 3 && objc_msgSend(*v21, &selRef_setStiffness_) != 4 && objc_msgSend(*v21, &selRef_setStiffness_) != 5 && objc_msgSend(*v21, &selRef_setStiffness_) != 6)
            {
              if ([*v21 &selRef_setStiffness_] == 29)
              {
                goto LABEL_71;
              }

              v59 = [*v21 &selRef_setStiffness_];
              if (v59 == 33)
              {
                v87 = 0u;
                v86 = 0u;
                v85 = 0u;
                *&__str[36] = 0u;
              }

              else
              {
                v60 = *re::pipelineLogObjects(v59);
                if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                {
                  v61 = *v19;
                  v62 = [*v21 type];
                  *buf = 136315394;
                  *&buf[4] = v61;
                  *&buf[12] = 1024;
                  *&buf[14] = v62;
                  _os_log_error_impl(&dword_1E1C61000, v60, OS_LOG_TYPE_ERROR, "Required function constant %s is required but not provided and of an unsupported type %i.", buf, 0x12u);
                }
              }

LABEL_90:
              re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(v80, *v19, __str);
              goto LABEL_91;
            }

            __src = 0;
            memset(buf, 0, sizeof(buf));
            LODWORD(v82) = 0;
            if ([*v21 &selRef_setStiffness_] == 3)
            {
              v75 = 0;
              re::DynamicArray<float>::add(buf, &v75);
              goto LABEL_84;
            }

            if ([*v21 &selRef_setStiffness_] == 4)
            {
              goto LABEL_83;
            }

            if ([*v21 &selRef_setStiffness_] == 5)
            {
              goto LABEL_82;
            }

            if ([*v21 &selRef_setStiffness_] == 6)
            {
              v75 = 0;
              re::DynamicArray<float>::add(buf, &v75);
LABEL_82:
              v75 = 0;
              re::DynamicArray<float>::add(buf, &v75);
LABEL_83:
              v75 = 0;
              re::DynamicArray<float>::add(buf, &v75);
              v75 = 0;
              re::DynamicArray<float>::add(buf, &v75);
            }

LABEL_84:
            v57 = __src;
            *&__str[36] = 0u;
            v85 = 0u;
            v86 = 0u;
            v87 = 0u;
            if (*&buf[16] >= 0x40uLL)
            {
              v58 = 64;
            }

            else
            {
              v58 = *&buf[16];
            }

            memcpy(&__str[36], __src, v58);
            if (*buf && v57)
            {
              (*(**buf + 40))();
            }

            goto LABEL_90;
          }

          if (v77)
          {
            v49 = v77 >> 1;
          }

          else
          {
            v49 = v77 >> 1;
          }

          if (!v49)
          {
            re::DynamicString::append(&v76, "Missing required function constants: ", 0x25uLL);
          }

          if (v66)
          {
            re::DynamicString::append(&v76, ", ", 2uLL);
          }

          re::DynamicString::appendf(&v76, "%s", *v19);
          v66 = 1;
        }
      }

LABEL_58:
      v14 = xmmword_1E3058120;
      if (*(a2 + 32) <= (v11 + 1))
      {
        v50 = v11 + 1;
      }

      else
      {
        v50 = *(a2 + 32);
      }

      v17 = *(a2 + 16);
      while (v50 - 1 != v11)
      {
        LODWORD(v11) = v11 + 1;
        if ((*(v17 + 32 * v11) & 0x80000000) != 0)
        {
          goto LABEL_66;
        }
      }

      LODWORD(v11) = v50;
LABEL_66:
      if (v11 == v10)
      {
        if (v66)
        {
          re::DynamicString::DynamicString(__str, &v76);
          *a9 = 0;
          *(a9 + 8) = *__str;
          *(a9 + 32) = *&__str[24];
          *(a9 + 16) = *&__str[8];
          goto LABEL_106;
        }

        v65 = *v80;
        v15 = *&v80[16];
        v16 = *&v80[24];
        goto LABEL_105;
      }
    }
  }

  v15 = 0;
  v16 = xmmword_1E3058120;
LABEL_105:
  memset(v80, 0, 32);
  *&v80[32] = 0x7FFFFFFF00000000;
  *&__str[40] = 1;
  *a9 = 1;
  *(a9 + 8) = v65;
  *__str = 0;
  *&__str[8] = 0;
  *(a9 + 24) = v15;
  *&__str[16] = 0;
  *(a9 + 32) = v16;
  *&__str[24] = v14;
  *(a9 + 48) = 1;
  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(__str);
LABEL_106:
  if (v76 && (v77 & 1) != 0)
  {
    (*(*v76 + 40))();
  }

  return re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v80);
}

__n128 re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(uint64_t a1, char *a2, uint64_t a3)
{
  v18 = 0;
  v19 = a2;
  v16 = 0;
  v17 = 0;
  v5 = re::Hash<re::DynamicString>::operator()(&v20, a2);
  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v19, v5, &v16);
  if (HIDWORD(v17) == 0x7FFFFFFF)
  {
    v7 = re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v17, v16);
    v8 = v19;
    *(v7 + 56) = 0u;
    *(v7 + 40) = 0u;
    *(v7 + 64) = *(a3 + 24);
    v9 = *(a3 + 8);
    *(v7 + 40) = *a3;
    *a3 = 0;
    v10 = *(a3 + 16);
    *(a3 + 24) = 0;
    v12 = *(v7 + 48);
    v11 = *(v7 + 56);
    *(v7 + 48) = v9;
    *(v7 + 56) = v10;
    *(a3 + 8) = v12;
    *(a3 + 16) = v11;
    v13 = *(a3 + 48);
    v14 = *(a3 + 64);
    v15 = *(a3 + 80);
    *(v7 + 136) = *(a3 + 96);
    *(v7 + 120) = v15;
    *(v7 + 104) = v14;
    *(v7 + 88) = v13;
    result = *(a3 + 32);
    *(v7 + 72) = result;
    ++*(a1 + 40);
  }

  return result;
}

void *re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(uint64_t a1, char *a2, uint64_t a3)
{
  v9 = 0;
  v10 = a2;
  v7 = 0;
  v8 = 0;
  v5 = re::Hash<re::DynamicString>::operator()(&v11, a2);
  result = re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v10, v5, &v7);
  if (HIDWORD(v8) == 0x7FFFFFFF)
  {
    return re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<char const*&,re::TechniqueFunctionConstant const&>(a1, &v7, &v10, a3);
  }

  return result;
}

void re::parseFunctionConstants(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v98 = *MEMORY[0x1E69E9840];
  v93 = 0;
  v91 = 0u;
  v92 = 0u;
  v94 = 0x7FFFFFFFLL;
  v7 = a3[15];
  if (v7)
  {
    v8 = a3[16];
    v9 = v8 + 8 * v7;
    do
    {
      v10 = *(*v8 + 56);
      if (v10)
      {
        v11 = *(*v8 + 64);
        for (i = 104 * v10; i; i -= 104)
        {
          if (*(v11 + 8))
          {
            v13 = *(v11 + 16);
          }

          else
          {
            v13 = (v11 + 9);
          }

          *&v88[0] = v13;
          v14 = re::Hash<re::DynamicString>::operator()(v97, v13);
          re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(&v91, v88, v14, v97);
          if (*&v97[12] == 0x7FFFFFFF)
          {
            v15 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a4, v11);
            if (v15)
            {
              if (*(v11 + 8))
              {
                v16 = *(v11 + 16);
              }

              else
              {
                v16 = (v11 + 9);
              }

              re::parseConstant(v97, a3[178], v16, *(v11 + 32), *(v11 + 34), v15);
              if (v97[0] != 1)
              {
                re::DynamicString::DynamicString(v88, &v97[8]);
                *a1 = 0;
                v22 = *(&v88[1] + 1);
                *(a1 + 8) = *&v88[0];
                *(a1 + 32) = v22;
                *(a1 + 16) = *(v88 + 8);
                if (*&v97[8] && (v97[16] & 1) != 0)
                {
                  (*(**&v97[8] + 40))();
                }

                goto LABEL_143;
              }

              if (*(v11 + 8))
              {
                v17 = *(v11 + 16);
              }

              else
              {
                v17 = (v11 + 9);
              }

              re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(&v91, v17, &v97[8]);
              if (*&v97[8] && (v97[16] & 1) != 0)
              {
                (*(**&v97[8] + 40))();
              }
            }
          }

          v11 += 104;
        }
      }

      v8 += 8;
    }

    while (v8 != v9);
    LODWORD(v7) = HIDWORD(v92);
  }

  if (v7 >= *(a4 + 28))
  {
LABEL_136:
    v68 = 0uLL;
    memset(v97, 0, 36);
    *&v97[36] = 0x7FFFFFFFLL;
    v69 = xmmword_1E3058120;
    if (v91)
    {
      if (HIDWORD(v92) <= 3)
      {
        v70 = 3;
      }

      else
      {
        v70 = HIDWORD(v92);
      }

      re::HashTable<re::DynamicString,re::MaterialTechniqueQualityLevelSetData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v97, v91, v70);
      re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(v97, &v91);
      v69 = xmmword_1E3058120;
      v68 = *v97;
      v71 = *&v97[16];
      v72 = *&v97[24];
    }

    else
    {
      v71 = 0;
      v72 = xmmword_1E3058120;
    }

    *a1 = 1;
    *(a1 + 8) = v68;
    *v97 = 0uLL;
    *(a1 + 24) = v71;
    *&v97[16] = 0;
    *(a1 + 32) = v72;
    *&v97[24] = v69;
    *(a1 + 48) = 1;
    re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v97);
    goto LABEL_143;
  }

  v89 = 0;
  memset(v88, 0, sizeof(v88));
  v90 = 0x7FFFFFFFLL;
  v18 = *(a4 + 32);
  if (v18)
  {
    v19 = 0;
    v20 = *(a4 + 16);
    while (1)
    {
      v21 = *v20;
      v20 += 20;
      if (v21 < 0)
      {
        break;
      }

      if (v18 == ++v19)
      {
        LODWORD(v19) = *(a4 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v19) = 0;
  }

  if (v19 != v18)
  {
    v23 = *(a4 + 16);
    do
    {
      v24 = v23 + 80 * v19;
      v25 = re::Hash<re::DynamicString>::operator()(v97, (v24 + 8));
      re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v91, v24 + 8, v25, v97);
      if (*&v97[12] == 0x7FFFFFFF)
      {
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v88, (v24 + 8), (v23 + 80 * v19 + 40));
      }

      v26 = *(a4 + 32);
      if (v26 <= v19 + 1)
      {
        v26 = v19 + 1;
      }

      v23 = *(a4 + 16);
      while (v26 - 1 != v19)
      {
        LODWORD(v19) = v19 + 1;
        if ((*(v23 + 80 * v19) & 0x80000000) != 0)
        {
          goto LABEL_44;
        }
      }

      LODWORD(v19) = v26;
LABEL_44:
      ;
    }

    while (v19 != v18);
  }

  v27 = a3[15];
  if (!v27)
  {
LABEL_135:
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v88);
    goto LABEL_136;
  }

  v28 = a3[16];
  v73 = &v28[v27];
  v74 = *(a2 + 48);
  while (1)
  {
    v75 = *v28;
    v76 = v28;
    *v97 = *(*v28 + 2424);
    v29 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v74 + 376, v97);
    if (v29)
    {
      v30 = (v29 + 8);
    }

    else
    {
      v30 = 0;
    }

    v31 = *v28;
    if (*(*v28 + 2448))
    {
      v32 = *(v31 + 2456);
    }

    else
    {
      v32 = (v31 + 2449);
    }

    re::mtl::Library::makeFunction(&v87, v30, v32);
    v33 = a3[178];
    v34 = [v87 functionConstantsDictionary];
    memset(v84, 0, sizeof(v84));
    v85 = 0;
    v86 = 0x7FFFFFFFLL;
    v35 = [v34 keyEnumerator];
    v36 = [v35 nextObject];
    if (v36)
    {
      v37 = v36;
      do
      {
        v96 = [v37 UTF8String];
        v95 = [v34 objectForKey_];
        re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::add(v84, &v96, &v95);
        if (v95)
        {
        }

        v37 = [v35 nextObject];
      }

      while (v37);
    }

    v82[0] = 0;
    v81[0] = 0;
    re::parseFunctionConstants(v33, v84, v88, v82, v81, v75 + 48, 0, 0, v97);
    if (v82[0] == 1)
    {
      re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v83);
    }

    re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v84);
    v38 = v97[0];
    if (v97[0])
    {
      v39 = *&v97[40];
      if (*&v97[40])
      {
        v40 = 0;
        v41 = *&v97[24];
        while (1)
        {
          v42 = *v41;
          v41 += 38;
          if (v42 < 0)
          {
            break;
          }

          if (*&v97[40] == ++v40)
          {
            LODWORD(v40) = *&v97[40];
            break;
          }
        }
      }

      else
      {
        LODWORD(v40) = 0;
      }

      if (v40 != *&v97[40])
      {
        v44 = *&v97[24];
        do
        {
          re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&v91, (v44 + 152 * v40 + 8), v44 + 152 * v40 + 40);
          if (*&v97[40] <= (v40 + 1))
          {
            v45 = v40 + 1;
          }

          else
          {
            v45 = *&v97[40];
          }

          v44 = *&v97[24];
          while (v45 - 1 != v40)
          {
            LODWORD(v40) = v40 + 1;
            if ((*(*&v97[24] + 152 * v40) & 0x80000000) != 0)
            {
              goto LABEL_78;
            }
          }

          LODWORD(v40) = v45;
LABEL_78:
          ;
        }

        while (v40 != v39);
      }
    }

    else
    {
      re::DynamicString::DynamicString(v84, &v97[8]);
      *a1 = 0;
      v43 = *(&v84[1] + 1);
      *(a1 + 8) = *&v84[0];
      *(a1 + 32) = v43;
      *(a1 + 16) = *(v84 + 8);
    }

    if (v97[0] == 1)
    {
      re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v97[8]);
      v46 = v76;
    }

    else
    {
      v46 = v76;
      if (*&v97[8] && (v97[16] & 1) != 0)
      {
        (*(**&v97[8] + 40))();
      }
    }

    if (v87)
    {
    }

    if (!v38)
    {
      break;
    }

    v47 = HIDWORD(v92);
    v48 = *(a4 + 28);
    if (HIDWORD(v92) >= v48)
    {
      goto LABEL_135;
    }

    v49 = *(*v46 + 2480);
    if (v49)
    {
      v50 = v49 >> 1;
    }

    else
    {
      v50 = v49 >> 1;
    }

    if (v50)
    {
      *v97 = *(*v46 + 2432);
      v51 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v74 + 376, v97);
      if (v51)
      {
        v52 = (v51 + 8);
      }

      else
      {
        v52 = 0;
      }

      v53 = *v46;
      if (*(*v46 + 2480))
      {
        v54 = *(v53 + 2488);
      }

      else
      {
        v54 = (v53 + 2481);
      }

      re::mtl::Library::makeFunction(&v87, v52, v54);
      v55 = a3[178];
      v56 = [v87 functionConstantsDictionary];
      memset(v84, 0, sizeof(v84));
      v85 = 0;
      v86 = 0x7FFFFFFFLL;
      v57 = [v56 keyEnumerator];
      v58 = [v57 nextObject];
      if (v58)
      {
        v59 = v58;
        do
        {
          v96 = [v59 UTF8String];
          v95 = [v56 objectForKey_];
          re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::add(v84, &v96, &v95);
          if (v95)
          {
          }

          v59 = [v57 nextObject];
        }

        while (v59);
      }

      v79[0] = 0;
      v78[0] = 0;
      re::parseFunctionConstants(v55, v84, v88, v79, v78, v75 + 48, 0, 0, v97);
      if (v79[0] == 1)
      {
        re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v80);
      }

      re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v84);
      v60 = v97[0];
      if (v97[0])
      {
        v61 = *&v97[40];
        if (*&v97[40])
        {
          v62 = 0;
          v63 = *&v97[24];
          while (1)
          {
            v64 = *v63;
            v63 += 38;
            if (v64 < 0)
            {
              break;
            }

            if (*&v97[40] == ++v62)
            {
              LODWORD(v62) = *&v97[40];
              break;
            }
          }
        }

        else
        {
          LODWORD(v62) = 0;
        }

        if (v62 != *&v97[40])
        {
          v66 = *&v97[24];
          do
          {
            re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&v91, (v66 + 152 * v62 + 8), v66 + 152 * v62 + 40);
            if (*&v97[40] <= (v62 + 1))
            {
              v67 = v62 + 1;
            }

            else
            {
              v67 = *&v97[40];
            }

            v66 = *&v97[24];
            while (v67 - 1 != v62)
            {
              LODWORD(v62) = v62 + 1;
              if ((*(*&v97[24] + 152 * v62) & 0x80000000) != 0)
              {
                goto LABEL_123;
              }
            }

            LODWORD(v62) = v67;
LABEL_123:
            ;
          }

          while (v62 != v61);
        }
      }

      else
      {
        re::DynamicString::DynamicString(v84, &v97[8]);
        *a1 = 0;
        v65 = *(&v84[1] + 1);
        *(a1 + 8) = *&v84[0];
        *(a1 + 32) = v65;
        *(a1 + 16) = *(v84 + 8);
      }

      if (v97[0] == 1)
      {
        re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v97[8]);
        v46 = v76;
      }

      else
      {
        v46 = v76;
        if (*&v97[8] && (v97[16] & 1) != 0)
        {
          (*(**&v97[8] + 40))();
        }
      }

      if (v87)
      {
      }

      if (!v60)
      {
        break;
      }

      v47 = HIDWORD(v92);
      v48 = *(a4 + 28);
    }

    if (v47 < v48)
    {
      v28 = v46 + 1;
      if (v28 != v73)
      {
        continue;
      }
    }

    goto LABEL_135;
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v88);
LABEL_143:
  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v91);
}

uint64_t re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(uint64_t a1, const re::DynamicString *a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v11, a2);
  result = re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::TechniqueFunctionConstant const&>(a1, &v8, a2, a3);
  }

  return result;
}

double re::parseVariationTable@<D0>(uint64_t a1@<X0>, id *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v59 = *MEMORY[0x1E69E9840];
  v6 = [*a2 functionConstantsDictionary];
  v52 = 0u;
  v53 = 0u;
  v54 = 0;
  v55 = 0x7FFFFFFFLL;
  v7 = [v6 keyEnumerator];
  v8 = [v7 nextObject];
  if (!v8)
  {
    v50 = 0u;
    v51 = 0u;
    *v48 = 0u;
    v49 = 0u;
LABEL_45:
    v30 = re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::HashBrown(&v56, v48);
    *a4 = 1;
    v31 = v57;
    *(a4 + 8) = v56;
    v32 = *(&v58[1] + 1);
    *(a4 + 7) = *&v58[1];
    *(a4 + 8) = v32;
    *(a4 + 24) = v31;
    v56 = 0u;
    v57 = 0u;
    *(a4 + 40) = v58[0];
    memset(v58, 0, sizeof(v58));
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(v30);
    goto LABEL_46;
  }

  v9 = v8;
  do
  {
    *&v56 = [v9 UTF8String];
    v48[0] = [v6 objectForKey_];
    re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::add(&v52, &v56, v48);
    if (v48[0])
    {
    }

    v9 = [v7 nextObject];
  }

  while (v9);
  v10 = v54;
  v50 = 0u;
  v51 = 0u;
  *v48 = 0u;
  v49 = 0u;
  if (!v54)
  {
    goto LABEL_45;
  }

  v11 = 0;
  v12 = v53;
  v13 = v53;
  while (1)
  {
    v14 = *v13;
    v13 += 8;
    if (v14 < 0)
    {
      break;
    }

    if (v54 == ++v11)
    {
      LODWORD(v11) = v54;
      break;
    }
  }

  if (v54 == v11)
  {
    goto LABEL_45;
  }

  v39 = *a4;
  v42 = *(a4 + 3);
  v43 = *(a4 + 4);
  v40 = *(a4 + 1);
  v41 = *(a4 + 2);
  v38 = a3;
  while (1)
  {
    v15 = v12 + 32 * v11;
    v17 = *(v15 + 16);
    v16 = (v15 + 16);
    v18 = [v17 name];
    v46 = [v18 UTF8String];
    v19 = re::Hash<re::DynamicString>::operator()(&v56, v46);
    re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a3, &v46, v19, &v56);
    v20 = HIDWORD(v56);
    if (HIDWORD(v56) != 0x7FFFFFFF)
    {
      v21 = *(a3 + 16);
      if (re::mtl::getTypeSize([*v16 type]) > 8)
      {
        *(a4 + 3) = v42;
        *(a4 + 4) = v43;
        *(a4 + 1) = v40;
        *(a4 + 2) = v41;
        v34 = [objc_msgSend(*v16 name)];
        re::DynamicString::format(&v56, "Function constant variation %s has underlying type larger than 64 bits, which is not supported.", v35, v34);
        v36 = v56;
        v37 = v57;
        *a4 = 0;
        *(a4 + 8) = v36;
        *(a4 + 24) = v37;
        goto LABEL_46;
      }

      v22 = [v18 UTF8String];
      LOWORD(v56) = [*v16 type];
      WORD1(v56) = [*v16 index];
      v57 = 0uLL;
      *(&v56 + 1) = 0;
      LODWORD(v58[0]) = 0;
      memset(v58 + 8, 0, 18);
      v23 = re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v48, &v46, &v56);
      if (*(&v56 + 1) && *(&v58[0] + 1))
      {
        (*(**(&v56 + 1) + 40))(*(&v56 + 1));
      }

      if (v46 && (v47 & 1) != 0)
      {
        (*(*v46 + 40))();
      }

      v24 = v21 + 88 * v20;
      v25 = *(v24 + 56);
      if (v25)
      {
        break;
      }
    }

LABEL_34:
    if (v54 <= v11 + 1)
    {
      v29 = v11 + 1;
    }

    else
    {
      v29 = v54;
    }

    v12 = v53;
    a3 = v38;
    while (v29 - 1 != v11)
    {
      LODWORD(v11) = v11 + 1;
      if ((*(v53 + 32 * v11) & 0x80000000) != 0)
      {
        goto LABEL_42;
      }
    }

    LODWORD(v11) = v29;
LABEL_42:
    if (v11 == v10)
    {
      *(a4 + 3) = v42;
      *(a4 + 4) = v43;
      *(a4 + 1) = v40;
      *(a4 + 2) = v41;
      *a4 = v39;
      goto LABEL_45;
    }
  }

  v26 = *(v24 + 72);
  v27 = 32 * v25;
  while (1)
  {
    re::DynamicString::DynamicString(&v46, v26);
    re::parseConstant(&v56, a1, [objc_msgSend(*v16 name)], objc_msgSend(*v16, sel_type), objc_msgSend(*v16, sel_index), &v46);
    v28 = v56;
    if (v56)
    {
      v45[0] = *(v58 + 12);
      re::DynamicArray<re::TransitionCondition *>::add((v23 + 8), v45);
    }

    else
    {
      re::DynamicString::DynamicString(v45, (&v56 + 8));
      v39 = 0;
      v42 = v45[2];
      v43 = v45[3];
      v40 = v45[0];
      v41 = v45[1];
    }

    if (*(&v56 + 1) && (v57 & 1) != 0)
    {
      (*(**(&v56 + 1) + 40))(*(&v56 + 1), *(&v57 + 1));
    }

    if (v46 && (v47 & 1) != 0)
    {
      (*(*v46 + 40))();
    }

    if ((v28 & 1) == 0)
    {
      break;
    }

    v26 = (v26 + 32);
    v27 -= 32;
    if (!v27)
    {
      goto LABEL_34;
    }
  }

  *(a4 + 3) = v42;
  *(a4 + 4) = v43;
  *(a4 + 1) = v40;
  *(a4 + 2) = v41;
  *a4 = v39;
LABEL_46:
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(v48);
  return re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v52);
}

uint64_t re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(uint64_t *a1, const re::DynamicString *a2, uint64_t a3)
{
  v6 = re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::find(a1, a2);
  if (v6 != -1)
  {
    return a1[1] + 96 * v6 + 32;
  }

  return re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::internalAdd(a1, a2, a3);
}

{
  v6 = re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::find(a1, a2);
  if (v6 != -1)
  {
    return a1[1] + 96 * v6 + 32;
  }

  return re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::internalAdd(a1, a2, a3);
}

uint64_t re::parseUsedConstantsMask(uint64_t result, uint64_t a2)
{
  v3 = result;
  *(result + 48) = 0;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  *(result + 52) = 0x7FFFFFFFLL;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = 0;
    v6 = *(a2 + 16);
    while (1)
    {
      v7 = *v6;
      v6 += 8;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(a2 + 32);
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
    v8 = *(a2 + 16);
    do
    {
      result = [*(v8 + 32 * v5 + 16) index];
      v17 = result;
      if (result > 0x7Fu)
      {
        v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * result) ^ ((0xBF58476D1CE4E5B9 * result) >> 27));
        v11 = v10 ^ (v10 >> 31);
        v12 = *(v3 + 40);
        if (v12)
        {
          v13 = v11 % v12;
          v14 = *(*(v3 + 24) + 4 * (v11 % v12));
          if (v14 != 0x7FFFFFFF)
          {
            v15 = *(v3 + 32);
            while (*(v15 + 16 * v14 + 12) != result)
            {
              v14 = *(v15 + 16 * v14 + 8) & 0x7FFFFFFF;
              if (v14 == 0x7FFFFFFF)
              {
                goto LABEL_19;
              }
            }

            goto LABEL_20;
          }
        }

        else
        {
          LODWORD(v13) = 0;
        }

LABEL_19:
        result = re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::addAsCopy(v3 + 16, v13, v11, &v17, &v17);
        ++*(v3 + 56);
      }

      else
      {
        v9 = 1 << result;
        result = re::Bitset<128>::toWordIndex(v3, result & 0x7F);
        *(v3 + 8 * result) |= v9;
      }

LABEL_20:
      if (*(a2 + 32) <= (v5 + 1))
      {
        v16 = v5 + 1;
      }

      else
      {
        v16 = *(a2 + 32);
      }

      v8 = *(a2 + 16);
      while (v16 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(v8 + 32 * v5) & 0x80000000) != 0)
        {
          goto LABEL_28;
        }
      }

      LODWORD(v5) = v16;
LABEL_28:
      ;
    }

    while (v5 != v4);
  }

  return result;
}

void re::makeMaterialDefinitionBuilder(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v296 = v3;
  v4 = v2;
  v5 = v1;
  v294 = v6;
  v364 = *MEMORY[0x1E69E9840];
  memset(v351, 0, 64);
  v7 = *(v2 + 576);
  if (v7)
  {
    v8 = *(v2 + 592);
    v9 = v8 + 80 * v7;
    while (1)
    {
      memset(v338, 0, sizeof(v338));
      memset(v337, 0, sizeof(v337));
      v10 = *(v8 + 64);
      if (v10)
      {
        v11 = 0;
        v12 = *(v8 + 48);
        while (1)
        {
          v13 = *v12;
          v12 += 14;
          if (v13 < 0)
          {
            break;
          }

          if (v10 == ++v11)
          {
            LODWORD(v11) = *(v8 + 64);
            break;
          }
        }
      }

      else
      {
        LODWORD(v11) = 0;
      }

LABEL_18:
      while (v11 != v10)
      {
        v14 = *(v8 + 48) + 56 * v11;
        *__src = re::Hash<re::DynamicString>::operator()(__src, (v14 + 8));
        LOWORD(v359) = *(v14 + 40);
        v15 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v337, __src);
        if (v15 == -1)
        {
          re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::internalAdd(v337, __src, &v359);
        }

        else
        {
          *(v337[1] + 8 * v15 + 4) = v359;
        }

        v16 = *(v8 + 64);
        if (v16 <= v11 + 1)
        {
          v16 = v11 + 1;
        }

        while (v16 - 1 != v11)
        {
          LODWORD(v11) = v11 + 1;
          if ((*(*(v8 + 48) + 56 * v11) & 0x80000000) != 0)
          {
            goto LABEL_18;
          }
        }

        LODWORD(v11) = v16;
      }

      v17 = *(v8 + 8);
      if ((v17 & 1) == 0)
      {
        break;
      }

      v19 = *(v8 + 16);
      if (v19)
      {
        LOBYTE(v18) = *v19;
LABEL_23:
        if (v18)
        {
          v18 = v18;
          v20 = v19[1];
          if (v20)
          {
            v21 = v19 + 2;
            do
            {
              v18 = 31 * v18 + v20;
              v22 = *v21++;
              v20 = v22;
            }

            while (v22);
          }

          v23 = v18 & 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = 0;
        }

        goto LABEL_30;
      }

      v23 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_30:
      *__src = v23;
      if (re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::find(v351, __src) == -1)
      {
        re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::internalAdd(v351, __src, v337);
      }

      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v337);
      v8 += 80;
      if (v8 == v9)
      {
        goto LABEL_33;
      }
    }

    v18 = v17 >> 8;
    v19 = (v8 + 9);
    goto LABEL_23;
  }

LABEL_33:
  v24 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(v4 + 464, v337);
  v25 = v337[0];
  if (v337[0] && (v337[1] & 1) != 0)
  {
    v25 = (*(*v337[0] + 40))();
  }

  if (v24)
  {
    v26 = re::Hash<re::DynamicString>::operator()(__src, v337);
    v27 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v4 + 464, v26, __src, v337);
    if (*&__src[12] == 0x7FFFFFFF)
    {
      v28 = re::Hash<re::DynamicString>::operator()(&v359, __src);
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v4 + 464, v28, &v359, __src);
      HIDWORD(v290) = HIDWORD(v360) != 0x7FFFFFFF;
      if (*__src && (__src[8] & 1) != 0)
      {
        (*(**__src + 40))();
      }
    }

    else
    {
      HIDWORD(v290) = 1;
    }

    v29 = v337[0];
    if (v337[0] && (v337[1] & 1) != 0)
    {
      v29 = (*(*v337[0] + 40))();
    }

    v30 = re::Hash<re::DynamicString>::operator()(__src, v337);
    v31 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v4 + 464, v30, __src, v337);
    if (*&__src[12] == 0x7FFFFFFF)
    {
      v32 = re::Hash<re::DynamicString>::operator()(&v359, __src);
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v4 + 464, v32, &v359, __src);
      LOBYTE(v290) = HIDWORD(v360) != 0x7FFFFFFF;
      if (*__src && (__src[8] & 1) != 0)
      {
        (*(**__src + 40))();
      }
    }

    else
    {
      LOBYTE(v290) = 1;
    }

    v25 = v337[0];
    if (v337[0] && (v337[1] & 1) != 0)
    {
      v25 = (*(*v337[0] + 40))();
    }
  }

  else
  {
    v290 = 0;
  }

  v33 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(v4 + 464, v337);
  v34 = v337[0];
  if (v337[0] && (v337[1] & 1) != 0)
  {
    v34 = (*(*v337[0] + 40))();
  }

  if (v33)
  {
    v35 = re::Hash<re::DynamicString>::operator()(__src, v337);
    v36 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v4 + 464, v35, __src, v337);
    if (*&__src[12] == 0x7FFFFFFF)
    {
      v37 = re::Hash<re::DynamicString>::operator()(&v359, __src);
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v4 + 464, v37, &v359, __src);
      HIDWORD(v289) = HIDWORD(v360) != 0x7FFFFFFF;
      if (*__src && (__src[8] & 1) != 0)
      {
        (*(**__src + 40))();
      }
    }

    else
    {
      HIDWORD(v289) = 1;
    }

    v38 = v337[0];
    if (v337[0] && (v337[1] & 1) != 0)
    {
      v38 = (*(*v337[0] + 40))();
    }

    v39 = re::Hash<re::DynamicString>::operator()(__src, v337);
    v40 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v4 + 464, v39, __src, v337);
    if (*&__src[12] == 0x7FFFFFFF)
    {
      v41 = re::Hash<re::DynamicString>::operator()(&v359, __src);
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v4 + 464, v41, &v359, __src);
      LOBYTE(v289) = HIDWORD(v360) != 0x7FFFFFFF;
      if (*__src && (__src[8] & 1) != 0)
      {
        (*(**__src + 40))();
      }
    }

    else
    {
      LOBYTE(v289) = 1;
    }

    v34 = v337[0];
    if (v337[0] && (v337[1] & 1) != 0)
    {
      v34 = (*(*v337[0] + 40))();
    }
  }

  else
  {
    v289 = 0;
  }

  v291 = v24;
  v292 = v33;
  v42 = *(v4 + 400);
  v300 = v4;
  v298 = v5;
  if (v42)
  {
    v299 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 664 * v42;
    v47 = (*(v4 + 416) + 16);
    do
    {
      if (*(v47 - 1))
      {
        v48 = *v47;
      }

      else
      {
        v48 = v47 - 7;
      }

      v34 = strcmp(v48, "Transparent");
      if (v34)
      {
        v34 = strcmp(v48, "TransparentAR");
        if (v34)
        {
          v34 = strcmp(v48, "TransparentDynamicLighting");
          if (v34)
          {
            v34 = strcmp(v48, "TransparentARDynamicLighting");
            v45 |= v34 == 0;
          }

          else
          {
            v44 = 1;
          }
        }

        else
        {
          v43 = 1;
        }
      }

      else
      {
        v299 = 1;
      }

      v47 += 83;
      v46 -= 664;
    }

    while (v46);
    HIDWORD(v288) = v43 | v45;
    LOBYTE(v288) = v44 | v45;
  }

  else
  {
    v288 = 0;
    v299 = 0;
  }

  v349 = 0;
  memset(v348, 0, sizeof(v348));
  v350 = 0x7FFFFFFFLL;
  v49 = *(v4 + 440);
  if (v49)
  {
    v50 = *(v4 + 456);
    v51 = 72 * v49;
    do
    {
      re::DynamicString::DynamicString(v337, v50);
      re::DynamicArray<re::DynamicString>::DynamicArray(v338, v50 + 4);
      memset(__src, 0, sizeof(__src));
      v52 = re::Hash<re::DynamicString>::operator()(&v359, v337);
      re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v348, v52, __src, v337);
      if (*&__src[12] == 0x7FFFFFFF)
      {
        re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::DynamicArray<re::DynamicString> const&>(v348, *__src, *&__src[8], v337, v338);
      }

      re::MaterialTechniqueGroupData::deinit(v337);
      re::DynamicArray<re::DynamicString>::deinit(v338);
      v34 = v337[0];
      if (v337[0] && (v337[1] & 1) != 0)
      {
        v34 = (*(*v337[0] + 40))();
      }

      v50 += 9;
      v51 -= 72;
    }

    while (v51);
  }

  v346 = 0;
  v344 = 0u;
  v345 = 0u;
  v347 = 0x7FFFFFFFLL;
  v53 = *(v4 + 664);
  if (v53)
  {
    v54 = *(v4 + 680);
    v55 = (v54 + 104 * v53);
    do
    {
      re::MaterialTechniqueQualityLevelSetData::MaterialTechniqueQualityLevelSetData(v337, v54);
      re::DynamicArray<re::DynamicString>::DynamicArray(__src, v339);
      re::DynamicString::DynamicString((v354 + 8), v338);
      v56 = re::Hash<re::DynamicString>::operator()(&v359, v337);
      v57 = v56;
      if (v344)
      {
        v58 = v56 % DWORD2(v345);
        v59 = *(*(&v344 + 1) + 4 * v58);
        if (v59 != 0x7FFFFFFF)
        {
          v60 = v345;
          while (!re::DynamicString::operator==(v60 + 120 * v59 + 8, v337))
          {
            v61 = *(v60 + 120 * v59);
            v59 = v61 & 0x7FFFFFFF;
            if ((v61 & 0x7FFFFFFF) == 0x7FFFFFFF)
            {
              goto LABEL_107;
            }
          }

          goto LABEL_108;
        }
      }

      else
      {
        LODWORD(v58) = 0;
      }

LABEL_107:
      v62 = re::HashTable<re::DynamicString,re::Pair<re::DynamicArray<re::DynamicString>,re::DynamicString,true>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(&v344, v58, v57);
      re::DynamicString::DynamicString((v62 + 8), v337);
      *(v62 + 40) = *__src;
      *__src = 0;
      *(v62 + 48) = *&__src[8];
      *&__src[8] = 0u;
      LODWORD(v353) = v353 + 1;
      *(v62 + 64) = 1;
      *(v62 + 72) = v354[0];
      v63 = *&v354[2];
      v64 = *(&v354[1] + 1);
      v65 = *&v354[1];
      memset(v354, 0, 40);
      *(v62 + 96) = v64;
      *(v62 + 104) = v63;
      *(v62 + 88) = v65;
      ++HIDWORD(v347);
LABEL_108:
      v4 = v300;
      if (*(&v354[0] + 1))
      {
        if (v354[1])
        {
          (*(**(&v354[0] + 1) + 40))();
        }

        memset(v354 + 8, 0, 32);
      }

      re::DynamicArray<re::DynamicString>::deinit(__src);
      re::MaterialTechniqueQualityLevelSetData::~MaterialTechniqueQualityLevelSetData(v337);
      v54 = (v54 + 104);
    }

    while (v54 != v55);
  }

  v342 = 0;
  v341 = 0u;
  v340 = 0u;
  v343 = 0x7FFFFFFFLL;
  v66 = *(v4 + 628);
  if (v66)
  {
    v68 = *(v4 + 632);
    if (v68)
    {
      v69 = 0;
      v70 = *(v4 + 616);
      while (1)
      {
        v71 = *v70;
        v70 += 24;
        if (v71 < 0)
        {
          break;
        }

        if (v68 == ++v69)
        {
          LODWORD(v69) = *(v4 + 632);
          break;
        }
      }
    }

    else
    {
      LODWORD(v69) = 0;
    }

    if (v69 != v68)
    {
      v72 = MEMORY[0x1E69E9830];
      v73 = *(v4 + 632);
      while (1)
      {
        v74 = *(v4 + 616) + 96 * v69;
        if (*(v74 + 80) == 1 && (*(v74 + 81) & 1) != 0)
        {
          goto LABEL_166;
        }

        v75 = v74 + 8;
        if (*(v74 + 40) == 1)
        {
          v76 = (v74 + 48);
LABEL_143:
          re::DynamicString::DynamicString(v337, v76);
          v80 = *(v75 + 8);
          goto LABEL_144;
        }

        v77 = *(v74 + 16);
        if (v77)
        {
          v78 = v77 >> 1;
        }

        else
        {
          v78 = v77 >> 1;
        }

        v76 = (v74 + 8);
        if (!v78)
        {
          goto LABEL_143;
        }

        memset(&v337[1], 0, 24);
        re::DynamicString::setCapacity(v337, v78);
        v79 = re::DynamicString::operator[](v75, 0);
        __src[0] = __toupper(*v79);
        re::DynamicString::append(v337, __src, 1uLL);
        v80 = *(v75 + 8);
        v81 = v80 >> 1;
        if ((v80 & 1) == 0)
        {
          v81 = (v80 >> 1) & 0x7E;
        }

        if (v81 >= 2)
        {
          break;
        }

LABEL_144:
        if (v80)
        {
          v86 = *(v75 + 16);
          if (!v86)
          {
            v90 = 0x7FFFFFFFFFFFFFFFLL;
            v4 = v300;
            goto LABEL_155;
          }

          LOBYTE(v85) = *v86;
        }

        else
        {
          v85 = v80 >> 8;
          v86 = (v75 + 9);
        }

        v4 = v300;
        if (v85)
        {
          v85 = v85;
          v87 = v86[1];
          if (v87)
          {
            v88 = v86 + 2;
            do
            {
              v85 = 31 * v85 + v87;
              v89 = *v88++;
              v87 = v89;
            }

            while (v89);
          }

          v90 = v85 & 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v90 = 0;
        }

LABEL_155:
        v91 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v90 ^ (v90 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v90 ^ (v90 >> 30))) >> 27));
        v92 = v91 ^ (v91 >> 31);
        if (v340)
        {
          v93 = v92 % DWORD2(v341);
          v94 = *(*(&v340 + 1) + 4 * v93);
          if (v94 != 0x7FFFFFFF)
          {
            while (*(v341 + 48 * v94 + 8) != v90)
            {
              LODWORD(v94) = *(v341 + 48 * v94) & 0x7FFFFFFF;
              if (v94 == 0x7FFFFFFF)
              {
                goto LABEL_161;
              }
            }

            goto LABEL_162;
          }
        }

        else
        {
          LODWORD(v93) = 0;
        }

LABEL_161:
        v95 = re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(&v340, v93, v92);
        v96 = v337[0];
        *(v95 + 8) = v90;
        *(v95 + 16) = v96;
        *(v95 + 40) = v337[3];
        v337[3] = 0;
        *(v95 + 24) = *&v337[1];
        memset(v337, 0, 24);
        ++HIDWORD(v343);
LABEL_162:
        v67 = v337[0];
        if (v337[0] && (v337[1] & 1) != 0)
        {
          v67 = (*(*v337[0] + 40))();
        }

        v73 = *(v4 + 632);
LABEL_166:
        if (v73 <= v69 + 1)
        {
          v97 = v69 + 1;
        }

        else
        {
          v97 = v73;
        }

        while (v97 - 1 != v69)
        {
          LODWORD(v69) = v69 + 1;
          if ((*(*(v4 + 616) + 96 * v69) & 0x80000000) != 0)
          {
            goto LABEL_173;
          }
        }

        LODWORD(v69) = v97;
LABEL_173:
        if (v69 == v68)
        {
          goto LABEL_174;
        }
      }

      v82 = 1;
      while (1)
      {
        v83 = *re::DynamicString::operator[](v75, v82);
        if ((v83 & 0x80000000) != 0)
        {
          break;
        }

        if ((*(v72 + 4 * v83 + 60) & 0x8000) != 0)
        {
          goto LABEL_136;
        }

LABEL_137:
        __src[0] = *re::DynamicString::operator[](v75, v82);
        re::DynamicString::append(v337, __src, 1uLL);
        ++v82;
        v80 = *(v75 + 8);
        v84 = v80 >> 1;
        if ((v80 & 1) == 0)
        {
          v84 = v80 >> 1;
        }

        if (v84 <= v82)
        {
          goto LABEL_144;
        }
      }

      if (!__maskrune(v83, 0x8000uLL))
      {
        goto LABEL_137;
      }

LABEL_136:
      __src[0] = 32;
      re::DynamicString::append(v337, __src, 1uLL);
      goto LABEL_137;
    }
  }

LABEL_174:
  re::MaterialDefinitionBuilder::MaterialDefinitionBuilder(v337, v4, (v4 + 32), v296, &v340, v4 + 464, v4 + 512, v348, v351, &v344);
  v98 = *(v4 + 400);
  v99 = v298;
  if (!v98)
  {
LABEL_535:
    re::MaterialDefinitionBuilder::MaterialDefinitionBuilder(__src, v337);
    *v294 = 1;
    re::MaterialDefinitionBuilder::MaterialDefinitionBuilder(v294 + 8, __src);
    re::MaterialDefinitionBuilder::~MaterialDefinitionBuilder(__src);
    goto LABEL_567;
  }

  v100 = *(v4 + 416);
  v297 = (v4 + 9);
  v293 = v100 + 664 * v98;
  v101 = &selRef_isLimitedRenderAsset;
  v102 = &selRef_iosurface;
  while (1)
  {
    re::MaterialDefinitionBuilder::addTechnique(&v334, v337, v100);
    if ((v334 & 1) == 0)
    {
      re::DynamicString::DynamicString(__src, &v335);
      *v294 = 0;
      v275 = v353;
      *(v294 + 8) = *__src;
      *(v294 + 32) = v275;
      *(v294 + 16) = *&__src[8];
      goto LABEL_563;
    }

    v104 = *(v100 + 120);
    if (v104)
    {
      v105 = v104 >> 1;
    }

    else
    {
      v105 = v104 >> 1;
    }

    if (!v105)
    {
      if (*(v4 + 8))
      {
        v297 = *(v4 + 16);
      }

      if (*(v100 + 8))
      {
        v276 = *(v100 + 16);
      }

      else
      {
        v276 = v100 + 9;
      }

      re::DynamicString::format(__src, "[%s] - Failed to create builder because vertex shader for technique '%s' is empty.", v103, v297, v276);
      goto LABEL_562;
    }

    v106 = v335;
    re::getLibraryHash(v332, v99, v4, v100, (v100 + 88));
    if ((v332[0] & 1) == 0)
    {
      if (*(v4 + 8))
      {
        v297 = *(v4 + 16);
      }

      if (*(v100 + 8))
      {
        v277 = *(v100 + 16);
      }

      else
      {
        v277 = v100 + 9;
      }

      re::DynamicString::format(__src, "[%s] - unable to get vertex library hash for technique '%s'", v107, v297, v277);
LABEL_562:
      v281 = *__src;
      v282 = *&__src[16];
      v283 = v353;
      *v294 = 0;
      *(v294 + 8) = v281;
      *(v294 + 24) = v282;
      *(v294 + 32) = v283;
      goto LABEL_563;
    }

    v108 = v333;
    *(v106 + 32) = v333;
    v109 = *(v99 + 48);
    *__src = v108;
    v110 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v109 + 376, __src);
    if (!v110)
    {
      if (*(v4 + 8))
      {
        v297 = *(v4 + 16);
      }

      if (*(v100 + 120))
      {
        v278 = *(v100 + 128);
      }

      else
      {
        v278 = v100 + 121;
      }

      if (*(v100 + 8))
      {
        v280 = *(v100 + 16);
      }

      else
      {
        v280 = v100 + 9;
      }

      re::DynamicString::format(__src, "[%s] - makeLibrary failed for vertex shader function '%s' in technique '%s'.", v111, v297, v278, v280);
      goto LABEL_562;
    }

    v112 = v110;
    re::DynamicString::operator=((v106 + 40), (v100 + 112));
    v113 = (*(v106 + 48) & 1) != 0 ? *(v106 + 56) : (v106 + 49);
    re::mtl::Library::makeFunction(&v331, (v112 + 8), v113);
    if (!v331)
    {
      break;
    }

    v115 = [v331 functionConstantsDictionary];
    memset(v328, 0, sizeof(v328));
    v329 = 0;
    v330 = 0x7FFFFFFFLL;
    v116 = [v115 keyEnumerator];
    v117 = [v116 v101[138]];
    if (v117)
    {
      v118 = v117;
      do
      {
        *__src = [v118 v102[319]];
        v359 = [v115 objectForKey_];
        re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::add(v328, __src, &v359);
        if (v359)
        {
        }

        v118 = [v116 v101[138]];
      }

      while (v118);
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v327, v100 + 328);
    v119 = [*(v99 + 208) supportsFamily:1003];
    v120 = *(v99 + 369);
    v121 = [*(v99 + 208) supportsFamily:1007];
    v122 = re::mtl::Device::needsArgumentBufferTextureEmulation((v99 + 208));
    v123 = re::mtl::Device::supportsPrimitiveIdentifier((v99 + 208));
    v124 = [*(v99 + 208) supportsShaderBarycentricCoordinates];
    v295 = v106;
    if (*(v99 + 371) == 1 && *v99 == 1)
    {
      v125 = v122;
      v126 = *(v100 + 272);
      v127 = v124;
      if (v126)
      {
        v128 = 32 * v126 - 32;
        v129 = (*(v100 + 288) + 1);
        do
        {
          v131 = *v129;
          v129 += 32;
          v130 = v131;
          if (v131)
          {
            break;
          }

          v132 = v128;
          v128 -= 32;
        }

        while (v132);
      }

      else
      {
        v130 = *(v100 + 201);
      }
    }

    else
    {
      v127 = v124;
      v125 = v122;
      v130 = 0;
    }

    re::DynamicString::find(__src, v100, "Selection", 9, 0);
    re::MaterialManager::addSupportConstantsToArray(v119, v120, v121, v130 & 1, v125, v123, v127, __src[0], v327);
    v133 = v297;
    v99 = v298;
    v134 = *(v298 + 299);
    v4 = v300;
    if (*(v300 + 8))
    {
      v133 = *(v300 + 16);
    }

    v325[0] = 0;
    v324[0] = 0;
    re::parseFunctionConstants(v133, v328, v327, v325, v324, 0, v134, 0, &v359);
    if (v325[0] == 1)
    {
      re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v326);
    }

    if ((v359 & 1) == 0)
    {
      re::DynamicString::DynamicString(__src, &v360);
      v139 = 0;
      *v294 = 0;
      v140 = v353;
      *(v294 + 8) = *__src;
      *(v294 + 32) = v140;
      *(v294 + 16) = *&__src[8];
LABEL_211:
      v101 = &selRef_isLimitedRenderAsset;
      v102 = &selRef_iosurface;
      goto LABEL_212;
    }

    v135 = v363;
    if (v363)
    {
      v136 = 0;
      v137 = v362;
      while (1)
      {
        v138 = *v137;
        v137 += 38;
        if (v138 < 0)
        {
          break;
        }

        if (v363 == ++v136)
        {
          LODWORD(v136) = v363;
          break;
        }
      }
    }

    else
    {
      LODWORD(v136) = 0;
    }

    if (v136 != v363)
    {
      v142 = v362;
      do
      {
        re::DynamicArray<re::TechniqueFunctionConstant>::add((v295 + 336), &v142[38 * v136 + 10]);
        if (v363 <= v136 + 1)
        {
          v143 = v136 + 1;
        }

        else
        {
          v143 = v363;
        }

        v142 = v362;
        while (v143 - 1 != v136)
        {
          LODWORD(v136) = v136 + 1;
          if (v362[38 * v136] < 0)
          {
            goto LABEL_237;
          }
        }

        LODWORD(v136) = v143;
LABEL_237:
        ;
      }

      while (v136 != v135);
    }

    v144 = *(v100 + 440);
    if (v144)
    {
      v145 = *(v100 + 456);
      v146 = 32 * v144;
      do
      {
        *__src = re::Hash<re::DynamicString>::operator()(__src, v145);
        re::DynamicArray<unsigned long>::add((v295 + 440), __src);
        v145 += 4;
        v146 -= 32;
      }

      while (v146);
    }

    v147 = *(v100 + 553);
    *(v295 + 685) = v147;
    if (v147)
    {
      re::MaterialManager::addDefaultVariationFallbackValues(*(v298 + 24), v295);
    }

    *(v295 + 684) = *(v100 + 656);
    re::parseUsedConstantsMask(__src, v328);
    *(v295 + 72) = *__src;
    re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::operator=(v295 + 88, &__src[16]);
    re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit(&__src[16]);
    if (*(v295 + 686))
    {
      if (*(v100 + 657))
      {
        goto LABEL_248;
      }

      *(v295 + 686) = 0;
    }

    else if (*(v100 + 657))
    {
      *(v295 + 686) = 1;
LABEL_248:
      *(v295 + 687) = *(v100 + 658);
    }

    if (*(v100 + 659) == 1)
    {
      v148 = *(v100 + 660);
    }

    else
    {
      v148 = 0;
    }

    *(v295 + 688) = v148;
    *(v295 + 170) = 0;
    v149 = re::Hash<re::DynamicString>::operator()(__src, v100);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v300 + 688, v149, __src, v100);
    if (*&__src[12] != 0x7FFFFFFF)
    {
      *(v295 + 170) = *(*(v300 + 704) + 56 * *&__src[12] + 40);
    }

    if (*(v295 + 685) == 1)
    {
      v150 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(&v355, v100 + 560);
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(&v355, "EnableRuntimeFunctionConstants", __src);
      if (*__src && (__src[8] & 1) != 0)
      {
        (*(**__src + 40))();
      }

      if (*(v295 + 48))
      {
        v151 = *(v295 + 7);
      }

      else
      {
        v151 = v295 + 49;
      }

      re::MaterialManager::getEngineShaderMetadata(&v308, *(v298 + 24), v151);
      if (v308 == 1 && BYTE1(v308) == 1)
      {
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(&v355, "EnableManualVertexFetch", __src);
        if (*__src)
        {
          if (__src[8])
          {
            (*(**__src + 40))();
          }
        }
      }

      v153 = v297;
      if (*(v300 + 8))
      {
        v153 = *(v300 + 16);
      }

      v322[0] = 0;
      v321[0] = 0;
      re::parseFunctionConstants(v153, v328, &v355, v322, v321, 0, v134, 1, __src);
      if (v322[0] == 1)
      {
        re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v323);
      }

      v139 = __src[0];
      if (__src[0])
      {
        v154 = DWORD2(v354[0]);
        if (DWORD2(v354[0]))
        {
          v155 = 0;
          v156 = v353;
          while (1)
          {
            v157 = *v156;
            v156 += 38;
            if (v157 < 0)
            {
              break;
            }

            if (DWORD2(v354[0]) == ++v155)
            {
              LODWORD(v155) = DWORD2(v354[0]);
              break;
            }
          }
        }

        else
        {
          LODWORD(v155) = 0;
        }

        if (v155 != DWORD2(v354[0]))
        {
          v159 = v353;
          do
          {
            re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(v295 + 584, &v159[38 * v155 + 2], &v159[38 * v155 + 10]);
            if (DWORD2(v354[0]) <= (v155 + 1))
            {
              v160 = v155 + 1;
            }

            else
            {
              v160 = DWORD2(v354[0]);
            }

            v159 = v353;
            while (v160 - 1 != v155)
            {
              LODWORD(v155) = v155 + 1;
              if ((v353[38 * v155] & 0x80000000) != 0)
              {
                goto LABEL_289;
              }
            }

            LODWORD(v155) = v160;
LABEL_289:
            ;
          }

          while (v155 != v154);
        }
      }

      else
      {
        re::DynamicString::DynamicString(v314, &__src[8]);
        *v294 = 0;
        v158 = v314[3];
        *(v294 + 8) = v314[0];
        *(v294 + 32) = v158;
        *(v294 + 16) = *&v314[1];
      }

      if (__src[0] == 1)
      {
        re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&__src[8]);
      }

      else if (*&__src[8] && (__src[16] & 1) != 0)
      {
        (*(**&__src[8] + 40))();
      }

      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v355);
      if (!v139)
      {
        goto LABEL_211;
      }
    }

    re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(v295 + 632, v100 + 608);
    v161 = *(v100 + 404);
    if (v161)
    {
      v162 = v297;
      if (*(v300 + 8))
      {
        v162 = *(v300 + 16);
      }

      v320 = v331;
      re::parseVariationTable(v162, &v320, v100 + 376, __src);
      if (v320)
      {

        v320 = 0;
      }

      v139 = __src[0];
      if (__src[0])
      {
        if (v295 + 376 != &__src[8])
        {
          re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::copy(v295 + 47, &__src[8]);
        }
      }

      else
      {
        v164 = v297;
        if (*(v300 + 8))
        {
          v164 = *(v300 + 16);
        }

        v165 = &__src[17];
        if (__src[16])
        {
          v165 = v353;
        }

        re::DynamicString::format(&v355, "[%s] - Failed to parse vertex shader permuted function constants: %s.", v163, v164, v165);
        v166 = v355;
        v167 = v356;
        v168 = v357;
        *v294 = 0;
        *(v294 + 8) = v166;
        *(v294 + 24) = v167;
        *(v294 + 32) = v168;
      }

      if (__src[0] == 1)
      {
        re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(&__src[8]);
      }

      else if (*&__src[8] && (__src[16] & 1) != 0)
      {
        (*(**&__src[8] + 40))();
      }

      if (!v139)
      {
        v99 = v298;
        goto LABEL_211;
      }
    }

    v169 = *(v100 + 176);
    if (v169)
    {
      v170 = v169 >> 1;
    }

    else
    {
      v170 = v169 >> 1;
    }

    if (v170)
    {
      re::getLibraryHash(v318, v298, v300, v100, (v100 + 144));
      if (v318[0])
      {
        v172 = v319;
        *(v295 + 17) = v319;
        v173 = *(v298 + 48);
        *__src = v172;
        v174 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v173 + 376, __src);
        if (v174)
        {
          v176 = v174;
          re::DynamicString::operator=((v295 + 144), (v100 + 168));
          if (*(v295 + 152))
          {
            v177 = *(v295 + 20);
          }

          else
          {
            v177 = (v295 + 153);
          }

          re::mtl::Library::makeFunction(&v317, (v176 + 8), v177);
          if (v317)
          {
            v183 = [v317 functionConstantsDictionary];
            memset(v314, 0, sizeof(v314));
            v315 = 0;
            v316 = 0x7FFFFFFFLL;
            v184 = [v183 keyEnumerator];
            v185 = [v184 nextObject];
            if (v185)
            {
              v186 = v185;
              do
              {
                *__src = [v186 UTF8String];
                *&v355 = [v183 objectForKey_];
                re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::add(v314, __src, &v355);
                if (v355)
                {
                }

                v186 = [v184 nextObject];
              }

              while (v186);
            }

            v187 = v297;
            if (*(v300 + 8))
            {
              v187 = *(v300 + 16);
            }

            v312[0] = 0;
            v311[0] = 0;
            re::parseFunctionConstants(v187, v314, v327, v312, v311, 0, v134, 0, &v355);
            if (v312[0] == 1)
            {
              re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v313);
            }

            if (v355)
            {
              v188 = v358;
              if (v358)
              {
                v189 = 0;
                v190 = v357;
                while (1)
                {
                  v191 = *v190;
                  v190 += 38;
                  if (v191 < 0)
                  {
                    break;
                  }

                  if (v358 == ++v189)
                  {
                    LODWORD(v189) = v358;
                    break;
                  }
                }
              }

              else
              {
                LODWORD(v189) = 0;
              }

              if (v189 != v358)
              {
                v201 = v357;
                do
                {
                  v202 = &v201[38 * v189];
                  v203 = re::Hash<re::DynamicString>::operator()(__src, v202 + 1);
                  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v360, (v202 + 2), v203, __src);
                  if (*&__src[12] == 0x7FFFFFFF)
                  {
                    re::DynamicArray<re::TechniqueFunctionConstant>::add((v295 + 336), &v201[38 * v189 + 10]);
                  }

                  if (v358 <= v189 + 1)
                  {
                    v204 = v189 + 1;
                  }

                  else
                  {
                    v204 = v358;
                  }

                  v201 = v357;
                  while (v204 - 1 != v189)
                  {
                    LODWORD(v189) = v189 + 1;
                    if ((v357[38 * v189] & 0x80000000) != 0)
                    {
                      goto LABEL_383;
                    }
                  }

                  LODWORD(v189) = v204;
LABEL_383:
                  ;
                }

                while (v189 != v188);
              }

              re::parseUsedConstantsMask(__src, v314);
              *(v295 + 11) = *__src;
              re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::operator=(v295 + 192, &__src[16]);
              v205.n128_f64[0] = re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit(&__src[16]);
              if (*(v295 + 685))
              {
                v206 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(&v308, v100 + 560);
                re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(&v308, "EnableRuntimeFunctionConstants", __src);
                if (*__src && (__src[8] & 1) != 0)
                {
                  (*(**__src + 40))();
                }

                v207 = v297;
                if (*(v300 + 8))
                {
                  v207 = *(v300 + 16);
                }

                v306[0] = 0;
                v305[0] = 0;
                re::parseFunctionConstants(v207, v314, &v308, v306, v305, 0, v134, 1, __src);
                if (v306[0] == 1)
                {
                  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v307);
                }

                v208 = __src[0];
                if (__src[0])
                {
                  v209 = DWORD2(v354[0]);
                  if (DWORD2(v354[0]))
                  {
                    v210 = 0;
                    v211 = v353;
                    while (1)
                    {
                      v212 = *v211;
                      v211 += 38;
                      if (v212 < 0)
                      {
                        break;
                      }

                      if (DWORD2(v354[0]) == ++v210)
                      {
                        LODWORD(v210) = DWORD2(v354[0]);
                        break;
                      }
                    }
                  }

                  else
                  {
                    LODWORD(v210) = 0;
                  }

                  if (v210 != DWORD2(v354[0]))
                  {
                    v213 = v353;
                    do
                    {
                      re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(v295 + 584, &v213[38 * v210 + 2], &v213[38 * v210 + 10]);
                      if (DWORD2(v354[0]) <= (v210 + 1))
                      {
                        v214 = v210 + 1;
                      }

                      else
                      {
                        v214 = DWORD2(v354[0]);
                      }

                      v213 = v353;
                      while (v214 - 1 != v210)
                      {
                        LODWORD(v210) = v210 + 1;
                        if ((v353[38 * v210] & 0x80000000) != 0)
                        {
                          goto LABEL_410;
                        }
                      }

                      LODWORD(v210) = v214;
LABEL_410:
                      ;
                    }

                    while (v210 != v209);
                  }
                }

                else
                {
                  re::DynamicString::DynamicString(&v302, &__src[8]);
                  *v294 = 0;
                  *(v294 + 8) = v302;
                  *(v294 + 32) = v304;
                  *(v294 + 16) = v303;
                }

                if (__src[0] == 1)
                {
                  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&__src[8]);
                }

                else if (*&__src[8] && (__src[16] & 1) != 0)
                {
                  (*(**&__src[8] + 40))();
                }

                v205.n128_f64[0] = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v308);
                if (!v208)
                {
                  goto LABEL_356;
                }
              }

              if (!v161)
              {
                goto LABEL_434;
              }

              v215 = v297;
              if (*(v300 + 8))
              {
                v215 = *(v300 + 16);
              }

              v301 = v317;
              re::parseVariationTable(v215, &v301, v100 + 376, __src);
              if (v301)
              {

                v301 = 0;
              }

              if (__src[0])
              {
                re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned int,unsigned int> const&>::HashBrownIterator(&v308, &__src[8]);
                while (v309 != -1)
                {
                  v217 = (*(v308 + 8) + 96 * v309);
                  if (re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::find(v295 + 47, v217) == -1)
                  {
                    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v295 + 47, v217, v217 + 32);
                  }

                  re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v308);
                }

                re::Result<re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::DynamicString>::~Result(__src);
LABEL_434:
                if (v355 == 1)
                {
                  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v355 + 1);
                }

                else if (*(&v355 + 1) && (v356 & 1) != 0)
                {
                  (*(**(&v355 + 1) + 40))(v205);
                }

                re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v314);
                if (v317)
                {
                }

                goto LABEL_441;
              }

              v218 = v297;
              if (*(v300 + 8))
              {
                v218 = *(v300 + 16);
              }

              v219 = &__src[17];
              if (__src[16])
              {
                v219 = v353;
              }

              re::DynamicString::format(&v308, "[%s] - Failed to parse fragment shader permuted function constants: %s.", v216, v218, v219);
              v220 = v308;
              v221 = v309;
              v222 = v310;
              *v294 = 0;
              *(v294 + 8) = v220;
              *(v294 + 24) = v221;
              *(v294 + 32) = v222;
              re::Result<re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::DynamicString>::~Result(__src);
            }

            else
            {
              re::DynamicString::DynamicString(__src, (&v355 + 8));
              *v294 = 0;
              v194 = v353;
              *(v294 + 8) = *__src;
              *(v294 + 32) = v194;
              *(v294 + 16) = *&__src[8];
            }

LABEL_356:
            if (v355 == 1)
            {
              re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v355 + 1);
              v99 = v298;
              v101 = &selRef_isLimitedRenderAsset;
              v102 = &selRef_iosurface;
            }

            else
            {
              v99 = v298;
              v101 = &selRef_isLimitedRenderAsset;
              v102 = &selRef_iosurface;
              if (*(&v355 + 1) && (v356 & 1) != 0)
              {
                (*(**(&v355 + 1) + 40))();
              }
            }

            re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v314);
          }

          else
          {
            v192 = v297;
            if (*(v300 + 8))
            {
              v192 = *(v300 + 16);
            }

            v99 = v298;
            v101 = &selRef_isLimitedRenderAsset;
            v102 = &selRef_iosurface;
            if (*(v295 + 152))
            {
              v193 = *(v295 + 20);
            }

            else
            {
              v193 = v295 + 153;
            }

            re::DynamicString::format(__src, "[%s] - makeFunction failed for pixel shader function %s.", v182, v192, v193);
            v198 = *__src;
            v199 = *&__src[16];
            v200 = v353;
            *v294 = 0;
            *(v294 + 8) = v198;
            *(v294 + 24) = v199;
            *(v294 + 32) = v200;
          }

          if (v317)
          {
          }

LABEL_361:
          v139 = 0;
          goto LABEL_212;
        }

        v180 = v297;
        if (*(v300 + 8))
        {
          v180 = *(v300 + 16);
        }

        v99 = v298;
        v101 = &selRef_isLimitedRenderAsset;
        v102 = &selRef_iosurface;
        if (*(v100 + 176))
        {
          v181 = *(v100 + 184);
        }

        else
        {
          v181 = v100 + 177;
        }

        re::DynamicString::format(__src, "[%s] - makeLibrary failed for pixel shader function %s.", v175, v180, v181);
      }

      else
      {
        v178 = v297;
        if (*(v300 + 8))
        {
          v178 = *(v300 + 16);
        }

        v99 = v298;
        v101 = &selRef_isLimitedRenderAsset;
        v102 = &selRef_iosurface;
        if (*(v100 + 8))
        {
          v179 = *(v100 + 16);
        }

        else
        {
          v179 = v100 + 9;
        }

        re::DynamicString::format(__src, "[%s] - unable to get fragment library hash for technique '%s'", v171, v178, v179);
      }

      v195 = *__src;
      v196 = *&__src[16];
      v197 = v353;
      *v294 = 0;
      *(v294 + 8) = v195;
      *(v294 + 24) = v196;
      *(v294 + 32) = v197;
      goto LABEL_361;
    }

LABEL_441:
    v223 = *(v100 + 304);
    v224 = v223 >> 1;
    if ((v223 & 1) == 0)
    {
      v224 = v223 >> 1;
    }

    v99 = v298;
    v101 = &selRef_isLimitedRenderAsset;
    if (v224)
    {
      if (v223)
      {
        v226 = *(v100 + 312);
        if (!v226)
        {
          v230 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_455:
          if ((*(v295 + 520) & 1) == 0)
          {
            *(v295 + 520) = 1;
          }

          *(v295 + 66) = v230;
          goto LABEL_458;
        }

        LOBYTE(v225) = *v226;
      }

      else
      {
        v225 = v223 >> 8;
        v226 = (v100 + 305);
      }

      if (v225)
      {
        v225 = v225;
        v227 = v226[1];
        if (v227)
        {
          v228 = v226 + 2;
          do
          {
            v225 = 31 * v225 + v227;
            v229 = *v228++;
            v227 = v229;
          }

          while (v229);
        }

        v230 = v225 & 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v230 = 0;
      }

      goto LABEL_455;
    }

LABEL_458:
    v231 = *(v100 + 496);
    if (v231)
    {
      v232 = 0;
      v233 = *(v100 + 480);
      do
      {
        v234 = *v233;
        v233 += 20;
        if (v234 < 0)
        {
          goto LABEL_495;
        }

        ++v232;
      }

      while (v231 != v232);
      LODWORD(v232) = *(v100 + 496);
    }

    else
    {
      LODWORD(v232) = 0;
    }

LABEL_495:
    while (v232 != v231)
    {
      v235 = *(v100 + 480) + 80 * v232;
      v236 = *(v235 + 16);
      if (v236)
      {
        v238 = *(v235 + 24);
        if (!v238)
        {
          v243 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_475;
        }

        LOBYTE(v239) = *v238;
      }

      else
      {
        v237 = v236 >> 8;
        v238 = (v235 + 17);
        LOBYTE(v239) = v237;
      }

      if (v239)
      {
        v239 = v239;
        v240 = v238[1];
        if (v240)
        {
          v241 = v238 + 2;
          do
          {
            v239 = 31 * v239 + v240;
            v242 = *v241++;
            v240 = v242;
          }

          while (v242);
        }

        v243 = v239 & 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v243 = 0;
      }

LABEL_475:
      v244 = v235 + 40;
      *&v355 = v243;
      v245 = *(v244 + 8);
      if ((v245 & 1) == 0)
      {
        v246 = v245 >> 8;
        v247 = (v244 + 9);
        LOBYTE(v244) = v246;
        goto LABEL_479;
      }

      v247 = *(v244 + 16);
      if (v247)
      {
        LOBYTE(v244) = *v247;
LABEL_479:
        if (v244)
        {
          v244 = v244;
          v248 = v247[1];
          if (v248)
          {
            v249 = v247 + 2;
            do
            {
              v244 = 31 * v244 + v248;
              v250 = *v249++;
              v248 = v250;
            }

            while (v250);
          }

          v251 = v244 & 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v251 = 0;
        }

        goto LABEL_486;
      }

      v251 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_486:
      memset(__src, 0, sizeof(__src));
      v252 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v243 ^ (v243 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v243 ^ (v243 >> 30))) >> 27));
      re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(v295 + 536, &v355, v252 ^ (v252 >> 31), __src);
      v253 = *&__src[12];
      if (*&__src[12] == 0x7FFFFFFF)
      {
        v254 = re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(v295 + 536, *&__src[8], *__src);
        *(v254 + 8) = v355;
        *(v254 + 16) = v251;
        ++*(v295 + 144);
      }

      else
      {
        ++*(v295 + 144);
        *(*(v295 + 69) + 24 * v253 + 16) = v251;
      }

      v255 = *(v100 + 496);
      if (v255 <= v232 + 1)
      {
        v255 = v232 + 1;
      }

      while (v255 - 1 != v232)
      {
        LODWORD(v232) = v232 + 1;
        if ((*(*(v100 + 480) + 80 * v232) & 0x80000000) != 0)
        {
          goto LABEL_495;
        }
      }

      LODWORD(v232) = v255;
    }

    v256 = *(v100 + 528);
    v102 = &selRef_iosurface;
    if (v256)
    {
      v257 = *(v100 + 544);
      v258 = v257 + 32 * v256;
      while (1)
      {
        v259 = *(v257 + 8);
        if ((v259 & 1) == 0)
        {
          break;
        }

        v261 = *(v257 + 16);
        if (v261)
        {
          LOBYTE(v260) = *v261;
LABEL_502:
          if (v260)
          {
            v260 = v260;
            v262 = v261[1];
            if (v262)
            {
              v263 = v261 + 2;
              do
              {
                v260 = 31 * v260 + v262;
                v264 = *v263++;
                v262 = v264;
              }

              while (v264);
            }

            v265 = v260 & 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v265 = 0;
          }

          goto LABEL_509;
        }

        v265 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_509:
        *__src = v265;
        re::DynamicArray<re::WeakStringID>::add((v295 + 480), __src);
        v257 += 32;
        if (v257 == v258)
        {
          goto LABEL_510;
        }
      }

      v260 = v259 >> 8;
      v261 = (v257 + 9);
      goto LABEL_502;
    }

LABEL_510:
    v266 = *(v100 + 200);
    v267 = *(v100 + 216);
    v268 = *(v100 + 232);
    *(v295 + 72) = *(v100 + 248);
    *(v295 + 16) = v267;
    *(v295 + 17) = v268;
    *(v295 + 15) = v266;
    if (*(v295 + 292))
    {
      v269 = v291;
      if ((*(v100 + 252) & 1) == 0)
      {
        *(v295 + 292) = 0;
        goto LABEL_516;
      }

LABEL_515:
      *(v295 + 293) = *(v100 + 253);
    }

    else
    {
      v269 = v291;
      if (*(v100 + 252))
      {
        *(v295 + 292) = 1;
        goto LABEL_515;
      }
    }

LABEL_516:
    re::DynamicArray<re::RenderAttachmentState>::operator=(v295 + 296, (v100 + 256));
    if (v269)
    {
      v270 = re::DynamicString::operator==(v269, v295);
      v271 = v270 & HIDWORD(v290);
      v272 = v270 & v290;
      if (!v292 || v270)
      {
        goto LABEL_523;
      }

LABEL_521:
      v273 = re::DynamicString::operator==(v292, v295);
      v271 = v273 & HIDWORD(v289);
      v272 = v273 & v289;
    }

    else
    {
      if (v292)
      {
        goto LABEL_521;
      }

      v271 = 0;
      v272 = 0;
    }

LABEL_523:
    if ((v299 & 1) != 0 && ((*(v295 + 1) & 1) != 0 ? (v274 = *(v295 + 2)) : (v274 = v295 + 9), !strcmp(v274, "Transparent")))
    {
      v272 |= v288;
      if (((HIDWORD(v288) | v271) & 1) == 0)
      {
        goto LABEL_532;
      }

LABEL_529:
      MurmurHash3_x64_128("ARBackwardsCompatibility", 0x18uLL, 0, __src);
      *__src ^= *&__src[8] - 0x61C8864680B583E9 + (*__src << 6) + (*__src >> 2);
      re::DynamicArray<unsigned long>::add((v295 + 440), __src);
      if (v272)
      {
LABEL_533:
        MurmurHash3_x64_128("DynamicLightingBackwardsCompatibility", 0x25uLL, 0, __src);
        *__src ^= *&__src[8] - 0x61C8864680B583E9 + (*__src << 6) + (*__src >> 2);
        re::DynamicArray<unsigned long>::add((v295 + 440), __src);
      }
    }

    else
    {
      if (v271)
      {
        goto LABEL_529;
      }

LABEL_532:
      if (v272)
      {
        goto LABEL_533;
      }
    }

    v139 = 1;
LABEL_212:
    if (v359 == 1)
    {
      re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v360);
    }

    else if (v360 && (v361 & 1) != 0)
    {
      (*(*v360 + 40))();
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v327);
    v141.n128_f64[0] = re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v328);
    if (v331)
    {
    }

    if (v334 & 1) == 0 && v335 && (v336)
    {
      (*(*v335 + 40))(v141);
    }

    if (!v139)
    {
      goto LABEL_567;
    }

    v100 += 664;
    if (v100 == v293)
    {
      goto LABEL_535;
    }
  }

  if (*(v4 + 8))
  {
    v297 = *(v4 + 16);
  }

  if (*(v106 + 48))
  {
    v279 = *(v106 + 56);
  }

  else
  {
    v279 = v106 + 49;
  }

  if (*(v100 + 8))
  {
    v284 = *(v100 + 16);
  }

  else
  {
    v284 = v100 + 9;
  }

  re::DynamicString::format(__src, "[%s] - makeFunction failed for vertex shader function '%s' in technique '%s'.", v114, v297, v279, v284);
  v285 = *__src;
  v286 = *&__src[16];
  v287 = v353;
  *v294 = 0;
  *(v294 + 8) = v285;
  *(v294 + 24) = v286;
  *(v294 + 32) = v287;
  if (v331)
  {
  }

LABEL_563:
  if (v334 & 1) == 0 && v335 && (v336)
  {
    (*(*v335 + 40))();
  }

LABEL_567:
  re::MaterialDefinitionBuilder::~MaterialDefinitionBuilder(v337);
  re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(&v340);
  re::HashTable<re::DynamicString,re::Pair<re::DynamicArray<re::DynamicString>,re::DynamicString,true>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v344);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v348);
  re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::deinit(v351);
}