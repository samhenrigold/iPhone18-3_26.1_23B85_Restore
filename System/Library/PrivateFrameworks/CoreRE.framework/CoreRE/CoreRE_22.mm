_anonymous_namespace_ *re::DynamicArray<re::EvaluationCommand>::add(_anonymous_namespace_ *result, _DWORD *a2)
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
  *(v3 + 2) = v5 + 1;
  ++*(v3 + 6);
  return result;
}

uint64_t re::FixedArray<re::anonymous namespace::RegisterMapping::RegisterMapData>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 58)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 64, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v7, v8);
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, a3 << 6, 8);
  *(v4 + 16) = result;
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
      *result = 0xFFFFFFFFLL;
      *(result + 8) = 0uLL;
      *(result + 24) = 0uLL;
      *(result + 40) = 0;
      *(result + 48) = -1;
      *(result + 56) = -1;
      result += 64;
      --v6;
    }

    while (v6);
  }

  *result = 0xFFFFFFFFLL;
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  *(result + 40) = 0;
  *(result + 48) = -1;
  *(result + 56) = -1;
  return result;
}

uint64_t re::EvaluationDependencyMap::isRegisterUsed(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a1 + 24 * a2;
  v5 = *(v4 + 8);
  if (v5 <= a3)
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

    v14 = 476;
    v15 = 2048;
    v16 = a3;
    v17 = 2048;
    v18 = v5;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(v4 + 16) + a3);
}

char *re::anonymous namespace::RegisterMapping::enqueueRegisterForProcessing(char *result, int a2, unint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = &result[24 * a2];
  v5 = *(v4 + 3);
  if (v5 <= a3)
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

    v23 = 468;
    v24 = 2048;
    v25 = a3;
    v26 = 2048;
    v27 = v5;
    _os_log_send_and_compose_impl(v17, &v19, v28, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
    _os_crash_msg();
    __break(1u);
  }

  v6 = a2;
  v7 = (*(v4 + 4) + (a3 << 6));
  v8 = &result[40 * *v7];
  v9 = v8 + 664;
  v10 = *(v8 + 85);
  if (!v10)
  {
    result = re::DynamicArray<re::EvaluationCommand>::add((result + 3784), v7);
    v10 = *(v9 + 2);
  }

  v11 = *(v9 + 1);
  if (v10 >= v11)
  {
    v12 = v10 + 1;
    if (v11 < v10 + 1)
    {
      if (*v9)
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

        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(v9, v14);
      }

      else
      {
        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(v9, v12);
        ++*(v9 + 6);
      }
    }

    v10 = *(v9 + 2);
  }

  v15 = *(v9 + 4) + 16 * v10;
  *v15 = v6;
  *(v15 + 8) = a3;
  ++*(v9 + 2);
  ++*(v9 + 6);
  *(v7 + 40) = 1;
  return result;
}

char *re::anonymous namespace::RegisterMapping::allocateConstRegister<int>(char *a1, _DWORD *a2, unint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 3);
  if (v4 <= a3)
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

    v17 = 468;
    v18 = 2048;
    v19 = a3;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
LABEL_10:
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

    v17 = 468;
    v18 = 2048;
    v19 = a3;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  re::DynamicArray<int>::add((a1 + 3832), a2);
  v4 = *(a1 + 3);
  if (v4 <= a3)
  {
    goto LABEL_10;
  }

  *(*(a1 + 4) + (a3 << 6) + 48) = *(a1 + 481) - 1;
}

BOOL re::anonymous namespace::RegisterMapping::mapCallbackData(re::_anonymous_namespace_::RegisterMapping *this, unint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *(this + 27);
  if (v3 <= a2)
  {
    v12 = 0;
    memset(v21, 0, sizeof(v21));
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

    v16 = 468;
    v17 = 2048;
    v18 = a2;
    v19 = 2048;
    v20 = v3;
    _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  v5 = (*(this + 28) + 904 * a2);
  v6 = v5[112];
  if (v6 == -1)
  {
    v7 = *(this + 527);
    *(this + 527) = v7 + 1;
    v5[112] = v7;
    v5[56] = *v5;
    v5[111] = v5[55];
  }

  return v6 == -1;
}

BOOL re::anonymous namespace::RegisterMapping::mapBranchGroup(re::_anonymous_namespace_::RegisterMapping *this, unint64_t a2)
{
  v5 = a2;
  v149 = *MEMORY[0x1E69E9840];
  v6 = *(this + 30);
  if (v6 <= a2)
  {
LABEL_154:
    v135 = 0;
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v144 = 0u;
    v128 = MEMORY[0x1E69E9C10];
    v129 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v136 = 136315906;
    v137 = "operator[]";
    v138 = 1024;
    if (v129)
    {
      v130 = 3;
    }

    else
    {
      v130 = 2;
    }

    v139 = 468;
    v140 = 2048;
    v141 = v5;
    v142 = 2048;
    v143 = v6;
    _os_log_send_and_compose_impl(v130, &v135, &v144, 80, &dword_1E1C61000, v128, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v133, v134);
    _os_crash_msg();
    __break(1u);
LABEL_158:
    re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 200, v2);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v131, v132);
    __break(1u);
LABEL_159:
    re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
  }

  v8 = (*(this + 31) + 248 * a2);
  v6 = v8[30];
  if (v6 != -1)
  {
    return v6 == -1;
  }

  v9 = *(this + 528);
  *(this + 528) = v9 + 1;
  v8[30] = v9;
  v5 = re::BucketArray<re::EvaluationBranchGroupData,8ul>::operator[](*(this + 1) + 1608, a2);
  v2 = v5[5];
  v10 = *this;
  v8[3] = *this;
  v8[4] = v2;
  if (!v2)
  {
    goto LABEL_21;
  }

  if (v2 >= 0x147AE147AE147AFLL)
  {
    goto LABEL_158;
  }

  v11 = (*(*v10 + 32))(v10, 200 * v2, 8);
  v8[5] = v11;
  if (!v11)
  {
    goto LABEL_159;
  }

  v13 = v2 - 1;
  if (v2 == 1)
  {
    *v11 = -1;
    v14 = v11 + 1;
  }

  else
  {
    v14 = v11 + 1;
    do
    {
      *(v14 - 1) = -1;
      *v14 = 0uLL;
      v14[1] = 0uLL;
      v14[2] = 0uLL;
      v14[3] = 0uLL;
      v14[4] = 0uLL;
      v14[5] = 0uLL;
      v14[6] = 0uLL;
      v14[7] = 0uLL;
      v14[8] = 0uLL;
      v14[9] = 0uLL;
      v14[10] = 0uLL;
      v14[11] = 0uLL;
      v14 = (v14 + 200);
      --v13;
    }

    while (v13);
    *(v14 - 1) = -1;
  }

  v15 = 0;
  v16 = 0;
  v14[10] = 0u;
  v14[11] = 0u;
  v14[8] = 0u;
  v14[9] = 0u;
  v14[6] = 0u;
  v14[7] = 0u;
  v14[4] = 0u;
  v14[5] = 0u;
  v14[2] = 0u;
  v14[3] = 0u;
  *v14 = 0u;
  v14[1] = 0u;
  do
  {
    v3 = v8[1];
    if (v3 <= v16)
    {
      v135 = 0;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v144 = 0u;
      v72 = MEMORY[0x1E69E9C10];
      v136 = 136315906;
      v137 = "operator[]";
      v138 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v73 = 3;
      }

      else
      {
        v73 = 2;
      }

      v139 = 468;
      v140 = 2048;
      v141 = v16;
      v142 = 2048;
      v143 = v3;
      _os_log_send_and_compose_impl(v73, &v135, &v144, 80, &dword_1E1C61000, v72, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v133, v134);
      _os_crash_msg();
      __break(1u);
LABEL_82:
      v135 = 0;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v144 = 0u;
      v74 = MEMORY[0x1E69E9C10];
      v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v136 = 136315906;
      v137 = "operator[]";
      v138 = 1024;
      if (v75)
      {
        v76 = 3;
      }

      else
      {
        v76 = 2;
      }

      v139 = 468;
      v140 = 2048;
      v141 = v16;
      v142 = 2048;
      v143 = v3;
      _os_log_send_and_compose_impl(v76, &v135, &v144, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v133, v134);
      _os_crash_msg();
      __break(1u);
LABEL_86:
      v135 = 0;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v144 = 0u;
      v77 = MEMORY[0x1E69E9C10];
      v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v136 = 136315906;
      v137 = "operator[]";
      v138 = 1024;
      if (v78)
      {
        v79 = 3;
      }

      else
      {
        v79 = 2;
      }

      v139 = 468;
      v140 = 2048;
      v141 = v16;
      v142 = 2048;
      v143 = v15;
      _os_log_send_and_compose_impl(v79, &v135, &v144, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v133, v134);
      _os_crash_msg();
      __break(1u);
LABEL_90:
      v135 = 0;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v144 = 0u;
      v80 = MEMORY[0x1E69E9C10];
      v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v136 = 136315906;
      v137 = "operator[]";
      v138 = 1024;
      if (v81)
      {
        v82 = 3;
      }

      else
      {
        v82 = 2;
      }

      v139 = 468;
      v140 = 2048;
      v141 = v2;
      v142 = 2048;
      v143 = v16;
      _os_log_send_and_compose_impl(v82, &v135, &v144, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v133, v134);
      _os_crash_msg();
      __break(1u);
LABEL_94:
      v135 = 0;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v144 = 0u;
      v83 = MEMORY[0x1E69E9C10];
      v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v136 = 136315906;
      v137 = "operator[]";
      v138 = 1024;
      if (v84)
      {
        v85 = 3;
      }

      else
      {
        v85 = 2;
      }

      v139 = 468;
      v140 = 2048;
      v141 = v16;
      v142 = 2048;
      v143 = v15;
      _os_log_send_and_compose_impl(v85, &v135, &v144, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v133, v134);
      _os_crash_msg();
      __break(1u);
LABEL_98:
      v135 = 0;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v144 = 0u;
      v86 = MEMORY[0x1E69E9C10];
      v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v136 = 136315906;
      v137 = "operator[]";
      v138 = 1024;
      if (v87)
      {
        v88 = 3;
      }

      else
      {
        v88 = 2;
      }

      v139 = 468;
      v140 = 2048;
      v141 = v2;
      v142 = 2048;
      v143 = v16;
      _os_log_send_and_compose_impl(v88, &v135, &v144, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v133, v134);
      _os_crash_msg();
      __break(1u);
LABEL_102:
      v135 = 0;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v144 = 0u;
      v89 = MEMORY[0x1E69E9C10];
      v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v136 = 136315906;
      v137 = "operator[]";
      v138 = 1024;
      if (v90)
      {
        v91 = 3;
      }

      else
      {
        v91 = 2;
      }

      v139 = 468;
      v140 = 2048;
      v141 = v16;
      v142 = 2048;
      v143 = v15;
      _os_log_send_and_compose_impl(v91, &v135, &v144, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v133, v134);
      _os_crash_msg();
      __break(1u);
LABEL_106:
      v135 = 0;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v144 = 0u;
      v92 = MEMORY[0x1E69E9C10];
      v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v136 = 136315906;
      v137 = "operator[]";
      v138 = 1024;
      if (v93)
      {
        v94 = 3;
      }

      else
      {
        v94 = 2;
      }

      v139 = 468;
      v140 = 2048;
      v141 = v2;
      v142 = 2048;
      v143 = v16;
      _os_log_send_and_compose_impl(v94, &v135, &v144, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v133, v134);
      _os_crash_msg();
      __break(1u);
LABEL_110:
      v135 = 0;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v144 = 0u;
      v95 = MEMORY[0x1E69E9C10];
      v96 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v136 = 136315906;
      v137 = "operator[]";
      v138 = 1024;
      if (v96)
      {
        v97 = 3;
      }

      else
      {
        v97 = 2;
      }

      v139 = 468;
      v140 = 2048;
      v141 = v16;
      v142 = 2048;
      v143 = v15;
      _os_log_send_and_compose_impl(v97, &v135, &v144, 80, &dword_1E1C61000, v95, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v133, v134);
      _os_crash_msg();
      __break(1u);
LABEL_114:
      v135 = 0;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v144 = 0u;
      v98 = MEMORY[0x1E69E9C10];
      v99 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v136 = 136315906;
      v137 = "operator[]";
      v138 = 1024;
      if (v99)
      {
        v100 = 3;
      }

      else
      {
        v100 = 2;
      }

      v139 = 468;
      v140 = 2048;
      v141 = v2;
      v142 = 2048;
      v143 = v16;
      _os_log_send_and_compose_impl(v100, &v135, &v144, 80, &dword_1E1C61000, v98, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v133, v134);
      _os_crash_msg();
      __break(1u);
LABEL_118:
      v135 = 0;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v144 = 0u;
      v101 = MEMORY[0x1E69E9C10];
      v102 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v136 = 136315906;
      v137 = "operator[]";
      v138 = 1024;
      if (v102)
      {
        v103 = 3;
      }

      else
      {
        v103 = 2;
      }

      v139 = 468;
      v140 = 2048;
      v141 = v16;
      v142 = 2048;
      v143 = v15;
      _os_log_send_and_compose_impl(v103, &v135, &v144, 80, &dword_1E1C61000, v101, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v133, v134);
      _os_crash_msg();
      __break(1u);
LABEL_122:
      v135 = 0;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v144 = 0u;
      v104 = MEMORY[0x1E69E9C10];
      v105 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v136 = 136315906;
      v137 = "operator[]";
      v138 = 1024;
      if (v105)
      {
        v106 = 3;
      }

      else
      {
        v106 = 2;
      }

      v139 = 468;
      v140 = 2048;
      v141 = v2;
      v142 = 2048;
      v143 = v16;
      _os_log_send_and_compose_impl(v106, &v135, &v144, 80, &dword_1E1C61000, v104, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v133, v134);
      _os_crash_msg();
      __break(1u);
LABEL_126:
      v135 = 0;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v144 = 0u;
      v107 = MEMORY[0x1E69E9C10];
      v108 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v136 = 136315906;
      v137 = "operator[]";
      v138 = 1024;
      if (v108)
      {
        v109 = 3;
      }

      else
      {
        v109 = 2;
      }

      v139 = 468;
      v140 = 2048;
      v141 = v16;
      v142 = 2048;
      v143 = v15;
      _os_log_send_and_compose_impl(v109, &v135, &v144, 80, &dword_1E1C61000, v107, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v133, v134);
      _os_crash_msg();
      __break(1u);
LABEL_130:
      v135 = 0;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v144 = 0u;
      v110 = MEMORY[0x1E69E9C10];
      v111 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v136 = 136315906;
      v137 = "operator[]";
      v138 = 1024;
      if (v111)
      {
        v112 = 3;
      }

      else
      {
        v112 = 2;
      }

      v139 = 468;
      v140 = 2048;
      v141 = v2;
      v142 = 2048;
      v143 = v16;
      _os_log_send_and_compose_impl(v112, &v135, &v144, 80, &dword_1E1C61000, v110, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v133, v134);
      _os_crash_msg();
      __break(1u);
LABEL_134:
      v135 = 0;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v144 = 0u;
      v113 = MEMORY[0x1E69E9C10];
      v114 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v136 = 136315906;
      v137 = "operator[]";
      v138 = 1024;
      if (v114)
      {
        v115 = 3;
      }

      else
      {
        v115 = 2;
      }

      v139 = 468;
      v140 = 2048;
      v141 = v16;
      v142 = 2048;
      v143 = v15;
      _os_log_send_and_compose_impl(v115, &v135, &v144, 80, &dword_1E1C61000, v113, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v133, v134);
      _os_crash_msg();
      __break(1u);
LABEL_138:
      v135 = 0;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v144 = 0u;
      v116 = MEMORY[0x1E69E9C10];
      v117 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v136 = 136315906;
      v137 = "operator[]";
      v138 = 1024;
      if (v117)
      {
        v118 = 3;
      }

      else
      {
        v118 = 2;
      }

      v139 = 468;
      v140 = 2048;
      v141 = v2;
      v142 = 2048;
      v143 = v16;
      _os_log_send_and_compose_impl(v118, &v135, &v144, 80, &dword_1E1C61000, v116, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v133, v134);
      _os_crash_msg();
      __break(1u);
LABEL_142:
      v135 = 0;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v144 = 0u;
      v119 = MEMORY[0x1E69E9C10];
      v120 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v136 = 136315906;
      v137 = "operator[]";
      v138 = 1024;
      if (v120)
      {
        v121 = 3;
      }

      else
      {
        v121 = 2;
      }

      v139 = 468;
      v140 = 2048;
      v141 = v16;
      v142 = 2048;
      v143 = v15;
      _os_log_send_and_compose_impl(v121, &v135, &v144, 80, &dword_1E1C61000, v119, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v133, v134);
      _os_crash_msg();
      __break(1u);
LABEL_146:
      v135 = 0;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v144 = 0u;
      v122 = MEMORY[0x1E69E9C10];
      v123 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v136 = 136315906;
      v137 = "operator[]";
      v138 = 1024;
      if (v123)
      {
        v124 = 3;
      }

      else
      {
        v124 = 2;
      }

      v139 = 468;
      v140 = 2048;
      v141 = v2;
      v142 = 2048;
      v143 = v16;
      _os_log_send_and_compose_impl(v124, &v135, &v144, 80, &dword_1E1C61000, v122, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v133, v134);
      _os_crash_msg();
      __break(1u);
LABEL_150:
      v135 = 0;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v144 = 0u;
      v125 = MEMORY[0x1E69E9C10];
      v126 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v136 = 136315906;
      v137 = "operator[]";
      v138 = 1024;
      if (v126)
      {
        v127 = 3;
      }

      else
      {
        v127 = 2;
      }

      v139 = 468;
      v140 = 2048;
      v141 = v3;
      v142 = 2048;
      v143 = v4;
      _os_log_send_and_compose_impl(v127, &v135, &v144, 80, &dword_1E1C61000, v125, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v133, v134);
      _os_crash_msg();
      __break(1u);
      goto LABEL_154;
    }

    v3 = v8[4];
    if (v3 <= v16)
    {
      goto LABEL_82;
    }

    v17 = v8[2];
    v18 = v8[5];
    v3 = *(v17 + v15);
    if (v3 != -1)
    {
      v4 = *(this + 6);
      if (v4 <= v3)
      {
        goto LABEL_150;
      }

      v19 = *(this + 7) + (v3 << 6);
      v22 = *(v19 + 56);
      v21 = (v19 + 56);
      v20 = v22;
      if (v22 == -1)
      {
        v20 = *(this + 520);
        *(this + 520) = v20 + 1;
        *v21 = v20;
      }

      *(v18 + v15) = v20;
    }

    v3 = v17 + v15;
    v4 = v18 + v15;
    ++v16;
    v15 += 200;
  }

  while (v2 != v16);
  v10 = *this;
LABEL_21:
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>(v8 + 6, v10, v5[9]);
  if (v5[9])
  {
    v2 = 0;
    v23 = v5[11];
    v24 = v8[8];
    do
    {
      v16 = *(v23 + 8 * v2);
      v15 = *(this + 3);
      if (v15 <= v16)
      {
        goto LABEL_86;
      }

      v25 = *(this + 4) + (v16 << 6);
      v28 = *(v25 + 56);
      v27 = (v25 + 56);
      v26 = v28;
      if (v28 == -1)
      {
        v26 = *(this + 519);
        *(this + 519) = v26 + 1;
        *v27 = v26;
      }

      v16 = v8[7];
      if (v16 <= v2)
      {
        goto LABEL_90;
      }

      *(v24 + 8 * v2++) = v26;
    }

    while (v2 < v5[9]);
  }

  re::FixedArray<re::EvaluationRegisterId<int>>::init<>(v8 + 9, *this, v5[14]);
  if (v5[14])
  {
    v2 = 0;
    v29 = v5[16];
    v30 = v8[11];
    do
    {
      v16 = *(v29 + 8 * v2);
      v15 = *(this + 6);
      if (v15 <= v16)
      {
        goto LABEL_94;
      }

      v31 = *(this + 7) + (v16 << 6);
      v34 = *(v31 + 56);
      v33 = (v31 + 56);
      v32 = v34;
      if (v34 == -1)
      {
        v32 = *(this + 520);
        *(this + 520) = v32 + 1;
        *v33 = v32;
      }

      v16 = v8[10];
      if (v16 <= v2)
      {
        goto LABEL_98;
      }

      *(v30 + 8 * v2++) = v32;
    }

    while (v2 < v5[14]);
  }

  re::FixedArray<re::EvaluationRegisterId<int>>::init<>(v8 + 12, *this, v5[19]);
  if (v5[19])
  {
    v2 = 0;
    v35 = v5[21];
    v36 = v8[14];
    do
    {
      v16 = *(v35 + 8 * v2);
      v15 = *(this + 9);
      if (v15 <= v16)
      {
        goto LABEL_102;
      }

      v37 = *(this + 10) + (v16 << 6);
      v40 = *(v37 + 56);
      v39 = (v37 + 56);
      v38 = v40;
      if (v40 == -1)
      {
        v38 = *(this + 521);
        *(this + 521) = v38 + 1;
        *v39 = v38;
      }

      v16 = v8[13];
      if (v16 <= v2)
      {
        goto LABEL_106;
      }

      *(v36 + 8 * v2++) = v38;
    }

    while (v2 < v5[19]);
  }

  re::FixedArray<re::EvaluationRegisterId<int>>::init<>(v8 + 15, *this, v5[24]);
  if (v5[24])
  {
    v2 = 0;
    v41 = v5[26];
    v42 = v8[17];
    do
    {
      v16 = *(v41 + 8 * v2);
      v15 = *(this + 12);
      if (v15 <= v16)
      {
        goto LABEL_110;
      }

      v43 = *(this + 13) + (v16 << 6);
      v46 = *(v43 + 56);
      v45 = (v43 + 56);
      v44 = v46;
      if (v46 == -1)
      {
        v44 = *(this + 522);
        *(this + 522) = v44 + 1;
        *v45 = v44;
      }

      v16 = v8[16];
      if (v16 <= v2)
      {
        goto LABEL_114;
      }

      *(v42 + 8 * v2++) = v44;
    }

    while (v2 < v5[24]);
  }

  re::FixedArray<re::EvaluationRegisterId<int>>::init<>(v8 + 18, *this, v5[29]);
  if (v5[29])
  {
    v2 = 0;
    v47 = v5[31];
    v48 = v8[20];
    do
    {
      v16 = *(v47 + 8 * v2);
      v15 = *(this + 15);
      if (v15 <= v16)
      {
        goto LABEL_118;
      }

      v49 = *(this + 16) + (v16 << 6);
      v52 = *(v49 + 56);
      v51 = (v49 + 56);
      v50 = v52;
      if (v52 == -1)
      {
        v50 = *(this + 523);
        *(this + 523) = v50 + 1;
        *v51 = v50;
      }

      v16 = v8[19];
      if (v16 <= v2)
      {
        goto LABEL_122;
      }

      *(v48 + 8 * v2++) = v50;
    }

    while (v2 < v5[29]);
  }

  re::FixedArray<re::EvaluationRegisterId<int>>::init<>(v8 + 21, *this, v5[34]);
  if (v5[34])
  {
    v2 = 0;
    v53 = v5[36];
    v54 = v8[23];
    do
    {
      v16 = *(v53 + 8 * v2);
      v15 = *(this + 18);
      if (v15 <= v16)
      {
        goto LABEL_126;
      }

      v55 = *(this + 19) + (v16 << 6);
      v58 = *(v55 + 56);
      v57 = (v55 + 56);
      v56 = v58;
      if (v58 == -1)
      {
        v56 = *(this + 524);
        *(this + 524) = v56 + 1;
        *v57 = v56;
      }

      v16 = v8[22];
      if (v16 <= v2)
      {
        goto LABEL_130;
      }

      *(v54 + 8 * v2++) = v56;
    }

    while (v2 < v5[34]);
  }

  re::FixedArray<re::EvaluationRegisterId<int>>::init<>(v8 + 24, *this, v5[39]);
  if (v5[39])
  {
    v2 = 0;
    v59 = v5[41];
    v60 = v8[26];
    do
    {
      v16 = *(v59 + 8 * v2);
      v15 = *(this + 21);
      if (v15 <= v16)
      {
        goto LABEL_134;
      }

      v61 = *(this + 22) + (v16 << 6);
      v64 = *(v61 + 56);
      v63 = (v61 + 56);
      v62 = v64;
      if (v64 == -1)
      {
        v62 = *(this + 525);
        *(this + 525) = v62 + 1;
        *v63 = v62;
      }

      v16 = v8[25];
      if (v16 <= v2)
      {
        goto LABEL_138;
      }

      *(v60 + 8 * v2++) = v62;
    }

    while (v2 < v5[39]);
  }

  re::FixedArray<re::EvaluationRegisterId<int>>::init<>(v8 + 27, *this, v5[44]);
  if (v5[44])
  {
    v2 = 0;
    v65 = v5[46];
    v66 = v8[29];
    while (1)
    {
      v16 = *(v65 + 8 * v2);
      v15 = *(this + 24);
      if (v15 <= v16)
      {
        goto LABEL_142;
      }

      v67 = *(this + 25) + (v16 << 6);
      v70 = *(v67 + 56);
      v69 = (v67 + 56);
      v68 = v70;
      if (v70 == -1)
      {
        v68 = *(this + 526);
        *(this + 526) = v68 + 1;
        *v69 = v68;
      }

      v16 = v8[28];
      if (v16 <= v2)
      {
        goto LABEL_146;
      }

      *(v66 + 8 * v2++) = v68;
      if (v2 >= v5[44])
      {
        return v6 == -1;
      }
    }
  }

  return v6 == -1;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisters<int,re::FixedRegisterIdTable>(uint64_t *a1, uint64_t a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a3, *a1, *(a2 + 8));
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = *(a2 + 16);
    v9 = a3[2];
    while (1)
    {
      v10 = *(v8 + 8 * v7);
      v11 = a1[3];
      if (v11 <= v10)
      {
        break;
      }

      v12 = a1[4] + (v10 << 6);
      v15 = *(v12 + 56);
      v14 = (v12 + 56);
      v13 = v15;
      if (v15 == -1)
      {
        v13 = a1[519];
        a1[519] = v13 + 1;
        *v14 = v13;
      }

      v10 = a3[1];
      if (v10 <= v7)
      {
        goto LABEL_13;
      }

      *(v9 + 8 * v7++) = v13;
      if (v7 >= *(a2 + 8))
      {
        return result;
      }
    }

    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v26 = 468;
    v27 = 2048;
    v28 = v10;
    v29 = 2048;
    v30 = v11;
    _os_log_send_and_compose_impl(v17, &v22, &v31, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
LABEL_13:
    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v26 = 468;
    v27 = 2048;
    v28 = v7;
    v29 = 2048;
    v30 = v10;
    _os_log_send_and_compose_impl(v20, &v22, &v31, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisters<unsigned int,re::FixedRegisterIdTable>(uint64_t *a1, uint64_t a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a3 + 3, *a1, *(a2 + 32));
  if (*(a2 + 32))
  {
    v7 = 0;
    v8 = *(a2 + 40);
    v9 = a3[5];
    while (1)
    {
      v10 = *(v8 + 8 * v7);
      v11 = a1[6];
      if (v11 <= v10)
      {
        break;
      }

      v12 = a1[7] + (v10 << 6);
      v15 = *(v12 + 56);
      v14 = (v12 + 56);
      v13 = v15;
      if (v15 == -1)
      {
        v13 = a1[520];
        a1[520] = v13 + 1;
        *v14 = v13;
      }

      v10 = a3[4];
      if (v10 <= v7)
      {
        goto LABEL_13;
      }

      *(v9 + 8 * v7++) = v13;
      if (v7 >= *(a2 + 32))
      {
        return result;
      }
    }

    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v26 = 468;
    v27 = 2048;
    v28 = v10;
    v29 = 2048;
    v30 = v11;
    _os_log_send_and_compose_impl(v17, &v22, &v31, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
LABEL_13:
    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v26 = 468;
    v27 = 2048;
    v28 = v7;
    v29 = 2048;
    v30 = v10;
    _os_log_send_and_compose_impl(v20, &v22, &v31, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisters<float,re::FixedRegisterIdTable>(uint64_t *a1, uint64_t a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a3 + 6, *a1, *(a2 + 56));
  if (*(a2 + 56))
  {
    v7 = 0;
    v8 = *(a2 + 64);
    v9 = a3[8];
    while (1)
    {
      v10 = *(v8 + 8 * v7);
      v11 = a1[9];
      if (v11 <= v10)
      {
        break;
      }

      v12 = a1[10] + (v10 << 6);
      v15 = *(v12 + 56);
      v14 = (v12 + 56);
      v13 = v15;
      if (v15 == -1)
      {
        v13 = a1[521];
        a1[521] = v13 + 1;
        *v14 = v13;
      }

      v10 = a3[7];
      if (v10 <= v7)
      {
        goto LABEL_13;
      }

      *(v9 + 8 * v7++) = v13;
      if (v7 >= *(a2 + 56))
      {
        return result;
      }
    }

    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v26 = 468;
    v27 = 2048;
    v28 = v10;
    v29 = 2048;
    v30 = v11;
    _os_log_send_and_compose_impl(v17, &v22, &v31, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
LABEL_13:
    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v26 = 468;
    v27 = 2048;
    v28 = v7;
    v29 = 2048;
    v30 = v10;
    _os_log_send_and_compose_impl(v20, &v22, &v31, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisters<re::Matrix3x3<float>,re::FixedRegisterIdTable>(uint64_t *a1, uint64_t a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a3 + 9, *a1, *(a2 + 80));
  if (*(a2 + 80))
  {
    v7 = 0;
    v8 = *(a2 + 88);
    v9 = a3[11];
    while (1)
    {
      v10 = *(v8 + 8 * v7);
      v11 = a1[12];
      if (v11 <= v10)
      {
        break;
      }

      v12 = a1[13] + (v10 << 6);
      v15 = *(v12 + 56);
      v14 = (v12 + 56);
      v13 = v15;
      if (v15 == -1)
      {
        v13 = a1[522];
        a1[522] = v13 + 1;
        *v14 = v13;
      }

      v10 = a3[10];
      if (v10 <= v7)
      {
        goto LABEL_13;
      }

      *(v9 + 8 * v7++) = v13;
      if (v7 >= *(a2 + 80))
      {
        return result;
      }
    }

    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v26 = 468;
    v27 = 2048;
    v28 = v10;
    v29 = 2048;
    v30 = v11;
    _os_log_send_and_compose_impl(v17, &v22, &v31, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
LABEL_13:
    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v26 = 468;
    v27 = 2048;
    v28 = v7;
    v29 = 2048;
    v30 = v10;
    _os_log_send_and_compose_impl(v20, &v22, &v31, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisters<re::Matrix4x4<float>,re::FixedRegisterIdTable>(uint64_t *a1, uint64_t a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a3 + 12, *a1, *(a2 + 104));
  if (*(a2 + 104))
  {
    v7 = 0;
    v8 = *(a2 + 112);
    v9 = a3[14];
    while (1)
    {
      v10 = *(v8 + 8 * v7);
      v11 = a1[15];
      if (v11 <= v10)
      {
        break;
      }

      v12 = a1[16] + (v10 << 6);
      v15 = *(v12 + 56);
      v14 = (v12 + 56);
      v13 = v15;
      if (v15 == -1)
      {
        v13 = a1[523];
        a1[523] = v13 + 1;
        *v14 = v13;
      }

      v10 = a3[13];
      if (v10 <= v7)
      {
        goto LABEL_13;
      }

      *(v9 + 8 * v7++) = v13;
      if (v7 >= *(a2 + 104))
      {
        return result;
      }
    }

    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v26 = 468;
    v27 = 2048;
    v28 = v10;
    v29 = 2048;
    v30 = v11;
    _os_log_send_and_compose_impl(v17, &v22, &v31, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
LABEL_13:
    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v26 = 468;
    v27 = 2048;
    v28 = v7;
    v29 = 2048;
    v30 = v10;
    _os_log_send_and_compose_impl(v20, &v22, &v31, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisters<re::Quaternion<float>,re::FixedRegisterIdTable>(uint64_t *a1, uint64_t a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a3 + 15, *a1, *(a2 + 128));
  if (*(a2 + 128))
  {
    v7 = 0;
    v8 = *(a2 + 136);
    v9 = a3[17];
    while (1)
    {
      v10 = *(v8 + 8 * v7);
      v11 = a1[18];
      if (v11 <= v10)
      {
        break;
      }

      v12 = a1[19] + (v10 << 6);
      v15 = *(v12 + 56);
      v14 = (v12 + 56);
      v13 = v15;
      if (v15 == -1)
      {
        v13 = a1[524];
        a1[524] = v13 + 1;
        *v14 = v13;
      }

      v10 = a3[16];
      if (v10 <= v7)
      {
        goto LABEL_13;
      }

      *(v9 + 8 * v7++) = v13;
      if (v7 >= *(a2 + 128))
      {
        return result;
      }
    }

    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v26 = 468;
    v27 = 2048;
    v28 = v10;
    v29 = 2048;
    v30 = v11;
    _os_log_send_and_compose_impl(v17, &v22, &v31, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
LABEL_13:
    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v26 = 468;
    v27 = 2048;
    v28 = v7;
    v29 = 2048;
    v30 = v10;
    _os_log_send_and_compose_impl(v20, &v22, &v31, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisters<re::Vector2<float>,re::FixedRegisterIdTable>(uint64_t *a1, uint64_t a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a3 + 18, *a1, *(a2 + 152));
  if (*(a2 + 152))
  {
    v7 = 0;
    v8 = *(a2 + 160);
    v9 = a3[20];
    while (1)
    {
      v10 = *(v8 + 8 * v7);
      v11 = a1[21];
      if (v11 <= v10)
      {
        break;
      }

      v12 = a1[22] + (v10 << 6);
      v15 = *(v12 + 56);
      v14 = (v12 + 56);
      v13 = v15;
      if (v15 == -1)
      {
        v13 = a1[525];
        a1[525] = v13 + 1;
        *v14 = v13;
      }

      v10 = a3[19];
      if (v10 <= v7)
      {
        goto LABEL_13;
      }

      *(v9 + 8 * v7++) = v13;
      if (v7 >= *(a2 + 152))
      {
        return result;
      }
    }

    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v26 = 468;
    v27 = 2048;
    v28 = v10;
    v29 = 2048;
    v30 = v11;
    _os_log_send_and_compose_impl(v17, &v22, &v31, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
LABEL_13:
    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v26 = 468;
    v27 = 2048;
    v28 = v7;
    v29 = 2048;
    v30 = v10;
    _os_log_send_and_compose_impl(v20, &v22, &v31, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisters<re::Vector3<float>,re::FixedRegisterIdTable>(uint64_t *a1, uint64_t a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a3 + 21, *a1, *(a2 + 176));
  if (*(a2 + 176))
  {
    v7 = 0;
    v8 = *(a2 + 184);
    v9 = a3[23];
    while (1)
    {
      v10 = *(v8 + 8 * v7);
      v11 = a1[24];
      if (v11 <= v10)
      {
        break;
      }

      v12 = a1[25] + (v10 << 6);
      v15 = *(v12 + 56);
      v14 = (v12 + 56);
      v13 = v15;
      if (v15 == -1)
      {
        v13 = a1[526];
        a1[526] = v13 + 1;
        *v14 = v13;
      }

      v10 = a3[22];
      if (v10 <= v7)
      {
        goto LABEL_13;
      }

      *(v9 + 8 * v7++) = v13;
      if (v7 >= *(a2 + 176))
      {
        return result;
      }
    }

    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v26 = 468;
    v27 = 2048;
    v28 = v10;
    v29 = 2048;
    v30 = v11;
    _os_log_send_and_compose_impl(v17, &v22, &v31, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
LABEL_13:
    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v26 = 468;
    v27 = 2048;
    v28 = v7;
    v29 = 2048;
    v30 = v10;
    _os_log_send_and_compose_impl(v20, &v22, &v31, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisterArray(uint64_t *a1, uint64_t a2, void *a3)
{
  v63 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationSRT>::init<>(a3, *a1, *(a2 + 8));
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = (a3[2] + 16);
    for (i = (*(a2 + 16) + 16); ; i += 3)
    {
      v10 = *(i - 2);
      v11 = a1[24];
      if (v11 <= v10)
      {
        break;
      }

      v12 = a1[25];
      v13 = v12 + (v10 << 6);
      v16 = *(v13 + 56);
      v15 = (v13 + 56);
      v14 = v16;
      if (v16 == -1)
      {
        v14 = a1[526];
        a1[526] = v14 + 1;
        *v15 = v14;
      }

      v10 = a3[1];
      if (v10 <= v7)
      {
        goto LABEL_23;
      }

      *(v8 - 2) = v14;
      v10 = *(a2 + 8);
      if (v10 <= v7)
      {
        goto LABEL_27;
      }

      v10 = *(i - 1);
      v11 = a1[18];
      if (v11 <= v10)
      {
        goto LABEL_31;
      }

      v17 = a1[19] + (v10 << 6);
      v20 = *(v17 + 56);
      v19 = (v17 + 56);
      v18 = v20;
      if (v20 == -1)
      {
        v18 = a1[524];
        a1[524] = v18 + 1;
        *v19 = v18;
      }

      v10 = a3[1];
      if (v10 <= v7)
      {
        goto LABEL_35;
      }

      *(v8 - 1) = v18;
      v10 = *(a2 + 8);
      if (v10 <= v7)
      {
        goto LABEL_39;
      }

      v10 = *i;
      v11 = a1[24];
      if (v11 <= *i)
      {
        goto LABEL_43;
      }

      v21 = v12 + (v10 << 6);
      v24 = *(v21 + 56);
      v23 = (v21 + 56);
      v22 = v24;
      if (v24 == -1)
      {
        v22 = a1[526];
        a1[526] = v22 + 1;
        *v23 = v22;
      }

      v10 = a3[1];
      if (v10 <= v7)
      {
        goto LABEL_47;
      }

      *v8 = v22;
      v8 += 3;
      if (++v7 >= *(a2 + 8))
      {
        return result;
      }
    }

    v49 = 0;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    v25 = MEMORY[0x1E69E9C10];
    v50 = 136315906;
    v51 = "operator[]";
    v52 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    v53 = 468;
    v54 = 2048;
    v55 = v10;
    v56 = 2048;
    v57 = v11;
    _os_log_send_and_compose_impl(v26, &v49, &v58, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v50, 38, v48);
    _os_crash_msg();
    __break(1u);
LABEL_23:
    v49 = 0;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    v27 = MEMORY[0x1E69E9C10];
    v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v50 = 136315906;
    v51 = "operator[]";
    v52 = 1024;
    if (v28)
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }

    v53 = 468;
    v54 = 2048;
    v55 = v7;
    v56 = 2048;
    v57 = v10;
    _os_log_send_and_compose_impl(v29, &v49, &v58, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v50, 38, v48);
    _os_crash_msg();
    __break(1u);
LABEL_27:
    v49 = 0;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    v30 = MEMORY[0x1E69E9C10];
    v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v50 = 136315906;
    v51 = "operator[]";
    v52 = 1024;
    if (v31)
    {
      v32 = 3;
    }

    else
    {
      v32 = 2;
    }

    v53 = 476;
    v54 = 2048;
    v55 = v7;
    v56 = 2048;
    v57 = v10;
    _os_log_send_and_compose_impl(v32, &v49, &v58, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v50, 38, v48);
    _os_crash_msg();
    __break(1u);
LABEL_31:
    v49 = 0;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    v33 = MEMORY[0x1E69E9C10];
    v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v50 = 136315906;
    v51 = "operator[]";
    v52 = 1024;
    if (v34)
    {
      v35 = 3;
    }

    else
    {
      v35 = 2;
    }

    v53 = 468;
    v54 = 2048;
    v55 = v10;
    v56 = 2048;
    v57 = v11;
    _os_log_send_and_compose_impl(v35, &v49, &v58, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v50, 38, v48);
    _os_crash_msg();
    __break(1u);
LABEL_35:
    v49 = 0;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    v36 = MEMORY[0x1E69E9C10];
    v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v50 = 136315906;
    v51 = "operator[]";
    v52 = 1024;
    if (v37)
    {
      v38 = 3;
    }

    else
    {
      v38 = 2;
    }

    v53 = 468;
    v54 = 2048;
    v55 = v7;
    v56 = 2048;
    v57 = v10;
    _os_log_send_and_compose_impl(v38, &v49, &v58, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v50, 38, v48);
    _os_crash_msg();
    __break(1u);
LABEL_39:
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
    v52 = 1024;
    if (v40)
    {
      v41 = 3;
    }

    else
    {
      v41 = 2;
    }

    v53 = 476;
    v54 = 2048;
    v55 = v7;
    v56 = 2048;
    v57 = v10;
    _os_log_send_and_compose_impl(v41, &v49, &v58, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v50, 38, v48);
    _os_crash_msg();
    __break(1u);
LABEL_43:
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

    v53 = 468;
    v54 = 2048;
    v55 = v10;
    v56 = 2048;
    v57 = v11;
    _os_log_send_and_compose_impl(v44, &v49, &v58, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v50, 38, v48);
    _os_crash_msg();
    __break(1u);
LABEL_47:
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
    v52 = 1024;
    if (v46)
    {
      v47 = 3;
    }

    else
    {
      v47 = 2;
    }

    v53 = 468;
    v54 = 2048;
    v55 = v7;
    v56 = 2048;
    v57 = v10;
    _os_log_send_and_compose_impl(v47, &v49, &v58, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v50, 38, v48);
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

char *re::anonymous namespace::RegisterMapping::allocateConstRegister<unsigned int>(char *a1, _DWORD *a2, unint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 6);
  if (v4 <= a3)
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

    v17 = 468;
    v18 = 2048;
    v19 = a3;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
LABEL_10:
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

    v17 = 468;
    v18 = 2048;
    v19 = a3;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  re::DynamicArray<int>::add((a1 + 3872), a2);
  v4 = *(a1 + 6);
  if (v4 <= a3)
  {
    goto LABEL_10;
  }

  *(*(a1 + 7) + (a3 << 6) + 48) = *(a1 + 486) - 1;
}

char *re::anonymous namespace::RegisterMapping::allocateConstRegister<float>(char *a1, float *a2, unint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 9);
  if (v4 <= a3)
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

    v17 = 468;
    v18 = 2048;
    v19 = a3;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
LABEL_10:
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

    v17 = 468;
    v18 = 2048;
    v19 = a3;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  re::DynamicArray<float>::add((a1 + 3912), a2);
  v4 = *(a1 + 9);
  if (v4 <= a3)
  {
    goto LABEL_10;
  }

  *(*(a1 + 10) + (a3 << 6) + 48) = *(a1 + 491) - 1;
}

char *re::anonymous namespace::RegisterMapping::allocateConstRegister<re::Matrix3x3<float>>(char *a1, uint64_t a2, unint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 12);
  if (v4 <= a3)
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

    v17 = 468;
    v18 = 2048;
    v19 = a3;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
LABEL_10:
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

    v17 = 468;
    v18 = 2048;
    v19 = a3;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  re::DynamicArray<re::Matrix3x3<float>>::add((a1 + 3952), a2);
  v4 = *(a1 + 12);
  if (v4 <= a3)
  {
    goto LABEL_10;
  }

  *(*(a1 + 13) + (a3 << 6) + 48) = *(a1 + 496) - 1;
}

char *re::anonymous namespace::RegisterMapping::allocateConstRegister<re::Matrix4x4<float>>(char *a1, uint64_t a2, unint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 15);
  if (v4 <= a3)
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

    v17 = 468;
    v18 = 2048;
    v19 = a3;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
LABEL_10:
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

    v17 = 468;
    v18 = 2048;
    v19 = a3;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  re::DynamicArray<re::Matrix4x4<float>>::add((a1 + 3992), a2);
  v4 = *(a1 + 15);
  if (v4 <= a3)
  {
    goto LABEL_10;
  }

  *(*(a1 + 16) + (a3 << 6) + 48) = *(a1 + 501) - 1;
}

char *re::anonymous namespace::RegisterMapping::allocateConstRegister<re::Quaternion<float>>(char *a1, __n128 *a2, unint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 18);
  if (v4 <= a3)
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

    v17 = 468;
    v18 = 2048;
    v19 = a3;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
LABEL_10:
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

    v17 = 468;
    v18 = 2048;
    v19 = a3;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  re::DynamicArray<re::Vector3<float>>::add((a1 + 4032), a2);
  v4 = *(a1 + 18);
  if (v4 <= a3)
  {
    goto LABEL_10;
  }

  *(*(a1 + 19) + (a3 << 6) + 48) = *(a1 + 506) - 1;
}

char *re::anonymous namespace::RegisterMapping::allocateConstRegister<re::Vector2<float>>(char *a1, void *a2, unint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 21);
  if (v4 <= a3)
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

    v17 = 468;
    v18 = 2048;
    v19 = a3;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
LABEL_10:
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

    v17 = 468;
    v18 = 2048;
    v19 = a3;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  re::DynamicArray<unsigned long>::add((a1 + 4072), a2);
  v4 = *(a1 + 21);
  if (v4 <= a3)
  {
    goto LABEL_10;
  }

  *(*(a1 + 22) + (a3 << 6) + 48) = *(a1 + 511) - 1;
}

char *re::anonymous namespace::RegisterMapping::allocateConstRegister<re::Vector3<float>>(char *a1, __n128 *a2, unint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 24);
  if (v4 <= a3)
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

    v17 = 468;
    v18 = 2048;
    v19 = a3;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
LABEL_10:
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

    v17 = 468;
    v18 = 2048;
    v19 = a3;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  re::DynamicArray<re::Vector3<float>>::add((a1 + 4112), a2);
  v4 = *(a1 + 24);
  if (v4 <= a3)
  {
    goto LABEL_10;
  }

  *(*(a1 + 25) + (a3 << 6) + 48) = *(a1 + 516) - 1;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisters<int>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a3, *a1, a2[1]);
  if (a2[1])
  {
    v7 = 0;
    v8 = *a2;
    v9 = a3[2];
    do
    {
      v10 = *(v8 + 8 * v7);
      v11 = a1[3];
      if (v11 <= v10)
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

        v22 = 476;
        v23 = 2048;
        v24 = v10;
        v25 = 2048;
        v26 = v11;
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
        v24 = v7;
        v25 = 2048;
        v26 = v11;
        _os_log_send_and_compose_impl(v16, &v18, &v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
        _os_crash_msg();
        __break(1u);
      }

      v11 = a3[1];
      if (v11 <= v7)
      {
        goto LABEL_11;
      }

      *(v9 + 8 * v7++) = *(a1[4] + (v10 << 6) + 56);
    }

    while (v7 < a2[1]);
  }

  return result;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisters<unsigned int>(uint64_t *a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a3 + 3, *a1, *(a2 + 24));
  if (*(a2 + 24))
  {
    v7 = 0;
    v8 = *(a2 + 16);
    v9 = a3[5];
    do
    {
      v10 = *(v8 + 8 * v7);
      v11 = a1[6];
      if (v11 <= v10)
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

        v22 = 476;
        v23 = 2048;
        v24 = v10;
        v25 = 2048;
        v26 = v11;
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
        v24 = v7;
        v25 = 2048;
        v26 = v11;
        _os_log_send_and_compose_impl(v16, &v18, &v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
        _os_crash_msg();
        __break(1u);
      }

      v11 = a3[4];
      if (v11 <= v7)
      {
        goto LABEL_11;
      }

      *(v9 + 8 * v7++) = *(a1[7] + (v10 << 6) + 56);
    }

    while (v7 < *(a2 + 24));
  }

  return result;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisters<float>(uint64_t *a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a3 + 6, *a1, *(a2 + 40));
  if (*(a2 + 40))
  {
    v7 = 0;
    v8 = *(a2 + 32);
    v9 = a3[8];
    do
    {
      v10 = *(v8 + 8 * v7);
      v11 = a1[9];
      if (v11 <= v10)
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

        v22 = 476;
        v23 = 2048;
        v24 = v10;
        v25 = 2048;
        v26 = v11;
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
        v24 = v7;
        v25 = 2048;
        v26 = v11;
        _os_log_send_and_compose_impl(v16, &v18, &v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
        _os_crash_msg();
        __break(1u);
      }

      v11 = a3[7];
      if (v11 <= v7)
      {
        goto LABEL_11;
      }

      *(v9 + 8 * v7++) = *(a1[10] + (v10 << 6) + 56);
    }

    while (v7 < *(a2 + 40));
  }

  return result;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisters<re::Matrix3x3<float>>(uint64_t *a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a3 + 9, *a1, *(a2 + 56));
  if (*(a2 + 56))
  {
    v7 = 0;
    v8 = *(a2 + 48);
    v9 = a3[11];
    do
    {
      v10 = *(v8 + 8 * v7);
      v11 = a1[12];
      if (v11 <= v10)
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

        v22 = 476;
        v23 = 2048;
        v24 = v10;
        v25 = 2048;
        v26 = v11;
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
        v24 = v7;
        v25 = 2048;
        v26 = v11;
        _os_log_send_and_compose_impl(v16, &v18, &v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
        _os_crash_msg();
        __break(1u);
      }

      v11 = a3[10];
      if (v11 <= v7)
      {
        goto LABEL_11;
      }

      *(v9 + 8 * v7++) = *(a1[13] + (v10 << 6) + 56);
    }

    while (v7 < *(a2 + 56));
  }

  return result;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisters<re::Matrix4x4<float>>(uint64_t *a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a3 + 12, *a1, *(a2 + 72));
  if (*(a2 + 72))
  {
    v7 = 0;
    v8 = *(a2 + 64);
    v9 = a3[14];
    do
    {
      v10 = *(v8 + 8 * v7);
      v11 = a1[15];
      if (v11 <= v10)
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

        v22 = 476;
        v23 = 2048;
        v24 = v10;
        v25 = 2048;
        v26 = v11;
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
        v24 = v7;
        v25 = 2048;
        v26 = v11;
        _os_log_send_and_compose_impl(v16, &v18, &v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
        _os_crash_msg();
        __break(1u);
      }

      v11 = a3[13];
      if (v11 <= v7)
      {
        goto LABEL_11;
      }

      *(v9 + 8 * v7++) = *(a1[16] + (v10 << 6) + 56);
    }

    while (v7 < *(a2 + 72));
  }

  return result;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisters<re::Quaternion<float>>(uint64_t *a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a3 + 15, *a1, *(a2 + 88));
  if (*(a2 + 88))
  {
    v7 = 0;
    v8 = *(a2 + 80);
    v9 = a3[17];
    do
    {
      v10 = *(v8 + 8 * v7);
      v11 = a1[18];
      if (v11 <= v10)
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

        v22 = 476;
        v23 = 2048;
        v24 = v10;
        v25 = 2048;
        v26 = v11;
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
        v24 = v7;
        v25 = 2048;
        v26 = v11;
        _os_log_send_and_compose_impl(v16, &v18, &v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
        _os_crash_msg();
        __break(1u);
      }

      v11 = a3[16];
      if (v11 <= v7)
      {
        goto LABEL_11;
      }

      *(v9 + 8 * v7++) = *(a1[19] + (v10 << 6) + 56);
    }

    while (v7 < *(a2 + 88));
  }

  return result;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisters<re::Vector2<float>>(uint64_t *a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a3 + 18, *a1, *(a2 + 104));
  if (*(a2 + 104))
  {
    v7 = 0;
    v8 = *(a2 + 96);
    v9 = a3[20];
    do
    {
      v10 = *(v8 + 8 * v7);
      v11 = a1[21];
      if (v11 <= v10)
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

        v22 = 476;
        v23 = 2048;
        v24 = v10;
        v25 = 2048;
        v26 = v11;
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
        v24 = v7;
        v25 = 2048;
        v26 = v11;
        _os_log_send_and_compose_impl(v16, &v18, &v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
        _os_crash_msg();
        __break(1u);
      }

      v11 = a3[19];
      if (v11 <= v7)
      {
        goto LABEL_11;
      }

      *(v9 + 8 * v7++) = *(a1[22] + (v10 << 6) + 56);
    }

    while (v7 < *(a2 + 104));
  }

  return result;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisters<re::Vector3<float>>(uint64_t *a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a3 + 21, *a1, *(a2 + 120));
  if (*(a2 + 120))
  {
    v7 = 0;
    v8 = *(a2 + 112);
    v9 = a3[23];
    do
    {
      v10 = *(v8 + 8 * v7);
      v11 = a1[24];
      if (v11 <= v10)
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

        v22 = 476;
        v23 = 2048;
        v24 = v10;
        v25 = 2048;
        v26 = v11;
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
        v24 = v7;
        v25 = 2048;
        v26 = v11;
        _os_log_send_and_compose_impl(v16, &v18, &v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
        _os_crash_msg();
        __break(1u);
      }

      v11 = a3[22];
      if (v11 <= v7)
      {
        goto LABEL_11;
      }

      *(v9 + 8 * v7++) = *(a1[25] + (v10 << 6) + 56);
    }

    while (v7 < *(a2 + 120));
  }

  return result;
}

void *re::anonymous namespace::RegisterMapping::initMappedRegisterArray(uint64_t *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v47 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationSRT>::init<>(a4, *a1, a3);
  if (a3)
  {
    v9 = 0;
    v10 = (a4[2] + 16);
    for (i = (a2 + 16); ; i += 3)
    {
      v12 = *(i - 2);
      v13 = a1[24];
      if (v13 <= v12)
      {
        break;
      }

      v13 = a4[1];
      if (v13 <= v9)
      {
        goto LABEL_15;
      }

      v14 = a1[25];
      *(v10 - 2) = *(v14 + (v12 << 6) + 56);
      v12 = *(i - 1);
      v13 = a1[18];
      if (v13 <= v12)
      {
        goto LABEL_19;
      }

      v13 = a4[1];
      if (v13 <= v9)
      {
        goto LABEL_23;
      }

      *(v10 - 1) = *(a1[19] + (v12 << 6) + 56);
      v12 = *i;
      v13 = a1[24];
      if (v13 <= *i)
      {
        goto LABEL_27;
      }

      v13 = a4[1];
      if (v13 <= v9)
      {
        goto LABEL_31;
      }

      *v10 = *(v14 + (v12 << 6) + 56);
      v10 += 3;
      if (a3 == ++v9)
      {
        return result;
      }
    }

    v33 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v37 = 476;
    v38 = 2048;
    v39 = v12;
    v40 = 2048;
    v41 = v13;
    _os_log_send_and_compose_impl(v16, &v33, &v42, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v32);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    v33 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v37 = 468;
    v38 = 2048;
    v39 = v9;
    v40 = 2048;
    v41 = v13;
    _os_log_send_and_compose_impl(v19, &v33, &v42, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v32);
    _os_crash_msg();
    __break(1u);
LABEL_19:
    v33 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    v20 = MEMORY[0x1E69E9C10];
    v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    if (v21)
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    v37 = 476;
    v38 = 2048;
    v39 = v12;
    v40 = 2048;
    v41 = v13;
    _os_log_send_and_compose_impl(v22, &v33, &v42, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v32);
    _os_crash_msg();
    __break(1u);
LABEL_23:
    v33 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    v23 = MEMORY[0x1E69E9C10];
    v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    if (v24)
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    v37 = 468;
    v38 = 2048;
    v39 = v9;
    v40 = 2048;
    v41 = v13;
    _os_log_send_and_compose_impl(v25, &v33, &v42, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v32);
    _os_crash_msg();
    __break(1u);
LABEL_27:
    v33 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    v26 = MEMORY[0x1E69E9C10];
    v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    if (v27)
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    v37 = 476;
    v38 = 2048;
    v39 = v12;
    v40 = 2048;
    v41 = v13;
    _os_log_send_and_compose_impl(v28, &v33, &v42, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v32);
    _os_crash_msg();
    __break(1u);
LABEL_31:
    v33 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    v29 = MEMORY[0x1E69E9C10];
    v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    if (v30)
    {
      v31 = 3;
    }

    else
    {
      v31 = 2;
    }

    v37 = 468;
    v38 = 2048;
    v39 = v9;
    v40 = 2048;
    v41 = v13;
    _os_log_send_and_compose_impl(v31, &v33, &v42, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v32);
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

void re::FixedRegisterTable::initSize<re::FixedRegisterIdTable>(void *a1, uint64_t a2, unint64_t *a3)
{
  re::FixedArray<int>::init<>(a1, a2, a3[1]);
  re::FixedArray<int>::init<>(a1 + 3, a2, a3[4]);
  re::FixedArray<int>::init<>(a1 + 6, a2, a3[7]);
  re::FixedArray<re::Matrix3x3<float>>::init<>(a1 + 9, a2, a3[10]);
  re::FixedArray<re::Matrix4x4<float>>::init<>(a1 + 12, a2, a3[13]);
  re::FixedArray<re::Quaternion<float>>::init<>(a1 + 15, a2, a3[16]);
  re::FixedArray<re::Vector2<float>>::init<>(a1 + 18, a2, a3[19]);
  v6 = a3[22];

  re::FixedArray<re::Vector3<float>>::init<>(a1 + 21, a2, v6);
}

uint64_t re::FixedArray<re::EvaluationSRT>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = *a2;
  if (*a1)
  {
    if (!v4)
    {
      return a1;
    }
  }

  else
  {
    if (!v4)
    {
      return a1;
    }

    re::FixedArray<re::EvaluationSRT>::init<>(a1, v4, *(a2 + 8));
  }

  v5 = *(a2 + 8);
  if (*(a1 + 8) == v5)
  {
    if (v5)
    {
      memmove(*(a1 + 16), *(a2 + 16), 24 * v5);
    }

    return a1;
  }

  re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
  result = _os_crash("assertion failure: (m_size == other.m_size) Cannot copy from a FixedArray of a different size");
  __break(1u);
  return result;
}

uint64_t re::FixedArray<re::EvaluationRegisterId<int>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = *a2;
  if (*a1)
  {
    if (!v4)
    {
      return a1;
    }
  }

  else
  {
    if (!v4)
    {
      return a1;
    }

    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a1, v4, *(a2 + 8));
  }

  v5 = *(a2 + 8);
  if (*(a1 + 8) == v5)
  {
    if (v5)
    {
      memmove(*(a1 + 16), *(a2 + 16), 8 * v5);
    }

    return a1;
  }

  re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
  result = _os_crash("assertion failure: (m_size == other.m_size) Cannot copy from a FixedArray of a different size");
  __break(1u);
  return result;
}

void re::anonymous namespace::$_0::__invoke(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected input command during evaluation.", "!Unreachable code", "operator()", 236);
  _os_crash("assertion failure: (!Unreachable code) Unexpected input command during evaluation.");
  __break(1u);
}

void re::anonymous namespace::$_1::__invoke(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected input command during evaluation.", "!Unreachable code", "operator()", 241);
  _os_crash("assertion failure: (!Unreachable code) Unexpected input command during evaluation.");
  __break(1u);
}

void re::anonymous namespace::$_2::__invoke(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected input command during evaluation.", "!Unreachable code", "operator()", 246);
  _os_crash("assertion failure: (!Unreachable code) Unexpected input command during evaluation.");
  __break(1u);
}

void re::anonymous namespace::$_3::__invoke(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected input command during evaluation.", "!Unreachable code", "operator()", 251);
  _os_crash("assertion failure: (!Unreachable code) Unexpected input command during evaluation.");
  __break(1u);
}

void re::anonymous namespace::$_4::__invoke(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected input command during evaluation.", "!Unreachable code", "operator()", 256);
  _os_crash("assertion failure: (!Unreachable code) Unexpected input command during evaluation.");
  __break(1u);
}

void re::anonymous namespace::$_5::__invoke(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected input command during evaluation.", "!Unreachable code", "operator()", 261);
  _os_crash("assertion failure: (!Unreachable code) Unexpected input command during evaluation.");
  __break(1u);
}

void re::anonymous namespace::$_6::__invoke(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected input command during evaluation.", "!Unreachable code", "operator()", 266);
  _os_crash("assertion failure: (!Unreachable code) Unexpected input command during evaluation.");
  __break(1u);
}

void re::anonymous namespace::$_7::__invoke(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected input command during evaluation.", "!Unreachable code", "operator()", 271);
  _os_crash("assertion failure: (!Unreachable code) Unexpected input command during evaluation.");
  __break(1u);
}

uint64_t re::anonymous namespace::$_8::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v4 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v6 = *(v4 - 2);
      v7 = *(a3 + 120);
      if (v7 <= v6)
      {
        goto LABEL_12;
      }

      v8 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v9 = *(v4 - 1);
      if (v7 <= v9)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v10 = *v4;
      if (v7 <= *v4)
      {
        goto LABEL_16;
      }

      *(*(a3 + 112) + 16 * v10) = vaddq_f32(*(*(a3 + 112) + 16 * v6), *(*(a3 + 112) + 16 * v9));
      v4 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v11, v17);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v18);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v19);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v20);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v21);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v7);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v22);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_9::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v4 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v6 = *(v4 - 2);
      v7 = *(a3 + 104);
      if (v7 <= v6)
      {
        goto LABEL_12;
      }

      v8 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v9 = *(v4 - 1);
      if (v7 <= v9)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v10 = *v4;
      if (v7 <= *v4)
      {
        goto LABEL_16;
      }

      *(*(a3 + 96) + 8 * v10) = vadd_f32(*(*(a3 + 96) + 8 * v6), *(*(a3 + 96) + 8 * v9));
      v4 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v11, v17);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v18);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v19);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v20);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v21);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v7);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v22);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_10::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 4)
  {
    v3 = 0;
    v4 = a2 >> 2;
    v5 = (result + 16);
    while (a2 > v3)
    {
      v6 = *(v5 - 2);
      v7 = *(a3 + 120);
      if (v7 <= v6)
      {
        goto LABEL_14;
      }

      v8 = v3 + 1;
      if (a2 <= v3 + 1)
      {
        goto LABEL_15;
      }

      v9 = *(v5 - 1);
      if (v7 <= v9)
      {
        goto LABEL_16;
      }

      v10 = v3 + 2;
      if (a2 <= v3 + 2)
      {
        goto LABEL_17;
      }

      v11 = *v5;
      if (v7 <= *v5)
      {
        goto LABEL_18;
      }

      v12 = v3 + 3;
      if (a2 <= v3 + 3)
      {
        goto LABEL_19;
      }

      v13 = v5[1];
      if (v7 <= v13)
      {
        goto LABEL_20;
      }

      v14 = *(a3 + 112);
      *(v14 + 16 * v13) = vmlaq_f32(*(v14 + 16 * v6), *(v14 + 16 * v11), vsubq_f32(*(v14 + 16 * v9), *(v14 + 16 * v6)));
      v3 += 4;
      v5 += 4;
      if (!--v4)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v3, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v23);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v24);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v25);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v26);
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v10, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v27);
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v28);
    __break(1u);
LABEL_19:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v12, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v29);
    __break(1u);
LABEL_20:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v13, v7);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v30);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_11::__invoke(uint64_t result, unint64_t a2, void *a3, double a4)
{
  if (a2 >= 4)
  {
    v4 = 0;
    v5 = a2 >> 2;
    v6 = (result + 16);
    LODWORD(a4) = 1.0;
    while (a2 > v4)
    {
      v7 = *(v6 - 2);
      v8 = a3[15];
      if (v8 <= v7)
      {
        goto LABEL_14;
      }

      v9 = v4 + 1;
      if (a2 <= v4 + 1)
      {
        goto LABEL_15;
      }

      v10 = *(v6 - 1);
      if (v8 <= v10)
      {
        goto LABEL_16;
      }

      v11 = v4 + 2;
      if (a2 <= v4 + 2)
      {
        goto LABEL_17;
      }

      v12 = *v6;
      v13 = a3[5];
      if (v13 <= *v6)
      {
        goto LABEL_18;
      }

      v14 = v4 + 3;
      if (a2 <= v4 + 3)
      {
        goto LABEL_19;
      }

      v15 = v6[1];
      if (v8 <= v15)
      {
        goto LABEL_20;
      }

      v16 = *(a3[4] + 4 * v12);
      *(a3[14] + 16 * v15) = vmlaq_n_f32(vmulq_n_f32(*(a3[14] + 16 * v10), v16), *(a3[14] + 16 * v7), 1.0 - v16);
      v4 += 4;
      v6 += 4;
      if (!--v5)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v4, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v25);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v7, v8);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v26);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v27);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v8);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v28);
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v29);
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v13);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v30);
    __break(1u);
LABEL_19:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v14, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v23, v31);
    __break(1u);
LABEL_20:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v15, v8);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v24, v32);
    __break(1u);
  }

  return result;
}

void re::anonymous namespace::$_12::__invoke(uint64_t a1, unint64_t a2, void *a3)
{
  if (a2 >= 4)
  {
    v6 = 0;
    v7 = a2 >> 2;
    v8 = (a1 + 16);
    while (a2 > v6)
    {
      v9 = *(v8 - 2);
      v3 = a3[11];
      if (v3 <= v9)
      {
        goto LABEL_23;
      }

      v10 = v6 + 1;
      if (a2 <= v6 + 1)
      {
        goto LABEL_24;
      }

      v11 = *(v8 - 1);
      if (v3 <= v11)
      {
        goto LABEL_25;
      }

      v12 = v6 + 2;
      if (a2 <= v6 + 2)
      {
        goto LABEL_26;
      }

      v13 = *v8;
      v14 = a3[5];
      if (v14 <= *v8)
      {
        goto LABEL_27;
      }

      v15 = a3[10];
      v16 = *(a3[4] + 4 * v13);
      v17 = *(v15 + 16 * v9);
      v18 = *(v15 + 16 * v11);
      v19 = vmulq_f32(v17, v18);
      v20 = vextq_s8(v19, v19, 8uLL);
      *v19.i8 = vadd_f32(*v19.i8, *v20.f32);
      *v19.i32 = vaddv_f32(*v19.i8);
      v20.i64[0] = 0;
      v21 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v19, v20)), 0), vnegq_f32(v18), v18);
      v22 = 1.0;
      v23 = vsubq_f32(v17, v21);
      v24 = vmulq_f32(v23, v23);
      v69 = v21;
      v70 = v17;
      v25 = vaddq_f32(v17, v21);
      v26 = vmulq_f32(v25, v25);
      v27 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v24.i8, *&vextq_s8(v24, v24, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL)))));
      v28 = v27 + v27;
      v29 = 1.0;
      if ((v27 + v27) != 0.0)
      {
        v29 = sinf(v27 + v27) / v28;
      }

      v30 = (1.0 - v16) * v28;
      if (v30 != 0.0)
      {
        v67 = v29;
        v31 = sinf((1.0 - v16) * v28);
        v29 = v67;
        v22 = v31 / v30;
      }

      v32 = v16 * v28;
      v33 = 1.0;
      if (v32 != 0.0)
      {
        v68 = v29;
        v34 = sinf(v32);
        v29 = v68;
        v33 = v34 / v32;
      }

      v35 = v29;
      v36 = vrecpe_f32(LODWORD(v29));
      v37 = vmul_f32(v36, vrecps_f32(LODWORD(v35), v36));
      v38 = vmul_f32(v37, vrecps_f32(LODWORD(v35), v37)).f32[0];
      *v37.i32 = (1.0 - v16) * (v38 * v22);
      v39 = vmlaq_f32(vmulq_n_f32(v69, v16 * (v38 * v33)), v70, vdupq_lane_s32(v37, 0));
      v40 = vmulq_f32(v39, v39);
      v41 = vadd_f32(*v40.i8, *&vextq_s8(v40, v40, 8uLL));
      if (vaddv_f32(v41) == 0.0)
      {
        v42 = 0;
        v43 = 0x3F80000000000000;
      }

      else
      {
        v44 = vadd_f32(v41, vdup_lane_s32(v41, 1)).u32[0];
        v45 = vrsqrte_f32(v44);
        v46 = vmul_f32(v45, vrsqrts_f32(v44, vmul_f32(v45, v45)));
        v47 = vmulq_n_f32(v39, vmul_f32(v46, vrsqrts_f32(v44, vmul_f32(v46, v46))).f32[0]);
        v43 = v47.i64[1];
        v42 = v47.i64[0];
      }

      v48 = v6 + 3;
      if (a2 <= v6 + 3)
      {
        goto LABEL_28;
      }

      v49 = v8[1];
      if (v3 <= v49)
      {
        goto LABEL_29;
      }

      v50 = (v15 + 16 * v49);
      *v50 = v42;
      v50[1] = v43;
      v6 += 4;
      v8 += 4;
      if (!--v7)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v51, v59);
    __break(1u);
LABEL_23:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v52, v60);
    __break(1u);
LABEL_24:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v10, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v53, v61);
    __break(1u);
LABEL_25:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v54, v62);
    __break(1u);
LABEL_26:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v12, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v55, v63);
    __break(1u);
LABEL_27:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v13, v14);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v56, v64);
    __break(1u);
LABEL_28:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v48, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v57, v65);
    __break(1u);
LABEL_29:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v49, v3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v58, v66);
    __break(1u);
  }
}

void re::anonymous namespace::$_13::__invoke(uint64_t a1, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    v5 = a2 / 3;
    v6 = (a1 + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v8 = *(v6 - 2);
      v9 = a3[15];
      if (v9 <= v8)
      {
        goto LABEL_12;
      }

      v10 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v11 = *(v6 - 1);
      v12 = a3[3];
      if (v12 <= v11)
      {
        goto LABEL_14;
      }

      v13 = a3[14] + 16 * v8;
      v14 = *(a3[2] + 4 * v11);
      v31 = xmmword_1E30474D0;
      re::convertIntrinsicEulersToQuaternions<float>(v13, 1, v14, &v31, 1);
      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v15 = *v6;
      v16 = a3[11];
      if (v16 <= *v6)
      {
        goto LABEL_16;
      }

      v17 = *(&v31 + 1);
      v18 = (a3[10] + 16 * v15);
      *v18 = v31;
      v18[1] = v17;
      v6 += 3;
      if (!--v5)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v25);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v9);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v26);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v10, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v27);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v12);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v28);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v23, v29);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v15, v16);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v24, v30);
    __break(1u);
  }
}

void re::anonymous namespace::$_14::__invoke(uint64_t a1, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    v5 = a2 / 3;
    v6 = (a1 + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v8 = *(v6 - 2);
      v9 = a3[11];
      if (v9 <= v8)
      {
        goto LABEL_12;
      }

      v10 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v11 = *(v6 - 1);
      v12 = a3[3];
      if (v12 <= v11)
      {
        goto LABEL_14;
      }

      v13 = a3[10] + 16 * v8;
      v14 = *(a3[2] + 4 * v11);
      v31 = 0u;
      re::convertQuaternionsToIntrinsicEulers<float>(v13, 1, v14, &v31, 1);
      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v15 = *v6;
      v16 = a3[15];
      if (v16 <= *v6)
      {
        goto LABEL_16;
      }

      v17 = *(&v31 + 1);
      v18 = (a3[14] + 16 * v15);
      *v18 = v31;
      v18[1] = v17;
      v6 += 3;
      if (!--v5)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v25);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v9);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v26);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v10, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v27);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v12);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v28);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v23, v29);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v15, v16);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v24, v30);
    __break(1u);
  }
}

uint64_t re::anonymous namespace::$_15::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v4 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v6 = *(v4 - 2);
      v7 = *(a3 + 120);
      if (v7 <= v6)
      {
        goto LABEL_12;
      }

      v8 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v9 = *(v4 - 1);
      if (v7 <= v9)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v10 = *v4;
      if (v7 <= *v4)
      {
        goto LABEL_16;
      }

      v11 = *(a3 + 112);
      v12 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*(v11 + 16 * v9), *(v11 + 16 * v9)), *(v11 + 16 * v9), 0xCuLL), vnegq_f32(*(v11 + 16 * v6))), *(v11 + 16 * v9), vextq_s8(vuzp1q_s32(*(v11 + 16 * v6), *(v11 + 16 * v6)), *(v11 + 16 * v6), 0xCuLL));
      *(v11 + 16 * v10) = vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL);
      v4 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v19);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v20);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v21);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v22);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v23);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v7);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v24);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_16::__invoke(uint64_t result, unint64_t a2, uint64_t a3, double a4)
{
  if (a2 >= 3)
  {
    v4 = a2 / 3;
    v5 = (result + 16);
    v6 = 2;
    LODWORD(a4) = 1.0;
    while (a2 > v6 - 2)
    {
      v7 = *(v5 - 2);
      v8 = *(a3 + 88);
      if (v8 <= v7)
      {
        goto LABEL_12;
      }

      v9 = v6 - 1;
      if (a2 <= v6 - 1)
      {
        goto LABEL_13;
      }

      v10 = *(v5 - 1);
      if (v8 <= v10)
      {
        goto LABEL_14;
      }

      if (a2 <= v6)
      {
        goto LABEL_15;
      }

      v11 = *v5;
      if (v8 <= *v5)
      {
        goto LABEL_16;
      }

      v12 = *(a3 + 80);
      v13 = *(v12 + 16 * v10);
      v14 = vmulq_f32(v13, v13);
      *v14.i32 = 1.0 / vaddv_f32(vadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)));
      _S3 = vmuls_lane_f32(*v14.i32, v13, 3);
      _Q1 = vmulq_n_f32(vnegq_f32(v13), *v14.i32);
      _Q2 = *(v12 + 16 * v7);
      v18 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL), vnegq_f32(_Q2)), _Q1, vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL));
      v19 = vmlaq_n_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), _Q1, _Q2, 3), _Q2, _S3);
      __asm { FMLA            S1, S3, V2.S[3] }

      v19.i32[3] = _Q1.i32[0];
      *(v12 + 16 * v11) = v19;
      v6 += 3;
      v5 += 3;
      if (!--v4)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6 - 2, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v24, v30);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v7, v8);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v25, v31);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v26, v32);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v8);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v27, v33);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v28, v34);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v8);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v29, v35);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_17::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v4 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v6 = *(v4 - 2);
      v7 = *(a3 + 120);
      if (v7 <= v6)
      {
        goto LABEL_12;
      }

      v8 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v9 = *(v4 - 1);
      if (v7 <= v9)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v10 = *v4;
      if (v7 <= *v4)
      {
        goto LABEL_16;
      }

      *(*(a3 + 112) + 16 * v10) = vdivq_f32(*(*(a3 + 112) + 16 * v6), *(*(a3 + 112) + 16 * v9));
      v4 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v11, v17);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v18);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v19);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v20);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v21);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v7);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v22);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_18::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    v3 = a2 >> 1;
    v4 = (result + 8);
    for (i = 1; a2 > i - 1; i += 2)
    {
      v6 = *(v4 - 1);
      v7 = *(a3 + 88);
      if (v7 <= v6)
      {
        goto LABEL_10;
      }

      if (a2 <= i)
      {
        goto LABEL_11;
      }

      v8 = *v4;
      if (v7 <= *v4)
      {
        goto LABEL_12;
      }

      v9 = *(a3 + 80);
      v10 = vnegq_f32(*(v9 + 16 * v6));
      v10.i32[3] = HIDWORD(*(v9 + 16 * v6));
      *(v9 + 16 * v8) = v10;
      v4 += 2;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 1, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v11, v15);
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v16);
    __break(1u);
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v17);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v7);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v18);
    __break(1u);
  }

  return result;
}

void re::anonymous namespace::$_19::__invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    v5 = a2 >> 1;
    v6 = (a1 + 8);
    for (i = 1; a2 > i - 1; i += 2)
    {
      v8 = *(v6 - 1);
      v9 = *(a3 + 56);
      if (v9 <= v8)
      {
        goto LABEL_10;
      }

      v21 = __invert_f3(*(*(a3 + 48) + 48 * v8));
      if (a2 <= i)
      {
        goto LABEL_11;
      }

      v10 = *v6;
      v11 = *(a3 + 56);
      if (v11 <= *v6)
      {
        goto LABEL_12;
      }

      v12 = *(a3 + 48) + 48 * v10;
      *(v12 + 8) = v21.columns[0].i32[2];
      *v12 = v21.columns[0].i64[0];
      *(v12 + 16) = v21.columns[1].i64[0];
      *(v12 + 24) = v21.columns[1].i32[2];
      *(v12 + 32) = v21.columns[2].i64[0];
      *(v12 + 40) = v21.columns[2].i32[2];
      v6 += 2;
      if (!--v5)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 1, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v17);
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v9);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v18);
    __break(1u);
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v19);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v11);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v20);
    __break(1u);
  }
}

void re::anonymous namespace::$_20::__invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    v5 = a2 >> 1;
    v6 = (a1 + 8);
    for (i = 1; a2 > i - 1; i += 2)
    {
      v8 = *(v6 - 1);
      v9 = *(a3 + 72);
      if (v9 <= v8)
      {
        goto LABEL_10;
      }

      v20 = __invert_f4(*(*(a3 + 64) + (v8 << 6)));
      if (a2 <= i)
      {
        goto LABEL_11;
      }

      v10 = *v6;
      v11 = *(a3 + 72);
      if (v11 <= *v6)
      {
        goto LABEL_12;
      }

      *(*(a3 + 64) + (v10 << 6)) = v20;
      v6 += 2;
      if (!--v5)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 1, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v16);
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v9);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v17);
    __break(1u);
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v18);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v11);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v19);
    __break(1u);
  }
}

uint64_t re::anonymous namespace::$_21::__invoke(uint64_t result, unint64_t a2, uint64_t a3, double a4)
{
  if (a2 >= 2)
  {
    v4 = a2 >> 1;
    v5 = (result + 8);
    v6 = 1;
    LODWORD(a4) = 1.0;
    while (a2 > v6 - 1)
    {
      v7 = *(v5 - 1);
      v8 = *(a3 + 88);
      if (v8 <= v7)
      {
        goto LABEL_10;
      }

      if (a2 <= v6)
      {
        goto LABEL_11;
      }

      v9 = *v5;
      if (v8 <= *v5)
      {
        goto LABEL_12;
      }

      v10 = *(a3 + 80);
      v11 = *(v10 + 16 * v7);
      v12 = vmulq_f32(v11, v11);
      *v12.i32 = 1.0 / vaddv_f32(vadd_f32(*v12.i8, *&vextq_s8(v12, v12, 8uLL)));
      v13 = vmuls_lane_f32(*v12.i32, v11, 3);
      v14 = vmulq_n_f32(vnegq_f32(v11), *v12.i32);
      v14.f32[3] = v13;
      *(v10 + 16 * v9) = v14;
      v6 += 2;
      v5 += 2;
      if (!--v4)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6 - 1, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v19);
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v7, v8);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v20);
    __break(1u);
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v21);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v8);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v22);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_22::__invoke(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v5 = a3[14];
    v4 = a3[15];
    v7 = a3[4];
    v6 = a3[5];
    v8 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v10 = *(v8 - 2);
      if (v4 <= v10)
      {
        goto LABEL_12;
      }

      v11 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v12 = *(v8 - 1);
      if (v4 <= v12)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v13 = *v8;
      if (v6 <= *v8)
      {
        goto LABEL_16;
      }

      v14 = vmulq_f32(*(v5 + 16 * v10), *(v5 + 16 * v12));
      *(v7 + 4 * v13) = v14.f32[2] + vaddv_f32(*v14.f32);
      v8 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v21);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v22);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v23);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v24);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v25);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v13, v6);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v26);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_23::__invoke(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v5 = a3[12];
    v4 = a3[13];
    v7 = a3[4];
    v6 = a3[5];
    v8 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v10 = *(v8 - 2);
      if (v4 <= v10)
      {
        goto LABEL_12;
      }

      v11 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v12 = *(v8 - 1);
      if (v4 <= v12)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v13 = *v8;
      if (v6 <= *v8)
      {
        goto LABEL_16;
      }

      *(v7 + 4 * v13) = vaddv_f32(vmul_f32(*(v5 + 8 * v10), *(v5 + 8 * v12)));
      v8 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v20);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v21);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v22);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v23);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v24);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v13, v6);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v25);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_24::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v4 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v6 = *(v4 - 2);
      v7 = *(a3 + 88);
      if (v7 <= v6)
      {
        goto LABEL_12;
      }

      v8 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v9 = *(v4 - 1);
      if (v7 <= v9)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v10 = *v4;
      if (v7 <= *v4)
      {
        goto LABEL_16;
      }

      v11 = *(a3 + 80);
      _Q0 = *(v11 + 16 * v6);
      _Q1 = *(v11 + 16 * v9);
      _Q3 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL), vnegq_f32(_Q0)), _Q1, vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL));
      v15 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), _Q1, _Q0, 3);
      _Q3.i32[0] = _Q1.i32[3];
      v16 = vmlaq_laneq_f32(v15, _Q0, _Q1, 3);
      __asm { FMLA            S1, S3, V0.S[3] }

      v16.i32[3] = _Q1.i32[0];
      *(v11 + 16 * v10) = v16;
      v4 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v27);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v28);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v23, v29);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v24, v30);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v25, v31);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v7);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v26, v32);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_25::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v4 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v6 = *(v4 - 2);
      v7 = *(a3 + 120);
      if (v7 <= v6)
      {
        goto LABEL_12;
      }

      v8 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v9 = *(v4 - 1);
      if (v7 <= v9)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v10 = *v4;
      if (v7 <= *v4)
      {
        goto LABEL_16;
      }

      *(*(a3 + 112) + 16 * v10) = vmulq_f32(*(*(a3 + 112) + 16 * v6), *(*(a3 + 112) + 16 * v9));
      v4 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v11, v17);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v18);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v19);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v20);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v21);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v7);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v22);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_26::__invoke(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v4 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v6 = *(v4 - 2);
      v7 = a3[15];
      if (v7 <= v6)
      {
        goto LABEL_12;
      }

      v8 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v9 = *(v4 - 1);
      v10 = a3[5];
      if (v10 <= v9)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v11 = *v4;
      if (v7 <= *v4)
      {
        goto LABEL_16;
      }

      *(a3[14] + 16 * v11) = vmulq_n_f32(*(a3[14] + 16 * v6), *(a3[4] + 4 * v9));
      v4 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v18);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v19);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v20);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v10);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v21);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v22);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v7);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v23);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_27::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    v3 = 0;
    while (1)
    {
      v4 = 3 * v3;
      if (a2 <= 3 * v3)
      {
        break;
      }

      v5 = *(result + 24 * v3);
      v6 = *(a3 + 56);
      if (v6 <= v5)
      {
        goto LABEL_14;
      }

      v7 = v4 + 1;
      if (a2 <= v4 + 1)
      {
        goto LABEL_15;
      }

      v8 = *(result + 8 * v7);
      if (v6 <= v8)
      {
        goto LABEL_16;
      }

      v9 = 0;
      v10 = *(a3 + 48);
      v11 = (v10 + 48 * v5);
      v12 = (v10 + 48 * v8);
      v13 = *v11;
      v14 = v11[1];
      v15 = v11[2];
      v16 = v12[1];
      v17 = v12[2];
      v36 = *v12;
      v37 = v16;
      v38 = v17;
      do
      {
        *(&v39 + v9) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(*(&v36 + v9))), v14, *(&v36 + v9), 1), v15, *(&v36 + v9), 2);
        v9 += 16;
      }

      while (v9 != 48);
      v18 = v4 + 2;
      if (a2 <= v18)
      {
        goto LABEL_17;
      }

      v19 = *(result + 8 * v18);
      if (v6 <= v19)
      {
        goto LABEL_18;
      }

      v20 = v40;
      v21 = v41;
      v22 = v42;
      v23 = v10 + 48 * v19;
      *v23 = v39;
      *(v23 + 8) = v20;
      *(v23 + 16) = v21;
      *(v23 + 24) = DWORD2(v21);
      *(v23 + 32) = v22;
      *(v23 + 40) = DWORD2(v22);
      if (++v3 == a2 / 3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3 * v3, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v24, v30);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v5, v6, v36, v37, v38);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v25, v31);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v7, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v26, v32);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v6);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v27, v33);
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v18, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v28, v34);
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v19, v6);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v29, v35);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_28::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    v3 = 0;
    while (1)
    {
      v4 = 3 * v3;
      if (a2 <= 3 * v3)
      {
        break;
      }

      v5 = *(result + 24 * v3);
      v6 = *(a3 + 72);
      if (v6 <= v5)
      {
        goto LABEL_14;
      }

      v7 = v4 + 1;
      if (a2 <= v4 + 1)
      {
        goto LABEL_15;
      }

      v8 = *(result + 8 * v7);
      if (v6 <= v8)
      {
        goto LABEL_16;
      }

      v9 = 0;
      v10 = *(a3 + 64);
      v11 = (v10 + (v5 << 6));
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[2];
      v15 = v11[3];
      v16 = (v10 + (v8 << 6));
      v17 = v16[1];
      v18 = v16[2];
      v19 = v16[3];
      v38 = *v16;
      v39 = v17;
      v40 = v18;
      v41 = v19;
      do
      {
        v42[v9 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, COERCE_FLOAT(*(&v38 + v9))), v13, *(&v38 + v9), 1), v14, *(&v38 + v9), 2), v15, *(&v38 + v9), 3);
        v9 += 16;
      }

      while (v9 != 64);
      v20 = v4 + 2;
      if (a2 <= v20)
      {
        goto LABEL_17;
      }

      v21 = *(result + 8 * v20);
      if (v6 <= v21)
      {
        goto LABEL_18;
      }

      v22 = v42[1];
      v23 = v42[2];
      v24 = v42[3];
      v25 = (v10 + (v21 << 6));
      *v25 = v42[0];
      v25[1] = v22;
      v25[2] = v23;
      v25[3] = v24;
      if (++v3 == a2 / 3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3 * v3, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v26, v32);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v5, v6, v38, v39, v40, v41);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v27, v33);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v7, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v28, v34);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v6);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v29, v35);
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v20, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v30, v36);
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v21, v6);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v31, v37);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_29::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    v3 = a2 >> 1;
    v4 = (result + 8);
    for (i = 1; a2 > i - 1; i += 2)
    {
      v6 = *(v4 - 1);
      v7 = *(a3 + 120);
      if (v7 <= v6)
      {
        goto LABEL_10;
      }

      if (a2 <= i)
      {
        goto LABEL_11;
      }

      v8 = *v4;
      if (v7 <= *v4)
      {
        goto LABEL_12;
      }

      v9 = *(a3 + 112);
      v10 = *(v9 + 16 * v6);
      v11 = vmulq_f32(v10, v10);
      *&v12 = v11.f32[2] + vaddv_f32(*v11.f32);
      *v11.f32 = vrsqrte_f32(v12);
      *v11.f32 = vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32)));
      *(v9 + 16 * v8) = vmulq_n_f32(v10, vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32))).f32[0]);
      v4 += 2;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 1, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v17);
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v18);
    __break(1u);
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v19);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v7);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v20);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_30::__invoke(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v4 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v6 = *(v4 - 2);
      v7 = a3[11];
      if (v7 <= v6)
      {
        goto LABEL_12;
      }

      v8 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v9 = *(v4 - 1);
      v10 = a3[15];
      if (v10 <= v9)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v11 = *v4;
      if (v10 <= *v4)
      {
        goto LABEL_16;
      }

      v12 = a3[14];
      v13 = *(a3[10] + 16 * v6);
      v14 = *(v12 + 16 * v9);
      v15 = vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL);
      v16 = vnegq_f32(v13);
      v17 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL), v16), v14, v15);
      v18 = vaddq_f32(v17, v17);
      v19 = vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL);
      v20 = vaddq_f32(v14, vmulq_laneq_f32(v19, v13, 3));
      v21 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), v16), v19, v15);
      *(v12 + 16 * v11) = vaddq_f32(v20, vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL));
      v4 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v28);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v23, v29);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v24, v30);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v10);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v25, v31);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v26, v32);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v10);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v27, v33);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_31::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v4 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v6 = *(v4 - 2);
      v7 = *(a3 + 120);
      if (v7 <= v6)
      {
        goto LABEL_12;
      }

      v8 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v9 = *(v4 - 1);
      if (v7 <= v9)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v10 = *v4;
      if (v7 <= *v4)
      {
        goto LABEL_16;
      }

      *(*(a3 + 112) + 16 * v10) = vsubq_f32(*(*(a3 + 112) + 16 * v6), *(*(a3 + 112) + 16 * v9));
      v4 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v11, v17);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v18);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v19);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v20);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v21);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v7);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v22);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_32::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v4 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v6 = *(v4 - 2);
      v7 = *(a3 + 104);
      if (v7 <= v6)
      {
        goto LABEL_12;
      }

      v8 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v9 = *(v4 - 1);
      if (v7 <= v9)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v10 = *v4;
      if (v7 <= *v4)
      {
        goto LABEL_16;
      }

      *(*(a3 + 96) + 8 * v10) = vsub_f32(*(*(a3 + 96) + 8 * v6), *(*(a3 + 96) + 8 * v9));
      v4 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v11, v17);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v18);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v19);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v20);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v21);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v7);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v22);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_33::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    v3 = a2 >> 1;
    v4 = (result + 8);
    for (i = 1; a2 > i - 1; i += 2)
    {
      v6 = *(v4 - 1);
      v7 = *(a3 + 56);
      if (v7 <= v6)
      {
        goto LABEL_10;
      }

      if (a2 <= i)
      {
        goto LABEL_11;
      }

      v8 = *v4;
      if (v7 <= *v4)
      {
        goto LABEL_12;
      }

      v9 = *(a3 + 48);
      v10 = (v9 + 48 * v6);
      v11 = v10[1];
      v12 = vzip1q_s32(*v10, v11).u64[0];
      v13 = vzip2q_s32(vzip1q_s32(*v10, v10[2]), vdupq_lane_s32(*v11.i8, 1));
      v14 = vzip2q_s32(*v10, v11).u64[0];
      v15 = v10[2].i64[1];
      v16 = v9 + 48 * v8;
      *(v16 + 8) = v10[2];
      *v16 = v12;
      *(v16 + 16) = v13.i64[0];
      *(v16 + 24) = v13.i32[2];
      *(v16 + 32) = v14;
      *(v16 + 40) = v15;
      v4 += 2;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 1, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v21);
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v22);
    __break(1u);
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v23);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v7);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v24);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_34::__invoke(uint64_t result, unint64_t a2, void *a3, __n128 a4, __n128 a5, __n128 a6)
{
  if (a2 >= 2)
  {
    v6 = a2 >> 1;
    v7 = (result + 8);
    for (i = 1; a2 > i - 1; i += 2)
    {
      v9 = *(v7 - 1);
      v10 = a3[9];
      if (v10 <= v9)
      {
        goto LABEL_10;
      }

      if (a2 <= i)
      {
        goto LABEL_11;
      }

      v11 = *v7;
      v12 = a3[7];
      if (v12 <= *v7)
      {
        goto LABEL_12;
      }

      v13 = a3[8] + (v9 << 6);
      a4.n128_u64[0] = *v13;
      a5.n128_u64[0] = *(v13 + 16);
      a6.n128_u64[0] = *(v13 + 32);
      a4.n128_u32[2] = *(v13 + 8);
      a5.n128_u32[2] = *(v13 + 24);
      a6.n128_u32[2] = *(v13 + 40);
      v14 = (a3[6] + 48 * v11);
      *v14 = a4;
      v14[1] = a5;
      v14[2] = a6;
      v7 += 2;
      if (!--v6)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a3, a4.n128_f64[0], a5.n128_f64[0], a6.n128_f64[0], "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 1, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v19);
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v10);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v20);
    __break(1u);
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v21);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v12);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v22);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_35::__invoke(uint64_t result, unint64_t a2, void *a3, double a4, double a5)
{
  if (a2 >= 2)
  {
    v5 = a2 >> 1;
    v6 = (result + 8);
    v7 = 1;
    LODWORD(a4) = 1.0;
    LODWORD(a5) = 0.25;
    while (a2 > v7 - 1)
    {
      v8 = *(v6 - 1);
      v9 = a3[7];
      if (v9 <= v8)
      {
        goto LABEL_19;
      }

      v10 = a3[6] + 48 * v8;
      v11 = *(v10 + 16);
      v12 = vmulq_f32(*v10, *v10);
      *&v13 = v12.f32[2] + vaddv_f32(*v12.f32);
      *v12.f32 = vrsqrte_f32(v13);
      *v12.f32 = vmul_f32(*v12.f32, vrsqrts_f32(v13, vmul_f32(*v12.f32, *v12.f32)));
      v14 = vmulq_n_f32(*v10, vmul_f32(*v12.f32, vrsqrts_f32(v13, vmul_f32(*v12.f32, *v12.f32))).f32[0]);
      v15 = vmulq_f32(v11, v14);
      v16 = vmulq_f32(v14, v14);
      v17 = *(v10 + 32);
      v18 = vmulq_f32(v14, v17);
      *v18.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v18, v18, 8uLL), *&vextq_s8(v16, v16, 8uLL)), vadd_f32(vzip1_s32(*v18.i8, *v16.i8), vzip2_s32(*v18.i8, *v16.i8)));
      v19 = vsubq_f32(v11, vmulq_n_f32(v14, (v15.f32[2] + vaddv_f32(*v15.f32)) / *&v18.i32[1]));
      v20 = vmulq_f32(v19, v19);
      *v16.i32 = v20.f32[2] + vaddv_f32(*v20.f32);
      *v20.f32 = vrsqrte_f32(v16.u32[0]);
      *v20.f32 = vmul_f32(*v20.f32, vrsqrts_f32(v16.u32[0], vmul_f32(*v20.f32, *v20.f32)));
      v21 = vmulq_n_f32(v19, vmul_f32(*v20.f32, vrsqrts_f32(v16.u32[0], vmul_f32(*v20.f32, *v20.f32))).f32[0]);
      v22 = vsubq_f32(v17, vmulq_n_f32(v14, *v18.i32 / *&v18.i32[1]));
      v23 = vmulq_f32(v17, v21);
      v24 = vmulq_f32(v21, v21);
      *v23.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v23, v23, 8uLL), *&vextq_s8(v24, v24, 8uLL)), vadd_f32(vzip1_s32(*v23.i8, *v24.i8), vzip2_s32(*v23.i8, *v24.i8)));
      v25 = vsubq_f32(v22, vmulq_n_f32(v21, vdiv_f32(*v23.i8, vdup_lane_s32(*v23.i8, 1)).f32[0]));
      v26 = vmulq_f32(v25, v25);
      *v24.i32 = v26.f32[2] + vaddv_f32(*v26.f32);
      *v26.f32 = vrsqrte_f32(v24.u32[0]);
      *v26.f32 = vmul_f32(*v26.f32, vrsqrts_f32(v24.u32[0], vmul_f32(*v26.f32, *v26.f32)));
      v27 = vmulq_n_f32(v25, vmul_f32(*v26.f32, vrsqrts_f32(v24.u32[0], vmul_f32(*v26.f32, *v26.f32))).f32[0]);
      v28 = (v14.f32[0] + v21.f32[1]) + v27.f32[2];
      if (v28 >= 0.0)
      {
        v38 = sqrtf(v28 + 1.0);
        v39 = v38 + v38;
        v40 = vrecpe_f32(COERCE_UNSIGNED_INT(v38 + v38));
        v41 = vmul_f32(v40, vrecps_f32(COERCE_UNSIGNED_INT(v38 + v38), v40));
        v42 = vmul_f32(v41, vrecps_f32(COERCE_UNSIGNED_INT(v38 + v38), v41)).f32[0];
        *&v34 = (v21.f32[2] - v27.f32[1]) * v42;
        v35 = (v27.f32[0] - v14.f32[2]) * v42;
        v36 = (v14.f32[1] - v21.f32[0]) * v42;
        v43 = v39 * 0.25;
      }

      else
      {
        if (v14.f32[0] < v21.f32[1] || v14.f32[0] < v27.f32[2])
        {
          v44 = 1.0 - v14.f32[0];
          if (v21.f32[1] >= v27.f32[2])
          {
            v49 = sqrtf(v21.f32[1] + (v44 - v27.f32[2]));
            v50 = v49 + v49;
            v51 = vrecpe_f32(COERCE_UNSIGNED_INT(v49 + v49));
            v52 = vmul_f32(v51, vrecps_f32(COERCE_UNSIGNED_INT(v49 + v49), v51));
            v33 = vmul_f32(v52, vrecps_f32(COERCE_UNSIGNED_INT(v49 + v49), v52)).f32[0];
            *&v34 = (v14.f32[1] + v21.f32[0]) * v33;
            v35 = v50 * 0.25;
            v36 = (v21.f32[2] + v27.f32[1]) * v33;
            v37 = v27.f32[0] - v14.f32[2];
          }

          else
          {
            v45 = sqrtf((v44 - v21.f32[1]) + v27.f32[2]);
            v46 = v45 + v45;
            v47 = vrecpe_f32(COERCE_UNSIGNED_INT(v45 + v45));
            v48 = vmul_f32(v47, vrecps_f32(COERCE_UNSIGNED_INT(v45 + v45), v47));
            v33 = vmul_f32(v48, vrecps_f32(COERCE_UNSIGNED_INT(v45 + v45), v48)).f32[0];
            *&v34 = (v14.f32[2] + v27.f32[0]) * v33;
            v35 = (v21.f32[2] + v27.f32[1]) * v33;
            v36 = v46 * 0.25;
            v37 = v14.f32[1] - v21.f32[0];
          }
        }

        else
        {
          v29 = sqrtf(v14.f32[0] + ((1.0 - v21.f32[1]) - v27.f32[2]));
          *&v30 = v29 + v29;
          v31 = vrecpe_f32(v30);
          v32 = vmul_f32(v31, vrecps_f32(v30, v31));
          v33 = vmul_f32(v32, vrecps_f32(v30, v32)).f32[0];
          *&v34 = *&v30 * 0.25;
          v35 = (v14.f32[1] + v21.f32[0]) * v33;
          v36 = (v14.f32[2] + v27.f32[0]) * v33;
          v37 = v21.f32[2] - v27.f32[1];
        }

        v43 = v37 * v33;
      }

      if (a2 <= v7)
      {
        goto LABEL_20;
      }

      v53 = *v6;
      v54 = a3[11];
      if (v54 <= *v6)
      {
        goto LABEL_21;
      }

      *(&v34 + 1) = v35;
      *(&v34 + 1) = __PAIR64__(LODWORD(v43), LODWORD(v36));
      *(a3[10] + 16 * v53) = v34;
      v7 += 2;
      v6 += 2;
      if (!--v5)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a3, a4, a5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v7 - 1, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v55, v59);
    __break(1u);
LABEL_19:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v9);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v56, v60);
    __break(1u);
LABEL_20:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v7, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v57, v61);
    __break(1u);
LABEL_21:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v53, v54);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v58, v62);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_36::__invoke(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >= 2)
  {
    v3 = a2 >> 1;
    v4 = (result + 8);
    for (i = 1; a2 > i - 1; i += 2)
    {
      v6 = *(v4 - 1);
      v7 = a3[7];
      if (v7 <= v6)
      {
        goto LABEL_10;
      }

      if (a2 <= i)
      {
        goto LABEL_11;
      }

      v8 = *v4;
      v9 = a3[15];
      if (v9 <= *v4)
      {
        goto LABEL_12;
      }

      v10 = (a3[6] + 48 * v6);
      v11 = vmulq_f32(*v10, *v10);
      v12 = vmulq_f32(v10[1], v10[1]);
      v13 = vadd_f32(vzip1_s32(*v11.i8, *v12.i8), vzip2_s32(*v11.i8, *v12.i8));
      v14 = vextq_s8(v11, v11, 8uLL);
      *v14.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*v14.i8, *&vextq_s8(v12, v12, 8uLL)), v13));
      v15 = vmulq_f32(v10[2], v10[2]);
      v14.i32[2] = sqrtf(v15.f32[2] + vaddv_f32(*v15.f32));
      *(a3[14] + 16 * v8) = v14;
      v4 += 2;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 1, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v20);
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v21);
    __break(1u);
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v22);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v9);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v23);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_37::__invoke(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >= 2)
  {
    v3 = a2 >> 1;
    v4 = (result + 8);
    for (i = 1; a2 > i - 1; i += 2)
    {
      v6 = *(v4 - 1);
      v7 = a3[9];
      if (v7 <= v6)
      {
        goto LABEL_10;
      }

      if (a2 <= i)
      {
        goto LABEL_11;
      }

      v8 = *v4;
      v9 = a3[15];
      if (v9 <= *v4)
      {
        goto LABEL_12;
      }

      *(a3[14] + 16 * v8) = *(a3[8] + (v6 << 6) + 48);
      v4 += 2;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 1, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v10, v14);
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v11, v15);
    __break(1u);
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v16);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v9);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v17);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_38::__invoke(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >= 4)
  {
    v3 = 0;
    v4 = a2 >> 2;
    v5 = (result + 16);
    while (a2 > v3)
    {
      v6 = *(v5 - 2);
      v7 = a3[15];
      if (v7 <= v6)
      {
        goto LABEL_14;
      }

      v8 = v3 + 1;
      if (a2 <= v3 + 1)
      {
        goto LABEL_15;
      }

      v9 = *(v5 - 1);
      if (v7 <= v9)
      {
        goto LABEL_16;
      }

      v10 = v3 + 2;
      if (a2 <= v3 + 2)
      {
        goto LABEL_17;
      }

      v11 = *v5;
      if (v7 <= *v5)
      {
        goto LABEL_18;
      }

      v12 = v3 + 3;
      if (a2 <= v3 + 3)
      {
        goto LABEL_19;
      }

      v13 = v5[1];
      v14 = a3[7];
      if (v14 <= v13)
      {
        goto LABEL_20;
      }

      v15 = a3[14];
      v16 = *(v15 + 16 * v6);
      v17 = *(v15 + 16 * v9);
      v18 = *(v15 + 16 * v11);
      v19 = (a3[6] + 48 * v13);
      *v19 = v16;
      v19[1] = v17;
      v19[2] = v18;
      v3 += 4;
      v5 += 4;
      if (!--v4)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v3, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v28);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v29);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v30);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v23, v31);
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v10, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v24, v32);
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v25, v33);
    __break(1u);
LABEL_19:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v12, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v26, v34);
    __break(1u);
LABEL_20:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v13, v14);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v27, v35);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_39::__invoke(uint64_t result, unint64_t a2, void *a3, double a4, __n128 a5, __n128 a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  if (a2 >= 3)
  {
    v9 = 0;
    LODWORD(a4) = 1.0;
    while (1)
    {
      v10 = 3 * v9;
      if (a2 <= 3 * v9)
      {
        break;
      }

      v11 = *(result + 24 * v9);
      v12 = a3[15];
      if (v12 <= v11)
      {
        goto LABEL_14;
      }

      v13 = (a3[14] + 16 * v11);
      DWORD1(v14) = 0;
      *(&v14 + 1) = 0;
      v15 = v10 + 1;
      if (a2 <= v10 + 1)
      {
        goto LABEL_15;
      }

      v16 = *(result + 8 * v15);
      v17 = a3[11];
      if (v17 <= v16)
      {
        goto LABEL_16;
      }

      v18 = 0;
      LODWORD(v19) = 0;
      HIDWORD(v19) = 0;
      *(&v19 + 4) = v13[1];
      *&v20 = 0;
      *(&v20 + 1) = v13[2];
      v21 = (a3[10] + 16 * v16);
      v22 = *v21;
      v23 = v21[1];
      v24 = v23 + v23;
      v25 = v21[2];
      v26 = v21[3];
      v27 = v25 + v25;
      v28 = v22 * (v22 + v22);
      v29 = v23 * (v23 + v23);
      v30 = v25 * (v25 + v25);
      v31 = (v22 + v22) * v23;
      v32 = (v22 + v22) * v25;
      v33 = v24 * v25;
      v34 = (v22 + v22) * v26;
      a7.f32[0] = 1.0 - (v29 + v30);
      a7.f32[1] = v31 + (v27 * v26);
      a8.f32[0] = v31 - (v27 * v26);
      a8.f32[1] = 1.0 - (v28 + v30);
      a9.f32[0] = v32 + (v24 * v26);
      a9.f32[1] = v33 - v34;
      LODWORD(v14) = *v13;
      v51 = v14;
      v52 = v19;
      v53 = v20;
      do
      {
        a8.f32[2] = v33 + v34;
        a9.f32[2] = 1.0 - (v28 + v29);
        a7.f32[2] = v32 - (v24 * v26);
        v54[v18] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a7, COERCE_FLOAT(*(&v51 + v18 * 16))), a8, *(&v51 + v18 * 16), 1), a9, *(&v51 + v18 * 16), 2);
        ++v18;
      }

      while (v18 != 3);
      v35 = v10 + 2;
      if (a2 <= v35)
      {
        goto LABEL_17;
      }

      v36 = *(result + 8 * v35);
      v37 = a3[7];
      if (v37 <= v36)
      {
        goto LABEL_18;
      }

      a5 = v54[0];
      a6 = v54[1];
      a7 = v54[2];
      v38 = a3[6] + 48 * v36;
      *v38 = *&v54[0];
      *(v38 + 8) = a5.n128_u32[2];
      *(v38 + 16) = a6.n128_u64[0];
      *(v38 + 24) = a6.n128_u32[2];
      *(v38 + 32) = a7.i64[0];
      *(v38 + 40) = a7.i32[2];
      if (++v9 == a2 / 3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a3, a4, a5.n128_f64[0], a6.n128_f64[0], *a7.i64, *a8.i64, *a9.i64, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3 * v9, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v39, v45);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v12, v51, v52, v53);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v40, v46);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v15, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v41, v47);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v16, v17);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v42, v48);
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v35, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v43, v49);
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v36, v37);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v44, v50);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_40::__invoke(uint64_t result, unint64_t a2, void *a3, double a4)
{
  if (a2 >= 3)
  {
    v4 = a2 / 3;
    v5 = (result + 16);
    v6 = 2;
    LODWORD(a4) = 1.0;
    while (a2 > v6 - 2)
    {
      v7 = *(v5 - 2);
      v8 = a3[7];
      if (v8 <= v7)
      {
        goto LABEL_12;
      }

      v9 = v6 - 1;
      if (a2 <= v6 - 1)
      {
        goto LABEL_13;
      }

      v10 = *(v5 - 1);
      v11 = a3[15];
      if (v11 <= v10)
      {
        goto LABEL_14;
      }

      if (a2 <= v6)
      {
        goto LABEL_15;
      }

      v12 = *v5;
      v13 = a3[9];
      if (v13 <= *v5)
      {
        goto LABEL_16;
      }

      v14 = a3[6] + 48 * v7;
      *&v15 = *v14;
      v16 = *(v14 + 8);
      *&v17 = *(v14 + 16);
      v18 = *(v14 + 24);
      *&v19 = *(v14 + 32);
      v20 = *(v14 + 40);
      v21 = a3[14] + 16 * v10;
      *(&v15 + 1) = v16;
      *(&v17 + 1) = v18;
      *(&v19 + 1) = v20;
      *&v22 = *v21;
      DWORD2(v22) = *(v21 + 8);
      HIDWORD(v22) = 1.0;
      v23 = (a3[8] + (v12 << 6));
      *v23 = v15;
      v23[1] = v17;
      v23[2] = v19;
      v23[3] = v22;
      v6 += 3;
      v5 += 3;
      if (!--v4)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6 - 2, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v24, v30);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v7, v8);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v25, v31);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v26, v32);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v11);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v27, v33);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v28, v34);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v13);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v29, v35);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_41::__invoke(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v4 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v6 = *(v4 - 2);
      v7 = a3[7];
      if (v7 <= v6)
      {
        goto LABEL_12;
      }

      v8 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v9 = *(v4 - 1);
      v10 = a3[15];
      if (v10 <= v9)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v11 = *v4;
      if (v10 <= *v4)
      {
        goto LABEL_16;
      }

      v12 = a3[14];
      *(v12 + 16 * v11) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*(a3[6] + 48 * v6), COERCE_FLOAT(*(v12 + 16 * v9))), *(a3[6] + 48 * v6 + 16), *(v12 + 16 * v9), 1), *(a3[6] + 48 * v6 + 32), *(v12 + 16 * v9), 2);
      v4 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v19);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v20);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v21);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v10);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v22);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v23);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v10);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v24);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_42::__invoke(uint64_t result, unint64_t a2, void *a3, float32x4_t a4, float32x4_t a5, float32x4_t a6)
{
  if (a2 >= 3)
  {
    v6 = a2 / 3;
    v7 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v9 = *(v7 - 2);
      v10 = a3[9];
      if (v10 <= v9)
      {
        goto LABEL_12;
      }

      v11 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v12 = *(v7 - 1);
      v13 = a3[15];
      if (v13 <= v12)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v14 = *v7;
      if (v13 <= *v7)
      {
        goto LABEL_16;
      }

      v15 = a3[8] + (v9 << 6);
      v16 = a3[14];
      a4.i64[0] = *v15;
      a5.i64[0] = *(v15 + 16);
      a6.i64[0] = *(v15 + 32);
      a4.i32[2] = *(v15 + 8);
      a5.i32[2] = *(v15 + 24);
      a6.i32[2] = *(v15 + 40);
      a4 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, COERCE_FLOAT(*(v16 + 16 * v12))), a5, *(v16 + 16 * v12), 1), a6, *(v16 + 16 * v12), 2);
      *(v16 + 16 * v14) = a4;
      v7 += 3;
      if (!--v6)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a3, *a4.i64, *a5.i64, *a6.i64, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v23);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v10);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v25);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v13);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v26);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v27);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v14, v13);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v28);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_43::__invoke(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v4 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v6 = *(v4 - 2);
      v7 = a3[9];
      if (v7 <= v6)
      {
        goto LABEL_12;
      }

      v8 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v9 = *(v4 - 1);
      v10 = a3[15];
      if (v10 <= v9)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v11 = *v4;
      if (v10 <= *v4)
      {
        goto LABEL_16;
      }

      v12 = (a3[8] + (v6 << 6));
      v13 = a3[14];
      v14 = vaddq_f32(v12[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v12, COERCE_FLOAT(*(v13 + 16 * v9))), v12[1], *(v13 + 16 * v9), 1), v12[2], *(v13 + 16 * v9), 2));
      *(v13 + 16 * v11) = vdivq_f32(v14, vdupq_laneq_s32(v14, 3));
      v4 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v21);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v22);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v23);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v10);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v24);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v25);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v10);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v26);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_44::__invoke(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v5 = a3[10];
    v4 = a3[11];
    v7 = a3[4];
    v6 = a3[5];
    v8 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v10 = *(v8 - 2);
      if (v4 <= v10)
      {
        goto LABEL_12;
      }

      v11 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v12 = *(v8 - 1);
      if (v4 <= v12)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v13 = *v8;
      if (v6 <= *v8)
      {
        goto LABEL_16;
      }

      v14 = vmulq_f32(*(v5 + 16 * v10), *(v5 + 16 * v12));
      *(v7 + 4 * v13) = vaddv_f32(vadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)));
      v8 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v21);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v22);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v23);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v24);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v25);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v13, v6);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v26);
    __break(1u);
  }

  return result;
}

void re::anonymous namespace::$_45::__invoke(uint64_t a1, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    v5 = a2 / 3;
    v6 = (a1 + 16);
    for (i = 1; a2 > i; i += 3)
    {
      v8 = *(v6 - 1);
      v9 = a3[5];
      if (v9 <= v8)
      {
        goto LABEL_11;
      }

      v10 = *(v6 - 2);
      v11 = a3[15];
      if (v11 <= v10)
      {
        goto LABEL_12;
      }

      v27 = *(a3[14] + 16 * v10);
      v12 = __sincosf_stret(*(a3[4] + 4 * v8) * 0.5);
      v13 = i + 1;
      if (a2 <= i + 1)
      {
        goto LABEL_13;
      }

      v14 = *v6;
      v15 = a3[11];
      if (v15 <= *v6)
      {
        goto LABEL_14;
      }

      v16 = vmulq_n_f32(v27, v12.__sinval);
      v16.i32[3] = LODWORD(v12.__cosval);
      *(a3[10] + 16 * v14) = v16;
      v6 += 3;
      if (!--v5)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v22);
    __break(1u);
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v9);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v23);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v11);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v13, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v25);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v14, v15);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v26);
    __break(1u);
  }
}

uint64_t re::anonymous namespace::$_46::__invoke(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v4 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v6 = *(v4 - 2);
      v7 = a3[15];
      if (v7 <= v6)
      {
        goto LABEL_12;
      }

      v8 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v9 = *(v4 - 1);
      v10 = a3[5];
      if (v10 <= v9)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v11 = *v4;
      v12 = a3[11];
      if (v12 <= *v4)
      {
        goto LABEL_16;
      }

      v13 = *(a3[14] + 16 * v6);
      HIDWORD(v13) = *(a3[4] + 4 * v9);
      *(a3[10] + 16 * v11) = v13;
      v4 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v20);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v21);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v22);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v10);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v23);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v24);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v12);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v25);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_47::__invoke(uint64_t result, unint64_t a2, void *a3, __n128 a4)
{
  if (a2 >= 4)
  {
    v4 = 0;
    v5 = a2 >> 2;
    v6 = (result + 16);
    while (a2 > v4)
    {
      v7 = *(v6 - 2);
      v8 = a3[5];
      if (v8 <= v7)
      {
        goto LABEL_14;
      }

      v9 = v4 + 1;
      if (a2 <= v4 + 1)
      {
        goto LABEL_15;
      }

      v10 = *(v6 - 1);
      if (v8 <= v10)
      {
        goto LABEL_16;
      }

      v11 = v4 + 2;
      if (a2 <= v4 + 2)
      {
        goto LABEL_17;
      }

      v12 = *v6;
      if (v8 <= *v6)
      {
        goto LABEL_18;
      }

      v13 = v4 + 3;
      if (a2 <= v4 + 3)
      {
        goto LABEL_19;
      }

      v14 = v6[1];
      v15 = a3[15];
      if (v15 <= v14)
      {
        goto LABEL_20;
      }

      v16 = a3[4];
      a4.n128_u32[0] = *(v16 + 4 * v7);
      a4.n128_u32[1] = *(v16 + 4 * v10);
      a4.n128_u32[2] = *(v16 + 4 * v12);
      *(a3[14] + 16 * v14) = a4;
      v4 += 4;
      v6 += 4;
      if (!--v5)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a3, a4.n128_f64[0], "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v4, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v25);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v7, v8);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v26);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v27);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v8);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v28);
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v29);
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v8);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v30);
    __break(1u);
LABEL_19:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v13, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v23, v31);
    __break(1u);
LABEL_20:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v14, v15);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v24, v32);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_48::__invoke(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v4 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v6 = *(v4 - 2);
      v7 = a3[5];
      if (v7 <= v6)
      {
        goto LABEL_12;
      }

      v8 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v9 = *(v4 - 1);
      if (v7 <= v9)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v10 = *v4;
      v11 = a3[13];
      if (v11 <= *v4)
      {
        goto LABEL_16;
      }

      v12 = a3[4];
      LODWORD(v13) = *(v12 + 4 * v6);
      HIDWORD(v13) = *(v12 + 4 * v9);
      *(a3[12] + 8 * v10) = v13;
      v4 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v20);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v21);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v22);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v23);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v24);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v11);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v25);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_49::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v5 = *(a3 + 32);
    v4 = *(a3 + 40);
    v6 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v8 = *(v6 - 2);
      if (v4 <= v8)
      {
        goto LABEL_12;
      }

      v9 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v10 = *(v6 - 1);
      if (v4 <= v10)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v11 = *v6;
      if (v4 <= *v6)
      {
        goto LABEL_16;
      }

      *(v5 + 4 * v11) = *(v5 + 4 * v8) + *(v5 + 4 * v10);
      v6 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v18);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v19);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v20);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v21);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v22);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v4);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v23);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_50::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v5 = *(a3 + 32);
    v4 = *(a3 + 40);
    v6 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v8 = *(v6 - 2);
      if (v4 <= v8)
      {
        goto LABEL_12;
      }

      v9 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v10 = *(v6 - 1);
      if (v4 <= v10)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v11 = *v6;
      if (v4 <= *v6)
      {
        goto LABEL_16;
      }

      *(v5 + 4 * v11) = *(v5 + 4 * v8) - *(v5 + 4 * v10);
      v6 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v18);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v19);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v20);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v21);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v22);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v4);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v23);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_51::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v5 = *(a3 + 32);
    v4 = *(a3 + 40);
    v6 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v8 = *(v6 - 2);
      if (v4 <= v8)
      {
        goto LABEL_12;
      }

      v9 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v10 = *(v6 - 1);
      if (v4 <= v10)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v11 = *v6;
      if (v4 <= *v6)
      {
        goto LABEL_16;
      }

      *(v5 + 4 * v11) = *(v5 + 4 * v8) * *(v5 + 4 * v10);
      v6 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v18);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v19);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v20);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v21);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v22);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v4);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v23);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_52::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v5 = *(a3 + 32);
    v4 = *(a3 + 40);
    v6 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v8 = *(v6 - 2);
      if (v4 <= v8)
      {
        goto LABEL_12;
      }

      v9 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v10 = *(v6 - 1);
      if (v4 <= v10)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v11 = *v6;
      if (v4 <= *v6)
      {
        goto LABEL_16;
      }

      *(v5 + 4 * v11) = *(v5 + 4 * v8) / *(v5 + 4 * v10);
      v6 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v18);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v19);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v20);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v21);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v22);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v4);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v23);
    __break(1u);
  }

  return result;
}

void re::anonymous namespace::$_53::__invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    v4 = a2 >> 1;
    v6 = *(a3 + 32);
    v5 = *(a3 + 40);
    v7 = (a1 + 8);
    for (i = 1; a2 > i - 1; i += 2)
    {
      v9 = *(v7 - 1);
      if (v5 <= v9)
      {
        goto LABEL_10;
      }

      v10 = sinf(*(v6 + 4 * v9));
      if (a2 <= i)
      {
        goto LABEL_11;
      }

      v11 = *v7;
      if (v5 <= *v7)
      {
        goto LABEL_12;
      }

      *(v6 + 4 * v11) = v10;
      v7 += 2;
      if (!--v4)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 1, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v16);
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v17);
    __break(1u);
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v18);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v19);
    __break(1u);
  }
}

void re::anonymous namespace::$_54::__invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    v4 = a2 >> 1;
    v6 = *(a3 + 32);
    v5 = *(a3 + 40);
    v7 = (a1 + 8);
    for (i = 1; a2 > i - 1; i += 2)
    {
      v9 = *(v7 - 1);
      if (v5 <= v9)
      {
        goto LABEL_10;
      }

      v10 = cosf(*(v6 + 4 * v9));
      if (a2 <= i)
      {
        goto LABEL_11;
      }

      v11 = *v7;
      if (v5 <= *v7)
      {
        goto LABEL_12;
      }

      *(v6 + 4 * v11) = v10;
      v7 += 2;
      if (!--v4)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 1, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v16);
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v17);
    __break(1u);
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v18);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v19);
    __break(1u);
  }
}

void re::anonymous namespace::$_55::__invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    v4 = a2 >> 1;
    v6 = *(a3 + 32);
    v5 = *(a3 + 40);
    v7 = (a1 + 8);
    for (i = 1; a2 > i - 1; i += 2)
    {
      v9 = *(v7 - 1);
      if (v5 <= v9)
      {
        goto LABEL_10;
      }

      v10 = tanf(*(v6 + 4 * v9));
      if (a2 <= i)
      {
        goto LABEL_11;
      }

      v11 = *v7;
      if (v5 <= *v7)
      {
        goto LABEL_12;
      }

      *(v6 + 4 * v11) = v10;
      v7 += 2;
      if (!--v4)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 1, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v16);
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v17);
    __break(1u);
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v18);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v19);
    __break(1u);
  }
}

void re::anonymous namespace::$_56::__invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    v4 = a2 >> 1;
    v6 = *(a3 + 32);
    v5 = *(a3 + 40);
    v7 = (a1 + 8);
    for (i = 1; a2 > i - 1; i += 2)
    {
      v9 = *(v7 - 1);
      if (v5 <= v9)
      {
        goto LABEL_10;
      }

      v10 = asinf(*(v6 + 4 * v9));
      if (a2 <= i)
      {
        goto LABEL_11;
      }

      v11 = *v7;
      if (v5 <= *v7)
      {
        goto LABEL_12;
      }

      *(v6 + 4 * v11) = v10;
      v7 += 2;
      if (!--v4)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 1, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v16);
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v17);
    __break(1u);
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v18);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v19);
    __break(1u);
  }
}

void re::anonymous namespace::$_57::__invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    v4 = a2 >> 1;
    v6 = *(a3 + 32);
    v5 = *(a3 + 40);
    v7 = (a1 + 8);
    for (i = 1; a2 > i - 1; i += 2)
    {
      v9 = *(v7 - 1);
      if (v5 <= v9)
      {
        goto LABEL_10;
      }

      v10 = acosf(*(v6 + 4 * v9));
      if (a2 <= i)
      {
        goto LABEL_11;
      }

      v11 = *v7;
      if (v5 <= *v7)
      {
        goto LABEL_12;
      }

      *(v6 + 4 * v11) = v10;
      v7 += 2;
      if (!--v4)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 1, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v16);
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v17);
    __break(1u);
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v18);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v19);
    __break(1u);
  }
}

void re::anonymous namespace::$_58::__invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    v4 = a2 >> 1;
    v6 = *(a3 + 32);
    v5 = *(a3 + 40);
    v7 = (a1 + 8);
    for (i = 1; a2 > i - 1; i += 2)
    {
      v9 = *(v7 - 1);
      if (v5 <= v9)
      {
        goto LABEL_10;
      }

      v10 = atanf(*(v6 + 4 * v9));
      if (a2 <= i)
      {
        goto LABEL_11;
      }

      v11 = *v7;
      if (v5 <= *v7)
      {
        goto LABEL_12;
      }

      *(v6 + 4 * v11) = v10;
      v7 += 2;
      if (!--v4)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 1, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v16);
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v17);
    __break(1u);
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v18);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v19);
    __break(1u);
  }
}

void re::anonymous namespace::$_59::__invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    v4 = a2 / 3;
    v6 = *(a3 + 32);
    v5 = *(a3 + 40);
    v7 = (a1 + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v9 = *(v7 - 2);
      if (v5 <= v9)
      {
        goto LABEL_12;
      }

      v10 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v11 = *(v7 - 1);
      if (v5 <= v11)
      {
        goto LABEL_14;
      }

      v12 = atan2f(*(v6 + 4 * v9), *(v6 + 4 * v11));
      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v13 = *v7;
      if (v5 <= *v7)
      {
        goto LABEL_16;
      }

      *(v6 + 4 * v13) = v12;
      v7 += 3;
      if (!--v4)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v20);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v21);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v10, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v22);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v23);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v24);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v13, v5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v25);
    __break(1u);
  }
}

uint64_t re::anonymous namespace::$_60::__invoke(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >= 4)
  {
    v3 = 0;
    v4 = a2 >> 2;
    v6 = a3[2];
    v5 = a3[3];
    v7 = (result + 16);
    v9 = a3[4];
    v8 = a3[5];
    while (a2 > v3)
    {
      v10 = *(v7 - 2);
      if (v5 <= v10)
      {
        goto LABEL_16;
      }

      if (*(v6 + 4 * v10))
      {
        v11 = v3 + 1;
        if (a2 <= v3 + 1)
        {
          goto LABEL_19;
        }

        v12 = *(v7 - 1);
        if (v8 <= v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v13 = v3 + 2;
        if (a2 <= v3 + 2)
        {
          goto LABEL_21;
        }

        v12 = *v7;
        if (v8 <= *v7)
        {
          goto LABEL_22;
        }
      }

      v14 = v3 + 3;
      if (a2 <= v3 + 3)
      {
        goto LABEL_17;
      }

      v15 = v7[1];
      if (v8 <= v15)
      {
        goto LABEL_18;
      }

      *(v9 + 4 * v15) = *(v9 + 4 * v12);
      v3 += 4;
      v7 += 4;
      if (!--v4)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v3, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v24);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v25);
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v14, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v26);
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v15, v8);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v27);
    __break(1u);
LABEL_19:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v28);
    __break(1u);
LABEL_20:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v8);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v29);
    __break(1u);
LABEL_21:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v13, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v30);
    __break(1u);
LABEL_22:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v8);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v23, v31);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_61::__invoke(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v5 = a3[4];
    v4 = a3[5];
    v7 = a3[2];
    v6 = a3[3];
    v8 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v10 = *(v8 - 2);
      if (v4 <= v10)
      {
        goto LABEL_12;
      }

      v11 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v12 = *(v8 - 1);
      if (v4 <= v12)
      {
        goto LABEL_14;
      }

      v13 = *(v5 + 4 * v10) > *(v5 + 4 * v12);
      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v14 = *v8;
      if (v6 <= *v8)
      {
        goto LABEL_16;
      }

      *(v7 + 4 * v14) = v13;
      v8 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v21);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v22);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v23);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v24);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v25);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v14, v6);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v26);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_62::__invoke(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v5 = a3[4];
    v4 = a3[5];
    v7 = a3[2];
    v6 = a3[3];
    v8 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v10 = *(v8 - 2);
      if (v4 <= v10)
      {
        goto LABEL_12;
      }

      v11 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v12 = *(v8 - 1);
      if (v4 <= v12)
      {
        goto LABEL_14;
      }

      v13 = *(v5 + 4 * v10) >= *(v5 + 4 * v12);
      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v14 = *v8;
      if (v6 <= *v8)
      {
        goto LABEL_16;
      }

      *(v7 + 4 * v14) = v13;
      v8 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v21);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v22);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v23);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v24);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v25);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v14, v6);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v26);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_63::__invoke(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v5 = a3[4];
    v4 = a3[5];
    v7 = a3[2];
    v6 = a3[3];
    v8 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v10 = *(v8 - 2);
      if (v4 <= v10)
      {
        goto LABEL_12;
      }

      v11 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v12 = *(v8 - 1);
      if (v4 <= v12)
      {
        goto LABEL_14;
      }

      v13 = *(v5 + 4 * v10) < *(v5 + 4 * v12);
      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v14 = *v8;
      if (v6 <= *v8)
      {
        goto LABEL_16;
      }

      *(v7 + 4 * v14) = v13;
      v8 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v21);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v22);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v23);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v24);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v25);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v14, v6);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v26);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_64::__invoke(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v5 = a3[4];
    v4 = a3[5];
    v7 = a3[2];
    v6 = a3[3];
    v8 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v10 = *(v8 - 2);
      if (v4 <= v10)
      {
        goto LABEL_12;
      }

      v11 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v12 = *(v8 - 1);
      if (v4 <= v12)
      {
        goto LABEL_14;
      }

      v13 = *(v5 + 4 * v10) <= *(v5 + 4 * v12);
      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v14 = *v8;
      if (v6 <= *v8)
      {
        goto LABEL_16;
      }

      *(v7 + 4 * v14) = v13;
      v8 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v21);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v22);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v23);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v24);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v25);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v14, v6);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v26);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_65::__invoke(uint64_t result, unint64_t a2, uint64_t *a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v5 = *a3;
    v4 = a3[1];
    v7 = a3[2];
    v6 = a3[3];
    v8 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v10 = *(v8 - 2);
      if (v4 <= v10)
      {
        goto LABEL_12;
      }

      v11 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v12 = *(v8 - 1);
      if (v4 <= v12)
      {
        goto LABEL_14;
      }

      v13 = *(v5 + 4 * v10) == *(v5 + 4 * v12);
      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v14 = *v8;
      if (v6 <= *v8)
      {
        goto LABEL_16;
      }

      *(v7 + 4 * v14) = v13;
      v8 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v21);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v22);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v23);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v24);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v25);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v14, v6);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v26);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_66::__invoke(uint64_t result, unint64_t a2, uint64_t *a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v5 = *a3;
    v4 = a3[1];
    v7 = a3[2];
    v6 = a3[3];
    v8 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v10 = *(v8 - 2);
      if (v4 <= v10)
      {
        goto LABEL_12;
      }

      v11 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v12 = *(v8 - 1);
      if (v4 <= v12)
      {
        goto LABEL_14;
      }

      v13 = *(v5 + 4 * v10) == *(v5 + 4 * v12);
      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v14 = *v8;
      if (v6 <= *v8)
      {
        goto LABEL_16;
      }

      *(v7 + 4 * v14) = v13;
      v8 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v21);
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v22);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v23);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v24);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v25);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v14, v6);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v26);
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_67::__invoke(uint64_t result, unint64_t a2, void *a3, double a4, double a5)
{
  if (a2 >= 3)
  {
    v5 = a2 / 3;
    v7 = a3[4];
    v6 = a3[5];
    v9 = a3[2];
    v8 = a3[3];
    v10 = (result + 16);
    v11 = 2;
    LODWORD(a4) = 1.0;
    LODWORD(a5) = 925353388;
    while (a2 > v11 - 2)
    {
      v12 = *(v10 - 2);
      if (v6 <= v12)
      {
        goto LABEL_15;
      }

      v13 = v11 - 1;
      if (a2 <= v11 - 1)
      {
        goto LABEL_16;
      }

      v14 = *(v10 - 1);
      if (v6 <= v14)
      {
        goto LABEL_17;
      }

      v15 = *(v7 + 4 * v12);
      v16 = *(v7 + 4 * v14);
      v17 = v15 == v16 || vabds_f32(v15, v16) < (((fabsf(v15) + fabsf(v16)) + 1.0) * 0.00001);
      if (a2 <= v11)
      {
        goto LABEL_18;
      }

      v18 = *v10;
      if (v8 <= *v10)
      {
        goto LABEL_19;
      }

      *(v9 + 4 * v18) = v17;
      v11 += 3;
      v10 += 3;
      if (!--v5)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a4, a5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11 - 2, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v25);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v6);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v26);
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v13, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v27);
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v14, v6);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v28);
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v23, v29);
    __break(1u);
LABEL_19:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v18, v8);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v24, v30);
    __break(1u);
  }

  return result;
}

void re::anonymous namespace::$_68::__invoke(_BOOL8 a1, unint64_t a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    v5 = a1;
    v6 = 0;
    for (i = a2 / 3; i; --i)
    {
      v8 = *re::animationLogObjects(a1);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
      if (v9)
      {
        if (a2 <= v6)
        {
          re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, a2);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v24);
          __break(1u);
LABEL_14:
          re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, a2);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v25);
          __break(1u);
LABEL_15:
          re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v12);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v26);
          __break(1u);
LABEL_16:
          re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v17, v18);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v23, v27);
          __break(1u);
        }

        v11 = *(v5 + 8 * v6);
        v12 = a3[3];
        if (v12 <= v11)
        {
          goto LABEL_15;
        }

        v13 = *(a3[2] + 4 * v11);
        *buf = 67109120;
        v29 = v13;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_INFO, "Int32 %u:", buf, 8u);
      }

      v14 = *re::animationLogObjects(v9);
      a1 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
      if (a1)
      {
        v16 = v6 + 1;
        if (a2 <= v6 + 1)
        {
          goto LABEL_14;
        }

        v17 = *(v5 + 8 * v6 + 8);
        v18 = a3[1];
        if (v18 <= v17)
        {
          goto LABEL_16;
        }

        v19 = *(*a3 + 4 * v17);
        *buf = 67109120;
        v29 = v19;
        _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_INFO, "%i", buf, 8u);
      }

      v6 += 3;
    }
  }
}

void re::anonymous namespace::$_69::__invoke(_BOOL8 a1, unint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    v5 = a1;
    v6 = 0;
    for (i = a2 / 3; i; --i)
    {
      v8 = *re::animationLogObjects(a1);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
      if (v9)
      {
        if (a2 <= v6)
        {
          re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, a2);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v24);
          __break(1u);
LABEL_14:
          re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, a2);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v25);
          __break(1u);
LABEL_15:
          re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v12);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v26);
          __break(1u);
LABEL_16:
          re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v17, v18);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v23, v27);
          __break(1u);
        }

        v11 = *(v5 + 8 * v6);
        v12 = *(a3 + 24);
        if (v12 <= v11)
        {
          goto LABEL_15;
        }

        v13 = *(*(a3 + 16) + 4 * v11);
        *buf = 67109120;
        v29 = v13;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_INFO, "UInt32 %u:", buf, 8u);
      }

      v14 = *re::animationLogObjects(v9);
      a1 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
      if (a1)
      {
        v16 = v6 + 1;
        if (a2 <= v6 + 1)
        {
          goto LABEL_14;
        }

        v17 = *(v5 + 8 * v6 + 8);
        v18 = *(a3 + 24);
        if (v18 <= v17)
        {
          goto LABEL_16;
        }

        v19 = *(*(a3 + 16) + 4 * v17);
        *buf = 67109120;
        v29 = v19;
        _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_INFO, "%u", buf, 8u);
      }

      v6 += 3;
    }
  }
}

void re::anonymous namespace::$_70::__invoke(_BOOL8 a1, unint64_t a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    v5 = a1;
    v6 = 0;
    for (i = a2 / 3; i; --i)
    {
      v8 = *re::animationLogObjects(a1);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
      if (v9)
      {
        if (a2 <= v6)
        {
          re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, a2);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v24);
          __break(1u);
LABEL_14:
          re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, a2);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v25);
          __break(1u);
LABEL_15:
          re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v12);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v26);
          __break(1u);
LABEL_16:
          re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v17, v18);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v23, v27);
          __break(1u);
        }

        v11 = *(v5 + 8 * v6);
        v12 = a3[3];
        if (v12 <= v11)
        {
          goto LABEL_15;
        }

        v13 = *(a3[2] + 4 * v11);
        *buf = 67109120;
        LODWORD(v29) = v13;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_INFO, "Float %u:", buf, 8u);
      }

      v14 = *re::animationLogObjects(v9);
      a1 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
      if (a1)
      {
        v16 = v6 + 1;
        if (a2 <= v6 + 1)
        {
          goto LABEL_14;
        }

        v17 = *(v5 + 8 * v6 + 8);
        v18 = a3[5];
        if (v18 <= v17)
        {
          goto LABEL_16;
        }

        v19 = *(a3[4] + 4 * v17);
        *buf = 134217984;
        v29 = v19;
        _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_INFO, "%f", buf, 0xCu);
      }

      v6 += 3;
    }
  }
}

void re::anonymous namespace::$_71::__invoke(_BOOL8 a1, unint64_t a2, void *a3)
{
  v65 = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    v5 = a1;
    v6 = 0;
    for (i = a2 / 3; i; --i)
    {
      v8 = *re::animationLogObjects(a1);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
      if (v9)
      {
        if (a2 <= v6)
        {
          re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, a2);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v43, v51);
          __break(1u);
LABEL_22:
          re::internal::assertLog(6, v16, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, a2);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v44, v52);
          __break(1u);
LABEL_23:
          re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v12);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v45, v53);
          __break(1u);
LABEL_24:
          re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v27, a2);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v46, v54);
          __break(1u);
LABEL_25:
          re::internal::assertLog(6, v16, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v18, v19);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v47, v55);
          __break(1u);
LABEL_26:
          re::internal::assertLog(6, v35, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v36, a2);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v48, v56);
          __break(1u);
LABEL_27:
          re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v28, v29);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v49, v57);
          __break(1u);
LABEL_28:
          re::internal::assertLog(6, v35, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v37, v38);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v50, v58);
          __break(1u);
        }

        v11 = *(v5 + 8 * v6);
        v12 = a3[3];
        if (v12 <= v11)
        {
          goto LABEL_23;
        }

        v13 = *(a3[2] + 4 * v11);
        *buf = 67109120;
        LODWORD(v60) = v13;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_INFO, "Matrix3x3 %u:", buf, 8u);
      }

      v14 = *re::animationLogObjects(v9);
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
      if (v15)
      {
        v17 = v6 + 1;
        if (a2 <= v6 + 1)
        {
          goto LABEL_22;
        }

        v18 = *(v5 + 8 * v6 + 8);
        v19 = a3[7];
        if (v19 <= v18)
        {
          goto LABEL_25;
        }

        v20 = (a3[6] + 48 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v20[2];
        *buf = 134218496;
        v60 = v21;
        v61 = 2048;
        v62 = v22;
        v63 = 2048;
        v64 = v23;
        _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_INFO, "Columns[0]: %f %f %f", buf, 0x20u);
      }

      v24 = *re::animationLogObjects(v15);
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
      if (v25)
      {
        v27 = v6 + 1;
        if (a2 <= v6 + 1)
        {
          goto LABEL_24;
        }

        v28 = *(v5 + 8 * v6 + 8);
        v29 = a3[7];
        if (v29 <= v28)
        {
          goto LABEL_27;
        }

        v30 = (a3[6] + 48 * v28);
        v31 = v30[4];
        v32 = v30[5];
        v33 = v30[6];
        *buf = 134218496;
        v60 = v31;
        v61 = 2048;
        v62 = v32;
        v63 = 2048;
        v64 = v33;
        _os_log_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_INFO, "Columns[1]: %f %f %f", buf, 0x20u);
      }

      v34 = *re::animationLogObjects(v25);
      a1 = os_log_type_enabled(v34, OS_LOG_TYPE_INFO);
      if (a1)
      {
        v36 = v6 + 1;
        if (a2 <= v6 + 1)
        {
          goto LABEL_26;
        }

        v37 = *(v5 + 8 * v6 + 8);
        v38 = a3[7];
        if (v38 <= v37)
        {
          goto LABEL_28;
        }

        v39 = (a3[6] + 48 * v37);
        v40 = v39[8];
        v41 = v39[9];
        v42 = v39[10];
        *buf = 134218496;
        v60 = v40;
        v61 = 2048;
        v62 = v41;
        v63 = 2048;
        v64 = v42;
        _os_log_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_INFO, "Columns[2]: %f %f %f", buf, 0x20u);
      }

      v6 += 3;
    }
  }
}

void re::anonymous namespace::$_72::__invoke(_BOOL8 a1, unint64_t a2, void *a3)
{
  v85 = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    v5 = a1;
    v6 = 0;
    for (i = a2 / 3; i; --i)
    {
      v8 = *re::animationLogObjects(a1);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
      if (v9)
      {
        if (a2 <= v6)
        {
          re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, a2);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v57, v67);
          __break(1u);
LABEL_26:
          re::internal::assertLog(6, v16, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, a2);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v58, v68);
          __break(1u);
LABEL_27:
          re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v12);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v59, v69);
          __break(1u);
LABEL_28:
          re::internal::assertLog(6, v27, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v28, a2);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v60, v70);
          __break(1u);
LABEL_29:
          re::internal::assertLog(6, v16, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v18, v19);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v61, v71);
          __break(1u);
LABEL_30:
          re::internal::assertLog(6, v38, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v39, a2);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v62, v72);
          __break(1u);
LABEL_31:
          re::internal::assertLog(6, v27, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v29, v30);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v63, v73);
          __break(1u);
LABEL_32:
          re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v49, a2);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v64, v74);
          __break(1u);
LABEL_33:
          re::internal::assertLog(6, v38, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v40, v41);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v65, v75);
          __break(1u);
LABEL_34:
          re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v50, v51);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v66, v76);
          __break(1u);
        }

        v11 = *(v5 + 8 * v6);
        v12 = a3[3];
        if (v12 <= v11)
        {
          goto LABEL_27;
        }

        v13 = *(a3[2] + 4 * v11);
        *buf = 67109120;
        LODWORD(v78) = v13;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_INFO, "Matrix4x4 %u:", buf, 8u);
      }

      v14 = *re::animationLogObjects(v9);
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
      if (v15)
      {
        v17 = v6 + 1;
        if (a2 <= v6 + 1)
        {
          goto LABEL_26;
        }

        v18 = *(v5 + 8 * v6 + 8);
        v19 = a3[9];
        if (v19 <= v18)
        {
          goto LABEL_29;
        }

        v20 = (a3[8] + (v18 << 6));
        v21 = *v20;
        v22 = v20[1];
        v23 = v20[2];
        v24 = v20[3];
        *buf = 134218752;
        v78 = v21;
        v79 = 2048;
        v80 = v22;
        v81 = 2048;
        v82 = v23;
        v83 = 2048;
        v84 = v24;
        _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_INFO, "Columns[0]: %f %f %f %f", buf, 0x2Au);
      }

      v25 = *re::animationLogObjects(v15);
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
      if (v26)
      {
        v28 = v6 + 1;
        if (a2 <= v6 + 1)
        {
          goto LABEL_28;
        }

        v29 = *(v5 + 8 * v6 + 8);
        v30 = a3[9];
        if (v30 <= v29)
        {
          goto LABEL_31;
        }

        v31 = (a3[8] + (v29 << 6));
        v32 = v31[4];
        v33 = v31[5];
        v34 = v31[6];
        v35 = v31[7];
        *buf = 134218752;
        v78 = v32;
        v79 = 2048;
        v80 = v33;
        v81 = 2048;
        v82 = v34;
        v83 = 2048;
        v84 = v35;
        _os_log_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_INFO, "Columns[1]: %f %f %f %f", buf, 0x2Au);
      }

      v36 = *re::animationLogObjects(v26);
      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_INFO);
      if (v37)
      {
        v39 = v6 + 1;
        if (a2 <= v6 + 1)
        {
          goto LABEL_30;
        }

        v40 = *(v5 + 8 * v6 + 8);
        v41 = a3[9];
        if (v41 <= v40)
        {
          goto LABEL_33;
        }

        v42 = (a3[8] + (v40 << 6));
        v43 = v42[8];
        v44 = v42[9];
        v45 = v42[10];
        v46 = v42[11];
        *buf = 134218752;
        v78 = v43;
        v79 = 2048;
        v80 = v44;
        v81 = 2048;
        v82 = v45;
        v83 = 2048;
        v84 = v46;
        _os_log_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_INFO, "Columns[2]: %f %f %f %f", buf, 0x2Au);
      }

      v47 = *re::animationLogObjects(v37);
      a1 = os_log_type_enabled(v47, OS_LOG_TYPE_INFO);
      if (a1)
      {
        v49 = v6 + 1;
        if (a2 <= v6 + 1)
        {
          goto LABEL_32;
        }

        v50 = *(v5 + 8 * v6 + 8);
        v51 = a3[9];
        if (v51 <= v50)
        {
          goto LABEL_34;
        }

        v52 = (a3[8] + (v50 << 6));
        v53 = v52[12];
        v54 = v52[13];
        v55 = v52[14];
        v56 = v52[15];
        *buf = 134218752;
        v78 = v53;
        v79 = 2048;
        v80 = v54;
        v81 = 2048;
        v82 = v55;
        v83 = 2048;
        v84 = v56;
        _os_log_impl(&dword_1E1C61000, v47, OS_LOG_TYPE_INFO, "Columns[3]: %f %f %f %f", buf, 0x2Au);
      }

      v6 += 3;
    }
  }
}

void re::anonymous namespace::$_73::__invoke(_BOOL8 a1, unint64_t a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    v5 = a1;
    v6 = 0;
    for (i = a2 / 3; i; --i)
    {
      v8 = *re::animationLogObjects(a1);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
      if (v9)
      {
        if (a2 <= v6)
        {
          re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, a2);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v24, v28);
          __break(1u);
LABEL_14:
          re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, a2);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v25, v29);
          __break(1u);
LABEL_15:
          re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v12);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v26, v30);
          __break(1u);
LABEL_16:
          re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v17, v18);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v27, v31);
          __break(1u);
        }

        v11 = *(v5 + 8 * v6);
        v12 = a3[3];
        if (v12 <= v11)
        {
          goto LABEL_15;
        }

        v13 = *(a3[2] + 4 * v11);
        *buf = 67109120;
        LODWORD(v33) = v13;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_INFO, "Quaternion %u:", buf, 8u);
      }

      v14 = *re::animationLogObjects(v9);
      a1 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
      if (a1)
      {
        v16 = v6 + 1;
        if (a2 <= v6 + 1)
        {
          goto LABEL_14;
        }

        v17 = *(v5 + 8 * v6 + 8);
        v18 = a3[11];
        if (v18 <= v17)
        {
          goto LABEL_16;
        }

        v19 = (a3[10] + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        v23 = v19[3];
        *buf = 134218752;
        v33 = v20;
        v34 = 2048;
        v35 = v21;
        v36 = 2048;
        v37 = v22;
        v38 = 2048;
        v39 = v23;
        _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_INFO, "%f %f %f %f", buf, 0x2Au);
      }

      v6 += 3;
    }
  }
}

void re::anonymous namespace::$_74::__invoke(_BOOL8 a1, unint64_t a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    v5 = a1;
    v6 = 0;
    for (i = a2 / 3; i; --i)
    {
      v8 = *re::animationLogObjects(a1);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
      if (v9)
      {
        if (a2 <= v6)
        {
          re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, a2);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v26);
          __break(1u);
LABEL_14:
          re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, a2);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v23, v27);
          __break(1u);
LABEL_15:
          re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v12);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v24, v28);
          __break(1u);
LABEL_16:
          re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v17, v18);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v25, v29);
          __break(1u);
        }

        v11 = *(v5 + 8 * v6);
        v12 = a3[3];
        if (v12 <= v11)
        {
          goto LABEL_15;
        }

        v13 = *(a3[2] + 4 * v11);
        *buf = 67109120;
        LODWORD(v31) = v13;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_INFO, "Vector2 %u:", buf, 8u);
      }

      v14 = *re::animationLogObjects(v9);
      a1 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
      if (a1)
      {
        v16 = v6 + 1;
        if (a2 <= v6 + 1)
        {
          goto LABEL_14;
        }

        v17 = *(v5 + 8 * v6 + 8);
        v18 = a3[13];
        if (v18 <= v17)
        {
          goto LABEL_16;
        }

        v19 = (a3[12] + 8 * v17);
        v20 = *v19;
        v21 = v19[1];
        *buf = 134218240;
        v31 = v20;
        v32 = 2048;
        v33 = v21;
        _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_INFO, "%f %f", buf, 0x16u);
      }

      v6 += 3;
    }
  }
}

void re::anonymous namespace::$_75::__invoke(_BOOL8 a1, unint64_t a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    v5 = a1;
    v6 = 0;
    for (i = a2 / 3; i; --i)
    {
      v8 = *re::animationLogObjects(a1);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
      if (v9)
      {
        if (a2 <= v6)
        {
          re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, a2);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v23, v27);
          __break(1u);
LABEL_14:
          re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, a2);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v24, v28);
          __break(1u);
LABEL_15:
          re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v12);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v25, v29);
          __break(1u);
LABEL_16:
          re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v17, v18);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v26, v30);
          __break(1u);
        }

        v11 = *(v5 + 8 * v6);
        v12 = a3[3];
        if (v12 <= v11)
        {
          goto LABEL_15;
        }

        v13 = *(a3[2] + 4 * v11);
        *buf = 67109120;
        LODWORD(v32) = v13;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_INFO, "Vector3 %u:", buf, 8u);
      }

      v14 = *re::animationLogObjects(v9);
      a1 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
      if (a1)
      {
        v16 = v6 + 1;
        if (a2 <= v6 + 1)
        {
          goto LABEL_14;
        }

        v17 = *(v5 + 8 * v6 + 8);
        v18 = a3[15];
        if (v18 <= v17)
        {
          goto LABEL_16;
        }

        v19 = (a3[14] + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        *buf = 134218496;
        v32 = v20;
        v33 = 2048;
        v34 = v21;
        v35 = 2048;
        v36 = v22;
        _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_INFO, "%f %f %f", buf, 0x20u);
      }

      v6 += 3;
    }
  }
}

uint64_t re::anonymous namespace::$_76::__invoke(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v253 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = result;
    v7 = 0;
    while (1)
    {
      v8 = *(v6 + 8 * v7);
      v9 = a3[16] + 448 * v8;
      v10 = (a3[17] + 432 * v8);
      v11 = *(v9 + 16);
      if (v11)
      {
        break;
      }

LABEL_8:
      v19 = *(v9 + 40);
      if (v19)
      {
        v20 = 0;
        v21 = *(v9 + 48);
        v23 = a3[2];
        v22 = a3[3];
        v17 = v10[4];
        v24 = v10[5];
        while (1)
        {
          v25 = *(v21 + 8 * v20);
          if (v22 <= v25)
          {
            break;
          }

          if (v17 == v20)
          {
            goto LABEL_113;
          }

          *(v24 + 4 * v20++) = *(v23 + 4 * v25);
          if (v19 == v20)
          {
            goto LABEL_13;
          }
        }

LABEL_112:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v25, v22);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v194, v216);
        __break(1u);
LABEL_113:
        v239 = 0;
        v251 = 0u;
        v252 = 0u;
        v249 = 0u;
        v250 = 0u;
        v248 = 0u;
        v118 = MEMORY[0x1E69E9C10];
        v119 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v240 = 136315906;
        v241 = "operator[]";
        v242 = 1024;
        if (v119)
        {
          v120 = 3;
        }

        else
        {
          v120 = 2;
        }

        v243 = 468;
        v244 = 2048;
        v245 = v17;
        v246 = 2048;
        v247 = v17;
        _os_log_send_and_compose_impl(v120, &v239, &v248, 80, &dword_1E1C61000, v118, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v237, v238);
        _os_crash_msg();
        __break(1u);
        goto LABEL_117;
      }

LABEL_13:
      v26 = *(v9 + 64);
      if (v26)
      {
        v27 = 0;
        v28 = *(v9 + 72);
        v30 = a3[4];
        v29 = a3[5];
        v17 = v10[7];
        v31 = v10[8];
        while (1)
        {
          v32 = *(v28 + 8 * v27);
          if (v29 <= v32)
          {
            break;
          }

          if (v17 == v27)
          {
            goto LABEL_118;
          }

          *(v31 + 4 * v27++) = *(v30 + 4 * v32);
          if (v26 == v27)
          {
            goto LABEL_18;
          }
        }

LABEL_117:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v32, v29);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v195, v217);
        __break(1u);
LABEL_118:
        v239 = 0;
        v251 = 0u;
        v252 = 0u;
        v249 = 0u;
        v250 = 0u;
        v248 = 0u;
        v121 = MEMORY[0x1E69E9C10];
        v122 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v240 = 136315906;
        v241 = "operator[]";
        v242 = 1024;
        if (v122)
        {
          v123 = 3;
        }

        else
        {
          v123 = 2;
        }

        v243 = 468;
        v244 = 2048;
        v245 = v17;
        v246 = 2048;
        v247 = v17;
        _os_log_send_and_compose_impl(v123, &v239, &v248, 80, &dword_1E1C61000, v121, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v237, v238);
        _os_crash_msg();
        __break(1u);
        goto LABEL_122;
      }

LABEL_18:
      if (*(v9 + 88))
      {
        v33 = 0;
        v17 = 0;
        while (1)
        {
          v34 = *(*(v9 + 96) + 8 * v17);
          v35 = a3[7];
          if (v35 <= v34)
          {
            break;
          }

          v3 = v10[10];
          if (v3 <= v17)
          {
            goto LABEL_123;
          }

          v36 = (a3[6] + 48 * v34);
          v37 = (v10[11] + v33);
          v38 = *v36;
          v39 = v36[2];
          v37[1] = v36[1];
          v37[2] = v39;
          *v37 = v38;
          ++v17;
          v33 += 48;
          if (v17 >= *(v9 + 88))
          {
            goto LABEL_23;
          }
        }

LABEL_122:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v34, v35);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v196, v218);
        __break(1u);
LABEL_123:
        v239 = 0;
        v251 = 0u;
        v252 = 0u;
        v249 = 0u;
        v250 = 0u;
        v248 = 0u;
        v124 = MEMORY[0x1E69E9C10];
        v125 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v240 = 136315906;
        v241 = "operator[]";
        v242 = 1024;
        if (v125)
        {
          v126 = 3;
        }

        else
        {
          v126 = 2;
        }

        v243 = 468;
        v244 = 2048;
        v245 = v17;
        v246 = 2048;
        v247 = v3;
        _os_log_send_and_compose_impl(v126, &v239, &v248, 80, &dword_1E1C61000, v124, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v237, v238);
        _os_crash_msg();
        __break(1u);
        goto LABEL_127;
      }

LABEL_23:
      if (*(v9 + 112))
      {
        v40 = 0;
        v17 = 0;
        while (1)
        {
          v41 = *(*(v9 + 120) + 8 * v17);
          v42 = a3[9];
          if (v42 <= v41)
          {
            break;
          }

          v3 = v10[13];
          if (v3 <= v17)
          {
            goto LABEL_128;
          }

          v43 = (a3[8] + (v41 << 6));
          v44 = (v10[14] + v40);
          v45 = *v43;
          v46 = v43[1];
          v47 = v43[3];
          v44[2] = v43[2];
          v44[3] = v47;
          *v44 = v45;
          v44[1] = v46;
          ++v17;
          v40 += 64;
          if (v17 >= *(v9 + 112))
          {
            goto LABEL_28;
          }
        }

LABEL_127:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v41, v42);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v197, v219);
        __break(1u);
LABEL_128:
        v239 = 0;
        v251 = 0u;
        v252 = 0u;
        v249 = 0u;
        v250 = 0u;
        v248 = 0u;
        v127 = MEMORY[0x1E69E9C10];
        v128 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v240 = 136315906;
        v241 = "operator[]";
        v242 = 1024;
        if (v128)
        {
          v129 = 3;
        }

        else
        {
          v129 = 2;
        }

        v243 = 468;
        v244 = 2048;
        v245 = v17;
        v246 = 2048;
        v247 = v3;
        _os_log_send_and_compose_impl(v129, &v239, &v248, 80, &dword_1E1C61000, v127, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v237, v238);
        _os_crash_msg();
        __break(1u);
        goto LABEL_132;
      }

LABEL_28:
      if (*(v9 + 136))
      {
        v48 = 0;
        v17 = 0;
        while (1)
        {
          v49 = *(*(v9 + 144) + 8 * v17);
          v50 = a3[11];
          if (v50 <= v49)
          {
            break;
          }

          v3 = v10[16];
          if (v3 <= v17)
          {
            goto LABEL_133;
          }

          *(v10[17] + v48) = *(a3[10] + 16 * v49);
          ++v17;
          v48 += 16;
          if (v17 >= *(v9 + 136))
          {
            goto LABEL_33;
          }
        }

LABEL_132:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v49, v50);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v198, v220);
        __break(1u);
LABEL_133:
        v239 = 0;
        v251 = 0u;
        v252 = 0u;
        v249 = 0u;
        v250 = 0u;
        v248 = 0u;
        v130 = MEMORY[0x1E69E9C10];
        v131 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v240 = 136315906;
        v241 = "operator[]";
        v242 = 1024;
        if (v131)
        {
          v132 = 3;
        }

        else
        {
          v132 = 2;
        }

        v243 = 468;
        v244 = 2048;
        v245 = v17;
        v246 = 2048;
        v247 = v3;
        _os_log_send_and_compose_impl(v132, &v239, &v248, 80, &dword_1E1C61000, v130, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v237, v238);
        _os_crash_msg();
        __break(1u);
        goto LABEL_137;
      }

LABEL_33:
      if (*(v9 + 160))
      {
        v17 = 0;
        while (1)
        {
          v51 = *(*(v9 + 168) + 8 * v17);
          v52 = a3[13];
          if (v52 <= v51)
          {
            break;
          }

          v3 = v10[19];
          if (v3 <= v17)
          {
            goto LABEL_138;
          }

          *(v10[20] + 8 * v17++) = *(a3[12] + 8 * v51);
          if (v17 >= *(v9 + 160))
          {
            goto LABEL_38;
          }
        }

LABEL_137:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v51, v52);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v199, v221);
        __break(1u);
LABEL_138:
        v239 = 0;
        v251 = 0u;
        v252 = 0u;
        v249 = 0u;
        v250 = 0u;
        v248 = 0u;
        v133 = MEMORY[0x1E69E9C10];
        v134 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v240 = 136315906;
        v241 = "operator[]";
        v242 = 1024;
        if (v134)
        {
          v135 = 3;
        }

        else
        {
          v135 = 2;
        }

        v243 = 468;
        v244 = 2048;
        v245 = v17;
        v246 = 2048;
        v247 = v3;
        _os_log_send_and_compose_impl(v135, &v239, &v248, 80, &dword_1E1C61000, v133, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v237, v238);
        _os_crash_msg();
        __break(1u);
LABEL_142:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v54, v55);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v200, v222);
        __break(1u);
LABEL_143:
        v239 = 0;
        v251 = 0u;
        v252 = 0u;
        v249 = 0u;
        v250 = 0u;
        v248 = 0u;
        v136 = MEMORY[0x1E69E9C10];
        v137 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v240 = 136315906;
        v241 = "operator[]";
        v242 = 1024;
        if (v137)
        {
          v138 = 3;
        }

        else
        {
          v138 = 2;
        }

        v243 = 468;
        v244 = 2048;
        v245 = v17;
        v246 = 2048;
        v247 = v3;
        _os_log_send_and_compose_impl(v138, &v239, &v248, 80, &dword_1E1C61000, v136, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v237, v238);
        _os_crash_msg();
        __break(1u);
LABEL_147:
        v239 = 0;
        v251 = 0u;
        v252 = 0u;
        v249 = 0u;
        v250 = 0u;
        v248 = 0u;
        v139 = MEMORY[0x1E69E9C10];
        v140 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v240 = 136315906;
        v241 = "operator[]";
        v242 = 1024;
        if (v140)
        {
          v141 = 3;
        }

        else
        {
          v141 = 2;
        }

        v243 = 476;
        v244 = 2048;
        v245 = v17;
        v246 = 2048;
        v247 = v17;
        _os_log_send_and_compose_impl(v141, &v239, &v248, 80, &dword_1E1C61000, v139, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v237, v238);
        _os_crash_msg();
        __break(1u);
LABEL_151:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v70, v68);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v201, v223);
        __break(1u);
LABEL_152:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v58, v59);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v202, v224);
        __break(1u);
LABEL_153:
        v239 = 0;
        v251 = 0u;
        v252 = 0u;
        v249 = 0u;
        v250 = 0u;
        v248 = 0u;
        v142 = MEMORY[0x1E69E9C10];
        v143 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v240 = 136315906;
        v241 = "operator[]";
        v242 = 1024;
        if (v143)
        {
          v144 = 3;
        }

        else
        {
          v144 = 2;
        }

        v243 = 468;
        v244 = 2048;
        v245 = v17;
        v246 = 2048;
        v247 = v3;
        _os_log_send_and_compose_impl(v144, &v239, &v248, 80, &dword_1E1C61000, v142, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v237, v238);
        _os_crash_msg();
        __break(1u);
LABEL_157:
        v239 = 0;
        v251 = 0u;
        v252 = 0u;
        v249 = 0u;
        v250 = 0u;
        v248 = 0u;
        v145 = MEMORY[0x1E69E9C10];
        v146 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v240 = 136315906;
        v241 = "operator[]";
        v242 = 1024;
        if (v146)
        {
          v147 = 3;
        }

        else
        {
          v147 = 2;
        }

        v243 = 476;
        v244 = 2048;
        v245 = v17;
        v246 = 2048;
        v247 = v3;
        _os_log_send_and_compose_impl(v147, &v239, &v248, 80, &dword_1E1C61000, v145, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v237, v238);
        _os_crash_msg();
        __break(1u);
LABEL_161:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v60, v61);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v203, v225);
        __break(1u);
LABEL_162:
        v239 = 0;
        v251 = 0u;
        v252 = 0u;
        v249 = 0u;
        v250 = 0u;
        v248 = 0u;
        v148 = MEMORY[0x1E69E9C10];
        v149 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v240 = 136315906;
        v241 = "operator[]";
        v242 = 1024;
        if (v149)
        {
          v150 = 3;
        }

        else
        {
          v150 = 2;
        }

        v243 = 468;
        v244 = 2048;
        v245 = v17;
        v246 = 2048;
        v247 = v3;
        _os_log_send_and_compose_impl(v150, &v239, &v248, 80, &dword_1E1C61000, v148, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v237, v238);
        _os_crash_msg();
        __break(1u);
LABEL_166:
        v239 = 0;
        v251 = 0u;
        v252 = 0u;
        v249 = 0u;
        v250 = 0u;
        v248 = 0u;
        v151 = MEMORY[0x1E69E9C10];
        v152 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v240 = 136315906;
        v241 = "operator[]";
        v242 = 1024;
        if (v152)
        {
          v153 = 3;
        }

        else
        {
          v153 = 2;
        }

        v243 = 476;
        v244 = 2048;
        v245 = v17;
        v246 = 2048;
        v247 = v3;
        _os_log_send_and_compose_impl(v153, &v239, &v248, 80, &dword_1E1C61000, v151, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v237, v238);
        _os_crash_msg();
        __break(1u);
LABEL_170:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v62, v63);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v204, v226);
        __break(1u);
LABEL_171:
        v239 = 0;
        v251 = 0u;
        v252 = 0u;
        v249 = 0u;
        v250 = 0u;
        v248 = 0u;
        v154 = MEMORY[0x1E69E9C10];
        v155 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v240 = 136315906;
        v241 = "operator[]";
        v242 = 1024;
        if (v155)
        {
          v156 = 3;
        }

        else
        {
          v156 = 2;
        }

        v243 = 468;
        v244 = 2048;
        v245 = v17;
        v246 = 2048;
        v247 = v3;
        _os_log_send_and_compose_impl(v156, &v239, &v248, 80, &dword_1E1C61000, v154, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v237, v238);
        _os_crash_msg();
        __break(1u);
        goto LABEL_175;
      }

LABEL_38:
      if (*(v9 + 184))
      {
        v53 = 0;
        v17 = 0;
        do
        {
          v54 = *(*(v9 + 192) + 8 * v17);
          v55 = a3[15];
          if (v55 <= v54)
          {
            goto LABEL_142;
          }

          v3 = v10[22];
          if (v3 <= v17)
          {
            goto LABEL_143;
          }

          *(v10[23] + v53) = *(a3[14] + 16 * v54);
          ++v17;
          v53 += 16;
        }

        while (v17 < *(v9 + 184));
      }

      if (*(v9 + 208))
      {
        v56 = 0;
        v57 = 0;
        v17 = 0;
        do
        {
          v58 = *(*(v9 + 216) + v56);
          v59 = a3[15];
          if (v59 <= v58)
          {
            goto LABEL_152;
          }

          v3 = v10[25];
          if (v3 <= v17)
          {
            goto LABEL_153;
          }

          *(v10[26] + v57) = *(a3[14] + 16 * v58);
          v3 = *(v9 + 208);
          if (v3 <= v17)
          {
            goto LABEL_157;
          }

          v60 = *(*(v9 + 216) + v56 + 8);
          v61 = a3[11];
          if (v61 <= v60)
          {
            goto LABEL_161;
          }

          v3 = v10[25];
          if (v3 <= v17)
          {
            goto LABEL_162;
          }

          *(v10[26] + v57 + 16) = *(a3[10] + 16 * v60);
          v3 = *(v9 + 208);
          if (v3 <= v17)
          {
            goto LABEL_166;
          }

          v62 = *(*(v9 + 216) + v56 + 16);
          v63 = a3[15];
          if (v63 <= v62)
          {
            goto LABEL_170;
          }

          v3 = v10[25];
          if (v3 <= v17)
          {
            goto LABEL_171;
          }

          *(v10[26] + v57 + 32) = *(a3[14] + 16 * v62);
          ++v17;
          v57 += 48;
          v56 += 24;
        }

        while (v17 < *(v9 + 208));
      }

      result = (*v9)(v10, *(v9 + 440));
      v64 = *(v9 + 232);
      if (v64)
      {
        v65 = 0;
        v66 = *(v9 + 240);
        v17 = v10[28];
        v67 = v10[29];
        v69 = *a3;
        v68 = a3[1];
        while (v17 != v65)
        {
          v70 = *(v66 + 8 * v65);
          if (v68 <= v70)
          {
            goto LABEL_151;
          }

          *(v69 + 4 * v70) = *(v67 + 4 * v65++);
          if (v64 == v65)
          {
            goto LABEL_59;
          }
        }

        goto LABEL_147;
      }

LABEL_59:
      v71 = *(v9 + 256);
      if (v71)
      {
        v72 = 0;
        v73 = *(v9 + 264);
        v17 = v10[31];
        v74 = v10[32];
        v76 = a3[2];
        v75 = a3[3];
        while (v17 != v72)
        {
          v77 = *(v73 + 8 * v72);
          if (v75 <= v77)
          {
            goto LABEL_179;
          }

          *(v76 + 4 * v77) = *(v74 + 4 * v72++);
          if (v71 == v72)
          {
            goto LABEL_64;
          }
        }

LABEL_175:
        v239 = 0;
        v251 = 0u;
        v252 = 0u;
        v249 = 0u;
        v250 = 0u;
        v248 = 0u;
        v157 = MEMORY[0x1E69E9C10];
        v158 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v240 = 136315906;
        v241 = "operator[]";
        v242 = 1024;
        if (v158)
        {
          v159 = 3;
        }

        else
        {
          v159 = 2;
        }

        v243 = 476;
        v244 = 2048;
        v245 = v17;
        v246 = 2048;
        v247 = v17;
        _os_log_send_and_compose_impl(v159, &v239, &v248, 80, &dword_1E1C61000, v157, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v237, v238);
        _os_crash_msg();
        __break(1u);
LABEL_179:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v77, v75);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v205, v227);
        __break(1u);
        goto LABEL_180;
      }

LABEL_64:
      v78 = *(v9 + 280);
      if (v78)
      {
        v79 = 0;
        v80 = *(v9 + 288);
        v17 = v10[34];
        v81 = v10[35];
        v83 = a3[4];
        v82 = a3[5];
        while (v17 != v79)
        {
          v84 = *(v80 + 8 * v79);
          if (v82 <= v84)
          {
            goto LABEL_184;
          }

          *(v83 + 4 * v84) = *(v81 + 4 * v79++);
          if (v78 == v79)
          {
            goto LABEL_69;
          }
        }

LABEL_180:
        v239 = 0;
        v251 = 0u;
        v252 = 0u;
        v249 = 0u;
        v250 = 0u;
        v248 = 0u;
        v160 = MEMORY[0x1E69E9C10];
        v161 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v240 = 136315906;
        v241 = "operator[]";
        v242 = 1024;
        if (v161)
        {
          v162 = 3;
        }

        else
        {
          v162 = 2;
        }

        v243 = 476;
        v244 = 2048;
        v245 = v17;
        v246 = 2048;
        v247 = v17;
        _os_log_send_and_compose_impl(v162, &v239, &v248, 80, &dword_1E1C61000, v160, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v237, v238);
        _os_crash_msg();
        __break(1u);
LABEL_184:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v84, v82);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v206, v228);
        __break(1u);
        goto LABEL_185;
      }

LABEL_69:
      if (*(v9 + 304))
      {
        v85 = 0;
        v17 = 0;
        while (1)
        {
          v3 = v10[37];
          if (v3 <= v17)
          {
            break;
          }

          v86 = *(*(v9 + 312) + 8 * v17);
          v87 = a3[7];
          if (v87 <= v86)
          {
            goto LABEL_189;
          }

          v88 = (v10[38] + v85);
          v89 = (a3[6] + 48 * v86);
          v90 = *v88;
          v91 = v88[2];
          v89[1] = v88[1];
          v89[2] = v91;
          *v89 = v90;
          ++v17;
          v85 += 48;
          if (v17 >= *(v9 + 304))
          {
            goto LABEL_74;
          }
        }

LABEL_185:
        v239 = 0;
        v251 = 0u;
        v252 = 0u;
        v249 = 0u;
        v250 = 0u;
        v248 = 0u;
        v163 = MEMORY[0x1E69E9C10];
        v164 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v240 = 136315906;
        v241 = "operator[]";
        v242 = 1024;
        if (v164)
        {
          v165 = 3;
        }

        else
        {
          v165 = 2;
        }

        v243 = 476;
        v244 = 2048;
        v245 = v17;
        v246 = 2048;
        v247 = v3;
        _os_log_send_and_compose_impl(v165, &v239, &v248, 80, &dword_1E1C61000, v163, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v237, v238);
        _os_crash_msg();
        __break(1u);
LABEL_189:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v86, v87);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v207, v229);
        __break(1u);
        goto LABEL_190;
      }

LABEL_74:
      if (*(v9 + 328))
      {
        v92 = 0;
        v17 = 0;
        while (1)
        {
          v3 = v10[40];
          if (v3 <= v17)
          {
            break;
          }

          v93 = *(*(v9 + 336) + 8 * v17);
          v94 = a3[9];
          if (v94 <= v93)
          {
            goto LABEL_194;
          }

          v95 = (v10[41] + v92);
          v96 = (a3[8] + (v93 << 6));
          v97 = *v95;
          v98 = v95[1];
          v99 = v95[3];
          v96[2] = v95[2];
          v96[3] = v99;
          *v96 = v97;
          v96[1] = v98;
          ++v17;
          v92 += 64;
          if (v17 >= *(v9 + 328))
          {
            goto LABEL_79;
          }
        }

LABEL_190:
        v239 = 0;
        v251 = 0u;
        v252 = 0u;
        v249 = 0u;
        v250 = 0u;
        v248 = 0u;
        v166 = MEMORY[0x1E69E9C10];
        v167 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v240 = 136315906;
        v241 = "operator[]";
        v242 = 1024;
        if (v167)
        {
          v168 = 3;
        }

        else
        {
          v168 = 2;
        }

        v243 = 476;
        v244 = 2048;
        v245 = v17;
        v246 = 2048;
        v247 = v3;
        _os_log_send_and_compose_impl(v168, &v239, &v248, 80, &dword_1E1C61000, v166, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v237, v238);
        _os_crash_msg();
        __break(1u);
LABEL_194:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v93, v94);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v208, v230);
        __break(1u);
        goto LABEL_195;
      }

LABEL_79:
      if (*(v9 + 352))
      {
        v100 = 0;
        v17 = 0;
        while (1)
        {
          v3 = v10[43];
          if (v3 <= v17)
          {
            break;
          }

          v101 = *(*(v9 + 360) + 8 * v17);
          v102 = a3[11];
          if (v102 <= v101)
          {
            goto LABEL_199;
          }

          *(a3[10] + 16 * v101) = *(v10[44] + v100);
          ++v17;
          v100 += 16;
          if (v17 >= *(v9 + 352))
          {
            goto LABEL_84;
          }
        }

LABEL_195:
        v239 = 0;
        v251 = 0u;
        v252 = 0u;
        v249 = 0u;
        v250 = 0u;
        v248 = 0u;
        v169 = MEMORY[0x1E69E9C10];
        v170 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v240 = 136315906;
        v241 = "operator[]";
        v242 = 1024;
        if (v170)
        {
          v171 = 3;
        }

        else
        {
          v171 = 2;
        }

        v243 = 476;
        v244 = 2048;
        v245 = v17;
        v246 = 2048;
        v247 = v3;
        _os_log_send_and_compose_impl(v171, &v239, &v248, 80, &dword_1E1C61000, v169, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v237, v238);
        _os_crash_msg();
        __break(1u);
LABEL_199:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v101, v102);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v209, v231);
        __break(1u);
        goto LABEL_200;
      }

LABEL_84:
      if (*(v9 + 376))
      {
        v17 = 0;
        while (1)
        {
          v3 = v10[46];
          if (v3 <= v17)
          {
            break;
          }

          v103 = *(*(v9 + 384) + 8 * v17);
          v104 = a3[13];
          if (v104 <= v103)
          {
            goto LABEL_204;
          }

          *(a3[12] + 8 * v103) = *(v10[47] + 8 * v17++);
          if (v17 >= *(v9 + 376))
          {
            goto LABEL_89;
          }
        }

LABEL_200:
        v239 = 0;
        v251 = 0u;
        v252 = 0u;
        v249 = 0u;
        v250 = 0u;
        v248 = 0u;
        v172 = MEMORY[0x1E69E9C10];
        v173 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v240 = 136315906;
        v241 = "operator[]";
        v242 = 1024;
        if (v173)
        {
          v174 = 3;
        }

        else
        {
          v174 = 2;
        }

        v243 = 476;
        v244 = 2048;
        v245 = v17;
        v246 = 2048;
        v247 = v3;
        _os_log_send_and_compose_impl(v174, &v239, &v248, 80, &dword_1E1C61000, v172, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v237, v238);
        _os_crash_msg();
        __break(1u);
LABEL_204:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v103, v104);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v210, v232);
        __break(1u);
        goto LABEL_205;
      }

LABEL_89:
      if (*(v9 + 400))
      {
        v105 = 0;
        v17 = 0;
        while (1)
        {
          v3 = v10[49];
          if (v3 <= v17)
          {
            break;
          }

          v106 = *(*(v9 + 408) + 8 * v17);
          v107 = a3[15];
          if (v107 <= v106)
          {
            goto LABEL_209;
          }

          *(a3[14] + 16 * v106) = *(v10[50] + v105);
          ++v17;
          v105 += 16;
          if (v17 >= *(v9 + 400))
          {
            goto LABEL_94;
          }
        }

LABEL_205:
        v239 = 0;
        v251 = 0u;
        v252 = 0u;
        v249 = 0u;
        v250 = 0u;
        v248 = 0u;
        v175 = MEMORY[0x1E69E9C10];
        v176 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v240 = 136315906;
        v241 = "operator[]";
        v242 = 1024;
        if (v176)
        {
          v177 = 3;
        }

        else
        {
          v177 = 2;
        }

        v243 = 476;
        v244 = 2048;
        v245 = v17;
        v246 = 2048;
        v247 = v3;
        _os_log_send_and_compose_impl(v177, &v239, &v248, 80, &dword_1E1C61000, v175, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v237, v238);
        _os_crash_msg();
        __break(1u);
LABEL_209:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v106, v107);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v211, v233);
        __break(1u);
LABEL_210:
        v239 = 0;
        v251 = 0u;
        v252 = 0u;
        v249 = 0u;
        v250 = 0u;
        v248 = 0u;
        v178 = MEMORY[0x1E69E9C10];
        v179 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v240 = 136315906;
        v241 = "operator[]";
        v242 = 1024;
        if (v179)
        {
          v180 = 3;
        }

        else
        {
          v180 = 2;
        }

        v243 = 468;
        v244 = 2048;
        v245 = v17;
        v246 = 2048;
        v247 = v3;
        _os_log_send_and_compose_impl(v180, &v239, &v248, 80, &dword_1E1C61000, v178, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v237, v238);
        _os_crash_msg();
        __break(1u);
LABEL_214:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v110, v111);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v212, v234);
        __break(1u);
LABEL_215:
        v239 = 0;
        v251 = 0u;
        v252 = 0u;
        v249 = 0u;
        v250 = 0u;
        v248 = 0u;
        v181 = MEMORY[0x1E69E9C10];
        v182 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v240 = 136315906;
        v241 = "operator[]";
        v242 = 1024;
        if (v182)
        {
          v183 = 3;
        }

        else
        {
          v183 = 2;
        }

        v243 = 476;
        v244 = 2048;
        v245 = v17;
        v246 = 2048;
        v247 = v3;
        _os_log_send_and_compose_impl(v183, &v239, &v248, 80, &dword_1E1C61000, v181, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v237, v238);
        _os_crash_msg();
        __break(1u);
LABEL_219:
        v239 = 0;
        v251 = 0u;
        v252 = 0u;
        v249 = 0u;
        v250 = 0u;
        v248 = 0u;
        v184 = MEMORY[0x1E69E9C10];
        v185 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v240 = 136315906;
        v241 = "operator[]";
        v242 = 1024;
        if (v185)
        {
          v186 = 3;
        }

        else
        {
          v186 = 2;
        }

        v243 = 468;
        v244 = 2048;
        v245 = v17;
        v246 = 2048;
        v247 = v3;
        _os_log_send_and_compose_impl(v186, &v239, &v248, 80, &dword_1E1C61000, v184, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v237, v238);
        _os_crash_msg();
        __break(1u);
LABEL_223:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v112, v113);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v213, v235);
        __break(1u);
LABEL_224:
        v239 = 0;
        v251 = 0u;
        v252 = 0u;
        v249 = 0u;
        v250 = 0u;
        v248 = 0u;
        v187 = MEMORY[0x1E69E9C10];
        v188 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v240 = 136315906;
        v241 = "operator[]";
        v242 = 1024;
        if (v188)
        {
          v189 = 3;
        }

        else
        {
          v189 = 2;
        }

        v243 = 476;
        v244 = 2048;
        v245 = v17;
        v246 = 2048;
        v247 = v3;
        _os_log_send_and_compose_impl(v189, &v239, &v248, 80, &dword_1E1C61000, v187, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v237, v238);
        _os_crash_msg();
        __break(1u);
LABEL_228:
        v239 = 0;
        v251 = 0u;
        v252 = 0u;
        v249 = 0u;
        v250 = 0u;
        v248 = 0u;
        v190 = MEMORY[0x1E69E9C10];
        v191 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v240 = 136315906;
        v241 = "operator[]";
        v242 = 1024;
        if (v191)
        {
          v192 = 3;
        }

        else
        {
          v192 = 2;
        }

        v243 = 468;
        v244 = 2048;
        v245 = v17;
        v246 = 2048;
        v247 = v3;
        _os_log_send_and_compose_impl(v192, &v239, &v248, 80, &dword_1E1C61000, v190, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v237, v238);
        _os_crash_msg();
        __break(1u);
LABEL_232:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v114, v115);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v214, v236);
        __break(1u);
      }

LABEL_94:
      if (*(v9 + 424))
      {
        v108 = 0;
        v109 = 0;
        v17 = 0;
        do
        {
          v3 = v10[52];
          if (v3 <= v17)
          {
            goto LABEL_210;
          }

          v110 = *(*(v9 + 432) + v108);
          v111 = a3[15];
          if (v111 <= v110)
          {
            goto LABEL_214;
          }

          *(a3[14] + 16 * v110) = *(v10[53] + v109);
          v3 = *(v9 + 424);
          if (v3 <= v17)
          {
            goto LABEL_215;
          }

          v3 = v10[52];
          if (v3 <= v17)
          {
            goto LABEL_219;
          }

          v112 = *(*(v9 + 432) + v108 + 8);
          v113 = a3[11];
          if (v113 <= v112)
          {
            goto LABEL_223;
          }

          *(a3[10] + 16 * v112) = *(v10[53] + v109 + 16);
          v3 = *(v9 + 424);
          if (v3 <= v17)
          {
            goto LABEL_224;
          }

          v3 = v10[52];
          if (v3 <= v17)
          {
            goto LABEL_228;
          }

          v114 = *(*(v9 + 432) + v108 + 16);
          v115 = a3[15];
          if (v115 <= v114)
          {
            goto LABEL_232;
          }

          *(a3[14] + 16 * v114) = *(v10[53] + v109 + 32);
          ++v17;
          v109 += 48;
          v108 += 24;
        }

        while (v17 < *(v9 + 424));
      }

      if (++v7 == a2)
      {
        return result;
      }
    }

    v12 = 0;
    v13 = *(v9 + 24);
    v15 = *a3;
    v14 = a3[1];
    v17 = v10[1];
    v16 = v10[2];
    while (1)
    {
      v18 = *(v13 + 8 * v12);
      if (v14 <= v18)
      {
        break;
      }

      if (v17 == v12)
      {
        goto LABEL_108;
      }

      *(v16 + 4 * v12++) = *(v15 + 4 * v18);
      if (v11 == v12)
      {
        goto LABEL_8;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, *(v13 + 8 * v12), v14);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v193, v215);
    __break(1u);
LABEL_108:
    v239 = 0;
    v251 = 0u;
    v252 = 0u;
    v249 = 0u;
    v250 = 0u;
    v248 = 0u;
    v116 = MEMORY[0x1E69E9C10];
    v240 = 136315906;
    v241 = "operator[]";
    v242 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v117 = 3;
    }

    else
    {
      v117 = 2;
    }

    v243 = 468;
    v244 = 2048;
    v245 = v17;
    v246 = 2048;
    v247 = v17;
    _os_log_send_and_compose_impl(v117, &v239, &v248, 80, &dword_1E1C61000, v116, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v237, v238);
    _os_crash_msg();
    __break(1u);
    goto LABEL_112;
  }

  return result;
}