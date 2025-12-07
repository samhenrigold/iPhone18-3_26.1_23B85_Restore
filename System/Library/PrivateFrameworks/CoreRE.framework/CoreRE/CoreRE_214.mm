uint64_t re::DataArray<re::internal::TypeInfoIndex>::deinit(uint64_t result)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!*(result + 44))
  {
    return result;
  }

  v2 = result;
  v25 = result;
  if (*(result + 40))
  {
    LODWORD(v26) = 0;
    if (!*(result + 16))
    {
      goto LABEL_41;
    }

    v3 = result;
    if (!**(*(result + 32) + 8))
    {
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v25);
      v3 = v25;
    }
  }

  else
  {
    LODWORD(v26) = -1;
    v3 = result;
  }

  v25 = v3;
  if (v3 != v2 || v26 != 0xFFFFFFFFLL)
  {
    v4 = v26;
    v5 = WORD1(v26);
    do
    {
      v6 = *(v3 + 16);
      if (v6 <= v5)
      {
        goto LABEL_37;
      }

      re::DataArray<re::internal::TypeInfoIndex>::destroy(v2, ((*(*(*(v3 + 32) + 16 * v5 + 8) + 4 * v4) & 0xFFFFFF) << 32) | (v5 << 16) | v4);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v25);
      v3 = v25;
      v4 = v26;
      v5 = WORD1(v26);
    }

    while (v25 != v2 || v26 != 0xFFFFLL || WORD1(v26) != 0xFFFFLL);
  }

  v7 = v2[2];
  v5 = v7 - 1;
  if (v7 == 1)
  {
    goto LABEL_26;
  }

  v6 = 16 * v7 - 16;
  do
  {
    if (v7 <= v5)
    {
      v25 = 0;
      v40 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v12 = MEMORY[0x1E69E9C10];
      v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v28 = 136315906;
      v29 = "operator[]";
      v30 = 1024;
      if (v13)
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      v31 = 789;
      v32 = 2048;
      v33 = v5;
      v34 = 2048;
      v35 = v7;
      _os_log_send_and_compose_impl(v14, &v25, &v36, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v24);
      _os_crash_msg();
      __break(1u);
LABEL_33:
      v25 = 0;
      v40 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v15 = MEMORY[0x1E69E9C10];
      v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v28 = 136315906;
      v29 = "removeAt";
      v30 = 1024;
      if (v16)
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      v31 = 931;
      v32 = 2048;
      v33 = v5;
      v34 = 2048;
      v35 = v1;
      _os_log_send_and_compose_impl(v17, &v25, &v36, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v24);
      _os_crash_msg();
      __break(1u);
LABEL_37:
      v27 = 0;
      v40 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v18 = MEMORY[0x1E69E9C10];
      v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v28 = 136315906;
      v29 = "operator[]";
      v30 = 1024;
      if (v19)
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      v31 = 797;
      v32 = 2048;
      v33 = v5;
      v34 = 2048;
      v35 = v6;
      _os_log_send_and_compose_impl(v20, &v27, &v36, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v24, v25);
      _os_crash_msg();
      __break(1u);
LABEL_41:
      v27 = 0;
      v40 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v21 = MEMORY[0x1E69E9C10];
      v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v28 = 136315906;
      v29 = "operator[]";
      v30 = 1024;
      if (v22)
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      v31 = 797;
      v32 = 2048;
      v33 = 0;
      v34 = 2048;
      v35 = 0;
      _os_log_send_and_compose_impl(v23, &v27, &v36, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v24, v25);
      _os_crash_msg();
      __break(1u);
    }

    v8 = (v2[4] + v6);
    (*(**v2 + 40))(*v2, *v8);
    (*(**v2 + 40))(*v2, v8[1]);
    v1 = v2[2];
    if (v1 <= v5)
    {
      goto LABEL_33;
    }

    v7 = v1 - 1;
    if (v1 - 1 > v5)
    {
      *(v2[4] + v6) = *(v2[4] + 16 * v1 - 16);
      v7 = v2[2] - 1;
    }

    v2[2] = v7;
    ++*(v2 + 6);
    v6 -= 16;
    --v5;
  }

  while (v5);
  v2[6] = 0xFFFFFFFF00000000;
  if (!v7)
  {
    v25 = 0;
    v40 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v2 = MEMORY[0x1E69E9C10];
    v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v28 = 136315906;
    v29 = "operator[]";
    v30 = 1024;
    if (v9)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v31 = 789;
    v32 = 2048;
    v33 = 0;
    v34 = 2048;
    v35 = 0;
    _os_log_send_and_compose_impl(v10, &v25, &v36, 80, &dword_1E1C61000, v2, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v24);
    _os_crash_msg();
    __break(1u);
LABEL_26:
    v2[6] = 0xFFFFFFFF00000000;
  }

  v11 = v2[4];
  (*(**v2 + 40))(*v2, *v11);
  (*(**v2 + 40))(*v2, v11[1]);
  result = re::DynamicArray<unsigned long>::deinit(v2);
  *(v2 + 11) = 0;
  return result;
}

uint64_t re::DataArray<re::TypeRegistry::TypeNameAndVersion>::deinit(uint64_t result)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!*(result + 44))
  {
    return result;
  }

  v2 = result;
  v25 = result;
  if (*(result + 40))
  {
    LODWORD(v26) = 0;
    if (!*(result + 16))
    {
      goto LABEL_41;
    }

    v3 = result;
    if (!**(*(result + 32) + 8))
    {
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v25);
      v3 = v25;
    }
  }

  else
  {
    LODWORD(v26) = -1;
    v3 = result;
  }

  v25 = v3;
  if (v3 != v2 || v26 != 0xFFFFFFFFLL)
  {
    v4 = v26;
    v5 = WORD1(v26);
    do
    {
      v6 = *(v3 + 16);
      if (v6 <= v5)
      {
        goto LABEL_37;
      }

      re::DataArray<re::TypeRegistry::TypeNameAndVersion>::destroy(v2, ((*(*(*(v3 + 32) + 16 * v5 + 8) + 4 * v4) & 0xFFFFFF) << 32) | (v5 << 16) | v4);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v25);
      v3 = v25;
      v4 = v26;
      v5 = WORD1(v26);
    }

    while (v25 != v2 || v26 != 0xFFFFLL || WORD1(v26) != 0xFFFFLL);
  }

  v7 = v2[2];
  v5 = v7 - 1;
  if (v7 == 1)
  {
    goto LABEL_26;
  }

  v6 = 16 * v7 - 16;
  do
  {
    if (v7 <= v5)
    {
      v25 = 0;
      v40 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v12 = MEMORY[0x1E69E9C10];
      v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v28 = 136315906;
      v29 = "operator[]";
      v30 = 1024;
      if (v13)
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      v31 = 789;
      v32 = 2048;
      v33 = v5;
      v34 = 2048;
      v35 = v7;
      _os_log_send_and_compose_impl(v14, &v25, &v36, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v24);
      _os_crash_msg();
      __break(1u);
LABEL_33:
      v25 = 0;
      v40 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v15 = MEMORY[0x1E69E9C10];
      v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v28 = 136315906;
      v29 = "removeAt";
      v30 = 1024;
      if (v16)
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      v31 = 931;
      v32 = 2048;
      v33 = v5;
      v34 = 2048;
      v35 = v1;
      _os_log_send_and_compose_impl(v17, &v25, &v36, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v24);
      _os_crash_msg();
      __break(1u);
LABEL_37:
      v27 = 0;
      v40 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v18 = MEMORY[0x1E69E9C10];
      v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v28 = 136315906;
      v29 = "operator[]";
      v30 = 1024;
      if (v19)
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      v31 = 797;
      v32 = 2048;
      v33 = v5;
      v34 = 2048;
      v35 = v6;
      _os_log_send_and_compose_impl(v20, &v27, &v36, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v24, v25);
      _os_crash_msg();
      __break(1u);
LABEL_41:
      v27 = 0;
      v40 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v21 = MEMORY[0x1E69E9C10];
      v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v28 = 136315906;
      v29 = "operator[]";
      v30 = 1024;
      if (v22)
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      v31 = 797;
      v32 = 2048;
      v33 = 0;
      v34 = 2048;
      v35 = 0;
      _os_log_send_and_compose_impl(v23, &v27, &v36, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v24, v25);
      _os_crash_msg();
      __break(1u);
    }

    v8 = (v2[4] + v6);
    (*(**v2 + 40))(*v2, *v8);
    (*(**v2 + 40))(*v2, v8[1]);
    v1 = v2[2];
    if (v1 <= v5)
    {
      goto LABEL_33;
    }

    v7 = v1 - 1;
    if (v1 - 1 > v5)
    {
      *(v2[4] + v6) = *(v2[4] + 16 * v1 - 16);
      v7 = v2[2] - 1;
    }

    v2[2] = v7;
    ++*(v2 + 6);
    v6 -= 16;
    --v5;
  }

  while (v5);
  v2[6] = 0xFFFFFFFF00000000;
  if (!v7)
  {
    v25 = 0;
    v40 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v2 = MEMORY[0x1E69E9C10];
    v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v28 = 136315906;
    v29 = "operator[]";
    v30 = 1024;
    if (v9)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v31 = 789;
    v32 = 2048;
    v33 = 0;
    v34 = 2048;
    v35 = 0;
    _os_log_send_and_compose_impl(v10, &v25, &v36, 80, &dword_1E1C61000, v2, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v24);
    _os_crash_msg();
    __break(1u);
LABEL_26:
    v2[6] = 0xFFFFFFFF00000000;
  }

  v11 = v2[4];
  (*(**v2 + 40))(*v2, *v11);
  (*(**v2 + 40))(*v2, v11[1]);
  result = re::DynamicArray<unsigned long>::deinit(v2);
  *(v2 + 11) = 0;
  return result;
}

uint64_t re::DynamicArray<re::internal::ObjectTypeInfo>::deinit(uint64_t a1)
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
        v5 = 176 * v4;
        v6 = (v3 + 112);
        do
        {
          re::StringID::destroyString(v6);
          v6 = (v6 + 176);
          v5 -= 176;
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

void re::TypeRegistry::declareType(uint64_t *__return_ptr a1@<X8>, re::StringID *a2@<X2>, uint64_t a3@<X0>, int a4@<W1>, unsigned int a5@<W3>, char a6@<W4>)
{
  v95 = *MEMORY[0x1E69E9840];
  re::TypeRegistry::typeID(&v81, a3, a2);
  v12 = v81;
  if (v81)
  {
    v13 = v82;
    if ((a6 & 1) == 0)
    {
      v14 = re::DataArray<re::TextureAtlasTile>::tryGet(a3 + 96, v82);
      v15 = v14 ? *(v14 + 4) : -1;
      if (v15 > a5)
      {
        v16 = *re::foundationIntrospectionLogObjects(v14);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(a2 + 1);
          v18 = re::DataArray<re::TextureAtlasTile>::tryGet(a3 + 96, v13);
          if (v18)
          {
            v19 = *(v18 + 16);
          }

          else
          {
            v19 = -1;
          }

          *buf = 136315906;
          *&buf[4] = v17;
          *&buf[12] = 1024;
          *&buf[14] = a5;
          *&buf[18] = 2080;
          *&buf[20] = v17;
          *&buf[28] = 1024;
          *&buf[30] = v19;
          _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "Type %s version %u is defined after type %s version %u.", buf, 0x22u);
        }
      }
    }

    v20 = re::DataArray<re::TextureAtlasTile>::tryGet(a3 + 96, v13);
    if (v20)
    {
      v21 = *(v20 + 4);
    }

    else
    {
      v21 = -1;
    }

    if (v21 == a5)
    {
      v22 = *re::foundationIntrospectionLogObjects(v20);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = *(a2 + 1);
        v24 = re::DataArray<re::TextureAtlasTile>::tryGet(a3 + 96, v13);
        if (v24)
        {
          v25 = *(v24 + 16);
        }

        else
        {
          v25 = -1;
        }

        *buf = 136315394;
        *&buf[4] = v23;
        *&buf[12] = 1024;
        *&buf[14] = v25;
        v56 = "Duplicate types. A type with the same name (%s) and version (%u) has already been declared.";
        v57 = v22;
        v58 = 18;
        goto LABEL_63;
      }

      goto LABEL_54;
    }

    v26 = re::DataArray<re::internal::TypeInfoIndex>::tryGet(a3 + 32, v13);
    if (v26[3] != a4)
    {
      v55 = *re::foundationIntrospectionLogObjects(v26);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v59 = *(a2 + 1);
        *buf = 136315138;
        *&buf[4] = v59;
        v56 = "An type with the same name (%s) but with a different type category has already been declared.";
        v57 = v55;
        v58 = 12;
LABEL_63:
        _os_log_error_impl(&dword_1E1C61000, v57, OS_LOG_TYPE_ERROR, v56, buf, v58);
      }

LABEL_54:
      *a1 = 0;
      a1[1] = 0xFFFFFFFFLL;
      return;
    }
  }

  re::TypeRegistry::makeStringID(&v80, a3, a2);
  v28 = *(a3 + 88);
  if ((v28 + 1) >> 24)
  {
    v29 = 1;
  }

  else
  {
    v29 = v28 + 1;
  }

  *(a3 + 88) = v29;
  v30 = *(a3 + 84);
  v31 = *(a3 + 86);
  if (v30 == 0xFFFF && v31 == 0xFFFF)
  {
    if (*(a3 + 80) >= *(a3 + 76))
    {
      re::DataArray<re::internal::TypeInfoIndex>::allocBlock((a3 + 32));
    }

    v32 = *(a3 + 48);
    v31 = (v32 - 1);
    if (v32)
    {
      v30 = *(a3 + 80);
      if (v30 < 0x10000)
      {
        v33 = (*(a3 + 64) + 16 * v31);
        *(a3 + 80) = v30 + 1;
        *(v33[1] + 4 * v30) = *(a3 + 88);
        v34 = (*v33 + 4 * v30);
        goto LABEL_32;
      }

LABEL_72:
      re::internal::assertLog(5, v27, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v30);
      _os_crash("assertion failure: (!overflow) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", v76);
      __break(1u);
LABEL_73:
      v83 = 0;
      v93 = 0u;
      v94 = 0u;
      memset(buf, 0, sizeof(buf));
      v67 = MEMORY[0x1E69E9C10];
      v68 = v41;
      v69 = v47;
      v70 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v84 = 136315906;
      v85 = "operator[]";
      v86 = 1024;
      if (v70)
      {
        v71 = 3;
      }

      else
      {
        v71 = 2;
      }

      v87 = 789;
      v88 = 2048;
      v89 = v68;
      v90 = 2048;
      v91 = v69;
      _os_log_send_and_compose_impl(v71, &v83, buf, 80, &dword_1E1C61000, v67, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v84, 38, v78, v79);
      _os_crash_msg();
      __break(1u);
LABEL_77:
      v83 = 0;
      v93 = 0u;
      v94 = 0u;
      memset(buf, 0, sizeof(buf));
      v72 = MEMORY[0x1E69E9C10];
      v73 = v43;
      v74 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v84 = 136315906;
      v85 = "operator[]";
      v86 = 1024;
      if (v74)
      {
        v75 = 3;
      }

      else
      {
        v75 = 2;
      }

      v87 = 789;
      v88 = 2048;
      v89 = v73;
      v90 = 2048;
      v91 = 0;
      _os_log_send_and_compose_impl(v75, &v83, buf, 80, &dword_1E1C61000, v72, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v84, 38, v78, v79);
      _os_crash_msg();
      __break(1u);
LABEL_81:
      re::internal::assertLog(5, v27, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v44);
      _os_crash("assertion failure: (!overflow) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", v77);
      __break(1u);
    }

LABEL_68:
    v83 = 0;
    v93 = 0u;
    v94 = 0u;
    memset(buf, 0, sizeof(buf));
    v64 = MEMORY[0x1E69E9C10];
    v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v84 = 136315906;
    v85 = "operator[]";
    v86 = 1024;
    if (v65)
    {
      v66 = 3;
    }

    else
    {
      v66 = 2;
    }

    v87 = 789;
    v88 = 2048;
    v89 = v31;
    v90 = 2048;
    v91 = 0;
    _os_log_send_and_compose_impl(v66, &v83, buf, 80, &dword_1E1C61000, v64, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v84, 38, v78, v79);
    _os_crash_msg();
    __break(1u);
    goto LABEL_72;
  }

  v35 = *(a3 + 48);
  if (v35 <= v31)
  {
    v83 = 0;
    v93 = 0u;
    v94 = 0u;
    memset(buf, 0, sizeof(buf));
    v60 = MEMORY[0x1E69E9C10];
    v61 = v35;
    v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v84 = 136315906;
    v85 = "operator[]";
    v86 = 1024;
    if (v62)
    {
      v63 = 3;
    }

    else
    {
      v63 = 2;
    }

    v87 = 789;
    v88 = 2048;
    v89 = v31;
    v90 = 2048;
    v91 = v61;
    _os_log_send_and_compose_impl(v63, &v83, buf, 80, &dword_1E1C61000, v60, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v84, 38, v78, v79);
    _os_crash_msg();
    __break(1u);
    goto LABEL_68;
  }

  v36 = (*(a3 + 64) + 16 * v31);
  *(v36[1] + 4 * v30) = v29;
  v34 = (*v36 + 4 * v30);
  *(a3 + 84) = *v34;
LABEL_32:
  ++*(a3 + 72);
  *v34 = (a4 << 24) | 0xFFFFFF;
  v37 = *(a3 + 88);
  v38 = *(a3 + 152);
  if ((v38 + 1) >> 24)
  {
    v39 = 1;
  }

  else
  {
    v39 = v38 + 1;
  }

  *(a3 + 152) = v39;
  v40 = *(a3 + 148);
  v41 = *(a3 + 150);
  if (v40 != 0xFFFF || v41 != 0xFFFF)
  {
    v47 = *(a3 + 112);
    if (v47 > v41)
    {
      v48 = (*(a3 + 128) + 16 * v41);
      *(v48[1] + 4 * v40) = v39;
      v46 = (*v48 + 24 * v40);
      *(a3 + 148) = *v46;
      goto LABEL_44;
    }

    goto LABEL_73;
  }

  if (*(a3 + 144) >= *(a3 + 140))
  {
    re::DataArray<MetalHeap::TextureEntry>::allocBlock((a3 + 96));
  }

  v42 = *(a3 + 112);
  v43 = (v42 - 1);
  if (!v42)
  {
    goto LABEL_77;
  }

  v44 = *(a3 + 144);
  if (v44 >= 0x10000)
  {
    goto LABEL_81;
  }

  v45 = (*(a3 + 128) + 16 * v43);
  *(a3 + 144) = v44 + 1;
  *(v45[1] + 4 * v44) = *(a3 + 152);
  v46 = (*v45 + 24 * v44);
LABEL_44:
  v49 = v30 + (v31 << 16) + ((v37 & 0xFFFFFF) << 32);
  ++*(a3 + 136);
  v50 = re::StringID::StringID(v46, &v80);
  *(v50 + 4) = a5;
  v51 = *&v80.var0;
  if (*&v80.var0 < 0xFFFFFFFFFFFFFFFELL || (*&v80.var0 & 1) != 0 || *v80.var1)
  {
    if (!v12)
    {
      goto LABEL_51;
    }

    v50 = re::DataArray<re::TextureAtlasTile>::tryGet(a3 + 96, v82);
    if (v50 && *(v50 + 4) < a5)
    {
      v51 = *&v80.var0;
LABEL_51:
      memset(buf, 0, 24);
      v52 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v51 >> 31) ^ (v51 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v51 >> 31) ^ (v51 >> 1))) >> 27));
      v50 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a3 + 200, &v80, v52 ^ (v52 >> 31), buf);
      v53 = *&buf[12];
      if (*&buf[12] == 0x7FFFFFFF)
      {
        v54 = re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a3 + 200, *&buf[8], *buf);
        v50 = re::StringID::StringID((v54 + 8), &v80);
        *(v54 + 24) = v49;
        ++*(a3 + 240);
      }

      else
      {
        ++*(a3 + 240);
        *(*(a3 + 216) + 32 * v53 + 24) = v49;
      }
    }
  }

  ++*(a3 + 24);
  *a1 = a3;
  a1[1] = v49;
  if (*&v80.var0)
  {
    if (*&v80.var0)
    {
    }
  }
}

uint64_t *re::TypeRegistry::typeID@<X0>(re::TypeRegistry **__return_ptr a1@<X8>, re::TypeRegistry *this@<X0>, const re::StringID *a3@<X1>)
{
  v3 = this;
  v5 = 0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1));
  result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 200, a3, (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31), v7);
  if (v8 == 0x7FFFFFFF)
  {
    v3 = 0;
    a1[1] = 0xFFFFFFFFLL;
  }

  else
  {
    a1[1] = *(*(v3 + 27) + 32 * v8 + 24);
  }

  *a1 = v3;
  return result;
}

re::StringID *re::TypeRegistry::makeStringID@<X0>(re::StringID *__return_ptr a1@<X8>, re::TypeRegistry *this@<X0>, const StringID *a3@<X1>)
{
  if (*&a3->var0)
  {
    return re::TypeRegistry::makeStringID(a1, this, a3->var1);
  }

  else
  {
    return re::StringID::StringID(a1, a3);
  }
}

void re::TypeRegistry::declareTypeAlias(re::TypeRegistry *this, re::TypeRegistry **a2, const StringID *a3)
{
  if (!*a2)
  {
    re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Invalid type ID.", "typeID.isValid()", "declareTypeAlias", 144);
    _os_crash("assertion failure: (typeID.isValid()) Invalid type ID.");
    __break(1u);
    goto LABEL_8;
  }

  if (*a2 != this)
  {
LABEL_8:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Wrong type registry.", "typeID.registry() == this", "declareTypeAlias", 145);
    _os_crash("assertion failure: (typeID.registry() == this) Wrong type registry.");
    __break(1u);
    return;
  }

  re::TypeRegistry::makeStringID(&v6, this, a3);
  re::DynamicArray<re::StringID>::add((this + 160), &v6);
  v5 = re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(this + 200, &v6, a2 + 1);
  ++*(this + 6);
  if (*&v6.var0)
  {
    if (*&v6.var0)
    {
    }
  }
}

uint64_t re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(uint64_t a1, StringID *a2, void *a3)
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

  v7 = re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
  re::StringID::StringID((v7 + 8), a2);
  *(v7 + 24) = *a3;
  v8 = v7 + 24;
  ++*(a1 + 40);
  return v8;
}

BOOL re::TypeRegistry::contains(re::TypeRegistry *this, const re::StringID *a2)
{
  v2 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 200, a2, (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31), v4);
  return v5 != 0x7FFFFFFF;
}

double re::TypeRegistry::typeID@<D0>(uint64_t *__return_ptr a1@<X8>, re::TypeRegistry *this@<X0>, const re::StringID *a3@<X1>, uint64_t a4@<X2>)
{
  v4 = a4;
  v7 = 0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 200, a3, (0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) ^ ((0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) >> 31), v10);
  if (v11 == 0x7FFFFFFF || (TypeWithVersion = re::TypeRegistry::findTypeWithVersion(this, *(*(this + 27) + 32 * v11 + 24), v4), (TypeWithVersion & 0xFFFFFF00000000) == 0))
  {
    *a1 = 0;
    *&result = 0xFFFFFFFFLL;
    a1[1] = 0xFFFFFFFFLL;
  }

  else
  {
    *a1 = this;
    a1[1] = TypeWithVersion;
  }

  return result;
}

unint64_t re::TypeRegistry::findTypeWithVersion(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v57 = *MEMORY[0x1E69E9840];
  re::TypeRegistry::typeInfo(a1, a2, v38);
  if (v38[0] == 1)
  {
    LODWORD(v4) = -1;
    while (1)
    {
      v6 = re::DataArray<re::TextureAtlasTile>::tryGet((v39 + 12), *v40);
      v7 = v6 ? *(v6 + 16) : -1;
      if (v7 == a3)
      {
        break;
      }

      if ((*(v40 + 60) & 0xFFFFFF) != 0)
      {
        re::TypeRegistry::typeInfo(v39, *(v40 + 56), &v52);
      }

      else
      {
        LOBYTE(v52) = 0;
      }

      re::Optional<re::TypeInfo>::operator=(v38, &v52);
      if ((v38[0] & 1) == 0)
      {
        v8 = 0;
        return v8 | v4;
      }
    }

    v4 = *v40;
    goto LABEL_19;
  }

  v9 = a1 + 96;
  v10 = re::DataArray<re::TextureAtlasTile>::tryGet(a1 + 96, v4);
  if (!v10)
  {
    goto LABEL_32;
  }

  v11 = v10;
  if (*(v10 + 16) != a3)
  {
    v41 = a1 + 96;
    if (*(a1 + 136))
    {
      v42 = 0;
      if (!*(a1 + 112))
      {
        goto LABEL_48;
      }

      v12 = a1 + 96;
      if (!**(*(a1 + 128) + 8))
      {
        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v41);
        v12 = v41;
      }
    }

    else
    {
      v42 = -1;
      v12 = a1 + 96;
    }

    v36 = v12;
    v37 = v42;
    v13 = v42;
    v14 = HIWORD(v42);
    if (v9 != v12 || v42 != 0xFFFF || v14 != 0xFFFF)
    {
      while (1)
      {
        v15 = v14;
        v16 = *(v12 + 16);
        if (v16 <= v14)
        {
          goto LABEL_44;
        }

        v15 = *(*(v12 + 32) + 16 * v14) + 24 * v13;
        if (re::StringID::operator==(v15, v11) && *(v15 + 16) == a3)
        {
          break;
        }

        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v36);
        v12 = v36;
        v13 = v37;
        v14 = HIWORD(v37);
        if (v36 == v9 && v37 == 0xFFFF && HIWORD(v37) == 0xFFFF)
        {
          goto LABEL_32;
        }
      }

      v20 = *(a1 + 112);
      if (!v20)
      {
LABEL_40:
        re::internal::assertLog(4, v17, "assertion failure: '%s' (%s:line %i) element isn't in data array", "!Unreachable code", "handle", 707);
        _os_crash("assertion failure: (!Unreachable code) element isn't in data array");
        __break(1u);
LABEL_41:
        if (v25 < 0x10000)
        {
          LODWORD(v4) = v25 - v21;
          v8 = (((*(*v22 + 4 * v25) & 0xFFFFFF) << 32) - v21) & 0x7FFFFFFF00000000;
          return v8 | v4;
        }

LABEL_52:
        re::internal::assertLog(5, v17, "assertion failure: '%s' (%s:line %i) arrayIndex (%zu) is too large for a 16-bit unsigned integer", "!overflow", "handle", 700, v25);
        _os_crash("assertion failure: (!overflow) arrayIndex (%zu) is too large for a 16-bit unsigned integer", v33);
        __break(1u);
      }

      v21 = 0;
      v22 = (*(a1 + 128) + 8);
      v23 = 0x10000;
      while (v23)
      {
        v24 = v15 - *(v22 - 1);
        if (v24 >= -23)
        {
          v25 = 0xAAAAAAAAAAAAAAABLL * (v24 >> 3);
          if (v25 < *(a1 + 140))
          {
            goto LABEL_41;
          }
        }

        v21 -= 0x10000;
        --v23;
        v22 += 2;
        if (!--v20)
        {
          goto LABEL_40;
        }
      }

      re::internal::assertLog(5, v17, "assertion failure: '%s' (%s:line %i) blockIndex (%zu) is too large for a 16-bit unsigned integer", "!overflow", "handle", 692, 0x10000);
      _os_crash("assertion failure: (!overflow) blockIndex (%zu) is too large for a 16-bit unsigned integer", v32);
      __break(1u);
LABEL_44:
      v41 = 0;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v52 = 0u;
      v26 = MEMORY[0x1E69E9C10];
      v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v44 = 136315906;
      v45 = "operator[]";
      v46 = 1024;
      if (v27)
      {
        v28 = 3;
      }

      else
      {
        v28 = 2;
      }

      v47 = 797;
      v48 = 2048;
      v49 = v15;
      v50 = 2048;
      v51 = v16;
      _os_log_send_and_compose_impl(v28, &v41, &v52, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v44, 38, v34, v35);
      _os_crash_msg();
      __break(1u);
LABEL_48:
      v43 = 0;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v52 = 0u;
      v29 = MEMORY[0x1E69E9C10];
      v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v44 = 136315906;
      v45 = "operator[]";
      v46 = 1024;
      if (v30)
      {
        v31 = 3;
      }

      else
      {
        v31 = 2;
      }

      v47 = 797;
      v48 = 2048;
      v49 = 0;
      v50 = 2048;
      v51 = 0;
      _os_log_send_and_compose_impl(v31, &v43, &v52, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v44, 38, v34, v35);
      _os_crash_msg();
      __break(1u);
      goto LABEL_52;
    }

LABEL_32:
    v8 = 0;
    LODWORD(v4) = -1;
    return v8 | v4;
  }

LABEL_19:
  v8 = v4 & 0xFFFFFFFF00000000;
  return v8 | v4;
}

void re::TypeRegistry::typeInfo(re *a1@<X0>, re **a2@<X1>, _BYTE *a3@<X8>)
{
  if (!*a2)
  {
    goto LABEL_5;
  }

  if (*a2 != a1)
  {
    v4 = *re::foundationIntrospectionLogObjects(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "Invalid type ID. Type was registered in a different type registry.", v6, 2u);
    }

LABEL_5:
    *a3 = 0;
    return;
  }

  v5 = a2[1];

  re::TypeRegistry::typeInfo(a1, v5, a3);
}

unsigned int *re::TypeRegistry::typeInfo@<X0>(uint64_t *__return_ptr a1@<X8>, re::TypeRegistry *this@<X0>, const re::StringID *a3@<X1>)
{
  v5 = 0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1));
  result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 200, a3, (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31), v7);
  if (v8 != 0x7FFFFFFF)
  {
    return re::TypeRegistry::typeInfo(this, *(*(this + 27) + 32 * v8 + 24), a1);
  }

  *a1 = 0;
  return result;
}

void re::TypeRegistry::typeInfo(uint64_t *__return_ptr a1@<X8>, re::TypeRegistry *this@<X0>, const re::DynamicString *a3@<X1>)
{
  v3 = *(a3 + 2);
  if ((*(a3 + 8) & 1) == 0)
  {
    v3 = a3 + 9;
  }

  if (v3)
  {
    v4 = *v3;
    if (*v3)
    {
      v5 = v3[1];
      if (v5)
      {
        v6 = (v3 + 2);
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v9[0] = 2 * v4;
  v9[1] = v3;
  v8 = re::TypeRegistry::typeInfo(a1, this, v9);
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }
}

_anonymous_namespace_ *re::TypeRegistry::typeName(_anonymous_namespace_ *result, void *a2)
{
  if (!*a2 || (result = re::DataArray<re::TextureAtlasTile>::tryGet(result + 96, a2[1])) == 0)
  {
  }

  return result;
}

uint64_t *re::TypeRegistry::typeName(uint64_t a1, uint64_t a2)
{
  result = re::DataArray<re::TextureAtlasTile>::tryGet(a1 + 96, a2);
  if (!result)
  {
  }

  return result;
}

void anonymous namespace::invalidTypeName(_anonymous_namespace_ *this)
{
  {
  }
}

void re::TypeRegistry::setGetActualType(re *a1, re **a2, uint64_t a3)
{
  re::TypeRegistry::typeInfo(a1, a2, v5);
  if (v5[0])
  {
    *(v6 + 152) = a3;
  }

  else
  {
    re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) Type has been forward declared but type information is missing.", "type", "setGetActualType", 399);
    _os_crash("assertion failure: (type) Type has been forward declared but type information is missing.");
    __break(1u);
  }
}

void re::TypeRegistry::overridePolymorphicObjectName(uint64_t a1, uint64_t a2, StringID *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    goto LABEL_20;
  }

  if (*a2 != a1)
  {
LABEL_21:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Wrong type registry.", "typeID.registry() == this", "overridePolymorphicObjectName", 407);
    _os_crash("assertion failure: (typeID.registry() == this) Wrong type registry.");
    __break(1u);
    goto LABEL_22;
  }

  if (*(re::DataArray<re::internal::TypeInfoIndex>::tryGet(a1 + 32, *(a2 + 8)) + 3) != 8)
  {
LABEL_22:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Type must be struct/class.", "typeCategory(typeID) == TypeCategory::kObject", "overridePolymorphicObjectName", 408);
    _os_crash("assertion failure: (typeCategory(typeID) == TypeCategory::kObject) Type must be struct/class.");
    __break(1u);
LABEL_23:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Type has been forward declared but type information is missing.", "typeInfo", "overridePolymorphicObjectName", 411);
    _os_crash("assertion failure: (typeInfo) Type has been forward declared but type information is missing.");
    __break(1u);
  }

  re::TypeRegistry::typeInfo(a1, a2, v24);
  if ((v24[0] & 1) == 0)
  {
    goto LABEL_23;
  }

  re::TypeRegistry::makeStringID(&v23, a1, a3);
  re::StringID::operator=(v26 + 14, &v23);
  re::TypeInfo::rootClass(&v21, &v25);
  v8 = *re::DataArray<re::internal::TypeInfoIndex>::get(a1 + 32, *v22) & 0xFFFFFF;
  v9 = re::DataArray<re::internal::TypeInfoIndex>::get(a1 + 32, *v26);
  v10 = *(v22 + 88);
  if (v8 < v10 + v8)
  {
    v11 = *v9 & 0xFFFFFF;
    v12 = 176 * v8 + 112;
    do
    {
      if (v11 != v8)
      {
        v13 = *(a1 + 624);
        if (v13 <= v8)
        {
          v27 = 0;
          memset(v36, 0, sizeof(v36));
          v15 = MEMORY[0x1E69E9C10];
          v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v28 = 136315906;
          v29 = "operator[]";
          v30 = 1024;
          if (v16)
          {
            v17 = 3;
          }

          else
          {
            v17 = 2;
          }

          v31 = 789;
          v32 = 2048;
          v33 = v8;
          v34 = 2048;
          v35 = v13;
          _os_log_send_and_compose_impl(v17, &v27, v36, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v19, v20);
          _os_crash_msg();
          __break(1u);
LABEL_19:
          re::internal::assertLog(5, v14, "assertion failure: '%s' (%s:line %i) Duplicate polymorphic object name %s.", "m_objectTypes[i].polymorphicObjectName != polymorphicObjectName", "overridePolymorphicObjectName", 429, a3->var1);
          _os_crash("assertion failure: (m_objectTypes[i].polymorphicObjectName != polymorphicObjectName) Duplicate polymorphic object name %s.", v18);
          __break(1u);
LABEL_20:
          re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Invalid type ID.", "typeID.isValid()", "overridePolymorphicObjectName", 406);
          _os_crash("assertion failure: (typeID.isValid()) Invalid type ID.");
          __break(1u);
          goto LABEL_21;
        }

        v9 = re::StringID::operator==((*(a1 + 640) + v12), a3);
        if (v9)
        {
          goto LABEL_19;
        }
      }

      ++v8;
      v12 += 176;
      --v10;
    }

    while (v10);
  }

  ++*(a1 + 24);
  if (v23)
  {
    if (v23)
    {
    }
  }
}

_DWORD *re::TypeRegistry::overrideCustomClassID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    goto LABEL_19;
  }

  if (*a2 != a1)
  {
LABEL_20:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Wrong type registry.", "typeID.registry() == this", "overrideCustomClassID", 438);
    _os_crash("assertion failure: (typeID.registry() == this) Wrong type registry.");
    __break(1u);
LABEL_21:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Type must be struct/class.", "typeCategory(typeID) == TypeCategory::kObject", "overrideCustomClassID", 439);
    _os_crash("assertion failure: (typeCategory(typeID) == TypeCategory::kObject) Type must be struct/class.");
    __break(1u);
  }

  if (*(re::DataArray<re::internal::TypeInfoIndex>::tryGet(a1 + 32, *(a2 + 8)) + 3) != 8)
  {
    goto LABEL_21;
  }

  re::TypeRegistry::typeInfo(a1, a2, v24);
  v7 = v26;
  if ((*(v26 + 128) & 1) == 0)
  {
    *(v26 + 128) = 1;
  }

  *(v7 + 136) = a3;
  re::TypeInfo::rootClass(&v22, v25);
  v8 = *re::DataArray<re::internal::TypeInfoIndex>::get(a1 + 32, *v23) & 0xFFFFFF;
  result = re::DataArray<re::internal::TypeInfoIndex>::get(a1 + 32, *v26);
  v10 = *(v23 + 88);
  if (v8 < v10 + v8)
  {
    v11 = 176 * v8;
    do
    {
      if ((*result & 0xFFFFFF) != v8)
      {
        v12 = *(a1 + 624);
        if (v12 <= v8)
        {
          v27 = 0;
          memset(v36, 0, sizeof(v36));
          v14 = MEMORY[0x1E69E9C10];
          v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v28 = 136315906;
          v29 = "operator[]";
          v30 = 1024;
          if (v15)
          {
            v16 = 3;
          }

          else
          {
            v16 = 2;
          }

          v31 = 789;
          v32 = 2048;
          v33 = v8;
          v34 = 2048;
          v35 = v12;
          _os_log_send_and_compose_impl(v16, &v27, v36, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v20, v21);
          _os_crash_msg();
          __break(1u);
LABEL_18:
          re::TypeInfo::name(v25);
          v17 = re::TypeInfo::name(v25);
          re::internal::assertLog(5, v18, "assertion failure: '%s' (%s:line %i) Duplicate class ID (type: %s).", "m_objectTypes[i].customClassID != customClassID", "overrideCustomClassID", 457, v17[1]);
          _os_crash("assertion failure: (m_objectTypes[i].customClassID != customClassID) Duplicate class ID (type: %s).", v19);
          __break(1u);
LABEL_19:
          re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Invalid type ID.", "typeID.isValid()", "overrideCustomClassID", 437);
          _os_crash("assertion failure: (typeID.isValid()) Invalid type ID.");
          __break(1u);
          goto LABEL_20;
        }

        v13 = *(a1 + 640) + v11;
        if (*(v13 + 128) == 1 && *(v13 + 136) == a3)
        {
          goto LABEL_18;
        }
      }

      ++v8;
      v11 += 176;
      --v10;
    }

    while (v10);
  }

  ++*(a1 + 24);
  return result;
}

void re::TypeRegistry::clearCustomClassID(re *a1, uint64_t a2)
{
  if (!*a2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid type ID.", "typeID.isValid()", "clearCustomClassID", 465);
    _os_crash("assertion failure: (typeID.isValid()) Invalid type ID.");
    __break(1u);
    goto LABEL_10;
  }

  if (*a2 != a1)
  {
LABEL_10:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Wrong type registry.", "typeID.registry() == this", "clearCustomClassID", 466);
    _os_crash("assertion failure: (typeID.registry() == this) Wrong type registry.");
    __break(1u);
    goto LABEL_11;
  }

  if (*(re::DataArray<re::internal::TypeInfoIndex>::tryGet(a1 + 32, *(a2 + 8)) + 3) != 8)
  {
LABEL_11:
    re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) Type must be struct/class.", "typeCategory(typeID) == TypeCategory::kObject", "clearCustomClassID", 467);
    _os_crash("assertion failure: (typeCategory(typeID) == TypeCategory::kObject) Type must be struct/class.");
    __break(1u);
    return;
  }

  re::TypeRegistry::typeInfo(a1, a2, v5);
  if (v5[0] == 1)
  {
    if (*(v6 + 128) == 1)
    {
      *(v6 + 128) = 0;
    }

    ++*(a1 + 6);
  }
}

uint64_t re::TypeRegistry::addAttribute(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*a2)
  {
    re::internal::assertLog(4, a2, a3, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Invalid type ID.", "typeID.isValid()", "addAttribute", 481);
    _os_crash("assertion failure: (typeID.isValid()) Invalid type ID.");
    __break(1u);
    goto LABEL_12;
  }

  if (*a2 != a1)
  {
LABEL_12:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Wrong type registry.", "typeID.registry() == this", "addAttribute", 482);
    _os_crash("assertion failure: (typeID.registry() == this) Wrong type registry.");
    __break(1u);
    goto LABEL_13;
  }

  if (!*a4)
  {
LABEL_13:
    re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Invalid attribute type ID.", "attributeTypeID.isValid()", "addAttribute", 483);
    result = _os_crash("assertion failure: (attributeTypeID.isValid()) Invalid attribute type ID.");
    __break(1u);
    return result;
  }

  v8 = a6;
  v10 = a2[1];
  *&v15 = *(a4 + 8);
  *(&v15 + 1) = v10;
  v16 = a3;
  result = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(a1 + 768, &v15);
  if (result)
  {
    v12 = result;
    if (*result == a5)
    {
      return result;
    }

    if (*result)
    {
      if (*(result + 8))
      {
        re::TypeRegistry::typeInfo(a1, a4, &v13);
        re::TypeInfo::releaseInstance(v14, *v12, *(a1 + 16), 0);
      }
    }
  }

  v13 = a5;
  v14[0] = v8;
  result = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::addOrReplace(a1 + 768, &v15, &v13);
  ++*(a1 + 24);
  return result;
}

uint64_t re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(uint64_t a1, uint64_t *a2)
{
  v4 = re::Hash<re::internal::TypeAttributeKey>::operator()(v6, a2);
  re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::findEntry<re::internal::TypeAttributeKey>(a1, v4, v6, a2);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 56 * v7 + 32;
  }
}

void *re::TypeRegistry::attributesByAttributeType@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2)
  {
    v4 = result;
    if (*a2 == result)
    {
      v6 = *(result + 200);
      if (v6)
      {
        v7 = 0;
        v8 = result[98];
        while (1)
        {
          v9 = *v8;
          v8 += 14;
          if (v9 < 0)
          {
            break;
          }

          if (v6 == ++v7)
          {
            LODWORD(v7) = *(result + 200);
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
        v10 = 0;
      }

      else
      {
        v10 = 0;
        v11 = result[98];
        do
        {
          v12 = v11 + 56 * v7;
          v14 = *(v12 + 8);
          v13 = v12 + 8;
          if (v14 == *(a2 + 8) && *(v13 + 2) == HIWORD(*(a2 + 8)) && ((*(v13 + 4) ^ *(a2 + 12)) & 0xFFFFFF) == 0)
          {
            ++v10;
          }

          if (v6 <= v7 + 1)
          {
            v15 = v7 + 1;
          }

          else
          {
            v15 = *(result + 200);
          }

          while (v15 - 1 != v7)
          {
            LODWORD(v7) = v7 + 1;
            if ((*(v11 + 56 * v7) & 0x80000000) != 0)
            {
              goto LABEL_24;
            }
          }

          LODWORD(v7) = v15;
LABEL_24:
          ;
        }

        while (v7 != v6);
      }

      *(a3 + 32) = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      result = re::DynamicArray<re::ecs2::CustomSystemRegistry::SystemDependency>::setCapacity(a3, v10);
      v16 = *(a3 + 24) + 1;
      *(a3 + 24) = v16;
      v17 = *(v4 + 200);
      if (v17)
      {
        v18 = 0;
        v19 = v4[98];
        while (1)
        {
          v20 = *v19;
          v19 += 14;
          if (v20 < 0)
          {
            break;
          }

          if (v17 == ++v18)
          {
            LODWORD(v18) = *(v4 + 200);
            break;
          }
        }
      }

      else
      {
        LODWORD(v18) = 0;
      }

      if (v18 != v17)
      {
        v21 = *(v4 + 200);
        do
        {
          v22 = v4[98] + 56 * v18;
          v24 = *(v22 + 8);
          v23 = v22 + 8;
          v25 = *(a2 + 8);
          if (v24 == v25 && *(v23 + 2) == WORD1(v25) && ((*(v23 + 4) ^ HIDWORD(v25)) & 0xFFFFFF) == 0)
          {
            v26 = *v23;
            v27 = *(v23 + 8);
            v28 = *(v23 + 16);
            v29 = *(v23 + 24);
            v31 = *(a3 + 8);
            v30 = *(a3 + 16);
            if (v30 >= v31)
            {
              v32 = v30 + 1;
              if (v31 < v30 + 1)
              {
                v37 = v28;
                if (*a3)
                {
                  v33 = 2 * v31;
                  if (!v31)
                  {
                    v33 = 8;
                  }

                  if (v33 <= v32)
                  {
                    v34 = v30 + 1;
                  }

                  else
                  {
                    v34 = v33;
                  }

                  result = re::DynamicArray<re::ecs2::CustomSystemRegistry::SystemDependency>::setCapacity(a3, v34);
                  v16 = *(a3 + 24);
                }

                else
                {
                  result = re::DynamicArray<re::ecs2::CustomSystemRegistry::SystemDependency>::setCapacity(a3, v32);
                  v16 = *(a3 + 24) + 1;
                }

                v28 = v37;
              }

              v30 = *(a3 + 16);
            }

            v35 = *(a3 + 32) + 48 * v30;
            *v35 = v4;
            *(v35 + 8) = v26;
            *(v35 + 16) = v4;
            *(v35 + 24) = v27;
            *(v35 + 32) = v28;
            *(v35 + 40) = v29;
            *(a3 + 16) = v30 + 1;
            *(a3 + 24) = ++v16;
            v21 = *(v4 + 200);
          }

          if (v21 <= v18 + 1)
          {
            v36 = v18 + 1;
          }

          else
          {
            v36 = v21;
          }

          while (v36 - 1 != v18)
          {
            LODWORD(v18) = v18 + 1;
            if ((*(v4[98] + 56 * v18) & 0x80000000) != 0)
            {
              goto LABEL_56;
            }
          }

          LODWORD(v18) = v36;
LABEL_56:
          ;
        }

        while (v18 != v17);
      }
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Wrong type registry.", "attributeID.registry() == this", "attributesByAttributeType", 518);
      result = _os_crash("assertion failure: (attributeID.registry() == this) Wrong type registry.");
      __break(1u);
    }
  }

  else
  {
    *(a3 + 32) = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = 0;
  }

  return result;
}

re::StringID *re::TypeRegistry::makeStringID@<X0>(re::StringID *__return_ptr a1@<X8>, re::TypeRegistry *this@<X0>, const char *__s@<X1>)
{
  if (__s)
  {
    result = strlen(__s);
    if (result)
    {
      v12 = (*(**(this + 2) + 32))(*(this + 2), result + 1, 0);
      strcpy(v12, __s);
      result = re::DynamicArray<re::TransitionCondition *>::add((this + 816), &v12);
      v7 = v12;
      if (v12)
      {
        v8 = *v12;
        if (*v12)
        {
          v9 = v12[1];
          if (v9)
          {
            v10 = v12 + 2;
            do
            {
              v8 = 31 * v8 + v9;
              v11 = *v10++;
              v9 = v11;
            }

            while (v11);
          }
        }
      }

      else
      {
        v8 = 0;
      }

      *a1 = 2 * v8;
      *(a1 + 1) = v7;
    }

    else
    {
      *a1 = 0;
      *(a1 + 1) = &str_67;
    }
  }

  else
  {

    return re::StringID::invalid(a1);
  }

  return result;
}

_anonymous_namespace_ *re::TypeRegistry::removeType(_anonymous_namespace_ *result, void *a2)
{
  v230 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    v4 = result;
    v5 = v217;
    v215 = 0;
    v212[1] = 0;
    v213 = 0;
    v214 = 0;
    v7 = re::DynamicArray<re::TypeID>::setCapacity(v212, 0);
    ++v214;
    v210 = 0;
    *__b = 0u;
    v209 = 0u;
    v211 = 0x7FFFFFFFLL;
    v8 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v225, v4 + 32, 0);
    *v217 = v4;
    *&v217[8] = v225;
    *&v217[16] = DWORD2(v225);
    v205 = v4 + 32;
    if ((v4 + 32) != v225 || DWORD2(v225) != 0xFFFFFFFFLL)
    {
      v2 = 0xFFFFLL;
      do
      {
        v9 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v217[8]);
        *v220 = *v217;
        *&v220[8] = v9;
        if (*v217 == *a2)
        {
          v10 = a2[1];
          v12 = v9 == v10;
          v11 = (v9 ^ v10) & 0xFFFFFF00000000;
          v12 = v12 && v11 == 0;
          if (v12)
          {
            goto LABEL_21;
          }
        }

        if (HIDWORD(v209))
        {
          if (DWORD2(v209))
          {
            memset_pattern16(__b[1], &unk_1E304C660, 4 * DWORD2(v209));
          }

          v13 = v210;
          if (v210)
          {
            v14 = 8;
            do
            {
              v15 = *(v209 + v14);
              if (v15 < 0)
              {
                *(v209 + v14) = v15 & 0x7FFFFFFF;
              }

              v14 += 32;
              --v13;
            }

            while (v13);
          }

          HIDWORD(v209) = 0;
          v210 = 0;
          v211 = __PAIR64__(HIDWORD(v211), 0x7FFFFFFF) + 0x100000000;
        }

        re::TypeRegistry::typeInfo(v4, v220, &v225);
        if (v225 == 1)
        {
          v207 = *a2;
          if (re::TypeInfo::isDependentOn(&v225 + 1, &v207, __b, *&v207))
          {
LABEL_21:
            re::DynamicArray<re::TypeID>::add(v212, v220);
          }
        }

        v8 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v217[8]);
      }

      while (*&v217[8] != v205 || *&v217[16] != 0xFFFF || *&v217[18] != 0xFFFF);
    }

    if (v213)
    {
      v16 = v215;
      v203 = &v215[v213];
      do
      {
        v206 = *v16;
        v204 = v16;
        v17 = *(v16 + 1);
        v18 = *(v4 + 22);
        memset(&v217[8], 0, 20);
        *&v219[2] = 0;
        re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v217, v18);
        ++*&v217[24];
        *v220 = 0;
        if (*(v4 + 22))
        {
          v19 = 0;
          do
          {
            v20 = (*(v4 + 24) + 16 * v19);
            v21 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v20 >> 31) ^ (*v20 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v20 >> 31) ^ (*v20 >> 1))) >> 27));
            re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v4 + 200, v20, v21 ^ (v21 >> 31), &v225);
            v22 = *(v4 + 27) + 32 * HIDWORD(v225);
            v24 = *(v22 + 24);
            v23 = v22 + 24;
            if (v24 == v17 && *(v23 + 2) == WORD1(v17) && ((*(v23 + 4) ^ HIDWORD(v17)) & 0xFFFFFF) == 0)
            {
              re::DynamicArray<unsigned long>::add(v217, v220);
            }

            v19 = *v220 + 1;
            *v220 = v19;
            v25 = *(v4 + 22);
          }

          while (v19 < v25);
        }

        else
        {
          v25 = 0;
        }

        v26 = *&v217[16] - 1;
        if (*&v217[16] - 1 >= 0)
        {
          v27 = -16 * *&v217[16];
          while (v25 > v26)
          {
            v28 = (*(v4 + 24) + 16 * v26);
            v29 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v28 >> 31) ^ (*v28 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v28 >> 31) ^ (*v28 >> 1))) >> 27));
            re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v4 + 200, v28, v29 ^ (v29 >> 31), &v225);
            re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(v4 + 200, &v225);
            v2 = *(v4 + 22);
            if (v2 <= v26)
            {
              goto LABEL_239;
            }

            v30 = *(v4 + 24);
            if (v2 - 1 > v26)
            {
              v31 = (v30 + 16 * v26 + 16);
              if (v31 != (v30 + 16 * v2))
              {
                v32 = v27 + 16 * v2;
                do
                {
                  re::StringID::operator=((v31 - 2), v31);
                  v31 += 2;
                  v32 -= 16;
                }

                while (v32);
                v2 = *(v4 + 22);
                v30 = *(v4 + 24);
              }
            }

            re::StringID::destroyString((v30 + 16 * v2 - 16));
            v25 = *(v4 + 22) - 1;
            *(v4 + 22) = v25;
            ++*(v4 + 46);
            v27 += 16;
            if (v26-- <= 0)
            {
              goto LABEL_47;
            }
          }

          v216 = 0;
          v228 = 0u;
          v229 = 0u;
          v226 = 0u;
          v227 = 0u;
          v225 = 0u;
          v139 = MEMORY[0x1E69E9C10];
          v140 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v220 = 136315906;
          *&v220[4] = "operator[]";
          *&v220[12] = 1024;
          if (v140)
          {
            v141 = 3;
          }

          else
          {
            v141 = 2;
          }

          *&v220[14] = 789;
          v221 = 2048;
          v222 = v26;
          v223 = 2048;
          v224 = v25;
          _os_log_send_and_compose_impl(v141, &v216, &v225, 80, &dword_1E1C61000, v139, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v220, 38, v200, v201);
          _os_crash_msg();
          __break(1u);
LABEL_239:
          v216 = 0;
          v228 = 0u;
          v229 = 0u;
          v226 = 0u;
          v227 = 0u;
          v225 = 0u;
          v142 = MEMORY[0x1E69E9C10];
          v143 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v220 = 136315906;
          *&v220[4] = "removeStableAt";
          *&v220[12] = 1024;
          if (v143)
          {
            v144 = 3;
          }

          else
          {
            v144 = 2;
          }

          *&v220[14] = 969;
          v221 = 2048;
          v222 = v26;
          v223 = 2048;
          v224 = v2;
          _os_log_send_and_compose_impl(v144, &v216, &v225, 80, &dword_1E1C61000, v142, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v220, 38, v200, v201);
          _os_crash_msg();
          __break(1u);
          goto LABEL_243;
        }

LABEL_47:
        ++*(v4 + 6);
        v34 = *v217;
        if (*v217 && *&v219[2])
        {
          v34 = (*(**v217 + 40))();
        }

        v35 = *(&v206 + 1);
        *(&v225 + 1) = 0;
        *&v226 = 0;
        DWORD2(v226) = 0;
        *&v227 = 0;
        re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(&v225, 0);
        ++DWORD2(v226);
        v36 = *(v4 + 200);
        if (v36)
        {
          v37 = 0;
          v38 = *(v4 + 98);
          while (1)
          {
            v39 = *v38;
            v38 += 14;
            if (v39 < 0)
            {
              break;
            }

            if (v36 == ++v37)
            {
              LODWORD(v37) = *(v4 + 200);
              break;
            }
          }
        }

        else
        {
          LODWORD(v37) = 0;
        }

        if (v37 != v36)
        {
          v40 = *(v4 + 200);
          do
          {
            v41 = *(v4 + 98) + 56 * v37;
            v43 = *(v41 + 8);
            v42 = (v41 + 8);
            if (v43 == v35 && v42->n128_u16[1] == WORD1(v35) && ((v42->n128_u32[1] ^ HIDWORD(v35)) & 0xFFFFFF) == 0)
            {
              re::DynamicArray<re::internal::TypeAttributeKey>::add(&v225, v42);
              v40 = *(v4 + 200);
            }

            if (v40 <= v37 + 1)
            {
              v44 = v37 + 1;
            }

            else
            {
              v44 = v40;
            }

            while (v44 - 1 != v37)
            {
              LODWORD(v37) = v37 + 1;
              if ((*(*(v4 + 98) + 56 * v37) & 0x80000000) != 0)
              {
                goto LABEL_69;
              }
            }

            LODWORD(v37) = v44;
LABEL_69:
            ;
          }

          while (v37 != v36);
        }

        v45 = v227;
        re::TypeRegistry::removeAttributes(v4, v227, v226);
        ++*(v4 + 6);
        v46 = v225;
        if (v225 && v45)
        {
          v46 = (*(*v225 + 40))();
        }

        *(&v225 + 1) = 0;
        *&v226 = 0;
        DWORD2(v226) = 0;
        *&v227 = 0;
        re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(&v225, 0);
        ++DWORD2(v226);
        v47 = *(v4 + 200);
        if (v47)
        {
          v2 = 0;
          v48 = *(v4 + 98);
          while (1)
          {
            v49 = *v48;
            v48 += 14;
            if (v49 < 0)
            {
              break;
            }

            if (v47 == ++v2)
            {
              v2 = *(v4 + 200);
              break;
            }
          }
        }

        else
        {
          v2 = 0;
        }

        if (v2 != v47)
        {
          v50 = *(v4 + 200);
          do
          {
            v51 = *(v4 + 98) + 56 * v2;
            if (*(v51 + 16) == v35 && *(v51 + 18) == WORD1(v35) && ((*(v51 + 20) ^ HIDWORD(v35)) & 0xFFFFFF) == 0)
            {
              re::DynamicArray<re::internal::TypeAttributeKey>::add(&v225, (v51 + 8));
              v50 = *(v4 + 200);
            }

            if (v50 <= v2 + 1)
            {
              v52 = (v2 + 1);
            }

            else
            {
              v52 = v50;
            }

            while (v52 - 1 != v2)
            {
              v2 = (v2 + 1);
              if ((*(*(v4 + 98) + 56 * v2) & 0x80000000) != 0)
              {
                goto LABEL_92;
              }
            }

            v2 = v52;
LABEL_92:
            ;
          }

          while (v2 != v47);
        }

        v53 = v227;
        re::TypeRegistry::removeAttributes(v4, v227, v226);
        ++*(v4 + 6);
        if (v225 && v53)
        {
          (*(*v225 + 40))();
        }

        v27 = v4 + 32;
        v54 = re::DataArray<re::internal::TypeInfoIndex>::tryGet(v205, v35);
        if (v54)
        {
          v26 = *v54 & 0xFFFFFF;
          if ((*v54 & 0xFFFFFF) != 0xFFFFFF)
          {
            v59 = HIBYTE(*v54);
            if (v59 <= 4)
            {
              if (HIBYTE(*v54) > 2u)
              {
                if (v59 == 3)
                {
                  v25 = v26;
                  v27 = *(v4 + 48);
                  if (v27 <= v26)
                  {
                    goto LABEL_267;
                  }

                  v122 = v27 - 1;
                  if (v27 - 1 <= v26)
                  {
                    v27 = v4 + 32;
                  }

                  else
                  {
                    v123 = *(v4 + 50);
                    v124 = v123 + 104 * v26;
                    v125 = v123 + 104 * v27;
                    v27 = v4 + 32;
                    if (v125 != v124 + 104)
                    {
                      memmove(v124, (v124 + 104), v125 - (v124 + 104));
                      v122 = *(v4 + 48) - 1;
                    }
                  }

                  *(v4 + 48) = v122;
                  ++*(v4 + 98);
                  while (v122 > v25)
                  {
                    v129 = re::DataArray<re::internal::TypeInfoIndex>::get(v27, *(*(v4 + 50) + 104 * v25));
                    v25 = (v26 + 1);
                    *v129 = v26 & 0xFFFFFF | (*(v129 + 3) << 24);
                    v122 = *(v4 + 48);
                    LODWORD(v26) = v26 + 1;
                  }
                }

                else
                {
                  v25 = v26;
                  v27 = *(v4 + 53);
                  if (v27 <= v26)
                  {
                    goto LABEL_263;
                  }

                  v80 = v27 - 1;
                  if (v27 - 1 <= v26)
                  {
                    v27 = v4 + 32;
                  }

                  else
                  {
                    v82 = 104 * v27 - (104 * v26 + 104);
                    v27 = v4 + 32;
                    if (v82)
                    {
                      v81 = *(v4 + 55) + 104 * v26;
                      memmove(v81, (v81 + 104), v82 - 4);
                      v80 = *(v4 + 53) - 1;
                    }
                  }

                  *(v4 + 53) = v80;
                  ++*(v4 + 108);
                  while (v80 > v25)
                  {
                    v130 = re::DataArray<re::internal::TypeInfoIndex>::get(v27, *(*(v4 + 55) + 104 * v25));
                    v25 = (v26 + 1);
                    *v130 = v26 & 0xFFFFFF | (*(v130 + 3) << 24);
                    v80 = *(v4 + 53);
                    LODWORD(v26) = v26 + 1;
                  }
                }
              }

              else
              {
                switch(v59)
                {
                  case 1u:
                    v25 = *(v4 + 33);
                    if (v25 <= v26)
                    {
                      goto LABEL_279;
                    }

                    v110 = v25 - 1;
                    if (v25 - 1 > v26)
                    {
                      v112 = 88 * v25 - (88 * v26 + 88);
                      if (v112)
                      {
                        v111 = *(v4 + 35) + 88 * v26;
                        memmove(v111, (v111 + 88), v112 - 7);
                        v110 = *(v4 + 33) - 1;
                      }
                    }

                    *(v4 + 33) = v110;
                    ++*(v4 + 68);
                    if (v110 > v26)
                    {
                      v113 = v26;
                      do
                      {
                        v114 = re::DataArray<re::internal::TypeInfoIndex>::get(v205, *(*(v4 + 35) + 88 * v26));
                        *v114 = v113++ & 0xFFFFFF | (*(v114 + 3) << 24);
                        v26 = v113;
                      }

                      while (*(v4 + 33) > v113);
                    }

                    break;
                  case 2u:
                    v25 = v26;
                    v27 = *(v4 + 38);
                    if (v27 <= v26)
                    {
                      goto LABEL_255;
                    }

                    v63 = (*(v4 + 40) + 104 * v26);
                    v2 = v63[22];
                    v64 = v63[23];
                    v65 = v63[24];
                    v66 = v65 + v64;
                    if (!(v65 + v64))
                    {
                      goto LABEL_122;
                    }

                    v202 = v65 + v64;
                    v27 = v2 + v66 - 1;
                    v6 = *(v4 + 43);
                    if (v27 >= v6)
                    {
                      goto LABEL_307;
                    }

                    if (v27 < v6 - 1)
                    {
                      v67 = *(v4 + 45);
                      v68 = (v67 + 24 * v2);
                      if (&v68[3 * v202] != (v67 + 24 * v6))
                      {
                        v69 = 24 * v6 - 24 * v2 - 24 * v202;
                        do
                        {
                          *v68 = v68[3 * v202];
                          re::StringID::operator=((v68 + 1), &v68[3 * v202 + 1]);
                          v68 += 3;
                          v69 -= 24;
                        }

                        while (v69);
                      }
                    }

                    v70 = -16;
                    v6 = v202;
                    do
                    {
                      re::StringID::destroyString((*(v4 + 45) + 24 * *(v4 + 43) + v70));
                      v70 -= 24;
                      --v6;
                    }

                    while (v6);
                    LODWORD(v66) = v202;
                    *(v4 + 43) -= v202;
                    ++*(v4 + 88);
                    v27 = *(v4 + 38);
                    v5 = v217;
                    if (v27)
                    {
LABEL_122:
                      v71 = (*(v4 + 40) + 88);
                      v72 = v27;
                      do
                      {
                        if (*v71 > v2)
                        {
                          *v71 -= v66;
                        }

                        v71 += 26;
                        --v72;
                      }

                      while (v72);
                    }

                    if (v27 <= v26)
                    {
                      goto LABEL_283;
                    }

                    v73 = v27 - 1;
                    if (v27 - 1 <= v26)
                    {
                      v27 = v4 + 32;
                    }

                    else
                    {
                      v75 = 104 * v27 - (104 * v26 + 104);
                      v27 = v4 + 32;
                      if (v75)
                      {
                        v74 = *(v4 + 40) + 104 * v26;
                        memmove(v74, (v74 + 104), v75 - 4);
                        v73 = *(v4 + 38) - 1;
                      }
                    }

                    *(v4 + 38) = v73;
                    ++*(v4 + 78);
                    while (v73 > v25)
                    {
                      v131 = re::DataArray<re::internal::TypeInfoIndex>::get(v27, *(*(v4 + 40) + 104 * v25));
                      v25 = (v26 + 1);
                      *v131 = v26 & 0xFFFFFF | (*(v131 + 3) << 24);
                      v73 = *(v4 + 38);
                      LODWORD(v26) = v26 + 1;
                    }

                    break;
                  case 0u:
                    re::internal::assertLog(4, v55, "assertion failure: '%s' (%s:line %i) Invalid type category.", "!Unreachable code", "removeType", 706);
                    _os_crash("assertion failure: (!Unreachable code) Invalid type category.");
                    __break(1u);
                    goto LABEL_231;
                }
              }
            }

            else
            {
              if (HIBYTE(*v54) <= 6u)
              {
                if (v59 == 5)
                {
                  v25 = v26;
                  v27 = *(v4 + 58);
                  if (v27 <= v26)
                  {
                    goto LABEL_275;
                  }

                  v83 = v27 - 1;
                  if (v27 - 1 <= v26)
                  {
                    v27 = v4 + 32;
                  }

                  else
                  {
                    v84 = *(v4 + 60);
                    v85 = v84 + 136 * v26;
                    v86 = v84 + 136 * v27;
                    v27 = v4 + 32;
                    if (v86 != v85 + 136)
                    {
                      memmove(v85, (v85 + 136), v86 - (v85 + 136));
                      v83 = *(v4 + 58) - 1;
                    }
                  }

                  *(v4 + 58) = v83;
                  ++*(v4 + 118);
                  while (v83 > v25)
                  {
                    v126 = re::DataArray<re::internal::TypeInfoIndex>::get(v27, *(*(v4 + 60) + 136 * v25));
                    v25 = (v26 + 1);
                    *v126 = v26 & 0xFFFFFF | (*(v126 + 3) << 24);
                    v83 = *(v4 + 58);
                    LODWORD(v26) = v26 + 1;
                  }
                }

                else
                {
                  v25 = v26;
                  v27 = *(v4 + 63);
                  if (v27 <= v26)
                  {
                    goto LABEL_271;
                  }

                  v76 = v27 - 1;
                  if (v27 - 1 <= v26)
                  {
                    v27 = v4 + 32;
                  }

                  else
                  {
                    v77 = *(v4 + 65);
                    v78 = v77 + 168 * v26;
                    v79 = v77 + 168 * v27;
                    v27 = v4 + 32;
                    if (v79 != v78 + 168)
                    {
                      memmove(v78, (v78 + 168), v79 - (v78 + 168));
                      v76 = *(v4 + 63) - 1;
                    }
                  }

                  *(v4 + 63) = v76;
                  ++*(v4 + 128);
                  while (v76 > v25)
                  {
                    v127 = re::DataArray<re::internal::TypeInfoIndex>::get(v27, *(*(v4 + 65) + 168 * v25));
                    v25 = (v26 + 1);
                    *v127 = v26 & 0xFFFFFF | (*(v127 + 3) << 24);
                    v76 = *(v4 + 63);
                    LODWORD(v26) = v26 + 1;
                  }
                }

                goto LABEL_98;
              }

              switch(v59)
              {
                case 7u:
                  v25 = v26;
                  v115 = *(v4 + 68);
                  if (v115 <= v26)
                  {
                    goto LABEL_259;
                  }

                  v116 = *(v4 + 70) + 104 * v26;
                  v2 = *(v116 + 92);
                  v6 = *(v116 + 96);
                  if (v6)
                  {
                    v117 = v2 + v6 - 1;
                    v27 = *(v4 + 73);
                    if (v117 >= v27)
                    {
                      goto LABEL_303;
                    }

                    if (v117 >= v27 - 1 || (v118 = *(v4 + 75), v119 = (v118 + 8 * v2), v120 = &v119[8 * v6], v121 = (v118 + 8 * v27), v121 == v120))
                    {
                      *(v4 + 73) = v27 - v6;
                      ++*(v4 + 148);
                      v27 = v4 + 32;
                    }

                    else
                    {
                      memmove(v119, v120, v121 - v120);
                      v115 = *(v4 + 68);
                      *(v4 + 73) -= v6;
                      ++*(v4 + 148);
                      v27 = v4 + 32;
                      if (!v115)
                      {
LABEL_222:
                        if (v115 <= v26)
                        {
                          goto LABEL_287;
                        }

                        v134 = v115 - 1;
                        if (v115 - 1 > v26)
                        {
                          v136 = 104 * v115 - (104 * v26 + 104);
                          if (v136)
                          {
                            v135 = *(v4 + 70) + 104 * v26;
                            memmove(v135, (v135 + 104), v136 - 4);
                            v134 = *(v4 + 68) - 1;
                          }
                        }

                        *(v4 + 68) = v134;
                        ++*(v4 + 138);
                        while (v134 > v25)
                        {
                          v137 = re::DataArray<re::internal::TypeInfoIndex>::get(v27, *(*(v4 + 70) + 104 * v25));
                          v25 = (v26 + 1);
                          *v137 = v26 & 0xFFFFFF | (*(v137 + 3) << 24);
                          v134 = *(v4 + 68);
                          LODWORD(v26) = v26 + 1;
                        }

                        break;
                      }
                    }
                  }

                  v132 = (*(v4 + 70) + 92);
                  v133 = v115;
                  do
                  {
                    if (*v132 > v2)
                    {
                      *v132 -= v6;
                    }

                    v132 += 26;
                    --v133;
                  }

                  while (v133);
                  goto LABEL_222;
                case 8u:
                  v6 = v26;
                  v25 = *(v4 + 78);
                  if (v25 <= v26)
                  {
                    goto LABEL_247;
                  }

                  v87 = *(v4 + 80);
                  v88 = *(v87 + 176 * v26 + 80);
                  if ((v88 & 0xFFFFFF00000000) != 0)
                  {
                    while (1)
                    {
                      v27 = *re::DataArray<re::internal::TypeInfoIndex>::get(v27, v88) & 0xFFFFFFLL;
                      v25 = *(v4 + 78);
                      if (v25 <= v27)
                      {
                        break;
                      }

                      v87 = *(v4 + 80);
                      v89 = v87 + 176 * v27;
                      --*(v89 + 88);
                      v88 = *(v89 + 80);
                      v27 = v4 + 32;
                      if ((v88 & 0xFFFFFF00000000) == 0)
                      {
                        goto LABEL_148;
                      }
                    }

LABEL_243:
                    *v220 = 0;
                    v228 = 0u;
                    v229 = 0u;
                    v226 = 0u;
                    v227 = 0u;
                    v225 = 0u;
                    v145 = MEMORY[0x1E69E9C10];
                    v146 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v217 = 136315906;
                    *&v217[4] = "operator[]";
                    *&v217[12] = 1024;
                    if (v146)
                    {
                      v147 = 3;
                    }

                    else
                    {
                      v147 = 2;
                    }

                    *&v217[14] = 789;
                    *&v217[18] = 2048;
                    *&v217[20] = v27;
                    v218 = 2048;
                    *v219 = v25;
                    _os_log_send_and_compose_impl(v147, v220, &v225, 80, &dword_1E1C61000, v145, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v200, v201);
                    _os_crash_msg();
                    __break(1u);
LABEL_247:
                    *v220 = 0;
                    v228 = 0u;
                    v229 = 0u;
                    v226 = 0u;
                    v227 = 0u;
                    v225 = 0u;
                    v148 = MEMORY[0x1E69E9C10];
                    v149 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v217 = 136315906;
                    *&v217[4] = "operator[]";
                    *&v217[12] = 1024;
                    if (v149)
                    {
                      v150 = 3;
                    }

                    else
                    {
                      v150 = 2;
                    }

                    *&v217[14] = 789;
                    *&v217[18] = 2048;
                    *&v217[20] = v6;
                    v218 = 2048;
                    *v219 = v25;
                    _os_log_send_and_compose_impl(v150, v220, &v225, 80, &dword_1E1C61000, v148, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v200, v201);
                    _os_crash_msg();
                    __break(1u);
LABEL_251:
                    *v220 = 0;
                    v228 = 0u;
                    v229 = 0u;
                    v226 = 0u;
                    v227 = 0u;
                    v225 = 0u;
                    v151 = MEMORY[0x1E69E9C10];
                    v152 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v217 = 136315906;
                    *&v217[4] = "removeStableAt";
                    *&v217[12] = 1024;
                    if (v152)
                    {
                      v153 = 3;
                    }

                    else
                    {
                      v153 = 2;
                    }

                    *&v217[14] = 969;
                    *&v217[18] = 2048;
                    *&v217[20] = v25;
                    v218 = 2048;
                    *v219 = v27;
                    _os_log_send_and_compose_impl(v153, v220, &v225, 80, &dword_1E1C61000, v151, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v200, v201);
                    _os_crash_msg();
                    __break(1u);
LABEL_255:
                    *v220 = 0;
                    v228 = 0u;
                    v229 = 0u;
                    v226 = 0u;
                    v227 = 0u;
                    v225 = 0u;
                    v154 = MEMORY[0x1E69E9C10];
                    v155 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v217 = 136315906;
                    *&v217[4] = "operator[]";
                    *&v217[12] = 1024;
                    if (v155)
                    {
                      v156 = 3;
                    }

                    else
                    {
                      v156 = 2;
                    }

                    *&v217[14] = 789;
                    *&v217[18] = 2048;
                    *&v217[20] = v25;
                    v218 = 2048;
                    *v219 = v27;
                    _os_log_send_and_compose_impl(v156, v220, &v225, 80, &dword_1E1C61000, v154, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v200, v201);
                    _os_crash_msg();
                    __break(1u);
LABEL_259:
                    *v220 = 0;
                    v228 = 0u;
                    v229 = 0u;
                    v226 = 0u;
                    v227 = 0u;
                    v225 = 0u;
                    v157 = MEMORY[0x1E69E9C10];
                    v158 = v115;
                    v159 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v217 = 136315906;
                    *&v217[4] = "operator[]";
                    *&v217[12] = 1024;
                    if (v159)
                    {
                      v160 = 3;
                    }

                    else
                    {
                      v160 = 2;
                    }

                    *&v217[14] = 789;
                    *&v217[18] = 2048;
                    *&v217[20] = v25;
                    v218 = 2048;
                    *v219 = v158;
                    _os_log_send_and_compose_impl(v160, v220, &v225, 80, &dword_1E1C61000, v157, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v200, v201);
                    _os_crash_msg();
                    __break(1u);
LABEL_263:
                    *v220 = 0;
                    v228 = 0u;
                    v229 = 0u;
                    v226 = 0u;
                    v227 = 0u;
                    v225 = 0u;
                    v161 = MEMORY[0x1E69E9C10];
                    v162 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v217 = 136315906;
                    *&v217[4] = "removeStableAt";
                    *&v217[12] = 1024;
                    if (v162)
                    {
                      v163 = 3;
                    }

                    else
                    {
                      v163 = 2;
                    }

                    *&v217[14] = 969;
                    *&v217[18] = 2048;
                    *&v217[20] = v25;
                    v218 = 2048;
                    *v219 = v27;
                    _os_log_send_and_compose_impl(v163, v220, &v225, 80, &dword_1E1C61000, v161, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v200, v201);
                    _os_crash_msg();
                    __break(1u);
LABEL_267:
                    *v220 = 0;
                    v228 = 0u;
                    v229 = 0u;
                    v226 = 0u;
                    v227 = 0u;
                    v225 = 0u;
                    v164 = MEMORY[0x1E69E9C10];
                    v165 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v217 = 136315906;
                    *&v217[4] = "removeStableAt";
                    *&v217[12] = 1024;
                    if (v165)
                    {
                      v166 = 3;
                    }

                    else
                    {
                      v166 = 2;
                    }

                    *&v217[14] = 969;
                    *&v217[18] = 2048;
                    *&v217[20] = v25;
                    v218 = 2048;
                    *v219 = v27;
                    _os_log_send_and_compose_impl(v166, v220, &v225, 80, &dword_1E1C61000, v164, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v200, v201);
                    _os_crash_msg();
                    __break(1u);
LABEL_271:
                    *v220 = 0;
                    v228 = 0u;
                    v229 = 0u;
                    v226 = 0u;
                    v227 = 0u;
                    v225 = 0u;
                    v167 = MEMORY[0x1E69E9C10];
                    v168 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v217 = 136315906;
                    *&v217[4] = "removeStableAt";
                    *&v217[12] = 1024;
                    if (v168)
                    {
                      v169 = 3;
                    }

                    else
                    {
                      v169 = 2;
                    }

                    *&v217[14] = 969;
                    *&v217[18] = 2048;
                    *&v217[20] = v25;
                    v218 = 2048;
                    *v219 = v27;
                    _os_log_send_and_compose_impl(v169, v220, &v225, 80, &dword_1E1C61000, v167, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v200, v201);
                    _os_crash_msg();
                    __break(1u);
LABEL_275:
                    *v220 = 0;
                    v228 = 0u;
                    v229 = 0u;
                    v226 = 0u;
                    v227 = 0u;
                    v225 = 0u;
                    v170 = MEMORY[0x1E69E9C10];
                    v171 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v217 = 136315906;
                    *&v217[4] = "removeStableAt";
                    *&v217[12] = 1024;
                    if (v171)
                    {
                      v172 = 3;
                    }

                    else
                    {
                      v172 = 2;
                    }

                    *&v217[14] = 969;
                    *&v217[18] = 2048;
                    *&v217[20] = v25;
                    v218 = 2048;
                    *v219 = v27;
                    _os_log_send_and_compose_impl(v172, v220, &v225, 80, &dword_1E1C61000, v170, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v200, v201);
                    _os_crash_msg();
                    __break(1u);
LABEL_279:
                    *v220 = 0;
                    v228 = 0u;
                    v229 = 0u;
                    v226 = 0u;
                    v227 = 0u;
                    v225 = 0u;
                    v173 = MEMORY[0x1E69E9C10];
                    v174 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v217 = 136315906;
                    *&v217[4] = "removeStableAt";
                    *&v217[12] = 1024;
                    if (v174)
                    {
                      v175 = 3;
                    }

                    else
                    {
                      v175 = 2;
                    }

                    *&v217[14] = 969;
                    *&v217[18] = 2048;
                    *&v217[20] = v26;
                    v218 = 2048;
                    *v219 = v25;
                    _os_log_send_and_compose_impl(v175, v220, &v225, 80, &dword_1E1C61000, v173, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v200, v201);
                    _os_crash_msg();
                    __break(1u);
LABEL_283:
                    *v220 = 0;
                    v228 = 0u;
                    v229 = 0u;
                    v226 = 0u;
                    v227 = 0u;
                    v225 = 0u;
                    v176 = MEMORY[0x1E69E9C10];
                    v177 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v217 = 136315906;
                    *&v217[4] = "removeStableAt";
                    *&v217[12] = 1024;
                    if (v177)
                    {
                      v178 = 3;
                    }

                    else
                    {
                      v178 = 2;
                    }

                    *&v217[14] = 969;
                    *&v217[18] = 2048;
                    *&v217[20] = v25;
                    v218 = 2048;
                    *v219 = v27;
                    _os_log_send_and_compose_impl(v178, v220, &v225, 80, &dword_1E1C61000, v176, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v200, v201);
                    _os_crash_msg();
                    __break(1u);
LABEL_287:
                    *v220 = 0;
                    v228 = 0u;
                    v229 = 0u;
                    v226 = 0u;
                    v227 = 0u;
                    v225 = 0u;
                    v179 = MEMORY[0x1E69E9C10];
                    v180 = v115;
                    v181 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v217 = 136315906;
                    *&v217[4] = "removeStableAt";
                    *&v217[12] = 1024;
                    if (v181)
                    {
                      v182 = 3;
                    }

                    else
                    {
                      v182 = 2;
                    }

                    *&v217[14] = 969;
                    *&v217[18] = 2048;
                    *&v217[20] = v25;
                    v218 = 2048;
                    *v219 = v180;
                    _os_log_send_and_compose_impl(v182, v220, &v225, 80, &dword_1E1C61000, v179, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v200, v201);
                    _os_crash_msg();
                    __break(1u);
LABEL_291:
                    *v220 = 0;
                    v228 = 0u;
                    v229 = 0u;
                    v226 = 0u;
                    v227 = 0u;
                    v225 = 0u;
                    v183 = MEMORY[0x1E69E9C10];
                    v184 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v217 = 136315906;
                    *&v217[4] = "operator[]";
                    *&v217[12] = 1024;
                    if (v184)
                    {
                      v185 = 3;
                    }

                    else
                    {
                      v185 = 2;
                    }

                    *&v217[14] = 789;
                    *&v217[18] = 2048;
                    *&v217[20] = v6;
                    v218 = 2048;
                    *v219 = v25;
                    _os_log_send_and_compose_impl(v185, v220, &v225, 80, &dword_1E1C61000, v183, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v200, v201);
                    _os_crash_msg();
                    __break(1u);
LABEL_295:
                    *v220 = 0;
                    v228 = 0u;
                    v229 = 0u;
                    v226 = 0u;
                    v227 = 0u;
                    v225 = 0u;
                    v186 = MEMORY[0x1E69E9C10];
                    v187 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v217 = 136315906;
                    *&v217[4] = "operator[]";
                    *&v217[12] = 1024;
                    if (v187)
                    {
                      v188 = 3;
                    }

                    else
                    {
                      v188 = 2;
                    }

                    *&v217[14] = 789;
                    *&v217[18] = 2048;
                    *&v217[20] = v6;
                    v218 = 2048;
                    *v219 = v2;
                    _os_log_send_and_compose_impl(v188, v220, &v225, 80, &dword_1E1C61000, v186, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v200, v201);
                    _os_crash_msg();
                    __break(1u);
LABEL_299:
                    *v220 = 0;
                    v228 = 0u;
                    v229 = 0u;
                    v226 = 0u;
                    v227 = 0u;
                    v225 = 0u;
                    v189 = MEMORY[0x1E69E9C10];
                    v190 = v95;
                    v191 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v217 = 136315906;
                    *(v5 + 4) = "removeStableAt";
                    *&v217[12] = 1024;
                    if (v191)
                    {
                      v192 = 3;
                    }

                    else
                    {
                      v192 = 2;
                    }

                    *(v5 + 14) = 969;
                    *&v217[18] = 2048;
                    *(v5 + 20) = v6;
                    v218 = 2048;
                    *(v5 + 30) = v190;
                    _os_log_send_and_compose_impl(v192, v220, &v225, 80, &dword_1E1C61000, v189, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v200, v201);
                    _os_crash_msg();
                    __break(1u);
LABEL_303:
                    *v220 = 0;
                    v228 = 0u;
                    v229 = 0u;
                    v226 = 0u;
                    v227 = 0u;
                    v225 = 0u;
                    v193 = MEMORY[0x1E69E9C10];
                    v194 = v117;
                    v195 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v217 = 136315906;
                    *(v5 + 4) = "removeManyStableAt";
                    *&v217[12] = 1024;
                    if (v195)
                    {
                      v196 = 3;
                    }

                    else
                    {
                      v196 = 2;
                    }

                    *(v5 + 14) = 986;
                    *&v217[18] = 2048;
                    *(v5 + 20) = v194;
                    v218 = 2048;
                    *(v5 + 30) = v27;
                    _os_log_send_and_compose_impl(v196, v220, &v225, 80, &dword_1E1C61000, v193, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v200, v201);
                    _os_crash_msg();
                    __break(1u);
LABEL_307:
                    *v220 = 0;
                    v228 = 0u;
                    v229 = 0u;
                    v226 = 0u;
                    v227 = 0u;
                    v225 = 0u;
                    v197 = MEMORY[0x1E69E9C10];
                    v198 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v217 = 136315906;
                    *(v5 + 4) = "removeManyStableAt";
                    *&v217[12] = 1024;
                    if (v198)
                    {
                      v199 = 3;
                    }

                    else
                    {
                      v199 = 2;
                    }

                    *(v5 + 14) = 986;
                    *&v217[18] = 2048;
                    *(v5 + 20) = v27;
                    v218 = 2048;
                    *(v5 + 30) = v6;
                    _os_log_send_and_compose_impl(v199, v220, &v225, 80, &dword_1E1C61000, v197, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v200, v201);
                    _os_crash_msg();
                    __break(1u);
                  }

LABEL_148:
                  if (v25 <= v26)
                  {
                    goto LABEL_291;
                  }

                  v90 = v87 + 176 * v26;
                  v91 = *(v90 + 92);
                  v27 = *(v90 + 96);
                  v5 = 176;
                  re::DynamicArray<re::internal::ObjectMemberInfo>::removeManyStableAt(v4 + 648, v91, v27);
                  v2 = *(v4 + 78);
                  if (v2 <= v26)
                  {
                    goto LABEL_295;
                  }

                  v92 = *(v4 + 80) + 176 * v26;
                  v2 = *(v92 + 100);
                  v93 = *(v92 + 104);
                  re::DynamicArray<re::internal::ObjectMemberInfo>::removeManyStableAt(v4 + 648, v2, v93);
                  v94 = v93;
                  v95 = *(v4 + 78);
                  v5 = v217;
                  if (v95)
                  {
                    v96 = (*(v4 + 80) + 92);
                    v97 = *(v4 + 78);
                    do
                    {
                      if (*v96 > v91)
                      {
                        *v96 -= v27;
                      }

                      v98 = v96[13];
                      if (v98 > v91)
                      {
                        v96[13] = v98 - v27;
                      }

                      v99 = v96[2];
                      if (v99 > v2)
                      {
                        v96[2] = v99 - v94;
                      }

                      v96 += 44;
                      --v97;
                    }

                    while (v97);
                  }

                  if (v95 <= v26)
                  {
                    goto LABEL_299;
                  }

                  v100 = *(v4 + 80);
                  v27 = v4 + 32;
                  if (v95 - 1 <= v26 || v100 + 176 * v26 + 176 == v100 + 176 * v95)
                  {
LABEL_171:
                    re::StringID::destroyString((v100 + 176 * v95 - 64));
                    v108 = *(v4 + 78) - 1;
                    *(v4 + 78) = v108;
                    ++*(v4 + 158);
                    while (v108 > v6)
                    {
                      v109 = re::DataArray<re::internal::TypeInfoIndex>::get(v27, *(*(v4 + 80) + 176 * v6));
                      v6 = (v26 + 1);
                      *v109 = v26 & 0xFFFFFF | (*(v109 + 3) << 24);
                      v108 = *(v4 + 78);
                      LODWORD(v26) = v26 + 1;
                    }

                    break;
                  }

                  v101 = 176 * v26;
                  v2 = 176 * v95 - 176;
                  while (2)
                  {
                    v102 = v100 + v101;
                    v103 = *(v100 + v101 + 224);
                    *(v102 + 32) = *(v100 + v101 + 208);
                    *(v102 + 48) = v103;
                    v104 = *(v100 + v101 + 192);
                    *v102 = *(v100 + v101 + 176);
                    *(v102 + 16) = v104;
                    v105 = *(v100 + v101 + 256);
                    *(v102 + 64) = *(v100 + v101 + 240);
                    *(v102 + 80) = v105;
                    *(v102 + 92) = *(v100 + v101 + 268);
                    re::StringID::operator=((v100 + v101 + 112), (v100 + v101 + 288));
                    if (*(v100 + v101 + 128))
                    {
                      if ((*(v100 + v101 + 304) & 1) == 0)
                      {
                        *(v102 + 128) = 0;
                        goto LABEL_169;
                      }

LABEL_168:
                      *(v100 + v101 + 136) = *(v100 + v101 + 312);
                    }

                    else if (*(v100 + v101 + 304))
                    {
                      *(v102 + 128) = 1;
                      goto LABEL_168;
                    }

LABEL_169:
                    v106 = v100 + v101;
                    v107 = *(v100 + v101 + 336);
                    *(v106 + 144) = *(v100 + v101 + 320);
                    *(v106 + 160) = v107;
                    v100 += 176;
                    v2 -= 176;
                    if (v101 == v2)
                    {
                      v95 = *(v4 + 78);
                      v100 = *(v4 + 80);
                      v5 = v217;
                      v27 = v4 + 32;
                      goto LABEL_171;
                    }

                    continue;
                  }

                case 9u:
                  v25 = v26;
                  v27 = *(v4 + 93);
                  if (v27 <= v26)
                  {
                    goto LABEL_251;
                  }

                  v60 = v27 - 1;
                  if (v27 - 1 <= v26)
                  {
                    v27 = v4 + 32;
                  }

                  else
                  {
                    v62 = 112 * v27 - (112 * v26 + 112);
                    v27 = v4 + 32;
                    if (v62)
                    {
                      v61 = *(v4 + 95) + 112 * v26;
                      memmove(v61, (v61 + 112), v62 - 4);
                      v60 = *(v4 + 93) - 1;
                    }
                  }

                  *(v4 + 93) = v60;
                  ++*(v4 + 188);
                  while (v60 > v25)
                  {
                    v128 = re::DataArray<re::internal::TypeInfoIndex>::get(v27, *(*(v4 + 95) + 112 * v25));
                    v25 = (v26 + 1);
                    *v128 = v26 & 0xFFFFFF | (*(v128 + 3) << 24);
                    v60 = *(v4 + 93);
                    LODWORD(v26) = v26 + 1;
                  }

                  break;
              }
            }
          }
        }

LABEL_98:
        v56 = re::TypeRegistry::typeName(v4, &v206);
        v57 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v56 >> 31) ^ (*v56 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v56 >> 31) ^ (*v56 >> 1))) >> 27));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v4 + 200, v56, v57 ^ (v57 >> 31), &v225);
        re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(v4 + 200, &v225);
        v58 = *(&v206 + 1);
        re::DataArray<re::TypeRegistry::TypeNameAndVersion>::destroy(v4 + 96, *(&v206 + 1));
        v8 = re::DataArray<re::internal::TypeInfoIndex>::destroy(v27, v58);
        v16 = v204 + 1;
      }

      while (v204 + 1 != v203);
    }

LABEL_231:
    ++*(v4 + 6);
    v138 = re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(__b);
    result = v212[0];
    if (v212[0])
    {
      if (v215)
      {
        return (*(*v212[0] + 40))(v138);
      }
    }
  }

  return result;
}

void re::DynamicArray<re::internal::ObjectMemberInfo>::removeManyStableAt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = a2 + a3 - 1;
    v6 = *(a1 + 16);
    if (v5 >= v6)
    {
      v17 = 0;
      memset(v26, 0, sizeof(v26));
      v14 = MEMORY[0x1E69E9C10];
      v18 = 136315906;
      v19 = "removeManyStableAt";
      v20 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }

      v21 = 986;
      v22 = 2048;
      v23 = v5;
      v24 = 2048;
      v25 = v6;
      _os_log_send_and_compose_impl(v15, &v17, v26, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
      _os_crash_msg();
      __break(1u);
    }

    if (v5 < v6 - 1)
    {
      v7 = *(a1 + 32);
      if (v7 + 40 * a2 + 40 * a3 != v7 + 40 * v6)
      {
        v8 = 40 * a2;
        v9 = 40 * v6 - 40 * a3;
        v10 = v7 + 40 * a3;
        do
        {
          v11 = v7 + v8;
          *(v7 + v8) = *(v10 + v8);
          re::StringID::operator=((v7 + v8 + 8), (v10 + v8 + 8));
          *(v11 + 24) = *(v10 + v8 + 24);
          *(v11 + 32) = *(v10 + v8 + 32);
          v7 += 40;
          v9 -= 40;
          v10 += 40;
        }

        while (v8 != v9);
      }
    }

    v12 = -32;
    v13 = a3;
    do
    {
      re::StringID::destroyString((*(a1 + 32) + 40 * *(a1 + 16) + v12));
      v12 -= 40;
      --v13;
    }

    while (v13);
    *(a1 + 16) -= a3;
    ++*(a1 + 24);
  }
}

void re::DataArray<re::TypeRegistry::TypeNameAndVersion>::destroy(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v21 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 16;
  v5 = re::DataArray<re::TextureAtlasTile>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (v5)
  {
    v6 = v5;
    re::StringID::destroyString(v5);
    v7 = *(a1 + 16);
    if (v7 <= HIWORD(v2))
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
      v17 = HIWORD(v2);
      v18 = 2048;
      v19 = v7;
      _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *v6 = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }
}

_DWORD *re::DataArray<re::internal::TypeInfoIndex>::destroy(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v20 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 16;
  result = re::DataArray<re::internal::TypeInfoIndex>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
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

__n128 re::DynamicArray<re::internal::TypeAttributeKey>::add(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
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

        re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = (*(a1 + 32) + 24 * v5);
  result = *a2;
  v11[1].n128_u64[0] = a2[1].n128_u64[0];
  *v11 = result;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void re::TypeRegistry::removeAttributes(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 24 * a3;
    do
    {
      v6 = *a2;
      v20 = *(a2 + 2);
      v19 = v6;
      v7 = re::Hash<re::internal::TypeAttributeKey>::operator()(v15, &v19);
      re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::findEntry<re::internal::TypeAttributeKey>(a1 + 768, v7, v15, &v19);
      v8 = v17;
      v9 = *(a1 + 784);
      v10 = re::Hash<re::internal::TypeAttributeKey>::operator()(v15, &v19);
      re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::findEntry<re::internal::TypeAttributeKey>(a1 + 768, v10, v15, &v19);
      v11 = v17;
      if (v17 != 0x7FFFFFFF)
      {
        v12 = *(a1 + 784);
        v13 = *(v12 + 56 * v17) & 0x7FFFFFFF;
        if (v18 == 0x7FFFFFFF)
        {
          *(*(a1 + 776) + 4 * v16) = v13;
          v11 = v17;
        }

        else
        {
          *(v12 + 56 * v18) = *(v12 + 56 * v18) & 0x80000000 | v13;
        }

        *(v12 + 56 * v11) = *(a1 + 804);
        *(a1 + 804) = v11;
        --*(a1 + 796);
        ++*(a1 + 808);
      }

      v14 = v9 + 56 * v8;
      if (*(v14 + 32))
      {
        if (*(v14 + 40))
        {
          re::TypeRegistry::typeInfo(a1, v19, v15);
          re::TypeInfo::releaseInstance(&v16, *(v14 + 32), *(a1 + 16), 0);
        }
      }

      a2 = (a2 + 24);
      v5 -= 24;
    }

    while (v5);
  }
}

void re::TypeRegistry::overrideAllocator(re *a1, re **a2, uint64_t a3)
{
  if (!*a2)
  {
    re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Invalid type ID.", "typeID.isValid()", "overrideAllocator", 787);
    _os_crash("assertion failure: (typeID.isValid()) Invalid type ID.");
    __break(1u);
    goto LABEL_8;
  }

  if (*a2 != a1)
  {
LABEL_8:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Wrong type registry.", "typeID.registry() == this", "overrideAllocator", 788);
    _os_crash("assertion failure: (typeID.registry() == this) Wrong type registry.");
    __break(1u);
    return;
  }

  v4 = a3;
  re::TypeRegistry::typeInfo(a1, a2, v6);
  if (v4)
  {
    v5 = 32;
  }

  else
  {
    v5 = 0;
  }

  *(v7 + 48) = *(v7 + 48) & 0xFFFFFFDF | v5;
  ++*(a1 + 6);
}

void re::TypeRegistry::buildTranslationTable(uint64_t **this, const re::TypeRegistry *a2)
{
  if (a2)
  {
    re::TypeRegistry::setContainsPolymorphicFlags(this);
    v4 = this[107];
    if (v4)
    {
      v5 = this[2];
      re::FixedArray<CoreIKTransform>::deinit(v4 + 33);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 30);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 27);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 24);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 21);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 18);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 15);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 12);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 9);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 6);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 3);
      (*(*v5 + 40))(v5, v4);
      this[107] = 0;
    }

    v6 = (*(*this[2] + 32))(this[2], 288, 8);
    *v6 = this;
    *(v6 + 8) = a2;
    *(v6 + 40) = 0u;
    *(v6 + 56) = 0u;
    *(v6 + 72) = 0u;
    *(v6 + 88) = 0u;
    *(v6 + 104) = 0u;
    *(v6 + 120) = 0u;
    *(v6 + 136) = 0u;
    *(v6 + 152) = 0u;
    *(v6 + 168) = 0u;
    *(v6 + 184) = 0u;
    *(v6 + 200) = 0u;
    *(v6 + 216) = 0u;
    *(v6 + 232) = 0u;
    *(v6 + 248) = 0u;
    *(v6 + 280) = 0;
    *(v6 + 24) = 0u;
    *(v6 + 264) = 0u;
    re::internal::TypeTranslationTable::buildTables(v6);
    this[107] = v6;
  }

  else
  {
    re::internal::assertLog(4, 0, "assertion failure: '%s' (%s:line %i) runtimeTypeRegistry must not be null.", "runtimeTypeRegistry", "buildTranslationTable", 801);
    _os_crash("assertion failure: (runtimeTypeRegistry) runtimeTypeRegistry must not be null.");
    __break(1u);
  }
}

uint64_t re::TypeRegistry::setContainsPolymorphicFlags(re::TypeRegistry *this)
{
  v2 = this + 32;
  result = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v8, this + 32, 0);
  v11 = this;
  v12 = v8;
  v13 = v9[0];
  if (v2 != v8 || v9[0] != 0xFFFFFFFFLL)
  {
    do
    {
      v5 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v12);
      v10[0] = v11;
      v10[1] = v5;
      re::TypeRegistry::typeInfo(this, v10, &v8);
      if (v8 == 1)
      {
        re::TypeRegistry::setContainsPolymorphicFlag(this, v9);
      }

      result = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v12);
    }

    while (v12 != v2 || v13 != 0xFFFF || WORD1(v13) != 0xFFFF);
  }

  return result;
}

uint64_t re::TypeRegistry::setContainsPolymorphicFlag(re::TypeRegistry *this, const re::TypeInfo *a2)
{
  v2 = *(a2 + 2);
  v3 = *(v2 + 48);
  if ((v3 & 0x40) != 0)
  {
    return (v3 >> 7) & 1;
  }

  *(v2 + 48) = v3 | 0x40;
  v6 = *(a2 + 12);
  if (v6 > 5)
  {
    if (*(a2 + 12) <= 7u)
    {
      if (v6 != 6)
      {
        if (v6 == 7)
        {
          v7 = *(*(a2 + 2) + 96);
          if (v7)
          {
            v8 = 0;
            while (1)
            {
              re::TypeInfo::unionMember(&v21, a2, v8);
              if (re::TypeRegistry::setContainsPolymorphicFlag(this, &v21))
              {
                goto LABEL_29;
              }

              if (v7 == ++v8)
              {
                goto LABEL_37;
              }
            }
          }
        }

        goto LABEL_37;
      }

      re::TypeRegistry::typeInfo(*a2, *(*(a2 + 2) + 80), &v21);
      re::TypeInfo::TypeInfo(v19, v22);
      if (!re::TypeRegistry::setContainsPolymorphicFlag(this, v19))
      {
        re::TypeRegistry::typeInfo(*a2, *(*(a2 + 2) + 88), &v21);
        re::TypeInfo::TypeInfo(v17, v22);
        v10 = v17;
        goto LABEL_23;
      }

LABEL_29:
      v12 = *(v2 + 48);
      goto LABEL_30;
    }

    if (v6 == 8)
    {
      re::TypeRegistry::typeInfo(*a2, *(*(a2 + 2) + 80), v19);
      if (v19[0] == 1 && re::TypeRegistry::setContainsPolymorphicFlag(this, &v20))
      {
        goto LABEL_29;
      }

      re::TypeMemberCollection::TypeMemberCollection(v17, *a2, *(a2 + 2));
      if (v18)
      {
        v14 = 0;
        do
        {
          re::TypeMemberCollection::operator[](v17, v14, v16);
          re::TypeRegistry::typeInfo(v16[0], *v16[2], &v21);
          re::TypeInfo::TypeInfo(v15, v22);
          if (re::TypeRegistry::setContainsPolymorphicFlag(this, v15))
          {
            goto LABEL_29;
          }
        }

        while (++v14 < v18);
      }
    }

    else if (v6 == 9)
    {
      if (re::TypeInfo::isPointerToPolymorphicType(a2))
      {
        goto LABEL_29;
      }

      re::TypeRegistry::typeInfo(*a2, *(*(a2 + 2) + 80), &v21);
      re::TypeInfo::TypeInfo(v19, v22);
      if (re::TypeRegistry::setContainsPolymorphicFlag(this, v19))
      {
        goto LABEL_29;
      }
    }

LABEL_37:
    result = 0;
    v12 = *(v2 + 48);
    goto LABEL_38;
  }

  if (*(a2 + 12) > 3u)
  {
    if (v6 != 4 && v6 != 5)
    {
      goto LABEL_37;
    }

LABEL_22:
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 2) + 80), &v21);
    re::TypeInfo::TypeInfo(v19, v22);
    v10 = v19;
LABEL_23:
    v11 = re::TypeRegistry::setContainsPolymorphicFlag(this, v10);
    v12 = *(v2 + 48);
    if (v11)
    {
LABEL_30:
      v13 = v12 | 0x80;
      result = 1;
LABEL_39:
      *(v2 + 48) = v13;
      return result;
    }

    result = 0;
LABEL_38:
    v13 = v12 & 0xFFFFFF7F;
    goto LABEL_39;
  }

  if (v6 == 3)
  {
    goto LABEL_22;
  }

  if (*(a2 + 12))
  {
    goto LABEL_37;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid type category.", "!Unreachable code", "setContainsPolymorphicFlag", 940);
  result = _os_crash("assertion failure: (!Unreachable code) Invalid type category.");
  __break(1u);
  return result;
}

uint64_t re::TypeRegistry::fixupUndefinedInitialRelease(re::TypeRegistry *this)
{
  v2 = this + 32;
  result = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v8, this + 32, 0);
  v11 = this;
  v12 = v8;
  v13 = v9[0];
  if (v2 != v8 || v9[0] != 0xFFFFFFFFLL)
  {
    do
    {
      v5 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v12);
      v10[0] = v11;
      v10[1] = v5;
      re::TypeRegistry::typeInfo(this, v10, &v8);
      if (v8 == 1)
      {
        re::TypeRegistry::fixupUndefinedInitialRelease(this, v9);
      }

      result = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v12);
    }

    while (v12 != v2 || v13 != 0xFFFF || WORD1(v13) != 0xFFFF);
  }

  return result;
}

void *re::TypeRegistry::fixupUndefinedInitialRelease(void *this, const re::TypeInfo *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 2);
  if (*(v2 + 64) == -1)
  {
    v4 = this;
    this = re::DataArray<re::internal::TypeInfoIndex>::get((this + 4), *v2);
    v5 = this;
    v6 = *(a2 + 12);
    if (v6 == 6)
    {
      re::TypeRegistry::typeInfo(*a2, *(*(a2 + 2) + 80), &v35);
      this = re::TypeInfo::TypeInfo(&v29, &v35 + 8);
      v13 = *(*&v32[2] + 64);
      if (v13 == -1)
      {
        return this;
      }

      re::TypeRegistry::typeInfo(*a2, *(*(a2 + 2) + 88), &v35);
      this = re::TypeInfo::TypeInfo(&v29, &v35 + 8);
      v7 = *v5 & 0xFFFFFF;
      v14 = v4[63];
      if (v14 > v7)
      {
        v9 = *(*&v32[2] + 64);
        if (v13 > v9)
        {
          v9 = v13;
        }

        v10 = v4[65];
        v11 = 168;
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 == 5)
      {
        re::TypeRegistry::typeInfo(*a2, *(*(a2 + 2) + 80), &v35);
        this = re::TypeInfo::TypeInfo(&v29, &v35 + 8);
        v7 = *v5 & 0xFFFFFF;
        v12 = v4[58];
        if (v12 > v7)
        {
          v9 = *(*&v32[2] + 64);
          v10 = v4[60];
          v11 = 136;
          goto LABEL_14;
        }

        v28 = 0;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v35 = 0u;
        v15 = MEMORY[0x1E69E9C10];
        v16 = v12;
        v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v29 = 136315906;
        v30 = "operator[]";
        v31 = 1024;
        if (v17)
        {
          v18 = 3;
        }

        else
        {
          v18 = 2;
        }

        *v32 = 789;
        *&v32[4] = 2048;
        *&v32[6] = v7;
        v33 = 2048;
        v34 = v16;
        _os_log_send_and_compose_impl(v18, &v28, &v35, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v29, 38, v27);
        _os_crash_msg();
        __break(1u);
      }

      else
      {
        if (v6 != 4)
        {
          return this;
        }

        re::TypeRegistry::typeInfo(*a2, *(*(a2 + 2) + 80), &v35);
        this = re::TypeInfo::TypeInfo(&v29, &v35 + 8);
        v7 = *v5 & 0xFFFFFF;
        v8 = v4[53];
        if (v8 > v7)
        {
          v9 = *(*&v32[2] + 64);
          v10 = v4[55];
          v11 = 104;
LABEL_14:
          *(v10 + v7 * v11 + 64) = v9;
          return this;
        }
      }

      v28 = 0;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
      v19 = MEMORY[0x1E69E9C10];
      v20 = v8;
      v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v29 = 136315906;
      v30 = "operator[]";
      v31 = 1024;
      if (v21)
      {
        v22 = 3;
      }

      else
      {
        v22 = 2;
      }

      *v32 = 789;
      *&v32[4] = 2048;
      *&v32[6] = v7;
      v33 = 2048;
      v34 = v20;
      _os_log_send_and_compose_impl(v22, &v28, &v35, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v29, 38, v27);
      _os_crash_msg();
      __break(1u);
    }

    v28 = 0;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v23 = MEMORY[0x1E69E9C10];
    v24 = v14;
    v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v29 = 136315906;
    v30 = "operator[]";
    v31 = 1024;
    if (v25)
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    *v32 = 789;
    *&v32[4] = 2048;
    *&v32[6] = v7;
    v33 = 2048;
    v34 = v24;
    _os_log_send_and_compose_impl(v26, &v28, &v35, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v29, 38, v27);
    _os_crash_msg();
    __break(1u);
  }

  return this;
}

_anonymous_namespace_ *re::DataArray<re::internal::TypeInfoIndex>::allocBlock(void *a1)
{
  v3 = 4 * *(a1 + 11);
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

uint64_t re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v28, 0, 36);
          *&v28[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v28, v9, v8);
          v11 = *v28;
          *v28 = *a1;
          *a1 = v11;
          v12 = *&v28[16];
          v13 = *(a1 + 16);
          *&v28[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v28[24];
          *&v28[24] = *(a1 + 24);
          v14 = *&v28[32];
          *(a1 + 24) = v15;
          ++*&v28[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 16);
            do
            {
              if ((*(v17 - 2) & 0x80000000) != 0)
              {
                v18 = 0xBF58476D1CE4E5B9 * ((*(v17 - 1) >> 31) ^ (*(v17 - 1) >> 1));
                v19 = (0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31);
                v20 = re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v19 % *(a1 + 24), v19);
                v21 = *(v17 - 1);
                v20[1] = v20[1] & 0xFFFFFFFFFFFFFFFELL | v21 & 1;
                v20[1] = *(v17 - 1) & 0xFFFFFFFFFFFFFFFELL | v21 & 1;
                v20[2] = *v17;
                *(v17 - 1) = 0;
                *v17 = &str_67;
                v20[3] = v17[1];
              }

              v17 += 4;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v28);
        }
      }

      else
      {
        if (v8)
        {
          v24 = 2 * v7;
        }

        else
        {
          v24 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v22 = *(a1 + 16);
    v23 = *(v22 + 32 * v4);
  }

  else
  {
    v22 = *(a1 + 16);
    v23 = *(v22 + 32 * v4);
    *(a1 + 36) = v23 & 0x7FFFFFFF;
  }

  v25 = 32 * v4;
  *(v22 + v25) = v23 | 0x80000000;
  v26 = *(a1 + 8);
  *(v22 + v25) = *(v26 + 4 * a2) | 0x80000000;
  *(v26 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v22 + 32 * v4;
}

void re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 32 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v2 = a2[3];
    }

    else
    {
      *(v6 + 32 * v5) = *(v6 + 32 * v5) & 0x80000000 | v7;
    }

    v8 = (v6 + 32 * v2);
    v9 = *v8;
    if (*v8 < 0)
    {
      *v8 = v9 & 0x7FFFFFFF;
      re::StringID::destroyString((v8 + 2));
      v10 = a2[3];
      v6 = *(a1 + 16);
      v9 = *(v6 + 32 * v10);
      LODWORD(v2) = a2[3];
    }

    else
    {
      v10 = v2;
    }

    v11 = *(a1 + 40);
    *(v6 + 32 * v10) = *(a1 + 36) | v9 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v2;
    *(a1 + 40) = v11 + 1;
  }
}

BOOL re::TypeAttributeCollection::contains(uint64_t *a1, void *a2)
{
  if (!*a2)
  {
    return 0;
  }

  v3 = *a1;
  v2 = a1[1];
  v6[0] = a2[1];
  v6[1] = v2;
  v7 = *(a1 + 4);
  v4 = re::Hash<re::internal::TypeAttributeKey>::operator()(v8, v6);
  re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::findEntry<re::internal::TypeAttributeKey>(v3 + 768, v4, v8, v6);
  return v9 != 0x7FFFFFFF;
}

uint64_t re::TypeAttributeCollection::operator[](uint64_t *a1, void *a2)
{
  if (!*a2)
  {
    return 0;
  }

  v3 = *a1;
  v2 = a1[1];
  v5[0] = a2[1];
  v5[1] = v2;
  v6 = *(a1 + 4);
  result = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v3 + 768, v5);
  if (result)
  {
    return *result;
  }

  return result;
}

void re::ArrayAccessor::reset(re::ArrayAccessor *this, void ***a2, re::Allocator *a3, const re::TypeInfo *a4)
{
  v8 = *this;
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), v28);
  re::TypeInfo::TypeInfo(v26, v29);
  v9 = v27[12];
  v10 = *(this + 2);
  if ((*(v10 + 92) & 0xFFFFFF) != 0)
  {
    re::TypeRegistry::typeInfo(v8, *(v10 + 88), v28);
    re::TypeInfo::TypeInfo(v25, v29);
    v11 = *(*(this + 2) + 96);
    Unsigned = re::internal::readUnsigned((a2 + v11), v25, v12);
    if (Unsigned)
    {
      if ((v9 & 1) == 0)
      {
        v14 = Unsigned;
        for (i = 0; i != v14; ++i)
        {
          v16 = re::ArrayAccessor::elementAtUnchecked(this, a2, i);
          re::TypeInfo::destruct(v26, v16, a3, 0);
        }
      }

      (*(*a3 + 40))(a3, *a2);
      re::internal::writeUnsigned((a2 + v11), v25, 0);
      *a2 = 0;
    }

    if (a4)
    {
      v17 = re::internal::checkedArraySize(v27[2], a4);
      re::internal::writeUnsigned((a2 + v11), v25, a4);
      v18 = (*(*a3 + 32))(a3, v17, v27[3]);
      *a2 = v18;
      if ((v9 & 1) == 0)
      {
        v19 = 0;
        do
        {
          v20 = re::ArrayAccessor::elementAtUnchecked(this, a2, v19);
          re::TypeInfo::construct(v26, v20, a3, 0);
          v19 = (v19 + 1);
        }

        while (a4 != v19);
        return;
      }

      v24 = v17;
LABEL_19:
      bzero(v18, v24);
    }
  }

  else
  {
    v21 = *(v10 + 96);
    if (!v21)
    {
      return;
    }

    if (v9)
    {
      v24 = re::internal::checkedArraySize(v27[2], a4);
      v18 = a2;
      goto LABEL_19;
    }

    for (j = 0; j != v21; ++j)
    {
      v23 = re::ArrayAccessor::elementAtUnchecked(this, a2, j);
      re::TypeInfo::destruct(v26, v23, a3, 0);
      re::TypeInfo::construct(v26, v23, a3, 0);
    }
  }
}

uint64_t re::ArrayAccessor::elementAtUnchecked(re::ArrayAccessor *this, void ***a2, uint64_t a3)
{
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), v9);
  re::TypeInfo::TypeInfo(v7, &v10);
  if ((*(*(this + 2) + 92) & 0xFFFFFF) != 0)
  {
    a2 = *a2;
  }

  return a2 + *(v8 + 8) * a3;
}

uint64_t re::ArrayAccessor::size(re::ArrayAccessor *this, char *a2)
{
  v4 = *(this + 2);
  if ((*(v4 + 92) & 0xFFFFFF) == 0)
  {
    return *(v4 + 96);
  }

  v11[8] = v2;
  v11[9] = v3;
  re::TypeRegistry::typeInfo(*this, *(v4 + 88), v10);
  re::TypeInfo::TypeInfo(v9, v11);
  return re::internal::readUnsigned(&a2[*(*(this + 2) + 96)], v9, v7);
}

void re::IntrospectionWalker::walkPolymorphicPointer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  __dst = 0;
  memcpy(&__dst, v6, *(v7 + 20));
  v8 = *(*(a1 + 16) + 8);
  v9 = *(v8 + 24);
  while (v9 != __dst)
  {
    v9 = *(v8 + 64);
    v8 += 40;
  }

  v10 = *(v8 + 8);
  v11 = (a2 + *(v8 + 32));

  re::IntrospectionWalker::walk(v10, v11, a3);
}

void re::IntrospectionWalker::walk(uint64_t a1, const re::IntrospectionBase **a2, uint64_t a3)
{
  v57[3] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 24);
  *&buf = a2;
  if (v6)
  {
    v3 = a3;
    v4 = a2;
    while (1)
    {
      v7 = (*(*v6 + 48))(v6, a1, &buf);
      v9 = *(a1 + 16);
      if (v9 != 13)
      {
        break;
      }

      if (!(*(*a1 + 56))(a1, v4))
      {
        return;
      }

      v10 = *(a1 + 48);
      v4 = (*(*a1 + 80))(a1, v4);
      v6 = *(v3 + 24);
      *&buf = v4;
      a1 = v10;
      if (!v6)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v7 = std::__throw_bad_function_call[abi:nn200100]();
  }

  if (v9 > 5)
  {
    if (v9 > 8)
    {
      if ((v9 - 9) < 2)
      {
        return;
      }

      if (v9 != 11)
      {
        goto LABEL_76;
      }

      if (*(a1 + 104))
      {
        v29 = (*(a1 + 96))(v4);
        if (v29)
        {
          v30 = v29;
          for (i = 0; i != v30; ++i)
          {
            v32 = (*(a1 + 104))(i, v4);
            if (v32)
            {
              v34 = v33 == 0;
            }

            else
            {
              v34 = 1;
            }

            if (!v34)
            {
              re::IntrospectionWalker::walk(v32, v33, v3);
            }
          }
        }
      }

      return;
    }

    if (v9 == 6)
    {
      return;
    }

    if (v9 == 7)
    {
      *&buf = &unk_1F5D0C8C8;
      *(&buf + 1) = a1;
      v55 = v3;
      p_buf = &buf;
      (*(*a1 + 104))(a1, v4, &buf);
      std::__function::__value_func<BOOL ()(void const*,void *)>::~__value_func[abi:nn200100](&buf);
      return;
    }

    if (!*(a1 + 56))
    {
      return;
    }

    v12 = 0;
    while (1)
    {
      v13 = *(*(a1 + 64) + 8 * v12);
      if (*v13 == 1)
      {
        v14 = *(v13 + 40);
        if (v14 > 1)
        {
          if (v14 == 2)
          {
            v8 = *(v4 + *(v13 + 36));
            if (v8)
            {
              v19 = *(*(*(v13 + 16) + 48) + 64);
              v20 = *v19;
              if (**v19 != 2)
              {
                v21 = (v19 + 1);
                do
                {
                  v22 = *v21++;
                  v20 = v22;
                }

                while (*v22 != 2);
              }

              v23 = *(v13 + 48);
              *&buf = v4 + *(v13 + 64);
              *(&buf + 1) = v23;
              v55 = *(v20 + 1);
              re::IntrospectionWalker::walkPolymorphicPointer(&buf, v8, v3);
            }

            goto LABEL_36;
          }

          if (v14 != 3)
          {
LABEL_77:
            re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "walkStructure", 63);
            _os_crash("assertion failure: (!Unreachable code) ");
            __break(1u);
            return;
          }

LABEL_30:
          re::IntrospectionWalker::walk(*(v13 + 16), (v4 + *(v13 + 36)), v3);
          goto LABEL_36;
        }

        if (!v14)
        {
          goto LABEL_30;
        }

        if (v14 != 1)
        {
          goto LABEL_77;
        }

        v15 = *(v13 + 48);
        if (!v15)
        {
          v42 = *re::foundationIntrospectionLogObjects(v7);
          if (!os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          v43 = *(v13 + 8);
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v43;
          v44 = "Failed to get array length for member '%s'.";
LABEL_74:
          _os_log_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_DEFAULT, v44, &buf, 0xCu);
          return;
        }

        v16 = *(v13 + 16);
        v17 = *(v13 + 64);
        __dst = 0;
        v18 = memcpy(&__dst, v4 + v17, *(v15 + 20));
        if (__dst >> 31)
        {
          v42 = *re::foundationIntrospectionLogObjects(v18);
          if (!os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          v45 = *(v13 + 8);
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v45;
          v44 = "Array too big for member '%s'.";
          goto LABEL_74;
        }

        re::IntrospectionCStyleArray::IntrospectionCStyleArray(&buf, *(v16 + 48), __dst);
        ArcSharedObject::ArcSharedObject(&v46, 0);
        v47[1] = 0x800000001;
        v48 = 8;
        v49 = 0;
        v50 = 0;
        v51 = 0xFFFFFFFFLL;
        v46 = &unk_1F5CBD2C0;
        v52[0] = &buf;
        v52[1] = 0;
        re::IntrospectionWalker::walk(&v46, (v4 + *(v13 + 36)), v3);
        v46 = &unk_1F5CBD2C0;
        re::SerializedReference<re::IntrospectionBase const*>::reset(v52);
        v46 = &unk_1F5CCF868;
        objc_destructInstance(v47);
        *&buf = &unk_1F5CB0038;
        re::SerializedReference<re::IntrospectionBase const*>::reset(v57);
        *&buf = &unk_1F5CCF868;
        v7 = objc_destructInstance(&buf + 8);
      }

LABEL_36:
      if (++v12 >= *(a1 + 56))
      {
        return;
      }
    }
  }

  if (v9 > 2)
  {
    if (v9 == 3)
    {
      if ((*(*a1 + 88))(a1, v4))
      {
        v35 = 0;
        do
        {
          v36 = *(a1 + 48);
          v37 = (*(*a1 + 104))(a1, v4, v35);
          re::IntrospectionWalker::walk(v36, v37, v3);
          ++v35;
        }

        while ((*(*a1 + 88))(a1, v4) > v35);
      }
    }

    else if (v9 == 4)
    {
      if ((*(*a1 + 80))(a1, v4))
      {
        v39 = 0;
        do
        {
          v40 = *(a1 + 48);
          v41 = (*(*a1 + 104))(a1, v4, v39);
          re::IntrospectionWalker::walk(v40, v41, v3);
          ++v39;
        }

        while ((*(*a1 + 80))(a1, v4) > v39);
      }
    }

    else
    {
      *&buf = (*(*a1 + 88))(a1, v4);
      DWORD2(buf) = v24;
      while (1)
      {
        v25 = (*(*a1 + 96))(a1, v4);
        if (buf == v25 && WORD4(buf) == v26 && WORD5(buf) == HIWORD(v26))
        {
          break;
        }

        v27 = *(a1 + 48);
        v28 = (*(*a1 + 104))(a1, &buf);
        re::IntrospectionWalker::walk(v27, v28, v3);
        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&buf);
      }
    }
  }

  else
  {
    if (!v9)
    {
      return;
    }

    if (v9 != 1)
    {
      if (v9 == 2)
      {
        if (*(a1 + 64) >= 1)
        {
          v11 = 0;
          do
          {
            re::IntrospectionWalker::walk(*(a1 + 48), (v4 + *(*(a1 + 48) + 20) * v11++), v3);
          }

          while (v11 < *(a1 + 64));
        }

        return;
      }

LABEL_76:
      re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "walk", 156);
      _os_crash("assertion failure: (!Unreachable code) ");
      __break(1u);
    }

    v38 = *v4;
    if (v38)
    {
      re::PolymorphicData::makeWithPointer(&buf, *(a1 + 48), v38);
      if (v55)
      {
        re::IntrospectionWalker::walkPolymorphicPointer(&buf, v38, v3);
      }

      else
      {
        re::IntrospectionWalker::walk(*(a1 + 48), v38, v3);
      }
    }
  }
}

__n128 std::__function::__func<re::IntrospectionWalker::walk(re::IntrospectionBase const&,void const*,std::function<void ()(re::IntrospectionBase const&,void const*)> const&)::$_0,std::allocator<re::IntrospectionWalker::walk(re::IntrospectionBase const&,void const*,std::function<void ()(re::IntrospectionBase const&,void const*)> const&)::$_0>,BOOL ()(void const*,void *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D0C8C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<re::IntrospectionWalker::walk(re::IntrospectionBase const&,void const*,std::function<void ()(re::IntrospectionBase const&,void const*)> const&)::$_0,std::allocator<re::IntrospectionWalker::walk(re::IntrospectionBase const&,void const*,std::function<void ()(re::IntrospectionBase const&,void const*)> const&)::$_0>,BOOL ()(void const*,void *)>::operator()(uint64_t a1, const re::IntrospectionBase ***a2, const re::IntrospectionBase ***a3)
{
  v4 = *a3;
  re::IntrospectionWalker::walk(*(*(a1 + 8) + 48), *a2, *(a1 + 16));
  re::IntrospectionWalker::walk(*(*(a1 + 8) + 64), v4, *(a1 + 16));
  return 1;
}

uint64_t std::__function::__func<re::IntrospectionWalker::walk(re::IntrospectionBase const&,void const*,std::function<void ()(re::IntrospectionBase const&,void const*)> const&)::$_0,std::allocator<re::IntrospectionWalker::walk(re::IntrospectionBase const&,void const*,std::function<void ()(re::IntrospectionBase const&,void const*)> const&)::$_0>,BOOL ()(void const*,void *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::internal::readUnsigned(re::internal *this, void *a2, const re::TypeInfo *a3)
{
  v3 = *(a2[2] + 8);
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      return *this;
    }

    if (v3 == 8)
    {
      return *this;
    }
  }

  else
  {
    if (v3 == 1)
    {
      return *this;
    }

    if (v3 == 2)
    {
      return *this;
    }
  }

  re::internal::assertLog(5, a2, a3, "assertion failure: '%s' (%s:line %i) Unsupported integer type. Size of type in bytes: %zu", "!Unreachable code", "readUnsigned", 29, v3);
  result = _os_crash("assertion failure: (!Unreachable code) Unsupported integer type. Size of type in bytes: %zu", v5);
  __break(1u);
  return result;
}

_DWORD *re::internal::writeUnsigned(_DWORD *this, void *a2, const re::TypeInfo *a3)
{
  v3 = *(a2[2] + 8);
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      *this = a3;
      return this;
    }

    if (v3 == 8)
    {
      *this = a3;
      return this;
    }
  }

  else
  {
    if (v3 == 1)
    {
      *this = a3;
      return this;
    }

    if (v3 == 2)
    {
      *this = a3;
      return this;
    }
  }

  re::internal::assertLog(5, a2, a3, "assertion failure: '%s' (%s:line %i) Unsupported integer type. Size of type in bytes: %zu", "!Unreachable code", "writeUnsigned", 55, v3);
  this = _os_crash("assertion failure: (!Unreachable code) Unsupported integer type. Size of type in bytes: %zu", v4);
  __break(1u);
  return this;
}

unint64_t re::internal::checkedArraySize(unint64_t this, unint64_t a2)
{
  if (is_mul_ok(this, a2))
  {
    return this * a2;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in array. Element size = %zu bytes, count = %zu", "!overflow", "checkedArraySize", 65, this, a2, v2, v3);
  result = _os_crash("assertion failure: (!overflow) Size overflow in array. Element size = %zu bytes, count = %zu", v5, v6);
  __break(1u);
  return result;
}

uint64_t re::UnionAccessor::memberType@<X0>(re::UnionAccessor *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = *(this + 2);
  v7 = *(v6 + 96);
  if (v7 <= a2)
  {
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v10 = MEMORY[0x1E69E9C10];
    v17 = 136315906;
    v18 = "memberType";
    v19 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v20 = 37;
    v21 = 2048;
    v22 = a2;
    v23 = 2048;
    v24 = v7;
    _os_log_send_and_compose_impl(v11, &v16, &v25, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v12 = MEMORY[0x1E69E9C10];
    v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    if (v13)
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v20 = 797;
    v21 = 2048;
    v22 = v7;
    v23 = 2048;
    v24 = v3;
    _os_log_send_and_compose_impl(v14, &v16, &v25, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
    _os_crash_msg();
    __break(1u);
  }

  v8 = *this;
  v7 = *(v6 + 92) + a2;
  v3 = v8[73];
  if (v3 <= v7)
  {
    goto LABEL_8;
  }

  re::TypeRegistry::typeInfo(v8, *(v8[75] + 8 * v7), &v25);
  return re::TypeInfo::TypeInfo(a3, &v25 + 8);
}

uint64_t *re::UnionAccessor::activeMemberType@<X0>(uint64_t *__return_ptr a1@<X8>, re::UnionAccessor *this@<X0>, char *a3@<X1>)
{
  result = re::UnionAccessor::readTag(this, a3);
  if (result >= *(*(this + 2) + 96))
  {
    *a1 = 0;
  }

  else
  {
    re::UnionAccessor::memberType(this, result, v6);
    *a1 = 1;
    return re::TypeInfo::TypeInfo((a1 + 1), v6);
  }

  return result;
}

uint64_t re::UnionAccessor::readTag(re::UnionAccessor *this, char *a2)
{
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), v7);
  re::TypeInfo::TypeInfo(v6, &v8);
  return re::internal::readUnsigned(&a2[*(*(this + 2) + 88)], v6, v4);
}

_DWORD *re::UnionAccessor::reset(re::UnionAccessor *this, char *a2, const re::TypeInfo *a3, re::Allocator *a4)
{
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), v14);
  re::TypeInfo::TypeInfo(v13, &v15);
  v8 = *(*(this + 2) + 88);
  Unsigned = re::internal::readUnsigned(&a2[v8], v13, v9);
  v11 = *(*(this + 2) + 96);
  if (Unsigned < v11)
  {
    re::UnionAccessor::memberType(this, Unsigned, v14);
    re::TypeInfo::destruct(v14, a2, a4, 0);
    v11 = *(*(this + 2) + 96);
  }

  if (v11 > a3)
  {
    re::UnionAccessor::memberType(this, a3, v14);
    re::TypeInfo::construct(v14, a2, a4, 0);
  }

  return re::internal::writeUnsigned(&a2[v8], v13, a3);
}

void re::TypeBuilderHelper::registerArray(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  re::TypeRegistry::typeID(&v14, a1, a2);
  if (v14)
  {
    *a5 = v14;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v13);
    re::TypeBuilder::TypeBuilder(v12, v13);
    v11 = *a3;
    re::TypeBuilder::beginArrayType(v12, a2, &v11, a4);
    re::TypeBuilder::commitTo(a5, v12, a1);
    re::TypeBuilder::~TypeBuilder(v12, v10);
    re::StackScratchAllocator::~StackScratchAllocator(v13);
  }
}

void re::TypeBuilderHelper::registerPointer(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  re::TypeRegistry::typeID(&v26, a1, a2);
  if (v26)
  {
    *a5 = v26;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v25);
    re::TypeBuilder::TypeBuilder(v12, v25);
    v10 = *(a3 + 8);
    v15 = -1;
    memset(v16, 0, sizeof(v16));
    v17 = 0u;
    v18 = 0xFFFFFFFFLL;
    v19 = 1;
    v20 = 0;
    v21 = 0xFFFFFFFFLL;
    v22 = 1;
    v23 = 0xFFFFFFFFLL;
    v24 = 0;
    v12[0] = 9;
    re::StringID::operator=(&v13, a2);
    v14 = 1;
    *(v16 + 4) = 0x800000008uLL;
    *(&v17 + 4) = 0;
    *(&v16[1] + 4) = 0;
    v19 = -1;
    v21 = v10;
    v22 = a4;
    re::TypeBuilder::commitTo(a5, v12, a1);
    re::TypeBuilder::~TypeBuilder(v12, v11);
    re::StackScratchAllocator::~StackScratchAllocator(v25);
  }
}

void re::TypeBuilderHelper::registerCString(uint64_t *__return_ptr a1@<X8>, re::TypeBuilderHelper *this@<X0>)
{
  v10[0] = 189247272;
  v10[1] = "char*";
  v4 = re::TypeRegistry::typeID(&v9, this, v10);
  if (v9)
  {
    *a1 = v9;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v8);
    re::TypeBuilder::TypeBuilder(v7, v8);
    v6[0] = 0;
    v6[1] = 0xFFFFFFFFLL;
    re::TypeBuilder::beginObjectType(v7, v10, 1, 1, 8uLL, 8uLL, v6);
    re::TypeBuilder::setHasKnownSize(v7, 0);
    re::TypeBuilder::commitTo(a1, v7, this);
    re::TypeBuilder::~TypeBuilder(v7, v5);
    re::StackScratchAllocator::~StackScratchAllocator(v8);
  }

  if (v10[0])
  {
    if (v10[0])
    {
    }
  }
}

void re::TypeBuilderHelper::registerDynamicString(uint64_t *__return_ptr a1@<X8>, re::TypeBuilderHelper *this@<X0>)
{
  v10[0] = 0x2686EB529B3EE220;
  v10[1] = "DynamicString";
  v4 = re::TypeRegistry::typeID(&v9, this, v10);
  if (v9)
  {
    *a1 = v9;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v8);
    re::TypeBuilder::TypeBuilder(v7, v8);
    v6[0] = 0;
    v6[1] = 0xFFFFFFFFLL;
    re::TypeBuilder::beginObjectType(v7, v10, 1, 1, 0x20uLL, 8uLL, v6);
    re::TypeBuilder::setConstructor(v7, re::TypeBuilderHelper::registerDynamicString(re::TypeRegistry *)::$_0::__invoke);
    re::TypeBuilder::setDestructor(v7, re::TypeBuilder::setDefaultDestructor<re::DynamicString>(void)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setHasKnownSize(v7, 0);
    re::TypeBuilder::commitTo(a1, v7, this);
    re::TypeBuilder::~TypeBuilder(v7, v5);
    re::StackScratchAllocator::~StackScratchAllocator(v8);
  }

  if (v10[0])
  {
    if (v10[0])
    {
    }
  }
}

void re::TypeBuilderHelper::registerStringID(uint64_t *__return_ptr a1@<X8>, re::TypeBuilderHelper *this@<X0>)
{
  v10[0] = 0x458DDB01A18;
  v10[1] = "StringID";
  v4 = re::TypeRegistry::typeID(&v9, this, v10);
  if (v9)
  {
    *a1 = v9;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v8);
    re::TypeBuilder::TypeBuilder(v7, v8);
    v6[0] = 0;
    v6[1] = 0xFFFFFFFFLL;
    re::TypeBuilder::beginObjectType(v7, v10, 1, 1, 0x10uLL, 8uLL, v6);
    re::TypeBuilder::setConstructor(v7, re::TypeBuilder::setDefaultConstructor<re::StringID>(void)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v7, re::TypeBuilder::setDefaultDestructor<re::StringID>(void)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setHasKnownSize(v7, 0);
    re::TypeBuilder::commitTo(a1, v7, this);
    re::TypeBuilder::~TypeBuilder(v7, v5);
    re::StackScratchAllocator::~StackScratchAllocator(v8);
  }

  if (v10[0])
  {
    if (v10[0])
    {
    }
  }
}

void *re::TypeBuilderHelper::registerDynamicString(re::TypeRegistry *)::$_0::__invoke(void *a1, uint64_t a2, uint64_t a3)
{
  a1[2] = 0;
  a1[3] = 0;
  *a1 = a3;
  a1[1] = 0;
  return re::DynamicString::setCapacity(a1, 0);
}

void *re::TypeBuilder::setDefaultConstructor<re::StringID>(void)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result)
{
  *result = 0;
  result[1] = &str_67;
  return result;
}

float32x4_t re::lerp<float>@<Q0>(float32x4_t *a1@<X0>, uint64_t a2@<X1>, float32x4_t *a3@<X8>, float a4@<S0>)
{
  v7 = 1.0;
  v50 = 1.0 - a4;
  v8 = a1[1];
  v9 = *(a2 + 16);
  v47 = *a2;
  v48 = *a1;
  v10 = vmulq_f32(v8, v9);
  v11 = vextq_s8(v10, v10, 8uLL);
  *v10.i8 = vadd_f32(*v10.i8, *v11.f32);
  *v10.i32 = vaddv_f32(*v10.i8);
  v11.i64[0] = 0;
  v12 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v10, v11)), 0), vnegq_f32(v9), v9);
  v13 = vsubq_f32(v8, v12);
  v14 = vmulq_f32(v13, v13);
  v45 = v12;
  v46 = v8;
  v15 = vaddq_f32(v8, v12);
  v16 = vmulq_f32(v15, v15);
  v17 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v16.i8, *&vextq_s8(v16, v16, 8uLL)))));
  v18 = v17 + v17;
  v19 = (v17 + v17) == 0.0;
  v20 = 1.0;
  if (!v19)
  {
    v20 = sinf(v18) / v18;
  }

  v21 = v20;
  v22 = vrecpe_f32(LODWORD(v20));
  v23 = vmul_f32(v22, vrecps_f32(LODWORD(v21), v22));
  LODWORD(v24) = vmul_f32(v23, vrecps_f32(LODWORD(v21), v23)).u32[0];
  v25 = v50;
  if ((v50 * v18) != 0.0)
  {
    v43 = v24;
    *v23.i32 = sinf(v50 * v18);
    v24 = v43;
    v25 = v50;
    v7 = *v23.i32 / (v50 * v18);
  }

  *v23.i32 = v25 * (v24 * v7);
  v26 = vdupq_lane_s32(v23, 0);
  v27 = a4;
  v28 = v18 * a4;
  v29 = 1.0;
  if (v28 != 0.0)
  {
    v42 = v26;
    v44 = v24;
    v30 = sinf(v28);
    v26 = v42;
    v24 = v44;
    v25 = v50;
    v27 = a4;
    v29 = v30 / v28;
  }

  v31 = vmlaq_f32(vmulq_n_f32(v45, (v24 * v29) * v27), v46, v26);
  v32 = vmulq_f32(v31, v31);
  v33 = vadd_f32(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
  if (vaddv_f32(v33) == 0.0)
  {
    v34 = 0;
    v35 = 0x3F80000000000000;
  }

  else
  {
    v36 = vadd_f32(v33, vdup_lane_s32(v33, 1)).u32[0];
    v37 = vrsqrte_f32(v36);
    v38 = vmul_f32(v37, vrsqrts_f32(v36, vmul_f32(v37, v37)));
    v39 = vmulq_n_f32(v31, vmul_f32(v38, vrsqrts_f32(v36, vmul_f32(v38, v38))).f32[0]);
    v35 = v39.i64[1];
    v34 = v39.i64[0];
  }

  result = vmlaq_n_f32(vmulq_n_f32(v47, v27), v48, v25);
  v41 = vmlaq_n_f32(vmulq_n_f32(*(a2 + 32), v27), a1[2], v25);
  *a3 = result;
  a3[1].i64[0] = v34;
  a3[1].i64[1] = v35;
  a3[2] = v41;
  return result;
}

double re::Projection::makeReverseDepth@<D0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = &re::introspect_BOOL(BOOL)::info;
  v3 = &re::introspect_BOOL(BOOL)::info;
  v4 = &re::introspect_BOOL(BOOL)::info;
  v5 = &re::introspect_BOOL(BOOL)::info;
  {
    v20 = a2;
    v21 = a1;
    v5 = &re::introspect_BOOL(BOOL)::info;
    v4 = &re::introspect_BOOL(BOOL)::info;
    v3 = &re::introspect_BOOL(BOOL)::info;
    v2 = &re::introspect_BOOL(BOOL)::info;
    v19 = v18;
    a2 = v20;
    a1 = v21;
    if (v19)
    {
      re::Projection::makeReverseDepth(re::Matrix4x4<float> const&)::zFlip = xmmword_1E3047670;
      re::Projection::makeReverseDepth(re::Matrix4x4<float> const&)::zFlip = xmmword_1E3047680;
      re::Projection::makeReverseDepth(re::Matrix4x4<float> const&)::zFlip = xmmword_1E306DD20;
      re::Projection::makeReverseDepth(re::Matrix4x4<float> const&)::zFlip = xmmword_1E3063230;
      v5 = &re::introspect_BOOL(BOOL)::info;
      v4 = &re::introspect_BOOL(BOOL)::info;
      v3 = &re::introspect_BOOL(BOOL)::info;
      v2 = &re::introspect_BOOL(BOOL)::info;
      a2 = v20;
      a1 = v21;
    }
  }

  v6 = 0;
  v7 = v2[87];
  v8 = v3[86];
  v9 = v4[85];
  v10 = v5[84];
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  v22[0] = *a1;
  v22[1] = v11;
  v22[2] = v12;
  v22[3] = v13;
  do
  {
    v23[v6] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v7, COERCE_FLOAT(v22[v6])), v8, *&v22[v6], 1), v9, v22[v6], 2), v10, v22[v6], 3);
    ++v6;
  }

  while (v6 != 4);
  result = *v23;
  v15 = v23[1];
  v16 = v23[2];
  v17 = v23[3];
  *a2 = v23[0];
  a2[1] = v15;
  a2[2] = v16;
  a2[3] = v17;
  return result;
}

float re::Projection::decompose(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  *a1 = v4 == 0.0;
  v5 = *(a2 + 40);
  if (v4 != 0.0)
  {
    v15.i32[0] = *(a2 + 56);
    if (v5 == -1.0)
    {
      *(a1 + 8) = 2139095040;
      *(a1 + 48) = 0;
      *v15.i32 = -*v15.i32;
    }

    else
    {
      if (v5 != 0.0)
      {
        v18 = __invert_f4(*a2);
        v18.columns[0] = vaddq_f32(v18.columns[2], vmlaq_f32(vmulq_f32(v18.columns[0], 0), 0, v18.columns[1]));
        v18.columns[2].i64[0] = vextq_s8(v18.columns[0], v18.columns[0], 8uLL).u64[0];
        v18.columns[0] = vmlaq_f32(v18.columns[0], vdupq_n_s32(0x799A130Cu), v18.columns[3]);
        *v18.columns[1].f32 = vadd_f32(*&vextq_s8(v18.columns[3], v18.columns[3], 8uLL), *v18.columns[2].f32);
        v18.columns[0].i64[0] = vextq_s8(v18.columns[0], v18.columns[0], 8uLL).u64[0];
        v15 = vdiv_f32(vneg_f32(vzip1_s32(*v18.columns[1].f32, *v18.columns[0].f32)), vzip2_s32(*v18.columns[1].f32, *v18.columns[0].f32));
        *(a1 + 4) = vrev64_s32(v15);
        if (*&v15.i32[1] <= *v15.i32)
        {
          *(a1 + 48) = 0;
          v15.i32[0] = v15.i32[1];
        }

        else
        {
          *(a1 + 4) = v15;
          *(a1 + 48) = 1;
        }

        goto LABEL_13;
      }

      *(a1 + 8) = 2139095040;
      *(a1 + 48) = 1;
    }

    *(a1 + 4) = v15.i32[0];
LABEL_13:
    v16 = 1.0 / *a2;
    *(a1 + 12) = v16 * (*v15.i32 * (*(a2 + 32) + -1.0));
    *(a1 + 16) = v16 * (*v15.i32 * (*(a2 + 32) + 1.0));
    v17 = 1.0 / *(a2 + 20);
    *(a1 + 24) = v17 * (*v15.i32 * (*(a2 + 36) + -1.0));
    result = v17 * (*v15.i32 * (*(a2 + 36) + 1.0));
    *(a1 + 20) = result;
    return result;
  }

  v6 = v5 < 0.0;
  v7 = v5 >= 0.0;
  v8 = 1.0 / v5;
  v9 = v8 * *(a2 + 56);
  v10 = v9 - v8;
  if (v6)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (!v6)
  {
    v10 = v9;
  }

  *(a1 + 48) = v7;
  *(a1 + 4) = v11;
  *(a1 + 8) = v10;
  v12 = 1.0 / *a2;
  *(a1 + 16) = v12 * (1.0 - *(a2 + 48));
  *(a1 + 12) = -((*(a2 + 48) + 1.0) * v12);
  v13 = 1.0 / *(a2 + 20);
  *(a1 + 20) = v13 * (1.0 - *(a2 + 52));
  result = -((*(a2 + 52) + 1.0) * v13);
  *(a1 + 24) = result;
  return result;
}

float32x2_t re::Projection::cullingProjectionMatrix@<D0>(uint64_t *__return_ptr a1@<X8>, re::Projection *this@<X0>)
{
  v4 = *this;
  v5 = *(this + 12);
  LODWORD(v6) = 0;
  *(&v6 + 1) = 0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  v7 = *(this + 2);
  v8.i32[0] = *(this + 3);
  v9 = *(this + 6);
  v10 = *(this + 16);
  v11 = *(this + 1);
  v12 = v10.f32[1] - v9;
  if (v4)
  {
    v13 = 2.0 / (v10.f32[0] - v8.f32[0]);
    v8.i32[1] = *(this + 6);
    v14 = vdiv_f32(vadd_f32(v8, v10), vsub_f32(v8, v10));
    *&v15 = v14;
    HIDWORD(v15) = 1.0;
    if (v5 == 1)
    {
      v16 = v7 - v11;
      v17 = v7 / (v7 - v11);
    }

    else
    {
      v16 = v11 - v7;
      v17 = v11 / (v11 - v7);
    }

    *&v29 = 1.0 / v16;
    *&v30 = 0;
    *(&v30 + 1) = v29;
    *(&v15 + 2) = v17;
    *a1 = LODWORD(v13);
    *(&v6 + 1) = 2.0 / v12;
    *(a1 + 1) = v6;
    *(a1 + 2) = v30;
    *(a1 + 3) = v15;
    if (*(this + 28) == 1)
    {
      v14 = a1[6];
    }

    result = vadd_f32(v14, *(this + 56));
    a1[6] = result;
  }

  else
  {
    v18 = (v11 + v11) / (v10.f32[0] - v8.f32[0]);
    v19 = (v8.f32[0] + v10.f32[0]) / (v10.f32[0] - v8.f32[0]);
    v10.f32[0] = (v11 + v11) / v12;
    v20 = (v9 + v10.f32[1]) / v12;
    if (v7 == INFINITY)
    {
      LODWORD(v22) = 0;
      *(&v22 + 1) = 0;
      v21 = LODWORD(v18);
      DWORD1(v22) = v10.i32[0];
      v23 = -v11;
      __asm { FMOV            V5.4S, #-1.0 }

      *&_Q5 = __PAIR64__(LODWORD(v20), LODWORD(v19));
    }

    else
    {
      v32 = v7 / (v11 - v7);
      v23 = (v7 * v11) / (v11 - v7);
      LODWORD(v22) = 0;
      *(&v22 + 1) = 0;
      v21 = LODWORD(v18);
      DWORD1(v22) = v10.i32[0];
      __asm { FMOV            V5.4S, #-1.0 }

      *&_Q5 = __PAIR64__(LODWORD(v20), LODWORD(v19));
      *(&_Q5 + 2) = v32;
    }

    *&v33 = 0;
    *(&v33 + 1) = LODWORD(v23);
    *a1 = v21;
    *(a1 + 1) = v22;
    *(a1 + 2) = _Q5;
    *(a1 + 3) = v33;
    if (*(this + 28) == 1)
    {
    }

    if (v5 == 1)
    {
      re::Projection::makeReverseDepth(a1, v36);
      v34 = v36[1];
      *a1 = v36[0];
      *(a1 + 1) = v34;
      v35 = v36[3];
      *(a1 + 2) = v36[2];
      *(a1 + 3) = v35;
    }

    result = vadd_f32(*(this + 56), a1[4]);
    a1[4] = result;
  }

  return result;
}

float re::anonymous namespace::applyObliqueClipPlane(uint64_t a1, float32x4_t a2)
{
  if (a2.f32[0] >= 0.0)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = -1.0;
  }

  v7 = v3;
  if (a2.f32[1] >= 0.0)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = -1.0;
  }

  v6 = v4;
  v9 = __invert_f4(*a1);
  v9.columns[0] = vmulq_f32(vaddq_f32(v9.columns[3], vaddq_f32(v9.columns[2], vmlaq_n_f32(vmulq_n_f32(v9.columns[0], v7), v9.columns[1], v6))), a2);
  v9.columns[0] = vmulq_n_f32(a2, 1.0 / vaddv_f32(vadd_f32(*v9.columns[0].f32, *&vextq_s8(v9.columns[0], v9.columns[0], 8uLL))));
  *(a1 + 8) = v9.columns[0].f32[0] - *(a1 + 12);
  *(a1 + 24) = v9.columns[0].f32[1] - *(a1 + 28);
  *(a1 + 40) = v9.columns[0].i32[2];
  result = v9.columns[0].f32[3] - *(a1 + 60);
  *(a1 + 56) = result;
  return result;
}

uint64_t re::Projection::unprojectPoint(float32x2_t *a1, uint64_t a2, int a3)
{
  v3 = a1[5].f32[1];
  if (v3 == 0.0)
  {
    v6 = *a1;
    v6.i32[1] = a1[2].i32[1];
    return vdiv_f32(vsub_f32(a2, a1[6]), v6);
  }

  else
  {
    v4 = *a1;
    v4.i32[1] = a1[2].i32[1];
    return vdiv_f32(vmul_n_f32(vmla_n_f32(vneg_f32(a1[4]), a2, v3), a1[7].f32[0] / -(a1[5].f32[0] - (v3 * *&a3))), v4);
  }
}

uint64_t re::solveQuadraticRootsD(re *this, double *a2, double *a3)
{
  v3 = *(this + 1);
  v4 = *(this + 2);
  v5 = *this;
  v6 = v4;
  if (fabsf(v6) < 0.00001)
  {
    v7 = v3;
    if (fabsf(v7) >= 0.00001)
    {
      *a2 = -v5 / v3;
      return 1;
    }

    return 0;
  }

  v9 = v4 * -4.0 * v5 + v3 * v3;
  if (v9 < 0.0)
  {
    return 0;
  }

  v10 = 1.0;
  if (v3 < 0.0)
  {
    v10 = -1.0;
  }

  v11 = (v3 + v10 * sqrt(v9)) * -0.5;
  v12 = v5 / v11;
  *a2 = v11 / v4;
  a2[1] = v12;
  if (v12 < v11 / v4)
  {
    *a2 = v12;
    a2[1] = v11 / v4;
  }

  if (v9 <= 0.0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

double re::Matrix4x4<float>::extractScale(uint64_t a1, float32x4_t a2, int32x4_t a3, int8x16_t a4)
{
  a2.i64[0] = *a1;
  a3.i64[0] = *(a1 + 16);
  a4.i64[0] = *(a1 + 32);
  a2.i32[2] = *(a1 + 8);
  a3.i32[2] = *(a1 + 24);
  a4.i32[2] = *(a1 + 40);
  v4 = vmulq_f32(a2, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(a4, a4, 0xCuLL), a4, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(a3, a3), a3, 0xCuLL))), vextq_s8(vuzp1q_s32(a4, a4), a4, 0xCuLL), vextq_s8(vextq_s8(a3, a3, 0xCuLL), a3, 8uLL)));
  v5 = vaddv_f32(*v4.f32);
  v6 = -1.0;
  if ((v4.f32[2] + v5) > 0.0)
  {
    v6 = 1.0;
  }

  v7 = vmulq_f32(a2, a2);
  v8 = vmulq_f32(a3, a3);
  v9 = vadd_f32(vzip1_s32(*v7.i8, *v8.i8), vzip2_s32(*v7.i8, *v8.i8));
  v10 = vextq_s8(v7, v7, 8uLL);
  *v10.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v10.f32, *&vextq_s8(v8, v8, 8uLL)), v9));
  v11 = vmulq_f32(a4, a4);
  v10.i32[2] = sqrtf(v11.f32[2] + vaddv_f32(*v11.f32));
  *&result = vmulq_n_f32(v10, v6).u64[0];
  return result;
}

double re::Matrix4x4<float>::makeRotation@<D0>(float32x4_t *a1@<X0>, _OWORD *a2@<X8>, float a3@<S0>)
{
  v4 = *a1;
  v5 = vmulq_f32(v4, v4);
  v6 = v5.f32[2] + vaddv_f32(*v5.f32);
  if (fabsf(v6) >= 1.0e-10)
  {
    v7 = v6;
    v8 = vrsqrte_f32(LODWORD(v6));
    v9 = vmul_f32(v8, vrsqrts_f32(LODWORD(v7), vmul_f32(v8, v8)));
    v4 = vmulq_n_f32(v4, vmul_f32(v9, vrsqrts_f32(LODWORD(v7), vmul_f32(v9, v9))).f32[0]);
  }

  v22 = v4;
  v23 = vmulq_f32(v4, v4).f32[0];
  v10 = vmuls_lane_f32(v4.f32[1], *v4.f32, 1);
  v11 = vmuls_lane_f32(v4.f32[2], v4, 2);
  v12 = vmuls_lane_f32(v4.f32[0], *v4.f32, 1);
  v13 = vmuls_lane_f32(v4.f32[0], v4, 2);
  v14 = vmuls_lane_f32(v4.f32[1], v4, 2);
  v15 = __sincosf_stret(a3);
  v16 = vmuls_lane_f32(v15.__sinval, *v22.f32, 1);
  v17 = vmuls_lane_f32(v15.__sinval, v22, 2);
  *&v18 = v23 + (v15.__cosval * (1.0 - v23));
  *(&v18 + 1) = v17 + (v12 * (1.0 - v15.__cosval));
  *(&v18 + 1) = COERCE_UNSIGNED_INT(-(v16 - (v13 * (1.0 - v15.__cosval))));
  *&v19 = -(v17 - (v12 * (1.0 - v15.__cosval)));
  *(&v19 + 1) = v10 + (v15.__cosval * (1.0 - v10));
  *(&v19 + 1) = COERCE_UNSIGNED_INT((v15.__sinval * v22.f32[0]) + (v14 * (1.0 - v15.__cosval)));
  *&v20 = v16 + (v13 * (1.0 - v15.__cosval));
  *(&v20 + 1) = -((v15.__sinval * v22.f32[0]) - (v14 * (1.0 - v15.__cosval)));
  *(&v20 + 1) = COERCE_UNSIGNED_INT(v11 + (v15.__cosval * (1.0 - v11)));
  *a2 = v18;
  a2[1] = v19;
  result = 0.0;
  a2[2] = v20;
  a2[3] = xmmword_1E30474D0;
  return result;
}

unint64_t re::Quaternion<float>::makeRotation(float32x4_t *a1, float a2)
{
  v2 = *a1;
  v3 = vmulq_f32(v2, v2);
  v4 = v3.f32[2] + vaddv_f32(*v3.f32);
  if (fabsf(v4) >= 1.0e-10)
  {
    v5 = v4;
    v6 = vrsqrte_f32(LODWORD(v4));
    v7 = vmul_f32(v6, vrsqrts_f32(LODWORD(v5), vmul_f32(v6, v6)));
    v2 = vmulq_n_f32(v2, vmul_f32(v7, vrsqrts_f32(LODWORD(v5), vmul_f32(v7, v7))).f32[0]);
  }

  return vmulq_n_f32(v2, __sincosf_stret(a2 * 0.5).__sinval).u64[0];
}

void *re::allocInfo_Vector2F(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BC2C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC2C8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BC778, "Vector2F");
    __cxa_guard_release(&qword_1EE1BC2C8);
  }

  return &unk_1EE1BC778;
}

void re::initInfo_Vector2F(re *this, re::IntrospectionBase *a2)
{
  v12[0] = 0x478E8020DEELL;
  v12[1] = "Vector2F";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE1BC2D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC2D0))
  {
    v5 = re::introspectionAllocator();
    v7 = re::IntrospectionInfo<float [2]>::get(1, v6);
    v8 = (*(*v5 + 32))(v5, 72, 8);
    *v8 = 1;
    *(v8 + 8) = "array";
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    *(v8 + 32) = 1;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    qword_1EE1BC3F0 = v8;
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 8, 4);
    *v10 = 0x100000004;
    qword_1EE1BC3F8 = v10;
    __cxa_guard_release(&qword_1EE1BC2D0);
  }

  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BC3F0;
  *(this + 9) = re::internal::defaultConstruct<re::Vector2<float>>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Vector2<float>>;
  *(this + 13) = re::internal::defaultConstructV2<re::Vector2<float>>;
  *(this + 14) = re::internal::defaultDestructV2<re::Vector2<float>>;
  *(this + 15) = _ZZN2re8internal15snapshotEncoderINS_7Vector2IfEEEEDTcl6encodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7EncoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIS9_EEEERPFvS8_PKvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 16) = _ZZN2re8internal15snapshotDecoderINS_7Vector2IfEEEEDTcl6decodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7DecoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIRS9_EEEERPFvS8_PvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v11 = v13;
}

void *re::allocInfo_Vector3F(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BC2E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC2E0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BC808, "Vector3F");
    __cxa_guard_release(&qword_1EE1BC2E0);
  }

  return &unk_1EE1BC808;
}

void re::initInfo_Vector3F(re *this, re::IntrospectionBase *a2)
{
  v12[0] = 0x478E8020E2CLL;
  v12[1] = "Vector3F";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE1BC2E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC2E8))
  {
    v5 = re::introspectionAllocator();
    v7 = re::IntrospectionInfo<float [3]>::get(1, v6);
    v8 = (*(*v5 + 32))(v5, 72, 8);
    *v8 = 1;
    *(v8 + 8) = "array";
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    *(v8 + 32) = 1;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    qword_1EE1BC400 = v8;
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 8, 4);
    *v10 = 0x100000004;
    qword_1EE1BC408 = v10;
    __cxa_guard_release(&qword_1EE1BC2E8);
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BC400;
  *(this + 9) = re::internal::defaultConstruct<re::Vector3<float>>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Vector3<float>>;
  *(this + 13) = re::internal::defaultConstructV2<re::Vector3<float>>;
  *(this + 14) = re::internal::defaultDestructV2<re::Vector3<float>>;
  *(this + 15) = _ZZN2re8internal15snapshotEncoderINS_7Vector3IfEEEEDTcl6encodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7EncoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIS9_EEEERPFvS8_PKvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 16) = _ZZN2re8internal15snapshotDecoderINS_7Vector3IfEEEEDTcl6decodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7DecoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIRS9_EEEERPFvS8_PvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v11 = v13;
}

double re::internal::defaultConstruct<re::Vector3<float>>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  result = 0.0;
  *a3 = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::Vector3<float>>(_OWORD *a1)
{
  result = 0.0;
  *a1 = 0u;
  return result;
}

void *re::allocInfo_Vector4F(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BC2F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC2F8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BC898, "Vector4F");
    __cxa_guard_release(&qword_1EE1BC2F8);
  }

  return &unk_1EE1BC898;
}

void re::initInfo_Vector4F(re *this, re::IntrospectionBase *a2)
{
  v11[0] = 0x478E8020E6ALL;
  v11[1] = "Vector4F";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE1BC300, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC300))
  {
    v5 = re::introspectionAllocator();
    re::IntrospectionInfo<float [4]>::get(v5, v6);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "array";
    *(v7 + 16) = &unk_1EE1BC500;
    *(v7 + 24) = 0;
    *(v7 + 32) = 1;
    *(v7 + 40) = 0;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1BC410 = v7;
    v8 = re::introspectionAllocator();
    v9 = (*(*v8 + 32))(v8, 8, 4);
    *v9 = 0x100000004;
    qword_1EE1BC418 = v9;
    __cxa_guard_release(&qword_1EE1BC300);
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BC410;
  *(this + 9) = re::internal::defaultConstruct<re::Vector4<float>>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Vector4<float>>;
  *(this + 13) = re::internal::defaultConstructV2<re::Vector4<float>>;
  *(this + 14) = re::internal::defaultDestructV2<re::Vector4<float>>;
  *(this + 15) = _ZZN2re8internal15snapshotEncoderINS_7Vector4IfEEEEDTcl6encodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7EncoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIS9_EEEERPFvS8_PKvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 16) = _ZZN2re8internal15snapshotDecoderINS_7Vector4IfEEEEDTcl6decodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7DecoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIRS9_EEEERPFvS8_PvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

void re::IntrospectionInfo<float [4]>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1BC3B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC3B8))
  {
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1BC500);
    __cxa_guard_release(&qword_1EE1BC3B8);
  }

  if ((byte_1EE1BC2C1 & 1) == 0)
  {
    byte_1EE1BC2C1 = 1;
    v2 = re::introspect_float(1, a2);
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1BC500, v2, 4);
    re::IntrospectionRegistry::add(&unk_1EE1BC500, v3);
    re::getPrettyTypeName(&v7, &unk_1EE1BC500);
    if (BYTE8(v7))
    {
      v4 = v8;
    }

    else
    {
      v4 = &v7 + 9;
    }

    if (v7 && (BYTE8(v7) & 1) != 0)
    {
      (*(*v7 + 40))();
    }

    v7 = *(v2 + 2);
    xmmword_1EE1BC520 = v6;
    if (v9)
    {
      if (v9)
      {
      }
    }
  }
}

void *re::internal::defaultConstructV2<re::Vector4<float>>(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void *re::allocInfo_Vector2D(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BC310, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC310))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BC928, "Vector2D");
    __cxa_guard_release(&qword_1EE1BC310);
  }

  return &unk_1EE1BC928;
}

void re::initInfo_Vector2D(re *this, re::IntrospectionBase *a2)
{
  v11[0] = 0x478E8020DEALL;
  v11[1] = "Vector2D";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE1BC318, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC318))
  {
    v5 = re::introspectionAllocator();
    re::IntrospectionInfo<double [2]>::get(v5, v6);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "array";
    *(v7 + 16) = &unk_1EE1BC548;
    *(v7 + 24) = 0;
    *(v7 + 32) = 1;
    *(v7 + 40) = 0;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1BC420 = v7;
    v8 = re::introspectionAllocator();
    v9 = (*(*v8 + 32))(v8, 8, 4);
    *v9 = 0x100000004;
    qword_1EE1BC428 = v9;
    __cxa_guard_release(&qword_1EE1BC318);
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BC420;
  *(this + 9) = re::internal::defaultConstruct<re::Vector2<double>>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Vector2<double>>;
  *(this + 13) = re::internal::defaultConstructV2<re::Vector2<double>>;
  *(this + 14) = re::internal::defaultDestructV2<re::Vector2<double>>;
  *(this + 15) = _ZZN2re8internal15snapshotEncoderINS_7Vector2IdEEEEDTcl6encodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7EncoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIS9_EEEERPFvS8_PKvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 16) = _ZZN2re8internal15snapshotDecoderINS_7Vector2IdEEEEDTcl6decodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7DecoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIRS9_EEEERPFvS8_PvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

void re::IntrospectionInfo<double [2]>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1BC3C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC3C0))
  {
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1BC548);
    __cxa_guard_release(&qword_1EE1BC3C0);
  }

  if ((byte_1EE1BC2C2 & 1) == 0)
  {
    byte_1EE1BC2C2 = 1;
    v2 = re::introspect_double(1, a2);
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1BC548, v2, 2);
    re::IntrospectionRegistry::add(&unk_1EE1BC548, v3);
    re::getPrettyTypeName(&v7, &unk_1EE1BC548);
    if (BYTE8(v7))
    {
      v4 = v8;
    }

    else
    {
      v4 = &v7 + 9;
    }

    if (v7 && (BYTE8(v7) & 1) != 0)
    {
      (*(*v7 + 40))();
    }

    v7 = *(v2 + 2);
    xmmword_1EE1BC568 = v6;
    if (v9)
    {
      if (v9)
      {
      }
    }
  }
}

void *re::internal::defaultConstructV2<re::Vector2<double>>(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void *re::allocInfo_Vector3D(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BC320, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC320))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BC9B8, "Vector3D");
    __cxa_guard_release(&qword_1EE1BC320);
  }

  return &unk_1EE1BC9B8;
}

void re::initInfo_Vector3D(re *this, re::IntrospectionBase *a2)
{
  v11[0] = 0x478E8020E28;
  v11[1] = "Vector3D";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE1BC328, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC328))
  {
    v5 = re::introspectionAllocator();
    re::IntrospectionInfo<double [3]>::get(v5, v6);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "array";
    *(v7 + 16) = &unk_1EE1BC590;
    *(v7 + 24) = 0;
    *(v7 + 32) = 1;
    *(v7 + 40) = 0;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1BC430 = v7;
    v8 = re::introspectionAllocator();
    v9 = (*(*v8 + 32))(v8, 8, 4);
    *v9 = 0x100000004;
    qword_1EE1BC438 = v9;
    __cxa_guard_release(&qword_1EE1BC328);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BC430;
  *(this + 9) = re::internal::defaultConstruct<re::Vector3<double>>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Vector3<double>>;
  *(this + 13) = re::internal::defaultConstructV2<re::Vector3<double>>;
  *(this + 14) = re::internal::defaultDestructV2<re::Vector3<double>>;
  *(this + 15) = _ZZN2re8internal15snapshotEncoderINS_7Vector3IdEEEEDTcl6encodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7EncoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIS9_EEEERPFvS8_PKvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 16) = _ZZN2re8internal15snapshotDecoderINS_7Vector3IdEEEEDTcl6decodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7DecoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIRS9_EEEERPFvS8_PvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

void re::IntrospectionInfo<double [3]>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1BC3C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC3C8))
  {
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1BC590);
    __cxa_guard_release(&qword_1EE1BC3C8);
  }

  if ((byte_1EE1BC2C3 & 1) == 0)
  {
    byte_1EE1BC2C3 = 1;
    v2 = re::introspect_double(1, a2);
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1BC590, v2, 3);
    re::IntrospectionRegistry::add(&unk_1EE1BC590, v3);
    re::getPrettyTypeName(&v7, &unk_1EE1BC590);
    if (BYTE8(v7))
    {
      v4 = v8;
    }

    else
    {
      v4 = &v7 + 9;
    }

    if (v7 && (BYTE8(v7) & 1) != 0)
    {
      (*(*v7 + 40))();
    }

    v7 = *(v2 + 2);
    xmmword_1EE1BC5B0 = v6;
    if (v9)
    {
      if (v9)
      {
      }
    }
  }
}

double re::internal::defaultConstruct<re::Vector3<double>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  result = 0.0;
  *(a3 + 16) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::Vector3<double>>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  return result;
}

void *re::allocInfo_Vector4D(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BC330, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC330))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BCA48, "Vector4D");
    __cxa_guard_release(&qword_1EE1BC330);
  }

  return &unk_1EE1BCA48;
}

void re::initInfo_Vector4D(re *this, re::IntrospectionBase *a2)
{
  v11[0] = 0x478E8020E66;
  v11[1] = "Vector4D";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE1BC338, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC338))
  {
    v5 = re::introspectionAllocator();
    re::IntrospectionInfo<double [4]>::get(v5, v6);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "array";
    *(v7 + 16) = &unk_1EE1BC5D8;
    *(v7 + 24) = 0;
    *(v7 + 32) = 1;
    *(v7 + 40) = 0;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1BC440 = v7;
    v8 = re::introspectionAllocator();
    v9 = (*(*v8 + 32))(v8, 8, 4);
    *v9 = 0x100000004;
    qword_1EE1BC448 = v9;
    __cxa_guard_release(&qword_1EE1BC338);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BC440;
  *(this + 9) = re::internal::defaultConstruct<re::Vector4<double>>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Vector4<double>>;
  *(this + 13) = re::internal::defaultConstructV2<re::Vector4<double>>;
  *(this + 14) = re::internal::defaultDestructV2<re::Vector4<double>>;
  *(this + 15) = _ZZN2re8internal15snapshotEncoderINS_7Vector4IdEEEEDTcl6encodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7EncoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIS9_EEEERPFvS8_PKvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 16) = _ZZN2re8internal15snapshotDecoderINS_7Vector4IdEEEEDTcl6decodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7DecoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIRS9_EEEERPFvS8_PvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

void re::IntrospectionInfo<double [4]>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1BC3D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC3D0))
  {
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1BC5D8);
    __cxa_guard_release(&qword_1EE1BC3D0);
  }

  if ((byte_1EE1BC2C4 & 1) == 0)
  {
    byte_1EE1BC2C4 = 1;
    v2 = re::introspect_double(1, a2);
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1BC5D8, v2, 4);
    re::IntrospectionRegistry::add(&unk_1EE1BC5D8, v3);
    re::getPrettyTypeName(&v7, &unk_1EE1BC5D8);
    if (BYTE8(v7))
    {
      v4 = v8;
    }

    else
    {
      v4 = &v7 + 9;
    }

    if (v7 && (BYTE8(v7) & 1) != 0)
    {
      (*(*v7 + 40))();
    }

    v7 = *(v2 + 2);
    xmmword_1EE1BC5F8 = v6;
    if (v9)
    {
      if (v9)
      {
      }
    }
  }
}

double re::internal::defaultConstruct<re::Vector4<double>>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  result = 0.0;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::Vector4<double>>(_OWORD *a1)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void *re::allocInfo_QuaternionF(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BC340, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC340))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BCAD8, "QuaternionF");
    __cxa_guard_release(&qword_1EE1BC340);
  }

  return &unk_1EE1BCAD8;
}

void re::initInfo_QuaternionF(re *this, re::IntrospectionBase *a2)
{
  v11[0] = 0x1EE51E553020190;
  v11[1] = "QuaternionF";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE1BC348, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC348))
  {
    v5 = re::introspectionAllocator();
    re::IntrospectionInfo<float [4]>::get(v5, v6);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "array";
    *(v7 + 16) = &unk_1EE1BC500;
    *(v7 + 24) = 0;
    *(v7 + 32) = 1;
    *(v7 + 40) = 0;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1BC450 = v7;
    v8 = re::introspectionAllocator();
    v9 = (*(*v8 + 32))(v8, 8, 4);
    *v9 = 0x100000004;
    qword_1EE1BC458 = v9;
    __cxa_guard_release(&qword_1EE1BC348);
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BC450;
  *(this + 9) = re::internal::defaultConstruct<re::Quaternion<float>>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Quaternion<float>>;
  *(this + 13) = re::internal::defaultConstructV2<re::Quaternion<float>>;
  *(this + 14) = re::internal::defaultDestructV2<re::Quaternion<float>>;
  *(this + 15) = _ZZN2re8internal15snapshotEncoderINS_10QuaternionIfEEEEDTcl6encodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7EncoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIS9_EEEERPFvS8_PKvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 16) = _ZZN2re8internal15snapshotDecoderINS_10QuaternionIfEEEEDTcl6decodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7DecoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIRS9_EEEERPFvS8_PvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

double re::internal::defaultConstruct<re::Quaternion<float>>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  result = 0.0;
  *a3 = xmmword_1E30474D0;
  return result;
}

double re::internal::defaultConstructV2<re::Quaternion<float>>(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_1E30474D0;
  return result;
}

void *re::allocInfo_Matrix2x2F(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BC358, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC358))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BCB68, "Matrix2x2F");
    __cxa_guard_release(&qword_1EE1BC358);
  }

  return &unk_1EE1BCB68;
}

void re::initInfo_Matrix2x2F(re *this, re::IntrospectionBase *a2)
{
  v10[0] = 0xF13AC04E85D76;
  v10[1] = "Matrix2x2F";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1BC360, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC360))
  {
    v5 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Vector2<float> [2]>::get(v5);
    v6 = (*(*v5 + 32))(v5, 72, 8);
    *v6 = 1;
    *(v6 + 8) = "columns";
    *(v6 + 16) = &unk_1EE1BC620;
    *(v6 + 24) = 0;
    *(v6 + 32) = 1;
    *(v6 + 40) = 0;
    *(v6 + 48) = 0;
    *(v6 + 56) = 0;
    *(v6 + 64) = 0;
    qword_1EE1BC460 = v6;
    v7 = re::introspectionAllocator();
    v8 = (*(*v7 + 32))(v7, 8, 4);
    *v8 = 0x100000004;
    qword_1EE1BC468 = v8;
    __cxa_guard_release(&qword_1EE1BC360);
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BC460;
  *(this + 9) = re::internal::defaultConstruct<re::Matrix2x2<float>>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Matrix2x2<float>>;
  *(this + 13) = re::internal::defaultConstructV2<re::Matrix2x2<float>>;
  *(this + 14) = re::internal::defaultDestructV2<re::Matrix2x2<float>>;
  *(this + 15) = _ZZN2re8internal15snapshotEncoderINS_9Matrix2x2IfEEEEDTcl6encodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7EncoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIS9_EEEERPFvS8_PKvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 16) = _ZZN2re8internal15snapshotDecoderINS_9Matrix2x2IfEEEEDTcl6decodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7DecoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIRS9_EEEERPFvS8_PvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::IntrospectionInfo<re::Vector2<float> [2]>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1BC3D8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1BC3D8);
    if (a1)
    {
      re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1BC620);
      __cxa_guard_release(&qword_1EE1BC3D8);
    }
  }

  if ((byte_1EE1BC2C5 & 1) == 0)
  {
    byte_1EE1BC2C5 = 1;
    v1 = qword_1EE1BC2D8;
    if (!qword_1EE1BC2D8)
    {
      v1 = re::allocInfo_Vector2F(a1);
      qword_1EE1BC2D8 = v1;
      re::initInfo_Vector2F(v1, v2);
    }

    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1BC620, v1, 2);
    re::IntrospectionRegistry::add(v3, v4);
    re::getPrettyTypeName(&v8, &unk_1EE1BC620);
    if (BYTE8(v8))
    {
      v5 = v9;
    }

    else
    {
      v5 = &v8 + 9;
    }

    if (v8 && (BYTE8(v8) & 1) != 0)
    {
      (*(*v8 + 40))();
    }

    v8 = *(v1 + 2);
    xmmword_1EE1BC640 = v7;
    if (v10)
    {
      if (v10)
      {
      }
    }
  }
}

void *re::internal::defaultConstructV2<re::Matrix2x2<float>>(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void *re::allocInfo_Matrix3x3F(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BC368, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC368))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BCBF8, "Matrix3x3F");
    __cxa_guard_release(&qword_1EE1BC368);
  }

  return &unk_1EE1BCBF8;
}

void re::initInfo_Matrix3x3F(re *this, re::IntrospectionBase *a2)
{
  v10[0] = 0xF13AC04E94672;
  v10[1] = "Matrix3x3F";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1BC370, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC370))
  {
    v5 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Vector3<float> [3]>::get(v5);
    v6 = (*(*v5 + 32))(v5, 72, 8);
    *v6 = 1;
    *(v6 + 8) = "columns";
    *(v6 + 16) = &unk_1EE1BC668;
    *(v6 + 24) = 0;
    *(v6 + 32) = 1;
    *(v6 + 40) = 0;
    *(v6 + 48) = 0;
    *(v6 + 56) = 0;
    *(v6 + 64) = 0;
    qword_1EE1BC470 = v6;
    v7 = re::introspectionAllocator();
    v8 = (*(*v7 + 32))(v7, 8, 4);
    *v8 = 0x100000004;
    qword_1EE1BC478 = v8;
    __cxa_guard_release(&qword_1EE1BC370);
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BC470;
  *(this + 9) = re::internal::defaultConstruct<re::Matrix3x3<float>>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Matrix3x3<float>>;
  *(this + 13) = re::internal::defaultConstructV2<re::Matrix3x3<float>>;
  *(this + 14) = re::internal::defaultDestructV2<re::Matrix3x3<float>>;
  *(this + 15) = _ZZN2re8internal15snapshotEncoderINS_9Matrix3x3IfEEEEDTcl6encodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7EncoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIS9_EEEERPFvS8_PKvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 16) = _ZZN2re8internal15snapshotDecoderINS_9Matrix3x3IfEEEEDTcl6decodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7DecoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIRS9_EEEERPFvS8_PvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::IntrospectionInfo<re::Vector3<float> [3]>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1BC3E0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1BC3E0);
    if (a1)
    {
      re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1BC668);
      __cxa_guard_release(&qword_1EE1BC3E0);
    }
  }

  if ((byte_1EE1BC2C6 & 1) == 0)
  {
    byte_1EE1BC2C6 = 1;
    v1 = qword_1EE1BC2F0;
    if (!qword_1EE1BC2F0)
    {
      v1 = re::allocInfo_Vector3F(a1);
      qword_1EE1BC2F0 = v1;
      re::initInfo_Vector3F(v1, v2);
    }

    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1BC668, v1, 3);
    re::IntrospectionRegistry::add(v3, v4);
    re::getPrettyTypeName(&v8, &unk_1EE1BC668);
    if (BYTE8(v8))
    {
      v5 = v9;
    }

    else
    {
      v5 = &v8 + 9;
    }

    if (v8 && (BYTE8(v8) & 1) != 0)
    {
      (*(*v8 + 40))();
    }

    v8 = *(v1 + 2);
    xmmword_1EE1BC688 = v7;
    if (v10)
    {
      if (v10)
      {
      }
    }
  }
}

double re::internal::defaultConstruct<re::Matrix3x3<float>>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  result = 0.0;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::Matrix3x3<float>>(_OWORD *a1)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void *re::allocInfo_Matrix4x4F(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BC378, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC378))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BCC88, "Matrix4x4F");
    __cxa_guard_release(&qword_1EE1BC378);
  }

  return &unk_1EE1BCC88;
}

void re::initInfo_Matrix4x4F(re *this, re::IntrospectionBase *a2)
{
  v10[0] = 0xF13AC04EA2F6ELL;
  v10[1] = "Matrix4x4F";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1BC380, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC380))
  {
    v5 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Vector4<float> [4]>::get(v5);
    v6 = (*(*v5 + 32))(v5, 72, 8);
    *v6 = 1;
    *(v6 + 8) = "columns";
    *(v6 + 16) = &unk_1EE1BC6B0;
    *(v6 + 24) = 0;
    *(v6 + 32) = 1;
    *(v6 + 40) = 0;
    *(v6 + 48) = 0;
    *(v6 + 56) = 0;
    *(v6 + 64) = 0;
    qword_1EE1BC480 = v6;
    v7 = re::introspectionAllocator();
    v8 = (*(*v7 + 32))(v7, 8, 4);
    *v8 = 0x100000004;
    qword_1EE1BC488 = v8;
    __cxa_guard_release(&qword_1EE1BC380);
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BC480;
  *(this + 9) = re::internal::defaultConstruct<re::Matrix4x4<float>>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Matrix4x4<float>>;
  *(this + 13) = re::internal::defaultConstructV2<re::Matrix4x4<float>>;
  *(this + 14) = re::internal::defaultDestructV2<re::Matrix4x4<float>>;
  *(this + 15) = _ZZN2re8internal15snapshotEncoderINS_9Matrix4x4IfEEEEDTcl6encodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7EncoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIS9_EEEERPFvS8_PKvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 16) = _ZZN2re8internal15snapshotDecoderINS_9Matrix4x4IfEEEEDTcl6decodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7DecoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIRS9_EEEERPFvS8_PvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::IntrospectionInfo<re::Vector4<float> [4]>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1BC3E8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1BC3E8);
    if (a1)
    {
      re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1BC6B0);
      __cxa_guard_release(&qword_1EE1BC3E8);
    }
  }

  if ((byte_1EE1BC2C7 & 1) == 0)
  {
    byte_1EE1BC2C7 = 1;
    v1 = qword_1EE1BC308;
    if (!qword_1EE1BC308)
    {
      v1 = re::allocInfo_Vector4F(a1);
      qword_1EE1BC308 = v1;
      re::initInfo_Vector4F(v1, v2);
    }

    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1BC6B0, v1, 4);
    re::IntrospectionRegistry::add(v3, v4);
    re::getPrettyTypeName(&v8, &unk_1EE1BC6B0);
    if (BYTE8(v8))
    {
      v5 = v9;
    }

    else
    {
      v5 = &v8 + 9;
    }

    if (v8 && (BYTE8(v8) & 1) != 0)
    {
      (*(*v8 + 40))();
    }

    v8 = *(v1 + 2);
    xmmword_1EE1BC6D0 = v7;
    if (v10)
    {
      if (v10)
      {
      }
    }
  }
}

double re::internal::defaultConstruct<re::Matrix4x4<float>>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  result = 0.0;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::Matrix4x4<float>>(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void *re::allocInfo_PoseF(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BC388, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC388))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BCD18, "PoseF");
    __cxa_guard_release(&qword_1EE1BC388);
  }

  return &unk_1EE1BCD18;
}

void re::initInfo_PoseF(re *this, re::IntrospectionBase *a2)
{
  v16[0] = 154604394;
  v16[1] = "PoseF";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1BC390, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC390))
  {
    v5 = re::introspectionAllocator();
    v6 = v5;
    v7 = qword_1EE1BC2F0;
    if (!qword_1EE1BC2F0)
    {
      v7 = re::allocInfo_Vector3F(v5);
      qword_1EE1BC2F0 = v7;
      re::initInfo_Vector3F(v7, v8);
    }

    v9 = (*(*v6 + 32))(v6, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "position";
    *(v9 + 16) = v7;
    *(v9 + 24) = 0;
    *(v9 + 32) = 1;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE1BC490 = v9;
    v10 = re::introspectionAllocator();
    v11 = v10;
    v12 = qword_1EE1BC350;
    if (!qword_1EE1BC350)
    {
      v12 = re::allocInfo_QuaternionF(v10);
      qword_1EE1BC350 = v12;
      re::initInfo_QuaternionF(v12, v13);
    }

    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "orientation";
    *(v14 + 16) = v12;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x1000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1BC498 = v14;
    __cxa_guard_release(&qword_1EE1BC390);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BC490;
  *(this + 9) = re::internal::defaultConstruct<re::Pose<float>>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Pose<float>>;
  *(this + 13) = re::internal::defaultConstructV2<re::Pose<float>>;
  *(this + 14) = re::internal::defaultDestructV2<re::Pose<float>>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v15 = v17;
}

void re::internal::defaultConstruct<re::Pose<float>>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = 0x3F80000000000000;
}

void *re::internal::defaultConstructV2<re::Pose<float>>(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0x3F80000000000000;
  return result;
}

void *re::allocInfo_SRT(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BC398, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC398))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BCDA8, "SRT");
    __cxa_guard_release(&qword_1EE1BC398);
  }

  return &unk_1EE1BCDA8;
}

void re::initInfo_SRT(re *this, re::IntrospectionBase *a2)
{
  v21[0] = 164778;
  v21[1] = "SRT";
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  *(this + 2) = v22;
  if ((atomic_load_explicit(&qword_1EE1BC3A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC3A0))
  {
    v5 = re::introspectionAllocator();
    v6 = v5;
    v7 = qword_1EE1BC2F0;
    if (!qword_1EE1BC2F0)
    {
      v7 = re::allocInfo_Vector3F(v5);
      qword_1EE1BC2F0 = v7;
      re::initInfo_Vector3F(v7, v8);
    }

    v9 = (*(*v6 + 32))(v6, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "scale";
    *(v9 + 16) = v7;
    *(v9 + 24) = 0;
    *(v9 + 32) = 1;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE1BC4A0 = v9;
    v10 = re::introspectionAllocator();
    v11 = v10;
    v12 = qword_1EE1BC350;
    if (!qword_1EE1BC350)
    {
      v12 = re::allocInfo_QuaternionF(v10);
      qword_1EE1BC350 = v12;
      re::initInfo_QuaternionF(v12, v13);
    }

    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "rotation";
    *(v14 + 16) = v12;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x1000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1BC4A8 = v14;
    v15 = re::introspectionAllocator();
    v16 = v15;
    v17 = qword_1EE1BC2F0;
    if (!qword_1EE1BC2F0)
    {
      v17 = re::allocInfo_Vector3F(v15);
      qword_1EE1BC2F0 = v17;
      re::initInfo_Vector3F(v17, v18);
    }

    v19 = (*(*v16 + 32))(v16, 72, 8);
    *v19 = 1;
    *(v19 + 8) = "translation";
    *(v19 + 16) = v17;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0x2000000003;
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    *(v19 + 64) = 0;
    qword_1EE1BC4B0 = v19;
    __cxa_guard_release(&qword_1EE1BC3A0);
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1BC4A0;
  *(this + 9) = re::internal::defaultConstruct<re::GenericSRT<float>>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::GenericSRT<float>>;
  *(this + 13) = re::internal::defaultConstructV2<re::GenericSRT<float>>;
  *(this + 14) = re::internal::defaultDestructV2<re::GenericSRT<float>>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v20 = v22;
}

void re::internal::defaultConstruct<re::GenericSRT<float>>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0x3F8000003F800000;
  a3[1] = 1065353216;
  a3[2] = 0;
  a3[3] = 0x3F80000000000000;
  a3[4] = 0;
  a3[5] = 0;
}

void *re::internal::defaultConstructV2<re::GenericSRT<float>>(void *result)
{
  *result = 0x3F8000003F800000;
  result[1] = 1065353216;
  result[2] = 0;
  result[3] = 0x3F80000000000000;
  result[4] = 0;
  result[5] = 0;
  return result;
}

uint64_t *re::introspect_RERotationOrder(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE1BC3A8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1BC3B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC3B0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BC4B8, "RERotationOrder", 1, 1, 1, 1);
      qword_1EE1BC4B8 = &unk_1F5D0C658;
      qword_1EE1BC4F8 = &re::introspect_RERotationOrder(BOOL)::enumTable;
      dword_1EE1BC4C8 = 9;
      __cxa_guard_release(&qword_1EE1BC3B0);
    }

    if (v2)
    {
      if (_MergedGlobals_489)
      {
        return &qword_1EE1BC4B8;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v70);
      v3 = _MergedGlobals_489;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v70);
      if (v3)
      {
        return &qword_1EE1BC4B8;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (_MergedGlobals_489)
      {
        goto LABEL_46;
      }
    }

    _MergedGlobals_489 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BC4B8, a2);
    v67 = 0x9091FC13CDF02DFALL;
    v68 = "RERotationOrder";
    v71 = 0x31CD534126;
    v72 = "uint8_t";
    v9 = v70[0];
    v10 = v70[1];
    if (v71)
    {
      if (v71)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v68);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v66);
    __break(1u);
LABEL_49:
    if (__cxa_guard_acquire(&qword_1EE1BC3A8))
    {
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 0;
      *(v35 + 16) = "XYZ";
      qword_1EE1BC6F8 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 1;
      *(v37 + 16) = "YZX";
      qword_1EE1BC700 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 2;
      *(v39 + 16) = "ZXY";
      qword_1EE1BC708 = v39;
      v40 = re::introspectionAllocator();
      v41 = (*(*v40 + 32))(v40, 24, 8);
      *v41 = 1;
      *(v41 + 8) = 3;
      *(v41 + 16) = "XZY";
      qword_1EE1BC710 = v41;
      v42 = re::introspectionAllocator();
      v43 = (*(*v42 + 32))(v42, 24, 8);
      *v43 = 1;
      *(v43 + 8) = 4;
      *(v43 + 16) = "YXZ";
      qword_1EE1BC718 = v43;
      v44 = re::introspectionAllocator();
      v45 = (*(*v44 + 32))(v44, 24, 8);
      *v45 = 1;
      *(v45 + 8) = 5;
      *(v45 + 16) = "ZYX";
      qword_1EE1BC720 = v45;
      v46 = re::introspectionAllocator();
      v47 = (*(*v46 + 32))(v46, 24, 8);
      *v47 = 1;
      *(v47 + 8) = 6;
      *(v47 + 16) = "Count";
      qword_1EE1BC728 = v47;
      v48 = re::introspectionAllocator();
      v49 = (*(*v48 + 32))(v48, 24, 8);
      *v49 = 1;
      *(v49 + 8) = 7;
      *(v49 + 16) = "Invalid";
      qword_1EE1BC730 = v49;
      v50 = re::introspectionAllocator();
      v51 = (*(*v50 + 32))(v50, 24, 8);
      *v51 = 2;
      *(v51 + 8) = 0;
      *(v51 + 16) = "RERotationOrderXYZ";
      qword_1EE1BC738 = v51;
      v52 = re::introspectionAllocator();
      v53 = (*(*v52 + 32))(v52, 24, 8);
      *v53 = 2;
      *(v53 + 8) = 1;
      *(v53 + 16) = "RERotationOrderYZX";
      qword_1EE1BC740 = v53;
      v54 = re::introspectionAllocator();
      v55 = (*(*v54 + 32))(v54, 24, 8);
      *v55 = 2;
      *(v55 + 8) = 2;
      *(v55 + 16) = "RERotationOrderZXY";
      qword_1EE1BC748 = v55;
      v56 = re::introspectionAllocator();
      v57 = (*(*v56 + 32))(v56, 24, 8);
      *v57 = 2;
      *(v57 + 8) = 3;
      *(v57 + 16) = "RERotationOrderXZY";
      qword_1EE1BC750 = v57;
      v58 = re::introspectionAllocator();
      v59 = (*(*v58 + 32))(v58, 24, 8);
      *v59 = 2;
      *(v59 + 8) = 4;
      *(v59 + 16) = "RERotationOrderYXZ";
      qword_1EE1BC758 = v59;
      v60 = re::introspectionAllocator();
      v61 = (*(*v60 + 32))(v60, 24, 8);
      *v61 = 2;
      *(v61 + 8) = 5;
      *(v61 + 16) = "RERotationOrderZYX";
      qword_1EE1BC760 = v61;
      v62 = re::introspectionAllocator();
      v63 = (*(*v62 + 32))(v62, 24, 8);
      *v63 = 2;
      *(v63 + 8) = 6;
      *(v63 + 16) = "RERotationOrderCount";
      qword_1EE1BC768 = v63;
      v64 = re::introspectionAllocator();
      v65 = (*(*v64 + 32))(v64, 24, 8);
      *v65 = 2;
      *(v65 + 8) = 7;
      *(v65 + 16) = "RERotationOrderInvalid";
      qword_1EE1BC770 = v65;
      __cxa_guard_release(&qword_1EE1BC3A8);
    }
  }

  v11 = qword_1EE1BC4F8;
  v71 = v9;
  v72 = v10;
  re::TypeBuilder::beginEnumType(v70, &v67, 1, 1, &v71);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v69.var0 = 2 * v16;
        v69.var1 = v15;
        re::TypeBuilder::addEnumConstant(v70, v20, &v69);
        if (*&v69.var0)
        {
          if (*&v69.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v69.var0 = 2 * v25;
          v69.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v70, v29, &v69);
          if (*&v69.var0)
          {
            if (*&v69.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v70, v31);
  xmmword_1EE1BC4D8 = v69;
  if (v67)
  {
    if (v67)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE1BC4B8;
}

re::snapshot::BufferEncoder *re::internal::encode<float,2>(uint64_t a1, void *a2)
{
  v4 = (*(*a1 + 24))(a1);
  if (v4)
  {
    v5 = v4;
    __src = 8;
    re::snapshot::BufferEncoder::writeRaw<true>(v4, &__src, 8uLL);
    return re::snapshot::BufferEncoder::writeRaw<true>(v5, a2, 8uLL);
  }

  else
  {
    v7 = (*(*a1 + 16))(a1);
    if (v7)
    {

      return re::internal::opack::encode<float,2>(v7, a2);
    }

    else
    {
      (*(*a1 + 88))(a1, 2);
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = v9;
        (*(*a1 + 248))(a1, *(a2 + v8));
        v9 = 0;
        v8 = 1;
      }

      while ((v10 & 1) != 0);
      v11 = *(*a1 + 96);

      return v11(a1, 2);
    }
  }
}

uint64_t re::internal::decode<float,2>(uint64_t a1, float *a2)
{
  v4 = (*(*a1 + 24))(a1);
  if (v4)
  {

    return re::snapshot::operator>><re::snapshot::DecoderRaw,float,2ul>(v4, a2);
  }

  else
  {
    v6 = (*(*a1 + 16))(a1);
    if (v6)
    {

      return re::internal::opack::decode<float,2>(v6, a2);
    }

    else
    {
      v8 = 0;
      result = (*(*a1 + 104))(a1, &v8);
      if (result)
      {
        if (v8 == 2)
        {
          (*(*a1 + 280))(a1, a2);
          (*(*a1 + 280))(a1, a2 + 1);
          v8 -= 2;
        }

        v7 = 0;
        result = (*(*a1 + 112))(a1, &v8);
        if ((result & 1) == 0)
        {
          do
          {
            (*(*a1 + 280))(a1, &v7);
            result = (*(*a1 + 112))(a1, &v8);
          }

          while (!result);
        }
      }
    }
  }

  return result;
}

re::snapshot::BufferEncoder *re::internal::opack::encode<float,2>(uint64_t a1, float *a2)
{
  re::snapshot::EncoderOPACK::beginObject(a1);
  v4 = *(a1 + 16);
  if (v4 >= *(a1 + 20))
  {
    re::snapshot::EncoderOPACK::writeInteger(a1, 1);
  }

  else
  {
    v5 = *(a1 + 8);
    *(a1 + 16) = v4 + 1;
    *(v5 + v4) = 9;
  }

  if ((*(a1 + 72) & 4) != 0)
  {
    re::snapshot::EncoderOPACK::beginData(a1, 8uLL, 8uLL);
    re::snapshot::BufferEncoder::writeRaw<true>(a1, a2, 8uLL);
  }

  else
  {
    re::snapshot::EncoderOPACK::beginArray(a1, 2uLL);
    re::snapshot::EncoderOPACK::operator<<(a1, *a2);
    re::snapshot::EncoderOPACK::operator<<(a1, a2[1]);
  }

  return re::snapshot::EncoderOPACK::endObject(a1);
}

uint64_t *re::internal::opack::decode<float,2>(re::snapshot::DecoderOPACK *a1, float *a2)
{
  result = re::snapshot::DecoderOPACK::beginObject(a1, 0);
  if (result)
  {
    if (re::snapshot::DecoderOPACK::beginField<1>(a1, v5, v6))
    {
      v13 = 0;
      if (re::snapshot::DecoderOPACK::beginData(a1, &v13, 1))
      {
        if (v13 == 8)
        {
          v8 = *(a1 + 3);
          if (*(a1 + 4) - v8 <= 7uLL)
          {
            re::snapshot::BufferDecoder::error(a1, "overrun: attempted to read %zu bytes, only %zu remaining");
          }

          else
          {
            *a2 = *v8;
            *(a1 + 3) += 8;
          }
        }

        else
        {
          re::snapshot::BufferDecoder::error(a1, "C Array size mismatch: expected %zu, got %zu");
        }
      }

      else if (re::snapshot::DecoderOPACK::beginArray(a1, &v13))
      {
        if (v13 == 2)
        {
          if (re::snapshot::DecoderOPACK::endArray(a1, &v13))
          {
            goto LABEL_22;
          }

          v9 = 0;
          do
          {
            while (v9 > 1)
            {
              re::snapshot::BufferDecoder::error(a1, "Bad data, too many elements: expected %zu, got %d", 2uLL, 3);
              v12 = re::snapshot::DecoderOPACK::endArray(a1, &v13);
              v9 = 2;
              if (v12)
              {
                goto LABEL_23;
              }
            }

            v10 = v9 + 1;
            re::snapshot::DecoderOPACK::operator>>(a1, &a2[v9]);
            v11 = re::snapshot::DecoderOPACK::endArray(a1, &v13);
            v9 = v10;
          }

          while (!v11);
          if (v10 != 2)
          {
LABEL_22:
            re::snapshot::BufferDecoder::error(a1, "size mismatch: expected %zu, got %d");
          }
        }

        else
        {
          re::snapshot::BufferDecoder::error(a1, "unexpected C Array size: expected %zu, got %zu");
        }
      }

LABEL_23:
      re::snapshot::DecoderOPACK::endField(a1);
    }

    return re::snapshot::DecoderOPACK::endObject(a1, 0, v7);
  }

  return result;
}

re::snapshot::BufferEncoder *re::internal::encode<float,3>(uint64_t a1, void *a2)
{
  v4 = (*(*a1 + 24))(a1);
  if (v4)
  {
    v5 = v4;
    __src = 12;
    re::snapshot::BufferEncoder::writeRaw<true>(v4, &__src, 8uLL);
    return re::snapshot::BufferEncoder::writeRaw<true>(v5, a2, 0xCuLL);
  }

  else
  {
    v7 = (*(*a1 + 16))(a1);
    if (v7)
    {

      return re::internal::opack::encode<float,3>(v7, a2);
    }

    else
    {

      return re::internal::encodeArray<re::snapshot::Encoder,float,3>(a1, a2);
    }
  }
}

uint64_t *re::internal::decode<float,3>(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 24))(a1);
  if (v4)
  {

    return re::snapshot::operator>><re::snapshot::DecoderRaw,float,3ul>(v4, a2);
  }

  else
  {
    v6 = (*(*a1 + 16))(a1);
    if (v6)
    {

      return re::internal::opack::decode<float,3>(v6, a2);
    }

    else
    {

      return re::internal::decodeArray<re::snapshot::Decoder,float,3>(a1, a2);
    }
  }
}

re::snapshot::BufferEncoder *re::internal::opack::encode<float,3>(uint64_t a1, char *a2)
{
  re::snapshot::EncoderOPACK::beginObject(a1);
  v4 = *(a1 + 16);
  if (v4 >= *(a1 + 20))
  {
    re::snapshot::EncoderOPACK::writeInteger(a1, 1);
  }

  else
  {
    v5 = *(a1 + 8);
    *(a1 + 16) = v4 + 1;
    *(v5 + v4) = 9;
  }

  if ((*(a1 + 72) & 4) != 0)
  {
    re::snapshot::EncoderOPACK::beginData(a1, 0xCuLL, 0xCuLL);
    re::snapshot::BufferEncoder::writeRaw<true>(a1, a2, 0xCuLL);
  }

  else
  {
    re::snapshot::EncoderOPACK::beginArray(a1, 3uLL);
    for (i = 0; i != 12; i += 4)
    {
      re::snapshot::EncoderOPACK::operator<<(a1, *&a2[i]);
    }
  }

  return re::snapshot::EncoderOPACK::endObject(a1);
}

uint64_t *re::internal::opack::decode<float,3>(re::snapshot::DecoderOPACK *a1, uint64_t a2)
{
  result = re::snapshot::DecoderOPACK::beginObject(a1, 0);
  if (result)
  {
    re::snapshot::DecoderOPACK::field<1,float [3]>(a1, a2, 0);

    return re::snapshot::DecoderOPACK::endObject(a1, 0, v5);
  }

  return result;
}

re::snapshot::BufferEncoder *re::internal::encode<float,4>(uint64_t a1, char *a2)
{
  v4 = (*(*a1 + 24))(a1);
  if (v4)
  {
    v5 = v4;
    __src = 16;
    re::snapshot::BufferEncoder::writeRaw<true>(v4, &__src, 8uLL);
    return re::snapshot::BufferEncoder::writeRaw<true>(v5, a2, 0x10uLL);
  }

  else
  {
    v7 = (*(*a1 + 16))(a1);
    if (v7)
    {

      return re::internal::opack::encode<float,4>(v7, a2);
    }

    else
    {
      (*(*a1 + 88))(a1, 4);
      for (i = 0; i != 16; i += 4)
      {
        (*(*a1 + 248))(a1, *&a2[i]);
      }

      v9 = *(*a1 + 96);

      return v9(a1, 4);
    }
  }
}

uint64_t re::internal::decode<float,4>(uint64_t a1, _OWORD *a2)
{
  v4 = (*(*a1 + 24))(a1);
  if (v4)
  {

    return re::snapshot::operator>><re::snapshot::DecoderRaw,float,4ul>(v4, a2);
  }

  else
  {
    v6 = (*(*a1 + 16))(a1);
    if (v6)
    {

      return re::internal::opack::decode<float,4>(v6, a2);
    }

    else
    {
      v9 = 0;
      result = (*(*a1 + 104))(a1, &v9);
      if (result)
      {
        if (v9 == 4)
        {
          v7 = 4;
          do
          {
            (*(*a1 + 280))(a1, a2);
            a2 = (a2 + 4);
            --v7;
          }

          while (v7);
          v9 -= 4;
        }

        v8 = 0;
        result = (*(*a1 + 112))(a1, &v9);
        if ((result & 1) == 0)
        {
          do
          {
            (*(*a1 + 280))(a1, &v8);
            result = (*(*a1 + 112))(a1, &v9);
          }

          while (!result);
        }
      }
    }
  }

  return result;
}

re::snapshot::BufferEncoder *re::internal::opack::encode<float,4>(uint64_t a1, char *a2)
{
  re::snapshot::EncoderOPACK::beginObject(a1);
  v4 = *(a1 + 16);
  if (v4 >= *(a1 + 20))
  {
    re::snapshot::EncoderOPACK::writeInteger(a1, 1);
  }

  else
  {
    v5 = *(a1 + 8);
    *(a1 + 16) = v4 + 1;
    *(v5 + v4) = 9;
  }

  if ((*(a1 + 72) & 4) != 0)
  {
    re::snapshot::EncoderOPACK::beginData(a1, 0x10uLL, 0x10uLL);
    re::snapshot::BufferEncoder::writeRaw<true>(a1, a2, 0x10uLL);
  }

  else
  {
    re::snapshot::EncoderOPACK::beginArray(a1, 4uLL);
    for (i = 0; i != 16; i += 4)
    {
      re::snapshot::EncoderOPACK::operator<<(a1, *&a2[i]);
    }
  }

  return re::snapshot::EncoderOPACK::endObject(a1);
}

uint64_t *re::internal::opack::decode<float,4>(re::snapshot::DecoderOPACK *a1, float *a2)
{
  result = re::snapshot::DecoderOPACK::beginObject(a1, 0);
  if (result)
  {
    if (re::snapshot::DecoderOPACK::beginField<1>(a1, v5, v6))
    {
      v10 = 0;
      if (re::snapshot::DecoderOPACK::beginData(a1, &v10, 1))
      {
        if (v10 == 16)
        {
          v8 = *(a1 + 3);
          if (*(a1 + 4) - v8 <= 0xFuLL)
          {
            re::snapshot::BufferDecoder::error(a1, "overrun: attempted to read %zu bytes, only %zu remaining");
          }

          else
          {
            *a2 = *v8;
            *(a1 + 3) += 16;
          }
        }

        else
        {
          re::snapshot::BufferDecoder::error(a1, "C Array size mismatch: expected %zu, got %zu");
        }
      }

      else if (re::snapshot::DecoderOPACK::beginArray(a1, &v10))
      {
        if (v10 == 4)
        {
          v9 = 0;
          if (re::snapshot::DecoderOPACK::endArray(a1, &v10))
          {
            goto LABEL_20;
          }

          do
          {
            if (v9 > 3)
            {
              re::snapshot::BufferDecoder::error(a1, "Bad data, too many elements: expected %zu, got %d", 4uLL, v9 + 1);
            }

            else
            {
              re::snapshot::DecoderOPACK::operator>>(a1, &a2[v9++]);
            }
          }

          while (!re::snapshot::DecoderOPACK::endArray(a1, &v10));
          if (v9 != 4)
          {
LABEL_20:
            re::snapshot::BufferDecoder::error(a1, "size mismatch: expected %zu, got %d");
          }
        }

        else
        {
          re::snapshot::BufferDecoder::error(a1, "unexpected C Array size: expected %zu, got %zu");
        }
      }

      re::snapshot::DecoderOPACK::endField(a1);
    }

    return re::snapshot::DecoderOPACK::endObject(a1, 0, v7);
  }

  return result;
}

re::snapshot::BufferEncoder *re::internal::encode<re::Vector4<float>,4>(uint64_t a1, char *a2)
{
  v4 = (*(*a1 + 24))(a1);
  if (v4)
  {
    v5 = v4;
    __src = 64;
    re::snapshot::BufferEncoder::writeRaw<true>(v4, &__src, 8uLL);
    return re::snapshot::BufferEncoder::writeRaw<true>(v5, a2, 0x40uLL);
  }

  else
  {
    v7 = (*(*a1 + 16))(a1);
    if (v7)
    {

      return re::internal::opack::encode<re::Vector4<float>,4>(v7, a2);
    }

    else
    {
      v8 = 4;
      (*(*a1 + 88))(a1, 4);
      do
      {
        re::internal::encode<float,4>(a1, a2);
        a2 += 16;
        --v8;
      }

      while (v8);
      v9 = *(*a1 + 96);

      return v9(a1, 4);
    }
  }
}

uint64_t re::internal::decode<re::Vector4<float>,4>(uint64_t a1, _OWORD *a2)
{
  v4 = (*(*a1 + 24))(a1);
  if (v4)
  {

    return re::snapshot::operator>><re::snapshot::DecoderRaw,re::Vector4<float>,4ul>(v4, a2);
  }

  else
  {
    v6 = (*(*a1 + 16))(a1);
    if (v6)
    {

      return re::internal::opack::decode<re::Vector4<float>,4>(v6, a2);
    }

    else
    {
      v9 = 0;
      result = (*(*a1 + 104))(a1, &v9);
      if (result)
      {
        if (v9 == 4)
        {
          v7 = 4;
          do
          {
            re::internal::decode<float,4>(a1, a2++);
            --v7;
          }

          while (v7);
          v9 -= 4;
        }

        v8 = 0uLL;
        result = (*(*a1 + 112))(a1, &v9);
        if ((result & 1) == 0)
        {
          do
          {
            re::internal::decode<float,4>(a1, &v8);
            result = (*(*a1 + 112))(a1, &v9);
          }

          while (!result);
        }
      }
    }
  }

  return result;
}

re::snapshot::BufferEncoder *re::internal::opack::encode<re::Vector4<float>,4>(uint64_t a1, char *a2)
{
  re::snapshot::EncoderOPACK::beginObject(a1);
  v4 = *(a1 + 16);
  if (v4 >= *(a1 + 20))
  {
    re::snapshot::EncoderOPACK::writeInteger(a1, 1);
  }

  else
  {
    v5 = *(a1 + 8);
    *(a1 + 16) = v4 + 1;
    *(v5 + v4) = 9;
  }

  v6 = 4;
  re::snapshot::EncoderOPACK::beginArray(a1, 4uLL);
  do
  {
    re::internal::opack::encode<float,4>(a1, a2);
    a2 += 16;
    --v6;
  }

  while (v6);

  return re::snapshot::EncoderOPACK::endObject(a1);
}

uint64_t *re::internal::opack::decode<re::Vector4<float>,4>(re::snapshot::DecoderOPACK *a1, _OWORD *a2)
{
  result = re::snapshot::DecoderOPACK::beginObject(a1, 0);
  if (result)
  {
    re::snapshot::DecoderOPACK::field<1,re::Vector4<float> [4]>(a1, a2, 0);

    return re::snapshot::DecoderOPACK::endObject(a1, 0, v5);
  }

  return result;
}

re::snapshot::BufferEncoder *_ZZN2re8internal15snapshotEncoderINS_7Vector2IdEEEEDTcl6encodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7EncoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIS9_EEEERPFvS8_PKvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_(uint64_t a1, double *a2)
{
  v4 = (*(*a1 + 24))(a1);
  if (v4)
  {
    v5 = v4;
    __src = 16;
    re::snapshot::BufferEncoder::writeRaw<true>(v4, &__src, 8uLL);
    return re::snapshot::BufferEncoder::writeRaw<true>(v5, a2, 0x10uLL);
  }

  else
  {
    v7 = (*(*a1 + 16))(a1);
    if (v7)
    {
      v8 = v7;
      re::snapshot::EncoderOPACK::beginObject(v7);
      v9 = *(v8 + 4);
      if (v9 >= *(v8 + 5))
      {
        re::snapshot::EncoderOPACK::writeInteger(v8, 1);
      }

      else
      {
        v10 = *(v8 + 1);
        *(v8 + 4) = v9 + 1;
        *(v10 + v9) = 9;
      }

      if ((*(v8 + 72) & 4) != 0)
      {
        re::snapshot::EncoderOPACK::beginData(v8, 0x10uLL, 0x10uLL);
        re::snapshot::BufferEncoder::writeRaw<true>(v8, a2, 0x10uLL);
      }

      else
      {
        re::snapshot::EncoderOPACK::beginArray(v8, 2uLL);
        re::snapshot::EncoderOPACK::operator<<(v8, *a2);
        re::snapshot::EncoderOPACK::operator<<(v8, a2[1]);
      }

      return re::snapshot::EncoderOPACK::endObject(v8);
    }

    else
    {
      (*(*a1 + 88))(a1, 2);
      v11 = 0;
      v12 = 1;
      do
      {
        v13 = v12;
        (*(*a1 + 256))(a1, a2[v11]);
        v12 = 0;
        v11 = 1;
      }

      while ((v13 & 1) != 0);
      v14 = *(*a1 + 96);

      return v14(a1, 2);
    }
  }
}

uint64_t _ZZN2re8internal15snapshotDecoderINS_7Vector2IdEEEEDTcl6decodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7DecoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIRS9_EEEERPFvS8_PvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_(uint64_t a1, _OWORD *a2)
{
  result = (*(*a1 + 24))(a1);
  if (result)
  {
    v5 = result;
    v24 = 0;
    v6 = *(result + 24);
    v7 = *(result + 32);
    if ((v7 - v6) >= 8)
    {
      v9 = *v6;
      v8 = v6 + 1;
      *(result + 24) = v8;
      if (v9 != 16)
      {
        return re::snapshot::BufferDecoder::error(result, "C Array size mismatch: expected %zu, got %zu");
      }

      if ((v7 - v8) <= 0xF)
      {
        return re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining");
      }

      *a2 = *v8;
      *(result + 24) += 16;
      return result;
    }

    re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v7 - v6);
    result = re::snapshot::DecoderRaw::beginArray(v5, &v24);
    if (!result)
    {
      return result;
    }

    if (v24 != 2)
    {
      return re::snapshot::BufferDecoder::error(v5, "unexpected C Array size: expected %zu, got %zu");
    }

    v16 = 0;
    for (i = -1; ; ++i)
    {
      if (v16 > 1)
      {
        result = re::snapshot::BufferDecoder::error(v5, "Bad data, too many elements: expected %zu, got %d", 2uLL, 3);
        v18 = 2;
        if (!i)
        {
          return result;
        }
      }

      else
      {
        v18 = v16 + 1;
        result = re::snapshot::DecoderRaw::operator>>(v5, a2 + v16);
        if (!i)
        {
          if (v18 != 2)
          {
            return re::snapshot::BufferDecoder::error(v5, "size mismatch: expected %zu, got %d");
          }

          return result;
        }
      }

      v16 = v18;
    }
  }

  v10 = (*(*a1 + 16))(a1);
  if (v10)
  {
    v11 = v10;
    result = re::snapshot::DecoderOPACK::beginObject(v10, 0);
    if (!result)
    {
      return result;
    }

    if (re::snapshot::DecoderOPACK::beginField<1>(v11, v12, v13))
    {
      v24 = 0;
      if (re::snapshot::DecoderOPACK::beginData(v11, &v24, 1))
      {
        if (v24 == 16)
        {
          v15 = *(v11 + 24);
          if (*(v11 + 32) - v15 <= 0xFuLL)
          {
            re::snapshot::BufferDecoder::error(v11, "overrun: attempted to read %zu bytes, only %zu remaining");
          }

          else
          {
            *a2 = *v15;
            *(v11 + 24) += 16;
          }
        }

        else
        {
          re::snapshot::BufferDecoder::error(v11, "C Array size mismatch: expected %zu, got %zu");
        }
      }

      else if (re::snapshot::DecoderOPACK::beginArray(v11, &v24))
      {
        if (v24 == 2)
        {
          if (re::snapshot::DecoderOPACK::endArray(v11, &v24))
          {
            goto LABEL_47;
          }

          v19 = 0;
          do
          {
            while (v19 > 1)
            {
              re::snapshot::BufferDecoder::error(v11, "Bad data, too many elements: expected %zu, got %d", 2uLL, 3);
              v22 = re::snapshot::DecoderOPACK::endArray(v11, &v24);
              v19 = 2;
              if (v22)
              {
                goto LABEL_48;
              }
            }

            v20 = v19 + 1;
            re::snapshot::DecoderOPACK::operator>>(v11, a2 + v19);
            v21 = re::snapshot::DecoderOPACK::endArray(v11, &v24);
            v19 = v20;
          }

          while (!v21);
          if (v20 != 2)
          {
LABEL_47:
            re::snapshot::BufferDecoder::error(v11, "size mismatch: expected %zu, got %d");
          }
        }

        else
        {
          re::snapshot::BufferDecoder::error(v11, "unexpected C Array size: expected %zu, got %zu");
        }
      }

LABEL_48:
      re::snapshot::DecoderOPACK::endField(v11);
    }

    return re::snapshot::DecoderOPACK::endObject(v11, 0, v14);
  }

  else
  {
    v24 = 0;
    result = (*(*a1 + 104))(a1, &v24);
    if (result)
    {
      if (v24 == 2)
      {
        (*(*a1 + 288))(a1, a2);
        (*(*a1 + 288))(a1, a2 + 8);
        v24 -= 2;
      }

      v23 = 0;
      result = (*(*a1 + 112))(a1, &v24);
      if ((result & 1) == 0)
      {
        do
        {
          (*(*a1 + 288))(a1, &v23);
          result = (*(*a1 + 112))(a1, &v24);
        }

        while (!result);
      }
    }
  }

  return result;
}

re::snapshot::BufferEncoder *_ZZN2re8internal15snapshotEncoderINS_7Vector3IdEEEEDTcl6encodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7EncoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIS9_EEEERPFvS8_PKvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_(uint64_t a1, char *a2)
{
  v4 = (*(*a1 + 24))(a1);
  if (v4)
  {
    v5 = v4;
    __src = 24;
    re::snapshot::BufferEncoder::writeRaw<true>(v4, &__src, 8uLL);
    return re::snapshot::BufferEncoder::writeRaw<true>(v5, a2, 0x18uLL);
  }

  else
  {
    v7 = (*(*a1 + 16))(a1);
    v8 = v7;
    if (v7)
    {
      re::snapshot::EncoderOPACK::beginObject(v7);
      v9 = *(v8 + 4);
      if (v9 >= *(v8 + 5))
      {
        re::snapshot::EncoderOPACK::writeInteger(v8, 1);
      }

      else
      {
        v10 = *(v8 + 1);
        *(v8 + 4) = v9 + 1;
        *(v10 + v9) = 9;
      }

      if ((*(v8 + 72) & 4) != 0)
      {
        re::snapshot::EncoderOPACK::beginData(v8, 0x18uLL, 0x18uLL);
        re::snapshot::BufferEncoder::writeRaw<true>(v8, a2, 0x18uLL);
      }

      else
      {
        re::snapshot::EncoderOPACK::beginArray(v8, 3uLL);
        for (i = 0; i != 24; i += 8)
        {
          re::snapshot::EncoderOPACK::operator<<(v8, *&a2[i]);
        }
      }

      return re::snapshot::EncoderOPACK::endObject(v8);
    }

    else
    {
      (*(*a1 + 88))(a1, 3);
      do
      {
        (*(*a1 + 256))(a1, *(v8 + a2));
        v8 = (v8 + 8);
      }

      while (v8 != 24);
      v12 = *(*a1 + 96);

      return v12(a1, 3);
    }
  }
}

uint64_t _ZZN2re8internal15snapshotDecoderINS_7Vector3IdEEEEDTcl6decodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7DecoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIRS9_EEEERPFvS8_PvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_(uint64_t a1, uint64_t a2)
{
  result = (*(*a1 + 24))(a1);
  if (result)
  {
    v5 = result;
    v24 = 0;
    v6 = *(result + 24);
    v7 = *(result + 32);
    if ((v7 - v6) < 8)
    {
      re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v7 - v6);
      result = re::snapshot::DecoderRaw::beginArray(v5, &v24);
      if (result)
      {
        if (v24 == 3)
        {
          v18 = 0;
          v19 = -3;
          do
          {
            if (v18 > 2)
            {
              result = re::snapshot::BufferDecoder::error(v5, "Bad data, too many elements: expected %zu, got %d", 3uLL, v18 + 1);
            }

            else
            {
              result = re::snapshot::DecoderRaw::operator>>(v5, (a2 + 8 * v18++));
            }
          }

          while (!__CFADD__(v19++, 1));
          if (v18 != 3)
          {
            return re::snapshot::BufferDecoder::error(v5, "size mismatch: expected %zu, got %d");
          }
        }

        else
        {
          return re::snapshot::BufferDecoder::error(v5, "unexpected C Array size: expected %zu, got %zu");
        }
      }
    }

    else
    {
      v9 = *v6;
      v8 = v6 + 1;
      *(result + 24) = v8;
      if (v9 == 24)
      {
        if ((v7 - v8) <= 0x17)
        {
          return re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining");
        }

        else
        {
          v10 = *v8;
          *(a2 + 16) = v8[2];
          *a2 = v10;
          *(result + 24) += 24;
        }
      }

      else
      {
        return re::snapshot::BufferDecoder::error(result, "C Array size mismatch: expected %zu, got %zu");
      }
    }
  }

  else
  {
    v11 = (*(*a1 + 16))(a1);
    if (v11)
    {
      v12 = v11;
      result = re::snapshot::DecoderOPACK::beginObject(v11, 0);
      if (result)
      {
        if (re::snapshot::DecoderOPACK::beginField<1>(v12, v13, v14))
        {
          v24 = 0;
          if (re::snapshot::DecoderOPACK::beginData(v12, &v24, 1))
          {
            if (v24 == 24)
            {
              v16 = *(v12 + 24);
              if (*(v12 + 32) - v16 <= 0x17uLL)
              {
                re::snapshot::BufferDecoder::error(v12, "overrun: attempted to read %zu bytes, only %zu remaining");
              }

              else
              {
                v17 = *v16;
                *(a2 + 16) = *(v16 + 2);
                *a2 = v17;
                *(v12 + 24) += 24;
              }
            }

            else
            {
              re::snapshot::BufferDecoder::error(v12, "C Array size mismatch: expected %zu, got %zu");
            }
          }

          else if (re::snapshot::DecoderOPACK::beginArray(v12, &v24))
          {
            if (v24 == 3)
            {
              v22 = 0;
              if (re::snapshot::DecoderOPACK::endArray(v12, &v24))
              {
                goto LABEL_48;
              }

              do
              {
                if (v22 > 2)
                {
                  re::snapshot::BufferDecoder::error(v12, "Bad data, too many elements: expected %zu, got %d", 3uLL, v22 + 1);
                }

                else
                {
                  re::snapshot::DecoderOPACK::operator>>(v12, (a2 + 8 * v22++));
                }
              }

              while (!re::snapshot::DecoderOPACK::endArray(v12, &v24));
              if (v22 != 3)
              {
LABEL_48:
                re::snapshot::BufferDecoder::error(v12, "size mismatch: expected %zu, got %d");
              }
            }

            else
            {
              re::snapshot::BufferDecoder::error(v12, "unexpected C Array size: expected %zu, got %zu");
            }
          }

          re::snapshot::DecoderOPACK::endField(v12);
        }

        return re::snapshot::DecoderOPACK::endObject(v12, 0, v15);
      }
    }

    else
    {
      v24 = 0;
      result = (*(*a1 + 104))(a1, &v24);
      if (result)
      {
        if (v24 == 3)
        {
          v21 = 3;
          do
          {
            (*(*a1 + 288))(a1, a2);
            a2 += 8;
            --v21;
          }

          while (v21);
          v24 -= 3;
        }

        v23 = 0;
        result = (*(*a1 + 112))(a1, &v24);
        if ((result & 1) == 0)
        {
          do
          {
            (*(*a1 + 288))(a1, &v23);
            result = (*(*a1 + 112))(a1, &v24);
          }

          while (!result);
        }
      }
    }
  }

  return result;
}

re::snapshot::BufferEncoder *_ZZN2re8internal15snapshotEncoderINS_7Vector4IdEEEEDTcl6encodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7EncoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIS9_EEEERPFvS8_PKvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_(uint64_t a1, char *a2)
{
  v4 = (*(*a1 + 24))(a1);
  if (v4)
  {
    v5 = v4;
    __src = 32;
    re::snapshot::BufferEncoder::writeRaw<true>(v4, &__src, 8uLL);
    return re::snapshot::BufferEncoder::writeRaw<true>(v5, a2, 0x20uLL);
  }

  else
  {
    v7 = (*(*a1 + 16))(a1);
    v8 = v7;
    if (v7)
    {
      re::snapshot::EncoderOPACK::beginObject(v7);
      v9 = *(v8 + 4);
      if (v9 >= *(v8 + 5))
      {
        re::snapshot::EncoderOPACK::writeInteger(v8, 1);
      }

      else
      {
        v10 = *(v8 + 1);
        *(v8 + 4) = v9 + 1;
        *(v10 + v9) = 9;
      }

      if ((*(v8 + 72) & 4) != 0)
      {
        re::snapshot::EncoderOPACK::beginData(v8, 0x20uLL, 0x20uLL);
        re::snapshot::BufferEncoder::writeRaw<true>(v8, a2, 0x20uLL);
      }

      else
      {
        re::snapshot::EncoderOPACK::beginArray(v8, 4uLL);
        for (i = 0; i != 32; i += 8)
        {
          re::snapshot::EncoderOPACK::operator<<(v8, *&a2[i]);
        }
      }

      return re::snapshot::EncoderOPACK::endObject(v8);
    }

    else
    {
      (*(*a1 + 88))(a1, 4);
      do
      {
        (*(*a1 + 256))(a1, *(v8 + a2));
        v8 = (v8 + 8);
      }

      while (v8 != 32);
      v12 = *(*a1 + 96);

      return v12(a1, 4);
    }
  }
}

uint64_t _ZZN2re8internal15snapshotDecoderINS_7Vector4IdEEEEDTcl6decodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7DecoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIRS9_EEEERPFvS8_PvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_(uint64_t a1, _OWORD *a2)
{
  result = (*(*a1 + 24))(a1);
  if (result)
  {
    v5 = result;
    v24 = 0;
    v6 = *(result + 24);
    v7 = *(result + 32);
    if ((v7 - v6) < 8)
    {
      re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v7 - v6);
      result = re::snapshot::DecoderRaw::beginArray(v5, &v24);
      if (result)
      {
        if (v24 == 4)
        {
          v18 = 0;
          v19 = -4;
          do
          {
            if (v18 > 3)
            {
              result = re::snapshot::BufferDecoder::error(v5, "Bad data, too many elements: expected %zu, got %d", 4uLL, v18 + 1);
            }

            else
            {
              result = re::snapshot::DecoderRaw::operator>>(v5, a2 + v18++);
            }
          }

          while (!__CFADD__(v19++, 1));
          if (v18 != 4)
          {
            return re::snapshot::BufferDecoder::error(v5, "size mismatch: expected %zu, got %d");
          }
        }

        else
        {
          return re::snapshot::BufferDecoder::error(v5, "unexpected C Array size: expected %zu, got %zu");
        }
      }
    }

    else
    {
      v9 = *v6;
      v8 = v6 + 1;
      *(result + 24) = v8;
      if (v9 == 32)
      {
        if ((v7 - v8) <= 0x1F)
        {
          return re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining");
        }

        else
        {
          v10 = v8[1];
          *a2 = *v8;
          a2[1] = v10;
          *(result + 24) += 32;
        }
      }

      else
      {
        return re::snapshot::BufferDecoder::error(result, "C Array size mismatch: expected %zu, got %zu");
      }
    }
  }

  else
  {
    v11 = (*(*a1 + 16))(a1);
    if (v11)
    {
      v12 = v11;
      result = re::snapshot::DecoderOPACK::beginObject(v11, 0);
      if (result)
      {
        if (re::snapshot::DecoderOPACK::beginField<1>(v12, v13, v14))
        {
          v24 = 0;
          if (re::snapshot::DecoderOPACK::beginData(v12, &v24, 1))
          {
            if (v24 == 32)
            {
              v16 = *(v12 + 24);
              if (*(v12 + 32) - v16 <= 0x1FuLL)
              {
                re::snapshot::BufferDecoder::error(v12, "overrun: attempted to read %zu bytes, only %zu remaining");
              }

              else
              {
                v17 = v16[1];
                *a2 = *v16;
                a2[1] = v17;
                *(v12 + 24) += 32;
              }
            }

            else
            {
              re::snapshot::BufferDecoder::error(v12, "C Array size mismatch: expected %zu, got %zu");
            }
          }

          else if (re::snapshot::DecoderOPACK::beginArray(v12, &v24))
          {
            if (v24 == 4)
            {
              v22 = 0;
              if (re::snapshot::DecoderOPACK::endArray(v12, &v24))
              {
                goto LABEL_48;
              }

              do
              {
                if (v22 > 3)
                {
                  re::snapshot::BufferDecoder::error(v12, "Bad data, too many elements: expected %zu, got %d", 4uLL, v22 + 1);
                }

                else
                {
                  re::snapshot::DecoderOPACK::operator>>(v12, a2 + v22++);
                }
              }

              while (!re::snapshot::DecoderOPACK::endArray(v12, &v24));
              if (v22 != 4)
              {
LABEL_48:
                re::snapshot::BufferDecoder::error(v12, "size mismatch: expected %zu, got %d");
              }
            }

            else
            {
              re::snapshot::BufferDecoder::error(v12, "unexpected C Array size: expected %zu, got %zu");
            }
          }

          re::snapshot::DecoderOPACK::endField(v12);
        }

        return re::snapshot::DecoderOPACK::endObject(v12, 0, v15);
      }
    }

    else
    {
      v24 = 0;
      result = (*(*a1 + 104))(a1, &v24);
      if (result)
      {
        if (v24 == 4)
        {
          v21 = 4;
          do
          {
            (*(*a1 + 288))(a1, a2);
            a2 = (a2 + 8);
            --v21;
          }

          while (v21);
          v24 -= 4;
        }

        v23 = 0;
        result = (*(*a1 + 112))(a1, &v24);
        if ((result & 1) == 0)
        {
          do
          {
            (*(*a1 + 288))(a1, &v23);
            result = (*(*a1 + 112))(a1, &v24);
          }

          while (!result);
        }
      }
    }
  }

  return result;
}

re::snapshot::BufferEncoder *_ZZN2re8internal15snapshotEncoderINS_9Matrix2x2IfEEEEDTcl6encodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7EncoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIS9_EEEERPFvS8_PKvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_(uint64_t a1, float *a2)
{
  v4 = (*(*a1 + 24))(a1);
  if (v4)
  {
    v5 = v4;
    __src = 16;
    re::snapshot::BufferEncoder::writeRaw<true>(v4, &__src, 8uLL);
    return re::snapshot::BufferEncoder::writeRaw<true>(v5, a2, 0x10uLL);
  }

  else
  {
    v7 = (*(*a1 + 16))(a1);
    if (v7)
    {
      v8 = v7;
      re::snapshot::EncoderOPACK::beginObject(v7);
      v9 = *(v8 + 16);
      if (v9 >= *(v8 + 20))
      {
        re::snapshot::EncoderOPACK::writeInteger(v8, 1);
      }

      else
      {
        v10 = *(v8 + 8);
        *(v8 + 16) = v9 + 1;
        *(v10 + v9) = 9;
      }

      re::snapshot::EncoderOPACK::beginArray(v8, 2uLL);
      re::internal::opack::encode<float,2>(v8, a2);
      re::internal::opack::encode<float,2>(v8, a2 + 2);

      return re::snapshot::EncoderOPACK::endObject(v8);
    }

    else
    {
      (*(*a1 + 88))(a1, 2);
      re::internal::encode<float,2>(a1, a2);
      re::internal::encode<float,2>(a1, a2 + 2);
      v11 = *(*a1 + 96);

      return v11(a1, 2);
    }
  }
}

uint64_t _ZZN2re8internal15snapshotDecoderINS_9Matrix2x2IfEEEEDTcl6decodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7DecoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIRS9_EEEERPFvS8_PvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_(uint64_t a1, _OWORD *a2)
{
  result = (*(*a1 + 24))(a1);
  if (result)
  {
    v5 = result;
    v24 = 0;
    v6 = *(result + 24);
    v7 = *(result + 32);
    if ((v7 - v6) >= 8)
    {
      v9 = *v6;
      v8 = v6 + 1;
      *(result + 24) = v8;
      if (v9 != 16)
      {
        return re::snapshot::BufferDecoder::error(result, "C Array size mismatch: expected %zu, got %zu");
      }

      if ((v7 - v8) <= 0xF)
      {
        return re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining");
      }

      *a2 = *v8;
      *(result + 24) += 16;
      return result;
    }

    re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v7 - v6);
    result = re::snapshot::DecoderRaw::beginArray(v5, &v24);
    if (!result)
    {
      return result;
    }

    if (v24 != 2)
    {
      return re::snapshot::BufferDecoder::error(v5, "unexpected C Array size: expected %zu, got %zu");
    }

    v16 = 0;
    for (i = -1; ; ++i)
    {
      if (v16 > 1)
      {
        result = re::snapshot::BufferDecoder::error(v5, "Bad data, too many elements: expected %zu, got %d", 2uLL, 3);
        v18 = 2;
        if (!i)
        {
          return result;
        }
      }

      else
      {
        v18 = v16 + 1;
        result = re::snapshot::operator>><re::snapshot::DecoderRaw,float,2ul>(v5, a2 + v16);
        if (!i)
        {
          if (v18 != 2)
          {
            return re::snapshot::BufferDecoder::error(v5, "size mismatch: expected %zu, got %d");
          }

          return result;
        }
      }

      v16 = v18;
    }
  }

  v10 = (*(*a1 + 16))(a1);
  if (v10)
  {
    v11 = v10;
    result = re::snapshot::DecoderOPACK::beginObject(v10, 0);
    if (!result)
    {
      return result;
    }

    if (re::snapshot::DecoderOPACK::beginField<1>(v11, v12, v13))
    {
      v24 = 0;
      if (re::snapshot::DecoderOPACK::beginData(v11, &v24, 1))
      {
        if (v24 == 16)
        {
          v15 = *(v11 + 24);
          if (*(v11 + 32) - v15 <= 0xFuLL)
          {
            re::snapshot::BufferDecoder::error(v11, "overrun: attempted to read %zu bytes, only %zu remaining");
          }

          else
          {
            *a2 = *v15;
            *(v11 + 24) += 16;
          }
        }

        else
        {
          re::snapshot::BufferDecoder::error(v11, "C Array size mismatch: expected %zu, got %zu");
        }
      }

      else if (re::snapshot::DecoderOPACK::beginArray(v11, &v24))
      {
        if (v24 == 2)
        {
          if (re::snapshot::DecoderOPACK::endArray(v11, &v24))
          {
            goto LABEL_47;
          }

          v19 = 0;
          do
          {
            while (v19 > 1)
            {
              re::snapshot::BufferDecoder::error(v11, "Bad data, too many elements: expected %zu, got %d", 2uLL, 3);
              v22 = re::snapshot::DecoderOPACK::endArray(v11, &v24);
              v19 = 2;
              if (v22)
              {
                goto LABEL_48;
              }
            }

            v20 = v19 + 1;
            re::internal::opack::decode<float,2>(v11, a2 + 2 * v19);
            v21 = re::snapshot::DecoderOPACK::endArray(v11, &v24);
            v19 = v20;
          }

          while (!v21);
          if (v20 != 2)
          {
LABEL_47:
            re::snapshot::BufferDecoder::error(v11, "size mismatch: expected %zu, got %d");
          }
        }

        else
        {
          re::snapshot::BufferDecoder::error(v11, "unexpected C Array size: expected %zu, got %zu");
        }
      }

LABEL_48:
      re::snapshot::DecoderOPACK::endField(v11);
    }

    return re::snapshot::DecoderOPACK::endObject(v11, 0, v14);
  }

  else
  {
    v24 = 0;
    result = (*(*a1 + 104))(a1, &v24);
    if (result)
    {
      if (v24 == 2)
      {
        re::internal::decode<float,2>(a1, a2);
        re::internal::decode<float,2>(a1, a2 + 2);
        v24 -= 2;
      }

      v23 = 0;
      result = (*(*a1 + 112))(a1, &v24);
      if ((result & 1) == 0)
      {
        do
        {
          re::internal::decode<float,2>(a1, &v23);
          result = (*(*a1 + 112))(a1, &v24);
        }

        while (!result);
      }
    }
  }

  return result;
}

re::snapshot::BufferEncoder *_ZZN2re8internal15snapshotEncoderINS_9Matrix3x3IfEEEEDTcl6encodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7EncoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIS9_EEEERPFvS8_PKvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_(uint64_t a1, char *a2)
{
  v4 = (*(*a1 + 24))(a1);
  if (v4)
  {
    v5 = v4;
    __src = 48;
    re::snapshot::BufferEncoder::writeRaw<true>(v4, &__src, 8uLL);
    return re::snapshot::BufferEncoder::writeRaw<true>(v5, a2, 0x30uLL);
  }

  else
  {
    v7 = (*(*a1 + 16))(a1);
    if (v7)
    {
      v8 = v7;
      re::snapshot::EncoderOPACK::beginObject(v7);
      v9 = *(v8 + 16);
      if (v9 >= *(v8 + 20))
      {
        re::snapshot::EncoderOPACK::writeInteger(v8, 1);
      }

      else
      {
        v10 = *(v8 + 8);
        *(v8 + 16) = v9 + 1;
        *(v10 + v9) = 9;
      }

      v11 = 3;
      re::snapshot::EncoderOPACK::beginArray(v8, 3uLL);
      do
      {
        re::internal::opack::encode<float,3>(v8, a2);
        a2 += 16;
        --v11;
      }

      while (v11);

      return re::snapshot::EncoderOPACK::endObject(v8);
    }

    else
    {
      v12 = 3;
      (*(*a1 + 88))(a1, 3);
      do
      {
        re::internal::encode<float,3>(a1, a2);
        a2 += 16;
        --v12;
      }

      while (v12);
      v13 = *(*a1 + 96);

      return v13(a1, 3);
    }
  }
}

uint64_t _ZZN2re8internal15snapshotDecoderINS_9Matrix3x3IfEEEEDTcl6decodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7DecoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIRS9_EEEERPFvS8_PvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_(uint64_t a1, _OWORD *a2)
{
  result = (*(*a1 + 24))(a1);
  if (result)
  {
    v5 = result;
    v25[0] = 0;
    v6 = *(result + 24);
    v7 = *(result + 32);
    if ((v7 - v6) < 8)
    {
      re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v7 - v6);
      result = re::snapshot::DecoderRaw::beginArray(v5, v25);
      if (result)
      {
        if (v25[0] == 3)
        {
          v20 = 0;
          v21 = -3;
          do
          {
            if (v20 > 2)
            {
              result = re::snapshot::BufferDecoder::error(v5, "Bad data, too many elements: expected %zu, got %d", 3uLL, v20 + 1);
            }

            else
            {
              result = re::snapshot::operator>><re::snapshot::DecoderRaw,float,3ul>(v5, &a2[v20++]);
            }
          }

          while (!__CFADD__(v21++, 1));
          if (v20 != 3)
          {
            return re::snapshot::BufferDecoder::error(v5, "size mismatch: expected %zu, got %d");
          }
        }

        else
        {
          return re::snapshot::BufferDecoder::error(v5, "unexpected C Array size: expected %zu, got %zu");
        }
      }
    }

    else
    {
      v9 = *v6;
      v8 = (v6 + 1);
      *(result + 24) = v8;
      if (v9 == 48)
      {
        if ((v7 - v8) <= 0x2F)
        {
          return re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining");
        }

        else
        {
          v10 = *v8;
          v11 = v8[2];
          a2[1] = v8[1];
          a2[2] = v11;
          *a2 = v10;
          *(result + 24) += 48;
        }
      }

      else
      {
        return re::snapshot::BufferDecoder::error(result, "C Array size mismatch: expected %zu, got %zu");
      }
    }
  }

  else
  {
    v12 = (*(*a1 + 16))(a1);
    if (v12)
    {
      v13 = v12;
      result = re::snapshot::DecoderOPACK::beginObject(v12, 0);
      if (result)
      {
        if (re::snapshot::DecoderOPACK::beginField<1>(v13, v14, v15))
        {
          v25[0] = 0;
          if (re::snapshot::DecoderOPACK::beginData(v13, v25, 1))
          {
            if (v25[0] == 48)
            {
              v17 = *(v13 + 24);
              if (*(v13 + 32) - v17 <= 0x2FuLL)
              {
                re::snapshot::BufferDecoder::error(v13, "overrun: attempted to read %zu bytes, only %zu remaining");
              }

              else
              {
                v18 = *v17;
                v19 = v17[2];
                a2[1] = v17[1];
                a2[2] = v19;
                *a2 = v18;
                *(v13 + 24) += 48;
              }
            }

            else
            {
              re::snapshot::BufferDecoder::error(v13, "C Array size mismatch: expected %zu, got %zu");
            }
          }

          else if (re::snapshot::DecoderOPACK::beginArray(v13, v25))
          {
            if (v25[0] == 3)
            {
              v24 = 0;
              if (re::snapshot::DecoderOPACK::endArray(v13, v25))
              {
                goto LABEL_48;
              }

              do
              {
                if (v24 > 2)
                {
                  re::snapshot::BufferDecoder::error(v13, "Bad data, too many elements: expected %zu, got %d", 3uLL, v24 + 1);
                }

                else
                {
                  re::internal::opack::decode<float,3>(v13, &a2[v24++]);
                }
              }

              while (!re::snapshot::DecoderOPACK::endArray(v13, v25));
              if (v24 != 3)
              {
LABEL_48:
                re::snapshot::BufferDecoder::error(v13, "size mismatch: expected %zu, got %d");
              }
            }

            else
            {
              re::snapshot::BufferDecoder::error(v13, "unexpected C Array size: expected %zu, got %zu");
            }
          }

          re::snapshot::DecoderOPACK::endField(v13);
        }

        return re::snapshot::DecoderOPACK::endObject(v13, 0, v16);
      }
    }

    else
    {
      v26 = 0;
      result = (*(*a1 + 104))(a1, &v26);
      if (result)
      {
        if (v26 == 3)
        {
          v23 = 3;
          do
          {
            re::internal::decode<float,3>(a1, a2++);
            --v23;
          }

          while (v23);
          v26 -= 3;
        }

        *v25 = 0u;
        result = (*(*a1 + 112))(a1, &v26);
        if ((result & 1) == 0)
        {
          do
          {
            re::internal::decode<float,3>(a1, v25);
            result = (*(*a1 + 112))(a1, &v26);
          }

          while (!result);
        }
      }
    }
  }

  return result;
}

re::snapshot::BufferDecoder *re::snapshot::operator>><re::snapshot::DecoderRaw,float,2ul>(re::snapshot::BufferDecoder *this, void *a2)
{
  v3 = this;
  v11 = 0;
  v4 = *(this + 3);
  v5 = *(this + 4);
  if ((v5 - v4) >= 8)
  {
    v7 = *v4;
    v6 = v4 + 1;
    *(this + 3) = v6;
    if (v7 != 8)
    {
      return re::snapshot::BufferDecoder::error(this, "C Array size mismatch: expected %zu, got %zu");
    }

    if ((v5 - v6) <= 7)
    {
      return re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining");
    }

    *a2 = *v6;
    *(this + 3) += 8;
    return this;
  }

  re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v5 - v4);
  this = re::snapshot::DecoderRaw::beginArray(v3, &v11);
  if (!this)
  {
    return this;
  }

  if (v11 != 2)
  {
    return re::snapshot::BufferDecoder::error(v3, "unexpected C Array size: expected %zu, got %zu");
  }

  v8 = 0;
  v9 = -1;
  while (v8 > 1)
  {
    this = re::snapshot::BufferDecoder::error(v3, "Bad data, too many elements: expected %zu, got %d", 2uLL, 3);
    v10 = 2;
    if (!v9)
    {
      return this;
    }

LABEL_10:
    ++v9;
    v8 = v10;
  }

  v10 = v8 + 1;
  this = re::snapshot::DecoderRaw::operator>>(v3, a2 + v8);
  if (v9)
  {
    goto LABEL_10;
  }

  if (v10 != 2)
  {
    return re::snapshot::BufferDecoder::error(v3, "size mismatch: expected %zu, got %d");
  }

  return this;
}

uint64_t re::internal::encodeArray<re::snapshot::Encoder,float,3>(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 88))(a1, 3);
  for (i = 0; i != 12; i += 4)
  {
    (*(*a1 + 248))(a1, *(a2 + i));
  }

  v5 = *(*a1 + 96);

  return v5(a1, 3);
}

uint64_t re::internal::decodeArray<re::snapshot::Decoder,float,3>(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  result = (*(*a1 + 104))(a1, &v7);
  if (result)
  {
    if (v7 == 3)
    {
      v5 = 3;
      do
      {
        (*(*a1 + 280))(a1, a2);
        a2 += 4;
        --v5;
      }

      while (v5);
      v7 -= 3;
    }

    v6 = 0;
    result = (*(*a1 + 112))(a1, &v7);
    if ((result & 1) == 0)
    {
      do
      {
        (*(*a1 + 280))(a1, &v6);
        result = (*(*a1 + 112))(a1, &v7);
      }

      while (!result);
    }
  }

  return result;
}

re::snapshot::BufferDecoder *re::snapshot::operator>><re::snapshot::DecoderRaw,float,3ul>(re::snapshot::BufferDecoder *this, uint64_t a2)
{
  v3 = this;
  v12 = 0;
  v4 = *(this + 3);
  v5 = *(this + 4);
  if ((v5 - v4) < 8)
  {
    re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v5 - v4);
    this = re::snapshot::DecoderRaw::beginArray(v3, &v12);
    if (this)
    {
      if (v12 == 3)
      {
        v9 = 0;
        v10 = -3;
        do
        {
          if (v9 > 2)
          {
            this = re::snapshot::BufferDecoder::error(v3, "Bad data, too many elements: expected %zu, got %d", 3uLL, v9 + 1);
          }

          else
          {
            this = re::snapshot::DecoderRaw::operator>>(v3, (a2 + 4 * v9++));
          }
        }

        while (!__CFADD__(v10++, 1));
        if (v9 != 3)
        {
          return re::snapshot::BufferDecoder::error(v3, "size mismatch: expected %zu, got %d");
        }
      }

      else
      {
        return re::snapshot::BufferDecoder::error(v3, "unexpected C Array size: expected %zu, got %zu");
      }
    }
  }

  else
  {
    v7 = *v4;
    v6 = v4 + 1;
    *(this + 3) = v6;
    if (v7 == 12)
    {
      if ((v5 - v6) <= 0xB)
      {
        return re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining");
      }

      else
      {
        v8 = *v6;
        *(a2 + 8) = *(v6 + 2);
        *a2 = v8;
        *(this + 3) += 12;
      }
    }

    else
    {
      return re::snapshot::BufferDecoder::error(this, "C Array size mismatch: expected %zu, got %zu");
    }
  }

  return this;
}