unint64_t re::BucketArray<re::CachedMetalFunction,64ul>::operator[](uint64_t a1, unint64_t a2)
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

  v2 = a2 >> 6;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 6)
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

  return *(v5 + 8 * v2) + 8 * (a2 & 0x3F);
}

_anonymous_namespace_ *re::BucketArray<re::CachedMetalFunction,64ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < a2 << 6)
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
    result = re::BucketArray<re::CachedMetalFunction,64ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

uint64_t *re::shadowLogObjects(re *this)
{
  {
    re::shadowLogObjects(void)::logObjects = os_log_create("com.apple.re", "Shadow");
  }

  return &re::shadowLogObjects(void)::logObjects;
}

uint64_t re::DataArray<re::TextureAtlasTile>::deinit(uint64_t result)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(result + 44))
  {
    v1 = result;
    v2 = re::DataArray<re::TextureAtlasTile>::clear(result);
    if (!v1[2])
    {
      v7 = 0;
      memset(v16, 0, sizeof(v16));
      v4 = MEMORY[0x1E69E9C10];
      v8 = 136315906;
      v9 = "operator[]";
      v10 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v5 = 3;
      }

      else
      {
        v5 = 2;
      }

      v11 = 789;
      v12 = 2048;
      v13 = 0;
      v14 = 2048;
      v15 = 0;
      _os_log_send_and_compose_impl(v5, &v7, v16, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v8, 38, v6);
      _os_crash_msg();
      __break(1u);
    }

    v3 = v1[4];
    (*(**v1 + 40))(*v1, *v3, v2);
    (*(**v1 + 40))(*v1, v3[1]);
    result = re::DynamicArray<unsigned long>::deinit(v1);
    *(v1 + 11) = 0;
  }

  return result;
}

unint64_t re::TextureAtlas::requestTile(re::TextureAtlas *this, int a2, int a3, float a4)
{
  v7 = a3;
  v8 = a2;
  v6 = a4;
  if (!*(this + 13))
  {
    *(this + 1) = *(this + 11);
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(this + 1, 0);
    ++*(this + 8);
    *(this + 13) = 32;
    re::DataArray<re::TextureAtlasTile>::allocBlock((this + 8));
    re::DataArray<re::TextureAtlasTile>::clear(this + 1);
  }

  return re::DataArray<re::TextureAtlasTile>::create<unsigned int &,unsigned int &,float &>(this + 8, &v8, &v7, &v6);
}

double re::DataArray<re::TextureAtlasTile>::clear(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v24, a1, 0);
  if (*&v24[0] != a1 || DWORD2(v24[0]) != 0xFFFFFFFFLL)
  {
    do
    {
      v3 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(v24);
      re::DataArray<re::TextureAtlasTile>::destroy(a1, v3);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(v24);
    }

    while (*&v24[0] != a1 || WORD4(v24[0]) != 0xFFFF || WORD5(v24[0]) != 0xFFFF);
  }

  v6 = a1[2];
  v7 = v6 - 1;
  if (v6 != 1)
  {
    v8 = 16 * v6;
    do
    {
      v9 = a1[2];
      if (v9 <= v7)
      {
        v15 = 0;
        memset(v24, 0, sizeof(v24));
        v12 = MEMORY[0x1E69E9C10];
        v16 = 136315906;
        v17 = "operator[]";
        v18 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v13 = 3;
        }

        else
        {
          v13 = 2;
        }

        v19 = 789;
        v20 = 2048;
        v21 = v7;
        v22 = 2048;
        v23 = v9;
        _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
        _os_crash_msg();
        __break(1u);
      }

      v10 = a1[4] + v8;
      (*(**a1 + 40))(*a1, *(v10 - 16));
      (*(**a1 + 40))(*a1, *(v10 - 8));
      re::DynamicArray<re::DataArray<re::RigGraphOperatorDefinition>::ElementBlock>::removeAt(a1, v7);
      v8 -= 16;
      --v7;
    }

    while (v7);
  }

  result = NAN;
  a1[6] = 0xFFFFFFFF00000000;
  return result;
}

unint64_t re::DataArray<re::TextureAtlasTile>::create<unsigned int &,unsigned int &,float &>(uint64_t a1, _DWORD *a2, int *a3, int *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 56);
  if ((v8 + 1) >> 24)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 + 1;
  }

  *(a1 + 56) = v9;
  v10 = *(a1 + 52);
  v11 = *(a1 + 54);
  if (v10 == 0xFFFF && v11 == 0xFFFF)
  {
    if (*(a1 + 48) >= *(a1 + 44))
    {
      re::DataArray<re::TextureAtlasTile>::allocBlock(a1);
    }

    v17 = *(a1 + 16);
    v11 = (v17 - 1);
    if (v17)
    {
      v10 = *(a1 + 48);
      if (v10 < 0x10000)
      {
        v18 = (*(a1 + 32) + 16 * v11);
        *(a1 + 48) = v10 + 1;
        v16 = *(a1 + 56);
        *(v18[1] + 4 * v10) = v16;
        v15 = *v18 + 24 * v10;
        goto LABEL_15;
      }

LABEL_24:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v10);
      _os_crash("assertion failure: (!overflow) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", v27);
      __break(1u);
    }

LABEL_20:
    v30 = 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v24 = MEMORY[0x1E69E9C10];
    v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v31 = 136315906;
    v32 = "operator[]";
    v33 = 1024;
    if (v25)
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    v34 = 789;
    v35 = 2048;
    v36 = v11;
    v37 = 2048;
    v38 = 0;
    _os_log_send_and_compose_impl(v26, &v30, &v39, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v31, 38, v28, v29);
    _os_crash_msg();
    __break(1u);
    goto LABEL_24;
  }

  v13 = *(a1 + 16);
  if (v13 <= v11)
  {
    v30 = 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v22 = MEMORY[0x1E69E9C10];
    v31 = 136315906;
    v32 = "operator[]";
    v33 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v34 = 789;
    v35 = 2048;
    v36 = v11;
    v37 = 2048;
    v38 = v13;
    _os_log_send_and_compose_impl(v23, &v30, &v39, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v31, 38, v28, v29);
    _os_crash_msg();
    __break(1u);
    goto LABEL_20;
  }

  v14 = (*(a1 + 32) + 16 * v11);
  *(v14[1] + 4 * v10) = v9;
  v15 = *v14 + 24 * v10;
  *(a1 + 52) = *v15;
  v16 = *(a1 + 56);
LABEL_15:
  ++*(a1 + 40);
  v19 = *a3;
  v20 = *a4;
  *v15 = *a2;
  *(v15 + 4) = v19;
  *(v15 + 8) = v20;
  *(v15 + 12) = 0;
  *(v15 + 16) = 0;
  *(v15 + 20) = -1;
  return ((v11 << 16) | ((v16 & 0xFFFFFF) << 32)) + v10;
}

uint64_t re::DataArray<re::TextureAtlasTile>::get(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = HIWORD(a2);
  v3 = *(a1 + 16);
  if (v3 <= HIWORD(a2))
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

    v12 = 797;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 32) + 16 * HIWORD(a2)) + 24 * a2;
}

_DWORD *re::DataArray<re::TextureAtlasTile>::destroy(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v20 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 16;
  result = re::DataArray<re::TextureAtlasTile>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (result)
  {
    v6 = *(a1 + 16);
    if (v6 <= HIWORD(v2))
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

      v14 = 789;
      v15 = 2048;
      v16 = HIWORD(v2);
      v17 = 2048;
      v18 = v6;
      _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *result = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }

  return result;
}

uint64_t re::TextureAtlas::allocateTiles(uint64_t this, unsigned int a2)
{
  v141 = *MEMORY[0x1E69E9840];
  if (!*(this + 48))
  {
    return this;
  }

  v2 = this;
  v3 = this + 8;
  v4 = *(this + 88);
  v119 = 0;
  v117 = 0uLL;
  v118 = 0;
  v116 = v4;
  re::DynamicArray<float *>::setCapacity(&v116, 0);
  v5 = ++v118;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v125, v3, 0);
  if (v3 == v125 && v126 == 0xFFFFFFFFLL)
  {
    v6 = v119;
    v7 = *(&v117 + 1);
  }

  else
  {
    v7 = *(&v117 + 1);
    do
    {
      v8 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v125);
      if (v7 >= v117)
      {
        re::DynamicArray<float *>::growCapacity(&v116, v7 + 1);
        v7 = *(&v117 + 1);
        v5 = v118;
      }

      v6 = v119;
      v119[v7++] = v8;
      *(&v117 + 1) = v7;
      v118 = ++v5;
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v125);
    }

    while (v125 != v3 || v126 != 0xFFFF || WORD1(v126) != 0xFFFF);
  }

  v125 = v2;
  v11 = 126 - 2 * __clz(v7);
  if (v7)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,false>(v6, (v6 + 8 * v7), &v125, v12, 1);
  v106 = 0;
  v104 = v2;
  do
  {
    v13 = *(v2 + 72);
    v110 = *(v2 + 76);
    v14 = *(v2 + 88);
    v113 = 0uLL;
    v114 = 0;
    v115 = 0;
    v112 = v14;
    re::DynamicArray<float *>::setCapacity(&v112, 0);
    v111 = ++v114;
    v15 = *(v2 + 88);
    v121 = 0;
    v122 = 0;
    v123 = 0;
    v124 = 0;
    v120 = v15;
    v18 = ++v123;
    if (v122 >= v121)
    {
      v19 = v122 + 1;
      if (v121 < v122 + 1)
      {
        if (v120)
        {
          v20 = 2 * v121;
          if (!v121)
          {
            v20 = 8;
          }

          if (v20 <= v19)
          {
            v21 = v122 + 1;
          }

          else
          {
            v21 = v20;
          }

          v18 = v123;
        }

        else
        {
          v18 = v123 + 1;
        }
      }
    }

    v22 = v124;
    v23 = v122;
    v24 = v124 + 28 * v122;
    *v24 = xmmword_1E3062D70;
    v25 = v110;
    *(v24 + 16) = v13;
    *(v24 + 20) = v110;
    *(v24 + 24) = 0;
    v26 = v23 + 1;
    v122 = v23 + 1;
    v123 = v18 + 1;
    if (!*(&v117 + 1))
    {
      goto LABEL_74;
    }

    v27 = v119;
    v28 = &v119[*(&v117 + 1)];
    v108 = v13;
    v107 = v28;
    do
    {
      v29 = re::DataArray<re::TextureAtlasTile>::get(v3, *v27);
      if (*v29 > v13 || v29[1] > v25)
      {
        goto LABEL_73;
      }

      if (!v26)
      {
        goto LABEL_123;
      }

      v31 = v29;
      v32 = 0;
      v33 = 0;
      v109 = *(v22 + 16);
      v34 = v26;
      while (1)
      {
        v35 = (v22 + 28 * v32);
        v36 = *v35;
        if (*v35 == -1)
        {
          break;
        }

        v37 = v33;
        if (v33 >= 0x40)
        {
          goto LABEL_95;
        }

        v33 = (v33 + 1);
        *(&v125 + v37) = v32;
        v32 = v36;
LABEL_41:
        if (v34 <= v32)
        {
          v127 = 0;
          v139 = 0u;
          v140 = 0u;
          v137 = 0u;
          v138 = 0u;
          v136 = 0u;
          v70 = MEMORY[0x1E69E9C10];
          v71 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v128 = 136315906;
          v129 = "operator[]";
          v130 = 1024;
          if (v71)
          {
            v72 = 3;
          }

          else
          {
            v72 = 2;
          }

          v131 = 789;
          v132 = 2048;
          v133 = v32;
          v134 = 2048;
          v135 = v34;
          _os_log_send_and_compose_impl(v72, &v127, &v136, 80, &dword_1E1C61000, v70, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v128, 38, v102, v103);
          _os_crash_msg();
          __break(1u);
LABEL_95:
          re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v37, 64);
          _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v94, v98);
          __break(1u);
LABEL_96:
          re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v33, 64);
          _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v95, v99);
          __break(1u);
LABEL_97:
          v127 = 0;
          v139 = 0u;
          v140 = 0u;
          v137 = 0u;
          v138 = 0u;
          v136 = 0u;
          v73 = MEMORY[0x1E69E9C10];
          v74 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v128 = 136315906;
          v129 = "operator[]";
          v130 = 1024;
          if (v74)
          {
            v75 = 3;
          }

          else
          {
            v75 = 2;
          }

          v131 = 789;
          v132 = 2048;
          v133 = v32;
          v134 = 2048;
          v135 = v34;
          _os_log_send_and_compose_impl(v75, &v127, &v136, 80, &dword_1E1C61000, v73, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v128, 38, v102, v103);
          _os_crash_msg();
          __break(1u);
LABEL_101:
          v127 = 0;
          v139 = 0u;
          v140 = 0u;
          v137 = 0u;
          v138 = 0u;
          v136 = 0u;
          v76 = MEMORY[0x1E69E9C10];
          v77 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v128 = 136315906;
          v129 = "operator[]";
          v130 = 1024;
          if (v77)
          {
            v78 = 3;
          }

          else
          {
            v78 = 2;
          }

          v131 = 789;
          v132 = 2048;
          v133 = v32;
          v134 = 2048;
          v135 = v26;
          _os_log_send_and_compose_impl(v78, &v127, &v136, 80, &dword_1E1C61000, v76, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v128, 38, v102, v103);
          _os_crash_msg();
          __break(1u);
LABEL_105:
          v127 = 0;
          v139 = 0u;
          v140 = 0u;
          v137 = 0u;
          v138 = 0u;
          v136 = 0u;
          v79 = MEMORY[0x1E69E9C10];
          v80 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v128 = 136315906;
          v129 = "operator[]";
          v130 = 1024;
          if (v80)
          {
            v81 = 3;
          }

          else
          {
            v81 = 2;
          }

          v131 = 789;
          v132 = 2048;
          v133 = v34;
          v134 = 2048;
          v135 = v26;
          _os_log_send_and_compose_impl(v81, &v127, &v136, 80, &dword_1E1C61000, v79, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v128, 38, v102, v103);
          _os_crash_msg();
          __break(1u);
LABEL_109:
          v127 = 0;
          v139 = 0u;
          v140 = 0u;
          v137 = 0u;
          v138 = 0u;
          v136 = 0u;
          v82 = MEMORY[0x1E69E9C10];
          v83 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v128 = 136315906;
          v129 = "operator[]";
          v130 = 1024;
          if (v83)
          {
            v84 = 3;
          }

          else
          {
            v84 = 2;
          }

          v131 = 789;
          v132 = 2048;
          v133 = v34;
          v134 = 2048;
          v135 = v26;
          _os_log_send_and_compose_impl(v84, &v127, &v136, 80, &dword_1E1C61000, v82, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v128, 38, v102, v103);
          _os_crash_msg();
          __break(1u);
LABEL_113:
          v127 = 0;
          v139 = 0u;
          v140 = 0u;
          v137 = 0u;
          v138 = 0u;
          v136 = 0u;
          v85 = MEMORY[0x1E69E9C10];
          v86 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v128 = 136315906;
          v129 = "operator[]";
          v130 = 1024;
          if (v86)
          {
            v87 = 3;
          }

          else
          {
            v87 = 2;
          }

          v131 = 789;
          v132 = 2048;
          v133 = v34;
          v134 = 2048;
          v135 = v26;
          _os_log_send_and_compose_impl(v87, &v127, &v136, 80, &dword_1E1C61000, v85, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v128, 38, v102, v103);
          _os_crash_msg();
          __break(1u);
LABEL_117:
          v127 = 0;
          v139 = 0u;
          v140 = 0u;
          v137 = 0u;
          v138 = 0u;
          v136 = 0u;
          v88 = MEMORY[0x1E69E9C10];
          v89 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v128 = 136315906;
          v129 = "operator[]";
          v130 = 1024;
          if (v89)
          {
            v90 = 3;
          }

          else
          {
            v90 = 2;
          }

          v131 = 789;
          v132 = 2048;
          v133 = v34;
          v134 = 2048;
          v135 = v26;
          _os_log_send_and_compose_impl(v90, &v127, &v136, 80, &dword_1E1C61000, v88, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v128, 38, v102, v103);
          _os_crash_msg();
          __break(1u);
LABEL_121:
          re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v55, 64);
          _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v96, v100);
          __break(1u);
LABEL_122:
          re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v55, 64);
          _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v97, v101);
          __break(1u);
LABEL_123:
          v127 = 0;
          v139 = 0u;
          v140 = 0u;
          v137 = 0u;
          v138 = 0u;
          v136 = 0u;
          v91 = MEMORY[0x1E69E9C10];
          v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v128 = 136315906;
          v129 = "operator[]";
          v130 = 1024;
          if (v92)
          {
            v93 = 3;
          }

          else
          {
            v93 = 2;
          }

          v131 = 789;
          v132 = 2048;
          v133 = 0;
          v134 = 2048;
          v135 = 0;
          _os_log_send_and_compose_impl(v93, &v127, &v136, 80, &dword_1E1C61000, v91, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v128, 38, v102, v103);
          _os_crash_msg();
          __break(1u);
LABEL_127:
          re::internal::assertLog(4, v17, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
          _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
          __break(1u);
        }
      }

      if ((v35[6] & 1) == 0)
      {
        v38 = v35[4];
        if (v38 == *v31 && v35[5] == v31[1])
        {
          *(v35 + 24) = 1;
          *(v31 + 10) = v106;
          v13 = v108;
          v31[3] = v35[2] + v109 * v106;
          v31[4] = v35[3];
          v25 = v110;
          v28 = v107;
          goto LABEL_73;
        }

        if (v38 >= *v31 && v35[5] >= v31[1])
        {
          v26 = v34 + 2;
          if (v34 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            if (v121 < v26)
            {
              v34 = v122;
            }

            v39 = v26 - v34;
            if (v26 > v34)
            {
              v40 = 28 * v39;
              if ((28 * v39) >= 1)
              {
                v41 = v124 + 28 * v34;
                v42 = v40 / 0x1C + 1;
                do
                {
                  *v41 = 0;
                  *(v41 + 8) = 0;
                  *(v41 + 24) = 0;
                  *(v41 + 16) = 0;
                  v41 += 28;
                  --v42;
                }

                while (v42 > 1);
              }
            }
          }

          v122 = v26;
          ++v123;
          if (v26 <= v32)
          {
            goto LABEL_101;
          }

          v22 = v124;
          v43 = (v124 + 28 * v32);
          v44 = vadd_s32(vdup_n_s32(v26), -2);
          *v43 = v44;
          v45 = *v31;
          v46 = v31[1];
          v48 = v43[2].u32[0];
          v47 = v43[2].u32[1];
          v34 = v44.i32[0];
          if ((v47 - v46) * *v31 >= (v48 - *v31) * v46)
          {
            if (v26 <= v44.i32[0])
            {
              goto LABEL_109;
            }

            v56 = v22 + 28 * v44.i32[0];
            v57 = v43[1].u32[0];
            v58 = v43[1].u32[1];
            *v56 = -1;
            v34 = v43->i32[1];
            *(v56 + 8) = v57;
            *(v56 + 12) = v58;
            *(v56 + 16) = v48;
            *(v56 + 20) = v46;
            *(v56 + 24) = 0;
            if (v26 <= v34)
            {
              goto LABEL_117;
            }

            v59 = v43[2].u32[0];
            v60 = v22 + 28 * v34;
            v61 = v58 + v46;
            v62 = v43[2].i32[1] - v46;
            *v60 = -1;
            *(v60 + 8) = v57;
            *(v60 + 12) = v61;
            *(v60 + 16) = v59;
            *(v60 + 20) = v62;
            *(v60 + 24) = 0;
            v55 = v33;
            if (v33 >= 0x40)
            {
              goto LABEL_122;
            }
          }

          else
          {
            if (v26 <= v44.i32[0])
            {
              goto LABEL_105;
            }

            v49 = v22 + 28 * v44.i32[0];
            v51 = v43[1].u32[0];
            v50 = v43[1].u32[1];
            *v49 = -1;
            v34 = v43->i32[1];
            *(v49 + 8) = v51;
            *(v49 + 12) = v50;
            *(v49 + 16) = v45;
            *(v49 + 20) = v47;
            *(v49 + 24) = 0;
            if (v26 <= v34)
            {
              goto LABEL_113;
            }

            v52 = v43[2].u32[0];
            v53 = v43[2].u32[1];
            v54 = v22 + 28 * v34;
            *v54 = -1;
            *(v54 + 8) = v51 + v45;
            *(v54 + 12) = v50;
            *(v54 + 16) = v52 - v45;
            *(v54 + 20) = v53;
            *(v54 + 24) = 0;
            v55 = v33;
            if (v33 >= 0x40)
            {
              goto LABEL_121;
            }
          }

          *(&v125 + v55) = v32;
          v33 = (v33 + 1);
          v32 = v43->u32[0];
          v34 = v26;
          goto LABEL_41;
        }
      }

      if (v33)
      {
        v33 = (v33 - 1);
        if (v33 >= 0x40)
        {
          goto LABEL_96;
        }

        v32 = *(&v125 + v33);
        if (v34 <= v32)
        {
          goto LABEL_97;
        }

        v32 = *(v22 + 28 * v32 + 4);
        goto LABEL_41;
      }

      *(v31 + 10) = -1;
      v31[3] = 0;
      v31[4] = 0;
      v63 = *(&v113 + 1);
      v64 = v111;
      v28 = v107;
      if (*(&v113 + 1) >= v113)
      {
        re::DynamicArray<float *>::growCapacity(&v112, *(&v113 + 1) + 1);
        v63 = *(&v113 + 1);
        v64 = v114;
      }

      v115[v63] = *v27;
      *(&v113 + 1) = v63 + 1;
      v111 = v64 + 1;
      v114 = v64 + 1;
      v13 = v108;
      v25 = v110;
LABEL_73:
      ++v27;
    }

    while (v27 != v28);
LABEL_74:
    if (v120 && v22)
    {
      (*(*v120 + 40))();
    }

    this = v116;
    v65 = v112;
    v2 = v104;
    if (v116 && v112 && v116 != v112)
    {
      goto LABEL_127;
    }

    v112 = v116;
    v66 = *(&v113 + 1);
    v67 = v117;
    v116 = v65;
    v117 = v113;
    v113 = v67;
    v68 = v119;
    v69 = v115;
    v119 = v115;
    ++v118;
    if (this && v68)
    {
      this = (*(*this + 40))(this);
    }

    ++v106;
  }

  while (v106 < a2 && v66);
  *(v104 + 80) = v106;
  if (v106)
  {
    *(v104 + 72) *= v106;
  }

  if (v65 && v69)
  {
    return (*(*v65 + 40))(v65, v69);
  }

  return this;
}

void *re::DynamicArray<anonymous namespace::PackNode>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (is_mul_ok(a2, 0x1CuLL))
        {
          v2 = 28 * a2;
          result = (*(*result + 32))(result, 28 * a2, 4);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 28 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 28, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
        __break(1u);
      }

      else
      {
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void re::DataArray<re::TextureAtlasTile>::allocBlock(_anonymous_namespace_ *a1)
{
  v2 = 24 * *(a1 + 11);
  v9.n128_u64[0] = (*(**a1 + 32))(*a1, v2, 0);
  if (v9.n128_u64[0])
  {
    v2 = 4 * *(a1 + 11);
    v9.n128_u64[1] = (*(**a1 + 32))(*a1, v2, 0);
    if (v9.n128_u64[1])
    {
      re::DynamicArray<re::RigNodeConstraint>::add(a1, &v9);
      *(a1 + 12) = 0;
      return;
    }
  }

  else
  {
    re::internal::assertLog(6, v3, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v2, *(*a1 + 8), 0);
    _os_crash("assertion failure: (block.elements) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v5, v7);
    __break(1u);
  }

  re::internal::assertLog(6, v4, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v2, *(*a1 + 8));
  _os_crash("assertion failure: (block.allocationCounters) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v6, v8);
  __break(1u);
}

uint64_t re::DataArray<re::TextureAtlasTile>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 24 * a2;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles(unsigned int)::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,false>(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v8 = result;
  while (2)
  {
    v9 = a2;
    v131 = a2 - 1;
    v10 = v8;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v8 = v10;
          v11 = v9 - v10;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:

                return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,0>(v10, v10 + 1, v131, a3);
              case 4:

                return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,0>(v10, v10 + 1, v10 + 2, v131, a3);
              case 5:

                return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,0>(v10, v10 + 1, v10 + 2, v10 + 3, v131, a3);
            }
          }

          else
          {
            if (v11 < 2)
            {
              return result;
            }

            v9 = a2;
            if (v11 == 2)
            {
              v65 = *a3;
              v66 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, *(a2 - 1)) + 8);
              result = re::DataArray<re::TextureAtlasTile>::get(v65 + 8, *v10);
              if (v66 < *(result + 8))
              {
                v67 = *v10;
                *v10 = *(a2 - 1);
                *(a2 - 1) = v67;
              }

              return result;
            }
          }

          if (v11 <= 23)
          {
            v68 = v10 + 1;
            v69 = v10 == v9 || v68 == v9;
            v70 = v69;
            if (a5)
            {
              if ((v70 & 1) == 0)
              {
                v71 = 0;
                v72 = v10;
                do
                {
                  v73 = v72;
                  v72 = v68;
                  v74 = *a3;
                  v75 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, v73[1]) + 8);
                  result = re::DataArray<re::TextureAtlasTile>::get(v74 + 8, *v73);
                  if (v75 < *(result + 8))
                  {
                    v76 = *v72;
                    v77 = v71;
                    while (1)
                    {
                      *(v10 + v77 + 8) = *(v10 + v77);
                      if (!v77)
                      {
                        break;
                      }

                      v78 = *a3;
                      v79 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, v76) + 8);
                      result = re::DataArray<re::TextureAtlasTile>::get(v78 + 8, *(v10 + v77 - 8));
                      v77 -= 8;
                      if (v79 >= *(result + 8))
                      {
                        v80 = (v10 + v77 + 8);
                        goto LABEL_85;
                      }
                    }

                    v80 = v10;
LABEL_85:
                    *v80 = v76;
                  }

                  v68 = v72 + 1;
                  v71 += 8;
                }

                while (v72 + 1 != a2);
              }
            }

            else if ((v70 & 1) == 0)
            {
              do
              {
                v121 = v8;
                v8 = v68;
                v122 = *a3;
                v123 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, v121[1]) + 8);
                result = re::DataArray<re::TextureAtlasTile>::get(v122 + 8, *v121);
                if (v123 < *(result + 8))
                {
                  v124 = *v8;
                  v125 = v8;
                  do
                  {
                    v126 = v125;
                    v127 = *--v125;
                    *v126 = v127;
                    v128 = *a3;
                    v129 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, v124) + 8);
                    result = re::DataArray<re::TextureAtlasTile>::get(v128 + 8, *(v126 - 2));
                  }

                  while (v129 < *(result + 8));
                  *v125 = v124;
                }

                v68 = v8 + 1;
              }

              while (v8 + 1 != a2);
            }

            return result;
          }

          if (!a4)
          {
            if (v10 != v9)
            {
              v81 = (v11 - 2) >> 1;
              v132 = v81;
              do
              {
                v82 = v81;
                if (v132 >= v81)
                {
                  v83 = (2 * v81) | 1;
                  v84 = &v8[v83];
                  if (2 * v81 + 2 < v11)
                  {
                    v85 = *a3;
                    v86 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, *v84) + 8);
                    if (v86 < *(re::DataArray<re::TextureAtlasTile>::get(v85 + 8, v84[1]) + 8))
                    {
                      ++v84;
                      v83 = 2 * v82 + 2;
                    }
                  }

                  v87 = &v8[v82];
                  v88 = *a3;
                  v89 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, *v84) + 8);
                  result = re::DataArray<re::TextureAtlasTile>::get(v88 + 8, *v87);
                  if (v89 >= *(result + 8))
                  {
                    v130 = v82;
                    v90 = *v87;
                    do
                    {
                      v91 = v87;
                      v87 = v84;
                      *v91 = *v84;
                      if (v132 < v83)
                      {
                        break;
                      }

                      v92 = 2 * v83;
                      v83 = (2 * v83) | 1;
                      v84 = &v8[v83];
                      v93 = v92 + 2;
                      if (v92 + 2 < v11)
                      {
                        v94 = *a3;
                        v95 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, *v84) + 8);
                        if (v95 < *(re::DataArray<re::TextureAtlasTile>::get(v94 + 8, v84[1]) + 8))
                        {
                          ++v84;
                          v83 = v93;
                        }
                      }

                      v96 = *a3;
                      v97 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, *v84) + 8);
                      result = re::DataArray<re::TextureAtlasTile>::get(v96 + 8, v90);
                    }

                    while (v97 >= *(result + 8));
                    *v87 = v90;
                    v82 = v130;
                  }
                }

                v81 = v82 - 1;
              }

              while (v82);
              do
              {
                v98 = 0;
                v133 = *v8;
                v99 = v8;
                do
                {
                  v100 = v99;
                  v101 = &v99[v98];
                  v99 = v101 + 1;
                  v102 = 2 * v98;
                  v98 = (2 * v98) | 1;
                  v103 = v102 + 2;
                  if (v102 + 2 < v11)
                  {
                    v104 = *a3;
                    v105 = re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, v101[1]);
                    v107 = v101[2];
                    v106 = v101 + 2;
                    v108 = *(v105 + 8);
                    result = re::DataArray<re::TextureAtlasTile>::get(v104 + 8, v107);
                    if (v108 < *(result + 8))
                    {
                      v99 = v106;
                      v98 = v103;
                    }
                  }

                  *v100 = *v99;
                }

                while (v98 <= ((v11 - 2) >> 1));
                v109 = a2 - 1;
                v69 = v99 == --a2;
                if (v69)
                {
                  *v99 = v133;
                }

                else
                {
                  *v99 = *v109;
                  *v109 = v133;
                  v110 = (v99 - v8 + 8) >> 3;
                  v111 = v110 < 2;
                  v112 = v110 - 2;
                  if (!v111)
                  {
                    v113 = v112 >> 1;
                    v114 = &v8[v112 >> 1];
                    v115 = *a3;
                    v116 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, *v114) + 8);
                    result = re::DataArray<re::TextureAtlasTile>::get(v115 + 8, *v99);
                    if (v116 < *(result + 8))
                    {
                      v117 = *v99;
                      do
                      {
                        v118 = v99;
                        v99 = v114;
                        *v118 = *v114;
                        if (!v113)
                        {
                          break;
                        }

                        v113 = (v113 - 1) >> 1;
                        v114 = &v8[v113];
                        v119 = *a3;
                        v120 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, *v114) + 8);
                        result = re::DataArray<re::TextureAtlasTile>::get(v119 + 8, v117);
                      }

                      while (v120 < *(result + 8));
                      *v99 = v117;
                    }
                  }
                }

                v111 = v11-- <= 2;
              }

              while (!v111);
            }

            return result;
          }

          v12 = v11 >> 1;
          v13 = &v10[v11 >> 1];
          if (v11 < 0x81)
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,0>(&v8[v11 >> 1], v8, v131, a3);
          }

          else
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,0>(v8, &v8[v11 >> 1], v131, a3);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,0>(v8 + 1, v13 - 1, a2 - 2, a3);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,0>(v8 + 2, &v8[v12 + 1], a2 - 3, a3);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,0>(v13 - 1, &v8[v11 >> 1], &v8[v12 + 1], a3);
            v14 = *v8;
            *v8 = *v13;
            *v13 = v14;
          }

          --a4;
          if (a5)
          {
            break;
          }

          v15 = *a3;
          v16 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, *(v8 - 1)) + 8);
          if (v16 < *(re::DataArray<re::TextureAtlasTile>::get(v15 + 8, *v8) + 8))
          {
            break;
          }

          v40 = *v8;
          v41 = *a3;
          v42 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, *v8) + 8);
          result = re::DataArray<re::TextureAtlasTile>::get(v41 + 8, *v131);
          if (v42 >= *(result + 8))
          {
            v47 = v8 + 1;
            do
            {
              v10 = v47;
              if (v47 >= v9)
              {
                break;
              }

              v48 = *a3;
              v49 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, v40) + 8);
              ++v47;
              result = re::DataArray<re::TextureAtlasTile>::get(v48 + 8, *v10);
            }

            while (v49 >= *(result + 8));
          }

          else
          {
            v10 = v8;
            do
            {
              v43 = *a3;
              v44 = re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, v40);
              v45 = v10[1];
              ++v10;
              v46 = *(v44 + 8);
              result = re::DataArray<re::TextureAtlasTile>::get(v43 + 8, v45);
            }

            while (v46 >= *(result + 8));
          }

          v50 = v9;
          if (v10 < v9)
          {
            v50 = v9;
            do
            {
              v51 = *a3;
              v52 = re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, v40);
              v53 = *--v50;
              v54 = *(v52 + 8);
              result = re::DataArray<re::TextureAtlasTile>::get(v51 + 8, v53);
            }

            while (v54 < *(result + 8));
          }

          while (v10 < v50)
          {
            v55 = *v10;
            *v10 = *v50;
            *v50 = v55;
            do
            {
              v56 = *a3;
              v57 = re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, v40);
              v58 = v10[1];
              ++v10;
              v59 = *(v57 + 8);
            }

            while (v59 >= *(re::DataArray<re::TextureAtlasTile>::get(v56 + 8, v58) + 8));
            do
            {
              v60 = *a3;
              v61 = re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, v40);
              v62 = *--v50;
              v63 = *(v61 + 8);
              result = re::DataArray<re::TextureAtlasTile>::get(v60 + 8, v62);
            }

            while (v63 < *(result + 8));
          }

          v64 = v10 - 1;
          if (v10 - 1 != v8)
          {
            *v8 = *v64;
          }

          a5 = 0;
          *v64 = v40;
        }

        v17 = 0;
        v18 = *v8;
        do
        {
          v19 = *a3;
          v20 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, v8[++v17]) + 8);
        }

        while (v20 < *(re::DataArray<re::TextureAtlasTile>::get(v19 + 8, v18) + 8));
        v21 = &v8[v17];
        v22 = v9;
        if (v17 == 1)
        {
          v22 = v9;
          do
          {
            if (v21 >= v22)
            {
              break;
            }

            v26 = *--v22;
            v27 = *a3;
            v28 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, v26) + 8);
          }

          while (v28 >= *(re::DataArray<re::TextureAtlasTile>::get(v27 + 8, v18) + 8));
        }

        else
        {
          do
          {
            v23 = *--v22;
            v24 = *a3;
            v25 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, v23) + 8);
          }

          while (v25 >= *(re::DataArray<re::TextureAtlasTile>::get(v24 + 8, v18) + 8));
        }

        if (v21 >= v22)
        {
          v38 = v21 - 1;
        }

        else
        {
          v29 = v21;
          v30 = v22;
          do
          {
            v31 = *v29;
            *v29 = *v30;
            *v30 = v31;
            do
            {
              v32 = v29[1];
              ++v29;
              v33 = *a3;
              v34 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, v32) + 8);
            }

            while (v34 < *(re::DataArray<re::TextureAtlasTile>::get(v33 + 8, v18) + 8));
            do
            {
              v35 = *--v30;
              v36 = *a3;
              v37 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, v35) + 8);
            }

            while (v37 >= *(re::DataArray<re::TextureAtlasTile>::get(v36 + 8, v18) + 8));
          }

          while (v29 < v30);
          v38 = v29 - 1;
          v9 = a2;
        }

        if (v38 != v8)
        {
          *v8 = *v38;
        }

        *v38 = v18;
        if (v21 >= v22)
        {
          break;
        }

LABEL_38:
        result = std::__introsort<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,false>(v8, v38, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v38 + 1;
      }

      v39 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *>(v8, v38, a3);
      v10 = v38 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *>(v38 + 1, v9, a3);
      if (result)
      {
        break;
      }

      if (!v39)
      {
        goto LABEL_38;
      }
    }

    a2 = v38;
    if (!v39)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles(unsigned int)::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = *(re::DataArray<re::TextureAtlasTile>::get(*a4 + 8, *a2) + 8);
  v10 = *(re::DataArray<re::TextureAtlasTile>::get(v8 + 8, *a1) + 8);
  v11 = *a4;
  v12 = *(re::DataArray<re::TextureAtlasTile>::get(*a4 + 8, *a3) + 8);
  result = re::DataArray<re::TextureAtlasTile>::get(v11 + 8, *a2);
  v14 = *(result + 8);
  if (v9 >= v10)
  {
    if (v12 < v14)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      v17 = *a4;
      v18 = *(re::DataArray<re::TextureAtlasTile>::get(*a4 + 8, *a2) + 8);
      result = re::DataArray<re::TextureAtlasTile>::get(v17 + 8, *a1);
      if (v18 < *(result + 8))
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  else
  {
    v15 = *a1;
    if (v12 >= v14)
    {
      *a1 = *a2;
      *a2 = v15;
      v20 = *a4;
      v21 = *(re::DataArray<re::TextureAtlasTile>::get(*a4 + 8, *a3) + 8);
      result = re::DataArray<re::TextureAtlasTile>::get(v20 + 8, *a2);
      if (v21 >= *(result + 8))
      {
        return result;
      }

      v15 = *a2;
      *a2 = *a3;
    }

    else
    {
      *a1 = *a3;
    }

    *a3 = v15;
  }

  return result;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles(unsigned int)::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,0>(a1, a2, a3, a5);
  v10 = *a5;
  v11 = *(re::DataArray<re::TextureAtlasTile>::get(*a5 + 8, *a4) + 8);
  result = re::DataArray<re::TextureAtlasTile>::get(v10 + 8, *a3);
  if (v11 < *(result + 8))
  {
    v13 = *a3;
    *a3 = *a4;
    *a4 = v13;
    v14 = *a5;
    v15 = *(re::DataArray<re::TextureAtlasTile>::get(*a5 + 8, *a3) + 8);
    result = re::DataArray<re::TextureAtlasTile>::get(v14 + 8, *a2);
    if (v15 < *(result + 8))
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      v17 = *a5;
      v18 = *(re::DataArray<re::TextureAtlasTile>::get(v17 + 8, *a2) + 8);
      result = re::DataArray<re::TextureAtlasTile>::get(v17 + 8, *a1);
      if (v18 < *(result + 8))
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles(unsigned int)::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,0>(a1, a2, a3, a4, a6);
  v12 = *a6;
  v13 = *(re::DataArray<re::TextureAtlasTile>::get(*a6 + 8, *a5) + 8);
  result = re::DataArray<re::TextureAtlasTile>::get(v12 + 8, *a4);
  if (v13 < *(result + 8))
  {
    v15 = *a4;
    *a4 = *a5;
    *a5 = v15;
    v16 = *a6;
    v17 = *(re::DataArray<re::TextureAtlasTile>::get(*a6 + 8, *a4) + 8);
    result = re::DataArray<re::TextureAtlasTile>::get(v16 + 8, *a3);
    if (v17 < *(result + 8))
    {
      v18 = *a3;
      *a3 = *a4;
      *a4 = v18;
      v19 = *a6;
      v20 = *(re::DataArray<re::TextureAtlasTile>::get(*a6 + 8, *a3) + 8);
      result = re::DataArray<re::TextureAtlasTile>::get(v19 + 8, *a2);
      if (v20 < *(result + 8))
      {
        v21 = *a2;
        *a2 = *a3;
        *a3 = v21;
        v22 = *a6;
        v23 = *(re::DataArray<re::TextureAtlasTile>::get(v22 + 8, *a2) + 8);
        result = re::DataArray<re::TextureAtlasTile>::get(v22 + 8, *a1);
        if (v23 < *(result + 8))
        {
          v24 = *a1;
          *a1 = *a2;
          *a2 = v24;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles(unsigned int)::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a2 - a1;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *a3;
        v8 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, *(a2 - 1)) + 8);
        if (v8 < *(re::DataArray<re::TextureAtlasTile>::get(v7 + 8, *a1) + 8))
        {
          v9 = *a1;
          *a1 = *(a2 - 1);
          *(a2 - 1) = v9;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,0>(a1, a1 + 1, a2 - 1, a3);
      return 1;
    case 4:
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
      return 1;
    case 5:
      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
  }

LABEL_11:
  v10 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::TextureAtlas::allocateTiles::$_0 &,re::DataArrayHandle<re::TextureAtlasTile> *,0>(a1, a1 + 1, a1 + 2, a3);
  v11 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *a3;
    v15 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, *v11) + 8);
    if (v15 < *(re::DataArray<re::TextureAtlasTile>::get(v14 + 8, *v10) + 8))
    {
      v16 = *v11;
      v17 = v12;
      while (1)
      {
        *(a1 + v17 + 24) = *(a1 + v17 + 16);
        if (v17 == -16)
        {
          break;
        }

        v18 = *a3;
        v19 = *(re::DataArray<re::TextureAtlasTile>::get(*a3 + 8, v16) + 8);
        v20 = re::DataArray<re::TextureAtlasTile>::get(v18 + 8, *(a1 + v17 + 8));
        v17 -= 8;
        if (v19 >= *(v20 + 8))
        {
          v21 = (a1 + v17 + 24);
          goto LABEL_19;
        }
      }

      v21 = a1;
LABEL_19:
      *v21 = v16;
      if (++v13 == 8)
      {
        return v11 + 1 == a2;
      }
    }

    v10 = v11;
    v12 += 8;
    if (++v11 == a2)
    {
      return 1;
    }
  }
}

uint64_t re::getOrCreateTileRenderPipelineState(re::ShaderManager **a1, uint64_t a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = re::Hash<re::DynamicString>::operator()(info, a2);
  MurmurHash3_x64_128(a2 + 168, 0x2CuLL, 0, info);
  v5 = (*&info[8] + (*info << 6) + (*info >> 2) - 0x61C8864680B583E9) ^ *info;
  v6 = [*(a2 + 224) hash];
  v8 = (((*(a2 + 232) << 6) | 0x9E3779B97F4A7C17) + (((v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9 + (((v5 << 6) + (v5 >> 2) + (((v4 << 6) + (v4 >> 2) + re::MetalFunctionConfiguration::generateKey((a2 + 32)) - 0x61C8864680B583E9) ^ v4) - 0x61C8864680B583E9) ^ v5)) ^ v6)) ^ *(a2 + 232);
  v9 = a1[6];
  v10 = (v9 + 208);
  if (!*(v9 + 26) || (v11 = *(*(v9 + 27) + 4 * (v8 % *(v9 + 58))), v11 == 0x7FFFFFFF))
  {
LABEL_6:
    MetalFunction = re::getOrCreateMetalFunction(a1, a2, (a2 + 32), v7);
    if (!MetalFunction)
    {
      return 0;
    }

    v14 = MetalFunction;
    v42 = mach_absolute_time();
    v43 = a1;
    re::ShaderManager::makeTileRenderPipelineDescriptor(&v48, a1[6]);
    [v48 setTileFunction_];
    [v48 setRasterSampleCount_];
    [v48 setLinkedFunctions_];
    [v48 setThreadgroupSizeMatchesTileSize_];
    v15 = 0;
    v16 = 32;
    do
    {
      v17 = *(a2 + 172 + 4 * v15);
      if (v17)
      {
        [objc_msgSend(objc_msgSend(v48 colorAttachments)];
      }

      ++v15;
      v16 -= 4;
    }

    while (v16);
    v47 = 0;
    re::mtl::Device::makeRenderPipelineState(v43 + 26, v48, info);
    NS::SharedPtr<MTL::Texture>::operator=(&v47, info);
    if (*info)
    {
    }

    v18 = mach_absolute_time();
    v19 = v18;
    v20 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
    if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
    {
      v18 = mach_timebase_info(info);
      if (v18)
      {
        v23 = NAN;
        goto LABEL_20;
      }

      LODWORD(v21) = *info;
      LODWORD(v22) = *&info[4];
      v20 = v21 / v22;
      re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v20;
    }

    v23 = v20 * (v19 - v42);
LABEL_20:
    v25 = (v23 / 1000000.0);
    v26 = *re::graphicsLogObjects(v18);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 8))
      {
        v27 = *(a2 + 16);
      }

      else
      {
        v27 = a2 + 9;
      }

      *info = 136446466;
      *&info[4] = v27;
      *&info[12] = 1024;
      *&info[14] = v25;
      _os_log_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_DEFAULT, "PSO compilation completed for tile pipeline %{public}s in %d", info, 0x12u);
    }

    if (*v10)
    {
      v28 = v8 % *(v9 + 58);
      v29 = *(*(v9 + 27) + 4 * v28);
      if (v29 != 0x7FFFFFFF)
      {
        v30 = *(v9 + 28);
        if (*(v30 + 24 * v29 + 8) == v8)
        {
LABEL_30:
          v24 = v30 + 24 * v29 + 16;
          goto LABEL_33;
        }

        while (1)
        {
          LODWORD(v29) = *(v30 + 24 * v29) & 0x7FFFFFFF;
          if (v29 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v30 + 24 * v29 + 8) == v8)
          {
            goto LABEL_30;
          }
        }
      }
    }

    else
    {
      LODWORD(v28) = 0;
    }

    v31 = re::HashTable<unsigned long,re::CachedTileRenderPipelineState,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(v10, v28, v8);
    *(v31 + 8) = v8;
    *(v31 + 16) = v47;
    v24 = v31 + 16;
    ++*(v9 + 62);
LABEL_33:
    if ((atomic_load_explicit(&qword_1EE1B8258, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8258))
    {
      re::Defaults::BOOLValue(info, "enableShaderDebugLogs", v40);
      if (info[0])
      {
        v41 = info[1];
      }

      else
      {
        v41 = 0;
      }

      _MergedGlobals_430 = v41;
      __cxa_guard_release(&qword_1EE1B8258);
    }

    if (v25 > 10 || _MergedGlobals_430 == 1)
    {
      re::MetalFunctionConfiguration::permutationString((a2 + 32), info);
      v32 = *(a2 + 16);
      if ((*(a2 + 8) & 1) == 0)
      {
        v32 = a2 + 9;
      }

      if (info[8])
      {
        v33 = *&info[16];
      }

      else
      {
        v33 = &info[9];
      }

      re::DynamicString::format(&v44, "name=%s sc=%d tgsmts=%d px=%d %d %d %d %d %d %d %d fc=%s", *(a2 + 200), v32, *(a2 + 168), *(a2 + 232), *(a2 + 172), *(a2 + 176), *(a2 + 180), *(a2 + 184), *(a2 + 188), *(a2 + 192), *(a2 + 196), *(a2 + 200), v33);
      isFrameCaptureEnabled = re::mtl::Device::isFrameCaptureEnabled((v43 + 26));
      v35 = isFrameCaptureEnabled;
      v36 = *re::graphicsLogObjects(isFrameCaptureEnabled);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = *&v46[7];
        v38 = "";
        if ((v45 & 1) == 0)
        {
          v37 = v46;
        }

        if (v35)
        {
          v38 = "(frame capture enabled)";
        }

        *buf = 136446466;
        v50 = v37;
        v51 = 2080;
        v52 = v38;
        _os_log_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_DEFAULT, "Compiling PSO RT %{public}s %s", buf, 0x16u);
      }

      if (v44 && (v45 & 1) != 0)
      {
        (*(*v44 + 40))();
      }

      if (*info && (info[8] & 1) != 0)
      {
        (*(**info + 40))();
      }
    }

    if (v47)
    {
    }

    if (v48)
    {
    }

    return v24;
  }

  v12 = *(v9 + 28);
  while (*(v12 + 24 * v11 + 8) != v8)
  {
    v11 = *(v12 + 24 * v11) & 0x7FFFFFFF;
    if (v11 == 0x7FFFFFFF)
    {
      goto LABEL_6;
    }
  }

  return v12 + 24 * v11 + 16;
}

uint64_t re::HashTable<unsigned long,re::CachedTileRenderPipelineState,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v27, v9, v8);
          v11 = *v27;
          *v27 = *a1;
          *a1 = v11;
          v12 = *&v27[16];
          v13 = *(a1 + 16);
          *&v27[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v27[24];
          *&v27[24] = *(a1 + 24);
          v14 = *&v27[32];
          *(a1 + 24) = v15;
          ++*&v27[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = (v13 + 16);
            do
            {
              if ((*(v18 - 2) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long,re::CachedTileRenderPipelineState,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, *(v18 - 1) % *(a1 + 24), *(v18 - 1));
                v20 = *v18;
                *(v19 + 8) = *(v18 - 1);
                *(v19 + 16) = v20;
                *v18 = 0;
              }

              ++v17;
              v18 += 3;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long,re::CachedTileRenderPipelineState,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(v27);
        }
      }

      else
      {
        if (v8)
        {
          v23 = 2 * v7;
        }

        else
        {
          v23 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 24 * v4);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 24 * v4);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = 24 * v4;
  *(v21 + v24) = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *(v21 + v24) = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v21 + 24 * v4;
}

double re::HashTable<unsigned long,re::CachedTileRenderPipelineState,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long long,NS::SharedPtr<MTL::Texture>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::free(a1, v3++);
      }

      while (v3 < *(a1 + 8));
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

void re::TextureHandle::invalidate(void *this)
{
  v2 = this[1];
  if (v2)
  {
    add = atomic_fetch_add(v2, 0xFFFFFFFF);
    v4 = (add - 1);
    if (add - 1048578 <= 0xFFEFFFFE)
    {
      re::internal::refCountCheckFailHandler(0, v2, v4);
      if (v4)
      {
        goto LABEL_5;
      }
    }

    else if (add != 1)
    {
LABEL_5:
      this[1] = 0;
      goto LABEL_6;
    }

    re::Texture::dispose(v2);
    goto LABEL_5;
  }

LABEL_6:
  *this = 0;
}

re::TextureHandle *re::TextureHandle::TextureHandle(re::TextureHandle *this, const re::TextureHandle *a2)
{
  *this = 0;
  *(this + 1) = 0;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    *this = v3;
    *(this + 1) = v4;
    if (!atomic_load(v4))
    {
      v9 = atomic_load(v4);
      re::internal::refCountCheckFailHandler(1, v4, v9);
    }

    add_explicit = atomic_fetch_add_explicit(v4, 1u, memory_order_relaxed);
    if (add_explicit - 0x100000 <= 0xFFEFFFFE)
    {
      re::internal::refCountCheckFailHandler(1, v4, (add_explicit + 1));
    }
  }

  return this;
}

uint64_t re::TextureHandle::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      v5 = *a2 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      if (!atomic_load(v4))
      {
        v12 = atomic_load(v4);
        re::internal::refCountCheckFailHandler(1, *(a2 + 8), v12);
      }

      add_explicit = atomic_fetch_add_explicit(v4, 1u, memory_order_relaxed);
      if (add_explicit - 0x100000 <= 0xFFEFFFFE)
      {
        re::internal::refCountCheckFailHandler(1, v4, (add_explicit + 1));
      }
    }

    v8 = *(a1 + 8);
    if (!v8)
    {
      goto LABEL_14;
    }

    add = atomic_fetch_add(v8, 0xFFFFFFFF);
    v10 = (add - 1);
    if (add - 1048578 <= 0xFFEFFFFE)
    {
      re::internal::refCountCheckFailHandler(0, v8, v10);
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else if (add != 1)
    {
LABEL_14:
      *a1 = *a2;
      return a1;
    }

    re::Texture::dispose(v8);
    goto LABEL_14;
  }

  return a1;
}

void re::TextureHandle::metalTexture(uint64_t *__return_ptr a1@<X8>, os_unfair_lock_s **this@<X0>)
{
  if (this[1])
  {
    os_unfair_lock_lock(*this + 82);
    v4 = *&this[1][2]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(*this + 82);
  }

  else
  {
    re::TextureHandle::InvalidTexture(this);
    v4 = re::TextureHandle::InvalidTexture(void)::invalidTexture;
  }

  *a1 = v4;
}

uint64_t *re::TextureHandle::InvalidTexture(re::TextureHandle *this)
{
  {
    re::TextureHandle::InvalidTexture(void)::invalidTexture = 0;
  }

  return &re::TextureHandle::InvalidTexture(void)::invalidTexture;
}

void re::TextureHandle::unsynchronizedMetalTexture(uint64_t *__return_ptr a1@<X8>, os_unfair_lock_s **this@<X0>)
{
  if (this[1])
  {
    os_unfair_lock_lock(*this + 82);
    v4 = *&this[1][4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(*this + 82);
  }

  else
  {
    re::TextureHandle::InvalidTexture(this);
    v4 = re::TextureHandle::InvalidTexture(void)::invalidTexture;
  }

  *a1 = v4;
}

void re::TextureHandle::setMetalTexture(const re::TextureHandle *a1, void **a2)
{
  v2 = 0;
  re::TextureHandle::setMetalTextureAndHeap(a1, a2, &v2);
  if (v2)
  {
  }
}

double re::TextureHandle::setMetalTextureAndHeap(const re::TextureHandle *result, void **a2, void **a3)
{
  v40 = *MEMORY[0x1E69E9840];
  if (*(result + 1))
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    v29 = 0x7FFFFFFFLL;
    os_unfair_lock_lock((*result + 328));
    v6 = *(result + 1);
    v8 = *(v6 + 16);
    v7 = (v6 + 16);
    if (*a2 == v8 && *a3 == *(*(result + 1) + 32))
    {
      os_unfair_lock_unlock((*result + 328));
    }

    else
    {
      NS::SharedPtr<MTL::Buffer>::operator=(v7, a2);
      NS::SharedPtr<MTL::Buffer>::operator=((*(result + 1) + 32), a3);
      v9 = *(result + 1);
      v10 = (v9 + 40);
      if (&v26 != (v9 + 40) && *v10)
      {
        v11 = *(v9 + 68);
        if (v11 <= 3)
        {
          v12 = 3;
        }

        else
        {
          v12 = v11;
        }

        re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::init(&v26, *v10, v12);
        re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::copy(&v26, v10);
      }

      os_unfair_lock_unlock((*result + 328));
      objc_initWeak(&location, 0);
      *&v25 = 0;
      v13 = v28;
      if (v28)
      {
        v14 = 0;
        v15 = (v27 + 8);
        while (1)
        {
          v16 = *v15;
          v15 += 10;
          if (v16 < 0)
          {
            break;
          }

          if (v28 == ++v14)
          {
            LODWORD(v14) = v28;
            break;
          }
        }
      }

      else
      {
        LODWORD(v14) = 0;
      }

      if (v14 != v28)
      {
        v17 = v27;
        do
        {
          v18 = v17 + 40 * v14;
          WeakRetained = objc_loadWeakRetained((v18 + 16));
          if (WeakRetained)
          {
            v20 = WeakRetained;
            re::MaterialParameterBlock::enqueueTextureValueChangedDelta((WeakRetained - 8), (v18 + 24), result);
          }

          else
          {
            if ((v18 + 16) != &location)
            {
              objc_destroyWeak(&location);
              location = 0;
              objc_copyWeak(&location, (v18 + 16));
            }

            v25 = *(v18 + 24);
          }

          v17 = v27;
          if (v28 <= v14 + 1)
          {
            v21 = v14 + 1;
          }

          else
          {
            v21 = v28;
          }

          while (v21 - 1 != v14)
          {
            LODWORD(v14) = v14 + 1;
            if ((*(v27 + 40 * v14 + 8) & 0x80000000) != 0)
            {
              goto LABEL_30;
            }
          }

          LODWORD(v14) = v21;
LABEL_30:
          ;
        }

        while (v14 != v13);
        if (v25)
        {
          v22 = *re::graphicsLogObjects(WeakRetained);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 134219010;
            v31 = result;
            v32 = 1024;
            v33 = HIDWORD(v27);
            v34 = 2048;
            v35 = *(&v25 + 1);
            v36 = 2080;
            v37 = "<unknown>";
            v38 = 2048;
            v39 = v25;
            _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "TextureHandle (%p) tried to enqueue texture change into %d blocks. It encountered at least one expired MaterialParameterBlock (%p) which texture '%s' (hash: %llu). This suggests a missing call to 'stopTrackingMaterialParameterBlock()' or 'disconnectFromTextureHandles()'.", buf, 0x30u);
          }
        }
      }

      *&v25 = 0;
      objc_destroyWeak(&location);
    }

    return re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::deinit(&v26);
  }

  return v23;
}

void re::TextureHandle::unsafeReleaseMetalTextures(os_unfair_lock_s **this)
{
  if (this[1])
  {
    os_unfair_lock_lock(*this + 82);
    re::TextureHandle::InvalidTexture(v2);
    v3 = NS::SharedPtr<MTL::Buffer>::operator=(&this[1][4], &re::TextureHandle::InvalidTexture(void)::invalidTexture);
    re::TextureHandle::InvalidTexture(v3);
    NS::SharedPtr<MTL::Buffer>::operator=(&this[1][2], &re::TextureHandle::InvalidTexture(void)::invalidTexture);
    v4 = this[1];

    *&v4[8]._os_unfair_lock_opaque = 0;
    v5 = this[1];

    *&v5[6]._os_unfair_lock_opaque = 0;
    v6 = *this + 82;

    os_unfair_lock_unlock(v6);
  }
}

void re::TextureHandle::startTrackingMaterialParameterBlock(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  if (*(a1 + 8))
  {
    if (a2)
    {
      v6 = (a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    objc_initWeak(&location, v6);
    v16 = *a3;
    v17 = a2;
    os_unfair_lock_lock((*a1 + 328));
    v7 = *(a1 + 8);
    v8 = (v16 + (v17 << 6) + (v17 >> 2) - 0x61C8864680B583E9) ^ v17;
    v9 = *(v7 + 64);
    if (v9)
    {
      v10 = v8 % v9;
      v11 = *(*(v7 + 48) + 4 * (v8 % v9));
      if (v11 != 0x7FFFFFFF)
      {
        v12 = *(v7 + 56);
        if (*(v12 + 40 * v11 + 32) == v17 && *(v12 + 40 * v11 + 24) == v16)
        {
          goto LABEL_20;
        }

        while (1)
        {
          LODWORD(v11) = *(v12 + 40 * v11 + 8) & 0x7FFFFFFF;
          if (v11 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v12 + 40 * v11 + 32) == v17 && *(v12 + 40 * v11 + 24) == v16)
          {
            goto LABEL_20;
          }
        }
      }
    }

    else
    {
      LODWORD(v10) = 0;
    }

    re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::addAsMove(v7 + 40, v10, v8, &location, &location);
    ++*(v7 + 80);
LABEL_20:
    os_unfair_lock_unlock((*a1 + 328));
    v16 = 0;
    objc_destroyWeak(&location);
  }
}

void re::TextureHandle::stopTrackingMaterialParameterBlock(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 8))
  {
    objc_initWeak(&location, 0);
    v7 = *a3;
    v8 = a2;
    os_unfair_lock_lock((*a1 + 328));
    re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::remove(*(a1 + 8) + 40, &location);
    os_unfair_lock_unlock((*a1 + 328));
    v7 = 0;
    objc_destroyWeak(&location);
  }
}

uint64_t re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::remove(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = ((v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9) ^ v4) % v2;
  v7 = *(a1 + 8);
  v8 = *(v7 + 4 * v6);
  if (v8 == 0x7FFFFFFF)
  {
    return 0;
  }

  v10 = *(a1 + 16);
  if (*(v10 + 40 * v8 + 32) != v4 || *(v10 + 40 * v8 + 24) != v5)
  {
    while (1)
    {
      v12 = v8;
      v13 = *(v10 + 40 * v8 + 8);
      v8 = v13 & 0x7FFFFFFF;
      if ((v13 & 0x7FFFFFFF) == 0x7FFFFFFF)
      {
        return 0;
      }

      if (*(v10 + 40 * v8 + 32) == v4 && *(v10 + 40 * v8 + 24) == v5)
      {
        *(v10 + 40 * v12 + 8) = *(v10 + 40 * v12 + 8) & 0x80000000 | *(v10 + 40 * v8 + 8) & 0x7FFFFFFF;
        goto LABEL_17;
      }
    }
  }

  *(v7 + 4 * v6) = *(v10 + 40 * v8 + 8) & 0x7FFFFFFF;
LABEL_17:
  v15 = *(a1 + 16);
  v16 = v15 + 40 * v8;
  v17 = *(v16 + 8);
  if (v17 < 0)
  {
    *(v16 + 8) = v17 & 0x7FFFFFFF;
    *(v16 + 24) = 0;
    objc_destroyWeak((v16 + 16));
    *(v16 + 16) = 0;
    v15 = *(a1 + 16);
  }

  v18 = *(a1 + 40);
  *(v15 + 40 * v8 + 8) = *(v15 + 40 * v8 + 8) & 0x80000000 | *(a1 + 36);
  --*(a1 + 28);
  *(a1 + 36) = v8;
  *(a1 + 40) = v18 + 1;
  return 1;
}

uint64_t *re::TextureHandle::InvalidHandle(re::TextureHandle *this)
{
  {
    re::TextureHandle::InvalidHandle(void)::textureHandle = 0;
    *algn_1ECF1C688 = 0;
  }

  return &re::TextureHandle::InvalidHandle(void)::textureHandle;
}

void re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::copy(uint64_t a1, uint64_t a2)
{
  re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::clear(a1);
  v4 = *(a2 + 28);
  if (*(a1 + 24) < v4)
  {
    re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::setCapacity(a1, v4);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    for (i = 0; i < v5; ++i)
    {
      v8 = *(a2 + 16);
      v9 = (v8 + v6);
      if ((*(v8 + v6 + 8) & 0x80000000) != 0)
      {
        v12 = *v9;
        v10 = (v9 + 2);
        v11 = v12;
        v13 = *(a1 + 24);
        v14 = v12 % v13;
        v15 = *(a1 + 36);
        if (v15 == 0x7FFFFFFF)
        {
          v15 = *(a1 + 32);
          v16 = v15;
          if (v15 == v13)
          {
            re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
            v14 = v11 % *(a1 + 24);
            v16 = *(a1 + 32);
          }

          *(a1 + 32) = v16 + 1;
          v17 = *(a1 + 16);
          v18 = *(v17 + 40 * v15 + 8);
        }

        else
        {
          v17 = *(a1 + 16);
          v18 = *(v17 + 40 * v15 + 8);
          *(a1 + 36) = v18 & 0x7FFFFFFF;
        }

        *(v17 + 40 * v15 + 8) = v18 | 0x80000000;
        *(*(a1 + 16) + 40 * v15 + 8) = *(*(a1 + 16) + 40 * v15 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * v14);
        *(*(a1 + 16) + 40 * v15) = v11;
        v19 = *(a1 + 16) + 40 * v15;
        *(v19 + 16) = 0;
        v19 += 16;
        objc_copyWeak(v19, v10);
        *(v19 + 8) = *(v8 + v6 + 24);
        *(*(a1 + 8) + 4 * v14) = v15;
        ++*(a1 + 28);
        v5 = *(a2 + 32);
      }

      v6 += 40;
    }
  }
}

void re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(a1 + 16) + v4;
        v7 = *(v6 + 8);
        if (v7 < 0)
        {
          *(v6 + 8) = v7 & 0x7FFFFFFF;
          *(v6 + 24) = 0;
          objc_destroyWeak((v6 + 16));
          *(v6 + 16) = 0;
          v3 = *(a1 + 32);
        }

        v4 += 40;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

void re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v14, 0, 36);
      *&v14[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::init(v14, v4, a2);
      v5 = *v14;
      *v14 = *a1;
      *a1 = v5;
      v6 = *&v14[16];
      v7 = *(a1 + 16);
      *&v14[16] = v7;
      *(a1 + 16) = v6;
      v9 = *&v14[24];
      *&v14[24] = *(a1 + 24);
      v8 = *&v14[32];
      *(a1 + 24) = v9;
      v10 = v8;
      if (v8)
      {
        v11 = 0;
        v12 = (v7 + 16);
        do
        {
          if ((*(v12 - 1) & 0x80000000) != 0)
          {
            re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::addAsMove(a1, *(v12 - 2) % *(a1 + 24), *(v12 - 2), v12, v12);
          }

          ++v11;
          v12 += 5;
        }

        while (v11 < v10);
      }

      re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::deinit(v14);
    }
  }

  else
  {
    if (a2)
    {
      v13 = a2;
    }

    else
    {
      v13 = 3;
    }
  }
}

uint64_t re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, int a4, id *from)
{
  v9 = *(a1 + 36);
  if (v9 == 0x7FFFFFFF)
  {
    v9 = *(a1 + 32);
    v10 = v9;
    if (v9 == *(a1 + 24))
    {
      re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v10 = *(a1 + 32);
    }

    *(a1 + 32) = v10 + 1;
    v11 = *(a1 + 16);
    v12 = *(v11 + 40 * v9 + 8);
  }

  else
  {
    v11 = *(a1 + 16);
    v12 = *(v11 + 40 * v9 + 8);
    *(a1 + 36) = v12 & 0x7FFFFFFF;
  }

  *(v11 + 40 * v9 + 8) = v12 | 0x80000000;
  *(*(a1 + 16) + 40 * v9 + 8) = *(*(a1 + 16) + 40 * v9 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 40 * v9) = a3;
  v13 = *(a1 + 16) + 40 * v9;
  *(v13 + 16) = 0;
  v13 += 16;
  objc_moveWeak(v13, from);
  *(v13 + 8) = *(from + 1);
  *(*(a1 + 8) + 4 * a2) = v9;
  ++*(a1 + 28);
  return v9;
}

double re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::deinit(uint64_t *a1)
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
        v6 = a1[2] + v4;
        v7 = *(v6 + 8);
        if (v7 < 0)
        {
          *(v6 + 8) = v7 & 0x7FFFFFFF;
          *(v6 + 24) = 0;
          objc_destroyWeak((v6 + 16));
          *(v6 + 16) = 0;
          v3 = *(a1 + 8);
        }

        v4 += 40;
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

void re::Texture::dispose(id *this)
{
  this[1] = 0;

  this[2] = 0;
  this[3] = 0;

  this[4] = 0;

  re::HashSetBase<re::Texture::TrackedBlock,re::Texture::TrackedBlock,re::internal::ValueAsKey<re::Texture::TrackedBlock>,re::Texture::TrackedBlockHash,re::EqualTo<re::Texture::TrackedBlock>,true,false>::clear((this + 5));
}

uint64_t re::isASTCPixelFormat(int a1)
{
  result = 1;
  if (a1 > 499)
  {
    if ((a1 - 520) <= 0x31 && ((1 << (a1 - 8)) & 0x3FC0FDFF007FFLL) != 0)
    {
      return 0;
    }

    if ((a1 - 500) < 0xB)
    {
      return 0;
    }

    v3 = a1 - 588;
    if (v3 <= 0x29 && ((1 << v3) & 0x30003F80001) != 0)
    {
      return 0;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
      case 1:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 20:
      case 22:
      case 23:
      case 24:
      case 25:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 40:
      case 41:
      case 42:
      case 43:
      case 53:
      case 54:
      case 55:
      case 60:
      case 62:
      case 63:
      case 64:
      case 65:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 80:
      case 81:
      case 90:
      case 91:
      case 92:
      case 93:
      case 94:
      case 103:
      case 104:
      case 105:
      case 110:
      case 112:
      case 113:
      case 114:
      case 115:
      case 123:
      case 124:
      case 125:
      case 130:
      case 131:
      case 132:
      case 133:
      case 134:
      case 135:
      case 140:
      case 141:
      case 142:
      case 143:
      case 150:
      case 151:
      case 152:
      case 153:
      case 160:
      case 161:
      case 162:
      case 163:
      case 164:
      case 165:
      case 166:
      case 167:
      case 170:
      case 172:
      case 174:
      case 176:
      case 178:
      case 179:
      case 180:
      case 181:
      case 182:
      case 183:
        return 0;
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 21:
      case 26:
      case 27:
      case 28:
      case 29:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 56:
      case 57:
      case 58:
      case 59:
      case 61:
      case 66:
      case 67:
      case 68:
      case 69:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 102:
      case 106:
      case 107:
      case 108:
      case 109:
      case 111:
      case 116:
      case 117:
      case 118:
      case 119:
      case 120:
      case 121:
      case 122:
      case 126:
      case 127:
      case 128:
      case 129:
      case 136:
      case 137:
      case 138:
      case 139:
      case 144:
      case 145:
      case 146:
      case 147:
      case 148:
      case 149:
      case 154:
      case 155:
      case 156:
      case 157:
      case 158:
      case 159:
      case 168:
      case 169:
      case 171:
      case 173:
      case 175:
      case 177:
        return result;
      default:
        v4 = a1 - 240;
        if (v4 <= 0x16 && ((1 << v4) & 0x70B403) != 0)
        {
          return 0;
        }

        break;
    }
  }

  return result;
}

uint64_t re::translateSRGBPixelFormatToLinear(uint64_t result)
{
  if (result <= 132)
  {
    if (result <= 70)
    {
      if (result == 11)
      {
        return 10;
      }

      else if (result == 31)
      {
        return 30;
      }
    }

    else
    {
      switch(result)
      {
        case 0x47:
          return 70;
        case 0x51:
          return 80;
        case 0x83:
          return 130;
      }
    }
  }

  else
  {
    switch(result)
    {
      case 153:
        result = 152;
        break;
      case 154:
      case 155:
      case 156:
      case 157:
      case 158:
      case 159:
      case 160:
      case 161:
      case 162:
      case 163:
      case 164:
      case 166:
      case 168:
      case 169:
      case 170:
      case 171:
      case 172:
      case 173:
      case 174:
      case 175:
      case 176:
      case 177:
      case 178:
      case 180:
      case 182:
      case 184:
      case 185:
      case 191:
        return result;
      case 165:
        result = 164;
        break;
      case 167:
        result = 166;
        break;
      case 179:
        result = 178;
        break;
      case 181:
        result = 180;
        break;
      case 183:
        result = 182;
        break;
      case 186:
        result = 204;
        break;
      case 187:
        result = 205;
        break;
      case 188:
        result = 206;
        break;
      case 189:
        result = 207;
        break;
      case 190:
        result = 208;
        break;
      case 192:
        result = 210;
        break;
      case 193:
        result = 211;
        break;
      case 194:
        result = 212;
        break;
      case 195:
        result = 213;
        break;
      case 196:
        result = 214;
        break;
      case 197:
        result = 215;
        break;
      case 198:
        result = 216;
        break;
      case 199:
        result = 217;
        break;
      case 200:
        result = 218;
        break;
      default:
        if (result == 133)
        {
          result = 132;
        }

        else if (result == 135)
        {
          result = 134;
        }

        break;
    }
  }

  return result;
}

uint64_t re::translateLinearPixelFormatToSRGB(uint64_t result)
{
  if (result <= 163)
  {
    if (result > 129)
    {
      if (result > 133)
      {
        if (result == 134)
        {
          return 135;
        }

        else if (result == 152)
        {
          return 153;
        }
      }

      else if (result == 130)
      {
        return 131;
      }

      else if (result == 132)
      {
        return 133;
      }
    }

    else if (result > 69)
    {
      if (result == 70)
      {
        return 71;
      }

      else if (result == 80)
      {
        return 81;
      }
    }

    else if (result == 10)
    {
      return 11;
    }

    else if (result == 30)
    {
      return 31;
    }
  }

  else
  {
    switch(result)
    {
      case 178:
        result = 179;
        break;
      case 179:
      case 181:
      case 183:
      case 184:
      case 185:
      case 186:
      case 187:
      case 188:
      case 189:
      case 190:
      case 191:
      case 192:
      case 193:
      case 194:
      case 195:
      case 196:
      case 197:
      case 198:
      case 199:
      case 200:
      case 201:
      case 202:
      case 203:
      case 209:
        return result;
      case 180:
        result = 181;
        break;
      case 182:
        result = 183;
        break;
      case 204:
        result = 186;
        break;
      case 205:
        result = 187;
        break;
      case 206:
        result = 188;
        break;
      case 207:
        result = 189;
        break;
      case 208:
        result = 190;
        break;
      case 210:
        result = 192;
        break;
      case 211:
        result = 193;
        break;
      case 212:
        result = 194;
        break;
      case 213:
        result = 195;
        break;
      case 214:
        result = 196;
        break;
      case 215:
        result = 197;
        break;
      case 216:
        result = 198;
        break;
      case 217:
        result = 199;
        break;
      case 218:
        result = 200;
        break;
      default:
        if (result == 164)
        {
          result = 165;
        }

        else if (result == 166)
        {
          result = 167;
        }

        break;
    }
  }

  return result;
}

uint64_t re::isHDR(int a1)
{
  result = 1;
  switch(a1)
  {
    case 0:
    case 1:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 20:
    case 22:
    case 23:
    case 24:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 40:
    case 41:
    case 42:
    case 43:
    case 53:
    case 54:
    case 60:
    case 62:
    case 63:
    case 64:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 80:
    case 81:
    case 90:
    case 91:
    case 94:
    case 103:
    case 104:
    case 110:
    case 112:
    case 113:
    case 114:
    case 123:
    case 124:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 140:
    case 141:
    case 142:
    case 143:
    case 152:
    case 153:
    case 160:
    case 161:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 167:
    case 170:
    case 172:
    case 174:
    case 176:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 192:
    case 193:
    case 194:
    case 195:
    case 196:
    case 197:
    case 198:
    case 199:
    case 200:
    case 204:
    case 205:
    case 206:
    case 207:
    case 208:
    case 210:
    case 211:
    case 212:
    case 213:
    case 214:
    case 215:
    case 216:
    case 217:
    case 218:
    case 240:
    case 241:
    case 250:
    case 252:
    case 253:
    case 255:
    case 260:
    case 261:
    case 262:
      goto LABEL_4;
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 21:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 61:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 92:
    case 93:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 111:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
    case 136:
    case 137:
    case 138:
    case 139:
    case 144:
    case 145:
    case 146:
    case 147:
    case 148:
    case 149:
    case 150:
    case 151:
    case 154:
    case 155:
    case 156:
    case 157:
    case 158:
    case 159:
    case 168:
    case 169:
    case 171:
    case 173:
    case 175:
    case 177:
    case 184:
    case 185:
    case 191:
    case 201:
    case 202:
    case 203:
    case 209:
    case 219:
    case 220:
    case 221:
    case 222:
    case 223:
    case 224:
    case 225:
    case 226:
    case 227:
    case 228:
    case 229:
    case 230:
    case 231:
    case 232:
    case 233:
    case 234:
    case 235:
    case 236:
    case 237:
    case 238:
    case 239:
    case 242:
    case 243:
    case 244:
    case 245:
    case 246:
    case 247:
    case 248:
    case 249:
    case 251:
    case 254:
    case 256:
    case 257:
    case 258:
    case 259:
      return result;
    default:
      if ((a1 - 500) <= 0x3E && ((1 << (a1 + 12)) & 0x400DFF007FF007FFLL) != 0 || (v3 = a1 - 588, v3 <= 0x29) && ((1 << v3) & 0x30000000001) != 0)
      {
LABEL_4:
        result = 0;
      }

      break;
  }

  return result;
}

void re::TargetDisplayInfoProvider::TargetDisplayInfoProvider(re::TargetDisplayInfoProvider *this)
{
  v2 = re::globalAllocators(this);
  *(this + 3) = v2[2];
  *(this + 4) = 0;
  v3 = re::globalAllocators(v2);
  *(this + 9) = v3[2];
  *(this + 10) = 0;
  v4 = re::globalAllocators(v3);
  *(this + 15) = v4[2];
  *(this + 16) = 0;
  v5 = re::globalAllocators(v4);
  *(this + 21) = v5[2];
  *(this + 22) = 0;
  v6 = re::globalAllocators(v5);
  *(this + 27) = v6[2];
  *(this + 28) = 0;
  v7 = re::globalAllocators(v6);
  *(this + 33) = v7[2];
  *(this + 34) = 0;
  v8 = re::globalAllocators(v7);
  *(this + 39) = v8[2];
  *(this + 40) = 0;
  v9 = re::globalAllocators(v8);
  *(this + 45) = v9[2];
  *(this + 46) = 0;
  v10 = re::globalAllocators(v9);
  *(this + 51) = v10[2];
  *(this + 52) = 0;
  v11 = re::globalAllocators(v10);
  *(this + 57) = v11[2];
  *(this + 58) = 0;
  v12 = re::globalAllocators(v11);
  *(this + 63) = v12[2];
  *(this + 64) = 0;
  v13 = re::globalAllocators(v12);
  *(this + 69) = v13[2];
  *(this + 70) = 0;
  v14 = re::globalAllocators(v13);
  *(this + 75) = v14[2];
  *(this + 76) = 0;
  v15 = re::globalAllocators(v14);
  *(this + 81) = v15[2];
  *(this + 82) = 0;
  v16 = re::globalAllocators(v15);
  *(this + 87) = v16[2];
  *(this + 88) = 0;
  v17 = re::globalAllocators(v16);
  *(this + 93) = v17[2];
  *(this + 94) = 0;
  v18 = re::globalAllocators(v17);
  *(this + 98) = v18[2];
  *(this + 99) = 0;
  v19 = re::globalAllocators(v18);
  *(this + 103) = v19[2];
  *(this + 105) = 0;
  *(this + 106) = 0;
  *(this + 104) = 0;
  v20 = re::globalAllocators(v19);
  *(this + 110) = v20[2];
  *(this + 111) = 0;
  v21 = re::globalAllocators(v20);
  *(this + 115) = v21[2];
  *(this + 116) = 0;
  v22 = re::globalAllocators(v21);
  *(this + 127) = v22[2];
  *(this + 128) = 0;
  v23 = re::globalAllocators(v22);
  *(this + 139) = v23[2];
  *(this + 140) = 0;
  v24 = re::globalAllocators(v23);
  *(this + 145) = v24[2];
  *(this + 146) = 0;
  v25 = re::globalAllocators(v24);
  *(this + 151) = v25[2];
  *(this + 152) = 0;
  *(this + 163) = re::globalAllocators(v25)[2];
  *(this + 164) = 0;
  *(this + 10) = 1092616192;
  *(this + 22) = 100;
  *(this + 34) = 1600;
  *(this + 46) = 976143166;
  *(this + 130) = 1090519040;
  *(this + 142) = 1040187392;
  *(this + 232) = 1;
  *(this + 70) = 1176256512;
  *(this + 82) = 1134367843;
  *(this + 94) = 0;
  *(this + 106) = 1120403456;
  *(this + 118) = 100;
  *(this + 616) = 3;
  *(this + 166) = 1065353216;
  *(this + 178) = 1065353216;
  *(this + 105) = 32;
  operator new[]();
}

void re::TargetDisplayInfoProvider::~TargetDisplayInfoProvider(re::TargetDisplayInfoProvider *this)
{
  v2 = *(this + 106);
  if (v2)
  {
    MEMORY[0x1E69064F0](v2, 0x1000C8052888210);
  }

  re::FunctionBase<24ul,float ()(void)>::destroyCallable(this + 1280);
  re::FunctionBase<24ul,simd_float3x3 ()(void)>::destroyCallable(this + 1184);
  re::FunctionBase<24ul,re::LuminanceMap ()(void)>::destroyCallable(this + 1136);
  re::FunctionBase<24ul,re::LuminanceMap ()(void)>::destroyCallable(this + 1088);
  re::FunctionBase<24ul,simd_float3x3 ()(void)>::destroyCallable(this + 992);
  re::FunctionBase<24ul,simd_float3x3 ()(void)>::destroyCallable(this + 896);
  re::FunctionBase<24ul,void ()(re::ImageHistogram)>::destroyCallable(this + 856);
  re::FunctionBase<24ul,re::TonemapLUTDomain ()(void)>::destroyCallable(this + 800);
  re::FunctionBase<24ul,void ()(re::TonemapLUT)>::destroyCallable(this + 760);
  re::FunctionBase<24ul,void ()(re::TonemapFloatLUT)>::destroyCallable(this + 720);
  re::FunctionBase<24ul,float ()(void)>::destroyCallable(this + 672);
  re::FunctionBase<24ul,float ()(void)>::destroyCallable(this + 624);
  re::FunctionBase<24ul,unsigned char ()(void)>::destroyCallable(this + 576);
  re::FunctionBase<24ul,float ()(void)>::destroyCallable(this + 528);
  re::FunctionBase<24ul,float ()(void)>::destroyCallable(this + 480);
  re::FunctionBase<24ul,unsigned int ()(void)>::destroyCallable(this + 432);
  re::FunctionBase<24ul,float ()(void)>::destroyCallable(this + 384);
  re::FunctionBase<24ul,float ()(void)>::destroyCallable(this + 336);
  re::FunctionBase<24ul,float ()(void)>::destroyCallable(this + 288);
  re::FunctionBase<24ul,float ()(void)>::destroyCallable(this + 240);
  re::FunctionBase<24ul,BOOL ()(void)>::destroyCallable(this + 192);
  re::FunctionBase<24ul,float ()(void)>::destroyCallable(this + 144);
  re::FunctionBase<24ul,unsigned int ()(void)>::destroyCallable(this + 96);
  re::FunctionBase<24ul,unsigned int ()(void)>::destroyCallable(this + 48);
  re::FunctionBase<24ul,float ()(void)>::destroyCallable(this);
}

uint64_t (***re::FunctionBase<24ul,float ()(void)>::destroyCallable(uint64_t a1))(void)
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

uint64_t (***re::FunctionBase<24ul,simd_float3x3 ()(void)>::destroyCallable(uint64_t a1))(void)
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

uint64_t (***re::FunctionBase<24ul,re::LuminanceMap ()(void)>::destroyCallable(uint64_t a1))(void)
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

uint64_t (***re::FunctionBase<24ul,void ()(re::ImageHistogram)>::destroyCallable(uint64_t a1))(void)
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

uint64_t (***re::FunctionBase<24ul,re::TonemapLUTDomain ()(void)>::destroyCallable(uint64_t a1))(void)
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

uint64_t (***re::FunctionBase<24ul,void ()(re::TonemapLUT)>::destroyCallable(uint64_t a1))(void)
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

uint64_t (***re::FunctionBase<24ul,void ()(re::TonemapFloatLUT)>::destroyCallable(uint64_t a1))(void)
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

uint64_t (***re::FunctionBase<24ul,unsigned char ()(void)>::destroyCallable(uint64_t a1))(void)
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

uint64_t (***re::FunctionBase<24ul,unsigned int ()(void)>::destroyCallable(uint64_t a1))(void)
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

void re::DirectBuffer::getResourceId(re::DirectBuffer *this@<X0>, unsigned __int8 *a2@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*this)
  {
    v3 = DRBufferAsResource();
    *src = 0;
    v5 = 0;
    DRResourceGetIdentifier();
    uuid_copy(a2, src);
  }

  else
  {

    uuid_copy(a2, UUID_NULL);
  }
}

void re::DirectBuffer::readUsing(id *a2@<X1>, void *a3@<X8>)
{
  v6 = *a2;
  v4 = DRBufferReadUsing();
  *a3 = v4;
  v5 = v4;
}

void re::MaterialDefinition::deinit(re::MaterialDefinition *this)
{
  re::ShaderParameterTable::deinit((this + 272));
  re::TextureParameterTable::deinit((this + 800));
  re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 160);
  v2 = *(this + 15);
  if (v2)
  {
    v3 = *(this + 16);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      re::internal::destroyPersistent<re::MaterialTechniqueDefinition>("deinit", 20, v5);
      v4 -= 8;
    }

    while (v4);
  }

  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 2);
  re::FixedArray<CoreIKTransform>::deinit(this + 14);
  v6 = *(this + 42);
  if (v6)
  {
    v7 = 0;
    v8 = *(this + 19);
    while (1)
    {
      v9 = *v8;
      v8 += 12;
      if (v9 < 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        LODWORD(v7) = *(this + 42);
        break;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  while (v7 != v6)
  {
    re::FixedArray<CoreIKTransform>::deinit((*(this + 19) + 48 * v7 + 16));
    v10 = *(this + 42);
    if (v10 <= v7 + 1)
    {
      v10 = v7 + 1;
    }

    while (v10 - 1 != v7)
    {
      LODWORD(v7) = v7 + 1;
      if ((*(*(this + 19) + 48 * v7) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v7) = v10;
LABEL_17:
    ;
  }

  re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(this + 17);
  v12 = *(this + 178);
  if (v12)
  {
    v13 = re::globalAllocators(v11);
    (*(*v13[2] + 40))(v13[2], v12);
  }

  *(this + 178) = 0;
  *(this + 1433) = 0;
}

re *re::internal::destroyPersistent<re::MaterialTechniqueDefinition>(re *result, uint64_t a2, re::MaterialTechniqueDefinition *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::MaterialTechniqueDefinition::~MaterialTechniqueDefinition(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

double re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(uint64_t *a1)
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
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::FixedArray<CoreIKTransform>::deinit((v6 + v4 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 48;
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

re::MaterialInstance *re::MaterialInstance::MaterialInstance(re::MaterialInstance *this, re::MaterialManager *a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *v4 = &unk_1F5D037D0;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 44) = 0u;
  *(v4 + 60) = 0x7FFFFFFFLL;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0u;
  *(v4 + 120) = 0u;
  *(v4 + 136) = 0u;
  *(v4 + 152) = 0;
  *(v4 + 156) = 0x7FFFFFFFLL;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0u;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 232) = 0;
  *(v4 + 236) = 0x7FFFFFFFLL;
  *(v4 + 296) = 0;
  *(v4 + 248) = 0u;
  *(v4 + 264) = 0u;
  *(v4 + 280) = 0u;
  re::MaterialParameterTable::MaterialParameterTable((v4 + 304));
  *(this + 179) = 0;
  *(this + 1448) = 0;
  *(this + 91) = 0u;
  *(this + 182) = atomic_fetch_add(&re::MaterialInstance::g_lastInstanceId, 1uLL);
  *(this + 183) = a2;
  return this;
}

void re::MaterialInstance::~MaterialInstance(re::MaterialInstance *this)
{
  *this = &unk_1F5D037D0;
  if (*(this + 183))
  {
    v2 = *(this + 9);
    v3 = *(this + 10);
    v4 = *(this + 13);
    v22 = 0;
    v21 = 0uLL;
    re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>>::init<>(&v21, v2, v4 + v3);
    v5 = *(this + 10);
    v6 = v22;
    if (v5)
    {
      v7 = *(this + 11);
      v8 = 40 * v5;
      do
      {
        std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>::operator=[abi:nn200100](v6, v7);
        v7 += 5;
        v6 += 5;
        v8 -= 40;
      }

      while (v8);
      v6 = v22;
    }

    v9 = *(this + 13);
    if (v9)
    {
      v10 = *(this + 14);
      v11 = &v6[5 * v5];
      v12 = 40 * v9;
      do
      {
        std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>::operator=[abi:nn200100](v11, v10);
        v10 += 5;
        v11 += 5;
        v12 -= 40;
      }

      while (v12);
    }

    re::MaterialManager::destroyMaterial(*(this + 183), *(this + 182), &v21);
    re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>>::deinit(&v21);
  }

  re::ShaderParameterTable::deinit((this + 328));
  re::TextureParameterTable::deinit((this + 856));
  re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 167);
  re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>>::deinit(this + 9);
  re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>>::deinit(this + 12);
  re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(this + 3);
  v14 = *(this + 2);
  if (v14)
  {

    *(this + 2) = 0;
  }

  v15 = *(this + 179);
  if (v15)
  {
    v16 = re::globalAllocators(v13);
    (*(*v16[2] + 40))(v16[2], v15);
  }

  *(this + 179) = 0;
  re::MaterialParameterTable::~MaterialParameterTable((this + 304));
  re::FixedArray<re::LinkedFunction>::deinit(this + 34);
  re::FixedArray<re::LinkedFunction>::deinit(this + 31);
  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 25);
  re::FixedArray<re::sg::ShaderGraphDynamicFunctionConstant>::deinit(this + 21);
  v17 = *(this + 15);
  if (v17)
  {
    v18 = *(this + 38);
    if (v18)
    {
      v19 = *(this + 17);
      do
      {
        if ((*v19 & 0x80000000) != 0)
        {
          *v19 &= ~0x80000000;
          *(v19 + 8) = 0;
        }

        v19 += 24;
        --v18;
      }

      while (v18);
    }

    (*(*v17 + 40))(v17, *(this + 16));
    *(this + 38) = 0;
    *(this + 120) = 0u;
    *(this + 136) = 0u;
    *(this + 156) = 0x7FFFFFFFLL;
  }

  re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>>::deinit(this + 12);
  re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>>::deinit(this + 9);
  re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(this + 3);
  v20 = *(this + 2);
  if (v20)
  {

    *(this + 2) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::MaterialInstance::~MaterialInstance(this);

  JUMPOUT(0x1E6906520);
}

void *re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>>::deinit(void *result)
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
        v4 = std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>::~unique_ptr[abi:nn200100](v4) + 5;
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

void re::MaterialTechniqueDefinition::~MaterialTechniqueDefinition(re::MaterialTechniqueDefinition *this)
{
  re::GeomMesh::freeName(this);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 349);
  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 343);
  objc_destroyWeak(this + 342);
  *(this + 342) = 0;
  re::FixedArray<re::WeakStringID>::deinit(this + 337);
  re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(this + 331);
  if (*(this + 2632) == 1)
  {
    *(this + 330) = 0;
  }

  re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit(this + 323);
  re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit(this + 315);
  re::DynamicString::deinit((this + 2472));
  re::DynamicString::deinit((this + 2440));
  re::MaterialParameterTable::~MaterialParameterTable((this + 1296));
  re::MaterialParameterTable::~MaterialParameterTable((this + 168));
  re::DynamicArray<unsigned long>::deinit(this + 128);
  re::FixedArray<re::TechniqueFunctionConstant>::deinit(this + 6);
  re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit(this + 1);
}

void *re::FixedArray<re::WeakStringID>::deinit(void *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result;
    v4 = result + 1;
    v3 = result[1];
    if (v3)
    {
      v5 = result[2];
      bzero(v5, 8 * v3);
      result = (*(*v1 + 40))(v1, v5);
      *v4 = 0;
      v4[1] = 0;
    }

    *v2 = 0;
  }

  return result;
}

uint64_t *re::FixedArray<std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>>::init<>(uint64_t *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x666666666666667)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 40, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v7, v8);
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 40 * a3, 8);
  v4[2] = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *result = 0;
      result[4] = 0;
      result += 5;
      --v6;
    }

    while (v6);
  }

  *result = 0;
  result[4] = 0;
  return result;
}

uint64_t *std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>::operator=[abi:nn200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    std::function<void ()(re::MaterialTechnique *)>::operator()((a1 + 1), v5);
  }

  std::__function::__value_func<void ()(re::MaterialTechnique *)>::operator=[abi:nn200100]((a1 + 1), (a2 + 1));
  return a1;
}

uint64_t std::function<void ()(re::MaterialTechnique *)>::operator()(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<void ()(re::MaterialTechnique *)>::operator=[abi:nn200100](v4, v5);
}

uint64_t std::__function::__value_func<void ()(re::MaterialTechnique *)>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(re::MaterialTechnique *)>::operator=[abi:nn200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(re::MaterialTechnique *)>::operator=[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t *std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(re::MaterialTechnique *)>::operator()((a1 + 1), v2);
  }

  std::__function::__value_func<void ()(re::MaterialTechnique *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::__function::__value_func<void ()(re::MaterialTechnique *)>::~__value_func[abi:nn200100](uint64_t a1)
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

_anonymous_namespace_ *re::DeformationFencePool::init(re::DeformationFencePool *this, const re::mtl::Device *a2)
{
  v2 = this;
  *this = a2;
  v3 = this + 16;
  v4 = 512;
  do
  {
    *(v3 - 1) = 0xFFFFFFFFFFFFFFFLL;
    v3 += 64;
    v4 -= 64;
  }

  while (v4);
  *(v2 + 65) = 0;
}

_anonymous_namespace_ *re::BucketArray<NS::SharedPtr<MTL::Fence> const*,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<NS::SharedPtr<MTL::Fence> const*,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<NS::SharedPtr<MTL::Fence>,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<NS::SharedPtr<MTL::Fence>,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t re::DeformationFencePool::deinit(re::DeformationFencePool *this)
{
  *this = 0;
  v2 = this + 16;
  v3 = 512;
  do
  {
    *(v2 - 1) = 0xFFFFFFFFFFFFFFFLL;
    re::BucketArray<unsigned long,8ul>::deinit(v2);
    v2 += 64;
    v3 -= 64;
  }

  while (v3);
  *(this + 65) = 0;
  re::BucketArray<unsigned long,8ul>::deinit(this + 528);

  return re::BucketArray<NS::SharedPtr<MTL::Fence>,32ul>::deinit(this + 584);
}

unint64_t re::DeformationFencePool::setCurrentFrame(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = a2 & 0xFFFFFFFFFFFFFFFLL;
  if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFFLL)
  {
    v6 = (result + 8);
    for (i = 8; i != 520; v6 = (v4 + i))
    {
      v8 = *v6 & 0xFFFFFFFFFFFFFFFLL;
      if (v8 != 0xFFFFFFFFFFFFFFFLL && v8 <= v5)
      {
        v10 = v6[6];
        if (v10)
        {
          for (j = 0; j != v10; ++j)
          {
            v12 = *re::BucketArray<unsigned long,8ul>::operator[]((v6 + 1), j);
            *re::BucketArray<NS::SharedPtr<MTL::Fence> const*,8ul>::addUninitialized(v4 + 528) = v12;
          }
        }

        *v6 = 0xFFFFFFFFFFFFFFFLL;
        result = re::BucketArray<NS::SharedPtr<MTL::Fence> const*,8ul>::clear((v6 + 1));
      }

      i += 64;
    }
  }

  v13 = v4 + ((a3 & 7) << 6);
  v15 = *(v13 + 8);
  v14 = (v13 + 8);
  *(v4 + 520) = v14;
  v16 = v15 & 0xFFFFFFFFFFFFFFFLL;
  if (((v15 ^ a3) & 0xFFFFFFFFFFFFFFFLL) == 0 || v16 == 0xFFFFFFFFFFFFFFFLL)
  {
    *v14 = a3;
  }

  else
  {
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Overlapped frame (%llu) with current frame (%llu) detected! Last completed frame: %llu", "currentFrame == m_currentPerFrameFences->frameCount || !m_currentPerFrameFences->frameCount.isValid()", "setCurrentFrame", 53, v16, a3 & 0xFFFFFFFFFFFFFFFLL, v5);
    result = _os_crash("assertion failure: (currentFrame == m_currentPerFrameFences->frameCount || !m_currentPerFrameFences->frameCount.isValid()) Overlapped frame (%llu) with current frame (%llu) detected! Last completed frame: %llu", v18, v19, v20);
    __break(1u);
  }

  return result;
}

unint64_t re::DeformationFencePool::allocateFence(re::DeformationFencePool *this)
{
  v2 = *(this + 71);
  if (v2)
  {
    v3 = *re::BucketArray<unsigned long,8ul>::operator[](this + 528, v2 - 1);
    re::BucketArray<unsigned long,8ul>::operator[](this + 528, *(this + 71) - 1);
    --*(this + 71);
    ++*(this + 144);
LABEL_5:
    *re::BucketArray<NS::SharedPtr<MTL::Fence> const*,8ul>::addUninitialized(*(this + 65) + 8) = v3;
    return v3;
  }

  v4 = [**this newFence];
  *re::BucketArray<NS::SharedPtr<MTL::Fence>,32ul>::addUninitialized(this + 584) = v4;
  v6 = *(this + 78);
  if (v6)
  {
    v3 = re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](this + 584, v6 - 1);
    goto LABEL_5;
  }

  re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
  result = _os_crash("assertion failure: (m_size > 0) Array is empty");
  __break(1u);
  return result;
}

unint64_t re::BucketArray<NS::SharedPtr<MTL::Fence> const*,8ul>::clear(unint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      result = re::BucketArray<unsigned long,8ul>::operator[](v1, i);
    }
  }

  *(v1 + 40) = 0;
  ++*(v1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<NS::SharedPtr<MTL::Fence> const*,8ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 8 * a2)
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
        v5 = (*(**v3 + 32))(*v3, 64, 0);
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

_anonymous_namespace_ *re::BucketArray<NS::SharedPtr<MTL::Fence>,32ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 32 * a2)
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
        v5 = (*(**v3 + 32))(*v3, 256, 0);
        result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t re::BucketArray<NS::SharedPtr<MTL::Fence> const*,8ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 8 * v3)
  {
    re::BucketArray<NS::SharedPtr<MTL::Fence> const*,8ul>::setBucketsCapacity(a1, (v2 + 8) >> 3);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 3)
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
    v16 = v2 >> 3;
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

  v5 = *(v4 + 8 * (v2 >> 3));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 8 * (v2 & 7);
}

uint64_t re::BucketArray<NS::SharedPtr<MTL::Fence>,32ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 32 * v3)
  {
    re::BucketArray<NS::SharedPtr<MTL::Fence>,32ul>::setBucketsCapacity(a1, (v2 + 32) >> 5);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 5)
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
    v16 = v2 >> 5;
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

  v5 = *(v4 + 8 * (v2 >> 5));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 8 * (v2 & 0x1F);
}

uint64_t re::mesh_traversal::traverseMeshScene(re::mesh_traversal *this, float32x4_t *a2, const re::MeshScene *a3)
{
  v82 = a3;
  v129 = *MEMORY[0x1E69E9840];
  if ((**this)(this))
  {
    v5 = a2[2].i64[0];
    v68 = a2[2].u64[1];
    v69 = a2[1].u64[1];
    v6 = a2[37].i64[0];
    if (!v6)
    {
      v6 = a2[32].i64[0];
    }

    v80 = v6;
    v81 = a2[32].i64[0];
    v79 = a2[32].i8[10];
    v99 = a2[28];
    v8 = a2[7].i64[0];
    v7 = a2[7].i64[1];
    v9 = a2[43].i8[0];
    v100 = *v8;
    v10 = a2->i64[1];
    v66 = v5;
    v67 = a2[1].i64[0];
    v90[0] = 0;
    v90[1] = v10;
    v91 = xmmword_1E3047670;
    v92 = xmmword_1E3047680;
    v93 = xmmword_1E30476A0;
    v94 = xmmword_1E30474D0;
    v95 = 0;
    v96 = 0;
    v11 = a2[3].i64[1];
    if (v11)
    {
      v73 = a2[3].i64[0];
LABEL_8:
      v12 = 0;
      v89 = 0;
      v13 = 0;
      v86 = &a2[31].i8[8];
      v72 = v8 + 40;
      v78 = v7 + 40;
      v65 = v8;
      v83 = v7;
      v64 = v9;
      v74 = v11;
      while (1)
      {
        if (v13 >= a2[4].i64[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = *(a2[4].i64[0] + 8 * v13);
        }

        v15 = *(v8 + 24);
        if (v15 <= v13)
        {
          goto LABEL_52;
        }

        v16 = v72;
        if ((*(v8 + 32) & 1) == 0)
        {
          v16 = *(v8 + 48);
        }

        v75 = v12;
        v17 = 0;
        v18 = *(v16 + 4 * v13);
        v19 = *(&v100 & 0xFFFFFFFFFFFFFFF7 | (8 * (v18 & 1)));
        v20 = &v73[12 * v13];
        v21 = v18 >> 1;
        v88 = a2[30].i64[1];
        v87 = a2[31].u64[0];
        v22 = a2[8];
        v23 = a2[9];
        v24 = a2[10];
        v25 = a2[11];
        v26 = *(v20 + 2);
        v27 = *(v20 + 3);
        v28 = *(v20 + 4);
        *v101 = *(v20 + 1);
        *&v101[16] = v26;
        *&v101[32] = v27;
        *&v101[48] = v28;
        do
        {
          *(&v109 + v17) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*&v101[v17])), v23, *&v101[v17], 1), v24, *&v101[v17], 2), v25, *&v101[v17], 3);
          v17 += 16;
        }

        while (v17 != 64);
        v29 = v19 + 32 * v21;
        v97[0] = v109;
        v97[1] = v110;
        v97[2] = v111;
        v97[3] = v112;
        *v101 = re::Slice<re::internal::BindPointImplBase const*>::range(a2, *v20, v20[1]);
        *&v101[8] = v30;
        *&v101[16] = v14;
        *&v101[24] = v97;
        *&v101[40] = a2[12];
        *&v101[32] = v29;
        *&v101[56] = v86;
        v102 = v88;
        v103 = v87;
        v104 = a2[27].i8[8];
        v105 = v99;
        v106 = v13;
        v107 = 0;
        v108 = v9;
        v31 = (*(*this + 8))(this, v101);
        v32 = v74;
        if (v31)
        {
          v33 = *v20;
          v34 = v20[1];
          v85 = v69;
          v77 = v67;
          if (v69 >= v34)
          {
            if (v69 < v33)
            {
              goto LABEL_56;
            }

            v77 = v67 + 4 * v33;
            v85 = v34 - v33;
          }

          v84 = v68;
          v76 = v66;
          if (v68 >= v34)
          {
            if (v68 < v33)
            {
              goto LABEL_57;
            }

            v76 = v66 + 8 * v33;
            v84 = v34 - v33;
          }

          v70 = v31;
          v71 = v13;
          v35 = re::Slice<re::internal::BindPointImplBase const*>::range(a2, v33, v34);
          v37 = v83;
          v120 = *v83;
          if (v36)
          {
            v38 = v35;
            v13 = v36;
            v39 = 0;
            v40 = 32 * v89;
            while (1)
            {
              v41 = a2;
              v42 = *(v37 + 3);
              if (v42 <= v89 + v39)
              {
                break;
              }

              v43 = v78;
              if ((v37[2] & 1) == 0)
              {
                v43 = *(v37 + 6);
              }

              v44 = *(v38 + 8 * v39);
              a2 = v41;
              if (v39 >= v20[11])
              {
                v45 = *(v44 + 458);
              }

              else
              {
                v45 = *(v20[10] + 4 * v39);
              }

              v46 = v88 + 20 * v45;
              if (v87 <= v45)
              {
                v46 = 0;
              }

              if (v39 >= v85)
              {
                v47 = 0;
              }

              else
              {
                v47 = *(v77 + 4 * v39);
              }

              if (v39 >= v84)
              {
                v48 = 0;
              }

              else
              {
                v48 = *(v76 + 8 * v39);
              }

              *&v109 = v81;
              *(&v109 + 1) = v80;
              LODWORD(v110) = v82;
              BYTE4(v110) = v79;
              *(&v110 + 1) = v39;
              LODWORD(v111) = v47;
              *(&v111 + 1) = v48;
              *&v112 = v44;
              *(&v112 + 1) = v97;
              *&v113 = *(&v120 & 0xFFFFFFFFFFFFFFF7 | (8 * (*(v43 + 4 * v89 + 4 * v39) & 1))) + v40;
              DWORD2(v113) = v45;
              v114 = v86;
              v115 = v46;
              v116 = a2[27].i8[8];
              v117 = v99;
              v118 = 0;
              v119 = 0;
              (*(*this + 16))(this, &v109);
              ++v39;
              v40 += 32;
              v37 = v83;
              if (v13 == v39)
              {
                goto LABEL_41;
              }
            }

            v98 = 0;
            v112 = 0u;
            v113 = 0u;
            v110 = 0u;
            v111 = 0u;
            v109 = 0u;
            v15 = MEMORY[0x1E69E9C10];
            v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v121 = 136315906;
            v122 = "operator[]";
            v123 = 1024;
            if (v53)
            {
              v54 = 3;
            }

            else
            {
              v54 = 2;
            }

            v124 = 866;
            v125 = 2048;
            v126 = v89 + v39;
            v127 = 2048;
            v128 = v42;
            _os_log_send_and_compose_impl(v54, &v98, &v109, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v121, 38, v62, v63);
            _os_crash_msg();
            __break(1u);
LABEL_52:
            *&v97[0] = 0;
            v112 = 0u;
            v113 = 0u;
            v110 = 0u;
            v111 = 0u;
            v109 = 0u;
            v55 = MEMORY[0x1E69E9C10];
            v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v101 = 136315906;
            *&v101[4] = "operator[]";
            *&v101[12] = 1024;
            if (v56)
            {
              v57 = 3;
            }

            else
            {
              v57 = 2;
            }

            *&v101[14] = 866;
            *&v101[18] = 2048;
            *&v101[20] = v13;
            *&v101[28] = 2048;
            *&v101[30] = v15;
            _os_log_send_and_compose_impl(v57, v97, &v109, 80, &dword_1E1C61000, v55, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v101, 38, v62, v63);
            _os_crash_msg();
            __break(1u);
LABEL_56:
            re::internal::assertLog(6, v33, "assertion failure: '%s' (%s:line %i) Index out of range. fromInclusive = %zu, size = %zu", "fromInclusive <= size()", "range", 248, v33, v69);
            _os_crash("assertion failure: (fromInclusive <= size()) Index out of range. fromInclusive = %zu, size = %zu", v58, v60);
            __break(1u);
LABEL_57:
            re::internal::assertLog(6, v33, "assertion failure: '%s' (%s:line %i) Index out of range. fromInclusive = %zu, size = %zu", "fromInclusive <= size()", "range", 248, v33, v68);
            _os_crash("assertion failure: (fromInclusive <= size()) Index out of range. fromInclusive = %zu, size = %zu", v59, v61);
            __break(1u);
          }

LABEL_41:
          v8 = v65;
          v9 = v64;
          v13 = v71;
          v32 = v74;
          v31 = v70;
        }

        v12 = v75 | v31;
        v49 = v20[1];
        v50 = v49 >= *v20;
        v51 = v49 - *v20;
        if (!v50)
        {
          v51 = 0;
        }

        v89 += v51;
        if (++v13 == v32)
        {
          return v12 & 1;
        }
      }
    }

    if (v10)
    {
      v73 = v90;
      v11 = 1;
      goto LABEL_8;
    }
  }

  LOBYTE(v12) = 0;
  return v12 & 1;
}

uint64_t re::mesh_traversal::traverseVFXScene(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v17 = *MEMORY[0x1E69E9840];
  if (!(*(*a1 + 24))(a1))
  {
    return 0;
  }

  memset(v11, 0, 24);
  v11[3] = a2 + 128;
  v11[4] = a2 + 80;
  v11[5] = 0;
  v11[6] = 0;
  v11[7] = a2 + 504;
  v11[8] = 0;
  v11[9] = 0;
  v12 = *(a2 + 440);
  v13 = *(a2 + 448);
  v8 = *(a2 + 912);
  v14 = 0;
  v15 = v8;
  v16 = *(a2 + 688);
  v9 = (*(*a1 + 8))(a1, v11);
  if (v9)
  {
    re::addVFXSceneDrawsToTechniqueBuckets(a2, a3, a1, v4);
  }

  return v9;
}

re::CustomDeformers *re::CustomDeformers::CustomDeformers(re::CustomDeformers *this, re::Allocator *a2)
{
  *this = &unk_1F5D03830;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 14) = 0;
  *(this + 40) = 0u;
  *(this + 60) = 0x1FFFFFFFFLL;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  *(this + 72) = 0u;
  v4 = this + 72;
  *(this + 108) = 0x7FFFFFFFLL;
  *(this + 20) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 0;
  *(this + 1) = a2;
  v5 = (this + 8);
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(this + 1, 0);
  ++*(this + 8);
  *(this + 13) = 8;
  re::DataArray<re::CustomDeformers::CustomDeformerData>::allocBlock(v5);
  re::HashTable<re::StringID,re::DataArrayHandle<re::CustomDeformers::CustomDeformerData>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v4, a2, 32);
  return this;
}

void re::HashTable<re::StringID,re::DataArrayHandle<re::CustomDeformers::CustomDeformerData>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 32 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_15, 4 * v10);
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

uint64_t re::CustomDeformers::registerCustomDeformer@<X0>(uint64_t a1@<X0>, StringID *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  if (a5 && a6)
  {
    v16 = "Custom deformers only current support either CPU or GPU mode.";
LABEL_8:
    goto LABEL_9;
  }

  if (!(a5 | a6))
  {
    v16 = "Custom deformers must specify either CPU or GPU functions.";
    goto LABEL_8;
  }

  var1 = a2->var1;
  if (strlen(var1) >= 0x40)
  {
    result = re::DynamicString::format(&v61, "Invalid deformer name, exceeded maximum length (%zu): %s.", v18, 64, var1);
LABEL_9:
    v20 = v61;
    v21 = v62;
    *a8 = 0;
    *(a8 + 8) = 1001;
    *(a8 + 16) = &re::GraphicsErrorCategory(void)::instance;
    *(a8 + 24) = v20;
    *(a8 + 40) = v21;
    return result;
  }

  v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 72, a2, v22 ^ (v22 >> 31), &v61);
  if (HIDWORD(v61) != 0x7FFFFFFF)
  {
    result = re::DynamicString::format(&v61, "Cannot register duplicate custom deformer name: %s.", v23, a2->var1);
    goto LABEL_9;
  }

  v24 = *(a1 + 144);
  if (v24)
  {
    v25 = *(*(a1 + 160) + 8 * v24 - 8);
    *(a1 + 144) = v24 - 1;
    ++*(a1 + 152);
  }

  else
  {
    v25 = *(a1 + 120);
    *(a1 + 120) = v25 + 1;
  }

  v26 = *(a1 + 64);
  if ((v26 + 1) >> 24)
  {
    v27 = 1;
  }

  else
  {
    v27 = v26 + 1;
  }

  *(a1 + 64) = v27;
  v28 = *(a1 + 60);
  v29 = *(a1 + 62);
  if (v28 != 0xFFFF || v29 != 0xFFFF)
  {
    v35 = *(a1 + 24);
    if (v35 > v29)
    {
      v51 = *(a1 + 62);
      v36 = (*(a1 + 40) + 16 * v29);
      *(v36[1] + 4 * v28) = v27;
      v34 = *v36 + 48 * v28;
      *(a1 + 60) = *v34;
      v50 = *(a1 + 64);
      goto LABEL_29;
    }

    v52 = 0;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    v40 = MEMORY[0x1E69E9C10];
    v41 = v29;
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v42 = 3;
    }

    else
    {
      v42 = 2;
    }

    v56 = 789;
    v57 = 2048;
    v58 = v41;
    v59 = 2048;
    v60 = v35;
    _os_log_send_and_compose_impl(v42, &v52, &v61, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v53, 38, v48, v49);
    _os_crash_msg();
    __break(1u);
    goto LABEL_36;
  }

  if (*(a1 + 56) >= *(a1 + 52))
  {
    v30 = v25;
    re::DataArray<re::CustomDeformers::CustomDeformerData>::allocBlock((a1 + 8));
    v25 = v30;
  }

  v31 = *(a1 + 24);
  v32 = (v31 - 1);
  if (!v31)
  {
LABEL_36:
    v52 = 0;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    v43 = MEMORY[0x1E69E9C10];
    v44 = v32;
    v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    if (v45)
    {
      v46 = 3;
    }

    else
    {
      v46 = 2;
    }

    v56 = 789;
    v57 = 2048;
    v58 = v44;
    v59 = 2048;
    v60 = 0;
    _os_log_send_and_compose_impl(v46, &v52, &v61, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v53, 38, v48, v49);
    _os_crash_msg();
    __break(1u);
LABEL_40:
    re::internal::assertLog(5, v23, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v28);
    _os_crash("assertion failure: (!overflow) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", v47);
    __break(1u);
  }

  v28 = *(a1 + 56);
  if (v28 >= 0x10000)
  {
    goto LABEL_40;
  }

  v51 = (v31 - 1);
  v33 = (*(a1 + 40) + 16 * v32);
  *(a1 + 56) = v28 + 1;
  v50 = *(a1 + 64);
  *(v33[1] + 4 * v28) = v50;
  v34 = *v33 + 48 * v28;
LABEL_29:
  ++*(a1 + 48);
  v37 = v25;
  *v34 = v25;
  *(v34 + 8) = a3;
  *(v34 + 16) = a4;
  *(v34 + 24) = a5;
  *(v34 + 32) = a6;
  *(v34 + 40) = a7;
  v61 = 0uLL;
  *&v62 = 0;
  v38 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 72, a2, (0x94D049BB133111EBLL * (v38 ^ (v38 >> 27))) ^ ((0x94D049BB133111EBLL * (v38 ^ (v38 >> 27))) >> 31), &v61);
  if (HIDWORD(v61) == 0x7FFFFFFF)
  {
    v39 = re::HashTable<re::StringID,re::DataArrayHandle<re::CustomDeformers::CustomDeformerData>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1 + 72, DWORD2(v61), v61);
    result = re::StringID::StringID((v39 + 8), a2);
    *(v39 + 24) = v28 + (v51 << 16) + ((v50 & 0xFFFFFF) << 32);
    ++*(a1 + 112);
  }

  *a8 = 1;
  *(a8 + 8) = v37;
  return result;
}

uint64_t *re::CustomDeformers::unregisterCustomDeformer@<X0>(re::CustomDeformers *this@<X0>, const re::StringID *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 72, a2, v6 ^ (v6 >> 31), &v16);
  if (HIDWORD(v16) == 0x7FFFFFFF)
  {
    result = re::DynamicString::format(&v16, "Cannot unregister unknown deformer: %s.", v7, *(a2 + 1));
    v9 = 0;
    v10 = v16;
    v11 = v17;
    v12 = v18;
    *(a3 + 8) = 1001;
    *(a3 + 16) = &re::GraphicsErrorCategory(void)::instance;
    *(a3 + 24) = v10;
    *(a3 + 40) = v11;
    *(a3 + 48) = v12;
  }

  else
  {
    v13 = *(this + 11) + 32 * HIDWORD(v16);
    v14 = re::DataArray<re::CustomDeformers::CustomDeformerData>::get(this + 8, *(v13 + 24));
    re::DynamicArray<unsigned long>::add((this + 128), v14);
    re::DataArray<re::CustomDeformers::CustomDeformerData>::destroy(this + 8, *(v13 + 24));
    v15 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 72, a2, v15 ^ (v15 >> 31), &v16);
    result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(this + 72, &v16);
    v9 = 1;
  }

  *a3 = v9;
  return result;
}

uint64_t re::DataArray<re::CustomDeformers::CustomDeformerData>::get(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = HIWORD(a2);
  v3 = *(a1 + 16);
  if (v3 <= HIWORD(a2))
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

    v12 = 797;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 32) + 16 * HIWORD(a2)) + 48 * a2;
}

_DWORD *re::DataArray<re::CustomDeformers::CustomDeformerData>::destroy(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v20 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 16;
  result = re::DataArray<re::CustomDeformers::CustomDeformerData>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (result)
  {
    v6 = *(a1 + 16);
    if (v6 <= HIWORD(v2))
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

      v14 = 789;
      v15 = 2048;
      v16 = HIWORD(v2);
      v17 = 2048;
      v18 = v6;
      _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *result = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }

  return result;
}

uint64_t re::CustomDeformers::customDeformerID(re::CustomDeformers *this, const re::StringID *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 72, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return -1;
  }

  else
  {
    return *re::DataArray<re::CustomDeformers::CustomDeformerData>::get(this + 8, *(*(this + 11) + 32 * v6 + 24));
  }
}

void re::CustomDeformers::addDeformationInstance(uint64_t a1@<X0>, char *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v7 = *a2;
    if (*a2)
    {
      v8 = a2[1];
      if (v8)
      {
        v9 = a2 + 2;
        do
        {
          v7 = 31 * v7 + v8;
          v10 = *v9++;
          v8 = v10;
        }

        while (v10);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v19[0] = 2 * v7;
  v19[1] = a2;
  v11 = 0xBF58476D1CE4E5B9 * (v7 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v7) >> 31));
  v12 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 72, v19, (0x94D049BB133111EBLL * (v11 ^ (v11 >> 27))) ^ ((0x94D049BB133111EBLL * (v11 ^ (v11 >> 27))) >> 31), v20);
  if (v21 == 0x7FFFFFFF)
  {
    if (v19[0])
    {
      if (v19[0])
      {
      }
    }

    *(a4 + 24) = 0;
    *a4 = -1;
    *(a4 + 12) = 0;
    *(a4 + 4) = 0;
    LOBYTE(v13) = -1;
    *(a4 + 20) = 0;
  }

  else
  {
    v14 = *(a1 + 88) + 32 * v21;
    if (v19[0])
    {
      if (v19[0])
      {
      }
    }

    v15 = re::DataArray<re::CustomDeformers::CustomDeformerData>::get(a1 + 8, *(v14 + 24));
    v16 = (*(v15 + 8))(*v15, *(v15 + 40));
    *a4 = *(v14 + 24);
    *(a4 + 8) = v16;
    *(a4 + 16) = v17;
    LODWORD(v13) = *a3;
    if (v13 == 255)
    {
      v13 = *(a3 + 2);
      if (v13)
      {
        if (*(v13 + 208))
        {
          v18 = *(v15 + 24) == 0;
        }

        else
        {
          v18 = 1;
        }

        LOBYTE(v13) = !v18;
      }
    }
  }

  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 24) = v13;
  *(a4 + 32) = -1;
  *(a4 + 40) = 0;
}

uint64_t re::CustomDeformers::allocateBuffers(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v78 = *MEMORY[0x1E69E9840];
  v13 = (*(*a2 + 32))(a2, 64, 8);
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  v57 = a1;
  v14 = *(a1 + 12);
  *v13 = a2;
  re::DynamicArray<re::MeshLodLevelInfo>::setCapacity(v13, v14);
  ++*(v13 + 24);
  v15 = *(*a5 + 48);
  v59 = 0;
  v60 = 0;
  v61 = 0;
  if (!v15)
  {
    goto LABEL_30;
  }

  for (i = 0; i != v15; ++i)
  {
    v17 = v60;
    if (v60 <= i)
    {
      goto LABEL_43;
    }

    if (*(v61 + i))
    {
      continue;
    }

    v17 = re::CustomDeformers::resolveCustomDeformerHandle(a5, i);
    memset(&v63[8], 0, 20);
    *&v65[2] = 0;
    *v63 = a2;
    re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v63, v15);
    ++*&v63[24];
    v8 = v60;
    if (v60 <= i)
    {
      goto LABEL_55;
    }

    *(v61 + i) = 1;
    v58 = i;
    v18 = i;
    do
    {
      v19 = re::CustomDeformers::resolveCustomDeformerHandle(a5, v18);
      if (v19 == v17 && ((v19 ^ v17) & 0xFFFFFF00000000) == 0)
      {
        v8 = v58;
        v9 = v60;
        if (v60 <= v58)
        {
          v62 = 0;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v73 = 0u;
          v34 = MEMORY[0x1E69E9C10];
          v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v66 = 136315906;
          *&v66[4] = "operator[]";
          v67 = 1024;
          if (v35)
          {
            v36 = 3;
          }

          else
          {
            v36 = 2;
          }

          v68 = 468;
          v69 = 2048;
          v70 = v8;
          v71 = 2048;
          v72 = v9;
          _os_log_send_and_compose_impl(v36, &v62, &v73, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v66, 38, v49, v50);
          _os_crash_msg();
          __break(1u);
LABEL_43:
          *v66 = 0;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v73 = 0u;
          v37 = MEMORY[0x1E69E9C10];
          v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v63 = 136315906;
          *&v63[4] = "operator[]";
          *&v63[12] = 1024;
          if (v38)
          {
            v39 = 3;
          }

          else
          {
            v39 = 2;
          }

          *&v63[14] = 468;
          *&v63[18] = 2048;
          *&v63[20] = i;
          v64 = 2048;
          *v65 = v17;
          _os_log_send_and_compose_impl(v39, v66, &v73, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v63, 38, v49, v50);
          _os_crash_msg();
          __break(1u);
          goto LABEL_47;
        }

        *(v61 + v58) = 1;
        re::DynamicArray<unsigned long>::add(v63, &v58);
      }

      v18 = v58 + 1;
      v58 = v18;
    }

    while (v18 < v15);
    v20 = re::DataArray<re::CustomDeformers::CustomDeformerData>::tryGet(v57 + 8, v17);
    if (v20)
    {
      v9 = *v63;
      v21 = *&v63[8];
      memset(v63, 0, 24);
      v22 = *&v65[2];
      *&v65[2] = 0;
      ++*&v63[24];
      v23 = *(v13 + 8);
      v24 = *(v13 + 16);
      if (v24 >= v23)
      {
        v8 = v24 + 1;
        if (v23 < v24 + 1)
        {
          v54 = v21;
          if (*v13)
          {
            v25 = 2 * v23;
            v26 = v23 == 0;
            v27 = 8;
            if (!v26)
            {
              v27 = v25;
            }

            if (v27 <= v8)
            {
              v28 = v8;
            }

            else
            {
              v28 = v27;
            }

            re::DynamicArray<re::MeshLodLevelInfo>::setCapacity(v13, v28);
          }

          else
          {
            re::DynamicArray<re::MeshLodLevelInfo>::setCapacity(v13, v8);
            ++*(v13 + 24);
          }

          v21 = v54;
        }

        v24 = *(v13 + 16);
      }

      v29 = *(v13 + 32) + 48 * v24;
      *v29 = v17;
      *(v29 + 8) = v9;
      *(v29 + 16) = v21;
      *(v29 + 40) = v22;
      *(v29 + 32) = 1;
      ++*(v13 + 16);
      ++*(v13 + 24);
    }

    if (*v63 && *&v65[2])
    {
      (*(**v63 + 40))();
    }
  }

LABEL_30:
  v30 = *(v13 + 16);
  re::FixedArray<unsigned long>::init<>((v13 + 40), a2, v30);
  i = a6;
  if (v30)
  {
    v8 = 0;
    v17 = 0;
    while (1)
    {
      v9 = *(v13 + 16);
      if (v9 <= v17)
      {
        break;
      }

      v31 = re::DataArray<re::CustomDeformers::CustomDeformerData>::get(v57 + 8, *(*(v13 + 32) + v8));
      v49 = *v31;
      v50 = *(v31 + 40);
      v32 = (*(v31 + 16))(a2, a3, a4, a5, a6, a7, a8);
      v9 = *(v13 + 48);
      if (v9 <= v17)
      {
        goto LABEL_51;
      }

      *(*(v13 + 56) + 8 * v17++) = v32;
      v8 += 48;
      if (v30 == v17)
      {
        goto LABEL_35;
      }
    }

LABEL_47:
    *v66 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    v40 = MEMORY[0x1E69E9C10];
    v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v63 = 136315906;
    *&v63[4] = "operator[]";
    *&v63[12] = 1024;
    if (v41)
    {
      v42 = 3;
    }

    else
    {
      v42 = 2;
    }

    *&v63[14] = 789;
    *&v63[18] = 2048;
    *&v63[20] = v17;
    v64 = 2048;
    *v65 = v9;
    _os_log_send_and_compose_impl(v42, v66, &v73, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v63, 38, v49, v50);
    _os_crash_msg();
    __break(1u);
LABEL_51:
    *v66 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    v43 = MEMORY[0x1E69E9C10];
    v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v63 = 136315906;
    *&v63[4] = "operator[]";
    *&v63[12] = 1024;
    if (v44)
    {
      v45 = 3;
    }

    else
    {
      v45 = 2;
    }

    *&v63[14] = 468;
    *&v63[18] = 2048;
    *&v63[20] = v17;
    v64 = 2048;
    *v65 = v9;
    _os_log_send_and_compose_impl(v45, v66, &v73, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v63, 38, v49, v50);
    _os_crash_msg();
    __break(1u);
LABEL_55:
    v62 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    v46 = MEMORY[0x1E69E9C10];
    v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v66 = 136315906;
    *&v66[4] = "operator[]";
    v67 = 1024;
    if (v47)
    {
      v48 = 3;
    }

    else
    {
      v48 = 2;
    }

    v68 = 468;
    v69 = 2048;
    v70 = i;
    v71 = 2048;
    v72 = v8;
    _os_log_send_and_compose_impl(v48, &v62, &v73, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v66, 38, v49, v50);
    _os_crash_msg();
    __break(1u);
  }

LABEL_35:
  if (v59 && v60)
  {
    (*(*v59 + 40))();
  }

  return v13;
}

uint64_t re::CustomDeformers::resolveCustomDeformerHandle(void *a1, unint64_t a2)
{
  v3 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](*a1 + 8, a2);
  v4 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](a1[1], *(v3 + 8));
  v6 = *(v3 + 16);
  v7 = *(v4 + 336);
  if (v7 > v6)
  {
    return *(*(v4 + 328) + (v6 << 6));
  }

  re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, *(v3 + 16), v7);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v9, v10);
  __break(1u);
  return result;
}

uint64_t re::DataArray<re::CustomDeformers::CustomDeformerData>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 48 * a2;
  }

  else
  {
    return 0;
  }
}

uint64_t re::CustomDeformers::deformGPU(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a2[2];
  if (v4)
  {
    v8 = result;
    v9 = 0;
    for (i = 0; i != v4; ++i)
    {
      v11 = a2[2];
      if (v11 <= i)
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
        v26 = i;
        v27 = 2048;
        v28 = v11;
        _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
LABEL_11:
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

        v24 = 468;
        v25 = 2048;
        v26 = i;
        v27 = 2048;
        v28 = v11;
        _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
      }

      v12 = a2[4];
      v13 = re::DataArray<re::CustomDeformers::CustomDeformerData>::get(v8 + 8, *(v12 + v9));
      v11 = a2[6];
      if (v11 <= i)
      {
        goto LABEL_11;
      }

      result = (*(v13 + 24))(*(a2[7] + 8 * i), a3, a4, *(v12 + v9 + 40), *(v12 + v9 + 24), *v13, *(v13 + 40));
      v9 += 48;
    }
  }

  return result;
}

uint64_t re::CustomDeformers::deformCPU(uint64_t result, void *a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2[2];
  if (v3)
  {
    v6 = result;
    v7 = 0;
    for (i = 0; i != v3; ++i)
    {
      v9 = a2[2];
      if (v9 <= i)
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
        v24 = i;
        v25 = 2048;
        v26 = v9;
        _os_log_send_and_compose_impl(v13, &v18, &v27, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
        _os_crash_msg();
        __break(1u);
LABEL_11:
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

        v22 = 468;
        v23 = 2048;
        v24 = i;
        v25 = 2048;
        v26 = v9;
        _os_log_send_and_compose_impl(v16, &v18, &v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
        _os_crash_msg();
        __break(1u);
      }

      v10 = a2[4];
      v11 = re::DataArray<re::CustomDeformers::CustomDeformerData>::get(v6 + 8, *(v10 + v7));
      v9 = a2[6];
      if (v9 <= i)
      {
        goto LABEL_11;
      }

      result = (*(v11 + 32))(*(a2[7] + 8 * i), a3, *(v10 + v7 + 40), *(v10 + v7 + 24), *v11, *(v11 + 40));
      v7 += 48;
    }
  }

  return result;
}

unint64_t re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](uint64_t a1, unint64_t a2)
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

  v2 = a2 >> 6;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 6)
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

  return *(v5 + 8 * v2) + 24 * (a2 & 0x3F);
}

void re::CustomDeformers::~CustomDeformers(re::CustomDeformers *this)
{
  re::DynamicArray<unsigned long>::deinit(this + 128);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 9);
  re::DataArray<re::CustomDeformers::CustomDeformerData>::deinit(this + 8);
  re::DynamicArray<unsigned long>::deinit(this + 8);
}

{
  re::DynamicArray<unsigned long>::deinit(this + 128);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 9);
  re::DataArray<re::CustomDeformers::CustomDeformerData>::deinit(this + 8);
  re::DynamicArray<unsigned long>::deinit(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::DataArray<re::CustomDeformers::CustomDeformerData>::deinit(uint64_t result)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(result + 44))
  {
    v1 = result;
    v2 = re::DataArray<re::CustomDeformers::CustomDeformerData>::clear(result);
    if (!v1[2])
    {
      v7 = 0;
      memset(v16, 0, sizeof(v16));
      v4 = MEMORY[0x1E69E9C10];
      v8 = 136315906;
      v9 = "operator[]";
      v10 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v5 = 3;
      }

      else
      {
        v5 = 2;
      }

      v11 = 789;
      v12 = 2048;
      v13 = 0;
      v14 = 2048;
      v15 = 0;
      _os_log_send_and_compose_impl(v5, &v7, v16, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v8, 38, v6);
      _os_crash_msg();
      __break(1u);
    }

    v3 = v1[4];
    (*(**v1 + 40))(*v1, *v3, v2);
    (*(**v1 + 40))(*v1, v3[1]);
    result = re::DynamicArray<unsigned long>::deinit(v1);
    *(v1 + 11) = 0;
  }

  return result;
}

double re::DataArray<re::CustomDeformers::CustomDeformerData>::clear(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v24, a1, 0);
  if (*&v24[0] != a1 || DWORD2(v24[0]) != 0xFFFFFFFFLL)
  {
    do
    {
      v3 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(v24);
      re::DataArray<re::CustomDeformers::CustomDeformerData>::destroy(a1, v3);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(v24);
    }

    while (*&v24[0] != a1 || WORD4(v24[0]) != 0xFFFF || WORD5(v24[0]) != 0xFFFF);
  }

  v6 = a1[2];
  v7 = v6 - 1;
  if (v6 != 1)
  {
    v8 = 16 * v6;
    do
    {
      v9 = a1[2];
      if (v9 <= v7)
      {
        v15 = 0;
        memset(v24, 0, sizeof(v24));
        v12 = MEMORY[0x1E69E9C10];
        v16 = 136315906;
        v17 = "operator[]";
        v18 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v13 = 3;
        }

        else
        {
          v13 = 2;
        }

        v19 = 789;
        v20 = 2048;
        v21 = v7;
        v22 = 2048;
        v23 = v9;
        _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
        _os_crash_msg();
        __break(1u);
      }

      v10 = a1[4] + v8;
      (*(**a1 + 40))(*a1, *(v10 - 16));
      (*(**a1 + 40))(*a1, *(v10 - 8));
      re::DynamicArray<re::DataArray<re::RigGraphOperatorDefinition>::ElementBlock>::removeAt(a1, v7);
      v8 -= 16;
      --v7;
    }

    while (v7);
  }

  result = NAN;
  a1[6] = 0xFFFFFFFF00000000;
  return result;
}

_anonymous_namespace_ *re::DataArray<re::CustomDeformers::CustomDeformerData>::allocBlock(void *a1)
{
  v3 = 48 * *(a1 + 11);
  v4 = (*(**a1 + 32))(*a1, v3, 0);
  if (!v4)
  {
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v3, *(*a1 + 8));
    _os_crash("assertion failure: (block.elements) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v16, v18);
    __break(1u);
    goto LABEL_16;
  }

  v6 = v4;
  v1 = 4 * *(a1 + 11);
  result = (*(**a1 + 32))(*a1, v1, 0);
  if (!result)
  {
LABEL_16:
    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v1, *(*a1 + 8));
    result = _os_crash("assertion failure: (block.allocationCounters) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v17, v19);
    __break(1u);
    return result;
  }

  v9 = result;
  v11 = a1[1];
  v10 = a1[2];
  if (v10 >= v11)
  {
    v12 = v10 + 1;
    if (v11 < v10 + 1)
    {
      if (*a1)
      {
        v13 = 2 * v11;
        if (!v11)
        {
          v13 = 8;
        }

        if (v13 <= v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v13;
        }

        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v14);
      }

      else
      {
        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v12);
        ++*(a1 + 6);
      }
    }

    v10 = a1[2];
  }

  v15 = (a1[4] + 16 * v10);
  *v15 = v6;
  v15[1] = v9;
  a1[2] = v10 + 1;
  ++*(a1 + 6);
  *(a1 + 12) = 0;
  return result;
}

uint64_t re::HashTable<re::StringID,re::DataArrayHandle<re::CustomDeformers::CustomDeformerData>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v30, 0, 36);
          *&v30[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::DataArrayHandle<re::CustomDeformers::CustomDeformerData>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v30, v9, v8);
          v11 = *v30;
          *v30 = *a1;
          *a1 = v11;
          v12 = *&v30[16];
          v13 = *(a1 + 16);
          *&v30[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v30[24];
          *&v30[24] = *(a1 + 24);
          v14 = *&v30[32];
          *(a1 + 24) = v15;
          ++*&v30[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = 0xBF58476D1CE4E5B9 * ((*(v13 + v17 + 8) >> 31) ^ (*(v13 + v17 + 8) >> 1));
                v20 = (0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) ^ ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) >> 31);
                v21 = re::HashTable<re::StringID,re::DataArrayHandle<re::CustomDeformers::CustomDeformerData>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v20 % *(a1 + 24), v20);
                v22 = *&v30[16] + v17;
                v23 = *(*&v30[16] + v17 + 8);
                v21[1] = v21[1] & 0xFFFFFFFFFFFFFFFELL | v23 & 1;
                v21[1] = *(v22 + 8) & 0xFFFFFFFFFFFFFFFELL | v23 & 1;
                v21[2] = *(v22 + 16);
                *(v22 + 8) = 0;
                *(v22 + 16) = &str_67;
                v13 = *&v30[16];
                v21[3] = *(*&v30[16] + v17 + 24);
                v16 = *&v30[32];
              }

              ++v18;
              v17 += 32;
            }

            while (v18 < v16);
          }

          re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v30);
        }
      }

      else
      {
        if (v8)
        {
          v26 = 2 * v7;
        }

        else
        {
          v26 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v24 = *(a1 + 16);
    v25 = *(v24 + 32 * v4);
  }

  else
  {
    v24 = *(a1 + 16);
    v25 = *(v24 + 32 * v4);
    *(a1 + 36) = v25 & 0x7FFFFFFF;
  }

  v27 = 32 * v4;
  *(v24 + v27) = v25 | 0x80000000;
  v28 = *(a1 + 8);
  *(v24 + v27) = *(v28 + 4 * a2) | 0x80000000;
  *(v28 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v24 + 32 * v4;
}

void re::LightContext::createLightConstantBuffer(uint32x2_t *a1, uint64_t *a2, float32x4_t *a3, uint64_t a4, char a5)
{
  v7 = *a2;
  v8 = *(a2 + 2);
  v9 = (*a2 + v8);
  *(v9 + 6) = 0;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *v9 = 0u;
  isEmpty = re::LightContext::isEmpty(a1);
  if (!isEmpty)
  {
    for (i = 0; i != 2048; i += 256)
    {
      *(v8 + v7 + 240 + i) = 0;
    }

    for (j = 0; j != 2048; j += 256)
    {
      *(v8 + v7 + 2288 + j) = 0;
    }

    v13 = (v8 + v7 + 4776);
    v14 = 8;
    do
    {
      *(v13 - 5) = 0x3F80000000000000;
      *(v13 - 2) = 1008981770;
      *(v13 - 4) = 0;
      *v13 = 0x40000000;
      v13 += 156;
      --v14;
    }

    while (v14);
    *(v9 + 1216) = 0x3F80000000000000;
    v9[2440] = 1008981770;
    *(v9 + 9764) = 0;
    v9[2442] = 0x40000000;
    v15 = (v8 + v7 + 10056);
    v16 = 8;
    do
    {
      *(v15 - 5) = 0x3F80000000000000;
      *(v15 - 2) = 1008981770;
      *(v15 - 4) = 0;
      *v15 = 0x40000000;
      v15 += 72;
      --v16;
    }

    while (v16);
    v17 = (v8 + v7 + 12360);
    v18 = 8;
    do
    {
      *(v17 - 5) = 0x3F80000000000000;
      *(v17 - 2) = 1008981770;
      *(v17 - 4) = 0;
      *v17 = 0x40000000;
      v17 += 72;
      --v18;
    }

    while (v18);
    for (k = 0; k != 768; k += 96)
    {
      *(v8 + v7 + 14592 + k) = 0;
    }

    v9[3864] = 0;
    v20 = (v8 + v7 + 15816);
    v21 = 8;
    do
    {
      *(v20 - 5) = 0x3F80000000000000;
      *(v20 - 2) = 1008981770;
      *(v20 - 4) = 0;
      *v20 = 0x40000000;
      v20 += 72;
      --v21;
    }

    while (v21);
    v22 = (v8 + v7 + 18120);
    v23 = 8;
    do
    {
      *(v22 - 5) = 0x3F80000000000000;
      *(v22 - 2) = 1008981770;
      *(v22 - 4) = 0;
      *v22 = 0x40000000;
      v22 += 72;
      --v23;
    }

    while (v23);
    v24 = (v8 + v7 + 4776);
    v25 = 8;
    do
    {
      *(v24 - 5) = 0x3F80000000000000;
      *(v24 - 2) = 1008981770;
      *(v24 - 4) = 0;
      *v24 = 0x40000000;
      v24 += 156;
      --v25;
    }

    while (v25);
    *(v9 + 1216) = 0x3F80000000000000;
    *(v9 + 9764) = 0;
    v9[2440] = 1008981770;
    v9[2442] = 0x40000000;
    *(v9 + 3252) = 0;
    v26 = vnegq_f32(*a3);
    v26.i32[3] = 1.0;
    v255 = v26;
    PointLightFaceLookatOrientations = re::getPointLightFaceLookatOrientations(isEmpty);
    v31 = v27;
    v32 = a1[1];
    if (v32)
    {
      v33 = a1[2];
      v34 = *&v33 + 208 * *&v32;
      v30 = xmmword_1E3047670;
      v35 = xmmword_1E3047680;
      v36 = xmmword_1E30476A0;
      v246 = vdupq_n_s32(0x3ABFE803u);
      do
      {
        v37 = vmulq_n_f32(*(*&v33 + 64), *(*&v33 + 192));
        if (fmaxf(fmaxf(v37.f32[0], v37.f32[2]), v37.f32[1]) > 0.0)
        {
          if (*(*&v33 + 204) != 1 || (a5 & 1) != 0)
          {
            v40 = *v9;
            if (v40 < 8)
            {
              *v9 = v40 + 1;
              v42 = v9 + 16;
              goto LABEL_35;
            }

            v41 = 6504;
LABEL_33:
            ++v9[v41];
            goto LABEL_54;
          }

          if (*(*&v33 + 205) != 1)
          {
            v40 = v9[1];
            if (v40 < 8)
            {
              v9[1] = v40 + 1;
              v42 = v9 + 528;
LABEL_35:
              v39 = &v42[64 * v40];
LABEL_36:
              v43 = 0;
              v44 = *(*&v33 + 32);
              v45 = *(*&v33 + 48);
              v46 = vmulq_f32(v44, v44);
              *&v47 = v46.f32[2] + vaddv_f32(*v46.f32);
              *v46.f32 = vrsqrte_f32(v47);
              *v46.f32 = vmul_f32(*v46.f32, vrsqrts_f32(v47, vmul_f32(*v46.f32, *v46.f32)));
              v48 = *(*&v33 + 16);
              v256.columns[0] = **&v33;
              v256.columns[1] = v48;
              LODWORD(v49) = vmul_f32(*v46.f32, vrsqrts_f32(v47, vmul_f32(*v46.f32, *v46.f32))).u32[0];
              v256.columns[2] = v44;
              v256.columns[3] = v45;
              do
              {
                v257.columns[v43] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, COERCE_FLOAT(*&v256.columns[v43])), v35, *v256.columns[v43].f32, 1), v36, v256.columns[v43], 2), v255, v256.columns[v43], 3);
                ++v43;
              }

              while (v43 != 4);
              v250 = vmulq_n_f32(v44, v49);
              v258 = __invert_f4(v257);
              v30 = xmmword_1E3047670;
              v36 = xmmword_1E30476A0;
              v35 = xmmword_1E3047680;
              v29.i32[3] = v250.i32[3];
              *v39 = vmulq_f32(vmulq_n_f32(*(*&v33 + 64), *(*&v33 + 192)), v246);
              *(v39 + 1) = v250;
              *(v39 + 8) = v258;
              if (*(*&v33 + 204) == 1 && (a5 & 1) == 0)
              {
                v39[44] = *(*&v33 + 196);
                if (*(*&v33 + 180) == -1)
                {
                  ++v9[6505];
                  *v258.columns[0].f32 = vcvt_f32_u32(a1[19]);
                  v258.columns[1] = 0uLL;
                }

                else
                {
                  v258.columns[1].i64[0] = *(*&v33 + 172);
                  *v258.columns[0].f32 = vcvt_f32_u32(a1[19]);
                  v258.columns[2].i64[0] = v258.columns[0].i64[0];
                  v258.columns[2].i64[1] = v258.columns[0].i64[0];
                  v258.columns[1].i64[1] = *(*&v33 + 160);
                  v258.columns[3].i32[0] = *(*&v33 + 200);
                  v258.columns[3].i32[1] = 2 * v258.columns[3].i32[0];
                  v258.columns[3] = vzip1q_s32(v258.columns[3], v258.columns[3]);
                  v50.i64[0] = vaddq_s32(v258.columns[1], v258.columns[3]).u64[0];
                  v50.i64[1] = vsubq_s32(*(&v258 + 16), *(&v258 + 48)).i64[1];
                  v258.columns[1] = vdivq_f32(vcvtq_f32_u32(v50), v258.columns[2]);
                }

                v51 = 0;
                v258.columns[2] = *(*&v33 + 80);
                v258.columns[2].i32[3] = *(*&v33 + 60);
                v251 = v258.columns[1];
                *v258.columns[0].f32 = vmul_f32(*v258.columns[0].f32, *&vextq_s8(v258.columns[1], v258.columns[1], 8uLL));
                v52 = *(*&v33 + 96);
                v53 = *(*&v33 + 16);
                v54 = *(*&v33 + 32);
                v256.columns[0] = **&v33;
                v256.columns[1] = v53;
                v256.columns[2] = v54;
                v256.columns[3] = v258.columns[2];
                do
                {
                  v257.columns[v51] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1E3047670, COERCE_FLOAT(*&v256.columns[v51])), xmmword_1E3047680, *v256.columns[v51].f32, 1), xmmword_1E30476A0, v256.columns[v51], 2), v255, v256.columns[v51], 3);
                  ++v51;
                }

                while (v51 != 4);
                if (v258.columns[0].f32[0] >= v258.columns[0].f32[1])
                {
                  v55 = v258.columns[0].f32[0];
                }

                else
                {
                  v55 = v258.columns[0].f32[1];
                }

                v259 = __invert_f4(v257);
                v56 = v259.columns[1];
                if ((atomic_load_explicit(&_MergedGlobals_431, memory_order_acquire) & 1) == 0)
                {
                  v240 = v259.columns[3];
                  v241 = v259.columns[2];
                  v238 = v259.columns[1];
                  v239 = v259.columns[0];
                  v74 = __cxa_guard_acquire(&_MergedGlobals_431);
                  v56 = v238;
                  v259.columns[0] = v239;
                  v259.columns[3] = v240;
                  v259.columns[2] = v241;
                  if (v74)
                  {
                    xmmword_1EE1B8270 = xmmword_1E30714F0;
                    unk_1EE1B8280 = xmmword_1E30A1A00;
                    xmmword_1EE1B8290 = xmmword_1E30476A0;
                    unk_1EE1B82A0 = xmmword_1E30A1180;
                    __cxa_guard_release(&_MergedGlobals_431);
                    v56 = v238;
                    v259.columns[0] = v239;
                    v259.columns[3] = v240;
                    v259.columns[2] = v241;
                  }
                }

                v57 = 0;
                v58 = *(*&v33 + 96);
                v59 = *(*&v33 + 112);
                v61 = *(*&v33 + 128);
                v60 = *(*&v33 + 144);
                v256.columns[0] = v259.columns[0];
                v256.columns[1] = v56;
                v256.columns[2] = v259.columns[2];
                v256.columns[3] = v259.columns[3];
                do
                {
                  v257.columns[v57] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v58, COERCE_FLOAT(*&v256.columns[v57])), v59, *v256.columns[v57].f32, 1), v61, v256.columns[v57], 2), v60, v256.columns[v57], 3);
                  ++v57;
                }

                while (v57 != 4);
                v62 = 0;
                v63 = xmmword_1EE1B8270;
                v64 = unk_1EE1B8280;
                v65 = xmmword_1EE1B8290;
                v66 = unk_1EE1B82A0;
                v256 = v257;
                do
                {
                  v257.columns[v62] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v63, COERCE_FLOAT(*&v256.columns[v62])), v64, *v256.columns[v62].f32, 1), v65, v256.columns[v62], 2), v66, v256.columns[v62], 3);
                  ++v62;
                }

                while (v62 != 4);
                v67 = v257.columns[0];
                v68 = v257.columns[1];
                v69 = v257.columns[2];
                v70 = v257.columns[3];
                *(v39 + 10) = v251;
                v29 = *(*&v33 + 96);
                v71 = *(*&v33 + 112);
                v72 = *(*&v33 + 128);
                v73 = *(*&v33 + 144);
                *(v39 + 6) = v29;
                *(v39 + 7) = v71;
                *(v39 + 8) = v72;
                *(v39 + 9) = v73;
                *(v39 + 45) = (2.0 / v52) * (1.0 / v55);
                *(v39 + 12) = v67;
                *(v39 + 13) = v68;
                *(v39 + 14) = v69;
                *(v39 + 15) = v70;
                v35 = xmmword_1E3047680;
                v30 = xmmword_1E3047670;
                v36 = xmmword_1E30476A0;
              }

              goto LABEL_54;
            }

            v41 = 6505;
            goto LABEL_33;
          }

          v38 = v9[13];
          if (v38 <= 0)
          {
            v9[13] = v38 + 1;
            v39 = v9 + 6440;
            goto LABEL_36;
          }
        }

LABEL_54:
        *&v33 += 208;
      }

      while (*&v33 != v34);
    }

    v75 = a1[4];
    v76 = a3;
    if (v75)
    {
      v77 = a1[5];
      v78 = *&v77 + 352 * *&v75;
      v79 = vdupq_n_s32(0x3ABFE803u);
      __asm { FMOV            V1.4S, #0.25 }

      v85 = vdupq_n_s32(0x3EA2F983u);
      v30 = 0uLL;
      do
      {
        v86 = *(*&v77 + 144);
        v87 = vmulq_n_f32(*(*&v77 + 128), v86);
        if (fmaxf(fmaxf(v87.f32[0], v87.f32[2]), v87.f32[1]) > 0.0)
        {
          if (*(*&v77 + 341) != 1 || (a5 & 1) != 0)
          {
            if (*(*&v77 + 342))
            {
              v90 = v9[11];
              if (v90 < 8)
              {
                v9[11] = v90 + 1;
                v89 = &v9[156 * v90 + 5036];
                goto LABEL_75;
              }
            }

            else
            {
              v91 = v9[2];
              if (v91 < 8)
              {
                v9[2] = v91 + 1;
                v89 = &v9[156 * v91 + 1040];
                goto LABEL_75;
              }
            }

            ++v9[6504];
          }

          else
          {
            if (*(*&v77 + 342))
            {
              v88 = v9[12];
              if (v88 < 1)
              {
                v9[12] = v88 + 1;
                v89 = &v9[156 * v88 + 6284];
                goto LABEL_75;
              }
            }

            else
            {
              v92 = v9[3];
              if (v92 < 1)
              {
                v9[3] = v92 + 1;
                v89 = &v9[156 * v92 + 2288];
LABEL_75:
                v93 = 0;
                v94 = vsubq_f32(*(*&v77 + 48), *a3);
                *v89 = vmulq_f32(vmulq_f32(vmulq_f32(vmulq_n_f32(*(*&v77 + 128), v86), v79), _Q1), v85);
                *(v89 + 608) = *(*&v77 + 148);
                *(v89 + 612) = *(*&v77 + 340);
                *(v89 + 16) = v94;
                *(v89 + 580) = 1.0 / (*(*&v77 + 152) * *(*&v77 + 152));
                v95 = *(*&v77 + 156) * 0.5;
                if (v95 < 0.0)
                {
                  v95 = 0.0;
                }

                *(v89 + 616) = v95;
                v96 = vnegq_f32(v94);
                v97 = vextq_s8(vuzp1q_s32(v96, v96), v96, 0xCuLL);
                v98 = (v89 + 48);
                do
                {
                  if (v31 == v93)
                  {
                    re::internal::assertLog(6, v27, 26020, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v31, v31);
                    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v236, v237);
                    __break(1u);
                    return;
                  }

                  v99 = PointLightFaceLookatOrientations[v93];
                  v100 = vnegq_f32(v99);
                  v101 = vextq_s8(vuzp1q_s32(v100, v100), v100, 0xCuLL);
                  v102 = vmlaq_f32(vmulq_f32(v97, v99), v96, v101);
                  v103 = vaddq_f32(v102, v102);
                  v104 = vextq_s8(vuzp1q_s32(v103, v103), v103, 0xCuLL);
                  v105 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v104, v104), v104, 0xCuLL), v99), v104, v101);
                  v106 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v104, v99, 3), v94), vextq_s8(vuzp1q_s32(v105, v105), v105, 0xCuLL));
                  *v104.i32 = *v100.i32 + *v100.i32;
                  v107 = (*v100.i32 + *v100.i32) * *v100.i32;
                  v108 = vmuls_lane_f32(*&v100.i32[1] + *&v100.i32[1], *v100.i8, 1);
                  v109 = vmuls_lane_f32(*&v100.i32[2] + *&v100.i32[2], v100, 2);
                  v110 = vmuls_lane_f32(*v100.i32 + *v100.i32, *v100.i8, 1);
                  v111 = vmuls_lane_f32(*v100.i32 + *v100.i32, v100, 2);
                  *v100.i32 = vmuls_lane_f32(*&v100.i32[1] + *&v100.i32[1], v100, 2);
                  *v104.i32 = vmuls_lane_f32(*v104.i32, v99, 3);
                  v112 = vmuls_lane_f32(*&v100.i32[1] + *&v100.i32[1], v99, 3);
                  v99.f32[0] = vmuls_lane_f32(*&v100.i32[2] + *&v100.i32[2], v99, 3);
                  HIDWORD(v113) = 0;
                  *&v113 = 1.0 - (v108 + v109);
                  *(&v113 + 1) = v110 + v99.f32[0];
                  *(&v113 + 2) = v111 - v112;
                  HIDWORD(v114) = 0;
                  *&v114 = v110 - v99.f32[0];
                  *(&v114 + 1) = 1.0 - (v107 + v109);
                  *(&v114 + 2) = *v100.i32 + *v104.i32;
                  HIDWORD(v115) = 0;
                  *&v115 = v111 + v112;
                  *(&v115 + 1) = *v100.i32 - *v104.i32;
                  *(&v115 + 2) = 1.0 - (v107 + v108);
                  v106.i32[3] = 1.0;
                  *(v98 - 1) = v113;
                  *v98 = v114;
                  v98[1] = v115;
                  v98[2] = v106;
                  ++v93;
                  v98 += 4;
                }

                while (v93 != 6);
                v116 = *(*&v77 + 80);
                v117 = *(*&v77 + 96);
                v118 = *(*&v77 + 112);
                *(v89 + 416) = *(*&v77 + 64);
                *(v89 + 432) = v116;
                *(v89 + 448) = v117;
                *(v89 + 464) = v118;
                if (*(*&v77 + 341) != 1 || (a5 & 1) != 0)
                {
                  *(v89 + 576) = 0;
                  *(v89 + 544) = 0uLL;
                  *(v89 + 560) = 0uLL;
                  *(v89 + 512) = 0uLL;
                  *(v89 + 528) = 0uLL;
                  *(v89 + 480) = 0uLL;
                  *(v89 + 496) = 0uLL;
                }

                else
                {
                  v119 = 0;
                  *(v89 + 576) = *(*&v77 + 160);
                  v120 = (v89 + 480);
                  do
                  {
                    v121 = *&v77 + v119;
                    if (*(*&v77 + v119 + 192) == -1)
                    {
                      ++v9[6505];
                      v126 = 0uLL;
                    }

                    else
                    {
                      v122 = *(*&v77 + 164);
                      v123.i64[0] = *(v121 + 184);
                      v27 = (2 * v122);
                      *v124.f32 = vcvt_f32_u32(a1[19]);
                      v124.i64[1] = v124.i64[0];
                      v123.i64[1] = *(v121 + 172);
                      v116.i32[0] = v122;
                      v116.i32[1] = 2 * v122;
                      v116 = vzip1q_s32(v116, v116);
                      v125.i64[0] = vaddq_s32(v123, v116).u64[0];
                      v125.i64[1] = vsubq_s32(v123, v116).i64[1];
                      v126 = vdivq_f32(vcvtq_f32_u32(v125), v124);
                    }

                    *v120++ = v126;
                    v119 += 24;
                  }

                  while (v119 != 144);
                }

                if (*(*&v77 + 342) == 1)
                {
                  if (*(*&v77 + 336) == -1)
                  {
                    ++v9[6505];
                    v131 = 0uLL;
                  }

                  else
                  {
                    v127.i64[0] = *(*&v77 + 328);
                    *v128.f32 = vcvt_f32_u32(a1[18]);
                    v128.i64[1] = v128.i64[0];
                    v127.i64[1] = *(*&v77 + 316);
                    v116.i32[0] = *(*&v77 + 168);
                    v116.i32[1] = 2 * v116.i32[0];
                    v129 = vzip1q_s32(v116, v116);
                    v130.i64[0] = vaddq_s32(v127, v129).u64[0];
                    v130.i64[1] = vsubq_s32(v127, v129).i64[1];
                    v131 = vdivq_f32(vcvtq_f32_u32(v130), v128);
                  }

                  *(v89 + 592) = v131;
                }

                else
                {
                  *(v89 + 592) = 0uLL;
                }

                goto LABEL_95;
              }
            }

            ++v9[6505];
          }
        }

LABEL_95:
        *&v77 += 352;
      }

      while (*&v77 != v78);
    }

    v132 = a1[7];
    if (!*&v132)
    {
LABEL_132:
      v172 = a1[10];
      if (v172)
      {
        v173 = 32 * *&v172;
        v174 = (*&a1[11] + 16);
        v175 = vdupq_n_s32(0x3ABFE803u);
        do
        {
          v176 = vmulq_n_f32(*(v174 - 4), *v174);
          if (fmaxf(fmaxf(v176.f32[0], v176.f32[2]), v176.f32[1]) > 0.0)
          {
            v177 = v9[6];
            if (v177 <= 7)
            {
              v9[6] = v177 + 1;
              *&v9[4 * v177 + 3596] = vmulq_f32(v176, v175);
            }
          }

          v174 += 8;
          v173 -= 32;
        }

        while (v173);
      }

      v178 = a1[13];
      if (v178)
      {
        v179 = 0;
        v180 = a1[14];
        v181 = 112 * *&v178;
        v182 = vdupq_n_s32(0x3ABFE803u);
        do
        {
          v183 = vmulq_n_f32(*(*&v180 + v179 + 64), *(*&v180 + v179 + 80));
          if (fmaxf(fmaxf(v183.f32[0], v183.f32[2]), v183.f32[1]) > 0.0)
          {
            v184 = v9[7];
            if (v184 > 7)
            {
              break;
            }

            v29.i64[0] = *(*&v180 + v179);
            v29.i32[2] = *(*&v180 + v179 + 8);
            v30.i64[0] = *(*&v180 + v179 + 16);
            v30.i32[2] = *(*&v180 + v179 + 24);
            v185 = vsubq_f32(*(*&v180 + v179 + 48), *v76);
            v186 = vmulq_n_f32(vnegq_f32(v29), *(*&v180 + v179 + 88) * 0.5);
            v187 = vmulq_n_f32(v30, *(*&v180 + v179 + 92) * 0.5);
            v30 = vsubq_f32(v185, v186);
            v188 = vsubq_f32(v30, v187);
            v189 = vaddq_f32(v185, v186);
            v190 = vsubq_f32(v189, v187);
            v191 = vaddq_f32(v187, v189);
            v29 = vaddq_f32(v187, v30);
            v9[7] = v184 + 1;
            v192 = &v9[24 * v184 + 3628];
            *v192 = vmulq_f32(v183, v182);
            *(v192 + 16) = v188;
            *(v192 + 32) = v190;
            *(v192 + 48) = v191;
            *(v192 + 64) = v29;
            *(v192 + 80) = *(*&v180 + v179 + 96);
          }

          v179 += 112;
        }

        while (v181 != v179);
      }

      v193 = a1[16];
      if (!*&v193)
      {
        return;
      }

      v194 = a1[17];
      v195 = *&v194 + 192 * *&v193;
      v196 = xmmword_1E3047670;
      v197 = xmmword_1E3047680;
      v198 = xmmword_1E30476A0;
      v248 = vdupq_n_s32(0x3ABFE803u);
      while (1)
      {
        v199 = vmulq_n_f32(*(*&v194 + 128), *(*&v194 + 144));
        if (fmaxf(fmaxf(v199.f32[0], v199.f32[2]), v199.f32[1]) > 0.0)
        {
          v200 = v9[8];
          if (v200 > 0)
          {
            ++v9[6505];
            return;
          }

          v201 = 0;
          v9[8] = v200 + 1;
          v202 = *(*&v194 + 32);
          v203 = *(*&v194 + 48);
          v204 = vmulq_f32(v202, v202);
          *&v205 = v204.f32[2] + vaddv_f32(*v204.f32);
          *v204.f32 = vrsqrte_f32(v205);
          *v204.f32 = vmul_f32(*v204.f32, vrsqrts_f32(v205, vmul_f32(*v204.f32, *v204.f32)));
          v206 = *(*&v194 + 16);
          v256.columns[0] = **&v194;
          v256.columns[1] = v206;
          LODWORD(v207) = vmul_f32(*v204.f32, vrsqrts_f32(v205, vmul_f32(*v204.f32, *v204.f32))).u32[0];
          v256.columns[2] = v202;
          v256.columns[3] = v203;
          do
          {
            v257.columns[v201] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v196, COERCE_FLOAT(*&v256.columns[v201])), v197, *v256.columns[v201].f32, 1), v198, v256.columns[v201], 2), v255, v256.columns[v201], 3);
            ++v201;
          }

          while (v201 != 4);
          v208 = &v9[64 * v200 + 3820];
          v253 = vmulq_n_f32(v202, v207);
          v261 = __invert_f4(v257);
          *v208 = vmulq_f32(vmulq_n_f32(*(*&v194 + 128), *(*&v194 + 144)), v248);
          *(v208 + 16) = v253;
          *(v208 + 32) = v261;
          v211 = *(*&v194 + 64);
          v212 = *(*&v194 + 80);
          v213 = *(*&v194 + 96);
          v214 = *(*&v194 + 112);
          if (*(*&v194 + 176) == -1)
          {
            ++v9[6505];
            v215 = vcvt_f32_u32(a1[19]);
            v220 = 0uLL;
          }

          else
          {
            v215 = vcvt_f32_u32(a1[19]);
            *v216.f32 = v215;
            *&v216.u32[2] = v215;
            v209.i64[0] = *(*&v194 + 152);
            v210.i32[0] = *(*&v194 + 168);
            v217 = vextq_s8(vextq_s8(v210, v210, 4uLL), v209, 0xCuLL);
            v218 = v217;
            v218.i32[3] = *(*&v194 + 160);
            v209.i32[1] = *(*&v194 + 172);
            v219.i64[0] = vaddq_s32(v217, v209).u64[0];
            v219.i64[1] = vsubq_s32(v218, vdupq_n_s32(2 * *(*&v194 + 152))).i64[1];
            v220 = vdivq_f32(vcvtq_f32_u32(v219), v216);
          }

          v221 = 0;
          v222 = vmul_f32(v215, *&vextq_s8(v220, v220, 8uLL));
          if (v222.f32[0] < v222.f32[1])
          {
            v222.f32[0] = v222.f32[1];
          }

          *(v208 + 96) = v211;
          *(v208 + 112) = v212;
          *(v208 + 128) = v213;
          *(v208 + 144) = v214;
          *(v208 + 160) = v220;
          *(v208 + 176) = *(*&v194 + 148);
          *(v208 + 180) = (2.0 / v211.f32[0]) * (1.0 / v222.f32[0]);
          v256 = v261;
          do
          {
            v257.columns[v221] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v211, COERCE_FLOAT(*&v256.columns[v221])), v212, *v256.columns[v221].f32, 1), v213, v256.columns[v221], 2), v214, v256.columns[v221], 3);
            ++v221;
          }

          while (v221 != 4);
          v223 = v257.columns[0];
          v224 = v257.columns[1];
          v225 = v257.columns[2];
          v226 = v257.columns[3];
          v198 = xmmword_1E30476A0;
          if ((atomic_load_explicit(&qword_1EE1B8268, memory_order_acquire) & 1) == 0)
          {
            v254 = v223;
            v243 = v225;
            v244 = v224;
            v242 = v226;
            v235 = __cxa_guard_acquire(&qword_1EE1B8268);
            v226 = v242;
            v225 = v243;
            v224 = v244;
            v198 = xmmword_1E30476A0;
            v223 = v254;
            if (v235)
            {
              xmmword_1EE1B82B0 = xmmword_1E30714F0;
              unk_1EE1B82C0 = xmmword_1E30A1A00;
              xmmword_1EE1B82D0 = xmmword_1E30476A0;
              unk_1EE1B82E0 = xmmword_1E30A1180;
              __cxa_guard_release(&qword_1EE1B8268);
              v226 = v242;
              v225 = v243;
              v224 = v244;
              v198 = xmmword_1E30476A0;
              v223 = v254;
            }
          }

          v227 = 0;
          v228 = xmmword_1EE1B82B0;
          v229 = unk_1EE1B82C0;
          v230 = xmmword_1EE1B82D0;
          v231 = unk_1EE1B82E0;
          v256.columns[0] = v223;
          v256.columns[1] = v224;
          v256.columns[2] = v225;
          v256.columns[3] = v226;
          v197 = xmmword_1E3047680;
          v196 = xmmword_1E3047670;
          do
          {
            v257.columns[v227] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v228, COERCE_FLOAT(*&v256.columns[v227])), v229, *v256.columns[v227].f32, 1), v230, v256.columns[v227], 2), v231, v256.columns[v227], 3);
            ++v227;
          }

          while (v227 != 4);
          v232 = v257.columns[1];
          v233 = v257.columns[2];
          v234 = v257.columns[3];
          *(v208 + 192) = v257.columns[0];
          *(v208 + 208) = v232;
          *(v208 + 224) = v233;
          *(v208 + 240) = v234;
        }

        *&v194 += 192;
        if (*&v194 == v195)
        {
          return;
        }
      }
    }

    v133 = a1[8];
    v134 = *&v133 + 240 * *&v132;
    v29 = xmmword_1E3047670;
    v30 = xmmword_1E3047680;
    v135 = xmmword_1E30476A0;
    v245 = vdupq_n_s32(0x3EA2F983u);
    v247 = vdupq_n_s32(0x3ABFE803u);
    while (1)
    {
      v136 = vmulq_n_f32(*(*&v133 + 128), *(*&v133 + 144));
      if (fmaxf(fmaxf(v136.f32[0], v136.f32[2]), v136.f32[1]) > 0.0)
      {
        if (*(*&v133 + 229) != 1 || (a5 & 1) != 0)
        {
          if (*(*&v133 + 230))
          {
            v138 = v9[9];
            v137 = v9 + 9;
            v139 = v9 + 3884;
          }

          else
          {
            v138 = v9[4];
            v137 = v9 + 4;
            v139 = v9 + 2444;
          }

          if (v138 < 8)
          {
LABEL_112:
            v141 = 0;
            *v137 = v138 + 1;
            v142 = *v76;
            v143 = *(*&v133 + 16);
            v145 = *(*&v133 + 32);
            v144 = *(*&v133 + 48);
            v256.columns[0] = **&v133;
            v256.columns[1] = v143;
            v256.columns[2] = v145;
            v256.columns[3] = v144;
            do
            {
              v257.columns[v141] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, COERCE_FLOAT(*&v256.columns[v141])), v30, *v256.columns[v141].f32, 1), v135, v256.columns[v141], 2), v255, v256.columns[v141], 3);
              ++v141;
            }

            while (v141 != 4);
            v146 = &v139[72 * v138];
            v252 = vsubq_f32(v144, v142);
            v260 = __invert_f4(v257);
            v147 = 0;
            *v146 = vmulq_f32(vmulq_f32(vmulq_n_f32(*(*&v133 + 128), *(*&v133 + 144)), v247), v245);
            v146[68] = *(*&v133 + 148);
            *(v146 + 276) = *(*&v133 + 228);
            *(v146 + 1) = v252;
            *(v146 + 8) = v260;
            v148 = *(*&v133 + 80);
            v149 = *(*&v133 + 96);
            v150 = *(*&v133 + 112);
            *(v146 + 6) = *(*&v133 + 64);
            *(v146 + 7) = v148;
            *(v146 + 8) = v149;
            *(v146 + 9) = v150;
            v151 = *(*&v133 + 64);
            v152 = *(*&v133 + 80);
            v153 = *(*&v133 + 96);
            v154 = *(*&v133 + 112);
            v256 = v260;
            do
            {
              v257.columns[v147] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v151, COERCE_FLOAT(*&v256.columns[v147])), v152, *v256.columns[v147].f32, 1), v153, v256.columns[v147], 2), v154, v256.columns[v147], 3);
              ++v147;
            }

            while (v147 != 4);
            v155 = v257.columns[1];
            v156 = v257.columns[2];
            v157 = v257.columns[3];
            *(v146 + 10) = v257.columns[0];
            *(v146 + 11) = v155;
            *(v146 + 12) = v156;
            *(v146 + 13) = v157;
            *(v146 + 61) = 1.0 / (*(*&v133 + 152) * *(*&v133 + 152));
            v158 = *(*&v133 + 156) * 0.5;
            if (v158 < 0.0)
            {
              v158 = 0.0;
            }

            *(v146 + 70) = v158;
            v159 = cosf(*(*&v133 + 160) * 0.5);
            v160 = 1.0 / fmaxf(cosf(*(*&v133 + 164) * 0.5) - v159, 0.00000011921);
            *(v146 + 62) = v160;
            *(v146 + 63) = -(v159 * v160);
            if (*(*&v133 + 229) != 1 || (a5 & 1) != 0)
            {
              *(v146 + 28) = 0;
              *(v146 + 29) = 0;
              v146[60] = 0;
              v76 = a3;
              v30 = xmmword_1E3047680;
              v29 = xmmword_1E3047670;
              v135 = xmmword_1E30476A0;
            }

            else
            {
              v146[60] = *(*&v133 + 168);
              v76 = a3;
              v30 = xmmword_1E3047680;
              v29 = xmmword_1E3047670;
              v135 = xmmword_1E30476A0;
              if (*(*&v133 + 200) == -1)
              {
                ++v9[6505];
                v166 = 0uLL;
              }

              else
              {
                *v162.f32 = vcvt_f32_u32(a1[19]);
                v162.i64[1] = v162.i64[0];
                v163.i32[0] = *(*&v133 + 192);
                v163.i32[1] = *(*&v133 + 172);
                v164.i32[0] = v163.i32[1];
                v164.i32[1] = *(*&v133 + 196);
                *v165.i8 = vadd_s32(v163, v164);
                v165.u64[1] = vsub_s32(*(*&v133 + 180), *&vdupq_n_s32(2 * *(*&v133 + 172)));
                v161 = vcvtq_f32_u32(v165);
                v166 = vdivq_f32(v161, v162);
              }

              *(v146 + 14) = v166;
            }

            if (*(*&v133 + 230) == 1)
            {
              if (*(*&v133 + 224) == -1)
              {
                ++v9[6505];
                v171 = 0uLL;
              }

              else
              {
                v167.i64[0] = *(*&v133 + 216);
                *v168.f32 = vcvt_f32_u32(a1[18]);
                v168.i64[1] = v168.i64[0];
                v167.i64[1] = *(*&v133 + 204);
                v161.i32[0] = *(*&v133 + 176);
                v161.i32[1] = 2 * v161.i32[0];
                v169 = vzip1q_s32(v161, v161);
                v170.i64[0] = vaddq_s32(v167, v169).u64[0];
                v170.i64[1] = vsubq_s32(v167, v169).i64[1];
                v171 = vdivq_f32(vcvtq_f32_u32(v170), v168);
              }

              *(v146 + 16) = v171;
            }

            else
            {
              *(v146 + 32) = 0;
              *(v146 + 33) = 0;
            }

            goto LABEL_131;
          }

          v140 = 6504;
        }

        else
        {
          if (*(*&v133 + 230))
          {
            v137 = v9 + 10;
            v138 = v9[10];
            v139 = v9 + 4460;
          }

          else
          {
            v137 = v9 + 5;
            v138 = v9[5];
            v139 = v9 + 3020;
          }

          if (v138 < 8)
          {
            goto LABEL_112;
          }

          v140 = 6505;
        }

        ++v9[v140];
      }

LABEL_131:
      *&v133 += 240;
      if (*&v133 == v134)
      {
        goto LABEL_132;
      }
    }
  }
}

__int128 *re::getPointLightFaceLookatOrientations(re *this)
{
  {
    v40 = v1;
    v41 = v2;
    {
      v37 = 0uLL;
      v36 = 0x3F800000uLL;
      v35 = 0x3F80000000000000uLL;
      re::makeLookAtPose<float>(&v37, &v36, &v35, 1, &v38, v4, v5);
      re::getPointLightFaceLookatOrientations(void)::orientations = v39;
      v32 = 0uLL;
      v31 = 0xBF800000uLL;
      v30 = 0x3F80000000000000uLL;
      re::makeLookAtPose<float>(&v32, &v31, &v30, 1, &v33, v39, v6);
      xmmword_1EE186110 = v34;
      v27 = 0uLL;
      v26 = 0x3F80000000000000uLL;
      v25.i64[0] = 0;
      v25.i64[1] = 3212836864;
      re::makeLookAtPose<float>(&v27, &v26, &v25, 1, &v28, v34, v7);
      xmmword_1EE186120 = v29;
      v22 = 0uLL;
      v21 = 0xBF80000000000000;
      v20.i64[0] = 0;
      v20.i64[1] = 3212836864;
      re::makeLookAtPose<float>(&v22, &v21, &v20, 1, &v23, v29, v8);
      xmmword_1EE186130 = v24;
      v17 = 0uLL;
      v16.i64[0] = 0;
      v16.i64[1] = 1065353216;
      v15 = 0x3F80000000000000uLL;
      re::makeLookAtPose<float>(&v17, &v16, &v15, 1, &v18, v24, v9);
      xmmword_1EE186140 = v19;
      v13 = 0uLL;
      v12.i64[0] = 0;
      v12.i64[1] = 3212836864;
      v11 = 0x3F80000000000000uLL;
      re::makeLookAtPose<float>(&v13, &v12, &v11, 1, v14, v19, v10);
      xmmword_1EE186150 = v14[1];
    }
  }

  return &re::getPointLightFaceLookatOrientations(void)::orientations;
}

void re::LightContext::createConstantBuffer(uint32x2_t *a1, uint64_t a2, float32x4_t *a3, re::BufferTable *a4)
{
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v12, (a2 + 16), 0x65C0uLL, 0x10uLL);
  v9 = v12;
  v10 = v13;
  v11 = v14;
  v12 = v14;
  v8 = 0x144ABD64D310CF6;
  LODWORD(v13) = 0;
  v14 = __PAIR64__(HIDWORD(v13), v10);
  re::BufferTable::setBuffer(a4, &v8, &v12);
  re::LightContext::createLightConstantBuffer(a1, &v9, a3, v7, 0);
}

uint64_t re::BufferTable::setBuffer(re::BufferTable *this, const re::WeakStringID *a2, const re::BufferView *a3)
{
  v5 = re::BufferTable::getOrAddKey(this, a2);
  re::BufferTable::clearBufferRef(this, v5);
  v7 = *a3;
  v8 = *(a3 + 2);
  re::BufferTable::setBufferView(this, v5, &v7);
  return re::BufferTable::setBufferIndirectResources(this, v5, 0, 0);
}

void re::LightContexts::createConstantBuffer(uint32x2_t *a1, uint64_t a2, float32x4_t *a3, re::BufferTable *a4)
{
  v8 = a1[5];
  if (v8)
  {
    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v18, (a2 + 16), 26048 * *&v8, 0x10uLL);
    v9 = v18;
    v11 = v19;
    v10 = v20;
    v12 = v21;
    *(a2 + 232) += v20;
    v17 = 0x144ABD64D310CF6;
    v18 = v12;
    v19 = 0;
    v21 = __PAIR64__(v10, v11);
    re::BufferTable::setBufferViewArray(a4, &v17, &v18, 26048);
    if (v8.i32[0] >= 1)
    {
      v13 = 0;
      do
      {
        v14 = re::BucketArray<re::LightContext,16ul>::operator[](a1, v13);
        v18 = v9;
        v19 = v11;
        v20 = 26048;
        v21 = v12;
        re::LightContext::createLightConstantBuffer(v14, &v18, a3, v15, 0);
        ++v13;
        v11 += 26048;
      }

      while ((v8.i32[0] & 0x7FFFFFFF) != v13);
    }
  }

  else
  {
    v16 = a1 + 13;

    re::LightContext::createConstantBuffer(v16, a2, a3, a4);
  }
}

void re::BufferTable::setBufferViewArray(re::BufferTable *this, const re::WeakStringID *a2, const re::BufferView *a3, int a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = re::BufferTable::getOrAddKey(this, a2);
  re::BufferTable::clearBufferRef(this, v7);
  v21 = *a3;
  *&v22 = *(a3 + 2);
  re::BufferTable::setBufferView(this, v7, &v21);
  re::BufferTable::setBufferIndirectResources(this, v7, 0, 0);
  v8 = *(this + 15);
  if (v8 <= v7)
  {
    re::DynamicArray<float>::resize(this + 104, (v7 + 1));
    v8 = *(this + 15);
  }

  if (v8 <= v7)
  {
    v12 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v16 = 789;
    v17 = 2048;
    v18 = v7;
    v19 = 2048;
    v20 = v8;
    _os_log_send_and_compose_impl(v10, &v12, &v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  *(*(this + 17) + 4 * v7) = a4;
}

unint64_t re::BucketArray<re::LightContext,16ul>::operator[](uint64_t a1, unint64_t a2)
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

  v2 = a2 >> 4;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 4)
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

  return *(v5 + 8 * v2) + 168 * (a2 & 0xF);
}

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

  v2 = a2 >> 4;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 4)
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

  return *(v5 + 8 * v2) + 168 * (a2 & 0xF);
}

BOOL re::LightContexts::isEmpty(re::LightContexts *this)
{
  v1 = *(this + 5);
  if (!v1)
  {
    return 1;
  }

  v3 = 0;
  v4 = v1 - 1;
  do
  {
    v5 = re::BucketArray<re::LightContext,16ul>::operator[](this, v3);
    result = re::LightContext::isEmpty(v5);
    if (!result)
    {
      break;
    }
  }

  while (v4 != v3++);
  return result;
}

int8x16_t *re::makeLookAtPose<float>@<X0>(int8x16_t *result@<X0>, int8x16_t *a2@<X1>, float32x4_t *a3@<X2>, __int32 a4@<W3>, int8x16_t *a5@<X8>, int32x4_t a6@<Q0>, int32x4_t a7@<Q1>)
{
  a6.i32[0] = 0;
  a7.i32[0] = a4;
  v7 = vdupq_lane_s32(*&vceqq_s32(a7, a6), 0);
  v8 = vsubq_f32(vbslq_s8(v7, *a2, *result), vbslq_s8(v7, *result, *a2));
  v9 = vmulq_f32(v8, v8);
  v10.i32[1] = 0;
  *&v11 = v9.f32[2] + vaddv_f32(*v9.f32);
  *v9.f32 = vrsqrte_f32(v11);
  *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v11, vmul_f32(*v9.f32, *v9.f32)));
  v12 = vmulq_n_f32(v8, vmul_f32(*v9.f32, vrsqrts_f32(v11, vmul_f32(*v9.f32, *v9.f32))).f32[0]);
  v13 = vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL);
  v14 = vmlaq_f32(vmulq_f32(v13, vnegq_f32(*a3)), v12, vextq_s8(vuzp1q_s32(*a3, *a3), *a3, 0xCuLL));
  v15 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
  v16 = vmulq_f32(v14, v14);
  *&v17 = v16.f32[1] + (v16.f32[2] + v16.f32[0]);
  *v16.f32 = vrsqrte_f32(v17);
  *v16.f32 = vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32)));
  v18 = vmulq_n_f32(v15, vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32))).f32[0]);
  v19 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), vnegq_f32(v12)), v18, v13);
  v20 = v19.f32[1];
  v21 = *&v12.i32[2] + vaddq_f32(v18, v19).f32[0];
  if (v21 >= 0.0)
  {
    v19.f32[0] = sqrtf(v21 + 1.0);
    v27 = v19.f32[0] + v19.f32[0];
    *v10.i32 = v19.f32[0] + v19.f32[0];
    *v19.f32 = vrecpe_f32(*v10.i8);
    *v19.f32 = vmul_f32(*v19.f32, vrecps_f32(*v10.i8, *v19.f32));
    *v18.i32 = vmul_f32(*v19.f32, vrecps_f32(*v10.i8, *v19.f32)).f32[0];
    *v10.i32 = (v20 - *&v12.i32[1]) * *v18.i32;
    v19.f32[0] = (*v12.i32 - *&v18.i32[2]) * *v18.i32;
    *v12.i32 = (*&v18.i32[1] - v19.f32[2]) * *v18.i32;
    v26 = v27 * 0.25;
  }

  else if (*v18.i32 < *&v12.i32[2] || (vmovn_s32(vmvnq_s8(vcgeq_f32(v18, v19))).u8[0] & 1) != 0)
  {
    v28 = 1.0 - *v18.i32;
    v29 = v19.f32[0] < *&v12.i32[2];
    *v18.i32 = sqrtf(*&v12.i32[2] + ((1.0 - *v18.i32) - v19.f32[0]));
    *v18.i32 = *v18.i32 + *v18.i32;
    v30 = vrecpe_f32(v18.u32[0]);
    v31 = vmul_f32(v30, vrecps_f32(v18.u32[0], v30));
    v32 = vmul_f32(v31, vrecps_f32(v18.u32[0], v31)).f32[0];
    v33 = (*v12.i32 + *&v18.i32[2]) * v32;
    v34 = *&v12.i32[1] + v19.f32[1];
    v35 = (*&v12.i32[1] + v19.f32[1]) * v32;
    *v18.i32 = *v18.i32 * 0.25;
    v36 = (*&v18.i32[1] - v19.f32[2]) * v32;
    v37 = sqrtf((v28 - *&v12.i32[2]) + v19.f32[0]);
    *&v38 = v37 + v37;
    v39 = vrecpe_f32(v38);
    *v19.f32 = vmul_f32(v39, vrecps_f32(v38, v39));
    v19.f32[0] = vmul_f32(*v19.f32, vrecps_f32(v38, *v19.f32)).f32[0];
    v40 = *&v38 * 0.25;
    v41 = v34 * v19.f32[0];
    v26 = (*v12.i32 - *&v18.i32[2]) * v19.f32[0];
    if (v29)
    {
      *v10.i32 = v33;
    }

    else
    {
      *v10.i32 = (*&v18.i32[1] + v19.f32[2]) * v19.f32[0];
    }

    if (v29)
    {
      v19.f32[0] = v35;
    }

    else
    {
      v19.f32[0] = v40;
    }

    if (v29)
    {
      v12.i32[0] = v18.i32[0];
    }

    else
    {
      *v12.i32 = v41;
    }

    if (v29)
    {
      v26 = v36;
    }
  }

  else
  {
    v22 = sqrtf(*v18.i32 + ((1.0 - v19.f32[0]) - *&v12.i32[2]));
    *&v23 = v22 + v22;
    v24 = vrecpe_f32(v23);
    v25 = vmul_f32(v24, vrecps_f32(v23, v24));
    v25.f32[0] = vmul_f32(v25, vrecps_f32(v23, v25)).f32[0];
    *v10.i32 = *&v23 * 0.25;
    v19.f32[0] = (*&v18.i32[1] + v19.f32[2]) * v25.f32[0];
    *v12.i32 = (*v12.i32 + *&v18.i32[2]) * v25.f32[0];
    v26 = (v19.f32[1] - *&v12.i32[1]) * v25.f32[0];
  }

  v10.i32[1] = v19.i32[0];
  v10.i64[1] = __PAIR64__(LODWORD(v26), v12.u32[0]);
  *a5 = *result;
  a5[1] = v10;
  return result;
}

uint64_t re::BufferTable::clearBufferRef(re::BufferTable *this, unsigned int a2)
{
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  result = re::BufferTable::setBufferRef(this, a2, &v3);
  if (DWORD2(v4) != -1)
  {
    return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_0[DWORD2(v4)])(&v6, &v3);
  }

  return result;
}

IMP re::mtl::RenderEncoderImpCache::build(re::mtl::RenderEncoderImpCache *this, id a2)
{
  *this = a2;
  Class = object_getClass(a2);
  *(this + 1) = class_getMethodImplementation(Class, sel_setVertexBytes_length_atIndex_);
  *(this + 2) = class_getMethodImplementation(Class, sel_setVertexBuffer_offset_atIndex_);
  *(this + 3) = class_getMethodImplementation(Class, sel_setVertexBufferOffset_atIndex_);
  *(this + 4) = class_getMethodImplementation(Class, sel_setVertexBuffer_offset_attributeStride_atIndex_);
  *(this + 5) = class_getMethodImplementation(Class, sel_setVertexBufferOffset_attributeStride_atIndex_);
  *(this + 6) = class_getMethodImplementation(Class, sel_setVertexTexture_atIndex_);
  *(this + 7) = class_getMethodImplementation(Class, sel_setRenderPipelineState_);
  *(this + 8) = class_getMethodImplementation(Class, sel_setCullMode_);
  *(this + 9) = class_getMethodImplementation(Class, sel_setDepthBias_slopeScale_clamp_);
  *(this + 10) = class_getMethodImplementation(Class, sel_setFragmentBytes_length_atIndex_);
  *(this + 11) = class_getMethodImplementation(Class, sel_setFragmentBuffer_offset_atIndex_);
  *(this + 12) = class_getMethodImplementation(Class, sel_setFragmentBufferOffset_atIndex_);
  *(this + 13) = class_getMethodImplementation(Class, sel_setFragmentTexture_atIndex_);
  *(this + 14) = class_getMethodImplementation(Class, sel_setDepthStencilState_);
  *(this + 15) = class_getMethodImplementation(Class, sel_setStencilReferenceValue_);
  *(this + 16) = class_getMethodImplementation(Class, sel_setStencilFrontReferenceValue_backReferenceValue_);
  *(this + 17) = class_getMethodImplementation(Class, sel_setFrontFacingWinding_);
  *(this + 18) = class_getMethodImplementation(Class, sel_setVertexAmplificationCount_viewMappings_);
  *(this + 19) = class_getMethodImplementation(Class, sel_insertDebugSignpost_);
  *(this + 20) = class_getMethodImplementation(Class, sel_pushDebugGroup_);
  *(this + 21) = class_getMethodImplementation(Class, sel_popDebugGroup);
  *(this + 22) = class_getMethodImplementation(Class, sel_setTriangleFillMode_);
  *(this + 23) = class_getMethodImplementation(Class, sel_setTessellationFactorBuffer_offset_instanceStride_);
  *(this + 24) = class_getMethodImplementation(Class, sel_setVisibilityResultMode_offset_);
  *(this + 25) = class_getMethodImplementation(Class, sel_drawPrimitives_vertexStart_vertexCount_instanceCount_);
  *(this + 26) = class_getMethodImplementation(Class, sel_drawPrimitives_vertexStart_vertexCount_);
  *(this + 27) = class_getMethodImplementation(Class, sel_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_);
  *(this + 28) = class_getMethodImplementation(Class, sel_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_);
  *(this + 29) = class_getMethodImplementation(Class, sel_drawPrimitives_vertexStart_vertexCount_instanceCount_baseInstance_);
  *(this + 30) = class_getMethodImplementation(Class, sel_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_baseVertex_baseInstance_);
  *(this + 31) = class_getMethodImplementation(Class, sel_drawIndexedPrimitives_indexType_indexBuffer_indexBufferOffset_indirectBuffer_indirectBufferOffset_);
  *(this + 32) = class_getMethodImplementation(Class, sel_setLabel_);
  result = class_getMethodImplementation(Class, sel_endEncoding);
  *(this + 33) = result;
  return result;
}

uint64_t re::RenderStat::activatePerfSampling(uint64_t a1, id *a2, int a3)
{
  v6 = re::ObjCObject::operator=((a1 + 32), a2);
  if (a3 == 1 && !*(a1 + 520))
  {
    re::DynamicArray<re::PerfMTLCounterSampler>::setCapacity((a1 + 520), 2uLL);
    ++*(a1 + 544);
    v7 = 1;
    do
    {
      v8 = v7;
      v16 = 0u;
      v17 = 0u;
      v14 = 0;
      v13[0] = 3uLL;
      v11 = 0u;
      v12 = 0u;
      v13[1] = 0uLL;
      DWORD2(v17) = 0;
      LODWORD(v16) = 0;
      memset(v15, 0, sizeof(v15));
      v18 = 0;
      v19 = 0;
      v20 = 0;
      re::mtl::CommandQueue::device(a2, &v10);
      re::PerfMTLCounterSampler::init(&v11, &v10);

      re::DynamicArray<re::PerfMTLCounterSampler>::add((a1 + 520), &v11);
      re::SampleBufferObjectPool::~SampleBufferObjectPool(&v15[1]);
      re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::deinit(v13 + 8);

      v7 = 0;
    }

    while ((v8 & 1) != 0);
  }

  atomic_store(1u, (a1 + 40));
  return re::RenderStat::setPerfSamplingMode(a1, a3);
}

id re::DynamicArray<re::PerfMTLCounterSampler>::add(_anonymous_namespace_ *this, __int128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::PerfMTLCounterSampler>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 200 * v4;
  v6 = *a2;
  *(v5 + 16) = *(a2 + 2);
  *v5 = v6;
  *(v5 + 24) = *(a2 + 3);
  v7 = *(a2 + 36);
  *(v5 + 32) = *(a2 + 8);
  *(v5 + 36) = v7;
  re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::DynamicArray(v5 + 40, a2 + 5);
  re::DynamicArray<char const*>::DynamicArray(v5 + 80, a2 + 10);
  re::DynamicArray<char const*>::DynamicArray(v5 + 120, a2 + 15);
  v8 = *(a2 + 20);
  *(v5 + 168) = *(a2 + 42);
  *(v5 + 160) = v8;
  *(v5 + 176) = *(a2 + 22);
  result = *(a2 + 23);
  v10 = *(a2 + 24);
  *(v5 + 184) = result;
  *(v5 + 192) = v10;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::RenderStat::setPerfSamplingMode(re::RenderStat *this, int a2)
{
  if (*(this + 6) != a2)
  {
    if (*(this + 40))
    {
      re::RenderStat::deinitializeCurrentMode(this);
      *(this + 6) = a2;
      if (a2 == 1)
      {
        v4 = *(this + 67);
        if (v4)
        {
          v5 = 0;
          v6 = 200 * v4 - 200;
          v7 = *(this + 69);
          v8 = vdupq_n_s64(v6 / 0xC8);
          v9 = (v6 / 0xC8 + 16) & 0x3FFFFFFFFFFFFF0;
          do
          {
            v10 = vdupq_n_s64(v5);
            v11 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v10, xmmword_1E3049620)));
            if (vuzp1_s8(vuzp1_s16(v11, *v8.i8), *v8.i8).u8[0])
            {
              v7[36] = 1;
            }

            if (vuzp1_s8(vuzp1_s16(v11, *&v8), *&v8).i8[1])
            {
              v7[236] = 1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v10, xmmword_1E3049640)))), *&v8).i8[2])
            {
              v7[436] = 1;
              v7[636] = 1;
            }

            v12 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v10, xmmword_1E3049660)));
            if (vuzp1_s8(*&v8, vuzp1_s16(v12, *&v8)).i32[1])
            {
              v7[836] = 1;
            }

            if (vuzp1_s8(*&v8, vuzp1_s16(v12, *&v8)).i8[5])
            {
              v7[1036] = 1;
            }

            if (vuzp1_s8(*&v8, vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v10, xmmword_1E305F210))))).i8[6])
            {
              v7[1236] = 1;
              v7[1436] = 1;
            }

            v13 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v10, xmmword_1E30903F0)));
            if (vuzp1_s8(vuzp1_s16(v13, *v8.i8), *v8.i8).u8[0])
            {
              v7[1636] = 1;
            }

            if (vuzp1_s8(vuzp1_s16(v13, *&v8), *&v8).i8[1])
            {
              v7[1836] = 1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v10, xmmword_1E30903E0)))), *&v8).i8[2])
            {
              v7[2036] = 1;
              v7[2236] = 1;
            }

            v14 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v10, xmmword_1E30903D0)));
            if (vuzp1_s8(*&v8, vuzp1_s16(v14, *&v8)).i32[1])
            {
              v7[2436] = 1;
            }

            if (vuzp1_s8(*&v8, vuzp1_s16(v14, *&v8)).i8[5])
            {
              v7[2636] = 1;
            }

            if (vuzp1_s8(*&v8, vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v10, xmmword_1E30903C0))))).i8[6])
            {
              v7[2836] = 1;
              v7[3036] = 1;
            }

            v5 += 16;
            v7 += 3200;
          }

          while (v9 != v5);
        }
      }

      ++*(this + 13);
    }

    else
    {
      *(this + 6) = a2;
    }
  }

  return 1;
}

void re::RenderStat::deinitializeCurrentMode(uint64_t this)
{
  if (*(this + 24) == 1 && *(this + 536))
  {
    v2 = *(this + 552);
    do
    {
      *(v2 + 36) = 0;
      re::SampleBufferObjectPool::release(v2 + 80, *(v2 + 16));
      *(v2 + 32) = 0;
      v2 += 200;
    }

    while (v2 != *(this + 552) + 200 * *(this + 536));
  }

  *(this + 24) = 2;
}

uint64_t re::RenderStat::samplerIndexForType(re *a1, unsigned int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2 < 3)
  {
    return qword_1E30A1B20[a2];
  }

  v4 = *re::graphicsLogObjects(a1);
  v3 = 2;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    v3 = 2;
    _os_log_debug_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEBUG, "Unexpected CommandBufferSampleType for RenderStat: %u", v6, 8u);
  }

  return v3;
}

unint64_t re::RenderStat::addMTLCounterHandler(unint64_t result, uint64_t a2, unsigned int a3)
{
  if (*(result + 24) == 1)
  {
    v4 = result;
    result = re::RenderStat::samplerIndexForType(result, a3);
    if (result < *(v4 + 536))
    {
      v5 = (*(v4 + 552) + 200 * result + 40);

      return re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::add(v5, a2);
    }
  }

  return result;
}

uint64_t (***re::RenderStat::clearMTLCounterHandlers(uint64_t (***this)(void)))(void)
{
  if (*(this + 6) == 1)
  {
    v1 = this;
    if (this[67])
    {
      v2 = this[69];
      do
      {
        this = re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::clear(v2 + 5);
        v2 += 25;
      }

      while (v2 != &v1[69][25 * v1[67]]);
    }
  }

  return this;
}

void re::RenderStat::sampleRenderEncoderMTLCounterBegin(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24) == 1)
  {
    v5 = re::RenderStat::samplerIndexForType(a1, a3);
    if (v5 >= *(a1 + 536))
    {
      v6 = *re::graphicsLogObjects(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7[0] = 67109120;
        v7[1] = a3;
        _os_log_debug_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEBUG, "sampleRenderEncoderMTLCounterBegin skipped, no PerfMTLCounterSampler for sample type %u", v7, 8u);
      }
    }
  }
}

void re::RenderStat::sampleRenderEncoderMTLCounterEnd(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24) == 1)
  {
    v5 = re::RenderStat::samplerIndexForType(a1, a3);
    if (v5 >= *(a1 + 536))
    {
      v6 = *re::graphicsLogObjects(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7[0] = 67109120;
        v7[1] = a3;
        _os_log_debug_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEBUG, "sampleRenderEncoderMTLCounterEnd skipped, no PerfMTLCounterSampler for sample type %u", v7, 8u);
      }
    }
  }
}

void re::RenderStat::sampleComputeEncoderMTLCounterBegin(uint64_t a1, id *a2, unsigned int a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24) == 1)
  {
    v6 = re::RenderStat::samplerIndexForType(a1, a3);
    if (v6 >= *(a1 + 536))
    {
      v8 = *re::graphicsLogObjects(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9[0] = 67109120;
        v9[1] = a3;
        _os_log_debug_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEBUG, "sampleComputeEncoderMTLCounterBegin skipped, no PerfMTLCounterSampler for sample type %u", v9, 8u);
      }
    }

    else
    {
      v7 = *a2;
    }
  }
}

void re::RenderStat::sampleComputeEncoderMTLCounterEnd(uint64_t a1, id *a2, unsigned int a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24) == 1)
  {
    v6 = re::RenderStat::samplerIndexForType(a1, a3);
    if (v6 >= *(a1 + 536))
    {
      v8 = *re::graphicsLogObjects(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9[0] = 67109120;
        v9[1] = a3;
        _os_log_debug_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEBUG, "sampleComputeEncoderMTLCounterEnd skipped, no PerfMTLCounterSampler for sample type %u", v9, 8u);
      }
    }

    else
    {
      v7 = *a2;
    }
  }
}

void re::RenderStat::enableMTLCounterSamplingOnRenderPassDescriptor(uint64_t a1, id *a2, unsigned int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24) == 1)
  {
    v6 = re::RenderStat::samplerIndexForType(a1, a3);
    if (v6 >= *(a1 + 536))
    {
      v9 = *re::graphicsLogObjects(v6);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        v12 = a3;
        _os_log_debug_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEBUG, "enableMTLCounterSamplingOnRenderPassDescriptor skipped, no PerfMTLCounterSampler for sample type %u", buf, 8u);
      }
    }

    else
    {
      v7 = (*(a1 + 552) + 200 * v6);
      v8 = *a2;
      v10 = v8;
      re::PerfMTLCounterSampler::enableSamplingOnRenderPassDescriptor(v7, &v10);
      if (v8)
      {
      }
    }
  }
}

void re::RenderStat::makeComputeCommandEncoderWithMTLCounterSampling(uint64_t a1@<X0>, id *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24) == 1)
  {
    v10 = re::RenderStat::samplerIndexForType(a1, a3);
    if (v10 < *(a1 + 536))
    {
      v11 = *(a1 + 552) + 200 * v10;
      v14 = *a2;
      re::PerfMTLCounterSampler::makeComputeCommandEncoderWithSampling(v11, &v14, a4, a5);

      return;
    }

    v12 = *re::graphicsLogObjects(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v16 = a3;
      _os_log_debug_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEBUG, "makeComputeCommandEncoderWithMTLCounterSampling skipped, no PerfMTLCounterSampler for sample type %u", buf, 8u);
    }
  }

  v13 = [objc_msgSend(MEMORY[0x1E6974028] alloc)];
  [v13 setDispatchType_];
  re::mtl::CommandBuffer::makeComputeCommandEncoder(a2, v13, a5);
  if (v13)
  {
  }
}

uint64_t re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::add(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *a2) ^ ((0xBF58476D1CE4E5B9 * *a2) >> 27));
  re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::findEntry<unsigned short>(a1, a2, v6 ^ (v6 >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::addInternal<unsigned short,re::Function<void ()(re::GpuTimingData const&)> const&>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 56 * HIDWORD(v9) + 8;
  }
}

BOOL re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::remove(uint64_t a1, unsigned __int16 *a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *a2) ^ ((0xBF58476D1CE4E5B9 * *a2) >> 27));
  re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::findEntry<unsigned short>(a1, a2, v3 ^ (v3 >> 31), v5);
  return re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::removeInternal(a1, v5);
}

uint64_t re::RenderStat::beginRecordPassStat(uint64_t a1, void **a2, unsigned int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24) <= 1u)
  {
    v6 = *(a1 + 116);
    v7 = *(a1 + 104);
    v8 = re::globalAllocators(a1)[2];
    v18 = v8;
    v9 = (*(*v8 + 32))(v8, 32, 0);
    *v9 = &unk_1F5D038D8;
    *(v9 + 8) = a1;
    *(v9 + 16) = v6;
    *(v9 + 24) = v7;
    v19 = v9;
    v15 = v8;
    v16 = 0;
    re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(v14, v17);
    re::mtl::CommandBuffer::addCompletionHandler(a2, v14);
    re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v14);
    v10 = re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v17);
    if (*(a1 + 24) == 1)
    {
      v11 = re::RenderStat::samplerIndexForType(v10, a3);
      v12 = v11;
      if (v11 < *(a1 + 536))
      {
        re::PerfMTLCounterSampler::createSampleBuffer((*(a1 + 552) + 200 * v11));
      }

      *(a1 + 560) = v12;
    }
  }

  return 0;
}

re *re::RenderStat::finishMTLCounterSampling(re *result, uint64_t a2, id *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(result + 6) == 1)
  {
    if (a2 >= 0x20)
    {
      re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, a2, 32);
      _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v11, v12);
      __break(1u);
    }

    else
    {
      v5 = result;
      v4 = *(result + a2 + 280);
      if (*(result + 67) <= v4)
      {
        return result;
      }

      v7 = *(result + 69) + 200 * *(result + a2 + 280);
      v15 = *a3;
      re::PerfMTLCounterSampler::freezeAndReadSamples(v7, &v15);

      v3 = *(v5 + 67);
      if (v3 > v4)
      {
        return re::PerfMTLCounterSampler::finishSampling((*(v5 + 69) + 200 * v4), a3);
      }
    }

    v16 = 0;
    memset(v25, 0, sizeof(v25));
    v8 = MEMORY[0x1E69E9C10];
    v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    if (v9)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v20 = 789;
    v21 = 2048;
    v22 = v4;
    v23 = 2048;
    v24 = v3;
    _os_log_send_and_compose_impl(v10, &v16, v25, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v13, v14);
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

void re::RenderStat::finishFrame(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = a1;
  v23 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 116);
  v6 = (v5 + 1) & 3;
  if (v6 == atomic_load_explicit((a1 + 112), memory_order_acquire))
  {
    v7 = *re::graphicsLogObjects(a1);
    a1 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (a1)
    {
      *buf = 67109120;
      v20 = 4;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "There is a significant delay between requesting perf counters and receiving samples (at least %u frames)", buf, 8u);
    }
  }

  if (*(v4 + 24) <= 1u)
  {
    if (v5 >= 4)
    {
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v5, 4);
      _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v14, v15);
      __break(1u);
    }

    *(v4 + 16 * v5 + 192) = xmmword_1E30A1A10;
    v8 = *(v4 + 104);
    v9 = re::profilerThreadContext(a1);
    v10 = *(v9 + 10);
    if (*(v9 + 9) == v10)
    {
      v11 = -1;
    }

    else
    {
      v11 = *(v10 - 56);
    }

    v12 = re::globalAllocators(v9)[2];
    v21 = v12;
    v13 = (*(*v12 + 32))(v12, 40, 0);
    *v13 = &unk_1F5D03930;
    *(v13 + 8) = v4;
    *(v13 + 16) = v5;
    *(v13 + 24) = v8;
    *(v13 + 32) = v11;
    v22 = v13;
    v17 = v12;
    v18 = 0;
    re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(v16, buf);
    re::mtl::CommandBuffer::addCompletionHandler(a3, v16);
    re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v16);
    re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(buf);
  }

  atomic_store(v6, (v4 + 116));
}

uint64_t re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::deinit(uint64_t a1)
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
          re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::destroyCallable(v3);
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

uint64_t (***re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::destroyCallable(uint64_t a1))(void)
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

uint64_t re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 40 * v4;
  *(v5 + 24) = *(a2 + 24);
  *(v5 + 32) = 0;
  result = re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::operator=<24ul>(v5, a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::setCapacity(v5, a2);
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
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v12, v14);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v13, v15);
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
        v10 = 40 * v9;
        v11 = v7;
        do
        {
          *(v11 + 24) = *(v8 + 24);
          *(v11 + 32) = 0;
          re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::operator=<24ul>(v11, v8);
          re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::destroyCallable(v8);
          v8 += 40;
          v11 += 40;
          v10 -= 40;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (*(a1 + 24) != *(a2 + 24) || v4 == a2)
    {
      if (v4)
      {
        v6 = (*(*v4 + 40))(v4);
        v7 = a1;
        if (v6 >= 0x19)
        {
          v8 = v6;
          v9 = *(a1 + 24);
          if (v9)
          {
            v7 = (*(*v9 + 32))(v9, v8, 0);
          }

          else
          {
            v7 = 0;
          }
        }

        *(a1 + 32) = v7;
        (*(**(a2 + 32) + 32))(*(a2 + 32));
        re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::destroyCallable(a2);
      }
    }

    else
    {
      *(a1 + 32) = v4;
      *(a2 + 32) = 0;
    }
  }

  return a1;
}

{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::destroyCallable(a1);
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

uint64_t (***re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::clear(uint64_t (***result)(void)))(void)
{
  v1 = result;
  v2 = result[2];
  result[2] = 0;
  if (v2)
  {
    v3 = result[4];
    v4 = 40 * v2;
    do
    {
      result = re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::destroyCallable(v3);
      v3 += 5;
      v4 -= 40;
    }

    while (v4);
  }

  ++*(v1 + 6);
  return result;
}

void re::internal::Callable<re::RenderStat::beginRecordPassStat(re::mtl::CommandBuffer,re::RenderStat::CommandBufferSampleType)::$_0,void ()(re::mtl::CommandBuffer const&)>::operator()(uint64_t a1, id *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  if (*(v4 + 104) == *(a1 + 24))
  {
    v24 = v3;
    [v3 GPUEndTime];
    v3 = v24;
    if (v6 > 0.0)
    {
      v7 = *(a1 + 16);
      if (v7 >= 4)
      {
        re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, *(a1 + 16), 4);
        _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v18, v21);
        __break(1u);
      }

      else
      {
        [v24 GPUStartTime];
        v10 = *(a1 + 16);
        if (v10 < 4)
        {
          v11 = v4 + 192;
          v12 = v9 * 1000.0;
          if (*(v11 + 16 * v7) <= v12)
          {
            v12 = *(v11 + 16 * v7);
          }

          v13 = (v11 + 16 * v10);
          *v13 = v12;
          [v24 GPUEndTime];
          v16 = *(a1 + 16);
          if (v16 < 4)
          {
            v17 = v15 * 1000.0;
            if (v13[1] >= v17)
            {
              v17 = v13[1];
            }

            *(v11 + 16 * v16 + 8) = v17;
            v3 = v24;
            goto LABEL_11;
          }

LABEL_16:
          re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v16, 4);
          _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v20, v23);
          __break(1u);
          return;
        }
      }

      re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v10, 4);
      _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v19, v22);
      __break(1u);
      goto LABEL_16;
    }
  }

LABEL_11:
}

uint64_t re::internal::Callable<re::RenderStat::beginRecordPassStat(re::mtl::CommandBuffer,re::RenderStat::CommandBufferSampleType)::$_0,void ()(re::mtl::CommandBuffer const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D038D8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::RenderStat::beginRecordPassStat(re::mtl::CommandBuffer,re::RenderStat::CommandBufferSampleType)::$_0,void ()(re::mtl::CommandBuffer const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D038D8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

void re::internal::Callable<re::RenderStat::finishFrame(unsigned int,re::mtl::CommandBuffer)::$_0,void ()(re::mtl::CommandBuffer const&)>::operator()(uint64_t a1, id *a2)
{
  v4 = *a2;
  v5 = *(a1 + 8);
  if ((atomic_load_explicit((v5 + 40), memory_order_acquire) & 1) == 0 || *(v5 + 104) != *(a1 + 24))
  {
LABEL_24:

    return;
  }

  v6 = *(a1 + 16);
  if (v6 < 4)
  {
    v7 = (v5 + 192 + 16 * v6);
    v8 = *(v5 + 192 + 16 * ((v6 - 1) & 3) + 8);
    v9 = v7[1];
    if (v8 < *v7 || v8 > v9)
    {
      v8 = *v7;
    }

    v19[0] = *(a1 + 32);
    *&v19[1] = v9 - v8;
    v11 = *(v5 + 80);
    if (v11)
    {
      v12 = 0;
      v13 = *(v5 + 64);
      while (1)
      {
        v14 = *v13;
        v13 += 14;
        if (v14 < 0)
        {
          break;
        }

        if (v11 == ++v12)
        {
          LODWORD(v12) = *(v5 + 80);
          break;
        }
      }
    }

    else
    {
      LODWORD(v12) = 0;
    }

    while (v12 != v11)
    {
      v15 = *(*(v5 + 64) + 56 * v12 + 40);
      (*(*v15 + 16))(v15, v19);
      v16 = *(v5 + 80);
      if (v16 <= v12 + 1)
      {
        v16 = v12 + 1;
      }

      while (v16 - 1 != v12)
      {
        LODWORD(v12) = v12 + 1;
        if ((*(*(v5 + 64) + 56 * v12) & 0x80000000) != 0)
        {
          goto LABEL_22;
        }
      }

      LODWORD(v12) = v16;
LABEL_22:
      ;
    }

    atomic_store((atomic_load_explicit((v5 + 112), memory_order_acquire) + 1) & 3, (v5 + 112));
    goto LABEL_24;
  }

  re::internal::assertLog(6, v3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, *(a1 + 16), 4);
  _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v17, v18);
  __break(1u);
}

uint64_t re::internal::Callable<re::RenderStat::finishFrame(unsigned int,re::mtl::CommandBuffer)::$_0,void ()(re::mtl::CommandBuffer const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D03930;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::RenderStat::finishFrame(unsigned int,re::mtl::CommandBuffer)::$_0,void ()(re::mtl::CommandBuffer const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D03930;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

void *re::DynamicArray<re::PerfMTLCounterSampler>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::PerfMTLCounterSampler>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xC8uLL))
        {
          v2 = 200 * a2;
          result = (*(*result + 32))(result, 200 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 200, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v19, v21);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v20, v22);
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
        v10 = 0;
        v11 = v8 + 200 * v9;
        do
        {
          v12 = &v7[v10 / 8];
          v13 = v8 + v10;
          v14 = *(v8 + v10);
          v12[2] = *(v8 + v10 + 16);
          *v12 = v14;
          v12[3] = *(v8 + v10 + 24);
          v15 = *(v8 + v10 + 36);
          *(v12 + 8) = *(v8 + v10 + 32);
          *(v12 + 36) = v15;
          re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::DynamicArray(&v7[v10 / 8 + 5], (v8 + v10 + 40));
          re::DynamicArray<char const*>::DynamicArray(&v7[v10 / 8 + 10], (v8 + v10 + 80));
          re::DynamicArray<char const*>::DynamicArray(&v7[v10 / 8 + 15], (v8 + v10 + 120));
          v16 = *(v8 + v10 + 160);
          *(v12 + 42) = *(v8 + v10 + 168);
          v12[20] = v16;
          v12[22] = *(v8 + v10 + 176);
          v17 = *(v8 + v10 + 184);
          v18 = *(v8 + v10 + 192);
          v12[23] = v17;
          v12[24] = v18;
          re::SampleBufferObjectPool::~SampleBufferObjectPool((v8 + v10 + 80));
          re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::deinit(v8 + v10 + 40);

          v10 += 200;
        }

        while (v13 + 200 != v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::copy(a1, a2);
  }

  return a1;
}

void *re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::copy(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = result[2];
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::setCapacity(result, *(a2 + 16));
    v11 = *(a2 + 32);
    v12 = v3[2];
    v13 = v3[4];
    if (v12)
    {
      v14 = 40 * v12;
      do
      {
        result = re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::operator=<24ul>(v13, v11);
        v11 += 40;
        v13 += 40;
        v14 -= 40;
      }

      while (v14);
      v13 = v3[4];
      v12 = v3[2];
      v11 = *(a2 + 32);
    }

    if (v12 != v4)
    {
      v15 = 5 * v12;
      v16 = v11 + 8 * v15;
      v17 = v13 + 8 * v15;
      v18 = 40 * v4 - 8 * v15;
      do
      {
        *(v17 + 24) = *(v16 + 24);
        *(v17 + 32) = 0;
        result = re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::operator=<24ul>(v17, v16);
        v16 += 40;
        v17 += 40;
        v18 -= 40;
      }

      while (v18);
    }
  }

  else
  {
    v6 = result[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 40 * v4;
      do
      {
        result = re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::operator=<24ul>(v6, v7);
        v7 += 40;
        v6 += 40;
        v8 -= 40;
      }

      while (v8);
      v6 = v3[4];
      v5 = v3[2];
    }

    if (v4 != v5)
    {
      v9 = v6 + 40 * v4;
      v10 = 40 * v5 - 40 * v4;
      do
      {
        result = re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::destroyCallable(v9);
        v9 += 40;
        v10 -= 40;
      }

      while (v10);
    }
  }

  v3[2] = v4;
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::PerfMTLCounterSampler>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::PerfMTLCounterSampler>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::PerfMTLCounterSampler>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::addInternal<unsigned short,re::Function<void ()(re::GpuTimingData const&)> const&>(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4)
{
  v7 = re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  *(v7 + 4) = *a3;
  *(v7 + 32) = *(a4 + 24);
  *(v7 + 40) = 0;
  re::FunctionBase<24ul,void ()(re::GpuTimingData const&)>::operator=<24ul>(v7 + 8, a4);
  ++*(a1 + 40);
  return v7 + 8;
}

uint64_t re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::findEntry<unsigned short>@<X0>(uint64_t result@<X0>, unsigned __int16 *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_5;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(result + 16);
  v8 = *a2;
  if (*(v7 + 56 * v6 + 4) == v8)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v9 = *(v7 + 56 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v9 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v10 = v9;
      if (*(v7 + 56 * v9 + 4) == v8)
      {
        break;
      }

      v9 = *(v7 + 56 * v9) & 0x7FFFFFFF;
      v6 = v10;
      if (v9 == 0x7FFFFFFF)
      {
        v6 = v10;
        goto LABEL_6;
      }
    }

    v5 = v9;
  }

LABEL_6:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}