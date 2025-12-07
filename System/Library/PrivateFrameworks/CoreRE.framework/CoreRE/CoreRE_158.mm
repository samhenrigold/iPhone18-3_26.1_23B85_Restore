re::internal::GeomBaseMesh *re::internal::GeomBaseMesh::GeomBaseMesh(re::internal::GeomBaseMesh *this)
{
  *this = 0;
  *(this + 5) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 1) = 0;
  v2 = (this + 8);
  re::DynamicArray<re::BlendNode>::setCapacity(v2, 1uLL);
  ++*(this + 8);
  re::internal::GeomAttributeManager::GeomAttributeManager((this + 48));
  return this;
}

uint64_t re::internal::buildMeshFromNewFaceVertices(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = 0;
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  if (*(a1 + 640))
  {
    v6 = 0;
    do
    {
      v21 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 64), v6);
      if (*(v21 + 16) == 3)
      {
        re::DynamicArray<re::TransitionCondition *>::add(v22, &v21);
      }

      ++v6;
    }

    while (v6 < *(a1 + 640));
  }

  v7 = *(a2 + 16);
  if (*(a2 + 16))
  {
    v8 = *(a2 + 32);
    v9 = -1;
    do
    {
      v11 = *v8++;
      v10 = v11;
      if (v11 >= v9 || v9 == -1)
      {
        v13 = v10 + 1;
      }

      else
      {
        v13 = v9;
      }

      if (v10 != -1)
      {
        v9 = v13;
      }

      --v7;
    }

    while (v7);
  }

  else
  {
    v9 = -1;
  }

  re::DynamicArray<re::Result<re::Unit,re::DynamicString> (*)(void *,void *)>::DynamicArray(v18, v22);
  v17 = 0;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  re::internal::buildMeshWithNewFaceVertexTopology(a1, v18, v15, v9, a2, 0, a3);
  if (v18[0])
  {
    if (v20)
    {
      (*(*v18[0] + 40))();
    }

    v20 = 0;
    memset(v18, 0, sizeof(v18));
    ++v19;
  }

  if (v22[0] && v24)
  {
    (*(*v22[0] + 40))(v22[0]);
  }

  return 1;
}

uint64_t re::internal::buildMeshFromNewVertices(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v116 = *MEMORY[0x1E69E9840];
  re::internal::GeomBaseMesh::GeomBaseMesh(&v79);
  v7 = a2[2];
  LODWORD(v79) = v7;
  v83 = v7;
  if (v84)
  {
    v8 = v85;
    v9 = 8 * v84;
    do
    {
      v10 = *v8++;
      (*(*v10 + 80))(v10, v83);
      v9 -= 8;
    }

    while (v9);
  }

  v11 = *(a1 + 40);
  re::DynamicArray<re::GeomCell4>::resize(v80, v11);
  v86 = v11;
  if (v87)
  {
    v12 = v88;
    v13 = 8 * v87;
    do
    {
      v14 = *v12++;
      (*(*v14 + 80))(v14, v86);
      v13 -= 8;
    }

    while (v13);
  }

  j = &v94;
  v99 = 0;
  v96 = 0;
  v94 = 0;
  v95 = 0;
  v97 = 0;
  re::DynamicArray<unsigned int>::resize(&v94, *(a1 + 16), &re::kInvalidMeshIndex);
  v16 = a2[2];
  if (v16)
  {
    v17 = 0;
    v18 = a2[4];
    v19 = 1;
    v20 = v96;
    v21 = v99;
    while (1)
    {
      v22 = *(v18 + 4 * v17);
      if (v20 <= v22)
      {
        break;
      }

      v23 = v19 - 1;
      v17 = v19;
      v24 = v16 > v19++;
      *(v21 + 4 * v22) = v23;
      if (!v24)
      {
        goto LABEL_11;
      }
    }

LABEL_91:
    *&v90 = 0;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v111 = 0u;
    v58 = MEMORY[0x1E69E9C10];
    v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v101 = 136315906;
    *(j + 52) = "operator[]";
    *&v101[12] = 1024;
    if (v59)
    {
      v60 = 3;
    }

    else
    {
      v60 = 2;
    }

    *(j + 62) = 789;
    *&v101[18] = 2048;
    *(j + 68) = v22;
    v102 = 2048;
    *(j + 78) = v20;
    _os_log_send_and_compose_impl(v60, &v90, &v111, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v101, 38, v70, v71);
    _os_crash_msg();
    __break(1u);
    goto LABEL_95;
  }

LABEL_11:
  v20 = *(a1 + 40);
  if (!v20)
  {
    goto LABEL_25;
  }

  v25 = 0;
  v26 = *(a1 + 56);
  v22 = v96;
  v3 = v80[2];
  v27 = v81;
  do
  {
    if (v25 == v20)
    {
      goto LABEL_99;
    }

    v28 = 0;
    v90 = *(v26 + 16 * v25);
    v29 = HIDWORD(v90);
    if (HIDWORD(v90) == -1)
    {
      v30 = 3;
    }

    else
    {
      v30 = 4;
    }

    v31 = v99;
    do
    {
      v32 = *(&v90 + v28);
      if (v22 <= v32)
      {
        *v104 = 0;
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v111 = 0u;
        v50 = MEMORY[0x1E69E9C10];
        v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v101 = 136315906;
        *&v101[4] = "operator[]";
        *&v101[12] = 1024;
        if (v53)
        {
          v54 = 3;
        }

        else
        {
          v54 = 2;
        }

        *&v101[14] = 789;
        *&v101[18] = 2048;
        *&v101[20] = v32;
        v102 = 2048;
        *v103 = v22;
        _os_log_send_and_compose_impl(v54, v104, &v111, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v101, 38, v70, v71);
        _os_crash_msg();
        __break(1u);
LABEL_87:
        v89 = 0;
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v111 = 0u;
        v55 = MEMORY[0x1E69E9C10];
        v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v104 = 136315906;
        *&v104[4] = "operator[]";
        v105 = 1024;
        if (v56)
        {
          v57 = 3;
        }

        else
        {
          v57 = 2;
        }

        v106 = 789;
        v107 = 2048;
        v108 = j;
        v109 = 2048;
        v110 = v50;
        _os_log_send_and_compose_impl(v57, &v89, &v111, 80, &dword_1E1C61000, v55, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v104, 38, v70, v71);
        _os_crash_msg();
        __break(1u);
        goto LABEL_91;
      }

      *(&v90 + v28++) = *(v31 + 4 * v32);
    }

    while (v30 != v28);
    if (v25 == v3)
    {
      goto LABEL_103;
    }

    v44 = v29 == -1;
    v33 = HIDWORD(v90);
    v34 = DWORD2(v90);
    if (v44)
    {
      v33 = -1;
    }

    v35 = v27 + 16 * v25;
    *v35 = v90;
    *(v35 + 8) = v34;
    *(v35 + 12) = v33;
    v25 = (v25 + 1);
  }

  while (v25 != v20);
LABEL_25:
  v20 = v7;
  if (v94 && v99)
  {
    (*(*v94 + 40))();
  }

  re::internal::createAndCopyAttributesWithRate(a1 + 16, &v79, 0);
  re::internal::createAndCopyAttributesWithRate(a1 + 16, &v79, 2);
  re::internal::createAndCopyAttributesWithRate(a1 + 16, &v79, 4);
  *&v103[2] = 0;
  memset(v101, 0, sizeof(v101));
  re::DynamicArray<float>::resize(v101, v7);
  if (v7)
  {
    v36 = 0;
    v7 = *&v101[16];
    v37 = *&v103[2];
    while (v7 != v36)
    {
      *(v37 + 4 * v36) = v36;
      if (v20 == ++v36)
      {
        goto LABEL_32;
      }
    }

LABEL_95:
    *&v90 = 0;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v111 = 0u;
    v61 = MEMORY[0x1E69E9C10];
    v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v94) = 136315906;
    *(j + 4) = "operator[]";
    WORD2(v95) = 1024;
    if (v62)
    {
      v63 = 3;
    }

    else
    {
      v63 = 2;
    }

    *(j + 14) = 789;
    WORD1(v96) = 2048;
    *(j + 20) = v7;
    v98 = 2048;
    *(j + 30) = v7;
    _os_log_send_and_compose_impl(v63, &v90, &v111, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v94, 38, v70, v71);
    _os_crash_msg();
    __break(1u);
LABEL_99:
    *&v90 = 0;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v111 = 0u;
    v64 = MEMORY[0x1E69E9C10];
    v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v101 = 136315906;
    *(j + 52) = "operator[]";
    *&v101[12] = 1024;
    if (v65)
    {
      v66 = 3;
    }

    else
    {
      v66 = 2;
    }

    *(j + 62) = 797;
    *&v101[18] = 2048;
    *(j + 68) = v20;
    v102 = 2048;
    *(j + 78) = v20;
    _os_log_send_and_compose_impl(v66, &v90, &v111, 80, &dword_1E1C61000, v64, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v101, 38, v70, v71);
    _os_crash_msg();
    __break(1u);
LABEL_103:
    *v104 = 0;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v111 = 0u;
    v67 = MEMORY[0x1E69E9C10];
    v68 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v101 = 136315906;
    *(j + 52) = "operator[]";
    *&v101[12] = 1024;
    if (v68)
    {
      v69 = 3;
    }

    else
    {
      v69 = 2;
    }

    *(j + 62) = 789;
    *&v101[18] = 2048;
    *(j + 68) = v3;
    v102 = 2048;
    *(j + 78) = v3;
    _os_log_send_and_compose_impl(v69, v104, &v111, 80, &dword_1E1C61000, v67, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v101, 38, v70, v71);
    _os_crash_msg();
    __break(1u);
LABEL_107:
    re::internal::assertLog(4, v46, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
  }

LABEL_32:
  v72 = a3;
  v38 = *(a1 + 200);
  if (v38)
  {
    for (i = 0; i != v38; ++i)
    {
      v40 = re::internal::GeomAttributeContainer::attributeByIndex((a1 + 176), i);
      re::DynamicArray<float>::DynamicArray(v76, a2);
      re::DynamicArray<float>::DynamicArray(v73, v101);
      re::internal::createAndCopyVertexAttribute(v40, v76, v73, &v79);
      if (v73[0])
      {
        if (v75)
        {
          (*(*v73[0] + 40))();
        }

        v75 = 0;
        memset(v73, 0, sizeof(v73));
        ++v74;
      }

      if (v76[0])
      {
        if (v78)
        {
          (*(*v76[0] + 40))();
        }

        v78 = 0;
        memset(v76, 0, sizeof(v76));
        ++v77;
      }
    }
  }

  v41 = *(a1 + 424);
  if (v41)
  {
    v42 = 0;
    v20 = &re::kInvalidMeshIndex;
    do
    {
      v7 = re::internal::GeomAttributeContainer::attributeByIndex((a1 + 400), v42);
      v22 = re::internal::accessFaceVaryingAttributeSubmesh(v7, v43);
      LODWORD(v94) = *v22;
      re::DynamicArray<re::GeomCell4>::DynamicArray(&v95, (v22 + 8));
      if (!v96)
      {
        re::DynamicArray<re::BlendNode>::setCapacity(&v95, 1uLL);
      }

      if (*(v22 + 60))
      {
        v44 = *(v22 + 48) == 0;
      }

      else
      {
        v44 = 1;
      }

      if (v44)
      {
        v3 = *(v22 + 24);
        if (*(a1 + 40) == v3)
        {
          v45 = re::internal::GeomBaseMesh::addFaceVaryingAttribute(&v79, *(v7 + 8), *(v7 + 17), &v94);
          goto LABEL_72;
        }
      }

      else
      {
        v3 = *(v22 + 24);
      }

      v93 = 0;
      v91 = 0;
      v90 = 0uLL;
      v92 = 0;
      re::DynamicArray<unsigned int>::resize(&v90, v3, &re::kInvalidMeshIndex);
      if (v3)
      {
        for (j = 0; v3 != j; ++j)
        {
          LODWORD(v111) = j;
          v47 = *(v22 + 60);
          if (v47 == 2)
          {
            v49 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v22 + 64), &v111);
            if (v49 == -1)
            {
              goto LABEL_66;
            }

            v48 = *(*(v22 + 72) + 8 * v49 + 4);
          }

          else
          {
            if (v47 != 1)
            {
              if (*(v22 + 60))
              {
                goto LABEL_107;
              }

              if (j >= *(v22 + 64))
              {
                v48 = -1;
              }

              else
              {
                v48 = j;
              }

              goto LABEL_67;
            }

            if (*(v22 + 80) <= j)
            {
LABEL_66:
              v48 = -1;
              goto LABEL_67;
            }

            v48 = *(*(v22 + 96) + 4 * j);
          }

LABEL_67:
          v50 = v91;
          if (v91 <= j)
          {
            goto LABEL_87;
          }

          *(v93 + 4 * j) = v48;
        }
      }

      v45 = re::internal::GeomBaseMesh::addFaceVaryingAttribute(&v79, *(v7 + 8), *(v7 + 17), &v94, &v90);
      if (v90 && v93)
      {
        (*(*v90 + 40))();
      }

LABEL_72:
      re::GeomAttribute::copyValues(v7, v45);
      if (v95 && v100)
      {
        (*(*v95 + 40))();
      }

      ++v42;
    }

    while (v42 != v41);
  }

  v51 = re::GeomMesh::operator=(v72, &v79);
  re::GeomMesh::setName(v51, *a1);
  if (*v101 && *&v103[2])
  {
    (*(**v101 + 40))();
  }

  re::internal::GeomAttributeManager::~GeomAttributeManager(&v82);
  if (v80[0] && v81)
  {
    (*(*v80[0] + 40))();
  }

  return 1;
}

re::GeomAttribute *re::internal::GeomBaseMesh::addFaceVaryingAttribute(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v30 = 0xFFFFFFFF00000000;
  v31 = -1;
  v32 = 0;
  v8 = v7 - 1;
  if ((v7 - 1) >= 0xFFFFFFFE)
  {
    v9 = 0;
    LODWORD(v33[0]) = 0;
    v10 = -1;
    v8 = -1;
  }

  else
  {
    v9 = v7;
    v10 = 0;
    v30 = v7;
    v31 = v7 - 1;
    LODWORD(v33[0]) = v7;
  }

  v27 = 0;
  v26[1] = v10;
  v26[2] = v8;
  v26[0] = v9;
  LODWORD(v28[0]) = v9;
  LODWORD(v18) = *a4;
  v11 = *(a4 + 16);
  v19 = *(a4 + 8);
  v20 = v11;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 8) = 0;
  v21 = v7;
  v23 = *(a4 + 40);
  *(a4 + 40) = 0;
  v12 = *(a4 + 32);
  LODWORD(v22) = 1;
  *a4 = 0;
  *(a4 + 32) = v12 + 2;
  re::GeomIndexMap::GeomIndexMap(&v24, &v30);
  re::GeomIndexMap::GeomIndexMap(&v25, v26);
  v13 = re::internal::GeomAttributeManager::addFaceVaryingAttribute(a1 + 48, a2, a3, &v18);
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh(&v18, v14);
  if (v27)
  {
    if (v27 == 2)
    {
      v16.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v28);
    }

    else
    {
      if (v27 != 1)
      {
        re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625, v18, v19, v20, v21, v22, v23);
        _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
        __break(1u);
        goto LABEL_22;
      }

      if (v28[0])
      {
        v15 = v29;
        if (v29)
        {
          (*(*v28[0] + 40))();
        }
      }
    }
  }

  switch(v32)
  {
    case 2:
      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v33);
      return v13;
    case 1:
      if (v33[0])
      {
        if (v33[4])
        {
          (*(*v33[0] + 40))(v16);
        }

        memset(v33, 0, 24);
      }

      return v13;
    case 0:
      LODWORD(v33[0]) = 0;
      return v13;
  }

LABEL_22:
  re::internal::assertLog(4, v15, v16.n128_f64[0], "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
  result = _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
  return result;
}

uint64_t re::internal::buildMeshByConvertingFaceVaryingToVertexHelper(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v31 = 0;
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  v28 = 0;
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  v8 = *(a2 + 16);
  if (v8)
  {
    re::DynamicArray<float *>::setCapacity(v29, v8);
    v9 = *(a2 + 16);
    if (v9)
    {
      re::DynamicArray<float *>::setCapacity(v26, v9);
      v10 = *(a2 + 16);
      if (v10)
      {
        v11 = *(a2 + 32);
        v12 = 8 * v10;
        do
        {
          v22[0] = re::internal::GeomAttributeManager::attributeByName((a1 + 64), *v11);
          if (*(v22[0] + 16) == 3)
          {
            re::DynamicArray<re::TransitionCondition *>::add(v29, v22);
            v25 = re::internal::accessFaceVaryingAttributeSubmesh(v22[0], v13);
            re::DynamicArray<re::RigDataValue *>::add(v26, &v25);
          }

          ++v11;
          v12 -= 8;
        }

        while (v12);
      }
    }
  }

  v24 = 0;
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  v14 = re::internal::calculateCompatibleFaceVertexTopology(a1, v26, v22);
  re::DynamicArray<re::Result<re::Unit,re::DynamicString> (*)(void *,void *)>::DynamicArray(v19, v29);
  v18 = 0;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  re::internal::buildMeshWithNewFaceVertexTopology(a1, v19, v16, v14, v22, a3, a4);
  if (v19[0])
  {
    if (v21)
    {
      (*(*v19[0] + 40))();
    }

    v21 = 0;
    memset(v19, 0, sizeof(v19));
    ++v20;
  }

  if (v22[0] && v24)
  {
    (*(*v22[0] + 40))();
  }

  if (v26[0] && v28)
  {
    (*(*v26[0] + 40))();
  }

  if (v29[0] && v31)
  {
    (*(*v29[0] + 40))(v29[0]);
  }

  return 1;
}

uint64_t re::internal::buildMeshBySplittingFaceVaryingToVertexHelper(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v47 = 0;
  v44[1] = 0;
  v45 = 0;
  v43 = 0;
  v44[0] = 0;
  v46 = 0;
  memset(v41, 0, sizeof(v41));
  v42 = 0;
  v8 = *(a2 + 16);
  if (v8)
  {
    re::DynamicArray<float *>::setCapacity(v44, v8);
    v9 = *(a2 + 16);
    if (v9)
    {
      re::DynamicArray<float *>::setCapacity(v41, v9);
      v10 = *(a2 + 16);
      if (v10)
      {
        v11 = *(a2 + 32);
        v12 = 8 * v10;
        do
        {
          v38[0] = re::internal::GeomAttributeManager::attributeByName((a1 + 8), *v11);
          if (*(v38[0] + 16) == 3)
          {
            re::DynamicArray<re::TransitionCondition *>::add(v44, v38);
            v35[0] = re::internal::accessFaceVaryingAttributeSubmesh(v38[0], v13);
            re::DynamicArray<re::RigDataValue *>::add(v41, v35);
          }

          ++v11;
          v12 -= 8;
        }

        while (v12);
      }
    }
  }

  v14 = a1[53];
  v40 = 0;
  memset(v38, 0, sizeof(v38));
  v39 = 0;
  if (v14)
  {
    re::DynamicArray<float *>::setCapacity(v38, v14);
    v15 = 0;
    do
    {
      v16 = re::internal::GeomAttributeContainer::attributeByIndex((a1 + 50), v15);
      v35[0] = v16;
      if (v45)
      {
        v17 = v47;
        v18 = 8 * v45;
        while (*v17 != v16)
        {
          ++v17;
          v18 -= 8;
          if (!v18)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
LABEL_14:
        re::DynamicArray<re::TransitionCondition *>::add(v38, v35);
      }

      ++v15;
    }

    while (v15 != v14);
  }

  v37 = 0;
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  v19 = re::internal::calculateCompatibleFaceVertexTopology(a1, v41, v35);
  re::DynamicArray<re::Result<re::Unit,re::DynamicString> (*)(void *,void *)>::DynamicArray(v32, v44);
  re::DynamicArray<re::Result<re::Unit,re::DynamicString> (*)(void *,void *)>::DynamicArray(&v27, v38);
  re::internal::buildMeshWithNewFaceVertexTopology(a1, v32, &v27, v19, v35, a3, a4);
  if (v27)
  {
    if (v31)
    {
      (*(*v27 + 40))();
    }

    v31 = 0;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    ++v30;
  }

  if (v32[0])
  {
    if (v34)
    {
      (*(*v32[0] + 40))(v32[0], v34, v20, v21, v22);
    }

    v34 = 0;
    memset(v32, 0, sizeof(v32));
    ++v33;
  }

  if (v35[0] && v37)
  {
    (*(*v35[0] + 40))(v35[0], v37, v20, v21, v22, v23, v24, v25, v27, v28);
  }

  if (v38[0] && v40)
  {
    (*(*v38[0] + 40))();
  }

  if (v41[0] && v43)
  {
    (*(*v41[0] + 40))(v41[0]);
  }

  if (v44[0] && v47)
  {
    (*(*v44[0] + 40))(v44[0]);
  }

  return 1;
}

void *re::internal::GeomVertexConnectivity::buildVertexConnectivity@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = *MEMORY[0x1E69E9840];
  *(a2 + 32) = 0u;
  v6 = (a2 + 32);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  *(a2 + 72) = 0u;
  v7 = a2 + 72;
  *(a2 + 112) = 0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0;
  v8 = a1[6];
  v9 = *a1;
  LODWORD(v67) = 0;
  re::DynamicArray<unsigned int>::resize(a2, v9, &v67);
  if (!v8)
  {
    v11 = 0;
    goto LABEL_13;
  }

  v10 = 0;
  v11 = 0;
  v12 = *(a1 + 3);
  v13 = *(a1 + 5);
  v2 = *(a2 + 16);
  do
  {
    if (v10 == v12)
    {
      goto LABEL_56;
    }

    v14 = 0;
    v58 = *(v13 + 16 * v10);
    v15 = *v6;
    if (HIDWORD(v58) == -1)
    {
      v16 = 3;
    }

    else
    {
      v16 = 4;
    }

    v11 = (v11 + v16);
    do
    {
      v3 = *(&v58 + v14);
      if (v2 <= v3)
      {
        v57 = 0;
        v71 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v23 = MEMORY[0x1E69E9C10];
        v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v59 = 136315906;
        v60 = "operator[]";
        v61 = 1024;
        if (v24)
        {
          v25 = 3;
        }

        else
        {
          v25 = 2;
        }

        v62 = 789;
        v63 = 2048;
        v64 = v3;
        v65 = 2048;
        v66 = v2;
        _os_log_send_and_compose_impl(v25, &v57, &v67, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v59, 38, v56);
        _os_crash_msg();
        __break(1u);
LABEL_40:
        v57 = 0;
        v71 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v26 = MEMORY[0x1E69E9C10];
        v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v59 = 136315906;
        v60 = "operator[]";
        v61 = 1024;
        if (v27)
        {
          v28 = 3;
        }

        else
        {
          v28 = 2;
        }

        v62 = 789;
        v63 = 2048;
        v64 = v11;
        v65 = 2048;
        v66 = v7;
        _os_log_send_and_compose_impl(v28, &v57, &v67, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v59, 38, v56);
        _os_crash_msg();
        __break(1u);
LABEL_44:
        v57 = 0;
        v71 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v29 = MEMORY[0x1E69E9C10];
        v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v59 = 136315906;
        v60 = "operator[]";
        v61 = 1024;
        if (v30)
        {
          v31 = 3;
        }

        else
        {
          v31 = 2;
        }

        v62 = 789;
        v63 = 2048;
        v64 = v11;
        v65 = 2048;
        v66 = v7;
        _os_log_send_and_compose_impl(v31, &v57, &v67, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v59, 38, v56);
        _os_crash_msg();
        __break(1u);
LABEL_48:
        v57 = 0;
        v71 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v32 = MEMORY[0x1E69E9C10];
        v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v59 = 136315906;
        v60 = "operator[]";
        v61 = 1024;
        if (v33)
        {
          v34 = 3;
        }

        else
        {
          v34 = 2;
        }

        v62 = 789;
        v63 = 2048;
        v64 = v7;
        v65 = 2048;
        v66 = v2;
        _os_log_send_and_compose_impl(v34, &v57, &v67, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v59, 38, v56);
        _os_crash_msg();
        __break(1u);
LABEL_52:
        v57 = 0;
        v71 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v35 = MEMORY[0x1E69E9C10];
        v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v59 = 136315906;
        v60 = "operator[]";
        v61 = 1024;
        if (v36)
        {
          v37 = 3;
        }

        else
        {
          v37 = 2;
        }

        v62 = 789;
        v63 = 2048;
        v64 = v11;
        v65 = 2048;
        v66 = v7;
        _os_log_send_and_compose_impl(v37, &v57, &v67, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v59, 38, v56);
        _os_crash_msg();
        __break(1u);
LABEL_56:
        *&v58 = 0;
        v71 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v38 = MEMORY[0x1E69E9C10];
        v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v59 = 136315906;
        v60 = "operator[]";
        v61 = 1024;
        if (v39)
        {
          v40 = 3;
        }

        else
        {
          v40 = 2;
        }

        v62 = 797;
        v63 = 2048;
        v64 = v12;
        v65 = 2048;
        v66 = v12;
        _os_log_send_and_compose_impl(v40, &v58, &v67, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v59, 38, v56, v57);
        _os_crash_msg();
        __break(1u);
        goto LABEL_60;
      }

      ++*(v15 + 4 * v3);
      ++v14;
    }

    while (v16 != v14);
    ++v10;
  }

  while (v10 != v8);
LABEL_13:
  v12 = *a1;
  re::DynamicArray<float>::resize(a2 + 40, v12);
  if (!v12)
  {
    goto LABEL_23;
  }

  v2 = *(a2 + 56);
  if (!v2)
  {
LABEL_72:
    *&v58 = 0;
    v71 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v50 = MEMORY[0x1E69E9C10];
    v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v59 = 136315906;
    v60 = "operator[]";
    v61 = 1024;
    if (v51)
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    v62 = 789;
    v63 = 2048;
    v64 = 0;
    v65 = 2048;
    v66 = 0;
    _os_log_send_and_compose_impl(v52, &v58, &v67, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v59, 38, v56, v57);
    _os_crash_msg();
    __break(1u);
    goto LABEL_76;
  }

  **v7 = 0;
  if (v12 != 1)
  {
    v3 = 0;
    v7 = *(a2 + 16);
    v17 = *(a2 + 32);
    v18 = (*(a2 + 72) + 4);
    while (v7 != v3)
    {
      if (v2 - 1 == v3)
      {
        goto LABEL_64;
      }

      *v18 = *(v17 + 4 * v3) + *(v18 - 1);
      ++v18;
      *(v17 + 4 * v3++) = 0;
      if (v12 - 1 == v3)
      {
        goto LABEL_21;
      }
    }

LABEL_60:
    *&v58 = 0;
    v71 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v41 = MEMORY[0x1E69E9C10];
    v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v59 = 136315906;
    v60 = "operator[]";
    v61 = 1024;
    if (v42)
    {
      v43 = 3;
    }

    else
    {
      v43 = 2;
    }

    v62 = 789;
    v63 = 2048;
    v64 = v3;
    v65 = 2048;
    v66 = v7;
    _os_log_send_and_compose_impl(v43, &v58, &v67, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v59, 38, v56, v57);
    _os_crash_msg();
    __break(1u);
LABEL_64:
    *&v58 = 0;
    v71 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v44 = MEMORY[0x1E69E9C10];
    v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v59 = 136315906;
    v60 = "operator[]";
    v61 = 1024;
    if (v45)
    {
      v46 = 3;
    }

    else
    {
      v46 = 2;
    }

    v62 = 789;
    v63 = 2048;
    v64 = v2;
    v65 = 2048;
    v66 = v2;
    _os_log_send_and_compose_impl(v46, &v58, &v67, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v59, 38, v56, v57);
    _os_crash_msg();
    __break(1u);
LABEL_68:
    *&v58 = 0;
    v71 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v47 = MEMORY[0x1E69E9C10];
    v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v59 = 136315906;
    v60 = "operator[]";
    v61 = 1024;
    if (v48)
    {
      v49 = 3;
    }

    else
    {
      v49 = 2;
    }

    v62 = 797;
    v63 = 2048;
    v64 = v12;
    v65 = 2048;
    v66 = v11;
    _os_log_send_and_compose_impl(v49, &v58, &v67, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v59, 38, v56, v57);
    _os_crash_msg();
    __break(1u);
    goto LABEL_72;
  }

  v7 = *(a2 + 16);
LABEL_21:
  v2 = (v12 - 1);
  if (v7 <= v2)
  {
LABEL_76:
    *&v58 = 0;
    v71 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v53 = MEMORY[0x1E69E9C10];
    v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v59 = 136315906;
    v60 = "operator[]";
    v61 = 1024;
    if (v54)
    {
      v55 = 3;
    }

    else
    {
      v55 = 2;
    }

    v62 = 789;
    v63 = 2048;
    v64 = v2;
    v65 = 2048;
    v66 = v7;
    _os_log_send_and_compose_impl(v55, &v58, &v67, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v59, 38, v56, v57);
    _os_crash_msg();
    __break(1u);
  }

  *(*v6 + 4 * v2) = 0;
LABEL_23:
  *(a2 + 16) = 0;
  ++*(a2 + 24);
  LODWORD(v67) = 0;
  re::DynamicArray<unsigned int>::resize(a2, v12, &v67);
  result = re::DynamicArray<re::internal::GeomVertexConnectivity::FaceVertex>::resize((a2 + 80), v11);
  if (v8)
  {
    v12 = 0;
    while (1)
    {
      v11 = *(a1 + 3);
      if (v11 <= v12)
      {
        goto LABEL_68;
      }

      v20 = 0;
      v58 = *(*(a1 + 5) + 16 * v12);
      if (HIDWORD(v58) == -1)
      {
        v21 = 3;
      }

      else
      {
        v21 = 4;
      }

      do
      {
        v11 = *(&v58 + v20);
        v7 = *(a2 + 56);
        if (v7 <= v11)
        {
          goto LABEL_40;
        }

        v7 = *(a2 + 16);
        if (v7 <= v11)
        {
          goto LABEL_44;
        }

        v7 = (*(*(a2 + 32) + 4 * v11) + *(*(a2 + 72) + 4 * v11));
        v2 = *(a2 + 96);
        if (v2 <= v7)
        {
          goto LABEL_48;
        }

        v22 = *(a2 + 112) + 8 * v7;
        *v22 = v12;
        *(v22 + 4) = v20;
        v7 = *(a2 + 16);
        if (v7 <= v11)
        {
          goto LABEL_52;
        }

        ++*(*v6 + 4 * v11);
        ++v20;
      }

      while (v21 != v20);
      if (++v12 == v8)
      {
        return result;
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::internal::GeomVertexConnectivity::FaceVertex>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }
  }

  else if (result[1] < a2)
  {
    result = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(result, a2);
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

uint64_t re::internal::GeomVertexConnectivity::faceVertex(re::internal::GeomVertexConnectivity *this, unsigned int a2, int a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(this + 7);
  if (v4 <= a2)
  {
    v12 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    v6 = MEMORY[0x1E69E9C10];
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v16 = 797;
    v17 = 2048;
    v18 = v3;
    v19 = 2048;
    v20 = v4;
    _os_log_send_and_compose_impl(v7, &v12, &v21, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v12 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    v8 = MEMORY[0x1E69E9C10];
    v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    if (v9)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v16 = 797;
    v17 = 2048;
    v18 = v3;
    v19 = 2048;
    v20 = v4;
    _os_log_send_and_compose_impl(v10, &v12, &v21, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  v3 = (*(*(this + 9) + 4 * a2) + a3);
  v4 = *(this + 12);
  if (v4 <= v3)
  {
    goto LABEL_8;
  }

  return *(*(this + 14) + 8 * v3);
}

re::internal::GeomAttributeFaceVaryingSubmesh *re::internal::GeomAttributeFaceVaryingSubmesh::GeomAttributeFaceVaryingSubmesh(re::internal::GeomAttributeFaceVaryingSubmesh *this, const re::internal::GeomAttributeFaceVaryingSubmesh *a2)
{
  *this = *a2;
  re::DynamicArray<re::GeomCell4>::DynamicArray(this + 8, a2 + 1);
  if (!*(this + 2))
  {
    re::DynamicArray<re::BlendNode>::setCapacity(this + 1, 1uLL);
  }

  *(this + 6) = *(a2 + 6);
  *(this + 14) = *(a2 + 14);
  v5 = *(a2 + 60);
  *(this + 60) = v5;
  if (v5 == 2)
  {
    re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrown(this + 8, a2 + 64);
  }

  else if (v5 == 1)
  {
    re::DynamicArray<float>::DynamicArray(this + 64, a2 + 8);
  }

  else
  {
    if (v5)
    {
      re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "GeomIndexMap", 433);
      _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
      __break(1u);
      goto LABEL_17;
    }

    *(this + 16) = *(a2 + 16);
  }

  *(this + 16) = *(a2 + 16);
  *(this + 34) = *(a2 + 34);
  v6 = *(a2 + 140);
  *(this + 140) = v6;
  switch(v6)
  {
    case 2:
      re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrown(this + 18, a2 + 144);
      return this;
    case 1:
      re::DynamicArray<float>::DynamicArray(this + 144, a2 + 18);
      return this;
    case 0:
      *(this + 36) = *(a2 + 36);
      return this;
  }

LABEL_17:
  re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "GeomIndexMap", 433);
  result = _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
  return result;
}

double re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::addOrReplace(uint64_t *a1, unsigned int *a2, _DWORD *a3)
{
  v6 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(a1, a2);
  if (v6 == -1)
  {

    *&result = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::internalAdd(a1, a2, a3).u64[0];
  }

  else
  {
    *(a1[1] + 8 * v6 + 4) = *a3;
  }

  return result;
}

uint64_t re::Bitset<64>::toWordIndex(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x40)
  {
    return 0;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %d.", "b < kBitCount", "toWordIndex", 345, a2, 64, v2, v3);
  result = _os_crash("assertion failure: (b < kBitCount) Index out of range. index = %zu, size = %d.", v5, v6);
  __break(1u);
  return result;
}

uint64_t re::triangulatePolygon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::internal::PolygonTriangulator<re::Vector3<float>>::PolygonTriangulator(v5, a1, a2);
  re::internal::PolygonTriangulator<re::Vector3<float>>::triangulateByPerimeter(v5, a3);
  if (v8)
  {
    if (v12)
    {
      (*(*v8 + 40))();
    }

    v12 = 0;
    v9 = 0;
    v10 = 0;
    v8 = 0;
    ++v11;
  }

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

uint64_t re::internal::PolygonTriangulator<re::Vector3<float>>::triangulateByPerimeter(int *a1, uint64_t a2)
{
  re::internal::PolygonTriangulator<re::Vector3<float>>::resetCost(a1);
  re::internal::PolygonTriangulator<re::Vector3<float>>::evalPerimeterCost(a1, 0, (*(*(a1 + 2) + 8) - 1));

  return re::internal::PolygonTriangulator<re::Vector3<float>>::retrieveTriangulation(a1, a2);
}

uint64_t re::internal::PolygonTriangulator<re::Vector3<float>>::PolygonTriangulator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  *a1 = v4;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
  v5 = (a1 + 24);
  *(a1 + 96) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  v10 = -1;
  re::DynamicArray<unsigned int>::resize((a1 + 64), (v4 * v4), &v10);
  v6 = (*a1 * *a1);
  v9 = 0;
  re::DynamicArray<float>::resize(v5, v6, &v9, v7);
  return a1;
}

void *re::internal::PolygonTriangulator<re::Vector3<float>>::resetCost(void *result)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = result[5];
  if (v2)
  {
    v3 = 0;
    do
    {
      if (v2 == v3)
      {
        v10 = 0;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        v4 = MEMORY[0x1E69E9C10];
        v11 = 136315906;
        v12 = "operator[]";
        v13 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v5 = 3;
        }

        else
        {
          v5 = 2;
        }

        v14 = 789;
        v15 = 2048;
        v16 = v2;
        v17 = 2048;
        v18 = v2;
        _os_log_send_and_compose_impl(v5, &v10, &v19, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
        _os_crash_msg();
        __break(1u);
LABEL_11:
        v10 = 0;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        v6 = MEMORY[0x1E69E9C10];
        v7 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v11 = 136315906;
        v12 = "operator[]";
        v13 = 1024;
        if (v7)
        {
          v8 = 3;
        }

        else
        {
          v8 = 2;
        }

        v14 = 789;
        v15 = 2048;
        v16 = v3;
        v17 = 2048;
        v18 = v1;
        _os_log_send_and_compose_impl(v8, &v10, &v19, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
        _os_crash_msg();
        __break(1u);
      }

      *(result[7] + 4 * v3) = -1082130432;
      v1 = result[10];
      if (v1 <= v3)
      {
        goto LABEL_11;
      }

      *(result[12] + 4 * v3++) = -1;
    }

    while (v2 != v3);
  }

  return result;
}

float re::internal::PolygonTriangulator<re::Vector3<float>>::evalPerimeterCost(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = *MEMORY[0x1E69E9840];
  if (a2 + 2 <= a3)
  {
    v11.i32[0] = *re::internal::PolygonTriangulator<re::Vector3<float>>::cost(a1, a2, a3);
    if (v11.f32[0] >= 0.0)
    {
      return *re::internal::PolygonTriangulator<re::Vector3<float>>::cost(a1, a2, a3);
    }

    v8 = (a2 + 1);
    if (v8 < a3)
    {
      v12 = 0;
      v9 = a2;
      v7 = -1;
      v6 = INFINITY;
      while (1)
      {
        v13 = *(a1 + 16);
        v14 = v13[1];
        if (v14 <= a2)
        {
          break;
        }

        v15 = *(a1 + 8);
        v16 = *v13;
        v17 = *(*v13 + 4 * a2);
        v18 = v15[1];
        if (v18 <= v17)
        {
          goto LABEL_27;
        }

        v19 = v8;
        if (v14 <= v8)
        {
          goto LABEL_28;
        }

        v20 = *(v16 + 4 * v8);
        if (v18 <= v20)
        {
          goto LABEL_29;
        }

        if (v14 <= a3)
        {
          goto LABEL_30;
        }

        v21 = *(v16 + 4 * a3);
        if (v18 <= v21)
        {
          goto LABEL_31;
        }

        v22 = *(*v15 + 16 * v20);
        v23 = *(*v15 + 16 * v17);
        v24 = vsubq_f32(v22, v23);
        v25 = vmulq_f32(v24, v24);
        v26 = *(*v15 + 16 * v21);
        v27 = vsubq_f32(v26, v22);
        v28 = vmulq_f32(v27, v27);
        v11 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v25, v25, 8uLL), *&vextq_s8(v28, v28, 8uLL)), vadd_f32(vzip1_s32(*v25.i8, *v28.i8), vzip2_s32(*v25.i8, *v28.i8))));
        v11.f32[0] = vaddv_f32(v11);
        v29 = vsubq_f32(v26, v23);
        v30 = vmulq_f32(v29, v29);
        v31 = sqrtf(v30.f32[2] + vaddv_f32(*v30.f32)) + v11.f32[0];
        if (v31 <= v6)
        {
          v11.f32[0] = re::internal::PolygonTriangulator<re::Vector3<float>>::evalPerimeterCost(a1, a2, v8);
          v32 = v31 + v11.f32[0];
          if (v32 <= v6)
          {
            v11.f32[0] = v32 + re::internal::PolygonTriangulator<re::Vector3<float>>::evalPerimeterCost(a1, v8, a3);
            if (v11.f32[0] < v6 || v12 == 0)
            {
              v7 = v8;
              v6 = v11.f32[0];
            }
          }
        }

        v8 = (v8 + 1);
        --v12;
        if (a3 == v8)
        {
          goto LABEL_3;
        }
      }

      re::internal::assertLog(6, v10, *&v11, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a2, v14);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v37, v43);
      __break(1u);
LABEL_27:
      re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, v18);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v38, v44);
      __break(1u);
LABEL_28:
      re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v19, v14);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v39, v45);
      __break(1u);
LABEL_29:
      re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v20, v18);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v40, v46);
      __break(1u);
LABEL_30:
      re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a3, v14);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v41, v47);
      __break(1u);
LABEL_31:
      re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v21, v18);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v42, v48);
      __break(1u);
LABEL_32:
      v51 = 0;
      memset(v60, 0, sizeof(v60));
      v35 = MEMORY[0x1E69E9C10];
      v52 = 136315906;
      v53 = "operator[]";
      v54 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v36 = 3;
      }

      else
      {
        v36 = 2;
      }

      v55 = 789;
      v56 = 2048;
      v57 = v8;
      v58 = 2048;
      v59 = v9;
      _os_log_send_and_compose_impl(v36, &v51, v60, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v52, 38, v49, v50);
      _os_crash_msg();
      __break(1u);
    }

    v7 = -1;
    v6 = INFINITY;
  }

  else
  {
    v6 = 0.0;
    v7 = -1;
  }

LABEL_3:
  v8 = (a3 + *a1 * a2);
  v9 = *(a1 + 80);
  if (v9 <= v8)
  {
    goto LABEL_32;
  }

  *(*(a1 + 96) + 4 * v8) = v7;
  *re::internal::PolygonTriangulator<re::Vector3<float>>::cost(a1, a2, a3) = v6;
  return v6;
}

uint64_t re::internal::PolygonTriangulator<re::Vector3<float>>::retrieveTriangulation(int *a1, uint64_t a2)
{
  *(a2 + 16) = 0;
  ++*(a2 + 24);
  v4 = *a1;
  v5 = (3 * *a1 - 6);
  if (*(a2 + 8) < v5)
  {
    re::DynamicArray<int>::setCapacity(a2, v5);
    v4 = *a1;
  }

  return re::internal::PolygonTriangulator<re::Vector3<float>>::addTriangles(a1, 0, (v4 - 1), a2);
}

unint64_t re::internal::PolygonTriangulator<re::Vector3<float>>::cost(uint64_t a1, int a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = (a3 + *a1 * a2);
  v4 = *(a1 + 40);
  if (v4 <= v3)
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
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 56) + 4 * v3;
}

uint64_t re::internal::PolygonTriangulator<re::Vector3<float>>::addTriangles(uint64_t a1, uint64_t a2, uint64_t a3, _anonymous_namespace_ *a4)
{
  v5 = a3;
  v6 = a2;
  result = re::internal::PolygonTriangulator<re::Vector3<float>>::vertex(a1, a2, a3);
  if ((result & 0x80000000) == 0)
  {
    while (1)
    {
      v9 = re::internal::PolygonTriangulator<re::Vector3<float>>::vertex(a1, v6, v5);
      v11 = *(a1 + 16);
      v12 = v11[1];
      if (v12 <= v6)
      {
        break;
      }

      v13 = v9;
      re::DynamicArray<int>::add(a4, (*v11 + 4 * v6));
      v15 = *(a1 + 16);
      v16 = v13;
      v17 = v15[1];
      if (v17 <= v13)
      {
        goto LABEL_8;
      }

      re::DynamicArray<int>::add(a4, (*v15 + 4 * v13));
      v19 = *(a1 + 16);
      v20 = v19[1];
      if (v20 <= v5)
      {
        goto LABEL_9;
      }

      re::DynamicArray<int>::add(a4, (*v19 + 4 * v5));
      re::internal::PolygonTriangulator<re::Vector3<float>>::addTriangles(a1, v6, v13, a4);
      result = re::internal::PolygonTriangulator<re::Vector3<float>>::vertex(a1, v13, v5);
      v6 = v13;
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, v12);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_8:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, v17);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
LABEL_9:
    re::internal::assertLog(6, v18, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v5, v20);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v23, v26);
    __break(1u);
  }

  return result;
}

uint64_t re::internal::PolygonTriangulator<re::Vector3<float>>::vertex(uint64_t a1, int a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = (a3 + *a1 * a2);
  v4 = *(a1 + 80);
  if (v4 <= v3)
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
    v15 = v3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 96) + 4 * v3);
}

BOOL re::GeomConnectivityManifold::buildEdgeTable(re::GeomConnectivityManifold *this, re::GeomConnectivityManifold::EdgeTable *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v18 = *(this + 6);
  if (*(this + 6))
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
LABEL_3:
    v7 = *(this + 3);
    if (v7 <= v5)
    {
      v19 = 0;
      memset(v29, 0, sizeof(v29));
      v15 = MEMORY[0x1E69E9C10];
      v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v21 = 136315906;
      v22 = "operator[]";
      v23 = 1024;
      if (v16)
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      v24 = 797;
      v25 = 2048;
      v26 = v5;
      v27 = 2048;
      v28 = v7;
      _os_log_send_and_compose_impl(v17, &v19, v29, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v18);
      _os_crash_msg();
      __break(1u);
    }

    v8 = 0;
    v9 = v4 & 0x1FFFFFFF;
    v20 = *(*(this + 5) + 16 * v5);
    if (HIDWORD(v20) == -1)
    {
      v10 = 3;
    }

    else
    {
      v10 = 4;
    }

    v11 = v4 & 0x1FFFFFFF;
    while (1)
    {
      v12 = v8 + 1;
      v13 = *(&v20 + (v8 + 1) % v10);
      LODWORD(v29[0]) = *(&v20 + v8);
      DWORD1(v29[0]) = v13;
      {
        break;
      }

      v21 = v11 | 0x80000000;
      v11 += 0x20000000;
      v8 = v12;
      if (v10 == v12)
      {
        ++v5;
        v4 = v9 + 1;
        v6 = v5 >= v18;
        if (v5 != v18)
        {
          goto LABEL_3;
        }

        return 1;
      }
    }
  }

  else
  {
    return 1;
  }

  return v6;
}

void re::HashBrown<re::anonymous namespace::VertexPair,re::anonymous namespace::FaceVertex,re::anonymous namespace::HashEdge,re::anonymous namespace::HashEdge,void,false>::addNew(_anonymous_namespace_ *a1, unsigned int *a2, _DWORD *a3)
{
  {
  }
}

void re::GeomConnectivityManifold::buildHalfEdges(re::GeomConnectivityManifold *this, re::GeomConnectivityManifold::EdgeTable *a2)
{
  v68 = *MEMORY[0x1E69E9840];
  *(this + 8) = 0;
  ++*(this + 18);
  v4 = (a2 + 88);
  v5 = *(a2 + 14);
  if (*(this + 7) < v5)
  {
    re::DynamicArray<re::EvaluationCommand>::setCapacity(this + 6, v5);
  }

  *(this + 18) = 0;
  ++*(this + 38);
  *(this + 13) = 0;
  ++*(this + 28);
  re::DynamicArray<float>::resize(this + 128, *this);
  re::DynamicArray<float>::resize(this + 88, 4 * (*(this + 3) & 0x3FFFFFFFLL));
  *(a2 + 20) = 0;
  v52[0] = v4;
  v6 = *(a2 + 13);
  if (v6 >= 0x10)
  {
    v7 = 0;
    v8 = *v4;
    v9 = v6 >> 4;
    while (1)
    {
      v10 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v8), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      if (v10 != 0xFFFFLL)
      {
        break;
      }

      v7 -= 16;
      ++v8;
      if (!--v9)
      {
        return;
      }
    }

    v11 = __clz(__rbit64(v10 ^ 0xFFFFLL));
    v12 = v11 - v7;
    v52[1] = v10 ^ 0xFFFFLL;
    v53 = v11 - v7;
    if (v11 + 1 != v7)
    {
      v13 = 0;
      do
      {
        v14 = *(v52[0] + 8) + 12 * v12;
        v50 = *v14;
        v16 = *(v14 + 8);
        v17 = v16 >> 29;
        v18 = (v16 >> 29) & 3 | (4 * (v16 & 0x1FFFFFFF));
        if (v15 == -1)
        {
          if ((v16 & 0x80000000) == 0)
          {
            v25 = v16 & 0xFFFFFFF | (v17 << 28) & 0x7FFFFFFF | 0x40000000;
          }

          else
          {
            v25 = v16 & 0xFFFFFFF | (v17 << 28) | 0xC0000000;
          }

          HIDWORD(v51) = v25;
          re::DynamicArray<re::GeomConnectivityManifold::HalfEdge>::add((this + 48), &v51 + 1);
          v19 = *(this + 13);
          if (v19 <= v18)
          {
            goto LABEL_39;
          }

          *(*(this + 15) + 4 * v18) = v25;
          v19 = *(this + 18);
          v14 = v50;
          if (v19 <= v50)
          {
            goto LABEL_43;
          }

          *(*(this + 20) + 4 * v50) = v25;
          v19 = *(a2 + 2);
          if (v19 <= v18)
          {
            goto LABEL_47;
          }

          *(*(a2 + 4) + 4 * v18) = v13;
          v19 = *(a2 + 7);
          if (v19 <= v50)
          {
            goto LABEL_51;
          }

          ++*(*(a2 + 9) + 4 * v50);
          ++*(a2 + 20);
        }

        else
        {
          v19 = v4;
          v20 = *(*(a2 + 12) + 12 * v15 + 8);
          v21 = (v20 >> 1) & 0x30000000;
          v22 = v20 & (v16 & 0x80000000 | 0xFFFFFFF);
          v14 = v21 | v22;
          HIDWORD(v51) = v21 | v22;
          re::DynamicArray<re::GeomConnectivityManifold::HalfEdge>::add((this + 48), &v51 + 1);
          v23 = *(this + 13);
          if (v23 <= v18)
          {
            v54 = 0;
            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v63 = 0u;
            v26 = MEMORY[0x1E69E9C10];
            v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v55 = 136315906;
            v56 = "operator[]";
            v57 = 1024;
            if (v27)
            {
              v28 = 3;
            }

            else
            {
              v28 = 2;
            }

            v58 = 789;
            v59 = 2048;
            v60 = (v16 >> 29) & 3 | (4 * (v16 & 0x1FFFFFFF));
            v61 = 2048;
            v62 = v23;
            _os_log_send_and_compose_impl(v28, &v54, &v63, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v55, 38, v50, v51);
            _os_crash_msg();
            __break(1u);
LABEL_31:
            v54 = 0;
            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v63 = 0u;
            v29 = MEMORY[0x1E69E9C10];
            v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v55 = 136315906;
            v56 = "operator[]";
            v57 = 1024;
            if (v30)
            {
              v31 = 3;
            }

            else
            {
              v31 = 2;
            }

            v58 = 789;
            v59 = 2048;
            v60 = v18;
            v61 = 2048;
            v62 = v23;
            _os_log_send_and_compose_impl(v31, &v54, &v63, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v55, 38, v50, v51);
            _os_crash_msg();
            __break(1u);
LABEL_35:
            v54 = 0;
            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v63 = 0u;
            v32 = MEMORY[0x1E69E9C10];
            v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v55 = 136315906;
            v56 = "operator[]";
            v57 = 1024;
            if (v33)
            {
              v34 = 3;
            }

            else
            {
              v34 = 2;
            }

            v58 = 789;
            v59 = 2048;
            v60 = v14;
            v61 = 2048;
            v62 = v18;
            _os_log_send_and_compose_impl(v34, &v54, &v63, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v55, 38, v50, v51);
            _os_crash_msg();
            __break(1u);
LABEL_39:
            v54 = 0;
            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v63 = 0u;
            v35 = MEMORY[0x1E69E9C10];
            v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v55 = 136315906;
            v56 = "operator[]";
            v57 = 1024;
            if (v36)
            {
              v37 = 3;
            }

            else
            {
              v37 = 2;
            }

            v58 = 789;
            v59 = 2048;
            v60 = v18;
            v61 = 2048;
            v62 = v19;
            _os_log_send_and_compose_impl(v37, &v54, &v63, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v55, 38, v50, v51);
            _os_crash_msg();
            __break(1u);
LABEL_43:
            v54 = 0;
            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v63 = 0u;
            v38 = MEMORY[0x1E69E9C10];
            v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v55 = 136315906;
            v56 = "operator[]";
            v57 = 1024;
            if (v39)
            {
              v40 = 3;
            }

            else
            {
              v40 = 2;
            }

            v58 = 789;
            v59 = 2048;
            v60 = v14;
            v61 = 2048;
            v62 = v19;
            _os_log_send_and_compose_impl(v40, &v54, &v63, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v55, 38, v50, v51);
            _os_crash_msg();
            __break(1u);
LABEL_47:
            v54 = 0;
            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v63 = 0u;
            v41 = MEMORY[0x1E69E9C10];
            v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v55 = 136315906;
            v56 = "operator[]";
            v57 = 1024;
            if (v42)
            {
              v43 = 3;
            }

            else
            {
              v43 = 2;
            }

            v58 = 789;
            v59 = 2048;
            v60 = v18;
            v61 = 2048;
            v62 = v19;
            _os_log_send_and_compose_impl(v43, &v54, &v63, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v55, 38, v50, v51);
            _os_crash_msg();
            __break(1u);
LABEL_51:
            v54 = 0;
            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v63 = 0u;
            v44 = MEMORY[0x1E69E9C10];
            v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v55 = 136315906;
            v56 = "operator[]";
            v57 = 1024;
            if (v45)
            {
              v46 = 3;
            }

            else
            {
              v46 = 2;
            }

            v58 = 789;
            v59 = 2048;
            v60 = v14;
            v61 = 2048;
            v62 = v19;
            _os_log_send_and_compose_impl(v46, &v54, &v63, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v55, 38, v50, v51);
            _os_crash_msg();
            __break(1u);
LABEL_55:
            v54 = 0;
            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v63 = 0u;
            v47 = MEMORY[0x1E69E9C10];
            v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v55 = 136315906;
            v56 = "operator[]";
            v57 = 1024;
            if (v48)
            {
              v49 = 3;
            }

            else
            {
              v49 = 2;
            }

            v58 = 789;
            v59 = 2048;
            v60 = v14;
            v61 = 2048;
            v62 = v18;
            _os_log_send_and_compose_impl(v49, &v54, &v63, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v55, 38, v50, v51);
            _os_crash_msg();
            __break(1u);
          }

          *(*(this + 15) + 4 * v18) = v14;
          v18 = (v20 >> 29) & 3 | (4 * (v20 & 0xFFFFFFF));
          v23 = *(a2 + 2);
          if (v23 <= v18)
          {
            goto LABEL_31;
          }

          *(*(a2 + 4) + 4 * v18) = v13;
          v18 = *(a2 + 7);
          v14 = v50;
          if (v18 <= v50)
          {
            goto LABEL_35;
          }

          v24 = *(a2 + 9);
          v4 = v19;
          if (!*(v24 + 4 * v50))
          {
            *(v24 + 4 * v50) = 1;
            v18 = *(this + 18);
            if (v18 <= v50)
            {
              goto LABEL_55;
            }

            *(*(this + 20) + 4 * v50) = v16 & 0xFFFFFFF | (((v16 >> 29) & 3) << 28) | 0x80000000;
          }
        }

        ++v13;
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v52);
        v12 = v53;
      }

      while (v53 != -1);
    }
  }
}

_anonymous_namespace_ *re::DynamicArray<re::GeomConnectivityManifold::HalfEdge>::add(_anonymous_namespace_ *result, _DWORD *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*result)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        result = re::DynamicArray<re::EvaluationCommand>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::EvaluationCommand>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  *(*(v3 + 4) + 4 * v5) = *a2;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

void *re::GeomConnectivityManifold::convertHalfEdgesToIndices(void *result, uint64_t a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = result[8];
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    while ((*(result[10] + 4 * v6) & 0x80000000) != 0)
    {
      v6 = ++v7;
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v7 = -1;
  }

  v8 = result[3];
  v9 = result[18];
  if (v9)
  {
    v10 = 0;
    v11 = result[20];
    v2 = *(a2 + 16);
    v12 = 1;
    v13 = *(a2 + 32);
    do
    {
      v14 = *(v11 + 4 * v10);
      v15 = v7;
      if ((v14 & 0x80000000) != 0)
      {
        v3 = (v14 >> 28) & 3 | (4 * (v14 & 0xFFFFFFF));
        if (v2 <= v3)
        {
          goto LABEL_38;
        }

        v15 = *(v13 + 4 * v3);
      }

      *(v11 + 4 * v10) = v15;
      v10 = v12;
    }

    while (v9 > v12++);
  }

  if (!v8)
  {
    return result;
  }

  v17 = 0;
  v18 = 0;
  do
  {
    if (v18 == v8)
    {
      goto LABEL_34;
    }

    if (*(result[5] + 16 * v18 + 12) == -1)
    {
      v19 = 3;
    }

    else
    {
      v19 = 4;
    }

    v2 = result[13];
    v3 = *(a2 + 16);
    v20 = *(a2 + 32);
    v21 = v17;
    do
    {
      v22 = v21;
      if (v2 <= v21)
      {
        v38 = 0;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v47 = 0u;
        v26 = MEMORY[0x1E69E9C10];
        v39 = 136315906;
        v40 = "operator[]";
        v41 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v27 = 3;
        }

        else
        {
          v27 = 2;
        }

        v42 = 789;
        v43 = 2048;
        v44 = v22;
        v45 = 2048;
        v46 = v2;
        _os_log_send_and_compose_impl(v27, &v38, &v47, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v39, 38, v37);
        _os_crash_msg();
        __break(1u);
LABEL_30:
        v38 = 0;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v47 = 0u;
        v28 = MEMORY[0x1E69E9C10];
        v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v39 = 136315906;
        v40 = "operator[]";
        v41 = 1024;
        if (v29)
        {
          v30 = 3;
        }

        else
        {
          v30 = 2;
        }

        v42 = 797;
        v43 = 2048;
        v44 = v4;
        v45 = 2048;
        v46 = v3;
        _os_log_send_and_compose_impl(v30, &v38, &v47, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v39, 38, v37);
        _os_crash_msg();
        __break(1u);
LABEL_34:
        v38 = 0;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v47 = 0u;
        v31 = MEMORY[0x1E69E9C10];
        v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v39 = 136315906;
        v40 = "operator[]";
        v41 = 1024;
        if (v32)
        {
          v33 = 3;
        }

        else
        {
          v33 = 2;
        }

        v42 = 797;
        v43 = 2048;
        v44 = v8;
        v45 = 2048;
        v46 = v8;
        _os_log_send_and_compose_impl(v33, &v38, &v47, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v39, 38, v37);
        _os_crash_msg();
        __break(1u);
LABEL_38:
        v38 = 0;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v47 = 0u;
        v34 = MEMORY[0x1E69E9C10];
        v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v39 = 136315906;
        v40 = "operator[]";
        v41 = 1024;
        if (v35)
        {
          v36 = 3;
        }

        else
        {
          v36 = 2;
        }

        v42 = 797;
        v43 = 2048;
        v44 = v3;
        v45 = 2048;
        v46 = v2;
        _os_log_send_and_compose_impl(v36, &v38, &v47, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v39, 38, v37);
        _os_crash_msg();
        __break(1u);
      }

      v23 = result[15];
      v24 = *(v23 + 4 * v21);
      v25 = v7;
      if ((v24 & 0x80000000) != 0)
      {
        v4 = (v24 >> 28) & 3 | (4 * (v24 & 0xFFFFFFF));
        if (v3 <= v4)
        {
          goto LABEL_30;
        }

        v25 = *(v20 + 4 * v4);
      }

      *(v23 + 4 * v21++) = v25;
      --v19;
    }

    while (v19);
    ++v18;
    v17 += 4;
  }

  while (v18 != v8);
  return result;
}

void re::GeomConnectivityManifold::buildFullEdges(re::GeomConnectivityManifold *this, const re::GeomConnectivityManifold::EdgeTable *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = *(this + 8);
  *(this + 23) = 0;
  ++*(this + 48);
  *(this + 28) = 0;
  ++*(this + 58);
  re::DynamicArray<float>::resize(this + 168, v6);
  v7 = (*(a2 + 20) + v6) >> 1;
  if (*(this + 27) < v7)
  {
    re::DynamicArray<int>::setCapacity(this + 26, v7);
  }

  HIDWORD(v34) = 0;
  if (v6)
  {
    v8 = 0;
    while (1)
    {
      v9 = v8;
      v10 = *(this + 8);
      if (v10 <= v8)
      {
        v35 = 0;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v44 = 0u;
        v16 = MEMORY[0x1E69E9C10];
        v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v36 = 136315906;
        v37 = "operator[]";
        v38 = 1024;
        if (v17)
        {
          v18 = 3;
        }

        else
        {
          v18 = 2;
        }

        v39 = 789;
        v40 = 2048;
        v41 = v9;
        v42 = 2048;
        v43 = v10;
        _os_log_send_and_compose_impl(v18, &v35, &v44, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v36, 38, v34);
        _os_crash_msg();
        __break(1u);
LABEL_22:
        v35 = 0;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v44 = 0u;
        v19 = MEMORY[0x1E69E9C10];
        v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v36 = 136315906;
        v37 = "operator[]";
        v38 = 1024;
        if (v20)
        {
          v21 = 3;
        }

        else
        {
          v21 = 2;
        }

        v39 = 789;
        v40 = 2048;
        v41 = v2;
        v42 = 2048;
        v43 = v3;
        _os_log_send_and_compose_impl(v21, &v35, &v44, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v36, 38, v34);
        _os_crash_msg();
        __break(1u);
LABEL_26:
        v35 = 0;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v44 = 0u;
        v22 = MEMORY[0x1E69E9C10];
        v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v36 = 136315906;
        v37 = "operator[]";
        v38 = 1024;
        if (v23)
        {
          v24 = 3;
        }

        else
        {
          v24 = 2;
        }

        v39 = 789;
        v40 = 2048;
        v41 = v9;
        v42 = 2048;
        v43 = v10;
        _os_log_send_and_compose_impl(v24, &v35, &v44, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v36, 38, v34);
        _os_crash_msg();
        __break(1u);
LABEL_30:
        v35 = 0;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v44 = 0u;
        v25 = MEMORY[0x1E69E9C10];
        v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v36 = 136315906;
        v37 = "operator[]";
        v38 = 1024;
        if (v26)
        {
          v27 = 3;
        }

        else
        {
          v27 = 2;
        }

        v39 = 789;
        v40 = 2048;
        v41 = v2;
        v42 = 2048;
        v43 = v10;
        _os_log_send_and_compose_impl(v27, &v35, &v44, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v36, 38, v34);
        _os_crash_msg();
        __break(1u);
LABEL_34:
        v35 = 0;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v44 = 0u;
        v28 = MEMORY[0x1E69E9C10];
        v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v36 = 136315906;
        v37 = "operator[]";
        v38 = 1024;
        if (v29)
        {
          v30 = 3;
        }

        else
        {
          v30 = 2;
        }

        v39 = 789;
        v40 = 2048;
        v41 = v9;
        v42 = 2048;
        v43 = v10;
        _os_log_send_and_compose_impl(v30, &v35, &v44, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v36, 38, v34);
        _os_crash_msg();
        __break(1u);
LABEL_38:
        v35 = 0;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v44 = 0u;
        v31 = MEMORY[0x1E69E9C10];
        v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v36 = 136315906;
        v37 = "operator[]";
        v38 = 1024;
        if (v32)
        {
          v33 = 3;
        }

        else
        {
          v33 = 2;
        }

        v39 = 789;
        v40 = 2048;
        v41 = v2;
        v42 = 2048;
        v43 = v10;
        _os_log_send_and_compose_impl(v33, &v35, &v44, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v36, 38, v34);
        _os_crash_msg();
        __break(1u);
      }

      v11 = *(this + 10);
      v12 = *(v11 + 4 * v8);
      v13 = *(this + 56);
      if ((v12 & 0x40000000) != 0)
      {
        break;
      }

      v2 = (v12 >> 28) & 3 | (4 * (v12 & 0xFFFFFFF));
      v3 = *(this + 13);
      if (v3 <= v2)
      {
        goto LABEL_22;
      }

      v2 = *(*(this + 15) + 4 * v2);
      if (v10 <= v2)
      {
        goto LABEL_30;
      }

      if ((v12 & 0xFFFFFFF) < (*(v11 + 4 * v2) & 0xFFFFFFFu))
      {
        v10 = *(this + 23);
        if (v10 <= v8)
        {
          goto LABEL_34;
        }

        v14 = *(this + 25);
        *(v14 + 4 * v9) = v13;
        if (v10 <= v2)
        {
          goto LABEL_38;
        }

        v15 = (v14 + 4 * v2);
        goto LABEL_15;
      }

LABEL_16:
      HIDWORD(v34) = ++v8;
      if (v8 >= v6)
      {
        return;
      }
    }

    v10 = *(this + 23);
    if (v10 <= v8)
    {
      goto LABEL_26;
    }

    v15 = (*(this + 25) + 4 * v8);
LABEL_15:
    *v15 = v13;
    re::DynamicArray<int>::add((this + 208), &v34 + 1);
    v8 = HIDWORD(v34);
    goto LABEL_16;
  }
}

void *re::GeomConnectivityManifold::countVertexValenceInEdgeTable(re::GeomConnectivityManifold *this, re::GeomConnectivityManifold::EdgeTable *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = *this;
  *(a2 + 7) = 0;
  ++*(a2 + 16);
  LODWORD(v52) = 0;
  result = re::DynamicArray<unsigned int>::resize(a2 + 5, v4, &v52);
  v6 = (a2 + 88);
  v39 = a2 + 88;
  v7 = *(a2 + 13);
  if (v7 >= 0x10)
  {
    v8 = 0;
    v9 = *v6;
    v10 = v7 >> 4;
    while (1)
    {
      v11 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v9), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      if (v11 != 0xFFFFLL)
      {
        break;
      }

      v8 -= 16;
      ++v9;
      if (!--v10)
      {
        return result;
      }
    }

    v12 = __clz(__rbit64(v11 ^ 0xFFFFLL));
    v13 = v12 - v8;
    v40 = v11 ^ 0xFFFFLL;
    v41 = v12 - v8;
    if (v12 + 1 != v8)
    {
      v14 = *(a2 + 7);
      v15 = *(a2 + 9);
      do
      {
        v16 = (*(v39 + 8) + 12 * v13);
        v17 = *v16;
        v18 = v16[1];
        {
          v19 = v16[2];
          v18 = v19 & 0x1FFFFFFF;
          v20 = *(this + 3);
          if (v20 <= v18)
          {
            *&v43 = 0;
            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v52 = 0u;
            v24 = MEMORY[0x1E69E9C10];
            v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v44 = 136315906;
            v45 = "operator[]";
            v46 = 1024;
            if (v25)
            {
              v26 = 3;
            }

            else
            {
              v26 = 2;
            }

            v47 = 797;
            v48 = 2048;
            v49 = v18;
            v50 = 2048;
            v51 = v20;
            _os_log_send_and_compose_impl(v26, &v43, &v52, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v44, 38, v39, v40);
            _os_crash_msg();
            __break(1u);
LABEL_28:
            v42 = 0;
            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v52 = 0u;
            v27 = MEMORY[0x1E69E9C10];
            v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v44 = 136315906;
            v45 = "operator[]";
            v46 = 1024;
            if (v28)
            {
              v29 = 3;
            }

            else
            {
              v29 = 2;
            }

            v47 = 789;
            v48 = 2048;
            v49 = v17;
            v50 = 2048;
            v51 = v14;
            _os_log_send_and_compose_impl(v29, &v42, &v52, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v44, 38, v39, v40);
            _os_crash_msg();
            __break(1u);
LABEL_32:
            v42 = 0;
            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v52 = 0u;
            v30 = MEMORY[0x1E69E9C10];
            v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v44 = 136315906;
            v45 = "operator[]";
            v46 = 1024;
            if (v31)
            {
              v32 = 3;
            }

            else
            {
              v32 = 2;
            }

            v47 = 789;
            v48 = 2048;
            v49 = v17;
            v50 = 2048;
            v51 = v14;
            _os_log_send_and_compose_impl(v32, &v42, &v52, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v44, 38, v39, v40);
            _os_crash_msg();
            __break(1u);
LABEL_36:
            *&v43 = 0;
            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v52 = 0u;
            v33 = MEMORY[0x1E69E9C10];
            v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v44 = 136315906;
            v45 = "operator[]";
            v46 = 1024;
            if (v34)
            {
              v35 = 3;
            }

            else
            {
              v35 = 2;
            }

            v47 = 789;
            v48 = 2048;
            v49 = v17;
            v50 = 2048;
            v51 = v14;
            _os_log_send_and_compose_impl(v35, &v43, &v52, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v44, 38, v39, v40);
            _os_crash_msg();
            __break(1u);
LABEL_40:
            *&v43 = 0;
            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v52 = 0u;
            v36 = MEMORY[0x1E69E9C10];
            v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v44 = 136315906;
            v45 = "operator[]";
            v46 = 1024;
            if (v37)
            {
              v38 = 3;
            }

            else
            {
              v38 = 2;
            }

            v47 = 789;
            v48 = 2048;
            v49 = v18;
            v50 = 2048;
            v51 = v14;
            _os_log_send_and_compose_impl(v38, &v43, &v52, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v44, 38, v39, v40);
            _os_crash_msg();
            __break(1u);
          }

          v43 = *(*(this + 5) + 16 * v18);
          if (v14 <= v17)
          {
            goto LABEL_28;
          }

          v21 = (v19 >> 29) & 3;
          if (HIDWORD(v43) == -1)
          {
            v22 = 3;
          }

          else
          {
            v22 = 4;
          }

          ++*(v15 + 4 * v17);
          v23 = v21 + 1;
          if (v23 < v22)
          {
            v22 = 0;
          }

          v17 = *(&v43 + v23 - v22);
          if (v14 <= v17)
          {
            goto LABEL_32;
          }

          ++*(v15 + 4 * v17);
        }

        else if (v18 > v17)
        {
          if (v14 <= v17)
          {
            goto LABEL_36;
          }

          ++*(v15 + 4 * v17);
          if (v14 <= v18)
          {
            goto LABEL_40;
          }

          ++*(v15 + 4 * v18);
        }

        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v39);
        v13 = v41;
      }

      while (v41 != -1);
    }
  }

  return result;
}

BOOL re::GeomConnectivityManifold::makeTopologyManifoldBySplittingVertices(re::GeomConnectivityManifold::EdgeTable const&,re::DynamicBitset<unsigned long long,128ul> &,re::DynamicArray<unsigned int> &)::$_0::operator()(uint64_t *a1, uint64_t **a2, unint64_t a3, uint64_t a4)
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  *(a4 + 16) = 0;
  ++*(a4 + 24);
  v5 = *a2;
  if (*a2 >= a3)
  {
LABEL_4:
    v9 = 0;
  }

  else
  {
    while (1)
    {
      v8 = *v5;
      if ((*v5 & 0x400000000000000) == 0)
      {
        break;
      }

      *a2 = ++v5;
      if (v5 >= a3)
      {
        goto LABEL_4;
      }
    }

    v46 = 0;
    v43[1] = 0;
    v44 = 0;
    v43[0] = 0;
    v45 = 0;
    *v5 = v8 | 0x400000000000000;
    v11 = *a2;
    v12 = v46;
    v13 = v44;
    *(v46 + 8 * v44) = *v11;
    v14 = v13 + 1;
    if (v13 != -1)
    {
      v15 = v45 + 1;
      do
      {
        --v14;
        v16 = v12;
        v17 = *(v12 + 8 * v14);
        v44 = v14;
        v45 = ++v15;
        v18 = (v17 >> 28) & 0xFFFFFFF;
        LODWORD(v56[0]) = (v17 >> 28) & 0xFFFFFFF;
        re::DynamicArray<int>::add(a4, v56);
        v19 = *(v4 + 24);
        if (v19 <= v18)
        {
          v47 = 0;
          memset(v56, 0, sizeof(v56));
          v38 = MEMORY[0x1E69E9C10];
          v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v48 = 136315906;
          v49 = "operator[]";
          v50 = 1024;
          if (v39)
          {
            v40 = 3;
          }

          else
          {
            v40 = 2;
          }

          v51 = 797;
          v52 = 2048;
          v53 = (v17 >> 28) & 0xFFFFFFF;
          v54 = 2048;
          v55 = v19;
          _os_log_send_and_compose_impl(v40, &v47, v56, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v48, 38, a1, a4);
          _os_crash_msg();
          __break(1u);
        }

        v56[0] = *(*(v4 + 40) + 16 * v18);
        v20 = HIBYTE(v17) & 3;
        v21 = v20 + 1;
        if (HIDWORD(v56[0]) == -1)
        {
          v22 = 3;
        }

        else
        {
          v22 = 4;
        }

        if (v21 >= v22)
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        v24 = *(v56 + (v22 + v20 - 1) % v22);
        v25 = a1[1];
        if (v26 != -1)
        {
          v27 = *(*(v25 + 96) + 12 * v26 + 8);
          if (v27 < 0)
          {
            v28 = *a2 + 1;
            if (v28 < a3)
            {
              v29 = v27 & 0x1FFFFFFF;
              while (1)
              {
                v30 = *v28;
                if (((*v28 >> 28) & 0xFFFFFFF) == v29)
                {
                  break;
                }

                if (++v28 >= a3)
                {
                  goto LABEL_27;
                }
              }

              if ((v30 & 0x400000000000000) == 0)
              {
                *v28 = v30 | 0x400000000000000;
                v31 = v44;
                v16 = v46;
                *(v46 + 8 * v44) = *v28;
                v14 = v31 + 1;
                v44 = v31 + 1;
                v15 = ++v45;
                v25 = a1[1];
              }
            }
          }
        }

LABEL_27:
        if (v32 != -1 && (v33 = *(*(v25 + 96) + 12 * v32 + 8), v33 < 0))
        {
          v34 = *a2 + 1;
          v12 = v16;
          if (v34 < a3)
          {
            v35 = v33 & 0x1FFFFFFF;
            while (1)
            {
              v36 = *v34;
              if (((*v34 >> 28) & 0xFFFFFFF) == v35)
              {
                break;
              }

              if (++v34 >= a3)
              {
                goto LABEL_30;
              }
            }

            if ((v36 & 0x400000000000000) == 0)
            {
              *v34 = v36 | 0x400000000000000;
              v12 = v46;
              v37 = v44;
              *(v46 + 8 * v44) = *v34;
              v14 = v37 + 1;
              v44 = v37 + 1;
              v15 = ++v45;
            }
          }
        }

        else
        {
          v12 = v16;
        }

LABEL_30:
        ;
      }

      while (v14);
    }

    v9 = *(a4 + 16);
    if (v43[0] && v12)
    {
      (*(*v43[0] + 40))();
    }
  }

  return v9 != 0;
}

void re::GeomConnectivityManifold::buildAndMakeManifold(unsigned int *a1, _anonymous_namespace_ *a2)
{
  v112 = a2;
  v4 = a1;
  v155 = *MEMORY[0x1E69E9840];
  if (a1[6])
  {
    v5 = 0;
    v6 = *(a1 + 5);
    v7 = (v6 + 8);
    v8 = a1[6];
    do
    {
      if (*(v7 - 2) != -1 && *(v7 - 1) != -1 && *v7 != -1 && v7[1] != -1)
      {
        ++v5;
      }

      v7 += 4;
      --v8;
    }

    while (v8);
    v9 = 0;
    v10 = (v6 + 8);
    v11 = a1[6];
    do
    {
      if (*(v10 - 2) != -1 && *(v10 - 1) != -1 && *v10 != -1 && v10[1] == -1)
      {
        ++v9;
      }

      v10 += 4;
      --v11;
    }

    while (v11);
    v12 = 6 * v9 + 8 * v5;
  }

  else
  {
    v12 = 0;
  }

  re::GeomConnectivityManifold::EdgeTable::EdgeTable(v125, *a1, v12, a1[6]);
  v119 = 0;
  v120 = 0;
  v121 = 1;
  v122 = 0;
  v123 = 0;
  v13 = *v4;
  if ((v13 & 0x3F) != 0)
  {
    v14 = (v13 >> 6) + 1;
  }

  else
  {
    v14 = v13 >> 6;
  }

  v124 = *v4;
  *&v150 = 0;
  re::DynamicOverflowArray<unsigned long long,3ul>::resize(&v119, v14, &v150);
  v15 = v120;
  if (v120)
  {
    v16 = v123;
    if (v121)
    {
      v16 = &v122;
    }

    do
    {
      *v16++ = 0;
      v17 = v123;
      if (v121)
      {
        v17 = &v122;
      }
    }

    while (v16 != &v17[v15]);
  }

  v18 = v4[6];
  v136 = 0;
  v133 = 0;
  v134 = 0;
  v132 = 0;
  v135 = 0;
  v118 = v4;
  v113 = v18;
  v111 = v12;
  if (v18)
  {
    v19 = 0;
    v20 = 0;
    v21 = &v150;
    v2 = 0x20000000;
    do
    {
      v22 = *(v4 + 3);
      if (v22 <= v20)
      {
        goto LABEL_169;
      }

      v23 = 0;
      v114 = v19;
      v116 = v20;
      v24 = v20 & 0x1FFFFFFF;
      v25 = *(v4 + 5) + v19;
      do
      {
        *(&v150 + v23) = *(v25 + v23);
        v23 += 4;
      }

      while (v23 != 16);
      if (HIDWORD(v150) == -1)
      {
        v26 = 3;
      }

      else
      {
        v26 = 4;
      }

      v27 = &v150;
      v3 = 1;
      v28 = v26;
      do
      {
        v29 = &v150 + v3 % v26;
        v30 = *v29;
        *v142 = *v27;
        *&v142[4] = v30;
        if (v31 == -1)
        {
          *v139 = v24 | 0x80000000;
        }

        else
        {
          *(v129 + 12 * v31 + 8) &= ~0x80000000;
          re::DynamicBitset<unsigned long long,64ul>::setBit(&v119, *v27);
          re::DynamicBitset<unsigned long long,64ul>::setBit(&v119, *v29);
          re::DynamicArray<int>::add(&v132, v27);
          re::DynamicArray<int>::add(&v132, &v150 + v3 % v26);
        }

        v24 += 0x20000000;
        ++v27;
        ++v3;
        --v28;
      }

      while (v28);
      v20 = v116 + 1;
      v19 = v114 + 16;
      v4 = v118;
    }

    while (v116 + 1 != v113);
    v21 = v134;
    if (v134)
    {
      v32 = 0;
      v2 = 12;
      do
      {
        v22 = v32 + 1;
        if (v21 <= v32 + 1)
        {
          goto LABEL_177;
        }

        if (v33 != -1)
        {
          *(v129 + 12 * v33 + 8) &= ~0x80000000;
          v21 = v134;
        }

        v32 += 2;
      }

      while (v21 > v32);
      v20 = v21 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (v132 && v136)
    {
      (*(*v132 + 40))();
    }
  }

  else
  {
    v20 = 1;
  }

  re::GeomConnectivityManifold::buildHalfEdges(v4, v125);
  re::GeomConnectivityManifold::convertHalfEdgesToIndices(v4, v125);
  re::GeomConnectivityManifold::buildFullEdges(v4, v125);
  v21 = *v4;
  re::GeomConnectivityManifold::countVertexValenceInEdgeTable(v4, v125);
  v136 = 0;
  v133 = 0;
  v134 = 0;
  v132 = 0;
  v135 = 0;
  if (v21)
  {
    v22 = 0;
    v34 = 1;
    do
    {
      re::GeomConnectivityManifold::fetchVertexOneRing(v4, v22, &v132);
      v2 = v126;
      if (v126 <= v22)
      {
        goto LABEL_173;
      }

      if (v134 != *(v127 + 4 * v22))
      {
        re::DynamicBitset<unsigned long long,64ul>::setBit(&v119, v22);
        v34 = 0;
      }

      ++v22;
    }

    while (v21 != v22);
    if (v132 && v136)
    {
      (*(*v132 + 40))();
    }
  }

  else
  {
    v34 = 1;
  }

  if (v20 & v34)
  {
    if (v119 && (v121 & 1) == 0)
    {
      (*(*v119 + 40))();
    }
  }

  else
  {
    v137[0] = v4;
    v137[1] = v125;
    v136 = 0;
    v133 = 0;
    v134 = 0;
    v132 = 0;
    v135 = 0;
    v35 = v123;
    if (v121)
    {
      v35 = &v122;
    }

    if (v120)
    {
      v36 = 0;
      v37 = 8 * v120;
      do
      {
        v38 = *v35++;
        v39 = vcnt_s8(v38);
        v39.i16[0] = vaddlv_u8(v39);
        v36 += v39.u32[0];
        v37 -= 8;
      }

      while (v37);
      if (12 * v36)
      {
        re::DynamicArray<float *>::setCapacity(&v132, 12 * v36);
      }
    }

    v40 = *(v4 + 3);
    v115 = v40;
    v41 = v40;
    if (v40)
    {
      v21 = 0;
      v22 = v139;
      v20 = 0x100000000000000;
      v117 = v40;
      do
      {
        v2 = *(v4 + 3);
        if (v2 <= v21)
        {
          goto LABEL_181;
        }

        v42 = 0;
        v43 = v4;
        v44 = 0;
        *v139 = *(*(v43 + 5) + 16 * v21);
        if (*&v139[12] == -1)
        {
          v45 = 3;
        }

        else
        {
          v45 = 4;
        }

        do
        {
          v46 = *&v139[4 * v44];
          v2 = v46 >> 6;
          v41 = v120;
          if (v120 <= v46 >> 6)
          {
            goto LABEL_157;
          }

          v47 = v123;
          if (v121)
          {
            v47 = &v122;
          }

          if ((*&v47[v2] >> v46))
          {
            v3 = v3 & 0xF800000000000000 | ((v21 & 0xFFFFFFF) << 28) | v42 & 0x300000000000000 | v46 & 0xFFFFFFF;
            v48 = v134;
            *(v136 + 8 * v134) = v3;
            v134 = v48 + 1;
            ++v135;
          }

          ++v44;
          v42 += 0x100000000000000;
        }

        while (v45 != v44);
        ++v21;
        v41 = v117;
        v4 = v118;
      }

      while (v21 != v117);
    }

    v22 = v136;
    v49 = v134;
    v50 = 126 - 2 * __clz(v134);
    if (v134)
    {
      v51 = v50;
    }

    else
    {
      v51 = 0;
    }

    *&v144[2] = 0;
    memset(v142, 0, sizeof(v142));
    re::DynamicArray<float>::resize(v142, 4 * (v115 & 0x3FFFFFFF));
    if (v41)
    {
      v2 = 0;
      v52 = 0;
      v21 = *(v4 + 3);
      v20 = *&v142[16];
      do
      {
        if (v52 == v21)
        {
          goto LABEL_189;
        }

        v3 = 0;
        v53 = v2 >> 2;
        v54 = 4 * v53;
        *v145 = *(*(v4 + 5) + 16 * v52);
        v55 = *&v144[2] + 16 * v53;
        do
        {
          if (v20 <= v54 + v3)
          {
            goto LABEL_161;
          }

          *(v55 + 4 * v3) = *&v145[4 * v3];
          ++v3;
        }

        while (v3 != 4);
        ++v52;
        v2 += 4;
      }

      while (v52 != v41);
    }

    re::DynamicArray<float>::resize(v112, *v4);
    if (*v4)
    {
      v56 = 0;
      v21 = *(v112 + 2);
      v57 = *(v112 + 4);
      do
      {
        if (v21 == v56)
        {
          goto LABEL_185;
        }

        *(v57 + 4 * v56) = v56;
        ++v56;
      }

      while (v56 < *v4);
    }

    *&v141[2] = 0;
    memset(v139, 0, sizeof(v139));
    if (v49)
    {
      v58 = 0;
      do
      {
        v59 = v58;
        v60 = (v22 + 8 * v58);
        v61 = *v60 & 0xFFFFFFF;
        v131 = *v60 & 0xFFFFFFF;
        if (v49 <= v58 + 1)
        {
          v62 = v58 + 1;
        }

        else
        {
          v62 = v49;
        }

        while ((*(v22 + 8 * v58) & 0xFFFFFFF) == v61)
        {
          if (v62 == ++v58)
          {
            v58 = v62;
            break;
          }
        }

        v130 = v60;
        v20 = &v60[v58 - v59];
        re::GeomConnectivityManifold::makeTopologyManifoldBySplittingVertices(re::GeomConnectivityManifold::EdgeTable const&,re::DynamicBitset<unsigned long long,128ul> &,re::DynamicArray<unsigned int> &)::$_0::operator()(v137, &v130, v20, v139);
LABEL_110:
        while (re::GeomConnectivityManifold::makeTopologyManifoldBySplittingVertices(re::GeomConnectivityManifold::EdgeTable const&,re::DynamicBitset<unsigned long long,128ul> &,re::DynamicArray<unsigned int> &)::$_0::operator()(v137, &v130, v20, v139))
        {
          v63 = *(v112 + 4);
          re::DynamicArray<int>::add(v112, &v131);
          if (*&v139[16])
          {
            v64 = *&v141[2];
            v65 = *&v141[2] + 4 * *&v139[16];
            v21 = *(v118 + 3);
            v2 = *&v142[16];
            while (1)
            {
              v3 = *v64;
              if (v21 <= v3)
              {
                goto LABEL_165;
              }

              if (*(*(v118 + 5) + 16 * v3 + 12) == -1)
              {
                v66 = 3;
              }

              else
              {
                v66 = 4;
              }

              v67 = 4 * v3;
              while (1)
              {
                v3 = v67;
                if (v2 <= v67)
                {
                  v138 = 0;
                  v153 = 0u;
                  v154 = 0u;
                  v151 = 0u;
                  v152 = 0u;
                  v150 = 0u;
                  v75 = MEMORY[0x1E69E9C10];
                  v76 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v145 = 136315906;
                  *&v145[4] = "operator[]";
                  *&v145[12] = 1024;
                  if (v76)
                  {
                    v77 = 3;
                  }

                  else
                  {
                    v77 = 2;
                  }

                  *&v145[14] = 789;
                  v146 = 2048;
                  v147 = v3;
                  v148 = 2048;
                  v149 = v2;
                  _os_log_send_and_compose_impl(v77, &v138, &v150, 80, &dword_1E1C61000, v75, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v145, 38, v112, v113);
                  _os_crash_msg();
                  __break(1u);
LABEL_157:
                  *v145 = 0;
                  v153 = 0u;
                  v154 = 0u;
                  v151 = 0u;
                  v152 = 0u;
                  v150 = 0u;
                  v78 = MEMORY[0x1E69E9C10];
                  v79 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v142 = 136315906;
                  *&v142[4] = "operator[]";
                  *&v142[12] = 1024;
                  if (v79)
                  {
                    v80 = 3;
                  }

                  else
                  {
                    v80 = 2;
                  }

                  *&v142[14] = 866;
                  *&v142[18] = 2048;
                  *&v142[20] = v2;
                  v143 = 2048;
                  *v144 = v41;
                  _os_log_send_and_compose_impl(v80, v145, &v150, 80, &dword_1E1C61000, v78, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v142, 38, v112, v113);
                  _os_crash_msg();
                  __break(1u);
LABEL_161:
                  v138 = 0;
                  v153 = 0u;
                  v154 = 0u;
                  v151 = 0u;
                  v152 = 0u;
                  v150 = 0u;
                  v81 = MEMORY[0x1E69E9C10];
                  v82 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v139 = 136315906;
                  *&v139[4] = "operator[]";
                  if (v82)
                  {
                    v83 = 3;
                  }

                  else
                  {
                    v83 = 2;
                  }

                  *&v139[12] = 1024;
                  *&v139[14] = 789;
                  *&v139[18] = 2048;
                  *&v139[20] = (v2 & 0xFFFFFFFC) + v3;
                  v140 = 2048;
                  *v141 = v20;
                  _os_log_send_and_compose_impl(v83, &v138, &v150, 80, &dword_1E1C61000, v81, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v139, 38, v112, v113);
                  _os_crash_msg();
                  __break(1u);
LABEL_165:
                  v138 = 0;
                  v153 = 0u;
                  v154 = 0u;
                  v151 = 0u;
                  v152 = 0u;
                  v150 = 0u;
                  v84 = MEMORY[0x1E69E9C10];
                  v85 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v145 = 136315906;
                  *&v145[4] = "operator[]";
                  *&v145[12] = 1024;
                  if (v85)
                  {
                    v86 = 3;
                  }

                  else
                  {
                    v86 = 2;
                  }

                  *&v145[14] = 797;
                  v146 = 2048;
                  v147 = v3;
                  v148 = 2048;
                  v149 = v21;
                  _os_log_send_and_compose_impl(v86, &v138, &v150, 80, &dword_1E1C61000, v84, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v145, 38, v112, v113);
                  _os_crash_msg();
                  __break(1u);
LABEL_169:
                  *v139 = 0;
                  v153 = 0u;
                  v154 = 0u;
                  v151 = 0u;
                  v152 = 0u;
                  v150 = 0u;
                  v87 = MEMORY[0x1E69E9C10];
                  v88 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v142 = 136315906;
                  *&v142[4] = "operator[]";
                  *&v142[12] = 1024;
                  if (v88)
                  {
                    v89 = 3;
                  }

                  else
                  {
                    v89 = 2;
                  }

                  *&v142[14] = 797;
                  *&v142[18] = 2048;
                  *&v142[20] = v20;
                  v143 = 2048;
                  *v144 = v22;
                  _os_log_send_and_compose_impl(v89, v139, &v150, 80, &dword_1E1C61000, v87, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v142, 38, v112, v113);
                  _os_crash_msg();
                  __break(1u);
LABEL_173:
                  *v139 = 0;
                  v153 = 0u;
                  v154 = 0u;
                  v151 = 0u;
                  v152 = 0u;
                  v150 = 0u;
                  v90 = MEMORY[0x1E69E9C10];
                  v91 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v142 = 136315906;
                  *&v142[4] = "operator[]";
                  *&v142[12] = 1024;
                  if (v91)
                  {
                    v92 = 3;
                  }

                  else
                  {
                    v92 = 2;
                  }

                  *&v142[14] = 789;
                  *&v142[18] = 2048;
                  *&v142[20] = v22;
                  v143 = 2048;
                  *v144 = v2;
                  _os_log_send_and_compose_impl(v92, v139, &v150, 80, &dword_1E1C61000, v90, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v142, 38, v112, v113);
                  _os_crash_msg();
                  __break(1u);
LABEL_177:
                  *v139 = 0;
                  v153 = 0u;
                  v154 = 0u;
                  v151 = 0u;
                  v152 = 0u;
                  v150 = 0u;
                  v93 = MEMORY[0x1E69E9C10];
                  v94 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v142 = 136315906;
                  *&v142[4] = "operator[]";
                  *&v142[12] = 1024;
                  if (v94)
                  {
                    v95 = 3;
                  }

                  else
                  {
                    v95 = 2;
                  }

                  *&v142[14] = 789;
                  *&v142[18] = 2048;
                  *&v142[20] = v22;
                  v143 = 2048;
                  *v144 = v21;
                  _os_log_send_and_compose_impl(v95, v139, &v150, 80, &dword_1E1C61000, v93, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v142, 38, v112, v113);
                  _os_crash_msg();
                  __break(1u);
LABEL_181:
                  *v139 = 0;
                  v153 = 0u;
                  v154 = 0u;
                  v151 = 0u;
                  v152 = 0u;
                  v150 = 0u;
                  v96 = MEMORY[0x1E69E9C10];
                  v97 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v142 = 136315906;
                  *&v142[4] = "operator[]";
                  *&v142[12] = 1024;
                  if (v97)
                  {
                    v98 = 3;
                  }

                  else
                  {
                    v98 = 2;
                  }

                  *&v142[14] = 797;
                  *&v142[18] = 2048;
                  *&v142[20] = v21;
                  v143 = 2048;
                  *v144 = v2;
                  _os_log_send_and_compose_impl(v98, v139, &v150, 80, &dword_1E1C61000, v96, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v142, 38, v112, v113);
                  _os_crash_msg();
                  __break(1u);
LABEL_185:
                  *v145 = 0;
                  v153 = 0u;
                  v154 = 0u;
                  v151 = 0u;
                  v152 = 0u;
                  v150 = 0u;
                  v99 = MEMORY[0x1E69E9C10];
                  v100 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v139 = 136315906;
                  *&v139[4] = "operator[]";
                  *&v139[12] = 1024;
                  if (v100)
                  {
                    v101 = 3;
                  }

                  else
                  {
                    v101 = 2;
                  }

                  *&v139[14] = 789;
                  *&v139[18] = 2048;
                  *&v139[20] = v21;
                  v140 = 2048;
                  *v141 = v21;
                  _os_log_send_and_compose_impl(v101, v145, &v150, 80, &dword_1E1C61000, v99, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v139, 38, v112, v113);
                  _os_crash_msg();
                  __break(1u);
LABEL_189:
                  *v145 = 0;
                  v153 = 0u;
                  v154 = 0u;
                  v151 = 0u;
                  v152 = 0u;
                  v150 = 0u;
                  v102 = MEMORY[0x1E69E9C10];
                  v103 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v139 = 136315906;
                  *&v139[4] = "operator[]";
                  *&v139[12] = 1024;
                  if (v103)
                  {
                    v104 = 3;
                  }

                  else
                  {
                    v104 = 2;
                  }

                  *&v139[14] = 797;
                  *&v139[18] = 2048;
                  *&v139[20] = v21;
                  v140 = 2048;
                  *v141 = v21;
                  _os_log_send_and_compose_impl(v104, v145, &v150, 80, &dword_1E1C61000, v102, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v139, 38, v112, v113);
                  _os_crash_msg();
                  __break(1u);
LABEL_193:
                  v138 = 0;
                  v153 = 0u;
                  v154 = 0u;
                  v151 = 0u;
                  v152 = 0u;
                  v150 = 0u;
                  v105 = MEMORY[0x1E69E9C10];
                  v106 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v145 = 136315906;
                  *&v145[4] = "operator[]";
                  *&v145[12] = 1024;
                  if (v106)
                  {
                    v107 = 3;
                  }

                  else
                  {
                    v107 = 2;
                  }

                  *&v145[14] = 797;
                  v146 = 2048;
                  v147 = v21;
                  v148 = 2048;
                  v149 = v21;
                  _os_log_send_and_compose_impl(v107, &v138, &v150, 80, &dword_1E1C61000, v105, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v145, 38, v112, v113);
                  _os_crash_msg();
                  __break(1u);
                  goto LABEL_197;
                }

                if (*(*&v144[2] + 4 * v67) == v131)
                {
                  break;
                }

                ++v67;
                if (!--v66)
                {
                  goto LABEL_123;
                }
              }

              *(*&v144[2] + 4 * v67) = v63;
LABEL_123:
              if (++v64 == v65)
              {
                goto LABEL_110;
              }
            }
          }
        }
      }

      while (v58 < v49);
    }

    *v118 = *(v112 + 2);
    if (v41)
    {
      v68 = 0;
      v21 = *(v118 + 3);
      v2 = *&v142[16];
      do
      {
        if (v68 == v21)
        {
          goto LABEL_193;
        }

        v69 = *(v118 + 5) + 16 * v68;
        v70 = *(v69 + 12);
        if (v70 == -1)
        {
          v71 = 3;
        }

        else
        {
          v71 = 4;
        }

        v20 = 4 * (v68 & 0x3FFFFFFF);
        if (v2 <= v20)
        {
LABEL_197:
          v138 = 0;
          v153 = 0u;
          v154 = 0u;
          v151 = 0u;
          v152 = 0u;
          v150 = 0u;
          v108 = MEMORY[0x1E69E9C10];
          v109 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v145 = 136315906;
          *&v145[4] = "operator[]";
          *&v145[12] = 1024;
          if (v109)
          {
            v110 = 3;
          }

          else
          {
            v110 = 2;
          }

          *&v145[14] = 789;
          v146 = 2048;
          v147 = v20;
          v148 = 2048;
          v149 = v2;
          _os_log_send_and_compose_impl(v110, &v138, &v150, 80, &dword_1E1C61000, v108, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v145, 38, v112, v113);
          _os_crash_msg();
          __break(1u);
        }

        v72 = *&v144[2] + 16 * (v68 & 0x3FFFFFFF);
        do
        {
          if (v70 == -1)
          {
            v73 = -1;
          }

          else
          {
            v73 = *(v72 + 12);
          }

          v74 = *(v72 + 8);
          *v69 = *v72;
          *(v69 + 8) = v74;
          *(v69 + 12) = v73;
          --v71;
        }

        while (v71);
        ++v68;
      }

      while (v68 != v41);
    }

    if (*v139 && *&v141[2])
    {
      (*(**v139 + 40))();
    }

    if (*v142 && *&v144[2])
    {
      (*(**v142 + 40))();
    }

    if (v22 && v132)
    {
      (*(*v132 + 40))(v132, v22);
    }

    if (v119 && (v121 & 1) == 0)
    {
      (*(*v119 + 40))();
    }

    re::GeomConnectivityManifold::EdgeTable::~EdgeTable(v125);
    re::GeomConnectivityManifold::EdgeTable::EdgeTable(v125, *v118, v111, v118[6]);
    re::GeomConnectivityManifold::buildEdgeTable(v118, v125);
    re::GeomConnectivityManifold::buildHalfEdges(v118, v125);
    re::GeomConnectivityManifold::convertHalfEdgesToIndices(v118, v125);
    re::GeomConnectivityManifold::buildFullEdges(v118, v125);
  }

  re::GeomConnectivityManifold::EdgeTable::~EdgeTable(v125);
}

uint64_t re::GeomConnectivityManifold::buildIfManifold(re::GeomConnectivityManifold *this, const re::GeomMesh *a2, re::GeomConnectivityManifold *a3)
{
  v107 = *MEMORY[0x1E69E9840];
  re::GeomConnectivityManifold::GeomConnectivityManifold(&v62);
  LODWORD(v62) = *(this + 4);
  re::DynamicArray<re::GeomCell4>::operator=(v63, this + 3);
  if (!v63[1])
  {
    re::DynamicArray<re::BlendNode>::setCapacity(v63, 1uLL);
  }

  if (v64[0])
  {
    v5 = 0;
    v6 = (v65 + 8);
    v7 = v64[0];
    do
    {
      if (*(v6 - 2) != -1 && *(v6 - 1) != -1 && *v6 != -1 && v6[1] != -1)
      {
        ++v5;
      }

      v6 += 4;
      --v7;
    }

    while (v7);
    v8 = 0;
    v9 = (v65 + 8);
    v10 = v64[0];
    do
    {
      if (*(v9 - 2) != -1 && *(v9 - 1) != -1 && *v9 != -1 && v9[1] == -1)
      {
        ++v8;
      }

      v9 += 4;
      --v10;
    }

    while (v10);
    v11 = 6 * v8 + 8 * v5;
  }

  else
  {
    v11 = 0;
  }

  re::GeomConnectivityManifold::EdgeTable::EdgeTable(v90, v62, v11, v64[0]);
  v12 = *v64;
  if (!v64[0])
  {
    goto LABEL_35;
  }

  v13 = 0;
  v14 = 1;
LABEL_22:
  if (v13 == *v64)
  {
    goto LABEL_127;
  }

  v15 = 0;
  *v97 = *(v65 + 16 * v13);
  if (*&v97[12] == -1)
  {
    v16 = 3;
  }

  else
  {
    v16 = 4;
  }

  v17 = 1;
LABEL_27:
  v18 = v17;
  do
  {
    if (v18 >= v16)
    {
      ++v15;
      ++v17;
      if (v15 == v16 - 1)
      {
        v14 = ++v13 < v64[0];
        if (v13 == v64[0])
        {
          goto LABEL_35;
        }

        goto LABEL_22;
      }

      goto LABEL_27;
    }

    v19 = *&v97[4 * v18++];
  }

  while (*&v97[4 * v15] != v19);
  if (v14)
  {
    goto LABEL_65;
  }

LABEL_35:
  if (!re::GeomConnectivityManifold::buildEdgeTable(&v62, v90))
  {
    goto LABEL_65;
  }

  re::GeomConnectivityManifold::buildHalfEdges(&v62, v90);
  re::GeomConnectivityManifold::convertHalfEdgesToIndices(&v62, v90);
  re::GeomConnectivityManifold::buildFullEdges(&v62, v90);
  re::GeomConnectivityManifold::countVertexValenceInEdgeTable(&v62, v90);
  v20 = v62;
  *&v96[2] = 0;
  memset(v94, 0, sizeof(v94));
  if (!v62)
  {
    goto LABEL_54;
  }

  v12 = 0;
  v21 = 0;
  while (2)
  {
    v22 = v75;
    if (v75 <= v12)
    {
      v93 = 0;
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v102 = 0u;
      v51 = MEMORY[0x1E69E9C10];
      v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v97 = 136315906;
      *&v97[4] = "operator[]";
      *&v97[12] = 1024;
      if (v52)
      {
        v53 = 3;
      }

      else
      {
        v53 = 2;
      }

      *&v97[14] = 797;
      v98 = 2048;
      v99 = v12;
      v100 = 2048;
      v101 = v22;
      _os_log_send_and_compose_impl(v53, &v93, &v102, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v97, 38, v60, v61);
      _os_crash_msg();
      __break(1u);
LABEL_123:
      v93 = 0;
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v102 = 0u;
      v54 = MEMORY[0x1E69E9C10];
      v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v97 = 136315906;
      *&v97[4] = "operator[]";
      *&v97[12] = 1024;
      if (v55)
      {
        v56 = 3;
      }

      else
      {
        v56 = 2;
      }

      *&v97[14] = 789;
      v98 = 2048;
      v99 = v12;
      v100 = 2048;
      v101 = v22;
      _os_log_send_and_compose_impl(v56, &v93, &v102, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v97, 38, v60, v61);
      _os_crash_msg();
      __break(1u);
LABEL_127:
      v93 = 0;
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v102 = 0u;
      v57 = MEMORY[0x1E69E9C10];
      v58 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v94 = 136315906;
      *&v94[4] = "operator[]";
      *&v94[12] = 1024;
      if (v58)
      {
        v59 = 3;
      }

      else
      {
        v59 = 2;
      }

      *&v94[14] = 797;
      *&v94[18] = 2048;
      *&v94[20] = v12;
      v95 = 2048;
      *v96 = v12;
      _os_log_send_and_compose_impl(v59, &v93, &v102, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v94, 38, v60, v61);
      _os_crash_msg();
      __break(1u);
      goto LABEL_131;
    }

    if (*(v77 + 4 * v12) == -1)
    {
      break;
    }

    re::GeomConnectivityManifold::fetchVertexOneRing(&v62, v12, v94);
    v22 = v91;
    if (v91 <= v12)
    {
      goto LABEL_123;
    }

    v23 = *(v92 + 4 * v12);
    if (v23)
    {
      v24 = *&v94[16] == v23;
    }

    else
    {
      v24 = 0;
    }

    if (v24)
    {
      v21 = ++v12 >= v20;
      if (v20 != v12)
      {
        continue;
      }

      if (*v94 && *&v96[2])
      {
        (*(**v94 + 40))(*v94);
      }

LABEL_54:
      re::GeomConnectivityManifold::EdgeTable::~EdgeTable(v90);
      *a2 = v62;
      re::DynamicArray<re::GeomCell4>::operator=(a2 + 1, v63);
      if (&v62 == a2)
      {
        goto LABEL_59;
      }

      v26 = *(a2 + 6);
      if (!v26 || !v66 || v26 == v66)
      {
        *(a2 + 6) = v66;
        v66 = v26;
        v27 = *(a2 + 56);
        *(a2 + 56) = v67;
        v67 = v27;
        v28 = *(a2 + 10);
        *(a2 + 10) = v69;
        v69 = v28;
        ++v68;
        ++*(a2 + 18);
LABEL_59:
        re::DynamicArray<re::RigComponentConstraint>::operator=(a2 + 88, v70);
        re::DynamicArray<re::RigComponentConstraint>::operator=(a2 + 128, v74);
        re::DynamicArray<re::RigComponentConstraint>::operator=(a2 + 168, v78);
        re::DynamicArray<re::RigComponentConstraint>::operator=(a2 + 208, v81);
        if (&v62 == a2)
        {
LABEL_90:
          v39 = 1;
          goto LABEL_91;
        }

        v30 = (a2 + 248);
        v31 = *(a2 + 31);
        if (!v31 || !v84 || v31 == v84)
        {
          v32 = v86;
          if (v86)
          {
            v40 = v85;
            if (v85)
            {
              *(a2 + 31) = v84;
              if (v40 >= *(a2 + 32))
              {
                re::DynamicOverflowArray<unsigned long long,3ul>::setCapacity(v30, v40);
                v42 = *(a2 + 32);
                v43 = *(a2 + 66);
                if (v42)
                {
                  if (v43)
                  {
                    v44 = a2 + 272;
                  }

                  else
                  {
                    v44 = *(a2 + 35);
                  }

                  if (v86)
                  {
                    v45 = &v87;
                  }

                  else
                  {
                    v45 = v88;
                  }

                  memmove(v44, v45, 8 * v42);
                  v43 = *(a2 + 66);
                  v42 = *(a2 + 32);
                }

                if (v43)
                {
                  v46 = a2 + 272;
                }

                else
                {
                  v46 = *(a2 + 35);
                }

                v47 = &v46[8 * v42];
                if (v86)
                {
                  v48 = &v87;
                }

                else
                {
                  v48 = v88;
                }

                memcpy(v47, &v48[v42], 8 * (v40 - v42));
              }

              else
              {
                if (*(a2 + 66))
                {
                  v41 = a2 + 272;
                }

                else
                {
                  v41 = *(a2 + 35);
                }

                memmove(v41, &v87, 8 * v40);
              }

              *(a2 + 32) = v40;
              v38 = v86 + 4;
            }

            else
            {
              re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v30);
              *(a2 + 31) = v84;
              v38 = v86 + 2;
            }
          }

          else
          {
            v33 = *(a2 + 66);
            v34 = v85;
            *(a2 + 31) = v84;
            *(a2 + 32) = v34;
            v35 = *(a2 + 35);
            v37 = v87;
            v36 = v88;
            v87 = *(a2 + 34);
            v88 = v35;
            *(a2 + 66) = (v33 & 0xFFFFFFFE) + 2;
            *(a2 + 34) = v37;
            *(a2 + 35) = v36;
            v38 = v32 + (v33 & 1) + 2;
            v84 = v31;
          }

          *(a2 + 66) += 2;
          *(a2 + 37) = v89;
          v85 = 0;
          v86 = v38 + 2;
          v89 = 0;
          goto LABEL_90;
        }

LABEL_132:
        re::internal::assertLog(4, v29, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 527);
        _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
        __break(1u);
      }

LABEL_131:
      re::internal::assertLog(4, v25, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
      _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
      __break(1u);
      goto LABEL_132;
    }

    break;
  }

  if (*v94 && *&v96[2])
  {
    (*(**v94 + 40))(*v94);
  }

  if (v21)
  {
    goto LABEL_54;
  }

LABEL_65:
  *(&v67 + 1) = 0;
  ++v68;
  v71 = 0;
  ++v72;
  v75 = 0;
  ++v76;
  re::GeomConnectivityManifold::EdgeTable::~EdgeTable(v90);
  v39 = 0;
LABEL_91:
  if (v84)
  {
    v49 = v86;
    if ((v86 & 1) == 0)
    {
      (*(*v84 + 40))();
      v49 = v86;
    }

    v84 = 0;
    v85 = 0;
    v86 = (v49 | 1) + 2;
  }

  if (v81[0])
  {
    if (v83)
    {
      (*(*v81[0] + 40))();
    }

    v83 = 0;
    memset(v81, 0, sizeof(v81));
    ++v82;
  }

  if (v78[0])
  {
    if (v80)
    {
      (*(*v78[0] + 40))();
    }

    v80 = 0;
    memset(v78, 0, sizeof(v78));
    ++v79;
  }

  if (v74[0])
  {
    if (v77)
    {
      (*(*v74[0] + 40))();
    }

    v77 = 0;
    v74[1] = 0;
    v75 = 0;
    v74[0] = 0;
    ++v76;
  }

  if (v70[0])
  {
    if (v73)
    {
      (*(*v70[0] + 40))();
    }

    v73 = 0;
    v70[1] = 0;
    v71 = 0;
    v70[0] = 0;
    ++v72;
  }

  if (v66)
  {
    if (v69)
    {
      (*(*v66 + 40))();
    }

    v69 = 0;
    v67 = 0uLL;
    v66 = 0;
    ++v68;
  }

  if (v63[0] && v65)
  {
    (*(*v63[0] + 40))();
  }

  return v39;
}

uint64_t re::GeomConnectivityManifold::buildAndMakeManifold(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v7 = a3;
  v8 = a2;
  v106 = *MEMORY[0x1E69E9840];
  *(a3 + 16) = 0;
  ++*(a3 + 24);
  v85 = 0;
  v81 = 0;
  v82 = 0;
  *a2 = *a1;
  re::DynamicArray<re::GeomCell4>::operator=((a2 + 2), (a1 + 8));
  if (!*(v8 + 2))
  {
    re::DynamicArray<re::BlendNode>::setCapacity(v8 + 1, 1uLL);
  }

  v9 = *v8;
  v83 = 0;
  v84 = 1;
  re::DynamicArray<unsigned int>::resize(&v81, v9, &re::kInvalidMeshIndex);
  v10 = *(v8 + 3);
  if (v10)
  {
    v11 = 0;
    v12 = *(v8 + 5);
    v3 = v83;
LABEL_5:
    if (v11 == v10)
    {
      goto LABEL_81;
    }

    v13 = 0;
    *v90 = *(v12 + 16 * v11);
    if (*&v90[12] == -1)
    {
      v14 = 3;
    }

    else
    {
      v14 = 4;
    }

    v15 = v85;
    while (1)
    {
      v4 = *&v90[4 * v13];
      if (v3 <= v4)
      {
        break;
      }

      *(v15 + 4 * v4) = v4;
      if (v14 == ++v13)
      {
        if (++v11 == v10)
        {
          goto LABEL_13;
        }

        goto LABEL_5;
      }
    }

    *v94 = 0;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v101 = 0u;
    v7 = MEMORY[0x1E69E9C10];
    v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v88 = 136315906;
    *&v88[4] = "operator[]";
    *&v88[12] = 1024;
    if (v45)
    {
      v46 = 3;
    }

    else
    {
      v46 = 2;
    }

    *&v88[14] = 789;
    *&v88[18] = 2048;
    *&v88[20] = v4;
    *&v88[28] = 2048;
    *&v88[30] = v3;
    _os_log_send_and_compose_impl(v46, v94, &v101, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v88, 38, v81, v82);
    _os_crash_msg();
    __break(1u);
    goto LABEL_72;
  }

  if (!v9)
  {
    goto LABEL_61;
  }

LABEL_13:
  v16 = 0;
  v10 = v90;
  v3 = 1;
  v4 = v83;
  v17 = v85;
  while (1)
  {
    if (v83 == v16)
    {
      goto LABEL_89;
    }

    if (*(v85 + 4 * v16) == -1)
    {
      break;
    }

    v16 = (v16 + 1);
    v3 = v16 < v9;
    if (v9 == v16)
    {
      goto LABEL_61;
    }
  }

  v18 = 0;
  v19 = 0;
  do
  {
    if (v4 == v18)
    {
      goto LABEL_93;
    }

    if (*(v17 + 4 * v18) != -1)
    {
      v5 = v19;
      if (v4 <= v19)
      {
        goto LABEL_97;
      }

      *(v17 + 4 * v19++) = v18;
    }

    ++v18;
  }

  while (v9 != v18);
  v9 = v19;
  re::DynamicArray<float>::resize(&v81, v19);
  v93 = 0;
  memset(v90, 0, sizeof(v90));
  v91 = 0;
  v20 = re::DynamicArray<unsigned int>::resize(v90, *v8, &re::kInvalidMeshIndex);
  if (v19)
  {
    v21 = 0;
    v4 = v83;
    v22 = v85;
    v5 = *&v90[16];
    v23 = v93;
    while (1)
    {
      if (v4 == v21)
      {
        goto LABEL_101;
      }

      v6 = *(v22 + 4 * v21);
      if (v5 <= v6)
      {
        break;
      }

      *(v23 + 4 * v6) = v21++;
      if (v19 == v21)
      {
        goto LABEL_30;
      }
    }

LABEL_105:
    *v94 = 0;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v101 = 0u;
    v69 = MEMORY[0x1E69E9C10];
    v70 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v88 = 136315906;
    *&v88[4] = "operator[]";
    *&v88[12] = 1024;
    if (v70)
    {
      v71 = 3;
    }

    else
    {
      v71 = 2;
    }

    *&v88[14] = 789;
    *&v88[18] = 2048;
    *&v88[20] = v6;
    *&v88[28] = 2048;
    *&v88[30] = v5;
    _os_log_send_and_compose_impl(v71, v94, &v101, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v88, 38, v81, v82);
    _os_crash_msg();
    __break(1u);
LABEL_109:
    *&v87 = 0;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v101 = 0u;
    v72 = MEMORY[0x1E69E9C10];
    v73 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v94 = 136315906;
    *(v10 + 52) = "operator[]";
    v95 = 1024;
    if (v73)
    {
      v74 = 3;
    }

    else
    {
      v74 = 2;
    }

    *(v10 + 62) = 797;
    v97 = 2048;
    *(v10 + 68) = v4;
    v99 = 2048;
    *(v10 + 78) = v4;
    _os_log_send_and_compose_impl(v74, &v87, &v101, 80, &dword_1E1C61000, v72, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v94, 38, v81, v82);
    _os_crash_msg();
    __break(1u);
LABEL_113:
    v86 = 0;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v101 = 0u;
    v75 = MEMORY[0x1E69E9C10];
    v76 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v94 = 136315906;
    *(v10 + 52) = "operator[]";
    v95 = 1024;
    if (v76)
    {
      v77 = 3;
    }

    else
    {
      v77 = 2;
    }

    *(v10 + 62) = 789;
    v97 = 2048;
    *(v10 + 68) = v5;
    v99 = 2048;
    *(v10 + 78) = v5;
    _os_log_send_and_compose_impl(v77, &v86, &v101, 80, &dword_1E1C61000, v75, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v94, 38, v81, v82);
    _os_crash_msg();
    __break(1u);
LABEL_117:
    *v94 = 0;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v101 = 0u;
    v78 = MEMORY[0x1E69E9C10];
    v79 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v90 = 136315906;
    *&v90[4] = "operator[]";
    *&v90[12] = 1024;
    if (v79)
    {
      v80 = 3;
    }

    else
    {
      v80 = 2;
    }

    *&v90[14] = 789;
    *&v90[18] = 2048;
    *(v10 + 20) = v3;
    v92 = 2048;
    *(v10 + 30) = v9;
    _os_log_send_and_compose_impl(v80, v94, &v101, 80, &dword_1E1C61000, v78, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v90, 38, v81, v82);
    _os_crash_msg();
    __break(1u);
  }

LABEL_30:
  *v88 = 0;
  v9 = v88;
  v89 = 0;
  memset(&v88[16], 0, 20);
  re::DynamicArray<re::BlendNode>::setCapacity(&v88[8], 1uLL);
  ++*&v88[32];
  re::DynamicArray<re::GeomCell4>::resize(&v88[8], v8[6]);
  *v88 = v19;
  v4 = *(v8 + 3);
  if (v4)
  {
    v24 = 0;
    v25 = *(v8 + 5);
    v26 = *&v90[16];
    v5 = *&v88[24];
    v27 = v89;
    while (1)
    {
      if (v24 == v4)
      {
        goto LABEL_109;
      }

      v28 = 0;
      v87 = *(v25 + 16 * v24);
      v29 = HIDWORD(v87);
      if (HIDWORD(v87) == -1)
      {
        v30 = 3;
      }

      else
      {
        v30 = 4;
      }

      v31 = v93;
      do
      {
        v6 = *&v88[4 * v28 - 16];
        if (v26 <= v6)
        {
          v86 = 0;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v101 = 0u;
          v48 = MEMORY[0x1E69E9C10];
          v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v94 = 136315906;
          *&v94[4] = "operator[]";
          v95 = 1024;
          if (v49)
          {
            v50 = 3;
          }

          else
          {
            v50 = 2;
          }

          v96 = 789;
          v97 = 2048;
          v98 = v6;
          v99 = 2048;
          v100 = v26;
          _os_log_send_and_compose_impl(v50, &v86, &v101, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v94, 38, v81, v82);
          _os_crash_msg();
          __break(1u);
LABEL_81:
          *v90 = 0;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v101 = 0u;
          v51 = MEMORY[0x1E69E9C10];
          v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v88 = 136315906;
          *&v88[4] = "operator[]";
          *&v88[12] = 1024;
          if (v52)
          {
            v53 = 3;
          }

          else
          {
            v53 = 2;
          }

          *&v88[14] = 797;
          *&v88[18] = 2048;
          *&v88[20] = v10;
          *&v88[28] = 2048;
          *&v88[30] = v10;
          _os_log_send_and_compose_impl(v53, v90, &v101, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v88, 38, v81, v82);
          _os_crash_msg();
          __break(1u);
LABEL_85:
          *v90 = 0;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v101 = 0u;
          v54 = MEMORY[0x1E69E9C10];
          v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v88 = 136315906;
          *&v88[4] = "operator[]";
          *&v88[12] = 1024;
          if (v55)
          {
            v56 = 3;
          }

          else
          {
            v56 = 2;
          }

          *&v88[14] = 789;
          *&v88[18] = 2048;
          *&v88[20] = v9;
          *&v88[28] = 2048;
          *&v88[30] = v8;
          _os_log_send_and_compose_impl(v56, v90, &v101, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v88, 38, v81, v82);
          _os_crash_msg();
          __break(1u);
LABEL_89:
          *v90 = 0;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v101 = 0u;
          v57 = MEMORY[0x1E69E9C10];
          v58 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v88 = 136315906;
          *&v88[4] = "operator[]";
          *&v88[12] = 1024;
          if (v58)
          {
            v59 = 3;
          }

          else
          {
            v59 = 2;
          }

          *&v88[14] = 789;
          *&v88[18] = 2048;
          *&v88[20] = v4;
          *&v88[28] = 2048;
          *&v88[30] = v4;
          _os_log_send_and_compose_impl(v59, v90, &v101, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v88, 38, v81, v82);
          _os_crash_msg();
          __break(1u);
LABEL_93:
          *v90 = 0;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v101 = 0u;
          v60 = MEMORY[0x1E69E9C10];
          v61 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v88 = 136315906;
          *&v88[4] = "operator[]";
          *&v88[12] = 1024;
          if (v61)
          {
            v62 = 3;
          }

          else
          {
            v62 = 2;
          }

          *&v88[14] = 789;
          *&v88[18] = 2048;
          *&v88[20] = v4;
          *&v88[28] = 2048;
          *&v88[30] = v4;
          _os_log_send_and_compose_impl(v62, v90, &v101, 80, &dword_1E1C61000, v60, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v88, 38, v81, v82);
          _os_crash_msg();
          __break(1u);
LABEL_97:
          *v90 = 0;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v101 = 0u;
          v63 = MEMORY[0x1E69E9C10];
          v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v88 = 136315906;
          *&v88[4] = "operator[]";
          *&v88[12] = 1024;
          if (v64)
          {
            v65 = 3;
          }

          else
          {
            v65 = 2;
          }

          *&v88[14] = 789;
          *&v88[18] = 2048;
          *&v88[20] = v5;
          *&v88[28] = 2048;
          *&v88[30] = v4;
          _os_log_send_and_compose_impl(v65, v90, &v101, 80, &dword_1E1C61000, v63, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v88, 38, v81, v82);
          _os_crash_msg();
          __break(1u);
LABEL_101:
          *v94 = 0;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v101 = 0u;
          v66 = MEMORY[0x1E69E9C10];
          v67 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v88 = 136315906;
          *&v88[4] = "operator[]";
          *&v88[12] = 1024;
          if (v67)
          {
            v68 = 3;
          }

          else
          {
            v68 = 2;
          }

          *&v88[14] = 789;
          *&v88[18] = 2048;
          *&v88[20] = v4;
          *&v88[28] = 2048;
          *&v88[30] = v4;
          _os_log_send_and_compose_impl(v68, v94, &v101, 80, &dword_1E1C61000, v66, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v88, 38, v81, v82);
          _os_crash_msg();
          __break(1u);
          goto LABEL_105;
        }

        *&v88[4 * v28++ - 16] = *(v31 + 4 * v6);
      }

      while (v30 != v28);
      if (v24 == v5)
      {
        goto LABEL_113;
      }

      v32 = v29 == -1;
      v34 = DWORD2(v87);
      v33 = HIDWORD(v87);
      if (v32)
      {
        v33 = -1;
      }

      v35 = v27 + 16 * v24;
      *v35 = v87;
      *(v35 + 8) = v34;
      *(v35 + 12) = v33;
      if (++v24 == v4)
      {
        v19 = *v88;
        break;
      }
    }
  }

  *v8 = v19;
  re::DynamicArray<re::GeomCell4>::operator=(v8 + 1, &v88[8]);
  if (*&v88[8] && v89)
  {
    (*(**&v88[8] + 40))();
  }

  if (*v90 && v93)
  {
    (*(**v90 + 40))();
  }

  if (v3)
  {
    *&v88[32] = 0;
    memset(v88, 0, 28);
    {
      v36 = *&v88[16];
      if (*&v88[16])
      {
        v37 = *&v88[32];
        v9 = v83;
        v38 = v85;
        do
        {
          v3 = *v37;
          if (v9 <= v3)
          {
            goto LABEL_117;
          }

          *v37++ = *(v38 + 4 * v3);
        }

        while (--v36);
      }

      re::DynamicArray<re::RigComponentConstraint>::operator=(&v81, v88);
    }

    if (*v88 && *&v88[32])
    {
      (*(**v88 + 40))();
    }
  }

  else
  {
LABEL_61:
    {
      re::GeomConnectivityManifold::buildAndMakeManifold(v8, v7);
      goto LABEL_73;
    }
  }

  re::GeomConnectivityManifold::buildAndMakeManifold(v8, v7);
  v39 = *(v7 + 2);
  if (v39)
  {
    v40 = 0;
    v41 = *(v7 + 4);
    v42 = 1;
    v8 = v83;
    v43 = v85;
    while (1)
    {
      v9 = *(v41 + 4 * v40);
      if (v8 <= v9)
      {
        goto LABEL_85;
      }

      *(v41 + 4 * v40) = *(v43 + 4 * v9);
      v40 = v42;
      if (v39 <= v42++)
      {
        goto LABEL_73;
      }
    }
  }

LABEL_72:
  re::DynamicArray<re::RigComponentConstraint>::operator=(v7, &v81);
LABEL_73:
  result = v81;
  if (v81)
  {
    if (v85)
    {
      return (*(*v81 + 40))();
    }
  }

  return result;
}

re::GeomConnectivityManifold::EdgeTable *re::GeomConnectivityManifold::EdgeTable::EdgeTable(re::GeomConnectivityManifold::EdgeTable *this, unsigned int a2, unsigned int a3, int a4)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 6) = 0;
  *(this + 2) = 0;
  *(this + 9) = 0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 88) = 0u;
  v7 = (this + 88);
  v8 = a3;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 16) = 0;
  re::DynamicArray<unsigned int>::resize(this, (4 * a4), &re::kInvalidMeshIndex);
  v10 = 0;
  re::DynamicArray<unsigned int>::resize(this + 5, a2, &v10);
  return this;
}

void *re::HashBrown<re::anonymous namespace::VertexPair,re::anonymous namespace::FaceVertex,re::anonymous namespace::HashEdge,re::anonymous namespace::HashEdge,void,false>::init(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  result[7] = a2;
  v4 = 151 * a3;
  v5 = ((151 * a3) >> 7) + 15;
  v6 = v5 & 0x3FFFFFFFFFFFFF0;
  result[2] = v5 & 0x3FFFFFFFFFFFFF0;
  if ((v5 & 0x3FFFFFFFFFFFFF0) != 0)
  {
    v7 = v5 >> 4;
    result = (*(*a2 + 32))(a2, 13 * v6, 16);
    *v3 = result;
    if (v4 >= 0x80)
    {
      v8 = 0;
      *&v9 = -1;
      *(&v9 + 1) = -1;
      do
      {
        *(*v3 + 16 * v8++) = v9;
      }

      while (v7 != v8);
      result = *v3;
    }

    v3[1] = &result[2 * v7];
    v6 = v3[2];
  }

  else
  {
    *result = 0;
    result[1] = 0;
  }

  v3[5] = 0;
  v3[6] = 0;
  v3[3] = 0;
  v3[4] = v6;
  return result;
}

void re::GeomConnectivityManifold::EdgeTable::~EdgeTable(re::GeomConnectivityManifold::EdgeTable *this)
{
  re::DynamicArray<unsigned long>::deinit(this + 40);
  re::DynamicArray<unsigned long>::deinit(this);
  re::DynamicArray<unsigned long>::deinit(this + 40);
  re::DynamicArray<unsigned long>::deinit(this);
}

double re::HashBrown<re::anonymous namespace::VertexPair,re::anonymous namespace::FaceVertex,re::anonymous namespace::HashEdge,re::anonymous namespace::HashEdge,void,false>::deinit(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    if (*(a1 + 8))
    {
      v10[0] = a1;
      v3 = *(a1 + 16);
      if (v3 >= 0x10)
      {
        v4 = 0;
        v5 = *a1;
        v6 = v3 >> 4;
        while (1)
        {
          v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v5), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          if (v7 != 0xFFFFLL)
          {
            break;
          }

          v4 -= 16;
          ++v5;
          if (!--v6)
          {
            goto LABEL_10;
          }
        }

        v8 = __clz(__rbit64(v7 ^ 0xFFFFLL));
        v10[1] = v7 ^ 0xFFFFLL;
        v11 = v8 - v4;
        if (v8 + 1 != v4)
        {
          do
          {
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v10);
          }

          while (v11 != -1);
        }
      }

LABEL_10:
      *(a1 + 8) = 0;
    }

    if (*a1)
    {
      (*(*v1 + 40))(v1);
      *a1 = 0;
    }

    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::anonymous namespace::NonmanifoldFaceVertex>::ensureCapacity(_anonymous_namespace_ *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  v3 = v2 + 1;
  if (v2 >= v1 && v1 < v3)
  {
    v5 = this;
    if (*this)
    {
      v6 = 2 * v1;
      v7 = v1 == 0;
      v8 = 8;
      if (!v7)
      {
        v8 = v6;
      }

      if (v8 <= v3)
      {
        v9 = v3;
      }

      else
      {
        v9 = v8;
      }

      return re::DynamicArray<float *>::setCapacity(this, v9);
    }

    else
    {
      this = re::DynamicArray<float *>::setCapacity(v5, v3);
      ++*(v5 + 6);
    }
  }

  return this;
}

unint64_t re::HashBrown<re::anonymous namespace::VertexPair,re::anonymous namespace::FaceVertex,re::anonymous namespace::HashEdge,re::anonymous namespace::HashEdge,void,false>::find(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a1[7])
  {
    return -1;
  }

  v4 = a1[2];
  if (v4 < 0x10 || !a1[3])
  {
    return -1;
  }

  v5 = a3;
  v6 = a2;
  v7 = v4 >> 4;
  v8 = 0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
  v11 = v10 ^ (v10 >> 31);
  if (v9 == v11)
  {
    v11 = 0;
  }

  v12 = v11 ^ v9;
  v13 = v12 % v7;
  v14 = *a1;
  v15 = vdupq_n_s8(v12 & 0x7F);
  v16 = xmmword_1E304FAD0;
  v17.i64[0] = -1;
  for (v17.i64[1] = -1; ; v17.i64[1] = -1)
  {
    v18 = *(v14 + 16 * v13);
    v19 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v15, v18), v16)))), 0x3830282018100800);
    v20 = __clz(__rbit64(v19));
    if (v20 <= 0x3F)
    {
      break;
    }

LABEL_15:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v18, v17), v16)))), 0x3830282018100800))
    {
      return -1;
    }

    v28 = v16;
    v29 = v15;
    if (++v13 == v7)
    {
      v13 = 0;
    }

    result = -1;
    v16 = v28;
    v15 = v29;
    v17.i64[0] = -1;
    if (v13 == v27)
    {
      return result;
    }
  }

  v21 = 16 * v13;
  while (1)
  {
    result = v20 + v21;
    v23 = (a1[1] + 12 * (v20 + v21));
    v25 = *v23;
    v24 = v23[1];
    if (v25 == v6 && v24 == v5)
    {
      return result;
    }

    if (v20 <= 0x3E)
    {
      v20 = __clz(__rbit64((-2 << v20) & v19));
      if (v20 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_15;
  }
}

unint64_t re::HashBrown<re::anonymous namespace::VertexPair,re::anonymous namespace::FaceVertex,re::anonymous namespace::HashEdge,re::anonymous namespace::HashEdge,void,false>::computeKeyHash(unsigned int a1, unsigned int a2)
{
  v2 = 0xBF58476D1CE4E5B9 * (a1 ^ (a1 >> 30));
  v3 = (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v5 = v4 ^ (v4 >> 31);
  if (v3 == v5)
  {
    v5 = 0;
  }

  return v5 ^ v3;
}

uint64_t *re::DynamicArray<re::GeomCell4>::operator=(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6 || v4 == v5)
    {
      v8 = result[1];
      v9 = a2[1];
      *result = v5;
      result[1] = v9;
      *a2 = v4;
      a2[1] = v8;
      v10 = result[2];
      result[2] = a2[2];
      a2[2] = v10;
      v11 = result[4];
      result[4] = a2[4];
      a2[4] = v11;
      ++*(a2 + 6);
      ++*(result + 6);
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503, v2, v3);
      result = _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
      __break(1u);
    }
  }

  return result;
}

uint64_t re::anonymous namespace::splitDuplicatedFaceVertices(int *a1, _anonymous_namespace_ *a2)
{
  v3 = a2;
  v5 = v50;
  v60 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  re::DynamicArray<float>::resize(a2, v6);
  if (v6)
  {
    v7 = 0;
    v8 = *(v3 + 2);
    v9 = *(v3 + 4);
    while (v8 != v7)
    {
      *(v9 + 4 * v7) = v7;
      if (v6 == ++v7)
      {
        goto LABEL_5;
      }
    }

LABEL_38:
    v41 = 0;
    *(v5 + 96) = 0u;
    *(v5 + 112) = 0u;
    *(v5 + 64) = 0u;
    *(v5 + 80) = 0u;
    *(v5 + 48) = 0u;
    v28 = MEMORY[0x1E69E9C10];
    v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v47 = 136315906;
    *v48 = "operator[]";
    *&v48[8] = 1024;
    if (v29)
    {
      v30 = 3;
    }

    else
    {
      v30 = 2;
    }

    *&v48[10] = 789;
    *&v48[14] = 2048;
    *&v48[16] = v8;
    *&v48[24] = 2048;
    *&v48[26] = v8;
    _os_log_send_and_compose_impl(v30, &v41, &v55, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38);
    _os_crash_msg();
    __break(1u);
LABEL_42:
    *v50 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v31 = MEMORY[0x1E69E9C10];
    v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v47 = 136315906;
    *v48 = "operator[]";
    *&v48[8] = 1024;
    if (v32)
    {
      v33 = 3;
    }

    else
    {
      v33 = 2;
    }

    *&v48[10] = 797;
    *&v48[14] = 2048;
    *&v48[16] = v5;
    *&v48[24] = 2048;
    *&v48[26] = v8;
    _os_log_send_and_compose_impl(v33, v50, &v55, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v41, v42);
    _os_crash_msg();
    __break(1u);
LABEL_46:
    v46 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v34 = MEMORY[0x1E69E9C10];
    v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v50 = 136315906;
    *&v50[4] = "operator[]";
    *&v50[12] = 1024;
    if (v35)
    {
      v36 = 3;
    }

    else
    {
      v36 = 2;
    }

    *&v50[14] = 789;
    v51 = 2048;
    v52 = v2;
    v53 = 2048;
    v54 = v3;
    _os_log_send_and_compose_impl(v36, &v46, &v55, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v50, 38, v41, v42);
    _os_crash_msg();
    __break(1u);
LABEL_50:
    v46 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v37 = MEMORY[0x1E69E9C10];
    v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v50 = 136315906;
    *&v50[4] = "operator[]";
    *&v50[12] = 1024;
    if (v38)
    {
      v39 = 3;
    }

    else
    {
      v39 = 2;
    }

    *&v50[14] = 789;
    v51 = 2048;
    v52 = v8;
    v53 = 2048;
    v54 = v8;
    _os_log_send_and_compose_impl(v39, &v46, &v55, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v50, 38, v41, v42);
    _os_crash_msg();
    __break(1u);
  }

LABEL_5:
  v10 = *(a1 + 3);
  v45 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v44 = 0;
  v11 = re::DynamicArray<unsigned int>::resize(&v41, 4 * (v10 & 0x3FFFFFFF), &re::kInvalidMeshIndex);
  if (!v10)
  {
    goto LABEL_29;
  }

  v5 = 0;
  v12 = 0;
  do
  {
    v8 = *(a1 + 3);
    if (v8 <= v5)
    {
      goto LABEL_42;
    }

    v13 = 0;
    *v50 = *(*(a1 + 5) + 16 * v5);
    v14 = 4 * v5;
    if (*&v50[12] == -1)
    {
      v15 = 3;
    }

    else
    {
      v15 = 4;
    }

    do
    {
      v16 = *&v50[4 * v13];
      v40 = v16;
      v8 = (v14 + v13);
      v2 = v43;
      if (v43 <= v8)
      {
        v46 = 0;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v55 = 0u;
        v25 = MEMORY[0x1E69E9C10];
        v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v47 = 136315906;
        *v48 = "operator[]";
        *&v48[8] = 1024;
        if (v26)
        {
          v27 = 3;
        }

        else
        {
          v27 = 2;
        }

        *&v48[10] = 789;
        *&v48[14] = 2048;
        *&v48[16] = (v14 + v13);
        *&v48[24] = 2048;
        *&v48[26] = v2;
        _os_log_send_and_compose_impl(v27, &v46, &v55, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v41, v42);
        _os_crash_msg();
        __break(1u);
        goto LABEL_38;
      }

      v17 = v45;
      *(v45 + 4 * v8) = v16;
      if (v13)
      {
        v18 = 0;
        while (*&v50[4 * v18] != v40)
        {
          if (v13 == ++v18)
          {
            goto LABEL_18;
          }
        }

        *(v17 + 4 * v8) = *(v3 + 2);
        v11 = re::DynamicArray<int>::add(v3, &v40);
        v12 = 1;
      }

LABEL_18:
      ++v13;
    }

    while (v13 != v15);
    ++v5;
  }

  while (v5 != v10);
  if ((v12 & 1) == 0)
  {
LABEL_29:
    v23 = 0;
    goto LABEL_30;
  }

  v47 = 0;
  v49 = 0;
  memset(&v48[12], 0, 20);
  re::DynamicArray<re::BlendNode>::setCapacity(&v48[4], 1uLL);
  v19 = *(v3 + 2);
  ++*&v48[28];
  v47 = v19;
  re::DynamicArray<re::GeomCell4>::resize(&v48[4], v10);
  v2 = 0;
  v20 = 0;
  v3 = v43;
  v21 = v45;
  v8 = *&v48[20];
  v22 = v49;
  do
  {
    if (v3 <= v2)
    {
      goto LABEL_46;
    }

    if (v8 == v20)
    {
      goto LABEL_50;
    }

    *(v22 + 16 * v20) = *(v21 + 16 * v20);
    ++v20;
    v2 += 4;
  }

  while (v10 != v20);
  *a1 = v47;
  re::DynamicArray<re::GeomCell4>::operator=(a1 + 1, &v48[4]);
  if (*&v48[4] && v49)
  {
    (*(**&v48[4] + 40))();
  }

  v23 = 1;
LABEL_30:
  if (v41 && v45)
  {
    (*(*v41 + 40))();
  }

  return v23;
}

void re::HashBrown<re::anonymous namespace::VertexPair,re::anonymous namespace::FaceVertex,re::anonymous namespace::HashEdge,re::anonymous namespace::HashEdge,void,false>::internalAdd(_anonymous_namespace_ *result, unsigned int *a2, _DWORD *a3)
{
  if (!*(result + 7))
  {
  }

  v6 = *(result + 4);
  if (!v6 || (v7 = *(result + 2), v7 > 8 * v6))
  {
    v7 = *(result + 2);
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = 0xBF58476D1CE4E5B9 * (a2[1] ^ (a2[1] >> 30));
  v11 = (0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) ^ ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31);
  if (v9 == v11)
  {
    v11 = 0;
  }

  v12 = v11 ^ v9;
  v13 = v7 >> 4;
  v14 = v12 % (v7 >> 4);
  v15 = *result;
  v16 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*result + 16 * v14)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v16 >= 0x40)
  {
    do
    {
      if (v14 + 1 == v13)
      {
        v14 = 0;
      }

      else
      {
        ++v14;
      }

      v16 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v15 + 16 * v14)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v16 > 0x3F);
  }

  v17 = v15 + 16 * v14;
  v18 = *(v17 + v16);
  *(v17 + v16) = v12 & 0x7F;
  v19 = 3 * (v16 + 16 * v14);
  *(*(result + 1) + 4 * v19) = *a2;
  *(*(result + 1) + 4 * v19 + 8) = *a3;
  if (v18 == 255)
  {
    v20 = -1;
  }

  else
  {
    v20 = 0;
  }

  v21.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v21.i64[1] = v20;
  *(result + 24) = vaddq_s64(*(result + 24), v21);
  v22 = (*(result + 1) + 4 * v19);
  v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*v22 ^ (*v22 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*v22 ^ (*v22 >> 30))) >> 27));
  v24 = v23 ^ (v23 >> 31);
  v25 = v22[1] ^ (v22[1] >> 30);
  v26 = (0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v25) ^ ((0xBF58476D1CE4E5B9 * v25) >> 27))) ^ ((0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v25) ^ ((0xBF58476D1CE4E5B9 * v25) >> 27))) >> 31);
  if (v24 == v26)
  {
    v26 = 0;
  }

  *(result + 5) ^= v24 ^ v26;
}

double re::HashBrown<re::anonymous namespace::VertexPair,re::anonymous namespace::FaceVertex,re::anonymous namespace::HashEdge,re::anonymous namespace::HashEdge,void,false>::resize(__int128 *a1)
{
  v3 = *(a1 + 2);
  v2 = *(a1 + 3);
  v4 = (((151 * (v2 + 1)) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  v5 = ((3 * v3) >> 1) & 0x1FFFFFFFFFFFFFFLL;
  if (v4 > (192 * v3) >> 7)
  {
    v5 = (((151 * (v2 + 1)) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  }

  v6 = (v5 << 7) / 0x97;
  v7 = *(a1 + 7);
  v25 = 0u;
  *v26 = 0u;
  if (v4 <= v3)
  {
    v8 = v2 + 1;
  }

  else
  {
    v8 = v6;
  }

  memset(&v26[16], 0, 32);
  v23[0] = a1;
  v9 = *(a1 + 2);
  if (v9 >= 0x10)
  {
    v10 = 0;
    v11 = *a1;
    v12 = v9 >> 4;
    while (1)
    {
      v13 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v11), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      if (v13 != 0xFFFFLL)
      {
        break;
      }

      v10 -= 16;
      ++v11;
      if (!--v12)
      {
        goto LABEL_14;
      }
    }

    v14 = __clz(__rbit64(v13 ^ 0xFFFFLL));
    v15 = v14 - v10;
    v23[1] = v13 ^ 0xFFFFLL;
    v24 = v14 - v10;
    if (v14 + 1 != v10)
    {
      do
      {
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v23);
        v15 = v24;
      }

      while (v24 != -1);
      v9 = *(a1 + 2);
    }
  }

LABEL_14:
  v16 = *&v26[40];
  *&v26[40] = *(a1 + 7);
  v17 = v25;
  v18 = *v26;
  v25 = *a1;
  *v26 = v9;
  v19 = *&v26[16];
  v20 = *(a1 + 40);
  *(a1 + 6) = *&v26[32];
  *(a1 + 7) = v16;
  *&v26[24] = v20;
  v21 = *(a1 + 24);
  *a1 = v17;
  a1[1] = v18;
  a1[2] = v19;
  *&v26[8] = v21;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::anonymous namespace::NonmanifoldFaceVertex *,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v70 = *v8;
        if ((*(a2 - 1) & 0xFFFFFFFu) < (*v8 & 0xFFFFFFFu))
        {
          *v8 = *(a2 - 1);
          *(a2 - 1) = v70;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v77 = v8 + 1;
      v78 = v8[1];
      v79 = v8 + 2;
      v80 = v8[2];
      v81 = v78 & 0xFFFFFFF;
      v82 = *v8;
      v83 = *v8 & 0xFFFFFFF;
      v84 = v80 & 0xFFFFFFF;
      if ((v78 & 0xFFFFFFF) >= v83)
      {
        if (v84 < v81)
        {
          v85 = v8;
          *v77 = v80;
          *v79 = v78;
          v86 = v8 + 1;
          v127 = v84 >= v83;
          LODWORD(v83) = v78 & 0xFFFFFFF;
          v84 = v78 & 0xFFFFFFF;
          if (!v127)
          {
            goto LABEL_190;
          }

LABEL_192:
          if ((*(a2 - 1) & 0xFFFFFFFu) < v84)
          {
            *v79 = *(a2 - 1);
            *(a2 - 1) = v78;
            v131 = *v79;
            v132 = *v77;
            if ((v131 & 0xFFFFFFF) < (v132 & 0xFFFFFFF))
            {
              v8[1] = v131;
              v8[2] = v132;
              v133 = *v8;
              if ((v131 & 0xFFFFFFF) < (*v8 & 0xFFFFFFFu))
              {
                *v8 = v131;
                v8[1] = v133;
              }
            }
          }

          return result;
        }
      }

      else
      {
        if (v84 < v81)
        {
          v85 = v8;
          v86 = v8 + 2;
          v78 = *v8;
          goto LABEL_190;
        }

        *v8 = v78;
        v8[1] = v82;
        v85 = v8 + 1;
        v86 = v8 + 2;
        v78 = v82;
        if (v84 < v83)
        {
LABEL_190:
          *v85 = v80;
          *v86 = v82;
          v84 = v83;
          goto LABEL_192;
        }
      }

      v78 = v80;
      goto LABEL_192;
    }

    if (v9 == 5)
    {
    }

LABEL_10:
    if (v9 <= 23)
    {
      v87 = v8 + 1;
      v89 = v8 == a2 || v87 == a2;
      if (a4)
      {
        if (!v89)
        {
          v90 = 8;
          v91 = v8;
          do
          {
            v93 = *v91;
            v92 = v91[1];
            v91 = v87;
            if ((v92 & 0xFFFFFFF) < (v93 & 0xFFFFFFF))
            {
              v94 = v90;
              while (1)
              {
                *(v8 + v94) = v93;
                v95 = v94 - 8;
                if (v94 == 8)
                {
                  break;
                }

                v93 = *(v8 + v94 - 16);
                v94 -= 8;
                if ((v92 & 0xFFFFFFF) >= (v93 & 0xFFFFFFF))
                {
                  v96 = (v8 + v95);
                  goto LABEL_129;
                }
              }

              v96 = v8;
LABEL_129:
              *v96 = v92;
            }

            v87 = v91 + 1;
            v90 += 8;
          }

          while (v91 + 1 != a2);
        }
      }

      else if (!v89)
      {
        do
        {
          v129 = *v7;
          v128 = v7[1];
          v7 = v87;
          if ((v128 & 0xFFFFFFF) < (v129 & 0xFFFFFFF))
          {
            v130 = v87;
            do
            {
              *v130 = v129;
              v129 = *(v130 - 2);
              --v130;
            }

            while ((v128 & 0xFFFFFFF) < (v129 & 0xFFFFFFF));
            *v130 = v128;
          }

          ++v87;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v97 = (v9 - 2) >> 1;
        v98 = v97;
        do
        {
          v99 = v98;
          if (v97 >= v98)
          {
            v100 = (2 * v98) | 1;
            v101 = &v8[v100];
            if (2 * v99 + 2 >= v9)
            {
              v102 = *v101;
            }

            else
            {
              v102 = v101[1];
              v103 = *v101 & 0xFFFFFFF;
              result = v102 & 0xFFFFFFF;
              if (v103 < (v102 & 0xFFFFFFF))
              {
                ++v101;
              }

              else
              {
                v102 = *v101;
              }

              if (v103 < result)
              {
                v100 = 2 * v99 + 2;
              }
            }

            v104 = &v8[v99];
            v105 = *v104;
            v106 = *v104 & 0xFFFFFFF;
            if ((v102 & 0xFFFFFFF) >= v106)
            {
              do
              {
                *v104 = v102;
                v104 = v101;
                if (v97 < v100)
                {
                  break;
                }

                v107 = (2 * v100) | 1;
                v101 = &v8[v107];
                v100 = 2 * v100 + 2;
                if (v100 >= v9)
                {
                  v102 = *v101;
                  v100 = v107;
                }

                else
                {
                  v102 = *v101;
                  result = (v101 + 1);
                  if ((*v101 & 0xFFFFFFFu) >= (v101[1] & 0xFFFFFFFu))
                  {
                    v100 = v107;
                  }

                  else
                  {
                    v102 = v101[1];
                    ++v101;
                  }
                }
              }

              while ((v102 & 0xFFFFFFF) >= v106);
              *v104 = v105;
            }
          }

          v98 = v99 - 1;
        }

        while (v99);
        do
        {
          v108 = 0;
          v109 = *v8;
          v110 = v8;
          do
          {
            v111 = &v110[v108];
            v112 = v111 + 1;
            v113 = (2 * v108) | 1;
            v108 = 2 * v108 + 2;
            if (v108 >= v9)
            {
              v115 = *v112;
              v108 = v113;
            }

            else
            {
              v116 = v111[2];
              v114 = v111 + 2;
              v115 = v116;
              result = *(v114 - 1) & 0xFFFFFFF;
              v117 = v116 & 0xFFFFFFF;
              if (result < (v116 & 0xFFFFFFF))
              {
                v112 = v114;
              }

              else
              {
                v115 = *(v114 - 1);
              }

              if (result >= v117)
              {
                v108 = v113;
              }
            }

            *v110 = v115;
            v110 = v112;
          }

          while (v108 <= ((v9 - 2) >> 1));
          if (v112 == --a2)
          {
            *v112 = v109;
          }

          else
          {
            *v112 = *a2;
            *a2 = v109;
            v118 = (v112 - v8 + 8) >> 3;
            v119 = v118 < 2;
            v120 = v118 - 2;
            if (!v119)
            {
              v121 = v120 >> 1;
              v122 = &v8[v121];
              v123 = *v122;
              v124 = *v112;
              v125 = *v112 & 0xFFFFFFF;
              if ((*v122 & 0xFFFFFFFu) < v125)
              {
                do
                {
                  *v112 = v123;
                  v112 = v122;
                  if (!v121)
                  {
                    break;
                  }

                  v121 = (v121 - 1) >> 1;
                  v122 = &v8[v121];
                  v123 = *v122;
                }

                while ((*v122 & 0xFFFFFFFu) < v125);
                *v112 = v124;
              }
            }
          }

          v119 = v9-- <= 2;
        }

        while (!v119);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    v13 = v12 & 0xFFFFFFF;
    if (v9 >= 0x81)
    {
      v14 = *v10;
      v15 = *v10 & 0xFFFFFFF;
      v16 = *v8;
      v17 = *v8 & 0xFFFFFFF;
      if (v15 >= v17)
      {
        if (v13 < v15)
        {
          *v10 = v12;
          *(a2 - 1) = v14;
          v22 = *v8;
          if ((*v10 & 0xFFFFFFFu) < (*v8 & 0xFFFFFFFu))
          {
            *v8 = *v10;
            *v10 = v22;
          }
        }
      }

      else
      {
        if (v13 < v15)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v14;
        *v10 = v16;
        if ((*(a2 - 1) & 0xFFFFFFFu) < v17)
        {
          *v10 = *(a2 - 1);
LABEL_27:
          *(a2 - 1) = v16;
        }
      }

      v24 = v10 - 1;
      v25 = *(v10 - 1);
      v26 = v25 & 0xFFFFFFF;
      v27 = v8[1];
      v28 = *(a2 - 2);
      v29 = v28 & 0xFFFFFFF;
      if ((v25 & 0xFFFFFFF) >= (v27 & 0xFFFFFFF))
      {
        if (v29 < v26)
        {
          *v24 = v28;
          *(a2 - 2) = v25;
          v30 = v8[1];
          if ((*v24 & 0xFFFFFFFu) < (v8[1] & 0xFFFFFFFu))
          {
            v8[1] = *v24;
            *v24 = v30;
          }
        }
      }

      else
      {
        if (v29 < v26)
        {
          v8[1] = v28;
          goto LABEL_39;
        }

        v8[1] = v25;
        *v24 = v27;
        if ((*(a2 - 2) & 0xFFFFFFFu) < (v27 & 0xFFFFFFF))
        {
          *v24 = *(a2 - 2);
LABEL_39:
          *(a2 - 2) = v27;
        }
      }

      v33 = v10[1];
      v31 = v10 + 1;
      v32 = v33;
      v34 = v33 & 0xFFFFFFF;
      v35 = v8[2];
      v36 = *(a2 - 3);
      v37 = v36 & 0xFFFFFFF;
      if ((v33 & 0xFFFFFFF) >= (v35 & 0xFFFFFFF))
      {
        if (v37 < v34)
        {
          *v31 = v36;
          *(a2 - 3) = v32;
          v38 = v8[2];
          if ((*v31 & 0xFFFFFFFu) < (v8[2] & 0xFFFFFFFu))
          {
            v8[2] = *v31;
            *v31 = v38;
          }
        }
      }

      else
      {
        if (v37 < v34)
        {
          v8[2] = v36;
          goto LABEL_48;
        }

        v8[2] = v32;
        *v31 = v35;
        if ((*(a2 - 3) & 0xFFFFFFFu) < (v35 & 0xFFFFFFF))
        {
          *v31 = *(a2 - 3);
LABEL_48:
          *(a2 - 3) = v35;
        }
      }

      v39 = *v11;
      v40 = *v11 & 0xFFFFFFF;
      v41 = *v24;
      v42 = *v24 & 0xFFFFFFF;
      v43 = *v31;
      v44 = *v31 & 0xFFFFFFF;
      if (v40 >= v42)
      {
        if (v44 >= v40)
        {
          goto LABEL_56;
        }

        *v11 = v43;
        *v31 = v39;
        v31 = v11;
        v39 = v41;
        if (v44 >= v42)
        {
          v39 = v43;
          goto LABEL_56;
        }
      }

      else if (v44 >= v40)
      {
        *v24 = v39;
        *v11 = v41;
        v24 = v11;
        v39 = v43;
        if (v44 >= v42)
        {
          v39 = v41;
LABEL_56:
          v45 = *v8;
          *v8 = v39;
          *v11 = v45;
          goto LABEL_57;
        }
      }

      *v24 = v43;
      *v31 = v41;
      goto LABEL_56;
    }

    v18 = *v8;
    v19 = *v8 & 0xFFFFFFF;
    v20 = *v11;
    v21 = *v11 & 0xFFFFFFF;
    if (v19 >= v21)
    {
      if (v13 < v19)
      {
        *v8 = v12;
        *(a2 - 1) = v18;
        v23 = *v11;
        if ((*v8 & 0xFFFFFFFu) < (*v11 & 0xFFFFFFFu))
        {
          *v11 = *v8;
          *v8 = v23;
        }
      }

      goto LABEL_57;
    }

    if (v13 < v19)
    {
      *v11 = v12;
LABEL_36:
      *(a2 - 1) = v20;
      goto LABEL_57;
    }

    *v11 = v18;
    *v8 = v20;
    if ((*(a2 - 1) & 0xFFFFFFFu) < v21)
    {
      *v8 = *(a2 - 1);
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v46 = *v8;
    if (a4)
    {
      v47 = v46 & 0xFFFFFFF;
LABEL_60:
      v48 = 0;
      do
      {
        v49 = v8[++v48];
      }

      while ((v49 & 0xFFFFFFF) < v47);
      v50 = &v8[v48];
      v51 = a2;
      if (v48 == 1)
      {
        v51 = a2;
        do
        {
          if (v50 >= v51)
          {
            break;
          }

          v53 = *(v51-- - 2);
        }

        while ((v53 & 0xFFFFFFFu) >= v47);
      }

      else
      {
        do
        {
          v52 = *(v51-- - 2);
        }

        while ((v52 & 0xFFFFFFFu) >= v47);
      }

      if (v50 >= v51)
      {
        v59 = v50 - 1;
      }

      else
      {
        v54 = *v51;
        v55 = &v8[v48];
        v56 = v51;
        do
        {
          *v55 = v54;
          *v56 = v49;
          do
          {
            v57 = v55[1];
            ++v55;
            v49 = v57;
          }

          while ((v57 & 0xFFFFFFF) < v47);
          do
          {
            v58 = *--v56;
            v54 = v58;
          }

          while ((v58 & 0xFFFFFFF) >= v47);
        }

        while (v55 < v56);
        v59 = v55 - 1;
      }

      if (v59 != v8)
      {
        *v8 = *v59;
      }

      *v59 = v46;
      if (v50 < v51)
      {
        goto LABEL_81;
      }

      v8 = v59 + 1;
      if (result)
      {
        a2 = v59;
        if (!v60)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v60)
      {
LABEL_81:
        a4 = 0;
        v8 = v59 + 1;
      }
    }

    else
    {
      v47 = v46 & 0xFFFFFFF;
      if ((*(v8 - 1) & 0xFFFFFFFu) < (v46 & 0xFFFFFFF))
      {
        goto LABEL_60;
      }

      if (v47 >= (*(a2 - 1) & 0xFFFFFFFu))
      {
        v62 = (v8 + 1);
        do
        {
          v8 = v62;
          if (v62 >= a2)
          {
            break;
          }

          v62 += 8;
        }

        while (v47 >= (*v8 & 0xFFFFFFFu));
      }

      else
      {
        do
        {
          v61 = *(v8++ + 2);
        }

        while (v47 >= (v61 & 0xFFFFFFFu));
      }

      v63 = a2;
      if (v8 < a2)
      {
        v63 = a2;
        do
        {
          v64 = *(v63-- - 2);
        }

        while (v47 < (v64 & 0xFFFFFFFu));
      }

      if (v8 < v63)
      {
        v65 = *v8;
        v66 = *v63;
        do
        {
          *v8 = v66;
          *v63 = v65;
          do
          {
            v67 = v8[1];
            ++v8;
            v65 = v67;
          }

          while (v47 >= (v67 & 0xFFFFFFF));
          do
          {
            v68 = *--v63;
            v66 = v68;
          }

          while (v47 < (v68 & 0xFFFFFFF));
        }

        while (v8 < v63);
      }

      v69 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v69;
      }

      a4 = 0;
      *v69 = v46;
    }
  }

  v71 = *v8;
  v72 = v8[1];
  v73 = v72 & 0xFFFFFFF;
  v74 = *v8 & 0xFFFFFFF;
  v75 = *(a2 - 1);
  v76 = v75 & 0xFFFFFFF;
  if ((v72 & 0xFFFFFFF) >= v74)
  {
    if (v76 < v73)
    {
      v8[1] = v75;
      *(a2 - 1) = v72;
      v126 = *v8;
      if ((v8[1] & 0xFFFFFFFu) < (*v8 & 0xFFFFFFFu))
      {
        *v8 = v8[1];
        v8[1] = v126;
      }
    }
  }

  else
  {
    if (v76 >= v73)
    {
      *v8 = v72;
      v8[1] = v71;
      if ((*(a2 - 1) & 0xFFFFFFFu) >= v74)
      {
        return result;
      }

      v8[1] = *(a2 - 1);
    }

    else
    {
      *v8 = v75;
    }

    *(a2 - 1) = v71;
  }

  return result;
}

uint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::anonymous namespace::NonmanifoldFaceVertex *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *a2 & 0xFFFFFFF;
  v7 = *result;
  v8 = *result & 0xFFFFFFF;
  v9 = *a3;
  v10 = *a3 & 0xFFFFFFF;
  if (v6 >= v8)
  {
    if (v10 >= v6)
    {
      v8 = *a3 & 0xFFFFFFF;
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      LODWORD(v8) = v6;
      if ((*a2 & 0xFFFFFFFu) < (*result & 0xFFFFFFFu))
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
        v8 = *a3 & 0xFFFFFFF;
      }
    }
  }

  else
  {
    if (v10 >= v6)
    {
      *result = v5;
      *a2 = v7;
      v5 = *a3;
      if ((*a3 & 0xFFFFFFFu) >= v8)
      {
        v8 = *a3 & 0xFFFFFFF;
        goto LABEL_12;
      }

      *a2 = v5;
    }

    else
    {
      *result = v9;
    }

    *a3 = v7;
    v5 = v7;
  }

LABEL_12:
  if ((*a4 & 0xFFFFFFFu) < v8)
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if ((*a3 & 0xFFFFFFFu) < (*a2 & 0xFFFFFFFu))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if ((*a2 & 0xFFFFFFFu) < (*result & 0xFFFFFFFu))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if ((*a5 & 0xFFFFFFFu) < (*a4 & 0xFFFFFFFu))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if ((*a4 & 0xFFFFFFFu) < (*a3 & 0xFFFFFFFu))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if ((*a3 & 0xFFFFFFFu) < (*a2 & 0xFFFFFFFu))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if ((*a2 & 0xFFFFFFFu) < (*result & 0xFFFFFFFu))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::anonymous namespace::NonmanifoldFaceVertex *>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = *a1;
      v5 = a1[1];
      v6 = v5 & 0xFFFFFFF;
      v7 = *a1 & 0xFFFFFFF;
      v8 = *(a2 - 1);
      v9 = v8 & 0xFFFFFFF;
      if ((v5 & 0xFFFFFFF) >= v7)
      {
        if (v9 < v6)
        {
          a1[1] = v8;
          *(a2 - 1) = v5;
          v29 = *a1;
          if ((a1[1] & 0xFFFFFFFu) < (*a1 & 0xFFFFFFFu))
          {
            *a1 = a1[1];
            a1[1] = v29;
          }
        }

        return 1;
      }

      if (v9 >= v6)
      {
        *a1 = v5;
        a1[1] = v4;
        if ((*(a2 - 1) & 0xFFFFFFFu) >= v7)
        {
          return 1;
        }

        a1[1] = *(a2 - 1);
      }

      else
      {
        *a1 = v8;
      }

      *(a2 - 1) = v4;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      return 1;
    }

    v19 = a1 + 1;
    v20 = a1[1];
    v21 = a1 + 2;
    v22 = a1[2];
    v23 = v20 & 0xFFFFFFF;
    v24 = *a1;
    v25 = *a1 & 0xFFFFFFF;
    v26 = v22 & 0xFFFFFFF;
    if ((v20 & 0xFFFFFFF) >= v25)
    {
      if (v26 < v23)
      {
        v27 = a1;
        *v19 = v22;
        *v21 = v20;
        v28 = a1 + 1;
        v39 = v26 >= v25;
        LODWORD(v25) = v20 & 0xFFFFFFF;
        v26 = v20 & 0xFFFFFFF;
        if (v39)
        {
          goto LABEL_47;
        }

        goto LABEL_45;
      }
    }

    else
    {
      if (v26 < v23)
      {
        v27 = a1;
        v28 = a1 + 2;
        v20 = *a1;
LABEL_45:
        *v27 = v22;
        *v28 = v24;
        v26 = v25;
LABEL_47:
        if ((*(a2 - 1) & 0xFFFFFFFu) < v26)
        {
          *v21 = *(a2 - 1);
          *(a2 - 1) = v20;
          v40 = *v21;
          v41 = *v19;
          if ((v40 & 0xFFFFFFF) < (v41 & 0xFFFFFFF))
          {
            a1[1] = v40;
            a1[2] = v41;
            v42 = *a1;
            if ((v40 & 0xFFFFFFF) < (*a1 & 0xFFFFFFFu))
            {
              *a1 = v40;
              a1[1] = v42;
            }
          }
        }

        return 1;
      }

      *a1 = v20;
      a1[1] = v24;
      v27 = a1 + 1;
      v28 = a1 + 2;
      v20 = v24;
      if (v26 < v25)
      {
        goto LABEL_45;
      }
    }

    v20 = v22;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *a1;
    if ((*(a2 - 1) & 0xFFFFFFFu) < (*a1 & 0xFFFFFFFu))
    {
      *a1 = *(a2 - 1);
      *(a2 - 1) = v3;
    }

    return 1;
  }

LABEL_13:
  v11 = a1 + 2;
  v10 = a1[2];
  v12 = a1[1];
  v13 = v12 & 0xFFFFFFF;
  v14 = *a1;
  v15 = *a1 & 0xFFFFFFF;
  v16 = v10 & 0xFFFFFFF;
  if ((v12 & 0xFFFFFFF) >= v15)
  {
    if (v16 >= v13)
    {
      goto LABEL_26;
    }

    a1[1] = v10;
    *v11 = v12;
    v17 = a1;
    v18 = a1 + 1;
LABEL_24:
    if (v16 >= v15)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v17 = a1;
  v18 = a1 + 2;
  if (v16 >= v13)
  {
    *a1 = v12;
    a1[1] = v14;
    v17 = a1 + 1;
    v18 = a1 + 2;
    goto LABEL_24;
  }

LABEL_25:
  *v17 = v10;
  *v18 = v14;
LABEL_26:
  v30 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v31 = 0;
  for (i = 24; ; i += 8)
  {
    v33 = *v30;
    v34 = *v30 & 0xFFFFFFF;
    v35 = *v11;
    if (v34 < (v35 & 0xFFFFFFF))
    {
      v36 = i;
      while (1)
      {
        *(a1 + v36) = v35;
        v37 = v36 - 8;
        if (v36 == 8)
        {
          break;
        }

        v35 = *(a1 + v36 - 16);
        v36 -= 8;
        if (v34 >= (v35 & 0xFFFFFFF))
        {
          v38 = (a1 + v37);
          goto LABEL_34;
        }
      }

      v38 = a1;
LABEL_34:
      *v38 = v33;
      if (++v31 == 8)
      {
        break;
      }
    }

    v11 = v30++;
    if (v30 == a2)
    {
      return 1;
    }
  }

  return v30 + 1 == a2;
}

re::GeomMesh *re::internal::removeSmallAndThinFeatures(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = v4;
  v260 = *MEMORY[0x1E69E9840];
  if (!*(v1 + 40))
  {

    return re::GeomMesh::GeomMesh(v3, 0);
  }

  v6 = v2;
  v7 = v1;
  v172 = v3;
  v173 = *(v2 + 24);
  v8 = &v208;
  bzero(&v208, 0x2D0uLL);
  v10 = v6;
  re::DynamicArray<re::BlendNode>::setCapacity(&v210, 1uLL);
  ++v211;
  re::internal::GeomAttributeManager::GeomAttributeManager(v213);
  re::internal::GeomAttributeManager::addAttribute(v213, "vertexPosition", 1, 7);
  v205 = v7;
  v206 = re::GeomMesh::accessVertexPositions(v7);
  v207 = v11;
  v204 = 0;
  v201 = 0;
  memset(v202, 0, sizeof(v202));
  v203 = 0;
  memset(v199, 0, sizeof(v199));
  v200 = 0;
  re::DynamicArray<BOOL>::resize(v202, *(v7 + 16));
  v192[0] = 0;
  v192[1] = 0;
  v193 = 0;
  v198 = 0;
  v195 = 0u;
  v196 = 0u;
  v194 = 0;
  v197 = 0;
  re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(v192, v7);
  v191[0] = v202;
  v191[1] = v7;
  v191[2] = v199;
  v191[3] = &v205;
  v12 = *v6;
  v13 = v6[1];
  v190 = 0;
  v187[1] = 0;
  v188 = 0;
  v187[0] = 0;
  v189 = 0;
  LOBYTE(v240) = 1;
  v174 = v193;
  re::DynamicArray<BOOL>::resize(v187, v193, &v240);
  v15 = v205;
  v14 = v206;
  v16 = v207;
  v186 = 0;
  v183[1] = 0;
  v184 = 0;
  v183[0] = 0;
  v185 = 0;
  LOBYTE(v240) = 5;
  v177 = v193;
  re::DynamicArray<unsigned char>::resize(v183, v193, &v240);
  v175 = v10;
  v176 = v7;
  if (!*(v10 + 20))
  {
    goto LABEL_107;
  }

  re::GeomMesh::GeomMesh(&v240, 0);
  v17 = v7;
  if (*(v5 + 10))
  {
    bzero(v221, 0x2D0uLL);
    re::DynamicArray<re::BlendNode>::setCapacity(&v221[16], 1uLL);
    LODWORD(v222) = v222 + 1;
    re::internal::GeomAttributeManager::GeomAttributeManager(&v224);
    re::internal::GeomAttributeManager::addAttribute(&v224, "vertexPosition", 1, 7);
    re::GeomMeshBuilder::appendMesh(v221, v7);
    re::GeomMeshBuilder::appendMesh(v221, v5);
    re::GeomMesh::operator=(&v240, &v221[8]);
    re::GeomMesh::setName(&v240, *v221);
    re::GeomMesh::freeName(v221);
    re::GeomMesh::freeName(v221);
    re::internal::GeomAttributeManager::~GeomAttributeManager(&v224);
    if (*&v221[16] && v223)
    {
      (*(**&v221[16] + 40))();
    }

    if (*(v5 + 10))
    {
      v17 = &v240;
    }

    else
    {
      v17 = v7;
    }
  }

  re::computeOrientedBoundingBox(v17, v221);
  v19 = vmulq_f32(*v221, *v221);
  v20 = vmulq_f32(*&v221[16], *&v221[16]);
  v21 = (sqrtf(vaddv_f32(vadd_f32(*v19.i8, *&vextq_s8(v19, v19, 8uLL)))) * 0.25) * sqrtf(vaddv_f32(vadd_f32(*v20.i8, *&vextq_s8(v20, v20, 8uLL))));
  if (*(v10 + 12) >= v21)
  {
    v22 = *(v10 + 12);
  }

  else
  {
    v22 = v21;
  }

  re::computeAABB(v221, v17);
  v23 = vsubq_f32(*&v221[16], *v221);
  v23.i32[3] = 0;
  _Q0 = vmaxnmq_f32(v23, 0);
  v25 = *(v10 + 12);
  _S4 = 0.75;
  __asm { FMLA            S5, S4, V0.S[1] }

  if (vmuls_lane_f32(_Q0.f32[0], _Q0, 2) >= v25)
  {
    v32 = _S5;
  }

  else
  {
    v32 = *&v221[4];
  }

  re::internal::PlaneDetector::build(v17, *(v10 + 16) | (LODWORD(v25) << 32), *(v10 + 20), v221);
  re::GeomMesh::~GeomMesh(&v240);
  *&v219[2] = 0;
  memset(v217, 0, sizeof(v217));
  v237.i8[0] = 0;
  v33 = v229;
  if (v229)
  {
    v171 = v12;
    v7 = 0;
    v10 = &v245;
    v34 = -1;
    v35 = -INFINITY;
    v36 = 48;
    do
    {
      v37 = v7;
      if (v33 <= v7)
      {
        goto LABEL_241;
      }

      v38 = v231 + 16 * v7;
      v39 = *(v38 + 4);
      if (v39 >= 0.0)
      {
        v40 = 1.0;
      }

      else
      {
        v40 = -1.0;
      }

      if ((v40 * v39) >= 0.99619)
      {
        v41 = *(v38 + 12);
        re::DynamicArray<unsigned char>::add(v217, &v237);
        v7 = v237.u8[0];
        v33 = v234;
        if (v234 <= v237.u8[0])
        {
          goto LABEL_253;
        }

        v42 = (v236 + 48 * v237.u8[0]);
        v43 = vmulq_f32(*v42, *v42);
        v44 = vmulq_f32(v42[1], v42[1]);
        *v43.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v43, v43, 8uLL), *&vextq_s8(v44, v44, 8uLL)), vadd_f32(vzip1_s32(*v43.i8, *v44.i8), vzip2_s32(*v43.i8, *v44.i8))));
        if (vmul_lane_f32(*v43.i8, *v43.i8, 1).f32[0] > v22 && -(v40 * v41) > v35 && -(v40 * v41) > v32)
        {
          v34 = v237.i8[0];
          v35 = -(v40 * v41);
        }
      }

      v7 = (v7 + 1);
      v237.i8[0] = v7;
      v33 = v229;
    }

    while (v229 > v7);
    v45 = *&v219[2];
    v37 = *&v217[16];
    if (v34 == -1)
    {
      v8 = &v208;
      v7 = v176;
      v12 = v171;
    }

    else
    {
      v46 = memchr(*&v219[2], v34, *&v217[16]);
      v7 = v176;
      v12 = v171;
      if (v46)
      {
        v47 = v45 + v37;
        v8 = &v208;
        if (v46 != (v45 + v37))
        {
          v36 = &v46[-v45];
          if (v37 <= &v46[-v45])
          {
            goto LABEL_277;
          }

          if (--v37 > v36)
          {
            *v46 = *(v47 - 1);
            v45 = *&v219[2];
            v37 = *&v217[16] - 1;
          }

          *&v217[16] = v37;
          ++*&v217[24];
        }
      }

      else
      {
        v8 = &v208;
      }
    }
  }

  else
  {
    v37 = 0;
    v45 = 0;
  }

  re::internal::PlaneDetector::removePlaneSubset(v221, v45, v37);
  v250 = 0;
  v247 = 0;
  v245 = 0;
  v246 = 0;
  v248 = 0;
  if (!v177)
  {
    goto LABEL_89;
  }

  v37 = 0;
  v7 = 3;
  v10 = &v237;
  while (1)
  {
    re::internal::ExtractMeshConnectedComponents::facesInComponent(v192, v37, &v245);
    if (v247)
    {
      v50 = v250;
      v36 = v224;
      v8 = *&v221[16];
      v51 = 4 * v247;
      v52 = 0.0;
      v53 = 0.0;
      v54 = v250;
      do
      {
        v33 = *v54;
        if (v224 <= v33)
        {
          goto LABEL_224;
        }

        if (*&v221[16] <= v33)
        {
          goto LABEL_228;
        }

        v55 = *(v226 + 4 * v33);
        if (*(*&v221[32] + v33) != 255)
        {
          v53 = v53 + v55;
        }

        v52 = v52 + v55;
        ++v54;
        v51 -= 4;
      }

      while (v51);
      if (v52 > 0.0 && (v53 / v52) > 0.5)
      {
        v36 = v184;
        if (v184 <= v37)
        {
          goto LABEL_273;
        }

        goto LABEL_53;
      }

      v57 = 0;
      v36 = *(v15 + 40);
      v56 = 0uLL;
      do
      {
        v33 = *v50;
        if (v36 <= v33)
        {
          goto LABEL_237;
        }

        v58 = 0;
        v237 = *(*(v15 + 56) + 16 * v33);
        if (v237.i32[3] == -1)
        {
          v59 = 3;
        }

        else
        {
          v59 = 4;
        }

        do
        {
          v33 = v237.u32[v58];
          if (v16 <= v33)
          {
            goto LABEL_82;
          }

          v56 = vaddq_f32(v56, *(v14 + 16 * v33));
          ++v58;
        }

        while (v59 != v58);
        v57 += v59;
        ++v50;
      }

      while (v50 != &v250[v247]);
      if (v57)
      {
        v56 = vmulq_n_f32(v56, 1.0 / v57);
      }
    }

    else
    {
      v56 = 0uLL;
    }

    v8 = v229;
    if (!v229)
    {
      goto LABEL_74;
    }

    v60 = 0;
    v61 = v56;
    v61.i32[3] = 1.0;
    v36 = v234;
    while (1)
    {
      if (v60 == 256)
      {
        goto LABEL_232;
      }

      v33 = v60;
      if (v229 <= v60)
      {
        goto LABEL_233;
      }

      v62 = vmulq_f32(v61, *(v231 + 16 * v60));
      *v62.i8 = vadd_f32(*v62.i8, *&vextq_s8(v62, v62, 8uLL));
      *v62.i8 = vadd_f32(*v62.i8, vdup_lane_s32(*v62.i8, 1));
      if (vmul_f32(*v62.i8, *v62.i8).f32[0] <= (v175[4] * v175[4]))
      {
        if (v234 <= v60)
        {
          goto LABEL_249;
        }

        v63 = (v236 + 48 * v60);
        v64 = vsubq_f32(v56, v63[2]);
        v65 = vmulq_f32(*v63, v64);
        v66 = vmulq_f32(*v63, *v63);
        if (fabsf(v65.f32[2] + vaddv_f32(*v65.f32)) <= (v66.f32[2] + vaddv_f32(*v66.f32)))
        {
          v67 = v63[1];
          v68 = vmulq_f32(v64, v67);
          v69 = vmulq_f32(v67, v67);
          if (fabsf(v68.f32[2] + vaddv_f32(*v68.f32)) <= (v69.f32[2] + vaddv_f32(*v69.f32)))
          {
            break;
          }
        }
      }

      if (v229 == ++v60)
      {
        goto LABEL_74;
      }
    }

    if (v60 == 255)
    {
      goto LABEL_74;
    }

    v70 = v184;
    if (v184 <= v37)
    {
      break;
    }

LABEL_53:
    *(v186 + v37) = 2;
LABEL_74:
    if (++v37 == v177)
    {
      goto LABEL_86;
    }
  }

  v237.i64[0] = 0;
  v244 = 0u;
  v243 = 0u;
  v242 = 0u;
  v241 = 0u;
  v240 = 0u;
  v71 = MEMORY[0x1E69E9C10];
  v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v254 = 136315906;
  *&v254[4] = "operator[]";
  *&v254[12] = 1024;
  if (v72)
  {
    v73 = 3;
  }

  else
  {
    v73 = 2;
  }

  *&v254[14] = 789;
  *&v254[18] = 2048;
  *&v254[20] = v37;
  v255 = 2048;
  *v256 = v70;
  _os_log_send_and_compose_impl(v73, &v237, &v240, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v254, 38, v169, v170);
  _os_crash_msg();
  __break(1u);
LABEL_82:
  v179[0] = 0;
  v244 = 0u;
  v243 = 0u;
  v242 = 0u;
  v241 = 0u;
  v240 = 0u;
  v74 = MEMORY[0x1E69E9C10];
  v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v254 = 136315906;
  *&v254[4] = "operator[]";
  *&v254[12] = 1024;
  if (v75)
  {
    v76 = 3;
  }

  else
  {
    v76 = 2;
  }

  *&v254[14] = 613;
  *&v254[18] = 2048;
  *&v254[20] = v33;
  v255 = 2048;
  *v256 = v16;
  _os_log_send_and_compose_impl(v76, v179, &v240, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v254, 38, v169, v170);
  _os_crash_msg();
  __break(1u);
LABEL_86:
  v8 = &v208;
  v7 = v176;
  if (v245 && v250)
  {
    (*(*v245 + 40))();
  }

LABEL_89:
  if (*v217 && *&v219[2])
  {
    (*(**v217 + 40))();
  }

  if (v232)
  {
    if (v236)
    {
      (*(*v232 + 40))();
    }

    v236 = 0;
    v233 = 0;
    v234 = 0;
    v232 = 0;
    ++v235;
  }

  if (v227)
  {
    if (v231)
    {
      (*(*v227 + 40))();
    }

    v231 = 0;
    v228 = 0;
    v229 = 0;
    v227 = 0;
    ++v230;
  }

  if (v222)
  {
    if (v226)
    {
      (*(*v222 + 40))();
    }

    v226 = 0;
    v223 = 0;
    v224 = 0;
    v222 = 0;
    ++v225;
  }

  if (*v221 && *&v221[32])
  {
    (*(**v221 + 40))();
  }

LABEL_107:
  v33 = v173;
  v77 = v174;
  if (!v174)
  {
    goto LABEL_192;
  }

  v7 = 0;
  v78 = 0;
  v37 = v217;
  do
  {
    v182 = 0;
    v179[1] = 0;
    v180 = 0;
    v179[0] = 0;
    v181 = 0;
    re::internal::ExtractMeshConnectedComponents::facesInComponent(v192, v7, v179);
    v36 = v184;
    if (v184 <= v7)
    {
      goto LABEL_245;
    }

    v79 = *(v186 + v7);
    if ((v79 & 1) != 0 && re::internal::removeSmallAndThinFeatures(re::GeomMesh const&,re::GeomMesh const&,re::internal::RemoveThinFeatureOptions const&)::$_0::operator()(v191, v182, v180, v13, v13 * v13))
    {
      goto LABEL_176;
    }

    if ((v79 & 2) != 0)
    {
      v80 = re::internal::removeSmallAndThinFeatures(re::GeomMesh const&,re::GeomMesh const&,re::internal::RemoveThinFeatureOptions const&)::$_0::operator()(v191, v182, v180, v12, v12 * v12);
      if ((v79 & 4) == 0 || v80)
      {
        if (v80)
        {
          goto LABEL_176;
        }

        goto LABEL_178;
      }
    }

    else if ((v79 & 4) == 0)
    {
      goto LABEL_178;
    }

    v81 = v182;
    v82 = v180;
    v214 = -1;
    if (v33 && !re::internal::ExtractMeshConnectedComponents::componentHasOneMaterial(v192, v7, v176, v33, &v214))
    {
      goto LABEL_156;
    }

    v83 = *v175;
    v84 = re::GeomMesh::accessVertexPositions(v176);
    if (!v82)
    {
      goto LABEL_156;
    }

    v86 = v85;
    v36 = *(v176 + 5);
    v87 = *(v176 + 7);
    v88 = v81;
LABEL_121:
    v33 = *v88;
    if (v36 <= v33)
    {
      goto LABEL_269;
    }

    v89 = 0;
    *v217 = *(v87 + 16 * v33);
    v90 = 3;
    if (*&v217[12] != -1)
    {
      v90 = 4;
    }

    while (1)
    {
      if (v90 - 1 == v89)
      {
        v91 = 0;
      }

      else
      {
        v91 = v89 + 1;
      }

      v33 = *&v217[4 * v91];
      if (v33 >= v85)
      {
        v245 = 0;
        v244 = 0u;
        v243 = 0u;
        v242 = 0u;
        v241 = 0u;
        v240 = 0u;
        v120 = MEMORY[0x1E69E9C10];
        v121 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v221 = 136315906;
        *&v221[4] = "operator[]";
        *&v221[12] = 1024;
        if (v121)
        {
          v122 = 3;
        }

        else
        {
          v122 = 2;
        }

        *&v221[14] = 613;
        *&v221[18] = 2048;
        *&v221[20] = v33;
        *&v221[28] = 2048;
        *&v221[30] = v86;
        _os_log_send_and_compose_impl(v122, &v245, &v240, 80, &dword_1E1C61000, v120, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v221, 38, v169, v170);
        _os_crash_msg();
        __break(1u);
LABEL_220:
        v245 = 0;
        v244 = 0u;
        v243 = 0u;
        v242 = 0u;
        v241 = 0u;
        v240 = 0u;
        v123 = MEMORY[0x1E69E9C10];
        v124 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v221 = 136315906;
        *&v221[4] = "operator[]";
        *&v221[12] = 1024;
        if (v124)
        {
          v125 = 3;
        }

        else
        {
          v125 = 2;
        }

        *&v221[14] = 613;
        *&v221[18] = 2048;
        *&v221[20] = v10;
        *&v221[28] = 2048;
        *&v221[30] = v86;
        _os_log_send_and_compose_impl(v125, &v245, &v240, 80, &dword_1E1C61000, v123, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v221, 38, v169, v170);
        _os_crash_msg();
        __break(1u);
LABEL_224:
        v237.i64[0] = 0;
        v244 = 0u;
        v243 = 0u;
        v242 = 0u;
        v241 = 0u;
        v240 = 0u;
        v126 = MEMORY[0x1E69E9C10];
        v127 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v254 = 136315906;
        *&v254[4] = "operator[]";
        *&v254[12] = 1024;
        if (v127)
        {
          v128 = 3;
        }

        else
        {
          v128 = 2;
        }

        *&v254[14] = 797;
        *&v254[18] = 2048;
        *&v254[20] = v33;
        v255 = 2048;
        *v256 = v36;
        _os_log_send_and_compose_impl(v128, &v237, &v240, 80, &dword_1E1C61000, v126, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v254, 38, v169, v170);
        _os_crash_msg();
        __break(1u);
LABEL_228:
        v237.i64[0] = 0;
        v244 = 0u;
        v243 = 0u;
        v242 = 0u;
        v241 = 0u;
        v240 = 0u;
        v129 = MEMORY[0x1E69E9C10];
        v130 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v254 = 136315906;
        *&v254[4] = "operator[]";
        *&v254[12] = 1024;
        if (v130)
        {
          v131 = 3;
        }

        else
        {
          v131 = 2;
        }

        *&v254[14] = 797;
        *&v254[18] = 2048;
        *&v254[20] = v33;
        v255 = 2048;
        *v256 = v8;
        _os_log_send_and_compose_impl(v131, &v237, &v240, 80, &dword_1E1C61000, v129, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v254, 38, v169, v170);
        _os_crash_msg();
        __break(1u);
LABEL_232:
        re::internal::assertLog(5, v49, "assertion failure: '%s' (%s:line %i) planeIndex (%zu) is too large for unsigned 8-bit integer.", "!overflow", "findPlaneNearPoint", 133, v60);
        _os_crash("assertion failure: (!overflow) planeIndex (%zu) is too large for unsigned 8-bit integer.", v168);
        __break(1u);
LABEL_233:
        v237.i64[0] = 0;
        v244 = 0u;
        v243 = 0u;
        v242 = 0u;
        v241 = 0u;
        v240 = 0u;
        v132 = MEMORY[0x1E69E9C10];
        v133 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v254 = 136315906;
        *&v254[4] = "operator[]";
        *&v254[12] = 1024;
        if (v133)
        {
          v134 = 3;
        }

        else
        {
          v134 = 2;
        }

        *&v254[14] = 797;
        *&v254[18] = 2048;
        *&v254[20] = v33;
        v255 = 2048;
        *v256 = v8;
        _os_log_send_and_compose_impl(v134, &v237, &v240, 80, &dword_1E1C61000, v132, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v254, 38, v169, v170);
        _os_crash_msg();
        __break(1u);
LABEL_237:
        v237.i64[0] = 0;
        v244 = 0u;
        v243 = 0u;
        v242 = 0u;
        v241 = 0u;
        v240 = 0u;
        v135 = MEMORY[0x1E69E9C10];
        v136 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v254 = 136315906;
        *&v254[4] = "operator[]";
        *&v254[12] = 1024;
        if (v136)
        {
          v137 = 3;
        }

        else
        {
          v137 = 2;
        }

        *&v254[14] = 797;
        *&v254[18] = 2048;
        *&v254[20] = v33;
        v255 = 2048;
        *v256 = v36;
        _os_log_send_and_compose_impl(v137, &v237, &v240, 80, &dword_1E1C61000, v135, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v254, 38, v169, v170);
        _os_crash_msg();
        __break(1u);
LABEL_241:
        *v254 = 0;
        v244 = 0u;
        v243 = 0u;
        v242 = 0u;
        v241 = 0u;
        v240 = 0u;
        v138 = MEMORY[0x1E69E9C10];
        v139 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v245) = 136315906;
        *(v10 + 4) = "operator[]";
        WORD2(v246) = 1024;
        if (v139)
        {
          v140 = 3;
        }

        else
        {
          v140 = 2;
        }

        *(v10 + 14) = 797;
        WORD1(v247) = 2048;
        *(v10 + 20) = v37;
        v249 = 2048;
        *(v10 + 30) = v33;
        _os_log_send_and_compose_impl(v140, v254, &v240, 80, &dword_1E1C61000, v138, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v245, 38, v169, v170);
        _os_crash_msg();
        __break(1u);
LABEL_245:
        *v217 = 0;
        v244 = 0u;
        v243 = 0u;
        v242 = 0u;
        v241 = 0u;
        v240 = 0u;
        v141 = MEMORY[0x1E69E9C10];
        v142 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v221 = 136315906;
        *&v221[4] = "operator[]";
        *&v221[12] = 1024;
        if (v142)
        {
          v143 = 3;
        }

        else
        {
          v143 = 2;
        }

        *&v221[14] = 789;
        *&v221[18] = 2048;
        *&v221[20] = v7;
        *&v221[28] = 2048;
        *&v221[30] = v36;
        _os_log_send_and_compose_impl(v143, v217, &v240, 80, &dword_1E1C61000, v141, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v221, 38, v169, v170);
        _os_crash_msg();
        __break(1u);
LABEL_249:
        v237.i64[0] = 0;
        v244 = 0u;
        v243 = 0u;
        v242 = 0u;
        v241 = 0u;
        v240 = 0u;
        v144 = MEMORY[0x1E69E9C10];
        v145 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v254 = 136315906;
        *&v254[4] = "operator[]";
        *&v254[12] = 1024;
        if (v145)
        {
          v146 = 3;
        }

        else
        {
          v146 = 2;
        }

        *&v254[14] = 797;
        *&v254[18] = 2048;
        *&v254[20] = v33;
        v255 = 2048;
        *v256 = v36;
        _os_log_send_and_compose_impl(v146, &v237, &v240, 80, &dword_1E1C61000, v144, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v254, 38, v169, v170);
        _os_crash_msg();
        __break(1u);
LABEL_253:
        *v254 = 0;
        v244 = 0u;
        v243 = 0u;
        v242 = 0u;
        v241 = 0u;
        v240 = 0u;
        v147 = MEMORY[0x1E69E9C10];
        v148 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v245) = 136315906;
        *(v10 + 4) = "operator[]";
        WORD2(v246) = 1024;
        if (v148)
        {
          v149 = 3;
        }

        else
        {
          v149 = 2;
        }

        *(v10 + 14) = 797;
        WORD1(v247) = 2048;
        *(v10 + 20) = v7;
        v249 = 2048;
        *(v10 + 30) = v33;
        _os_log_send_and_compose_impl(v149, v254, &v240, 80, &dword_1E1C61000, v147, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v245, 38, v169, v170);
        _os_crash_msg();
        __break(1u);
LABEL_257:
        *v217 = 0;
        v244 = 0u;
        v243 = 0u;
        v242 = 0u;
        v241 = 0u;
        v240 = 0u;
        v150 = MEMORY[0x1E69E9C10];
        v151 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v221 = 136315906;
        *&v221[4] = "operator[]";
        *&v221[12] = 1024;
        if (v151)
        {
          v152 = 3;
        }

        else
        {
          v152 = 2;
        }

        *&v221[14] = 789;
        *&v221[18] = 2048;
        *&v221[20] = v10;
        *&v221[28] = 2048;
        *&v221[30] = v36;
        _os_log_send_and_compose_impl(v152, v217, &v240, 80, &dword_1E1C61000, v150, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v221, 38, v169, v170);
        _os_crash_msg();
        __break(1u);
        goto LABEL_261;
      }

      v10 = *&v217[4 * v89];
      if (v10 >= v85)
      {
        goto LABEL_220;
      }

      v92 = vsubq_f32(*(v84 + 16 * v33), *(v84 + 16 * v10));
      v93 = vmulq_f32(v92, v92);
      if ((v93.f32[2] + vaddv_f32(*v93.f32)) < (v83 * v83))
      {
        break;
      }

      if (v90 == ++v89)
      {
        v88 = (v88 + 4);
        v33 = v173;
        if (v88 == (v81 + 4 * v82))
        {
          goto LABEL_156;
        }

        goto LABEL_121;
      }
    }

    v33 = v173;
    re::internal::extractMeshFromFaceSubset(v176, v81, v82, v173, v221);
    {
      re::GeomMesh::~GeomMesh(v221);
LABEL_156:
      v77 = v174;
      goto LABEL_178;
    }

    v94.i32[0] = *v175;
    v178 = v94;
    memset(v254, 0, sizeof(v254));
    v259 = 0;
    *&v256[2] = 0u;
    v257 = 0u;
    v258 = 0;
    re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(v254, v221);
    bzero(&v245, 0x2D0uLL);
    re::DynamicArray<re::BlendNode>::setCapacity(&v247, 1uLL);
    ++v251;
    re::internal::GeomAttributeManager::GeomAttributeManager(v253);
    re::internal::GeomAttributeManager::addAttribute(v253, "vertexPosition", 1, 7);
    v96 = *&v254[16];
    v77 = v174;
    if (!*&v254[16])
    {
      goto LABEL_157;
    }

    v10 = 0;
    v97 = 0;
    v98 = vdup_lane_s32(v178, 0);
    do
    {
      v239.i64[0] = 0;
      v238.i64[0] = 0;
      v237 = 0uLL;
      v238.i32[2] = 0;
      re::internal::ExtractMeshConnectedComponents::facesInComponent(v254, v97, &v237);
      MeshFromFaceSubset = re::internal::extractMeshFromFaceSubset(v221, v239.i64[0], v238.i64[0], v173, &v240);
      if (v237.i64[0] && v239.i64[0])
      {
        (*(*v237.i64[0] + 40))(MeshFromFaceSubset);
      }

      re::computeOrientedBoundingBox(&v240, &v237);
      v100 = vmulq_f32(v237, v237);
      *v100.i8 = vadd_f32(*v100.i8, *&vextq_s8(v100, v100, 8uLL));
      v101 = vmulq_f32(v238, v238);
      *v101.i8 = vadd_f32(*v101.i8, *&vextq_s8(v101, v101, 8uLL));
      v102 = vmulq_f32(v239, v239);
      *v102.i32 = sqrtf(vaddv_f32(vadd_f32(*v102.i8, *&vextq_s8(v102, v102, 8uLL))));
      *v100.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*v101.i8, *v100.i8), vzip2_s32(*v101.i8, *v100.i8)));
      *v100.i8 = vcgt_f32(v98, vadd_f32(*v100.i8, *v100.i8));
      v103 = (v100.i8[0] & 1) - v100.i32[1];
      if ((*v102.i32 + *v102.i32) < *v178.i32)
      {
        ++v103;
      }

      if (v103 > 1)
      {
        goto LABEL_150;
      }

      v215[0] = v221;
      v215[1] = re::GeomMesh::accessVertexPositions(v221);
      v216 = v104;
      if (v222)
      {
        v105 = 0;
        v106 = 0.0;
        do
        {
          re::internal::FaceEvaluator::computeFaceAreaWeightedNormal(v215, v105);
          v108.i64[0] = v107;
          v108.i64[1] = v109;
          v110 = vmulq_f32(v108, v108);
          v106 = v106 + sqrtf(v110.f32[2] + vaddv_f32(*v110.f32));
          ++v105;
        }

        while (v105 < v222);
      }

      else
      {
        v106 = 0.0;
      }

      if (v106 >= (*v178.i32 * *v178.i32))
      {
        re::GeomMeshBuilder::appendMesh(&v245, &v240);
      }

      else
      {
LABEL_150:
        v10 = 1;
      }

      re::GeomMesh::~GeomMesh(&v240);
      ++v97;
    }

    while (v97 != v96);
    if (v10)
    {
      re::GeomMesh::GeomMesh(v217, 0);
      re::GeomMesh::operator=(v217, &v246);
      re::GeomMesh::setName(v217, v245);
      re::GeomMesh::freeName(&v245);
    }

    else
    {
LABEL_157:
      *v217 = 0;
      *&v217[8] = 0;
      bzero(&v217[16], 0x2C8uLL);
      re::internal::GeomBaseMesh::GeomBaseMesh(&v217[16]);
      v220 = 0;
      re::GeomMesh::copy(v221, v217);
    }

    re::GeomMesh::freeName(&v245);
    re::internal::GeomAttributeManager::~GeomAttributeManager(v253);
    if (v247 && v252)
    {
      (*(*v247 + 40))();
    }

    if (*&v256[10])
    {
      if (v259)
      {
        (*(**&v256[10] + 40))();
      }

      v259 = 0;
      v257 = 0uLL;
      *&v256[10] = 0;
      ++v258;
    }

    if (*v254 && *&v256[2])
    {
      (*(**v254 + 40))();
    }

    re::GeomMesh::operator=(v221, v217);
    re::GeomMesh::~GeomMesh(v217);
    if (v173)
    {
      v111 = v214;
      if (v214 != -1)
      {
        v112 = re::GeomMesh::addAttribute(v221, v173, 2, 2);
        if (v112)
        {
          v113 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v112);
          v115 = v222;
          if (v222)
          {
            v36 = v114;
            v116 = v114;
            while (v116)
            {
              *v113++ = v111;
              --v116;
              if (!--v115)
              {
                goto LABEL_175;
              }
            }

LABEL_261:
            v245 = 0;
            v244 = 0u;
            v243 = 0u;
            v242 = 0u;
            v241 = 0u;
            v240 = 0u;
            v153 = MEMORY[0x1E69E9C10];
            v154 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v217 = 136315906;
            *&v217[4] = "operator[]";
            *&v217[12] = 1024;
            if (v154)
            {
              v155 = 3;
            }

            else
            {
              v155 = 2;
            }

            *&v217[14] = 621;
            *&v217[18] = 2048;
            *&v217[20] = v36;
            v218 = 2048;
            *v219 = v36;
            _os_log_send_and_compose_impl(v155, &v245, &v240, 80, &dword_1E1C61000, v153, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v169, v170);
            _os_crash_msg();
            __break(1u);
LABEL_265:
            *v217 = 0;
            v244 = 0u;
            v243 = 0u;
            v242 = 0u;
            v241 = 0u;
            v240 = 0u;
            v156 = MEMORY[0x1E69E9C10];
            v157 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v221 = 136315906;
            *&v221[4] = "operator[]";
            *&v221[12] = 1024;
            if (v157)
            {
              v158 = 3;
            }

            else
            {
              v158 = 2;
            }

            *&v221[14] = 789;
            *&v221[18] = 2048;
            *&v221[20] = v7;
            *&v221[28] = 2048;
            *&v221[30] = v36;
            _os_log_send_and_compose_impl(v158, v217, &v240, 80, &dword_1E1C61000, v156, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v221, 38, v169, v170);
            _os_crash_msg();
            __break(1u);
LABEL_269:
            v245 = 0;
            v244 = 0u;
            v243 = 0u;
            v242 = 0u;
            v241 = 0u;
            v240 = 0u;
            v159 = MEMORY[0x1E69E9C10];
            v160 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v221 = 136315906;
            *&v221[4] = "operator[]";
            *&v221[12] = 1024;
            if (v160)
            {
              v161 = 3;
            }

            else
            {
              v161 = 2;
            }

            *&v221[14] = 797;
            *&v221[18] = 2048;
            *&v221[20] = v33;
            *&v221[28] = 2048;
            *&v221[30] = v36;
            _os_log_send_and_compose_impl(v161, &v245, &v240, 80, &dword_1E1C61000, v159, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v221, 38, v169, v170);
            _os_crash_msg();
            __break(1u);
LABEL_273:
            v237.i64[0] = 0;
            v244 = 0u;
            v243 = 0u;
            v242 = 0u;
            v241 = 0u;
            v240 = 0u;
            v162 = MEMORY[0x1E69E9C10];
            v163 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v254 = 136315906;
            *&v254[4] = "operator[]";
            *&v254[12] = 1024;
            if (v163)
            {
              v164 = 3;
            }

            else
            {
              v164 = 2;
            }

            *&v254[14] = 789;
            *&v254[18] = 2048;
            *&v254[20] = v37;
            v255 = 2048;
            *v256 = v36;
            _os_log_send_and_compose_impl(v164, &v237, &v240, 80, &dword_1E1C61000, v162, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v254, 38, v169, v170);
            _os_crash_msg();
            __break(1u);
LABEL_277:
            *v254 = 0;
            v244 = 0u;
            v243 = 0u;
            v242 = 0u;
            v241 = 0u;
            v240 = 0u;
            v165 = MEMORY[0x1E69E9C10];
            v166 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v245) = 136315906;
            *(v10 + 4) = "removeAt";
            WORD2(v246) = 1024;
            if (v166)
            {
              v167 = 3;
            }

            else
            {
              v167 = 2;
            }

            *(v10 + 14) = 931;
            WORD1(v247) = 2048;
            *(v10 + 20) = v36;
            v249 = 2048;
            *(v10 + 30) = v37;
            _os_log_send_and_compose_impl(v167, v254, &v240, 80, &dword_1E1C61000, v165, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v245, 38, v169, v170);
            _os_crash_msg();
            __break(1u);
          }
        }
      }
    }

LABEL_175:
    re::GeomMeshBuilder::appendMesh(&v208, v221);
    re::GeomMesh::~GeomMesh(v221);
LABEL_176:
    v36 = v188;
    if (v188 <= v7)
    {
      goto LABEL_265;
    }

    *(v190 + v7) = 0;
    v78 = 1;
LABEL_178:
    if (v179[0] && v182)
    {
      (*(*v179[0] + 40))();
    }

    ++v7;
  }

  while (v7 != v77);
  v7 = v176;
  if ((v78 & 1) == 0)
  {
LABEL_192:
    *v172 = 0;
    *(v172 + 2) = 0;
    bzero(v172 + 16, 0x2C8uLL);
    re::internal::GeomBaseMesh::GeomBaseMesh((v172 + 16));
    *(v172 + 91) = 0;
    re::GeomMesh::copy(v7, v172);
    goto LABEL_193;
  }

  v10 = 0;
  do
  {
    v36 = v188;
    if (v188 <= v10)
    {
      goto LABEL_257;
    }

    if (*(v190 + v10) == 1)
    {
      *&v221[32] = 0;
      memset(v221, 0, 28);
      re::internal::ExtractMeshConnectedComponents::facesInComponent(v192, v10, v221);
      v117 = re::internal::extractMeshFromFaceSubset(v176, *&v221[32], *&v221[16], v33, &v240);
      if (*v221 && *&v221[32])
      {
        (*(**v221 + 40))(v117);
      }

      re::GeomMeshBuilder::appendMesh(&v208, &v240);
      re::GeomMesh::~GeomMesh(&v240);
    }

    ++v10;
  }

  while (v77 != v10);
  v118 = re::GeomMesh::GeomMesh(v172, 0);
  v119 = re::GeomMesh::operator=(v118, &v209);
  re::GeomMesh::setName(v119, v208);
  re::GeomMesh::freeName(&v208);
LABEL_193:
  if (v183[0] && v186)
  {
    (*(*v183[0] + 40))();
  }

  if (v187[0] && v190)
  {
    (*(*v187[0] + 40))();
  }

  if (*(&v195 + 1))
  {
    if (v198)
    {
      (*(**(&v195 + 1) + 40))();
    }

    v198 = 0;
    v196 = 0uLL;
    *(&v195 + 1) = 0;
    ++v197;
  }

  if (v192[0] && v195)
  {
    (*(*v192[0] + 40))();
  }

  if (v199[0] && v201)
  {
    (*(*v199[0] + 40))();
  }

  if (v202[0] && v204)
  {
    (*(*v202[0] + 40))();
  }

  re::GeomMesh::freeName(&v208);
  re::internal::GeomAttributeManager::~GeomAttributeManager(v213);
  result = v210;
  if (v210)
  {
    if (v212)
    {
      return (*(*v210 + 40))();
    }
  }

  return result;
}

BOOL re::internal::removeSmallAndThinFeatures(re::GeomMesh const&,re::GeomMesh const&,re::internal::RemoveThinFeatureOptions const&)::$_0::operator()(re::GeomMesh **a1, unsigned int *a2, uint64_t a3, float a4, float a5)
{
  v52 = a2;
  v69 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v9[2] = 0;
  ++*(v9 + 6);
  v10 = *(a1[1] + 4);
  LOBYTE(v64) = 0;
  re::DynamicArray<BOOL>::resize(v9, v10, &v64);
  v11 = a1[2];
  *(v11 + 2) = 0;
  ++*(v11 + 6);
  v12 = re::GeomMesh::accessVertexPositions(a1[1]);
  v53 = a3;
  if (!a3)
  {
    goto LABEL_13;
  }

  v14 = v12;
  v15 = v13;
  v16 = v52;
  do
  {
    v17 = *v16;
    v18 = a1[1];
    v19 = *(v18 + 5);
    if (v19 <= v17)
    {
      goto LABEL_33;
    }

    v19 = 0;
    v55 = *(*(v18 + 7) + 16 * v17);
    if (HIDWORD(v55) == -1)
    {
      v20 = 3;
    }

    else
    {
      v20 = 4;
    }

    do
    {
      v17 = *(&v55 + v19);
      v21 = *(*a1 + 2);
      if (v21 <= v17)
      {
        v54 = 0;
        v68 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v43 = MEMORY[0x1E69E9C10];
        v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v56 = 136315906;
        v57 = "operator[]";
        v58 = 1024;
        if (v44)
        {
          v45 = 3;
        }

        else
        {
          v45 = 2;
        }

        v59 = 789;
        v60 = 2048;
        v61 = v17;
        v62 = 2048;
        v63 = v21;
        _os_log_send_and_compose_impl(v45, &v54, &v64, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v56, 38, v52, v53);
        _os_crash_msg();
        __break(1u);
LABEL_29:
        v54 = 0;
        v68 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v46 = MEMORY[0x1E69E9C10];
        v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v56 = 136315906;
        v57 = "operator[]";
        v58 = 1024;
        if (v47)
        {
          v48 = 3;
        }

        else
        {
          v48 = 2;
        }

        v59 = 613;
        v60 = 2048;
        v61 = v17;
        v62 = 2048;
        v63 = v15;
        _os_log_send_and_compose_impl(v48, &v54, &v64, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v56, 38, v52, v53);
        _os_crash_msg();
        __break(1u);
LABEL_33:
        *&v55 = 0;
        v68 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v49 = MEMORY[0x1E69E9C10];
        v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v56 = 136315906;
        v57 = "operator[]";
        v58 = 1024;
        if (v50)
        {
          v51 = 3;
        }

        else
        {
          v51 = 2;
        }

        v59 = 797;
        v60 = 2048;
        v61 = v17;
        v62 = 2048;
        v63 = v19;
        _os_log_send_and_compose_impl(v51, &v55, &v64, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v56, 38, v52, v53);
        _os_crash_msg();
        __break(1u);
      }

      v22 = *(*a1 + 4);
      if ((*(v22 + v17) & 1) == 0)
      {
        *(v22 + v17) = 1;
        if (v17 >= v15)
        {
          goto LABEL_29;
        }

        re::DynamicArray<re::Vector3<float>>::add(a1[2], (v14 + 16 * v17));
      }

      ++v19;
    }

    while (v20 != v19);
    ++v16;
  }

  while (v16 != &v52[v53]);
LABEL_13:
  MEMORY[0x1E69070C0](*(a1[2] + 2), *(a1[2] + 4));
  result = 1;
  if (v53)
  {
    v27 = vmulq_f32(v23, v23);
    *v27.i8 = vadd_f32(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
    _Q1 = vmulq_f32(v24, v24);
    *_Q1.i8 = vadd_f32(*_Q1.i8, *&vextq_s8(_Q1, _Q1, 8uLL));
    *v27.i8 = vadd_f32(vzip1_s32(*v27.i8, *_Q1.i8), vzip2_s32(*v27.i8, *_Q1.i8));
    __asm { FMOV            V1.2S, #4.0 }

    *v27.i8 = vmul_f32(*v27.i8, *_Q1.i8);
    v31 = vmulq_f32(v25, v25);
    v32 = (vaddv_f32(vadd_f32(*v31.i8, *&vextq_s8(v31, v31, 8uLL))) * 4.0) + vaddv_f32(*v27.i8);
    if (vmuls_lane_f32(*v27.i32, *v27.i8, 1) >= (a5 * a5) && v32 >= (a4 * a4))
    {
      v34 = v52;
      v35 = 4 * v53 - 4;
      v36 = 0.0;
      do
      {
        v37 = *v34++;
        re::internal::FaceEvaluator::computeFaceAreaWeightedNormal(a1[3], v37);
        v39.i64[0] = v38;
        v39.i64[1] = v40;
        v41 = vmulq_f32(v39, v39);
        v36 = v36 + sqrtf(v41.f32[2] + vaddv_f32(*v41.f32));
        result = v36 <= a5;
        _ZF = v36 > a5 || v35 == 0;
        v35 -= 4;
      }

      while (!_ZF);
    }
  }

  return result;
}

void re::internal::ExtractMeshConnectedComponents::facesInComponent(void *a1, unsigned int a2, uint64_t a3)
{
  v38 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = a2 - 1;
    v6 = a1[2];
    if (v6 <= v5)
    {
      goto LABEL_26;
    }

    v7 = *(a1[4] + 4 * v5);
  }

  else
  {
    v7 = 0;
    v6 = a1[2];
  }

  v5 = a2;
  if (v6 <= a2)
  {
LABEL_22:
    v24 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v28 = 797;
    v29 = 2048;
    v30 = v5;
    v31 = 2048;
    v32 = v6;
    _os_log_send_and_compose_impl(v19, &v24, &v33, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
    _os_crash_msg();
    __break(1u);
LABEL_26:
    v24 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v20 = MEMORY[0x1E69E9C10];
    v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    if (v21)
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    v28 = 797;
    v29 = 2048;
    v30 = v5;
    v31 = 2048;
    v32 = v6;
    _os_log_send_and_compose_impl(v22, &v24, &v33, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
    _os_crash_msg();
    __break(1u);
  }

  v8 = *(a1[4] + 4 * a2);
  re::DynamicArray<float>::resize(a3, v8 - v7);
  if (v8 > v7)
  {
    v5 = 0;
    v6 = a1[7];
    v9 = *(a3 + 16);
    v10 = *(a3 + 32);
    if (v6 <= v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = a1[7];
    }

    while (v11 - v7 != v5)
    {
      if (v9 <= v5)
      {
        goto LABEL_18;
      }

      *(v10 + 4 * v5) = *(a1[9] + 4 * v7 + 4 * v5);
      if (v8 - v7 == ++v5)
      {
        return;
      }
    }

    v24 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v12 = MEMORY[0x1E69E9C10];
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v28 = 797;
    v29 = 2048;
    v30 = v11;
    v31 = 2048;
    v32 = v6;
    _os_log_send_and_compose_impl(v13, &v24, &v33, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
    _os_crash_msg();
    __break(1u);
LABEL_18:
    v24 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    if (v15)
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v28 = 789;
    v29 = 2048;
    v30 = v5;
    v31 = 2048;
    v32 = v9;
    _os_log_send_and_compose_impl(v16, &v24, &v33, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }
}

uint64_t re::internal::ExtractMeshConnectedComponents::componentHasOneMaterial(re::internal::ExtractMeshConnectedComponents *this, unint64_t a2, const re::GeomMesh *a3, const char *a4, unsigned int *a5)
{
  v52 = *MEMORY[0x1E69E9840];
  *a5 = -1;
  if (a4)
  {
    v9 = re::internal::GeomAttributeManager::attributeByName((a3 + 64), a4);
    if (v9)
    {
      v10 = re::GeomAttribute::accessValues<int>(v9);
      LODWORD(v12) = v11;
      if (a2)
      {
        v13 = (a2 - 1);
        v14 = *(this + 2);
        if (v14 <= v13)
        {
          goto LABEL_40;
        }

        v15 = *(*(this + 4) + 4 * v13);
      }

      else
      {
        v15 = 0;
        v14 = *(this + 2);
      }

      v13 = a2;
      if (v14 <= a2)
      {
        goto LABEL_36;
      }

      v16 = *(*(this + 4) + 4 * a2);
      a2 = v15;
      for (i = v15 + 1; i < v16; ++i)
      {
        v14 = *(this + 7);
        if (v14 <= v15)
        {
          v38 = 0;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v47 = 0u;
          v12 = MEMORY[0x1E69E9C10];
          v39 = 136315906;
          v40 = "operator[]";
          v41 = 1024;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v20 = 3;
          }

          else
          {
            v20 = 2;
          }

          v42 = 797;
          v43 = 2048;
          v44 = a2;
          v45 = 2048;
          v46 = v14;
          _os_log_send_and_compose_impl(v20, &v38, &v47, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v39, 38, v37);
          _os_crash_msg();
          __break(1u);
LABEL_24:
          v38 = 0;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v47 = 0u;
          v21 = MEMORY[0x1E69E9C10];
          v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v39 = 136315906;
          v40 = "operator[]";
          v41 = 1024;
          if (v22)
          {
            v23 = 3;
          }

          else
          {
            v23 = 2;
          }

          v42 = 613;
          v43 = 2048;
          v44 = v13;
          v45 = 2048;
          v46 = v12;
          _os_log_send_and_compose_impl(v23, &v38, &v47, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v39, 38, v37);
          _os_crash_msg();
          __break(1u);
LABEL_28:
          v38 = 0;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v47 = 0u;
          v12 = MEMORY[0x1E69E9C10];
          v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v39 = 136315906;
          v40 = "operator[]";
          v41 = 1024;
          if (v24)
          {
            v25 = 3;
          }

          else
          {
            v25 = 2;
          }

          v42 = 797;
          v43 = 2048;
          v44 = v5;
          v45 = 2048;
          v46 = v14;
          _os_log_send_and_compose_impl(v25, &v38, &v47, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v39, 38, v37);
          _os_crash_msg();
          __break(1u);
LABEL_32:
          v38 = 0;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v47 = 0u;
          v26 = MEMORY[0x1E69E9C10];
          v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v39 = 136315906;
          v40 = "operator[]";
          v41 = 1024;
          if (v27)
          {
            v28 = 3;
          }

          else
          {
            v28 = 2;
          }

          v42 = 613;
          v43 = 2048;
          v44 = v14;
          v45 = 2048;
          v46 = v12;
          _os_log_send_and_compose_impl(v28, &v38, &v47, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v39, 38, v37);
          _os_crash_msg();
          __break(1u);
LABEL_36:
          v38 = 0;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v47 = 0u;
          v29 = MEMORY[0x1E69E9C10];
          v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v39 = 136315906;
          v40 = "operator[]";
          v41 = 1024;
          if (v30)
          {
            v31 = 3;
          }

          else
          {
            v31 = 2;
          }

          v42 = 797;
          v43 = 2048;
          v44 = v13;
          v45 = 2048;
          v46 = v14;
          _os_log_send_and_compose_impl(v31, &v38, &v47, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v39, 38, v37);
          _os_crash_msg();
          __break(1u);
LABEL_40:
          v38 = 0;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v47 = 0u;
          v12 = MEMORY[0x1E69E9C10];
          v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v39 = 136315906;
          v40 = "operator[]";
          v41 = 1024;
          if (v32)
          {
            v33 = 3;
          }

          else
          {
            v33 = 2;
          }

          v42 = 797;
          v43 = 2048;
          v44 = v13;
          v45 = 2048;
          v46 = v14;
          _os_log_send_and_compose_impl(v33, &v38, &v47, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v39, 38, v37);
          _os_crash_msg();
          __break(1u);
LABEL_44:
          v38 = 0;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v47 = 0u;
          v34 = MEMORY[0x1E69E9C10];
          v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v39 = 136315906;
          v40 = "operator[]";
          v41 = 1024;
          if (v35)
          {
            v36 = 3;
          }

          else
          {
            v36 = 2;
          }

          v42 = 613;
          v43 = 2048;
          v44 = a2;
          v45 = 2048;
          v46 = v12;
          _os_log_send_and_compose_impl(v36, &v38, &v47, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v39, 38, v37);
          _os_crash_msg();
          __break(1u);
        }

        v18 = *(this + 9);
        v13 = *(v18 + 4 * v15);
        if (v13 >= v11)
        {
          goto LABEL_24;
        }

        v5 = i;
        if (v14 <= i)
        {
          goto LABEL_28;
        }

        v14 = *(v18 + 4 * i);
        if (v14 >= v11)
        {
          goto LABEL_32;
        }

        if (*(v10 + 4 * v13) != *(v10 + 4 * v14))
        {
          return 0;
        }
      }

      if (v15 >= v11)
      {
        goto LABEL_44;
      }

      *a5 = *(v10 + 4 * v15);
    }
  }

  return 1;
}