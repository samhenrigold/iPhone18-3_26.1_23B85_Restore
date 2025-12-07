_anonymous_namespace_ *re::ArgumentBufferCacheReferences::addAndUseResourcePtrs(_anonymous_namespace_ *this, id *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = *(a3 + 32);
    v8 = &v7[v5];
    do
    {
      v9 = *v7;
      v13 = *v7;
      v10 = *(v4 + 2);
      if (v6 >= v10)
      {
        v11 = 0;
      }

      else
      {
        while (1)
        {
          v11 = *(*(v4 + 4) + 8 * v6);
          if (v11 >= v9)
          {
            break;
          }

          if (v10 == ++v6)
          {
            v6 = *(v4 + 2);
            break;
          }
        }
      }

      if (v11 != v9)
      {
        re::DynamicArray<unsigned long>::insert(v4, v6, &v13);
        this = re::DynamicArray<unsigned long>::add((v4 + 40), &v13);
      }

      ++v7;
    }

    while (v7 != v8);
  }

  v12 = *(v4 + 7);
  if (v12)
  {
    this = [*a2 useResources:*(v4 + 9) count:v12 usage:1 stages:3];
    *(v4 + 7) = 0;
    ++*(v4 + 16);
  }

  return this;
}

uint64_t re::processArgumentBufferContextAndUseResources(uint64_t a1, _anonymous_namespace_ *a2, id *a3)
{
  ArgumentBuffer = re::getOrCreateArgumentBuffer(a1);
  if (*(ArgumentBuffer + 74) == 1 && (*(a2 + 81) & 1) == 0)
  {
    [*a3 useHeap:*(*(*(a1 + 8) + 56) + 8) stages:3];
    *(a2 + 81) = 1;
  }

  re::ArgumentBufferCacheReferences::addAndUseResourcePtrs(a2, a3, ArgumentBuffer + 16);
  return ArgumentBuffer;
}

void re::ArgumentEncoderBufferPair::~ArgumentEncoderBufferPair(id *this)
{
  v2 = *this;
  if (v2)
  {
    [v2 setArgumentBuffer:0 offset:0];
    if (*this)
    {

      *this = 0;
    }
  }
}

uint64_t re::FunctionConstantsEnumerator::hasMatchingValueInLayer(re::FunctionConstantsEnumerator *this, const char *__s2, uint64_t a3)
{
  v3 = *(this + 1);
  if (!v3)
  {
    return 0;
  }

  v6 = *(this + 2);
  v7 = &v6[11 * v3];
  while (1)
  {
    v8 = (v6[1] & 1) != 0 ? v6[2] : v6 + 9;
    if (!strcmp(v8, __s2))
    {
      v9 = v6[7];
      if (v9)
      {
        break;
      }
    }

LABEL_7:
    v6 += 11;
    if (v6 == v7)
    {
      return 0;
    }
  }

  v10 = 16 * v9;
  v11 = (v6[8] + 8);
  while (*(v11 - 8) != 1 || *v11 != a3)
  {
    v11 += 2;
    v10 -= 16;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  return 1;
}

uint64_t *re::FunctionConstantsEnumerator::createLayerToIndexMap(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = *MEMORY[0x1E69E9840];
  *(a1 + 2) = 0;
  v8 = *(a2 + 8);
  *(a1 + 1) = v8;
  if (v8)
  {
    if (v8 >> 62)
    {
      goto LABEL_27;
    }

    *(a1 + 2) = result;
    if (result)
    {
      v12 = result;
      v13 = result;
      v14 = v8 - 1;
      if (v8 != 1)
      {
        do
        {
          *v13 = 0;
          v13 = (v13 + 4);
          --v14;
        }

        while (v14);
      }

      v15 = 0;
      *v13 = 0;
      while (1)
      {
        if (a4)
        {
          v16 = *(a2 + 8);
          if (v16 <= v15)
          {
            v30 = 0;
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v39 = 0u;
            v21 = MEMORY[0x1E69E9C10];
            v31 = 136315906;
            v32 = "operator[]";
            v33 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v22 = 3;
            }

            else
            {
              v22 = 2;
            }

            v34 = 476;
            v35 = 2048;
            v36 = v15;
            v37 = 2048;
            v38 = v16;
            _os_log_send_and_compose_impl(v22, &v30, &v39, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v31, 38, v28, v29);
            _os_crash_msg();
            __break(1u);
LABEL_23:
            v30 = 0;
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v39 = 0u;
            v23 = MEMORY[0x1E69E9C10];
            v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v31 = 136315906;
            v32 = "operator[]";
            v33 = 1024;
            if (v24)
            {
              v25 = 3;
            }

            else
            {
              v25 = 2;
            }

            v34 = 468;
            v35 = 2048;
            v36 = v15;
            v37 = 2048;
            v38 = v8;
            _os_log_send_and_compose_impl(v25, &v30, &v39, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v31, 38, v28, v29);
            _os_crash_msg();
            __break(1u);
LABEL_27:
            re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 4, v8);
            _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v26, v27);
            __break(1u);
            break;
          }

          v17 = 0;
          v18 = *(a2 + 16) + 88 * v15;
          v19 = a3;
          while (1)
          {
            result = re::DynamicString::operator==(v19, v18);
            if (result)
            {
              break;
            }

            ++v17;
            v19 += 104;
            if (a4 == v17)
            {
              goto LABEL_17;
            }
          }

          if (v8 <= v15)
          {
            goto LABEL_23;
          }

          v20 = v12 + 4 * v15;
          if ((*v20 & 1) == 0)
          {
            *v20 = 1;
          }

          *(v20 + 1) = v17;
        }

LABEL_17:
        if (++v15 == v8)
        {
          return result;
        }
      }
    }

    re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
  }

  return result;
}

uint64_t re::FunctionConstantsEnumerator::enumerateFunctionConstantSet(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = *(a1 + 16);
  v6 = &v5[11 * v2];
  do
  {
    v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a2, v5 + 4);
    if (v7 == -1)
    {
LABEL_9:
      v12 = 0;
    }

    else
    {
      v9 = v5[7];
      v8 = v5[8];
      if (v9)
      {
        v10 = 16 * v9;
        v11 = v5[8];
        while (*v11 != 1 || *(v11 + 8) != *(a2[1] + 16 * v7 + 8))
        {
          v11 += 16;
          v10 -= 16;
          if (!v10)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
        v11 = v5[8];
      }

      v13 = v8 + 16 * v9;
      v12 = (v11 - v8) >> 4;
      if (v11 == v13)
      {
        v12 = 0;
      }
    }

    v4 += v5[9] * v12;
    v5 += 11;
  }

  while (v5 != v6);
  return v4;
}

uint64_t re::FunctionConstantsEnumerator::createPermutation@<X0>(_anonymous_namespace_ *a1@<X0>, unint64_t a2@<X1>, re::DynamicString *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v69 = *MEMORY[0x1E69E9840];
  *(a5 + 32) = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  *(a5 + 24) = 0;
  if (a4)
  {
    v9 = a4;
    re::DynamicArray<re::TechniqueFunctionConstant>::setCapacity(a5, v9);
    ++*(a5 + 24);
    re::DynamicArray<re::TechniqueFunctionConstant>::copy(a5, 0, a3, v9);
    v11 = *(a5 + 32);
    a4 = *(a5 + 16);
  }

  else
  {
    v11 = 0;
  }

  LayerToIndexMap = re::FunctionConstantsEnumerator::createLayerToIndexMap(&v52, a1, v11, a4);
  if (*(a1 + 1))
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = a2 % *(a1 + 4);
    while (1)
    {
      v17 = (*(a1 + 2) + v14);
      v18 = v17[9];
      v19 = v17[7];
      if (v19 <= v16 / v18)
      {
        break;
      }

      v20 = (v17[8] + 16 * (v16 / v18));
      v21 = *v20;
      if (v21 == 1)
      {
        v5 = *(v20 + 1);
      }

      v19 = v53;
      if (v53 <= v15)
      {
        goto LABEL_39;
      }

      if (*(v54 + v13) == 1)
      {
        v51 = v5;
        v19 = *(v54 + v13 + 2);
        v5 = *(a5 + 16);
        if (v21)
        {
          if (v5 <= v19)
          {
            goto LABEL_47;
          }

          v22 = *(a5 + 32) + 104 * *(v54 + v13 + 2);
          *(v22 + 76) = 0u;
          *(v22 + 92) = 0;
          *(v22 + 60) = 0u;
          *(v22 + 44) = 0u;
          v5 = v51;
          *(v22 + 36) = v51;
        }

        else
        {
          if (v5 <= v19)
          {
            goto LABEL_51;
          }

          if (v5 - 1 > v19)
          {
            v24 = *(a5 + 32);
            v25 = v24 + 104 * v5;
            v26 = re::DynamicString::operator=((v24 + 104 * *(v54 + v13 + 2)), (v25 - 104));
            *(v26 + 2) = *(v25 - 72);
            v27 = *(v25 - 40);
            v28 = *(v25 - 24);
            v29 = *(v25 - 56);
            *(v26 + 24) = *(v25 - 8);
            *(v26 + 4) = v27;
            *(v26 + 5) = v28;
            *(v26 + 3) = v29;
            v5 = *(a5 + 16);
          }

          re::DynamicString::deinit((*(a5 + 32) + 104 * v5 - 104));
          v30 = *(a5 + 16) - 1;
          *(a5 + 16) = v30;
          ++*(a5 + 24);
          re::FunctionConstantsEnumerator::createLayerToIndexMap(&v56, a1, *(a5 + 32), v30);
          re::FixedArray<float>::operator=(&v52, &v56);
          LayerToIndexMap = v56;
          if (v56 && *(&v56 + 1))
          {
            LayerToIndexMap = (*(*v56 + 40))();
          }

          v5 = v51;
        }
      }

      else if (v21)
      {
        v56 = 0u;
        v57 = 0u;
        re::DynamicString::setCapacity(&v56, 0);
        v23 = 0uLL;
        memset(v58 + 4, 0, 64);
        v19 = *(a1 + 1);
        if (v19 <= v15)
        {
          goto LABEL_43;
        }

        re::DynamicString::operator=(&v56, (*(a1 + 2) + v14));
        v19 = *(a1 + 1);
        if (v19 <= v15)
        {
          goto LABEL_55;
        }

        LODWORD(v58[0]) = *(*(a1 + 2) + v14 + 40);
        memset(v58 + 12, 0, 56);
        *(v58 + 4) = v5;
        re::DynamicArray<re::TechniqueFunctionConstant>::add(a5, &v56);
        re::FunctionConstantsEnumerator::createLayerToIndexMap(v66, a1, *(a5 + 32), *(a5 + 16));
        re::FixedArray<float>::operator=(&v52, v66);
        if (*&v66[0] && *(&v66[0] + 1))
        {
          (*(**&v66[0] + 40))(*&v66[0], *&v66[1]);
        }

        LayerToIndexMap = v56;
        if (v56 && (BYTE8(v56) & 1) != 0)
        {
          LayerToIndexMap = (*(*v56 + 40))();
        }
      }

      v16 %= v18;
      ++v15;
      v14 += 88;
      v13 += 4;
      if (*(a1 + 1) <= v15)
      {
        goto LABEL_31;
      }
    }

    *v59 = 0;
    v57 = 0u;
    memset(v58, 0, 48);
    v56 = 0u;
    v32 = MEMORY[0x1E69E9C10];
    v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v66[0]) = 136315906;
    *(v66 + 4) = "operator[]";
    WORD6(v66[0]) = 1024;
    if (v33)
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    *(v66 + 14) = 476;
    WORD1(v66[1]) = 2048;
    *(&v66[1] + 4) = v16 / v18;
    WORD6(v66[1]) = 2048;
    *(&v66[1] + 14) = v19;
    _os_log_send_and_compose_impl(v34, v59, &v56, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v66, 38, v50, v51);
    _os_crash_msg();
    __break(1u);
LABEL_39:
    *v59 = 0;
    v57 = 0u;
    memset(v58, 0, 48);
    v56 = 0u;
    v35 = MEMORY[0x1E69E9C10];
    v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v66[0]) = 136315906;
    *(v66 + 4) = "operator[]";
    WORD6(v66[0]) = 1024;
    if (v36)
    {
      v37 = 3;
    }

    else
    {
      v37 = 2;
    }

    *(v66 + 14) = 468;
    WORD1(v66[1]) = 2048;
    *(&v66[1] + 4) = v15;
    WORD6(v66[1]) = 2048;
    *(&v66[1] + 14) = v19;
    _os_log_send_and_compose_impl(v37, v59, &v56, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v66, 38, v50, v51);
    _os_crash_msg();
    __break(1u);
LABEL_43:
    v55 = 0;
    v67 = v23;
    v68 = v23;
    v66[1] = v23;
    v66[2] = v23;
    v66[0] = v23;
    v38 = MEMORY[0x1E69E9C10];
    v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v59 = 136315906;
    *&v59[4] = "operator[]";
    v60 = 1024;
    if (v39)
    {
      v40 = 3;
    }

    else
    {
      v40 = 2;
    }

    v61 = 476;
    v62 = 2048;
    v63 = v15;
    v64 = 2048;
    v65 = v19;
    _os_log_send_and_compose_impl(v40, &v55, v66, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v59, 38, v50, v51);
    _os_crash_msg();
    __break(1u);
LABEL_47:
    *v59 = 0;
    v57 = 0u;
    memset(v58, 0, 48);
    v56 = 0u;
    v41 = MEMORY[0x1E69E9C10];
    v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v66[0]) = 136315906;
    *(v66 + 4) = "operator[]";
    WORD6(v66[0]) = 1024;
    if (v42)
    {
      v43 = 3;
    }

    else
    {
      v43 = 2;
    }

    *(v66 + 14) = 789;
    WORD1(v66[1]) = 2048;
    *(&v66[1] + 4) = v19;
    WORD6(v66[1]) = 2048;
    *(&v66[1] + 14) = v5;
    _os_log_send_and_compose_impl(v43, v59, &v56, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v66, 38, v50, v51);
    _os_crash_msg();
    __break(1u);
LABEL_51:
    *v59 = 0;
    v57 = 0u;
    memset(v58, 0, 48);
    v56 = 0u;
    v44 = MEMORY[0x1E69E9C10];
    v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v66[0]) = 136315906;
    *(v66 + 4) = "removeAt";
    WORD6(v66[0]) = 1024;
    if (v45)
    {
      v46 = 3;
    }

    else
    {
      v46 = 2;
    }

    *(v66 + 14) = 931;
    WORD1(v66[1]) = 2048;
    *(&v66[1] + 4) = v19;
    WORD6(v66[1]) = 2048;
    *(&v66[1] + 14) = v5;
    _os_log_send_and_compose_impl(v46, v59, &v56, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v66, 38, v50, v51);
    _os_crash_msg();
    __break(1u);
LABEL_55:
    v55 = 0;
    v67 = 0u;
    v68 = 0u;
    memset(v66, 0, sizeof(v66));
    v47 = MEMORY[0x1E69E9C10];
    v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v59 = 136315906;
    *&v59[4] = "operator[]";
    v60 = 1024;
    if (v48)
    {
      v49 = 3;
    }

    else
    {
      v49 = 2;
    }

    v61 = 476;
    v62 = 2048;
    v63 = v15;
    v64 = 2048;
    v65 = v19;
    _os_log_send_and_compose_impl(v49, &v55, v66, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v59, 38, v50, v51);
    _os_crash_msg();
    __break(1u);
  }

LABEL_31:
  result = v52;
  if (v52)
  {
    if (v53)
    {
      return (*(*v52 + 40))();
    }
  }

  return result;
}

uint64_t *re::FunctionConstantsEnumerator::appendEnumerator@<X0>(uint64_t *__return_ptr a1@<X8>, re::FunctionConstantsEnumerator *this@<X0>, const re::FunctionConstantsEnumerator *a3@<X1>)
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 1) + *(this + 1);
  *a1 = 0u;
  *(a1 + 1) = 0u;
  a1[4] = 1;
  if (v6)
  {
    v7 = 0;
    for (i = 0; i != v6; ++i)
    {
      v9 = *(this + 1);
      if (i >= v9)
      {
        v10 = a3;
      }

      else
      {
        v10 = this;
      }

      if (i < v9)
      {
        v9 = 0;
      }

      v11 = i - v9;
      v12 = *(v10 + 1);
      if (v12 <= i - v9)
      {
        v24 = 0;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v33 = 0u;
        v18 = MEMORY[0x1E69E9C10];
        v25 = 136315906;
        v26 = "operator[]";
        v27 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v19 = 3;
        }

        else
        {
          v19 = 2;
        }

        v28 = 476;
        v29 = 2048;
        v30 = v11;
        v31 = 2048;
        v32 = v12;
        _os_log_send_and_compose_impl(v19, &v24, &v33, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
        _os_crash_msg();
        __break(1u);
LABEL_18:
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

        v28 = 468;
        v29 = 2048;
        v30 = i;
        v31 = 2048;
        v32 = v12;
        _os_log_send_and_compose_impl(v22, &v24, &v33, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
        _os_crash_msg();
        __break(1u);
      }

      v12 = a1[1];
      if (v12 <= i)
      {
        goto LABEL_18;
      }

      v13 = *(v10 + 2) - 88 * v9 + v7;
      v14 = a1[2] + v7;
      re::DynamicString::operator=(v14, v13);
      v15 = *(v13 + 32);
      *(v14 + 40) = *(v13 + 40);
      *(v14 + 32) = v15;
      re::FixedArray<re::Optional<unsigned long long>>::operator=((v14 + 48), (v13 + 48));
      v16 = *(v13 + 80);
      *(v14 + 72) = *(v13 + 72);
      *(v14 + 80) = v16;
      v7 += 88;
    }
  }

  return re::FunctionConstantsEnumerator::calculateDerivedFields(a1);
}

void *re::FunctionConstantsEnumerator::calculateDerivedFields(void *this)
{
  v1 = this[1];
  if (v1)
  {
    v2 = this[2];
    v3 = v2 + 88 * v1;
    v4 = 88 * v1;
    v5 = (v2 + 56);
    v6 = 1;
    do
    {
      v7 = *v5;
      v5 += 11;
      v6 *= v7;
      v4 -= 88;
    }

    while (v4);
    this[4] = v6;
    v8 = (v2 + 72);
    v9 = v1;
    do
    {
      v6 /= *(v8 - 2);
      *v8 = v6;
      v8 += 11;
      --v9;
    }

    while (v9);
    do
    {
      v10 = *(v2 + 56);
      v11 = (v10 - 0x61C8864680B583E9 + (*(v2 + 32) << 6) + (*(v2 + 32) >> 2)) ^ *(v2 + 32);
      if (v10)
      {
        v12 = (*(v2 + 64) + 8);
        v13 = 16 * v10;
        do
        {
          v14 = *(v12 - 8);
          v15 = (v11 << 6) - 0x61C8864680B583E9;
          if (v14)
          {
            v11 ^= v15 + (v11 >> 2) + v14;
            v16 = (v11 << 6) - 0x61C8864680B583E9 + (v11 >> 2) + *v12;
          }

          else
          {
            v16 = v15 + (v11 >> 2);
          }

          v11 ^= v16;
          v12 += 2;
          v13 -= 16;
        }

        while (v13);
      }

      v17 = (*(v2 + 42) - 0x61C8864680B583E9 + ((((v11 << 6) - 0x61C8864680B583E9 + (v11 >> 2) + *(v2 + 72)) ^ v11) << 6) + ((((v11 << 6) - 0x61C8864680B583E9 + (v11 >> 2) + *(v2 + 72)) ^ v11) >> 2)) ^ ((v11 << 6) - 0x61C8864680B583E9 + (v11 >> 2) + *(v2 + 72)) ^ v11;
      v1 ^= (v1 << 6) - 0x61C8864680B583E9 + (v1 >> 2) + ((*(v2 + 40) - 0x61C8864680B583E9 + (v17 << 6) + (v17 >> 2)) ^ v17);
      v2 += 88;
    }

    while (v2 != v3);
  }

  else
  {
    this[4] = 1;
  }

  this[3] = v1;
  return this;
}

void *re::FunctionConstantsEnumerator::overrideEnumerator@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  v102 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = 0;
    v8 = *(a2 + 16);
    while (1)
    {
      v9 = *v8;
      v8 += 38;
      if (v9 < 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        LODWORD(v7) = *(a2 + 32);
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
    goto LABEL_8;
  }

  v10 = *(a2 + 16);
  v11 = *(a2 + 32);
LABEL_10:
  v12 = v4[1];
  if (!v12)
  {
    goto LABEL_15;
  }

  v13 = v10 + 152 * v7;
  v14 = 88 * v12;
  v15 = (v4[2] + 32);
  while (1)
  {
    result = re::Hash<re::DynamicString>::operator()(&v86, (v13 + 8));
    v16 = *v15;
    v15 += 11;
    if (result == v16)
    {
      break;
    }

    v14 -= 88;
    if (!v14)
    {
      v11 = *(a2 + 32);
      v10 = *(a2 + 16);
LABEL_15:
      if (v11 <= v7 + 1)
      {
        v17 = v7 + 1;
      }

      else
      {
        v17 = v11;
      }

      while (v17 - 1 != v7)
      {
        LODWORD(v7) = v7 + 1;
        if ((*(v10 + 152 * v7) & 0x80000000) != 0)
        {
          goto LABEL_22;
        }
      }

      LODWORD(v7) = v17;
LABEL_22:
      if (v7 == v6)
      {
LABEL_8:
        *a3 = 0;
        return result;
      }

      goto LABEL_10;
    }
  }

  re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::FixedArray(&v82, v4);
  v84 = *(v4 + 3);
  v18 = *(a2 + 32);
  if (v18)
  {
    v19 = 0;
    v20 = *(a2 + 16);
    while (1)
    {
      v21 = *v20;
      v20 += 38;
      if (v21 < 0)
      {
        break;
      }

      if (v18 == ++v19)
      {
        LODWORD(v19) = *(a2 + 32);
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
    v22 = *(a2 + 16);
    v23 = v4[1];
    v24 = *(a2 + 32);
    v77 = v24;
    v78 = a2;
    while (!v23)
    {
LABEL_90:
      if (v24 <= v19 + 1)
      {
        v59 = v19 + 1;
      }

      else
      {
        v59 = v24;
      }

      while (v59 - 1 != v19)
      {
        LODWORD(v19) = v19 + 1;
        if ((*(v22 + 152 * v19) & 0x80000000) != 0)
        {
          goto LABEL_97;
        }
      }

      LODWORD(v19) = v59;
LABEL_97:
      if (v19 == v18)
      {
        goto LABEL_98;
      }
    }

    v26 = 0;
    v27 = v22 + 152 * v19;
    while (1)
    {
      v28 = v4[2] + 88 * v26;
      v29 = re::Hash<re::DynamicString>::operator()(&v86, (v27 + 8));
      if (v29 == *(v28 + 32))
      {
        v31 = *(v28 + 56);
        v30 = *(v28 + 64);
        if (v31)
        {
          v32 = 16 * v31;
          v33 = *(v28 + 64);
          while (*v33 != 1 || *(v33 + 8) != *(v27 + 76))
          {
            v33 += 16;
            v32 -= 16;
            if (!v32)
            {
              goto LABEL_48;
            }
          }
        }

        else
        {
          v33 = *(v28 + 64);
        }

        v34 = v30 + 16 * v31;
        if (v33 == v34)
        {
LABEL_48:
          v79 = 0;
          v80 = 0;
          v81 = 0;
          v40 = v25;
          v41 = *(v28 + 56);
          v42 = v41 + 1;
          v25 = v40;
          v43 = re::FixedArray<re::Optional<unsigned long long>>::init<>(&v79, v40, v42);
          if (!v80)
          {
            re::internal::assertLog(4, v44, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "first", 440);
            _os_crash("assertion failure: (m_size > 0) Array is empty");
            __break(1u);
LABEL_103:
            re::internal::assertLog(7, v44, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 362, v48, 1, v47);
            _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::copy(). size = %zu, pos = %zu, count = %zu", v72, v73, v75);
            __break(1u);
LABEL_104:
            re::internal::assertLog(4, v44, "assertion failure: '%s' (%s:line %i) Too much data to copy.", "requiredSize <= m_size", "copy", 363);
            _os_crash("assertion failure: (requiredSize <= m_size) Too much data to copy.");
            __break(1u);
LABEL_105:
            v85 = 0;
            v100 = 0u;
            v101 = 0u;
            memset(v99, 0, sizeof(v99));
            v62 = MEMORY[0x1E69E9C10];
            v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v92 = 136315906;
            *&v92[4] = "operator[]";
            v93 = 1024;
            if (v63)
            {
              v64 = 3;
            }

            else
            {
              v64 = 2;
            }

            v94 = 468;
            v95 = 2048;
            v96 = v26;
            v97 = 2048;
            v98 = v28;
            _os_log_send_and_compose_impl(v64, &v85, v99, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v92, 38, v74, v76);
            _os_crash_msg();
            __break(1u);
LABEL_109:
            *v92 = 0;
            v90 = 0u;
            v88 = 0u;
            v89 = 0u;
            v86 = 0u;
            v87 = 0u;
            v65 = MEMORY[0x1E69E9C10];
            v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v99[0] = 136315906;
            *&v99[1] = "operator[]";
            LOWORD(v99[3]) = 1024;
            if (v66)
            {
              v67 = 3;
            }

            else
            {
              v67 = 2;
            }

            *(&v99[3] + 2) = 468;
            HIWORD(v99[4]) = 2048;
            *&v99[5] = v26;
            LOWORD(v99[7]) = 2048;
            *(&v99[7] + 2) = v28;
            _os_log_send_and_compose_impl(v67, v92, &v86, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v99, 38, v74, v76);
            _os_crash_msg();
            __break(1u);
LABEL_113:
            v68 = v35 >> 4;
            *v92 = 0;
            v90 = 0u;
            v88 = 0u;
            v89 = 0u;
            v86 = 0u;
            v87 = 0u;
            v69 = MEMORY[0x1E69E9C10];
            v70 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v99[0] = 136315906;
            *&v99[1] = "operator[]";
            LOWORD(v99[3]) = 1024;
            if (v70)
            {
              v71 = 3;
            }

            else
            {
              v71 = 2;
            }

            *(&v99[3] + 2) = 468;
            HIWORD(v99[4]) = 2048;
            *&v99[5] = v68;
            LOWORD(v99[7]) = 2048;
            *(&v99[7] + 2) = v28;
            _os_log_send_and_compose_impl(v71, v92, &v86, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v99, 38, v74, v76);
            _os_crash_msg();
            __break(1u);
LABEL_117:
            re::internal::assertLog(4, v53, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator", "operator=", 296);
            _os_crash("assertion failure: (!isInitialized() || m_allocator == other.m_allocator) ");
            __break(1u);
          }

          v45 = *(v27 + 76);
          v46 = v81;
          if ((*v81 & 1) == 0)
          {
            *v81 = 1;
          }

          *(v46 + 1) = v45;
          v47 = *(v28 + 56);
          v48 = v80;
          if (v47 == -1)
          {
            goto LABEL_103;
          }

          if (v47 + 1 > v80)
          {
            goto LABEL_104;
          }

          if (!v47)
          {
LABEL_62:
            v86 = 0u;
            v87 = 0u;
            *&v86 = v40;
            re::DynamicString::setCapacity(&v86, 0);
            *&v88 = *(v28 + 32);
            DWORD2(v88) = 0;
            *&v90 = 0;
            v89 = 0uLL;
            if (v79)
            {
              re::FixedArray<re::Optional<unsigned long long>>::init<>(&v89, v79, v80);
              re::FixedArray<re::Optional<unsigned long long>>::copy(&v89, &v79);
            }

            *(&v90 + 1) = *(v28 + 72);
            v91 = 0;
            v28 = *(&v82 + 1);
            if (*(&v82 + 1) <= v26)
            {
              goto LABEL_105;
            }

            v52 = re::DynamicString::operator=((v83 + 88 * v26), &v86);
            v54 = v88;
            *(v52 + 10) = DWORD2(v88);
            *(v52 + 4) = v54;
            if (v52 != &v86)
            {
              v55 = *(v52 + 6);
              if (v55 && v55 != v89)
              {
                goto LABEL_117;
              }

              *(v52 + 6) = v89;
              *&v89 = v55;
              v56 = *(v52 + 7);
              *(v52 + 7) = *(&v89 + 1);
              *(&v89 + 1) = v56;
              v57 = *(v52 + 8);
              *(v52 + 8) = v90;
              *&v90 = v57;
            }

            v58 = *(&v90 + 1);
            *(v52 + 80) = v91;
            *(v52 + 9) = v58;
            if (v89)
            {
              if (*(&v89 + 1))
              {
                (*(*v89 + 40))();
                *(&v89 + 1) = 0;
                *&v90 = 0;
              }

              *&v89 = 0;
            }

            if (v86 && (BYTE8(v86) & 1) != 0)
            {
              (*(*v86 + 40))();
            }

            if (v79 && v80)
            {
              (*(*v79 + 40))();
            }

            goto LABEL_88;
          }

          v49 = v81 + 16;
          v50 = (*(v28 + 64) + 8);
          v51 = 16 * v47;
          while (2)
          {
            if (*v49)
            {
              if ((*(v50 - 1) & 1) == 0)
              {
                *v49 = 0;
                goto LABEL_61;
              }

LABEL_60:
              *(v49 + 1) = *v50;
            }

            else if (*(v50 - 1))
            {
              *v49 = 1;
              goto LABEL_60;
            }

LABEL_61:
            v49 += 16;
            v50 += 2;
            v51 -= 16;
            if (!v51)
            {
              goto LABEL_62;
            }

            continue;
          }
        }

        v28 = *(&v82 + 1);
        if (*(&v82 + 1) <= v26)
        {
          goto LABEL_109;
        }

        v35 = v33 - v30;
        v36 = v83 + 88 * v26;
        v28 = *(v36 + 56);
        if (v28 <= v35 >> 4)
        {
          goto LABEL_113;
        }

        v37 = *(v36 + 64);
        v38 = v37 + v35;
        v39 = *(v37 + v35);
        if (v39)
        {
          v34 = *(v38 + 8);
          if (*v37)
          {
            *(v38 + 8) = *(v37 + 8);
          }

          else
          {
            *v38 = 0;
          }
        }

        else if (*v37)
        {
          *v38 = 1;
          v34 = *(v37 + 8);
          *(v38 + 8) = v34;
        }

        if (*v37)
        {
          if (v39)
          {
            goto LABEL_87;
          }

          *v37 = 0;
        }

        else if (v39)
        {
          *v37 = 1;
LABEL_87:
          *(v37 + 8) = v34;
        }
      }

LABEL_88:
      ++v26;
      v23 = v4[1];
      if (v23 <= v26)
      {
        LODWORD(v18) = v77;
        v24 = *(v78 + 32);
        v22 = *(v78 + 16);
        goto LABEL_90;
      }
    }
  }

LABEL_98:
  re::FunctionConstantsEnumerator::calculateDerivedFields(&v82);
  if (v4[3] == v84)
  {
    v60 = 0;
    v61 = a3;
  }

  else
  {
    v61 = a3;
    *(a3 + 8) = v82;
    v82 = 0uLL;
    *(a3 + 24) = v83;
    v83 = 0;
    *(a3 + 32) = v84;
    v60 = 1;
  }

  *v61 = v60;
  return re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit(&v82);
}

void re::FunctionConstantsEnumerator::createEnumerator(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v95 = *MEMORY[0x1E69E9840];
  *a6 = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 1;
  v11 = re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::HashBrown(v80, a1);
  if (a3)
  {
    v12 = &a2[a3];
    v77 = xmmword_1E304FAD0;
    do
    {
      v78[0] = *a2;
      v11 = re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::find(a5, v78);
      if (v11 != -1)
      {
        v13 = a5[1] + 72 * v11;
        v14 = (v13 + 8);
        *v92 = v13 + 8;
        *&v92[8] = 0;
        v15 = *(v13 + 24);
        if (v15 >= 0x10)
        {
          v16 = 0;
          v17 = *v14;
          v18 = v15 >> 4;
          while (1)
          {
            v19 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v17), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
            *&v92[8] = v19 ^ 0xFFFF;
            if (v19 != 0xFFFF)
            {
              break;
            }

            v16 -= 16;
            ++v17;
            if (!--v18)
            {
              goto LABEL_20;
            }
          }

          v20 = __clz(__rbit64(v19 ^ 0xFFFF));
          v21 = v20 - v16;
          *&v92[16] = v20 - v16;
          if (v20 + 1 != v16)
          {
            do
            {
              v22 = *(*v92 + 8) + 96 * v21;
              re::DynamicString::DynamicString(&v85, v22);
              LODWORD(v87) = *(v22 + 32);
              re::DynamicArray<char const*>::DynamicArray(&v87 + 8, (v22 + 40));
              v23 = *(v22 + 80);
              v91 = *(v22 + 88);
              v90 = v23;
              if (re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::find(v80, &v85) == -1)
              {
                re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v80, &v85, &v87);
              }

              if (*(&v87 + 1))
              {
                if (*(&v89 + 1))
                {
                  (*(**(&v87 + 1) + 40))();
                }

                *(&v89 + 1) = 0;
                v88 = 0uLL;
                *(&v87 + 1) = 0;
                LODWORD(v89) = v89 + 1;
              }

              if (v85 && (BYTE8(v85) & 1) != 0)
              {
                (*(*v85 + 40))();
              }

              v11 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v92);
              v21 = *&v92[16];
            }

            while (*&v92[16] != -1);
          }
        }
      }

LABEL_20:
      ++a2;
    }

    while (a2 != v12);
  }

  v24 = v92;
  v25 = *(a4 + 16);
  if (v25)
  {
    v26 = *(a4 + 32);
    v27 = &v26[13 * v25];
    do
    {
      v11 = re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::find(v80, v26);
      if (v11 != -1)
      {
        v28 = v80[1] + 96 * v11;
        v29 = *(v26 + 36);
        v30 = *(v28 + 72);
        v31 = *(v28 + 56);
        v32 = v30;
        if (v31)
        {
          v33 = 8 * v31;
          v32 = *(v28 + 72);
          while (*v32 != v29)
          {
            v32 += 8;
            v33 -= 8;
            if (!v33)
            {
              goto LABEL_32;
            }
          }
        }

        if (v32 == &v30[8 * v31])
        {
LABEL_32:
          if (v31 == -1)
          {
            goto LABEL_81;
          }

          if (v31 >= *(v28 + 48))
          {
            v11 = re::DynamicArray<float *>::growCapacity((v28 + 40), v31 + 1);
            v31 = *(v28 + 56);
            v30 = *(v28 + 72);
          }

          v36 = &v30[8 * v31];
          if (v31)
          {
            *v36 = *(v36 - 1);
            if (v36 - 8 != v30)
            {
              v11 = memmove(v30 + 8, v30, 8 * v31 - 8);
              v30 = *(v28 + 72);
              v31 = *(v28 + 56);
            }

            *v30 = v29;
            v37 = v31 + 1;
          }

          else
          {
            *v36 = v29;
            v37 = 1;
          }

          *(v28 + 56) = v37;
          ++*(v28 + 64);
        }

        else
        {
          v34 = v32 - v30;
          if (v31 <= v34 >> 3)
          {
            goto LABEL_85;
          }

          v35 = *&v30[v34];
          *&v30[v34] = *v30;
          *v30 = v35;
        }

        *(v28 + 88) = 1;
      }

      v26 += 13;
    }

    while (v26 != v27);
  }

  if (v83)
  {
    v38 = v82;
    if (v82)
    {
      v78[0] = v80;
      if (v81 >= 0x10)
      {
        v39 = 0;
        v40 = v80[0];
        v41 = v81 >> 4;
        while (1)
        {
          v42 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v40), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v78[1] = v42 ^ 0xFFFFLL;
          if (v42 != 0xFFFFLL)
          {
            break;
          }

          v39 -= 16;
          ++v40;
          if (!--v41)
          {
            goto LABEL_71;
          }
        }

        v43 = __clz(__rbit64(v42 ^ 0xFFFFLL));
        v44 = v43 - v39;
        v79 = v43 - v39;
        if (v43 + 1 != v39)
        {
          v28 = 0;
          v31 = 96;
          do
          {
            v27 = *(a6 + 8);
            if (v27 <= v28)
            {
              goto LABEL_89;
            }

            v27 = *(v78[0] + 8) + 96 * v44;
            v45 = *(a6 + 16) + 88 * v28;
            *(v45 + 32) = re::Hash<re::DynamicString>::operator()(&v85, v27);
            *(v45 + 40) = *(v27 + 32);
            v46 = re::DynamicString::operator=(v45, v27);
            v47 = *(v27 + 88);
            *(v45 + 80) = v47;
            v48 = *(v27 + 56);
            if (v47 == 1)
            {
              if (*(v27 + 56))
              {
                v49 = 0;
                v50 = 0;
                while (1)
                {
                  v24 = *(v45 + 56);
                  if (v24 <= v50)
                  {
                    break;
                  }

                  v51 = *(*(v27 + 72) + 8 * v50);
                  v52 = *(v45 + 64);
                  if ((*(v52 + v49) & 1) == 0)
                  {
                    *(v52 + v49) = 1;
                  }

                  *(v52 + v49 + 8) = v51;
                  ++v50;
                  v49 += 16;
                  if (*(v27 + 56) <= v50)
                  {
                    goto LABEL_70;
                  }
                }

                v84 = 0;
                v88 = 0u;
                v89 = 0u;
                v86 = 0u;
                v87 = 0u;
                v85 = 0u;
                v58 = MEMORY[0x1E69E9C10];
                v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v92 = 136315906;
                *&v92[4] = "operator[]";
                *&v92[12] = 1024;
                if (v59)
                {
                  v60 = 3;
                }

                else
                {
                  v60 = 2;
                }

                *&v92[14] = 468;
                *&v92[18] = 2048;
                *&v92[20] = v50;
                v93 = 2048;
                v94 = v24;
                _os_log_send_and_compose_impl(v60, &v84, &v85, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v92, 38, v77, *(&v77 + 1));
                _os_crash_msg();
                __break(1u);
                goto LABEL_77;
              }
            }

            else
            {
              if (!*(v45 + 56))
              {
                goto LABEL_93;
              }

              v53 = *(v45 + 64);
              if (*v53 == 1)
              {
                *v53 = 0;
              }

              if (*(v27 + 56))
              {
                v54 = 0;
                v55 = 0;
                while (1)
                {
                  v50 = v55 + 1;
                  v24 = *(v45 + 56);
                  if (v24 <= v55 + 1)
                  {
                    break;
                  }

                  v56 = *(*(v27 + 72) + 8 * v55);
                  v57 = *(v45 + 64) + v54;
                  if ((*(v57 + 16) & 1) == 0)
                  {
                    *(v57 + 16) = 1;
                  }

                  *(v57 + 24) = v56;
                  v54 += 16;
                  v55 = v50;
                  if (*(v27 + 56) <= v50)
                  {
                    goto LABEL_70;
                  }
                }

LABEL_77:
                v84 = 0;
                v88 = 0u;
                v89 = 0u;
                v86 = 0u;
                v87 = 0u;
                v85 = 0u;
                v61 = MEMORY[0x1E69E9C10];
                v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v92 = 136315906;
                *&v92[4] = "operator[]";
                *&v92[12] = 1024;
                if (v62)
                {
                  v63 = 3;
                }

                else
                {
                  v63 = 2;
                }

                *&v92[14] = 468;
                *&v92[18] = 2048;
                *&v92[20] = v50;
                v93 = 2048;
                v94 = v24;
                _os_log_send_and_compose_impl(v63, &v84, &v85, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v92, 38, v77, *(&v77 + 1));
                _os_crash_msg();
                __break(1u);
LABEL_81:
                v78[0] = 0;
                v88 = 0u;
                v89 = 0u;
                v86 = 0u;
                v87 = 0u;
                v85 = 0u;
                v64 = MEMORY[0x1E69E9C10];
                v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v92 = 136315906;
                *(v24 + 4) = "insert";
                *&v92[12] = 1024;
                if (v65)
                {
                  v66 = 3;
                }

                else
                {
                  v66 = 2;
                }

                *(v24 + 14) = 855;
                *&v92[18] = 2048;
                *(v24 + 20) = 0;
                v93 = 2048;
                *(v24 + 30) = 0;
                _os_log_send_and_compose_impl(v66, v78, &v85, 80, &dword_1E1C61000, v64, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v92, 38, v77, *(&v77 + 1));
                _os_crash_msg();
                __break(1u);
LABEL_85:
                v67 = v34 >> 3;
                v78[0] = 0;
                v88 = 0u;
                v89 = 0u;
                v86 = 0u;
                v87 = 0u;
                v85 = 0u;
                v68 = MEMORY[0x1E69E9C10];
                v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v92 = 136315906;
                *(v24 + 4) = "operator[]";
                *&v92[12] = 1024;
                if (v69)
                {
                  v70 = 3;
                }

                else
                {
                  v70 = 2;
                }

                *(v24 + 14) = 789;
                *&v92[18] = 2048;
                *(v24 + 20) = v67;
                v93 = 2048;
                *(v24 + 30) = v31;
                _os_log_send_and_compose_impl(v70, v78, &v85, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v92, 38, v77, *(&v77 + 1));
                _os_crash_msg();
                __break(1u);
LABEL_89:
                v84 = 0;
                v88 = 0u;
                v89 = 0u;
                v86 = 0u;
                v87 = 0u;
                v85 = 0u;
                v71 = MEMORY[0x1E69E9C10];
                v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v92 = 136315906;
                *&v92[4] = "operator[]";
                *&v92[12] = 1024;
                if (v72)
                {
                  v73 = 3;
                }

                else
                {
                  v73 = 2;
                }

                *&v92[14] = 468;
                *&v92[18] = 2048;
                *&v92[20] = v28;
                v93 = 2048;
                v94 = v27;
                _os_log_send_and_compose_impl(v73, &v84, &v85, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v92, 38, v77, *(&v77 + 1));
                _os_crash_msg();
                __break(1u);
LABEL_93:
                v84 = 0;
                v88 = 0u;
                v89 = 0u;
                v86 = 0u;
                v87 = 0u;
                v85 = 0u;
                v74 = MEMORY[0x1E69E9C10];
                v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v92 = 136315906;
                *&v92[4] = "operator[]";
                *&v92[12] = 1024;
                if (v75)
                {
                  v76 = 3;
                }

                else
                {
                  v76 = 2;
                }

                *&v92[14] = 468;
                *&v92[18] = 2048;
                *&v92[20] = 0;
                v93 = 2048;
                v94 = 0;
                _os_log_send_and_compose_impl(v76, &v84, &v85, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v92, 38, v77, *(&v77 + 1));
                _os_crash_msg();
                __break(1u);
              }
            }

LABEL_70:
            ++v28;
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v78);
            v44 = v79;
          }

          while (v79 != -1);
        }
      }

LABEL_71:
      re::FunctionConstantsEnumerator::calculateDerivedFields(a6);
    }
  }

  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(v80);
}

uint64_t re::FunctionConstantsEnumerator::printDebugData(re::FunctionConstantsEnumerator *this)
{
  puts("    variations:");
  v2 = *(this + 1);
  if (v2)
  {
    v3 = 88 * v2;
    v4 = *(this + 2) + 56;
    do
    {
      if (*(v4 - 48))
      {
        v5 = *(v4 - 40);
      }

      else
      {
        v5 = (v4 - 47);
      }

      printf("      %s %zu", v5, *v4);
      if (*(v4 + 24))
      {
        putchar(10);
      }

      else
      {
        puts(" no default");
      }

      v4 += 88;
      v3 -= 88;
    }

    while (v3);
  }

  return printf("    permutations: %zu\n", *(this + 4));
}

void re::createVertexFetchArgumentBuffer<re::mtl::RenderCommandEncoder>(id *a1@<X0>, re::AttributeTable ***a2@<X2>, uint64_t *a3@<X3>, id *a4@<X4>, void *a5@<X8>, id *a6@<X1>)
{
  v11 = [*a1 newBufferWithLength:360 options:0];
  *a5 = v11;
  v12 = [v11 contents];
  v13 = *a4;
  re::fillArgBufferForSemantic<re::mtl::RenderCommandEncoder>(v12, a2, *a3, a3[1], v13, a6, 0);
  if (v13)
  {
  }

  v14 = *a4;
  re::fillArgBufferForSemantic<re::mtl::RenderCommandEncoder>(v12, a2, *a3, a3[1], v14, a6, 1u);
  if (v14)
  {
  }

  v15 = *a4;
  re::fillArgBufferForSemantic<re::mtl::RenderCommandEncoder>(v12, a2, *a3, a3[1], v15, a6, 2u);
  if (v15)
  {
  }

  v16 = *a4;
  re::fillArgBufferForSemantic<re::mtl::RenderCommandEncoder>(v12, a2, *a3, a3[1], v16, a6, 3u);
  if (v16)
  {
  }

  v17 = *a4;
  re::fillArgBufferForSemantic<re::mtl::RenderCommandEncoder>(v12, a2, *a3, a3[1], v17, a6, 4u);
  if (v17)
  {
  }

  v18 = *a4;
  re::fillArgBufferForSemantic<re::mtl::RenderCommandEncoder>(v12, a2, *a3, a3[1], v18, a6, 5u);
  if (v18)
  {
  }

  v19 = *a4;
  re::fillArgBufferForSemantic<re::mtl::RenderCommandEncoder>(v12, a2, *a3, a3[1], v19, a6, 6u);
  if (v19)
  {
  }

  v20 = *a4;
  re::fillArgBufferForSemantic<re::mtl::RenderCommandEncoder>(v12, a2, *a3, a3[1], v20, a6, 7u);
  if (v20)
  {
  }

  v21 = *a4;
  re::fillArgBufferForSemantic<re::mtl::RenderCommandEncoder>(v12, a2, *a3, a3[1], v21, a6, 8u);
  if (v21)
  {
  }

  v22 = *a4;
  re::fillArgBufferForSemantic<re::mtl::RenderCommandEncoder>(v12, a2, *a3, a3[1], v22, a6, 9u);
  if (v22)
  {
  }

  v23 = *a4;
  re::fillArgBufferForSemantic<re::mtl::RenderCommandEncoder>(v12, a2, *a3, a3[1], v23, a6, 0xAu);
  if (v23)
  {
  }

  v24 = *a4;
  re::fillArgBufferForSemantic<re::mtl::RenderCommandEncoder>(v12, a2, *a3, a3[1], v24, a6, 0xBu);
  if (v24)
  {
  }

  v25 = *a4;
  re::fillArgBufferForSemantic<re::mtl::RenderCommandEncoder>(v12, a2, *a3, a3[1], v25, a6, 0xCu);
  if (v25)
  {
  }

  v26 = *a4;
  re::fillArgBufferForSemantic<re::mtl::RenderCommandEncoder>(v12, a2, *a3, a3[1], v26, a6, 0xDu);
  if (v26)
  {
  }

  v27 = *a4;
  re::fillArgBufferForSemantic<re::mtl::RenderCommandEncoder>(v12, a2, *a3, a3[1], v27, a6, 0xEu);
  if (v27)
  {
  }
}

char *re::fillArgBufferForSemantic<re::mtl::RenderCommandEncoder>(uint64_t a1, re::AttributeTable ***this, uint64_t a3, unint64_t a4, id a5, id *a6, unsigned int a7)
{
  v47 = *MEMORY[0x1E69E9840];
  if (a7 >= a4)
  {
    re::internal::assertLog(6, this, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a7, a4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v31, v33);
    __break(1u);
LABEL_17:
    v37 = 0;
    memset(v46, 0, sizeof(v46));
    v29 = MEMORY[0x1E69E9C10];
    v38 = 136315906;
    v39 = "operator[]";
    v40 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v30 = 3;
    }

    else
    {
      v30 = 2;
    }

    v41 = 476;
    v42 = 2048;
    v43 = v7;
    v44 = 2048;
    v45 = v8;
    _os_log_send_and_compose_impl(v30, &v37, v46, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v38, 38, v35, v36);
    _os_crash_msg();
    __break(1u);
    goto LABEL_21;
  }

  v11 = a5;
  v13 = a3 + 10 * a7;
  v7 = *(v13 + 4);
  v14 = *(v13 + 8);
  v15 = this;
  do
  {
    v16 = v15;
    v15 = *v15;
    v8 = v16[3];
    if (v15)
    {
      v17 = v8 == 0;
    }

    else
    {
      v17 = 0;
    }
  }

  while (v17);
  if (v8 <= v7)
  {
    goto LABEL_17;
  }

  v18 = &v16[4][2 * v7];
  v19 = *v18;
  v20 = *(v18 + 12);
  if (v14)
  {
    [a5 length];
    v21 = 0;
    v22 = 0;
    goto LABEL_12;
  }

  v21 = *(v18 + 2);
  v23 = re::AttributeTable::buffers(this);
  if (v24 <= v7)
  {
LABEL_21:
    re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v7, v24);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v32, v34);
    __break(1u);
  }

  v25 = v23 + 24 * v7;
  v11 = *v25;
  v22 = *(v25 + 4);
LABEL_12:
  [*a6 useResource:v11 usage:1 stages:1];
  result = [v11 gpuAddress];
  v27 = a1 + 24 * a7;
  *v27 = &result[v22];
  if (v14)
  {
    v28 = 0;
  }

  else
  {
    v28 = v19;
  }

  *(v27 + 8) = v21;
  *(v27 + 12) = v28;
  *(v27 + 16) = v20;
  return result;
}

void re::createVertexFetchArgumentBuffer<re::mtl::ComputeCommandEncoder>(id *a1@<X0>, re::AttributeTable ***a2@<X2>, uint64_t *a3@<X3>, id *a4@<X4>, void *a5@<X8>, id *a6@<X1>)
{
  v11 = [*a1 newBufferWithLength:360 options:0];
  *a5 = v11;
  v12 = [v11 contents];
  v13 = *a4;
  re::fillArgBufferForSemantic<re::mtl::ComputeCommandEncoder>(v12, a2, *a3, a3[1], v13, a6, 0);
  if (v13)
  {
  }

  v14 = *a4;
  re::fillArgBufferForSemantic<re::mtl::ComputeCommandEncoder>(v12, a2, *a3, a3[1], v14, a6, 1u);
  if (v14)
  {
  }

  v15 = *a4;
  re::fillArgBufferForSemantic<re::mtl::ComputeCommandEncoder>(v12, a2, *a3, a3[1], v15, a6, 2u);
  if (v15)
  {
  }

  v16 = *a4;
  re::fillArgBufferForSemantic<re::mtl::ComputeCommandEncoder>(v12, a2, *a3, a3[1], v16, a6, 3u);
  if (v16)
  {
  }

  v17 = *a4;
  re::fillArgBufferForSemantic<re::mtl::ComputeCommandEncoder>(v12, a2, *a3, a3[1], v17, a6, 4u);
  if (v17)
  {
  }

  v18 = *a4;
  re::fillArgBufferForSemantic<re::mtl::ComputeCommandEncoder>(v12, a2, *a3, a3[1], v18, a6, 5u);
  if (v18)
  {
  }

  v19 = *a4;
  re::fillArgBufferForSemantic<re::mtl::ComputeCommandEncoder>(v12, a2, *a3, a3[1], v19, a6, 6u);
  if (v19)
  {
  }

  v20 = *a4;
  re::fillArgBufferForSemantic<re::mtl::ComputeCommandEncoder>(v12, a2, *a3, a3[1], v20, a6, 7u);
  if (v20)
  {
  }

  v21 = *a4;
  re::fillArgBufferForSemantic<re::mtl::ComputeCommandEncoder>(v12, a2, *a3, a3[1], v21, a6, 8u);
  if (v21)
  {
  }

  v22 = *a4;
  re::fillArgBufferForSemantic<re::mtl::ComputeCommandEncoder>(v12, a2, *a3, a3[1], v22, a6, 9u);
  if (v22)
  {
  }

  v23 = *a4;
  re::fillArgBufferForSemantic<re::mtl::ComputeCommandEncoder>(v12, a2, *a3, a3[1], v23, a6, 0xAu);
  if (v23)
  {
  }

  v24 = *a4;
  re::fillArgBufferForSemantic<re::mtl::ComputeCommandEncoder>(v12, a2, *a3, a3[1], v24, a6, 0xBu);
  if (v24)
  {
  }

  v25 = *a4;
  re::fillArgBufferForSemantic<re::mtl::ComputeCommandEncoder>(v12, a2, *a3, a3[1], v25, a6, 0xCu);
  if (v25)
  {
  }

  v26 = *a4;
  re::fillArgBufferForSemantic<re::mtl::ComputeCommandEncoder>(v12, a2, *a3, a3[1], v26, a6, 0xDu);
  if (v26)
  {
  }

  v27 = *a4;
  re::fillArgBufferForSemantic<re::mtl::ComputeCommandEncoder>(v12, a2, *a3, a3[1], v27, a6, 0xEu);
  if (v27)
  {
  }
}

char *re::fillArgBufferForSemantic<re::mtl::ComputeCommandEncoder>(uint64_t a1, re::AttributeTable ***this, uint64_t a3, unint64_t a4, id a5, id *a6, unsigned int a7)
{
  v47 = *MEMORY[0x1E69E9840];
  if (a7 >= a4)
  {
    re::internal::assertLog(6, this, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a7, a4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v31, v33);
    __break(1u);
LABEL_17:
    v37 = 0;
    memset(v46, 0, sizeof(v46));
    v29 = MEMORY[0x1E69E9C10];
    v38 = 136315906;
    v39 = "operator[]";
    v40 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v30 = 3;
    }

    else
    {
      v30 = 2;
    }

    v41 = 476;
    v42 = 2048;
    v43 = v7;
    v44 = 2048;
    v45 = v8;
    _os_log_send_and_compose_impl(v30, &v37, v46, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v38, 38, v35, v36);
    _os_crash_msg();
    __break(1u);
    goto LABEL_21;
  }

  v11 = a5;
  v13 = a3 + 10 * a7;
  v7 = *(v13 + 4);
  v14 = *(v13 + 8);
  v15 = this;
  do
  {
    v16 = v15;
    v15 = *v15;
    v8 = v16[3];
    if (v15)
    {
      v17 = v8 == 0;
    }

    else
    {
      v17 = 0;
    }
  }

  while (v17);
  if (v8 <= v7)
  {
    goto LABEL_17;
  }

  v18 = &v16[4][2 * v7];
  v19 = *v18;
  v20 = *(v18 + 12);
  if (v14)
  {
    [a5 length];
    v21 = 0;
    v22 = 0;
    goto LABEL_12;
  }

  v21 = *(v18 + 2);
  v23 = re::AttributeTable::buffers(this);
  if (v24 <= v7)
  {
LABEL_21:
    re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v7, v24);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v32, v34);
    __break(1u);
  }

  v25 = v23 + 24 * v7;
  v11 = *v25;
  v22 = *(v25 + 4);
LABEL_12:
  [*a6 useResource:v11 usage:1];
  result = [v11 gpuAddress];
  v27 = a1 + 24 * a7;
  *v27 = &result[v22];
  if (v14)
  {
    v28 = 0;
  }

  else
  {
    v28 = v19;
  }

  *(v27 + 8) = v21;
  *(v27 + 12) = v28;
  *(v27 + 16) = v20;
  return result;
}

uint64_t re::createComputeVertexFetchPipeline(re *this, re::RenderManager *a2, re::ShaderManager *a3)
{
  v4 = *(*(this + 4) + 136);
  v5 = [objc_msgSend(MEMORY[0x1E6974100] alloc)];
  v10 = 0;
  v13 = 0;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 1;
  v21 = v5;
  v22 = 257;
  ComputePipelineState = re::getOrCreateComputePipelineState(this, &v8);
  if (v21)
  {

    v21 = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v16);
  if (v13 == 1 && v14)
  {
    if (BYTE8(v14))
    {
      (*(*v14 + 40))();
    }

    v14 = 0u;
    v15 = 0u;
  }

  if (v10 == 1 && v11)
  {
    if (BYTE8(v11))
    {
      (*(*v11 + 40))();
    }

    v12 = 0u;
    v11 = 0u;
  }

  if (v8 && (v9 & 1) != 0)
  {
    (*(*v8 + 40))();
  }

  if (v5)
  {
  }

  if (v4)
  {
  }

  return ComputePipelineState;
}

void re::createVertexFetchReflection(re *this@<X0>, void *a2@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = 0;
  v5 = 16;
  do
  {
    v6 = re::StandardMaterialVertexInNames[v4];
    *&v12.var0 = 0;
    v12.var1 = &str_67;
    LOWORD(v6) = re::StandardMaterialVertexInDataTypes[v4];
    re::StringID::StringID(&v13, &v12);
    LOWORD(v15) = v4;
    HIWORD(v15) = v6;
    v7 = a2[1];
    if (v7 <= v4)
    {
      v16 = 0;
      memset(v25, 0, sizeof(v25));
      v9 = MEMORY[0x1E69E9C10];
      v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v17 = 136315906;
      v18 = "operator[]";
      v19 = 1024;
      if (v10)
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

      v20 = 468;
      v21 = 2048;
      v22 = v4;
      v23 = 2048;
      v24 = v7;
      _os_log_send_and_compose_impl(v11, &v16, v25, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, *&v12.var0, v12.var1);
      _os_crash_msg();
      __break(1u);
    }

    v8 = (a2[2] + v5);
    v3 = re::StringID::operator=((v8 - 4), &v13);
    *v8 = v15;
    if (v13)
    {
      if (v13)
      {
      }
    }

    v13 = 0;
    v14 = &str_67;
    if (*&v12.var0)
    {
      if (*&v12.var0)
      {
      }
    }

    ++v4;
    v5 += 24;
  }

  while (v4 != 15);
}

void re::compileFetchTypeFunction(re *this, id *a2, const char *a3)
{
  v6 = a2[45];
  v8 = v6;
  re::ShaderManager::makeFunctionDescriptor(&v7, a2);
  [v7 setName_];
  re::mtl::Library::makeFunctionWithDescriptor(&v8, v7, this);
  if (v7)
  {
  }
}

void re::getVertexFetchFunctionNames(uint64_t *__return_ptr a1@<X8>, re *this@<X0>)
{
  v247 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = "re::vertexfetch::fetchFromInvalid";
  v6 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromInvalid", 0, 0, 33);
  if (!a1[1])
  {
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v71 = MEMORY[0x1E69E9C10];
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v72 = 3;
    }

    else
    {
      v72 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 0;
    v240 = 2048;
    v241 = 0;
    _os_log_send_and_compose_impl(v72, &v233, &v242, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_60;
  }

  v2 = v6;
  v7 = a1[2];
  re::StringID::destroyString(v7);
  *v7 = 2 * v2;
  *(v7 + 1) = "re::vertexfetch::fetchFromInvalid";
  v5 = "re::vertexfetch::fetchFromUChar2";
  v8 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromUChar2", 0, 0, 32);
  v3 = a1[1];
  if (v3 <= 1)
  {
LABEL_60:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v73 = MEMORY[0x1E69E9C10];
    v74 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v74)
    {
      v75 = 3;
    }

    else
    {
      v75 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 1;
    v240 = 2048;
    v241 = v3;
    _os_log_send_and_compose_impl(v75, &v233, &v242, 80, &dword_1E1C61000, v73, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_64;
  }

  v2 = v8;
  v9 = a1[2];
  re::StringID::destroyString((v9 + 16));
  *(v9 + 16) = 2 * v2;
  *(v9 + 24) = "re::vertexfetch::fetchFromUChar2";
  v5 = "re::vertexfetch::fetchFromUChar3";
  v10 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromUChar3", 0, 0, 32);
  v3 = a1[1];
  if (v3 <= 2)
  {
LABEL_64:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v76 = MEMORY[0x1E69E9C10];
    v77 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v77)
    {
      v78 = 3;
    }

    else
    {
      v78 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 2;
    v240 = 2048;
    v241 = v3;
    _os_log_send_and_compose_impl(v78, &v233, &v242, 80, &dword_1E1C61000, v76, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_68;
  }

  v2 = v10;
  v11 = a1[2];
  re::StringID::destroyString((v11 + 32));
  *(v11 + 32) = 2 * v2;
  *(v11 + 40) = "re::vertexfetch::fetchFromUChar3";
  v5 = "re::vertexfetch::fetchFromUChar4";
  v12 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromUChar4", 0, 0, 32);
  v3 = a1[1];
  if (v3 <= 3)
  {
LABEL_68:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v79 = MEMORY[0x1E69E9C10];
    v80 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v80)
    {
      v81 = 3;
    }

    else
    {
      v81 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 3;
    v240 = 2048;
    v241 = v3;
    _os_log_send_and_compose_impl(v81, &v233, &v242, 80, &dword_1E1C61000, v79, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_72;
  }

  v2 = v12;
  v13 = a1[2];
  re::StringID::destroyString((v13 + 48));
  *(v13 + 48) = 2 * v2;
  *(v13 + 56) = "re::vertexfetch::fetchFromUChar4";
  v5 = "re::vertexfetch::fetchFromChar2";
  v14 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromChar2", 0, 0, 31);
  v3 = a1[1];
  if (v3 <= 4)
  {
LABEL_72:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v82 = MEMORY[0x1E69E9C10];
    v83 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v83)
    {
      v84 = 3;
    }

    else
    {
      v84 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 4;
    v240 = 2048;
    v241 = v3;
    _os_log_send_and_compose_impl(v84, &v233, &v242, 80, &dword_1E1C61000, v82, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_76;
  }

  v2 = v14;
  v15 = a1[2];
  re::StringID::destroyString((v15 + 64));
  *(v15 + 64) = 2 * v2;
  *(v15 + 72) = "re::vertexfetch::fetchFromChar2";
  v5 = "re::vertexfetch::fetchFromChar3";
  v16 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromChar3", 0, 0, 31);
  v3 = a1[1];
  if (v3 <= 5)
  {
LABEL_76:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v85 = MEMORY[0x1E69E9C10];
    v86 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v86)
    {
      v87 = 3;
    }

    else
    {
      v87 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 5;
    v240 = 2048;
    v241 = v3;
    _os_log_send_and_compose_impl(v87, &v233, &v242, 80, &dword_1E1C61000, v85, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_80;
  }

  v2 = v16;
  v17 = a1[2];
  re::StringID::destroyString((v17 + 80));
  *(v17 + 80) = 2 * v2;
  *(v17 + 88) = "re::vertexfetch::fetchFromChar3";
  v5 = "re::vertexfetch::fetchFromChar4";
  v18 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromChar4", 0, 0, 31);
  v3 = a1[1];
  if (v3 <= 6)
  {
LABEL_80:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v88 = MEMORY[0x1E69E9C10];
    v89 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v89)
    {
      v90 = 3;
    }

    else
    {
      v90 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 6;
    v240 = 2048;
    v241 = v3;
    _os_log_send_and_compose_impl(v90, &v233, &v242, 80, &dword_1E1C61000, v88, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_84;
  }

  v2 = v18;
  v3 = a1[2];
  re::StringID::destroyString((v3 + 12));
  v3[12] = 2 * v2;
  v3[13] = "re::vertexfetch::fetchFromChar4";
  v5 = a1[1];
  if (v5 <= 7)
  {
LABEL_84:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v91 = MEMORY[0x1E69E9C10];
    v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v92)
    {
      v93 = 3;
    }

    else
    {
      v93 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 7;
    v240 = 2048;
    v241 = v5;
    _os_log_send_and_compose_impl(v93, &v233, &v242, 80, &dword_1E1C61000, v91, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_88;
  }

  v2 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromUChar2Norm", 0, 0, 36);
  v3 = a1[2];
  re::StringID::destroyString((v3 + 14));
  v3[14] = 2 * v2;
  v3[15] = "re::vertexfetch::fetchFromUChar2Norm";
  v5 = a1[1];
  if (v5 <= 8)
  {
LABEL_88:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v94 = MEMORY[0x1E69E9C10];
    v95 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v95)
    {
      v96 = 3;
    }

    else
    {
      v96 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 8;
    v240 = 2048;
    v241 = v5;
    _os_log_send_and_compose_impl(v96, &v233, &v242, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_92;
  }

  v2 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromUChar3Norm", 0, 0, 36);
  v3 = a1[2];
  re::StringID::destroyString((v3 + 16));
  v3[16] = 2 * v2;
  v3[17] = "re::vertexfetch::fetchFromUChar3Norm";
  v5 = a1[1];
  if (v5 <= 9)
  {
LABEL_92:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v97 = MEMORY[0x1E69E9C10];
    v98 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v98)
    {
      v99 = 3;
    }

    else
    {
      v99 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 9;
    v240 = 2048;
    v241 = v5;
    _os_log_send_and_compose_impl(v99, &v233, &v242, 80, &dword_1E1C61000, v97, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_96;
  }

  v2 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromUChar4Norm", 0, 0, 36);
  v3 = a1[2];
  re::StringID::destroyString((v3 + 18));
  v3[18] = 2 * v2;
  v3[19] = "re::vertexfetch::fetchFromUChar4Norm";
  v5 = a1[1];
  if (v5 <= 0xA)
  {
LABEL_96:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v100 = MEMORY[0x1E69E9C10];
    v101 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v101)
    {
      v102 = 3;
    }

    else
    {
      v102 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 10;
    v240 = 2048;
    v241 = v5;
    _os_log_send_and_compose_impl(v102, &v233, &v242, 80, &dword_1E1C61000, v100, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_100;
  }

  v2 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromChar2Norm", 0, 0, 35);
  v3 = a1[2];
  re::StringID::destroyString((v3 + 20));
  v3[20] = 2 * v2;
  v3[21] = "re::vertexfetch::fetchFromChar2Norm";
  v5 = a1[1];
  if (v5 <= 0xB)
  {
LABEL_100:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v103 = MEMORY[0x1E69E9C10];
    v104 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v104)
    {
      v105 = 3;
    }

    else
    {
      v105 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 11;
    v240 = 2048;
    v241 = v5;
    _os_log_send_and_compose_impl(v105, &v233, &v242, 80, &dword_1E1C61000, v103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_104;
  }

  v2 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromChar3Norm", 0, 0, 35);
  v3 = a1[2];
  re::StringID::destroyString((v3 + 22));
  v3[22] = 2 * v2;
  v3[23] = "re::vertexfetch::fetchFromChar3Norm";
  v5 = a1[1];
  if (v5 <= 0xC)
  {
LABEL_104:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v106 = MEMORY[0x1E69E9C10];
    v107 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v107)
    {
      v108 = 3;
    }

    else
    {
      v108 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 12;
    v240 = 2048;
    v241 = v5;
    _os_log_send_and_compose_impl(v108, &v233, &v242, 80, &dword_1E1C61000, v106, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_108;
  }

  v2 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromChar4Norm", 0, 0, 35);
  v19 = a1[2];
  re::StringID::destroyString((v19 + 192));
  *(v19 + 192) = 2 * v2;
  *(v19 + 200) = "re::vertexfetch::fetchFromChar4Norm";
  v20 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromUShort2", 0, 0, 33);
  v3 = a1[1];
  if (v3 <= 0xD)
  {
LABEL_108:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v109 = MEMORY[0x1E69E9C10];
    v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v110)
    {
      v111 = 3;
    }

    else
    {
      v111 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 13;
    v240 = 2048;
    v241 = v3;
    _os_log_send_and_compose_impl(v111, &v233, &v242, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_112;
  }

  v2 = v20;
  v21 = a1[2];
  re::StringID::destroyString((v21 + 208));
  *(v21 + 208) = 2 * v2;
  *(v21 + 216) = "re::vertexfetch::fetchFromUShort2";
  v22 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromUShort3", 0, 0, 33);
  v3 = a1[1];
  if (v3 <= 0xE)
  {
LABEL_112:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v112 = MEMORY[0x1E69E9C10];
    v113 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v113)
    {
      v114 = 3;
    }

    else
    {
      v114 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 14;
    v240 = 2048;
    v241 = v3;
    _os_log_send_and_compose_impl(v114, &v233, &v242, 80, &dword_1E1C61000, v112, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_116;
  }

  v2 = v22;
  v23 = a1[2];
  re::StringID::destroyString((v23 + 224));
  *(v23 + 224) = 2 * v2;
  *(v23 + 232) = "re::vertexfetch::fetchFromUShort3";
  v24 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromUShort4", 0, 0, 33);
  v3 = a1[1];
  if (v3 <= 0xF)
  {
LABEL_116:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v115 = MEMORY[0x1E69E9C10];
    v116 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v116)
    {
      v117 = 3;
    }

    else
    {
      v117 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 15;
    v240 = 2048;
    v241 = v3;
    _os_log_send_and_compose_impl(v117, &v233, &v242, 80, &dword_1E1C61000, v115, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_120;
  }

  v2 = v24;
  v25 = a1[2];
  re::StringID::destroyString((v25 + 240));
  *(v25 + 240) = 2 * v2;
  *(v25 + 248) = "re::vertexfetch::fetchFromUShort4";
  v26 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromShort2", 0, 0, 32);
  v3 = a1[1];
  if (v3 <= 0x10)
  {
LABEL_120:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v118 = MEMORY[0x1E69E9C10];
    v28 = 16;
    v119 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v119)
    {
      v120 = 3;
    }

    else
    {
      v120 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 16;
    v240 = 2048;
    v241 = v3;
    _os_log_send_and_compose_impl(v120, &v233, &v242, 80, &dword_1E1C61000, v118, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_124;
  }

  v2 = v26;
  v27 = a1[2];
  re::StringID::destroyString((v27 + 256));
  *(v27 + 256) = 2 * v2;
  *(v27 + 264) = "re::vertexfetch::fetchFromShort2";
  v28 = "re::vertexfetch::fetchFromShort3";
  v29 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromShort3", 0, 0, 32);
  v3 = a1[1];
  if (v3 <= 0x11)
  {
LABEL_124:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v121 = MEMORY[0x1E69E9C10];
    v122 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v122)
    {
      v123 = 3;
    }

    else
    {
      v123 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 17;
    v240 = 2048;
    v241 = v3;
    _os_log_send_and_compose_impl(v123, &v233, &v242, 80, &dword_1E1C61000, v121, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_128;
  }

  v2 = v29;
  v30 = a1[2];
  re::StringID::destroyString((v30 + 272));
  *(v30 + 272) = 2 * v2;
  *(v30 + 280) = "re::vertexfetch::fetchFromShort3";
  v28 = "re::vertexfetch::fetchFromShort4";
  v31 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromShort4", 0, 0, 32);
  v3 = a1[1];
  if (v3 <= 0x12)
  {
LABEL_128:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v124 = MEMORY[0x1E69E9C10];
    v125 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v125)
    {
      v126 = 3;
    }

    else
    {
      v126 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 18;
    v240 = 2048;
    v241 = v3;
    _os_log_send_and_compose_impl(v126, &v233, &v242, 80, &dword_1E1C61000, v124, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_132;
  }

  v2 = v31;
  v3 = a1[2];
  re::StringID::destroyString((v3 + 36));
  v3[36] = 2 * v2;
  v3[37] = "re::vertexfetch::fetchFromShort4";
  v28 = a1[1];
  if (v28 <= 0x13)
  {
LABEL_132:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v127 = MEMORY[0x1E69E9C10];
    v128 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v128)
    {
      v129 = 3;
    }

    else
    {
      v129 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 19;
    v240 = 2048;
    v241 = v28;
    _os_log_send_and_compose_impl(v129, &v233, &v242, 80, &dword_1E1C61000, v127, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_136;
  }

  v2 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromUShort2Norm", 0, 0, 37);
  v3 = a1[2];
  re::StringID::destroyString((v3 + 38));
  v3[38] = 2 * v2;
  v3[39] = "re::vertexfetch::fetchFromUShort2Norm";
  v28 = a1[1];
  if (v28 <= 0x14)
  {
LABEL_136:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v130 = MEMORY[0x1E69E9C10];
    v131 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v131)
    {
      v132 = 3;
    }

    else
    {
      v132 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 20;
    v240 = 2048;
    v241 = v28;
    _os_log_send_and_compose_impl(v132, &v233, &v242, 80, &dword_1E1C61000, v130, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_140;
  }

  v2 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromUShort3Norm", 0, 0, 37);
  v3 = a1[2];
  re::StringID::destroyString((v3 + 40));
  v3[40] = 2 * v2;
  v3[41] = "re::vertexfetch::fetchFromUShort3Norm";
  v28 = a1[1];
  if (v28 <= 0x15)
  {
LABEL_140:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v133 = MEMORY[0x1E69E9C10];
    v134 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v134)
    {
      v135 = 3;
    }

    else
    {
      v135 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 21;
    v240 = 2048;
    v241 = v28;
    _os_log_send_and_compose_impl(v135, &v233, &v242, 80, &dword_1E1C61000, v133, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_144;
  }

  v2 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromUShort4Norm", 0, 0, 37);
  v3 = a1[2];
  re::StringID::destroyString((v3 + 42));
  v3[42] = 2 * v2;
  v3[43] = "re::vertexfetch::fetchFromUShort4Norm";
  v28 = a1[1];
  if (v28 <= 0x16)
  {
LABEL_144:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v136 = MEMORY[0x1E69E9C10];
    v137 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v137)
    {
      v138 = 3;
    }

    else
    {
      v138 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 22;
    v240 = 2048;
    v241 = v28;
    _os_log_send_and_compose_impl(v138, &v233, &v242, 80, &dword_1E1C61000, v136, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_148;
  }

  v2 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromShort2Norm", 0, 0, 36);
  v3 = a1[2];
  re::StringID::destroyString((v3 + 44));
  v3[44] = 2 * v2;
  v3[45] = "re::vertexfetch::fetchFromShort2Norm";
  v28 = a1[1];
  if (v28 <= 0x17)
  {
LABEL_148:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v139 = MEMORY[0x1E69E9C10];
    v140 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v140)
    {
      v141 = 3;
    }

    else
    {
      v141 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 23;
    v240 = 2048;
    v241 = v28;
    _os_log_send_and_compose_impl(v141, &v233, &v242, 80, &dword_1E1C61000, v139, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_152;
  }

  v2 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromShort3Norm", 0, 0, 36);
  v3 = a1[2];
  re::StringID::destroyString((v3 + 46));
  v3[46] = 2 * v2;
  v3[47] = "re::vertexfetch::fetchFromShort3Norm";
  v28 = a1[1];
  if (v28 <= 0x18)
  {
LABEL_152:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v142 = MEMORY[0x1E69E9C10];
    v143 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v143)
    {
      v144 = 3;
    }

    else
    {
      v144 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 24;
    v240 = 2048;
    v241 = v28;
    _os_log_send_and_compose_impl(v144, &v233, &v242, 80, &dword_1E1C61000, v142, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_156;
  }

  v2 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromShort4Norm", 0, 0, 36);
  v32 = a1[2];
  re::StringID::destroyString((v32 + 384));
  *(v32 + 384) = 2 * v2;
  *(v32 + 392) = "re::vertexfetch::fetchFromShort4Norm";
  v28 = "re::vertexfetch::fetchFromHalf2";
  v33 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromHalf2", 0, 0, 31);
  v3 = a1[1];
  if (v3 <= 0x19)
  {
LABEL_156:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v145 = MEMORY[0x1E69E9C10];
    v146 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v146)
    {
      v147 = 3;
    }

    else
    {
      v147 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 25;
    v240 = 2048;
    v241 = v3;
    _os_log_send_and_compose_impl(v147, &v233, &v242, 80, &dword_1E1C61000, v145, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_160;
  }

  v2 = v33;
  v34 = a1[2];
  re::StringID::destroyString((v34 + 400));
  *(v34 + 400) = 2 * v2;
  *(v34 + 408) = "re::vertexfetch::fetchFromHalf2";
  v28 = "re::vertexfetch::fetchFromHalf3";
  v35 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromHalf3", 0, 0, 31);
  v3 = a1[1];
  if (v3 <= 0x1A)
  {
LABEL_160:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v148 = MEMORY[0x1E69E9C10];
    v149 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v149)
    {
      v150 = 3;
    }

    else
    {
      v150 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 26;
    v240 = 2048;
    v241 = v3;
    _os_log_send_and_compose_impl(v150, &v233, &v242, 80, &dword_1E1C61000, v148, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_164;
  }

  v2 = v35;
  v36 = a1[2];
  re::StringID::destroyString((v36 + 416));
  *(v36 + 416) = 2 * v2;
  *(v36 + 424) = "re::vertexfetch::fetchFromHalf3";
  v28 = "re::vertexfetch::fetchFromHalf4";
  v37 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromHalf4", 0, 0, 31);
  v3 = a1[1];
  if (v3 <= 0x1B)
  {
LABEL_164:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v151 = MEMORY[0x1E69E9C10];
    v152 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v152)
    {
      v153 = 3;
    }

    else
    {
      v153 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 27;
    v240 = 2048;
    v241 = v3;
    _os_log_send_and_compose_impl(v153, &v233, &v242, 80, &dword_1E1C61000, v151, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_168;
  }

  v2 = v37;
  v38 = a1[2];
  re::StringID::destroyString((v38 + 432));
  *(v38 + 432) = 2 * v2;
  *(v38 + 440) = "re::vertexfetch::fetchFromHalf4";
  v28 = "re::vertexfetch::fetchFromFloat";
  v39 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromFloat", 0, 0, 31);
  v3 = a1[1];
  if (v3 <= 0x1C)
  {
LABEL_168:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v154 = MEMORY[0x1E69E9C10];
    v155 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v155)
    {
      v156 = 3;
    }

    else
    {
      v156 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 28;
    v240 = 2048;
    v241 = v3;
    _os_log_send_and_compose_impl(v156, &v233, &v242, 80, &dword_1E1C61000, v154, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_172;
  }

  v2 = v39;
  v40 = a1[2];
  re::StringID::destroyString((v40 + 448));
  *(v40 + 448) = 2 * v2;
  *(v40 + 456) = "re::vertexfetch::fetchFromFloat";
  v28 = "re::vertexfetch::fetchFromFloat2";
  v41 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromFloat2", 0, 0, 32);
  v3 = a1[1];
  if (v3 <= 0x1D)
  {
LABEL_172:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v157 = MEMORY[0x1E69E9C10];
    v158 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v158)
    {
      v159 = 3;
    }

    else
    {
      v159 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 29;
    v240 = 2048;
    v241 = v3;
    _os_log_send_and_compose_impl(v159, &v233, &v242, 80, &dword_1E1C61000, v157, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_176;
  }

  v2 = v41;
  v42 = a1[2];
  re::StringID::destroyString((v42 + 464));
  *(v42 + 464) = 2 * v2;
  *(v42 + 472) = "re::vertexfetch::fetchFromFloat2";
  v28 = "re::vertexfetch::fetchFromFloat3";
  v43 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromFloat3", 0, 0, 32);
  v3 = a1[1];
  if (v3 <= 0x1E)
  {
LABEL_176:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v160 = MEMORY[0x1E69E9C10];
    v161 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v161)
    {
      v162 = 3;
    }

    else
    {
      v162 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 30;
    v240 = 2048;
    v241 = v3;
    _os_log_send_and_compose_impl(v162, &v233, &v242, 80, &dword_1E1C61000, v160, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_180;
  }

  v2 = v43;
  v44 = a1[2];
  re::StringID::destroyString((v44 + 480));
  *(v44 + 480) = 2 * v2;
  *(v44 + 488) = "re::vertexfetch::fetchFromFloat3";
  v28 = "re::vertexfetch::fetchFromFloat4";
  v45 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromFloat4", 0, 0, 32);
  v3 = a1[1];
  if (v3 <= 0x1F)
  {
LABEL_180:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v163 = MEMORY[0x1E69E9C10];
    v164 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v164)
    {
      v165 = 3;
    }

    else
    {
      v165 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 31;
    v240 = 2048;
    v241 = v3;
    _os_log_send_and_compose_impl(v165, &v233, &v242, 80, &dword_1E1C61000, v163, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_184;
  }

  v2 = v45;
  v46 = a1[2];
  re::StringID::destroyString((v46 + 496));
  *(v46 + 496) = 2 * v2;
  *(v46 + 504) = "re::vertexfetch::fetchFromFloat4";
  v28 = "re::vertexfetch::fetchFromInt";
  v47 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromInt", 0, 0, 29);
  v3 = a1[1];
  if (v3 <= 0x20)
  {
LABEL_184:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v166 = MEMORY[0x1E69E9C10];
    v167 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v167)
    {
      v168 = 3;
    }

    else
    {
      v168 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 32;
    v240 = 2048;
    v241 = v3;
    _os_log_send_and_compose_impl(v168, &v233, &v242, 80, &dword_1E1C61000, v166, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_188;
  }

  v2 = v47;
  v3 = a1[2];
  re::StringID::destroyString((v3 + 64));
  v3[65] = "re::vertexfetch::fetchFromInt";
  v3[64] = 2 * v2;
  v28 = a1[1];
  if (v28 <= 0x21)
  {
LABEL_188:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v169 = MEMORY[0x1E69E9C10];
    v170 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v170)
    {
      v171 = 3;
    }

    else
    {
      v171 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 33;
    v240 = 2048;
    v241 = v28;
    _os_log_send_and_compose_impl(v171, &v233, &v242, 80, &dword_1E1C61000, v169, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_192;
  }

  v2 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromInt2", 0, 0, 30);
  v3 = a1[2];
  re::StringID::destroyString((v3 + 66));
  v3[67] = "re::vertexfetch::fetchFromInt2";
  v3[66] = 2 * v2;
  v28 = a1[1];
  if (v28 <= 0x22)
  {
LABEL_192:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v172 = MEMORY[0x1E69E9C10];
    v173 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v173)
    {
      v174 = 3;
    }

    else
    {
      v174 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 34;
    v240 = 2048;
    v241 = v28;
    _os_log_send_and_compose_impl(v174, &v233, &v242, 80, &dword_1E1C61000, v172, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_196;
  }

  v2 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromInt3", 0, 0, 30);
  v3 = a1[2];
  re::StringID::destroyString((v3 + 68));
  v3[69] = "re::vertexfetch::fetchFromInt3";
  v3[68] = 2 * v2;
  v28 = a1[1];
  if (v28 <= 0x23)
  {
LABEL_196:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v175 = MEMORY[0x1E69E9C10];
    v176 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v176)
    {
      v177 = 3;
    }

    else
    {
      v177 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 35;
    v240 = 2048;
    v241 = v28;
    _os_log_send_and_compose_impl(v177, &v233, &v242, 80, &dword_1E1C61000, v175, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_200;
  }

  v2 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromInt4", 0, 0, 30);
  v3 = a1[2];
  re::StringID::destroyString((v3 + 70));
  v3[71] = "re::vertexfetch::fetchFromInt4";
  v3[70] = 2 * v2;
  v28 = a1[1];
  if (v28 <= 0x24)
  {
LABEL_200:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v178 = MEMORY[0x1E69E9C10];
    v179 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v179)
    {
      v180 = 3;
    }

    else
    {
      v180 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 36;
    v240 = 2048;
    v241 = v28;
    _os_log_send_and_compose_impl(v180, &v233, &v242, 80, &dword_1E1C61000, v178, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_204;
  }

  v2 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromUInt", 0, 0, 30);
  v48 = a1[2];
  re::StringID::destroyString((v48 + 576));
  *(v48 + 584) = "re::vertexfetch::fetchFromUInt";
  *(v48 + 576) = 2 * v2;
  v28 = "re::vertexfetch::fetchFromUInt2";
  v49 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromUInt2", 0, 0, 31);
  v3 = a1[1];
  if (v3 <= 0x25)
  {
LABEL_204:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v181 = MEMORY[0x1E69E9C10];
    v182 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v182)
    {
      v183 = 3;
    }

    else
    {
      v183 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 37;
    v240 = 2048;
    v241 = v3;
    _os_log_send_and_compose_impl(v183, &v233, &v242, 80, &dword_1E1C61000, v181, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_208;
  }

  v2 = v49;
  v50 = a1[2];
  re::StringID::destroyString((v50 + 592));
  *(v50 + 600) = "re::vertexfetch::fetchFromUInt2";
  *(v50 + 592) = 2 * v2;
  v28 = "re::vertexfetch::fetchFromUInt3";
  v51 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromUInt3", 0, 0, 31);
  v3 = a1[1];
  if (v3 <= 0x26)
  {
LABEL_208:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v184 = MEMORY[0x1E69E9C10];
    v185 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v185)
    {
      v186 = 3;
    }

    else
    {
      v186 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 38;
    v240 = 2048;
    v241 = v3;
    _os_log_send_and_compose_impl(v186, &v233, &v242, 80, &dword_1E1C61000, v184, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_212;
  }

  v2 = v51;
  v52 = a1[2];
  re::StringID::destroyString((v52 + 608));
  *(v52 + 616) = "re::vertexfetch::fetchFromUInt3";
  *(v52 + 608) = 2 * v2;
  v28 = "re::vertexfetch::fetchFromUInt4";
  v53 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromUInt4", 0, 0, 31);
  v3 = a1[1];
  if (v3 <= 0x27)
  {
LABEL_212:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v187 = MEMORY[0x1E69E9C10];
    v188 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v188)
    {
      v189 = 3;
    }

    else
    {
      v189 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 39;
    v240 = 2048;
    v241 = v3;
    _os_log_send_and_compose_impl(v189, &v233, &v242, 80, &dword_1E1C61000, v187, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_216;
  }

  v2 = v53;
  v3 = a1[2];
  re::StringID::destroyString((v3 + 78));
  v3[79] = "re::vertexfetch::fetchFromUInt4";
  v3[78] = 2 * v2;
  v28 = a1[1];
  if (v28 <= 0x28)
  {
LABEL_216:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v190 = MEMORY[0x1E69E9C10];
    v191 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v191)
    {
      v192 = 3;
    }

    else
    {
      v192 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 40;
    v240 = 2048;
    v241 = v28;
    _os_log_send_and_compose_impl(v192, &v233, &v242, 80, &dword_1E1C61000, v190, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_220;
  }

  v54 = re::internal::compileTimeHornerHash<41ul>(0, 0, 40);
  v2 = a1[2];
  re::StringID::destroyString((v2 + 640));
  *(v2 + 648) = "re::vertexfetch::fetchFromInt1010102Norm";
  *(v2 + 640) = 2 * v54;
  v28 = a1[1];
  if (v28 <= 0x29)
  {
LABEL_220:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v193 = MEMORY[0x1E69E9C10];
    v194 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v194)
    {
      v195 = 3;
    }

    else
    {
      v195 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 41;
    v240 = 2048;
    v241 = v28;
    _os_log_send_and_compose_impl(v195, &v233, &v242, 80, &dword_1E1C61000, v193, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_224;
  }

  v2 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromUInt1010102Norm", 0, 0, 41);
  v3 = a1[2];
  re::StringID::destroyString((v3 + 82));
  v3[83] = "re::vertexfetch::fetchFromUInt1010102Norm";
  v3[82] = 2 * v2;
  v28 = a1[1];
  if (v28 <= 0x2A)
  {
LABEL_224:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v196 = MEMORY[0x1E69E9C10];
    v197 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v197)
    {
      v198 = 3;
    }

    else
    {
      v198 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 42;
    v240 = 2048;
    v241 = v28;
    _os_log_send_and_compose_impl(v198, &v233, &v242, 80, &dword_1E1C61000, v196, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_228;
  }

  v2 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromUChar4Norm_BGRA", 0, 0, 41);
  v55 = a1[2];
  re::StringID::destroyString((v55 + 672));
  *(v55 + 680) = "re::vertexfetch::fetchFromUChar4Norm_BGRA";
  *(v55 + 672) = 2 * v2;
  v28 = "re::vertexfetch::fetchFromUChar";
  v56 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromUChar", 0, 0, 31);
  v3 = a1[1];
  if (v3 <= 0x2D)
  {
LABEL_228:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v199 = MEMORY[0x1E69E9C10];
    v200 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v200)
    {
      v201 = 3;
    }

    else
    {
      v201 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 45;
    v240 = 2048;
    v241 = v3;
    _os_log_send_and_compose_impl(v201, &v233, &v242, 80, &dword_1E1C61000, v199, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_232;
  }

  v2 = v56;
  v3 = a1[2];
  re::StringID::destroyString((v3 + 90));
  v3[91] = "re::vertexfetch::fetchFromUChar";
  v3[90] = 2 * v2;
  v28 = a1[1];
  if (v28 <= 0x2E)
  {
LABEL_232:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v202 = MEMORY[0x1E69E9C10];
    v203 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v203)
    {
      v204 = 3;
    }

    else
    {
      v204 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 46;
    v240 = 2048;
    v241 = v28;
    _os_log_send_and_compose_impl(v204, &v233, &v242, 80, &dword_1E1C61000, v202, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_236;
  }

  v2 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromChar", 0, 0, 30);
  v3 = a1[2];
  re::StringID::destroyString((v3 + 92));
  v3[93] = "re::vertexfetch::fetchFromChar";
  v3[92] = 2 * v2;
  v28 = a1[1];
  if (v28 <= 0x2F)
  {
LABEL_236:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v205 = MEMORY[0x1E69E9C10];
    v206 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v206)
    {
      v207 = 3;
    }

    else
    {
      v207 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 47;
    v240 = 2048;
    v241 = v28;
    _os_log_send_and_compose_impl(v207, &v233, &v242, 80, &dword_1E1C61000, v205, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_240;
  }

  v2 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromUCharNorm", 0, 0, 35);
  v57 = a1[2];
  re::StringID::destroyString((v57 + 752));
  *(v57 + 760) = "re::vertexfetch::fetchFromUCharNorm";
  *(v57 + 752) = 2 * v2;
  v28 = "re::vertexfetch::fetchFromCharNorm";
  v58 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromCharNorm", 0, 0, 34);
  v3 = a1[1];
  if (v3 <= 0x30)
  {
LABEL_240:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v208 = MEMORY[0x1E69E9C10];
    v209 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v209)
    {
      v210 = 3;
    }

    else
    {
      v210 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 48;
    v240 = 2048;
    v241 = v3;
    _os_log_send_and_compose_impl(v210, &v233, &v242, 80, &dword_1E1C61000, v208, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_244;
  }

  v2 = v58;
  v59 = a1[2];
  re::StringID::destroyString((v59 + 768));
  *(v59 + 776) = "re::vertexfetch::fetchFromCharNorm";
  *(v59 + 768) = 2 * v2;
  v28 = "re::vertexfetch::fetchFromUShort";
  v60 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromUShort", 0, 0, 32);
  v3 = a1[1];
  if (v3 <= 0x31)
  {
LABEL_244:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v211 = MEMORY[0x1E69E9C10];
    v212 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v212)
    {
      v213 = 3;
    }

    else
    {
      v213 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 49;
    v240 = 2048;
    v241 = v3;
    _os_log_send_and_compose_impl(v213, &v233, &v242, 80, &dword_1E1C61000, v211, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_248;
  }

  v2 = v60;
  v61 = a1[2];
  re::StringID::destroyString((v61 + 784));
  *(v61 + 792) = "re::vertexfetch::fetchFromUShort";
  *(v61 + 784) = 2 * v2;
  v28 = "re::vertexfetch::fetchFromShort";
  v62 = re::internal::compileTimeHornerHash<15ul>(31, "re::vertexfetch::fetchFromShort", 0, 0, 31);
  v3 = a1[1];
  if (v3 <= 0x32)
  {
LABEL_248:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v214 = MEMORY[0x1E69E9C10];
    v215 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v215)
    {
      v216 = 3;
    }

    else
    {
      v216 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 50;
    v240 = 2048;
    v241 = v3;
    _os_log_send_and_compose_impl(v216, &v233, &v242, 80, &dword_1E1C61000, v214, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_252;
  }

  v2 = v62;
  v63 = a1[2];
  re::StringID::destroyString((v63 + 800));
  *(v63 + 808) = "re::vertexfetch::fetchFromShort";
  *(v63 + 800) = 2 * v2;
  v28 = a1[1];
  if (v28 <= 0x33)
  {
LABEL_252:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v217 = MEMORY[0x1E69E9C10];
    v218 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v218)
    {
      v219 = 3;
    }

    else
    {
      v219 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 51;
    v240 = 2048;
    v241 = v28;
    _os_log_send_and_compose_impl(v219, &v233, &v242, 80, &dword_1E1C61000, v217, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_256;
  }

  v2 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromUShortNorm", 0, 0, 36);
  v64 = a1[2];
  re::StringID::destroyString((v64 + 816));
  *(v64 + 824) = "re::vertexfetch::fetchFromUShortNorm";
  *(v64 + 816) = 2 * v2;
  v28 = a1[1];
  if (v28 <= 0x34)
  {
LABEL_256:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v220 = MEMORY[0x1E69E9C10];
    v221 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v221)
    {
      v222 = 3;
    }

    else
    {
      v222 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 52;
    v240 = 2048;
    v241 = v28;
    _os_log_send_and_compose_impl(v222, &v233, &v242, 80, &dword_1E1C61000, v220, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_260;
  }

  v2 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromShortNorm", 0, 0, 35);
  v65 = a1[2];
  re::StringID::destroyString((v65 + 832));
  *(v65 + 840) = "re::vertexfetch::fetchFromShortNorm";
  *(v65 + 832) = 2 * v2;
  v28 = a1[1];
  if (v28 <= 0x35)
  {
LABEL_260:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v223 = MEMORY[0x1E69E9C10];
    v224 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v224)
    {
      v225 = 3;
    }

    else
    {
      v225 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 53;
    v240 = 2048;
    v241 = v28;
    _os_log_send_and_compose_impl(v225, &v233, &v242, 80, &dword_1E1C61000, v223, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
    goto LABEL_264;
  }

  v2 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromHalf", 0, 0, 30);
  v66 = a1[2];
  re::StringID::destroyString((v66 + 848));
  *(v66 + 856) = "re::vertexfetch::fetchFromHalf";
  *(v66 + 848) = 2 * v2;
  v28 = a1[1];
  if (v28 <= 0x36)
  {
LABEL_264:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v226 = MEMORY[0x1E69E9C10];
    v227 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v227)
    {
      v228 = 3;
    }

    else
    {
      v228 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 54;
    v240 = 2048;
    v241 = v28;
    _os_log_send_and_compose_impl(v228, &v233, &v242, 80, &dword_1E1C61000, v226, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v232);
    _os_crash_msg();
    __break(1u);
LABEL_268:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v229 = MEMORY[0x1E69E9C10];
    v230 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v230)
    {
      v231 = 3;
    }

    else
    {
      v231 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = 55;
    v240 = 2048;
    v241 = v28;
    _os_log_send_and_compose_impl(v231, &v233, &v242, 80, &dword_1E1C61000, v229, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, v2, v232);
    _os_crash_msg();
    __break(1u);
  }

  LODWORD(v2) = 38;
  v67 = re::internal::compileTimeHornerHash<39ul>(0, 0, 38);
  v68 = a1[2];
  re::StringID::destroyString((v68 + 864));
  *(v68 + 872) = "re::vertexfetch::fetchFromFloatRG11B10";
  *(v68 + 864) = 2 * v67;
  v28 = a1[1];
  if (v28 <= 0x37)
  {
    goto LABEL_268;
  }

  v69 = re::internal::compileTimeHornerHash<37ul>("re::vertexfetch::fetchFromFloatRGB9E5", 0, 0, 37);
  v70 = a1[2];
  re::StringID::destroyString((v70 + 880));
  *(v70 + 888) = "re::vertexfetch::fetchFromFloatRGB9E5";
  *(v70 + 880) = 2 * v69;
}

void *re::compileAllFetchTypeFunctions@<X0>(re *this@<X0>, void **a2@<X8>)
{
  v53 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  re::getVertexFetchFunctionNames(&v36, this);
  v35 = 0;
  v32[1] = 0;
  v33 = 0;
  v32[0] = 0;
  v34 = 0;
  v4 = v37;
  if (v37)
  {
    re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v32, v37);
    if (v4 > v33)
    {
      bzero((v35 + 8 * v33), 8 * (v4 - v33));
    }

    v33 = v4;
    ++v34;
  }

  re::compileFetchTypeFunction(&v31, this, "re::vertexfetch::fetchFromInvalid");
  v30 = 0;
  v27[1] = 0;
  v28 = 0;
  v27[0] = 0;
  v29 = 0;
  if (v33)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = v37;
      if (v37 <= v7)
      {
        break;
      }

      v9 = *(v38 + v5 + 8);
      if (*(v38 + v5) <= 1uLL && v9 && !*v9)
      {
        NS::SharedPtr<MTL::Buffer>::operator=((v35 + v6), &v31);
        *&v48 = v7;
        re::DynamicArray<re::TransitionCondition *>::add(v27, &v48);
      }

      else
      {
        re::compileFetchTypeFunction(&v26, this, v9);
        v8 = v33;
        if (v33 <= v7)
        {
          goto LABEL_43;
        }

        NS::SharedPtr<MTL::Texture>::operator=((v35 + v6), &v26);
        if (v26)
        {
        }
      }

      ++v7;
      v6 += 8;
      v5 += 16;
      if (v7 >= v33)
      {
        goto LABEL_17;
      }
    }

    v39 = 0;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v40 = 136315906;
    v41 = "operator[]";
    v42 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v43 = 468;
    v44 = 2048;
    v45 = v7;
    v46 = 2048;
    v47 = v8;
    _os_log_send_and_compose_impl(v19, &v39, &v48, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v40, 38, v26, v27[0]);
    _os_crash_msg();
    __break(1u);
LABEL_39:
    v39 = 0;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    v20 = MEMORY[0x1E69E9C10];
    v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v40 = 136315906;
    v41 = "removeAt";
    v42 = 1024;
    if (v21)
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    v43 = 931;
    v44 = 2048;
    v45 = v8;
    v46 = 2048;
    v47 = v5;
    _os_log_send_and_compose_impl(v22, &v39, &v48, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v40, 38, v26, v27[0]);
    _os_crash_msg();
    __break(1u);
LABEL_43:
    v39 = 0;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    v23 = MEMORY[0x1E69E9C10];
    v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v40 = 136315906;
    v41 = "operator[]";
    v42 = 1024;
    if (v24)
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    v43 = 789;
    v44 = 2048;
    v45 = v7;
    v46 = 2048;
    v47 = v8;
    _os_log_send_and_compose_impl(v25, &v39, &v48, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v40, 38, v26, v27[0]);
    _os_crash_msg();
    __break(1u);
  }

LABEL_17:
  v10 = [MEMORY[0x1E695DEC8] alloc];
  v7 = &unk_1E8723000;
  *&v48 = [v10 initWithObjects:v35 count:v33];
  NS::SharedPtr<MTL::Texture>::operator=(a2 + 1, &v48);
  if (v48)
  {
  }

  if (v28)
  {
    v11 = 0;
    v5 = v33;
    do
    {
      v8 = *(v30 + 8 * v11);
      if (v5 <= v8)
      {
        goto LABEL_39;
      }

      v12 = v35;
      if (v5 - 1 > v8)
      {
        NS::SharedPtr<MTL::Texture>::operator=((v35 + 8 * v8), (v35 + 8 * v5 - 8));
        v5 = v33;
        v12 = v35;
      }

      v13 = v12 + 8 * v5;
      v14 = *(v13 - 8);
      if (v14)
      {

        *(v13 - 8) = 0;
        v5 = v33;
      }

      v33 = --v5;
      ++v34;
    }

    while (++v11 < v28);
  }

  v15 = [MEMORY[0x1E695DEC8] alloc];
  *&v48 = [v15 initWithObjects:v35 count:v33];
  NS::SharedPtr<MTL::Texture>::operator=(a2, &v48);
  if (v48)
  {
  }

  if (v27[0] && v30)
  {
    (*(*v27[0] + 40))();
  }

  if (v31)
  {
  }

  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v32);
  return re::FixedArray<re::StringID>::deinit(&v36);
}

void re::createVertexFetchComputePipeline(uint64_t *__return_ptr a1@<X8>, re *this@<X0>)
{
  re::make::shared::object<re::VertexFetchComputePipeline>(this, a1);
  Pipeline = re::createComputeVertexFetchPipeline(this, v6, v7);
  NS::SharedPtr<MTL::Buffer>::operator=((*a1 + 16), Pipeline);
  v9 = *(*(this + 4) + 144);
  v10 = [objc_msgSend(MEMORY[0x1E69741E8] alloc)];
  [v10 setFunctionCount_];
  v11 = [*(*a1 + 16) newVisibleFunctionTableWithDescriptor_];
  v15 = v11;
  if ([v9 count])
  {
    v12 = 0;
    do
    {
      v13 = [v9 objectAtIndex_];
      v14 = [*(*a1 + 16) functionHandleWithFunction_];
      [v11 setFunction:v14 atIndex:v12];
      if (v14)
      {
      }

      if (v13)
      {
      }

      ++v12;
    }

    while ([v9 count] > v12);
  }

  NS::SharedPtr<MTL::Buffer>::operator=((*a1 + 24), &v15);
  if (v15)
  {
  }

  if (v10)
  {
  }

  if (v9)
  {
  }
}

uint64_t re::internal::compileTimeHornerHash<37ul>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  result = a4 - a3;
  if (a4 - a3 <= 4)
  {
    if (result <= 1)
    {
      if (!result)
      {
        return result;
      }

      if (result == 1)
      {
        v8 = 31 * a2;
        return v8 + *(a1 + v5);
      }
    }

    else
    {
      switch(result)
      {
        case 2:
          v8 = 961 * a2 - *(a1 + a3) + 32 * *(a1 + a3);
          v5 = a3 + 1;
          return v8 + *(a1 + v5);
        case 3:
          v8 = 29791 * a2 + 961 * *(a1 + a3) - *(a1 + a3 + 1) + 32 * *(a1 + a3 + 1);
          v5 = a3 + 2;
          return v8 + *(a1 + v5);
        case 4:
          v8 = 923521 * a2 + 29791 * *(a1 + a3) + 961 * *(a1 + a3 + 1) - *(a1 + a3 + 2) + 32 * *(a1 + a3 + 2);
          v5 = a3 + 3;
          return v8 + *(a1 + v5);
      }
    }

LABEL_25:
    v9 = a3 + (result >> 1);
    v10 = re::internal::compileTimeHornerHash<37ul>(a1, a2, a3, v9 - 1);
    v5 = a4 - 1;
    v8 = 31 * re::internal::compileTimeHornerHash<37ul>(a1, *(a1 + v9 - 1) - v10 + 32 * v10, v9, a4 - 1);
    return v8 + *(a1 + v5);
  }

  if (result > 7)
  {
    switch(result)
    {
      case 8:
        v8 = 0xC694446F01 * a2 + 0x667E12CDFLL * *(a1 + a3) + 887503681 * *(a1 + a3 + 1) + 28629151 * *(a1 + a3 + 2) + 923521 * *(a1 + a3 + 3) + 29791 * *(a1 + a3 + 4) + 961 * *(a1 + a3 + 5) - *(a1 + a3 + 6) + 32 * *(a1 + a3 + 6);
        v5 = a3 + 7;
        return v8 + *(a1 + v5);
      case 9:
        v8 = 0x180BF449711FLL * a2 + 0xC694446F01 * *(a1 + a3) + 0x667E12CDFLL * *(a1 + a3 + 1) + 887503681 * *(a1 + a3 + 2) + 28629151 * *(a1 + a3 + 3) + 923521 * *(a1 + a3 + 4) + 29791 * *(a1 + a3 + 5) + 961 * *(a1 + a3 + 6) - *(a1 + a3 + 7) + 32 * *(a1 + a3 + 7);
        v5 = a3 + 8;
        return v8 + *(a1 + v5);
      case 10:
        v8 = 0x2E97294E4B2C1 * a2 + 0x180BF449711FLL * *(a1 + a3) + 0xC694446F01 * *(a1 + a3 + 1) + 0x667E12CDFLL * *(a1 + a3 + 2) + 887503681 * *(a1 + a3 + 3) + 28629151 * *(a1 + a3 + 4) + 923521 * *(a1 + a3 + 5) + 29791 * *(a1 + a3 + 6) + 961 * *(a1 + a3 + 7) - *(a1 + a3 + 8) + 32 * *(a1 + a3 + 8);
        v5 = a3 + 9;
        return v8 + *(a1 + v5);
    }

    goto LABEL_25;
  }

  if (result == 5)
  {
    v8 = 28629151 * a2 + 923521 * *(a1 + a3) + 29791 * *(a1 + a3 + 1) + 961 * *(a1 + a3 + 2) - *(a1 + a3 + 3) + 32 * *(a1 + a3 + 3);
    v5 = a3 + 4;
    return v8 + *(a1 + v5);
  }

  if (result == 6)
  {
    v8 = 887503681 * a2 + 28629151 * *(a1 + a3) + 923521 * *(a1 + a3 + 1) + 29791 * *(a1 + a3 + 2) + 961 * *(a1 + a3 + 3) - *(a1 + a3 + 4) + 32 * *(a1 + a3 + 4);
    v5 = a3 + 5;
    return v8 + *(a1 + v5);
  }

  if (result != 7)
  {
    goto LABEL_25;
  }

  v8 = 0x667E12CDFLL * a2 + 887503681 * *(a1 + a3) + 28629151 * *(a1 + a3 + 1) + 923521 * *(a1 + a3 + 2) + 29791 * *(a1 + a3 + 3) + 961 * *(a1 + a3 + 4) - *(a1 + a3 + 5) + 32 * *(a1 + a3 + 5);
  v5 = a3 + 6;
  return v8 + *(a1 + v5);
}

uint64_t re::internal::compileTimeHornerHash<41ul>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a3 - a2;
  if (a3 - a2 > 4)
  {
    if (v5 > 7)
    {
      switch(v5)
      {
        case 8:
          v6 = 0xC694446F01 * a1 + 0x667E12CDFLL * aReVertexfetchF_39[a2] + 887503681 * aReVertexfetchF_39[a2 + 1] + 28629151 * aReVertexfetchF_39[a2 + 2] + 923521 * aReVertexfetchF_39[a2 + 3] + 29791 * aReVertexfetchF_39[a2 + 4] + 961 * aReVertexfetchF_39[a2 + 5] - aReVertexfetchF_39[a2 + 6] + 32 * aReVertexfetchF_39[a2 + 6];
          v4 = a2 + 7;
          return v6 + aReVertexfetchF_39[v4];
        case 9:
          v6 = 0x180BF449711FLL * a1 + 0xC694446F01 * aReVertexfetchF_39[a2] + 0x667E12CDFLL * aReVertexfetchF_39[a2 + 1] + 887503681 * aReVertexfetchF_39[a2 + 2] + 28629151 * aReVertexfetchF_39[a2 + 3] + 923521 * aReVertexfetchF_39[a2 + 4] + 29791 * aReVertexfetchF_39[a2 + 5] + 961 * aReVertexfetchF_39[a2 + 6] - aReVertexfetchF_39[a2 + 7] + 32 * aReVertexfetchF_39[a2 + 7];
          v4 = a2 + 8;
          return v6 + aReVertexfetchF_39[v4];
        case 10:
          v6 = 0x2E97294E4B2C1 * a1 + 0x180BF449711FLL * aReVertexfetchF_39[a2] + 0xC694446F01 * aReVertexfetchF_39[a2 + 1] + 0x667E12CDFLL * aReVertexfetchF_39[a2 + 2] + 887503681 * aReVertexfetchF_39[a2 + 3] + 28629151 * aReVertexfetchF_39[a2 + 4] + 923521 * aReVertexfetchF_39[a2 + 5] + 29791 * aReVertexfetchF_39[a2 + 6] + 961 * aReVertexfetchF_39[a2 + 7] - aReVertexfetchF_39[a2 + 8] + 32 * aReVertexfetchF_39[a2 + 8];
          v4 = a2 + 9;
          return v6 + aReVertexfetchF_39[v4];
      }
    }

    else
    {
      switch(v5)
      {
        case 5:
          v6 = 28629151 * a1 + 923521 * aReVertexfetchF_39[a2] + 29791 * aReVertexfetchF_39[a2 + 1] + 961 * aReVertexfetchF_39[a2 + 2] - aReVertexfetchF_39[a2 + 3] + 32 * aReVertexfetchF_39[a2 + 3];
          v4 = a2 + 4;
          return v6 + aReVertexfetchF_39[v4];
        case 6:
          v6 = 887503681 * a1 + 28629151 * aReVertexfetchF_39[a2] + 923521 * aReVertexfetchF_39[a2 + 1] + 29791 * aReVertexfetchF_39[a2 + 2] + 961 * aReVertexfetchF_39[a2 + 3] - aReVertexfetchF_39[a2 + 4] + 32 * aReVertexfetchF_39[a2 + 4];
          v4 = a2 + 5;
          return v6 + aReVertexfetchF_39[v4];
        case 7:
          v6 = 0x667E12CDFLL * a1 + 887503681 * aReVertexfetchF_39[a2] + 28629151 * aReVertexfetchF_39[a2 + 1] + 923521 * aReVertexfetchF_39[a2 + 2] + 29791 * aReVertexfetchF_39[a2 + 3] + 961 * aReVertexfetchF_39[a2 + 4] - aReVertexfetchF_39[a2 + 5] + 32 * aReVertexfetchF_39[a2 + 5];
          v4 = a2 + 6;
          return v6 + aReVertexfetchF_39[v4];
      }
    }

    goto LABEL_18;
  }

  if (v5 > 1)
  {
    switch(v5)
    {
      case 2:
        v6 = 961 * a1 - aReVertexfetchF_39[a2] + 32 * aReVertexfetchF_39[a2];
        v4 = a2 + 1;
        return v6 + aReVertexfetchF_39[v4];
      case 3:
        v6 = 29791 * a1 + 961 * aReVertexfetchF_39[a2] - aReVertexfetchF_39[a2 + 1] + 32 * aReVertexfetchF_39[a2 + 1];
        v4 = a2 + 2;
        return v6 + aReVertexfetchF_39[v4];
      case 4:
        v6 = 923521 * a1 + 29791 * aReVertexfetchF_39[a2] + 961 * aReVertexfetchF_39[a2 + 1] - aReVertexfetchF_39[a2 + 2] + 32 * aReVertexfetchF_39[a2 + 2];
        v4 = a2 + 3;
        return v6 + aReVertexfetchF_39[v4];
    }

    goto LABEL_18;
  }

  if (v5)
  {
    if (v5 == 1)
    {
LABEL_19:
      v6 = 31 * a1;
      return v6 + aReVertexfetchF_39[v4];
    }

LABEL_18:
    v7 = a2 + (v5 >> 1);
    v8 = re::internal::compileTimeHornerHash<41ul>(a1, a2, v7 - 1);
    v4 = a3 - 1;
    a1 = re::internal::compileTimeHornerHash<41ul>(aReVertexfetchF_39[v7 - 1] - v8 + 32 * v8, v7, a3 - 1);
    goto LABEL_19;
  }

  return v5;
}

uint64_t re::internal::compileTimeHornerHash<39ul>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a3 - a2;
  if (a3 - a2 > 4)
  {
    if (v5 > 7)
    {
      switch(v5)
      {
        case 8:
          v6 = 0xC694446F01 * a1 + 0x667E12CDFLL * aReVertexfetchF_51[a2] + 887503681 * aReVertexfetchF_51[a2 + 1] + 28629151 * aReVertexfetchF_51[a2 + 2] + 923521 * aReVertexfetchF_51[a2 + 3] + 29791 * aReVertexfetchF_51[a2 + 4] + 961 * aReVertexfetchF_51[a2 + 5] - aReVertexfetchF_51[a2 + 6] + 32 * aReVertexfetchF_51[a2 + 6];
          v4 = a2 + 7;
          return v6 + aReVertexfetchF_51[v4];
        case 9:
          v6 = 0x180BF449711FLL * a1 + 0xC694446F01 * aReVertexfetchF_51[a2] + 0x667E12CDFLL * aReVertexfetchF_51[a2 + 1] + 887503681 * aReVertexfetchF_51[a2 + 2] + 28629151 * aReVertexfetchF_51[a2 + 3] + 923521 * aReVertexfetchF_51[a2 + 4] + 29791 * aReVertexfetchF_51[a2 + 5] + 961 * aReVertexfetchF_51[a2 + 6] - aReVertexfetchF_51[a2 + 7] + 32 * aReVertexfetchF_51[a2 + 7];
          v4 = a2 + 8;
          return v6 + aReVertexfetchF_51[v4];
        case 10:
          v6 = 0x2E97294E4B2C1 * a1 + 0x180BF449711FLL * aReVertexfetchF_51[a2] + 0xC694446F01 * aReVertexfetchF_51[a2 + 1] + 0x667E12CDFLL * aReVertexfetchF_51[a2 + 2] + 887503681 * aReVertexfetchF_51[a2 + 3] + 28629151 * aReVertexfetchF_51[a2 + 4] + 923521 * aReVertexfetchF_51[a2 + 5] + 29791 * aReVertexfetchF_51[a2 + 6] + 961 * aReVertexfetchF_51[a2 + 7] - aReVertexfetchF_51[a2 + 8] + 32 * aReVertexfetchF_51[a2 + 8];
          v4 = a2 + 9;
          return v6 + aReVertexfetchF_51[v4];
      }
    }

    else
    {
      switch(v5)
      {
        case 5:
          v6 = 28629151 * a1 + 923521 * aReVertexfetchF_51[a2] + 29791 * aReVertexfetchF_51[a2 + 1] + 961 * aReVertexfetchF_51[a2 + 2] - aReVertexfetchF_51[a2 + 3] + 32 * aReVertexfetchF_51[a2 + 3];
          v4 = a2 + 4;
          return v6 + aReVertexfetchF_51[v4];
        case 6:
          v6 = 887503681 * a1 + 28629151 * aReVertexfetchF_51[a2] + 923521 * aReVertexfetchF_51[a2 + 1] + 29791 * aReVertexfetchF_51[a2 + 2] + 961 * aReVertexfetchF_51[a2 + 3] - aReVertexfetchF_51[a2 + 4] + 32 * aReVertexfetchF_51[a2 + 4];
          v4 = a2 + 5;
          return v6 + aReVertexfetchF_51[v4];
        case 7:
          v6 = 0x667E12CDFLL * a1 + 887503681 * aReVertexfetchF_51[a2] + 28629151 * aReVertexfetchF_51[a2 + 1] + 923521 * aReVertexfetchF_51[a2 + 2] + 29791 * aReVertexfetchF_51[a2 + 3] + 961 * aReVertexfetchF_51[a2 + 4] - aReVertexfetchF_51[a2 + 5] + 32 * aReVertexfetchF_51[a2 + 5];
          v4 = a2 + 6;
          return v6 + aReVertexfetchF_51[v4];
      }
    }

    goto LABEL_18;
  }

  if (v5 > 1)
  {
    switch(v5)
    {
      case 2:
        v6 = 961 * a1 - aReVertexfetchF_51[a2] + 32 * aReVertexfetchF_51[a2];
        v4 = a2 + 1;
        return v6 + aReVertexfetchF_51[v4];
      case 3:
        v6 = 29791 * a1 + 961 * aReVertexfetchF_51[a2] - aReVertexfetchF_51[a2 + 1] + 32 * aReVertexfetchF_51[a2 + 1];
        v4 = a2 + 2;
        return v6 + aReVertexfetchF_51[v4];
      case 4:
        v6 = 923521 * a1 + 29791 * aReVertexfetchF_51[a2] + 961 * aReVertexfetchF_51[a2 + 1] - aReVertexfetchF_51[a2 + 2] + 32 * aReVertexfetchF_51[a2 + 2];
        v4 = a2 + 3;
        return v6 + aReVertexfetchF_51[v4];
    }

    goto LABEL_18;
  }

  if (v5)
  {
    if (v5 == 1)
    {
LABEL_19:
      v6 = 31 * a1;
      return v6 + aReVertexfetchF_51[v4];
    }

LABEL_18:
    v7 = a2 + (v5 >> 1);
    v8 = re::internal::compileTimeHornerHash<39ul>(a1, a2, v7 - 1);
    v4 = a3 - 1;
    a1 = re::internal::compileTimeHornerHash<39ul>(aReVertexfetchF_51[v7 - 1] - v8 + 32 * v8, v7, a3 - 1);
    goto LABEL_19;
  }

  return v5;
}

void re::make::shared::object<re::VertexFetchComputePipeline>(re *a1@<X0>, void *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 32, 8);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(v4, 0);
  *v5 = &unk_1F5D09970;
  v5[2] = 0;
  v5[3] = 0;
  *a2 = v5;
}

void re::VertexFetchComputePipeline::~VertexFetchComputePipeline(re::VertexFetchComputePipeline *this)
{
  *this = &unk_1F5D09970;
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  v3 = *(this + 2);
  if (v3)
  {

    *(this + 2) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D09970;
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  v3 = *(this + 2);
  if (v3)
  {

    *(this + 2) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

re::JiggleDeformerModelBuilder *re::JiggleDeformerModelBuilder::JiggleDeformerModelBuilder(re::JiggleDeformerModelBuilder *this, re::Allocator *a2, unsigned int a3, unsigned int a4, DeformationModelData *a5)
{
  *this = a5;
  v9 = re::DeformationModelData::create<re::JiggleDeformer,re::JiggleDeformerModel>(a5, a2);
  re::FixedArray<re::StringID>::init<>(v9, a2, a4);
  re::FixedArray<re::StringID>::init<>(v9 + 3, a2, a4);
  re::FixedArray<int>::init<>(v9 + 6, a2, a4);
  re::FixedArray<int>::init<>(v9 + 9, a2, a4);
  re::FixedArray<unsigned short>::init<unsigned short const&>(v9 + 12, a2, a3, &re::JiggleDeformerModel::kInvalidIndex);
  return this;
}

uint64_t re::DeformationModelData::create<re::JiggleDeformer,re::JiggleDeformerModel>(uint64_t a1, uint64_t a2)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 32))(a2, 120, 8);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0;
  v6[0] = &unk_1F5D09AA8;
  v6[1] = a2;
  v6[3] = v6;
  v7 = v4;
  v8[3] = v8;
  v8[0] = &unk_1F5D09AA8;
  v8[1] = a2;
  std::unique_ptr<void,std::function<void ()(void *)>>::operator=[abi:nn200100]((a1 + 640), &v7);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v7);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v6);
  return *(a1 + 640);
}

unint64_t *re::JiggleDeformerModelBuilder::setData(re::JiggleDeformerModelBuilder *this, unsigned int a2, unsigned int a3, const re::StringID *a4, const re::StringID *a5, float a6, float a7)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = *(*this + 640);
  v8 = a2;
  v9 = v7[13];
  if (v9 <= a2)
  {
    v29 = 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v30 = 136315906;
    v31 = "operator[]";
    v32 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v33 = 468;
    v34 = 2048;
    v35 = v8;
    v36 = 2048;
    v37 = v9;
    _os_log_send_and_compose_impl(v15, &v29, &v38, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v28);
    _os_crash_msg();
    __break(1u);
    goto LABEL_11;
  }

  *(v7[14] + 2 * a2) = a3;
  v8 = a3;
  v9 = v7[1];
  if (v9 <= a3)
  {
LABEL_11:
    v29 = 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v30 = 136315906;
    v31 = "operator[]";
    v32 = 1024;
    if (v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v33 = 468;
    v34 = 2048;
    v35 = v8;
    v36 = 2048;
    v37 = v9;
    _os_log_send_and_compose_impl(v18, &v29, &v38, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v28);
    _os_crash_msg();
    __break(1u);
    goto LABEL_15;
  }

  re::StringID::operator=((v7[2] + 16 * a3), a4);
  v9 = v7[4];
  if (v9 <= v8)
  {
LABEL_15:
    v29 = 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v19 = MEMORY[0x1E69E9C10];
    v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v30 = 136315906;
    v31 = "operator[]";
    v32 = 1024;
    if (v20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    v33 = 468;
    v34 = 2048;
    v35 = v8;
    v36 = 2048;
    v37 = v9;
    _os_log_send_and_compose_impl(v21, &v29, &v38, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v28);
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  result = re::StringID::operator=((v7[5] + 16 * v8), a5);
  v9 = v7[7];
  if (v9 <= v8)
  {
LABEL_19:
    v29 = 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v22 = MEMORY[0x1E69E9C10];
    v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v30 = 136315906;
    v31 = "operator[]";
    v32 = 1024;
    if (v23)
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }

    v33 = 468;
    v34 = 2048;
    v35 = v8;
    v36 = 2048;
    v37 = v9;
    _os_log_send_and_compose_impl(v24, &v29, &v38, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v28);
    _os_crash_msg();
    __break(1u);
LABEL_23:
    v29 = 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v25 = MEMORY[0x1E69E9C10];
    v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v30 = 136315906;
    v31 = "operator[]";
    v32 = 1024;
    if (v26)
    {
      v27 = 3;
    }

    else
    {
      v27 = 2;
    }

    v33 = 468;
    v34 = 2048;
    v35 = v8;
    v36 = 2048;
    v37 = v9;
    _os_log_send_and_compose_impl(v27, &v29, &v38, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v28);
    _os_crash_msg();
    __break(1u);
  }

  *(v7[8] + 4 * v8) = a6;
  v9 = v7[10];
  if (v9 <= v8)
  {
    goto LABEL_23;
  }

  *(v7[11] + 4 * v8) = a7;
  return result;
}

_anonymous_namespace_ *re::JiggleDeformer::init(_anonymous_namespace_ *result, uint64_t a2)
{
  if ((*(result + 8) & 1) == 0)
  {
    v3 = result;
    *(result + 8) = 1;
    *(result + 2) = *(a2 + 16);
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(v3 + 10, 0);
    ++*(v3 + 26);
    *(v3 + 31) = 64;
    re::DataArray<re::SharedPtr<re::ecs2::System>>::allocBlock((v3 + 80));
    v6 = *(a2 + 16);
    if (v6)
    {
      if (*(v6 + 208) && *(v3 + 2))
      {
        v10 = 0;
        v13 = 0;
        memset(v16, 0, sizeof(v16));
        v17 = 0;
        v21 = 0;
        v22 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        ComputePipelineState = re::getOrCreateComputePipelineState(*(v3 + 2), &v8);
        NS::SharedPtr<MTL::Buffer>::operator=(v3 + 25, ComputePipelineState);
        if (v21)
        {

          v21 = 0;
        }

        re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v16);
        if (v13 == 1 && v14)
        {
          if (BYTE8(v14))
          {
            (*(*v14 + 40))();
          }

          v14 = 0u;
          v15 = 0u;
        }

        if (v10 == 1 && v11)
        {
          if (BYTE8(v11))
          {
            (*(*v11 + 40))();
          }

          v12 = 0u;
          v11 = 0u;
        }

        result = v8;
        if (v8)
        {
          if (v9)
          {
            return (*(*v8 + 40))();
          }
        }
      }
    }
  }

  return result;
}

unint64_t re::JiggleDeformer::addDeformationInstance@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X2>, uint64_t a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 64);
  if (v6)
  {
    v7 = *re::BucketArray<re::CachedMetalFunction,64ul>::operator[](a1 + 24, v6 - 1);
    re::BucketArray<re::CachedMetalFunction,64ul>::operator[](a1 + 24, *(a1 + 64) - 1);
    --*(a1 + 64);
    ++*(a1 + 72);
  }

  else
  {
    v7 = *(a1 + 184);
    v8 = *(a1 + 152);
    if (v7 + 1 > v8 << 6)
    {
      re::BucketArray<re::JiggleDeformer::DynamicsState,64ul>::setBucketsCapacity((a1 + 144), (v7 + 64) >> 6);
      v8 = *(a1 + 152);
    }

    if (v8 <= v7 >> 6)
    {
      v18 = 0;
      memset(v27, 0, sizeof(v27));
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

      v22 = 858;
      v23 = 2048;
      v24 = v7 >> 6;
      v25 = 2048;
      v26 = v8;
      _os_log_send_and_compose_impl(v16, &v18, v27, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
      _os_crash_msg();
      __break(1u);
    }

    if (*(a1 + 160))
    {
      v9 = a1 + 168;
    }

    else
    {
      v9 = *(a1 + 176);
    }

    v10 = *(v9 + 8 * (v7 >> 6));
    ++*(a1 + 184);
    ++*(a1 + 192);
    v11 = (v10 + 16 * (v7 & 0x3F));
    *v11 = 0;
    v11[1] = 0;
  }

  *&v27[0] = v7;
  result = re::DataArray<unsigned long>::create<unsigned long &>(a1 + 80, v27);
  *a3 = result;
  *(a3 + 8) = vdupq_n_s64(2uLL);
  v13 = *a2;
  if (v13 == 255)
  {
    v14 = *(a2 + 2);
    LOBYTE(v13) = 3;
    if (v14)
    {
      if (*(v14 + 208))
      {
        LOBYTE(v13) = 1;
      }

      else
      {
        LOBYTE(v13) = 3;
      }
    }
  }

  *(a3 + 24) = v13;
  *(a3 + 32) = -1;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  return result;
}

unint64_t re::DataArray<unsigned long>::create<unsigned long &>(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 56);
  if ((v4 + 1) >> 24)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 + 1;
  }

  *(a1 + 56) = v5;
  v6 = *(a1 + 52);
  v7 = *(a1 + 54);
  if (v6 == 0xFFFF && v7 == 0xFFFF)
  {
    if (*(a1 + 48) >= *(a1 + 44))
    {
      re::DataArray<re::SharedPtr<re::ecs2::System>>::allocBlock(a1);
    }

    v13 = *(a1 + 16);
    v7 = (v13 - 1);
    if (v13)
    {
      v6 = *(a1 + 48);
      if (v6 < 0x10000)
      {
        v14 = (*(a1 + 32) + 16 * v7);
        *(a1 + 48) = v6 + 1;
        v12 = *(a1 + 56);
        *(v14[1] + 4 * v6) = v12;
        v11 = (*v14 + 8 * v6);
        goto LABEL_15;
      }

LABEL_24:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v6);
      _os_crash("assertion failure: (!overflow) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", v21);
      __break(1u);
    }

LABEL_20:
    v24 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v28 = 789;
    v29 = 2048;
    v30 = v7;
    v31 = 2048;
    v32 = 0;
    _os_log_send_and_compose_impl(v20, &v24, &v33, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v22, v23);
    _os_crash_msg();
    __break(1u);
    goto LABEL_24;
  }

  v9 = *(a1 + 16);
  if (v9 <= v7)
  {
    v24 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v28 = 789;
    v29 = 2048;
    v30 = v7;
    v31 = 2048;
    v32 = v9;
    _os_log_send_and_compose_impl(v17, &v24, &v33, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v22, v23);
    _os_crash_msg();
    __break(1u);
    goto LABEL_20;
  }

  v10 = (*(a1 + 32) + 16 * v7);
  *(v10[1] + 4 * v6) = v5;
  v11 = (*v10 + 8 * v6);
  *(a1 + 52) = *v11;
  v12 = *(a1 + 56);
LABEL_15:
  ++*(a1 + 40);
  *v11 = *a2;
  return ((v7 << 16) | ((v12 & 0xFFFFFF) << 32)) + v6;
}

_DWORD *re::JiggleDeformer::removeDeformationInstance(uint64_t a1, unint64_t a2)
{
  v4 = *re::DataArray<unsigned long>::get(a1 + 80, a2);
  *re::BucketArray<unsigned long,64ul>::addUninitialized(a1 + 24) = v4;
  v5 = re::BucketArray<re::StitchedDeformer::ComputePipelineData,64ul>::operator[](a1 + 144, v4);

  *v5 = 0;
  v5[1] = 0;

  return re::DataArray<re::ecs2::Component *>::destroy(a1 + 80, a2);
}

uint64_t re::DataArray<unsigned long>::get(uint64_t a1, int a2)
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

  return *(*(a1 + 32) + 16 * HIWORD(a2)) + 8 * a2;
}

uint64_t re::JiggleDeformer::allocateBuffers(re *a1, uint64_t a2, re::PerFrameAllocatorGPU **a3, unsigned int a4, uint64_t *a5, uint64_t a6)
{
  v9 = a1;
  v120 = *MEMORY[0x1E69E9840];
  *a6 |= 2uLL;
  *(a6 + 9) = 1;
  re::globalAllocators(a1);
  v10 = (*(*a2 + 32))(a2, 24, 8);
  v12 = v10;
  v13 = *(*a5 + 48);
  v10[1] = v13;
  v10[2] = 0;
  *v10 = a2;
  if (v13)
  {
    if (v13 >= 0x1AF286BCA1AF287)
    {
LABEL_76:
      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 152, v13);
      _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v87, v90);
      __break(1u);
LABEL_77:
      re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
    }

    v10 = (*(*a2 + 32))(a2, 152 * v13, 8);
    v12[2] = v10;
    if (!v10)
    {
      goto LABEL_77;
    }

    v6 = v10;
    if (v13 != 1)
    {
      bzero(v10, 152 * v13 - 152);
      v6 += 152 * v13 - 152;
    }

    *(v6 + 144) = 0;
    *(v6 + 112) = 0u;
    *(v6 + 128) = 0u;
    *(v6 + 80) = 0u;
    *(v6 + 96) = 0u;
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0u;
    *v6 = 0u;
  }

  *(&v116 + 1) = re::globalAllocators(v10)[2];
  *&v117 = v115;
  v115[0] = &unk_1F5D09A40;
  v96 = (*(*a2 + 16))(a2, v12, v115);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v115);
  v93 = *(*a5 + 48);
  if (v93)
  {
    v15 = 0;
    while (1)
    {
      re::DeformationInstanceIterator::Instance::Instance(&v102, a5, v15);
      v16 = v105;
      v17 = re::DeformationInstanceIterator::Instance::meshPart(&v102, *(*(v9 + 2) + 32));
      v18 = re::DeformationVertexBufferState::inputVertexCount(v16, 1);
      v19 = *(*(v104 + 344) + 640);
      v20 = *(v104 + 392);
      v13 = v19[13];
      if (v13 <= v20)
      {
        break;
      }

      v6 = *(v19[14] + 2 * v20);
      v20 = v19[4];
      if (v20 <= v6)
      {
        goto LABEL_54;
      }

      v100 = v18;
      v21 = 12 * v18;
      re::StringID::StringID(&v101, (v19[5] + 16 * v6));
      v99 = v17;
      v22 = v17;
      do
      {
        v23 = v22;
        v22 = *v22;
      }

      while (v22 && !v23[8]);
      v115[0] = (v101 >> 1);
      v24 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v23 + 5, v115);
      if (v24 == -1)
      {
        v98 = 0;
      }

      else
      {
        v98 = (v23[6] + 16 * v24 + 8);
      }

      v25 = re::DeformationInstanceIterator::Instance::handle(&v102);
      v26 = re::DataArray<unsigned long>::get(v9 + 80, v25);
      v27 = re::BucketArray<re::StitchedDeformer::ComputePipelineData,64ul>::operator[](v9 + 144, *v26);
      if (!*v27)
      {
        v28 = v99;
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28 && !v29[8]);
        v115[0] = 0x2B3FAC222C23CAEDLL;
        v30 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v29 + 5, v115);
        if (v30 == -1)
        {
          v13 = 0;
        }

        else
        {
          v13 = &v29[6][2 * v30 + 1];
        }

        v31 = *(v9 + 2);
        v32 = re::AttributeTable::buffers(v99);
        v34 = *v13;
        if (v33 <= v34)
        {
          goto LABEL_75;
        }

        v115[0] = [*(v31 + 208) newBufferWithBytes:re::BufferView::contents((v32 + 24 * *v13)) length:v21 options:0];
        NS::SharedPtr<MTL::Texture>::operator=(v27, v115);
        if (v115[0])
        {
        }
      }

      v20 = (v27 + 1);
      if (!v27[1])
      {
        v115[0] = [*(*(v9 + 2) + 208) newBufferWithLength:v21 options:0];
        NS::SharedPtr<MTL::Texture>::operator=(v27 + 1, v115);
        if (v115[0])
        {
        }
      }

      v13 = v19[7];
      if (v13 <= v6)
      {
        goto LABEL_58;
      }

      v13 = v19[10];
      if (v13 <= v6)
      {
        goto LABEL_62;
      }

      v97 = v21;
      v35 = v16;
      v36 = v15;
      v37 = v9;
      v38 = a5;
      a5 = v103;
      v13 = *(v96 + 8);
      if (v13 <= v103)
      {
        goto LABEL_66;
      }

      v39 = *(v19[8] + 4 * v6);
      v40 = **(*(v104 + 352) + 152);
      v41 = *(v19[11] + 4 * v6);
      v42 = *(v96 + 16) + 152 * v103;
      v13 = a3;
      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(v115, a3, 0x10uLL, 4uLL);
      v43 = v115[0];
      v44 = v116;
      v45 = v115[1];
      v46 = v115[0] + LODWORD(v115[1]);
      *v46 = v100;
      v46[1] = v39;
      v46[2] = v41;
      v46[3] = v40;
      *v42 = v43;
      *(v42 + 8) = v45;
      *(v42 + 16) = v44;
      v115[0] = *v27;
      DWORD2(v116) = 0;
      LODWORD(v117) = 0;
      DWORD1(v117) = [*v27 length];
      std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v42 + 24, v115);
      *(v42 + 56) = v117;
      if (DWORD2(v116) != -1)
      {
        (off_1F5D09A88[DWORD2(v116)])(&v107, v115);
      }

      v115[0] = *v20;
      DWORD2(v116) = 0;
      LODWORD(v117) = 0;
      DWORD1(v117) = [*v20 length];
      std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v42 + 64, v115);
      *(v42 + 96) = v117;
      a5 = v38;
      if (DWORD2(v116) != -1)
      {
        (off_1F5D09A88[DWORD2(v116)])(&v107, v115);
      }

      v47 = 4 * v100;
      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(v115, a3, 4 * v100, 4uLL);
      v48 = v115[0];
      v6 = LODWORD(v115[1]);
      v49 = HIDWORD(v115[1]);
      v50 = v116;
      *(v42 + 128) = v115[0];
      *(v42 + 136) = v6;
      *(v42 + 140) = v49;
      *(v42 + 144) = v50;
      v9 = v37;
      if (v98)
      {
        v51 = re::AttributeTable::buffers(v99);
        v53 = *v98;
        if (v52 <= v53)
        {
          goto LABEL_74;
        }

        v54 = v36;
        v55 = re::BufferView::contents((v51 + 24 * *v98));
        memcpy(&v48[v6], v55, v47);
      }

      else
      {
        v54 = v36;
        if (v49 >= 4)
        {
          memset_pattern16(&v48[v6], &unk_1E30D6460, v49 & 0xFFFFFFFC);
        }
      }

      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(v115, a3, v47, 4uLL);
      v56 = v115[0];
      v57 = LODWORD(v115[1]);
      v58 = HIDWORD(v115[1]);
      v59 = v116;
      *(v42 + 104) = v115[0];
      *(v42 + 112) = v57;
      *(v42 + 116) = v58;
      *(v42 + 120) = v59;
      if (v58 >= 4)
      {
        memset_pattern16(&v56[v57], &unk_1E30D6460, v58 & 0xFFFFFFFC);
      }

      v60 = v104;
      v61 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](*v102 + 8, v103);
      v62 = re::DeformationBufferAllocator::alloc(*(v60 + 360), a5[2], 1, 0x1010001000CLL, 0x1E00000000, *(v61 + 16), v97);
      v63 = *(v60 + 360);
      v20 = *(v61 + 16);
      v13 = *(v63 + 8);
      if (v13 <= v20)
      {
        goto LABEL_70;
      }

      v64 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](*(v63 + 16) + 72 * *(v61 + 16) + 16, v62);
      WORD2(v115[0]) = 257;
      LODWORD(v115[0]) = 65548;
      BYTE4(v115[1]) = 30;
      LODWORD(v115[1]) = 0;
      v65 = re::DeformationVertexBufferState::setOutputBuffer(v35, 1, a4, (v64 + 24), v115);
      if (v101)
      {
        if (v101)
        {
        }
      }

      v15 = v54 + 1;
      if (v15 == v93)
      {
        return v96;
      }
    }

    v101 = 0;
    v118 = 0u;
    v119 = 0u;
    v117 = 0u;
    *v115 = 0u;
    v116 = 0u;
    v67 = MEMORY[0x1E69E9C10];
    v68 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v68)
    {
      v69 = 3;
    }

    else
    {
      v69 = 2;
    }

    v110 = 476;
    v111 = 2048;
    v112 = v20;
    v113 = 2048;
    v114 = v13;
    _os_log_send_and_compose_impl(v69, &v101, v115, 80, &dword_1E1C61000, v67, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v91, v92);
    _os_crash_msg();
    __break(1u);
LABEL_54:
    v101 = 0;
    v118 = 0u;
    v119 = 0u;
    v117 = 0u;
    *v115 = 0u;
    v116 = 0u;
    v70 = MEMORY[0x1E69E9C10];
    v71 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v71)
    {
      v72 = 3;
    }

    else
    {
      v72 = 2;
    }

    v110 = 476;
    v111 = 2048;
    v112 = v6;
    v113 = 2048;
    v114 = v20;
    _os_log_send_and_compose_impl(v72, &v101, v115, 80, &dword_1E1C61000, v70, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v91, v92);
    _os_crash_msg();
    __break(1u);
LABEL_58:
    v106 = 0;
    v118 = 0u;
    v119 = 0u;
    v117 = 0u;
    *v115 = 0u;
    v116 = 0u;
    v73 = MEMORY[0x1E69E9C10];
    v74 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v74)
    {
      v75 = 3;
    }

    else
    {
      v75 = 2;
    }

    v110 = 476;
    v111 = 2048;
    v112 = v6;
    v113 = 2048;
    v114 = v13;
    _os_log_send_and_compose_impl(v75, &v106, v115, 80, &dword_1E1C61000, v73, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v91, v92);
    _os_crash_msg();
    __break(1u);
LABEL_62:
    v106 = 0;
    v118 = 0u;
    v119 = 0u;
    v117 = 0u;
    *v115 = 0u;
    v116 = 0u;
    v76 = MEMORY[0x1E69E9C10];
    v77 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v77)
    {
      v78 = 3;
    }

    else
    {
      v78 = 2;
    }

    v110 = 476;
    v111 = 2048;
    v112 = v6;
    v113 = 2048;
    v114 = v13;
    _os_log_send_and_compose_impl(v78, &v106, v115, 80, &dword_1E1C61000, v76, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v91, v92);
    _os_crash_msg();
    __break(1u);
LABEL_66:
    v106 = 0;
    v118 = 0u;
    v119 = 0u;
    v117 = 0u;
    *v115 = 0u;
    v116 = 0u;
    v79 = MEMORY[0x1E69E9C10];
    v80 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v80)
    {
      v81 = 3;
    }

    else
    {
      v81 = 2;
    }

    v110 = 468;
    v111 = 2048;
    v112 = a5;
    v113 = 2048;
    v114 = v13;
    _os_log_send_and_compose_impl(v81, &v106, v115, 80, &dword_1E1C61000, v79, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v91, v92);
    _os_crash_msg();
    __break(1u);
LABEL_70:
    v106 = 0;
    v118 = 0u;
    v119 = 0u;
    v117 = 0u;
    *v115 = 0u;
    v116 = 0u;
    v82 = MEMORY[0x1E69E9C10];
    v83 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v83)
    {
      v84 = 3;
    }

    else
    {
      v84 = 2;
    }

    v110 = 476;
    v111 = 2048;
    v112 = v20;
    v113 = 2048;
    v114 = v13;
    _os_log_send_and_compose_impl(v84, &v106, v115, 80, &dword_1E1C61000, v82, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v91, v92);
    _os_crash_msg();
    __break(1u);
LABEL_74:
    re::internal::assertLog(6, v52, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v53, v52);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v85, v88);
    __break(1u);
LABEL_75:
    re::internal::assertLog(6, v33, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v34, v33);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v86, v89);
    __break(1u);
    goto LABEL_76;
  }

  return v96;
}

uint64_t re::JiggleDeformer::deformGPU(uint64_t a1, uint64_t a2, void **this, void *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  re::mtl::ComputeCommandEncoder::pushDebugGroup(this, "Jiggle Deformer");
  v28 = a1;
  v8 = [*(a1 + 200) maxTotalThreadsPerThreadgroup];
  v9 = *(*a4 + 48);
  if (v9)
  {
    v10 = 0;
    v11 = v8;
    v27 = v8 - 1;
    do
    {
      re::DeformationInstanceIterator::Instance::Instance(&v29, a4, v10);
      v12 = v31;
      v13 = re::DeformationVertexBufferState::inputVertexCount(v31, 1);
      v14 = v30;
      v15 = *(a2 + 8);
      if (v15 <= v30)
      {
        v32 = 0;
        memset(v36, 0, sizeof(v36));
        v24 = MEMORY[0x1E69E9C10];
        v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v33 = 136315906;
        *&v33[4] = "operator[]";
        *&v33[12] = 1024;
        if (v25)
        {
          v26 = 3;
        }

        else
        {
          v26 = 2;
        }

        *&v33[14] = 468;
        *&v33[18] = 2048;
        *&v33[20] = v14;
        v34 = 2048;
        v35 = v15;
        _os_log_send_and_compose_impl(v26, &v32, v36, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v33, 38, v27, v28);
        _os_crash_msg();
        __break(1u);
      }

      v16 = *(a2 + 16) + 152 * v30;
      v17 = (v27 + v13) / v11;
      [*this setComputePipelineState:*(v28 + 200)];
      LOBYTE(v36[0]) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v12, 1u);
      v18 = *(v12[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v12 + 23, v36) + 24);
      LOBYTE(v36[0]) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v12, 1u);
      [*this setBuffer:v18 offset:*(v12[24] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v12 + 23, v36) + 16), 0}];
      LOBYTE(v36[0]) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v12, 1u);
      v19 = *(v12[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v12 + 7, v36) + 24);
      LOBYTE(v36[0]) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v12, 1u);
      [*this setBuffer:v19 offset:*(v12[8] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v12 + 7, v36) + 16), 1}];
      re::BufferSlice::buffer(v16 + 24, v20);
      [*this setBuffer:*(v16 + 24) offset:*(v16 + 56) atIndex:2];
      re::BufferSlice::buffer(v16 + 64, v21);
      [*this setBuffer:*(v16 + 64) offset:*(v16 + 96) atIndex:3];
      [*this setBuffer:*(v16 + 120) offset:*(v16 + 112) atIndex:4];
      [*this setBuffer:*(v16 + 144) offset:*(v16 + 136) atIndex:5];
      [*this setBuffer:*(v16 + 16) offset:*(v16 + 8) atIndex:6];
      v22 = *this;
      *&v36[0] = v17;
      *(v36 + 8) = vdupq_n_s64(1uLL);
      *v33 = v11;
      *&v33[8] = *(v36 + 8);
      [v22 dispatchThreadgroups:v36 threadsPerThreadgroup:v33];
      ++v10;
    }

    while (v9 != v10);
  }

  return [*this popDebugGroup];
}

void re::JiggleDeformer::deformCPU(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) The Jiggle deformer does not support a CPU path.", "!Unreachable code", "deformCPU", 250);
  _os_crash("assertion failure: (!Unreachable code) The Jiggle deformer does not support a CPU path.");
  __break(1u);
}

re::StringID *re::JiggleDeformerModelUtil::envelopeBufferNameForJiggleDataIndex@<X0>(re::StringID *__return_ptr a1@<X8>, re::JiggleDeformerModelUtil *this@<X0>, const DeformationModelData *a3@<X1>)
{
  v3 = *(this + 80);
  if (v3 && *(v3 + 32) > a3)
  {
    return re::StringID::StringID(a1, (*(v3 + 40) + 16 * a3));
  }

  else
  {
    return re::StringID::invalid(a1);
  }
}

re::StringID *re::JiggleDeformerModelUtil::massBufferNameForJiggleDataIndex@<X0>(re::StringID *__return_ptr a1@<X8>, re::JiggleDeformerModelUtil *this@<X0>, const DeformationModelData *a3@<X1>)
{
  v3 = *(this + 80);
  if (v3 && *(v3 + 8) > a3)
  {
    return re::StringID::StringID(a1, (*(v3 + 16) + 16 * a3));
  }

  else
  {
    return re::StringID::invalid(a1);
  }
}

uint64_t re::JiggleDeformerModelUtil::computeJiggleDeformerModelSizeExcludingMetalBuffers(re::JiggleDeformerModelUtil *this, const DeformationModelData *a2)
{
  v2 = *(this + 80);
  if (!v2)
  {
    return 0;
  }

  v3 = v2[1];
  v4 = 4 * (v2[7] + v2[10]) + 16 * v3 + 120;
  if (v3)
  {
    v5 = (v2[2] + 8);
    do
    {
      if (*(v5 - 1))
      {
        v6 = strlen(*v5) + 1;
      }

      else
      {
        v6 = 0;
      }

      v4 += v6;
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  v7 = v2[4];
  v8 = v4 + 16 * v7;
  if (v7)
  {
    v9 = (v2[5] + 8);
    do
    {
      if (*(v9 - 1))
      {
        v10 = strlen(*v9) + 1;
      }

      else
      {
        v10 = 0;
      }

      v8 += v10;
      v9 += 2;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t re::internal::Callable<re::JiggleDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::operator()(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (**a2)
  {
    v3 = v2[1];
    if (v3)
    {
      v4 = 152 * v3;
      v5 = (v2[2] + 88);
      do
      {
        v6 = *v5;
        if (v6 != -1)
        {
          (off_1F5D09A88[v6])(&v9, v5 - 6);
        }

        *v5 = -1;
        v7 = *(v5 - 10);
        if (v7 != -1)
        {
          (off_1F5D09A88[v7])(&v10, v5 - 16);
        }

        *(v5 - 10) = -1;
        v5 += 38;
        v4 -= 152;
      }

      while (v4);
      result = (*(**v2 + 40))(*v2, v2[2]);
      v2[1] = 0;
      v2[2] = 0;
    }

    *v2 = 0;
  }

  return result;
}

void *re::internal::Callable<re::JiggleDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D09A40;
  return result;
}

void *re::internal::Callable<re::JiggleDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D09A40;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_14JiggleDeformerENS2_19JiggleDeformerModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE7__cloneEPNS0_6__baseISI_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D09AA8;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_14JiggleDeformerENS2_19JiggleDeformerModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISF_EEFvSE_EEclEOSE_(uint64_t result, uint64_t **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 12);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 9);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 6);
    re::FixedArray<re::StringID>::deinit(v2 + 3);
    re::FixedArray<re::StringID>::deinit(v2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_14JiggleDeformerENS2_19JiggleDeformerModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_anonymous_namespace_ *re::BucketArray<unsigned long,64ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<unsigned long,64ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<unsigned long,64ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < a2 << 6)
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
        v5 = (*(**v3 + 32))(*v3, 512, 0);
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

_anonymous_namespace_ *re::BucketArray<re::JiggleDeformer::DynamicsState,64ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::JiggleDeformer::DynamicsState,64ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::JiggleDeformer::DynamicsState,64ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 1024, 0);
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

uint64_t re::BucketArray<unsigned long,64ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > v3 << 6)
  {
    re::BucketArray<unsigned long,64ul>::setBucketsCapacity(a1, (v2 + 64) >> 6);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 6)
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
    v16 = v2 >> 6;
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

  v5 = *(v4 + 8 * (v2 >> 6));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 8 * (v2 & 0x3F);
}

uint64_t re::LateLatch::shouldApplyHeadPoseLateLatching(re::LateLatch *this)
{
  {
    re::Defaults::BOOLValue(&v10, "enableHeadPoseLateLatching", v7);
    if (v10)
    {
      v8 = BYTE1(v10);
    }

    else
    {
      v8 = 1;
    }

    re::LateLatch::shouldApplyHeadPoseLateLatching(void)::kEnable = v8;
  }

  v9[0] = 0x95A75B43D56D48D6;
  v9[1] = "overrides:enableHeadPoseLateLatching";
  v2 = re::s_debugSettingsManager;
  if (re::s_debugSettingsManager && (LOBYTE(v10) = 0, v2 = re::DebugSettingsManager::getWithErrorCode<BOOL>(re::s_debugSettingsManager, v9, &v10), !v2))
  {
    v1 = v10;
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = re::LateLatch::shouldApplyHeadPoseLateLatching(void)::kEnable;
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  if (v3)
  {
    v5 = v1;
  }

  else
  {
    v5 = v4;
  }

  return v5 & 1;
}

uint64_t re::LateLatch::shouldApplyAnchorLateLatching(re::LateLatch *this)
{
  {
    re::Defaults::BOOLValue(&v10, "enableAnchorLateLatching", v7);
    if (v10)
    {
      v8 = BYTE1(v10);
    }

    else
    {
      v8 = 1;
    }

    re::LateLatch::shouldApplyAnchorLateLatching(void)::kEnable = v8;
  }

  v9[0] = 0x2BE47D8679B6881ELL;
  v9[1] = "overrides:enableAnchorLateLatching";
  v2 = re::s_debugSettingsManager;
  if (re::s_debugSettingsManager && (LOBYTE(v10) = 0, v2 = re::DebugSettingsManager::getWithErrorCode<BOOL>(re::s_debugSettingsManager, v9, &v10), !v2))
  {
    v1 = v10;
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = re::LateLatch::shouldApplyAnchorLateLatching(void)::kEnable;
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  if (v3)
  {
    v5 = v1;
  }

  else
  {
    v5 = v4;
  }

  return v5 & 1;
}

uint64_t re::LateLatch::shouldUseLegacyCodepathForHeadPoseLateLatching(re::LateLatch *this)
{
  {
    re::Defaults::BOOLValue(&v10, "useLegacyHeadPoseLateLatching", v7);
    if (v10)
    {
      v8 = BYTE1(v10);
    }

    else
    {
      v8 = 0;
    }

    re::LateLatch::shouldUseLegacyCodepathForHeadPoseLateLatching(void)::kEnable = v8;
  }

  v9[0] = 0x4B73D1551D23FEA4;
  v9[1] = "overrides:useLegacyHeadPoseLateLatching";
  v2 = re::s_debugSettingsManager;
  if (re::s_debugSettingsManager && (LOBYTE(v10) = 0, v2 = re::DebugSettingsManager::getWithErrorCode<BOOL>(re::s_debugSettingsManager, v9, &v10), !v2))
  {
    v1 = v10;
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = re::LateLatch::shouldUseLegacyCodepathForHeadPoseLateLatching(void)::kEnable;
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  if (v3)
  {
    v5 = v1;
  }

  else
  {
    v5 = v4;
  }

  return v5 & 1;
}

uint64_t re::LateLatch::shouldApplyVisualDepthLateLatching(re::LateLatch *this)
{
  {
    re::Defaults::BOOLValue(&v10, "enableVisualDepthLateLatching", v7);
    if (v10)
    {
      v8 = BYTE1(v10);
    }

    else
    {
      v8 = 1;
    }

    re::LateLatch::shouldApplyVisualDepthLateLatching(void)::kEnable = v8;
  }

  v9[0] = 0x9D6295447F5A27A2;
  v9[1] = "overrides:enableVisualDepthLateLatching";
  v2 = re::s_debugSettingsManager;
  if (re::s_debugSettingsManager && (LOBYTE(v10) = 0, v2 = re::DebugSettingsManager::getWithErrorCode<BOOL>(re::s_debugSettingsManager, v9, &v10), !v2))
  {
    v1 = v10;
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = re::LateLatch::shouldApplyVisualDepthLateLatching(void)::kEnable;
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  if (v3)
  {
    v5 = v1;
  }

  else
  {
    v5 = v4;
  }

  return v5 & 1;
}

void re::ViewConstantsLateLatch::copyOriginalViewConstants(uint64_t a1, __int128 *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  shouldApplyHeadPoseLateLatching = re::LateLatch::shouldApplyHeadPoseLateLatching(a1);
  if (shouldApplyHeadPoseLateLatching)
  {
    if (re::LateLatch::shouldUseLegacyCodepathForHeadPoseLateLatching(shouldApplyHeadPoseLateLatching))
    {
      memcpy(v10, a2, sizeof(v10));
      if (*a1)
      {
        memmove((a1 + 256), a2, 0x400uLL);
      }

      else
      {
        *a1 = 1;
        memcpy((a1 + 256), v10, 0x400uLL);
      }
    }

    else
    {
      v5 = a2[33];
      v9[0] = a2[32];
      v9[1] = v5;
      v6 = a2[35];
      v9[2] = a2[34];
      v9[3] = v6;
      v7 = a2[37];
      v9[4] = a2[36];
      v9[5] = v7;
      v8 = a2[39];
      v9[6] = a2[38];
      v9[7] = v8;
      re::DynamicArray<re::FixedInlineArray<re::Matrix4x4<float>,2ul>>::add((a1 + 1360), v9);
    }
  }
}

__n128 re::DynamicArray<re::FixedInlineArray<re::Matrix4x4<float>,2ul>>::add(_anonymous_namespace_ *this, __int128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::FixedInlineArray<re::Matrix4x4<float>,2ul>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + (v4 << 7);
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  *(v5 + 32) = a2[2];
  *(v5 + 48) = v8;
  *v5 = v6;
  *(v5 + 16) = v7;
  result = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  *(v5 + 96) = a2[6];
  *(v5 + 112) = v11;
  *(v5 + 64) = result;
  *(v5 + 80) = v10;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

re::LateLatch *re::ViewConstantsLateLatch::trackViewConstantsBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = re::LateLatch::shouldApplyHeadPoseLateLatching(a1);
  if (!result)
  {
    return result;
  }

  result = re::LateLatch::shouldUseLegacyCodepathForHeadPoseLateLatching(result);
  v8 = *a4;
  v9 = a4[1];
  if (!result)
  {
    if (!v9)
    {
      return result;
    }

    v21 = 16 * v9;
    for (i = (v8 + 12); ; i += 4)
    {
      if (*(i - 3) != 1)
      {
        goto LABEL_45;
      }

      v23 = *(i - 2);
      if (v23)
      {
        if (v23 > 0x100)
        {
          if (v23 > 0x300)
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            goto LABEL_37;
          }

          v25 = 0;
          v26 = 0;
          v28 = *i + v23;
          goto LABEL_35;
        }

        v26 = 0;
        v27 = *i;
      }

      else
      {
        v27 = *i;
        if (*i >= 0x80)
        {
          v26 = a2 + *(i - 1);
        }

        else
        {
          v26 = 0;
        }
      }

      v28 = v27 + v23;
      if (v28 < 0x180)
      {
        v24 = 0;
        v25 = 0;
        goto LABEL_37;
      }

      v25 = a2 + 256 - v23 + *(i - 1);
LABEL_35:
      if (v28 < 0x320)
      {
        v24 = 0;
LABEL_37:
        v29 = 0;
        if (v26)
        {
          goto LABEL_42;
        }

        goto LABEL_40;
      }

      v24 = a2 + 768 - v23 + *(i - 1);
      v29 = v24 != 0;
      if (v26)
      {
        goto LABEL_42;
      }

LABEL_40:
      if (v25 || v29)
      {
LABEL_42:
        v30 = *(a1 + 1376);
        v31 = *(a1 + 1336);
        if (v31 >= *(a1 + 1328))
        {
          result = re::DynamicArray<re::ViewConstantsLateLatch::LateLatchEntry>::growCapacity((a1 + 1320), v31 + 1);
          v31 = *(a1 + 1336);
        }

        v32 = *(a1 + 1352) + 32 * v31;
        *v32 = v26;
        *(v32 + 8) = v25;
        *(v32 + 16) = v24;
        *(v32 + 24) = v30 - 1;
        *(a1 + 1336) = v31 + 1;
        ++*(a1 + 1344);
      }

LABEL_45:
      v21 -= 16;
      if (!v21)
      {
        return result;
      }
    }
  }

  if (v9)
  {
    v10 = 16 * v9;
    v11 = (v8 + 8);
    do
    {
      if (*(v11 - 2) == 1)
      {
        v13 = *(v11 - 1);
        v12 = *v11;
        v14 = v11[1];
        v15 = *(a1 + 1296);
        v16 = *(a1 + 1288);
        if (v15 >= v16)
        {
          v17 = v15 + 1;
          if (v16 < v15 + 1)
          {
            if (*(a1 + 1280))
            {
              v18 = 2 * v16;
              if (!v16)
              {
                v18 = 8;
              }

              if (v18 <= v17)
              {
                v19 = v17;
              }

              else
              {
                v19 = v18;
              }

              result = re::DynamicArray<re::ViewConstantsLateLatch::LegacyPatchCommand>::setCapacity((a1 + 1280), v19);
            }

            else
            {
              result = re::DynamicArray<re::ViewConstantsLateLatch::LegacyPatchCommand>::setCapacity((a1 + 1280), v17);
              ++*(a1 + 1304);
            }
          }

          v15 = *(a1 + 1296);
        }

        v20 = *(a1 + 1312) + 16 * v15;
        *v20 = a2 + v12;
        *(v20 + 8) = v13;
        *(v20 + 12) = v14;
        *(a1 + 1296) = v15 + 1;
        ++*(a1 + 1304);
      }

      v11 += 4;
      v10 -= 16;
    }

    while (v10);
  }

  return result;
}

double re::ViewConstantsLateLatch::trackViewConstantsBuffer(_DWORD *a1, uint64_t a2)
{
  if (re::LateLatch::shouldApplyHeadPoseLateLatching(a1))
  {
    v5 = a1[344] - 1;
    v6[0] = a2;
    v6[1] = a2 + 256;
    v6[2] = a2 + 768;
    v7 = v5;
    *&result = re::DynamicArray<re::ViewConstantsLateLatch::LateLatchEntry>::add((a1 + 330), v6).n128_u64[0];
  }

  return result;
}

__n128 re::DynamicArray<re::ViewConstantsLateLatch::LateLatchEntry>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::ViewConstantsLateLatch::LateLatchEntry>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 32 * v4);
  result = *a2;
  v7 = *(a2 + 16);
  *v5 = *a2;
  v5[1] = v7;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::ViewConstantsLateLatch::patchTrackedViewConstantsBuffers(void *a1, float32x4_t *a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 __dst, __int128 a30, __int128 a31, __int128 a32, __int128 a33, __int128 a34, __int128 a35, __int128 a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  LODWORD(v53) = a4;
  STACK[0xE98] = *MEMORY[0x1E69E9840];
  shouldApplyHeadPoseLateLatching = re::LateLatch::shouldApplyHeadPoseLateLatching(a1);
  if (shouldApplyHeadPoseLateLatching)
  {
    v58 = a1[172] && a1[167] != 0;
    i = (*a1 == 1 && (a1[162] != 0));
    shouldUseLegacyCodepathForHeadPoseLateLatching = re::LateLatch::shouldUseLegacyCodepathForHeadPoseLateLatching(shouldApplyHeadPoseLateLatching);
    v61 = shouldUseLegacyCodepathForHeadPoseLateLatching ? i : v58;
    if (v61 == 1)
    {
      if (re::LateLatch::shouldUseLegacyCodepathForHeadPoseLateLatching(shouldUseLegacyCodepathForHeadPoseLateLatching))
      {
        *&STACK[0xE30] = 0uLL;
        *&STACK[0xE40] = 0uLL;
        *&STACK[0xE10] = 0uLL;
        *&STACK[0xE20] = 0uLL;
        *&STACK[0xDF0] = 0uLL;
        *&STACK[0xE00] = 0uLL;
        *&STACK[0xDD0] = 0uLL;
        *&STACK[0xDE0] = 0uLL;
        memcpy(&__dst, a1 + 32, 0x400uLL);
        if (*(a3 + 8) >= v53)
        {
          v64 = v53;
        }

        else
        {
          v64 = *(a3 + 8);
        }

        if (v64)
        {
          v53 = 0;
          i = &STACK[0xD90];
          while (v53 != 2)
          {
            v65 = &STACK[0xAA0] + 8 * v53;
            v66 = &STACK[0xDD0] + 8 * v53;
            v67 = *(v65 + 1);
            *v66 = *v65;
            *(v66 + 1) = v67;
            v68 = *(v65 + 3);
            *(v66 + 2) = *(v65 + 2);
            *(v66 + 3) = v68;
            v69 = *(a3 + 8);
            if (v69 <= v53)
            {
              goto LABEL_68;
            }

            v70 = 0;
            v71 = *a2;
            v71.i32[3] = 1.0;
            v72 = *(*a3 + (v53 << 6));
            *&STACK[0xD90] = xmmword_1E3047670;
            *&STACK[0xDA0] = xmmword_1E3047680;
            *&STACK[0xDB0] = xmmword_1E30476A0;
            *&STACK[0xDC0] = v71;
            do
            {
              *(&STACK[0xE50] + v70) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v72.columns[0], COERCE_FLOAT(*(&STACK[0xD90] + v70))), v72.columns[1], *(&STACK[0xD90] + v70), 1), v72.columns[2], *(&STACK[0xD90] + v70), 2), v72.columns[3], *(&STACK[0xD90] + v70), 3);
              v70 += 16;
            }

            while (v70 != 64);
            v73 = 0;
            v74 = *&STACK[0xE50];
            v75 = *&STACK[0xE60];
            v76 = *&STACK[0xE70];
            v77 = *&STACK[0xE80];
            v78 = &__dst + 4 * v53;
            *v78 = *&STACK[0xE50];
            v78[1] = v75;
            v78[2] = v76;
            v78[3] = v77;
            v79 = *v66;
            v80 = *(v66 + 1);
            v81 = *(v66 + 2);
            v82 = *(v66 + 3);
            *&STACK[0xD90] = v74;
            *&STACK[0xDA0] = v75;
            *&STACK[0xDB0] = v76;
            *&STACK[0xDC0] = v77;
            do
            {
              *(&STACK[0xE50] + v73) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v79, COERCE_FLOAT(*(&STACK[0xD90] + v73))), v80, *(&STACK[0xD90] + v73), 1), v81, *(&STACK[0xD90] + v73), 2), v82, *(&STACK[0xD90] + v73), 3);
              v73 += 16;
            }

            while (v73 != 64);
            v83 = *&STACK[0xE60];
            v84 = *&STACK[0xE70];
            v85 = *&STACK[0xE80];
            v86 = &a53 + 8 * v53;
            *v86 = *&STACK[0xE50];
            *(v86 + 1) = v83;
            *(v86 + 2) = v84;
            *(v86 + 3) = v85;
            v140 = __invert_f4(v72);
            *(&STACK[0xBA0] + v53) = vsubq_f32(v140.columns[3], *a2);
            v53 = (v53 + 1);
            if (v53 == v64)
            {
              goto LABEL_25;
            }
          }

          goto LABEL_65;
        }

LABEL_25:
        v87 = a1[162];
        if (v87)
        {
          v88 = a1[164];
          v89 = v88 + 16 * v87;
          do
          {
            memcpy(*v88, &__dst + *(v88 + 8), *(v88 + 12));
            v88 += 16;
          }

          while (v88 != v89);
        }
      }

      else
      {
        a35 = 0uLL;
        a36 = 0uLL;
        a33 = 0uLL;
        a34 = 0uLL;
        a31 = 0uLL;
        a32 = 0uLL;
        __dst = 0uLL;
        a30 = 0uLL;
        *&STACK[0xD90] = 0uLL;
        *&STACK[0xDA0] = 0uLL;
        if (*(a3 + 8) >= v53)
        {
          v53 = v53;
        }

        else
        {
          v53 = *(a3 + 8);
        }

        if (v53)
        {
          for (i = 0; i != v53; i = (i + 1))
          {
            v90 = *(a3 + 8);
            if (v90 <= i)
            {
              goto LABEL_66;
            }

            v91 = 0;
            v92 = *a2;
            v92.i32[3] = 1.0;
            v93 = *(*a3 + (i << 6));
            *&STACK[0xE50] = xmmword_1E3047670;
            *&STACK[0xE60] = xmmword_1E3047680;
            *&STACK[0xE70] = xmmword_1E30476A0;
            *&STACK[0xE80] = v92;
            do
            {
              *(&STACK[0xDD0] + v91) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v93.columns[0], COERCE_FLOAT(*(&STACK[0xE50] + v91))), v93.columns[1], *(&STACK[0xE50] + v91), 1), v93.columns[2], *(&STACK[0xE50] + v91), 2), v93.columns[3], *(&STACK[0xE50] + v91), 3);
              v91 += 16;
            }

            while (v91 != 64);
            if (i == 2)
            {
LABEL_67:
              re::internal::assertLog(6, v62, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, 2, 2);
              _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v129, v136);
              __break(1u);
LABEL_68:
              re::internal::assertLog(6, v63, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v53, v69);
              _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v130, v137);
              __break(1u);
            }

            v94 = *&STACK[0xDE0];
            v95 = *&STACK[0xDF0];
            v96 = *&STACK[0xE00];
            v97 = &__dst + 4 * i;
            *v97 = *&STACK[0xDD0];
            v97[1] = v94;
            v97[2] = v95;
            v97[3] = v96;
            v141 = __invert_f4(v93);
            *(&STACK[0xD90] + i) = vsubq_f32(v141.columns[3], *a2);
          }
        }

        v98 = a1[167];
        if (v98)
        {
          v99 = a1[169];
          v100 = v99 + 32 * v98;
          do
          {
            if (v53)
            {
              for (j = 0; j != v53; ++j)
              {
                v102 = &__dst + 4 * j;
                if (*v99)
                {
                  if (j >= 2)
                  {
                    re::internal::assertLog(6, v62, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, j, 2);
                    _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v124, v131);
                    __break(1u);
LABEL_59:
                    a28 = 0;
                    *&STACK[0xE00] = 0u;
                    *&STACK[0xE10] = 0u;
                    *&STACK[0xDE0] = 0u;
                    *&STACK[0xDF0] = 0u;
                    *&STACK[0xDD0] = 0u;
                    v121 = MEMORY[0x1E69E9C10];
                    v122 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    LODWORD(STACK[0xE50]) = 136315906;
                    STACK[0xE54] = "operator[]";
                    LOWORD(STACK[0xE5C]) = 1024;
                    if (v122)
                    {
                      v123 = 3;
                    }

                    else
                    {
                      v123 = 2;
                    }

                    LODWORD(STACK[0xE5E]) = 797;
                    LOWORD(STACK[0xE62]) = 2048;
                    STACK[0xE64] = a3;
                    LOWORD(STACK[0xE6C]) = 2048;
                    STACK[0xE6E] = a2;
                    _os_log_send_and_compose_impl(v123, &a28, &STACK[0xDD0], 80, &dword_1E1C61000, v121, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &STACK[0xE50], 38, v138, v139);
                    _os_crash_msg();
                    __break(1u);
LABEL_63:
                    re::internal::assertLog(6, v62, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 181, j, 2);
                    _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v125, v132);
                    __break(1u);
LABEL_64:
                    re::internal::assertLog(6, v62, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, j, 2);
                    _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v126, v133);
                    __break(1u);
LABEL_65:
                    re::internal::assertLog(6, v63, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, 2, 2);
                    _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v127, v134);
                    __break(1u);
LABEL_66:
                    re::internal::assertLog(6, v62, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, v90);
                    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v128, v135);
                    __break(1u);
                    goto LABEL_67;
                  }

                  v103 = (*v99 + (j << 6));
                  v104 = v102[1];
                  *v103 = *v102;
                  v103[1] = v104;
                  v105 = v102[3];
                  v103[2] = v102[2];
                  v103[3] = v105;
                }

                v106 = *(v99 + 8);
                if (v106)
                {
                  a3 = *(v99 + 24);
                  a2 = a1[172];
                  if (a2 <= a3)
                  {
                    goto LABEL_59;
                  }

                  if (j >= 2)
                  {
                    goto LABEL_63;
                  }

                  v107 = 0;
                  v108 = (a1[174] + (a3 << 7) + (j << 6));
                  v109 = *v108;
                  v110 = v108[1];
                  v111 = v108[2];
                  v112 = v108[3];
                  v113 = v102[1];
                  v114 = v102[2];
                  v115 = v102[3];
                  *&STACK[0xE50] = *v102;
                  *&STACK[0xE60] = v113;
                  *&STACK[0xE70] = v114;
                  *&STACK[0xE80] = v115;
                  do
                  {
                    *(&STACK[0xDD0] + v107) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v109, COERCE_FLOAT(*(&STACK[0xE50] + v107))), v110, *(&STACK[0xE50] + v107), 1), v111, *(&STACK[0xE50] + v107), 2), v112, *(&STACK[0xE50] + v107), 3);
                    v107 += 16;
                  }

                  while (v107 != 64);
                  v116 = *&STACK[0xDE0];
                  v117 = *&STACK[0xDF0];
                  v118 = *&STACK[0xE00];
                  v119 = (v106 + (j << 6));
                  *v119 = *&STACK[0xDD0];
                  v119[1] = v116;
                  v119[2] = v117;
                  v119[3] = v118;
                }

                v120 = *(v99 + 16);
                if (v120)
                {
                  if (j >= 2)
                  {
                    goto LABEL_64;
                  }

                  *(v120 + 16 * j) = *(&STACK[0xD90] + j);
                }
              }
            }

            v99 += 32;
          }

          while (v99 != v100);
        }
      }
    }
  }
}

void re::InstanceConstantsLateLatch::trackInstanceConstantsBuffer(re::LateLatch *a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned __int8 a5)
{
  if (re::LateLatch::shouldApplyAnchorLateLatching(a1))
  {
    v9 = a4[1];
    if (v9)
    {
      v10 = *a4;
      v11 = 16 * v9;
      v12 = (v10 + 8);
      do
      {
        if (*(v12 - 2) == 3 && !*(v12 - 1) && v12[1] >= 0x70)
        {
          v13.n128_u64[0] = a2 + *v12;
          v13.n128_u8[8] = a5;
          re::DynamicArray<re::InstanceConstantsLateLatch::Entry>::add(a1, &v13);
        }

        v12 += 4;
        v11 -= 16;
      }

      while (v11);
    }
  }
}

__n128 re::DynamicArray<re::InstanceConstantsLateLatch::Entry>::add(_anonymous_namespace_ *this, __n128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::InstanceConstantsLateLatch::Entry>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = *a2;
  *(*(this + 4) + 16 * v4) = *a2;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

double re::InstanceConstantsLateLatch::patchTrackedInstanceConstantsBuffers(re::LateLatch *a1, os_unfair_lock_s *a2, uint64_t a3, float32x4_t *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  if (re::LateLatch::shouldApplyAnchorLateLatching(a1))
  {
    re::LateLatchingManager::getLateLatchPoseCorrections(a2, a3, &v29);
    v10 = *(a1 + 2);
    if (v10)
    {
      v11 = *(a1 + 4);
      v12 = &v11[16 * v10];
      do
      {
        if (v35)
        {
          v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v11[8]) ^ ((0xBF58476D1CE4E5B9 * v11[8]) >> 27));
          v9 = re::HashTable<unsigned char,re::Matrix4x4<float>,re::Hash<unsigned char>,re::EqualTo<unsigned char>,false,false>::findEntry<unsigned char>(v34, v11 + 8, v13 ^ (v13 >> 31), &buf);
          if (buf.columns[0].i32[3] == 0x7FFFFFFF)
          {
            goto LABEL_14;
          }

          v14 = (v34[2] + 80 * buf.columns[0].u32[3] + 16);
        }

        else
        {
          if (!v31)
          {
LABEL_14:
            v27 = *re::graphicsLogObjects(v9);
            v9 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
            if (v9)
            {
              v28 = v11[8];
              buf.columns[0].i32[0] = 67109120;
              buf.columns[0].i32[1] = v28;
              _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, "Failed to obtain late-latch state for anchor ID '%u'", &buf, 8u);
            }

            goto LABEL_16;
          }

          v26 = 80 * v31;
          v14 = &v33;
          while (v14[-1].u8[0] != v11[8])
          {
            v14 += 5;
            v26 -= 80;
            if (!v26)
            {
              goto LABEL_14;
            }
          }
        }

        v15 = 0;
        v16 = *v11;
        v17 = *(*v11 + 32);
        v18 = vaddq_f32(*(*v11 + 48), *a4);
        v18.i32[3] = HIDWORD(*(*v11 + 48));
        *(v16 + 48) = v18;
        v19 = *v14;
        v20 = v14[1];
        v21 = v14[2];
        v22 = v14[3];
        v23 = *(v16 + 16);
        v36[0] = *v16;
        v36[1] = v23;
        v36[2] = v17;
        v36[3] = v18;
        do
        {
          buf.columns[v15] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, COERCE_FLOAT(v36[v15])), v20, *&v36[v15], 1), v21, v36[v15], 2), v22, v36[v15], 3);
          ++v15;
        }

        while (v15 != 4);
        v40 = buf;
        v24 = v38;
        *v16 = buf.columns[0];
        *(v16 + 16) = v40.columns[1];
        *(v16 + 32) = v40.columns[2];
        *(v16 + 48) = v24;
        v25 = vsubq_f32(v24, *a4);
        v25.i32[3] = v24.i32[3];
        *(v16 + 48) = v25;
        v41 = __invert_f3(v40);
        *(v16 + 72) = v41.columns[2].i32[0];
        *(v16 + 88) = v41.columns[2].i32[1];
        *(v16 + 104) = v41.columns[2].i32[2];
        *(v16 + 64) = vzip1q_s32(v41.columns[0], v41.columns[1]).u64[0];
        *(v16 + 80) = vtrn2q_s32(v41.columns[0], v41.columns[1]).u64[0];
        *(v16 + 96) = vzip1q_s32(vdupq_laneq_s32(v41.columns[0], 2), vdupq_laneq_s32(v41.columns[1], 2)).u64[0];
LABEL_16:
        v11 += 16;
      }

      while (v11 != v12);
    }

    v31 = 0;
    ++v32;
    re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v34);
    v29 = 0;
    v30 = 0;
    return re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v34);
  }

  return result;
}

re::VFXLateLatch *re::VFXLateLatch::VFXLateLatch(re::VFXLateLatch *this, re::Allocator *a2)
{
  *(this + 4) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *this = a2;
  re::DynamicArray<re::PatchHandler>::setCapacity(this, 0);
  ++*(this + 6);
  if (*(this + 1) <= 0x1FuLL)
  {
    re::DynamicArray<re::PatchHandler>::setCapacity(this, 0x20uLL);
  }

  return this;
}

__n128 re::DynamicArray<re::PatchHandler>::add(_anonymous_namespace_ *this, __n128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::PatchHandler>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = *a2;
  *(*(this + 4) + 16 * v4) = *a2;
  *(this + 2) = v4 + 1;
  ++*(this + 6);
  return result;
}

uint64_t re::VFXLateLatch::patchTrackedVFXDrawCalls(re::LateLatch *a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  result = re::LateLatch::shouldApplyHeadPoseLateLatching(a1);
  if (result)
  {
    v9 = *(a1 + 2);
    if (v9)
    {
      v10 = (*(a1 + 4) + 8);
      v11 = 16 * v9;
      do
      {
        v12 = *v10;
        if (*v10)
        {
          result = *v12;
          if (*v12)
          {
            result = (*(result + 16))(result, a3, a4, *a2);
          }
        }

        v10 += 2;
        v11 -= 16;
      }

      while (v11);
    }
  }

  return result;
}

uint64_t re::VisualDepthLateLatch::patchCameraMatrix(re::LateLatch *a1, uint64_t a2, int a3)
{
  result = re::LateLatch::shouldApplyVisualDepthLateLatching(a1);
  if (result)
  {
    v7 = *(a1 + 3);
    if (v7)
    {
      v8 = *(a1 + 5);
      v9 = 40 * v7;
      v10 = (v8 + 32);
      do
      {
        v13 = a2;
        v12 = a3;
        v11 = *v10;
        v10 += 5;
        result = (*(*v11 + 16))(v11, &v13, &v12);
        v9 -= 40;
      }

      while (v9);
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::FixedInlineArray<re::Matrix4x4<float>,2ul>>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::FixedInlineArray<re::Matrix4x4<float>,2ul>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::FixedInlineArray<re::Matrix4x4<float>,2ul>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::ViewConstantsLateLatch::LateLatchEntry>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::ViewConstantsLateLatch::LateLatchEntry>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ViewConstantsLateLatch::LateLatchEntry>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::InstanceConstantsLateLatch::Entry>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::ViewConstantsLateLatch::LegacyPatchCommand>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ViewConstantsLateLatch::LegacyPatchCommand>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::PatchHandler>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::PatchHandler>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v14, v16);
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_15;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v15, v17);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_15:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 16 * v9;
        v11 = v7;
        v12 = v5[4];
        do
        {
          v13 = *v12++;
          *v11++ = v13;
          v10 -= 16;
        }

        while (v10);
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_15;
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::PatchHandler>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::PatchHandler>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::PatchHandler>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::Function<void ()(re::Matrix4x4<float> const*,unsigned int)>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Function<void ()(re::Matrix4x4<float> const*,unsigned int)>>::setCapacity(v5, a2);
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
              goto LABEL_28;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v18, v20);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v19, v21);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_28:
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
          if (v8 != v11)
          {
            re::FunctionBase<24ul,void ()(re::Matrix4x4<float> const*,unsigned int)>::destroyCallable(v11);
            v12 = *(v8 + 32);
            if (*(v11 + 24) != *(v8 + 24) || v8 == v12)
            {
              if (v12)
              {
                v14 = (*(*v12 + 40))(v12);
                v15 = v11;
                if (v14 >= 0x19)
                {
                  v16 = v14;
                  v17 = *(v11 + 24);
                  if (v17)
                  {
                    v15 = (*(*v17 + 32))(v17, v16, 0);
                  }

                  else
                  {
                    v15 = 0;
                  }
                }

                *(v11 + 32) = v15;
                (*(**(v8 + 32) + 32))(*(v8 + 32));
                re::FunctionBase<24ul,void ()(re::Matrix4x4<float> const*,unsigned int)>::destroyCallable(v8);
              }
            }

            else
            {
              *(v11 + 32) = v12;
              *(v8 + 32) = 0;
            }
          }

          re::FunctionBase<24ul,void ()(re::Matrix4x4<float> const*,unsigned int)>::destroyCallable(v8);
          v8 += 40;
          v11 += 40;
          v10 -= 40;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_28;
    }
  }

  return result;
}

void *re::MeshBoundingBoxes::init(uint64_t a1, uint64_t a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  *a1 = *a3;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  v5 = (a1 + 16);
  v6 = re::DynamicOverflowArray<unsigned int,8ul>::setCapacity((a1 + 16), 0);
  v7 = *(a1 + 32) + 2;
  *(a1 + 32) = v7;
  v8 = a3[1];
  v9 = *(a1 + 24);
  if (v9 < v8)
  {
    if (*v5)
    {
      if ((v7 & 1) == 0)
      {
LABEL_4:
        v10 = *(a1 + 40);
LABEL_9:
        if (v10 < v8)
        {
          re::DynamicOverflowArray<unsigned int,8ul>::setCapacity(v5, v8);
        }

        v12 = *(a1 + 24);
        if (v12 < v8)
        {
          do
          {
            v13 = a1 + 40;
            if ((*(a1 + 32) & 1) == 0)
            {
              v13 = *(a1 + 48);
            }

            *(v13 + 4 * v12++) = 0;
          }

          while (v8 != v12);
        }

        goto LABEL_15;
      }
    }

    else
    {
      re::DynamicOverflowArray<unsigned int,8ul>::setCapacity(v5, v8);
      v11 = *(a1 + 32) + 2;
      *(a1 + 32) = v11;
      if ((v11 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v10 = 8;
    goto LABEL_9;
  }

  if (v9 > v8)
  {
LABEL_15:
    *(a1 + 24) = v8;
    v7 = *(a1 + 32) + 2;
    *(a1 + 32) = v7;
    v8 = a3[1];
  }

  if (v8 <= 0x40)
  {
    v14 = 4 * v8;
  }

  else
  {
    v14 = 256;
  }

  if (v7)
  {
    v15 = (a1 + 40);
  }

  else
  {
    v15 = *(a1 + 48);
  }

  if (a3[1] >= 0x41uLL)
  {
    v17 = 128;
    v18 = 64;
    do
    {
      v19 = *(a1 + 24);
      if (v19 <= v18)
      {
        v24 = 0;
        memset(v33, 0, sizeof(v33));
        v21 = MEMORY[0x1E69E9C10];
        v25 = 136315906;
        v26 = "operator[]";
        v27 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v22 = 3;
        }

        else
        {
          v22 = 2;
        }

        v28 = 858;
        v29 = 2048;
        v30 = v18;
        v31 = 2048;
        v32 = v19;
        _os_log_send_and_compose_impl(v22, &v24, v33, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
        _os_crash_msg();
        __break(1u);
      }

      v20 = a1 + 40;
      if ((*(a1 + 32) & 1) == 0)
      {
        v20 = *(a1 + 48);
      }

      *(v20 + 4 * v18++) = v17;
      v17 += 2;
    }

    while (v18 < a3[1]);
  }

  return result;
}

uint64_t re::MeshScene::meshSceneBoundingBox@<X0>(uint64_t this@<X0>, uint64_t a2@<X1>, float32x4_t *a3@<X8>)
{
  v3 = a3;
  v51 = *MEMORY[0x1E69E9840];
  v4.i64[0] = 0x7F0000007FLL;
  v4.i64[1] = 0x7F0000007FLL;
  *a3 = vnegq_f32(v4);
  a3[1] = v4;
  v5 = *(this + 112);
  if (v5)
  {
    v6 = *(v5 + 24);
    if (v6)
    {
      v28[0] = *v5;
      v7 = *(this + 8);
      v28[1] = *(v5 + 8);
      v29[0] = 0;
      v29[1] = v7;
      v30 = xmmword_1E3047670;
      v31 = xmmword_1E3047680;
      v32 = xmmword_1E30476A0;
      v33 = xmmword_1E30474D0;
      v34 = 0;
      v35 = 0;
      if (!*(this + 56))
      {
        v9 = v29;
        v8 = 1;
        *&v36 = v29;
        *(&v36 + 1) = 1;
        goto LABEL_7;
      }

      v36 = *(this + 48);
      v8 = *(&v36 + 1);
      if (*(&v36 + 1))
      {
        v9 = v36;
LABEL_7:
        v10 = 0;
        v11 = *(v5 + 32);
        v12.i64[0] = 0x7F0000007FLL;
        v12.i64[1] = 0x7F0000007FLL;
        v13 = vnegq_f32(v12);
        v14 = v9 + 1;
        while (v6 != v10)
        {
          v15 = v5 + 40;
          if ((v11 & 1) == 0)
          {
            v15 = *(v5 + 48);
          }

          if (v8 <= v10)
          {
            goto LABEL_21;
          }

          v26 = v13;
          v27 = v12;
          this = re::AABB::transform(v28[*(v15 + 4 * v10) & 1] + ((16 * *(v15 + 4 * v10)) & 0xFFFFFFFE0), v14, &v46);
          v16 = v26;
          v16.i32[3] = 0;
          v17 = v46;
          v18 = v47;
          v17.i32[3] = 0;
          v13 = vminnmq_f32(v16, v17);
          v19 = v27;
          v19.i32[3] = 0;
          v18.i32[3] = 0;
          v12 = vmaxnmq_f32(v19, v18);
          ++v10;
          v14 += 6;
          if (v8 == v10)
          {
            goto LABEL_15;
          }
        }

        *v3 = v13;
        v3[1] = v12;
        v37 = 0;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v46 = 0u;
        v3 = MEMORY[0x1E69E9C10];
        v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v38 = 136315906;
        v39 = "operator[]";
        v40 = 1024;
        if (v20)
        {
          v21 = 3;
        }

        else
        {
          v21 = 2;
        }

        v41 = 866;
        v42 = 2048;
        v43 = v6;
        v44 = 2048;
        v45 = v6;
        _os_log_send_and_compose_impl(v21, &v37, &v46, 80, &dword_1E1C61000, v3, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v38, 38, v24, v25);
        _os_crash_msg();
        __break(1u);
LABEL_21:
        *v3 = v13;
        v3[1] = v12;
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v10, v8);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v23);
        __break(1u);
      }

      v12.i64[0] = 0x7F0000007FLL;
      v12.i64[1] = 0x7F0000007FLL;
      v13 = vnegq_f32(v12);
LABEL_15:
      *v3 = v13;
      v3[1] = v12;
    }
  }

  return this;
}

void *re::MeshScene::setRenderModel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 56);
  if (v7 == 1)
  {
    v8 = a4;
    v9 = *(a3 + 64);
    v10 = (*(*a2 + 32))(a2, 8, 8);
    *v10 = v9;
    *a1 = v10;
    *(a1 + 8) = 1;
    if (v8)
    {
      v25 = v9 + 416;
      v26 = 1;
      v11 = (*(*a2 + 32))(a2, 72, 8);
      *v11 = 0u;
      *(v11 + 16) = 0u;
      *(v11 + 32) = 1;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      re::MeshBoundingBoxes::init(v11, a2, &v25);
      *(a1 + 112) = v11;
      v12 = *(v9 + 432);
      *(a1 + 80) = *(v9 + 416);
      *(a1 + 96) = v12;
      *(a1 + 120) = v11;
    }
  }

  else
  {
    v13 = (*(*a2 + 32))(a2, 24, 8, a4);
    v13[1] = 0;
    v13[2] = 0;
    *v13 = 0;
    re::FixedArray<re::MeshPart const*>::init<>(v13, a2, v7);
    v14 = v13[1];
    *a1 = v13[2];
    *(a1 + 8) = v14;
    v25 = a3 + 16;
    v26 = 1;
    v15 = (*(*a2 + 32))(a2, 72, 8);
    *v15 = 0u;
    *(v15 + 16) = 0u;
    *(v15 + 32) = 1;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    re::MeshBoundingBoxes::init(v15, a2, &v25);
    *(a1 + 112) = v15;
    v16 = *(a3 + 56);
    v17 = (*(*a2 + 32))(a2, 40, 8);
    *(v17 + 32) = 0;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    *v17 = a2;
    re::DynamicArray<re::AABB>::setCapacity(v17, v16);
    ++*(v17 + 24);
    v18 = *(a3 + 56);
    if (v18)
    {
      v19 = 544 * v18;
      v20 = *(a3 + 64) + 416;
      do
      {
        re::DynamicArray<re::AABB>::add(v17, v20);
        v20 += 544;
        v19 -= 544;
      }

      while (v19);
    }

    v21 = *(v17 + 16);
    v25 = *(v17 + 32);
    v26 = v21;
    v22 = (*(*a2 + 32))(a2, 72, 8);
    *v22 = 0u;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 1;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    re::MeshBoundingBoxes::init(v22, a2, &v25);
    *(a1 + 120) = v22;
    v23 = *(a3 + 32);
    *(a1 + 80) = *(a3 + 16);
    *(a1 + 96) = v23;
  }

  result = (*(*a2 + 32))(a2, 8, 8);
  *result = a3 + 80;
  *(a1 + 64) = result;
  *(a1 + 72) = 1;
  return result;
}

void *re::MeshScene::setRenderModelHandles(float32x4_t *a1, uint64_t a2, uint64_t a3, uint64_t **a4, char a5)
{
  v7 = a4[1];
  if (v7)
  {
    v9 = 0;
    v10 = *a4;
    v11 = 8 * v7;
    do
    {
      v12 = *v10++;
      v9 += *(re::DataArray<re::MeshModel>::get(a3 + 8, v12) + 56);
      v11 -= 8;
    }

    while (v11);
    v13 = a4[1];
  }

  else
  {
    v13 = 0;
    v9 = 0;
  }

  v14 = (*(*a2 + 32))(a2, 40, 8);
  *(v14 + 32) = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *v14 = a2;
  re::DynamicArray<float *>::setCapacity(v14, v9);
  ++*(v14 + 24);
  v15 = (*(*a2 + 32))(a2, 40, 8);
  *(v15 + 32) = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *v15 = a2;
  re::DynamicArray<re::RigJoint>::setCapacity(v15, v13);
  ++*(v15 + 24);
  v16 = (*(*a2 + 32))(a2, 40, 8);
  *(v16 + 32) = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  v53 = a2;
  *v16 = a2;
  v51 = v13;
  result = re::DynamicArray<float *>::setCapacity(v16, v13);
  ++*(v16 + 24);
  v55 = a4;
  v18 = a4[1];
  if (v18)
  {
    v19 = *a4;
    v20 = &(*v55)[v18];
    do
    {
      v21 = *(v14 + 16);
      v22 = re::DataArray<re::MeshModel>::get(a3 + 8, *v19);
      v23 = v22;
      v24 = *(v22 + 56);
      if (v24)
      {
        v25 = *(v22 + 64);
        v26 = 544 * v24;
        do
        {
          v57 = v25;
          re::DynamicArray<re::TransitionCondition *>::add(v14, &v57);
          v25 += 544;
          v26 -= 544;
        }

        while (v26);
      }

      v27 = *(v14 + 16);
      v57 = v21;
      v58 = v27;
      v59 = xmmword_1E3047670;
      v60 = xmmword_1E3047680;
      v61 = xmmword_1E30476A0;
      v62 = xmmword_1E30474D0;
      v63 = 0;
      v64 = 0;
      re::DynamicArray<re::RigJoint>::add(v15, &v57);
      v57 = v23 + 80;
      result = re::DynamicArray<re::TransitionCondition *>::add(v16, &v57);
      ++v19;
    }

    while (v19 != v20);
  }

  v28 = *(v14 + 16);
  a1->i64[0] = *(v14 + 32);
  a1->i64[1] = v28;
  v29 = *(v15 + 16);
  a1[3].i64[0] = *(v15 + 32);
  a1[3].i64[1] = v29;
  v30 = *(v16 + 16);
  a1[4].i64[0] = *(v16 + 32);
  a1[4].i64[1] = v30;
  if (a5)
  {
    v31 = (*(*v53 + 32))(v53, 40, 8);
    *(v31 + 32) = 0;
    *(v31 + 8) = 0;
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    *v31 = v53;
    re::DynamicArray<re::AABB>::setCapacity(v31, v51);
    ++*(v31 + 24);
    v32 = (*(*v53 + 32))(v53, 40, 8);
    *(v32 + 32) = 0;
    *(v32 + 8) = 0;
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    *v32 = v53;
    re::DynamicArray<re::AABB>::setCapacity(v32, v9);
    ++*(v32 + 24);
    v33 = v55[1];
    if (v33)
    {
      v34 = *v55;
      v35 = &(*v55)[v33];
      do
      {
        v36 = re::DataArray<re::MeshModel>::get(a3 + 8, *v34);
        re::DynamicArray<re::AABB>::add(v31, v36 + 16);
        v37 = *(v36 + 56);
        if (v37)
        {
          v38 = 544 * v37;
          v39 = *(v36 + 64) + 416;
          do
          {
            re::DynamicArray<re::AABB>::add(v32, v39);
            v39 += 544;
            v38 -= 544;
          }

          while (v38);
        }

        ++v34;
      }

      while (v34 != v35);
    }

    v40 = *(v31 + 16);
    v57 = *(v31 + 32);
    v58 = v40;
    v41 = (*(*v53 + 32))(v53, 72, 8);
    *v41 = 0u;
    *(v41 + 16) = 0u;
    *(v41 + 32) = 1;
    *(v41 + 40) = 0;
    *(v41 + 48) = 0;
    re::MeshBoundingBoxes::init(v41, v53, &v57);
    a1[7].i64[0] = v41;
    v42 = *(v32 + 16);
    v57 = *(v32 + 32);
    v58 = v42;
    v43 = (*(*v53 + 32))(v53, 72, 8);
    *v43 = 0u;
    *(v43 + 16) = 0u;
    *(v43 + 32) = 1;
    *(v43 + 40) = 0;
    *(v43 + 48) = 0;
    result = re::MeshBoundingBoxes::init(v43, v53, &v57);
    a1[7].i64[1] = v43;
    v44 = *(v31 + 16);
    if (v44)
    {
      v45 = *(v31 + 32);
      v46 = &v45[2 * v44];
      v47.i64[0] = 0x7F0000007FLL;
      v47.i64[1] = 0x7F0000007FLL;
      v48 = vnegq_f32(v47);
      do
      {
        v48.i32[3] = 0;
        v49 = *v45;
        v50 = v45[1];
        v45 += 2;
        v49.i32[3] = 0;
        v47.i32[3] = 0;
        v48 = vminnmq_f32(v48, v49);
        v50.i32[3] = 0;
        v47 = vmaxnmq_f32(v47, v50);
      }

      while (v45 != v46);
    }

    else
    {
      v47.i64[0] = 0x7F0000007FLL;
      v47.i64[1] = 0x7F0000007FLL;
      v48 = vnegq_f32(v47);
    }

    a1[5] = v48;
    a1[6] = v47;
  }

  return result;
}

void *re::MeshScene::setPrecomputedRenderMeshData(float32x4_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float32x4_t *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = a9;
  v23[0] = a9;
  v23[1] = a10;
  v22[0] = a11;
  v22[1] = a12;
  a1->i64[0] = a3;
  a1->i64[1] = a4;
  a1[3].i64[0] = a5;
  a1[3].i64[1] = a6;
  a1[4].i64[0] = a7;
  a1[4].i64[1] = a8;
  v15 = (*(*a2 + 32))(a2, 72, 8);
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 1;
  *(v15 + 40) = 0;
  *(v15 + 48) = 0;
  re::MeshBoundingBoxes::init(v15, a2, v23);
  a1[7].i64[0] = v15;
  v16 = (*(*a2 + 32))(a2, 72, 8);
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 1;
  *(v16 + 40) = 0;
  *(v16 + 48) = 0;
  result = re::MeshBoundingBoxes::init(v16, a2, v22);
  a1[7].i64[1] = v16;
  if (a10)
  {
    v18.i64[0] = 0x7F0000007FLL;
    v18.i64[1] = 0x7F0000007FLL;
    v19 = vnegq_f32(v18);
    do
    {
      v19.i32[3] = 0;
      v20 = *v14;
      v21 = v14[1];
      v14 += 2;
      v20.i32[3] = 0;
      v18.i32[3] = 0;
      v19 = vminnmq_f32(v19, v20);
      v21.i32[3] = 0;
      v18 = vmaxnmq_f32(v18, v21);
    }

    while (v14 != &a9[2 * a10]);
  }

  else
  {
    v18.i64[0] = 0x7F0000007FLL;
    v18.i64[1] = 0x7F0000007FLL;
    v19 = vnegq_f32(v18);
  }

  a1[5] = v19;
  a1[6] = v18;
  return result;
}

uint64_t MetalEmulation::generatePrefilteredSpecularMap(uint64_t a1, uint16x4_t a2, uint32x4_t a3)
{
  v4 = a1 + 64;
  a3.i64[0] = *(a1 + 256);
  v5 = vaddw_u16(a3, a2).u64[0];
  v6 = a2.i16[2] + *(a1 + 264);
  v7 = WORD2(v5);
  v56 = v5;
  WORD1(v5) = WORD2(v5);
  WORD2(v5) = v6;
  v65 = v5;
  *v8.f32 = MetalEmulation::getCubeDir(v5, v7, v6, *(a1 + 64));
  v67 = v8;
  v9 = MetalEmulation::hash3D(vmovl_u16(v65));
  v12 = *(v4 + 208);
  if (v12 >= 2)
  {
    v13 = 1.0 / (v12 - 1);
  }

  else
  {
    v13 = 0.0;
  }

  v14 = vmulq_f32(v67, v67);
  *&v15 = v14.f32[2] + vaddv_f32(*v14.f32);
  *v14.f32 = vrsqrte_f32(v15);
  *v14.f32 = vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32)));
  v16 = vmulq_n_f32(v67, vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32))).f32[0]);
  v17 = fminf(fmaxf(v13 * *(a1 + 268), 0.01), 1.0);
  if (v17 == 0.0)
  {
    (*(*(a1 + 56) + 184))(v16);
  }

  else
  {
    v19 = *(a1 + 276);
    v64 = v16;
    if (v16.n128_f32[2] >= -0.9999)
    {
      v20 = 1.0 / (v16.n128_f32[2] + 1.0);
      v11.f32[0] = vmuls_lane_f32(-v16.n128_f32[0], v16.n128_u64[0], 1) * v20;
      v10.f32[0] = ((-v16.n128_f32[0] * v16.n128_f32[0]) * v20) + 1.0;
      v10.i32[1] = v11.i32[0];
      v10.f32[2] = -v16.n128_f32[0];
      v11.f32[1] = (vmuls_lane_f32(-v16.n128_f32[1], v16.n128_u64[0], 1) * v20) + 1.0;
      v11.f32[2] = -v16.n128_f32[1];
      v62 = v10;
      v63 = v11;
    }

    else
    {
      v63 = xmmword_1E3047690;
      v62 = xmmword_1E30476B0;
    }

    v21 = vcvts_n_f32_u32(v9, 0x20uLL);
    v22 = (v21 * 3.1416) + (v21 * 3.1416);
    _ZF = v21 == 1.0;
    v24 = 0.0;
    if (!_ZF)
    {
      v24 = v22;
    }

    v25 = __sincosf_stret(v24);
    if (v19)
    {
      v26 = 0;
      v27.f32[0] = -v25.__sinval;
      v27.i32[1] = LODWORD(v25.__cosval);
      v61 = v27;
      v28 = 12.566 / vmuls_lane_f32(6.0 * COERCE_FLOAT(*(*(a1 + 56) + 104)), *(*(a1 + 56) + 104), 1);
      v29 = v17 * v17;
      v30 = v19;
      v60 = vnegq_f32(v64);
      v31 = v29 * v29;
      v66 = 0u;
      __asm { FMOV            V0.4S, #1.0 }

      v59 = *(&_Q0 + 1);
      *&_Q0 = 0;
      do
      {
        v68 = _Q0;
        v36 = __sincosf_stret(vcvts_n_f32_u32(__rbit32(v26), 0x20uLL) * 6.2832);
        v37 = v29 * sqrtf((v26 / v30) / (1.0 - (v26 / v30)));
        v38 = sqrtf((v37 * v37) + 1.0);
        v39 = -(v37 * v36.__sinval);
        v40.i64[1] = v59;
        v40.f32[0] = -(v37 * v36.__cosval);
        v40.f32[1] = v39;
        v41 = vmulq_n_f32(v40, 1.0 / v38);
        v42 = vmla_lane_f32(vmul_n_f32(__PAIR64__(LODWORD(v25.__sinval), LODWORD(v25.__cosval)), v41.f32[0]), v61, *v41.f32, 1);
        v43 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v63, v42, 1), v62, v42.f32[0]), v64, v41, 2);
        v44 = vmulq_f32(v64, v43);
        v45 = v44.f32[2] + vaddv_f32(*v44.f32);
        v46 = vmlaq_n_f32(v60, v43, v45 + v45);
        v47 = vmulq_f32(v64, v46);
        v48 = fminf(fmaxf(v47.f32[2] + vaddv_f32(*v47.f32), 0.0), 1.0);
        if (v48 <= 0.0)
        {
          _Q0 = v68;
        }

        else
        {
          v49 = fminf(fmaxf(v45, 0.0), 1.0);
          v57 = v46;
          v58 = v48;
          v50 = (-(v49 - (v31 * v49)) * v49) + 1.0;
          v51 = log2f((1.0 / (((v31 / (v50 * (v50 * 3.1416))) * 0.25) * v30)) / v28);
          *v52.i64 = (*(a1 + 40))(a1, v57, fminf(fmaxf((v51 * 0.5) + 1.0, 0.0), *(a1 + 4)));
          v66 = vmlaq_n_f32(v66, v52, v58);
          _Q0 = v68;
          *&_Q0 = *&v68 + v58;
        }

        ++v26;
      }

      while (v19 != v26);
    }

    else
    {
      v66 = 0u;
      *&_Q0 = 0;
    }

    v18 = vdivq_f32(v66, vdupq_lane_s32(*&_Q0, 0));
  }

  v18.i32[3] = 1.0;
  v53 = vminnmq_f32(vmaxnmq_f32(v18, 0), vdupq_n_s32(0x477FE000u));
  HIWORD(v69) = WORD2(v56);
  LOWORD(v69) = v56;
  v54 = *(a1 + 232);

  return v54(v4, v69, v6, v53);
}

uint64_t MetalEmulation::generatePrefilteredDiffuseMap(uint64_t a1, double a2)
{
  v3 = WORD2(a2);
  v4 = a1 + 64;
  v32 = LODWORD(a2);
  *v5.f32 = MetalEmulation::getCubeDir(LOWORD(a2), WORD1(a2), WORD2(a2), *(a1 + 64));
  v8 = vmulq_f32(v5, v5);
  *&v9 = v8.f32[2] + vaddv_f32(*v8.f32);
  *v8.f32 = vrsqrte_f32(v9);
  *v8.f32 = vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32)));
  v10 = vmulq_n_f32(v5, vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32))).f32[0]);
  v11 = *(v4 + 192);
  if (v10.f32[2] < -0.9999)
  {
    v36 = xmmword_1E3047690;
    v35 = xmmword_1E30476B0;
    if (*(v4 + 192))
    {
      goto LABEL_3;
    }

LABEL_9:
    *&v37 = 0;
    v38 = 0u;
    goto LABEL_10;
  }

  v27 = 1.0 / (v10.f32[2] + 1.0);
  v7.f32[0] = vmuls_lane_f32(-v10.f32[0], *v10.f32, 1) * v27;
  v6.f32[0] = ((-v10.f32[0] * v10.f32[0]) * v27) + 1.0;
  v6.i32[1] = v7.i32[0];
  v6.f32[2] = -v10.f32[0];
  v7.f32[1] = (vmuls_lane_f32(-v10.f32[1], *v10.f32, 1) * v27) + 1.0;
  v7.f32[2] = -v10.f32[1];
  v35 = v6;
  v36 = v7;
  if (!*(v4 + 192))
  {
    goto LABEL_9;
  }

LABEL_3:
  v34 = v10;
  v12 = 0;
  v13 = v11;
  v38 = 0u;
  v37 = 0u;
  do
  {
    v14 = v12 / v13;
    v15 = sqrtf(v14);
    v16 = __sincosf_stret(vcvts_n_f32_u32(__rbit32(v12), 0x20uLL) * 6.2832);
    v17 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v36, v15 * v16.__cosval), v35, v15 * v16.__sinval), v34, sqrtf(fmaxf(1.0 - v14, 0.0)));
    v18 = vmulq_f32(v17, v17);
    *&v19 = v18.f32[2] + vaddv_f32(*v18.f32);
    *v18.f32 = vrsqrte_f32(v19);
    *v18.f32 = vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32)));
    v20 = vmulq_n_f32(v17, vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32))).f32[0]);
    v21 = vmulq_f32(v34, v20);
    v22 = fminf(fmaxf(v21.f32[2] + vaddv_f32(*v21.f32), 0.0), 1.0);
    if (v22 > 0.0)
    {
      v33 = v20;
      v23 = log2f((1.0 / ((v22 * 0.31831) * v13)) / (12.566 / ((**(a1 + 56) * 6.0) * WORD1(**(a1 + 56)))));
      *v24.i64 = (*(a1 + 40))(a1, v33, fmaxf((v23 * 0.5) + 1.0, 0.0));
      v25 = vaddq_f32(v38, v24);
      v26 = v37;
      *&v26 = *&v37 + 1.0;
      v37 = v26;
      v38 = v25;
    }

    ++v12;
  }

  while (v11 != v12);
LABEL_10:
  v28 = vdivq_f32(v38, vdupq_lane_s32(*&v37, 0));
  v28.i32[3] = 1.0;
  v29 = vminnmq_f32(vmaxnmq_f32(v28, 0), vdupq_n_s32(0x477FE000u));
  v30 = *(a1 + 232);

  return v30(v4, v32, v3, v29);
}

void *re::allocInfo_ProtectionOptionsService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_473, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_473))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BAD40, "ProtectionOptionsService");
    __cxa_guard_release(&_MergedGlobals_473);
  }

  return &unk_1EE1BAD40;
}

void re::initInfo_ProtectionOptionsService(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x5EBCAF223B8CB20;
  v8[1] = "ProtectionOptionsService";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_ProtectionOptionsService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

uint64_t re::DrawCallMeshPartsDetails::DrawCallMeshPartsDetails(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v9 = *(a2 + 64);
  *a1 = v9;
  *(a1 + 40) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 8) = v9;
  re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::setCapacity((a1 + 8), 0);
  ++*(a1 + 32);
  v11[0] = *a5;
  if (v11[0] == 1)
  {
    v12 = *(a5 + 4);
  }

  re::DrawCallMeshPartsDetails::appendPerMeshPartDetails(a1, a3, a4, v11);
  return a1;
}

_anonymous_namespace_ *re::DrawCallMeshPartsDetails::appendPerMeshPartDetails(re::DynamicString **a1, uint64_t a2, const char *a3, char *a4)
{
  v17[0] = 0;
  if (a3)
  {
    re::DynamicString::format(&v14, *a1, "%s", a3, a3);
    LOBYTE(v8) = 1;
    v9 = v14;
    v11 = v16;
    v10 = v15;
    re::Optional<re::DynamicString>::operator=(v17, &v8);
    if (v8 == 1 && v9 && (v10 & 1) != 0)
    {
      (*(*v9 + 40))();
    }

    v8 = a2;
    LOBYTE(v9) = v17[0];
    if (v17[0])
    {
      re::DynamicString::DynamicString(&v10, &v18);
    }
  }

  else
  {
    v8 = a2;
    LOBYTE(v9) = 0;
  }

  v12 = *a4;
  if (v12 == 1)
  {
    v13 = *(a4 + 1);
  }

  result = re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::add((a1 + 1), &v8);
  if (v9 == 1)
  {
    result = v10;
    if (v10)
    {
      if (BYTE8(v10))
      {
        result = (*(*v10 + 40))();
      }
    }
  }

  if (v17[0] == 1)
  {
    result = v18;
    if (v18)
    {
      if (v19)
      {
        return (*(*v18 + 40))(v18, v20);
      }
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = *(v3 + 4) + 56 * v4;
  *v5 = *a2;
  v6 = *(a2 + 8);
  *(v5 + 8) = v6;
  if (v6 == 1)
  {
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 40) = *(a2 + 40);
    v7 = *(a2 + 24);
    *(v5 + 16) = *(a2 + 16);
    *(a2 + 16) = 0;
    v8 = *(a2 + 32);
    *(a2 + 40) = 0;
    v10 = *(v5 + 24);
    v9 = *(v5 + 32);
    *(v5 + 24) = v7;
    *(v5 + 32) = v8;
    *(a2 + 24) = v10;
    *(a2 + 32) = v9;
  }

  v11 = *(a2 + 48);
  *(v5 + 48) = v11;
  if (v11 == 1)
  {
    *(v5 + 52) = *(a2 + 52);
  }

  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

re::DrawCallRecorderGroup *re::DrawCallRecorderGroup::DrawCallRecorderGroup(re::DrawCallRecorderGroup *this, const char *a2, const char *a3, re::Allocator *a4)
{
  *this = 0u;
  *(this + 1) = 0u;
  v8 = re::DynamicString::setCapacity(this, 0);
  *(this + 3) = 0u;
  *(this + 2) = 0u;
  re::DynamicString::setCapacity(this + 4, 0);
  *(this + 8) = a4;
  *(this + 13) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  *(this + 9) = a4;
  re::DynamicArray<re::DrawCallRecorderGroup::SortingContext>::setCapacity(this + 9, 0);
  ++*(this + 24);
  *(this + 8) = 0u;
  *(this + 36) = 0;
  *(this + 7) = 0u;
  *(this + 148) = 0x7FFFFFFFLL;
  re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::init(this + 112, a4, 3);
  *(this + 24) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 46) = 0;
  *(this + 20) = a4;
  re::DynamicArray<re::EncodedDrawCallDetails>::setCapacity(this + 20, 0);
  ++*(this + 46);
  *(this + 208) = 0;
  if (!a2)
  {
    a2 = "nullptr";
  }

  v11 = a2;
  v12 = strlen(a2);
  re::DynamicString::operator=(this, &v11);
  if (!a3)
  {
    a3 = "nullptr";
  }

  v9 = strlen(a3);
  v11 = a3;
  v12 = v9;
  re::DynamicString::operator=((this + 32), &v11);
  return this;
}

uint64_t re::DrawCallRecorderGroup::allocateSortingDebugContextAndReturnIndex(re::DrawCallRecorderGroup *this)
{
  v2 = *(this + 11);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  memset(v5, 0, sizeof(v5));
  re::DynamicString::setCapacity(v5, 0);
  v3.i64[0] = 0x7F0000007FLL;
  v3.i64[1] = 0x7F0000007FLL;
  v6 = vnegq_f32(v3);
  v7 = v3;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  LOBYTE(v12) = 0;
  re::DynamicArray<re::DrawCallRecorderGroup::SortingContext>::add((this + 72), v5);
  if (*&v5[0] && (BYTE8(v5[0]) & 1) != 0)
  {
    (*(**&v5[0] + 40))();
  }

  return v2;
}

_anonymous_namespace_ *re::DynamicArray<re::DrawCallRecorderGroup::SortingContext>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::DrawCallRecorderGroup::SortingContext>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = *(v3 + 4) + 160 * v4;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 24) = *(a2 + 24);
  v6 = *(a2 + 8);
  *v5 = *a2;
  *a2 = 0;
  v7 = *(a2 + 16);
  *(a2 + 24) = 0;
  v9 = *(v5 + 8);
  v8 = *(v5 + 16);
  *(v5 + 8) = v6;
  *(v5 + 16) = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v8;
  v10 = *(a2 + 64);
  v11 = *(a2 + 80);
  v12 = *(a2 + 112);
  *(v5 + 96) = *(a2 + 96);
  *(v5 + 112) = v12;
  *(v5 + 64) = v10;
  *(v5 + 80) = v11;
  v13 = *(a2 + 48);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 48) = v13;
  LODWORD(v7) = *(a2 + 128);
  *(v5 + 128) = v7;
  if (v7 == 1)
  {
    *(v5 + 144) = *(a2 + 144);
  }

  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

uint64_t re::DrawCallRecorderGroup::getSortingContextUnsafe(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    v4 = *(a2 + 4);
    if (*(a1 + 88) > v4)
    {
      return *(a1 + 104) + 160 * v4;
    }
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "hasSortingContext(index)", "getSortingContextUnsafe", 90, v2, v3);
  result = _os_crash("assertion failure: (hasSortingContext(index)) ");
  __break(1u);
  return result;
}

uint64_t re::DrawCallRecorderGroup::getMutableSortingContext(uint64_t a1, unsigned int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = *(a1 + 88);
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
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 104) + 160 * a2;
}

uint64_t re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::add(uint64_t a1, unsigned int *a2, void *a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v11);
  if (HIDWORD(v12) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + (HIDWORD(v12) << 6) + 8;
  }

  v7 = re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, v12, v11);
  v8 = *a2;
  *(v7 + 8) = *a3;
  v9 = v7 + 8;
  *(v7 + 4) = v8;
  re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::DynamicArray(v7 + 16, a3 + 1);
  ++*(a1 + 40);
  return v9;
}

uint64_t re::DrawCallRecorderGroup::recordEncodedDrawCall(uint64_t a1, uint64_t a2, const char *a3, unsigned __int8 *a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v16 = re::DynamicString::DynamicString(&v64, "", *(a1 + 64));
  v66 = 0u;
  v67 = 0u;
  v17 = re::DynamicString::setCapacity(&v66, 0);
  v69 = 0u;
  v68 = 0u;
  v18 = re::DynamicString::setCapacity(&v68, 0);
  v70 = 0;
  *&v82[1] = 134217472;
  *&v82[9] = 134217472;
  v85 = 0u;
  v84 = 0u;
  re::DynamicString::setCapacity(&v84, 0);
  v86 = 0;
  if (!a3)
  {
    a3 = "nullptr";
  }

  v59 = a3;
  *&v60 = strlen(a3);
  re::DynamicString::operator=(&v64, &v59);
  re::DynamicString::format(&v59, *(a1 + 64), "Unknown", v19);
  v21 = *a4;
  v20 = a4 + 8;
  if (v21)
  {
    v22 = v20;
  }

  else
  {
    v22 = &v59;
  }

  re::DynamicString::operator=(&v66, v22);
  if (v59 && (v60 & 1) != 0)
  {
    (*(*v59 + 40))();
  }

  re::DynamicString::format(&v59, *(a1 + 64), "Unknown", v23);
  v25 = *a5;
  v24 = a5 + 8;
  if (v25)
  {
    v26 = v24;
  }

  else
  {
    v26 = &v59;
  }

  re::DynamicString::operator=(&v68, v26);
  if (v59 && (v60 & 1) != 0)
  {
    (*(*v59 + 40))();
  }

  if (v70)
  {
    if (*a6)
    {
      v71 = *(a6 + 8);
      v72 = *(a6 + 24);
      v73 = *(a6 + 40);
      v74 = *(a6 + 56);
      if (v75)
      {
        if ((*(a6 + 60) & 1) == 0)
        {
          v75 = 0;
LABEL_32:
          re::DynamicArray<re::RenderAttachmentState>::operator=(&v77, (a6 + 64));
          goto LABEL_33;
        }
      }

      else
      {
        if ((*(a6 + 60) & 1) == 0)
        {
          goto LABEL_32;
        }

        v75 = 1;
      }

      v76 = *(a6 + 61);
      goto LABEL_32;
    }

    if (v77)
    {
      if (v81)
      {
        (*(*v77 + 40))();
      }

      v81 = 0;
      v78 = 0;
      v79 = 0;
      v77 = 0;
      ++v80;
    }

    v70 = 0;
  }

  else if (*a6)
  {
    v70 = 1;
    v71 = *(a6 + 8);
    v72 = *(a6 + 24);
    v73 = *(a6 + 40);
    v74 = *(a6 + 56);
    v75 = *(a6 + 60);
    if (v75 == 1)
    {
      v76 = *(a6 + 61);
    }

    re::DynamicArray<re::RenderAttachmentState>::DynamicArray(&v77, (a6 + 64));
  }

LABEL_33:
  v82[0] = *(a2 + 80);
  *&v82[1] = *a7;
  v82[17] = *(a7 + 16);
  v91 = a9;
  *&v82[24] = a8;
  *(&v83 + 4) = *(a2 + 16);
  v28 = *(a2 + 44);
  LODWORD(v83) = *(a2 + 40);
  HIDWORD(v83) = v28;
  if (*(a2 + 48) != 1)
  {
    goto LABEL_51;
  }

  v29 = *(a2 + 52);
  LODWORD(v92[0]) = *(a2 + 52);
  if (!*(a1 + 112))
  {
    goto LABEL_51;
  }

  v30 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v29 ^ (v29 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v29 ^ (v29 >> 30))) >> 27));
  v27 = v30 ^ (v30 >> 31);
  v31 = *(*(a1 + 120) + 4 * (v27 % *(a1 + 136)));
  if (v31 == 0x7FFFFFFF)
  {
    goto LABEL_51;
  }

  v32 = *(a1 + 128);
  while (*(v32 + (v31 << 6) + 4) != v29)
  {
    v31 = *(v32 + (v31 << 6)) & 0x7FFFFFFF;
    if (v31 == 0x7FFFFFFF)
    {
      goto LABEL_51;
    }
  }

  re::HashTable<unsigned int,re::DrawCallMeshPartsDetails,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(a1 + 112, v92, v27, &v59);
  v33 = *(a1 + 128) + (DWORD1(v60) << 6);
  LOBYTE(v59) = 1;
  *&v60 = *(v33 + 8);
  re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::DynamicArray(&v60 + 8, (v33 + 16));
  if (v86)
  {
    if (v59)
    {
      *&v87 = v60;
      v35 = *(&v87 + 1);
      if (*(&v87 + 1) && *(&v60 + 1) && *(&v87 + 1) != *(&v60 + 1))
      {
        re::internal::assertLog(4, v34, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
        result = _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
        __break(1u);
        return result;
      }

      *(&v87 + 1) = *(&v60 + 1);
      *(&v60 + 1) = v35;
      v36 = v88;
      v88 = v61;
      v61 = v36;
      v37 = v90;
      v90 = v63;
      v63 = v37;
      ++v62;
      v38 = v89 + 1;
      goto LABEL_48;
    }

    re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::deinit(&v87 + 8);
    v86 = 0;
    if (v59)
    {
      goto LABEL_50;
    }
  }

  else if (v59)
  {
    v38 = 1;
    v86 = 1;
    v87 = v60;
    v88 = v61;
    *(&v60 + 1) = 0;
    v61 = 0uLL;
    v90 = v63;
    v63 = 0;
    ++v62;
LABEL_48:
    v89 = v38;
LABEL_50:
    re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::deinit(&v60 + 8);
  }

LABEL_51:
  re::DynamicString::format(&v59, *(a1 + 64), "Unknown", v27);
  v39 = *(a2 + 3);
  if (v39 <= 2)
  {
    v40 = off_1E8720A40[v39];
    v41 = strlen(v40);
    v92[0] = v40;
    v92[1] = v41;
    re::DynamicString::operator=(&v59, v92);
  }

  v42 = re::DynamicString::operator=(&v84, &v59);
  v44 = *(a1 + 168);
  v43 = *(a1 + 176);
  if (v43 >= v44)
  {
    v45 = v43 + 1;
    if (v44 < v43 + 1)
    {
      if (*(a1 + 160))
      {
        v46 = 2 * v44;
        if (!v44)
        {
          v46 = 8;
        }

        if (v46 <= v45)
        {
          v47 = v45;
        }

        else
        {
          v47 = v46;
        }

        re::DynamicArray<re::EncodedDrawCallDetails>::setCapacity((a1 + 160), v47);
      }

      else
      {
        re::DynamicArray<re::EncodedDrawCallDetails>::setCapacity((a1 + 160), v45);
        ++*(a1 + 184);
      }
    }

    v43 = *(a1 + 176);
  }

  v48 = *(a1 + 192) + 344 * v43;
  re::DynamicString::DynamicString(v48, &v64);
  re::DynamicString::DynamicString((v48 + 32), &v66);
  re::DynamicString::DynamicString((v48 + 64), &v68);
  v49 = v70;
  *(v48 + 96) = v70;
  if (v49 == 1)
  {
    v50 = v71;
    v51 = v72;
    v52 = v73;
    *(v48 + 152) = v74;
    *(v48 + 136) = v52;
    *(v48 + 120) = v51;
    *(v48 + 104) = v50;
    v53 = v75;
    *(v48 + 156) = v75;
    if (v53 == 1)
    {
      *(v48 + 157) = v76;
    }

    re::DynamicArray<re::RenderAttachmentState>::DynamicArray(v48 + 160, &v77);
  }

  v54 = *v82;
  v55 = *&v82[16];
  *(v48 + 232) = v83;
  *(v48 + 216) = v55;
  *(v48 + 200) = v54;
  re::DynamicString::DynamicString((v48 + 248), &v84);
  v56 = v86;
  *(v48 + 280) = v86;
  if (v56 == 1)
  {
    *(v48 + 288) = v87;
    re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::DynamicArray(v48 + 296, &v87 + 1);
  }

  *(v48 + 336) = v91;
  ++*(a1 + 176);
  ++*(a1 + 184);
  if (v59 && (v60 & 1) != 0)
  {
    (*(*v59 + 40))();
  }

  if (v86 == 1)
  {
    re::DynamicArray<re::DrawCallMeshPartsDetails::PerMeshPartDetails>::deinit(&v87 + 8);
  }

  if (v84)
  {
    if (BYTE8(v84))
    {
      (*(*v84 + 40))();
    }

    v84 = 0u;
    v85 = 0u;
  }

  if (v70 == 1 && v77)
  {
    if (v81)
    {
      (*(*v77 + 40))();
    }

    v81 = 0;
    v78 = 0;
    v79 = 0;
    v77 = 0;
    ++v80;
  }

  if (v68)
  {
    if (BYTE8(v68))
    {
      (*(*v68 + 40))();
    }

    v68 = 0u;
    v69 = 0u;
  }

  if (v66)
  {
    if (BYTE8(v66))
    {
      (*(*v66 + 40))();
    }

    v66 = 0u;
    v67 = 0u;
  }

  result = v64;
  if (v64)
  {
    if (v65)
    {
      return (*(*v64 + 40))();
    }
  }

  return result;
}