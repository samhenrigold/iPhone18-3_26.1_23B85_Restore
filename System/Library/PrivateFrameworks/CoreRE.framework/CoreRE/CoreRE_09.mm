void *re::FixedArray<re::EvaluationSRT>::init<>(void *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0xAAAAAAAAAAAAAABLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 24, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v8, v9);
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  v5 = 24 * a3;
  result = (*(*a2 + 32))(a2, 24 * a3, 8);
  v4[2] = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return result;
  }

  v7 = result;
  if (a3 != 1)
  {
    result = memset(result, 255, v5 - 24);
    v7 = (v7 + v5 - 24);
  }

  v7[1] = -1;
  v7[2] = -1;
  *v7 = -1;
  return result;
}

uint64_t re::EvaluationTree::appendEvaluationCommand(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v38 = *MEMORY[0x1E69E9840];
  v7 = &(&re::kEvaluationCommandDescriptions)[2 * a2];
  if (a4)
  {
    v8 = v7 + 10;
    v9 = a4;
    while (1)
    {
      v11 = *v8++;
      v10 = v11;
      if (v11 >= 8)
      {
        break;
      }

      if (!--v9)
      {
        goto LABEL_5;
      }
    }

LABEL_30:
    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "appendEvaluationCommand", 1008, v10, v27, *v28);
    _os_crash("assertion failure: (!Unreachable code) Invalid Register Type: %u", v23);
    __break(1u);
  }

LABEL_5:
  v12 = *(v7 + 8);
  if (v12 > 3)
  {
    if (v12 > 5)
    {
      if (v12 == 6)
      {
        v13 = a1 + 1904;
        LODWORD(v33) = a2;
        v34 = 0uLL;
        *(&v33 + 1) = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a1 + 1904), &v33);
        v14 = 1920;
      }

      else
      {
        if (v12 != 7)
        {
          re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "appendEvaluationCommand", 1018, v12);
          result = _os_crash("assertion failure: (!Unreachable code) Invalid Register Type: %u", v24);
          __break(1u);
          return result;
        }

        v13 = a1 + 1944;
        LODWORD(v33) = a2;
        v34 = 0uLL;
        *(&v33 + 1) = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a1 + 1944), &v33);
        v14 = 1960;
      }
    }

    else if (v12 == 4)
    {
      v13 = a1 + 1824;
      LODWORD(v33) = a2;
      v34 = 0uLL;
      *(&v33 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 1824), &v33);
      v14 = 1840;
    }

    else
    {
      v13 = a1 + 1864;
      LODWORD(v33) = a2;
      v34 = 0uLL;
      *(&v33 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 1864), &v33);
      v14 = 1880;
    }
  }

  else if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = a1 + 1744;
      LODWORD(v33) = a2;
      v34 = 0uLL;
      *(&v33 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 1744), &v33);
      v14 = 1760;
    }

    else
    {
      v13 = a1 + 1784;
      LODWORD(v33) = a2;
      v34 = 0uLL;
      *(&v33 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 1784), &v33);
      v14 = 1800;
    }
  }

  else if (v12)
  {
    v13 = a1 + 1704;
    LODWORD(v33) = a2;
    v34 = 0uLL;
    *(&v33 + 1) = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a1 + 1704), &v33);
    v14 = 1720;
  }

  else
  {
    v13 = a1 + 1664;
    LODWORD(v33) = a2;
    v34 = 0uLL;
    *(&v33 + 1) = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a1 + 1664), &v33);
    v14 = 1680;
  }

  v15 = *(a1 + v14);
  v16 = v15 - 1;
  if (v4)
  {
    for (i = 32 * v15 - 24; ; i += 8)
    {
      v18 = *(v13 + 16);
      if (v18 <= v16)
      {
        break;
      }

      v19 = *a3++;
      *(*(v13 + 32) + i) = v19;
      if (!--v4)
      {
        return v16;
      }
    }

    v27 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v21 = MEMORY[0x1E69E9C10];
    *v28 = 136315906;
    *&v28[4] = "operator[]";
    *&v28[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    *&v28[14] = 789;
    v29 = 2048;
    v30 = v16;
    v31 = 2048;
    v32 = v18;
    _os_log_send_and_compose_impl(v22, &v27, &v33, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v28, 38, v25, v26);
    _os_crash_msg();
    __break(1u);
    goto LABEL_30;
  }

  return v16;
}

uint64_t re::EvaluationTree::getInputValue<re::Vector3<float>>(void *a1, unint64_t a2, _OWORD *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2 - 0x7FFFFFFFFFFFFFFFLL;
  if ((a2 - 0x7FFFFFFFFFFFFFFFLL) >= 0)
  {
    v4 = a1[118];
    while (v4 > v3)
    {
      a2 = *(a1[120] + 8 * v3);
      v3 = a2 - 0x7FFFFFFFFFFFFFFFLL;
      if ((a2 - 0x7FFFFFFFFFFFFFFFLL) < 0)
      {
        goto LABEL_5;
      }
    }

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

    v24 = 797;
    v25 = 2048;
    v26 = v3;
    v27 = 2048;
    v28 = v4;
    _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
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

    v24 = 797;
    v25 = 2048;
    v26 = v3;
    v27 = 2048;
    v28 = v4;
    _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
  }

LABEL_5:
  v5 = a1[40];
  v6 = a1[38];
  v7 = (v5 + 8 * v6);
  if (v6)
  {
    v8 = a1[40];
    do
    {
      v9 = v6 >> 1;
      v10 = &v8[v6 >> 1];
      v12 = *v10;
      v11 = v10 + 1;
      v6 += ~(v6 >> 1);
      if (v12 < a2)
      {
        v8 = v11;
      }

      else
      {
        v6 = v9;
      }
    }

    while (v6);
  }

  else
  {
    v8 = a1[40];
  }

  if (v8 == v7 || *v8 != a2)
  {
    return 0;
  }

  v3 = (v8 - v5) >> 3;
  v4 = a1[78];
  if (v4 <= v3)
  {
    goto LABEL_22;
  }

  *a3 = *(a1[80] + 16 * v3);
  return 1;
}

uint64_t re::EvaluationTree::getInputValue<re::Quaternion<float>>(void *a1, unint64_t a2, _OWORD *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2 - 0x7FFFFFFFFFFFFFFFLL;
  if ((a2 - 0x7FFFFFFFFFFFFFFFLL) >= 0)
  {
    v4 = a1[108];
    while (v4 > v3)
    {
      a2 = *(a1[110] + 8 * v3);
      v3 = a2 - 0x7FFFFFFFFFFFFFFFLL;
      if ((a2 - 0x7FFFFFFFFFFFFFFFLL) < 0)
      {
        goto LABEL_5;
      }
    }

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

    v24 = 797;
    v25 = 2048;
    v26 = v3;
    v27 = 2048;
    v28 = v4;
    _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
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

    v24 = 797;
    v25 = 2048;
    v26 = v3;
    v27 = 2048;
    v28 = v4;
    _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
  }

LABEL_5:
  v5 = a1[30];
  v6 = a1[28];
  v7 = (v5 + 8 * v6);
  if (v6)
  {
    v8 = a1[30];
    do
    {
      v9 = v6 >> 1;
      v10 = &v8[v6 >> 1];
      v12 = *v10;
      v11 = v10 + 1;
      v6 += ~(v6 >> 1);
      if (v12 < a2)
      {
        v8 = v11;
      }

      else
      {
        v6 = v9;
      }
    }

    while (v6);
  }

  else
  {
    v8 = a1[30];
  }

  if (v8 == v7 || *v8 != a2)
  {
    return 0;
  }

  v3 = (v8 - v5) >> 3;
  v4 = a1[68];
  if (v4 <= v3)
  {
    goto LABEL_22;
  }

  *a3 = *(a1[70] + 16 * v3);
  return 1;
}

unint64_t re::EvaluationTree::getCallbackData(re::EvaluationTree *this, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(this + 250);
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

    v12 = 797;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 252) + 448 * a2;
}

void *re::EvaluationTree::resolveAliasRegisters(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  re::EvaluationTree::resolveAliasRegistersForType<int>(a1, a2, a3, a4);
  re::EvaluationTree::resolveAliasRegistersForType<unsigned int>(a1, a2, a3, a4);
  re::EvaluationTree::resolveAliasRegistersForType<float>(a1, a2, a3, a4);
  re::EvaluationTree::resolveAliasRegistersForType<re::Matrix3x3<float>>(a1, a2, a3, a4);
  re::EvaluationTree::resolveAliasRegistersForType<re::Matrix4x4<float>>(a1, a2, a3, a4);
  re::EvaluationTree::resolveAliasRegistersForType<re::Quaternion<float>>(a1, a2, a3, a4);
  re::EvaluationTree::resolveAliasRegistersForType<re::Vector2<float>>(a1, a2, a3, a4);

  return re::EvaluationTree::resolveAliasRegistersForType<re::Vector3<float>>(a1, a2, a3, a4);
}

void *re::EvaluationTree::resolveAliasRegistersForType<int>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a4, a2, a3[1]);
  if (a3[1])
  {
    v8 = 0;
    v9 = *a3;
    v10 = a4[2];
    do
    {
      v11 = *(v9 + 8 * v8);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if (v11 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        v13 = *(a1 + 664);
        while (v13 > v12)
        {
          v11 = *(*(a1 + 680) + 8 * v12);
          v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
          if (v11 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_7;
          }
        }

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

        v24 = 797;
        v25 = 2048;
        v26 = v12;
        v27 = 2048;
        v28 = v13;
        _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
LABEL_14:
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
        v26 = v8;
        v27 = 2048;
        v28 = v12;
        _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
      }

LABEL_7:
      v12 = a4[1];
      if (v12 <= v8)
      {
        goto LABEL_14;
      }

      *(v10 + 8 * v8++) = v11;
    }

    while (v8 < a3[1]);
  }

  return result;
}

void *re::EvaluationTree::resolveAliasRegistersForType<unsigned int>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a4 + 3, a2, *(a3 + 24));
  if (*(a3 + 24))
  {
    v8 = 0;
    v9 = *(a3 + 16);
    v10 = a4[5];
    do
    {
      v11 = *(v9 + 8 * v8);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if (v11 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        v13 = *(a1 + 704);
        while (v13 > v12)
        {
          v11 = *(*(a1 + 720) + 8 * v12);
          v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
          if (v11 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_7;
          }
        }

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

        v24 = 797;
        v25 = 2048;
        v26 = v12;
        v27 = 2048;
        v28 = v13;
        _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
LABEL_14:
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
        v26 = v8;
        v27 = 2048;
        v28 = v12;
        _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
      }

LABEL_7:
      v12 = a4[4];
      if (v12 <= v8)
      {
        goto LABEL_14;
      }

      *(v10 + 8 * v8++) = v11;
    }

    while (v8 < *(a3 + 24));
  }

  return result;
}

{
  v34 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a4 + 3, a2, *(a3 + 32));
  if (*(a3 + 32))
  {
    v8 = 0;
    v9 = *(a3 + 40);
    v10 = a4[5];
    do
    {
      v11 = *(v9 + 8 * v8);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if (v11 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        v13 = *(a1 + 704);
        while (v13 > v12)
        {
          v11 = *(*(a1 + 720) + 8 * v12);
          v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
          if (v11 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_7;
          }
        }

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

        v24 = 797;
        v25 = 2048;
        v26 = v12;
        v27 = 2048;
        v28 = v13;
        _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
LABEL_14:
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
        v26 = v8;
        v27 = 2048;
        v28 = v12;
        _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
      }

LABEL_7:
      v12 = a4[4];
      if (v12 <= v8)
      {
        goto LABEL_14;
      }

      *(v10 + 8 * v8++) = v11;
    }

    while (v8 < *(a3 + 32));
  }

  return result;
}

void *re::EvaluationTree::resolveAliasRegistersForType<float>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a4 + 6, a2, *(a3 + 40));
  if (*(a3 + 40))
  {
    v8 = 0;
    v9 = *(a3 + 32);
    v10 = a4[8];
    do
    {
      v11 = *(v9 + 8 * v8);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if (v11 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        v13 = *(a1 + 744);
        while (v13 > v12)
        {
          v11 = *(*(a1 + 760) + 8 * v12);
          v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
          if (v11 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_7;
          }
        }

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

        v24 = 797;
        v25 = 2048;
        v26 = v12;
        v27 = 2048;
        v28 = v13;
        _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
LABEL_14:
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
        v26 = v8;
        v27 = 2048;
        v28 = v12;
        _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
      }

LABEL_7:
      v12 = a4[7];
      if (v12 <= v8)
      {
        goto LABEL_14;
      }

      *(v10 + 8 * v8++) = v11;
    }

    while (v8 < *(a3 + 40));
  }

  return result;
}

{
  v34 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a4 + 6, a2, *(a3 + 56));
  if (*(a3 + 56))
  {
    v8 = 0;
    v9 = *(a3 + 64);
    v10 = a4[8];
    do
    {
      v11 = *(v9 + 8 * v8);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if (v11 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        v13 = *(a1 + 744);
        while (v13 > v12)
        {
          v11 = *(*(a1 + 760) + 8 * v12);
          v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
          if (v11 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_7;
          }
        }

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

        v24 = 797;
        v25 = 2048;
        v26 = v12;
        v27 = 2048;
        v28 = v13;
        _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
LABEL_14:
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
        v26 = v8;
        v27 = 2048;
        v28 = v12;
        _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
      }

LABEL_7:
      v12 = a4[7];
      if (v12 <= v8)
      {
        goto LABEL_14;
      }

      *(v10 + 8 * v8++) = v11;
    }

    while (v8 < *(a3 + 56));
  }

  return result;
}

void *re::EvaluationTree::resolveAliasRegistersForType<re::Matrix3x3<float>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a4 + 9, a2, *(a3 + 56));
  if (*(a3 + 56))
  {
    v8 = 0;
    v9 = *(a3 + 48);
    v10 = a4[11];
    do
    {
      v11 = *(v9 + 8 * v8);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if (v11 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        v13 = *(a1 + 784);
        while (v13 > v12)
        {
          v11 = *(*(a1 + 800) + 8 * v12);
          v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
          if (v11 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_7;
          }
        }

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

        v24 = 797;
        v25 = 2048;
        v26 = v12;
        v27 = 2048;
        v28 = v13;
        _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
LABEL_14:
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
        v26 = v8;
        v27 = 2048;
        v28 = v12;
        _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
      }

LABEL_7:
      v12 = a4[10];
      if (v12 <= v8)
      {
        goto LABEL_14;
      }

      *(v10 + 8 * v8++) = v11;
    }

    while (v8 < *(a3 + 56));
  }

  return result;
}

{
  v34 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a4 + 9, a2, *(a3 + 80));
  if (*(a3 + 80))
  {
    v8 = 0;
    v9 = *(a3 + 88);
    v10 = a4[11];
    do
    {
      v11 = *(v9 + 8 * v8);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if (v11 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        v13 = *(a1 + 784);
        while (v13 > v12)
        {
          v11 = *(*(a1 + 800) + 8 * v12);
          v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
          if (v11 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_7;
          }
        }

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

        v24 = 797;
        v25 = 2048;
        v26 = v12;
        v27 = 2048;
        v28 = v13;
        _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
LABEL_14:
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
        v26 = v8;
        v27 = 2048;
        v28 = v12;
        _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
      }

LABEL_7:
      v12 = a4[10];
      if (v12 <= v8)
      {
        goto LABEL_14;
      }

      *(v10 + 8 * v8++) = v11;
    }

    while (v8 < *(a3 + 80));
  }

  return result;
}

void *re::EvaluationTree::resolveAliasRegistersForType<re::Matrix4x4<float>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a4 + 12, a2, *(a3 + 72));
  if (*(a3 + 72))
  {
    v8 = 0;
    v9 = *(a3 + 64);
    v10 = a4[14];
    do
    {
      v11 = *(v9 + 8 * v8);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if (v11 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        v13 = *(a1 + 824);
        while (v13 > v12)
        {
          v11 = *(*(a1 + 840) + 8 * v12);
          v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
          if (v11 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_7;
          }
        }

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

        v24 = 797;
        v25 = 2048;
        v26 = v12;
        v27 = 2048;
        v28 = v13;
        _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
LABEL_14:
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
        v26 = v8;
        v27 = 2048;
        v28 = v12;
        _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
      }

LABEL_7:
      v12 = a4[13];
      if (v12 <= v8)
      {
        goto LABEL_14;
      }

      *(v10 + 8 * v8++) = v11;
    }

    while (v8 < *(a3 + 72));
  }

  return result;
}

{
  v34 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a4 + 12, a2, *(a3 + 104));
  if (*(a3 + 104))
  {
    v8 = 0;
    v9 = *(a3 + 112);
    v10 = a4[14];
    do
    {
      v11 = *(v9 + 8 * v8);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if (v11 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        v13 = *(a1 + 824);
        while (v13 > v12)
        {
          v11 = *(*(a1 + 840) + 8 * v12);
          v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
          if (v11 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_7;
          }
        }

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

        v24 = 797;
        v25 = 2048;
        v26 = v12;
        v27 = 2048;
        v28 = v13;
        _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
LABEL_14:
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
        v26 = v8;
        v27 = 2048;
        v28 = v12;
        _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
      }

LABEL_7:
      v12 = a4[13];
      if (v12 <= v8)
      {
        goto LABEL_14;
      }

      *(v10 + 8 * v8++) = v11;
    }

    while (v8 < *(a3 + 104));
  }

  return result;
}

void *re::EvaluationTree::resolveAliasRegistersForType<re::Quaternion<float>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a4 + 15, a2, *(a3 + 88));
  if (*(a3 + 88))
  {
    v8 = 0;
    v9 = *(a3 + 80);
    v10 = a4[17];
    do
    {
      v11 = *(v9 + 8 * v8);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if (v11 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        v13 = *(a1 + 864);
        while (v13 > v12)
        {
          v11 = *(*(a1 + 880) + 8 * v12);
          v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
          if (v11 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_7;
          }
        }

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

        v24 = 797;
        v25 = 2048;
        v26 = v12;
        v27 = 2048;
        v28 = v13;
        _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
LABEL_14:
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
        v26 = v8;
        v27 = 2048;
        v28 = v12;
        _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
      }

LABEL_7:
      v12 = a4[16];
      if (v12 <= v8)
      {
        goto LABEL_14;
      }

      *(v10 + 8 * v8++) = v11;
    }

    while (v8 < *(a3 + 88));
  }

  return result;
}

{
  v34 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a4 + 15, a2, *(a3 + 128));
  if (*(a3 + 128))
  {
    v8 = 0;
    v9 = *(a3 + 136);
    v10 = a4[17];
    do
    {
      v11 = *(v9 + 8 * v8);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if (v11 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        v13 = *(a1 + 864);
        while (v13 > v12)
        {
          v11 = *(*(a1 + 880) + 8 * v12);
          v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
          if (v11 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_7;
          }
        }

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

        v24 = 797;
        v25 = 2048;
        v26 = v12;
        v27 = 2048;
        v28 = v13;
        _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
LABEL_14:
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
        v26 = v8;
        v27 = 2048;
        v28 = v12;
        _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
      }

LABEL_7:
      v12 = a4[16];
      if (v12 <= v8)
      {
        goto LABEL_14;
      }

      *(v10 + 8 * v8++) = v11;
    }

    while (v8 < *(a3 + 128));
  }

  return result;
}

void *re::EvaluationTree::resolveAliasRegistersForType<re::Vector2<float>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a4 + 18, a2, *(a3 + 104));
  if (*(a3 + 104))
  {
    v8 = 0;
    v9 = *(a3 + 96);
    v10 = a4[20];
    do
    {
      v11 = *(v9 + 8 * v8);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if (v11 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        v13 = *(a1 + 904);
        while (v13 > v12)
        {
          v11 = *(*(a1 + 920) + 8 * v12);
          v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
          if (v11 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_7;
          }
        }

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

        v24 = 797;
        v25 = 2048;
        v26 = v12;
        v27 = 2048;
        v28 = v13;
        _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
LABEL_14:
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
        v26 = v8;
        v27 = 2048;
        v28 = v12;
        _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
      }

LABEL_7:
      v12 = a4[19];
      if (v12 <= v8)
      {
        goto LABEL_14;
      }

      *(v10 + 8 * v8++) = v11;
    }

    while (v8 < *(a3 + 104));
  }

  return result;
}

{
  v34 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a4 + 18, a2, *(a3 + 152));
  if (*(a3 + 152))
  {
    v8 = 0;
    v9 = *(a3 + 160);
    v10 = a4[20];
    do
    {
      v11 = *(v9 + 8 * v8);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if (v11 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        v13 = *(a1 + 904);
        while (v13 > v12)
        {
          v11 = *(*(a1 + 920) + 8 * v12);
          v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
          if (v11 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_7;
          }
        }

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

        v24 = 797;
        v25 = 2048;
        v26 = v12;
        v27 = 2048;
        v28 = v13;
        _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
LABEL_14:
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
        v26 = v8;
        v27 = 2048;
        v28 = v12;
        _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
      }

LABEL_7:
      v12 = a4[19];
      if (v12 <= v8)
      {
        goto LABEL_14;
      }

      *(v10 + 8 * v8++) = v11;
    }

    while (v8 < *(a3 + 152));
  }

  return result;
}

void *re::EvaluationTree::resolveAliasRegistersForType<re::Vector3<float>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a4 + 21, a2, *(a3 + 120));
  if (*(a3 + 120))
  {
    v8 = 0;
    v9 = *(a3 + 112);
    v10 = a4[23];
    do
    {
      v11 = *(v9 + 8 * v8);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if (v11 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        v13 = *(a1 + 944);
        while (v13 > v12)
        {
          v11 = *(*(a1 + 960) + 8 * v12);
          v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
          if (v11 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_7;
          }
        }

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

        v24 = 797;
        v25 = 2048;
        v26 = v12;
        v27 = 2048;
        v28 = v13;
        _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
LABEL_14:
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
        v26 = v8;
        v27 = 2048;
        v28 = v12;
        _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
      }

LABEL_7:
      v12 = a4[22];
      if (v12 <= v8)
      {
        goto LABEL_14;
      }

      *(v10 + 8 * v8++) = v11;
    }

    while (v8 < *(a3 + 120));
  }

  return result;
}

{
  v34 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a4 + 21, a2, *(a3 + 176));
  if (*(a3 + 176))
  {
    v8 = 0;
    v9 = *(a3 + 184);
    v10 = a4[23];
    do
    {
      v11 = *(v9 + 8 * v8);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if (v11 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        v13 = *(a1 + 944);
        while (v13 > v12)
        {
          v11 = *(*(a1 + 960) + 8 * v12);
          v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
          if (v11 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_7;
          }
        }

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

        v24 = 797;
        v25 = 2048;
        v26 = v12;
        v27 = 2048;
        v28 = v13;
        _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
LABEL_14:
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
        v26 = v8;
        v27 = 2048;
        v28 = v12;
        _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
      }

LABEL_7:
      v12 = a4[22];
      if (v12 <= v8)
      {
        goto LABEL_14;
      }

      *(v10 + 8 * v8++) = v11;
    }

    while (v8 < *(a3 + 176));
  }

  return result;
}

void *re::EvaluationTree::resolveAliasRegisters(void *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  re::EvaluationTree::resolveAliasRegistersForType<int>(a1, a2, a3, a4);
  re::EvaluationTree::resolveAliasRegistersForType<unsigned int>(a1, a2, a3, a4);
  re::EvaluationTree::resolveAliasRegistersForType<float>(a1, a2, a3, a4);
  re::EvaluationTree::resolveAliasRegistersForType<re::Matrix3x3<float>>(a1, a2, a3, a4);
  re::EvaluationTree::resolveAliasRegistersForType<re::Matrix4x4<float>>(a1, a2, a3, a4);
  re::EvaluationTree::resolveAliasRegistersForType<re::Quaternion<float>>(a1, a2, a3, a4);
  re::EvaluationTree::resolveAliasRegistersForType<re::Vector2<float>>(a1, a2, a3, a4);
  re::EvaluationTree::resolveAliasRegistersForType<re::Vector3<float>>(a1, a2, a3, a4);
  re::EvaluationTree::resolveAliasRegistersForType(a1, a2, a3[16], a3[17], a5);
  re::EvaluationTree::resolveAliasRegistersForType<int>(a1, a2, a3 + 18, a6);
  re::EvaluationTree::resolveAliasRegistersForType<unsigned int>(a1, a2, (a3 + 18), a6);
  re::EvaluationTree::resolveAliasRegistersForType<float>(a1, a2, (a3 + 18), a6);
  re::EvaluationTree::resolveAliasRegistersForType<re::Matrix3x3<float>>(a1, a2, (a3 + 18), a6);
  re::EvaluationTree::resolveAliasRegistersForType<re::Matrix4x4<float>>(a1, a2, (a3 + 18), a6);
  re::EvaluationTree::resolveAliasRegistersForType<re::Quaternion<float>>(a1, a2, (a3 + 18), a6);
  re::EvaluationTree::resolveAliasRegistersForType<re::Vector2<float>>(a1, a2, (a3 + 18), a6);
  re::EvaluationTree::resolveAliasRegistersForType<re::Vector3<float>>(a1, a2, (a3 + 18), a6);
  re::EvaluationTree::resolveAliasRegistersForType(a1, a2, a3[34], a3[35], a7);
  re::SliceRegisterTable::operator=<re::FixedRegisterTable>(a8, a4);
  v16 = a5[1];
  a8[16] = a5[2];
  a8[17] = v16;
  result = re::SliceRegisterTable::operator=<re::FixedRegisterTable>(a8 + 18, a6);
  v18 = a7[1];
  a8[34] = a7[2];
  a8[35] = v18;
  return result;
}

void *re::EvaluationTree::resolveAliasRegistersForType(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v51 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationSRT>::init<>(a5, a2, a4);
  if (a4)
  {
    v10 = 0;
    v11 = a5[2];
    while (1)
    {
      v12 = (a3 + 24 * v10);
      v13 = *v12;
      v14 = *v12 - 0x7FFFFFFFFFFFFFFFLL;
      if ((v14 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_7:
      v14 = a5[1];
      if (v14 <= v10)
      {
        goto LABEL_32;
      }

      v16 = (v11 + 24 * v10);
      *v16 = v13;
      v17 = v12[1];
      v14 = v17 - 0x7FFFFFFFFFFFFFFFLL;
      if (v17 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        v15 = a1[108];
        while (v15 > v14)
        {
          v17 = *(a1[110] + 8 * v14);
          v14 = v17 - 0x7FFFFFFFFFFFFFFFLL;
          if (v17 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_12;
          }
        }

LABEL_24:
        v37 = 0;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v46 = 0u;
        v21 = MEMORY[0x1E69E9C10];
        v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v38 = 136315906;
        v39 = "operator[]";
        v40 = 1024;
        if (v22)
        {
          v23 = 3;
        }

        else
        {
          v23 = 2;
        }

        v41 = 797;
        v42 = 2048;
        v43 = v14;
        v44 = 2048;
        v45 = v15;
        _os_log_send_and_compose_impl(v23, &v37, &v46, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v38, 38, v36);
        _os_crash_msg();
        __break(1u);
LABEL_28:
        v37 = 0;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v46 = 0u;
        v24 = MEMORY[0x1E69E9C10];
        v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v38 = 136315906;
        v39 = "operator[]";
        v40 = 1024;
        if (v25)
        {
          v26 = 3;
        }

        else
        {
          v26 = 2;
        }

        v41 = 797;
        v42 = 2048;
        v43 = v14;
        v44 = 2048;
        v45 = v15;
        _os_log_send_and_compose_impl(v26, &v37, &v46, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v38, 38, v36);
        _os_crash_msg();
        __break(1u);
LABEL_32:
        v37 = 0;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v46 = 0u;
        v27 = MEMORY[0x1E69E9C10];
        v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v38 = 136315906;
        v39 = "operator[]";
        v40 = 1024;
        if (v28)
        {
          v29 = 3;
        }

        else
        {
          v29 = 2;
        }

        v41 = 468;
        v42 = 2048;
        v43 = v10;
        v44 = 2048;
        v45 = v14;
        _os_log_send_and_compose_impl(v29, &v37, &v46, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v38, 38, v36);
        _os_crash_msg();
        __break(1u);
LABEL_36:
        v37 = 0;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v46 = 0u;
        v30 = MEMORY[0x1E69E9C10];
        v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v38 = 136315906;
        v39 = "operator[]";
        v40 = 1024;
        if (v31)
        {
          v32 = 3;
        }

        else
        {
          v32 = 2;
        }

        v41 = 468;
        v42 = 2048;
        v43 = v10;
        v44 = 2048;
        v45 = v14;
        _os_log_send_and_compose_impl(v32, &v37, &v46, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v38, 38, v36);
        _os_crash_msg();
        __break(1u);
LABEL_40:
        v37 = 0;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v46 = 0u;
        v33 = MEMORY[0x1E69E9C10];
        v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v38 = 136315906;
        v39 = "operator[]";
        v40 = 1024;
        if (v34)
        {
          v35 = 3;
        }

        else
        {
          v35 = 2;
        }

        v41 = 468;
        v42 = 2048;
        v43 = v10;
        v44 = 2048;
        v45 = v14;
        _os_log_send_and_compose_impl(v35, &v37, &v46, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v38, 38, v36);
        _os_crash_msg();
        __break(1u);
      }

LABEL_12:
      v14 = a5[1];
      if (v14 <= v10)
      {
        goto LABEL_36;
      }

      v16[1] = v17;
      v18 = v12[2];
      v14 = v18 - 0x7FFFFFFFFFFFFFFFLL;
      if (v18 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        v15 = a1[118];
        while (v15 > v14)
        {
          v18 = *(a1[120] + 8 * v14);
          v14 = v18 - 0x7FFFFFFFFFFFFFFFLL;
          if (v18 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_28;
      }

LABEL_17:
      v14 = a5[1];
      if (v14 <= v10)
      {
        goto LABEL_40;
      }

      v16[2] = v18;
      if (++v10 == a4)
      {
        return result;
      }
    }

    v15 = a1[118];
    while (v15 > v14)
    {
      v13 = *(a1[120] + 8 * v14);
      v14 = v13 - 0x7FFFFFFFFFFFFFFFLL;
      if (v13 - 0x7FFFFFFFFFFFFFFFLL < 0)
      {
        goto LABEL_7;
      }
    }

    v37 = 0;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v46 = 0u;
    v19 = MEMORY[0x1E69E9C10];
    v38 = 136315906;
    v39 = "operator[]";
    v40 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v41 = 797;
    v42 = 2048;
    v43 = v14;
    v44 = 2048;
    v45 = v15;
    _os_log_send_and_compose_impl(v20, &v37, &v46, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v38, 38, v36);
    _os_crash_msg();
    __break(1u);
    goto LABEL_24;
  }

  return result;
}

void *re::EvaluationTree::resolveAliasRegisters(re::EvaluationTree *this, re::Allocator *a2, const re::EvaluationCallbackData *a3, re::EvaluationCallbackData *a4)
{
  *a4 = *a3;
  *(a4 + 55) = *(a3 + 55);
  re::EvaluationTree::resolveAliasRegistersForType<int>(this, a2, a3 + 8, a4 + 1);
  re::EvaluationTree::resolveAliasRegistersForType<unsigned int>(this, a2, a3 + 8, a4 + 1);
  re::EvaluationTree::resolveAliasRegistersForType<float>(this, a2, a3 + 8, a4 + 1);
  re::EvaluationTree::resolveAliasRegistersForType<re::Matrix3x3<float>>(this, a2, a3 + 8, a4 + 1);
  re::EvaluationTree::resolveAliasRegistersForType<re::Matrix4x4<float>>(this, a2, a3 + 8, a4 + 1);
  re::EvaluationTree::resolveAliasRegistersForType<re::Quaternion<float>>(this, a2, a3 + 8, a4 + 1);
  re::EvaluationTree::resolveAliasRegistersForType<re::Vector2<float>>(this, a2, a3 + 8, a4 + 1);
  re::EvaluationTree::resolveAliasRegistersForType<re::Vector3<float>>(this, a2, a3 + 8, a4 + 1);
  re::EvaluationTree::resolveAliasRegistersForType(this, a2, *(a3 + 27), *(a3 + 26), a4 + 25);
  re::EvaluationTree::resolveAliasRegistersForType<int>(this, a2, a3 + 224, a4 + 28);
  re::EvaluationTree::resolveAliasRegistersForType<unsigned int>(this, a2, a3 + 224, a4 + 28);
  re::EvaluationTree::resolveAliasRegistersForType<float>(this, a2, a3 + 224, a4 + 28);
  re::EvaluationTree::resolveAliasRegistersForType<re::Matrix3x3<float>>(this, a2, a3 + 224, a4 + 28);
  re::EvaluationTree::resolveAliasRegistersForType<re::Matrix4x4<float>>(this, a2, a3 + 224, a4 + 28);
  re::EvaluationTree::resolveAliasRegistersForType<re::Quaternion<float>>(this, a2, a3 + 224, a4 + 28);
  re::EvaluationTree::resolveAliasRegistersForType<re::Vector2<float>>(this, a2, a3 + 224, a4 + 28);
  re::EvaluationTree::resolveAliasRegistersForType<re::Vector3<float>>(this, a2, a3 + 224, a4 + 28);
  v9 = *(a3 + 53);
  v8 = *(a3 + 54);

  return re::EvaluationTree::resolveAliasRegistersForType(this, a2, v8, v9, a4 + 52);
}

void *re::EvaluationTree::resolveAliasRegistersForType<int>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(a4, a2, *(a3 + 8));
  if (*(a3 + 8))
  {
    v8 = 0;
    v9 = *(a3 + 16);
    v10 = a4[2];
    do
    {
      v11 = *(v9 + 8 * v8);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if (v11 - 0x7FFFFFFFFFFFFFFFLL >= 0)
      {
        v13 = *(a1 + 664);
        while (v13 > v12)
        {
          v11 = *(*(a1 + 680) + 8 * v12);
          v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
          if (v11 - 0x7FFFFFFFFFFFFFFFLL < 0)
          {
            goto LABEL_7;
          }
        }

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

        v24 = 797;
        v25 = 2048;
        v26 = v12;
        v27 = 2048;
        v28 = v13;
        _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
LABEL_14:
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
        v26 = v8;
        v27 = 2048;
        v28 = v12;
        _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
      }

LABEL_7:
      v12 = a4[1];
      if (v12 <= v8)
      {
        goto LABEL_14;
      }

      *(v10 + 8 * v8++) = v11;
    }

    while (v8 < *(a3 + 8));
  }

  return result;
}

_anonymous_namespace_ *re::BucketArray<re::EvaluationBranchGroupData,8ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
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
        v5 = (*(**v3 + 32))(*v3, 5568, 0);
        result = re::DynamicOverflowArray<re::EvaluationBranchGroupData *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::EvaluationBranchGroupData *,2ul>::setCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<re::EvaluationBranchGroupData *,2ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = *(result + 3);
  }

  if (v8 != a2)
  {
    v9 = *(result + 1);
    if (v9 <= a2 && (a2 > 2 || (v7 & 1) == 0))
    {
      if (a2 < 3)
      {
        v14 = (result + 24);
        v15 = *(v4 + 4);
        if (v7)
        {
          v16 = v4 + 24;
        }

        else
        {
          v16 = *(v4 + 4);
        }

        memcpy(v14, v16, 8 * v9);
        result = (*(*v5 + 40))(v5, v15);
        v6 = *(v4 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 61)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 8, a2);
        _os_crash("assertion failure: (!overflow) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", v18, v20);
        __break(1u);
      }

      else
      {
        v2 = 8 * a2;
        v10 = (*(*v5 + 32))(*result, 8 * a2, 8);
        if (v10)
        {
          v12 = v10;
          if (*(v4 + 16))
          {
            v13 = v4 + 24;
          }

          else
          {
            v13 = *(v4 + 4);
          }

          result = memcpy(v10, v13, 8 * *(v4 + 1));
          v17 = *(v4 + 4);
          if ((v17 & 1) == 0)
          {
            result = (*(**v4 + 40))(*v4, *(v4 + 4));
            v17 = *(v4 + 4);
          }

          *(v4 + 4) = v17 & 0xFFFFFFFE;
          *(v4 + 3) = a2;
          *(v4 + 4) = v12;
          return result;
        }
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*v4 + 8));
      result = _os_crash("assertion failure: (newData) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", v19, v21);
      __break(1u);
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::EvaluationBranchGroupData *,2ul>::add(uint64_t a1, void *a2)
{
  result = re::DynamicOverflowArray<re::EvaluationBranchGroupData *,2ul>::ensureCapacity(a1);
  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  v6 = *(a1 + 8);
  *(v5 + 8 * v6) = *a2;
  *(a1 + 8) = v6 + 1;
  *(a1 + 16) += 2;
  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::EvaluationBranchGroupData *,2ul>::ensureCapacity(_anonymous_namespace_ *result)
{
  v1 = result;
  if (!*result)
  {
    v7 = *(v1 + 1);
    result = re::DynamicOverflowArray<re::EvaluationBranchGroupData *,2ul>::setCapacity(v1, v7 + 1);
    *(v1 + 4) += 2;
    return result;
  }

  v2 = *(result + 1);
  if (*(result + 16))
  {
    v4 = v2 + 1;
    if (v4 < 3)
    {
      return result;
    }

    v6 = 4;
    goto LABEL_12;
  }

  v3 = *(result + 3);
  v5 = v2 >= v3;
  v4 = v2 + 1;
  v5 = !v5 || v3 >= v4;
  if (!v5)
  {
    v6 = 2 * v3;
LABEL_12:
    if (v6 <= v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = v6;
    }

    return re::DynamicOverflowArray<re::EvaluationBranchGroupData *,2ul>::setCapacity(result, v8);
  }

  return result;
}

void *re::DynamicArray<re::EvaluationCallbackData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::EvaluationCallbackData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x1C0uLL))
        {
          v2 = 448 * a2;
          result = (*(*result + 32))(result, 448 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 448, a2);
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
        v10 = 448 * v9;
        v11 = v7;
        do
        {
          re::ObjectHelper::moveConstruct<re::EvaluationCallbackData>(v11, v8);
          re::EvaluationCallbackData::~EvaluationCallbackData(v8);
          v8 = (v8 + 448);
          v11 += 56;
          v10 -= 448;
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

void *re::ObjectHelper::moveConstruct<re::EvaluationCallbackData>(void *result, void *a2)
{
  *result = *a2;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  v2 = a2[2];
  result[1] = a2[1];
  result[2] = v2;
  a2[1] = 0;
  a2[2] = 0;
  v3 = result[3];
  result[3] = a2[3];
  a2[3] = v3;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  v4 = a2[5];
  result[4] = a2[4];
  result[5] = v4;
  a2[4] = 0;
  a2[5] = 0;
  v5 = result[6];
  result[6] = a2[6];
  a2[6] = v5;
  result[7] = 0;
  result[8] = 0;
  result[9] = 0;
  v6 = a2[8];
  result[7] = a2[7];
  result[8] = v6;
  a2[7] = 0;
  a2[8] = 0;
  v7 = result[9];
  result[9] = a2[9];
  a2[9] = v7;
  result[10] = 0;
  result[11] = 0;
  result[12] = 0;
  v8 = a2[11];
  result[10] = a2[10];
  result[11] = v8;
  a2[10] = 0;
  a2[11] = 0;
  v9 = result[12];
  result[12] = a2[12];
  a2[12] = v9;
  result[13] = 0;
  result[14] = 0;
  result[15] = 0;
  v10 = a2[14];
  result[13] = a2[13];
  result[14] = v10;
  a2[13] = 0;
  a2[14] = 0;
  v11 = result[15];
  result[15] = a2[15];
  a2[15] = v11;
  result[16] = 0;
  result[17] = 0;
  result[18] = 0;
  v12 = a2[17];
  result[16] = a2[16];
  result[17] = v12;
  a2[16] = 0;
  a2[17] = 0;
  v13 = result[18];
  result[18] = a2[18];
  a2[18] = v13;
  result[19] = 0;
  result[20] = 0;
  result[21] = 0;
  v14 = a2[20];
  result[19] = a2[19];
  result[20] = v14;
  a2[19] = 0;
  a2[20] = 0;
  v15 = result[21];
  result[21] = a2[21];
  a2[21] = v15;
  result[22] = 0;
  result[23] = 0;
  result[24] = 0;
  v16 = a2[23];
  result[22] = a2[22];
  result[23] = v16;
  a2[22] = 0;
  a2[23] = 0;
  v17 = result[24];
  result[24] = a2[24];
  a2[24] = v17;
  result[25] = 0;
  result[26] = 0;
  result[27] = 0;
  v18 = a2[26];
  result[25] = a2[25];
  result[26] = v18;
  a2[25] = 0;
  a2[26] = 0;
  v19 = result[27];
  result[27] = a2[27];
  a2[27] = v19;
  result[28] = 0;
  result[29] = 0;
  result[30] = 0;
  v20 = a2[29];
  result[28] = a2[28];
  result[29] = v20;
  a2[28] = 0;
  a2[29] = 0;
  v21 = result[30];
  result[30] = a2[30];
  a2[30] = v21;
  result[31] = 0;
  result[32] = 0;
  result[33] = 0;
  v22 = a2[32];
  result[31] = a2[31];
  result[32] = v22;
  a2[31] = 0;
  a2[32] = 0;
  v23 = result[33];
  result[33] = a2[33];
  a2[33] = v23;
  result[34] = 0;
  result[35] = 0;
  result[36] = 0;
  v24 = a2[35];
  result[34] = a2[34];
  result[35] = v24;
  a2[34] = 0;
  a2[35] = 0;
  v25 = result[36];
  result[36] = a2[36];
  a2[36] = v25;
  result[37] = 0;
  result[38] = 0;
  result[39] = 0;
  v26 = a2[38];
  result[37] = a2[37];
  result[38] = v26;
  a2[37] = 0;
  a2[38] = 0;
  v27 = result[39];
  result[39] = a2[39];
  a2[39] = v27;
  result[40] = 0;
  result[41] = 0;
  result[42] = 0;
  v28 = a2[41];
  result[40] = a2[40];
  result[41] = v28;
  a2[40] = 0;
  a2[41] = 0;
  v29 = result[42];
  result[42] = a2[42];
  a2[42] = v29;
  result[43] = 0;
  result[44] = 0;
  result[45] = 0;
  v30 = a2[44];
  result[43] = a2[43];
  result[44] = v30;
  a2[43] = 0;
  a2[44] = 0;
  v31 = result[45];
  result[45] = a2[45];
  a2[45] = v31;
  result[46] = 0;
  result[47] = 0;
  result[48] = 0;
  v32 = a2[47];
  result[46] = a2[46];
  result[47] = v32;
  a2[46] = 0;
  a2[47] = 0;
  v33 = result[48];
  result[48] = a2[48];
  a2[48] = v33;
  result[49] = 0;
  result[50] = 0;
  result[51] = 0;
  v34 = a2[50];
  result[49] = a2[49];
  result[50] = v34;
  a2[49] = 0;
  a2[50] = 0;
  v35 = result[51];
  result[51] = a2[51];
  a2[51] = v35;
  result[52] = 0;
  result[53] = 0;
  result[54] = 0;
  v36 = a2[53];
  result[52] = a2[52];
  result[53] = v36;
  a2[52] = 0;
  a2[53] = 0;
  v37 = result[54];
  result[54] = a2[54];
  a2[54] = v37;
  result[55] = a2[55];
  return result;
}

void *re::FixedArray<re::EvaluationRegisterId<int>>::init<>(void *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 61)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v8, v9);
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  v5 = 8 * a3;
  result = (*(*a2 + 32))(a2, 8 * a3, 8);
  v4[2] = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return result;
  }

  v7 = result;
  if (a3 != 1)
  {
    result = memset(result, 255, v5 - 8);
    v7 = (v7 + v5 - 8);
  }

  *v7 = -1;
  return result;
}

uint64_t re::RigGraphOperatorDefinition::init(unint64_t *a1, uint64_t *a2, const re::StringID *a3, unint64_t a4, unint64_t a5, uint64_t a6, const char **a7)
{
  v34 = a6;
  v59 = *MEMORY[0x1E69E9840];
  v12 = re::StringID::operator=(a1, a3);
  re::FixedArray<re::RigGraphOperatorParameterDefinition>::init<>((v12 + 2), *a2, a4);
  v35 = a2;
  v37 = a5;
  v13 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::init<>((a1 + 5), *a2, a5);
  if (a4)
  {
    v14 = 0;
    v15 = 16;
    while (1)
    {
      v16 = a7;
      v17 = *a7;
      v18 = v16[1];
      v41 = 0;
      v42 = &str_67;
      v43 = 0;
      v44 = &str_67;
      v20 = a1[3];
      if (v20 <= v14)
      {
        break;
      }

      v21 = (a1[4] + v15);
      re::StringID::operator=((v21 - 16), &v41);
      v13 = re::StringID::operator=(v21, &v43);
      if (v43)
      {
        if (v43)
        {
        }
      }

      v43 = 0;
      v44 = &str_67;
      if (v41)
      {
        if (v41)
        {
        }
      }

      ++v14;
      v15 += 32;
      a7 = v16 + 2;
      if (a4 == v14)
      {
        a7 = v16 + 2;
        goto LABEL_12;
      }
    }

    v45 = 0;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    v28 = MEMORY[0x1E69E9C10];
    v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v46 = 136315906;
    v47 = "operator[]";
    v48 = 1024;
    if (v29)
    {
      v30 = 3;
    }

    else
    {
      v30 = 2;
    }

    v49 = 468;
    v50 = 2048;
    v51 = v14;
    v52 = 2048;
    v53 = v20;
    _os_log_send_and_compose_impl(v30, &v45, &v54, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v46, 38, v34, v35);
    _os_crash_msg();
    __break(1u);
LABEL_31:
    v45 = 0;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    v31 = MEMORY[0x1E69E9C10];
    v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v46 = 136315906;
    v47 = "operator[]";
    v48 = 1024;
    if (v32)
    {
      v33 = 3;
    }

    else
    {
      v33 = 2;
    }

    v49 = 468;
    v50 = 2048;
    v51 = v14;
    v52 = 2048;
    v53 = v16;
    _os_log_send_and_compose_impl(v33, &v45, &v54, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v46, 38, v34, v35);
    _os_crash_msg();
    __break(1u);
  }

LABEL_12:
  if (v37)
  {
    v14 = 0;
    v22 = 16;
    do
    {
      v23 = *a7;
      v24 = a7[1];
      v41 = 0;
      v42 = &str_67;
      v43 = 0;
      v44 = &str_67;
      v16 = a1[6];
      if (v16 <= v14)
      {
        goto LABEL_31;
      }

      v26 = (a1[7] + v22);
      re::StringID::operator=((v26 - 16), &v41);
      v13 = re::StringID::operator=(v26, &v43);
      if (v43)
      {
        if (v43)
        {
        }
      }

      v43 = 0;
      v44 = &str_67;
      if (v41)
      {
        if (v41)
        {
        }
      }

      ++v14;
      v22 += 32;
      a7 += 2;
    }

    while (v37 != v14);
  }

  a1[8] = v34;
  result = re::RigEnvironment::insertRigGraphOperator(a2, a3, a1, v38);
  if ((v38[0] & 1) == 0)
  {
    result = v39;
    if (v39)
    {
      if (v40)
      {
        return (*(*v39 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::ConvertQuaternionToIntrinsicEulerCompile(uint64_t a1, __n128 **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v26) = 5;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 233), &v26);
    v26 = v10[235] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 26), &v26);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 66), v9 + 7);
    v11 = (v10[30] + 8 * v10[28] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v26) = 1;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 213), &v26);
    v26 = v14[215] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 6), &v26);
    re::DynamicArray<int>::add((v14 + 46), &v13[7]);
    v15 = (v14[10] + 8 * v14[8] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v26) = 14;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1944), &v26);
  v17 = *(v8 + 1960) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::ExtractTwistFromQuaternionCompile(uint64_t a1, __n128 **a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v64, v66);
    __break(1u);
  }

  else
  {
    v7 = *(a1 + 8);
    v8 = a2[1];
    if (v8[6].n128_u8[0] == 1)
    {
      v9 = v8[1].n128_u64[0];
      LODWORD(v71) = 7;
      v73 = 0;
      v74 = 0;
      v72 = 0;
      re::DynamicArray<re::EvaluationRegister>::add((v9 + 243), &v71);
      v71 = v9[245] - 1;
      re::DynamicArray<unsigned long>::add((v9 + 36), &v71);
      re::DynamicArray<re::Vector3<float>>::add((v9 + 76), v8 + 7);
      v10 = (v9[40] + 8 * v9[38] - 8);
      v11 = *(a1 + 8);
    }

    else
    {
      v10 = v8 + 11;
      v11 = *(a1 + 8);
    }

    v12 = v10->n128_u64[0];
    v70.n128_u32[0] = 0;
    LODWORD(v71) = 2;
    v73 = 0;
    v74 = 0;
    v72 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v11 + 218), &v71);
    v71 = v11[220] - 1;
    re::DynamicArray<unsigned long>::add((v11 + 11), &v71);
    re::DynamicArray<float>::add((v11 + 51), &v70);
    v13 = *(v11[15] + 8 * v11[13] - 8);
    LODWORD(v71) = 46;
    v73 = 0;
    v74 = 0;
    v72 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v7 + 1864), &v71);
    v14 = *(v7 + 1880) - 1;
    v15 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>(v7 + 1664, v14);
    *(v15 + 8) = v12;
    *(v15 + 16) = v13;
    v16 = *(a1 + 8);
    v17 = *a2;
    if ((*a2)[6].n128_u8[0] == 1)
    {
      v18 = v17[1].n128_u64[0];
      LODWORD(v71) = 5;
      v73 = 0;
      v74 = 0;
      v72 = 0;
      re::DynamicArray<re::EvaluationRegister>::add((v18 + 233), &v71);
      v71 = v18[235] - 1;
      re::DynamicArray<unsigned long>::add((v18 + 26), &v71);
      re::DynamicArray<re::Vector3<float>>::add((v18 + 66), v17 + 7);
      v19 = (v18[30] + 8 * v18[28] - 8);
    }

    else
    {
      v19 = v17 + 11;
    }

    v20 = v19->n128_u64[0];
    LODWORD(v71) = 44;
    v73 = 0;
    v74 = 0;
    v72 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v16 + 1744), &v71);
    v21 = *(v16 + 1760) - 1;
    v22 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v16 + 1664, v21);
    *(v22 + 8) = v20;
    *(v22 + 16) = v14;
    v23 = *(a1 + 8);
    v24 = *a2;
    if (v24[6].n128_u8[0] == 1)
    {
      v25 = v24[1].n128_u64[0];
      LODWORD(v71) = 5;
      v73 = 0;
      v74 = 0;
      v72 = 0;
      re::DynamicArray<re::EvaluationRegister>::add((v25 + 233), &v71);
      v71 = v25[235] - 1;
      re::DynamicArray<unsigned long>::add((v25 + 26), &v71);
      re::DynamicArray<re::Vector3<float>>::add((v25 + 66), v24 + 7);
      v26 = (v25[30] + 8 * v25[28] - 8);
    }

    else
    {
      v26 = v24 + 11;
    }

    v27 = *(a1 + 8);
    v28 = v26->n128_u64[0];
    v70.n128_u64[0] = 0;
    v70.n128_u64[1] = 0x3F80000000000000;
    LODWORD(v71) = 5;
    v73 = 0;
    v74 = 0;
    v72 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v27 + 233), &v71);
    v71 = v27[235] - 1;
    re::DynamicArray<unsigned long>::add((v27 + 26), &v71);
    re::DynamicArray<re::Vector3<float>>::add((v27 + 66), &v70);
    v29 = *(v27[30] + 8 * v27[28] - 8);
    LODWORD(v71) = 44;
    v73 = 0;
    v74 = 0;
    v72 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v23 + 1744), &v71);
    v30 = *(v23 + 1760) - 1;
    v31 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v23 + 1664, v30);
    *(v31 + 8) = v28;
    *(v31 + 16) = v29;
    v32 = *(a1 + 8);
    LODWORD(v71) = 59;
    v73 = 0;
    v74 = 0;
    v72 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v32 + 1744), &v71);
    v33 = *(v32 + 1760) - 1;
    v34 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v32 + 1664, v33);
    *(v34 + 8) = v21;
    *(v34 + 16) = v30;
    v35 = *(a1 + 8);
    v70.n128_u32[0] = -1077342245;
    LODWORD(v71) = 2;
    v73 = 0;
    v74 = 0;
    v72 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v35 + 218), &v71);
    v71 = v35[220] - 1;
    re::DynamicArray<unsigned long>::add((v35 + 11), &v71);
    re::DynamicArray<float>::add((v35 + 51), &v70);
    v36 = *(v35[15] + 8 * v35[13] - 8);
    LODWORD(v71) = 63;
    v73 = 0;
    v74 = 0;
    v72 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v35 + 213), &v71);
    v37 = v35[215] - 1;
    v38 = re::DynamicEvaluationRegisterTable::evaluationRegister<unsigned int>((v35 + 208), v37);
    *(v38 + 8) = v33;
    *(v38 + 16) = v36;
    v39 = *(a1 + 8);
    v70.n128_u32[0] = 1070141403;
    LODWORD(v71) = 2;
    v73 = 0;
    v74 = 0;
    v72 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v39 + 218), &v71);
    v71 = v39[220] - 1;
    re::DynamicArray<unsigned long>::add((v39 + 11), &v71);
    re::DynamicArray<float>::add((v39 + 51), &v70);
    v40 = *(v39[15] + 8 * v39[13] - 8);
    LODWORD(v71) = 61;
    v73 = 0;
    v74 = 0;
    v72 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v39 + 213), &v71);
    v41 = v39[215] - 1;
    v42 = re::DynamicEvaluationRegisterTable::evaluationRegister<unsigned int>((v39 + 208), v41);
    *(v42 + 8) = v33;
    *(v42 + 16) = v40;
    v43 = *(a1 + 8);
    v70.n128_u32[0] = 1078530011;
    LODWORD(v71) = 2;
    v73 = 0;
    v74 = 0;
    v72 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v43 + 218), &v71);
    v71 = v43[220] - 1;
    re::DynamicArray<unsigned long>::add((v43 + 11), &v71);
    re::DynamicArray<float>::add((v43 + 51), &v70);
    v44 = *(v43[15] + 8 * v43[13] - 8);
    v45 = *(a1 + 8);
    LODWORD(v71) = 49;
    v73 = 0;
    v74 = 0;
    v72 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v45 + 1744), &v71);
    v46 = *(v45 + 1760) - 1;
    v47 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v45 + 1664, v46);
    *(v47 + 8) = v33;
    *(v47 + 16) = v44;
    v48 = *(a1 + 8);
    LODWORD(v71) = 50;
    v73 = 0;
    v74 = 0;
    v72 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v48 + 1744), &v71);
    v49 = *(v48 + 1760) - 1;
    v50 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v48 + 1664, v49);
    *(v50 + 8) = v33;
    *(v50 + 16) = v44;
    v51 = *(a1 + 8);
    LODWORD(v71) = 60;
    v73 = 0;
    v74 = 0;
    v72 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v51 + 1744), &v71);
    v52 = *(v51 + 1760) - 1;
    v53 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v51 + 1664, v52);
    v53[1] = v37;
    v53[2] = v46;
    v53[3] = v33;
    v54 = *(a1 + 8);
    LODWORD(v71) = 60;
    v73 = 0;
    v74 = 0;
    v72 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v54 + 1744), &v71);
    v55 = *(v54 + 1760) - 1;
    v56 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v54 + 1664, v55);
    v56[1] = v41;
    v56[2] = v49;
    v56[3] = v52;
    if (a5)
    {
      v58 = *a4;
      v59 = *(a1 + 8);
      v70.n128_u32[0] = 0x40000000;
      LODWORD(v71) = 2;
      v73 = 0;
      v74 = 0;
      v72 = 0;
      re::DynamicArray<re::EvaluationRegister>::add((v59 + 218), &v71);
      v71 = v59[220] - 1;
      re::DynamicArray<unsigned long>::add((v59 + 11), &v71);
      re::DynamicArray<float>::add((v59 + 51), &v70);
      v60 = *(v59[15] + 8 * v59[13] - 8);
      LODWORD(v71) = 51;
      v73 = 0;
      v74 = 0;
      v72 = 0;
      re::DynamicArray<re::EvaluationRegister>::add((v59 + 218), &v71);
      v61 = v59[220] - 1;
      v62 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>((v59 + 208), v61);
      *(v62 + 8) = v55;
      *(v62 + 16) = v60;
      *(v58 + 96) = 2;
      *(v58 + 176) = v61;
      return 1;
    }
  }

  re::internal::assertLog(6, v57, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v65, v67);
  __break(1u);
  return result;
}

uint64_t re::ConstructQuaternionCompile(uint64_t a1, __n128 **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v26) = 7;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 243), &v26);
    v26 = v10[245] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 36), &v26);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 76), v9 + 7);
    v11 = (v10[40] + 8 * v10[38] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v26) = 2;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 218), &v26);
    v26 = v14[220] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 11), &v26);
    re::DynamicArray<float>::add((v14 + 51), &v13[7]);
    v15 = (v14[15] + 8 * v14[13] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v26) = 45;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1864), &v26);
  v17 = *(v8 + 1880) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::GetVector3ComponentCompile(uint64_t a1, __n128 **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v26) = 7;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 243), &v26);
    v26 = v10[245] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 36), &v26);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 76), v9 + 7);
    v11 = (v10[40] + 8 * v10[38] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v26) = 7;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 243), &v26);
    v26 = v14[245] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 36), &v26);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 76), v13 + 7);
    v15 = (v14[40] + 8 * v14[38] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v26) = 22;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1744), &v26);
  v17 = *(v8 + 1760) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::ConstructVector3Compile(uint64_t a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v24, v28);
    __break(1u);
    goto LABEL_16;
  }

  if (!a3)
  {
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v25, v29);
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v26, v30);
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v27, v31);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v32) = 2;
    v34 = 0;
    v35 = 0;
    v33 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 218), &v32);
    v32 = v10[220] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 11), &v32);
    re::DynamicArray<float>::add((v10 + 51), (v9 + 112));
    v11 = (v10[15] + 8 * v10[13] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_17;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v32) = 2;
    v34 = 0;
    v35 = 0;
    v33 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 218), &v32);
    v32 = v14[220] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 11), &v32);
    re::DynamicArray<float>::add((v14 + 51), (v13 + 112));
    v15 = (v14[15] + 8 * v14[13] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  if (a3 <= 2)
  {
    goto LABEL_18;
  }

  v16 = *v15;
  v17 = a2[2];
  if (*(v17 + 96) == 1)
  {
    v18 = *(v17 + 16);
    LODWORD(v32) = 2;
    v34 = 0;
    v35 = 0;
    v33 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v18 + 218), &v32);
    v32 = v18[220] - 1;
    re::DynamicArray<unsigned long>::add((v18 + 11), &v32);
    re::DynamicArray<float>::add((v18 + 51), (v17 + 112));
    v19 = (v18[15] + 8 * v18[13] - 8);
  }

  else
  {
    v19 = (v17 + 176);
  }

  v20 = *v19;
  LODWORD(v32) = 47;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1944), &v32);
  v21 = *(v8 + 1960) - 1;
  v22 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v8 + 1664, v21);
  v22[1] = v12;
  v22[2] = v16;
  v22[3] = v20;
  *(v7 + 96) = 2;
  *(v7 + 176) = v21;
  return 1;
}

uint64_t re::GetVector2ComponentCompile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = v9[2];
    LODWORD(v26) = 6;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 238), &v26);
    v26 = v10[240] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 31), &v26);
    re::DynamicArray<unsigned long>::add((v10 + 71), v9 + 14);
    v11 = (v10[35] + 8 * v10[33] - 8);
  }

  else
  {
    v11 = v9 + 22;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v26) = 6;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 238), &v26);
    v26 = v14[240] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 31), &v26);
    re::DynamicArray<unsigned long>::add((v14 + 71), (v13 + 112));
    v15 = (v14[35] + 8 * v14[33] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  v16 = *v15;
  LODWORD(v26) = 23;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1744), &v26);
  v17 = *(v8 + 1760) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::ConstructVector2Compile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v26) = 2;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 218), &v26);
    v26 = v10[220] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 11), &v26);
    re::DynamicArray<float>::add((v10 + 51), (v9 + 112));
    v11 = (v10[15] + 8 * v10[13] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v26) = 2;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 218), &v26);
    v26 = v14[220] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 11), &v26);
    re::DynamicArray<float>::add((v14 + 51), (v13 + 112));
    v15 = (v14[15] + 8 * v14[13] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  v16 = *v15;
  LODWORD(v26) = 48;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1904), &v26);
  v17 = *(v8 + 1920) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector2<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::ConvertIntrinsicEulerToQuaternionCompile(uint64_t a1, __n128 **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v26) = 7;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 243), &v26);
    v26 = v10[245] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 36), &v26);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 76), v9 + 7);
    v11 = (v10[40] + 8 * v10[38] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v26) = 1;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 213), &v26);
    v26 = v14[215] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 6), &v26);
    re::DynamicArray<int>::add((v14 + 46), &v13[7]);
    v15 = (v14[10] + 8 * v14[8] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v26) = 13;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1864), &v26);
  v17 = *(v8 + 1880) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::SlerpCompile(uint64_t a1, __n128 **a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v24, v28);
    __break(1u);
    goto LABEL_16;
  }

  if (!a3)
  {
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v25, v29);
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v26, v30);
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v27, v31);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v32) = 5;
    v34 = 0;
    v35 = 0;
    v33 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 233), &v32);
    v32 = v10[235] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 26), &v32);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 66), v9 + 7);
    v11 = (v10[30] + 8 * v10[28] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_17;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v32) = 5;
    v34 = 0;
    v35 = 0;
    v33 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 233), &v32);
    v32 = v14[235] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 26), &v32);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 66), v13 + 7);
    v15 = (v14[30] + 8 * v14[28] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  if (a3 <= 2)
  {
    goto LABEL_18;
  }

  v16 = v15->n128_u64[0];
  v17 = a2[2];
  if (v17[6].n128_u8[0] == 1)
  {
    v18 = v17[1].n128_u64[0];
    LODWORD(v32) = 2;
    v34 = 0;
    v35 = 0;
    v33 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v18 + 218), &v32);
    v32 = v18[220] - 1;
    re::DynamicArray<unsigned long>::add((v18 + 11), &v32);
    re::DynamicArray<float>::add((v18 + 51), &v17[7]);
    v19 = (v18[15] + 8 * v18[13] - 8);
  }

  else
  {
    v19 = v17 + 11;
  }

  v20 = v19->n128_u64[0];
  LODWORD(v32) = 12;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1864), &v32);
  v21 = *(v8 + 1880) - 1;
  v22 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>(v8 + 1664, v21);
  v22[1] = v12;
  v22[2] = v16;
  v22[3] = v20;
  *(v7 + 96) = 2;
  *(v7 + 176) = v21;
  return 1;
}

uint64_t re::LerpVector3Compile(uint64_t a1, __n128 **a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v24, v28);
    __break(1u);
    goto LABEL_16;
  }

  if (!a3)
  {
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v25, v29);
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v26, v30);
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v27, v31);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v32) = 7;
    v34 = 0;
    v35 = 0;
    v33 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 243), &v32);
    v32 = v10[245] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 36), &v32);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 76), v9 + 7);
    v11 = (v10[40] + 8 * v10[38] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_17;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v32) = 7;
    v34 = 0;
    v35 = 0;
    v33 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 243), &v32);
    v32 = v14[245] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 36), &v32);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 76), v13 + 7);
    v15 = (v14[40] + 8 * v14[38] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  if (a3 <= 2)
  {
    goto LABEL_18;
  }

  v16 = v15->n128_u64[0];
  v17 = a2[2];
  if (v17[6].n128_u8[0] == 1)
  {
    v18 = v17[1].n128_u64[0];
    LODWORD(v32) = 2;
    v34 = 0;
    v35 = 0;
    v33 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v18 + 218), &v32);
    v32 = v18[220] - 1;
    re::DynamicArray<unsigned long>::add((v18 + 11), &v32);
    re::DynamicArray<float>::add((v18 + 51), &v17[7]);
    v19 = (v18[15] + 8 * v18[13] - 8);
  }

  else
  {
    v19 = v17 + 11;
  }

  v20 = v19->n128_u64[0];
  LODWORD(v32) = 11;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1944), &v32);
  v21 = *(v8 + 1960) - 1;
  v22 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v8 + 1664, v21);
  v22[1] = v12;
  v22[2] = v16;
  v22[3] = v20;
  *(v7 + 96) = 2;
  *(v7 + 176) = v21;
  return 1;
}

uint64_t re::LerpFloatCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = *(a1 + 8);
  v44 = 1065353216;
  LODWORD(v45) = 2;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v10 + 218), &v45);
  v45 = v10[220] - 1;
  re::DynamicArray<unsigned long>::add((v10 + 11), &v45);
  *&v12 = re::DynamicArray<float>::add((v10 + 51), &v44);
  if (a3 <= 2)
  {
    re::internal::assertLog(6, v11, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, a3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v40, v42);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, v21, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v41, v43);
    __break(1u);
    return result;
  }

  v13 = *(v10[15] + 8 * v10[13] - 8);
  v14 = a2[2];
  if (*(v14 + 96) == 1)
  {
    v15 = *(v14 + 16);
    LODWORD(v45) = 2;
    v47 = 0;
    v48 = 0;
    v46 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v15 + 218), &v45);
    v45 = v15[220] - 1;
    re::DynamicArray<unsigned long>::add((v15 + 11), &v45);
    re::DynamicArray<float>::add((v15 + 51), (v14 + 112));
    v16 = (v15[15] + 8 * v15[13] - 8);
  }

  else
  {
    v16 = (v14 + 176);
  }

  v17 = *v16;
  v18 = *(a1 + 8);
  LODWORD(v45) = 50;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v18 + 1744), &v45);
  v19 = *(v18 + 1760) - 1;
  v20 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v18 + 1664, v19);
  *(v20 + 8) = v13;
  *(v20 + 16) = v17;
  if (!a5)
  {
    goto LABEL_14;
  }

  v22 = *a4;
  v23 = *(a1 + 8);
  v24 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v25 = *(v24 + 16);
    LODWORD(v45) = 2;
    v47 = 0;
    v48 = 0;
    v46 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v25 + 218), &v45);
    v45 = v25[220] - 1;
    re::DynamicArray<unsigned long>::add((v25 + 11), &v45);
    re::DynamicArray<float>::add((v25 + 51), (v24 + 112));
    v26 = (v25[15] + 8 * v25[13] - 8);
  }

  else
  {
    v26 = (v24 + 176);
  }

  v27 = *v26;
  LODWORD(v45) = 51;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v23 + 1744), &v45);
  v28 = *(v23 + 1760) - 1;
  v29 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v23 + 1664, v28);
  *(v29 + 8) = v19;
  *(v29 + 16) = v27;
  v30 = *(a1 + 8);
  v31 = a2[1];
  if (*(v31 + 96) == 1)
  {
    v32 = *(v31 + 16);
    LODWORD(v45) = 2;
    v47 = 0;
    v48 = 0;
    v46 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v32 + 218), &v45);
    v45 = v32[220] - 1;
    re::DynamicArray<unsigned long>::add((v32 + 11), &v45);
    re::DynamicArray<float>::add((v32 + 51), (v31 + 112));
    v33 = (v32[15] + 8 * v32[13] - 8);
  }

  else
  {
    v33 = (v31 + 176);
  }

  v34 = *v33;
  LODWORD(v45) = 51;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v30 + 1744), &v45);
  v35 = *(v30 + 1760) - 1;
  v36 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v30 + 1664, v35);
  *(v36 + 8) = v17;
  *(v36 + 16) = v34;
  LODWORD(v45) = 49;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v23 + 1744), &v45);
  v37 = *(v23 + 1760) - 1;
  v38 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v23 + 1664, v37);
  *(v38 + 8) = v28;
  *(v38 + 16) = v35;
  *(v22 + 96) = 2;
  *(v22 + 176) = v37;
  return 1;
}

uint64_t re::LerpSRTCompile(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v26, v30);
    __break(1u);
    goto LABEL_22;
  }

  v9 = *(a1 + 8);
  if (a3 == 1)
  {
LABEL_22:
    re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v27, v31);
    __break(1u);
    goto LABEL_23;
  }

  if (a3 <= 2)
  {
LABEL_23:
    re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v28, v32);
    __break(1u);
LABEL_24:
    re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v29, v33);
    __break(1u);
    return result;
  }

  v12 = *(a2 + 16);
  if (*(v12 + 96) == 1)
  {
    v13 = *(v12 + 16);
    LODWORD(v34) = 2;
    v36 = 0;
    v37 = 0;
    v35 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v13 + 218), &v34);
    v34 = v13[220] - 1;
    re::DynamicArray<unsigned long>::add((v13 + 11), &v34);
    re::DynamicArray<float>::add((v13 + 51), (v12 + 112));
    v14 = (v13[15] + 8 * v13[13] - 8);
  }

  else
  {
    v14 = (v12 + 176);
  }

  re::EvaluationTree::lerp(v9, &v40, v39, *v14, v42);
  if (!a5)
  {
    goto LABEL_24;
  }

  v16 = *a4;
  v40 = "scale";
  v41 = 5;
  re::RigDataValue::attributeValue(v16, &v40, &v34);
  v17 = v35;
  v18 = v42[0];
  *(v35 + 96) = 2;
  *(v17 + 176) = v18;
  if (v34 & 1) == 0 && v37 && (v38)
  {
    (*(*v37 + 40))();
  }

  v19 = *a4;
  v40 = "rotation";
  v41 = 8;
  re::RigDataValue::attributeValue(v19, &v40, &v34);
  v20 = v35;
  v21 = v42[1];
  *(v35 + 96) = 2;
  *(v20 + 176) = v21;
  if (v34 & 1) == 0 && v37 && (v38)
  {
    (*(*v37 + 40))();
  }

  v22 = *a4;
  v40 = "translation";
  v41 = 11;
  re::RigDataValue::attributeValue(v22, &v40, &v34);
  v23 = v35;
  v24 = v42[2];
  *(v35 + 96) = 2;
  *(v23 + 176) = v24;
  if (v34 & 1) == 0 && v37 && (v38)
  {
    (*(*v37 + 40))();
  }

  return 1;
}

void re::anonymous namespace::rigDataValueToSRT(re::_anonymous_namespace_ *this, const re::RigDataValue *a2)
{
  v26[0] = "scale";
  v26[1] = 5;
  re::RigDataValue::attributeValue(a2, v26, v27);
  v4 = v28;
  if (v28[6].n128_u8[0] == 1)
  {
    v5 = v28[1].n128_u64[0];
    LODWORD(v21) = 7;
    v23 = 0;
    v24 = 0;
    v22 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v5 + 243), &v21);
    v21 = v5[245] - 1;
    re::DynamicArray<unsigned long>::add((v5 + 36), &v21);
    re::DynamicArray<re::Vector3<float>>::add((v5 + 76), v4 + 7);
    v6 = (v5[40] + 8 * v5[38] - 8);
  }

  else
  {
    v6 = v28 + 11;
  }

  *this = v6->n128_u64[0];
  v20[0] = "rotation";
  v20[1] = 8;
  re::RigDataValue::attributeValue(a2, v20, &v21);
  v7 = v22;
  if (v22[6].n128_u8[0] == 1)
  {
    v8 = v22[1].n128_u64[0];
    LODWORD(v15) = 5;
    v17 = 0;
    v18 = 0;
    v16 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 233), &v15);
    v15 = v8[235] - 1;
    re::DynamicArray<unsigned long>::add((v8 + 26), &v15);
    re::DynamicArray<re::Vector3<float>>::add((v8 + 66), v7 + 7);
    v9 = (v8[30] + 8 * v8[28] - 8);
  }

  else
  {
    v9 = v22 + 11;
  }

  *(this + 1) = v9->n128_u64[0];
  v14[0] = "translation";
  v14[1] = 11;
  re::RigDataValue::attributeValue(a2, v14, &v15);
  v11 = v16;
  if (v16[6].n128_u8[0] == 1)
  {
    v12 = v16[1].n128_u64[0];
    LODWORD(v32[0]) = 7;
    memset(&v32[1], 0, 24);
    re::DynamicArray<re::EvaluationRegister>::add((v12 + 243), v32);
    v32[0] = v12[245] - 1;
    re::DynamicArray<unsigned long>::add((v12 + 36), v32);
    v10 = re::DynamicArray<re::Vector3<float>>::add((v12 + 76), v11 + 7);
    v13 = (v12[40] + 8 * v12[38] - 8);
  }

  else
  {
    v13 = v16 + 11;
  }

  *(this + 2) = v13->n128_u64[0];
  if (v15 & 1) == 0 && v18 && (v19)
  {
    (*(*v18 + 40))(v10);
  }

  if (v21 & 1) == 0 && v24 && (v25)
  {
    (*(*v24 + 40))(v10);
  }

  if (v27[0] & 1) == 0 && v29 && (v30)
  {
    (*(*v29 + 40))(v29, v31, v10);
  }
}

uint64_t re::ComponentLerpVector3Compile(uint64_t a1, __n128 **a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v24, v28);
    __break(1u);
    goto LABEL_16;
  }

  if (!a3)
  {
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v25, v29);
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v26, v30);
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v27, v31);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v32) = 7;
    v34 = 0;
    v35 = 0;
    v33 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 243), &v32);
    v32 = v10[245] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 36), &v32);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 76), v9 + 7);
    v11 = (v10[40] + 8 * v10[38] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_17;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v32) = 7;
    v34 = 0;
    v35 = 0;
    v33 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 243), &v32);
    v32 = v14[245] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 36), &v32);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 76), v13 + 7);
    v15 = (v14[40] + 8 * v14[38] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  if (a3 <= 2)
  {
    goto LABEL_18;
  }

  v16 = v15->n128_u64[0];
  v17 = a2[2];
  if (v17[6].n128_u8[0] == 1)
  {
    v18 = v17[1].n128_u64[0];
    LODWORD(v32) = 7;
    v34 = 0;
    v35 = 0;
    v33 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v18 + 243), &v32);
    v32 = v18[245] - 1;
    re::DynamicArray<unsigned long>::add((v18 + 36), &v32);
    re::DynamicArray<re::Vector3<float>>::add((v18 + 76), v17 + 7);
    v19 = (v18[40] + 8 * v18[38] - 8);
  }

  else
  {
    v19 = v17 + 11;
  }

  v20 = v19->n128_u64[0];
  LODWORD(v32) = 10;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1944), &v32);
  v21 = *(v8 + 1960) - 1;
  v22 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v8 + 1664, v21);
  v22[1] = v12;
  v22[2] = v16;
  v22[3] = v20;
  *(v7 + 96) = 2;
  *(v7 + 176) = v21;
  return 1;
}

uint64_t re::CrossVector3Compile(uint64_t a1, __n128 **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v26) = 7;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 243), &v26);
    v26 = v10[245] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 36), &v26);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 76), v9 + 7);
    v11 = (v10[40] + 8 * v10[38] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v26) = 7;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 243), &v26);
    v26 = v14[245] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 36), &v26);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 76), v13 + 7);
    v15 = (v14[40] + 8 * v14[38] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v26) = 15;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1944), &v26);
  v17 = *(v8 + 1960) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::DotVector3Compile(uint64_t a1, __n128 **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v26) = 7;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 243), &v26);
    v26 = v10[245] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 36), &v26);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 76), v9 + 7);
    v11 = (v10[40] + 8 * v10[38] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v26) = 7;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 243), &v26);
    v26 = v14[245] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 36), &v26);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 76), v13 + 7);
    v15 = (v14[40] + 8 * v14[38] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v26) = 22;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1744), &v26);
  v17 = *(v8 + 1760) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::DotVector2Compile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = v9[2];
    LODWORD(v26) = 6;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 238), &v26);
    v26 = v10[240] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 31), &v26);
    re::DynamicArray<unsigned long>::add((v10 + 71), v9 + 14);
    v11 = (v10[35] + 8 * v10[33] - 8);
  }

  else
  {
    v11 = v9 + 22;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v26) = 6;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 238), &v26);
    v26 = v14[240] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 31), &v26);
    re::DynamicArray<unsigned long>::add((v14 + 71), (v13 + 112));
    v15 = (v14[35] + 8 * v14[33] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  v16 = *v15;
  LODWORD(v26) = 23;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1744), &v26);
  v17 = *(v8 + 1760) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::TransformPositionCompile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v26) = 4;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 228), &v26);
    v26 = v10[230] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 21), &v26);
    re::DynamicArray<re::Matrix4x4<float>>::add((v10 + 61), v9 + 112);
    v11 = (v10[25] + 8 * v10[23] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v26) = 7;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 243), &v26);
    v26 = v14[245] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 36), &v26);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 76), v13 + 7);
    v15 = (v14[40] + 8 * v14[38] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v26) = 43;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1944), &v26);
  v17 = *(v8 + 1960) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::TransformDirectionByMatrix4x4Compile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v26) = 4;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 228), &v26);
    v26 = v10[230] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 21), &v26);
    re::DynamicArray<re::Matrix4x4<float>>::add((v10 + 61), v9 + 112);
    v11 = (v10[25] + 8 * v10[23] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v26) = 7;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 243), &v26);
    v26 = v14[245] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 36), &v26);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 76), v13 + 7);
    v15 = (v14[40] + 8 * v14[38] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v26) = 42;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1944), &v26);
  v17 = *(v8 + 1960) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::TransformDirectionByMatrix3x3Compile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v26) = 3;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 223), &v26);
    v26 = v10[225] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 16), &v26);
    re::DynamicArray<re::Matrix3x3<float>>::add((v10 + 56), v9 + 112);
    v11 = (v10[20] + 8 * v10[18] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v26) = 7;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 243), &v26);
    v26 = v14[245] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 36), &v26);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 76), v13 + 7);
    v15 = (v14[40] + 8 * v14[38] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v26) = 41;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1944), &v26);
  v17 = *(v8 + 1960) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::ConstructMatrix4x4Compile(uint64_t a1, __n128 **a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v26);
    __break(1u);
    goto LABEL_16;
  }

  if (!a3)
  {
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v23, v27);
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v24, v28);
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v25, v29);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v30) = 7;
    v32 = 0;
    v33 = 0;
    v31 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 243), &v30);
    v30 = v10[245] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 36), &v30);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 76), v9 + 7);
    v11 = (v10[40] + 8 * v10[38] - 8);
  }

  else
  {
    v11 = &v9[11];
  }

  if (a3 == 1)
  {
    goto LABEL_17;
  }

  v12 = *v11;
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v30) = 5;
    v32 = 0;
    v33 = 0;
    v31 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 233), &v30);
    v30 = v14[235] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 26), &v30);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 66), v13 + 7);
    v15 = (v14[30] + 8 * v14[28] - 8);
  }

  else
  {
    v15 = &v13[11];
  }

  if (a3 <= 2)
  {
    goto LABEL_18;
  }

  v16 = *v15;
  v17 = a2[2];
  if (v17[6].n128_u8[0] == 1)
  {
    v18 = v17[1].n128_u64[0];
    LODWORD(v30) = 7;
    v32 = 0;
    v33 = 0;
    v31 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v18 + 243), &v30);
    v30 = v18[245] - 1;
    re::DynamicArray<unsigned long>::add((v18 + 36), &v30);
    re::DynamicArray<re::Vector3<float>>::add((v18 + 76), v17 + 7);
    v19 = (v18[40] + 8 * v18[38] - 8);
  }

  else
  {
    v19 = &v17[11];
  }

  v20 = re::EvaluationTree::constructMatrix4x4(v8, v12, v16, *v19);
  *(v7 + 96) = 2;
  *(v7 + 176) = v20;
  return 1;
}

uint64_t re::ConstructMatrix4x4FromMatrix3x3Compile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v26) = 3;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 223), &v26);
    v26 = v10[225] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 16), &v26);
    re::DynamicArray<re::Matrix3x3<float>>::add((v10 + 56), v9 + 112);
    v11 = (v10[20] + 8 * v10[18] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v26) = 7;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 243), &v26);
    v26 = v14[245] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 36), &v26);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 76), v13 + 7);
    v15 = (v14[40] + 8 * v14[38] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v26) = 40;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1824), &v26);
  v17 = *(v8 + 1840) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::ConstructMatrix4x4FromSRTCompile(uint64_t a1, const re::RigDataValue **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a5)
  {
    if (a3)
    {
      v5 = *a4;
      v6 = *(a1 + 8);
      v7 = re::EvaluationTree::constructMatrix4x4(v6, v13[0], v13[1], v13[2]);
      *(v5 + 96) = 2;
      *(v5 + 176) = v7;
      return 1;
    }
  }

  else
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v9, v11);
    __break(1u);
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v10, v12);
  __break(1u);
  return result;
}

uint64_t re::ConstructSRTFromMatrix4x4Compile(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v25, v27);
    __break(1u);
LABEL_20:
    re::internal::assertLog(6, v16, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v26, v28);
    __break(1u);
    return result;
  }

  v8 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v9 = *(v8 + 16);
    LODWORD(v31) = 4;
    v33 = 0;
    v34 = 0;
    v32 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v9 + 228), &v31);
    v31 = v9[230] - 1;
    re::DynamicArray<unsigned long>::add((v9 + 21), &v31);
    re::DynamicArray<re::Matrix4x4<float>>::add((v9 + 61), v8 + 112);
    v10 = (v9[25] + 8 * v9[23] - 8);
  }

  else
  {
    v10 = (v8 + 176);
  }

  v11 = *v10;
  v12 = *(a1 + 8);
  LODWORD(v31) = 37;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v12 + 1944), &v31);
  v13 = *(v12 + 1960) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v12 + 1664, v13) + 8) = v11;
  Rotation = re::EvaluationTree::extractRotation(*(a1 + 8), v11);
  Scale = re::EvaluationTree::extractScale(*(a1 + 8), v11);
  if (!a5)
  {
    goto LABEL_20;
  }

  v17 = Scale;
  v18 = *a4;
  v29 = "scale";
  v30 = 5;
  re::RigDataValue::attributeValue(v18, &v29, &v31);
  v19 = v32;
  *(v32 + 96) = 2;
  *(v19 + 176) = v17;
  if (v31 & 1) == 0 && v34 && (v35)
  {
    (*(*v34 + 40))();
  }

  v20 = *a4;
  v29 = "rotation";
  v30 = 8;
  re::RigDataValue::attributeValue(v20, &v29, &v31);
  v21 = v32;
  *(v32 + 96) = 2;
  *(v21 + 176) = Rotation;
  if (v31 & 1) == 0 && v34 && (v35)
  {
    (*(*v34 + 40))();
  }

  v22 = *a4;
  v29 = "translation";
  v30 = 11;
  re::RigDataValue::attributeValue(v22, &v29, &v31);
  v23 = v32;
  *(v32 + 96) = 2;
  *(v23 + 176) = v13;
  if (v31 & 1) == 0 && v34 && (v35)
  {
    (*(*v34 + 40))();
  }

  return 1;
}

uint64_t re::ConstructMatrix3x3Compile(uint64_t a1, __n128 **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v26) = 7;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 243), &v26);
    v26 = v10[245] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 36), &v26);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 76), v9 + 7);
    v11 = (v10[40] + 8 * v10[38] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v26) = 5;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 233), &v26);
    v26 = v14[235] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 26), &v26);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 66), v13 + 7);
    v15 = (v14[30] + 8 * v14[28] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v26) = 39;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1784), &v26);
  v17 = *(v8 + 1800) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::ConstructMatrix3x3FromVector3sCompile(uint64_t a1, __n128 **a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v24, v28);
    __break(1u);
    goto LABEL_16;
  }

  if (!a3)
  {
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v25, v29);
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v26, v30);
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v27, v31);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v32) = 7;
    v34 = 0;
    v35 = 0;
    v33 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 243), &v32);
    v32 = v10[245] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 36), &v32);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 76), v9 + 7);
    v11 = (v10[40] + 8 * v10[38] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_17;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v32) = 7;
    v34 = 0;
    v35 = 0;
    v33 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 243), &v32);
    v32 = v14[245] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 36), &v32);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 76), v13 + 7);
    v15 = (v14[40] + 8 * v14[38] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  if (a3 <= 2)
  {
    goto LABEL_18;
  }

  v16 = v15->n128_u64[0];
  v17 = a2[2];
  if (v17[6].n128_u8[0] == 1)
  {
    v18 = v17[1].n128_u64[0];
    LODWORD(v32) = 7;
    v34 = 0;
    v35 = 0;
    v33 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v18 + 243), &v32);
    v32 = v18[245] - 1;
    re::DynamicArray<unsigned long>::add((v18 + 36), &v32);
    re::DynamicArray<re::Vector3<float>>::add((v18 + 76), v17 + 7);
    v19 = (v18[40] + 8 * v18[38] - 8);
  }

  else
  {
    v19 = v17 + 11;
  }

  v20 = v19->n128_u64[0];
  LODWORD(v32) = 38;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1784), &v32);
  v21 = *(v8 + 1800) - 1;
  v22 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>(v8 + 1664, v21);
  v22[1] = v12;
  v22[2] = v16;
  v22[3] = v20;
  *(v7 + 96) = 2;
  *(v7 + 176) = v21;
  return 1;
}

uint64_t re::ExtractTranslationMatrix4x4Compile(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v15);
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v16);
    __break(1u);
    return result;
  }

  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v8 = *(v7 + 16);
    LODWORD(v17) = 4;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 228), &v17);
    v17 = v8[230] - 1;
    re::DynamicArray<unsigned long>::add((v8 + 21), &v17);
    re::DynamicArray<re::Matrix4x4<float>>::add((v8 + 61), v7 + 112);
    v9 = (v8[25] + 8 * v8[23] - 8);
  }

  else
  {
    v9 = (v7 + 176);
  }

  v10 = *v9;
  LODWORD(v17) = 37;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v6 + 1944), &v17);
  v11 = *(v6 + 1960) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v6 + 1664, v11) + 8) = v10;
  *(v5 + 96) = 2;
  *(v5 + 176) = v11;
  return 1;
}

uint64_t re::ExtractScaleMatrix4x4Compile(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v14);
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v15);
    __break(1u);
    return result;
  }

  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v8 = *(v7 + 16);
    LODWORD(v16[0]) = 4;
    memset(&v16[1], 0, 24);
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 228), v16);
    v16[0] = v8[230] - 1;
    re::DynamicArray<unsigned long>::add((v8 + 21), v16);
    re::DynamicArray<re::Matrix4x4<float>>::add((v8 + 61), v7 + 112);
    v9 = (v8[25] + 8 * v8[23] - 8);
  }

  else
  {
    v9 = (v7 + 176);
  }

  Scale = re::EvaluationTree::extractScale(v6, *v9);
  *(v5 + 96) = 2;
  *(v5 + 176) = Scale;
  return 1;
}

uint64_t re::ExtractRotationMatrix4x4Compile(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v14);
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v15);
    __break(1u);
    return result;
  }

  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v8 = *(v7 + 16);
    LODWORD(v16[0]) = 4;
    memset(&v16[1], 0, 24);
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 228), v16);
    v16[0] = v8[230] - 1;
    re::DynamicArray<unsigned long>::add((v8 + 21), v16);
    re::DynamicArray<re::Matrix4x4<float>>::add((v8 + 61), v7 + 112);
    v9 = (v8[25] + 8 * v8[23] - 8);
  }

  else
  {
    v9 = (v7 + 176);
  }

  Rotation = re::EvaluationTree::extractRotation(v6, *v9);
  *(v5 + 96) = 2;
  *(v5 + 176) = Rotation;
  return 1;
}

uint64_t re::ExtractRotationMatrix3x3Compile(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v15);
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v16);
    __break(1u);
    return result;
  }

  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v8 = *(v7 + 16);
    LODWORD(v17) = 3;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 223), &v17);
    v17 = v8[225] - 1;
    re::DynamicArray<unsigned long>::add((v8 + 16), &v17);
    re::DynamicArray<re::Matrix3x3<float>>::add((v8 + 56), v7 + 112);
    v9 = (v8[20] + 8 * v8[18] - 8);
  }

  else
  {
    v9 = (v7 + 176);
  }

  v10 = *v9;
  LODWORD(v17) = 35;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v6 + 1864), &v17);
  v11 = *(v6 + 1880) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>(v6 + 1664, v11) + 8) = v10;
  *(v5 + 96) = 2;
  *(v5 + 176) = v11;
  return 1;
}

uint64_t re::ExtractMinorMatrix4x4Compile(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v15);
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v16);
    __break(1u);
    return result;
  }

  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v8 = *(v7 + 16);
    LODWORD(v17) = 4;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 228), &v17);
    v17 = v8[230] - 1;
    re::DynamicArray<unsigned long>::add((v8 + 21), &v17);
    re::DynamicArray<re::Matrix4x4<float>>::add((v8 + 61), v7 + 112);
    v9 = (v8[25] + 8 * v8[23] - 8);
  }

  else
  {
    v9 = (v7 + 176);
  }

  v10 = *v9;
  LODWORD(v17) = 34;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v6 + 1784), &v17);
  v11 = *(v6 + 1800) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>(v6 + 1664, v11) + 8) = v10;
  *(v5 + 96) = 2;
  *(v5 + 176) = v11;
  return 1;
}

uint64_t re::TransposeMatrix3x3Compile(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v15);
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v16);
    __break(1u);
    return result;
  }

  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v8 = *(v7 + 16);
    LODWORD(v17) = 3;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 223), &v17);
    v17 = v8[225] - 1;
    re::DynamicArray<unsigned long>::add((v8 + 16), &v17);
    re::DynamicArray<re::Matrix3x3<float>>::add((v8 + 56), v7 + 112);
    v9 = (v8[20] + 8 * v8[18] - 8);
  }

  else
  {
    v9 = (v7 + 176);
  }

  v10 = *v9;
  LODWORD(v17) = 33;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v6 + 1784), &v17);
  v11 = *(v6 + 1800) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>(v6 + 1664, v11) + 8) = v10;
  *(v5 + 96) = 2;
  *(v5 + 176) = v11;
  return 1;
}

uint64_t re::PassthroughRigHierarchyCompile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    if (a3)
    {
      v5 = *(*a2 + 184);
      v6 = *(*a4 + 184);
      v7 = *v5;
      *(v6 + 16) = *(v5 + 2);
      *v6 = v7;
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v6 + 24), v5 + 24);
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v6 + 72), v5 + 72);
      re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v6 + 120, v5 + 15);
      re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v6 + 160, v5 + 20);
      re::DynamicArray<re::StringID>::operator=(v6 + 200, v5 + 25);
      re::DynamicArray<unsigned long>::operator=(v6 + 240, v5 + 30);
      re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v6 + 280, v5 + 35);
      re::DynamicArray<unsigned long>::operator=(v6 + 320, v5 + 40);
      return 1;
    }
  }

  else
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v9, v11);
    __break(1u);
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v10, v12);
  __break(1u);
  return result;
}

uint64_t re::GetBindPoseRigHierarchyCompile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v9, v11);
    __break(1u);
    goto LABEL_17;
  }

  if (!a3)
  {
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v10, v12);
    __break(1u);
    return result;
  }

  v5 = *a4;
  re::RigHierarchy::getBindPoseHierarchy(*(*a2 + 184), a2, &v13);
  v6 = *(v5 + 184);
  v7 = v13;
  *(v6 + 16) = v14;
  *v6 = v7;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v6 + 24), v15);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v6 + 72), v16);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v6 + 120, v17);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v6 + 160, v18);
  re::DynamicArray<re::StringID>::operator=(v6 + 200, v19);
  re::DynamicArray<unsigned long>::operator=(v6 + 240, v20);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v6 + 280, v23);
  re::DynamicArray<unsigned long>::operator=(v6 + 320, v26);
  if (v26[0])
  {
    if (v28)
    {
      (*(*v26[0] + 40))();
    }

    v28 = 0;
    memset(v26, 0, sizeof(v26));
    ++v27;
  }

  if (v23[0])
  {
    if (v25)
    {
      (*(*v23[0] + 40))();
    }

    v25 = 0;
    memset(v23, 0, sizeof(v23));
    ++v24;
  }

  if (v20[0])
  {
    if (v22)
    {
      (*(*v20[0] + 40))();
    }

    v22 = 0;
    memset(v20, 0, sizeof(v20));
    ++v21;
  }

  re::DynamicArray<re::StringID>::deinit(v19);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v18);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v17);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v16);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v15);
  return 1;
}

uint64_t re::AddVector3Compile(uint64_t a1, __n128 **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v26) = 7;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 243), &v26);
    v26 = v10[245] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 36), &v26);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 76), v9 + 7);
    v11 = (v10[40] + 8 * v10[38] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v26) = 7;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 243), &v26);
    v26 = v14[245] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 36), &v26);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 76), v13 + 7);
    v15 = (v14[40] + 8 * v14[38] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v26) = 8;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1944), &v26);
  v17 = *(v8 + 1960) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::AddVector2Compile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = v9[2];
    LODWORD(v26) = 6;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 238), &v26);
    v26 = v10[240] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 31), &v26);
    re::DynamicArray<unsigned long>::add((v10 + 71), v9 + 14);
    v11 = (v10[35] + 8 * v10[33] - 8);
  }

  else
  {
    v11 = v9 + 22;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v26) = 6;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 238), &v26);
    v26 = v14[240] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 31), &v26);
    re::DynamicArray<unsigned long>::add((v14 + 71), (v13 + 112));
    v15 = (v14[35] + 8 * v14[33] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  v16 = *v15;
  LODWORD(v26) = 9;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1904), &v26);
  v17 = *(v8 + 1920) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector2<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::AddFloatCompile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v26) = 2;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 218), &v26);
    v26 = v10[220] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 11), &v26);
    re::DynamicArray<float>::add((v10 + 51), (v9 + 112));
    v11 = (v10[15] + 8 * v10[13] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v26) = 2;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 218), &v26);
    v26 = v14[220] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 11), &v26);
    re::DynamicArray<float>::add((v14 + 51), (v13 + 112));
    v15 = (v14[15] + 8 * v14[13] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  v16 = *v15;
  LODWORD(v26) = 49;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1744), &v26);
  v17 = *(v8 + 1760) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::SubtractVector3Compile(uint64_t a1, __n128 **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v26) = 7;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 243), &v26);
    v26 = v10[245] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 36), &v26);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 76), v9 + 7);
    v11 = (v10[40] + 8 * v10[38] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v26) = 7;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 243), &v26);
    v26 = v14[245] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 36), &v26);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 76), v13 + 7);
    v15 = (v14[40] + 8 * v14[38] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v26) = 31;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1944), &v26);
  v17 = *(v8 + 1960) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::SubtractVector2Compile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = v9[2];
    LODWORD(v26) = 6;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 238), &v26);
    v26 = v10[240] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 31), &v26);
    re::DynamicArray<unsigned long>::add((v10 + 71), v9 + 14);
    v11 = (v10[35] + 8 * v10[33] - 8);
  }

  else
  {
    v11 = v9 + 22;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v26) = 6;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 238), &v26);
    v26 = v14[240] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 31), &v26);
    re::DynamicArray<unsigned long>::add((v14 + 71), (v13 + 112));
    v15 = (v14[35] + 8 * v14[33] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  v16 = *v15;
  LODWORD(v26) = 32;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1904), &v26);
  v17 = *(v8 + 1920) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector2<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::SubtractFloatCompile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v26) = 2;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 218), &v26);
    v26 = v10[220] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 11), &v26);
    re::DynamicArray<float>::add((v10 + 51), (v9 + 112));
    v11 = (v10[15] + 8 * v10[13] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v26) = 2;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 218), &v26);
    v26 = v14[220] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 11), &v26);
    re::DynamicArray<float>::add((v14 + 51), (v13 + 112));
    v15 = (v14[15] + 8 * v14[13] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  v16 = *v15;
  LODWORD(v26) = 50;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1744), &v26);
  v17 = *(v8 + 1760) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::DivideQuaternionCompile(uint64_t a1, __n128 **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v26) = 5;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 233), &v26);
    v26 = v10[235] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 26), &v26);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 66), v9 + 7);
    v11 = (v10[30] + 8 * v10[28] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v26) = 5;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 233), &v26);
    v26 = v14[235] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 26), &v26);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 66), v13 + 7);
    v15 = (v14[30] + 8 * v14[28] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v26) = 16;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1864), &v26);
  v17 = *(v8 + 1880) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::DivideFloatCompile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v26) = 2;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 218), &v26);
    v26 = v10[220] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 11), &v26);
    re::DynamicArray<float>::add((v10 + 51), (v9 + 112));
    v11 = (v10[15] + 8 * v10[13] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v26) = 2;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 218), &v26);
    v26 = v14[220] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 11), &v26);
    re::DynamicArray<float>::add((v14 + 51), (v13 + 112));
    v15 = (v14[15] + 8 * v14[13] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  v16 = *v15;
  LODWORD(v26) = 52;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1744), &v26);
  v17 = *(v8 + 1760) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::MultiplyFloatCompile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v26) = 2;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 218), &v26);
    v26 = v10[220] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 11), &v26);
    re::DynamicArray<float>::add((v10 + 51), (v9 + 112));
    v11 = (v10[15] + 8 * v10[13] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v26) = 2;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 218), &v26);
    v26 = v14[220] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 11), &v26);
    re::DynamicArray<float>::add((v14 + 51), (v13 + 112));
    v15 = (v14[15] + 8 * v14[13] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  v16 = *v15;
  LODWORD(v26) = 51;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1744), &v26);
  v17 = *(v8 + 1760) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::ConjugateQuaternionCompile(uint64_t a1, __n128 **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v15);
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v16);
    __break(1u);
    return result;
  }

  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v8 = v7[1].n128_u64[0];
    LODWORD(v17) = 5;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 233), &v17);
    v17 = v8[235] - 1;
    re::DynamicArray<unsigned long>::add((v8 + 26), &v17);
    re::DynamicArray<re::Vector3<float>>::add((v8 + 66), v7 + 7);
    v9 = (v8[30] + 8 * v8[28] - 8);
  }

  else
  {
    v9 = v7 + 11;
  }

  v10 = v9->n128_u64[0];
  LODWORD(v17) = 18;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v6 + 1864), &v17);
  v11 = *(v6 + 1880) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>(v6 + 1664, v11) + 8) = v10;
  *(v5 + 96) = 2;
  *(v5 + 176) = v11;
  return 1;
}

uint64_t re::InvertQuaternionCompile(uint64_t a1, __n128 **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v15);
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v16);
    __break(1u);
    return result;
  }

  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v8 = v7[1].n128_u64[0];
    LODWORD(v17) = 5;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 233), &v17);
    v17 = v8[235] - 1;
    re::DynamicArray<unsigned long>::add((v8 + 26), &v17);
    re::DynamicArray<re::Vector3<float>>::add((v8 + 66), v7 + 7);
    v9 = (v8[30] + 8 * v8[28] - 8);
  }

  else
  {
    v9 = v7 + 11;
  }

  v10 = v9->n128_u64[0];
  LODWORD(v17) = 21;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v6 + 1864), &v17);
  v11 = *(v6 + 1880) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>(v6 + 1664, v11) + 8) = v10;
  *(v5 + 96) = 2;
  *(v5 + 176) = v11;
  return 1;
}

uint64_t re::InvertMatrix3x3Compile(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v15);
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v16);
    __break(1u);
    return result;
  }

  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v8 = *(v7 + 16);
    LODWORD(v17) = 3;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 223), &v17);
    v17 = v8[225] - 1;
    re::DynamicArray<unsigned long>::add((v8 + 16), &v17);
    re::DynamicArray<re::Matrix3x3<float>>::add((v8 + 56), v7 + 112);
    v9 = (v8[20] + 8 * v8[18] - 8);
  }

  else
  {
    v9 = (v7 + 176);
  }

  v10 = *v9;
  LODWORD(v17) = 19;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v6 + 1784), &v17);
  v11 = *(v6 + 1800) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>(v6 + 1664, v11) + 8) = v10;
  *(v5 + 96) = 2;
  *(v5 + 176) = v11;
  return 1;
}

uint64_t re::InvertMatrix4x4Compile(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v15);
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v16);
    __break(1u);
    return result;
  }

  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v8 = *(v7 + 16);
    LODWORD(v17) = 4;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 228), &v17);
    v17 = v8[230] - 1;
    re::DynamicArray<unsigned long>::add((v8 + 21), &v17);
    re::DynamicArray<re::Matrix4x4<float>>::add((v8 + 61), v7 + 112);
    v9 = (v8[25] + 8 * v8[23] - 8);
  }

  else
  {
    v9 = (v7 + 176);
  }

  v10 = *v9;
  LODWORD(v17) = 20;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v6 + 1824), &v17);
  v11 = *(v6 + 1840) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>(v6 + 1664, v11) + 8) = v10;
  *(v5 + 96) = 2;
  *(v5 + 176) = v11;
  return 1;
}

uint64_t re::NormalizeVector3Compile(uint64_t a1, __n128 **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v15);
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v16);
    __break(1u);
    return result;
  }

  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v8 = v7[1].n128_u64[0];
    LODWORD(v17) = 7;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 243), &v17);
    v17 = v8[245] - 1;
    re::DynamicArray<unsigned long>::add((v8 + 36), &v17);
    re::DynamicArray<re::Vector3<float>>::add((v8 + 76), v7 + 7);
    v9 = (v8[40] + 8 * v8[38] - 8);
  }

  else
  {
    v9 = v7 + 11;
  }

  v10 = v9->n128_u64[0];
  LODWORD(v17) = 29;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v6 + 1944), &v17);
  v11 = *(v6 + 1960) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v6 + 1664, v11) + 8) = v10;
  *(v5 + 96) = 2;
  *(v5 + 176) = v11;
  return 1;
}

uint64_t re::RotateVector3Compile(uint64_t a1, __n128 **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v26) = 5;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 233), &v26);
    v26 = v10[235] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 26), &v26);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 66), v9 + 7);
    v11 = (v10[30] + 8 * v10[28] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v26) = 7;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 243), &v26);
    v26 = v14[245] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 36), &v26);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 76), v13 + 7);
    v15 = (v14[40] + 8 * v14[38] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v26) = 30;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1944), &v26);
  v17 = *(v8 + 1960) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::MultiplyQuaternionCompile(uint64_t a1, __n128 **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v26) = 5;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 233), &v26);
    v26 = v10[235] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 26), &v26);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 66), v9 + 7);
    v11 = (v10[30] + 8 * v10[28] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v26) = 5;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 233), &v26);
    v26 = v14[235] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 26), &v26);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 66), v13 + 7);
    v15 = (v14[30] + 8 * v14[28] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v26) = 24;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1864), &v26);
  v17 = *(v8 + 1880) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::MultiplyMatrix3x3Compile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v26) = 3;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 223), &v26);
    v26 = v10[225] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 16), &v26);
    re::DynamicArray<re::Matrix3x3<float>>::add((v10 + 56), v9 + 112);
    v11 = (v10[20] + 8 * v10[18] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v26) = 3;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 223), &v26);
    v26 = v14[225] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 16), &v26);
    re::DynamicArray<re::Matrix3x3<float>>::add((v14 + 56), v13 + 112);
    v15 = (v14[20] + 8 * v14[18] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  v16 = *v15;
  LODWORD(v26) = 27;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1784), &v26);
  v17 = *(v8 + 1800) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::MultiplyMatrix4x4Compile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v26) = 4;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 228), &v26);
    v26 = v10[230] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 21), &v26);
    re::DynamicArray<re::Matrix4x4<float>>::add((v10 + 61), v9 + 112);
    v11 = (v10[25] + 8 * v10[23] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v26) = 4;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 228), &v26);
    v26 = v14[230] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 21), &v26);
    re::DynamicArray<re::Matrix4x4<float>>::add((v14 + 61), v13 + 112);
    v15 = (v14[25] + 8 * v14[23] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  v16 = *v15;
  LODWORD(v26) = 28;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1824), &v26);
  v17 = *(v8 + 1840) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::MultiplyVector3Compile(uint64_t a1, __n128 **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v26) = 7;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 243), &v26);
    v26 = v10[245] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 36), &v26);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 76), v9 + 7);
    v11 = (v10[40] + 8 * v10[38] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v26) = 7;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 243), &v26);
    v26 = v14[245] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 36), &v26);
    re::DynamicArray<re::Vector3<float>>::add((v14 + 76), v13 + 7);
    v15 = (v14[40] + 8 * v14[38] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v26) = 25;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1944), &v26);
  v17 = *(v8 + 1960) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::ScaleVector3Compile(uint64_t a1, __n128 **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if ((*a2)[6].n128_u8[0] == 1)
  {
    v10 = v9[1].n128_u64[0];
    LODWORD(v26) = 7;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 243), &v26);
    v26 = v10[245] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 36), &v26);
    re::DynamicArray<re::Vector3<float>>::add((v10 + 76), v9 + 7);
    v11 = (v10[40] + 8 * v10[38] - 8);
  }

  else
  {
    v11 = v9 + 11;
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = v11->n128_u64[0];
  v13 = a2[1];
  if (v13[6].n128_u8[0] == 1)
  {
    v14 = v13[1].n128_u64[0];
    LODWORD(v26) = 2;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 218), &v26);
    v26 = v14[220] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 11), &v26);
    re::DynamicArray<float>::add((v14 + 51), &v13[7]);
    v15 = (v14[15] + 8 * v14[13] - 8);
  }

  else
  {
    v15 = v13 + 11;
  }

  v16 = v15->n128_u64[0];
  LODWORD(v26) = 26;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1944), &v26);
  v17 = *(v8 + 1960) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::ClampCompile(re::Allocator **a1, const re::RigDataValue **a2, unint64_t a3, re::RigDataValue **a4, uint64_t a5)
{
  v32 = 0;
  memset(v28, 0, sizeof(v28));
  v29 = 0;
  memset(v30, 0, sizeof(v30));
  v31 = 0;
  re::RigGraphCallbackBuilder::init(v28, *a1);
  *&v27.var0 = 223945442;
  v27.var1 = "value";
  if (!a3)
  {
    re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v23);
    __break(1u);
LABEL_19:
    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v24);
    __break(1u);
LABEL_20:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v25);
    __break(1u);
LABEL_21:
    re::internal::assertLog(6, v16, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v26);
    __break(1u);
    return result;
  }

  re::RigGraphCallbackBuilder::addInputParam(v28, &v27, *a2);
  if (*&v27.var0)
  {
    if (*&v27.var0)
    {
    }
  }

  *&v27.var0 = 216228;
  v27.var1 = "min";
  if (a3 == 1)
  {
    goto LABEL_19;
  }

  re::RigGraphCallbackBuilder::addInputParam(v28, &v27, a2[1]);
  if (*&v27.var0)
  {
    if (*&v27.var0)
    {
    }
  }

  *&v27.var0 = 215752;
  v27.var1 = "max";
  if (a3 <= 2)
  {
    goto LABEL_20;
  }

  re::RigGraphCallbackBuilder::addInputParam(v28, &v27, a2[2]);
  if (*&v27.var0)
  {
    if (*&v27.var0)
    {
    }
  }

  *&v27.var0 = 0x188223202;
  v27.var1 = "output";
  if (!a5)
  {
    goto LABEL_21;
  }

  re::RigGraphCallbackBuilder::addOutputParam(v28, &v27, *a4);
  if (*&v27.var0)
  {
    if (*&v27.var0)
    {
    }
  }

  re::RigGraphCallbackBuilder::buildCallbackData(v28, a1, re::ClampCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0::__invoke, 0);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v30 + 8);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v28 + 8);
  return 1;
}

uint64_t re::ClampVector3Compile(re::Allocator **a1, const re::RigDataValue **a2, unint64_t a3, re::RigDataValue **a4, uint64_t a5)
{
  v32 = 0;
  memset(v28, 0, sizeof(v28));
  v29 = 0;
  memset(v30, 0, sizeof(v30));
  v31 = 0;
  re::RigGraphCallbackBuilder::init(v28, *a1);
  *&v27.var0 = 223945442;
  v27.var1 = "value";
  if (!a3)
  {
    re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v23);
    __break(1u);
LABEL_19:
    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v24);
    __break(1u);
LABEL_20:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v25);
    __break(1u);
LABEL_21:
    re::internal::assertLog(6, v16, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v26);
    __break(1u);
    return result;
  }

  re::RigGraphCallbackBuilder::addInputParam(v28, &v27, *a2);
  if (*&v27.var0)
  {
    if (*&v27.var0)
    {
    }
  }

  *&v27.var0 = 216228;
  v27.var1 = "min";
  if (a3 == 1)
  {
    goto LABEL_19;
  }

  re::RigGraphCallbackBuilder::addInputParam(v28, &v27, a2[1]);
  if (*&v27.var0)
  {
    if (*&v27.var0)
    {
    }
  }

  *&v27.var0 = 215752;
  v27.var1 = "max";
  if (a3 <= 2)
  {
    goto LABEL_20;
  }

  re::RigGraphCallbackBuilder::addInputParam(v28, &v27, a2[2]);
  if (*&v27.var0)
  {
    if (*&v27.var0)
    {
    }
  }

  *&v27.var0 = 0x188223202;
  v27.var1 = "output";
  if (!a5)
  {
    goto LABEL_21;
  }

  re::RigGraphCallbackBuilder::addOutputParam(v28, &v27, *a4);
  if (*&v27.var0)
  {
    if (*&v27.var0)
    {
    }
  }

  re::RigGraphCallbackBuilder::buildCallbackData(v28, a1, re::ClampVector3Compile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0::__invoke, 0);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v30 + 8);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v28 + 8);
  return 1;
}

uint64_t re::AdditiveBlendSRTCompile(uint64_t a1, const re::RigDataValue **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    goto LABEL_18;
  }

  v9 = *(a1 + 8);
  if (a3 == 1)
  {
LABEL_18:
    re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v23, v26);
    __break(1u);
    goto LABEL_19;
  }

  re::EvaluationTree::additiveBlend(v9, &v28, &v32, v34);
  if (!a5)
  {
LABEL_19:
    re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v24, v27);
    __break(1u);
    return result;
  }

  v12 = *a4;
  v32 = "scale";
  v33 = 5;
  re::RigDataValue::attributeValue(v12, &v32, &v28);
  v13 = v29;
  v14 = v34[0];
  *(v29 + 96) = 2;
  *(v13 + 176) = v14;
  if (v28 & 1) == 0 && v30 && (v31)
  {
    (*(*v30 + 40))();
  }

  v15 = *a4;
  v32 = "rotation";
  v33 = 8;
  re::RigDataValue::attributeValue(v15, &v32, &v28);
  v16 = v29;
  v17 = v34[1];
  *(v29 + 96) = 2;
  *(v16 + 176) = v17;
  if (v28 & 1) == 0 && v30 && (v31)
  {
    (*(*v30 + 40))();
  }

  v18 = *a4;
  v32 = "translation";
  v33 = 11;
  re::RigDataValue::attributeValue(v18, &v32, &v28);
  v19 = v29;
  v20 = v34[2];
  *(v29 + 96) = 2;
  *(v19 + 176) = v20;
  if (v28 & 1) == 0 && v30 && (v31)
  {
    (*(*v30 + 40))();
  }

  return 1;
}

uint64_t re::LocalSpaceJointScaleCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v16);
    __break(1u);
  }

  else
  {
    v7 = *(*a2 + 184);
    v8 = *(a2[1] + 232);
    v18[0] = v8;
    v18[1] = strlen(v8);
    re::RigHierarchy::getLocalSpaceJointScale(v7, v18, v19);
    v10 = v19[0];
    if (v19[0] != 1)
    {
      if (v21)
      {
        if (v22)
        {
          (*(*v21 + 40))();
        }
      }

      return v10;
    }

    if (a5)
    {
      v11 = *a4;
      v12 = v20;
      *(v11 + 96) = 2;
      *(v11 + 176) = v12;
      return v10;
    }
  }

  re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v17);
  __break(1u);
  return result;
}

uint64_t re::LocalSpaceJointRotationCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v16);
    __break(1u);
  }

  else
  {
    v7 = *(*a2 + 184);
    v8 = *(a2[1] + 232);
    v18[0] = v8;
    v18[1] = strlen(v8);
    re::RigHierarchy::getLocalSpaceJointRotation(v7, v18, v19);
    v10 = v19[0];
    if (v19[0] != 1)
    {
      if (v21)
      {
        if (v22)
        {
          (*(*v21 + 40))();
        }
      }

      return v10;
    }

    if (a5)
    {
      v11 = *a4;
      v12 = v20;
      *(v11 + 96) = 2;
      *(v11 + 176) = v12;
      return v10;
    }
  }

  re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v17);
  __break(1u);
  return result;
}

uint64_t re::LocalSpaceJointTranslationCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v16);
    __break(1u);
  }

  else
  {
    v7 = *(*a2 + 184);
    v8 = *(a2[1] + 232);
    v18[0] = v8;
    v18[1] = strlen(v8);
    re::RigHierarchy::getLocalSpaceJointTranslation(v7, v18, v19);
    v10 = v19[0];
    if (v19[0] != 1)
    {
      if (v21)
      {
        if (v22)
        {
          (*(*v21 + 40))();
        }
      }

      return v10;
    }

    if (a5)
    {
      v11 = *a4;
      v12 = v20;
      *(v11 + 96) = 2;
      *(v11 + 176) = v12;
      return v10;
    }
  }

  re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v17);
  __break(1u);
  return result;
}

uint64_t re::LocalSpaceJointTransformCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v16);
    __break(1u);
  }

  else
  {
    v7 = *(*a2 + 184);
    v8 = *(a2[1] + 232);
    v18[0] = v8;
    v18[1] = strlen(v8);
    re::RigHierarchy::getLocalSpaceJointTransform(v7, v19, v18);
    v10 = v19[0];
    if (v19[0] != 1)
    {
      if (v21)
      {
        if (v22)
        {
          (*(*v21 + 40))();
        }
      }

      return v10;
    }

    if (a5)
    {
      v11 = *a4;
      v12 = v20;
      *(v11 + 96) = 2;
      *(v11 + 176) = v12;
      return v10;
    }
  }

  re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v17);
  __break(1u);
  return result;
}

uint64_t re::ModelSpaceJointScaleCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v16);
    __break(1u);
  }

  else
  {
    v7 = *(*a2 + 184);
    v8 = *(a2[1] + 232);
    v18[0] = v8;
    v18[1] = strlen(v8);
    re::RigHierarchy::getModelSpaceJointScale(v7, v18, v19);
    v10 = v19[0];
    if (v19[0] != 1)
    {
      if (v21)
      {
        if (v22)
        {
          (*(*v21 + 40))();
        }
      }

      return v10;
    }

    if (a5)
    {
      v11 = *a4;
      v12 = v20;
      *(v11 + 96) = 2;
      *(v11 + 176) = v12;
      return v10;
    }
  }

  re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v17);
  __break(1u);
  return result;
}

uint64_t re::ModelSpaceJointRotationCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v16);
    __break(1u);
  }

  else
  {
    v7 = *(*a2 + 184);
    v8 = *(a2[1] + 232);
    v18[0] = v8;
    v18[1] = strlen(v8);
    re::RigHierarchy::getModelSpaceJointRotation(v7, v18, v19);
    v10 = v19[0];
    if (v19[0] != 1)
    {
      if (v21)
      {
        if (v22)
        {
          (*(*v21 + 40))();
        }
      }

      return v10;
    }

    if (a5)
    {
      v11 = *a4;
      v12 = v20;
      *(v11 + 96) = 2;
      *(v11 + 176) = v12;
      return v10;
    }
  }

  re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v17);
  __break(1u);
  return result;
}

uint64_t re::ModelSpaceJointTranslationCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v16);
    __break(1u);
  }

  else
  {
    v7 = *(*a2 + 184);
    v8 = *(a2[1] + 232);
    v18[0] = v8;
    v18[1] = strlen(v8);
    re::RigHierarchy::getModelSpaceJointTranslation(v7, v18, v19);
    v10 = v19[0];
    if (v19[0] != 1)
    {
      if (v21)
      {
        if (v22)
        {
          (*(*v21 + 40))();
        }
      }

      return v10;
    }

    if (a5)
    {
      v11 = *a4;
      v12 = v20;
      *(v11 + 96) = 2;
      *(v11 + 176) = v12;
      return v10;
    }
  }

  re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v17);
  __break(1u);
  return result;
}

uint64_t re::ModelSpaceJointTransformCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v16);
    __break(1u);
  }

  else
  {
    v7 = *(*a2 + 184);
    v8 = *(a2[1] + 232);
    v18[0] = v8;
    v18[1] = strlen(v8);
    re::RigHierarchy::getModelSpaceJointTransform(v7, v18, v19);
    v10 = v19[0];
    if (v19[0] != 1)
    {
      if (v21)
      {
        if (v22)
        {
          (*(*v21 + 40))();
        }
      }

      return v10;
    }

    if (a5)
    {
      v11 = *a4;
      v12 = v20;
      *(v11 + 96) = 2;
      *(v11 + 176) = v12;
      return v10;
    }
  }

  re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v17);
  __break(1u);
  return result;
}

uint64_t re::SetLocalSpaceJointScaleCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v21);
    __break(1u);
    goto LABEL_13;
  }

  if (!a5)
  {
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v22);
    __break(1u);
    goto LABEL_14;
  }

  v8 = a2[1];
  v9 = *(*a2 + 184);
  v10 = *(*a4 + 184);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 24), v9 + 24);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 72), v9 + 72);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v10 + 120, v9 + 15);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v10 + 160, v9 + 20);
  re::DynamicArray<re::StringID>::operator=(v10 + 200, v9 + 25);
  re::DynamicArray<unsigned long>::operator=(v10 + 240, v9 + 30);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v10 + 280, v9 + 35);
  re::DynamicArray<unsigned long>::operator=(v10 + 320, v9 + 40);
  v12 = *(*a4 + 184);
  v24[0] = *(v8 + 232);
  v24[1] = strlen(v24[0]);
  if (a3 == 2)
  {
LABEL_14:
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    return result;
  }

  v14 = a2[2];
  if (v14[6].n128_u8[0] == 1)
  {
    v15 = v14[1].n128_u64[0];
    LODWORD(v28[0]) = 7;
    memset(&v28[1], 0, 24);
    re::DynamicArray<re::EvaluationRegister>::add((v15 + 243), v28);
    v28[0] = v15[245] - 1;
    re::DynamicArray<unsigned long>::add((v15 + 36), v28);
    re::DynamicArray<re::Vector3<float>>::add((v15 + 76), v14 + 7);
    v16 = (v15[40] + 8 * v15[38] - 8);
  }

  else
  {
    v16 = &v14[11];
  }

  re::RigHierarchy::setLocalSpaceJointScale(v12, v24, *v16, v25);
  if (v25[0] & 1) == 0 && v26 && (v27)
  {
    (*(*v26 + 40))();
  }

  return 1;
}

uint64_t re::SetLocalSpaceJointRotationCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v21);
    __break(1u);
    goto LABEL_13;
  }

  if (!a5)
  {
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v22);
    __break(1u);
    goto LABEL_14;
  }

  v8 = a2[1];
  v9 = *(*a2 + 184);
  v10 = *(*a4 + 184);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 24), v9 + 24);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 72), v9 + 72);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v10 + 120, v9 + 15);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v10 + 160, v9 + 20);
  re::DynamicArray<re::StringID>::operator=(v10 + 200, v9 + 25);
  re::DynamicArray<unsigned long>::operator=(v10 + 240, v9 + 30);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v10 + 280, v9 + 35);
  re::DynamicArray<unsigned long>::operator=(v10 + 320, v9 + 40);
  v12 = *(*a4 + 184);
  v24[0] = *(v8 + 232);
  v24[1] = strlen(v24[0]);
  if (a3 == 2)
  {
LABEL_14:
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    return result;
  }

  v14 = a2[2];
  if (v14[6].n128_u8[0] == 1)
  {
    v15 = v14[1].n128_u64[0];
    LODWORD(v28[0]) = 5;
    memset(&v28[1], 0, 24);
    re::DynamicArray<re::EvaluationRegister>::add((v15 + 233), v28);
    v28[0] = v15[235] - 1;
    re::DynamicArray<unsigned long>::add((v15 + 26), v28);
    re::DynamicArray<re::Vector3<float>>::add((v15 + 66), v14 + 7);
    v16 = (v15[30] + 8 * v15[28] - 8);
  }

  else
  {
    v16 = &v14[11];
  }

  re::RigHierarchy::setLocalSpaceJointRotation(v12, v24, *v16, v25);
  if (v25[0] & 1) == 0 && v26 && (v27)
  {
    (*(*v26 + 40))();
  }

  return 1;
}

uint64_t re::SetLocalSpaceJointTranslationCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v21);
    __break(1u);
    goto LABEL_13;
  }

  if (!a5)
  {
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v22);
    __break(1u);
    goto LABEL_14;
  }

  v8 = a2[1];
  v9 = *(*a2 + 184);
  v10 = *(*a4 + 184);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 24), v9 + 24);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 72), v9 + 72);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v10 + 120, v9 + 15);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v10 + 160, v9 + 20);
  re::DynamicArray<re::StringID>::operator=(v10 + 200, v9 + 25);
  re::DynamicArray<unsigned long>::operator=(v10 + 240, v9 + 30);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v10 + 280, v9 + 35);
  re::DynamicArray<unsigned long>::operator=(v10 + 320, v9 + 40);
  v12 = *(*a4 + 184);
  v24[0] = *(v8 + 232);
  v24[1] = strlen(v24[0]);
  if (a3 == 2)
  {
LABEL_14:
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    return result;
  }

  v14 = a2[2];
  if (v14[6].n128_u8[0] == 1)
  {
    v15 = v14[1].n128_u64[0];
    LODWORD(v28[0]) = 7;
    memset(&v28[1], 0, 24);
    re::DynamicArray<re::EvaluationRegister>::add((v15 + 243), v28);
    v28[0] = v15[245] - 1;
    re::DynamicArray<unsigned long>::add((v15 + 36), v28);
    re::DynamicArray<re::Vector3<float>>::add((v15 + 76), v14 + 7);
    v16 = (v15[40] + 8 * v15[38] - 8);
  }

  else
  {
    v16 = &v14[11];
  }

  re::RigHierarchy::setLocalSpaceJointTranslation(v12, v24, *v16, v25);
  if (v25[0] & 1) == 0 && v26 && (v27)
  {
    (*(*v26 + 40))();
  }

  return 1;
}

uint64_t re::SetLocalSpaceJointTransformCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v21);
    __break(1u);
    goto LABEL_13;
  }

  if (!a5)
  {
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v22);
    __break(1u);
    goto LABEL_14;
  }

  v8 = a2[1];
  v9 = *(*a2 + 184);
  v10 = *(*a4 + 184);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 24), v9 + 24);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 72), v9 + 72);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v10 + 120, v9 + 15);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v10 + 160, v9 + 20);
  re::DynamicArray<re::StringID>::operator=(v10 + 200, v9 + 25);
  re::DynamicArray<unsigned long>::operator=(v10 + 240, v9 + 30);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v10 + 280, v9 + 35);
  re::DynamicArray<unsigned long>::operator=(v10 + 320, v9 + 40);
  v12 = *(*a4 + 184);
  v24[0] = *(v8 + 232);
  v24[1] = strlen(v24[0]);
  if (a3 == 2)
  {
LABEL_14:
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    return result;
  }

  v14 = a2[2];
  if (*(v14 + 96) == 1)
  {
    v15 = *(v14 + 16);
    LODWORD(v28[0]) = 4;
    memset(&v28[1], 0, 24);
    re::DynamicArray<re::EvaluationRegister>::add((v15 + 228), v28);
    v28[0] = v15[230] - 1;
    re::DynamicArray<unsigned long>::add((v15 + 21), v28);
    re::DynamicArray<re::Matrix4x4<float>>::add((v15 + 61), v14 + 112);
    v16 = (v15[25] + 8 * v15[23] - 8);
  }

  else
  {
    v16 = (v14 + 176);
  }

  re::RigHierarchy::setLocalSpaceJointTransform(v12, v24, *v16, v25);
  if (v25[0] & 1) == 0 && v26 && (v27)
  {
    (*(*v26 + 40))();
  }

  return 1;
}

uint64_t re::SetModelSpaceJointScaleCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v21);
    __break(1u);
    goto LABEL_13;
  }

  if (!a5)
  {
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v22);
    __break(1u);
    goto LABEL_14;
  }

  v8 = a2[1];
  v9 = *(*a2 + 184);
  v10 = *(*a4 + 184);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 24), v9 + 24);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 72), v9 + 72);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v10 + 120, v9 + 15);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v10 + 160, v9 + 20);
  re::DynamicArray<re::StringID>::operator=(v10 + 200, v9 + 25);
  re::DynamicArray<unsigned long>::operator=(v10 + 240, v9 + 30);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v10 + 280, v9 + 35);
  re::DynamicArray<unsigned long>::operator=(v10 + 320, v9 + 40);
  v12 = *(*a4 + 184);
  v24[0] = *(v8 + 232);
  v24[1] = strlen(v24[0]);
  if (a3 == 2)
  {
LABEL_14:
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    return result;
  }

  v14 = a2[2];
  if (v14[6].n128_u8[0] == 1)
  {
    v15 = v14[1].n128_u64[0];
    LODWORD(v28[0]) = 7;
    memset(&v28[1], 0, 24);
    re::DynamicArray<re::EvaluationRegister>::add((v15 + 243), v28);
    v28[0] = v15[245] - 1;
    re::DynamicArray<unsigned long>::add((v15 + 36), v28);
    re::DynamicArray<re::Vector3<float>>::add((v15 + 76), v14 + 7);
    v16 = (v15[40] + 8 * v15[38] - 8);
  }

  else
  {
    v16 = &v14[11];
  }

  re::RigHierarchy::setModelSpaceJointScale(v12, v24, *v16, v25);
  if (v25[0] & 1) == 0 && v26 && (v27)
  {
    (*(*v26 + 40))();
  }

  return 1;
}

uint64_t re::SetModelSpaceJointRotationCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_14;
  }

  if (!a5)
  {
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
    goto LABEL_15;
  }

  v8 = a2[1];
  v9 = *(*a2 + 184);
  v10 = *(*a4 + 184);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 24), v9 + 24);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 72), v9 + 72);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v10 + 120, v9 + 15);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v10 + 160, v9 + 20);
  re::DynamicArray<re::StringID>::operator=(v10 + 200, v9 + 25);
  re::DynamicArray<unsigned long>::operator=(v10 + 240, v9 + 30);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v10 + 280, v9 + 35);
  re::DynamicArray<unsigned long>::operator=(v10 + 320, v9 + 40);
  v12 = *(*a4 + 184);
  v26[0] = *(v8 + 232);
  v26[1] = strlen(v26[0]);
  if (a3 == 2)
  {
LABEL_15:
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v14 = a2[2];
  if (v14[6].n128_u8[0] == 1)
  {
    v15 = v14[1].n128_u64[0];
    LODWORD(v30[0]) = 5;
    memset(&v30[1], 0, 24);
    re::DynamicArray<re::EvaluationRegister>::add((v15 + 233), v30);
    v30[0] = v15[235] - 1;
    re::DynamicArray<unsigned long>::add((v15 + 26), v30);
    re::DynamicArray<re::Vector3<float>>::add((v15 + 66), v14 + 7);
    v16 = (v15[30] + 8 * v15[28] - 8);
  }

  else
  {
    v16 = &v14[11];
  }

  re::RigHierarchy::setModelSpaceJointRotation(v12, v26, *v16, v27);
  if ((v27[0] & 1) == 0 && v28)
  {
    if (BYTE8(v28))
    {
      (*(*v28 + 40))();
    }

    v29 = 0u;
    v28 = 0u;
  }

  v17 = *(*a4 + 184);
  v18 = *v12;
  *(v17 + 16) = *(v12 + 2);
  *v17 = v18;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v17 + 24), v12 + 24);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v17 + 72), v12 + 72);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v17 + 120, v12 + 15);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v17 + 160, v12 + 20);
  re::DynamicArray<re::StringID>::operator=(v17 + 200, v12 + 25);
  re::DynamicArray<unsigned long>::operator=(v17 + 240, v12 + 30);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v17 + 280, v12 + 35);
  re::DynamicArray<unsigned long>::operator=(v17 + 320, v12 + 40);
  return 1;
}

uint64_t re::SetModelSpaceJointTranslationCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_14;
  }

  if (!a5)
  {
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
    goto LABEL_15;
  }

  v8 = a2[1];
  v9 = *(*a2 + 184);
  v10 = *(*a4 + 184);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 24), v9 + 24);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 72), v9 + 72);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v10 + 120, v9 + 15);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v10 + 160, v9 + 20);
  re::DynamicArray<re::StringID>::operator=(v10 + 200, v9 + 25);
  re::DynamicArray<unsigned long>::operator=(v10 + 240, v9 + 30);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v10 + 280, v9 + 35);
  re::DynamicArray<unsigned long>::operator=(v10 + 320, v9 + 40);
  v12 = *(*a4 + 184);
  v26[0] = *(v8 + 232);
  v26[1] = strlen(v26[0]);
  if (a3 == 2)
  {
LABEL_15:
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v14 = a2[2];
  if (v14[6].n128_u8[0] == 1)
  {
    v15 = v14[1].n128_u64[0];
    LODWORD(v30[0]) = 7;
    memset(&v30[1], 0, 24);
    re::DynamicArray<re::EvaluationRegister>::add((v15 + 243), v30);
    v30[0] = v15[245] - 1;
    re::DynamicArray<unsigned long>::add((v15 + 36), v30);
    re::DynamicArray<re::Vector3<float>>::add((v15 + 76), v14 + 7);
    v16 = (v15[40] + 8 * v15[38] - 8);
  }

  else
  {
    v16 = &v14[11];
  }

  re::RigHierarchy::setModelSpaceJointTranslation(v12, v26, *v16, v27);
  if ((v27[0] & 1) == 0 && v28)
  {
    if (BYTE8(v28))
    {
      (*(*v28 + 40))();
    }

    v29 = 0u;
    v28 = 0u;
  }

  v17 = *(*a4 + 184);
  v18 = *v12;
  *(v17 + 16) = *(v12 + 2);
  *v17 = v18;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v17 + 24), v12 + 24);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v17 + 72), v12 + 72);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v17 + 120, v12 + 15);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v17 + 160, v12 + 20);
  re::DynamicArray<re::StringID>::operator=(v17 + 200, v12 + 25);
  re::DynamicArray<unsigned long>::operator=(v17 + 240, v12 + 30);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v17 + 280, v12 + 35);
  re::DynamicArray<unsigned long>::operator=(v17 + 320, v12 + 40);
  return 1;
}

uint64_t re::SetModelSpaceJointTransformCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v21);
    __break(1u);
    goto LABEL_13;
  }

  if (!a5)
  {
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v22);
    __break(1u);
    goto LABEL_14;
  }

  v8 = a2[1];
  v9 = *(*a2 + 184);
  v10 = *(*a4 + 184);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 24), v9 + 24);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 72), v9 + 72);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v10 + 120, v9 + 15);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v10 + 160, v9 + 20);
  re::DynamicArray<re::StringID>::operator=(v10 + 200, v9 + 25);
  re::DynamicArray<unsigned long>::operator=(v10 + 240, v9 + 30);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v10 + 280, v9 + 35);
  re::DynamicArray<unsigned long>::operator=(v10 + 320, v9 + 40);
  v12 = *(*a4 + 184);
  v24[0] = *(v8 + 232);
  v24[1] = strlen(v24[0]);
  if (a3 == 2)
  {
LABEL_14:
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    return result;
  }

  v14 = a2[2];
  if (*(v14 + 96) == 1)
  {
    v15 = *(v14 + 16);
    LODWORD(v28[0]) = 4;
    memset(&v28[1], 0, 24);
    re::DynamicArray<re::EvaluationRegister>::add((v15 + 228), v28);
    v28[0] = v15[230] - 1;
    re::DynamicArray<unsigned long>::add((v15 + 21), v28);
    re::DynamicArray<re::Matrix4x4<float>>::add((v15 + 61), v14 + 112);
    v16 = (v15[25] + 8 * v15[23] - 8);
  }

  else
  {
    v16 = (v14 + 176);
  }

  re::RigHierarchy::setModelSpaceJointTransform(v12, v24, *v16, v25);
  if (v25[0] & 1) == 0 && v26 && (v27)
  {
    (*(*v26 + 40))();
  }

  return 1;
}

uint64_t re::JointParentCompile(uint64_t a1, void *a2, unint64_t a3, re::Allocator ***a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v18);
    __break(1u);
  }

  else
  {
    v7 = *(*a2 + 184);
    v8 = *(a2[1] + 232);
    v20 = v8;
    v21 = strlen(v8);
    v9 = re::RigHierarchy::jointParent(v7, &v20, 1, v22);
    v11 = v22[0];
    if (v22[0] != 1)
    {
LABEL_8:
      if (v24)
      {
        if (v25)
        {
          (*(*v24 + 40))();
        }
      }

      return v11;
    }

    if (a5)
    {
      v12 = *a4;
      v13 = *(v23 + 8);
      v20 = 0;
      v21 = &str_67;
      re::StringID::copy((v12 + 28), &v20, *v12);
      if (v20)
      {
        if (v20)
        {
        }
      }

      if (v22[0])
      {
        return v11;
      }

      goto LABEL_8;
    }
  }

  re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v19);
  __break(1u);
  return result;
}

uint64_t re::SetJointParentCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v20);
    __break(1u);
    goto LABEL_10;
  }

  if (!a5)
  {
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v21);
    __break(1u);
    goto LABEL_11;
  }

  v8 = a2[1];
  v9 = *(*a2 + 184);
  v10 = *(*a4 + 184);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 24), v9 + 24);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v10 + 72), v9 + 72);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v10 + 120, v9 + 15);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v10 + 160, v9 + 20);
  re::DynamicArray<re::StringID>::operator=(v10 + 200, v9 + 25);
  re::DynamicArray<unsigned long>::operator=(v10 + 240, v9 + 30);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v10 + 280, v9 + 35);
  re::DynamicArray<unsigned long>::operator=(v10 + 320, v9 + 40);
  if (a3 == 2)
  {
LABEL_11:
    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v22);
    __break(1u);
    return result;
  }

  v13 = strlen(*(a2[2] + 232));
  v27[0] = *(a2[2] + 232);
  v27[1] = v13;
  v14 = *(*a4 + 184);
  v15 = strlen(*(v8 + 232));
  v23[0] = *(v8 + 232);
  v23[1] = v15;
  re::RigHierarchy::setJointParent(v14, v23, v27, v24);
  if (v24[0] & 1) == 0 && v25 && (v26)
  {
    (*(*v25 + 40))();
  }

  return 1;
}

uint64_t re::AddJointCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v14);
    __break(1u);
    goto LABEL_9;
  }

  if (!a5)
  {
LABEL_9:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v15);
    __break(1u);
    return result;
  }

  v6 = a2[1];
  v7 = *(*a2 + 184);
  v8 = *(*a4 + 184);
  v9 = *v7;
  *(v8 + 16) = *(v7 + 2);
  *v8 = v9;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v8 + 24), v7 + 24);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v8 + 72), v7 + 72);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v8 + 120, v7 + 15);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v8 + 160, v7 + 20);
  re::DynamicArray<re::StringID>::operator=(v8 + 200, v7 + 25);
  re::DynamicArray<unsigned long>::operator=(v8 + 240, v7 + 30);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v8 + 280, v7 + 35);
  re::DynamicArray<unsigned long>::operator=(v8 + 320, v7 + 40);
  v10 = *(*a4 + 184);
  v16[0] = *(v6 + 232);
  v16[1] = strlen(v16[0]);
  re::RigHierarchy::addJoint(v10, v16, v17);
  if (v17[0] & 1) == 0 && v18 && (v19)
  {
    (*(*v18 + 40))();
  }

  return 1;
}

uint64_t re::RemoveJointCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v14);
    __break(1u);
    goto LABEL_9;
  }

  if (!a5)
  {
LABEL_9:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v15);
    __break(1u);
    return result;
  }

  v6 = a2[1];
  v7 = *(*a2 + 184);
  v8 = *(*a4 + 184);
  v9 = *v7;
  *(v8 + 16) = *(v7 + 2);
  *v8 = v9;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v8 + 24), v7 + 24);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v8 + 72), v7 + 72);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v8 + 120, v7 + 15);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v8 + 160, v7 + 20);
  re::DynamicArray<re::StringID>::operator=(v8 + 200, v7 + 25);
  re::DynamicArray<unsigned long>::operator=(v8 + 240, v7 + 30);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v8 + 280, v7 + 35);
  re::DynamicArray<unsigned long>::operator=(v8 + 320, v7 + 40);
  v10 = *(*a4 + 184);
  v16[0] = *(v6 + 232);
  v16[1] = strlen(v16[0]);
  re::RigHierarchy::removeJoint(v10, v16, v17);
  if (v17[0] & 1) == 0 && v18 && (v19)
  {
    (*(*v18 + 40))();
  }

  return 1;
}

uint64_t re::ClearJointParentCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 <= 1)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, a3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v14);
    __break(1u);
    goto LABEL_9;
  }

  if (!a5)
  {
LABEL_9:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v15);
    __break(1u);
    return result;
  }

  v6 = a2[1];
  v7 = *(*a2 + 184);
  v8 = *(*a4 + 184);
  v9 = *v7;
  *(v8 + 16) = *(v7 + 2);
  *v8 = v9;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v8 + 24), v7 + 24);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v8 + 72), v7 + 72);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v8 + 120, v7 + 15);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v8 + 160, v7 + 20);
  re::DynamicArray<re::StringID>::operator=(v8 + 200, v7 + 25);
  re::DynamicArray<unsigned long>::operator=(v8 + 240, v7 + 30);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v8 + 280, v7 + 35);
  re::DynamicArray<unsigned long>::operator=(v8 + 320, v7 + 40);
  v10 = *(*a4 + 184);
  v16[0] = *(v6 + 232);
  v16[1] = strlen(v16[0]);
  re::RigHierarchy::clearJointParent(v10, v16, v17);
  if (v17[0] & 1) == 0 && v18 && (v19)
  {
    (*(*v18 + 40))();
  }

  return 1;
}

uint64_t re::SinFloatCompile(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v15);
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v16);
    __break(1u);
    return result;
  }

  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v8 = *(v7 + 16);
    LODWORD(v17) = 2;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 218), &v17);
    v17 = v8[220] - 1;
    re::DynamicArray<unsigned long>::add((v8 + 11), &v17);
    re::DynamicArray<float>::add((v8 + 51), (v7 + 112));
    v9 = (v8[15] + 8 * v8[13] - 8);
  }

  else
  {
    v9 = (v7 + 176);
  }

  v10 = *v9;
  LODWORD(v17) = 53;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v6 + 1744), &v17);
  v11 = *(v6 + 1760) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v6 + 1664, v11) + 8) = v10;
  *(v5 + 96) = 2;
  *(v5 + 176) = v11;
  return 1;
}

uint64_t re::CosFloatCompile(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v15);
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v16);
    __break(1u);
    return result;
  }

  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v8 = *(v7 + 16);
    LODWORD(v17) = 2;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 218), &v17);
    v17 = v8[220] - 1;
    re::DynamicArray<unsigned long>::add((v8 + 11), &v17);
    re::DynamicArray<float>::add((v8 + 51), (v7 + 112));
    v9 = (v8[15] + 8 * v8[13] - 8);
  }

  else
  {
    v9 = (v7 + 176);
  }

  v10 = *v9;
  LODWORD(v17) = 54;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v6 + 1744), &v17);
  v11 = *(v6 + 1760) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v6 + 1664, v11) + 8) = v10;
  *(v5 + 96) = 2;
  *(v5 + 176) = v11;
  return 1;
}

uint64_t re::TanFloatCompile(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v15);
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v16);
    __break(1u);
    return result;
  }

  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v8 = *(v7 + 16);
    LODWORD(v17) = 2;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 218), &v17);
    v17 = v8[220] - 1;
    re::DynamicArray<unsigned long>::add((v8 + 11), &v17);
    re::DynamicArray<float>::add((v8 + 51), (v7 + 112));
    v9 = (v8[15] + 8 * v8[13] - 8);
  }

  else
  {
    v9 = (v7 + 176);
  }

  v10 = *v9;
  LODWORD(v17) = 55;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v6 + 1744), &v17);
  v11 = *(v6 + 1760) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v6 + 1664, v11) + 8) = v10;
  *(v5 + 96) = 2;
  *(v5 + 176) = v11;
  return 1;
}

uint64_t re::AsinFloatCompile(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v15);
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v16);
    __break(1u);
    return result;
  }

  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v8 = *(v7 + 16);
    LODWORD(v17) = 2;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 218), &v17);
    v17 = v8[220] - 1;
    re::DynamicArray<unsigned long>::add((v8 + 11), &v17);
    re::DynamicArray<float>::add((v8 + 51), (v7 + 112));
    v9 = (v8[15] + 8 * v8[13] - 8);
  }

  else
  {
    v9 = (v7 + 176);
  }

  v10 = *v9;
  LODWORD(v17) = 56;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v6 + 1744), &v17);
  v11 = *(v6 + 1760) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v6 + 1664, v11) + 8) = v10;
  *(v5 + 96) = 2;
  *(v5 + 176) = v11;
  return 1;
}

uint64_t re::AcosFloatCompile(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v15);
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v16);
    __break(1u);
    return result;
  }

  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v8 = *(v7 + 16);
    LODWORD(v17) = 2;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 218), &v17);
    v17 = v8[220] - 1;
    re::DynamicArray<unsigned long>::add((v8 + 11), &v17);
    re::DynamicArray<float>::add((v8 + 51), (v7 + 112));
    v9 = (v8[15] + 8 * v8[13] - 8);
  }

  else
  {
    v9 = (v7 + 176);
  }

  v10 = *v9;
  LODWORD(v17) = 57;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v6 + 1744), &v17);
  v11 = *(v6 + 1760) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v6 + 1664, v11) + 8) = v10;
  *(v5 + 96) = 2;
  *(v5 + 176) = v11;
  return 1;
}

uint64_t re::AtanFloatCompile(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v15);
    __break(1u);
    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_8:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v16);
    __break(1u);
    return result;
  }

  v5 = *a4;
  v6 = *(a1 + 8);
  v7 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v8 = *(v7 + 16);
    LODWORD(v17) = 2;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v8 + 218), &v17);
    v17 = v8[220] - 1;
    re::DynamicArray<unsigned long>::add((v8 + 11), &v17);
    re::DynamicArray<float>::add((v8 + 51), (v7 + 112));
    v9 = (v8[15] + 8 * v8[13] - 8);
  }

  else
  {
    v9 = (v7 + 176);
  }

  v10 = *v9;
  LODWORD(v17) = 58;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v6 + 1744), &v17);
  v11 = *(v6 + 1760) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v6 + 1664, v11) + 8) = v10;
  *(v5 + 96) = 2;
  *(v5 + 176) = v11;
  return 1;
}

uint64_t re::Atan2FloatCompile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v26) = 2;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 218), &v26);
    v26 = v10[220] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 11), &v26);
    re::DynamicArray<float>::add((v10 + 51), (v9 + 112));
    v11 = (v10[15] + 8 * v10[13] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v26) = 2;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 218), &v26);
    v26 = v14[220] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 11), &v26);
    re::DynamicArray<float>::add((v14 + 51), (v13 + 112));
    v15 = (v14[15] + 8 * v14[13] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  v16 = *v15;
  LODWORD(v26) = 59;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1744), &v26);
  v17 = *(v8 + 1760) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::GreaterCompile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v26) = 2;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 218), &v26);
    v26 = v10[220] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 11), &v26);
    re::DynamicArray<float>::add((v10 + 51), (v9 + 112));
    v11 = (v10[15] + 8 * v10[13] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v26) = 2;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 218), &v26);
    v26 = v14[220] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 11), &v26);
    re::DynamicArray<float>::add((v14 + 51), (v13 + 112));
    v15 = (v14[15] + 8 * v14[13] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  v16 = *v15;
  LODWORD(v26) = 61;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1704), &v26);
  v17 = *(v8 + 1720) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<unsigned int>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::GreaterEqualCompile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v26) = 2;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 218), &v26);
    v26 = v10[220] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 11), &v26);
    re::DynamicArray<float>::add((v10 + 51), (v9 + 112));
    v11 = (v10[15] + 8 * v10[13] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v26) = 2;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 218), &v26);
    v26 = v14[220] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 11), &v26);
    re::DynamicArray<float>::add((v14 + 51), (v13 + 112));
    v15 = (v14[15] + 8 * v14[13] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  v16 = *v15;
  LODWORD(v26) = 62;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1704), &v26);
  v17 = *(v8 + 1720) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<unsigned int>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::LessCompile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v26) = 2;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 218), &v26);
    v26 = v10[220] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 11), &v26);
    re::DynamicArray<float>::add((v10 + 51), (v9 + 112));
    v11 = (v10[15] + 8 * v10[13] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v26) = 2;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 218), &v26);
    v26 = v14[220] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 11), &v26);
    re::DynamicArray<float>::add((v14 + 51), (v13 + 112));
    v15 = (v14[15] + 8 * v14[13] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  v16 = *v15;
  LODWORD(v26) = 63;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1704), &v26);
  v17 = *(v8 + 1720) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<unsigned int>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}