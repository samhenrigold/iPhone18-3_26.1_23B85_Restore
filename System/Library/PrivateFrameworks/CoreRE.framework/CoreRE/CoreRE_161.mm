uint64_t re::internal::GeomTypedAttribute<signed char>::reorderHelper(uint64_t result, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = *(result + 40);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(a2 + 16);
    do
    {
      if (v5 <= v3)
      {
        goto LABEL_34;
      }

      v6 = *(a2 + 32);
      if (v4 != *(v6 + 4 * v3))
      {
        v5 = *(result + 40);
        if (v5 <= v3)
        {
          goto LABEL_38;
        }

        v7 = *(*(result + 56) + v3);
        v3 = v4;
        v8 = v4;
        while (1)
        {
          v5 = *(v6 + 4 * v3);
          if (v4 == v5)
          {
            break;
          }

          v9 = *(result + 40);
          if (v9 <= v5)
          {
            v34 = 0;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            v10 = MEMORY[0x1E69E9C10];
            v35 = 136315906;
            v36 = "operator[]";
            v37 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v11 = 3;
            }

            else
            {
              v11 = 2;
            }

            v38 = 789;
            v39 = 2048;
            v40 = v5;
            v41 = 2048;
            v42 = v9;
            _os_log_send_and_compose_impl(v11, &v34, &v43, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
            _os_crash_msg();
            __break(1u);
LABEL_22:
            v34 = 0;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            v12 = MEMORY[0x1E69E9C10];
            v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v35 = 136315906;
            v36 = "operator[]";
            v37 = 1024;
            if (v13)
            {
              v14 = 3;
            }

            else
            {
              v14 = 2;
            }

            v38 = 789;
            v39 = 2048;
            v40 = v3;
            v41 = 2048;
            v42 = v9;
            _os_log_send_and_compose_impl(v14, &v34, &v43, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
            _os_crash_msg();
            __break(1u);
LABEL_26:
            v34 = 0;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            v15 = MEMORY[0x1E69E9C10];
            v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v35 = 136315906;
            v36 = "operator[]";
            v37 = 1024;
            if (v16)
            {
              v17 = 3;
            }

            else
            {
              v17 = 2;
            }

            v38 = 789;
            v39 = 2048;
            v40 = v3;
            v41 = 2048;
            v42 = v9;
            _os_log_send_and_compose_impl(v17, &v34, &v43, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
            _os_crash_msg();
            __break(1u);
LABEL_30:
            v34 = 0;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            v18 = MEMORY[0x1E69E9C10];
            v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v35 = 136315906;
            v36 = "operator[]";
            v37 = 1024;
            if (v19)
            {
              v20 = 3;
            }

            else
            {
              v20 = 2;
            }

            v38 = 789;
            v39 = 2048;
            v40 = v5;
            v41 = 2048;
            v42 = v9;
            _os_log_send_and_compose_impl(v20, &v34, &v43, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
            _os_crash_msg();
            __break(1u);
LABEL_34:
            v34 = 0;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            v21 = MEMORY[0x1E69E9C10];
            v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v35 = 136315906;
            v36 = "operator[]";
            v37 = 1024;
            if (v22)
            {
              v23 = 3;
            }

            else
            {
              v23 = 2;
            }

            v38 = 789;
            v39 = 2048;
            v40 = v3;
            v41 = 2048;
            v42 = v5;
            _os_log_send_and_compose_impl(v23, &v34, &v43, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
            _os_crash_msg();
            __break(1u);
LABEL_38:
            v34 = 0;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            v24 = MEMORY[0x1E69E9C10];
            v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v35 = 136315906;
            v36 = "operator[]";
            v37 = 1024;
            if (v25)
            {
              v26 = 3;
            }

            else
            {
              v26 = 2;
            }

            v38 = 789;
            v39 = 2048;
            v40 = v3;
            v41 = 2048;
            v42 = v5;
            _os_log_send_and_compose_impl(v26, &v34, &v43, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
            _os_crash_msg();
            __break(1u);
LABEL_42:
            v34 = 0;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            v27 = MEMORY[0x1E69E9C10];
            v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v35 = 136315906;
            v36 = "operator[]";
            v37 = 1024;
            if (v28)
            {
              v29 = 3;
            }

            else
            {
              v29 = 2;
            }

            v38 = 789;
            v39 = 2048;
            v40 = v3;
            v41 = 2048;
            v42 = v5;
            _os_log_send_and_compose_impl(v29, &v34, &v43, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
            _os_crash_msg();
            __break(1u);
            goto LABEL_46;
          }

          if (v9 <= v3)
          {
            goto LABEL_22;
          }

          *(*(result + 56) + v3) = *(*(result + 56) + v5);
          v9 = *(a2 + 16);
          if (v9 <= v3)
          {
            goto LABEL_26;
          }

          v6 = *(a2 + 32);
          *(v6 + 4 * v3) = v8;
          v3 = v5;
          v8 = v5;
          if (v9 <= v5)
          {
            goto LABEL_30;
          }
        }

        v5 = *(result + 40);
        if (v5 <= v3)
        {
          goto LABEL_42;
        }

        *(*(result + 56) + v3) = v7;
        v5 = *(a2 + 16);
        if (v5 <= v3)
        {
LABEL_46:
          v34 = 0;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v43 = 0u;
          v30 = MEMORY[0x1E69E9C10];
          v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v35 = 136315906;
          v36 = "operator[]";
          v37 = 1024;
          if (v31)
          {
            v32 = 3;
          }

          else
          {
            v32 = 2;
          }

          v38 = 789;
          v39 = 2048;
          v40 = v3;
          v41 = 2048;
          v42 = v5;
          _os_log_send_and_compose_impl(v32, &v34, &v43, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
          _os_crash_msg();
          __break(1u);
        }

        *(*(a2 + 32) + 4 * v3) = v8;
      }

      v3 = ++v4;
    }

    while (v2 > v4);
  }

  return result;
}

BOOL re::internal::GeomTypedAttribute<signed char>::areValuesAtIndexEqualHelper(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(a1 + 40);
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

    v17 = 797;
    v18 = 2048;
    v19 = v4;
    v20 = 2048;
    v21 = v5;
    _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
LABEL_8:
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

    v17 = 797;
    v18 = 2048;
    v19 = v3;
    v20 = 2048;
    v21 = v5;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v3 = a3;
  if (v5 <= a3)
  {
    goto LABEL_8;
  }

  return *(*(a1 + 56) + a2) == *(*(a1 + 56) + a3);
}

void *re::internal::GeomTypedAttribute<signed char>::reserveInternal(void *result, unsigned int a2)
{
  if (result[4] < a2)
  {
    return re::DynamicArray<BOOL>::setCapacity(result + 3, a2);
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<signed char>::clearInternal(uint64_t result)
{
  *(result + 40) = 0;
  ++*(result + 48);
  return result;
}

void re::internal::GeomTypedAttribute<short>::~GeomTypedAttribute(re::GeomAttribute *a1)
{
  *a1 = &unk_1F5D02378;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D02378;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedAttribute<short>::resize(_BYTE *a1, unsigned int a2)
{
  if ((*(*a1 + 16))(a1) == a2)
  {
    return 1;
  }

  if (a1[16] == 4)
  {
    re::DynamicArray<short>::resize((a1 + 24), a2);
    return 1;
  }

  return 0;
}

uint64_t re::internal::GeomTypedAttribute<short>::clear(uint64_t a1)
{
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (*(a1 + 16) == 4)
  {
    *(a1 + 40) = 0;
    ++*(a1 + 48);
    return 1;
  }

  return 0;
}

void *re::internal::GeomTypedAttribute<short>::copyValuesHelper(void *result, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v8 = result;
  v39 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (a3)
    {
      v9 = result[5];
      v10 = a3;
      while (1)
      {
        v12 = *a4++;
        v11 = v12;
        if (v9 <= v12)
        {
          break;
        }

        v5 = *a5;
        v6 = *(a2 + 40);
        if (v6 <= v5)
        {
          goto LABEL_18;
        }

        *(*(a2 + 56) + 2 * v5) = *(result[7] + 2 * v11);
        ++a5;
        if (!--v10)
        {
          return result;
        }
      }

      v25 = 0;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v13 = MEMORY[0x1E69E9C10];
      v26 = 136315906;
      v27 = "operator[]";
      v28 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      v29 = 797;
      v30 = 2048;
      v31 = v11;
      v32 = 2048;
      v33 = v9;
      _os_log_send_and_compose_impl(v14, &v25, &v34, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
      _os_crash_msg();
      __break(1u);
LABEL_18:
      v25 = 0;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v15 = MEMORY[0x1E69E9C10];
      v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v26 = 136315906;
      v27 = "operator[]";
      v28 = 1024;
      if (v16)
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      v29 = 789;
      v30 = 2048;
      v31 = v5;
      v32 = 2048;
      v33 = v6;
      _os_log_send_and_compose_impl(v17, &v25, &v34, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
      _os_crash_msg();
      __break(1u);
      goto LABEL_22;
    }
  }

  else
  {
    result = (*(*result + 16))(result, a2, a3, 0, a5);
    if (result)
    {
      v11 = 0;
      v9 = v8[5];
      while (v9 != v11)
      {
        v5 = *(a2 + 40);
        if (v5 <= v11)
        {
          goto LABEL_26;
        }

        *(*(a2 + 56) + 2 * v11) = *(v8[7] + 2 * v11);
        if (result == ++v11)
        {
          return result;
        }
      }

LABEL_22:
      v25 = 0;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v18 = MEMORY[0x1E69E9C10];
      v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v26 = 136315906;
      v27 = "operator[]";
      v28 = 1024;
      if (v19)
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      v29 = 797;
      v30 = 2048;
      v31 = v9;
      v32 = 2048;
      v33 = v9;
      _os_log_send_and_compose_impl(v20, &v25, &v34, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
      _os_crash_msg();
      __break(1u);
LABEL_26:
      v25 = 0;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v21 = MEMORY[0x1E69E9C10];
      v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v26 = 136315906;
      v27 = "operator[]";
      v28 = 1024;
      if (v22)
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      v29 = 789;
      v30 = 2048;
      v31 = v11;
      v32 = 2048;
      v33 = v5;
      _os_log_send_and_compose_impl(v23, &v25, &v34, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
      _os_crash_msg();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<short>::reorderHelper(uint64_t result, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = *(result + 40);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 16);
    v7 = *(a2 + 32);
    do
    {
      if (v6 <= v4)
      {
        goto LABEL_29;
      }

      if (v5 != *(v7 + 4 * v4))
      {
        v2 = v5;
        if (v6 <= v5)
        {
LABEL_24:
          v4 = v2;
LABEL_25:
          v26 = 0;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v35 = 0u;
          v16 = MEMORY[0x1E69E9C10];
          v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v27 = 136315906;
          v28 = "operator[]";
          v29 = 1024;
          if (v17)
          {
            v18 = 3;
          }

          else
          {
            v18 = 2;
          }

          v30 = 789;
          v31 = 2048;
          v32 = v4;
          v33 = 2048;
          v34 = v6;
          _os_log_send_and_compose_impl(v18, &v26, &v35, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
          _os_crash_msg();
          __break(1u);
LABEL_29:
          v26 = 0;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v35 = 0u;
          v19 = MEMORY[0x1E69E9C10];
          v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v27 = 136315906;
          v28 = "operator[]";
          v29 = 1024;
          if (v20)
          {
            v21 = 3;
          }

          else
          {
            v21 = 2;
          }

          v30 = 789;
          v31 = 2048;
          v32 = v4;
          v33 = 2048;
          v34 = v6;
          _os_log_send_and_compose_impl(v21, &v26, &v35, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
          _os_crash_msg();
          __break(1u);
LABEL_33:
          v26 = 0;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v35 = 0u;
          v22 = MEMORY[0x1E69E9C10];
          v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v27 = 136315906;
          v28 = "operator[]";
          v29 = 1024;
          if (v23)
          {
            v24 = 3;
          }

          else
          {
            v24 = 2;
          }

          v30 = 789;
          v31 = 2048;
          v32 = v2;
          v33 = 2048;
          v34 = v3;
          _os_log_send_and_compose_impl(v24, &v26, &v35, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
          _os_crash_msg();
          __break(1u);
        }

        v8 = *(result + 56);
        v9 = *(v8 + 2 * v4);
        v10 = v5;
        while (1)
        {
          v4 = *(v7 + 4 * v2);
          if (v5 == v4)
          {
            break;
          }

          if (v3 <= v4)
          {
            v26 = 0;
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v35 = 0u;
            v11 = MEMORY[0x1E69E9C10];
            v27 = 136315906;
            v28 = "operator[]";
            v29 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v12 = 3;
            }

            else
            {
              v12 = 2;
            }

            v30 = 789;
            v31 = 2048;
            v32 = v4;
            v33 = 2048;
            v34 = v3;
            _os_log_send_and_compose_impl(v12, &v26, &v35, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
            _os_crash_msg();
            __break(1u);
LABEL_20:
            v26 = 0;
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v35 = 0u;
            v13 = MEMORY[0x1E69E9C10];
            v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v27 = 136315906;
            v28 = "operator[]";
            v29 = 1024;
            if (v14)
            {
              v15 = 3;
            }

            else
            {
              v15 = 2;
            }

            v30 = 789;
            v31 = 2048;
            v32 = v2;
            v33 = 2048;
            v34 = v3;
            _os_log_send_and_compose_impl(v15, &v26, &v35, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
            _os_crash_msg();
            __break(1u);
            goto LABEL_24;
          }

          if (v3 <= v2)
          {
            goto LABEL_20;
          }

          *(v8 + 2 * v2) = *(v8 + 2 * v4);
          *(v7 + 4 * v2) = v10;
          v2 = v4;
          v10 = v4;
          if (v6 <= v4)
          {
            goto LABEL_25;
          }
        }

        if (v3 <= v2)
        {
          goto LABEL_33;
        }

        *(v8 + 2 * v2) = v9;
        *(v7 + 4 * v2) = v10;
      }

      v4 = ++v5;
    }

    while (v3 > v5);
  }

  return result;
}

BOOL re::internal::GeomTypedAttribute<short>::areValuesAtIndexEqualHelper(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(a1 + 40);
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

    v17 = 797;
    v18 = 2048;
    v19 = v4;
    v20 = 2048;
    v21 = v5;
    _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
LABEL_8:
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

    v17 = 797;
    v18 = 2048;
    v19 = v3;
    v20 = 2048;
    v21 = v5;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v3 = a3;
  if (v5 <= a3)
  {
    goto LABEL_8;
  }

  return *(*(a1 + 56) + 2 * a2) == *(*(a1 + 56) + 2 * a3);
}

void *re::internal::GeomTypedAttribute<short>::reserveInternal(void *result, unsigned int a2)
{
  if (result[4] < a2)
  {
    return re::DynamicArray<short>::setCapacity(result + 3, a2);
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<short>::clearInternal(uint64_t result)
{
  *(result + 40) = 0;
  ++*(result + 48);
  return result;
}

void re::internal::GeomTypedAttribute<int>::~GeomTypedAttribute(re::GeomAttribute *a1)
{
  *a1 = &unk_1F5D02408;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D02408;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedAttribute<int>::resize(_BYTE *a1, unsigned int a2)
{
  if ((*(*a1 + 16))(a1) == a2)
  {
    return 1;
  }

  if (a1[16] == 4)
  {
    re::DynamicArray<float>::resize((a1 + 24), a2);
    return 1;
  }

  return 0;
}

uint64_t re::internal::GeomTypedAttribute<int>::clear(uint64_t a1)
{
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (*(a1 + 16) == 4)
  {
    *(a1 + 40) = 0;
    ++*(a1 + 48);
    return 1;
  }

  return 0;
}

void *re::internal::GeomTypedAttribute<int>::copyValuesHelper(void *result, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v8 = result;
  v39 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (a3)
    {
      v9 = result[5];
      v10 = a3;
      while (1)
      {
        v12 = *a4++;
        v11 = v12;
        if (v9 <= v12)
        {
          break;
        }

        v5 = *a5;
        v6 = *(a2 + 40);
        if (v6 <= v5)
        {
          goto LABEL_18;
        }

        *(*(a2 + 56) + 4 * v5) = *(result[7] + 4 * v11);
        ++a5;
        if (!--v10)
        {
          return result;
        }
      }

      v25 = 0;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v13 = MEMORY[0x1E69E9C10];
      v26 = 136315906;
      v27 = "operator[]";
      v28 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      v29 = 797;
      v30 = 2048;
      v31 = v11;
      v32 = 2048;
      v33 = v9;
      _os_log_send_and_compose_impl(v14, &v25, &v34, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
      _os_crash_msg();
      __break(1u);
LABEL_18:
      v25 = 0;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v15 = MEMORY[0x1E69E9C10];
      v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v26 = 136315906;
      v27 = "operator[]";
      v28 = 1024;
      if (v16)
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      v29 = 789;
      v30 = 2048;
      v31 = v5;
      v32 = 2048;
      v33 = v6;
      _os_log_send_and_compose_impl(v17, &v25, &v34, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
      _os_crash_msg();
      __break(1u);
      goto LABEL_22;
    }
  }

  else
  {
    result = (*(*result + 16))(result, a2, a3, 0, a5);
    if (result)
    {
      v11 = 0;
      v9 = v8[5];
      while (v9 != v11)
      {
        v5 = *(a2 + 40);
        if (v5 <= v11)
        {
          goto LABEL_26;
        }

        *(*(a2 + 56) + 4 * v11) = *(v8[7] + 4 * v11);
        if (result == ++v11)
        {
          return result;
        }
      }

LABEL_22:
      v25 = 0;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v18 = MEMORY[0x1E69E9C10];
      v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v26 = 136315906;
      v27 = "operator[]";
      v28 = 1024;
      if (v19)
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      v29 = 797;
      v30 = 2048;
      v31 = v9;
      v32 = 2048;
      v33 = v9;
      _os_log_send_and_compose_impl(v20, &v25, &v34, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
      _os_crash_msg();
      __break(1u);
LABEL_26:
      v25 = 0;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v21 = MEMORY[0x1E69E9C10];
      v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v26 = 136315906;
      v27 = "operator[]";
      v28 = 1024;
      if (v22)
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      v29 = 789;
      v30 = 2048;
      v31 = v11;
      v32 = 2048;
      v33 = v5;
      _os_log_send_and_compose_impl(v23, &v25, &v34, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
      _os_crash_msg();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<int>::reorderHelper(uint64_t result, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = *(result + 40);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 16);
    v7 = *(a2 + 32);
    do
    {
      if (v6 <= v4)
      {
        goto LABEL_29;
      }

      if (v5 != *(v7 + 4 * v4))
      {
        v2 = v5;
        if (v6 <= v5)
        {
LABEL_24:
          v4 = v2;
LABEL_25:
          v26 = 0;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v35 = 0u;
          v16 = MEMORY[0x1E69E9C10];
          v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v27 = 136315906;
          v28 = "operator[]";
          v29 = 1024;
          if (v17)
          {
            v18 = 3;
          }

          else
          {
            v18 = 2;
          }

          v30 = 789;
          v31 = 2048;
          v32 = v4;
          v33 = 2048;
          v34 = v6;
          _os_log_send_and_compose_impl(v18, &v26, &v35, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
          _os_crash_msg();
          __break(1u);
LABEL_29:
          v26 = 0;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v35 = 0u;
          v19 = MEMORY[0x1E69E9C10];
          v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v27 = 136315906;
          v28 = "operator[]";
          v29 = 1024;
          if (v20)
          {
            v21 = 3;
          }

          else
          {
            v21 = 2;
          }

          v30 = 789;
          v31 = 2048;
          v32 = v4;
          v33 = 2048;
          v34 = v6;
          _os_log_send_and_compose_impl(v21, &v26, &v35, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
          _os_crash_msg();
          __break(1u);
LABEL_33:
          v26 = 0;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v35 = 0u;
          v22 = MEMORY[0x1E69E9C10];
          v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v27 = 136315906;
          v28 = "operator[]";
          v29 = 1024;
          if (v23)
          {
            v24 = 3;
          }

          else
          {
            v24 = 2;
          }

          v30 = 789;
          v31 = 2048;
          v32 = v2;
          v33 = 2048;
          v34 = v3;
          _os_log_send_and_compose_impl(v24, &v26, &v35, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
          _os_crash_msg();
          __break(1u);
        }

        v8 = *(result + 56);
        v9 = *(v8 + 4 * v4);
        v10 = v5;
        while (1)
        {
          v4 = *(v7 + 4 * v2);
          if (v5 == v4)
          {
            break;
          }

          if (v3 <= v4)
          {
            v26 = 0;
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v35 = 0u;
            v11 = MEMORY[0x1E69E9C10];
            v27 = 136315906;
            v28 = "operator[]";
            v29 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v12 = 3;
            }

            else
            {
              v12 = 2;
            }

            v30 = 789;
            v31 = 2048;
            v32 = v4;
            v33 = 2048;
            v34 = v3;
            _os_log_send_and_compose_impl(v12, &v26, &v35, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
            _os_crash_msg();
            __break(1u);
LABEL_20:
            v26 = 0;
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v35 = 0u;
            v13 = MEMORY[0x1E69E9C10];
            v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v27 = 136315906;
            v28 = "operator[]";
            v29 = 1024;
            if (v14)
            {
              v15 = 3;
            }

            else
            {
              v15 = 2;
            }

            v30 = 789;
            v31 = 2048;
            v32 = v2;
            v33 = 2048;
            v34 = v3;
            _os_log_send_and_compose_impl(v15, &v26, &v35, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
            _os_crash_msg();
            __break(1u);
            goto LABEL_24;
          }

          if (v3 <= v2)
          {
            goto LABEL_20;
          }

          *(v8 + 4 * v2) = *(v8 + 4 * v4);
          *(v7 + 4 * v2) = v10;
          v2 = v4;
          v10 = v4;
          if (v6 <= v4)
          {
            goto LABEL_25;
          }
        }

        if (v3 <= v2)
        {
          goto LABEL_33;
        }

        *(v8 + 4 * v2) = v9;
        *(v7 + 4 * v2) = v10;
      }

      v4 = ++v5;
    }

    while (v3 > v5);
  }

  return result;
}

BOOL re::internal::GeomTypedAttribute<int>::areValuesAtIndexEqualHelper(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(a1 + 40);
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

    v17 = 797;
    v18 = 2048;
    v19 = v4;
    v20 = 2048;
    v21 = v5;
    _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
LABEL_8:
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

    v17 = 797;
    v18 = 2048;
    v19 = v3;
    v20 = 2048;
    v21 = v5;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v3 = a3;
  if (v5 <= a3)
  {
    goto LABEL_8;
  }

  return *(*(a1 + 56) + 4 * a2) == *(*(a1 + 56) + 4 * a3);
}

void *re::internal::GeomTypedAttribute<int>::reserveInternal(void *result, unsigned int a2)
{
  if (result[4] < a2)
  {
    return re::DynamicArray<int>::setCapacity(result + 3, a2);
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<int>::clearInternal(uint64_t result)
{
  *(result + 40) = 0;
  ++*(result + 48);
  return result;
}

void re::internal::GeomTypedAttribute<unsigned char>::~GeomTypedAttribute(re::GeomAttribute *a1)
{
  *a1 = &unk_1F5D02498;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D02498;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedAttribute<unsigned char>::resize(_BYTE *a1, unsigned int a2)
{
  if ((*(*a1 + 16))(a1) == a2)
  {
    return 1;
  }

  if (a1[16] == 4)
  {
    re::DynamicArray<BOOL>::resize((a1 + 24), a2);
    return 1;
  }

  return 0;
}

uint64_t re::internal::GeomTypedAttribute<unsigned char>::clear(uint64_t a1)
{
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (*(a1 + 16) == 4)
  {
    *(a1 + 40) = 0;
    ++*(a1 + 48);
    return 1;
  }

  return 0;
}

void *re::internal::GeomTypedAttribute<unsigned char>::copyValuesHelper(void *result, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v7 = result;
  v38 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (a3)
    {
      v8 = a3;
      while (1)
      {
        v10 = *a4++;
        v9 = v10;
        v11 = result[5];
        if (v11 <= v10)
        {
          break;
        }

        v11 = *a5;
        v5 = *(a2 + 40);
        if (v5 <= v11)
        {
          goto LABEL_18;
        }

        *(*(a2 + 56) + v11) = *(result[7] + v9);
        ++a5;
        if (!--v8)
        {
          return result;
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
      v30 = v9;
      v31 = 2048;
      v32 = v11;
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
      v30 = v11;
      v31 = 2048;
      v32 = v5;
      _os_log_send_and_compose_impl(v16, &v24, &v33, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
      _os_crash_msg();
      __break(1u);
      goto LABEL_22;
    }
  }

  else
  {
    result = (*(*result + 16))(result, a2, a3, 0, a5);
    if (result)
    {
      v9 = 0;
      while (1)
      {
        v11 = v7[5];
        if (v11 <= v9)
        {
          break;
        }

        v11 = *(a2 + 40);
        if (v11 <= v9)
        {
          goto LABEL_26;
        }

        *(*(a2 + 56) + v9) = *(v7[7] + v9);
        if (result == ++v9)
        {
          return result;
        }
      }

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
      v30 = v9;
      v31 = 2048;
      v32 = v11;
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

      v28 = 789;
      v29 = 2048;
      v30 = v9;
      v31 = 2048;
      v32 = v11;
      _os_log_send_and_compose_impl(v22, &v24, &v33, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
      _os_crash_msg();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<unsigned char>::reorderHelper(uint64_t result, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = *(result + 40);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(a2 + 16);
    do
    {
      if (v5 <= v3)
      {
        goto LABEL_34;
      }

      v6 = *(a2 + 32);
      if (v4 != *(v6 + 4 * v3))
      {
        v5 = *(result + 40);
        if (v5 <= v3)
        {
          goto LABEL_38;
        }

        v7 = *(*(result + 56) + v3);
        v3 = v4;
        v8 = v4;
        while (1)
        {
          v5 = *(v6 + 4 * v3);
          if (v4 == v5)
          {
            break;
          }

          v9 = *(result + 40);
          if (v9 <= v5)
          {
            v34 = 0;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            v10 = MEMORY[0x1E69E9C10];
            v35 = 136315906;
            v36 = "operator[]";
            v37 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v11 = 3;
            }

            else
            {
              v11 = 2;
            }

            v38 = 789;
            v39 = 2048;
            v40 = v5;
            v41 = 2048;
            v42 = v9;
            _os_log_send_and_compose_impl(v11, &v34, &v43, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
            _os_crash_msg();
            __break(1u);
LABEL_22:
            v34 = 0;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            v12 = MEMORY[0x1E69E9C10];
            v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v35 = 136315906;
            v36 = "operator[]";
            v37 = 1024;
            if (v13)
            {
              v14 = 3;
            }

            else
            {
              v14 = 2;
            }

            v38 = 789;
            v39 = 2048;
            v40 = v3;
            v41 = 2048;
            v42 = v9;
            _os_log_send_and_compose_impl(v14, &v34, &v43, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
            _os_crash_msg();
            __break(1u);
LABEL_26:
            v34 = 0;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            v15 = MEMORY[0x1E69E9C10];
            v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v35 = 136315906;
            v36 = "operator[]";
            v37 = 1024;
            if (v16)
            {
              v17 = 3;
            }

            else
            {
              v17 = 2;
            }

            v38 = 789;
            v39 = 2048;
            v40 = v3;
            v41 = 2048;
            v42 = v9;
            _os_log_send_and_compose_impl(v17, &v34, &v43, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
            _os_crash_msg();
            __break(1u);
LABEL_30:
            v34 = 0;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            v18 = MEMORY[0x1E69E9C10];
            v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v35 = 136315906;
            v36 = "operator[]";
            v37 = 1024;
            if (v19)
            {
              v20 = 3;
            }

            else
            {
              v20 = 2;
            }

            v38 = 789;
            v39 = 2048;
            v40 = v5;
            v41 = 2048;
            v42 = v9;
            _os_log_send_and_compose_impl(v20, &v34, &v43, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
            _os_crash_msg();
            __break(1u);
LABEL_34:
            v34 = 0;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            v21 = MEMORY[0x1E69E9C10];
            v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v35 = 136315906;
            v36 = "operator[]";
            v37 = 1024;
            if (v22)
            {
              v23 = 3;
            }

            else
            {
              v23 = 2;
            }

            v38 = 789;
            v39 = 2048;
            v40 = v3;
            v41 = 2048;
            v42 = v5;
            _os_log_send_and_compose_impl(v23, &v34, &v43, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
            _os_crash_msg();
            __break(1u);
LABEL_38:
            v34 = 0;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            v24 = MEMORY[0x1E69E9C10];
            v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v35 = 136315906;
            v36 = "operator[]";
            v37 = 1024;
            if (v25)
            {
              v26 = 3;
            }

            else
            {
              v26 = 2;
            }

            v38 = 789;
            v39 = 2048;
            v40 = v3;
            v41 = 2048;
            v42 = v5;
            _os_log_send_and_compose_impl(v26, &v34, &v43, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
            _os_crash_msg();
            __break(1u);
LABEL_42:
            v34 = 0;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            v27 = MEMORY[0x1E69E9C10];
            v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v35 = 136315906;
            v36 = "operator[]";
            v37 = 1024;
            if (v28)
            {
              v29 = 3;
            }

            else
            {
              v29 = 2;
            }

            v38 = 789;
            v39 = 2048;
            v40 = v3;
            v41 = 2048;
            v42 = v5;
            _os_log_send_and_compose_impl(v29, &v34, &v43, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
            _os_crash_msg();
            __break(1u);
            goto LABEL_46;
          }

          if (v9 <= v3)
          {
            goto LABEL_22;
          }

          *(*(result + 56) + v3) = *(*(result + 56) + v5);
          v9 = *(a2 + 16);
          if (v9 <= v3)
          {
            goto LABEL_26;
          }

          v6 = *(a2 + 32);
          *(v6 + 4 * v3) = v8;
          v3 = v5;
          v8 = v5;
          if (v9 <= v5)
          {
            goto LABEL_30;
          }
        }

        v5 = *(result + 40);
        if (v5 <= v3)
        {
          goto LABEL_42;
        }

        *(*(result + 56) + v3) = v7;
        v5 = *(a2 + 16);
        if (v5 <= v3)
        {
LABEL_46:
          v34 = 0;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v43 = 0u;
          v30 = MEMORY[0x1E69E9C10];
          v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v35 = 136315906;
          v36 = "operator[]";
          v37 = 1024;
          if (v31)
          {
            v32 = 3;
          }

          else
          {
            v32 = 2;
          }

          v38 = 789;
          v39 = 2048;
          v40 = v3;
          v41 = 2048;
          v42 = v5;
          _os_log_send_and_compose_impl(v32, &v34, &v43, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
          _os_crash_msg();
          __break(1u);
        }

        *(*(a2 + 32) + 4 * v3) = v8;
      }

      v3 = ++v4;
    }

    while (v2 > v4);
  }

  return result;
}

BOOL re::internal::GeomTypedAttribute<unsigned char>::areValuesAtIndexEqualHelper(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(a1 + 40);
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

    v17 = 797;
    v18 = 2048;
    v19 = v4;
    v20 = 2048;
    v21 = v5;
    _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
LABEL_8:
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

    v17 = 797;
    v18 = 2048;
    v19 = v3;
    v20 = 2048;
    v21 = v5;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v3 = a3;
  if (v5 <= a3)
  {
    goto LABEL_8;
  }

  return *(*(a1 + 56) + a2) == *(*(a1 + 56) + a3);
}

void *re::internal::GeomTypedAttribute<unsigned char>::reserveInternal(void *result, unsigned int a2)
{
  if (result[4] < a2)
  {
    return re::DynamicArray<BOOL>::setCapacity(result + 3, a2);
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<unsigned char>::clearInternal(uint64_t result)
{
  *(result + 40) = 0;
  ++*(result + 48);
  return result;
}

void re::internal::GeomTypedAttribute<unsigned short>::~GeomTypedAttribute(re::GeomAttribute *a1)
{
  *a1 = &unk_1F5D02528;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D02528;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedAttribute<unsigned short>::resize(_BYTE *a1, unsigned int a2)
{
  if ((*(*a1 + 16))(a1) == a2)
  {
    return 1;
  }

  if (a1[16] == 4)
  {
    re::DynamicArray<unsigned short>::resize((a1 + 24), a2);
    return 1;
  }

  return 0;
}

uint64_t re::internal::GeomTypedAttribute<unsigned short>::clear(uint64_t a1)
{
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (*(a1 + 16) == 4)
  {
    *(a1 + 40) = 0;
    ++*(a1 + 48);
    return 1;
  }

  return 0;
}

void *re::internal::GeomTypedAttribute<unsigned short>::copyValuesHelper(void *result, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v8 = result;
  v39 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (a3)
    {
      v9 = result[5];
      v10 = a3;
      while (1)
      {
        v12 = *a4++;
        v11 = v12;
        if (v9 <= v12)
        {
          break;
        }

        v5 = *a5;
        v6 = *(a2 + 40);
        if (v6 <= v5)
        {
          goto LABEL_18;
        }

        *(*(a2 + 56) + 2 * v5) = *(result[7] + 2 * v11);
        ++a5;
        if (!--v10)
        {
          return result;
        }
      }

      v25 = 0;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v13 = MEMORY[0x1E69E9C10];
      v26 = 136315906;
      v27 = "operator[]";
      v28 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      v29 = 797;
      v30 = 2048;
      v31 = v11;
      v32 = 2048;
      v33 = v9;
      _os_log_send_and_compose_impl(v14, &v25, &v34, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
      _os_crash_msg();
      __break(1u);
LABEL_18:
      v25 = 0;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v15 = MEMORY[0x1E69E9C10];
      v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v26 = 136315906;
      v27 = "operator[]";
      v28 = 1024;
      if (v16)
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      v29 = 789;
      v30 = 2048;
      v31 = v5;
      v32 = 2048;
      v33 = v6;
      _os_log_send_and_compose_impl(v17, &v25, &v34, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
      _os_crash_msg();
      __break(1u);
      goto LABEL_22;
    }
  }

  else
  {
    result = (*(*result + 16))(result, a2, a3, 0, a5);
    if (result)
    {
      v11 = 0;
      v9 = v8[5];
      while (v9 != v11)
      {
        v5 = *(a2 + 40);
        if (v5 <= v11)
        {
          goto LABEL_26;
        }

        *(*(a2 + 56) + 2 * v11) = *(v8[7] + 2 * v11);
        if (result == ++v11)
        {
          return result;
        }
      }

LABEL_22:
      v25 = 0;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v18 = MEMORY[0x1E69E9C10];
      v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v26 = 136315906;
      v27 = "operator[]";
      v28 = 1024;
      if (v19)
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      v29 = 797;
      v30 = 2048;
      v31 = v9;
      v32 = 2048;
      v33 = v9;
      _os_log_send_and_compose_impl(v20, &v25, &v34, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
      _os_crash_msg();
      __break(1u);
LABEL_26:
      v25 = 0;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v21 = MEMORY[0x1E69E9C10];
      v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v26 = 136315906;
      v27 = "operator[]";
      v28 = 1024;
      if (v22)
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      v29 = 789;
      v30 = 2048;
      v31 = v11;
      v32 = 2048;
      v33 = v5;
      _os_log_send_and_compose_impl(v23, &v25, &v34, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
      _os_crash_msg();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<unsigned short>::reorderHelper(uint64_t result, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = *(result + 40);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 16);
    v7 = *(a2 + 32);
    do
    {
      if (v6 <= v4)
      {
        goto LABEL_29;
      }

      if (v5 != *(v7 + 4 * v4))
      {
        v2 = v5;
        if (v6 <= v5)
        {
LABEL_24:
          v4 = v2;
LABEL_25:
          v26 = 0;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v35 = 0u;
          v16 = MEMORY[0x1E69E9C10];
          v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v27 = 136315906;
          v28 = "operator[]";
          v29 = 1024;
          if (v17)
          {
            v18 = 3;
          }

          else
          {
            v18 = 2;
          }

          v30 = 789;
          v31 = 2048;
          v32 = v4;
          v33 = 2048;
          v34 = v6;
          _os_log_send_and_compose_impl(v18, &v26, &v35, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
          _os_crash_msg();
          __break(1u);
LABEL_29:
          v26 = 0;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v35 = 0u;
          v19 = MEMORY[0x1E69E9C10];
          v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v27 = 136315906;
          v28 = "operator[]";
          v29 = 1024;
          if (v20)
          {
            v21 = 3;
          }

          else
          {
            v21 = 2;
          }

          v30 = 789;
          v31 = 2048;
          v32 = v4;
          v33 = 2048;
          v34 = v6;
          _os_log_send_and_compose_impl(v21, &v26, &v35, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
          _os_crash_msg();
          __break(1u);
LABEL_33:
          v26 = 0;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v35 = 0u;
          v22 = MEMORY[0x1E69E9C10];
          v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v27 = 136315906;
          v28 = "operator[]";
          v29 = 1024;
          if (v23)
          {
            v24 = 3;
          }

          else
          {
            v24 = 2;
          }

          v30 = 789;
          v31 = 2048;
          v32 = v2;
          v33 = 2048;
          v34 = v3;
          _os_log_send_and_compose_impl(v24, &v26, &v35, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
          _os_crash_msg();
          __break(1u);
        }

        v8 = *(result + 56);
        v9 = *(v8 + 2 * v4);
        v10 = v5;
        while (1)
        {
          v4 = *(v7 + 4 * v2);
          if (v5 == v4)
          {
            break;
          }

          if (v3 <= v4)
          {
            v26 = 0;
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v35 = 0u;
            v11 = MEMORY[0x1E69E9C10];
            v27 = 136315906;
            v28 = "operator[]";
            v29 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v12 = 3;
            }

            else
            {
              v12 = 2;
            }

            v30 = 789;
            v31 = 2048;
            v32 = v4;
            v33 = 2048;
            v34 = v3;
            _os_log_send_and_compose_impl(v12, &v26, &v35, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
            _os_crash_msg();
            __break(1u);
LABEL_20:
            v26 = 0;
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v35 = 0u;
            v13 = MEMORY[0x1E69E9C10];
            v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v27 = 136315906;
            v28 = "operator[]";
            v29 = 1024;
            if (v14)
            {
              v15 = 3;
            }

            else
            {
              v15 = 2;
            }

            v30 = 789;
            v31 = 2048;
            v32 = v2;
            v33 = 2048;
            v34 = v3;
            _os_log_send_and_compose_impl(v15, &v26, &v35, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
            _os_crash_msg();
            __break(1u);
            goto LABEL_24;
          }

          if (v3 <= v2)
          {
            goto LABEL_20;
          }

          *(v8 + 2 * v2) = *(v8 + 2 * v4);
          *(v7 + 4 * v2) = v10;
          v2 = v4;
          v10 = v4;
          if (v6 <= v4)
          {
            goto LABEL_25;
          }
        }

        if (v3 <= v2)
        {
          goto LABEL_33;
        }

        *(v8 + 2 * v2) = v9;
        *(v7 + 4 * v2) = v10;
      }

      v4 = ++v5;
    }

    while (v3 > v5);
  }

  return result;
}

BOOL re::internal::GeomTypedAttribute<unsigned short>::areValuesAtIndexEqualHelper(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(a1 + 40);
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

    v17 = 797;
    v18 = 2048;
    v19 = v4;
    v20 = 2048;
    v21 = v5;
    _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
LABEL_8:
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

    v17 = 797;
    v18 = 2048;
    v19 = v3;
    v20 = 2048;
    v21 = v5;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v3 = a3;
  if (v5 <= a3)
  {
    goto LABEL_8;
  }

  return *(*(a1 + 56) + 2 * a2) == *(*(a1 + 56) + 2 * a3);
}

void *re::internal::GeomTypedAttribute<unsigned short>::reserveInternal(void *result, unsigned int a2)
{
  if (result[4] < a2)
  {
    return re::DynamicArray<unsigned short>::setCapacity(result + 3, a2);
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<unsigned short>::clearInternal(uint64_t result)
{
  *(result + 40) = 0;
  ++*(result + 48);
  return result;
}

void re::internal::GeomTypedAttribute<unsigned int>::~GeomTypedAttribute(re::GeomAttribute *a1)
{
  *a1 = &unk_1F5D025B8;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D025B8;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedAttribute<unsigned int>::resize(_BYTE *a1, unsigned int a2)
{
  if ((*(*a1 + 16))(a1) == a2)
  {
    return 1;
  }

  if (a1[16] == 4)
  {
    re::DynamicArray<float>::resize((a1 + 24), a2);
    return 1;
  }

  return 0;
}

uint64_t re::internal::GeomTypedAttribute<unsigned int>::clear(uint64_t a1)
{
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (*(a1 + 16) == 4)
  {
    *(a1 + 40) = 0;
    ++*(a1 + 48);
    return 1;
  }

  return 0;
}

void *re::internal::GeomTypedAttribute<unsigned int>::copyValuesHelper(void *result, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v8 = result;
  v39 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (a3)
    {
      v9 = result[5];
      v10 = a3;
      while (1)
      {
        v12 = *a4++;
        v11 = v12;
        if (v9 <= v12)
        {
          break;
        }

        v5 = *a5;
        v6 = *(a2 + 40);
        if (v6 <= v5)
        {
          goto LABEL_18;
        }

        *(*(a2 + 56) + 4 * v5) = *(result[7] + 4 * v11);
        ++a5;
        if (!--v10)
        {
          return result;
        }
      }

      v25 = 0;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v13 = MEMORY[0x1E69E9C10];
      v26 = 136315906;
      v27 = "operator[]";
      v28 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      v29 = 797;
      v30 = 2048;
      v31 = v11;
      v32 = 2048;
      v33 = v9;
      _os_log_send_and_compose_impl(v14, &v25, &v34, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
      _os_crash_msg();
      __break(1u);
LABEL_18:
      v25 = 0;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v15 = MEMORY[0x1E69E9C10];
      v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v26 = 136315906;
      v27 = "operator[]";
      v28 = 1024;
      if (v16)
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      v29 = 789;
      v30 = 2048;
      v31 = v5;
      v32 = 2048;
      v33 = v6;
      _os_log_send_and_compose_impl(v17, &v25, &v34, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
      _os_crash_msg();
      __break(1u);
      goto LABEL_22;
    }
  }

  else
  {
    result = (*(*result + 16))(result, a2, a3, 0, a5);
    if (result)
    {
      v11 = 0;
      v9 = v8[5];
      while (v9 != v11)
      {
        v5 = *(a2 + 40);
        if (v5 <= v11)
        {
          goto LABEL_26;
        }

        *(*(a2 + 56) + 4 * v11) = *(v8[7] + 4 * v11);
        if (result == ++v11)
        {
          return result;
        }
      }

LABEL_22:
      v25 = 0;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v18 = MEMORY[0x1E69E9C10];
      v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v26 = 136315906;
      v27 = "operator[]";
      v28 = 1024;
      if (v19)
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      v29 = 797;
      v30 = 2048;
      v31 = v9;
      v32 = 2048;
      v33 = v9;
      _os_log_send_and_compose_impl(v20, &v25, &v34, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
      _os_crash_msg();
      __break(1u);
LABEL_26:
      v25 = 0;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v21 = MEMORY[0x1E69E9C10];
      v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v26 = 136315906;
      v27 = "operator[]";
      v28 = 1024;
      if (v22)
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      v29 = 789;
      v30 = 2048;
      v31 = v11;
      v32 = 2048;
      v33 = v5;
      _os_log_send_and_compose_impl(v23, &v25, &v34, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
      _os_crash_msg();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<unsigned int>::reorderHelper(uint64_t result, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = *(result + 40);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 16);
    v7 = *(a2 + 32);
    do
    {
      if (v6 <= v4)
      {
        goto LABEL_29;
      }

      if (v5 != *(v7 + 4 * v4))
      {
        v2 = v5;
        if (v6 <= v5)
        {
LABEL_24:
          v4 = v2;
LABEL_25:
          v26 = 0;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v35 = 0u;
          v16 = MEMORY[0x1E69E9C10];
          v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v27 = 136315906;
          v28 = "operator[]";
          v29 = 1024;
          if (v17)
          {
            v18 = 3;
          }

          else
          {
            v18 = 2;
          }

          v30 = 789;
          v31 = 2048;
          v32 = v4;
          v33 = 2048;
          v34 = v6;
          _os_log_send_and_compose_impl(v18, &v26, &v35, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
          _os_crash_msg();
          __break(1u);
LABEL_29:
          v26 = 0;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v35 = 0u;
          v19 = MEMORY[0x1E69E9C10];
          v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v27 = 136315906;
          v28 = "operator[]";
          v29 = 1024;
          if (v20)
          {
            v21 = 3;
          }

          else
          {
            v21 = 2;
          }

          v30 = 789;
          v31 = 2048;
          v32 = v4;
          v33 = 2048;
          v34 = v6;
          _os_log_send_and_compose_impl(v21, &v26, &v35, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
          _os_crash_msg();
          __break(1u);
LABEL_33:
          v26 = 0;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v35 = 0u;
          v22 = MEMORY[0x1E69E9C10];
          v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v27 = 136315906;
          v28 = "operator[]";
          v29 = 1024;
          if (v23)
          {
            v24 = 3;
          }

          else
          {
            v24 = 2;
          }

          v30 = 789;
          v31 = 2048;
          v32 = v2;
          v33 = 2048;
          v34 = v3;
          _os_log_send_and_compose_impl(v24, &v26, &v35, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
          _os_crash_msg();
          __break(1u);
        }

        v8 = *(result + 56);
        v9 = *(v8 + 4 * v4);
        v10 = v5;
        while (1)
        {
          v4 = *(v7 + 4 * v2);
          if (v5 == v4)
          {
            break;
          }

          if (v3 <= v4)
          {
            v26 = 0;
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v35 = 0u;
            v11 = MEMORY[0x1E69E9C10];
            v27 = 136315906;
            v28 = "operator[]";
            v29 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v12 = 3;
            }

            else
            {
              v12 = 2;
            }

            v30 = 789;
            v31 = 2048;
            v32 = v4;
            v33 = 2048;
            v34 = v3;
            _os_log_send_and_compose_impl(v12, &v26, &v35, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
            _os_crash_msg();
            __break(1u);
LABEL_20:
            v26 = 0;
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v35 = 0u;
            v13 = MEMORY[0x1E69E9C10];
            v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v27 = 136315906;
            v28 = "operator[]";
            v29 = 1024;
            if (v14)
            {
              v15 = 3;
            }

            else
            {
              v15 = 2;
            }

            v30 = 789;
            v31 = 2048;
            v32 = v2;
            v33 = 2048;
            v34 = v3;
            _os_log_send_and_compose_impl(v15, &v26, &v35, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
            _os_crash_msg();
            __break(1u);
            goto LABEL_24;
          }

          if (v3 <= v2)
          {
            goto LABEL_20;
          }

          *(v8 + 4 * v2) = *(v8 + 4 * v4);
          *(v7 + 4 * v2) = v10;
          v2 = v4;
          v10 = v4;
          if (v6 <= v4)
          {
            goto LABEL_25;
          }
        }

        if (v3 <= v2)
        {
          goto LABEL_33;
        }

        *(v8 + 4 * v2) = v9;
        *(v7 + 4 * v2) = v10;
      }

      v4 = ++v5;
    }

    while (v3 > v5);
  }

  return result;
}

BOOL re::internal::GeomTypedAttribute<unsigned int>::areValuesAtIndexEqualHelper(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(a1 + 40);
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

    v17 = 797;
    v18 = 2048;
    v19 = v4;
    v20 = 2048;
    v21 = v5;
    _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
LABEL_8:
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

    v17 = 797;
    v18 = 2048;
    v19 = v3;
    v20 = 2048;
    v21 = v5;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v3 = a3;
  if (v5 <= a3)
  {
    goto LABEL_8;
  }

  return *(*(a1 + 56) + 4 * a2) == *(*(a1 + 56) + 4 * a3);
}

void *re::internal::GeomTypedAttribute<unsigned int>::reserveInternal(void *result, unsigned int a2)
{
  if (result[4] < a2)
  {
    return re::DynamicArray<int>::setCapacity(result + 3, a2);
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<unsigned int>::clearInternal(uint64_t result)
{
  *(result + 40) = 0;
  ++*(result + 48);
  return result;
}

void re::internal::GeomTypedAttribute<float>::~GeomTypedAttribute(re::GeomAttribute *a1)
{
  *a1 = &unk_1F5D02648;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D02648;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedAttribute<float>::resize(_BYTE *a1, unsigned int a2)
{
  if ((*(*a1 + 16))(a1) == a2)
  {
    return 1;
  }

  if (a1[16] == 4)
  {
    re::DynamicArray<float>::resize((a1 + 24), a2);
    return 1;
  }

  return 0;
}

uint64_t re::internal::GeomTypedAttribute<float>::clear(uint64_t a1)
{
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (*(a1 + 16) == 4)
  {
    *(a1 + 40) = 0;
    ++*(a1 + 48);
    return 1;
  }

  return 0;
}

float re::internal::GeomTypedAttribute<float>::copyValuesHelper(void *a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (a3)
    {
      v9 = a1[5];
      v10 = a3;
      while (1)
      {
        v12 = *a4++;
        v11 = v12;
        if (v9 <= v12)
        {
          break;
        }

        v5 = *a5;
        v6 = *(a2 + 40);
        if (v6 <= v5)
        {
          goto LABEL_18;
        }

        result = *(a1[7] + 4 * v11);
        *(*(a2 + 56) + 4 * v5) = result;
        ++a5;
        if (!--v10)
        {
          return result;
        }
      }

      v27 = 0;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      v15 = MEMORY[0x1E69E9C10];
      v28 = 136315906;
      v29 = "operator[]";
      v30 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      v31 = 797;
      v32 = 2048;
      v33 = v11;
      v34 = 2048;
      v35 = v9;
      _os_log_send_and_compose_impl(v16, &v27, &v36, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v26);
      _os_crash_msg();
      __break(1u);
LABEL_18:
      v27 = 0;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      v17 = MEMORY[0x1E69E9C10];
      v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v28 = 136315906;
      v29 = "operator[]";
      v30 = 1024;
      if (v18)
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      v31 = 789;
      v32 = 2048;
      v33 = v5;
      v34 = 2048;
      v35 = v6;
      _os_log_send_and_compose_impl(v19, &v27, &v36, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v26);
      _os_crash_msg();
      __break(1u);
      goto LABEL_22;
    }
  }

  else
  {
    v14 = (*(*a1 + 16))(a1, a2, a3, 0, a5);
    if (v14)
    {
      v11 = 0;
      v9 = a1[5];
      while (v9 != v11)
      {
        v5 = *(a2 + 40);
        if (v5 <= v11)
        {
          goto LABEL_26;
        }

        result = *(a1[7] + 4 * v11);
        *(*(a2 + 56) + 4 * v11++) = result;
        if (v14 == v11)
        {
          return result;
        }
      }

LABEL_22:
      v27 = 0;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      v20 = MEMORY[0x1E69E9C10];
      v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v28 = 136315906;
      v29 = "operator[]";
      v30 = 1024;
      if (v21)
      {
        v22 = 3;
      }

      else
      {
        v22 = 2;
      }

      v31 = 797;
      v32 = 2048;
      v33 = v9;
      v34 = 2048;
      v35 = v9;
      _os_log_send_and_compose_impl(v22, &v27, &v36, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v26);
      _os_crash_msg();
      __break(1u);
LABEL_26:
      v27 = 0;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      v23 = MEMORY[0x1E69E9C10];
      v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v28 = 136315906;
      v29 = "operator[]";
      v30 = 1024;
      if (v24)
      {
        v25 = 3;
      }

      else
      {
        v25 = 2;
      }

      v31 = 789;
      v32 = 2048;
      v33 = v11;
      v34 = 2048;
      v35 = v5;
      _os_log_send_and_compose_impl(v25, &v27, &v36, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v26);
      _os_crash_msg();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<float>::reorderHelper(uint64_t result, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = *(result + 40);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 16);
    v7 = *(a2 + 32);
    do
    {
      if (v6 <= v4)
      {
        goto LABEL_29;
      }

      if (v5 != *(v7 + 4 * v4))
      {
        v2 = v5;
        if (v6 <= v5)
        {
LABEL_24:
          v4 = v2;
LABEL_25:
          v26 = 0;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v35 = 0u;
          v16 = MEMORY[0x1E69E9C10];
          v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v27 = 136315906;
          v28 = "operator[]";
          v29 = 1024;
          if (v17)
          {
            v18 = 3;
          }

          else
          {
            v18 = 2;
          }

          v30 = 789;
          v31 = 2048;
          v32 = v4;
          v33 = 2048;
          v34 = v6;
          _os_log_send_and_compose_impl(v18, &v26, &v35, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
          _os_crash_msg();
          __break(1u);
LABEL_29:
          v26 = 0;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v35 = 0u;
          v19 = MEMORY[0x1E69E9C10];
          v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v27 = 136315906;
          v28 = "operator[]";
          v29 = 1024;
          if (v20)
          {
            v21 = 3;
          }

          else
          {
            v21 = 2;
          }

          v30 = 789;
          v31 = 2048;
          v32 = v4;
          v33 = 2048;
          v34 = v6;
          _os_log_send_and_compose_impl(v21, &v26, &v35, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
          _os_crash_msg();
          __break(1u);
LABEL_33:
          v26 = 0;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v35 = 0u;
          v22 = MEMORY[0x1E69E9C10];
          v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v27 = 136315906;
          v28 = "operator[]";
          v29 = 1024;
          if (v23)
          {
            v24 = 3;
          }

          else
          {
            v24 = 2;
          }

          v30 = 789;
          v31 = 2048;
          v32 = v2;
          v33 = 2048;
          v34 = v3;
          _os_log_send_and_compose_impl(v24, &v26, &v35, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
          _os_crash_msg();
          __break(1u);
        }

        v8 = *(result + 56);
        v9 = *(v8 + 4 * v4);
        v10 = v5;
        while (1)
        {
          v4 = *(v7 + 4 * v2);
          if (v5 == v4)
          {
            break;
          }

          if (v3 <= v4)
          {
            v26 = 0;
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v35 = 0u;
            v11 = MEMORY[0x1E69E9C10];
            v27 = 136315906;
            v28 = "operator[]";
            v29 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v12 = 3;
            }

            else
            {
              v12 = 2;
            }

            v30 = 789;
            v31 = 2048;
            v32 = v4;
            v33 = 2048;
            v34 = v3;
            _os_log_send_and_compose_impl(v12, &v26, &v35, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
            _os_crash_msg();
            __break(1u);
LABEL_20:
            v26 = 0;
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v35 = 0u;
            v13 = MEMORY[0x1E69E9C10];
            v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v27 = 136315906;
            v28 = "operator[]";
            v29 = 1024;
            if (v14)
            {
              v15 = 3;
            }

            else
            {
              v15 = 2;
            }

            v30 = 789;
            v31 = 2048;
            v32 = v2;
            v33 = 2048;
            v34 = v3;
            _os_log_send_and_compose_impl(v15, &v26, &v35, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
            _os_crash_msg();
            __break(1u);
            goto LABEL_24;
          }

          if (v3 <= v2)
          {
            goto LABEL_20;
          }

          *(v8 + 4 * v2) = *(v8 + 4 * v4);
          *(v7 + 4 * v2) = v10;
          v2 = v4;
          v10 = v4;
          if (v6 <= v4)
          {
            goto LABEL_25;
          }
        }

        if (v3 <= v2)
        {
          goto LABEL_33;
        }

        *(v8 + 4 * v2) = v9;
        *(v7 + 4 * v2) = v10;
      }

      v4 = ++v5;
    }

    while (v3 > v5);
  }

  return result;
}

BOOL re::internal::GeomTypedAttribute<float>::isEqualHelper(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 56);
  v4 = *(a2 + 56);
  v5 = 4 * v2 - 4;
  do
  {
    v6 = *v3++;
    v7 = v6;
    v8 = *v4++;
    result = v7 == v8;
    v10 = v7 != v8 || v5 == 0;
    v5 -= 4;
  }

  while (!v10);
  return result;
}

BOOL re::internal::GeomTypedAttribute<float>::areValuesAtIndexEqualHelper(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(a1 + 40);
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

    v17 = 797;
    v18 = 2048;
    v19 = v4;
    v20 = 2048;
    v21 = v5;
    _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
LABEL_8:
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

    v17 = 797;
    v18 = 2048;
    v19 = v3;
    v20 = 2048;
    v21 = v5;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v3 = a3;
  if (v5 <= a3)
  {
    goto LABEL_8;
  }

  return *(*(a1 + 56) + 4 * a2) == *(*(a1 + 56) + 4 * a3);
}

void *re::internal::GeomTypedAttribute<float>::reserveInternal(void *result, unsigned int a2)
{
  if (result[4] < a2)
  {
    return re::DynamicArray<int>::setCapacity(result + 3, a2);
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<float>::clearInternal(uint64_t result)
{
  *(result + 40) = 0;
  ++*(result + 48);
  return result;
}

void re::internal::GeomTypedAttribute<double>::~GeomTypedAttribute(re::GeomAttribute *a1)
{
  *a1 = &unk_1F5D026D8;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D026D8;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedAttribute<double>::resize(_BYTE *a1, unsigned int a2)
{
  if ((*(*a1 + 16))(a1) == a2)
  {
    return 1;
  }

  if (a1[16] == 4)
  {
    re::DynamicArray<double>::resize((a1 + 24), a2);
    return 1;
  }

  return 0;
}

uint64_t re::internal::GeomTypedAttribute<double>::clear(uint64_t a1)
{
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (*(a1 + 16) == 4)
  {
    *(a1 + 40) = 0;
    ++*(a1 + 48);
    return 1;
  }

  return 0;
}

double re::internal::GeomTypedAttribute<double>::copyValuesHelper(void *a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (a3)
    {
      v9 = a1[5];
      v10 = a3;
      while (1)
      {
        v12 = *a4++;
        v11 = v12;
        if (v9 <= v12)
        {
          break;
        }

        v5 = *a5;
        v6 = *(a2 + 40);
        if (v6 <= v5)
        {
          goto LABEL_18;
        }

        result = *(a1[7] + 8 * v11);
        *(*(a2 + 56) + 8 * v5) = result;
        ++a5;
        if (!--v10)
        {
          return result;
        }
      }

      v27 = 0;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      v15 = MEMORY[0x1E69E9C10];
      v28 = 136315906;
      v29 = "operator[]";
      v30 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      v31 = 797;
      v32 = 2048;
      v33 = v11;
      v34 = 2048;
      v35 = v9;
      _os_log_send_and_compose_impl(v16, &v27, &v36, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v26);
      _os_crash_msg();
      __break(1u);
LABEL_18:
      v27 = 0;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      v17 = MEMORY[0x1E69E9C10];
      v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v28 = 136315906;
      v29 = "operator[]";
      v30 = 1024;
      if (v18)
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      v31 = 789;
      v32 = 2048;
      v33 = v5;
      v34 = 2048;
      v35 = v6;
      _os_log_send_and_compose_impl(v19, &v27, &v36, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v26);
      _os_crash_msg();
      __break(1u);
      goto LABEL_22;
    }
  }

  else
  {
    v14 = (*(*a1 + 16))(a1, a2, a3, 0, a5);
    if (v14)
    {
      v11 = 0;
      v9 = a1[5];
      while (v9 != v11)
      {
        v5 = *(a2 + 40);
        if (v5 <= v11)
        {
          goto LABEL_26;
        }

        result = *(a1[7] + 8 * v11);
        *(*(a2 + 56) + 8 * v11++) = result;
        if (v14 == v11)
        {
          return result;
        }
      }

LABEL_22:
      v27 = 0;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      v20 = MEMORY[0x1E69E9C10];
      v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v28 = 136315906;
      v29 = "operator[]";
      v30 = 1024;
      if (v21)
      {
        v22 = 3;
      }

      else
      {
        v22 = 2;
      }

      v31 = 797;
      v32 = 2048;
      v33 = v9;
      v34 = 2048;
      v35 = v9;
      _os_log_send_and_compose_impl(v22, &v27, &v36, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v26);
      _os_crash_msg();
      __break(1u);
LABEL_26:
      v27 = 0;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      v23 = MEMORY[0x1E69E9C10];
      v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v28 = 136315906;
      v29 = "operator[]";
      v30 = 1024;
      if (v24)
      {
        v25 = 3;
      }

      else
      {
        v25 = 2;
      }

      v31 = 789;
      v32 = 2048;
      v33 = v11;
      v34 = 2048;
      v35 = v5;
      _os_log_send_and_compose_impl(v25, &v27, &v36, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v26);
      _os_crash_msg();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<double>::reorderHelper(uint64_t result, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = *(result + 40);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 16);
    v7 = *(a2 + 32);
    do
    {
      if (v6 <= v4)
      {
        goto LABEL_29;
      }

      if (v5 != *(v7 + 4 * v4))
      {
        v2 = v5;
        if (v6 <= v5)
        {
LABEL_24:
          v4 = v2;
LABEL_25:
          v26 = 0;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v35 = 0u;
          v16 = MEMORY[0x1E69E9C10];
          v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v27 = 136315906;
          v28 = "operator[]";
          v29 = 1024;
          if (v17)
          {
            v18 = 3;
          }

          else
          {
            v18 = 2;
          }

          v30 = 789;
          v31 = 2048;
          v32 = v4;
          v33 = 2048;
          v34 = v6;
          _os_log_send_and_compose_impl(v18, &v26, &v35, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
          _os_crash_msg();
          __break(1u);
LABEL_29:
          v26 = 0;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v35 = 0u;
          v19 = MEMORY[0x1E69E9C10];
          v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v27 = 136315906;
          v28 = "operator[]";
          v29 = 1024;
          if (v20)
          {
            v21 = 3;
          }

          else
          {
            v21 = 2;
          }

          v30 = 789;
          v31 = 2048;
          v32 = v4;
          v33 = 2048;
          v34 = v6;
          _os_log_send_and_compose_impl(v21, &v26, &v35, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
          _os_crash_msg();
          __break(1u);
LABEL_33:
          v26 = 0;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v35 = 0u;
          v22 = MEMORY[0x1E69E9C10];
          v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v27 = 136315906;
          v28 = "operator[]";
          v29 = 1024;
          if (v23)
          {
            v24 = 3;
          }

          else
          {
            v24 = 2;
          }

          v30 = 789;
          v31 = 2048;
          v32 = v2;
          v33 = 2048;
          v34 = v3;
          _os_log_send_and_compose_impl(v24, &v26, &v35, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
          _os_crash_msg();
          __break(1u);
        }

        v8 = *(result + 56);
        v9 = *(v8 + 8 * v4);
        v10 = v5;
        while (1)
        {
          v4 = *(v7 + 4 * v2);
          if (v5 == v4)
          {
            break;
          }

          if (v3 <= v4)
          {
            v26 = 0;
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v35 = 0u;
            v11 = MEMORY[0x1E69E9C10];
            v27 = 136315906;
            v28 = "operator[]";
            v29 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v12 = 3;
            }

            else
            {
              v12 = 2;
            }

            v30 = 789;
            v31 = 2048;
            v32 = v4;
            v33 = 2048;
            v34 = v3;
            _os_log_send_and_compose_impl(v12, &v26, &v35, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
            _os_crash_msg();
            __break(1u);
LABEL_20:
            v26 = 0;
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v35 = 0u;
            v13 = MEMORY[0x1E69E9C10];
            v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v27 = 136315906;
            v28 = "operator[]";
            v29 = 1024;
            if (v14)
            {
              v15 = 3;
            }

            else
            {
              v15 = 2;
            }

            v30 = 789;
            v31 = 2048;
            v32 = v2;
            v33 = 2048;
            v34 = v3;
            _os_log_send_and_compose_impl(v15, &v26, &v35, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
            _os_crash_msg();
            __break(1u);
            goto LABEL_24;
          }

          if (v3 <= v2)
          {
            goto LABEL_20;
          }

          *(v8 + 8 * v2) = *(v8 + 8 * v4);
          *(v7 + 4 * v2) = v10;
          v2 = v4;
          v10 = v4;
          if (v6 <= v4)
          {
            goto LABEL_25;
          }
        }

        if (v3 <= v2)
        {
          goto LABEL_33;
        }

        *(v8 + 8 * v2) = v9;
        *(v7 + 4 * v2) = v10;
      }

      v4 = ++v5;
    }

    while (v3 > v5);
  }

  return result;
}

BOOL re::internal::GeomTypedAttribute<double>::isEqualHelper(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 56);
  v4 = *(a2 + 56);
  v5 = 8 * v2 - 8;
  do
  {
    v6 = *v3++;
    v7 = v6;
    v8 = *v4++;
    result = v7 == v8;
    v10 = v7 != v8 || v5 == 0;
    v5 -= 8;
  }

  while (!v10);
  return result;
}

BOOL re::internal::GeomTypedAttribute<double>::areValuesAtIndexEqualHelper(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(a1 + 40);
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

    v17 = 797;
    v18 = 2048;
    v19 = v4;
    v20 = 2048;
    v21 = v5;
    _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
LABEL_8:
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

    v17 = 797;
    v18 = 2048;
    v19 = v3;
    v20 = 2048;
    v21 = v5;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v3 = a3;
  if (v5 <= a3)
  {
    goto LABEL_8;
  }

  return *(*(a1 + 56) + 8 * a2) == *(*(a1 + 56) + 8 * a3);
}

void *re::internal::GeomTypedAttribute<double>::reserveInternal(void *result, unsigned int a2)
{
  if (result[4] < a2)
  {
    return re::DynamicArray<float *>::setCapacity(result + 3, a2);
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<double>::clearInternal(uint64_t result)
{
  *(result + 40) = 0;
  ++*(result + 48);
  return result;
}

void re::internal::GeomTypedAttribute<re::Vector2<float>>::~GeomTypedAttribute(re::GeomAttribute *a1)
{
  *a1 = &unk_1F5D02768;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D02768;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedAttribute<re::Vector2<float>>::resize(_BYTE *a1, unsigned int a2)
{
  if ((*(*a1 + 16))(a1) == a2)
  {
    return 1;
  }

  if (a1[16] == 4)
  {
    re::DynamicArray<unsigned long>::resize((a1 + 24), a2);
    return 1;
  }

  return 0;
}

uint64_t re::internal::GeomTypedAttribute<re::Vector2<float>>::clear(uint64_t a1)
{
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (*(a1 + 16) == 4)
  {
    *(a1 + 40) = 0;
    ++*(a1 + 48);
    return 1;
  }

  return 0;
}

void *re::internal::GeomTypedAttribute<re::Vector2<float>>::copyValuesHelper(void *result, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v7 = result;
  v38 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (a3)
    {
      v8 = a3;
      while (1)
      {
        v10 = *a4++;
        v9 = v10;
        v11 = result[5];
        if (v11 <= v10)
        {
          break;
        }

        v11 = *a5;
        v5 = *(a2 + 40);
        if (v5 <= v11)
        {
          goto LABEL_18;
        }

        *(*(a2 + 56) + 8 * v11) = *(result[7] + 8 * v9);
        ++a5;
        if (!--v8)
        {
          return result;
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
      v30 = v9;
      v31 = 2048;
      v32 = v11;
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
      v30 = v11;
      v31 = 2048;
      v32 = v5;
      _os_log_send_and_compose_impl(v16, &v24, &v33, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
      _os_crash_msg();
      __break(1u);
      goto LABEL_22;
    }
  }

  else
  {
    result = (*(*result + 16))(result, a2, a3, 0, a5);
    if (result)
    {
      v9 = 0;
      while (1)
      {
        v11 = v7[5];
        if (v11 <= v9)
        {
          break;
        }

        v11 = *(a2 + 40);
        if (v11 <= v9)
        {
          goto LABEL_26;
        }

        *(*(a2 + 56) + 8 * v9) = *(v7[7] + 8 * v9);
        if (result == ++v9)
        {
          return result;
        }
      }

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
      v30 = v9;
      v31 = 2048;
      v32 = v11;
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

      v28 = 789;
      v29 = 2048;
      v30 = v9;
      v31 = 2048;
      v32 = v11;
      _os_log_send_and_compose_impl(v22, &v24, &v33, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
      _os_crash_msg();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<re::Vector2<float>>::reorderHelper(uint64_t result, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = *(result + 40);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(a2 + 16);
    do
    {
      if (v5 <= v3)
      {
        goto LABEL_34;
      }

      v6 = *(a2 + 32);
      if (v4 != *(v6 + 4 * v3))
      {
        v5 = *(result + 40);
        if (v5 <= v3)
        {
          goto LABEL_38;
        }

        v7 = *(*(result + 56) + 8 * v3);
        v3 = v4;
        v8 = v4;
        while (1)
        {
          v5 = *(v6 + 4 * v3);
          if (v4 == v5)
          {
            break;
          }

          v9 = *(result + 40);
          if (v9 <= v5)
          {
            v34 = 0;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            v10 = MEMORY[0x1E69E9C10];
            v35 = 136315906;
            v36 = "operator[]";
            v37 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v11 = 3;
            }

            else
            {
              v11 = 2;
            }

            v38 = 789;
            v39 = 2048;
            v40 = v5;
            v41 = 2048;
            v42 = v9;
            _os_log_send_and_compose_impl(v11, &v34, &v43, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
            _os_crash_msg();
            __break(1u);
LABEL_22:
            v34 = 0;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            v12 = MEMORY[0x1E69E9C10];
            v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v35 = 136315906;
            v36 = "operator[]";
            v37 = 1024;
            if (v13)
            {
              v14 = 3;
            }

            else
            {
              v14 = 2;
            }

            v38 = 789;
            v39 = 2048;
            v40 = v3;
            v41 = 2048;
            v42 = v9;
            _os_log_send_and_compose_impl(v14, &v34, &v43, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
            _os_crash_msg();
            __break(1u);
LABEL_26:
            v34 = 0;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            v15 = MEMORY[0x1E69E9C10];
            v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v35 = 136315906;
            v36 = "operator[]";
            v37 = 1024;
            if (v16)
            {
              v17 = 3;
            }

            else
            {
              v17 = 2;
            }

            v38 = 789;
            v39 = 2048;
            v40 = v3;
            v41 = 2048;
            v42 = v9;
            _os_log_send_and_compose_impl(v17, &v34, &v43, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
            _os_crash_msg();
            __break(1u);
LABEL_30:
            v34 = 0;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            v18 = MEMORY[0x1E69E9C10];
            v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v35 = 136315906;
            v36 = "operator[]";
            v37 = 1024;
            if (v19)
            {
              v20 = 3;
            }

            else
            {
              v20 = 2;
            }

            v38 = 789;
            v39 = 2048;
            v40 = v5;
            v41 = 2048;
            v42 = v9;
            _os_log_send_and_compose_impl(v20, &v34, &v43, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
            _os_crash_msg();
            __break(1u);
LABEL_34:
            v34 = 0;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            v21 = MEMORY[0x1E69E9C10];
            v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v35 = 136315906;
            v36 = "operator[]";
            v37 = 1024;
            if (v22)
            {
              v23 = 3;
            }

            else
            {
              v23 = 2;
            }

            v38 = 789;
            v39 = 2048;
            v40 = v3;
            v41 = 2048;
            v42 = v5;
            _os_log_send_and_compose_impl(v23, &v34, &v43, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
            _os_crash_msg();
            __break(1u);
LABEL_38:
            v34 = 0;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            v24 = MEMORY[0x1E69E9C10];
            v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v35 = 136315906;
            v36 = "operator[]";
            v37 = 1024;
            if (v25)
            {
              v26 = 3;
            }

            else
            {
              v26 = 2;
            }

            v38 = 789;
            v39 = 2048;
            v40 = v3;
            v41 = 2048;
            v42 = v5;
            _os_log_send_and_compose_impl(v26, &v34, &v43, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
            _os_crash_msg();
            __break(1u);
LABEL_42:
            v34 = 0;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            v27 = MEMORY[0x1E69E9C10];
            v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v35 = 136315906;
            v36 = "operator[]";
            v37 = 1024;
            if (v28)
            {
              v29 = 3;
            }

            else
            {
              v29 = 2;
            }

            v38 = 789;
            v39 = 2048;
            v40 = v3;
            v41 = 2048;
            v42 = v5;
            _os_log_send_and_compose_impl(v29, &v34, &v43, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
            _os_crash_msg();
            __break(1u);
            goto LABEL_46;
          }

          if (v9 <= v3)
          {
            goto LABEL_22;
          }

          *(*(result + 56) + 8 * v3) = *(*(result + 56) + 8 * v5);
          v9 = *(a2 + 16);
          if (v9 <= v3)
          {
            goto LABEL_26;
          }

          v6 = *(a2 + 32);
          *(v6 + 4 * v3) = v8;
          v3 = v5;
          v8 = v5;
          if (v9 <= v5)
          {
            goto LABEL_30;
          }
        }

        v5 = *(result + 40);
        if (v5 <= v3)
        {
          goto LABEL_42;
        }

        *(*(result + 56) + 8 * v3) = v7;
        v5 = *(a2 + 16);
        if (v5 <= v3)
        {
LABEL_46:
          v34 = 0;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v43 = 0u;
          v30 = MEMORY[0x1E69E9C10];
          v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v35 = 136315906;
          v36 = "operator[]";
          v37 = 1024;
          if (v31)
          {
            v32 = 3;
          }

          else
          {
            v32 = 2;
          }

          v38 = 789;
          v39 = 2048;
          v40 = v3;
          v41 = 2048;
          v42 = v5;
          _os_log_send_and_compose_impl(v32, &v34, &v43, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
          _os_crash_msg();
          __break(1u);
        }

        *(*(a2 + 32) + 4 * v3) = v8;
      }

      v3 = ++v4;
    }

    while (v2 > v4);
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<re::Vector2<float>>::isEqualHelper(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 56);
  v4 = *(a2 + 56);
  v5 = 8 * v2 - 8;
  do
  {
    v6 = *v3++;
    v7 = v6;
    v8 = *v4++;
    v9 = vceq_f32(v7, v8);
    v9.i32[0] = vpmin_u32(v9, v9).u32[0];
    result = v9.i32[0] >> 31;
    if ((v9.i32[0] & 0x80000000) == 0)
    {
      break;
    }

    v11 = v5;
    v5 -= 8;
  }

  while (v11);
  return result;
}

uint64_t re::internal::GeomTypedAttribute<re::Vector2<float>>::areValuesAtIndexEqualHelper(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(a1 + 40);
  if (v5 <= a2)
  {
    v14 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    v8 = MEMORY[0x1E69E9C10];
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v18 = 797;
    v19 = 2048;
    v20 = v4;
    v21 = 2048;
    v22 = v5;
    _os_log_send_and_compose_impl(v9, &v14, &v23, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v14 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    v10 = MEMORY[0x1E69E9C10];
    v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    if (v11)
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v18 = 797;
    v19 = 2048;
    v20 = v3;
    v21 = 2048;
    v22 = v5;
    _os_log_send_and_compose_impl(v12, &v14, &v23, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
  }

  v3 = a3;
  if (v5 <= a3)
  {
    goto LABEL_8;
  }

  v6 = vceq_f32(*(*(a1 + 56) + 8 * a2), *(*(a1 + 56) + 8 * a3));
  return vpmin_u32(v6, v6).u32[0] >> 31;
}

void *re::internal::GeomTypedAttribute<re::Vector2<float>>::reserveInternal(void *result, unsigned int a2)
{
  if (result[4] < a2)
  {
    return re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(result + 3, a2);
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<re::Vector2<float>>::clearInternal(uint64_t result)
{
  *(result + 40) = 0;
  ++*(result + 48);
  return result;
}

void re::internal::GeomTypedAttribute<re::Vector3<float>>::~GeomTypedAttribute(re::GeomAttribute *a1)
{
  *a1 = &unk_1F5D027F8;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D027F8;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedAttribute<re::Vector3<float>>::resize(_BYTE *a1, unsigned int a2)
{
  if ((*(*a1 + 16))(a1) == a2)
  {
    return 1;
  }

  if (a1[16] == 4)
  {
    re::DynamicArray<re::Vector3<float>>::resize((a1 + 24), a2);
    return 1;
  }

  return 0;
}

uint64_t re::internal::GeomTypedAttribute<re::Vector3<float>>::clear(uint64_t a1)
{
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (*(a1 + 16) == 4)
  {
    *(a1 + 40) = 0;
    ++*(a1 + 48);
    return 1;
  }

  return 0;
}

__n128 re::internal::GeomTypedAttribute<re::Vector3<float>>::copyValuesHelper(void *a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (a3)
    {
      v8 = a3;
      while (1)
      {
        v10 = *a4++;
        v9 = v10;
        v11 = a1[5];
        if (v11 <= v10)
        {
          break;
        }

        v11 = *a5;
        v5 = *(a2 + 40);
        if (v5 <= v11)
        {
          goto LABEL_18;
        }

        result = *(a1[7] + 16 * v9);
        *(*(a2 + 56) + 16 * v11) = result;
        ++a5;
        if (!--v8)
        {
          return result;
        }
      }

      v26 = 0;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
      v14 = MEMORY[0x1E69E9C10];
      v27 = 136315906;
      v28 = "operator[]";
      v29 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }

      v30 = 797;
      v31 = 2048;
      v32 = v9;
      v33 = 2048;
      v34 = v11;
      _os_log_send_and_compose_impl(v15, &v26, &v35, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
      _os_crash_msg();
      __break(1u);
LABEL_18:
      v26 = 0;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
      v16 = MEMORY[0x1E69E9C10];
      v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v27 = 136315906;
      v28 = "operator[]";
      v29 = 1024;
      if (v17)
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      v30 = 789;
      v31 = 2048;
      v32 = v11;
      v33 = 2048;
      v34 = v5;
      _os_log_send_and_compose_impl(v18, &v26, &v35, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
      _os_crash_msg();
      __break(1u);
      goto LABEL_22;
    }
  }

  else
  {
    v13 = (*(*a1 + 16))(a1, a2, a3, 0, a5);
    if (v13)
    {
      v9 = 0;
      while (1)
      {
        v11 = a1[5];
        if (v11 <= v9)
        {
          break;
        }

        v11 = *(a2 + 40);
        if (v11 <= v9)
        {
          goto LABEL_26;
        }

        result = *(a1[7] + 16 * v9);
        *(*(a2 + 56) + 16 * v9++) = result;
        if (v9 == v13)
        {
          return result;
        }
      }

LABEL_22:
      v26 = 0;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
      v19 = MEMORY[0x1E69E9C10];
      v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v27 = 136315906;
      v28 = "operator[]";
      v29 = 1024;
      if (v20)
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      v30 = 797;
      v31 = 2048;
      v32 = v9;
      v33 = 2048;
      v34 = v11;
      _os_log_send_and_compose_impl(v21, &v26, &v35, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
      _os_crash_msg();
      __break(1u);
LABEL_26:
      v26 = 0;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
      v22 = MEMORY[0x1E69E9C10];
      v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v27 = 136315906;
      v28 = "operator[]";
      v29 = 1024;
      if (v23)
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }

      v30 = 789;
      v31 = 2048;
      v32 = v9;
      v33 = 2048;
      v34 = v11;
      _os_log_send_and_compose_impl(v24, &v26, &v35, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
      _os_crash_msg();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<re::Vector3<float>>::reorderHelper(uint64_t result, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = *(result + 40);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(a2 + 16);
    do
    {
      if (v5 <= v3)
      {
        goto LABEL_34;
      }

      v6 = *(a2 + 32);
      if (v4 != *(v6 + 4 * v3))
      {
        v5 = *(result + 40);
        if (v5 <= v3)
        {
          goto LABEL_38;
        }

        v32 = *(*(result + 56) + 16 * v3);
        v3 = v4;
        v7 = v4;
        while (1)
        {
          v5 = *(v6 + 4 * v3);
          if (v4 == v5)
          {
            break;
          }

          v8 = *(result + 40);
          if (v8 <= v5)
          {
            v33 = 0;
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v42 = 0u;
            v9 = MEMORY[0x1E69E9C10];
            v34 = 136315906;
            v35 = "operator[]";
            v36 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v10 = 3;
            }

            else
            {
              v10 = 2;
            }

            v37 = 789;
            v38 = 2048;
            v39 = v5;
            v40 = 2048;
            v41 = v8;
            _os_log_send_and_compose_impl(v10, &v33, &v42, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v32, *(&v32 + 1));
            _os_crash_msg();
            __break(1u);
LABEL_22:
            v33 = 0;
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v42 = 0u;
            v11 = MEMORY[0x1E69E9C10];
            v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v34 = 136315906;
            v35 = "operator[]";
            v36 = 1024;
            if (v12)
            {
              v13 = 3;
            }

            else
            {
              v13 = 2;
            }

            v37 = 789;
            v38 = 2048;
            v39 = v3;
            v40 = 2048;
            v41 = v8;
            _os_log_send_and_compose_impl(v13, &v33, &v42, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v32, *(&v32 + 1));
            _os_crash_msg();
            __break(1u);
LABEL_26:
            v33 = 0;
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v42 = 0u;
            v14 = MEMORY[0x1E69E9C10];
            v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v34 = 136315906;
            v35 = "operator[]";
            v36 = 1024;
            if (v15)
            {
              v16 = 3;
            }

            else
            {
              v16 = 2;
            }

            v37 = 789;
            v38 = 2048;
            v39 = v3;
            v40 = 2048;
            v41 = v8;
            _os_log_send_and_compose_impl(v16, &v33, &v42, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v32, *(&v32 + 1));
            _os_crash_msg();
            __break(1u);
LABEL_30:
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

            v37 = 789;
            v38 = 2048;
            v39 = v5;
            v40 = 2048;
            v41 = v8;
            _os_log_send_and_compose_impl(v19, &v33, &v42, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v32, *(&v32 + 1));
            _os_crash_msg();
            __break(1u);
LABEL_34:
            *&v32 = 0;
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

            v37 = 789;
            v38 = 2048;
            v39 = v3;
            v40 = 2048;
            v41 = v5;
            _os_log_send_and_compose_impl(v22, &v32, &v42, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38);
            _os_crash_msg();
            __break(1u);
LABEL_38:
            *&v32 = 0;
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

            v37 = 789;
            v38 = 2048;
            v39 = v3;
            v40 = 2048;
            v41 = v5;
            _os_log_send_and_compose_impl(v25, &v32, &v42, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38);
            _os_crash_msg();
            __break(1u);
LABEL_42:
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

            v37 = 789;
            v38 = 2048;
            v39 = v3;
            v40 = 2048;
            v41 = v5;
            _os_log_send_and_compose_impl(v28, &v33, &v42, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v32, *(&v32 + 1));
            _os_crash_msg();
            __break(1u);
            goto LABEL_46;
          }

          if (v8 <= v3)
          {
            goto LABEL_22;
          }

          *(*(result + 56) + 16 * v3) = *(*(result + 56) + 16 * v5);
          v8 = *(a2 + 16);
          if (v8 <= v3)
          {
            goto LABEL_26;
          }

          v6 = *(a2 + 32);
          *(v6 + 4 * v3) = v7;
          v3 = v5;
          v7 = v5;
          if (v8 <= v5)
          {
            goto LABEL_30;
          }
        }

        v5 = *(result + 40);
        if (v5 <= v3)
        {
          goto LABEL_42;
        }

        *(*(result + 56) + 16 * v3) = v32;
        v5 = *(a2 + 16);
        if (v5 <= v3)
        {
LABEL_46:
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

          v37 = 789;
          v38 = 2048;
          v39 = v3;
          v40 = 2048;
          v41 = v5;
          _os_log_send_and_compose_impl(v31, &v33, &v42, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v32, *(&v32 + 1));
          _os_crash_msg();
          __break(1u);
        }

        *(*(a2 + 32) + 4 * v3) = v7;
      }

      v3 = ++v4;
    }

    while (v2 > v4);
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<re::Vector3<float>>::isEqualHelper(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 56);
  v4 = *(a2 + 56);
  v5 = 16 * v2 - 16;
  do
  {
    v6 = *v3++;
    v7 = v6;
    v8 = *v4++;
    v9 = vceqq_f32(v7, v8);
    v9.i32[3] = v9.i32[2];
    v9.i32[0] = vminvq_u32(v9);
    result = v9.i32[0] >> 31;
    if ((v9.i32[0] & 0x80000000) == 0)
    {
      break;
    }

    v11 = v5;
    v5 -= 16;
  }

  while (v11);
  return result;
}

uint64_t re::internal::GeomTypedAttribute<re::Vector3<float>>::areValuesAtIndexEqualHelper(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(a1 + 40);
  if (v5 <= a2)
  {
    v14 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    v8 = MEMORY[0x1E69E9C10];
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v18 = 797;
    v19 = 2048;
    v20 = v4;
    v21 = 2048;
    v22 = v5;
    _os_log_send_and_compose_impl(v9, &v14, &v23, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v14 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    v10 = MEMORY[0x1E69E9C10];
    v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    if (v11)
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v18 = 797;
    v19 = 2048;
    v20 = v3;
    v21 = 2048;
    v22 = v5;
    _os_log_send_and_compose_impl(v12, &v14, &v23, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
  }

  v3 = a3;
  if (v5 <= a3)
  {
    goto LABEL_8;
  }

  v6 = vceqq_f32(*(*(a1 + 56) + 16 * a2), *(*(a1 + 56) + 16 * a3));
  v6.i32[3] = v6.i32[2];
  return vminvq_u32(v6) >> 31;
}

void *re::internal::GeomTypedAttribute<re::Vector3<float>>::reserveInternal(void *result, unsigned int a2)
{
  if (result[4] < a2)
  {
    return re::DynamicArray<re::Quaternion<float>>::setCapacity(result + 3, a2);
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<re::Vector3<float>>::clearInternal(uint64_t result)
{
  *(result + 40) = 0;
  ++*(result + 48);
  return result;
}

void re::internal::GeomTypedAttribute<re::Vector4<float>>::~GeomTypedAttribute(re::GeomAttribute *a1)
{
  *a1 = &unk_1F5D02888;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D02888;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedAttribute<re::Vector4<float>>::resize(_BYTE *a1, unsigned int a2)
{
  if ((*(*a1 + 16))(a1) == a2)
  {
    return 1;
  }

  if (a1[16] == 4)
  {
    re::DynamicArray<re::Vector4<float>>::resize((a1 + 24), a2);
    return 1;
  }

  return 0;
}

uint64_t re::internal::GeomTypedAttribute<re::Vector4<float>>::clear(uint64_t a1)
{
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (*(a1 + 16) == 4)
  {
    *(a1 + 40) = 0;
    ++*(a1 + 48);
    return 1;
  }

  return 0;
}

__n128 re::internal::GeomTypedAttribute<re::Vector4<float>>::copyValuesHelper(void *a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (a3)
    {
      v8 = a3;
      while (1)
      {
        v10 = *a4++;
        v9 = v10;
        v11 = a1[5];
        if (v11 <= v10)
        {
          break;
        }

        v11 = *a5;
        v5 = *(a2 + 40);
        if (v5 <= v11)
        {
          goto LABEL_18;
        }

        result = *(a1[7] + 16 * v9);
        *(*(a2 + 56) + 16 * v11) = result;
        ++a5;
        if (!--v8)
        {
          return result;
        }
      }

      v26 = 0;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
      v14 = MEMORY[0x1E69E9C10];
      v27 = 136315906;
      v28 = "operator[]";
      v29 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }

      v30 = 797;
      v31 = 2048;
      v32 = v9;
      v33 = 2048;
      v34 = v11;
      _os_log_send_and_compose_impl(v15, &v26, &v35, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
      _os_crash_msg();
      __break(1u);
LABEL_18:
      v26 = 0;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
      v16 = MEMORY[0x1E69E9C10];
      v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v27 = 136315906;
      v28 = "operator[]";
      v29 = 1024;
      if (v17)
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      v30 = 789;
      v31 = 2048;
      v32 = v11;
      v33 = 2048;
      v34 = v5;
      _os_log_send_and_compose_impl(v18, &v26, &v35, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
      _os_crash_msg();
      __break(1u);
      goto LABEL_22;
    }
  }

  else
  {
    v13 = (*(*a1 + 16))(a1, a2, a3, 0, a5);
    if (v13)
    {
      v9 = 0;
      while (1)
      {
        v11 = a1[5];
        if (v11 <= v9)
        {
          break;
        }

        v11 = *(a2 + 40);
        if (v11 <= v9)
        {
          goto LABEL_26;
        }

        result = *(a1[7] + 16 * v9);
        *(*(a2 + 56) + 16 * v9++) = result;
        if (v9 == v13)
        {
          return result;
        }
      }

LABEL_22:
      v26 = 0;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
      v19 = MEMORY[0x1E69E9C10];
      v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v27 = 136315906;
      v28 = "operator[]";
      v29 = 1024;
      if (v20)
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      v30 = 797;
      v31 = 2048;
      v32 = v9;
      v33 = 2048;
      v34 = v11;
      _os_log_send_and_compose_impl(v21, &v26, &v35, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
      _os_crash_msg();
      __break(1u);
LABEL_26:
      v26 = 0;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
      v22 = MEMORY[0x1E69E9C10];
      v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v27 = 136315906;
      v28 = "operator[]";
      v29 = 1024;
      if (v23)
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }

      v30 = 789;
      v31 = 2048;
      v32 = v9;
      v33 = 2048;
      v34 = v11;
      _os_log_send_and_compose_impl(v24, &v26, &v35, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
      _os_crash_msg();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<re::Vector4<float>>::reorderHelper(uint64_t result, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = *(result + 40);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(a2 + 16);
    do
    {
      if (v5 <= v3)
      {
        goto LABEL_34;
      }

      v6 = *(a2 + 32);
      if (v4 != *(v6 + 4 * v3))
      {
        v5 = *(result + 40);
        if (v5 <= v3)
        {
          goto LABEL_38;
        }

        v7 = *(*(result + 56) + 16 * v3);
        v3 = v4;
        v8 = v4;
        while (1)
        {
          v5 = *(v6 + 4 * v3);
          if (v4 == v5)
          {
            break;
          }

          v9 = *(result + 40);
          if (v9 <= v5)
          {
            v34 = 0;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            v10 = MEMORY[0x1E69E9C10];
            v35 = 136315906;
            v36 = "operator[]";
            v37 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v11 = 3;
            }

            else
            {
              v11 = 2;
            }

            v38 = 789;
            v39 = 2048;
            v40 = v5;
            v41 = 2048;
            v42 = v9;
            _os_log_send_and_compose_impl(v11, &v34, &v43, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
            _os_crash_msg();
            __break(1u);
LABEL_22:
            v34 = 0;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            v12 = MEMORY[0x1E69E9C10];
            v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v35 = 136315906;
            v36 = "operator[]";
            v37 = 1024;
            if (v13)
            {
              v14 = 3;
            }

            else
            {
              v14 = 2;
            }

            v38 = 789;
            v39 = 2048;
            v40 = v3;
            v41 = 2048;
            v42 = v9;
            _os_log_send_and_compose_impl(v14, &v34, &v43, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
            _os_crash_msg();
            __break(1u);
LABEL_26:
            v34 = 0;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            v15 = MEMORY[0x1E69E9C10];
            v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v35 = 136315906;
            v36 = "operator[]";
            v37 = 1024;
            if (v16)
            {
              v17 = 3;
            }

            else
            {
              v17 = 2;
            }

            v38 = 789;
            v39 = 2048;
            v40 = v3;
            v41 = 2048;
            v42 = v9;
            _os_log_send_and_compose_impl(v17, &v34, &v43, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
            _os_crash_msg();
            __break(1u);
LABEL_30:
            v34 = 0;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            v18 = MEMORY[0x1E69E9C10];
            v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v35 = 136315906;
            v36 = "operator[]";
            v37 = 1024;
            if (v19)
            {
              v20 = 3;
            }

            else
            {
              v20 = 2;
            }

            v38 = 789;
            v39 = 2048;
            v40 = v5;
            v41 = 2048;
            v42 = v9;
            _os_log_send_and_compose_impl(v20, &v34, &v43, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
            _os_crash_msg();
            __break(1u);
LABEL_34:
            v34 = 0;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            v21 = MEMORY[0x1E69E9C10];
            v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v35 = 136315906;
            v36 = "operator[]";
            v37 = 1024;
            if (v22)
            {
              v23 = 3;
            }

            else
            {
              v23 = 2;
            }

            v38 = 789;
            v39 = 2048;
            v40 = v3;
            v41 = 2048;
            v42 = v5;
            _os_log_send_and_compose_impl(v23, &v34, &v43, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
            _os_crash_msg();
            __break(1u);
LABEL_38:
            v34 = 0;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            v24 = MEMORY[0x1E69E9C10];
            v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v35 = 136315906;
            v36 = "operator[]";
            v37 = 1024;
            if (v25)
            {
              v26 = 3;
            }

            else
            {
              v26 = 2;
            }

            v38 = 789;
            v39 = 2048;
            v40 = v3;
            v41 = 2048;
            v42 = v5;
            _os_log_send_and_compose_impl(v26, &v34, &v43, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
            _os_crash_msg();
            __break(1u);
LABEL_42:
            v34 = 0;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            v27 = MEMORY[0x1E69E9C10];
            v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v35 = 136315906;
            v36 = "operator[]";
            v37 = 1024;
            if (v28)
            {
              v29 = 3;
            }

            else
            {
              v29 = 2;
            }

            v38 = 789;
            v39 = 2048;
            v40 = v3;
            v41 = 2048;
            v42 = v5;
            _os_log_send_and_compose_impl(v29, &v34, &v43, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
            _os_crash_msg();
            __break(1u);
            goto LABEL_46;
          }

          if (v9 <= v3)
          {
            goto LABEL_22;
          }

          *(*(result + 56) + 16 * v3) = *(*(result + 56) + 16 * v5);
          v9 = *(a2 + 16);
          if (v9 <= v3)
          {
            goto LABEL_26;
          }

          v6 = *(a2 + 32);
          *(v6 + 4 * v3) = v8;
          v3 = v5;
          v8 = v5;
          if (v9 <= v5)
          {
            goto LABEL_30;
          }
        }

        v5 = *(result + 40);
        if (v5 <= v3)
        {
          goto LABEL_42;
        }

        *(*(result + 56) + 16 * v3) = v7;
        v5 = *(a2 + 16);
        if (v5 <= v3)
        {
LABEL_46:
          v34 = 0;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v43 = 0u;
          v30 = MEMORY[0x1E69E9C10];
          v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v35 = 136315906;
          v36 = "operator[]";
          v37 = 1024;
          if (v31)
          {
            v32 = 3;
          }

          else
          {
            v32 = 2;
          }

          v38 = 789;
          v39 = 2048;
          v40 = v3;
          v41 = 2048;
          v42 = v5;
          _os_log_send_and_compose_impl(v32, &v34, &v43, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
          _os_crash_msg();
          __break(1u);
        }

        *(*(a2 + 32) + 4 * v3) = v8;
      }

      v3 = ++v4;
    }

    while (v2 > v4);
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<re::Vector4<float>>::isEqualHelper(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 56);
  v4 = *(a2 + 56);
  v5 = 16 * v2 - 16;
  do
  {
    v6 = *v3++;
    v7 = v6;
    v8 = *v4++;
    v7.i32[0] = vminvq_u32(vceqq_f32(v7, v8));
    result = v7.i32[0] >> 31;
    if ((v7.i32[0] & 0x80000000) == 0)
    {
      break;
    }

    v10 = v5;
    v5 -= 16;
  }

  while (v10);
  return result;
}

uint64_t re::internal::GeomTypedAttribute<re::Vector4<float>>::areValuesAtIndexEqualHelper(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(a1 + 40);
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

    v17 = 797;
    v18 = 2048;
    v19 = v4;
    v20 = 2048;
    v21 = v5;
    _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
LABEL_8:
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

    v17 = 797;
    v18 = 2048;
    v19 = v3;
    v20 = 2048;
    v21 = v5;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v3 = a3;
  if (v5 <= a3)
  {
    goto LABEL_8;
  }

  return vminvq_u32(vceqq_f32(*(*(a1 + 56) + 16 * a2), *(*(a1 + 56) + 16 * a3))) >> 31;
}

void *re::internal::GeomTypedAttribute<re::Vector4<float>>::reserveInternal(void *result, unsigned int a2)
{
  if (result[4] < a2)
  {
    return re::DynamicArray<re::Vector4<float>>::setCapacity(result + 3, a2);
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<re::Vector4<float>>::clearInternal(uint64_t result)
{
  *(result + 40) = 0;
  ++*(result + 48);
  return result;
}

void re::internal::GeomTypedFaceVaryingAttribute<signed char>::~GeomTypedFaceVaryingAttribute(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D02918;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D022E8;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D02918;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D022E8;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<signed char>::isEqualHelper(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40) || memcmp(*(a1 + 56), *(a2 + 56), v2) || *(a1 + 64) != *(a2 + 64) || !re::DynamicArray<re::GeomCell4>::operator==(a1 + 72, a2 + 72) || !re::GeomIndexMap::operator==(a1 + 112, a2 + 112))
  {
    return 0;
  }

  return re::GeomIndexMap::operator==(a1 + 192, a2 + 192);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<signed char>::updateSubmesh(unsigned int *a1, uint64_t *a2)
{
  re::internal::GeomAttributeFaceVaryingSubmesh::operator=(a1 + 8, a2);
  v3 = a1[16];
  v4 = *(*a1 + 80);

  return v4(a1, v3);
}

uint64_t re::internal::GeomAttributeFaceVaryingSubmesh::GeomAttributeFaceVaryingSubmesh(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 40) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v5;
  ++*(a2 + 32);
  ++*(a1 + 32);
  *a2 = 0;
  *(a2 + 24) = 0;
  ++*(a2 + 32);
  re::GeomIndexMap::GeomIndexMap(a1 + 48, a2 + 48);
  re::GeomIndexMap::GeomIndexMap(a1 + 128, a2 + 128);
  return a1;
}

uint64_t re::GeomIndexMap::operator==(uint64_t a1, uint64_t a2)
{
  v38 = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    return 1;
  }

  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v2 = *(a1 + 12);
  v3 = *(a2 + 12);
  if (v2 != v3)
  {
    v5 = 0;
    v7 = v2 != 1 && v3 != 1;
    v8 = v3 == 2 || v2 == 2;
    if (!v8 || v7)
    {
      return v5;
    }

    if (v2 == 1)
    {
      v9 = a1 + 16;
    }

    else
    {
      v9 = a2 + 16;
    }

    if (v2 == 2)
    {
      v10 = (a1 + 16);
    }

    else
    {
      v10 = (a2 + 16);
    }

    v11 = *(v9 + 16);
    v27 = 0;
    if (v11)
    {
      v12 = 0;
      while (1)
      {
        v13 = *(v9 + 16);
        if (v13 <= v12)
        {
          v28 = 0;
          memset(v37, 0, sizeof(v37));
          v20 = MEMORY[0x1E69E9C10];
          v21 = v12;
          v22 = v13;
          v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v29 = 136315906;
          v30 = "operator[]";
          v31 = 1024;
          if (v23)
          {
            v24 = 3;
          }

          else
          {
            v24 = 2;
          }

          v32 = 797;
          v33 = 2048;
          v34 = v21;
          v35 = 2048;
          v36 = v22;
          _os_log_send_and_compose_impl(v24, &v28, v37, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v29, 38, v25, v26);
          _os_crash_msg();
          __break(1u);
        }

        v14 = *(*(v9 + 32) + 4 * v12);
        v15 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(v10, &v27);
        if (v15 == -1)
        {
          if (v14 != -1)
          {
            return 0;
          }
        }

        else if (v14 == -1 || *(v10[1] + 8 * v15 + 4) != v14)
        {
          return 0;
        }

        v12 = v27 + 1;
        v27 = v12;
        if (v12 >= v11)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  if (v2 == 2)
  {
    v18 = a1 + 16;
    v19 = (a2 + 16);

    return re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::operator==(v18, v19);
  }

  if (v2 == 1)
  {
    v16 = *(a2 + 32);
    if (*(a1 + 32) == v16)
    {
      return memcmp(*(a1 + 48), *(a2 + 48), 4 * v16) == 0;
    }

    return 0;
  }

  if (!*(a1 + 12))
  {
    return *(a1 + 16) == *(a2 + 16);
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "operator==", 748);
  result = _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
  return result;
}

uint64_t re::DynamicArray<re::GeomCell4>::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2)
    {
      return 1;
    }

    v3 = *(a1 + 32);
    v4 = &v3[4 * v2];
    for (i = *(a2 + 32); *v3 == *i; i += 4)
    {
      v6 = 1;
      while (v6 != 4)
      {
        v7 = v3[v6];
        v8 = i[v6++];
        if (v7 != v8)
        {
          if ((v6 - 2) < 3)
          {
            return 0;
          }

          break;
        }
      }

      v3 += 4;
      if (v3 == v4)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::operator==(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v17 = v2;
  v18 = v3;
  if (*(a1 + 40) == a2[5] && *(a1 + 48) == a2[6])
  {
    v15[0] = a1;
    v5 = *(a1 + 16);
    if (v5 < 0x10)
    {
      return 1;
    }

    v6 = 0;
    v7 = *a1;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v15[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        return 1;
      }
    }

    v11 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v12 = v11 - v6;
    v16 = v11 - v6;
    if (v11 + 1 == v6)
    {
      return 1;
    }

    while (1)
    {
      v14 = *(*(v15[0] + 8) + 8 * v12);
      v13 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(a2, &v14);
      if (v13 == -1 || *(a2[1] + 8 * v13 + 4) != HIDWORD(v14))
      {
        break;
      }

      re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v15);
      v12 = v16;
      if (v16 == -1)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t *re::internal::GeomAttributeFaceVaryingSubmesh::operator=(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 + 16;
  *a1 = *a2;
  v5 = a1 + 16;
  re::DynamicArray<re::GeomCell4>::operator=(a1 + 1, a2 + 1);
  re::GeomIndexMap::operator=((a1 + 6), (a2 + 6));
  re::GeomIndexMap::operator=(v5, v4);
  return a1;
}

void re::internal::GeomTypedFaceVaryingAttribute<short>::~GeomTypedFaceVaryingAttribute(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D029A8;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D02378;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D029A8;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D02378;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<short>::isEqualHelper(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40) || memcmp(*(a1 + 56), *(a2 + 56), 2 * v2) || *(a1 + 64) != *(a2 + 64) || !re::DynamicArray<re::GeomCell4>::operator==(a1 + 72, a2 + 72) || !re::GeomIndexMap::operator==(a1 + 112, a2 + 112))
  {
    return 0;
  }

  return re::GeomIndexMap::operator==(a1 + 192, a2 + 192);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<short>::updateSubmesh(uint64_t *a1, uint64_t *a2)
{
  re::internal::GeomAttributeFaceVaryingSubmesh::operator=(a1 + 8, a2);
  v3 = *(a1 + 16);
  v4 = *(*a1 + 80);

  return v4(a1, v3);
}

void re::internal::GeomTypedFaceVaryingAttribute<int>::~GeomTypedFaceVaryingAttribute(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D02A38;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D02408;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D02A38;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D02408;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<int>::isEqualHelper(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40) || memcmp(*(a1 + 56), *(a2 + 56), 4 * v2) || *(a1 + 64) != *(a2 + 64) || !re::DynamicArray<re::GeomCell4>::operator==(a1 + 72, a2 + 72) || !re::GeomIndexMap::operator==(a1 + 112, a2 + 112))
  {
    return 0;
  }

  return re::GeomIndexMap::operator==(a1 + 192, a2 + 192);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<int>::updateSubmesh(uint64_t *a1, uint64_t *a2)
{
  re::internal::GeomAttributeFaceVaryingSubmesh::operator=(a1 + 8, a2);
  v3 = *(a1 + 16);
  v4 = *(*a1 + 80);

  return v4(a1, v3);
}

void re::internal::GeomTypedFaceVaryingAttribute<unsigned char>::~GeomTypedFaceVaryingAttribute(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D02AC8;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D02498;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D02AC8;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D02498;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<unsigned char>::isEqualHelper(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40) || memcmp(*(a1 + 56), *(a2 + 56), v2) || *(a1 + 64) != *(a2 + 64) || !re::DynamicArray<re::GeomCell4>::operator==(a1 + 72, a2 + 72) || !re::GeomIndexMap::operator==(a1 + 112, a2 + 112))
  {
    return 0;
  }

  return re::GeomIndexMap::operator==(a1 + 192, a2 + 192);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<unsigned char>::updateSubmesh(uint64_t *a1, uint64_t *a2)
{
  re::internal::GeomAttributeFaceVaryingSubmesh::operator=(a1 + 8, a2);
  v3 = *(a1 + 16);
  v4 = *(*a1 + 80);

  return v4(a1, v3);
}

void re::internal::GeomTypedFaceVaryingAttribute<unsigned short>::~GeomTypedFaceVaryingAttribute(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D02B58;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D02528;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D02B58;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D02528;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<unsigned short>::isEqualHelper(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40) || memcmp(*(a1 + 56), *(a2 + 56), 2 * v2) || *(a1 + 64) != *(a2 + 64) || !re::DynamicArray<re::GeomCell4>::operator==(a1 + 72, a2 + 72) || !re::GeomIndexMap::operator==(a1 + 112, a2 + 112))
  {
    return 0;
  }

  return re::GeomIndexMap::operator==(a1 + 192, a2 + 192);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<unsigned short>::updateSubmesh(uint64_t *a1, uint64_t *a2)
{
  re::internal::GeomAttributeFaceVaryingSubmesh::operator=(a1 + 8, a2);
  v3 = *(a1 + 16);
  v4 = *(*a1 + 80);

  return v4(a1, v3);
}

void re::internal::GeomTypedFaceVaryingAttribute<unsigned int>::~GeomTypedFaceVaryingAttribute(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D02BE8;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D025B8;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D02BE8;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D025B8;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<unsigned int>::isEqualHelper(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40) || memcmp(*(a1 + 56), *(a2 + 56), 4 * v2) || *(a1 + 64) != *(a2 + 64) || !re::DynamicArray<re::GeomCell4>::operator==(a1 + 72, a2 + 72) || !re::GeomIndexMap::operator==(a1 + 112, a2 + 112))
  {
    return 0;
  }

  return re::GeomIndexMap::operator==(a1 + 192, a2 + 192);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<unsigned int>::updateSubmesh(uint64_t *a1, uint64_t *a2)
{
  re::internal::GeomAttributeFaceVaryingSubmesh::operator=(a1 + 8, a2);
  v3 = *(a1 + 16);
  v4 = *(*a1 + 80);

  return v4(a1, v3);
}

void re::internal::GeomTypedFaceVaryingAttribute<float>::~GeomTypedFaceVaryingAttribute(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D02C78;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D02648;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D02C78;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D02648;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<float>::isEqualHelper(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40))
  {
    return 0;
  }

  if (v2)
  {
    v5 = *(a1 + 56);
    v6 = *(a2 + 56);
    v7 = 4 * v2;
    while (*v5 == *v6)
    {
      ++v5;
      ++v6;
      v7 -= 4;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_6:
  if (*(a1 + 64) != *(a2 + 64) || !re::DynamicArray<re::GeomCell4>::operator==(a1 + 72, a2 + 72) || !re::GeomIndexMap::operator==(a1 + 112, a2 + 112))
  {
    return 0;
  }

  return re::GeomIndexMap::operator==(a1 + 192, a2 + 192);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<float>::updateSubmesh(uint64_t *a1, uint64_t *a2)
{
  re::internal::GeomAttributeFaceVaryingSubmesh::operator=(a1 + 8, a2);
  v3 = *(a1 + 16);
  v4 = *(*a1 + 80);

  return v4(a1, v3);
}

void re::internal::GeomTypedFaceVaryingAttribute<double>::~GeomTypedFaceVaryingAttribute(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D02D08;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D026D8;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D02D08;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D026D8;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<double>::isEqualHelper(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40))
  {
    return 0;
  }

  if (v2)
  {
    v5 = *(a1 + 56);
    v6 = *(a2 + 56);
    v7 = 8 * v2;
    while (*v5 == *v6)
    {
      ++v5;
      ++v6;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_6:
  if (*(a1 + 64) != *(a2 + 64) || !re::DynamicArray<re::GeomCell4>::operator==(a1 + 72, a2 + 72) || !re::GeomIndexMap::operator==(a1 + 112, a2 + 112))
  {
    return 0;
  }

  return re::GeomIndexMap::operator==(a1 + 192, a2 + 192);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<double>::updateSubmesh(uint64_t *a1, uint64_t *a2)
{
  re::internal::GeomAttributeFaceVaryingSubmesh::operator=(a1 + 8, a2);
  v3 = *(a1 + 16);
  v4 = *(*a1 + 80);

  return v4(a1, v3);
}

void re::internal::GeomTypedFaceVaryingAttribute<re::Vector2<float>>::~GeomTypedFaceVaryingAttribute(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D02D98;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D02768;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D02D98;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D02768;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<re::Vector2<float>>::isEqualHelper(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40))
  {
    return 0;
  }

  if (v2)
  {
    v5 = *(a1 + 56);
    v6 = *(a2 + 56);
    v7 = 8 * v2;
    do
    {
      v8 = vceq_f32(*v5, *v6);
      if ((vpmin_u32(v8, v8).u32[0] & 0x80000000) == 0)
      {
        return 0;
      }

      ++v5;
      ++v6;
      v7 -= 8;
    }

    while (v7);
  }

  if (*(a1 + 64) != *(a2 + 64) || !re::DynamicArray<re::GeomCell4>::operator==(a1 + 72, a2 + 72) || !re::GeomIndexMap::operator==(a1 + 112, a2 + 112))
  {
    return 0;
  }

  return re::GeomIndexMap::operator==(a1 + 192, a2 + 192);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<re::Vector2<float>>::updateSubmesh(uint64_t *a1, uint64_t *a2)
{
  re::internal::GeomAttributeFaceVaryingSubmesh::operator=(a1 + 8, a2);
  v3 = *(a1 + 16);
  v4 = *(*a1 + 80);

  return v4(a1, v3);
}

void re::internal::GeomTypedFaceVaryingAttribute<re::Vector3<float>>::~GeomTypedFaceVaryingAttribute(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D02E28;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D027F8;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D02E28;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D027F8;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<re::Vector3<float>>::isEqualHelper(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40))
  {
    return 0;
  }

  if (v2)
  {
    v5 = *(a1 + 56);
    v6 = *(a2 + 56);
    v7 = 16 * v2;
    do
    {
      v8 = vceqq_f32(*v5, *v6);
      v8.i32[3] = v8.i32[2];
      if ((vminvq_u32(v8) & 0x80000000) == 0)
      {
        return 0;
      }

      ++v5;
      ++v6;
      v7 -= 16;
    }

    while (v7);
  }

  if (*(a1 + 64) != *(a2 + 64) || !re::DynamicArray<re::GeomCell4>::operator==(a1 + 72, a2 + 72) || !re::GeomIndexMap::operator==(a1 + 112, a2 + 112))
  {
    return 0;
  }

  return re::GeomIndexMap::operator==(a1 + 192, a2 + 192);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<re::Vector3<float>>::updateSubmesh(uint64_t *a1, uint64_t *a2)
{
  re::internal::GeomAttributeFaceVaryingSubmesh::operator=(a1 + 8, a2);
  v3 = *(a1 + 16);
  v4 = *(*a1 + 80);

  return v4(a1, v3);
}

void re::internal::GeomTypedFaceVaryingAttribute<re::Vector4<float>>::~GeomTypedFaceVaryingAttribute(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D02EB8;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D02888;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D02EB8;
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh((a1 + 64), a2);
  *a1 = &unk_1F5D02888;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<re::Vector4<float>>::isEqualHelper(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 != *(a2 + 40))
  {
    return 0;
  }

  if (v2)
  {
    v5 = *(a1 + 56);
    v6 = *(a2 + 56);
    v7 = 16 * v2;
    while ((vminvq_u32(vceqq_f32(*v5, *v6)) & 0x80000000) != 0)
    {
      ++v5;
      ++v6;
      v7 -= 16;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_6:
  if (*(a1 + 64) != *(a2 + 64) || !re::DynamicArray<re::GeomCell4>::operator==(a1 + 72, a2 + 72) || !re::GeomIndexMap::operator==(a1 + 112, a2 + 112))
  {
    return 0;
  }

  return re::GeomIndexMap::operator==(a1 + 192, a2 + 192);
}

uint64_t re::internal::GeomTypedFaceVaryingAttribute<re::Vector4<float>>::updateSubmesh(uint64_t *a1, uint64_t *a2)
{
  re::internal::GeomAttributeFaceVaryingSubmesh::operator=(a1 + 8, a2);
  v3 = *(a1 + 16);
  v4 = *(*a1 + 80);

  return v4(a1, v3);
}

uint64_t re::buildTube(_anonymous_namespace_ *a1, unsigned __int16 *a2)
{
  v335 = *MEMORY[0x1E69E9840];
  LODWORD(v309) = 0;
  v313 = 0;
  v310[1] = 0;
  v311 = 0;
  v312 = 0;
  re::DynamicArray<re::BlendNode>::setCapacity(v310, 1uLL);
  ++v312;
  re::internal::GeomAttributeManager::GeomAttributeManager(v314);
  v4 = *a2;
  if (v4 >= 3 && (v5 = a2[1]) != 0)
  {
    v278 = a1;
    v6 = v5 + 1;
    LODWORD(v309) = 2 * (v4 + 1) * (v5 + 1) + 4 * (v4 + 1);
    v315 = v309;
    if (v316)
    {
      v7 = v317;
      v8 = 8 * v316;
      do
      {
        v9 = *v7++;
        (*(*v9 + 80))(v9, v315);
        v8 -= 8;
      }

      while (v8);
    }

    v10 = 2 * v4 * v6;
    re::DynamicArray<re::GeomCell4>::resize(v310, v10);
    v318 = v10;
    if (v319)
    {
      v11 = v320;
      v12 = 8 * v319;
      do
      {
        v13 = *v11++;
        (*(*v13 + 80))(v13, v318);
        v12 -= 8;
      }

      while (v12);
    }

    re::internal::GeomAttributeManager::addAttribute(v314, "vertexPosition", 1, 7);
    if (*(a2 + 17) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v314, "vertexNormal", 1, 7);
    }

    if (*(a2 + 16) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v314, "vertexUV", 1, 6);
      if (*(a2 + 17) == 1 && (a2[8] & 1) != 0)
      {
        re::internal::GeomAttributeManager::addAttribute(v314, "vertexTangent", 1, 7);
        re::internal::GeomAttributeManager::addAttribute(v314, "vertexBitangent", 1, 7);
      }
    }

    v14 = *a2;
    v15 = a2[1];
    v16 = re::internal::GeomAttributeManager::attributeByName(v314, "vertexPosition");
    v284 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v16);
    v285 = v17;
    if (*(a2 + 17) == 1)
    {
      v21 = re::internal::GeomAttributeManager::attributeByName(v314, "vertexNormal");
      v283 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v21);
      v23 = v22;
    }

    else
    {
      v283 = 0;
      v23 = 0xFFFFFFFFLL;
    }

    v289 = v23;
    v25 = v14 + 1 + (v14 + 1) * v15;
    if (*(a2 + 16) == 1)
    {
      v26 = re::internal::GeomAttributeManager::attributeByName(v314, "vertexUV");
      v282 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v26);
      v286 = 0;
      v27 = 0;
      v29 = v28;
      if (a2[8] & 1) != 0 && (*(a2 + 17))
      {
        v30 = re::internal::GeomAttributeManager::attributeByName(v314, "vertexTangent");
        v31 = re::internal::GeomAttributeManager::attributeByName(v314, "vertexBitangent");
        v286 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v30);
        v33 = v32;
        v281 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v31);
        v301 = v34;
        v288 = v33;
        v27 = 1;
      }

      else
      {
        v288 = 0xFFFFFFFFLL;
        v301 = 0xFFFFFFFFLL;
        v281 = 0;
      }
    }

    else
    {
      v27 = 0;
      v281 = 0;
      v282 = 0;
      v286 = 0;
      v29 = 0xFFFFFFFFLL;
      v288 = 0xFFFFFFFFLL;
      v301 = 0xFFFFFFFFLL;
    }

    v35 = 0;
    v36 = 0;
    LOWORD(v37) = a2[1];
    v280 = v14;
    v38 = v14 + 1;
    v279 = v25;
    v39 = v25;
    do
    {
      v40 = 0;
      v287 = v36;
      *v19.i32 = v37;
      v306 = v35;
      v37 = v39;
      v290 = v281 + 16 * v39;
      v291 = v286 + 16 * v39;
      v298 = v282 + 8 * v39;
      v297 = v283 + 16 * v39;
      v41 = v284 + 16 * v39;
      v293 = v281 + 16 * v35;
      if (v285 >= v35)
      {
        v42 = v285 - v35;
      }

      else
      {
        v42 = 0;
      }

      v43 = v285 >= v39;
      v44 = v285 - v39;
      if (v43)
      {
        v45 = v44;
      }

      else
      {
        v45 = 0;
      }

      v295 = v282 + 8 * v35;
      v296 = v286 + 16 * v35;
      v300 = v283 + 16 * v35;
      v46 = v284 + 16 * v35;
      *&v20 = v36 / *v19.i32;
      v303 = v20;
      do
      {
        v19.i16[0] = *a2;
        *v19.i32 = v40 / v19.u32[0];
        v18.i32[0] = *(a2 + 1);
        v307 = v18.i64[0];
        v308 = v19.i64[0];
        v47 = *(a2 + 3);
        v48 = __sincosf_stret(*v19.i32 * 6.2832);
        v49 = *(a2 + 2);
        v54 = __sincosf_stret((1.0 - *&v308) * 6.2832);
        if (v42 == v40)
        {
          v321 = 0;
          v333 = 0u;
          v334 = 0u;
          v331 = 0u;
          v332 = 0u;
          v330 = 0u;
          v96 = MEMORY[0x1E69E9C10];
          v97 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v323 = "operator[]";
          v324 = 1024;
          v325 = 621;
          if (v97)
          {
            v98 = 3;
          }

          else
          {
            v98 = 2;
          }

          v322 = 136315906;
          v326 = 2048;
          v327 = (v306 + v40);
          v328 = 2048;
          v329 = v285;
          _os_log_send_and_compose_impl(v98, &v321, &v330, 80, &dword_1E1C61000, v96, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
          _os_crash_msg();
          __break(1u);
LABEL_77:
          v321 = 0;
          v333 = 0u;
          v334 = 0u;
          v331 = 0u;
          v332 = 0u;
          v330 = 0u;
          v99 = MEMORY[0x1E69E9C10];
          v100 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v323 = "operator[]";
          v324 = 1024;
          v325 = 621;
          if (v100)
          {
            v101 = 3;
          }

          else
          {
            v101 = 2;
          }

          v322 = 136315906;
          v326 = 2048;
          v327 = (v37 + v40);
          v328 = 2048;
          v329 = v285;
          _os_log_send_and_compose_impl(v101, &v321, &v330, 80, &dword_1E1C61000, v99, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
          _os_crash_msg();
          __break(1u);
          goto LABEL_81;
        }

        v55 = v47 - v47;
        v20 = v303;
        v56 = (*&v303 * *&v307) + *&v307 * -0.5;
        v57 = v47 + (*&v303 * (v47 - v47));
        *&v52 = v48.__cosval * v57;
        *(&v52 + 1) = v56;
        *(&v52 + 2) = -(v57 * v48.__sinval);
        *(v46 + 16 * v40) = v52;
        if (v45 == v40)
        {
          goto LABEL_77;
        }

        v58 = v37 + v40;
        v59 = v306 + v40;
        v60.i32[1] = 0;
        v60.i32[3] = 0;
        v60.f32[0] = -v48.__sinval;
        v60.f32[2] = -v48.__cosval;
        v51.f32[0] = v55 * v48.__cosval;
        v51.i32[1] = v307;
        v51.f32[2] = -(v48.__sinval * v55);
        v61 = vmulq_f32(v60, v60);
        *&v62 = v61.f32[2] + vaddv_f32(*v61.f32);
        *v61.f32 = vrsqrte_f32(v62);
        *v61.f32 = vmul_f32(*v61.f32, vrsqrts_f32(v62, vmul_f32(*v61.f32, *v61.f32)));
        v63 = vmulq_n_f32(v60, vmul_f32(*v61.f32, vrsqrts_f32(v62, vmul_f32(*v61.f32, *v61.f32))).f32[0]);
        v64 = vmulq_f32(v51, v51);
        v60.f32[0] = v64.f32[2] + vaddv_f32(*v64.f32);
        *v64.f32 = vrsqrte_f32(v60.u32[0]);
        *v64.f32 = vmul_f32(*v64.f32, vrsqrts_f32(v60.u32[0], vmul_f32(*v64.f32, *v64.f32)));
        v65 = v49 + (*&v303 * (v49 - v49));
        *&v53 = v54.__cosval * v65;
        *(&v53 + 1) = (*&v303 * *&v307) + *&v307 * -0.5;
        *(&v53 + 2) = -(v65 * v54.__sinval);
        v66.i32[1] = 0;
        v66.i32[3] = 0;
        v66.f32[0] = -v54.__sinval;
        v66.f32[2] = -v54.__cosval;
        v50.f32[0] = v54.__cosval * (v49 - v49);
        v50.i32[1] = v307;
        v50.f32[2] = -(v54.__sinval * (v49 - v49));
        v18 = vmulq_n_f32(v51, vmul_f32(*v64.f32, vrsqrts_f32(v60.u32[0], vmul_f32(*v64.f32, *v64.f32))).f32[0]);
        v67 = vmulq_f32(v66, v66);
        *&v68 = v67.f32[2] + vaddv_f32(*v67.f32);
        *v67.f32 = vrsqrte_f32(v68);
        *v67.f32 = vmul_f32(*v67.f32, vrsqrts_f32(v68, vmul_f32(*v67.f32, *v67.f32)));
        v69 = vmulq_n_f32(v66, vmul_f32(*v67.f32, vrsqrts_f32(v68, vmul_f32(*v67.f32, *v67.f32))).f32[0]);
        v70 = vmulq_f32(v50, v50);
        v64.f32[0] = v70.f32[2] + vaddv_f32(*v70.f32);
        *v70.f32 = vrsqrte_f32(v64.u32[0]);
        *v70.f32 = vmul_f32(*v70.f32, vrsqrts_f32(v64.u32[0], vmul_f32(*v70.f32, *v70.f32)));
        v19 = vmulq_n_f32(v50, vmul_f32(*v70.f32, vrsqrts_f32(v64.u32[0], vmul_f32(*v70.f32, *v70.f32))).f32[0]);
        v71 = vnegq_f32(v69);
        *(v41 + 16 * v40) = v53;
        if (*(a2 + 17) == 1)
        {
          if (v289 <= v59)
          {
            v321 = 0;
            v333 = 0u;
            v334 = 0u;
            v331 = 0u;
            v332 = 0u;
            v330 = 0u;
            v116 = MEMORY[0x1E69E9C10];
            v117 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v322 = 136315906;
            v323 = "operator[]";
            v324 = 1024;
            if (v117)
            {
              v118 = 3;
            }

            else
            {
              v118 = 2;
            }

            v325 = 621;
            v326 = 2048;
            v327 = v306 + v40;
            v328 = 2048;
            v329 = v289;
            _os_log_send_and_compose_impl(v118, &v321, &v330, 80, &dword_1E1C61000, v116, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
            _os_crash_msg();
            __break(1u);
LABEL_91:
            v321 = 0;
            v333 = 0u;
            v334 = 0u;
            v331 = 0u;
            v332 = 0u;
            v330 = 0u;
            v119 = MEMORY[0x1E69E9C10];
            v120 = v74;
            v121 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v322 = 136315906;
            v323 = "operator[]";
            v324 = 1024;
            if (v121)
            {
              v122 = 3;
            }

            else
            {
              v122 = 2;
            }

            v325 = 621;
            v326 = 2048;
            v327 = v37 + v40;
            v328 = 2048;
            v329 = v120;
            _os_log_send_and_compose_impl(v122, &v321, &v330, 80, &dword_1E1C61000, v119, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
            _os_crash_msg();
            __break(1u);
LABEL_95:
            v321 = 0;
            v333 = 0u;
            v334 = 0u;
            v331 = 0u;
            v332 = 0u;
            v330 = 0u;
            v123 = MEMORY[0x1E69E9C10];
            v124 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v322 = 136315906;
            v323 = "operator[]";
            v324 = 1024;
            if (v124)
            {
              v125 = 3;
            }

            else
            {
              v125 = 2;
            }

            v325 = 621;
            v326 = 2048;
            v327 = v37 + v40;
            v328 = 2048;
            v329 = v289;
            _os_log_send_and_compose_impl(v125, &v321, &v330, 80, &dword_1E1C61000, v123, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
            _os_crash_msg();
            __break(1u);
LABEL_99:
            v321 = 0;
            v333 = 0u;
            v334 = 0u;
            v331 = 0u;
            v332 = 0u;
            v330 = 0u;
            v126 = MEMORY[0x1E69E9C10];
            v127 = v75;
            v128 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v322 = 136315906;
            v323 = "operator[]";
            v324 = 1024;
            if (v128)
            {
              v129 = 3;
            }

            else
            {
              v129 = 2;
            }

            v325 = 621;
            v326 = 2048;
            v327 = v306 + v40;
            v328 = 2048;
            v329 = v127;
            _os_log_send_and_compose_impl(v129, &v321, &v330, 80, &dword_1E1C61000, v126, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
            _os_crash_msg();
            __break(1u);
LABEL_103:
            v321 = 0;
            v333 = 0u;
            v334 = 0u;
            v331 = 0u;
            v332 = 0u;
            v330 = 0u;
            v130 = MEMORY[0x1E69E9C10];
            v131 = v74;
            v132 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v322 = 136315906;
            v323 = "operator[]";
            v324 = 1024;
            if (v132)
            {
              v133 = 3;
            }

            else
            {
              v133 = 2;
            }

            v325 = 621;
            v326 = 2048;
            v327 = v306 + v40;
            v328 = 2048;
            v329 = v131;
            _os_log_send_and_compose_impl(v133, &v321, &v330, 80, &dword_1E1C61000, v130, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
            _os_crash_msg();
            __break(1u);
LABEL_107:
            v321 = 0;
            v333 = 0u;
            v334 = 0u;
            v331 = 0u;
            v332 = 0u;
            v330 = 0u;
            v134 = MEMORY[0x1E69E9C10];
            v135 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v322 = 136315906;
            v323 = "operator[]";
            v324 = 1024;
            if (v135)
            {
              v136 = 3;
            }

            else
            {
              v136 = 2;
            }

            v325 = 621;
            v326 = 2048;
            v327 = v306 + v40;
            v328 = 2048;
            v329 = v301;
            _os_log_send_and_compose_impl(v136, &v321, &v330, 80, &dword_1E1C61000, v134, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
            _os_crash_msg();
            __break(1u);
LABEL_111:
            v321 = 0;
            v333 = 0u;
            v334 = 0u;
            v331 = 0u;
            v332 = 0u;
            v330 = 0u;
            v137 = MEMORY[0x1E69E9C10];
            a2 = v75;
            v138 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v322 = 136315906;
            v323 = "operator[]";
            v324 = 1024;
            if (v138)
            {
              v139 = 3;
            }

            else
            {
              v139 = 2;
            }

            v325 = 621;
            v326 = 2048;
            v327 = v37 + v40;
            v328 = 2048;
            v329 = a2;
            _os_log_send_and_compose_impl(v139, &v321, &v330, 80, &dword_1E1C61000, v137, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
            _os_crash_msg();
            __break(1u);
LABEL_115:
            v321 = 0;
            v333 = 0u;
            v334 = 0u;
            v331 = 0u;
            v332 = 0u;
            v330 = 0u;
            v103 = MEMORY[0x1E69E9C10];
            v140 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v322 = 136315906;
            v323 = "operator[]";
            v324 = 1024;
            if (v140)
            {
              v141 = 3;
            }

            else
            {
              v141 = 2;
            }

            v325 = 621;
            v326 = 2048;
            v327 = v37 + v40;
            v328 = 2048;
            v329 = v301;
            _os_log_send_and_compose_impl(v141, &v321, &v330, 80, &dword_1E1C61000, v103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
            _os_crash_msg();
            __break(1u);
            goto LABEL_119;
          }

          v72 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), vnegq_f32(v63)), v18, vextq_s8(vuzp1q_s32(v63, v63), v63, 0xCuLL));
          *(v300 + 16 * v40) = vextq_s8(vuzp1q_s32(v72, v72), v72, 0xCuLL);
          if (v289 <= v58)
          {
            goto LABEL_95;
          }

          v73 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), v71), v19, vextq_s8(vuzp1q_s32(v69, v69), v69, 0xCuLL));
          *(v297 + 16 * v40) = vnegq_f32(vextq_s8(vuzp1q_s32(v73, v73), v73, 0xCuLL));
        }

        if (*(a2 + 16) == 1)
        {
          v74 = v29;
          if (v29 <= v58)
          {
            goto LABEL_91;
          }

          *(v298 + 8 * v40) = __PAIR64__(v303, v308);
          if (v29 <= v59)
          {
            goto LABEL_103;
          }

          *(v295 + 8 * v40) = __PAIR64__(v303, v308);
        }

        if (v27)
        {
          v75 = v288;
          if (v288 <= v59)
          {
            goto LABEL_99;
          }

          *(v296 + 16 * v40) = v63;
          if (v301 <= v59)
          {
            goto LABEL_107;
          }

          *(v293 + 16 * v40) = v18;
          if (v288 <= v58)
          {
            goto LABEL_111;
          }

          *(v291 + 16 * v40) = v71;
          if (v301 <= v58)
          {
            goto LABEL_115;
          }

          *(v290 + 16 * v40) = v19;
        }

        ++v40;
      }

      while (v38 != v40);
      v39 = v37 + v40;
      v35 = v306 + v40;
      v36 = v287 + 1;
      v37 = a2[1];
    }

    while (v287 < v37);
    v29 = *a2;
    v46 = &v309;
    v77 = v279;
    v76 = v280;
    if (!a2[1])
    {
      goto LABEL_71;
    }

    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = v29 * v37;
    v41 = v311;
    v82 = v280 + 1;
    v83 = v279 + v280;
    v84 = 8;
    do
    {
      if (!v29)
      {
        goto LABEL_70;
      }

      v85 = 0;
      v86 = v313;
      v87 = (v313 + v84);
      do
      {
        v42 = v79 + v85;
        if (v41 <= v79 + v85)
        {
          v321 = 0;
          v333 = 0u;
          v334 = 0u;
          v331 = 0u;
          v332 = 0u;
          v330 = 0u;
          v195 = MEMORY[0x1E69E9C10];
          v196 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v322 = 136315906;
          v323 = "operator[]";
          v324 = 1024;
          if (v196)
          {
            v197 = 3;
          }

          else
          {
            v197 = 2;
          }

          v325 = 789;
          v326 = 2048;
          v327 = v42;
          v328 = 2048;
          v329 = v41;
          _os_log_send_and_compose_impl(v197, &v321, &v330, 80, &dword_1E1C61000, v195, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
          _os_crash_msg();
          __break(1u);
LABEL_193:
          v321 = 0;
          v333 = 0u;
          v334 = 0u;
          v331 = 0u;
          v332 = 0u;
          v330 = 0u;
          v103 = MEMORY[0x1E69E9C10];
          v198 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v322 = 136315906;
          v323 = "operator[]";
          v324 = 1024;
          if (v198)
          {
            v199 = 3;
          }

          else
          {
            v199 = 2;
          }

          v325 = 789;
          v326 = 2048;
          v327 = v42;
          v328 = 2048;
          v329 = v41;
          _os_log_send_and_compose_impl(v199, &v321, &v330, 80, &dword_1E1C61000, v103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
          _os_crash_msg();
          __break(1u);
LABEL_197:
          v321 = 0;
          v333 = 0u;
          v334 = 0u;
          v331 = 0u;
          v332 = 0u;
          v330 = 0u;
          v200 = MEMORY[0x1E69E9C10];
          v201 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v323 = "operator[]";
          v324 = 1024;
          v325 = 621;
          if (v201)
          {
            v202 = 3;
          }

          else
          {
            v202 = 2;
          }

          v322 = 136315906;
          v326 = 2048;
          v327 = (v103 + v37);
          v328 = 2048;
          v329 = v297;
          _os_log_send_and_compose_impl(v202, &v321, &v330, 80, &dword_1E1C61000, v200, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
          _os_crash_msg();
          __break(1u);
LABEL_201:
          v321 = 0;
          v333 = 0u;
          v334 = 0u;
          v331 = 0u;
          v332 = 0u;
          v330 = 0u;
          v203 = MEMORY[0x1E69E9C10];
          v204 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v322 = 136315906;
          v323 = "operator[]";
          v324 = 1024;
          if (v204)
          {
            v205 = 3;
          }

          else
          {
            v205 = 2;
          }

          v325 = 621;
          v326 = 2048;
          v327 = v290;
          v328 = 2048;
          v329 = v297;
          _os_log_send_and_compose_impl(v205, &v321, &v330, 80, &dword_1E1C61000, v203, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
          _os_crash_msg();
          __break(1u);
LABEL_205:
          v321 = 0;
          v333 = 0u;
          v334 = 0u;
          v331 = 0u;
          v332 = 0u;
          v330 = 0u;
          v206 = MEMORY[0x1E69E9C10];
          v207 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v322 = 136315906;
          v323 = "operator[]";
          v324 = 1024;
          if (v207)
          {
            v208 = 3;
          }

          else
          {
            v208 = 2;
          }

          v325 = 621;
          v326 = 2048;
          v327 = v289;
          v328 = 2048;
          v329 = v297;
          _os_log_send_and_compose_impl(v208, &v321, &v330, 80, &dword_1E1C61000, v206, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
          _os_crash_msg();
          __break(1u);
LABEL_209:
          v321 = 0;
          v333 = 0u;
          v334 = 0u;
          v331 = 0u;
          v332 = 0u;
          v330 = 0u;
          v209 = MEMORY[0x1E69E9C10];
          v210 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v322 = 136315906;
          v323 = "operator[]";
          v324 = 1024;
          if (v210)
          {
            v211 = 3;
          }

          else
          {
            v211 = 2;
          }

          v325 = 621;
          v326 = 2048;
          v327 = v288;
          v328 = 2048;
          v329 = v297;
          _os_log_send_and_compose_impl(v211, &v321, &v330, 80, &dword_1E1C61000, v209, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
          _os_crash_msg();
          __break(1u);
LABEL_213:
          v321 = 0;
          v333 = 0u;
          v334 = 0u;
          v331 = 0u;
          v332 = 0u;
          v330 = 0u;
          v212 = MEMORY[0x1E69E9C10];
          v213 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v322 = 136315906;
          v323 = "operator[]";
          v324 = 1024;
          if (v213)
          {
            v214 = 3;
          }

          else
          {
            v214 = 2;
          }

          v325 = 621;
          v326 = 2048;
          v327 = v290;
          v328 = 2048;
          v329 = v297;
          _os_log_send_and_compose_impl(v214, &v321, &v330, 80, &dword_1E1C61000, v212, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
          _os_crash_msg();
          __break(1u);
LABEL_217:
          v321 = 0;
          v333 = 0u;
          v334 = 0u;
          v331 = 0u;
          v332 = 0u;
          v330 = 0u;
          v215 = MEMORY[0x1E69E9C10];
          v216 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v322 = 136315906;
          v323 = "operator[]";
          v324 = 1024;
          if (v216)
          {
            v217 = 3;
          }

          else
          {
            v217 = 2;
          }

          v325 = 621;
          v326 = 2048;
          v327 = v298;
          v328 = 2048;
          v329 = v297;
          _os_log_send_and_compose_impl(v217, &v321, &v330, 80, &dword_1E1C61000, v215, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
          _os_crash_msg();
          __break(1u);
LABEL_221:
          v321 = 0;
          v333 = 0u;
          v334 = 0u;
          v331 = 0u;
          v332 = 0u;
          v330 = 0u;
          v218 = MEMORY[0x1E69E9C10];
          v219 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v322 = 136315906;
          v323 = "operator[]";
          v324 = 1024;
          if (v219)
          {
            v220 = 3;
          }

          else
          {
            v220 = 2;
          }

          v325 = 621;
          v326 = 2048;
          v327 = v29;
          v328 = 2048;
          v329 = v297;
          _os_log_send_and_compose_impl(v220, &v321, &v330, 80, &dword_1E1C61000, v218, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
          _os_crash_msg();
          __break(1u);
LABEL_225:
          v321 = 0;
          v333 = 0u;
          v334 = 0u;
          v331 = 0u;
          v332 = 0u;
          v330 = 0u;
          v221 = MEMORY[0x1E69E9C10];
          v222 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v322 = 136315906;
          v323 = "operator[]";
          v324 = 1024;
          if (v222)
          {
            v223 = 3;
          }

          else
          {
            v223 = 2;
          }

          v325 = 621;
          v326 = 2048;
          v327 = v296;
          v328 = 2048;
          v329 = v297;
          _os_log_send_and_compose_impl(v223, &v321, &v330, 80, &dword_1E1C61000, v221, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
          _os_crash_msg();
          __break(1u);
LABEL_229:
          v321 = 0;
          v333 = 0u;
          v334 = 0u;
          v331 = 0u;
          v332 = 0u;
          v330 = 0u;
          v224 = MEMORY[0x1E69E9C10];
          v225 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v322 = 136315906;
          v323 = "operator[]";
          v324 = 1024;
          if (v225)
          {
            v226 = 3;
          }

          else
          {
            v226 = 2;
          }

          v325 = 789;
          v326 = 2048;
          v327 = v42;
          v328 = 2048;
          v329 = v41;
          _os_log_send_and_compose_impl(v226, &v321, &v330, 80, &dword_1E1C61000, v224, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
          _os_crash_msg();
          __break(1u);
LABEL_233:
          v321 = 0;
          v333 = 0u;
          v334 = 0u;
          v331 = 0u;
          v332 = 0u;
          v330 = 0u;
          v103 = MEMORY[0x1E69E9C10];
          v227 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v322 = 136315906;
          v323 = "operator[]";
          v324 = 1024;
          if (v227)
          {
            v228 = 3;
          }

          else
          {
            v228 = 2;
          }

          v325 = 789;
          v326 = 2048;
          v327 = v42;
          v328 = 2048;
          v329 = v41;
          _os_log_send_and_compose_impl(v228, &v321, &v330, 80, &dword_1E1C61000, v103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
          _os_crash_msg();
          __break(1u);
LABEL_237:
          v321 = 0;
          v333 = 0u;
          v334 = 0u;
          v331 = 0u;
          v332 = 0u;
          v330 = 0u;
          v229 = MEMORY[0x1E69E9C10];
          v230 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v322 = 136315906;
          v323 = "operator[]";
          v324 = 1024;
          if (v230)
          {
            v231 = 3;
          }

          else
          {
            v231 = 2;
          }

          v325 = 621;
          v326 = 2048;
          v327 = v103 + v45;
          v328 = 2048;
          v329 = v40;
          _os_log_send_and_compose_impl(v231, &v321, &v330, 80, &dword_1E1C61000, v229, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
          _os_crash_msg();
          __break(1u);
LABEL_241:
          v321 = 0;
          v333 = 0u;
          v334 = 0u;
          v331 = 0u;
          v332 = 0u;
          v330 = 0u;
          v232 = MEMORY[0x1E69E9C10];
          v233 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v322 = 136315906;
          v323 = "operator[]";
          v324 = 1024;
          if (v233)
          {
            v234 = 3;
          }

          else
          {
            v234 = 2;
          }

          v325 = 621;
          v326 = 2048;
          v327 = v103 + v45;
          v328 = 2048;
          v329 = v40;
          _os_log_send_and_compose_impl(v234, &v321, &v330, 80, &dword_1E1C61000, v232, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
          _os_crash_msg();
          __break(1u);
LABEL_245:
          v321 = 0;
          v333 = 0u;
          v334 = 0u;
          v331 = 0u;
          v332 = 0u;
          v330 = 0u;
          v235 = MEMORY[0x1E69E9C10];
          v236 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v322 = 136315906;
          v323 = "operator[]";
          v324 = 1024;
          if (v236)
          {
            v237 = 3;
          }

          else
          {
            v237 = 2;
          }

          v325 = 621;
          v326 = 2048;
          v327 = v38 + v45;
          v328 = 2048;
          v329 = v307;
          _os_log_send_and_compose_impl(v237, &v321, &v330, 80, &dword_1E1C61000, v235, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
          _os_crash_msg();
          __break(1u);
LABEL_249:
          v321 = 0;
          v333 = 0u;
          v334 = 0u;
          v331 = 0u;
          v332 = 0u;
          v330 = 0u;
          v238 = MEMORY[0x1E69E9C10];
          v239 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v322 = 136315906;
          v323 = "operator[]";
          v324 = 1024;
          if (v239)
          {
            v240 = 3;
          }

          else
          {
            v240 = 2;
          }

          v325 = 621;
          v326 = 2048;
          v327 = v103 + v45;
          v328 = 2048;
          v329 = v46;
          _os_log_send_and_compose_impl(v240, &v321, &v330, 80, &dword_1E1C61000, v238, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
          _os_crash_msg();
          __break(1u);
LABEL_253:
          v321 = 0;
          v333 = 0u;
          v334 = 0u;
          v331 = 0u;
          v332 = 0u;
          v330 = 0u;
          v241 = MEMORY[0x1E69E9C10];
          v242 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v322 = 136315906;
          v323 = "operator[]";
          v324 = 1024;
          if (v242)
          {
            v243 = 3;
          }

          else
          {
            v243 = 2;
          }

          v325 = 621;
          v326 = 2048;
          v327 = v38 + v45;
          v328 = 2048;
          v329 = v40;
          _os_log_send_and_compose_impl(v243, &v321, &v330, 80, &dword_1E1C61000, v241, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
          _os_crash_msg();
          __break(1u);
LABEL_257:
          v321 = 0;
          v333 = 0u;
          v334 = 0u;
          v331 = 0u;
          v332 = 0u;
          v330 = 0u;
          v103 = MEMORY[0x1E69E9C10];
          v244 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v322 = 136315906;
          v323 = "operator[]";
          v324 = 1024;
          if (v244)
          {
            v245 = 3;
          }

          else
          {
            v245 = 2;
          }

          v325 = 621;
          v326 = 2048;
          v327 = v38 + v45;
          v328 = 2048;
          v329 = v46;
          _os_log_send_and_compose_impl(v245, &v321, &v330, 80, &dword_1E1C61000, v103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
          _os_crash_msg();
          __break(1u);
LABEL_261:
          v321 = 0;
          v333 = 0u;
          v334 = 0u;
          v331 = 0u;
          v332 = 0u;
          v330 = 0u;
          v246 = MEMORY[0x1E69E9C10];
          v247 = v165;
          v248 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v322 = 136315906;
          v323 = "operator[]";
          v324 = 1024;
          if (v248)
          {
            v249 = 3;
          }

          else
          {
            v249 = 2;
          }

          v325 = 621;
          v326 = 2048;
          v327 = v103 + v45;
          v328 = 2048;
          v329 = v247;
          _os_log_send_and_compose_impl(v249, &v321, &v330, 80, &dword_1E1C61000, v246, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
          _os_crash_msg();
          __break(1u);
LABEL_265:
          v321 = 0;
          v333 = 0u;
          v334 = 0u;
          v331 = 0u;
          v332 = 0u;
          v330 = 0u;
          v250 = MEMORY[0x1E69E9C10];
          v251 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v322 = 136315906;
          v323 = "operator[]";
          v324 = 1024;
          if (v251)
          {
            v252 = 3;
          }

          else
          {
            v252 = 2;
          }

          v325 = 621;
          v326 = 2048;
          v327 = v38 + v45;
          v328 = 2048;
          v329 = v308;
          _os_log_send_and_compose_impl(v252, &v321, &v330, 80, &dword_1E1C61000, v250, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
          _os_crash_msg();
          __break(1u);
LABEL_269:
          v321 = 0;
          v333 = 0u;
          v334 = 0u;
          v331 = 0u;
          v332 = 0u;
          v330 = 0u;
          v253 = MEMORY[0x1E69E9C10];
          v254 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v322 = 136315906;
          v323 = "operator[]";
          v324 = 1024;
          if (v254)
          {
            v255 = 3;
          }

          else
          {
            v255 = 2;
          }

          v325 = 621;
          v326 = 2048;
          v327 = v37 + v45;
          v328 = 2048;
          v329 = v40;
          _os_log_send_and_compose_impl(v255, &v321, &v330, 80, &dword_1E1C61000, v253, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
          _os_crash_msg();
          __break(1u);
LABEL_273:
          v321 = 0;
          v333 = 0u;
          v334 = 0u;
          v331 = 0u;
          v332 = 0u;
          v330 = 0u;
          v256 = MEMORY[0x1E69E9C10];
          v257 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v322 = 136315906;
          v323 = "operator[]";
          v324 = 1024;
          if (v257)
          {
            v258 = 3;
          }

          else
          {
            v258 = 2;
          }

          v325 = 621;
          v326 = 2048;
          v327 = v37 + v45;
          v328 = 2048;
          v329 = v40;
          _os_log_send_and_compose_impl(v258, &v321, &v330, 80, &dword_1E1C61000, v256, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
          _os_crash_msg();
          __break(1u);
LABEL_277:
          v321 = 0;
          v333 = 0u;
          v334 = 0u;
          v331 = 0u;
          v332 = 0u;
          v330 = 0u;
          v259 = MEMORY[0x1E69E9C10];
          v260 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v322 = 136315906;
          v323 = "operator[]";
          v324 = 1024;
          if (v260)
          {
            v261 = 3;
          }

          else
          {
            v261 = 2;
          }

          v325 = 621;
          v326 = 2048;
          v327 = v306 + v45;
          v328 = 2048;
          v329 = v307;
          _os_log_send_and_compose_impl(v261, &v321, &v330, 80, &dword_1E1C61000, v259, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
          _os_crash_msg();
          __break(1u);
LABEL_281:
          v321 = 0;
          v333 = 0u;
          v334 = 0u;
          v331 = 0u;
          v332 = 0u;
          v330 = 0u;
          v262 = MEMORY[0x1E69E9C10];
          v263 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v322 = 136315906;
          v323 = "operator[]";
          v324 = 1024;
          if (v263)
          {
            v264 = 3;
          }

          else
          {
            v264 = 2;
          }

          v325 = 621;
          v326 = 2048;
          v327 = v306 + v45;
          v328 = 2048;
          v329 = v46;
          _os_log_send_and_compose_impl(v264, &v321, &v330, 80, &dword_1E1C61000, v262, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
          _os_crash_msg();
          __break(1u);
LABEL_285:
          v321 = 0;
          v333 = 0u;
          v334 = 0u;
          v331 = 0u;
          v332 = 0u;
          v330 = 0u;
          v265 = MEMORY[0x1E69E9C10];
          v266 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v322 = 136315906;
          v323 = "operator[]";
          v324 = 1024;
          if (v266)
          {
            v267 = 3;
          }

          else
          {
            v267 = 2;
          }

          v325 = 621;
          v326 = 2048;
          v327 = v306 + v45;
          v328 = 2048;
          v329 = v40;
          _os_log_send_and_compose_impl(v267, &v321, &v330, 80, &dword_1E1C61000, v265, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
          _os_crash_msg();
          __break(1u);
LABEL_289:
          v321 = 0;
          v333 = 0u;
          v334 = 0u;
          v331 = 0u;
          v332 = 0u;
          v330 = 0u;
          v268 = MEMORY[0x1E69E9C10];
          v269 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v322 = 136315906;
          v323 = "operator[]";
          v324 = 1024;
          if (v269)
          {
            v270 = 3;
          }

          else
          {
            v270 = 2;
          }

          v325 = 621;
          v326 = 2048;
          v327 = v37 + v45;
          v328 = 2048;
          v329 = v46;
          _os_log_send_and_compose_impl(v270, &v321, &v330, 80, &dword_1E1C61000, v268, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
          _os_crash_msg();
          __break(1u);
LABEL_293:
          v321 = 0;
          v333 = 0u;
          v334 = 0u;
          v331 = 0u;
          v332 = 0u;
          v330 = 0u;
          v271 = MEMORY[0x1E69E9C10];
          v272 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v322 = 136315906;
          v323 = "operator[]";
          v324 = 1024;
          if (v272)
          {
            v273 = 3;
          }

          else
          {
            v273 = 2;
          }

          v325 = 621;
          v326 = 2048;
          v327 = v306 + v45;
          v328 = 2048;
          v329 = v46;
          _os_log_send_and_compose_impl(v273, &v321, &v330, 80, &dword_1E1C61000, v271, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
          _os_crash_msg();
          __break(1u);
LABEL_297:
          v321 = 0;
          v333 = 0u;
          v334 = 0u;
          v331 = 0u;
          v332 = 0u;
          v330 = 0u;
          v274 = MEMORY[0x1E69E9C10];
          v275 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v322 = 136315906;
          v323 = "operator[]";
          v324 = 1024;
          if (v275)
          {
            v276 = 3;
          }

          else
          {
            v276 = 2;
          }

          v325 = 621;
          v326 = 2048;
          v327 = v37 + v45;
          v328 = 2048;
          v329 = v308;
          _os_log_send_and_compose_impl(v276, &v321, &v330, 80, &dword_1E1C61000, v274, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v322, 38, v277, v278);
          _os_crash_msg();
          __break(1u);
        }

        *(v87 - 2) = v78 + v85;
        *(v87 - 1) = v78 + v85 + 1;
        *v87 = v76 + v85 + 2;
        v87[1] = v76 + v85 + 1;
        v42 = (v81 + v85);
        if (v41 <= v42)
        {
          goto LABEL_193;
        }

        v88 = (v86 + 16 * v42);
        *v88 = v77 + v85;
        v88[1] = v77 + v85 + 1;
        v88[2] = v83 + v85 + 2;
        v88[3] = v83 + v85++ + 1;
        v87 += 4;
      }

      while (v29 != v85);
      v81 += v85;
LABEL_70:
      ++v80;
      v79 += v29;
      v78 += v82;
      v84 += 16 * v29;
      v83 += v82;
      v77 += v82;
      v76 += v82;
    }

    while (v80 != v37);
LABEL_71:
    LODWORD(v38) = v29 + 1;
    v45 = (v38 + v38 * v37);
    v89 = re::internal::GeomAttributeManager::attributeByName(v314, "vertexPosition");
    v41 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v89);
    v42 = v91;
    if (*(a2 + 17) == 1)
    {
      v92 = re::internal::GeomAttributeManager::attributeByName(v314, "vertexNormal");
      v93 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v92);
      v95 = v94;
      goto LABEL_82;
    }

LABEL_81:
    v93 = 0;
    v95 = 0xFFFFFFFFLL;
LABEL_82:
    v307 = v95;
    v102 = v45 + v38;
    v103 = (2 * v45);
    v295 = v45;
    v300 = v93;
    if (*(a2 + 16) == 1)
    {
      LODWORD(v306) = v45 + v38;
      v104 = re::internal::GeomAttributeManager::attributeByName((v46 + 48), "vertexUV");
      v105 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v104);
      v106 = 0;
      v107 = 0;
      v40 = v108;
      v308 = 0xFFFFFFFFLL;
      if (a2[8] & 1) != 0 && (*(a2 + 17))
      {
        v299 = v105;
        v109 = re::internal::GeomAttributeManager::attributeByName((v46 + 48), "vertexTangent");
        v110 = re::internal::GeomAttributeManager::attributeByName((v46 + 48), "vertexBitangent");
        v111 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v109);
        v304 = v112;
        v113 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v110);
        v114 = v111;
        v105 = v299;
        v106 = v113;
        v308 = v115;
        v46 = v304;
        v107 = 1;
        goto LABEL_120;
      }

LABEL_119:
      v114 = v106;
      v46 = 0xFFFFFFFFLL;
LABEL_120:
      v93 = v300;
      v102 = v306;
    }

    else
    {
      v107 = 0;
      v105 = 0;
      v106 = 0;
      v114 = 0;
      v40 = 0xFFFFFFFFLL;
      v308 = 0xFFFFFFFFLL;
      v46 = 0xFFFFFFFFLL;
    }

    v45 = 0;
    v142 = v38;
    v38 = (v103 + v38);
    LODWORD(v296) = v142;
    v143 = (v142 * v37);
    if (v38 <= v42)
    {
      v144 = v42;
    }

    else
    {
      v144 = v38;
    }

    v306 = (2 * v102);
    if (v143 <= v42)
    {
      v145 = v42;
    }

    else
    {
      v145 = v143;
    }

    v297 = v42;
    v298 = v105;
    if (v103 <= v42)
    {
      v146 = v42;
    }

    else
    {
      v146 = v103;
    }

    v302 = v106 + 16 * v38;
    v305 = v114 + 16 * v38;
    v147 = v105 + 8 * v38;
    v148 = v93 + 16 * v38;
    v149 = (v41 + 16 * v38);
    v290 = v144;
    v292 = v114;
    v150 = v38 - v144;
    v294 = v106;
    v151 = v106 + 16 * v103;
    v152 = v114 + 16 * v103;
    v153 = v105 + 8 * v103;
    v288 = v146;
    v289 = v145;
    v154 = v103 - v146;
    v155 = v145 - v143;
    v156 = v93 + 16 * v103;
    v37 = 0xFFFFFFFFLL;
    v157 = (v41 + 16 * v103);
    v158 = (v41 + 16 * v143);
    v159 = v40;
    do
    {
      if (v103 + v37 >= v42)
      {
        goto LABEL_197;
      }

      if (!(v150 + v45))
      {
        goto LABEL_201;
      }

      LOWORD(v90) = *a2;
      *v149 = *(v41 + 16 * (v103 + v37));
      if (v155 == v45)
      {
        goto LABEL_205;
      }

      if (!(v154 + v45))
      {
        goto LABEL_209;
      }

      v160 = v38 + v45;
      v161 = v103 + v45;
      *v157 = *v158;
      if (*(a2 + 17) == 1)
      {
        v40 = v307;
        if (v307 <= v161)
        {
          goto LABEL_237;
        }

        v162 = (v156 + 16 * v45);
        *v162 = 0x3F80000000000000;
        v162[1] = 0;
        if (v307 <= v160)
        {
          goto LABEL_245;
        }

        v163 = (v148 + 16 * v45);
        *v163 = 0x3F80000000000000;
        v163[1] = 0;
        v40 = v159;
      }

      if (*(a2 + 16) == 1)
      {
        if (v40 <= v161)
        {
          goto LABEL_241;
        }

        *&v90 = v45 / v90;
        *(v153 + 8 * v45) = v90;
        if (v40 <= v160)
        {
          goto LABEL_253;
        }

        HIDWORD(v90) = 1.0;
        *(v147 + 8 * v45) = v90;
      }

      if (v107)
      {
        if (v46 <= v161)
        {
          goto LABEL_249;
        }

        *(v152 + 16 * v45) = xmmword_1E3047670;
        if (v46 <= v160)
        {
          goto LABEL_257;
        }

        *(v305 + 16 * v45) = xmmword_1E3047670;
        v164 = v308 > v161;
        v165 = v308;
        if (!v164)
        {
          goto LABEL_261;
        }

        *(v151 + 16 * v45) = xmmword_1E306DD20;
        if (v308 <= v160)
        {
          goto LABEL_265;
        }

        *(v302 + 16 * v45) = xmmword_1E306DD20;
      }

      ++v45;
      ++v149;
      ++v157;
      ++v158;
      --v37;
    }

    while (v29 + 1 != v45);
    v166 = 0;
    v45 = 0;
    v167 = (v41 + 16 * v295);
    if (v295 <= v42)
    {
      v168 = v42;
    }

    else
    {
      v168 = v295;
    }

    v290 = v168;
    v37 = (v306 + v296);
    if (v37 <= v42)
    {
      v169 = v42;
    }

    else
    {
      v169 = (v306 + v296);
    }

    if (v306 <= v42)
    {
      v170 = v42;
    }

    else
    {
      v170 = v306;
    }

    v171 = v298 + 8 * v306;
    v172 = (v41 + 16 * v306);
    v296 = v170;
    v173 = v306 - v170;
    v174 = v298 + 8 * v37;
    v298 = v169;
    v175 = v37 - v169;
    v176 = (v41 + 16 * v37);
    do
    {
      if (v168 - v295 == v45)
      {
        goto LABEL_213;
      }

      v38 = v175 + v45;
      if (!(v175 + v45))
      {
        goto LABEL_217;
      }

      LOWORD(v90) = *a2;
      *v176 = *v167;
      if (v29 >= v42)
      {
        goto LABEL_221;
      }

      v38 = v173 + v45;
      if (!(v173 + v45))
      {
        goto LABEL_225;
      }

      v38 = v306 + v45;
      v177 = v37 + v45;
      *v172 = *(v41 + 16 * (v29 + v166));
      if (*(a2 + 17) == 1)
      {
        v40 = v307;
        if (v307 <= v177)
        {
          goto LABEL_269;
        }

        v178 = (v300 + 16 * v37 + 16 * v45);
        *v178 = 0xBF80000000000000;
        v178[1] = 0;
        if (v307 <= v38)
        {
          goto LABEL_277;
        }

        v179 = (v300 + 16 * v306 + 16 * v45);
        *v179 = 0xBF80000000000000;
        v179[1] = 0;
        v40 = v159;
      }

      if (*(a2 + 16) == 1)
      {
        if (v40 <= v177)
        {
          goto LABEL_273;
        }

        *&v90 = v45 / v90;
        *(v174 + 8 * v45) = __PAIR64__(1.0, v90);
        if (v40 <= v38)
        {
          goto LABEL_285;
        }

        *(v171 + 8 * v45) = v90;
      }

      if (v107)
      {
        if (v46 <= v38)
        {
          goto LABEL_281;
        }

        *(v292 + 16 * v306 + 16 * v45) = xmmword_1E3047670;
        if (v46 <= v177)
        {
          goto LABEL_289;
        }

        v180 = v46;
        *(v292 + 16 * v37 + 16 * v45) = xmmword_1E3047670;
        v46 = v308;
        if (v308 <= v38)
        {
          goto LABEL_293;
        }

        v38 = v294 + 16 * v306;
        *(v38 + 16 * v45) = xmmword_1E30476A0;
        if (v308 <= v177)
        {
          goto LABEL_297;
        }

        *(v294 + 16 * v37 + 16 * v45) = xmmword_1E30476A0;
        v46 = v180;
      }

      ++v167;
      ++v45;
      ++v172;
      ++v176;
      --v166;
    }

    while (v29 + 1 != v45);
    v181 = *a2;
    v37 = &v309;
    if (*a2)
    {
      v182 = 0;
      v183 = 2 * v181 * a2[1];
      v41 = v311;
      v184 = v313;
      v185 = v29 + v103;
      do
      {
        v42 = (v183 + v182);
        if (v41 <= v42)
        {
          goto LABEL_229;
        }

        v186 = (v184 + 16 * v42);
        *v186 = v103 + v182;
        v186[1] = v103 + v182 + 1;
        v186[2] = v185 + v182 + 2;
        v186[3] = v185 + v182++ + 1;
      }

      while (v181 != v182);
      v187 = 0;
      v188 = v313;
      v189 = v103 + 2 * v29;
      v190 = v189 + v29;
      v191 = v183 + v182;
      do
      {
        v42 = (v191 + v187);
        if (v41 <= v42)
        {
          goto LABEL_233;
        }

        v192 = (v188 + 16 * v42);
        *v192 = v189 + v187 + 2;
        v192[1] = v189 + v187 + 3;
        v192[2] = v190 + v187 + 4;
        v192[3] = v190 + v187++ + 3;
      }

      while (v181 != v187);
    }

    v193 = re::GeomMesh::operator=(v278, &v309);
    if (*(a2 + 18) == 1)
    {
      re::internal::mergeVertexPositions(v193, v194);
    }
  }

  else
  {
    re::internal::GeomAttributeManager::addAttribute(v314, "vertexPosition", 1, 7);
    if (*(a2 + 16) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v314, "vertexUV", 1, 6);
    }

    if (*(a2 + 17) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v314, "vertexNormal", 1, 7);
    }

    if (*(a2 + 16) == 1 && *(a2 + 17) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v314, "vertexTangent", 1, 7);
      re::internal::GeomAttributeManager::addAttribute(v314, "vertexBitangent", 1, 7);
    }

    re::GeomMesh::operator=(a1, &v309);
  }

  re::internal::GeomAttributeManager::~GeomAttributeManager(v314);
  result = v310[0];
  if (v310[0] && v313)
  {
    return (*(*v310[0] + 40))();
  }

  return result;
}

void re::buildTube(uint64_t a1, unsigned __int16 *a2)
{
  v2 = a2;
  v79 = *MEMORY[0x1E69E9840];
  if (*(a2 + 18) == 1)
  {
    v62 = *(a2 + 4);
    v61 = *a2;
    BYTE2(v62) = 0;
    re::buildTube(a1, &v61);
    return;
  }

  v4 = v69;
  re::GeomMesh::GeomMesh(&v61, 0);
  re::buildTube(&v61, v2);
  re::DynamicArray<re::GeomMesh>::clear(a1);
  re::DynamicArray<re::GeomMesh>::resize(a1, 4uLL);
  v5 = v2[1];
  if (!v2[1] || (v6 = *v2, v6 < 3))
  {
    if (*(a1 + 16))
    {
      re::GeomMesh::copy(&v61, *(a1 + 32));
      v2 = *(a1 + 16);
      if (v2 > 1)
      {
        re::GeomMesh::copy(&v61, (*(a1 + 32) + 736));
        v2 = *(a1 + 16);
        if (v2 > 2)
        {
          re::GeomMesh::copy(&v61, (*(a1 + 32) + 1472));
          v2 = *(a1 + 16);
          if (v2 > 3)
          {
            re::GeomMesh::operator=((*(a1 + 32) + 2208), &v61);
            goto LABEL_32;
          }

LABEL_62:
          v58[0] = 0;
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v64 = 0u;
          v43 = MEMORY[0x1E69E9C10];
          v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v76[0] = 136315906;
          *(v4 + 52) = "operator[]";
          LOWORD(v76[3]) = 1024;
          if (v44)
          {
            v45 = 3;
          }

          else
          {
            v45 = 2;
          }

          *(v4 + 62) = 789;
          HIWORD(v76[4]) = 2048;
          *(v4 + 68) = 3;
          LOWORD(v76[7]) = 2048;
          *(v4 + 78) = v2;
          _os_log_send_and_compose_impl(v45, v58, &v64, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v76, 38, v46, v47);
          _os_crash_msg();
          __break(1u);
        }

LABEL_58:
        v58[0] = 0;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v64 = 0u;
        v40 = MEMORY[0x1E69E9C10];
        v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v76[0] = 136315906;
        *(v4 + 52) = "operator[]";
        LOWORD(v76[3]) = 1024;
        if (v41)
        {
          v42 = 3;
        }

        else
        {
          v42 = 2;
        }

        *(v4 + 62) = 789;
        HIWORD(v76[4]) = 2048;
        *(v4 + 68) = 2;
        LOWORD(v76[7]) = 2048;
        *(v4 + 78) = v2;
        _os_log_send_and_compose_impl(v42, v58, &v64, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v76, 38, v46, v47);
        _os_crash_msg();
        __break(1u);
        goto LABEL_62;
      }

LABEL_54:
      v58[0] = 0;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v64 = 0u;
      v37 = MEMORY[0x1E69E9C10];
      v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v76[0] = 136315906;
      *(v4 + 52) = "operator[]";
      LOWORD(v76[3]) = 1024;
      if (v38)
      {
        v39 = 3;
      }

      else
      {
        v39 = 2;
      }

      *(v4 + 62) = 789;
      HIWORD(v76[4]) = 2048;
      *(v4 + 68) = 1;
      LOWORD(v76[7]) = 2048;
      *(v4 + 78) = v2;
      _os_log_send_and_compose_impl(v39, v58, &v64, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v76, 38, v46, v47);
      _os_crash_msg();
      __break(1u);
      goto LABEL_58;
    }

LABEL_50:
    v58[0] = 0;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v64 = 0u;
    v34 = MEMORY[0x1E69E9C10];
    v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v76[0] = 136315906;
    *(v4 + 52) = "operator[]";
    LOWORD(v76[3]) = 1024;
    if (v35)
    {
      v36 = 3;
    }

    else
    {
      v36 = 2;
    }

    *(v4 + 62) = 789;
    HIWORD(v76[4]) = 2048;
    *(v4 + 68) = 0;
    LOWORD(v76[7]) = 2048;
    *(v4 + 78) = 0;
    _os_log_send_and_compose_impl(v36, v58, &v64, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v76, 38, v46, v47);
    _os_crash_msg();
    __break(1u);
    goto LABEL_54;
  }

  v60 = 0;
  v57 = 0;
  memset(v58, 0, sizeof(v58));
  v59 = 0;
  v54 = 0;
  memset(v55, 0, sizeof(v55));
  v56 = 0;
  v51[1] = 0;
  v52 = 0;
  v51[0] = 0;
  v4 = v6 * v5;
  v53 = 0;
  re::DynamicArray<float>::resize(v51, v4);
  v7 = 0;
  v8 = 0;
  v9 = 1;
  do
  {
    v10 = 0;
    v11 = v8;
    v12 = v9;
    v13 = v52;
    v14 = v54;
    do
    {
      if (v13 == v10)
      {
        *v69 = 0;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v64 = 0u;
        v22 = MEMORY[0x1E69E9C10];
        v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v76[0] = 136315906;
        *&v76[1] = "operator[]";
        LOWORD(v76[3]) = 1024;
        if (v23)
        {
          v24 = 3;
        }

        else
        {
          v24 = 2;
        }

        *(&v76[3] + 2) = 789;
        HIWORD(v76[4]) = 2048;
        *&v76[5] = v13;
        LOWORD(v76[7]) = 2048;
        *(&v76[7] + 2) = v13;
        _os_log_send_and_compose_impl(v24, v69, &v64, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v76, 38, v46, v47);
        _os_crash_msg();
        __break(1u);
        goto LABEL_38;
      }

      v14[v10] = v8 + v10;
      ++v10;
    }

    while (v4 != v10);
    v49 = v14;
    v50 = v13;
    v47 = 0;
    v48 = 0;
    re::makeMeshFromFaces(&v61, &v49, &v47, v58, v55, &v64);
    v13 = *(a1 + 16);
    if (v13 <= v7)
    {
      goto LABEL_42;
    }

    v13 = v11 + v10;
    re::GeomMesh::operator=((*(a1 + 32) + 736 * v7), &v64);
    re::GeomMesh::~GeomMesh(&v64);
    v9 = 0;
    v8 = (v11 + v10);
    v7 = 1;
  }

  while ((v12 & 1) != 0);
  v15 = *v2;
  re::DynamicArray<float>::resize(v51, v15);
  v16 = 0;
  v7 = (v11 + v10);
  v4 = 2;
  do
  {
    v17 = v16;
    v11 = v52;
    if (v15)
    {
      v18 = v54;
      v19 = v52;
      v20 = v15;
      v21 = v7;
      while (v19)
      {
        v7 = (v21 + 1);
        *v18++ = v21;
        --v19;
        ++v21;
        if (!--v20)
        {
          goto LABEL_16;
        }
      }

LABEL_38:
      *v69 = 0;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v64 = 0u;
      v25 = MEMORY[0x1E69E9C10];
      v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v76[0] = 136315906;
      *&v76[1] = "operator[]";
      LOWORD(v76[3]) = 1024;
      if (v26)
      {
        v27 = 3;
      }

      else
      {
        v27 = 2;
      }

      *(&v76[3] + 2) = 789;
      HIWORD(v76[4]) = 2048;
      *&v76[5] = v11;
      LOWORD(v76[7]) = 2048;
      *(&v76[7] + 2) = v11;
      _os_log_send_and_compose_impl(v27, v69, &v64, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v76, 38, v46, v47);
      _os_crash_msg();
      __break(1u);
LABEL_42:
      v63 = 0;
      v77 = 0u;
      v78 = 0u;
      memset(v76, 0, sizeof(v76));
      v28 = MEMORY[0x1E69E9C10];
      v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v69 = 136315906;
      *&v69[4] = "operator[]";
      v70 = 1024;
      if (v29)
      {
        v30 = 3;
      }

      else
      {
        v30 = 2;
      }

      v71 = 789;
      v72 = 2048;
      v73 = v7;
      v74 = 2048;
      v75 = v13;
      _os_log_send_and_compose_impl(v30, &v63, v76, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v69, 38, v46, v47);
      _os_crash_msg();
      __break(1u);
LABEL_46:
      v63 = 0;
      v2 = v69;
      v77 = 0u;
      v78 = 0u;
      memset(v76, 0, sizeof(v76));
      v31 = MEMORY[0x1E69E9C10];
      v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v69 = 136315906;
      *&v69[4] = "operator[]";
      v70 = 1024;
      if (v32)
      {
        v33 = 3;
      }

      else
      {
        v33 = 2;
      }

      v71 = 789;
      v72 = 2048;
      v73 = v4;
      v74 = 2048;
      v75 = v13;
      _os_log_send_and_compose_impl(v33, &v63, v76, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v69, 38, v46, v47);
      _os_crash_msg();
      __break(1u);
      goto LABEL_50;
    }

LABEL_16:
    v49 = v54;
    v50 = v11;
    v47 = 0;
    v48 = 0;
    re::makeMeshFromFaces(&v61, &v49, &v47, v58, v55, &v64);
    v13 = *(a1 + 16);
    if (v13 <= v4)
    {
      goto LABEL_46;
    }

    re::GeomMesh::operator=((*(a1 + 32) + 736 * v4), &v64);
    re::GeomMesh::~GeomMesh(&v64);
    v16 = 1;
    v4 = 3;
  }

  while ((v17 & 1) == 0);
  if (v51[0] && v54)
  {
    (*(*v51[0] + 40))();
  }

  if (v55[0] && v57)
  {
    (*(*v55[0] + 40))();
  }

  if (v58[0])
  {
    if (v60)
    {
      (*(*v58[0] + 40))();
    }
  }

LABEL_32:
  re::GeomMesh::~GeomMesh(&v61);
}

uint64_t re::internal::isPointInsidePolygon(simd_float2 *a1, float32x2_t **a2)
{
  v3 = a2[1];
  v4 = (v3 - 1);
  if (v3)
  {
    v5 = v3 == 1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v8 = 0;
    v9 = 0;
    v10 = 12;
    while (1)
    {
      v11 = a2[1];
      if (v11 <= v8)
      {
        break;
      }

      v2 = v8 + 1;
      if (v11 <= v8 + 1)
      {
        goto LABEL_28;
      }

      v12 = *a2;
      v13 = &(*a2)[v8];
      v14 = (*a2 + v10);
      v15 = a1->f32[1];
      v16 = *v14;
      if (*(v14 - 2) <= v15)
      {
        if (v16 > v15 && _simd_orient_pf2(v12[v8], v13[1], *a1) > 0.0)
        {
          ++v9;
        }
      }

      else if (v16 <= v15)
      {
        v9 = (__PAIR64__(v9, 0.0) - COERCE_UNSIGNED_INT(_simd_orient_pf2(v13[1], v12[v8], *a1))) >> 32;
      }

      v10 += 8;
      v8 = v2;
      if (v4 == v2)
      {
        v17 = a2[1];
        if (v17)
        {
          v18 = **a2;
          v19 = vmvn_s8(vceq_f32((*a2)[v17 - 1], v18));
          if ((vpmax_u32(v19, v19).u32[0] & 0x80000000) == 0)
          {
            return v9 != 0;
          }

          if (v17 > v4)
          {
            v21 = &(*a2)[v4];
            v22 = a1->f32[1];
            if (v21->f32[1] <= v22)
            {
              if (v18.f32[1] > v22 && _simd_orient_pf2(*v21, **a2, *a1) > 0.0)
              {
                ++v9;
              }
            }

            else if (v18.f32[1] <= v22)
            {
              v9 = (__PAIR64__(v9, 0.0) - COERCE_UNSIGNED_INT(_simd_orient_pf2(**a2, *v21, *a1))) >> 32;
            }

            return v9 != 0;
          }

LABEL_30:
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v4, v17);
          result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v25, v28);
          __break(1u);
          return result;
        }

LABEL_29:
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty.", "!isEmpty()", "last", 240);
        _os_crash("assertion failure: (!isEmpty()) Array is empty.");
        __break(1u);
        goto LABEL_30;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, v11);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v23, v26);
    __break(1u);
LABEL_28:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v2, v11);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v24, v27);
    __break(1u);
    goto LABEL_29;
  }

  v9 = 0;
  return v9 != 0;
}

uint64_t re::internal::triangulatePolygonWithHoles(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int8x16_t *a5, uint64_t a6)
{
  *&v101 = a3;
  *(&v101 + 1) = a4;
  v162 = *MEMORY[0x1E69E9840];
  v114 = 0uLL;
  v9 = *a5;
  v10 = vabsq_f32(*a5);
  v11 = 2;
  if (v10.f32[1] <= v10.f32[2])
  {
    v11 = 1;
  }

  if (v10.f32[0] <= v10.f32[2] && v10.f32[0] <= v10.f32[1])
  {
    v11 = 0;
  }

  *(&v114 | (4 * v11)) = 1065353216;
  v13 = vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL);
  v14 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v114, v114), v114, 0xCuLL), vnegq_f32(v9)), v114, v13);
  v15 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
  v16 = vmulq_f32(v14, v14);
  *&v17 = v16.f32[1] + (v16.f32[2] + v16.f32[0]);
  *v16.f32 = vrsqrte_f32(v17);
  *v16.f32 = vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32)));
  v104 = vmulq_n_f32(v15, vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32))).f32[0]);
  v18 = vmlaq_f32(vmulq_f32(v13, vnegq_f32(v104)), v9, vextq_s8(vuzp1q_s32(v104, v104), v104, 0xCuLL));
  v103 = vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL);
  v114 = v103;
  v107[0] = 0;
  v107[1] = 0;
  v109 = 0;
  v108 = 0;
  v113 = 0;
  v110 = 0u;
  v111 = 0u;
  v112 = 0;
  if (a2)
  {
    v20 = 0;
    v21 = v107;
    v22 = a1 - 4;
    while (1)
    {
      if (v20)
      {
        v23 = *(v22 + 4 * v20);
      }

      else
      {
        v23 = 0;
      }

      v24 = DWORD2(v111);
      if (*(&v111 + 1))
      {
        v24 = v113[*(&v111 + 1) - 1];
      }

      v25 = *(a1 + 4 * v20);
      LODWORD(v117) = v24;
      v26 = v25 - v23;
      if (v25 > v23)
      {
        break;
      }

LABEL_22:
      re::DynamicArray<int>::add((&v110 + 8), &v117);
      if (++v20 == a2)
      {
        v31 = v108;
        v32 = *(&v111 + 1);
        goto LABEL_25;
      }
    }

    if (*(&v101 + 1) <= v23)
    {
      v7 = v23;
    }

    else
    {
      v7 = *(&v101 + 1);
    }

    v8 = v24 + 1;
    v27 = (v101 + 16 * v23);
    v6 = v7 - v23;
    while (v6)
    {
      v28 = *v27++;
      v29 = vmulq_f32(v103, v28);
      v30 = vmulq_f32(v104, v28);
      *v141 = vadd_f32(vzip1_s32(*&vextq_s8(v29, v29, 8uLL), *&vextq_s8(v30, v30, 8uLL)), vadd_f32(vzip1_s32(*v29.i8, *v30.i8), vzip2_s32(*v29.i8, *v30.i8)));
      re::DynamicArray<unsigned long>::add(v107, v141);
      LODWORD(v117) = v8;
      v8 = (v8 + 1);
      --v6;
      if (!--v26)
      {
        goto LABEL_22;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v7, *(&v101 + 1));
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v96, v97);
    __break(1u);
LABEL_114:
    v105[0] = 0;
    v160 = 0u;
    v161 = 0u;
    memset(v159, 0, sizeof(v159));
    v63 = MEMORY[0x1E69E9C10];
    v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    v153 = 1024;
    if (v64)
    {
      v65 = 3;
    }

    else
    {
      v65 = 2;
    }

    v154 = 797;
    v155 = 2048;
    v156 = v27;
    v157 = 2048;
    v158 = v6;
    _os_log_send_and_compose_impl(v65, v105, v159, 80, &dword_1E1C61000, v63, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v98, v99);
    _os_crash_msg();
    __break(1u);
LABEL_118:
    __src[0] = 0;
    v160 = 0u;
    v161 = 0u;
    memset(v159, 0, sizeof(v159));
    v66 = MEMORY[0x1E69E9C10];
    v67 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    v153 = 1024;
    if (v67)
    {
      v68 = 3;
    }

    else
    {
      v68 = 2;
    }

    v154 = 797;
    v155 = 2048;
    v156 = v21;
    v157 = 2048;
    v158 = v20;
    _os_log_send_and_compose_impl(v68, __src, v159, 80, &dword_1E1C61000, v66, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v98, v99);
    _os_crash_msg();
    __break(1u);
LABEL_122:
    __src[0] = 0;
    v160 = 0u;
    v161 = 0u;
    memset(v159, 0, sizeof(v159));
    v69 = MEMORY[0x1E69E9C10];
    v70 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    v153 = 1024;
    if (v70)
    {
      v71 = 3;
    }

    else
    {
      v71 = 2;
    }

    v154 = 797;
    v155 = 2048;
    v156 = v6;
    v157 = 2048;
    v158 = v20;
    _os_log_send_and_compose_impl(v71, __src, v159, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v98, v99);
    _os_crash_msg();
    __break(1u);
    goto LABEL_126;
  }

  v32 = 0;
  v31 = 0;
LABEL_25:
  v136 = 0;
  v137 = 0;
  v138 = 0;
  __p = 0;
  v134 = 0;
  v135 = 0;
  v130 = 0;
  v131 = 0;
  v132 = 0;
  v127 = 0;
  v128 = 0;
  v129 = 0;
  v117 = 0;
  v118 = 0;
  LOBYTE(v120) = 0;
  v119 = 0;
  v121 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v122 = xmmword_1E30A0CA0;
  v123 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  *v124 = 0u;
  *v125 = 0u;
  v126 = 0u;
  v141[0] = 0;
  memset(&v141[8], 0, 152);
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v142 = 1065353216;
  v148 = 1065353216;
  v149 = 0u;
  memset(v150, 0, sizeof(v150));
  v151 = 1065353216;
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::LoadData(v141, &v125[1]);
  std::vector<geo::math::Matrix<double,3,1>>::resize(&v130, v31);
  std::vector<std::vector<unsigned long>>::reserve(&v127, v32);
  if (v32)
  {
    v21 = 0;
    v7 = 0;
    v8 = 0x7FFFFFFFFFFFFFF8;
    while (1)
    {
      v20 = *(&v111 + 1);
      if (v7)
      {
        v6 = (v7 - 1);
        if (*(&v111 + 1) <= v6)
        {
          goto LABEL_122;
        }

        v6 = v113[v6];
      }

      else
      {
        v6 = 0;
      }

      if (*(&v111 + 1) <= v21)
      {
        goto LABEL_118;
      }

      v21 = v113[v21];
      __src[0] = 0;
      __src[1] = 0;
      v116 = 0;
      std::vector<unsigned long>::reserve(__src, (v21 - v6));
      if (v21 > v6)
      {
        break;
      }

LABEL_48:
      std::vector<std::vector<unsigned long>>::push_back[abi:nn200100](&v127, __src);
      if (__src[0])
      {
        __src[1] = __src[0];
        operator delete(__src[0]);
      }

      v21 = (v7 + 1);
      v7 = v21;
      if (v32 <= v21)
      {
        goto LABEL_51;
      }
    }

    v27 = v6;
    v20 = 24 * v6;
    while (1)
    {
      v6 = v108;
      if (v108 <= v27)
      {
        goto LABEL_114;
      }

      v33 = v130 + v20;
      *v33 = vcvtq_f64_f32(*(v110 + 8 * v27));
      *(v33 + 2) = 0;
      v34 = __src[1];
      if (__src[1] >= v116)
      {
        v35 = __src[0];
        v36 = __src[1] - __src[0];
        v37 = (__src[1] - __src[0]) >> 3;
        v38 = v37 + 1;
        if ((v37 + 1) >> 61)
        {
          goto LABEL_158;
        }

        v39 = v116 - __src[0];
        if ((v116 - __src[0]) >> 2 > v38)
        {
          v38 = v39 >> 2;
        }

        if (v39 >= 0x7FFFFFFFFFFFFFF8)
        {
          v40 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v40 = v38;
        }

        if (v40)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(__src, v40);
        }

        *(8 * v37) = v27;
        v6 = 8 * v37 + 8;
        memcpy(0, v35, v36);
        v41 = __src[0];
        __src[0] = 0;
        __src[1] = v6;
        v116 = 0;
        if (v41)
        {
          operator delete(v41);
        }
      }

      else
      {
        *__src[1] = v27;
        v6 = v34 + 8;
      }

      __src[1] = v6;
      v27 = (v27 + 1);
      v20 += 24;
      if (v21 == v27)
      {
        goto LABEL_48;
      }
    }
  }

LABEL_51:
  v141[0] = 0;
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::LoadData(v141, &v130);
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::ClearConstraints(v141);
  std::vector<std::vector<unsigned long>>::__assign_with_size[abi:nn200100]<std::vector<unsigned long>*,std::vector<unsigned long>*>(v150 + 1, v127, v128, 0xAAAAAAAAAAAAAAABLL * (v128 - v127));
  if (geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeDelaunay(v141) && geo::math::ConstrainedDelaunayTriangulationMesherDetails::GenerateConstraints(v141) && geo::math::ConstrainedDelaunayTriangulationMesherDetails::ComputeConstrainedDelaunay(v141, 0))
  {
    geo::math::ConstrainedDelaunayTriangulationMesherDetails::GetMesh(v141, &v136, &__p);
    v21 = __p;
    v42 = v134;
    v43 = 0xAAAAAAAAAAAAAAABLL * ((v134 - __p) >> 2);
    __src[1] = 0;
    v116 = 0;
    __src[0] = 0;
    std::vector<geo::math::Matrix<unsigned int,3,1>>::reserve(__src, v43);
    if (v42 != v21)
    {
      v44 = *(&v111 + 1);
      if (*(&v111 + 1))
      {
        v45 = 0;
        if (v43 <= 1)
        {
          v46 = 1;
        }

        else
        {
          v46 = v43;
        }

        v47 = *(&v111 + 1) - 1;
        __asm { FMOV            V8.2S, #3.0 }

        do
        {
          v53 = (__p + 12 * v45);
          v8 = *v53;
          v20 = v108;
          if (v108 <= v8)
          {
            goto LABEL_142;
          }

          v7 = *(v53 + 1);
          if (v108 <= v7)
          {
            goto LABEL_146;
          }

          v21 = *(v53 + 2);
          if (v108 <= v21)
          {
            goto LABEL_150;
          }

          v139 = vdiv_f32(vadd_f32(vadd_f32(*(v110 + 8 * v8), *(v110 + 8 * v7)), *(v110 + 8 * v21)), _D8);
          if (!*(&v111 + 1))
          {
            goto LABEL_154;
          }

          v54 = *v113;
          *&v159[0] = v110;
          *(&v159[0] + 1) = v54;
          if (re::internal::isPointInsidePolygon(&v139, v159))
          {
            if (v44 >= 2)
            {
              v20 = 0;
              while (1)
              {
                v8 = *(&v111 + 1);
                if (*(&v111 + 1) <= v20)
                {
                  break;
                }

                if (*(&v111 + 1) <= v20 + 1)
                {
                  goto LABEL_130;
                }

                v6 = v108;
                v21 = v113[v20];
                if (v108 <= v21)
                {
                  goto LABEL_134;
                }

                v55 = v113[v20 + 1] - v21;
                *&v159[0] = v110 + 8 * v21;
                *(&v159[0] + 1) = v55;
                if (re::internal::isPointInsidePolygon(&v139, v159))
                {
                  goto LABEL_73;
                }

                if (v47 == ++v20)
                {
                  goto LABEL_72;
                }
              }

LABEL_126:
              v140 = 0;
              v160 = 0u;
              v161 = 0u;
              memset(v159, 0, sizeof(v159));
              v72 = MEMORY[0x1E69E9C10];
              v73 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v152 = 136315906;
              *&v152[4] = "operator[]";
              v153 = 1024;
              if (v73)
              {
                v74 = 3;
              }

              else
              {
                v74 = 2;
              }

              v154 = 797;
              v155 = 2048;
              v156 = v20;
              v157 = 2048;
              v158 = v8;
              _os_log_send_and_compose_impl(v74, &v140, v159, 80, &dword_1E1C61000, v72, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v98, v99);
              _os_crash_msg();
              __break(1u);
LABEL_130:
              v140 = 0;
              v160 = 0u;
              v161 = 0u;
              memset(v159, 0, sizeof(v159));
              v75 = MEMORY[0x1E69E9C10];
              v76 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v152 = 136315906;
              *&v152[4] = "operator[]";
              v153 = 1024;
              if (v76)
              {
                v77 = 3;
              }

              else
              {
                v77 = 2;
              }

              v154 = 797;
              v155 = 2048;
              v156 = (v20 + 1);
              v157 = 2048;
              v158 = v8;
              _os_log_send_and_compose_impl(v77, &v140, v159, 80, &dword_1E1C61000, v75, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v98, v99);
              _os_crash_msg();
              __break(1u);
LABEL_134:
              v140 = 0;
              v160 = 0u;
              v161 = 0u;
              memset(v159, 0, sizeof(v159));
              v78 = MEMORY[0x1E69E9C10];
              v79 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v152 = 136315906;
              *&v152[4] = "operator[]";
              v153 = 1024;
              if (v79)
              {
                v80 = 3;
              }

              else
              {
                v80 = 2;
              }

              v154 = 797;
              v155 = 2048;
              v156 = v21;
              v157 = 2048;
              v158 = v6;
              _os_log_send_and_compose_impl(v80, &v140, v159, 80, &dword_1E1C61000, v78, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v98, v99);
              _os_crash_msg();
              __break(1u);
LABEL_138:
              *v152 = 0;
              memset(v141, 0, 80);
              v81 = MEMORY[0x1E69E9C10];
              v82 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v159[0]) = 136315906;
              *(v159 + 4) = "operator[]";
              WORD6(v159[0]) = 1024;
              if (v82)
              {
                v83 = 3;
              }

              else
              {
                v83 = 2;
              }

              *(v159 + 14) = 789;
              WORD1(v159[1]) = 2048;
              *(&v159[1] + 4) = v20;
              WORD6(v159[1]) = 2048;
              *(&v159[1] + 14) = v20;
              _os_log_send_and_compose_impl(v83, v152, v141, 80, &dword_1E1C61000, v81, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v159, 38, v98, v99);
              _os_crash_msg();
              __break(1u);
LABEL_142:
              v140 = 0;
              v160 = 0u;
              v161 = 0u;
              memset(v159, 0, sizeof(v159));
              v84 = MEMORY[0x1E69E9C10];
              v85 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v152 = 136315906;
              *&v152[4] = "operator[]";
              v153 = 1024;
              if (v85)
              {
                v86 = 3;
              }

              else
              {
                v86 = 2;
              }

              v154 = 797;
              v155 = 2048;
              v156 = v8;
              v157 = 2048;
              v158 = v20;
              _os_log_send_and_compose_impl(v86, &v140, v159, 80, &dword_1E1C61000, v84, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v98, v99);
              _os_crash_msg();
              __break(1u);
LABEL_146:
              v140 = 0;
              v160 = 0u;
              v161 = 0u;
              memset(v159, 0, sizeof(v159));
              v87 = MEMORY[0x1E69E9C10];
              v88 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v152 = 136315906;
              *&v152[4] = "operator[]";
              v153 = 1024;
              if (v88)
              {
                v89 = 3;
              }

              else
              {
                v89 = 2;
              }

              v154 = 797;
              v155 = 2048;
              v156 = v7;
              v157 = 2048;
              v158 = v20;
              _os_log_send_and_compose_impl(v89, &v140, v159, 80, &dword_1E1C61000, v87, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v98, v99);
              _os_crash_msg();
              __break(1u);
LABEL_150:
              v140 = 0;
              v160 = 0u;
              v161 = 0u;
              memset(v159, 0, sizeof(v159));
              v90 = MEMORY[0x1E69E9C10];
              v91 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v152 = 136315906;
              *&v152[4] = "operator[]";
              v153 = 1024;
              if (v91)
              {
                v92 = 3;
              }

              else
              {
                v92 = 2;
              }

              v154 = 797;
              v155 = 2048;
              v156 = v21;
              v157 = 2048;
              v158 = v20;
              _os_log_send_and_compose_impl(v92, &v140, v159, 80, &dword_1E1C61000, v90, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v98, v99);
              _os_crash_msg();
              __break(1u);
LABEL_154:
              v140 = 0;
              v160 = 0u;
              v161 = 0u;
              memset(v159, 0, sizeof(v159));
              v93 = MEMORY[0x1E69E9C10];
              v94 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v152 = 136315906;
              *&v152[4] = "operator[]";
              v153 = 1024;
              if (v94)
              {
                v95 = 3;
              }

              else
              {
                v95 = 2;
              }

              v154 = 797;
              v155 = 2048;
              v156 = 0;
              v157 = 2048;
              v158 = 0;
              _os_log_send_and_compose_impl(v95, &v140, v159, 80, &dword_1E1C61000, v93, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v98, v99);
              _os_crash_msg();
              __break(1u);
LABEL_158:
              std::string::__throw_length_error[abi:nn200100]();
            }

LABEL_72:
            std::vector<geo::math::Matrix<unsigned int,3,1>>::push_back[abi:nn200100](__src, v53);
          }

LABEL_73:
          ++v45;
        }

        while (v45 != v46);
      }
    }

    if (__p)
    {
      v134 = __p;
      operator delete(__p);
    }

    *v105 = *__src;
    v106 = v116;
    p_p = &__p;
  }

  else
  {
    p_p = v105;
  }

  *p_p = 0;
  p_p[1] = 0;
  p_p[2] = 0;
  geo::math::ConstrainedDelaunayTriangulationMesherDetails::~ConstrainedDelaunayTriangulationMesherDetails(v141);
  if (v125[1])
  {
    *&v126 = v125[1];
    operator delete(v125[1]);
  }

  if (v124[0])
  {
    v124[1] = v124[0];
    operator delete(v124[0]);
  }

  if (v117)
  {
    v118 = v117;
    operator delete(v117);
  }

  *v141 = &v127;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](v141);
  if (v130)
  {
    v131 = v130;
    operator delete(v130);
  }

  if (__p)
  {
    v134 = __p;
    operator delete(__p);
  }

  if (v136)
  {
    v137 = v136;
    operator delete(v136);
  }

  v58 = v105[0];
  v57 = v105[1];
  v59 = v105[1] - v105[0];
  if (v105[1] == v105[0])
  {
    if (a2 == 1)
    {
      v121.i64[0] = 0;
      v118 = 0;
      v119 = 0;
      v117 = 0;
      v120 = 0;
      v21 = *(&v101 + 1);
      re::DynamicArray<float>::resize(&v117, *(&v101 + 1));
      v20 = v119;
      if (DWORD2(v101))
      {
        v60 = 0;
        v61 = v121.i64[0];
        while (v20 != v60)
        {
          *(v61 + 4 * v60) = v60;
          if (DWORD2(v101) == ++v60)
          {
            goto LABEL_100;
          }
        }

        goto LABEL_138;
      }

LABEL_100:
      *v141 = v101;
      *&v159[0] = v121.i64[0];
      *(&v159[0] + 1) = v20;
      re::triangulatePolygon(v141, v159, a6);
      if (v117 && v121.i64[0])
      {
        (*(*v117 + 40))();
      }
    }
  }

  else
  {
    *(a6 + 16) = 0;
    ++*(a6 + 24);
    if (*(a6 + 8) < (v59 >> 2))
    {
      re::DynamicArray<int>::setCapacity(a6, v59 >> 2);
    }

    do
    {
      re::DynamicArray<int>::add(a6, v58);
      re::DynamicArray<int>::add(a6, v58 + 1);
      re::DynamicArray<int>::add(a6, v58 + 2);
      v58 += 3;
    }

    while (v58 != v57);
    v58 = v105[0];
  }

  if (v58)
  {
    operator delete(v58);
  }

  if (*(&v110 + 1))
  {
    if (v113)
    {
      (*(**(&v110 + 1) + 40))();
    }

    v113 = 0;
    v111 = 0uLL;
    *(&v110 + 1) = 0;
    ++v112;
  }

  if (v107[0] && v110)
  {
    (*(*v107[0] + 40))();
  }

  return 1;
}