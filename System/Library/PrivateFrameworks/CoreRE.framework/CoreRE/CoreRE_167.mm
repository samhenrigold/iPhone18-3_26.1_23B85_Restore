uint64_t re::internal::anonymous namespace::computeAccumulatedCounts(unint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1 < 2)
  {
    if (!a1)
    {
      return 0;
    }
  }

  else
  {
    v3 = 2;
    for (i = 1; i < a1; i = v3++)
    {
      v5 = v3 - 2;
      if (v5 >= a1)
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
        v16 = v5;
        v17 = 2048;
        v18 = a1;
        _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
        _os_crash_msg();
        __break(1u);
      }

      *(a2 + 4 * i) += *(a2 + 4 * v5);
    }
  }

  return *(a2 + 4 * a1 - 4);
}

void *re::internal::anonymous namespace::createIndexOffsetsFromAccumulatedCounts(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  *(a2 + 16) = 0;
  ++*(a2 + 24);
  v4 = *(a1 + 16);
  LODWORD(v29) = 0;
  result = re::DynamicArray<unsigned int>::resize(a2, v4, &v29);
  v6 = *(a1 + 16);
  if (v6 >= 2)
  {
    v7 = *(a2 + 16);
    v8 = *(a1 + 32);
    v9 = 2;
    v10 = 1;
    v11 = *(a2 + 32);
    do
    {
      v12 = v9 - 2;
      if (v6 <= v12)
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

        v24 = 797;
        v25 = 2048;
        v26 = v12;
        v27 = 2048;
        v28 = v6;
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

        v24 = 789;
        v25 = 2048;
        v26 = v10;
        v27 = 2048;
        v28 = v7;
        _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
      }

      if (v7 <= v10)
      {
        goto LABEL_11;
      }

      *(v11 + 4 * v10) = *(v8 + 4 * v12);
      v10 = v9;
    }

    while (v6 > v9++);
  }

  return result;
}

uint64_t re::internal::GeomConnectivityNonManifold::edgeFaceCount(re::internal::GeomConnectivityNonManifold *this, unsigned int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = a2 - 1;
    v3 = *(this + 38);
    if (v3 <= v2)
    {
      goto LABEL_11;
    }

    v4 = *(*(this + 40) + 4 * v2);
  }

  else
  {
    v4 = 0;
    v3 = *(this + 38);
  }

  v2 = a2;
  if (v3 <= a2)
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
    v18 = v2;
    v19 = 2048;
    v20 = v3;
    _os_log_send_and_compose_impl(v7, &v12, &v21, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
LABEL_11:
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
    v18 = v2;
    v19 = 2048;
    v20 = v3;
    _os_log_send_and_compose_impl(v10, &v12, &v21, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  return (*(*(this + 40) + 4 * a2) - v4);
}

uint64_t re::internal::GeomConnectivityNonManifold::vertexFaceCount(re::internal::GeomConnectivityNonManifold *this, unsigned int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = a2 - 1;
    v3 = *(this + 18);
    if (v3 <= v2)
    {
      goto LABEL_11;
    }

    v4 = *(*(this + 20) + 4 * v2);
  }

  else
  {
    v4 = 0;
    v3 = *(this + 18);
  }

  v2 = a2;
  if (v3 <= a2)
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
    v18 = v2;
    v19 = 2048;
    v20 = v3;
    _os_log_send_and_compose_impl(v7, &v12, &v21, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
LABEL_11:
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
    v18 = v2;
    v19 = 2048;
    v20 = v3;
    _os_log_send_and_compose_impl(v10, &v12, &v21, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  return (*(*(this + 20) + 4 * a2) - v4);
}

re::internal::GeomConnectivityNonManifold *re::internal::GeomConnectivityNonManifold::classifyEdges(re::internal::GeomConnectivityNonManifold *this)
{
  v84 = *MEMORY[0x1E69E9840];
  v1 = *(this + 33);
  if ((v1 & 0x1FFFFFFFELL) == 0)
  {
    return this;
  }

  v2 = this;
  v3 = 0;
  v4 = (v1 >> 1);
  do
  {
    v5 = re::internal::GeomConnectivityNonManifold::edgeFaceCount(v2, v3);
    this = re::internal::GeomConnectivityNonManifold::edgeVertices(v2, v3, &v66);
    v6 = v66;
    if (v66 == HIDWORD(v66))
    {
      goto LABEL_4;
    }

    if (v5 == 1)
    {
      v7 = *(v2 + 8);
      if (v7 <= v66)
      {
        goto LABEL_87;
      }

      *(*(v2 + 10) + v66) |= 1u;
      v7 = HIDWORD(v66);
      v6 = *(v2 + 8);
      if (v6 <= HIDWORD(v66))
      {
        goto LABEL_91;
      }

      *(*(v2 + 10) + HIDWORD(v66)) |= 1u;
      v7 = *(v2 + 8);
      if (v7 <= v3)
      {
        goto LABEL_95;
      }

      v8 = 4;
LABEL_13:
      *(*(v2 + 10) + v3) |= v8;
      goto LABEL_14;
    }

    this = re::internal::GeomConnectivityNonManifold::edgeFaceCount(v2, v3);
    if (this == 1)
    {
      goto LABEL_14;
    }

    if (this > 2)
    {
      goto LABEL_65;
    }

    re::internal::GeomConnectivityNonManifold::edgeVertices(v2, v3, &v70);
    *&v69[2] = 0;
    memset(v67, 0, sizeof(v67));
    if (v3)
    {
      v6 = (v3 - 1);
      v7 = *(v2 + 38);
      if (v7 <= v6)
      {
        goto LABEL_111;
      }

      v9 = *(*(v2 + 40) + 4 * v6);
    }

    else
    {
      v9 = 0;
      v7 = *(v2 + 38);
    }

    v6 = v3;
    if (v7 <= v3)
    {
      goto LABEL_99;
    }

    v10 = *(*(v2 + 40) + 4 * v3);
    v7 = v10 - v9;
    re::DynamicArray<float>::resize(v67, v7);
    if (v10 <= v9)
    {
      v6 = *&v67[16];
    }

    else
    {
      v11 = 0;
      v12 = v9;
      v13 = *(v2 + 43);
      v6 = *&v67[16];
      v14 = *&v69[2];
      v15 = v13 - v9;
      if (v13 < v9)
      {
        v15 = 0;
      }

      do
      {
        if (v15 == v11)
        {
          v65 = 0;
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          *v79 = 0u;
          v31 = MEMORY[0x1E69E9C10];
          v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v72 = 136315906;
          *&v72[4] = "operator[]";
          v73 = 1024;
          if (v32)
          {
            v33 = 3;
          }

          else
          {
            v33 = 2;
          }

          v74 = 797;
          v75 = 2048;
          v76 = v12;
          v77 = 2048;
          v78 = v13;
          _os_log_send_and_compose_impl(v33, &v65, v79, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v72, 38);
          _os_crash_msg();
          __break(1u);
LABEL_71:
          v65 = 0;
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          *v79 = 0u;
          v34 = MEMORY[0x1E69E9C10];
          v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v72 = 136315906;
          *&v72[4] = "operator[]";
          v73 = 1024;
          if (v35)
          {
            v36 = 3;
          }

          else
          {
            v36 = 2;
          }

          v74 = 789;
          v75 = 2048;
          v76 = v6;
          v77 = 2048;
          v78 = v6;
          _os_log_send_and_compose_impl(v36, &v65, v79, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v72, 38);
          _os_crash_msg();
          __break(1u);
          goto LABEL_75;
        }

        if (v6 == v11)
        {
          goto LABEL_71;
        }

        *(v14 + 4 * v11++) = *(*(v2 + 45) + 4 * v12++);
      }

      while (v7 != v11);
    }

    if (!v6)
    {
      goto LABEL_103;
    }

    v16 = v70;
    v17 = v71;
    v18 = re::internal::GeomConnectivityNonManifold::faceVertices(v2, **&v69[2], v79);
    v19 = 0;
    v7 = 0;
    v20 = v79[v18 - 1];
    while (1)
    {
      if (v18 - 1 == v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = v19 + 1;
      }

      v22 = v79[v19];
      if (v22 != v16)
      {
        goto LABEL_43;
      }

      if (v20 != v17)
      {
        break;
      }

      if (v7)
      {
        goto LABEL_45;
      }

      v7 = 1;
LABEL_43:
      ++v19;
      v20 = v22;
      if (v18 == v19)
      {
        goto LABEL_46;
      }
    }

    if (v79[v21] != v17)
    {
      goto LABEL_43;
    }

    if (!v7)
    {
      v7 = 0xFFFFFFFFLL;
      goto LABEL_43;
    }

LABEL_45:
    v7 = 0;
LABEL_46:
    v6 = *&v67[16];
    if (*&v67[16] <= 1uLL)
    {
      goto LABEL_107;
    }

    v23 = v70;
    v24 = v71;
    v25 = re::internal::GeomConnectivityNonManifold::faceVertices(v2, *(*&v69[2] + 4), v79);
    v26 = 0;
    v27 = 0;
    v28 = v79[v25 - 1];
    while (2)
    {
      if (v25 - 1 == v26)
      {
        v29 = 0;
      }

      else
      {
        v29 = v26 + 1;
      }

      v30 = v79[v26];
      if (v30 != v23)
      {
        goto LABEL_58;
      }

      if (v28 == v24)
      {
        if (v27)
        {
          goto LABEL_60;
        }

        v27 = 1;
        goto LABEL_58;
      }

      if (v79[v29] != v24)
      {
LABEL_58:
        ++v26;
        v28 = v30;
        if (v25 == v26)
        {
          goto LABEL_61;
        }

        continue;
      }

      break;
    }

    if (!v27)
    {
      v27 = -1;
      goto LABEL_58;
    }

LABEL_60:
    v27 = 0;
LABEL_61:
    this = *v67;
    if (*v67 && *&v69[2])
    {
      this = (*(**v67 + 40))();
    }

    if (((v27 * v7) & 0x80000000) == 0)
    {
LABEL_65:
      v6 = v66;
LABEL_4:
      v7 = *(v2 + 8);
      if (v7 > v6)
      {
        *(*(v2 + 10) + v6) |= 2u;
        v7 = HIDWORD(v66);
        v6 = *(v2 + 8);
        if (v6 > HIDWORD(v66))
        {
          *(*(v2 + 10) + HIDWORD(v66)) |= 2u;
          v7 = *(v2 + 8);
          if (v7 > v3)
          {
            v8 = 8;
            goto LABEL_13;
          }

LABEL_83:
          *v72 = 0;
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          *v79 = 0u;
          v42 = MEMORY[0x1E69E9C10];
          v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v67 = 136315906;
          *&v67[4] = "operator[]";
          *&v67[12] = 1024;
          if (v43)
          {
            v44 = 3;
          }

          else
          {
            v44 = 2;
          }

          *&v67[14] = 789;
          *&v67[18] = 2048;
          *&v67[20] = v3;
          v68 = 2048;
          *v69 = v7;
          _os_log_send_and_compose_impl(v44, v72, v79, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v67, 38, v65, v66);
          _os_crash_msg();
          __break(1u);
LABEL_87:
          *v72 = 0;
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          *v79 = 0u;
          v45 = MEMORY[0x1E69E9C10];
          v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v67 = 136315906;
          *&v67[4] = "operator[]";
          *&v67[12] = 1024;
          if (v46)
          {
            v47 = 3;
          }

          else
          {
            v47 = 2;
          }

          *&v67[14] = 789;
          *&v67[18] = 2048;
          *&v67[20] = v6;
          v68 = 2048;
          *v69 = v7;
          _os_log_send_and_compose_impl(v47, v72, v79, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v67, 38, v65, v66);
          _os_crash_msg();
          __break(1u);
LABEL_91:
          *v72 = 0;
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          *v79 = 0u;
          v3 = MEMORY[0x1E69E9C10];
          v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v67 = 136315906;
          *&v67[4] = "operator[]";
          *&v67[12] = 1024;
          if (v48)
          {
            v49 = 3;
          }

          else
          {
            v49 = 2;
          }

          *&v67[14] = 789;
          *&v67[18] = 2048;
          *&v67[20] = v7;
          v68 = 2048;
          *v69 = v6;
          _os_log_send_and_compose_impl(v49, v72, v79, 80, &dword_1E1C61000, v3, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v67, 38, v65, v66);
          _os_crash_msg();
          __break(1u);
LABEL_95:
          *v72 = 0;
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          *v79 = 0u;
          v50 = MEMORY[0x1E69E9C10];
          v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v67 = 136315906;
          *&v67[4] = "operator[]";
          *&v67[12] = 1024;
          if (v51)
          {
            v52 = 3;
          }

          else
          {
            v52 = 2;
          }

          *&v67[14] = 789;
          *&v67[18] = 2048;
          *&v67[20] = v3;
          v68 = 2048;
          *v69 = v7;
          _os_log_send_and_compose_impl(v52, v72, v79, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v67, 38, v65, v66);
          _os_crash_msg();
          __break(1u);
LABEL_99:
          v65 = 0;
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          *v79 = 0u;
          v53 = MEMORY[0x1E69E9C10];
          v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v72 = 136315906;
          *&v72[4] = "operator[]";
          v73 = 1024;
          if (v54)
          {
            v55 = 3;
          }

          else
          {
            v55 = 2;
          }

          v74 = 797;
          v75 = 2048;
          v76 = v6;
          v77 = 2048;
          v78 = v7;
          _os_log_send_and_compose_impl(v55, &v65, v79, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v72, 38);
          _os_crash_msg();
          __break(1u);
LABEL_103:
          v65 = 0;
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          *v79 = 0u;
          v56 = MEMORY[0x1E69E9C10];
          v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v72 = 136315906;
          *&v72[4] = "operator[]";
          v73 = 1024;
          if (v57)
          {
            v58 = 3;
          }

          else
          {
            v58 = 2;
          }

          v74 = 789;
          v75 = 2048;
          v76 = 0;
          v77 = 2048;
          v78 = 0;
          _os_log_send_and_compose_impl(v58, &v65, v79, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v72, 38);
          _os_crash_msg();
          __break(1u);
LABEL_107:
          v65 = 0;
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          *v79 = 0u;
          v59 = MEMORY[0x1E69E9C10];
          v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v72 = 136315906;
          *&v72[4] = "operator[]";
          v73 = 1024;
          if (v60)
          {
            v61 = 3;
          }

          else
          {
            v61 = 2;
          }

          v74 = 789;
          v75 = 2048;
          v76 = 1;
          v77 = 2048;
          v78 = v6;
          _os_log_send_and_compose_impl(v61, &v65, v79, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v72, 38);
          _os_crash_msg();
          __break(1u);
LABEL_111:
          v65 = 0;
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          *v79 = 0u;
          v62 = MEMORY[0x1E69E9C10];
          v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v72 = 136315906;
          *&v72[4] = "operator[]";
          v73 = 1024;
          if (v63)
          {
            v64 = 3;
          }

          else
          {
            v64 = 2;
          }

          v74 = 797;
          v75 = 2048;
          v76 = v6;
          v77 = 2048;
          v78 = v7;
          _os_log_send_and_compose_impl(v64, &v65, v79, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v72, 38);
          _os_crash_msg();
          __break(1u);
        }

LABEL_79:
        *v72 = 0;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        *v79 = 0u;
        v3 = MEMORY[0x1E69E9C10];
        v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v67 = 136315906;
        *&v67[4] = "operator[]";
        *&v67[12] = 1024;
        if (v40)
        {
          v41 = 3;
        }

        else
        {
          v41 = 2;
        }

        *&v67[14] = 789;
        *&v67[18] = 2048;
        *&v67[20] = v7;
        v68 = 2048;
        *v69 = v6;
        _os_log_send_and_compose_impl(v41, v72, v79, 80, &dword_1E1C61000, v3, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v67, 38, v65, v66);
        _os_crash_msg();
        __break(1u);
        goto LABEL_83;
      }

LABEL_75:
      *v72 = 0;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      *v79 = 0u;
      v37 = MEMORY[0x1E69E9C10];
      v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v67 = 136315906;
      *&v67[4] = "operator[]";
      *&v67[12] = 1024;
      if (v38)
      {
        v39 = 3;
      }

      else
      {
        v39 = 2;
      }

      *&v67[14] = 789;
      *&v67[18] = 2048;
      *&v67[20] = v6;
      v68 = 2048;
      *v69 = v7;
      _os_log_send_and_compose_impl(v39, v72, v79, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v67, 38, v65, v66);
      _os_crash_msg();
      __break(1u);
      goto LABEL_79;
    }

LABEL_14:
    ++v3;
  }

  while (v3 != v4);
  return this;
}

re::internal::GeomConnectivityNonManifold *re::internal::GeomConnectivityNonManifold::fetchReachableFacesFromFaceVertex(re::internal::GeomConnectivityNonManifold *result, unsigned int a2, uint64_t a3, _anonymous_namespace_ *a4)
{
  v7 = result;
  v46 = *MEMORY[0x1E69E9840];
  v29 = a2;
  v8 = *(a4 + 2);
  if (v8)
  {
    v9 = 4 * v8;
    v10 = *(a4 + 4);
    while (*v10 != a2)
    {
      ++v10;
      v9 -= 4;
      if (!v9)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    v10 = *(a4 + 4);
  }

  if (v10 == (*(a4 + 4) + 4 * v8))
  {
LABEL_8:
    re::DynamicArray<int>::add(a4, &v29);
    result = re::internal::GeomConnectivityNonManifold::faceIncidentEdges(v7, v29, v32);
    if (result)
    {
      v11 = 0;
      v12 = result;
      while (1)
      {
        v13 = v32[v11];
        v14 = *(v7 + 8);
        if (v14 <= v13)
        {
          goto LABEL_33;
        }

        if ((*(*(v7 + 10) + v13) & 8) == 0)
        {
          result = re::internal::GeomConnectivityNonManifold::edgeVertices(v7, v32[v11], v31);
          if (v31[0] == a3 || v31[1] == a3)
          {
            v14 = *(v7 + 38);
            if (v13)
            {
              v4 = (v13 - 1);
              if (v14 <= v4)
              {
                goto LABEL_41;
              }

              v4 = *(*(v7 + 40) + 4 * v4);
            }

            else
            {
              v4 = 0;
            }

            if (v14 <= v13)
            {
              goto LABEL_37;
            }

            v14 = *(*(v7 + 40) + 4 * v13);
            if (v4 < v14)
            {
              break;
            }
          }
        }

LABEL_27:
        if (++v11 == v12)
        {
          return result;
        }
      }

      while (1)
      {
        v13 = *(v7 + 43);
        if (v13 <= v4)
        {
          break;
        }

        v16 = *(*(v7 + 45) + 4 * v4);
        if (v16 != v29)
        {
          result = re::internal::GeomConnectivityNonManifold::fetchReachableFacesFromFaceVertex(v7, v16, a3, a4);
        }

        if (v14 == ++v4)
        {
          goto LABEL_27;
        }
      }

      v30 = 0;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v41 = 0u;
      v17 = MEMORY[0x1E69E9C10];
      v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v33 = 136315906;
      v34 = "operator[]";
      v35 = 1024;
      if (v18)
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      v36 = 797;
      v37 = 2048;
      v38 = v4;
      v39 = 2048;
      v40 = v13;
      _os_log_send_and_compose_impl(v19, &v30, &v41, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38);
      _os_crash_msg();
      __break(1u);
LABEL_33:
      v30 = 0;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v41 = 0u;
      v20 = MEMORY[0x1E69E9C10];
      v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v33 = 136315906;
      v34 = "operator[]";
      v35 = 1024;
      if (v21)
      {
        v22 = 3;
      }

      else
      {
        v22 = 2;
      }

      v36 = 797;
      v37 = 2048;
      v38 = v13;
      v39 = 2048;
      v40 = v14;
      _os_log_send_and_compose_impl(v22, &v30, &v41, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38);
      _os_crash_msg();
      __break(1u);
LABEL_37:
      v30 = 0;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v41 = 0u;
      v23 = MEMORY[0x1E69E9C10];
      v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v33 = 136315906;
      v34 = "operator[]";
      v35 = 1024;
      if (v24)
      {
        v25 = 3;
      }

      else
      {
        v25 = 2;
      }

      v36 = 797;
      v37 = 2048;
      v38 = v13;
      v39 = 2048;
      v40 = v14;
      _os_log_send_and_compose_impl(v25, &v30, &v41, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38);
      _os_crash_msg();
      __break(1u);
LABEL_41:
      v30 = 0;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v41 = 0u;
      v26 = MEMORY[0x1E69E9C10];
      v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v33 = 136315906;
      v34 = "operator[]";
      v35 = 1024;
      if (v27)
      {
        v28 = 3;
      }

      else
      {
        v28 = 2;
      }

      v36 = 797;
      v37 = 2048;
      v38 = v4;
      v39 = 2048;
      v40 = v14;
      _os_log_send_and_compose_impl(v28, &v30, &v41, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38);
      _os_crash_msg();
      __break(1u);
    }
  }

  return result;
}

unsigned int *re::internal::GeomConnectivityNonManifold::classifyVertices(unsigned int *this)
{
  v51 = *MEMORY[0x1E69E9840];
  v1 = this[26];
  if (this[26])
  {
    v2 = this;
    v3 = 0;
    do
    {
      if (v3)
      {
        v4 = (v3 - 1);
        v5 = *(v2 + 13);
        if (v5 <= v4)
        {
          goto LABEL_42;
        }

        v6 = *(*(v2 + 15) + 4 * v4);
      }

      else
      {
        v6 = 0;
        v5 = *(v2 + 13);
      }

      v4 = v3;
      if (v5 <= v3)
      {
        *v39 = 0;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        v46 = 0u;
        v47 = 0u;
        v11 = MEMORY[0x1E69E9C10];
        *v36 = 136315906;
        *&v36[4] = "operator[]";
        *&v36[12] = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v12 = 3;
        }

        else
        {
          v12 = 2;
        }

        *&v36[14] = 797;
        *&v36[18] = 2048;
        *&v36[20] = v3;
        v37 = 2048;
        *v38 = v5;
        _os_log_send_and_compose_impl(v12, v39, &v46, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v36, 38, v34, v35);
        _os_crash_msg();
        __break(1u);
LABEL_34:
        v35 = 0;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        v46 = 0u;
        v47 = 0u;
        v13 = MEMORY[0x1E69E9C10];
        v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v39 = 136315906;
        *&v39[4] = "operator[]";
        v40 = 1024;
        if (v14)
        {
          v15 = 3;
        }

        else
        {
          v15 = 2;
        }

        v41 = 797;
        v42 = 2048;
        v43 = v3;
        v44 = 2048;
        v45 = v5;
        _os_log_send_and_compose_impl(v15, &v35, &v46, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v39, 38, v34);
        _os_crash_msg();
        __break(1u);
LABEL_38:
        *v39 = 0;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        v46 = 0u;
        v47 = 0u;
        v16 = MEMORY[0x1E69E9C10];
        v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v36 = 136315906;
        *&v36[4] = "operator[]";
        *&v36[12] = 1024;
        if (v17)
        {
          v18 = 3;
        }

        else
        {
          v18 = 2;
        }

        *&v36[14] = 789;
        *&v36[18] = 2048;
        *&v36[20] = v3;
        v37 = 2048;
        *v38 = v5;
        _os_log_send_and_compose_impl(v18, v39, &v46, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v36, 38, v34, v35);
        _os_crash_msg();
        __break(1u);
LABEL_42:
        *v39 = 0;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        v46 = 0u;
        v47 = 0u;
        v19 = MEMORY[0x1E69E9C10];
        v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v36 = 136315906;
        *&v36[4] = "operator[]";
        *&v36[12] = 1024;
        if (v20)
        {
          v21 = 3;
        }

        else
        {
          v21 = 2;
        }

        *&v36[14] = 797;
        *&v36[18] = 2048;
        *&v36[20] = v4;
        v37 = 2048;
        *v38 = v5;
        _os_log_send_and_compose_impl(v21, v39, &v46, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v36, 38, v34, v35);
        _os_crash_msg();
        __break(1u);
LABEL_46:
        v35 = 0;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        v46 = 0u;
        v47 = 0u;
        v22 = MEMORY[0x1E69E9C10];
        v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v39 = 136315906;
        *&v39[4] = "operator[]";
        v40 = 1024;
        if (v23)
        {
          v24 = 3;
        }

        else
        {
          v24 = 2;
        }

        v41 = 789;
        v42 = 2048;
        v43 = v4;
        v44 = 2048;
        v45 = v5;
        _os_log_send_and_compose_impl(v24, &v35, &v46, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v39, 38, v34);
        _os_crash_msg();
        __break(1u);
LABEL_50:
        v35 = 0;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        v46 = 0u;
        v47 = 0u;
        v25 = MEMORY[0x1E69E9C10];
        v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v39 = 136315906;
        *&v39[4] = "operator[]";
        v40 = 1024;
        if (v26)
        {
          v27 = 3;
        }

        else
        {
          v27 = 2;
        }

        v41 = 789;
        v42 = 2048;
        v43 = v5;
        v44 = 2048;
        v45 = v4;
        _os_log_send_and_compose_impl(v27, &v35, &v46, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v39, 38, v34);
        _os_crash_msg();
        __break(1u);
LABEL_54:
        v35 = 0;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        v46 = 0u;
        v47 = 0u;
        v28 = MEMORY[0x1E69E9C10];
        v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v39 = 136315906;
        *&v39[4] = "operator[]";
        v40 = 1024;
        if (v29)
        {
          v30 = 3;
        }

        else
        {
          v30 = 2;
        }

        v41 = 789;
        v42 = 2048;
        v43 = v3;
        v44 = 2048;
        v45 = v5;
        _os_log_send_and_compose_impl(v30, &v35, &v46, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v39, 38, v34);
        _os_crash_msg();
        __break(1u);
LABEL_58:
        v35 = 0;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        v46 = 0u;
        v47 = 0u;
        v31 = MEMORY[0x1E69E9C10];
        v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v39 = 136315906;
        *&v39[4] = "operator[]";
        v40 = 1024;
        if (v32)
        {
          v33 = 3;
        }

        else
        {
          v33 = 2;
        }

        v41 = 789;
        v42 = 2048;
        v43 = 0;
        v44 = 2048;
        v45 = 0;
        _os_log_send_and_compose_impl(v33, &v35, &v46, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v39, 38, v34);
        _os_crash_msg();
        __break(1u);
      }

      v7 = *(*(v2 + 15) + 4 * v3);
      if (v7 == v6 || v7 - v6 > re::internal::GeomConnectivityNonManifold::vertexFaceCount(v2, v3) + 1)
      {
        v5 = *(v2 + 8);
        if (v5 <= v3)
        {
          goto LABEL_38;
        }

        *(*(v2 + 10) + v3) |= 2u;
      }

      ++v3;
    }

    while (v1 != v3);
    v3 = 0;
    *&v38[2] = 0;
    memset(v36, 0, sizeof(v36));
    do
    {
      v5 = *(v2 + 8);
      if (v5 <= v3)
      {
        goto LABEL_34;
      }

      if ((*(*(v2 + 10) + v3) & 2) == 0)
      {
        if (v3)
        {
          v4 = v3 - 1;
          v5 = *(v2 + 18);
          if (v5 <= v3 - 1)
          {
            goto LABEL_46;
          }

          v5 = *(*(v2 + 20) + 4 * v3 - 4);
          v4 = *(v2 + 28);
          if (v4 <= v5)
          {
            goto LABEL_50;
          }

          v8 = (*(v2 + 30) + 4 * v5);
        }

        else
        {
          if (!*(v2 + 28))
          {
            goto LABEL_58;
          }

          v8 = *(v2 + 30);
        }

        v9 = *v8;
        *&v36[16] = 0;
        ++*&v36[24];
        re::internal::GeomConnectivityNonManifold::fetchReachableFacesFromFaceVertex(v2, v9, v3, v36);
        v10 = *&v36[16];
        if (v10 != re::internal::GeomConnectivityNonManifold::vertexFaceCount(v2, v3))
        {
          v5 = *(v2 + 8);
          if (v5 <= v3)
          {
            goto LABEL_54;
          }

          *(*(v2 + 10) + v3) |= 2u;
        }
      }

      ++v3;
    }

    while (v1 != v3);
    this = *v36;
    if (*v36)
    {
      if (*&v38[2])
      {
        return (*(**v36 + 40))();
      }
    }
  }

  return this;
}

uint64_t re::internal::GeomConnectivityNonManifold::classifyFaces(re::internal::GeomConnectivityNonManifold *this)
{
  v69 = *MEMORY[0x1E69E9840];
  v5 = *(this + 26);
  v53 = 0;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  v52 = 0;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v7 = *(this + 8);
      if (v7 <= i)
      {
        goto LABEL_57;
      }

      if (*(*(this + 10) + i))
      {
        v7 = *(this + 18);
        if (i)
        {
          v1 = i - 1;
          if (v7 <= i - 1)
          {
            goto LABEL_65;
          }

          v8 = *(*(this + 20) + 4 * v1);
        }

        else
        {
          v8 = 0;
        }

        if (v7 <= i)
        {
          goto LABEL_61;
        }

        v1 = *(*(this + 20) + 4 * i);
        v7 = v1 - v8;
        re::DynamicArray<float>::resize(&v49, v7);
        if (v1 > v8)
        {
          v9 = 0;
          v2 = v8;
          v1 = *(this + 28);
          v3 = v51;
          v10 = v53;
          v11 = v1 - v8;
          if (v1 < v8)
          {
            v11 = 0;
          }

          while (1)
          {
            if (v11 == v9)
            {
              goto LABEL_49;
            }

            if (v3 == v9)
            {
              break;
            }

            *(v10 + 4 * v9) = *(*(this + 30) + 4 * v2++);
            if (v7 == ++v9)
            {
              goto LABEL_16;
            }
          }

LABEL_53:
          *v55 = 0;
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v64 = 0u;
          v37 = MEMORY[0x1E69E9C10];
          v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v56 = 136315906;
          v57 = "operator[]";
          v58 = 1024;
          if (v38)
          {
            v39 = 3;
          }

          else
          {
            v39 = 2;
          }

          v59 = 789;
          v60 = 2048;
          v61 = v3;
          v62 = 2048;
          v63 = v3;
          _os_log_send_and_compose_impl(v39, v55, &v64, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v56, 38, v49, v50);
          _os_crash_msg();
          __break(1u);
LABEL_57:
          *v55 = 0;
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v64 = 0u;
          v40 = MEMORY[0x1E69E9C10];
          v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v56 = 136315906;
          v57 = "operator[]";
          v58 = 1024;
          if (v41)
          {
            v42 = 3;
          }

          else
          {
            v42 = 2;
          }

          v59 = 797;
          v60 = 2048;
          v61 = i;
          v62 = 2048;
          v63 = v7;
          _os_log_send_and_compose_impl(v42, v55, &v64, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v56, 38, v49, v50);
          _os_crash_msg();
          __break(1u);
LABEL_61:
          *v55 = 0;
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v64 = 0u;
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

          v59 = 797;
          v60 = 2048;
          v61 = i;
          v62 = 2048;
          v63 = v7;
          _os_log_send_and_compose_impl(v45, v55, &v64, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v56, 38, v49, v50);
          _os_crash_msg();
          __break(1u);
LABEL_65:
          *v55 = 0;
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v64 = 0u;
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

          v59 = 797;
          v60 = 2048;
          v61 = v1;
          v62 = 2048;
          v63 = v7;
          _os_log_send_and_compose_impl(v48, v55, &v64, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v56, 38, v49, v50);
          _os_crash_msg();
          __break(1u);
        }

LABEL_16:
        if (v51)
        {
          v12 = 0;
          v13 = 1;
          do
          {
            v7 = *(v53 + 4 * v12);
            v1 = *(this + 8);
            if (v1 <= v7)
            {
              goto LABEL_45;
            }

            *(*(this + 10) + v7) |= 0x10u;
            v12 = v13;
          }

          while (v51 > v13++);
        }
      }
    }
  }

  v15 = *(this + 48);
  if ((v15 & 0x3FFFFFFFCLL) != 0)
  {
    v7 = 0;
    i = (v15 >> 2);
    v1 = &v55[1];
    do
    {
      v16 = re::internal::GeomConnectivityNonManifold::faceVertices(this, v7, v55);
      v17 = 0;
      v18 = &v55[1];
      v19 = v16 - 1;
      do
      {
        v20 = v17 + 1;
        if (v17 + 1 < v16)
        {
          v2 = v55[v17];
          v21 = v18;
          for (j = v19; j; --j)
          {
            v23 = *v21++;
            if (v2 == v23)
            {
              v3 = *(this + 8);
              if (v3 <= v2)
              {
                v54 = 0;
                v67 = 0u;
                v68 = 0u;
                v65 = 0u;
                v66 = 0u;
                v64 = 0u;
                v25 = MEMORY[0x1E69E9C10];
                v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v56 = 136315906;
                v57 = "operator[]";
                v58 = 1024;
                if (v26)
                {
                  v27 = 3;
                }

                else
                {
                  v27 = 2;
                }

                v59 = 789;
                v60 = 2048;
                v61 = v2;
                v62 = 2048;
                v63 = v3;
                _os_log_send_and_compose_impl(v27, &v54, &v64, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v56, 38, v49, v50);
                _os_crash_msg();
                __break(1u);
LABEL_41:
                v54 = 0;
                v67 = 0u;
                v68 = 0u;
                v65 = 0u;
                v66 = 0u;
                v64 = 0u;
                v28 = MEMORY[0x1E69E9C10];
                v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v56 = 136315906;
                v57 = "operator[]";
                v58 = 1024;
                if (v29)
                {
                  v30 = 3;
                }

                else
                {
                  v30 = 2;
                }

                v59 = 789;
                v60 = 2048;
                v61 = v7;
                v62 = 2048;
                v63 = v3;
                _os_log_send_and_compose_impl(v30, &v54, &v64, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v56, 38, v49, v50);
                _os_crash_msg();
                __break(1u);
LABEL_45:
                *v55 = 0;
                v67 = 0u;
                v68 = 0u;
                v65 = 0u;
                v66 = 0u;
                v64 = 0u;
                v31 = MEMORY[0x1E69E9C10];
                v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v56 = 136315906;
                v57 = "operator[]";
                v58 = 1024;
                if (v32)
                {
                  v33 = 3;
                }

                else
                {
                  v33 = 2;
                }

                v59 = 789;
                v60 = 2048;
                v61 = v7;
                v62 = 2048;
                v63 = v1;
                _os_log_send_and_compose_impl(v33, v55, &v64, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v56, 38, v49, v50);
                _os_crash_msg();
                __break(1u);
LABEL_49:
                *v55 = 0;
                v67 = 0u;
                v68 = 0u;
                v65 = 0u;
                v66 = 0u;
                v64 = 0u;
                v34 = MEMORY[0x1E69E9C10];
                v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v56 = 136315906;
                v57 = "operator[]";
                v58 = 1024;
                if (v35)
                {
                  v36 = 3;
                }

                else
                {
                  v36 = 2;
                }

                v59 = 797;
                v60 = 2048;
                v61 = v2;
                v62 = 2048;
                v63 = v1;
                _os_log_send_and_compose_impl(v36, v55, &v64, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v56, 38, v49, v50);
                _os_crash_msg();
                __break(1u);
                goto LABEL_53;
              }

              *(*(this + 10) + v2) |= 2u;
              v3 = *(this + 8);
              if (v3 <= v7)
              {
                goto LABEL_41;
              }

              *(*(this + 10) + v7) |= 0x20u;
            }
          }
        }

        --v19;
        ++v18;
        v17 = v20;
      }

      while (v20 != v16 - 1);
      ++v7;
    }

    while (v7 != i);
  }

  result = v49;
  if (v49)
  {
    if (v53)
    {
      return (*(*v49 + 40))();
    }
  }

  return result;
}

uint64_t re::internal::GeomConnectivityNonManifold::faceVertices(re::internal::GeomConnectivityNonManifold *this, int a2, unsigned int *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = (4 * a2);
  v5 = *(this + 48);
  if (v5 <= v4)
  {
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v25 = 797;
    v26 = 2048;
    v27 = v4;
    v28 = 2048;
    v29 = v5;
    _os_log_send_and_compose_impl(v10, &v21, &v30, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_13;
  }

  v6 = *(this + 50);
  *a3 = *(v6 + 4 * v4);
  v3 = v4 | 1;
  if (v5 <= v3)
  {
LABEL_13:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v11 = MEMORY[0x1E69E9C10];
    v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v12)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v25 = 797;
    v26 = 2048;
    v27 = v3;
    v28 = 2048;
    v29 = v5;
    _os_log_send_and_compose_impl(v13, &v21, &v30, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  a3[1] = *(v6 + 4 * v3);
  v3 = v4 | 2;
  if (v5 <= v3)
  {
LABEL_17:
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

    v25 = 797;
    v26 = 2048;
    v27 = v3;
    v28 = 2048;
    v29 = v5;
    _os_log_send_and_compose_impl(v16, &v21, &v30, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
LABEL_21:
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

    v25 = 797;
    v26 = 2048;
    v27 = v4;
    v28 = 2048;
    v29 = v5;
    _os_log_send_and_compose_impl(v19, &v21, &v30, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
  }

  a3[2] = *(v6 + 4 * v3);
  v4 = v4 | 3;
  if (v5 <= v4)
  {
    goto LABEL_21;
  }

  v7 = *(v6 + 4 * v4);
  a3[3] = v7;
  if (v7 == -1)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

uint64_t re::internal::GeomConnectivityNonManifold::build(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  re::DynamicArray<re::GeomCell4>::operator=(a2 + 8, (a1 + 8));
  if (!*(a2 + 16))
  {
    re::DynamicArray<re::BlendNode>::setCapacity((a2 + 8), 1uLL);
  }

  re::internal::GeomConnectivityNonManifold::computeIncidenceRelations(a2, a1);
  *(a2 + 64) = 0;
  ++*(a2 + 72);
  v4 = *(a2 + 264) >> 1;
  v5 = *(a2 + 104);
  if (v5 <= (*(a2 + 384) >> 2))
  {
    v5 = *(a2 + 384) >> 2;
  }

  if (v5 <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v8 = 0;
  re::DynamicArray<unsigned char>::resize((a2 + 48), v6, &v8);
  re::internal::GeomConnectivityNonManifold::classifyEdges(a2);
  re::internal::GeomConnectivityNonManifold::classifyVertices(a2);
  re::internal::GeomConnectivityNonManifold::classifyFaces(a2);
  return 1;
}

unint64_t re::HashBrown<re::internal::anonymous namespace::VertexPair,re::internal::anonymous namespace::EdgeData,re::internal::anonymous namespace::HashEdge,re::internal::anonymous namespace::HashEdge,void,false>::find(uint64_t *a1, unsigned int a2, unsigned int a3)
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
    v23 = (a1[1] + 16 * (v20 + v21));
    v25 = *v23;
    v24 = v23[1];
    if (v25 == a2 && v24 == a3)
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

unsigned int *re::HashBrown<re::internal::anonymous namespace::VertexPair,re::internal::anonymous namespace::EdgeData,re::internal::anonymous namespace::HashEdge,re::internal::anonymous namespace::HashEdge,void,false>::internalAdd(uint64_t *a1, unsigned int *a2, void *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    v7 = a1[2];
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
  v15 = *a1;
  v16 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v14)), xmmword_1E304FAD0)))), 0x3830282018100800)));
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
  v19 = v16 + 16 * v14;
  *(a1[1] + 16 * v19) = *a2;
  *(a1[1] + 16 * v19 + 8) = *a3;
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
  *(a1 + 3) = vaddq_s64(*(a1 + 3), v21);
  v22 = (a1[1] + 16 * v19);
  v23 = 0xBF58476D1CE4E5B9 * (*v22 ^ (*v22 >> 30));
  v24 = (0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) ^ ((0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) >> 31);
  v25 = v22[1] ^ (v22[1] >> 30);
  v26 = (0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v25) ^ ((0xBF58476D1CE4E5B9 * v25) >> 27))) ^ ((0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v25) ^ ((0xBF58476D1CE4E5B9 * v25) >> 27))) >> 31);
  if (v24 == v26)
  {
    v26 = 0;
  }

  a1[5] ^= v24 ^ v26;
  return v22 + 2;
}

uint64_t re::HashBrown<re::internal::anonymous namespace::VertexPair,re::internal::anonymous namespace::EdgeData,re::internal::anonymous namespace::HashEdge,re::internal::anonymous namespace::HashEdge,void,false>::resize(__int128 *a1)
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
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(&v25, v7, v8);
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

re *re::GeomMesh::freeName(re *this)
{
  v1 = *this;
  if (*this)
  {
    v2 = this;
    v3 = re::globalAllocators(this);
    this = (*(*v3[2] + 40))(v3[2], v1);
    *v2 = 0;
  }

  return this;
}

re *re::GeomMesh::setName(re *this, const char *a2)
{
  if (*this != a2)
  {
    v3 = this;
    this = re::GeomMesh::freeName(this);
    if (a2)
    {
      v4 = strlen(a2);
      v5 = re::globalAllocators(v4);
      v6 = (*(*v5[2] + 32))(v5[2], v4 + 1, 0);
      *v3 = v6;

      return strcpy(v6, a2);
    }

    else
    {
      *v3 = 0;
    }
  }

  return this;
}

re::GeomMesh *re::GeomMesh::GeomMesh(re::GeomMesh *this, const char *a2)
{
  *this = 0;
  *(this + 2) = 0;
  bzero(this + 16, 0x2C8uLL);
  re::internal::GeomBaseMesh::GeomBaseMesh((this + 16));
  re::GeomMesh::setName(this, a2);
  *(this + 91) = re::internal::GeomAttributeManager::addAttribute((this + 64), "vertexPosition", 1, 7);
  return this;
}

void re::GeomMesh::copy(int8x16_t **this, int8x16_t **a2)
{
  if (this != a2)
  {
    re::GeomMesh::clear(a2);
    re::GeomMesh::setName(a2, (*this)->i8);
    *(a2 + 4) = *(this + 4);
    re::DynamicArray<re::GeomCell4>::operator=((a2 + 3), this + 3);
    if (!a2[4])
    {
      re::DynamicArray<re::BlendNode>::setCapacity(a2 + 3, 1uLL);
    }

    re::internal::GeomAttributeManager::copy((this + 8), (a2 + 8));
    *(a2 + 2) = *(this + 2);
    v4 = this[91];
    if (v4)
    {
      a2[91] = re::internal::GeomAttributeManager::attributeByName((a2 + 8), v4->i64[1]);
    }
  }
}

int8x16_t *re::GeomMesh::clear(int8x16_t **this)
{
  re::GeomMesh::freeName(this);
  this[91] = 0;
  *(this + 4) = 0;
  this[5] = 0;
  ++*(this + 12);
  re::internal::GeomAttributeManager::clear(this + 8, v2);
  result = re::internal::GeomAttributeManager::addAttribute((this + 8), "vertexPosition", 1, 7);
  this[91] = result;
  return result;
}

void re::GeomMesh::~GeomMesh(int8x16_t **this)
{
  re::GeomMesh::freeName(this);
  this[91] = 0;
  *(this + 4) = 0;
  this[5] = 0;
  ++*(this + 12);
  re::internal::GeomAttributeManager::clear(this + 8, v2);
  re::internal::GeomAttributeManager::~GeomAttributeManager((this + 8));
  re::DynamicArray<unsigned long>::deinit((this + 3));
}

re::GeomAttribute *re::GeomMesh::addAttribute(uint64_t a1, char *a2, int a3, uint64_t a4)
{
  if (a3 == 3)
  {
    return 0;
  }

  v4 = re::internal::GeomAttributeManager::addAttribute((a1 + 64), a2, a3, a4);
  if (v4 && !strcmp(a2, "vertexPosition"))
  {
    *(a1 + 728) = v4;
  }

  return v4;
}

re::GeomAttribute *re::GeomMesh::addFaceVaryingAttribute(uint64_t a1, const char *a2, uint64_t a3, int a4, uint64_t *a5)
{
  v10 = a4;
  re::DynamicArray<re::GeomCell4>::DynamicArray(v11, a5);
  if (!v11[1])
  {
    re::DynamicArray<re::BlendNode>::setCapacity(v11, 1uLL);
  }

  v8 = re::internal::GeomBaseMesh::addFaceVaryingAttribute(a1 + 16, a2, a3, &v10);
  if (v11[0] && v11[4])
  {
    (*(*v11[0] + 40))(v11[0]);
  }

  return v8;
}

re::GeomAttribute *re::GeomMesh::addFaceVaryingAttribute(uint64_t a1, const char *a2, uint64_t a3, int a4, uint64_t *a5, uint64_t *a6)
{
  v13 = a4;
  re::DynamicArray<re::GeomCell4>::DynamicArray(v14, a5);
  if (!v14[1])
  {
    re::DynamicArray<re::BlendNode>::setCapacity(v14, 1uLL);
  }

  re::DynamicArray<float>::DynamicArray(v12, a6);
  v10 = re::internal::GeomBaseMesh::addFaceVaryingAttribute((a1 + 16), a2, a3, &v13, v12);
  if (v12[0] && v12[4])
  {
    (*(*v12[0] + 40))();
  }

  if (v14[0] && v14[4])
  {
    (*(*v14[0] + 40))();
  }

  return v10;
}

re::GeomAttribute *re::internal::GeomBaseMesh::replaceVertexAttributeWithFaceVaryingAttribute(re::internal::GeomBaseMesh *this, char *a2)
{
  v53[11] = *MEMORY[0x1E69E9840];
  v4 = *(this + 6);
  v36 = *this;
  re::DynamicArray<re::GeomCell4>::DynamicArray(&v37, this + 1);
  if (!v38)
  {
    re::DynamicArray<re::BlendNode>::setCapacity(&v37, 1uLL);
  }

  v35 = 0;
  v32[1] = 0;
  v33 = 0;
  v31 = 0;
  v32[0] = 0;
  v34 = 0;
  v28[1] = 0;
  v29 = 0;
  v28[0] = 0;
  v30 = 0;
  re::DynamicArray<unsigned int>::resize(v32, v4, &re::kInvalidMeshIndex);
  re::DynamicArray<unsigned int>::resize(v28, v4, &re::kInvalidMeshIndex);
  if (v4)
  {
    v5 = 0;
    v6 = v29;
    v7 = v31;
    v8 = v33;
    v9 = v35;
    do
    {
      if (v6 == v5)
      {
        v24 = 0;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        v16 = MEMORY[0x1E69E9C10];
        v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v41 = 136315906;
        v42 = "operator[]";
        v43 = 1024;
        if (v17)
        {
          v18 = 3;
        }

        else
        {
          v18 = 2;
        }

        *v44 = 789;
        *&v44[4] = 2048;
        *&v44[6] = v6;
        v45 = 2048;
        v46 = v6;
        _os_log_send_and_compose_impl(v18, &v24, &v48, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v41, 38, v22, v23);
        _os_crash_msg();
        __break(1u);
LABEL_36:
        v24 = 0;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        v19 = MEMORY[0x1E69E9C10];
        v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v41 = 136315906;
        v42 = "operator[]";
        v43 = 1024;
        if (v20)
        {
          v21 = 3;
        }

        else
        {
          v21 = 2;
        }

        *v44 = 789;
        *&v44[4] = 2048;
        *&v44[6] = v8;
        v45 = 2048;
        v46 = v8;
        _os_log_send_and_compose_impl(v21, &v24, &v48, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v41, 38, v22, v23);
        _os_crash_msg();
        __break(1u);
      }

      *(v7 + 4 * v5) = v5;
      if (v8 == v5)
      {
        goto LABEL_36;
      }

      *(v9 + 4 * v5) = v5;
      ++v5;
    }

    while (v4 != v5);
  }

  re::GeomIndexMap::GeomIndexMap(&v41, v32);
  re::GeomIndexMap::GeomIndexMap(&v24, v28);
  LODWORD(v48) = v36;
  *(&v48 + 1) = v37;
  v10 = v38;
  v37 = 0;
  v38 = 0uLL;
  v49 = v10;
  *(&v50 + 1) = v40;
  v40 = 0;
  LODWORD(v50) = 1;
  v36 = 0;
  v39 += 2;
  re::GeomIndexMap::GeomIndexMap(&v51, &v41);
  re::GeomIndexMap::GeomIndexMap(v53, &v24);
  if (v25)
  {
    if (v25 == 2)
    {
      v12.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v26);
    }

    else
    {
      if (v25 != 1)
      {
        re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
        _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
        __break(1u);
        goto LABEL_41;
      }

      if (v26[0])
      {
        v11 = v27;
        if (v27)
        {
          (*(*v26[0] + 40))();
        }
      }
    }
  }

  if (v43)
  {
    if (v43 != 2)
    {
      if (v43 == 1)
      {
        if (*&v44[2] && v47)
        {
          (*(**&v44[2] + 40))(v12);
        }

        goto LABEL_22;
      }

LABEL_41:
      re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
      result = _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
      __break(1u);
      return result;
    }

    re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v44[2]);
  }

LABEL_22:
  v13 = re::internal::GeomAttributeManager::replaceVertexWithFaceVaryingAttribute(this + 6, a2, &v48);
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh(&v48, v14);
  if (v28[0] && v31)
  {
    (*(*v28[0] + 40))();
  }

  if (v32[0] && v35)
  {
    (*(*v32[0] + 40))();
  }

  if (v37)
  {
    if (v40)
    {
      (*(*v37 + 40))();
    }
  }

  return v13;
}

re::GeomAttribute *re::internal::GeomBaseMesh::replaceFaceAttributeWithFaceVaryingAttribute(re::internal::GeomBaseMesh *this, char *a2)
{
  v65[11] = *MEMORY[0x1E69E9840];
  v5 = *(this + 3);
  v6 = v5;
  v52 = 0;
  v50 = 0uLL;
  v51 = 0;
  re::DynamicArray<re::BlendNode>::setCapacity(&v49, 1uLL);
  v47 = 0;
  v44[1] = 0;
  v45 = 0;
  v43 = 0;
  v44[0] = 0;
  v46 = 0;
  v40[1] = 0;
  v41 = 0;
  v40[0] = 0;
  v42 = 0;
  ++v51;
  v48 = v5;
  re::DynamicArray<re::GeomCell4>::resize(&v49, v5);
  re::DynamicArray<unsigned int>::resize(v44, v5, &re::kInvalidMeshIndex);
  re::DynamicArray<unsigned int>::resize(v40, v5, &re::kInvalidMeshIndex);
  if (v5)
  {
    v7 = 0;
    v8 = v41;
    v9 = v43;
    v10 = v45;
    v11 = v47;
    v12 = 3;
    v13 = *(&v50 + 1);
    v14 = v52;
    do
    {
      if (v8 == v7)
      {
        v36 = 0;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v60 = 0u;
        v22 = MEMORY[0x1E69E9C10];
        v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v53 = 136315906;
        v54 = "operator[]";
        v55 = 1024;
        if (v23)
        {
          v24 = 3;
        }

        else
        {
          v24 = 2;
        }

        *v56 = 789;
        *&v56[4] = 2048;
        *&v56[6] = v8;
        v57 = 2048;
        v58 = v8;
        _os_log_send_and_compose_impl(v24, &v36, &v60, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v53, 38, v34, v35);
        _os_crash_msg();
        __break(1u);
LABEL_39:
        v36 = 0;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v60 = 0u;
        v25 = MEMORY[0x1E69E9C10];
        v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v53 = 136315906;
        v54 = "operator[]";
        v55 = 1024;
        if (v26)
        {
          v27 = 3;
        }

        else
        {
          v27 = 2;
        }

        *v56 = 789;
        *&v56[4] = 2048;
        *&v56[6] = v10;
        v57 = 2048;
        v58 = v10;
        _os_log_send_and_compose_impl(v27, &v36, &v60, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v53, 38, v34, v35);
        _os_crash_msg();
        __break(1u);
LABEL_43:
        v36 = 0;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v60 = 0u;
        v28 = MEMORY[0x1E69E9C10];
        v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v53 = 136315906;
        v54 = "operator[]";
        v55 = 1024;
        if (v29)
        {
          v30 = 3;
        }

        else
        {
          v30 = 2;
        }

        *v56 = 797;
        *&v56[4] = 2048;
        *&v56[6] = v7;
        v57 = 2048;
        v58 = v2;
        _os_log_send_and_compose_impl(v30, &v36, &v60, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v53, 38, v34, v35);
        _os_crash_msg();
        __break(1u);
LABEL_47:
        v36 = 0;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v60 = 0u;
        v31 = MEMORY[0x1E69E9C10];
        v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v53 = 136315906;
        v54 = "operator[]";
        v55 = 1024;
        if (v32)
        {
          v33 = 3;
        }

        else
        {
          v33 = 2;
        }

        *v56 = 789;
        *&v56[4] = 2048;
        *&v56[6] = v13;
        v57 = 2048;
        v58 = v13;
        _os_log_send_and_compose_impl(v33, &v36, &v60, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v53, 38, v34, v35);
        _os_crash_msg();
        __break(1u);
      }

      *(v9 + 4 * v7) = v7;
      if (v10 == v7)
      {
        goto LABEL_39;
      }

      *(v11 + 4 * v7) = v7;
      v2 = *(this + 3);
      if (v2 <= v7)
      {
        goto LABEL_43;
      }

      if (v13 == v7)
      {
        goto LABEL_47;
      }

      if (*(*(this + 5) + 4 * v12) == -1)
      {
        v15 = -1;
      }

      else
      {
        v15 = v7;
      }

      *v14 = v7;
      v14[1] = v7;
      v14[2] = v7;
      v14[3] = v15;
      ++v7;
      v12 += 4;
      v14 += 4;
    }

    while (v6 != v7);
  }

  re::GeomIndexMap::GeomIndexMap(&v53, v44);
  re::GeomIndexMap::GeomIndexMap(&v36, v40);
  LODWORD(v60) = v48;
  *(&v60 + 1) = v49;
  v16 = v50;
  v49 = 0;
  v50 = 0uLL;
  v61 = v16;
  *(&v62 + 1) = v52;
  v52 = 0;
  LODWORD(v62) = 1;
  v48 = 0;
  v51 += 2;
  re::GeomIndexMap::GeomIndexMap(&v63, &v53);
  re::GeomIndexMap::GeomIndexMap(v65, &v36);
  if (v37)
  {
    if (v37 == 2)
    {
      v18.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v38);
    }

    else
    {
      if (v37 != 1)
      {
        re::internal::assertLog(4, v17, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
        _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
        __break(1u);
        goto LABEL_52;
      }

      if (v38[0])
      {
        v17 = v39;
        if (v39)
        {
          (*(*v38[0] + 40))();
        }
      }
    }
  }

  if (v55)
  {
    if (v55 != 2)
    {
      if (v55 == 1)
      {
        if (*&v56[2] && v59)
        {
          (*(**&v56[2] + 40))(v18);
        }

        goto LABEL_25;
      }

LABEL_52:
      re::internal::assertLog(4, v17, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
      result = _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
      __break(1u);
      return result;
    }

    re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v56[2]);
  }

LABEL_25:
  v19 = re::internal::GeomAttributeManager::replaceFaceWithFaceVaryingAttribute(this + 6, a2, &v60);
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh(&v60, v20);
  if (v40[0] && v43)
  {
    (*(*v40[0] + 40))();
  }

  if (v44[0] && v47)
  {
    (*(*v44[0] + 40))();
  }

  if (v49)
  {
    if (v52)
    {
      (*(*v49 + 40))();
    }
  }

  return v19;
}

uint64_t re::GeomMesh::accessVertexPositions(re::GeomMesh *this)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = *(this + 91);
  if (!v1)
  {
    return 0;
  }

  if (!(*(*v1 + 16))(*(this + 91)))
  {
    return 0;
  }

  if (!v1[5])
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

    v11 = 797;
    v12 = 2048;
    v13 = 0;
    v14 = 2048;
    v15 = 0;
    _os_log_send_and_compose_impl(v5, &v7, v16, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v8, 38, v6);
    _os_crash_msg();
    __break(1u);
  }

  v2 = v1[7];
  (*(*v1 + 16))(v1);
  return v2;
}

uint64_t re::GeomMesh::modifyVertexPositions(re::GeomMesh *this)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = *(this + 91);
  if (!v1)
  {
    return 0;
  }

  if (!(*(*v1 + 16))(*(this + 91)))
  {
    return 0;
  }

  if (!v1[5])
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

  v2 = v1[7];
  (*(*v1 + 16))(v1);
  return v2;
}

uint64_t re::GeomMesh::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if ((v4 == 0) != (v5 == 0) || v4 && strcmp(v4, v5) || *(a1 + 16) != *(a2 + 16) || !re::DynamicArray<re::GeomCell4>::operator==(a1 + 24, a2 + 24) || !re::internal::GeomAttributeContainer::operator==((a1 + 64), a2 + 64) || !re::internal::GeomAttributeContainer::operator==((a1 + 288), a2 + 288) || !re::internal::GeomAttributeContainer::operator==((a1 + 400), a2 + 400) || !re::internal::GeomAttributeContainer::operator==((a1 + 176), a2 + 176))
  {
    return 0;
  }

  return re::internal::GeomAttributeContainer::operator==((a1 + 512), a2 + 512);
}

uint64_t re::GeomMesh::GeomMesh(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  re::internal::GeomBaseMesh::GeomBaseMesh(a1 + 16, a2 + 16);
  *(a1 + 728) = 0;
  *(a1 + 728) = re::internal::GeomAttributeManager::attributeByName((a1 + 64), "vertexPosition");
  *a2 = 0;
  *(a2 + 728) = re::internal::GeomAttributeManager::addAttribute((a2 + 64), "vertexPosition", 1, 7);
  return a1;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  re::internal::GeomBaseMesh::GeomBaseMesh(a1 + 16, a2);
  *(a1 + 728) = 0;
  *(a1 + 728) = re::internal::GeomAttributeManager::attributeByName((a1 + 64), "vertexPosition");
  *(a1 + 8) = re::internal::GeomBaseMesh::calculateTriangleCount(a1 + 16);
  return a1;
}

uint64_t re::internal::GeomBaseMesh::GeomBaseMesh(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 40) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v4;
  ++*(a2 + 32);
  ++*(a1 + 32);
  *a2 = 0;
  *(a2 + 24) = 0;
  ++*(a2 + 32);
  re::internal::GeomAttributeManager::GeomAttributeManager(a1 + 48, a2 + 48);
  return a1;
}

uint64_t re::internal::GeomBaseMesh::calculateTriangleCount(uint64_t this)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = *(this + 24);
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  if (v1 <= v1 - 1)
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

    v16 = 797;
    v17 = 2048;
    v18 = v1;
    v19 = 2048;
    v20 = v1;
    _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  v3 = this;
  LODWORD(this) = 0;
  v4 = *(v3 + 40);
  v5.i64[0] = -1;
  v5.i64[1] = -1;
  do
  {
    v6 = *v4++;
    v7 = vceqq_s32(v6, v5);
    v8 = vmovn_s32(vmvnq_s8(v7));
    v8.i16[3] = vmovn_s32(*&v7).i16[3];
    this = this + (vminv_u16(v8) & 1);
    --v2;
  }

  while (v2);
  return this;
}

re::GeomMesh *re::GeomMesh::operator=(re::GeomMesh *this, uint64_t a2)
{
  if (this != a2)
  {
    re::GeomMesh::freeName(this);
    *this = *a2;
    *a2 = 0;
    *(this + 2) = *(a2 + 8);
    *(this + 4) = *(a2 + 16);
    re::DynamicArray<re::GeomCell4>::operator=(this + 3, (a2 + 24));
    re::internal::GeomAttributeManager::operator=((this + 64), a2 + 64);
    *(this + 91) = re::internal::GeomAttributeManager::attributeByName((this + 64), "vertexPosition");
    re::GeomMesh::clear(a2);
  }

  return this;
}

uint64_t re::GeomMesh::operator=(uint64_t a1, uint64_t *a2)
{
  v3 = a1 + 16;
  if ((a1 + 16) != a2)
  {
    v4 = a2 + 6;
    *(a1 + 16) = *a2;
    re::DynamicArray<re::GeomCell4>::operator=((a1 + 24), a2 + 1);
    re::internal::GeomAttributeManager::operator=((a1 + 64), v4);
    *(a1 + 728) = re::internal::GeomAttributeManager::attributeByName((a1 + 64), "vertexPosition");
    *(a1 + 8) = re::internal::GeomBaseMesh::calculateTriangleCount(v3);
  }

  return a1;
}

uint64_t re::GeomMesh::updateFaceVaryingAttribute(uint64_t a1, char *a2, int a3, uint64_t *a4, uint64_t *a5)
{
  v51[11] = *MEMORY[0x1E69E9840];
  v10 = a5[2];
  re::internal::GeomAttributeManager::attributeByName((a1 + 64), a2);
  v35 = a3;
  v11 = re::DynamicArray<re::GeomCell4>::DynamicArray(&v36, a4);
  if (!v37)
  {
    v11 = re::DynamicArray<re::BlendNode>::setCapacity(&v36, 1uLL);
  }

  memset(v34, 0, sizeof(v34));
  re::DynamicArray<float>::DynamicArray(v31, a5);
  v30 = 0;
  if (v10)
  {
    v12 = 0;
    do
    {
      v13 = v12;
      v14 = v32;
      if (v32 <= v12)
      {
        v26 = 0;
        memset(v50, 0, 32);
        v48 = 0u;
        v49 = 0u;
        v47 = 0u;
        v21 = MEMORY[0x1E69E9C10];
        v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v40 = 136315906;
        v41 = "operator[]";
        v42 = 1024;
        if (v22)
        {
          v23 = 3;
        }

        else
        {
          v23 = 2;
        }

        *v43 = 789;
        *&v43[4] = 2048;
        *&v43[6] = v13;
        v44 = 2048;
        v45 = v14;
        _os_log_send_and_compose_impl(v23, &v26, &v47, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v40, 38, v24, v25);
        _os_crash_msg();
        __break(1u);
      }

      LODWORD(v47) = *(v33 + 4 * v12);
      re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::addOrReplace(v34, &v47, &v30);
      v12 = v30 + 1;
      v30 = v12;
    }

    while (v12 < v10);
  }

  re::GeomIndexMap::GeomIndexMap(&v40, v31);
  re::GeomIndexMap::GeomIndexMap(&v26, v34);
  LODWORD(v47) = v35;
  *(&v47 + 1) = v36;
  v15 = v37;
  v36 = 0;
  v37 = 0uLL;
  v48 = v15;
  *(&v49 + 1) = v39;
  v39 = 0;
  LODWORD(v49) = 1;
  v35 = 0;
  v38 += 2;
  re::GeomIndexMap::GeomIndexMap(v50, &v40);
  re::GeomIndexMap::GeomIndexMap(v51, &v26);
  if (v27)
  {
    if (v27 == 2)
    {
      v17.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v28);
    }

    else
    {
      if (v27 != 1)
      {
        re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
        _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
        __break(1u);
        goto LABEL_33;
      }

      if (v28[0])
      {
        v16 = v29;
        if (v29)
        {
          (*(*v28[0] + 40))();
        }
      }
    }
  }

  if (v42)
  {
    if (v42 != 2)
    {
      if (v42 == 1)
      {
        if (*&v43[2] && v46)
        {
          (*(**&v43[2] + 40))(v17);
        }

        goto LABEL_21;
      }

LABEL_33:
      re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
      result = _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
      __break(1u);
      return result;
    }

    re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v43[2]);
  }

LABEL_21:
  re::internal::GeomAttributeManager::updateFaceVaryingAttributeSubmesh((a1 + 64), a2, &v47);
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh(&v47, v18);
  if (v31[0] && v33)
  {
    (*(*v31[0] + 40))();
  }

  v19 = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v34);
  result = v36;
  if (v36)
  {
    if (v39)
    {
      return (*(*v36 + 40))(v19);
    }
  }

  return result;
}

uint64_t re::GeomMesh::updateFaceVaryingAttribute(uint64_t a1, char *a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  re::internal::GeomAttributeManager::attributeByName((a1 + 64), a2);
  v31 = a3;
  re::DynamicArray<re::GeomCell4>::DynamicArray(&v32, a4);
  if (!v33)
  {
    re::DynamicArray<re::BlendNode>::setCapacity(&v32, 1uLL);
  }

  v27 = 0xFFFFFFFF00000000;
  v28 = -1;
  v29 = 0;
  v9 = v8 - 1;
  if (v8 - 1 >= 0xFFFFFFFE)
  {
    v8 = 0;
    LODWORD(v30[0]) = 0;
    v10 = -1;
    v9 = -1;
  }

  else
  {
    v10 = 0;
    v27 = v8;
    v28 = v8 - 1;
    LODWORD(v30[0]) = v8;
  }

  v24 = 0;
  v23[1] = v10;
  v23[2] = v9;
  v23[0] = v8;
  LODWORD(v25[0]) = v8;
  LODWORD(v16) = v31;
  v17 = v32;
  v11 = v33;
  v32 = 0;
  v33 = 0uLL;
  v18 = v11;
  v20 = v35;
  v35 = 0;
  LODWORD(v19) = 1;
  v31 = 0;
  v34 += 2;
  re::GeomIndexMap::GeomIndexMap(&v21, &v27);
  re::GeomIndexMap::GeomIndexMap(&v22, v23);
  re::internal::GeomAttributeManager::updateFaceVaryingAttributeSubmesh((a1 + 64), a2, &v16);
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh(&v16, v12);
  if (v24)
  {
    if (v24 == 2)
    {
      v14.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v25);
    }

    else
    {
      if (v24 != 1)
      {
        re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625, v16, v17, v18, v19, v20);
        _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
        __break(1u);
        goto LABEL_27;
      }

      if (v25[0])
      {
        v13 = v26;
        if (v26)
        {
          (*(*v25[0] + 40))();
        }
      }
    }
  }

  if (v29 != 2)
  {
    if (v29 == 1)
    {
      if (v30[0])
      {
        if (v30[4])
        {
          (*(*v30[0] + 40))(v14);
        }

        memset(v30, 0, 24);
      }

      goto LABEL_22;
    }

    if (!v29)
    {
      LODWORD(v30[0]) = 0;
      goto LABEL_22;
    }

LABEL_27:
    re::internal::assertLog(4, v13, v14.n128_f64[0], "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
    result = _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
    return result;
  }

  v14.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v30);
LABEL_22:
  result = v32;
  if (v32)
  {
    if (v35)
    {
      return (*(*v32 + 40))(v14);
    }
  }

  return result;
}

uint64_t re::computeGradientField(re::GeomMesh *a1, void *a2, uint64_t a3)
{
  v89 = *MEMORY[0x1E69E9840];
  re::DynamicArray<re::Vector3<float>>::resize(a3, *(a1 + 10));
  result = re::GeomMesh::accessVertexPositions(a1);
  v12 = *(a1 + 5);
  if (v12)
  {
    LODWORD(v13) = v11;
    v14 = 0;
    do
    {
      if (v12 <= v14)
      {
        v75 = 0;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v84 = 0u;
        v13 = MEMORY[0x1E69E9C10];
        v76 = 136315906;
        v77 = "operator[]";
        v78 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v40 = 3;
        }

        else
        {
          v40 = 2;
        }

        v79 = 797;
        v80 = 2048;
        v81 = v14;
        v82 = 2048;
        v83 = v12;
        _os_log_send_and_compose_impl(v40, &v75, &v84, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v76, 38, v73, v74);
        _os_crash_msg();
        __break(1u);
LABEL_28:
        v75 = 0;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v84 = 0u;
        v41 = MEMORY[0x1E69E9C10];
        v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v76 = 136315906;
        v77 = "operator[]";
        v78 = 1024;
        if (v42)
        {
          v43 = 3;
        }

        else
        {
          v43 = 2;
        }

        v79 = 613;
        v80 = 2048;
        v81 = v12;
        v82 = 2048;
        v83 = v13;
        _os_log_send_and_compose_impl(v43, &v75, &v84, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v76, 38, v73, v74);
        _os_crash_msg();
        __break(1u);
LABEL_32:
        v75 = 0;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v84 = 0u;
        v44 = MEMORY[0x1E69E9C10];
        v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v76 = 136315906;
        v77 = "operator[]";
        v78 = 1024;
        if (v45)
        {
          v46 = 3;
        }

        else
        {
          v46 = 2;
        }

        v79 = 613;
        v80 = 2048;
        v81 = v3;
        v82 = 2048;
        v83 = v13;
        _os_log_send_and_compose_impl(v46, &v75, &v84, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v76, 38, v73, v74);
        _os_crash_msg();
        __break(1u);
LABEL_36:
        v75 = 0;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v84 = 0u;
        v47 = MEMORY[0x1E69E9C10];
        v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v76 = 136315906;
        v77 = "operator[]";
        v78 = 1024;
        if (v48)
        {
          v49 = 3;
        }

        else
        {
          v49 = 2;
        }

        v79 = 613;
        v80 = 2048;
        v81 = v4;
        v82 = 2048;
        v83 = v13;
        _os_log_send_and_compose_impl(v49, &v75, &v84, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v76, 38, v73, v74);
        _os_crash_msg();
        __break(1u);
LABEL_40:
        re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v12, v16);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v65, v69);
        __break(1u);
LABEL_41:
        re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v3, v16);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v66, v70);
        __break(1u);
LABEL_42:
        re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v4, v16);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v67, v71);
        __break(1u);
LABEL_43:
        v75 = 0;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v84 = 0u;
        v50 = MEMORY[0x1E69E9C10];
        v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v76 = 136315906;
        v77 = "operator[]";
        v78 = 1024;
        if (v51)
        {
          v52 = 3;
        }

        else
        {
          v52 = 2;
        }

        v79 = 613;
        v80 = 2048;
        v81 = v5;
        v82 = 2048;
        v83 = v13;
        _os_log_send_and_compose_impl(v52, &v75, &v84, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v76, 38, v73, v74);
        _os_crash_msg();
        __break(1u);
LABEL_47:
        re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v5, v16);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v68, v72);
        __break(1u);
LABEL_48:
        v75 = 0;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v84 = 0u;
        v53 = MEMORY[0x1E69E9C10];
        v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v76 = 136315906;
        v77 = "operator[]";
        v78 = 1024;
        if (v54)
        {
          v55 = 3;
        }

        else
        {
          v55 = 2;
        }

        v79 = 789;
        v80 = 2048;
        v81 = v14;
        v82 = 2048;
        v83 = v6;
        _os_log_send_and_compose_impl(v55, &v75, &v84, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v76, 38, v73, v74);
        _os_crash_msg();
        __break(1u);
LABEL_52:
        v75 = 0;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v84 = 0u;
        v56 = MEMORY[0x1E69E9C10];
        v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v76 = 136315906;
        v77 = "operator[]";
        v78 = 1024;
        if (v57)
        {
          v58 = 3;
        }

        else
        {
          v58 = 2;
        }

        v79 = 789;
        v80 = 2048;
        v81 = v14;
        v82 = 2048;
        v83 = v12;
        _os_log_send_and_compose_impl(v58, &v75, &v84, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v76, 38, v73, v74);
        _os_crash_msg();
        __break(1u);
LABEL_56:
        v75 = 0;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v84 = 0u;
        v59 = MEMORY[0x1E69E9C10];
        v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v76 = 136315906;
        v77 = "operator[]";
        v78 = 1024;
        if (v60)
        {
          v61 = 3;
        }

        else
        {
          v61 = 2;
        }

        v79 = 789;
        v80 = 2048;
        v81 = v14;
        v82 = 2048;
        v83 = v12;
        _os_log_send_and_compose_impl(v61, &v75, &v84, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v76, 38, v73, v74);
        _os_crash_msg();
        __break(1u);
LABEL_60:
        v75 = 0;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v84 = 0u;
        v62 = MEMORY[0x1E69E9C10];
        v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v76 = 136315906;
        v77 = "operator[]";
        v78 = 1024;
        if (v63)
        {
          v64 = 3;
        }

        else
        {
          v64 = 2;
        }

        v79 = 789;
        v80 = 2048;
        v81 = v14;
        v82 = 2048;
        v83 = v5;
        _os_log_send_and_compose_impl(v64, &v75, &v84, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v76, 38, v73, v74);
        _os_crash_msg();
        __break(1u);
      }

      v15 = (*(a1 + 7) + 16 * v14);
      v12 = *v15;
      if (v12 >= v11)
      {
        goto LABEL_28;
      }

      v3 = v15[1];
      if (v3 >= v11)
      {
        goto LABEL_32;
      }

      v4 = v15[2];
      if (v4 >= v11)
      {
        goto LABEL_36;
      }

      v16 = a2[1];
      if (v16 <= v12)
      {
        goto LABEL_40;
      }

      if (v16 <= v3)
      {
        goto LABEL_41;
      }

      if (v16 <= v4)
      {
        goto LABEL_42;
      }

      v17 = *(*a2 + 4 * v12);
      v5 = v15[3];
      v18 = *(*a2 + 4 * v3);
      v19 = *(*a2 + 4 * v4);
      if (v5 == -1)
      {
        v5 = *(a3 + 16);
        if (v5 <= v14)
        {
          goto LABEL_60;
        }

        v30 = *(result + 16 * v3);
        v31 = *(result + 16 * v12);
        v32 = vsubq_f32(v30, v31);
        v33 = *(result + 16 * v4);
        v34 = vsubq_f32(v33, v31);
        v35 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), vnegq_f32(v32)), v34, vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL));
        v27 = vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL);
        v36 = vaddq_f32(vmulq_n_f32(v32, v19), vaddq_f32(vmulq_n_f32(vsubq_f32(v33, v30), v17), vmulq_n_f32(vsubq_f32(v31, v33), v18)));
        v29 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL), vnegq_f32(v27)), v36, vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL));
      }

      else
      {
        if (v5 >= v11)
        {
          goto LABEL_43;
        }

        if (v16 <= v5)
        {
          goto LABEL_47;
        }

        v6 = *(a3 + 16);
        if (v6 <= v14)
        {
          goto LABEL_48;
        }

        v20 = *(result + 16 * v4);
        v21 = *(result + 16 * v12);
        v22 = vsubq_f32(v20, v21);
        v23 = *(result + 16 * v5);
        v24 = *(result + 16 * v3);
        v25 = vsubq_f32(v23, v24);
        v26 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL), vnegq_f32(v22)), v25, vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL));
        v27 = vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL);
        v28 = vaddq_f32(vmulq_n_f32(v22, *(*a2 + 4 * v5)), vaddq_f32(vmulq_n_f32(vsubq_f32(v21, v20), v18), vaddq_f32(vmulq_n_f32(v25, v17), vmulq_n_f32(vsubq_f32(v24, v23), v19))));
        v29 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL), vnegq_f32(v27)), v28, vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL));
      }

      *(*(a3 + 32) + 16 * v14) = vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL);
      v37 = vmulq_f32(v27, v27);
      v38 = v37.f32[2] + vaddv_f32(*v37.f32);
      v12 = *(a3 + 16);
      if (v38 <= 0.0)
      {
        if (v12 <= v14)
        {
          goto LABEL_56;
        }

        v39 = (*(a3 + 32) + 16 * v14);
        *v39 = 0;
        v39[1] = 0;
      }

      else
      {
        if (v12 <= v14)
        {
          goto LABEL_52;
        }

        *(*(a3 + 32) + 16 * v14) = vmulq_n_f32(*(*(a3 + 32) + 16 * v14), 1.0 / v38);
      }

      ++v14;
      v12 = *(a1 + 5);
    }

    while (v14 < v12);
  }

  return result;
}

re::GeomMeshBuilder *re::GeomMeshBuilder::GeomMeshBuilder(re::GeomMeshBuilder *this, const re::GeomMesh *a2)
{
  *this = 0;
  *(this + 2) = *(a2 + 4);
  re::DynamicArray<re::GeomCell4>::DynamicArray(this + 16, a2 + 3);
  if (!*(this + 3))
  {
    re::DynamicArray<re::BlendNode>::setCapacity(this + 2, 1uLL);
  }

  re::internal::GeomAttributeManager::GeomAttributeManager((this + 56), (a2 + 64));
  re::GeomMesh::setName(this, *a2);
  return this;
}

uint64_t re::GeomMeshBuilder::GeomMeshBuilder(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = *(a2 + 16);
  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 24);
  *(a1 + 24) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a1 + 32) = *(a2 + 40);
  v5 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 56);
  *(a2 + 56) = v5;
  ++*(a2 + 48);
  ++*(a1 + 40);
  *(a2 + 16) = 0;
  *(a2 + 40) = 0;
  ++*(a2 + 48);
  re::internal::GeomAttributeManager::GeomAttributeManager(a1 + 56, a2 + 64);
  re::GeomMesh::setName(a1, *a2);
  *(a2 + 728) = 0;
  re::GeomMesh::clear(a2);
  return a1;
}

void re::GeomMeshBuilder::~GeomMeshBuilder(re::GeomMeshBuilder *this)
{
  re::GeomMesh::freeName(this);
  re::internal::GeomAttributeManager::~GeomAttributeManager((this + 56));
  re::DynamicArray<unsigned long>::deinit(this + 16);
}

uint64_t re::GeomMeshBuilder::appendMesh(re::GeomMeshBuilder *this, const re::GeomMesh *a2)
{
  v4 = a2;
  v213 = *MEMORY[0x1E69E9840];
  v7 = this + 8;
  v6 = *(this + 2);
  v8 = *(this + 4);
  v9 = *(a2 + 4);
  v177 = *(a2 + 5);
  v10 = (v177 + v8);
  *(this + 2) = v9 + v6;
  *(this + 42) = v9 + v6;
  v11 = *(this + 24);
  if (v11)
  {
    v2 = *(this + 26);
    v3 = 8 * v11;
    do
    {
      v12 = *v2;
      v2 += 8;
      (*(*v12 + 80))(v12, *(this + 42));
      v3 -= 8;
    }

    while (v3);
  }

  re::DynamicArray<re::GeomCell4>::resize(this + 2, v10);
  *(this + 70) = v10;
  v13 = *(this + 38);
  if (v13)
  {
    v14 = *(this + 40);
    v2 = 8 * v13;
    do
    {
      v15 = *v14++;
      (*(*v15 + 80))(v15, *(this + 70));
      v2 -= 8;
    }

    while (v2);
  }

  if (v177)
  {
    v16 = *(v4 + 5);
    v17 = vdup_n_s32(v6);
    v18 = (*(v4 + 7) + 12);
    v19 = v177;
    v20 = v16;
    v21 = v8;
    while (v20)
    {
      v2 = v21;
      v3 = *(this + 4);
      if (v3 <= v21)
      {
        goto LABEL_281;
      }

      v22 = *(v18 - 1);
      if (*v18 == -1)
      {
        v23 = -1;
      }

      else
      {
        v23 = *v18 + v6;
      }

      v24 = (*(this + 6) + 16 * v21);
      *v24 = vadd_s32(*(v18 - 3), v17);
      v24[1].i32[0] = v22 + v6;
      v24[1].i32[1] = v23;
      ++v21;
      --v20;
      v18 += 4;
      if (!--v19)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_277;
  }

LABEL_15:
  v25 = *(v4 + 22);
  if (v25)
  {
    for (i = 0; i != v25; ++i)
    {
      v27 = re::internal::GeomAttributeContainer::attributeByIndex((v4 + 64), i);
      if (!re::internal::GeomAttributeManager::attributeByName((v7 + 48), *(v27 + 8)))
      {
        v28 = re::internal::GeomAttributeManager::addAttribute((v7 + 48), *(v27 + 8), *(v27 + 16), *(v27 + 17));
        re::GeomAttribute::copyValues(v27, v28);
      }
    }
  }

  *&v199[2] = 0;
  memset(v199, 0, 28);
  *&v197[2] = 0;
  memset(v195, 0, sizeof(v195));
  re::DynamicArray<float>::resize(v199, v9);
  re::DynamicArray<float>::resize(v195, v9);
  if (v9)
  {
    v29 = 0;
    v16 = *&v199[1];
    v30 = *&v199[2];
    v2 = *&v195[16];
    v31 = *&v197[2];
    while (v16 != v29)
    {
      *(v30 + 4 * v29) = v29;
      if (v2 == v29)
      {
        goto LABEL_289;
      }

      *(v31 + 4 * v29) = v6 + v29;
      if (v9 == ++v29)
      {
        goto LABEL_25;
      }
    }

LABEL_285:
    *&v203[0] = 0;
    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
    v204 = 0u;
    v158 = MEMORY[0x1E69E9C10];
    v159 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v191 = 136315906;
    *&v191[4] = "operator[]";
    *&v191[12] = 1024;
    if (v159)
    {
      v160 = 3;
    }

    else
    {
      v160 = 2;
    }

    *&v191[14] = 789;
    *&v191[18] = 2048;
    *&v191[20] = v16;
    v192 = 2048;
    *v193 = v16;
    _os_log_send_and_compose_impl(v160, v203, &v204, 80, &dword_1E1C61000, v158, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v191, 38, v170, v171);
    _os_crash_msg();
    __break(1u);
LABEL_289:
    *&v203[0] = 0;
    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
    v204 = 0u;
    v161 = MEMORY[0x1E69E9C10];
    v162 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v191 = 136315906;
    *&v191[4] = "operator[]";
    *&v191[12] = 1024;
    if (v162)
    {
      v163 = 3;
    }

    else
    {
      v163 = 2;
    }

    *&v191[14] = 789;
    *&v191[18] = 2048;
    *&v191[20] = v2;
    v192 = 2048;
    *v193 = v2;
    _os_log_send_and_compose_impl(v163, v203, &v204, 80, &dword_1E1C61000, v161, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v191, 38, v170, v171);
    _os_crash_msg();
    __break(1u);
LABEL_293:
    *&v203[0] = 0;
    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
    v204 = 0u;
    v164 = MEMORY[0x1E69E9C10];
    v165 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v191 = 136315906;
    *&v191[4] = "operator[]";
    *&v191[12] = 1024;
    if (v165)
    {
      v166 = 3;
    }

    else
    {
      v166 = 2;
    }

    *&v191[14] = 789;
    *&v191[18] = 2048;
    *&v191[20] = v6;
    v192 = 2048;
    *v193 = v6;
    _os_log_send_and_compose_impl(v166, v203, &v204, 80, &dword_1E1C61000, v164, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v191, 38, v170, v171);
    _os_crash_msg();
    __break(1u);
LABEL_297:
    *&v203[0] = 0;
    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
    v204 = 0u;
    v167 = MEMORY[0x1E69E9C10];
    v168 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v191 = 136315906;
    *&v191[4] = "operator[]";
    *&v191[12] = 1024;
    if (v168)
    {
      v169 = 3;
    }

    else
    {
      v169 = 2;
    }

    *&v191[14] = 789;
    *&v191[18] = 2048;
    *&v191[20] = v16;
    v192 = 2048;
    *v193 = v16;
    _os_log_send_and_compose_impl(v169, v203, &v204, 80, &dword_1E1C61000, v167, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v191, 38, v170, v171);
    _os_crash_msg();
    __break(1u);
LABEL_301:
    re::internal::assertLog(4, v40, "assertion failure: '%s' (%s:line %i) ", "dstAttribute->type() == srcAttribute->type()", "appendMesh", 175);
    _os_crash("assertion failure: (dstAttribute->type() == srcAttribute->type()) ");
    __break(1u);
LABEL_302:
    re::internal::assertLog(4, v40, "assertion failure: '%s' (%s:line %i) ", "dstAttribute->rate() == srcAttribute->rate()", "appendMesh", 176);
    _os_crash("assertion failure: (dstAttribute->rate() == srcAttribute->rate()) ");
    __break(1u);
LABEL_303:
    re::internal::assertLog(4, v44, "assertion failure: '%s' (%s:line %i) ", "dstAttribute->size() == newValueCount", "appendMesh", 195);
    _os_crash("assertion failure: (dstAttribute->size() == newValueCount) ");
    __break(1u);
LABEL_304:
    re::internal::assertLog(4, v53, "assertion failure: '%s' (%s:line %i) ", "dstAttribute->type() == srcAttribute->type()", "appendMesh", 215);
    _os_crash("assertion failure: (dstAttribute->type() == srcAttribute->type()) ");
    __break(1u);
LABEL_305:
    re::internal::assertLog(4, v53, "assertion failure: '%s' (%s:line %i) ", "dstAttribute->rate() == srcAttribute->rate()", "appendMesh", 216);
    _os_crash("assertion failure: (dstAttribute->rate() == srcAttribute->rate()) ");
    __break(1u);
LABEL_306:
    re::internal::assertLog(4, v113, "assertion failure: '%s' (%s:line %i) ", "dstAttribute->size() == mergedAttrVertexCount", "appendMesh", 328);
    _os_crash("assertion failure: (dstAttribute->size() == mergedAttrVertexCount) ");
    __break(1u);
LABEL_307:
    re::internal::assertLog(4, v53, "assertion failure: '%s' (%s:line %i) ", "dstAttribute != nullptr", "appendMesh", 223);
    _os_crash("assertion failure: (dstAttribute != nullptr) ");
    __break(1u);
LABEL_308:
    re::internal::assertLog(4, v87, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
LABEL_309:
    re::internal::assertLog(4, v87, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
LABEL_310:
    re::internal::assertLog(4, v73, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
LABEL_311:
    re::internal::assertLog(4, v73, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
LABEL_312:
    re::internal::assertLog(4, v73, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
LABEL_313:
    re::internal::assertLog(4, v87, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
LABEL_314:
    re::internal::assertLog(4, v104, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
LABEL_315:
    re::internal::assertLog(4, v104, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
LABEL_316:
    re::internal::assertLog(4, v85, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
LABEL_317:
    re::internal::assertLog(4, v85, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
  }

LABEL_25:
  if (*v195 && *&v197[2])
  {
    (*(**v195 + 40))();
  }

  if (*&v199[0] && *&v199[2])
  {
    (*(**&v199[0] + 40))();
  }

  *&v199[2] = 0;
  memset(v199, 0, 28);
  *&v197[2] = 0;
  memset(v195, 0, sizeof(v195));
  re::DynamicArray<float>::resize(v199, v177);
  re::DynamicArray<float>::resize(v195, v177);
  if (v177)
  {
    v32 = 0;
    v6 = *&v199[1];
    v33 = *&v199[2];
    v16 = *&v195[16];
    v34 = *&v197[2];
    while (v6 != v32)
    {
      *(v33 + 4 * v32) = v32;
      if (v16 == v32)
      {
        goto LABEL_297;
      }

      *(v34 + 4 * v32) = v8 + v32;
      if (v177 == ++v32)
      {
        goto LABEL_36;
      }
    }

    goto LABEL_293;
  }

LABEL_36:
  if (*v195 && *&v197[2])
  {
    (*(**v195 + 40))();
  }

  result = *&v199[0];
  if (*&v199[0] && *&v199[2])
  {
    result = (*(**&v199[0] + 40))();
  }

  v36 = *(v4 + 134);
  v178 = v7;
  if (!v36)
  {
    goto LABEL_64;
  }

  for (j = 0; j != v36; ++j)
  {
    v38 = re::internal::GeomAttributeContainer::attributeByIndex((v4 + 512), j);
    v39 = re::internal::GeomAttributeManager::attributeByName((v7 + 48), *(v38 + 8));
    if (v39)
    {
      v16 = v39;
      if (*(v39 + 17) != *(v38 + 17))
      {
        goto LABEL_301;
      }

      if (*(v39 + 16) != *(v38 + 16))
      {
        goto LABEL_302;
      }
    }

    else
    {
      v41 = *(v38 + 16);
      if (v41 == 3)
      {
        v16 = 0;
      }

      else
      {
        v16 = re::internal::GeomAttributeManager::addAttribute((v7 + 48), *(v38 + 8), v41, *(v38 + 17));
      }
    }

    result = (*(*v38 + 16))(v38);
    if (!result)
    {
      continue;
    }

    v3 = result;
    *&v199[2] = 0;
    memset(v199, 0, 28);
    *&v197[2] = 0;
    memset(v195, 0, sizeof(v195));
    v42 = (*(*v16 + 16))(v16);
    v43 = (v42 + v3);
    (*(*v16 + 24))(v16, v43);
    re::DynamicArray<float>::resize(v199, v3);
    re::DynamicArray<float>::resize(v195, v3);
    if ((*(*v16 + 16))(v16) != v43)
    {
      goto LABEL_303;
    }

    v45 = 0;
    v2 = *&v199[1];
    v46 = *&v199[2];
    v47 = v42;
    v48 = *&v195[16];
    v49 = *&v197[2];
    v7 = v178;
    do
    {
      if (v2 == v45)
      {
        *&v203[0] = 0;
        v207 = 0u;
        v208 = 0u;
        v205 = 0u;
        v206 = 0u;
        v204 = 0u;
        v117 = MEMORY[0x1E69E9C10];
        *v191 = 136315906;
        *&v191[4] = "operator[]";
        *&v191[12] = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v118 = 3;
        }

        else
        {
          v118 = 2;
        }

        *&v191[14] = 789;
        *&v191[18] = 2048;
        *&v191[20] = v2;
        v192 = 2048;
        *v193 = v2;
        _os_log_send_and_compose_impl(v118, v203, &v204, 80, &dword_1E1C61000, v117, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v191, 38, v170, v171);
        _os_crash_msg();
        __break(1u);
LABEL_233:
        *&v203[0] = 0;
        v207 = 0u;
        v208 = 0u;
        v205 = 0u;
        v206 = 0u;
        v204 = 0u;
        v119 = MEMORY[0x1E69E9C10];
        v120 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v191 = 136315906;
        *&v191[4] = "operator[]";
        *&v191[12] = 1024;
        if (v120)
        {
          v121 = 3;
        }

        else
        {
          v121 = 2;
        }

        *&v191[14] = 789;
        *&v191[18] = 2048;
        *&v191[20] = v48;
        v192 = 2048;
        *v193 = v48;
        _os_log_send_and_compose_impl(v121, v203, &v204, 80, &dword_1E1C61000, v119, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v191, 38, v170, v171);
        _os_crash_msg();
        __break(1u);
        goto LABEL_237;
      }

      *(v46 + 4 * v45) = v45;
      if (v48 == v45)
      {
        goto LABEL_233;
      }

      *(v49 + 4 * v45) = v47 + v45;
      ++v45;
    }

    while (v3 != v45);
    (*(*v38 + 40))(v38, v16, v3);
    if (*v195 && *&v197[2])
    {
      (*(**v195 + 40))();
    }

    result = *&v199[0];
    if (*&v199[0] && *&v199[2])
    {
      result = (*(**&v199[0] + 40))();
    }
  }

LABEL_64:
  v173 = *(v4 + 106);
  if (v173)
  {
    v50 = 0;
    v172 = v4;
    while (1)
    {
      v51 = re::internal::GeomAttributeContainer::attributeByIndex((v4 + 400), v50);
      v52 = re::internal::GeomAttributeManager::attributeByName((v7 + 48), *(v51 + 8));
      if (v52)
      {
        v54 = v52;
        if (*(v52 + 17) != *(v51 + 17))
        {
          goto LABEL_304;
        }

        if (*(v52 + 16) != *(v51 + 16))
        {
          goto LABEL_305;
        }
      }

      else
      {
        LODWORD(v204) = 0;
        *(&v206 + 1) = 0;
        v205 = 0uLL;
        *(&v204 + 1) = 0;
        LODWORD(v206) = 0;
        re::DynamicArray<re::BlendNode>::setCapacity(&v204 + 1, 1uLL);
        LODWORD(v206) = v206 + 1;
        v106 = re::internal::GeomBaseMesh::addFaceVaryingAttribute(v7, *(v51 + 8), *(v51 + 17), &v204);
        if (!v106)
        {
          goto LABEL_307;
        }

        v54 = v106;
        if (*(&v204 + 1))
        {
          v53 = *(&v206 + 1);
          if (*(&v206 + 1))
          {
            (*(**(&v204 + 1) + 40))();
          }
        }
      }

      v175 = v50;
      v174 = v51;
      v55 = re::internal::accessFaceVaryingAttributeSubmesh(v51, v53);
      v176 = v54;
      v38 = re::internal::accessFaceVaryingAttributeSubmesh(v54, v56);
      v57 = *v55;
      k = *(v55 + 3);
      v59 = *v38;
      v60 = *(v38 + 24);
      v186 = *v38;
      re::DynamicArray<re::GeomCell4>::DynamicArray(&v187, (v38 + 8));
      if (!v188)
      {
        re::DynamicArray<re::BlendNode>::setCapacity(&v187, 1uLL);
      }

      v186 = v59 + v57;
      v16 = (v60 + k);
      v61 = re::DynamicArray<re::GeomCell4>::resize(&v187, v16);
      if (k)
      {
        v62 = *(v55 + 3);
        v2 = *(&v188 + 1);
        v63 = v190;
        v64 = k;
        v65 = vdup_n_s32(v59);
        v66 = (*(v55 + 5) + 12);
        v67 = v62;
        v68 = v60;
        while (v67)
        {
          v3 = v68;
          if (v2 <= v68)
          {
            goto LABEL_241;
          }

          v69 = *(v66 - 1);
          if (*v66 == -1)
          {
            v70 = -1;
          }

          else
          {
            v70 = *v66 + v59;
          }

          v71 = (v63 + 16 * v68);
          *v71 = vadd_s32(*(v66 - 3), v65);
          v71[1].i32[0] = v69 + v59;
          v71[1].i32[1] = v70;
          ++v68;
          --v67;
          v66 += 4;
          if (!--v64)
          {
            goto LABEL_79;
          }
        }

LABEL_237:
        *v195 = 0;
        v207 = 0u;
        v208 = 0u;
        v205 = 0u;
        v206 = 0u;
        v204 = 0u;
        v122 = MEMORY[0x1E69E9C10];
        k = v62;
        v123 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v199[0]) = 136315906;
        *(v199 + 4) = "operator[]";
        WORD6(v199[0]) = 1024;
        if (v123)
        {
          v124 = 3;
        }

        else
        {
          v124 = 2;
        }

        *(v199 + 14) = 797;
        WORD1(v199[1]) = 2048;
        *(&v199[1] + 4) = k;
        WORD6(v199[1]) = 2048;
        *(&v199[1] + 14) = k;
        _os_log_send_and_compose_impl(v124, v195, &v204, 80, &dword_1E1C61000, v122, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v199, 38, v170, v171);
        _os_crash_msg();
        __break(1u);
LABEL_241:
        *v195 = 0;
        v207 = 0u;
        v208 = 0u;
        v205 = 0u;
        v206 = 0u;
        v204 = 0u;
        v125 = MEMORY[0x1E69E9C10];
        v126 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v199[0]) = 136315906;
        *(v199 + 4) = "operator[]";
        WORD6(v199[0]) = 1024;
        if (v126)
        {
          v127 = 3;
        }

        else
        {
          v127 = 2;
        }

        *(v199 + 14) = 789;
        WORD1(v199[1]) = 2048;
        *(&v199[1] + 4) = v3;
        WORD6(v199[1]) = 2048;
        *(&v199[1] + 14) = v2;
        _os_log_send_and_compose_impl(v127, v195, &v204, 80, &dword_1E1C61000, v125, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v199, 38, v170, v171);
        _os_crash_msg();
        __break(1u);
LABEL_245:
        v181 = 0;
        v200 = 0u;
        v201 = 0u;
        memset(v199, 0, sizeof(v199));
        v128 = MEMORY[0x1E69E9C10];
        v129 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v203[0]) = 136315906;
        *(v203 + 4) = "operator[]";
        WORD6(v203[0]) = 1024;
        if (v129)
        {
          v130 = 3;
        }

        else
        {
          v130 = 2;
        }

        *(v203 + 14) = 789;
        WORD1(v203[1]) = 2048;
        *(&v203[1] + 4) = k;
        WORD6(v203[1]) = 2048;
        *(&v203[1] + 14) = k;
        _os_log_send_and_compose_impl(v130, &v181, v199, 80, &dword_1E1C61000, v128, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v203, 38, v170, v171);
        _os_crash_msg();
        __break(1u);
LABEL_249:
        v181 = 0;
        v200 = 0u;
        v201 = 0u;
        memset(v199, 0, sizeof(v199));
        v131 = MEMORY[0x1E69E9C10];
        v132 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v203[0]) = 136315906;
        *(v203 + 4) = "operator[]";
        WORD6(v203[0]) = 1024;
        if (v132)
        {
          v133 = 3;
        }

        else
        {
          v133 = 2;
        }

        *(v203 + 14) = 789;
        WORD1(v203[1]) = 2048;
        *(&v203[1] + 4) = v2;
        WORD6(v203[1]) = 2048;
        *(&v203[1] + 14) = v2;
        _os_log_send_and_compose_impl(v133, &v181, v199, 80, &dword_1E1C61000, v131, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v203, 38, v170, v171);
        _os_crash_msg();
        __break(1u);
LABEL_253:
        *v191 = 0;
        v200 = 0u;
        v201 = 0u;
        memset(v199, 0, sizeof(v199));
        v134 = MEMORY[0x1E69E9C10];
        v135 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v195 = 136315906;
        *&v195[4] = "operator[]";
        *&v195[12] = 1024;
        if (v135)
        {
          v136 = 3;
        }

        else
        {
          v136 = 2;
        }

        *&v195[14] = 789;
        *&v195[18] = 2048;
        *&v195[20] = v16;
        v196 = 2048;
        *v197 = v2;
        _os_log_send_and_compose_impl(v136, v191, v199, 80, &dword_1E1C61000, v134, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v195, 38, v170, v171);
        _os_crash_msg();
        __break(1u);
LABEL_257:
        *v191 = 0;
        v200 = 0u;
        v201 = 0u;
        memset(v199, 0, sizeof(v199));
        v137 = MEMORY[0x1E69E9C10];
        v138 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v195 = 136315906;
        *&v195[4] = "operator[]";
        *&v195[12] = 1024;
        if (v138)
        {
          v139 = 3;
        }

        else
        {
          v139 = 2;
        }

        *&v195[14] = 789;
        *&v195[18] = 2048;
        *&v195[20] = v2;
        v196 = 2048;
        *v197 = v38;
        _os_log_send_and_compose_impl(v139, v191, v199, 80, &dword_1E1C61000, v137, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v195, 38, v170, v171);
        _os_crash_msg();
        __break(1u);
LABEL_261:
        *v191 = 0;
        v200 = 0u;
        v201 = 0u;
        memset(v199, 0, sizeof(v199));
        v140 = MEMORY[0x1E69E9C10];
        v141 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v195 = 136315906;
        *&v195[4] = "operator[]";
        *&v195[12] = 1024;
        if (v141)
        {
          v142 = 3;
        }

        else
        {
          v142 = 2;
        }

        *&v195[14] = 789;
        *&v195[18] = 2048;
        *&v195[20] = k;
        v196 = 2048;
        *v197 = v2;
        _os_log_send_and_compose_impl(v142, v191, v199, 80, &dword_1E1C61000, v140, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v195, 38, v170, v171);
        _os_crash_msg();
        __break(1u);
LABEL_265:
        *v191 = 0;
        v200 = 0u;
        v201 = 0u;
        memset(v199, 0, sizeof(v199));
        v143 = MEMORY[0x1E69E9C10];
        v144 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v195 = 136315906;
        *&v195[4] = "operator[]";
        *&v195[12] = 1024;
        if (v144)
        {
          v145 = 3;
        }

        else
        {
          v145 = 2;
        }

        *&v195[14] = 789;
        *&v195[18] = 2048;
        *&v195[20] = v2;
        v196 = 2048;
        *v197 = v3;
        _os_log_send_and_compose_impl(v145, v191, v199, 80, &dword_1E1C61000, v143, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v195, 38, v170, v171);
        _os_crash_msg();
        __break(1u);
LABEL_269:
        *v191 = 0;
        v200 = 0u;
        v201 = 0u;
        memset(v199, 0, sizeof(v199));
        v146 = MEMORY[0x1E69E9C10];
        v147 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v195 = 136315906;
        *&v195[4] = "operator[]";
        *&v195[12] = 1024;
        if (v147)
        {
          v148 = 3;
        }

        else
        {
          v148 = 2;
        }

        *&v195[14] = 789;
        *&v195[18] = 2048;
        *&v195[20] = v2;
        v196 = 2048;
        *v197 = v16;
        _os_log_send_and_compose_impl(v148, v191, v199, 80, &dword_1E1C61000, v146, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v195, 38, v170, v171);
        _os_crash_msg();
        __break(1u);
LABEL_273:
        *v191 = 0;
        v200 = 0u;
        v201 = 0u;
        memset(v199, 0, sizeof(v199));
        v149 = MEMORY[0x1E69E9C10];
        v150 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v195 = 136315906;
        *&v195[4] = "operator[]";
        *&v195[12] = 1024;
        if (v150)
        {
          v151 = 3;
        }

        else
        {
          v151 = 2;
        }

        *&v195[14] = 789;
        *&v195[18] = 2048;
        *&v195[20] = v16;
        v196 = 2048;
        *v197 = v2;
        _os_log_send_and_compose_impl(v151, v191, v199, 80, &dword_1E1C61000, v149, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v195, 38, v170, v171);
        _os_crash_msg();
        __break(1u);
LABEL_277:
        *v195 = 0;
        v207 = 0u;
        v208 = 0u;
        v205 = 0u;
        v206 = 0u;
        v204 = 0u;
        v152 = MEMORY[0x1E69E9C10];
        v153 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v199[0]) = 136315906;
        *(v199 + 4) = "operator[]";
        WORD6(v199[0]) = 1024;
        if (v153)
        {
          v154 = 3;
        }

        else
        {
          v154 = 2;
        }

        *(v199 + 14) = 797;
        WORD1(v199[1]) = 2048;
        *(&v199[1] + 4) = v16;
        WORD6(v199[1]) = 2048;
        *(&v199[1] + 14) = v16;
        _os_log_send_and_compose_impl(v154, v195, &v204, 80, &dword_1E1C61000, v152, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v199, 38, v170, v171);
        _os_crash_msg();
        __break(1u);
LABEL_281:
        *v195 = 0;
        v207 = 0u;
        v208 = 0u;
        v205 = 0u;
        v206 = 0u;
        v204 = 0u;
        v155 = MEMORY[0x1E69E9C10];
        v6 = v195;
        v156 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v199[0]) = 136315906;
        *(v199 + 4) = "operator[]";
        WORD6(v199[0]) = 1024;
        if (v156)
        {
          v157 = 3;
        }

        else
        {
          v157 = 2;
        }

        *(v199 + 14) = 789;
        WORD1(v199[1]) = 2048;
        *(&v199[1] + 4) = v2;
        WORD6(v199[1]) = 2048;
        *(&v199[1] + 14) = v3;
        _os_log_send_and_compose_impl(v157, v195, &v204, 80, &dword_1E1C61000, v155, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v199, 38, v170, v171);
        _os_crash_msg();
        __break(1u);
        goto LABEL_285;
      }

LABEL_79:
      LODWORD(v204) = 0;
      *(&v206 + 1) = 0;
      v205 = 0uLL;
      *(&v204 + 1) = 0;
      LODWORD(v206) = 0;
      v72 = re::DynamicArray<re::BlendNode>::setCapacity(&v204 + 1, 1uLL);
      LODWORD(v206) = v206 + 1;
      *&v207 = 0xFFFFFFFF00000000;
      DWORD2(v207) = -1;
      BYTE12(v207) = 0;
      LODWORD(v208) = 0;
      v209 = 0xFFFFFFFF00000000;
      v3 = 0xFFFFFFFFLL;
      v210 = -1;
      v211 = 0;
      v212 = 0;
      if (v60 != v8 || k != v177)
      {
        break;
      }

      *&v203[2] = 0;
      memset(v203, 0, 28);
      v185 = 0;
      v182 = 0;
      v183 = 0;
      v181 = 0;
      v184 = 0;
      re::DynamicArray<float>::resize(v203, (v60 + k));
      re::DynamicArray<float>::resize(&v181, (v60 + k));
      v7 = v178;
      if (v8)
      {
        for (k = 0; v8 != k; ++k)
        {
          LODWORD(v199[0]) = k;
          v74 = *(v38 + 60);
          if (v74 == 2)
          {
            v76 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v38 + 64), v199);
            if (v76 == -1)
            {
              v16 = 0xFFFFFFFFLL;
            }

            else
            {
              v16 = *(*(v38 + 72) + 8 * v76 + 4);
            }
          }

          else if (v74 == 1)
          {
            v75 = *(v38 + 80);
            if (v75 <= k)
            {
              LODWORD(v199[0]) = k;
              v16 = 0xFFFFFFFFLL;
LABEL_99:
              if (v75 > k)
              {
                v78 = *(*(v38 + 96) + 4 * k);
                goto LABEL_107;
              }

              goto LABEL_103;
            }

            v16 = *(*(v38 + 96) + 4 * k);
          }

          else
          {
            if (*(v38 + 60))
            {
              goto LABEL_310;
            }

            if (k >= *(v38 + 64))
            {
              v16 = 0xFFFFFFFFLL;
            }

            else
            {
              v16 = k;
            }
          }

          v77 = *(v38 + 60);
          LODWORD(v199[0]) = k;
          if (v77)
          {
            if (v77 != 2)
            {
              if (v77 != 1)
              {
                goto LABEL_312;
              }

              v75 = *(v38 + 80);
              goto LABEL_99;
            }

            v79 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v38 + 64), v199);
            if (v79 != -1)
            {
              v78 = *(*(v38 + 72) + 8 * v79 + 4);
              goto LABEL_107;
            }

LABEL_103:
            v78 = -1;
            goto LABEL_107;
          }

          if (k >= *(v38 + 64))
          {
            v78 = -1;
          }

          else
          {
            v78 = k;
          }

LABEL_107:
          v2 = *&v203[1];
          if (*&v203[1] <= k)
          {
            goto LABEL_261;
          }

          *(*&v203[2] + 4 * k) = v78;
          v2 = v16;
          v3 = v183;
          if (v183 <= v16)
          {
            goto LABEL_265;
          }

          *(v185 + 4 * v16) = k;
        }
      }

      if (v177)
      {
        v80 = 0;
        while (1)
        {
          LODWORD(v199[0]) = v80;
          v81 = *(v55 + 60);
          if (v81 == 2)
          {
            break;
          }

          if (v81 == 1)
          {
            if (*(v55 + 10) > v80)
            {
              v82 = *(*(v55 + 12) + 4 * v80);
              goto LABEL_123;
            }

LABEL_122:
            v82 = -1;
            goto LABEL_123;
          }

          if (*(v55 + 60))
          {
            goto LABEL_311;
          }

          if (v80 >= v55[16])
          {
            v82 = -1;
          }

          else
          {
            v82 = v80;
          }

LABEL_123:
          v2 = (v8 + v80);
          v16 = *&v203[1];
          if (*&v203[1] <= v2)
          {
            goto LABEL_269;
          }

          v16 = (v82 + v8);
          *(*&v203[2] + 4 * v2) = v16;
          v2 = v183;
          if (v183 <= v16)
          {
            goto LABEL_273;
          }

          *(v185 + 4 * v16) = v8 + v80++;
          if (v177 == v80)
          {
            goto LABEL_126;
          }
        }

        v83 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(v55 + 8, v199);
        if (v83 != -1)
        {
          v82 = *(*(v55 + 9) + 8 * v83 + 4);
          goto LABEL_123;
        }

        goto LABEL_122;
      }

LABEL_126:
      re::GeomIndexMap::GeomIndexMap(v195, v203);
      re::GeomIndexMap::GeomIndexMap(v191, &v181);
      LODWORD(v199[0]) = v186;
      *(&v199[0] + 1) = v187;
      v84 = v188;
      v187 = 0;
      v188 = 0uLL;
      v199[1] = v84;
      *(&v199[2] + 1) = v190;
      v190 = 0;
      LODWORD(v199[2]) = 1;
      v186 = 0;
      v189 += 2;
      re::GeomIndexMap::GeomIndexMap(&v200, v195);
      re::GeomIndexMap::GeomIndexMap(v202, v191);
      v4 = v172;
      if (v191[12])
      {
        if (v191[12] == 2)
        {
          v86.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v191[16]);
        }

        else
        {
          if (v191[12] != 1)
          {
            goto LABEL_316;
          }

          if (*&v191[16])
          {
            v85 = v194;
            if (v194)
            {
              (*(**&v191[16] + 40))();
            }
          }
        }
      }

      if (v195[12])
      {
        if (v195[12] == 2)
        {
          re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v195[16]);
        }

        else
        {
          if (v195[12] != 1)
          {
            goto LABEL_317;
          }

          if (*&v195[16] && v198)
          {
            (*(**&v195[16] + 40))(v86);
          }
        }
      }

      re::internal::GeomAttributeFaceVaryingSubmesh::operator=(&v204, v199);
      re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh(v199, v110);
      if (v181 && v185)
      {
        (*(*v181 + 40))();
      }

      v109 = *&v203[0];
      if (*&v203[0] && *&v203[2])
      {
        goto LABEL_211;
      }

LABEL_212:
      updated = re::internal::GeomAttributeManager::updateFaceVaryingAttributeSubmesh(v7 + 6, *(v176 + 1), &v204);
      if (v57)
      {
        v16 = updated;
        *&v197[2] = 0;
        memset(v195, 0, sizeof(v195));
        *&v193[2] = 0;
        memset(v191, 0, sizeof(v191));
        re::DynamicArray<float>::resize(v195, v57);
        re::DynamicArray<float>::resize(v191, v57);
        if ((*(*v16 + 16))(v16) != v59 + v57)
        {
          goto LABEL_306;
        }

        v114 = 0;
        k = *&v195[16];
        v115 = *&v197[2];
        v2 = *&v191[16];
        v116 = *&v193[2];
        do
        {
          if (k == v114)
          {
            goto LABEL_245;
          }

          *(v115 + 4 * v114) = v114;
          if (v2 == v114)
          {
            goto LABEL_249;
          }

          *(v116 + 4 * v114) = v59 + v114;
          ++v114;
        }

        while (v57 != v114);
        (*(*v174 + 40))(v174, v16, v57);
        if (*v191)
        {
          v112 = *&v193[2];
          if (*&v193[2])
          {
            (*(**v191 + 40))();
          }
        }

        if (*v195)
        {
          v112 = *&v197[2];
          if (*&v197[2])
          {
            (*(**v195 + 40))();
          }
        }
      }

      re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh(&v204, v112);
      result = v187;
      if (v187)
      {
        if (v190)
        {
          result = (*(*v187 + 40))();
        }
      }

      v50 = v175 + 1;
      if (v175 + 1 == v173)
      {
        return result;
      }
    }

    v185 = 0;
    v182 = 0;
    v183 = 0;
    v181 = 0;
    v184 = 0;
    memset(v203, 0, sizeof(v203));
    re::DynamicArray<float>::resize(&v181, (v60 + k));
    v180 = 0;
    if (v60)
    {
      v88 = 0;
      while (1)
      {
        LODWORD(v199[0]) = v88;
        v89 = *(v38 + 60);
        if (v89 != 2)
        {
          break;
        }

        v95 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v38 + 64), v199);
        if (v95 != -1)
        {
          v94 = (*(v38 + 72) + 8 * v95 + 4);
LABEL_145:
          v96 = *v94;
          goto LABEL_148;
        }

        v96 = -1;
LABEL_148:
        v97 = *(v38 + 60);
        v179 = v96;
        v88 = v180;
        LODWORD(v199[0]) = v180;
        if (v97 != 2)
        {
          if (v97 != 1)
          {
            if (v97)
            {
              goto LABEL_313;
            }

            v90 = *(v38 + 64);
            goto LABEL_152;
          }

          v93 = *(v38 + 80);
          v92 = v180;
          goto LABEL_155;
        }

        v98 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v38 + 64), v199);
        if (v98 == -1)
        {
LABEL_159:
          v88 = -1;
          goto LABEL_160;
        }

        v88 = *(*(v38 + 72) + 8 * v98 + 4);
LABEL_160:
        v16 = v180;
        v2 = v183;
        if (v183 <= v180)
        {
          goto LABEL_253;
        }

        *(v185 + 4 * v180) = v88;
        re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::addNew(v203, &v179, &v180);
        v88 = v180 + 1;
        v180 = v88;
        if (v88 >= v60)
        {
          goto LABEL_162;
        }
      }

      if (v89 != 1)
      {
        if (*(v38 + 60))
        {
          goto LABEL_308;
        }

        v90 = *(v38 + 64);
        if (v90 <= v88)
        {
          v91 = -1;
        }

        else
        {
          v91 = v88;
        }

        v179 = v91;
LABEL_152:
        if (v90 <= v88)
        {
          v88 = -1;
        }

        goto LABEL_160;
      }

      v92 = v88;
      v93 = *(v38 + 80);
      if (v93 <= v88)
      {
        v179 = -1;
        LODWORD(v199[0]) = v88;
LABEL_155:
        if (v93 <= v92)
        {
          goto LABEL_159;
        }

        v88 = *(*(v38 + 96) + 4 * v92);
        goto LABEL_160;
      }

      v94 = (*(v38 + 96) + 4 * v88);
      goto LABEL_145;
    }

LABEL_162:
    if (!k)
    {
LABEL_177:
      re::GeomIndexMap::GeomIndexMap(v195, &v181);
      re::GeomIndexMap::GeomIndexMap(v191, v203);
      LODWORD(v199[0]) = v186;
      *(&v199[0] + 1) = v187;
      v103 = v188;
      v187 = 0;
      v188 = 0uLL;
      v199[1] = v103;
      *(&v199[2] + 1) = v190;
      v190 = 0;
      LODWORD(v199[2]) = 1;
      v186 = 0;
      v189 += 2;
      re::GeomIndexMap::GeomIndexMap(&v200, v195);
      re::GeomIndexMap::GeomIndexMap(v202, v191);
      v4 = v172;
      v7 = v178;
      if (v191[12])
      {
        if (v191[12] == 2)
        {
          v105.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v191[16]);
        }

        else
        {
          if (v191[12] != 1)
          {
            goto LABEL_314;
          }

          if (*&v191[16])
          {
            v104 = v194;
            if (v194)
            {
              (*(**&v191[16] + 40))();
            }
          }
        }
      }

      if (v195[12])
      {
        if (v195[12] == 2)
        {
          re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v195[16]);
        }

        else
        {
          if (v195[12] != 1)
          {
            goto LABEL_315;
          }

          if (*&v195[16] && v198)
          {
            (*(**&v195[16] + 40))(v105);
          }
        }
      }

      re::internal::GeomAttributeFaceVaryingSubmesh::operator=(&v204, v199);
      re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh(v199, v107);
      v108.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v203);
      v109 = v181;
      if (!v181 || !v185)
      {
        goto LABEL_212;
      }

LABEL_211:
      (*(*v109 + 40))(v109, v108);
      goto LABEL_212;
    }

    v16 = 0;
    k = k;
    while (1)
    {
      LODWORD(v199[0]) = v16;
      v99 = *(v55 + 60);
      if (v99 == 2)
      {
        v101 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(v55 + 8, v199);
        if (v101 == -1)
        {
          goto LABEL_174;
        }

        v100 = *(*(v55 + 9) + 8 * v101 + 4);
      }

      else
      {
        if (v99 != 1)
        {
          if (*(v55 + 60))
          {
            goto LABEL_309;
          }

          if (v16 >= v55[16])
          {
            v100 = -1;
          }

          else
          {
            v100 = v16;
          }

          goto LABEL_175;
        }

        if (*(v55 + 10) <= v16)
        {
LABEL_174:
          v100 = -1;
          goto LABEL_175;
        }

        v100 = *(*(v55 + 12) + 4 * v16);
      }

LABEL_175:
      v102 = v100 + v8;
      v180 = v102;
      v2 = (v60 + v16);
      v38 = v183;
      if (v183 <= v2)
      {
        goto LABEL_257;
      }

      *(v185 + 4 * v2) = v102;
      LODWORD(v199[0]) = v60 + v16;
      re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::addNew(v203, &v180, v199);
      if (k == ++v16)
      {
        goto LABEL_177;
      }
    }
  }

  return result;
}

uint64_t re::anonymous namespace::addAttributeAndCopyValuesHelper(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  result = re::internal::GeomAttributeManager::attributeCount(a1 + 64, a3);
  if (!result)
  {
    return result;
  }

  v13 = result;
  v14 = 0;
  while (1)
  {
    v15 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 64), v14, v9);
    result = re::internal::GeomAttributeManager::attributeByName((a2 + 48), *(v15 + 8));
    if (!result)
    {
      v17 = *(v15 + 16);
      if (v17 == 3)
      {
        goto LABEL_15;
      }

      result = re::internal::GeomAttributeManager::addAttribute((a2 + 48), *(v15 + 8), v17, *(v15 + 17));
      v16 = result;
      if (!result)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }

    v16 = result;
    if (*(result + 17) != *(v15 + 17))
    {
      break;
    }

    if (*(result + 16) != *(v15 + 16))
    {
      goto LABEL_14;
    }

LABEL_9:
    if (a4)
    {
      result = (*(*v15 + 40))(v15, v16, a4, a5, a6);
    }

    v14 = (v14 + 1);
    if (v13 == v14)
    {
      return result;
    }
  }

  re::internal::assertLog(4, result, "assertion failure: '%s' (%s:line %i) ", "dstAttribute->type() == srcAttribute->type()", "addAttributeAndCopyValuesHelper", 32);
  _os_crash("assertion failure: (dstAttribute->type() == srcAttribute->type()) ");
  __break(1u);
LABEL_14:
  re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) ", "dstAttribute->rate() == srcAttribute->rate()", "addAttributeAndCopyValuesHelper", 33);
  _os_crash("assertion failure: (dstAttribute->rate() == srcAttribute->rate()) ");
  __break(1u);
LABEL_15:
  re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) ", "dstAttribute != nullptr", "addAttributeAndCopyValuesHelper", 36);
  result = _os_crash("assertion failure: (dstAttribute != nullptr) ");
  __break(1u);
  return result;
}

void re::internal::compareMeshes(re::internal *this@<X0>, int8x16_t **a2@<X1>, const re::GeomMesh *a3@<X2>, float a4@<S0>, uint64_t a5@<X8>)
{
  v5 = a3;
  v77 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v10 = re::internal::GeomAttributeManager::attributeByName((this + 64), a3);
    v11 = re::internal::GeomAttributeManager::attributeByName((a2 + 8), v5);
    if ((v10 != 0) != (v11 != 0))
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      bzero((a5 + 16), 0x2C8uLL);
      re::internal::GeomBaseMesh::GeomBaseMesh((a5 + 16));
      *(a5 + 728) = 0;

      re::GeomMesh::copy(a2, a5);
      return;
    }

    v5 = v11;
    if (v10)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    v12 = !v13;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  re::GeomMesh::GeomMesh(a5, 0);
  v14 = &v57;
  bzero(&v57, 0x2D0uLL);
  re::DynamicArray<re::BlendNode>::setCapacity(&v59, 1uLL);
  ++v60;
  re::internal::GeomAttributeManager::GeomAttributeManager(v62);
  re::internal::GeomAttributeManager::addAttribute(v62, "vertexPosition", 1, 7);
  if (v12)
  {
    v56 = 0;
    v54 = 0;
    v53[0] = 0;
    v53[1] = 0;
    v55 = 0;
    v52 = 0;
    v50 = 0;
    v49[0] = 0;
    v49[1] = 0;
    v51 = 0;
    v48 = 0;
    v46 = 0;
    v45[0] = 0;
    v45[1] = 0;
    v47 = 0;
    v44 = 0;
    v42 = 0;
    v41[0] = 0;
    v41[1] = 0;
    v43 = 0;
    v40 = 0;
    v38 = 0;
    v37[0] = 0;
    v37[1] = 0;
    v39 = 0;
    v36 = 0;
    v34 = 0;
    v33[0] = 0;
    v33[1] = 0;
    v35 = 0;
    v16 = v54;
    v17 = v42;
    if (v54 | v42)
    {
      v18 = 0;
      v19 = 0;
      while (1)
      {
        re::GeomMesh::GeomMesh(v32, 0);
        re::GeomMesh::GeomMesh(v31, 0);
        if (v19 == v16)
        {
          break;
        }

        v20 = v38;
        if (v38 <= v18)
        {
          v63 = 0;
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v64 = 0u;
          v24 = MEMORY[0x1E69E9C10];
          v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v69 = 136315906;
          v70 = "operator[]";
          v71 = 1024;
          if (v25)
          {
            v26 = 3;
          }

          else
          {
            v26 = 2;
          }

          v72 = 789;
          v73 = 2048;
          v74 = v18;
          v75 = 2048;
          v76 = v20;
          _os_log_send_and_compose_impl(v26, &v63, &v64, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v69, 38, v30, v31[0]);
          _os_crash_msg();
          __break(1u);
LABEL_56:
          v63 = 0;
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v64 = 0u;
          v27 = MEMORY[0x1E69E9C10];
          v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v69 = 136315906;
          v70 = "operator[]";
          v71 = 1024;
          if (v28)
          {
            v29 = 3;
          }

          else
          {
            v29 = 2;
          }

          v72 = 789;
          v73 = 2048;
          v74 = v20;
          v75 = 2048;
          v76 = v14;
          _os_log_send_and_compose_impl(v29, &v63, &v64, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v69, 38, v30, v31[0]);
          _os_crash_msg();
          __break(1u);
        }

        v20 = v19;
        v14 = v50;
        if (v50 <= v19)
        {
          goto LABEL_56;
        }

        v21 = *(v40 + 4 * v18);
        v22 = *(v52 + 4 * v19);
        if (v21 < v22)
        {
          break;
        }

        if (v18 != v17 && v22 >= v21)
        {
          re::GeomMesh::operator=(v32, &v64);
          re::GeomMesh::~GeomMesh(&v64);
          re::GeomMesh::operator=(v31, &v64);
          re::GeomMesh::~GeomMesh(&v64);
          ++v19;
          goto LABEL_21;
        }

        re::GeomMesh::operator=(v32, &v64);
        re::GeomMesh::~GeomMesh(&v64);
        ++v19;
LABEL_22:
        re::GeomMeshBuilder::appendMesh(&v57, &v64);
        re::GeomMesh::~GeomMesh(&v64);
        re::GeomMesh::~GeomMesh(v31);
        re::GeomMesh::~GeomMesh(v32);
        if (v19 >= v16 && v18 >= v17)
        {
          goto LABEL_30;
        }
      }

      re::GeomMesh::operator=(v31, &v64);
      re::GeomMesh::~GeomMesh(&v64);
LABEL_21:
      ++v18;
      goto LABEL_22;
    }

LABEL_30:
    if (v33[0] && v36)
    {
      (*(*v33[0] + 40))();
    }

    if (v37[0] && v40)
    {
      (*(*v37[0] + 40))();
    }

    if (v41[0] && v44)
    {
      (*(*v41[0] + 40))();
    }

    if (v45[0] && v48)
    {
      (*(*v45[0] + 40))();
    }

    if (v49[0] && v52)
    {
      (*(*v49[0] + 40))();
    }

    if (v53[0] && v56)
    {
      (*(*v53[0] + 40))();
    }
  }

  else
  {
    re::GeomMeshBuilder::appendMesh(&v57, v32);
    re::GeomMesh::~GeomMesh(v32);
  }

  v23 = re::GeomMesh::operator=(a5, &v58);
  re::GeomMesh::setName(v23, v57);
  re::GeomMesh::freeName(&v57);
  re::GeomMesh::freeName(&v57);
  re::internal::GeomAttributeManager::~GeomAttributeManager(v62);
  if (v59 && v61)
  {
    (*(*v59 + 40))();
  }
}

void re::anonymous namespace::sortFacesByMaterial(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = *MEMORY[0x1E69E9840];
  if (a2 && (v9 = a2, v10 = a1, *(a1 + 40)))
  {
    re::DynamicArray<float>::resize(a5, *(a1 + 40));
    v12 = *(v10 + 40);
    if (*(v10 + 40))
    {
      v13 = 0;
      v10 = *(a5 + 16);
      v14 = *(a5 + 32);
      while (v10 != v13)
      {
        *(v14 + 4 * v13) = v13;
        if (v12 == ++v13)
        {
          goto LABEL_7;
        }
      }

      v35 = 0;
      v50 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v23 = MEMORY[0x1E69E9C10];
      v38 = 136315906;
      v39 = "operator[]";
      v40 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }

      v41 = 789;
      v42 = 2048;
      v43 = v10;
      v44 = 2048;
      v45 = v10;
      _os_log_send_and_compose_impl(v24, &v35, &v46, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v38, 38, v34);
      _os_crash_msg();
      __break(1u);
LABEL_28:
      v37 = 0;
      v50 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v25 = MEMORY[0x1E69E9C10];
      v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v38 = 136315906;
      v39 = "operator[]";
      v40 = 1024;
      if (v26)
      {
        v27 = 3;
      }

      else
      {
        v27 = 2;
      }

      v41 = 613;
      v42 = 2048;
      v43 = v5;
      v44 = 2048;
      v45 = v6;
      _os_log_send_and_compose_impl(v27, &v37, &v46, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v38, 38, v34, v35);
      _os_crash_msg();
      __break(1u);
      goto LABEL_32;
    }

LABEL_7:
    v15 = (*(*v9 + 16))(v9);
    if (v15)
    {
      if (!*(v9 + 40))
      {
LABEL_32:
        v35 = 0;
        v50 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v28 = MEMORY[0x1E69E9C10];
        v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v38 = 136315906;
        v39 = "operator[]";
        v40 = 1024;
        if (v29)
        {
          v30 = 3;
        }

        else
        {
          v30 = 2;
        }

        v41 = 797;
        v42 = 2048;
        v43 = 0;
        v44 = 2048;
        v45 = 0;
        _os_log_send_and_compose_impl(v30, &v35, &v46, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v38, 38, v34);
        _os_crash_msg();
        __break(1u);
LABEL_36:
        v37 = 0;
        v50 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v31 = MEMORY[0x1E69E9C10];
        v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v38 = 136315906;
        v39 = "operator[]";
        v40 = 1024;
        if (v32)
        {
          v33 = 3;
        }

        else
        {
          v33 = 2;
        }

        v41 = 613;
        v42 = 2048;
        v43 = v10;
        v44 = 2048;
        v45 = v9;
        _os_log_send_and_compose_impl(v33, &v37, &v46, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v38, 38, v34, v35);
        _os_crash_msg();
        __break(1u);
      }

      v16 = *(v9 + 56);
      v15 = (*(*v9 + 16))(v9);
    }

    else
    {
      v16 = 0;
    }

    v35 = v16;
    v36 = v15;
    v17 = *(a5 + 32);
    v18 = *(a5 + 16);
    *&v46 = &v35;
    v19 = 126 - 2 * __clz(v18);
    if (v18)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    *(a3 + 16) = 0;
    ++*(a3 + 24);
    *(a4 + 16) = 0;
    ++*(a4 + 24);
    v21 = *(a5 + 16);
    if (v21)
    {
      v10 = **(a5 + 32);
      v9 = v36;
      if (v36 <= v10)
      {
        goto LABEL_36;
      }

      v9 = 0;
      v10 = *(v35 + 4 * v10);
      do
      {
        v5 = *(*(a5 + 32) + 4 * v9);
        v6 = v36;
        if (v36 <= v5)
        {
          goto LABEL_28;
        }

        v22 = *(v35 + 4 * v5);
        if (v22 != v10)
        {
          LODWORD(v46) = v9;
          re::DynamicArray<int>::add(a4, &v46);
          LODWORD(v46) = v10;
          re::DynamicArray<int>::add(a3, &v46);
          v21 = *(a5 + 16);
          v10 = v22;
        }

        ++v9;
      }

      while (v9 < v21);
      LODWORD(v46) = v21;
      re::DynamicArray<int>::add(a4, &v46);
      LODWORD(v46) = v10;
      re::DynamicArray<int>::add(a3, &v46);
    }
  }

  else
  {
    re::DynamicArray<float>::resize(a4, 0);
    *(a5 + 16) = 0;
    ++*(a5 + 24);
  }
}

uint64_t re::anonymous namespace::makeMeshFromMaterial(__int128 *a1, unint64_t a2, unsigned int a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v37 = 0;
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  v34 = 0;
  v31 = 0;
  memset(v32, 0, sizeof(v32));
  v33 = 0;
  v28[1] = 0;
  v29 = 0;
  v28[0] = 0;
  v30 = 0;
  if (a3)
  {
    v11 = a3 - 1;
    if (a5 <= v11)
    {
LABEL_27:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, a5);
      result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
      __break(1u);
      return result;
    }

    v12 = *(a4 + 4 * v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = a3;
  if (a5 <= a3)
  {
LABEL_26:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v13, a5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
    goto LABEL_27;
  }

  v14 = *(a4 + 4 * a3);
  if (v14 != v12)
  {
    re::DynamicArray<int>::setCapacity(v28, v14 - v12);
  }

  if (v14 > v12)
  {
    if (a7 <= v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = a7;
    }

    v16 = (a6 + 4 * v12);
    v17 = v14 - v12;
    v18 = v15 - v12;
    while (v18)
    {
      re::DynamicArray<int>::add(v28, v16++);
      --v18;
      if (!--v17)
      {
        goto LABEL_15;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v15, a7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_26;
  }

LABEL_15:
  v27[0] = v31;
  v27[1] = v29;
  v26[0] = 0;
  v26[1] = 0;
  re::makeMeshFromFaces(a2, v27, v26, v35, v32, a1);
  if (v28[0] && v31)
  {
    (*(*v28[0] + 40))();
  }

  if (v32[0] && v34)
  {
    (*(*v32[0] + 40))();
  }

  result = v35[0];
  if (v35[0])
  {
    if (v37)
    {
      return (*(*v35[0] + 40))(v35[0]);
    }
  }

  return result;
}

void re::anonymous namespace::computeErrorMesh(re::_anonymous_namespace_ *this, const re::GeomMesh *a2, const re::GeomMesh *a3, float a4)
{
  v5 = a3;
  v6 = this;
  v131 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 10) || !*(a3 + 10))
  {
    *this = 0;
    *(this + 2) = 0;
    bzero(this + 16, 0x2C8uLL);
    re::internal::GeomBaseMesh::GeomBaseMesh((v6 + 16));
    *(v6 + 91) = 0;

    re::GeomMesh::copy(v5, v6);
    return;
  }

  v102 = 0;
  v97[0] = 0;
  v98 = 0;
  v99 = 0;
  v100 = 0;
  v101 = 0;
  re::GeomMeshBVHTree::init(v97, a2);
  v8 = re::GeomMesh::accessVertexPositions(v5);
  v96 = 0;
  v93[1] = 0;
  v94 = 0;
  v92 = 0;
  v93[0] = 0;
  v95 = 0;
  v89[1] = 0;
  v90 = 0;
  v89[0] = 0;
  v91 = 0;
  v10 = *(v5 + 5);
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = v8;
  v12 = v9;
  v13 = 0;
  v4 = &v126;
  do
  {
    v14 = 0uLL;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    if (v10 <= v13)
    {
      goto LABEL_86;
    }

    v15 = 0;
    v117 = *(*(v5 + 7) + 16 * v13);
    v16 = HIDWORD(v117);
    if (HIDWORD(v117) == -1)
    {
      v17 = 3;
    }

    else
    {
      v17 = 4;
    }

    v18 = &v126;
    do
    {
      v10 = *(&v117 + v15);
      if (v10 >= v12)
      {
        v103 = 0;
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        *v104 = 0u;
        v56 = MEMORY[0x1E69E9C10];
        v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v118 = 136315906;
        v119 = "operator[]";
        v120 = 1024;
        if (v57)
        {
          v58 = 3;
        }

        else
        {
          v58 = 2;
        }

        v121 = 613;
        v122 = 2048;
        v123 = v10;
        v124 = 2048;
        v125 = v12;
        _os_log_send_and_compose_impl(v58, &v103, v104, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v118, 38, v85, v87);
        _os_crash_msg();
        __break(1u);
LABEL_86:
        *&v117 = 0;
        v107 = v14;
        v108 = v14;
        v105 = v14;
        v106 = v14;
        *v104 = v14;
        v59 = MEMORY[0x1E69E9C10];
        v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v118 = 136315906;
        v119 = "operator[]";
        v120 = 1024;
        if (v60)
        {
          v61 = 3;
        }

        else
        {
          v61 = 2;
        }

        v121 = 797;
        v122 = 2048;
        v123 = v13;
        v124 = 2048;
        v125 = v10;
        _os_log_send_and_compose_impl(v61, &v117, v104, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v118, 38, v85, v87);
        _os_crash_msg();
        __break(1u);
        goto LABEL_90;
      }

      *v18++ = *(v11 + 16 * v10);
      ++v15;
    }

    while (v17 != v15);
    if (v16 == -1)
    {
    }

    else
    {
    }

    ++v13;
    v10 = *(v5 + 5);
  }

  while (v13 < v10);
LABEL_16:
  re::GeomMesh::GeomMesh(v6, 0);
  v19 = v94;
  if (v94 | v90)
  {
    v20 = v94 / 3;
    v88 = v90;
    v21 = v90 >> 2;
    bzero(v104, 0x2D0uLL);
    re::DynamicArray<re::BlendNode>::setCapacity(&v105, 1uLL);
    ++DWORD2(v106);
    re::internal::GeomAttributeManager::GeomAttributeManager((&v107 + 8));
    re::internal::GeomAttributeManager::addAttribute((&v107 + 8), "vertexPosition", 1, 7);
    v86 = v21;
    v23 = (v21 + v20);
    if (v23 < v106)
    {
      v24 = v116;
      if (v116)
      {
        v25 = 0;
        do
        {
          v26 = re::internal::GeomAttributeContainer::attributeByIndex(v115, v25);
          re::internal::accessFaceVaryingAttributeSubmesh(v26, v27);
          ++v25;
        }

        while (v24 != v25);
      }
    }

    re::DynamicArray<re::GeomCell4>::resize(&v105, v23);
    v112 = v23;
    if (v113)
    {
      v28 = v114;
      v29 = 8 * v113;
      do
      {
        v30 = *v28++;
        (*(*v30 + 80))(v30, v112);
        v29 -= 8;
      }

      while (v29);
    }

    LODWORD(v104[1]) = v90 + v94;
    v109 = v90 + v94;
    if (v110)
    {
      v31 = v111;
      v32 = 8 * v110;
      do
      {
        v33 = *v31++;
        (*(*v33 + 80))(v33, v109);
        v32 -= 8;
      }

      while (v32);
    }

    if (v20)
    {
      v12 = 0;
      v5 = v106;
      v10 = v104;
      while (v5 > v12)
      {
        v34 = (v107 + 16 * v12);
        v35 = *v34;
        v36 = v34[3];
        if (v35 != -1 && v36 == -1)
        {
          v4 = v116;
          if (v116)
          {
            v38 = 0;
            do
            {
              v39 = re::internal::GeomAttributeContainer::attributeByIndex(v115, v38);
              re::internal::accessFaceVaryingAttributeSubmesh(v39, v40);
              ++v38;
            }

            while (v4 != v38);
            v5 = v106;
          }
        }

        if (v5 <= v12)
        {
          goto LABEL_94;
        }

        v41 = v107 + 16 * v12;
        *v41 = 3 * v12;
        *(v41 + 4) = vadd_s32(vdup_n_s32(3 * v12), 0x200000001);
        *(v41 + 12) = -1;
        if (++v12 == v20)
        {
          goto LABEL_41;
        }
      }

LABEL_90:
      *&v117 = 0;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v126 = 0u;
      v62 = MEMORY[0x1E69E9C10];
      v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v118 = 136315906;
      v119 = "operator[]";
      v120 = 1024;
      if (v63)
      {
        v64 = 3;
      }

      else
      {
        v64 = 2;
      }

      v121 = 797;
      v122 = 2048;
      v123 = v12;
      v124 = 2048;
      v125 = v5;
      _os_log_send_and_compose_impl(v64, &v117, &v126, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v118, 38, v86, v88);
      _os_crash_msg();
      __break(1u);
LABEL_94:
      *&v117 = 0;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v126 = 0u;
      v65 = MEMORY[0x1E69E9C10];
      v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v118 = 136315906;
      v119 = "operator[]";
      v120 = 1024;
      if (v66)
      {
        v67 = 3;
      }

      else
      {
        v67 = 2;
      }

      v121 = 789;
      v122 = 2048;
      v123 = v12;
      v124 = 2048;
      v125 = v5;
      _os_log_send_and_compose_impl(v67, &v117, &v126, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v118, 38, v86, v88);
      _os_crash_msg();
      __break(1u);
LABEL_98:
      *&v117 = 0;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v126 = 0u;
      v68 = MEMORY[0x1E69E9C10];
      v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v118 = 136315906;
      v119 = "operator[]";
      v120 = 1024;
      if (v69)
      {
        v70 = 3;
      }

      else
      {
        v70 = 2;
      }

      v121 = 797;
      v122 = 2048;
      v123 = v12;
      v124 = 2048;
      v125 = v5;
      _os_log_send_and_compose_impl(v70, &v117, &v126, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v118, 38, v86, v88);
      _os_crash_msg();
      __break(1u);
LABEL_102:
      *&v117 = 0;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v126 = 0u;
      v71 = MEMORY[0x1E69E9C10];
      v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v118 = 136315906;
      v119 = "operator[]";
      v120 = 1024;
      if (v72)
      {
        v73 = 3;
      }

      else
      {
        v73 = 2;
      }

      v121 = 789;
      v122 = 2048;
      v123 = v12;
      v124 = 2048;
      v125 = v5;
      _os_log_send_and_compose_impl(v73, &v117, &v126, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v118, 38, v86, v88);
      _os_crash_msg();
      __break(1u);
LABEL_106:
      *&v117 = 0;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v126 = 0u;
      v74 = MEMORY[0x1E69E9C10];
      v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v118 = 136315906;
      *(v4->n128_u64 + 4) = "operator[]";
      v120 = 1024;
      if (v75)
      {
        v76 = 3;
      }

      else
      {
        v76 = 2;
      }

      *(&v4->n128_u32[3] + 2) = 789;
      v122 = 2048;
      *(v4[1].n128_u64 + 4) = v5;
      v124 = 2048;
      *(&v4[1].n128_u64[1] + 6) = v10;
      _os_log_send_and_compose_impl(v76, &v117, &v126, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v118, 38, v86, v88);
      _os_crash_msg();
      __break(1u);
LABEL_110:
      *&v117 = 0;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v126 = 0u;
      v77 = MEMORY[0x1E69E9C10];
      v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v118 = 136315906;
      *(v4->n128_u64 + 4) = "operator[]";
      v120 = 1024;
      if (v78)
      {
        v79 = 3;
      }

      else
      {
        v79 = 2;
      }

      *(&v4->n128_u32[3] + 2) = 621;
      v122 = 2048;
      *(v4[1].n128_u64 + 4) = v12;
      v124 = 2048;
      *(&v4[1].n128_u64[1] + 6) = v12;
      _os_log_send_and_compose_impl(v79, &v117, &v126, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v118, 38, v86, v88);
      _os_crash_msg();
      __break(1u);
LABEL_114:
      *&v117 = 0;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v126 = 0u;
      v6 = MEMORY[0x1E69E9C10];
      v80 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v118 = 136315906;
      *(v4->n128_u64 + 4) = "operator[]";
      v120 = 1024;
      if (v80)
      {
        v81 = 3;
      }

      else
      {
        v81 = 2;
      }

      *(&v4->n128_u32[3] + 2) = 789;
      v122 = 2048;
      *(v4[1].n128_u64 + 4) = v5;
      v124 = 2048;
      *(&v4[1].n128_u64[1] + 6) = v12;
      _os_log_send_and_compose_impl(v81, &v117, &v126, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v118, 38, v86, v88);
      _os_crash_msg();
      __break(1u);
LABEL_118:
      *&v117 = 0;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v126 = 0u;
      v82 = MEMORY[0x1E69E9C10];
      v83 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v118 = 136315906;
      *(v4->n128_u64 + 4) = "operator[]";
      v120 = 1024;
      if (v83)
      {
        v84 = 3;
      }

      else
      {
        v84 = 2;
      }

      *(&v4->n128_u32[3] + 2) = 621;
      v122 = 2048;
      *(v4[1].n128_u64 + 4) = v12;
      v124 = 2048;
      *(&v4[1].n128_u64[1] + 6) = v6;
      _os_log_send_and_compose_impl(v84, &v117, &v126, 80, &dword_1E1C61000, v82, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v118, 38, v86, v88);
      _os_crash_msg();
      __break(1u);
    }

LABEL_41:
    if (v86)
    {
      v42 = 0;
      v10 = (v88 >> 2);
      v5 = v106;
      do
      {
        v12 = (v42 + v20);
        if (v5 <= v12)
        {
          goto LABEL_98;
        }

        v43 = (v107 + 16 * v12);
        v44 = *v43;
        v45 = v43[3];
        if (v44 != -1 && v45 != -1)
        {
          v4 = v116;
          if (v116)
          {
            v47 = 0;
            do
            {
              v48 = re::internal::GeomAttributeContainer::attributeByIndex(v115, v47);
              re::internal::accessFaceVaryingAttributeSubmesh(v48, v49);
              ++v47;
            }

            while (v4 != v47);
            v5 = v106;
          }
        }

        if (v5 <= v12)
        {
          goto LABEL_102;
        }

        v50 = v19 + 4 * v42;
        v51 = v107 + 16 * v12;
        *v51 = v50;
        *(v51 + 4) = vadd_s32(vdup_n_s32(v50), 0x200000001);
        *(v51 + 12) = v50 + 3;
      }

      while (++v42 != v10);
    }

    v52 = re::GeomMesh::operator=(v6, &v104[1]);
    re::GeomMesh::setName(v52, v104[0]);
    re::GeomMesh::freeName(v104);
    v53 = re::GeomMesh::modifyVertexPositions(v6);
    LODWORD(v6) = v54;
    v4 = &v118;
    if (v19)
    {
      v5 = 0;
      v12 = v54;
      do
      {
        v10 = v94;
        if (v94 <= v5)
        {
          goto LABEL_106;
        }

        if (v5 == v54)
        {
          goto LABEL_110;
        }

        *(v53 + 16 * v5) = *(v96 + 16 * v5);
        v5 = (v5 + 1);
      }

      while (v5 != v19);
    }

    if (v88)
    {
      v5 = 0;
      LODWORD(v55) = v54 - v19;
      if (v54 >= v19)
      {
        v55 = v55;
      }

      else
      {
        v55 = 0;
      }

      do
      {
        v12 = v90;
        if (v90 <= v5)
        {
          goto LABEL_114;
        }

        v12 = v5 + v19;
        if (v5 == v55)
        {
          goto LABEL_118;
        }

        *(v53 + 16 * v12) = *(v92 + 16 * v5);
        v5 = (v5 + 1);
      }

      while (v5 != v88);
    }

    re::GeomMesh::freeName(v104);
    re::internal::GeomAttributeManager::~GeomAttributeManager((&v107 + 8));
    if (v105 && v107)
    {
      (*(*v105 + 40))();
    }
  }

  if (v89[0] && v92)
  {
    (*(*v89[0] + 40))();
  }

  if (v93[0] && v96)
  {
    (*(*v93[0] + 40))();
  }

  if (v98)
  {
    if (v102)
    {
      (*(*v98 + 40))();
    }
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,re::anonymous namespace::sortFacesByMaterial(re::GeomMesh const&,re::GeomAttribute const*,re::DynamicArray<int> &,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned int> &)::$_0 &,unsigned int *,false>(uint64_t result, int32x2_t *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  v125 = a2;
  while (1)
  {
    v9 = v10;
    v11 = (a2 - v10) >> 2;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      if (result)
      {
        v79 = v10->i32[0];
        v10->i32[0] = a2[-1].i32[1];
LABEL_105:
        a2[-1].i32[1] = v79;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v82 = (v10 + 4);
      v84 = v10 == a2 || v82 == a2;
      if (a5)
      {
        if (!v84)
        {
          v85 = 0;
          v86 = v10;
          do
          {
            v88 = v86->i32[0];
            v87 = v86->u32[1];
            v86 = v82;
            if (result)
            {
              v89 = v86->i32[0];
              v90 = v85;
              while (1)
              {
                *(&v10->i32[1] + v90) = *(v10->i32 + v90);
                if (!v90)
                {
                  break;
                }

                v90 -= 4;
                if ((result & 1) == 0)
                {
                  v91 = (v10 + v90 + 4);
                  goto LABEL_127;
                }
              }

              v91 = v10;
LABEL_127:
              v91->i32[0] = v89;
            }

            v82 = (v86 + 4);
            v85 += 4;
          }

          while (&v86->u8[4] != a2);
        }
      }

      else if (!v84)
      {
        do
        {
          v120 = *v9;
          v119 = *(v9 + 4);
          v9 = v82;
          if (result)
          {
            v121 = *v9;
            v122 = v9;
            do
            {
              v123 = v122;
              v124 = *--v122;
              *v123 = v124;
            }

            while ((result & 1) != 0);
            *v122 = v121;
          }

          v82 = (v9 + 4);
        }

        while ((v9 + 4) != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v92 = (v11 - 2) >> 1;
        v126 = v92;
        do
        {
          v93 = v92;
          if (v126 >= v92)
          {
            v94 = (2 * v92) | 1;
            v95 = (v9 + 4 * v94);
            {
              ++v95;
              v94 = 2 * v93 + 2;
            }

            v96 = (v9 + 4 * v93);
            if ((result & 1) == 0)
            {
              v97 = *v96;
              do
              {
                v98 = v95;
                *v96 = *v95;
                if (v126 < v94)
                {
                  break;
                }

                v99 = (2 * v94) | 1;
                v95 = (v9 + 4 * v99);
                v100 = 2 * v94 + 2;
                {
                  ++v95;
                  v99 = v100;
                }

                v96 = v98;
                v94 = v99;
              }

              while (!result);
              *v98 = v97;
            }
          }

          v92 = v93 - 1;
        }

        while (v93);
        v101 = v125;
        do
        {
          v102 = v101;
          v103 = 0;
          v127 = *v9;
          v104 = v9;
          do
          {
            v105 = &v104[v103];
            v106 = v105 + 1;
            v107 = (2 * v103) | 1;
            v108 = 2 * v103 + 2;
            if (v108 >= v11)
            {
              v103 = (2 * v103) | 1;
            }

            else
            {
              v110 = v105[2];
              v109 = v105 + 2;
              if (result)
              {
                v106 = v109;
                v103 = v108;
              }

              else
              {
                v103 = v107;
              }
            }

            *v104 = *v106;
            v104 = v106;
          }

          while (v103 <= ((v11 - 2) >> 1));
          v101 = (v102 - 4);
          if (v106 == &v102[-1].u8[4])
          {
            *v106 = v127;
          }

          else
          {
            *v106 = v101->i32[0];
            v101->i32[0] = v127;
            v111 = (v106 - v9 + 4) >> 2;
            v112 = v111 < 2;
            v113 = v111 - 2;
            if (!v112)
            {
              v114 = v113 >> 1;
              v115 = (v9 + 4 * (v113 >> 1));
              if (result)
              {
                v116 = *v106;
                do
                {
                  v117 = v115;
                  *v106 = *v115;
                  if (!v114)
                  {
                    break;
                  }

                  v114 = (v114 - 1) >> 1;
                  v115 = (v9 + 4 * v114);
                  v106 = v117;
                }

                while ((result & 1) != 0);
                *v117 = v116;
              }
            }
          }

          v112 = v11-- <= 2;
        }

        while (!v112);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *a3;
    if (v11 < 0x81)
    {
      if (v17)
      {
        v19 = *(v9 + 4 * v12);
        if (v18)
        {
          *(v9 + 4 * v12) = a2[-1].i32[1];
          a2[-1].i32[1] = v19;
        }

        else
        {
          *(v9 + 4 * v12) = *v9;
          *v9 = v19;
          {
            v31 = *v9;
            *v9 = a2[-1].i32[1];
            a2[-1].i32[1] = v31;
          }
        }
      }

      else if (v18)
      {
        v22 = *v9;
        *v9 = a2[-1].i32[1];
        a2[-1].i32[1] = v22;
        {
          v23 = *(v9 + 4 * v12);
          *(v9 + 4 * v12) = *v9;
          *v9 = v23;
        }
      }

      goto LABEL_55;
    }

    if (v14)
    {
      v16 = *v9;
      if (v15)
      {
        *v9 = a2[-1].i32[1];
        a2[-1].i32[1] = v16;
      }

      else
      {
        *v9 = *(v9 + 4 * v12);
        *(v9 + 4 * v12) = v16;
        {
          v24 = *(v9 + 4 * v12);
          *(v9 + 4 * v12) = a2[-1].i32[1];
          a2[-1].i32[1] = v24;
        }
      }
    }

    else if (v15)
    {
      v20 = *(v9 + 4 * v12);
      *(v9 + 4 * v12) = a2[-1].i32[1];
      a2[-1].i32[1] = v20;
      {
        v21 = *v9;
        *v9 = *(v9 + 4 * v12);
        *(v9 + 4 * v12) = v21;
      }
    }

    v25 = v12 - 1;
    if (v26)
    {
      v28 = *(v9 + 4);
      if (v27)
      {
        *(v9 + 4) = a2[-1].i32[0];
        a2[-1].i32[0] = v28;
      }

      else
      {
        *(v9 + 4) = *(v9 + 4 * v25);
        *(v9 + 4 * v25) = v28;
        {
          v32 = *(v9 + 4 * v25);
          *(v9 + 4 * v25) = a2[-1].i32[0];
          a2[-1].i32[0] = v32;
        }
      }
    }

    else if (v27)
    {
      v29 = *(v9 + 4 * v25);
      *(v9 + 4 * v25) = a2[-1].i32[0];
      a2[-1].i32[0] = v29;
      {
        v30 = *(v9 + 4);
        *(v9 + 4) = *(v9 + 4 * v25);
        *(v9 + 4 * v25) = v30;
      }
    }

    v33 = v12 + 1;
    if (v34)
    {
      v36 = *(v9 + 8);
      if (v35)
      {
        *(v9 + 8) = a2[-2].i32[1];
        a2[-2].i32[1] = v36;
      }

      else
      {
        *(v9 + 8) = *(v9 + 4 * v33);
        *(v9 + 4 * v33) = v36;
        {
          v39 = *(v9 + 4 * v33);
          *(v9 + 4 * v33) = a2[-2].i32[1];
          a2[-2].i32[1] = v39;
        }
      }
    }

    else if (v35)
    {
      v37 = *(v9 + 4 * v33);
      *(v9 + 4 * v33) = a2[-2].i32[1];
      a2[-2].i32[1] = v37;
      {
        v38 = *(v9 + 8);
        *(v9 + 8) = *(v9 + 4 * v33);
        *(v9 + 4 * v33) = v38;
      }
    }

    if (!v40)
    {
      v43 = *(v9 + 4 * v12);
      if (!v41)
      {
        goto LABEL_54;
      }

      v44 = *(v9 + 4 * v33);
      *(v9 + 4 * v12) = v44;
      *(v9 + 4 * v33) = v43;
      v43 = *(v9 + 4 * v12);
      if (!v45)
      {
        goto LABEL_54;
      }

      v46 = *(v9 + 4 * v25);
      *(v9 + 4 * v25) = v43;
      *(v9 + 4 * v12) = v46;
      goto LABEL_53;
    }

    v42 = *(v9 + 4 * v25);
    if (v41)
    {
      *(v9 + 4 * v25) = *(v9 + 4 * v33);
      *(v9 + 4 * v33) = v42;
      v43 = *(v9 + 4 * v12);
    }

    else
    {
      *(v9 + 4 * v25) = *(v9 + 4 * v12);
      *(v9 + 4 * v12) = v42;
      v43 = *(v9 + 4 * v12);
      if (v47)
      {
        v46 = *(v9 + 4 * v33);
        *(v9 + 4 * v12) = v46;
        *(v9 + 4 * v33) = v43;
LABEL_53:
        v43 = v46;
      }
    }

LABEL_54:
    v48 = *v9;
    *v9 = v43;
    *(v9 + 4 * v12) = v48;
LABEL_55:
    --a4;
    v49 = *v9;
    {
      v51 = 0;
      do
      {
        v51 += 4;
      }

      while (v52);
      v53 = v9 + v51;
      v54 = a2;
      if (v51 == 4)
      {
        v54 = a2;
        do
        {
          if (v53 >= v54)
          {
            break;
          }

          v56 = v54[-1].u32[1];
          v54 = (v54 - 4);
        }
      }

      else
      {
        do
        {
          v55 = v54[-1].u32[1];
          v54 = (v54 - 4);
        }
      }

      if (v53 >= v54)
      {
        v62 = (v53 - 4);
      }

      else
      {
        v57 = (v9 + v51);
        v58 = v54;
        do
        {
          v59 = v57->i32[0];
          v57->i32[0] = v58->i32[0];
          v58->i32[0] = v59;
          do
          {
            v60 = v57->u32[1];
            v57 = (v57 + 4);
          }

          do
          {
            v61 = v58[-1].u32[1];
            v58 = (v58 - 4);
          }
        }

        while (v57 < v58);
        v62 = (v57 - 4);
        a2 = v125;
      }

      if (v62 != v9)
      {
        *v9 = v62->i32[0];
      }

      v62->i32[0] = v49;
      if (v53 < v54)
      {
        goto LABEL_78;
      }

      v10 = (v62 + 4);
      if (result)
      {
        a2 = v62;
        if (!v63)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v63)
      {
LABEL_78:
        a5 = 0;
        v10 = (v62 + 4);
      }
    }

    else
    {
      if (result)
      {
        v10 = v9;
        do
        {
          v64 = v10->u32[1];
          v10 = (v10 + 4);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v65 = v9 + 4;
        do
        {
          v10 = v65;
          if (v65 >= a2)
          {
            break;
          }

          v65 += 4;
        }

        while (!result);
      }

      v66 = a2;
      if (v10 < a2)
      {
        v66 = a2;
        do
        {
          v67 = v66[-1].u32[1];
          v66 = (v66 - 4);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v66)
      {
        v68 = v10->i32[0];
        v10->i32[0] = v66->i32[0];
        v66->i32[0] = v68;
        do
        {
          v69 = v10->u32[1];
          v10 = (v10 + 4);
        }

        do
        {
          v70 = v66[-1].u32[1];
          v66 = (v66 - 4);
        }

        while ((result & 1) != 0);
      }

      v71 = &v10[-1] + 1;
      if (&v10[-1].u8[4] != v9)
      {
        *v9 = *v71;
      }

      a5 = 0;
      *v71 = v49;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
    }

    if (v11 == 5)
    {
      if (!result)
      {
        return result;
      }

      v72 = v10[1].i32[1];
      v10[1].i32[1] = a2[-1].i32[1];
      a2[-1].i32[1] = v72;
      if (!result)
      {
        return result;
      }

      v74 = v10[1].i32[0];
      v73 = v10[1].u32[1];
      v75 = v10->u32[1];
      v10[1].i32[0] = v73;
      v10[1].i32[1] = v74;
      if (!result)
      {
        return result;
      }

      v77 = v10->i32[1];
      v76 = v10[1].u32[0];
      v78 = v10->i32[0];
      v10->i32[1] = v76;
      v10[1].i32[0] = v77;
      goto LABEL_166;
    }

    goto LABEL_10;
  }

  if (!v80)
  {
    if (!result)
    {
      return result;
    }

    v118 = v10->i32[1];
    v10->i32[1] = a2[-1].i32[1];
    a2[-1].i32[1] = v118;
    v78 = v10->i32[0];
    v76 = v10->u32[1];
LABEL_166:
    if (result)
    {
      *v10 = vrev64_s32(*v10);
    }

    return result;
  }

  v81 = v10->i32[0];
  if (result)
  {
    v10->i32[0] = a2[-1].i32[1];
    a2[-1].i32[1] = v81;
  }

  else
  {
    v10->i32[0] = v10->i32[1];
    v10->i32[1] = v81;
    if (result)
    {
      v79 = v10->i32[1];
      v10->i32[1] = a2[-1].i32[1];
      goto LABEL_105;
    }
  }

  return result;
}

BOOL re::anonymous namespace::sortFacesByMaterial(re::GeomMesh const&,re::GeomAttribute const*,re::DynamicArray<int> &,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned int> &)::$_0::operator()(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  if (v4 <= a2)
  {
    v12 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    v5 = MEMORY[0x1E69E9C10];
    v13 = 136315906;
    v14 = "operator[]";
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v15 = 1024;
    v16 = 613;
    v17 = 2048;
    v18 = a2;
    v19 = 2048;
    v20 = v4;
    _os_log_send_and_compose_impl(v7, &v12, &v21, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
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
    if (v9)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v15 = 1024;
    v16 = 613;
    v17 = 2048;
    v18 = v5;
    v19 = 2048;
    v20 = v4;
    _os_log_send_and_compose_impl(v10, &v12, &v21, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  LODWORD(v5) = a3;
  if (v4 <= a3)
  {
    goto LABEL_8;
  }

  return *(*a1 + 4 * a2) < *(*a1 + 4 * a3);
}

BOOL std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::anonymous namespace::sortFacesByMaterial(re::GeomMesh const&,re::GeomAttribute const*,re::DynamicArray<int> &,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned int> &)::$_0 &,unsigned int *,0>(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t *a5)
{
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::anonymous namespace::sortFacesByMaterial(re::GeomMesh const&,re::GeomAttribute const*,re::DynamicArray<int> &,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned int> &)::$_0 &,unsigned int *>(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v6 = (a2 - a1) >> 2;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        if (v15)
        {
          v17 = *a1;
          if (v16)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v17;
            return 1;
          }

          *a1 = *(a1 + 4);
          *(a1 + 4) = v17;
          {
            return 1;
          }

          v7 = *(a1 + 4);
          *(a1 + 4) = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v16)
        {
          return 1;
        }

        v22 = *(a1 + 4);
        *(a1 + 4) = *(a2 - 1);
        *(a2 - 1) = v22;
        v14 = *a1;
        v12 = *(a1 + 4);
        break;
      case 4:
        return 1;
      case 5:
        {
          return 1;
        }

        v8 = *(a1 + 12);
        *(a1 + 12) = *(a2 - 1);
        *(a2 - 1) = v8;
        {
          return 1;
        }

        v10 = *(a1 + 8);
        v9 = *(a1 + 12);
        v11 = *(a1 + 4);
        *(a1 + 8) = v9;
        *(a1 + 12) = v10;
        {
          return 1;
        }

        v13 = *(a1 + 4);
        v12 = *(a1 + 8);
        v14 = *a1;
        *(a1 + 4) = v12;
        *(a1 + 8) = v13;
        break;
      default:
        goto LABEL_17;
    }

    {
      *a1 = vrev64_s32(*a1);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v19 = (a1 + 8);
  if (v18)
  {
    v21 = *a1;
    if (v20)
    {
      *a1 = *(a1 + 8);
      *(a1 + 8) = v21;
    }

    else
    {
      v26 = *(a1 + 8);
      *a1 = *(a1 + 4);
      *(a1 + 4) = v21;
      {
        *(a1 + 4) = vrev64_s32(*(a1 + 4));
      }
    }
  }

  else if (v20)
  {
    v24 = *(a1 + 4);
    v23 = *(a1 + 8);
    v25 = *a1;
    *(a1 + 4) = v23;
    *(a1 + 8) = v24;
    {
      *a1 = vrev64_s32(*a1);
    }
  }

  v27 = (a1 + 12);
  if ((a1 + 12) == a2)
  {
    return 1;
  }

  v28 = 0;
  v29 = 0;
  while (1)
  {
    {
      v30 = *v27;
      v31 = v28;
      while (1)
      {
        v32 = a1 + v31;
        *(a1 + v31 + 12) = *(a1 + v31 + 8);
        if (v31 == -8)
        {
          break;
        }

        v31 -= 4;
        {
          v33 = (a1 + v31 + 12);
          goto LABEL_40;
        }
      }

      v33 = a1;
LABEL_40:
      *v33 = v30;
      if (++v29 == 8)
      {
        return v27 + 1 == a2;
      }
    }

    v19 = v27;
    v28 += 4;
    if (++v27 == a2)
    {
      return 1;
    }
  }
}

void re::anonymous namespace::computeErrorTriangle(re::GeomMeshBVHTree *a1, __n128 *a2, __n128 *a3, __n128 *a4, int a5, _anonymous_namespace_ *a6, float a7)
{
  v14 = a7 * a7;
  v38 = 0u;
  v39 = 0u;
  v15 = re::GeomMeshBVHTree::computeClosestPoint(a1, a2, &v37) > (a7 * a7);
  v38 = 0u;
  v39 = 0u;
  if (re::GeomMeshBVHTree::computeClosestPoint(a1, a3, &v37) > v14)
  {
    ++v15;
  }

  v38 = 0u;
  v39 = 0u;
  if (re::GeomMeshBVHTree::computeClosestPoint(a1, a4, &v37) > v14)
  {
    ++v15;
  }

  __asm { FMOV            V1.4S, #3.0 }

  v36 = vdivq_f32(vaddq_f32(vaddq_f32(*a2, *a3), *a4), _Q1);
  v38 = 0u;
  v39 = 0u;
  if (re::GeomMeshBVHTree::computeClosestPoint(a1, &v36, &v37) <= v14)
  {
    v21 = v15;
  }

  else
  {
    v21 = v15 + 1;
  }

  if (v21)
  {
    if (!a5 || v21 == 4)
    {
      goto LABEL_17;
    }

    v22 = *a3;
    v23 = *a2;
    v24 = vsubq_f32(*a3, *a2);
    v25 = vmulq_f32(v24, v24);
    v26 = v25.f32[2] + vaddv_f32(*v25.f32);
    v27 = *a4;
    v28 = vsubq_f32(*a4, *a3);
    v29 = vmulq_f32(v28, v28);
    v30 = vsubq_f32(*a4, *a2);
    v31 = vmulq_f32(v30, v30);
    v32 = vadd_f32(vzip1_s32(*&vextq_s8(v29, v29, 8uLL), *&vextq_s8(v31, v31, 8uLL)), vadd_f32(vzip1_s32(*v29.i8, *v31.i8), vzip2_s32(*v29.i8, *v31.i8)));
    if (v32.f32[0] < v32.f32[1])
    {
      v32.f32[0] = v32.f32[1];
    }

    if (v26 < v32.f32[0])
    {
      v26 = v32.f32[0];
    }

    if (v26 <= v14)
    {
LABEL_17:
      re::DynamicArray<re::Vector3<float>>::add(a6, a2);
      re::DynamicArray<re::Vector3<float>>::add(a6, a3);
      re::DynamicArray<re::Vector3<float>>::add(a6, a4);
    }

    else
    {
      v33 = a5 - 1;
      v34.i64[0] = 0x3F0000003F000000;
      v34.i64[1] = 0x3F0000003F000000;
      v36 = vmulq_f32(vaddq_f32(v22, v27), v34);
      v37 = vmulq_f32(vaddq_f32(v22, v23), v34);
      v35 = vmulq_f32(vaddq_f32(v23, v27), v34);
    }
  }
}

void re::anonymous namespace::computeErrorQuad(re::GeomMeshBVHTree *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, int a6, _anonymous_namespace_ *a7, float a8)
{
  v16 = a8 * a8;
  v40 = 0u;
  v41 = 0u;
  v17 = re::GeomMeshBVHTree::computeClosestPoint(a1, a2, &v39) > (a8 * a8);
  v40 = 0u;
  v41 = 0u;
  if (re::GeomMeshBVHTree::computeClosestPoint(a1, a3, &v39) > v16)
  {
    ++v17;
  }

  v40 = 0u;
  v41 = 0u;
  if (re::GeomMeshBVHTree::computeClosestPoint(a1, a4, &v39) > v16)
  {
    ++v17;
  }

  v40 = 0u;
  v41 = 0u;
  if (re::GeomMeshBVHTree::computeClosestPoint(a1, a5, &v39) > v16)
  {
    ++v17;
  }

  __asm { FMOV            V1.4S, #0.25 }

  v38 = vmulq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*a2, *a3), *a4), *a5), _Q1);
  v40 = 0u;
  v41 = 0u;
  if (re::GeomMeshBVHTree::computeClosestPoint(a1, &v38, &v39) <= v16)
  {
    v23 = v17;
  }

  else
  {
    v23 = v17 + 1;
  }

  if (v23)
  {
    if (!a6 || v23 == 5)
    {
      goto LABEL_17;
    }

    v24 = *a4;
    v25 = *a2;
    v26 = vsubq_f32(*a4, *a2);
    v27 = vmulq_f32(v26, v26);
    v28 = *a5;
    v29 = *a3;
    v30 = vsubq_f32(*a5, *a3);
    v31 = vmulq_f32(v30, v30);
    v32 = vadd_f32(vzip1_s32(*&vextq_s8(v27, v27, 8uLL), *&vextq_s8(v31, v31, 8uLL)), vadd_f32(vzip1_s32(*v27.i8, *v31.i8), vzip2_s32(*v27.i8, *v31.i8)));
    if (v32.f32[0] < v32.f32[1])
    {
      v32.f32[0] = v32.f32[1];
    }

    if (v32.f32[0] <= v16)
    {
LABEL_17:
      re::DynamicArray<re::Vector3<float>>::add(a7, a2);
      re::DynamicArray<re::Vector3<float>>::add(a7, a3);
      re::DynamicArray<re::Vector3<float>>::add(a7, a4);
      re::DynamicArray<re::Vector3<float>>::add(a7, a5);
    }

    else
    {
      v33 = a6 - 1;
      v34.i64[0] = 0x3F0000003F000000;
      v34.i64[1] = 0x3F0000003F000000;
      v39 = vmulq_f32(vaddq_f32(v25, v29), v34);
      v36 = vmulq_f32(vaddq_f32(v24, v28), v34);
      v37 = vmulq_f32(vaddq_f32(v24, v29), v34);
      v35 = vmulq_f32(vaddq_f32(v25, v28), v34);
    }
  }
}

uint64_t re::buildPlatterWithRoundedCorners(unsigned int *a1, unsigned __int16 *a2)
{
  v79 = *MEMORY[0x1E69E9840];
  LODWORD(v75) = 0;
  WORD2(v75) = 0;
  LOWORD(v78) = 0;
  LOBYTE(v75) = *(a2 + 36);
  BYTE3(v75) = *(a2 + 37);
  *(&v78 + 1) = *(a2 + 7);
  BYTE4(v75) = *(a2 + 38);
  BYTE5(v75) = 1;
  v5 = *(a2 + 10);
  v4 = *(a2 + 11);
  *(&v75 + 1) = __PAIR64__(LODWORD(v4), LODWORD(v5));
  v6 = *(a2 + 12);
  *&v76 = v6;
  v7 = 1.5287;
  v8 = 1.5287;
  if (v5 < 1.0)
  {
    v8 = 1.0;
    if (v5 > 0.0)
    {
      v8 = (v5 * 0.52866) + 1.0;
    }
  }

  v9 = 1.5287;
  if (v4 < 1.0)
  {
    v9 = 1.0;
    if (v4 > 0.0)
    {
      v9 = (v4 * 0.52866) + 1.0;
    }
  }

  if (v6 < 1.0)
  {
    v7 = 1.0;
    if (v6 > 0.0)
    {
      v7 = (v6 * 0.52866) + 1.0;
    }
  }

  v11 = *(a2 + 7);
  v10 = *(a2 + 8);
  if (v11 >= v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11 >= v10)
  {
    v13 = *(a2 + 8);
  }

  else
  {
    v13 = *(a2 + 7);
  }

  v14 = v13 / (v12 + v12);
  v15 = *(a2 + 4);
  if (v14 >= *(a2 + 3))
  {
    v14 = *(a2 + 3);
  }

  *(&v76 + 1) = v14;
  v16 = 0.0;
  v17 = 0.0;
  if (v15 >= 0.0)
  {
    v16 = (v15 / v7) >= v14 ? v14 : v15 / v7;
    v17 = *(a2 + 5) / v7;
    if (v17 >= v14)
    {
      v17 = v14;
    }
  }

  *(&v76 + 1) = __PAIR64__(LODWORD(v17), LODWORD(v16));
  v18 = v11 + ((v8 * -2.0) * v14);
  if (v18 < 0.0)
  {
    v18 = 0.0;
  }

  v19 = v10 + ((v9 * -2.0) * v14);
  if (v19 < 0.0)
  {
    v19 = 0.0;
  }

  *&v77[0] = __PAIR64__(LODWORD(v19), LODWORD(v18));
  v20 = *(a2 + 6);
  *(v77 + 2) = v20;
  v21 = a2[3];
  if (v21 <= 2)
  {
    v22 = 2;
  }

  else
  {
    v22 = a2[3];
  }

  v23 = v22 + 1;
  v24 = a2[4];
  if (v24 <= 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = a2[4];
  }

  DWORD2(v77[1]) = v23;
  HIDWORD(v77[1]) = v25 + 1;
  v26.i32[0] = *a2;
  v26.i32[1] = a2[1];
  *(v77 + 12) = vmax_u32(v26, 0x100000001);
  v27 = a2[2];
  if (v27 <= 1)
  {
    v28 = 1;
  }

  else
  {
    v28 = a2[2];
  }

  DWORD1(v77[1]) = v28;
  v29 = v24 * v21;
  v31 = v18 == 0.0 || v26.i32[0] == 0;
  v33 = v19 == 0.0 || v26.i32[1] == 0;
  v35 = v20 == 0.0 || v27 == 0;
  if (v14 == 0.0)
  {
    v36 = 316;
    goto LABEL_66;
  }

  if (v16 == 0.0)
  {
    v36 = 4;
LABEL_61:
    LOWORD(v78) = v36;
    goto LABEL_62;
  }

  if (v14 == v16)
  {
    v36 = 8;
    goto LABEL_61;
  }

  v36 = 0;
LABEL_62:
  if (v17 == 0.0)
  {
    v36 |= 0x10u;
  }

  else
  {
    if (v14 != v17)
    {
      goto LABEL_67;
    }

    v36 |= 0x20u;
  }

LABEL_66:
  LOWORD(v78) = v36;
LABEL_67:
  if (v29)
  {
    v37 = v31;
  }

  else
  {
    v37 = 1;
  }

  if ((v37 | (v33 || v35)) == 1)
  {
    if (v29)
    {
      v38 = v36;
    }

    else
    {
      v38 = v36 | 0x3C;
    }

    if (v31)
    {
      v39 = v38 | 0x41;
    }

    else
    {
      v39 = v38;
    }

    if (v33)
    {
      v40 = v39 | 0x81;
    }

    else
    {
      v40 = v39;
    }

    if (v35)
    {
      v40 |= 2u;
    }

    LOWORD(v78) = v40;
  }

  if (a2[18])
  {
    if ((*(a2 + 37) & 1) == 0)
    {
      goto LABEL_88;
    }
  }

  else if ((*(a2 + 37) & 1) == 0)
  {
    return result;
  }

  if ((a2[18] & 1) == 0)
  {

    return re::internal::GeomAttributeManager::deleteAttribute((a1 + 16), "vertexUV");
  }

LABEL_88:
  re::addVertexUVs(a1, v42);
  re::computeAABB(&v64, a1);
  v43 = v65;
  v44 = *v64.f32;
  v45 = re::GeomMesh::accessVertexPositions(a1);
  v47 = v46;
  result = re::modifyVertexUVs(a1, v46);
  if (a1[4])
  {
    v49 = 0;
    v50 = vsub_f32(v43, v44);
    __asm { FMOV            V2.2S, #1.0 }

    v55 = vbsl_s8(vcgtz_f32(v50), v50, _D2);
    v56 = v48;
    do
    {
      if (v47 == v49)
      {
        v66 = 0;
        v78 = 0u;
        v76 = 0u;
        memset(v77, 0, sizeof(v77));
        v75 = 0u;
        v58 = MEMORY[0x1E69E9C10];
        v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v67 = 136315906;
        v68 = "operator[]";
        v69 = 1024;
        if (v59)
        {
          v60 = 3;
        }

        else
        {
          v60 = 2;
        }

        v70 = 613;
        v71 = 2048;
        v72 = v47;
        v73 = 2048;
        v74 = v47;
        _os_log_send_and_compose_impl(v60, &v66, &v75, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v67, 38, v64.u64[0], v64.u64[1]);
        _os_crash_msg();
        __break(1u);
LABEL_102:
        v66 = 0;
        v78 = 0u;
        v76 = 0u;
        memset(v77, 0, sizeof(v77));
        v75 = 0u;
        v61 = MEMORY[0x1E69E9C10];
        v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v67 = 136315906;
        v68 = "operator[]";
        v69 = 1024;
        if (v62)
        {
          v63 = 3;
        }

        else
        {
          v63 = 2;
        }

        v70 = 621;
        v71 = 2048;
        v72 = v56;
        v73 = 2048;
        v74 = v56;
        _os_log_send_and_compose_impl(v63, &v66, &v75, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v67, 38, v64.u64[0], v64.u64[1]);
        _os_crash_msg();
        __break(1u);
      }

      if (v48 == v49)
      {
        goto LABEL_102;
      }

      v57 = *v45;
      v45 += 2;
      *(result + 8 * v49++) = vdiv_f32(vsub_f32(v57, v44), v55);
    }

    while (v49 < a1[4]);
  }

  return result;
}

uint64_t re::anonymous namespace::buildRoundedBoxOrPlatter(re *a1, unint64_t a2)
{
  i = a1;
  v91 = *MEMORY[0x1E69E9840];
  v76 = 0;
  v73[1] = 0;
  v74 = 0;
  v73[0] = 0;
  v75 = 0;
  v9 = v8;
  v72 = 0;
  v69[1] = 0;
  v70 = 0;
  v69[0] = 0;
  v71 = 0;
  if (*(a2 + 2) == 1)
  {
    re::DynamicArray<re::Vector3<float>>::resize(v69, *(i + 16) - v8);
    if (v9 < *(i + 16))
    {
      v12 = 0;
      v13 = 0;
      if (v9 <= v11)
      {
        v14 = v11;
      }

      else
      {
        v14 = v9;
      }

      while (v9 - v14 + v13)
      {
        v2 = v70;
        if (v70 <= v13)
        {
          goto LABEL_59;
        }

        *(v72 + v12 * 8) = *&v10[2 * v9 + v12];
        ++v13;
        v12 += 2;
        if (v9 + v13 >= *(i + 16))
        {
          goto LABEL_9;
        }
      }

      i = v11;
      *v85 = 0;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v77 = 0u;
      v30 = MEMORY[0x1E69E9C10];
      v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v88 = 136315906;
      *&v88[4] = "operator[]";
      *&v88[12] = 1024;
      if (v31)
      {
        v32 = 3;
      }

      else
      {
        v32 = 2;
      }

      *&v88[14] = 613;
      *&v88[18] = 2048;
      *&v88[20] = v14;
      v89 = 2048;
      *v90 = i;
      _os_log_send_and_compose_impl(v32, v85, &v77, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v88, 38, v66, v67);
      _os_crash_msg();
      __break(1u);
LABEL_59:
      *v85 = 0;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v77 = 0u;
      v33 = MEMORY[0x1E69E9C10];
      v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v88 = 136315906;
      *&v88[4] = "operator[]";
      *&v88[12] = 1024;
      if (v34)
      {
        v35 = 3;
      }

      else
      {
        v35 = 2;
      }

      *&v88[14] = 789;
      *&v88[18] = 2048;
      *&v88[20] = v13;
      v89 = 2048;
      *v90 = v2;
      _os_log_send_and_compose_impl(v35, v85, &v77, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v88, 38, v66, v67);
      _os_crash_msg();
      __break(1u);
      goto LABEL_63;
    }
  }

LABEL_9:
  *&v90[2] = 0;
  memset(v88, 0, sizeof(v88));
  if (*(a2 + 64))
  {
    *&v87[2] = 0;
    memset(v85, 0, sizeof(v85));
    if (*(i + 40))
    {
      re::DynamicArray<int>::setCapacity(v85, *(i + 40));
      v15 = *(i + 40);
      LODWORD(v66) = 0;
      if (v15)
      {
        v16 = 0;
        while (1)
        {
          v13 = v16;
          v14 = v74;
          if (v74 <= v16)
          {
            break;
          }

          if ((*(a2 + 64) & *(v76 + 2 * v16)) == 0)
          {
            re::DynamicArray<int>::add(v85, &v66);
            v16 = v66;
            v15 = *(i + 40);
          }

          LODWORD(v66) = ++v16;
          if (v16 >= v15)
          {
            goto LABEL_17;
          }
        }

LABEL_63:
        v68[0] = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        v36 = MEMORY[0x1E69E9C10];
        v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v82 = 136315906;
        *&v82[4] = "operator[]";
        *&v82[12] = 1024;
        if (v37)
        {
          v38 = 3;
        }

        else
        {
          v38 = 2;
        }

        *&v82[14] = 789;
        *&v82[18] = 2048;
        *&v82[20] = v13;
        v83 = 2048;
        *v84 = v14;
        _os_log_send_and_compose_impl(v38, v68, &v77, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v82, 38, v66, v67);
        _os_crash_msg();
        __break(1u);
LABEL_67:
        *v82 = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        v39 = MEMORY[0x1E69E9C10];
        v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v85 = 136315906;
        *&v85[4] = "operator[]";
        *&v85[12] = 1024;
        if (v40)
        {
          v41 = 3;
        }

        else
        {
          v41 = 2;
        }

        *&v85[14] = 789;
        *&v85[18] = 2048;
        *&v85[20] = i;
        v86 = 2048;
        *v87 = v4;
        _os_log_send_and_compose_impl(v41, v82, &v77, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v85, 38, v66, v67);
        _os_crash_msg();
        __break(1u);
LABEL_71:
        *v82 = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        v42 = MEMORY[0x1E69E9C10];
        v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v85 = 136315906;
        *&v85[4] = "operator[]";
        *&v85[12] = 1024;
        if (v43)
        {
          v44 = 3;
        }

        else
        {
          v44 = 2;
        }

        *&v85[14] = 789;
        *&v85[18] = 2048;
        *&v85[20] = v4;
        v86 = 2048;
        *v87 = v5;
        _os_log_send_and_compose_impl(v44, v82, &v77, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v85, 38, v66, v67);
        _os_crash_msg();
        __break(1u);
LABEL_75:
        *v82 = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        v45 = MEMORY[0x1E69E9C10];
        v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v85 = 136315906;
        *&v85[4] = "operator[]";
        *&v85[12] = 1024;
        if (v46)
        {
          v47 = 3;
        }

        else
        {
          v47 = 2;
        }

        *&v85[14] = 621;
        *&v85[18] = 2048;
        *&v85[20] = i;
        v86 = 2048;
        *v87 = v2;
        _os_log_send_and_compose_impl(v47, v82, &v77, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v85, 38, v66, v67);
        _os_crash_msg();
        __break(1u);
LABEL_79:
        *v82 = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        v48 = MEMORY[0x1E69E9C10];
        v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v85 = 136315906;
        *&v85[4] = "operator[]";
        *&v85[12] = 1024;
        if (v49)
        {
          v50 = 3;
        }

        else
        {
          v50 = 2;
        }

        *&v85[14] = 613;
        *&v85[18] = 2048;
        *&v85[20] = i;
        v86 = 2048;
        *v87 = v14;
        _os_log_send_and_compose_impl(v50, v82, &v77, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v85, 38, v66, v67);
        _os_crash_msg();
        __break(1u);
LABEL_83:
        *v82 = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        v51 = MEMORY[0x1E69E9C10];
        v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v85 = 136315906;
        *&v85[4] = "operator[]";
        *&v85[12] = 1024;
        if (v52)
        {
          v53 = 3;
        }

        else
        {
          v53 = 2;
        }

        *&v85[14] = 621;
        *&v85[18] = 2048;
        *&v85[20] = i;
        v86 = 2048;
        *v87 = v3;
        _os_log_send_and_compose_impl(v53, v82, &v77, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v85, 38, v66, v67);
        _os_crash_msg();
        __break(1u);
LABEL_87:
        *v82 = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        v54 = MEMORY[0x1E69E9C10];
        v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v85 = 136315906;
        *&v85[4] = "operator[]";
        *&v85[12] = 1024;
        if (v55)
        {
          v56 = 3;
        }

        else
        {
          v56 = 2;
        }

        *&v85[14] = 789;
        *&v85[18] = 2048;
        *&v85[20] = v4;
        v86 = 2048;
        *v87 = v5;
        _os_log_send_and_compose_impl(v56, v82, &v77, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v85, 38, v66, v67);
        _os_crash_msg();
        __break(1u);
LABEL_91:
        *v82 = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        v57 = MEMORY[0x1E69E9C10];
        v58 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v85 = 136315906;
        *&v85[4] = "operator[]";
        *&v85[12] = 1024;
        if (v58)
        {
          v59 = 3;
        }

        else
        {
          v59 = 2;
        }

        *&v85[14] = 621;
        *&v85[18] = 2048;
        *&v85[20] = i;
        v86 = 2048;
        *v87 = v2;
        _os_log_send_and_compose_impl(v59, v82, &v77, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v85, 38, v66, v67);
        _os_crash_msg();
        __break(1u);
LABEL_95:
        *v82 = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        v60 = MEMORY[0x1E69E9C10];
        v61 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v85 = 136315906;
        *&v85[4] = "operator[]";
        *&v85[12] = 1024;
        if (v61)
        {
          v62 = 3;
        }

        else
        {
          v62 = 2;
        }

        *&v85[14] = 613;
        *&v85[18] = 2048;
        *&v85[20] = i;
        v86 = 2048;
        *v87 = v14;
        _os_log_send_and_compose_impl(v62, v82, &v77, 80, &dword_1E1C61000, v60, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v85, 38, v66, v67);
        _os_crash_msg();
        __break(1u);
LABEL_99:
        *v82 = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        v63 = MEMORY[0x1E69E9C10];
        v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v85 = 136315906;
        *&v85[4] = "operator[]";
        *&v85[12] = 1024;
        if (v64)
        {
          v65 = 3;
        }

        else
        {
          v65 = 2;
        }

        *&v85[14] = 621;
        *&v85[18] = 2048;
        *&v85[20] = i;
        v86 = 2048;
        *v87 = v3;
        _os_log_send_and_compose_impl(v65, v82, &v77, 80, &dword_1E1C61000, v63, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v85, 38, v66, v67);
        _os_crash_msg();
        __break(1u);
      }
    }

LABEL_17:
    *&v84[2] = 0;
    memset(v82, 0, sizeof(v82));
    v68[0] = *&v87[2];
    v68[1] = *&v85[16];
    v66 = 0;
    v67 = 0;
    re::makeMeshFromFaces(i, v68, &v66, v88, v82, &v77);
    re::GeomMesh::operator=(i, &v77);
    re::GeomMesh::~GeomMesh(&v77);
    if (*v82 && *&v84[2])
    {
      (*(**v82 + 40))();
    }

    if (*v85 && *&v87[2])
    {
      (*(**v85 + 40))();
    }
  }

  if (*(a2 + 2) == 1)
  {
    v14 = v18;
    v19 = re::internal::GeomAttributeManager::attributeByName((i + 64), "vertexTangent");
    v20 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v19);
    v2 = v21;
    v22 = re::internal::GeomAttributeManager::attributeByName((i + 64), "vertexBitangent");
    v23 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v22);
    v3 = v24;
    v25 = *(i + 16);
    if (*&v88[16])
    {
      if (v25)
      {
        for (i = 0; i != v25; ++i)
        {
          v4 = *&v88[16];
          if (*&v88[16] <= i)
          {
            goto LABEL_67;
          }

          v26 = *(*&v90[2] + 4 * i);
          v4 = v26 - v9;
          if (v26 >= v9)
          {
            v5 = v70;
            if (v70 <= v4)
            {
              goto LABEL_71;
            }

            if (i >= v2)
            {
              goto LABEL_75;
            }

            *v20 = *(v72 + 16 * v4);
            if (i >= v14)
            {
              goto LABEL_79;
            }

            if (i >= v24)
            {
              goto LABEL_83;
            }

            v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*v20, *v20), *v20, 0xCuLL), vnegq_f32(*&v17[2 * i])), *v20, vextq_s8(vuzp1q_s32(*&v17[2 * i], *&v17[2 * i]), *&v17[2 * i], 0xCuLL));
            *(v23 + 16 * i) = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
          }

          ++v20;
        }
      }
    }

    else if (v25)
    {
      for (i = 0; v25 != i; ++i)
      {
        if (i >= v9)
        {
          v4 = i - v9;
          v5 = v70;
          if (v70 <= v4)
          {
            goto LABEL_87;
          }

          if (i >= v2)
          {
            goto LABEL_91;
          }

          *v20 = *(v72 + 16 * v4);
          if (i >= v14)
          {
            goto LABEL_95;
          }

          if (i >= v24)
          {
            goto LABEL_99;
          }

          v28 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*v20, *v20), *v20, 0xCuLL), vnegq_f32(*&v17[2 * i])), *v20, vextq_s8(vuzp1q_s32(*&v17[2 * i], *&v17[2 * i]), *&v17[2 * i], 0xCuLL));
          *(v23 + 16 * i) = vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL);
        }

        ++v20;
      }
    }
  }

  if (*v88 && *&v90[2])
  {
    (*(**v88 + 40))();
  }

  if (v69[0] && v72)
  {
    (*(*v69[0] + 40))();
  }

  result = v73[0];
  if (v73[0])
  {
    if (v76)
    {
      return (*(*v73[0] + 40))();
    }
  }

  return result;
}

uint64_t re::anonymous namespace::computeOrthonormalizedTangentsAndBitangents(re::_anonymous_namespace_ *this, re::GeomMesh *a2, char a3)
{
  if (!a2)
  {
    re::internal::GeomAttributeManager::deleteAttribute((this + 64), "vertexNormal");
    result = re::internal::GeomAttributeManager::deleteAttribute((this + 64), "vertexTangent");
    if (a3)
    {
      return result;
    }

    return re::internal::GeomAttributeManager::deleteAttribute((this + 64), "vertexUV");
  }

  re::internal::GeomAttributeManager::deleteAttribute((this + 64), "vertexTangent");
  re::internal::GeomAttributeManager::deleteAttribute((this + 64), "vertexBitangent");
  v7 = 1;
  v6 = 2;
  result = re::computeTangentsAndBitangents(this, "vertexUV", "vertexTangent", "vertexBitangent", "vertexNormal", &v6);
  if ((a3 & 1) == 0)
  {
    return re::internal::GeomAttributeManager::deleteAttribute((this + 64), "vertexUV");
  }

  return result;
}

uint64_t re::anonymous namespace::InternalBoxRoundedCornersOptions::InternalBoxRoundedCornersOptions(uint64_t result, unsigned __int16 *a2)
{
  *(result + 4) = 0;
  *result = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(result + 8) = _D0;
  *(result + 16) = 1065353216;
  *(result + 20) = 0u;
  v6 = (result + 20);
  *(result + 72) = 0;
  *(result + 36) = 0u;
  *(result + 50) = 0u;
  *result = *(a2 + 32);
  *(result + 1) = *(a2 + 37);
  *(result + 3) = *(a2 + 33);
  *(result + 4) = *(a2 + 34);
  if (*(a2 + 35))
  {
    v8 = *(a2 + 5);
    v7 = *(a2 + 6);
    if (v7 >= v8)
    {
      v9 = *(a2 + 5);
    }

    else
    {
      v9 = *(a2 + 6);
    }

    v10 = v9 / 3.0573;
    v11 = *(a2 + 3);
    v12 = v11 <= (v9 / 3.0573);
    v13 = v11;
    if (v12 || (v13 = v10, *(a2 + 36) == 1))
    {
      *v6 = v13;
      v14 = *(a2 + 4);
      if (v14 >= 0.0)
      {
        if (v14 < v13)
        {
          v6 = (a2 + 8);
        }

        v15 = *(a2 + 7);
        v16 = v15 / 3.0573;
        if ((v15 / 3.0573) >= *v6)
        {
          v16 = *v6;
        }
      }

      else
      {
        v15 = *(a2 + 7);
        v16 = 0.0;
      }

      *(result + 24) = v16;
      v23 = v8 > v7;
      v24 = v8 - (v13 * 3.0573);
      if (v24 < 0.0)
      {
        v24 = 0.0;
      }

      v25 = v7 > v8;
      if (v10 > v11)
      {
        v23 = 1;
        v25 = 1;
      }

      if (v23)
      {
        v19 = v24;
      }

      else
      {
        v19 = 0.0;
      }

      v20 = v7 - (v13 * 3.0573);
      if (v20 < 0.0)
      {
        v20 = 0.0;
      }

      if (!v25)
      {
        v20 = 0.0;
      }

      *(result + 32) = v19;
      *(result + 36) = v20;
      v21 = v15 + (v16 * -3.0573);
      if (v21 < 0.0)
      {
        v21 = 0.0;
      }

      v22 = 1.0;
      goto LABEL_38;
    }
  }

  else
  {
    v8 = *(a2 + 5);
    v7 = *(a2 + 6);
    v11 = *(a2 + 3);
  }

  if (v7 >= v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = v7;
  }

  v13 = v17 * 0.5;
  if (v13 >= v11)
  {
    v13 = v11;
  }

  *(result + 20) = v13;
  v18 = *(a2 + 7);
  v16 = v18 * 0.5;
  if ((v18 * 0.5) >= *(a2 + 4))
  {
    v16 = *(a2 + 4);
  }

  if (v16 >= v13)
  {
    v16 = v13;
  }

  *(result + 24) = v16;
  v19 = v8 + (v13 * -2.0);
  v20 = v7 + (v13 * -2.0);
  *(result + 32) = v19;
  *(result + 36) = v20;
  v21 = v18 + (v16 * -2.0);
  v22 = 0.0;
LABEL_38:
  *(result + 40) = v21;
  *(result + 8) = v22;
  *(result + 12) = v22;
  *(result + 16) = v22;
  *(result + 28) = v16;
  v26 = a2[3];
  if (v26 <= 2)
  {
    v27 = 2;
  }

  else
  {
    v27 = a2[3];
  }

  v28 = v27 + 1;
  v29 = a2[4];
  if (v29 <= 1)
  {
    v30 = 1;
  }

  else
  {
    v30 = a2[4];
  }

  *(result + 60) = v30 + 1;
  v31.i32[0] = *a2;
  v31.i32[1] = a2[1];
  *(result + 44) = vmax_u32(v31, 0x100000001);
  v32 = a2[2];
  if (v32 <= 1)
  {
    v33 = 1;
  }

  else
  {
    v33 = a2[2];
  }

  *(result + 52) = v33;
  *(result + 56) = v28;
  v34 = v29 * v26;
  v36 = *(a2 + 7) == 0.0 || v34 == 0;
  v38 = v19 == 0.0 || v31.i32[0] == 0;
  v40 = v20 == 0.0 || v31.i32[1] == 0;
  v42 = v21 == 0.0 || v32 == 0;
  if (v16 == 0.0 && v13 == 0.0)
  {
    v44 = 316;
  }

  else
  {
    v44 = 20;
  }

  *(result + 64) = 0;
  if (v16 == 0.0)
  {
    goto LABEL_80;
  }

  if (v13 == v16)
  {
    v44 = 40;
LABEL_80:
    *(result + 64) = v44;
    goto LABEL_81;
  }

  v44 = 0;
LABEL_81:
  if (v42 || v40 || v38 || v36)
  {
    if (v34)
    {
      v45 = v44;
    }

    else
    {
      v45 = v44 | 0x28;
    }

    v46 = v45 | 0x14;
    if (!v36)
    {
      v46 = v44;
    }

    if (v38)
    {
      v47 = v46 | 0x41;
    }

    else
    {
      v47 = v46;
    }

    if (v40)
    {
      v48 = v47 | 0x81;
    }

    else
    {
      v48 = v47;
    }

    if (v42)
    {
      v48 |= 2u;
    }

    *(result + 64) = v48;
  }

  return result;
}

uint64_t re::buildBoxWithRoundedCorners(re::GeomMesh *a1, __int128 *a2)
{
  v68 = *MEMORY[0x1E69E9840];
  if (*(a2 + 34) == 1)
  {
    v48 = *(a2 + 4);
    v6 = a2[1];
    v46 = *a2;
    v47 = v6;
    BYTE2(v48) = 0;
    return re::buildBoxWithRoundedCorners(a1, &v46);
  }

  else
  {
    v54 = 0;
    v52 = 0;
    v51[0] = 0;
    v51[1] = 0;
    v53 = 0;
    re::GeomMesh::GeomMesh(&v46, 0);
    re::DynamicArray<re::GeomMesh>::clear(a1);
    re::DynamicArray<re::GeomMesh>::resize(a1, 3uLL);
    v43 = 0;
    v40[1] = 0;
    v41 = 0;
    v40[0] = 0;
    v42 = 0;
    if (v49)
    {
      re::DynamicArray<int>::setCapacity(v40, v49);
    }

    v8 = 0;
    while (1)
    {
      v41 = 0;
      ++v42;
      v9 = word_1E30A1020[v8];
      LODWORD(v56[0]) = 0;
      v10 = v49;
      if (!v49)
      {
        goto LABEL_21;
      }

      v11 = 0;
      v12 = v9 | v45;
      do
      {
        v13 = v11;
        v14 = v52;
        if (v52 <= v11)
        {
          *v62 = 0;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v57 = 0u;
          v24 = MEMORY[0x1E69E9C10];
          v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v65[0]) = 136315906;
          *(v65 + 4) = "operator[]";
          WORD2(v65[1]) = 1024;
          if (v25)
          {
            v26 = 3;
          }

          else
          {
            v26 = 2;
          }

          *(&v65[1] + 6) = 789;
          WORD1(v65[2]) = 2048;
          *(&v65[2] + 4) = v13;
          WORD2(v65[3]) = 2048;
          *(&v65[3] + 6) = v14;
          _os_log_send_and_compose_impl(v26, v62, &v57, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v65, 38, v39, v40[0]);
          _os_crash_msg();
          __break(1u);
LABEL_43:
          *v62 = 0;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v57 = 0u;
          v27 = MEMORY[0x1E69E9C10];
          v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v65[0]) = 136315906;
          *(v65 + 4) = "operator[]";
          WORD2(v65[1]) = 1024;
          if (v28)
          {
            v29 = 3;
          }

          else
          {
            v29 = 2;
          }

          *(&v65[1] + 6) = 613;
          WORD1(v65[2]) = 2048;
          *(&v65[2] + 4) = v2;
          WORD2(v65[3]) = 2048;
          *(&v65[3] + 6) = v2;
          _os_log_send_and_compose_impl(v29, v62, &v57, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v65, 38, v39, v40[0]);
          _os_crash_msg();
          __break(1u);
LABEL_47:
          *v62 = 0;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v57 = 0u;
          v30 = MEMORY[0x1E69E9C10];
          v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v65[0]) = 136315906;
          *(v65 + 4) = "operator[]";
          WORD2(v65[1]) = 1024;
          if (v31)
          {
            v32 = 3;
          }

          else
          {
            v32 = 2;
          }

          *(&v65[1] + 6) = 613;
          WORD1(v65[2]) = 2048;
          *(&v65[2] + 4) = v3;
          WORD2(v65[3]) = 2048;
          *(&v65[3] + 6) = v3;
          _os_log_send_and_compose_impl(v32, v62, &v57, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v65, 38, v39, v40[0]);
          _os_crash_msg();
          __break(1u);
LABEL_51:
          *v62 = 0;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v57 = 0u;
          v33 = MEMORY[0x1E69E9C10];
          v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v65[0]) = 136315906;
          *(v65 + 4) = "operator[]";
          WORD2(v65[1]) = 1024;
          if (v34)
          {
            v35 = 3;
          }

          else
          {
            v35 = 2;
          }

          *(&v65[1] + 6) = 621;
          WORD1(v65[2]) = 2048;
          *(&v65[2] + 4) = v12;
          WORD2(v65[3]) = 2048;
          *(&v65[3] + 6) = v12;
          _os_log_send_and_compose_impl(v35, v62, &v57, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v65, 38, v39, v40[0]);
          _os_crash_msg();
          __break(1u);
          goto LABEL_55;
        }

        if ((*(v54 + 2 * v11) & v12) == 0)
        {
          re::DynamicArray<int>::add(v40, v56);
          v11 = v56[0];
          v10 = v49;
        }

        LODWORD(v56[0]) = ++v11;
      }

      while (v11 < v10);
      if (v41)
      {
        v56[0] = v43;
        v56[1] = v41;
        v65[4] = 0;
        memset(v65, 0, 28);
        *&v64[2] = 0;
        memset(v62, 0, sizeof(v62));
        v55[1] = 0;
        v55[0] = 0;
        re::makeMeshFromFaces(&v46, v56, v55, v65, v62, &v57);
        if (*v62 && *&v64[2])
        {
          (*(**v62 + 40))();
        }

        if (v65[0] && v65[4])
        {
          (*(*v65[0] + 40))();
        }

        v12 = *(a1 + 2);
        if (v12 > v8)
        {
          re::GeomMesh::operator=((*(a1 + 4) + 736 * v8), &v57);
          re::GeomMesh::~GeomMesh(&v57);
          goto LABEL_21;
        }

LABEL_55:
        v56[0] = 0;
        v66 = 0u;
        v67 = 0u;
        memset(v65, 0, sizeof(v65));
        v36 = MEMORY[0x1E69E9C10];
        v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v62 = 136315906;
        *&v62[4] = "operator[]";
        *&v62[12] = 1024;
        if (v37)
        {
          v38 = 3;
        }

        else
        {
          v38 = 2;
        }

        *&v62[14] = 789;
        *&v62[18] = 2048;
        *&v62[20] = v8;
        v63 = 2048;
        *v64 = v12;
        _os_log_send_and_compose_impl(v38, v56, v65, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v62, 38, v39, v40[0]);
        _os_crash_msg();
        __break(1u);
      }

LABEL_21:
      if (v8 == 2 && (v44[2] & 1) != 0)
      {
        break;
      }

LABEL_31:
      if (++v8 == 3)
      {
        goto LABEL_32;
      }
    }

    LODWORD(v2) = v16;
    LODWORD(v3) = v18;
    v19 = re::internal::GeomAttributeManager::attributeByName(&v50, "vertexBitangent");
    v20 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v19);
    if (v47)
    {
      v22 = 0;
      v2 = v2;
      v3 = v3;
      v12 = v21;
      while (v2 != v22)
      {
        if (v3 == v22)
        {
          goto LABEL_47;
        }

        if (v21 == v22)
        {
          goto LABEL_51;
        }

        v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*&v17[2 * v22], *&v17[2 * v22]), *&v17[2 * v22], 0xCuLL), vnegq_f32(*&v15[2 * v22])), *&v17[2 * v22], vextq_s8(vuzp1q_s32(*&v15[2 * v22], *&v15[2 * v22]), *&v15[2 * v22], 0xCuLL));
        *(v20 + 16 * v22++) = vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL);
        if (v22 >= v47)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_43;
    }

LABEL_32:
    if (v40[0] && v43)
    {
      (*(*v40[0] + 40))();
    }

    re::GeomMesh::~GeomMesh(&v46);
    result = v51[0];
    if (v51[0])
    {
      if (v54)
      {
        return (*(*v51[0] + 40))();
      }
    }
  }

  return result;
}

uint64_t re::anonymous namespace::buildRoundedBoxWithStandardUVs(re *a1, unint64_t a2, void *a3)
{
  v4 = a3;
  v1531 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 44);
  v6 = *(a2 + 48);
  v7 = *(a2 + 20);
  v9 = *(a2 + 32);
  v8 = *(a2 + 36);
  v10 = *(a2 + 40);
  v12 = *(a2 + 52);
  v11 = *(a2 + 56);
  v13 = *(a2 + 60);
  v1468 = (v11 - 1);
  v1469 = (v13 - 1);
  v14 = (v1469 * v1468);
  v15 = v13 * v11;
  if (v11)
  {
    v16 = *(a2 + 56);
  }

  else
  {
    v16 = v11 - 1;
  }

  v17 = (v16 + 3);
  v1465 = (v13 * v11);
  LODWORD(v1454) = 4 * v13;
  v18 = v6 + v5 - 2;
  v1459 = v6 + v5;
  v1458 = 2 * v18;
  LODWORD(v1467) = 4 * v11;
  v19 = 4 * v11 + 2 * v18;
  v1451 = (4 * v13 + 4) * v18;
  v1452 = 8 * (v17 + v14);
  v20 = (v1451 + 8 * (v15 + 3));
  v1474 = *(a2 + 44);
  v1475 = *(a2 + 56);
  v1450 = (2 * v5 - 2) * (v6 - 1);
  v1470 = (v12 + 1);
  v1449 = v20 + v1450;
  LODWORD(v1457) = v20 + v1450 + (v19 | 1) * v1470;
  v21 = v1502;
  v1464 = *(a2 + 60);
  v1472 = (v15 + 3);
  v1473 = *(a2 + 48);
  v1476[0] = v1452 + 4 * (v6 + v5) * v13;
  v22 = (2 * v5);
  v1466 = *(a2 + 52);
  LODWORD(v1463) = v19;
  v1461 = 8 * (v15 + 3);
  v1462 = v1476[0] + 2 * v5 * v6;
  v23 = v1462 + v19 * v12;
  re::DynamicArray<unsigned short>::resize(a3, v23);
  v24 = (v17 + v14);
  v25 = 0;
  v26 = 0;
  v27 = v4[2];
  do
  {
    if (!v14)
    {
      goto LABEL_10;
    }

    v28 = v4[4];
    v29 = v25 + v14;
    v30 = v1469 * v1468;
    do
    {
      v3 = v25;
      if (v27 <= v25)
      {
        v1502[0] = 0;
        v1517 = 0u;
        v1518 = 0u;
        v1515 = 0u;
        v1516 = 0u;
        v1514 = 0u;
        v51 = MEMORY[0x1E69E9C10];
        v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v1508[0]) = 136315906;
        *(v1508 + 4) = "operator[]";
        WORD2(v1508[1]) = 1024;
        if (v52)
        {
          v53 = 3;
        }

        else
        {
          v53 = 2;
        }

        *(&v1508[1] + 6) = 789;
        WORD1(v1508[2]) = 2048;
        *(&v1508[2] + 4) = v3;
        WORD2(v1508[3]) = 2048;
        *(&v1508[3] + 6) = v27;
        _os_log_send_and_compose_impl(v53, v1502, &v1514, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
        _os_crash_msg();
        __break(1u);
LABEL_40:
        v1502[0] = 0;
        v1517 = 0u;
        v1518 = 0u;
        v1515 = 0u;
        v1516 = 0u;
        v1514 = 0u;
        v4 = MEMORY[0x1E69E9C10];
        v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v1508[0]) = 136315906;
        *(v1508 + 4) = "operator[]";
        WORD2(v1508[1]) = 1024;
        if (v54)
        {
          v55 = 3;
        }

        else
        {
          v55 = 2;
        }

        *(&v1508[1] + 6) = 789;
        WORD1(v1508[2]) = 2048;
        *(&v1508[2] + 4) = v3;
        WORD2(v1508[3]) = 2048;
        *(&v1508[3] + 6) = v27;
        _os_log_send_and_compose_impl(v55, v1502, &v1514, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
        _os_crash_msg();
        __break(1u);
LABEL_44:
        v45 = v1473;
        v46 = v1469;
        v47 = v1466;
        if (!v1473)
        {
          goto LABEL_52;
        }

        goto LABEL_45;
      }

      ++v25;
      *(v28 + 2 * v3) = 516;
      --v30;
    }

    while (v30);
    v25 = v29;
LABEL_10:
    if (v24 > v14)
    {
      v31 = v4[4];
      v32 = v25 + v17;
      v33 = v16 + 3;
      do
      {
        v3 = v25;
        if (v27 <= v25)
        {
          goto LABEL_40;
        }

        ++v25;
        *(v31 + 2 * v3) = 520;
        --v33;
      }

      while (v33);
      v25 = v32;
    }

    ++v26;
  }

  while (v26 != 4);
  v34 = 0;
  v27 = v4[2];
  v35 = v16 + 3;
  v36 = v1464;
  do
  {
    if (v14)
    {
      v37 = v4[4];
      v38 = v1469 * v1468;
      while (1)
      {
        v39 = v25;
        if (v27 <= v25)
        {
          break;
        }

        ++v25;
        *(v37 + 2 * v39) = 1040;
        if (!--v38)
        {
          goto LABEL_21;
        }
      }

      v1502[0] = 0;
      v1517 = 0u;
      v1518 = 0u;
      v1515 = 0u;
      v1516 = 0u;
      v1514 = 0u;
      v212 = MEMORY[0x1E69E9C10];
      v213 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v1508[0]) = 136315906;
      *(v1508 + 4) = "operator[]";
      WORD2(v1508[1]) = 1024;
      if (v213)
      {
        v214 = 3;
      }

      else
      {
        v214 = 2;
      }

      *(&v1508[1] + 6) = 789;
      WORD1(v1508[2]) = 2048;
      *(&v1508[2] + 4) = v39;
      WORD2(v1508[3]) = 2048;
      *(&v1508[3] + 6) = v27;
      _os_log_send_and_compose_impl(v214, v1502, &v1514, 80, &dword_1E1C61000, v212, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
      goto LABEL_266;
    }

LABEL_21:
    if (v24 > v14)
    {
      v40 = v4[4];
      v41 = v35;
      while (1)
      {
        v39 = v25;
        if (v27 <= v25)
        {
          break;
        }

        ++v25;
        *(v40 + 2 * v39) = 1056;
        if (!--v41)
        {
          goto LABEL_25;
        }
      }

LABEL_266:
      v1502[0] = 0;
      v1517 = 0u;
      v1518 = 0u;
      v1515 = 0u;
      v1516 = 0u;
      v1514 = 0u;
      v215 = MEMORY[0x1E69E9C10];
      v216 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v1508[0]) = 136315906;
      *(v1508 + 4) = "operator[]";
      WORD2(v1508[1]) = 1024;
      if (v216)
      {
        v217 = 3;
      }

      else
      {
        v217 = 2;
      }

      *(&v1508[1] + 6) = 789;
      WORD1(v1508[2]) = 2048;
      *(&v1508[2] + 4) = v39;
      WORD2(v1508[3]) = 2048;
      *(&v1508[3] + 6) = v27;
      _os_log_send_and_compose_impl(v217, v1502, &v1514, 80, &dword_1E1C61000, v215, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_270:
      v1502[0] = 0;
      v1517 = 0u;
      v1518 = 0u;
      v1515 = 0u;
      v1516 = 0u;
      v1514 = 0u;
      v218 = MEMORY[0x1E69E9C10];
      v219 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v1508[0]) = 136315906;
      *(v1508 + 4) = "operator[]";
      WORD2(v1508[1]) = 1024;
      if (v219)
      {
        v220 = 3;
      }

      else
      {
        v220 = 2;
      }

      *(&v1508[1] + 6) = 789;
      WORD1(v1508[2]) = 2048;
      *(&v1508[2] + 4) = v39;
      WORD2(v1508[3]) = 2048;
      *(&v1508[3] + 6) = v27;
      _os_log_send_and_compose_impl(v220, v1502, &v1514, 80, &dword_1E1C61000, v218, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_274:
      v1502[0] = 0;
      v1517 = 0u;
      v1518 = 0u;
      v1515 = 0u;
      v1516 = 0u;
      v1514 = 0u;
      v221 = MEMORY[0x1E69E9C10];
      v222 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v1508[0]) = 136315906;
      *(v1508 + 4) = "operator[]";
      WORD2(v1508[1]) = 1024;
      if (v222)
      {
        v223 = 3;
      }

      else
      {
        v223 = 2;
      }

      *(&v1508[1] + 6) = 789;
      WORD1(v1508[2]) = 2048;
      *(&v1508[2] + 4) = v39;
      WORD2(v1508[3]) = 2048;
      *(&v1508[3] + 6) = v27;
      _os_log_send_and_compose_impl(v223, v1502, &v1514, 80, &dword_1E1C61000, v221, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
      goto LABEL_278;
    }

LABEL_25:
    ++v34;
  }

  while (v34 != 4);
  v42 = v1474;
  if (!v1474)
  {
    goto LABEL_44;
  }

  v43 = 0;
  v27 = v4[2];
  v44 = v4[4];
  v45 = v1473;
  v46 = v1469;
  v47 = v1466;
  do
  {
    if (v1469)
    {
      v48 = v4[4];
      v49 = v1469;
      do
      {
        v39 = v25;
        if (v27 <= v25)
        {
          goto LABEL_270;
        }

        ++v25;
        *(v48 + 2 * v39) = 580;
      }

      while (--v49);
    }

    v50 = v25;
    if (v27 <= v25)
    {
      v1502[0] = 0;
      v1517 = 0u;
      v1518 = 0u;
      v1515 = 0u;
      v1516 = 0u;
      v1514 = 0u;
      v335 = MEMORY[0x1E69E9C10];
      v336 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v1508[0]) = 136315906;
      *(v1508 + 4) = "operator[]";
      WORD2(v1508[1]) = 1024;
      if (v336)
      {
        v337 = 3;
      }

      else
      {
        v337 = 2;
      }

      *(&v1508[1] + 6) = 789;
      WORD1(v1508[2]) = 2048;
      *(&v1508[2] + 4) = v50;
      WORD2(v1508[3]) = 2048;
      *(&v1508[3] + 6) = v27;
      _os_log_send_and_compose_impl(v337, v1502, &v1514, 80, &dword_1E1C61000, v335, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
      goto LABEL_423;
    }

    ++v25;
    *(v44 + 2 * v50) = 584;
    ++v43;
  }

  while (v43 != v1474);
  if (v1473)
  {
LABEL_45:
    v56 = 0;
    v27 = v4[2];
    v57 = v4[4];
    while (!v46)
    {
LABEL_50:
      v60 = v25;
      if (v27 <= v25)
      {
        goto LABEL_518;
      }

      ++v25;
      *(v57 + 2 * v60) = 648;
      if (++v56 == v45)
      {
        goto LABEL_52;
      }
    }

    v58 = v4[4];
    v59 = v46;
    while (1)
    {
      v39 = v25;
      if (v27 <= v25)
      {
        goto LABEL_274;
      }

      ++v25;
      *(v58 + 2 * v39) = 644;
      if (!--v59)
      {
        goto LABEL_50;
      }
    }
  }

LABEL_52:
  if (v42)
  {
    v61 = 0;
    v27 = v4[2];
    v62 = v4[4];
    while (!v46)
    {
LABEL_58:
      v60 = v25;
      if (v27 <= v25)
      {
        goto LABEL_522;
      }

      ++v25;
      *(v62 + 2 * v60) = 584;
      if (++v61 == v42)
      {
        goto LABEL_60;
      }
    }

    v63 = v4[4];
    v64 = v46;
    while (1)
    {
      v39 = v25;
      if (v27 <= v25)
      {
        break;
      }

      ++v25;
      *(v63 + 2 * v39) = 580;
      if (!--v64)
      {
        goto LABEL_58;
      }
    }

LABEL_278:
    v1502[0] = 0;
    v1517 = 0u;
    v1518 = 0u;
    v1515 = 0u;
    v1516 = 0u;
    v1514 = 0u;
    v224 = MEMORY[0x1E69E9C10];
    v225 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v1508 + 4) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v225)
    {
      v226 = 3;
    }

    else
    {
      v226 = 2;
    }

    *(&v1508[1] + 6) = 789;
    WORD1(v1508[2]) = 2048;
    *(&v1508[2] + 4) = v39;
    WORD2(v1508[3]) = 2048;
    *(&v1508[3] + 6) = v27;
    _os_log_send_and_compose_impl(v226, v1502, &v1514, 80, &dword_1E1C61000, v224, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_282:
    v1502[0] = 0;
    v1517 = 0u;
    v1518 = 0u;
    v1515 = 0u;
    v1516 = 0u;
    v1514 = 0u;
    v227 = MEMORY[0x1E69E9C10];
    v228 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v1508 + 4) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v228)
    {
      v229 = 3;
    }

    else
    {
      v229 = 2;
    }

    *(&v1508[1] + 6) = 789;
    WORD1(v1508[2]) = 2048;
    *(&v1508[2] + 4) = v39;
    WORD2(v1508[3]) = 2048;
    *(&v1508[3] + 6) = v27;
    _os_log_send_and_compose_impl(v229, v1502, &v1514, 80, &dword_1E1C61000, v227, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_286:
    v1502[0] = 0;
    v1517 = 0u;
    v1518 = 0u;
    v1515 = 0u;
    v1516 = 0u;
    v1514 = 0u;
    v230 = MEMORY[0x1E69E9C10];
    v231 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v1508 + 4) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v231)
    {
      v232 = 3;
    }

    else
    {
      v232 = 2;
    }

    *(&v1508[1] + 6) = 789;
    WORD1(v1508[2]) = 2048;
    *(&v1508[2] + 4) = v39;
    WORD2(v1508[3]) = 2048;
    *(&v1508[3] + 6) = v27;
    _os_log_send_and_compose_impl(v232, v1502, &v1514, 80, &dword_1E1C61000, v230, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_290:
    v1502[0] = 0;
    v1517 = 0u;
    v1518 = 0u;
    v1515 = 0u;
    v1516 = 0u;
    v1514 = 0u;
    v233 = MEMORY[0x1E69E9C10];
    v234 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v1508 + 4) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v234)
    {
      v235 = 3;
    }

    else
    {
      v235 = 2;
    }

    *(&v1508[1] + 6) = 789;
    WORD1(v1508[2]) = 2048;
    *(&v1508[2] + 4) = v39;
    WORD2(v1508[3]) = 2048;
    *(&v1508[3] + 6) = v27;
    _os_log_send_and_compose_impl(v235, v1502, &v1514, 80, &dword_1E1C61000, v233, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_294:
    v208 = 0;
    goto LABEL_295;
  }

LABEL_60:
  if (v45)
  {
    v65 = 0;
    v27 = v4[2];
    v66 = v4[4];
    while (!v46)
    {
LABEL_66:
      v69 = v25;
      if (v27 <= v25)
      {
        v1502[0] = 0;
        v1517 = 0u;
        v1518 = 0u;
        v1515 = 0u;
        v1516 = 0u;
        v1514 = 0u;
        v363 = MEMORY[0x1E69E9C10];
        v605 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v1508[0]) = 136315906;
        *(v1508 + 4) = "operator[]";
        WORD2(v1508[1]) = 1024;
        if (v605)
        {
          v606 = 3;
        }

        else
        {
          v606 = 2;
        }

        *(&v1508[1] + 6) = 789;
        WORD1(v1508[2]) = 2048;
        *(&v1508[2] + 4) = v69;
        WORD2(v1508[3]) = 2048;
        *(&v1508[3] + 6) = v27;
        _os_log_send_and_compose_impl(v606, v1502, &v1514, 80, &dword_1E1C61000, v363, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
        v523 = _os_crash_msg();
        __break(1u);
        goto LABEL_678;
      }

      ++v25;
      *(v66 + 2 * v69) = 648;
      if (++v65 == v45)
      {
        goto LABEL_68;
      }
    }

    v67 = v4[4];
    v68 = v46;
    while (1)
    {
      v39 = v25;
      if (v27 <= v25)
      {
        goto LABEL_282;
      }

      ++v25;
      *(v67 + 2 * v39) = 644;
      if (!--v68)
      {
        goto LABEL_66;
      }
    }
  }

LABEL_68:
  if (v42)
  {
    v70 = 0;
    v27 = v4[2];
    v71 = v4[4];
    while (!v46)
    {
LABEL_74:
      v69 = v25;
      if (v27 <= v25)
      {
        v1502[0] = 0;
        v1517 = 0u;
        v1518 = 0u;
        v1515 = 0u;
        v1516 = 0u;
        v1514 = 0u;
        v634 = MEMORY[0x1E69E9C10];
        v635 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v1508[0]) = 136315906;
        *(v1508 + 4) = "operator[]";
        WORD2(v1508[1]) = 1024;
        if (v635)
        {
          v636 = 3;
        }

        else
        {
          v636 = 2;
        }

        *(&v1508[1] + 6) = 789;
        WORD1(v1508[2]) = 2048;
        *(&v1508[2] + 4) = v69;
        WORD2(v1508[3]) = 2048;
        *(&v1508[3] + 6) = v27;
        _os_log_send_and_compose_impl(v636, v1502, &v1514, 80, &dword_1E1C61000, v634, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
        _os_crash_msg();
        __break(1u);
LABEL_708:
        v1502[0] = 0;
        v1517 = 0u;
        v1518 = 0u;
        v1515 = 0u;
        v1516 = 0u;
        v1514 = 0u;
        v637 = MEMORY[0x1E69E9C10];
        v638 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v1508[0]) = 136315906;
        *(v1508 + 4) = "operator[]";
        WORD2(v1508[1]) = 1024;
        if (v638)
        {
          v639 = 3;
        }

        else
        {
          v639 = 2;
        }

        *(&v1508[1] + 6) = 789;
        WORD1(v1508[2]) = 2048;
        *(&v1508[2] + 4) = v69;
        WORD2(v1508[3]) = 2048;
        *(&v1508[3] + 6) = v27;
        _os_log_send_and_compose_impl(v639, v1502, &v1514, 80, &dword_1E1C61000, v637, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
        _os_crash_msg();
        __break(1u);
LABEL_712:
        *&v1528[0] = 0;
        *(v22 + 160) = 0u;
        *(v22 + 176) = 0u;
        *(v22 + 128) = 0u;
        *(v22 + 144) = 0u;
        *(v22 + 112) = 0u;
        v640 = MEMORY[0x1E69E9C10];
        v641 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v1502[0]) = 136315906;
        *(v22 + 4) = "operator[]";
        WORD2(v1502[1]) = 1024;
        if (v641)
        {
          v642 = 3;
        }

        else
        {
          v642 = 2;
        }

        *(v22 + 14) = 797;
        WORD1(v1502[2]) = 2048;
        *(v22 + 20) = v69;
        WORD2(v1502[3]) = 2048;
        *(v22 + 30) = v27;
        _os_log_send_and_compose_impl(v642, v1528, v1508, 80, &dword_1E1C61000, v640, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1502, 38, v1434, v1435);
        _os_crash_msg();
        __break(1u);
LABEL_716:
        *&v1528[0] = 0;
        *(v22 + 160) = 0u;
        *(v22 + 176) = 0u;
        *(v22 + 128) = 0u;
        *(v22 + 144) = 0u;
        *(v22 + 112) = 0u;
        v643 = MEMORY[0x1E69E9C10];
        v644 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v1502[0]) = 136315906;
        *(v22 + 4) = "operator[]";
        WORD2(v1502[1]) = 1024;
        if (v644)
        {
          v645 = 3;
        }

        else
        {
          v645 = 2;
        }

        *(v22 + 14) = 797;
        WORD1(v1502[2]) = 2048;
        *(v22 + 20) = v3;
        WORD2(v1502[3]) = 2048;
        *(v22 + 30) = v27;
        _os_log_send_and_compose_impl(v645, v1528, v1508, 80, &dword_1E1C61000, v643, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1502, 38, v1434, v1435);
        _os_crash_msg();
        __break(1u);
LABEL_720:
        *&v1528[0] = 0;
        *(v22 + 160) = 0u;
        *(v22 + 176) = 0u;
        *(v22 + 128) = 0u;
        *(v22 + 144) = 0u;
        *(v22 + 112) = 0u;
        v646 = MEMORY[0x1E69E9C10];
        v647 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v1502[0]) = 136315906;
        *(v22 + 4) = "operator[]";
        WORD2(v1502[1]) = 1024;
        if (v647)
        {
          v648 = 3;
        }

        else
        {
          v648 = 2;
        }

        *(v22 + 14) = 797;
        WORD1(v1502[2]) = 2048;
        *(v22 + 20) = v20;
        WORD2(v1502[3]) = 2048;
        *(v22 + 30) = v27;
        _os_log_send_and_compose_impl(v648, v1528, v1508, 80, &dword_1E1C61000, v646, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1502, 38, v1434, v1435);
        _os_crash_msg();
        __break(1u);
LABEL_724:
        *&v1528[0] = 0;
        *(v22 + 160) = 0u;
        *(v22 + 176) = 0u;
        *(v22 + 128) = 0u;
        *(v22 + 144) = 0u;
        *(v22 + 112) = 0u;
        v649 = MEMORY[0x1E69E9C10];
        v650 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v1502[0]) = 136315906;
        *(v22 + 4) = "operator[]";
        WORD2(v1502[1]) = 1024;
        if (v650)
        {
          v651 = 3;
        }

        else
        {
          v651 = 2;
        }

        *(v22 + 14) = 797;
        WORD1(v1502[2]) = 2048;
        *(v22 + 20) = v21;
        WORD2(v1502[3]) = 2048;
        *(v22 + 30) = v27;
        _os_log_send_and_compose_impl(v651, v1528, v1508, 80, &dword_1E1C61000, v649, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1502, 38, v1434, v1435);
        _os_crash_msg();
        __break(1u);
LABEL_728:
        v1502[0] = 0;
        *(v21 + 272) = 0u;
        *(v21 + 288) = 0u;
        *(v21 + 240) = 0u;
        *(v21 + 256) = 0u;
        *(v21 + 224) = 0u;
        v652 = MEMORY[0x1E69E9C10];
        v653 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v1508[0]) = 136315906;
        *(v21 + 116) = "operator[]";
        WORD2(v1508[1]) = 1024;
        if (v653)
        {
          v654 = 3;
        }

        else
        {
          v654 = 2;
        }

        *(v21 + 126) = 789;
        WORD1(v1508[2]) = 2048;
        *(v21 + 132) = v69;
        WORD2(v1508[3]) = 2048;
        *(v21 + 142) = v27;
        _os_log_send_and_compose_impl(v654, v1502, &v1514, 80, &dword_1E1C61000, v652, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
        _os_crash_msg();
        __break(1u);
LABEL_732:
        v1502[0] = 0;
        *(v21 + 272) = 0u;
        *(v21 + 288) = 0u;
        *(v21 + 240) = 0u;
        *(v21 + 256) = 0u;
        *(v21 + 224) = 0u;
        v655 = MEMORY[0x1E69E9C10];
        v656 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v1508[0]) = 136315906;
        *(v21 + 116) = "operator[]";
        WORD2(v1508[1]) = 1024;
        if (v656)
        {
          v657 = 3;
        }

        else
        {
          v657 = 2;
        }

        *(v21 + 126) = 789;
        WORD1(v1508[2]) = 2048;
        *(v21 + 132) = v69;
        WORD2(v1508[3]) = 2048;
        *(v21 + 142) = v27;
        _os_log_send_and_compose_impl(v657, v1502, &v1514, 80, &dword_1E1C61000, v655, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
        _os_crash_msg();
        __break(1u);
LABEL_736:
        v1502[0] = 0;
        *(v21 + 272) = 0u;
        *(v21 + 288) = 0u;
        *(v21 + 240) = 0u;
        *(v21 + 256) = 0u;
        *(v21 + 224) = 0u;
        v658 = MEMORY[0x1E69E9C10];
        v659 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v1508[0]) = 136315906;
        *(v21 + 116) = "operator[]";
        WORD2(v1508[1]) = 1024;
        if (v659)
        {
          v660 = 3;
        }

        else
        {
          v660 = 2;
        }

        *(v21 + 126) = 789;
        WORD1(v1508[2]) = 2048;
        *(v21 + 132) = v69;
        WORD2(v1508[3]) = 2048;
        *(v21 + 142) = v27;
        _os_log_send_and_compose_impl(v660, v1502, &v1514, 80, &dword_1E1C61000, v658, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
        _os_crash_msg();
        __break(1u);
LABEL_740:
        v1502[0] = 0;
        *(v21 + 272) = 0u;
        *(v21 + 288) = 0u;
        *(v21 + 240) = 0u;
        *(v21 + 256) = 0u;
        *(v21 + 224) = 0u;
        v661 = MEMORY[0x1E69E9C10];
        v662 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v1508[0]) = 136315906;
        *(v21 + 116) = "operator[]";
        WORD2(v1508[1]) = 1024;
        if (v662)
        {
          v663 = 3;
        }

        else
        {
          v663 = 2;
        }

        *(v21 + 126) = 789;
        WORD1(v1508[2]) = 2048;
        *(v21 + 132) = v69;
        WORD2(v1508[3]) = 2048;
        *(v21 + 142) = v27;
        _os_log_send_and_compose_impl(v663, v1502, &v1514, 80, &dword_1E1C61000, v661, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
        _os_crash_msg();
        __break(1u);
LABEL_744:
        v1502[0] = 0;
        *(v21 + 272) = 0u;
        *(v21 + 288) = 0u;
        *(v21 + 240) = 0u;
        *(v21 + 256) = 0u;
        *(v21 + 224) = 0u;
        v664 = MEMORY[0x1E69E9C10];
        v665 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v1508[0]) = 136315906;
        *(v21 + 116) = "operator[]";
        WORD2(v1508[1]) = 1024;
        if (v665)
        {
          v666 = 3;
        }

        else
        {
          v666 = 2;
        }

        *(v21 + 126) = 789;
        WORD1(v1508[2]) = 2048;
        *(v21 + 132) = v69;
        WORD2(v1508[3]) = 2048;
        *(v21 + 142) = v27;
        _os_log_send_and_compose_impl(v666, v1502, &v1514, 80, &dword_1E1C61000, v664, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
        _os_crash_msg();
        __break(1u);
LABEL_748:
        v1502[0] = 0;
        *(v21 + 272) = 0u;
        *(v21 + 288) = 0u;
        *(v21 + 240) = 0u;
        *(v21 + 256) = 0u;
        *(v21 + 224) = 0u;
        v667 = MEMORY[0x1E69E9C10];
        v668 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v1508[0]) = 136315906;
        *(v21 + 116) = "operator[]";
        WORD2(v1508[1]) = 1024;
        if (v668)
        {
          v669 = 3;
        }

        else
        {
          v669 = 2;
        }

        *(v21 + 126) = 789;
        WORD1(v1508[2]) = 2048;
        *(v21 + 132) = v69;
        WORD2(v1508[3]) = 2048;
        *(v21 + 142) = v27;
        _os_log_send_and_compose_impl(v669, v1502, &v1514, 80, &dword_1E1C61000, v667, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
        _os_crash_msg();
        __break(1u);
LABEL_752:
        v1502[0] = 0;
        *(v21 + 272) = 0u;
        *(v21 + 288) = 0u;
        *(v21 + 240) = 0u;
        *(v21 + 256) = 0u;
        *(v21 + 224) = 0u;
        v670 = MEMORY[0x1E69E9C10];
        v671 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v1508[0]) = 136315906;
        *(v21 + 116) = "operator[]";
        WORD2(v1508[1]) = 1024;
        if (v671)
        {
          v672 = 3;
        }

        else
        {
          v672 = 2;
        }

        *(v21 + 126) = 789;
        WORD1(v1508[2]) = 2048;
        *(v21 + 132) = v69;
        WORD2(v1508[3]) = 2048;
        *(v21 + 142) = v27;
        _os_log_send_and_compose_impl(v672, v1502, &v1514, 80, &dword_1E1C61000, v670, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
        _os_crash_msg();
        __break(1u);
LABEL_756:
        v1502[0] = 0;
        *(v21 + 272) = 0u;
        *(v21 + 288) = 0u;
        *(v21 + 240) = 0u;
        *(v21 + 256) = 0u;
        *(v21 + 224) = 0u;
        v673 = MEMORY[0x1E69E9C10];
        v674 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v1508[0]) = 136315906;
        *(v21 + 116) = "operator[]";
        WORD2(v1508[1]) = 1024;
        if (v674)
        {
          v675 = 3;
        }

        else
        {
          v675 = 2;
        }

        *(v21 + 126) = 789;
        WORD1(v1508[2]) = 2048;
        *(v21 + 132) = v69;
        WORD2(v1508[3]) = 2048;
        *(v21 + 142) = v27;
        _os_log_send_and_compose_impl(v675, v1502, &v1514, 80, &dword_1E1C61000, v673, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
        _os_crash_msg();
        __break(1u);
LABEL_760:
        v1502[0] = 0;
        *(v21 + 272) = 0u;
        *(v21 + 288) = 0u;
        *(v21 + 240) = 0u;
        *(v21 + 256) = 0u;
        *(v21 + 224) = 0u;
        v676 = MEMORY[0x1E69E9C10];
        v677 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v1508[0]) = 136315906;
        *(v21 + 116) = "operator[]";
        WORD2(v1508[1]) = 1024;
        if (v677)
        {
          v678 = 3;
        }

        else
        {
          v678 = 2;
        }

        *(v21 + 126) = 789;
        WORD1(v1508[2]) = 2048;
        *(v21 + 132) = v69;
        WORD2(v1508[3]) = 2048;
        *(v21 + 142) = v27;
        _os_log_send_and_compose_impl(v678, v1502, &v1514, 80, &dword_1E1C61000, v676, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
        _os_crash_msg();
        __break(1u);
LABEL_764:
        v1502[0] = 0;
        *(v21 + 272) = 0u;
        *(v21 + 288) = 0u;
        *(v21 + 240) = 0u;
        *(v21 + 256) = 0u;
        *(v21 + 224) = 0u;
        v679 = MEMORY[0x1E69E9C10];
        v680 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v1508[0]) = 136315906;
        *(v21 + 116) = "operator[]";
        WORD2(v1508[1]) = 1024;
        if (v680)
        {
          v681 = 3;
        }

        else
        {
          v681 = 2;
        }

        *(v21 + 126) = 789;
        WORD1(v1508[2]) = 2048;
        *(v21 + 132) = v69;
        WORD2(v1508[3]) = 2048;
        *(v21 + 142) = v27;
        _os_log_send_and_compose_impl(v681, v1502, &v1514, 80, &dword_1E1C61000, v679, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
        _os_crash_msg();
        __break(1u);
LABEL_768:
        v1502[0] = 0;
        *(v21 + 272) = 0u;
        *(v21 + 288) = 0u;
        *(v21 + 240) = 0u;
        *(v21 + 256) = 0u;
        *(v21 + 224) = 0u;
        v682 = MEMORY[0x1E69E9C10];
        v683 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v1508[0]) = 136315906;
        *(v21 + 116) = "operator[]";
        WORD2(v1508[1]) = 1024;
        if (v683)
        {
          v684 = 3;
        }

        else
        {
          v684 = 2;
        }

        *(v21 + 126) = 789;
        WORD1(v1508[2]) = 2048;
        *(v21 + 132) = v69;
        WORD2(v1508[3]) = 2048;
        *(v21 + 142) = v27;
        _os_log_send_and_compose_impl(v684, v1502, &v1514, 80, &dword_1E1C61000, v682, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
        _os_crash_msg();
        __break(1u);
LABEL_772:
        v1502[0] = 0;
        *(v21 + 272) = 0u;
        *(v21 + 288) = 0u;
        *(v21 + 240) = 0u;
        *(v21 + 256) = 0u;
        *(v21 + 224) = 0u;
        v363 = MEMORY[0x1E69E9C10];
        v685 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v1508[0]) = 136315906;
        *(v21 + 116) = "operator[]";
        WORD2(v1508[1]) = 1024;
        if (v685)
        {
          v686 = 3;
        }

        else
        {
          v686 = 2;
        }

        *(v21 + 126) = 789;
        WORD1(v1508[2]) = 2048;
        *(v21 + 132) = v69;
        WORD2(v1508[3]) = 2048;
        *(v21 + 142) = v27;
        _os_log_send_and_compose_impl(v686, v1502, &v1514, 80, &dword_1E1C61000, v363, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
        v523 = _os_crash_msg();
        __break(1u);
LABEL_776:
        v687 = v1475;
        if (v1475)
        {
          v14 = v69;
          v17 = v1441;
          v688 = v69 - v1441;
          if (v69 < v1441)
          {
            v688 = 0;
          }

          do
          {
            if (!v688)
            {
              goto LABEL_1612;
            }

            *(v363 + 8 * v17) = 0;
            --v688;
            ++v17;
            --v687;
          }

          while (v687);
        }

        v14 = (v1441 - v1475);
        if (v1469)
        {
          v689 = 0.0;
          v690 = v1469;
          v3 = v1441;
          v691 = v1441 - v1475;
          while (v3 < v27)
          {
            v17 = v691;
            if (v691 >= v27)
            {
              goto LABEL_1632;
            }

            if (v691 >= v69)
            {
              goto LABEL_1636;
            }

            v692 = vsubq_f32(*(v523 + 16 * v3), *(v523 + 16 * v691));
            v693 = vmulq_f32(v692, v692);
            v689 = v689 + sqrtf(v693.f32[2] + vaddv_f32(*v693.f32));
            *(v363 + 8 * v691) = LODWORD(v689);
            v691 -= v1475;
            v3 = (v3 - v1475);
            if (!--v690)
            {
              goto LABEL_787;
            }
          }

          goto LABEL_1628;
        }

LABEL_787:
        if (v14 < v27)
        {
          if (v27 > v1441)
          {
            if (v1468 >= 2)
            {
              v694 = vsubq_f32(*(v523 + 16 * v14), *(v523 + 16 * v1441));
              v695 = vmulq_f32(v694, v694);
              v696 = sqrtf(v695.f32[2] + vaddv_f32(*v695.f32));
              v697 = vextq_s8(vuzp1q_s32(v694, v694), v694, 0xCuLL);
              v698 = vnegq_f32(v694);
              v20 = v27;
              v699 = 1;
              while (1)
              {
                v17 = v699 + v14;
                if (v699 == v27 - v14)
                {
                  goto LABEL_1681;
                }

                if (v607 >= 2)
                {
                  break;
                }

LABEL_798:
                if (++v699 == v1468)
                {
                  goto LABEL_799;
                }
              }

              v700 = vsubq_f32(*(v523 + 16 * v17), *(v523 + 16 * v1441));
              v701 = vmulq_f32(v700, v700);
              v702 = vmulq_f32(v694, v700);
              v702.f32[0] = v702.f32[2] + vaddv_f32(*v702.f32);
              v703 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v700, v700), v700, 0xCuLL), v698), v700, v697);
              v704 = vmulq_f32(v703, v703);
              v702.i32[1] = sqrtf(v704.f32[1] + (v704.f32[2] + v704.f32[0]));
              v705 = vmul_n_f32(*v702.f32, 1.0 / (v696 * sqrtf(v701.f32[2] + vaddv_f32(*v701.f32))));
              v706 = 0.0;
              v707 = v1469;
              v21 = v1441;
              while (v21 < v27)
              {
                v3 = v17;
                if (v17 >= v27)
                {
                  goto LABEL_1304;
                }

                if (v17 >= v69)
                {
                  goto LABEL_1308;
                }

                v708 = vsubq_f32(*(v523 + 16 * v21), *(v523 + 16 * v17));
                v709 = vmulq_f32(v708, v708);
                v706 = v706 + sqrtf(v709.f32[2] + vaddv_f32(*v709.f32));
                *(v363 + 8 * v17) = vmul_n_f32(v705, v706);
                v21 = v17;
                v17 = (v17 - v1475);
                if (!--v707)
                {
                  goto LABEL_798;
                }
              }

              goto LABEL_1300;
            }

LABEL_799:
            v3 = v1457;
            v525 = v1440;
            if (!v1469)
            {
              goto LABEL_626;
            }

            v27 = (v1441 - 1);
            while (v14 < v69)
            {
              if (v27 >= v69)
              {
                goto LABEL_1648;
              }

              LODWORD(v710) = 0;
              HIDWORD(v710) = *(v363 + 8 * v14);
              *(v363 + 8 * v27) = v710;
              v14 = (v14 - v1475);
              v27 = (v27 - v1475);
              if (!--v1469)
              {
                goto LABEL_626;
              }
            }

LABEL_1644:
            *v1527 = 0;
            *(v22 + 48) = 0u;
            *(v22 + 64) = 0u;
            *(v22 + 16) = 0u;
            *(v22 + 32) = 0u;
            *v22 = 0u;
            v1296 = MEMORY[0x1E69E9C10];
            v1297 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v1528[0]) = 136315906;
            *(v1528 + 4) = "operator[]";
            if (v1297)
            {
              v1298 = 3;
            }

            else
            {
              v1298 = 2;
            }

            WORD6(v1528[0]) = 1024;
            *(v1528 + 14) = 621;
            WORD1(v1528[1]) = 2048;
            *(&v1528[1] + 4) = v14;
            WORD6(v1528[1]) = 2048;
            *(&v1528[1] + 14) = v69;
            _os_log_send_and_compose_impl(v1298, v1527, v1502, 80, &dword_1E1C61000, v1296, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
            _os_crash_msg();
            __break(1u);
LABEL_1648:
            *v1527 = 0;
            *(v22 + 48) = 0u;
            *(v22 + 64) = 0u;
            *(v22 + 16) = 0u;
            *(v22 + 32) = 0u;
            *v22 = 0u;
            v1299 = MEMORY[0x1E69E9C10];
            v1300 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v1528[0]) = 136315906;
            *(v1528 + 4) = "operator[]";
            if (v1300)
            {
              v1301 = 3;
            }

            else
            {
              v1301 = 2;
            }

            WORD6(v1528[0]) = 1024;
            *(v1528 + 14) = 621;
            WORD1(v1528[1]) = 2048;
            *(&v1528[1] + 4) = v27;
            WORD6(v1528[1]) = 2048;
            *(&v1528[1] + 14) = v69;
            _os_log_send_and_compose_impl(v1301, v1527, v1502, 80, &dword_1E1C61000, v1299, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
            _os_crash_msg();
            __break(1u);
LABEL_1652:
            *v1527 = 0;
            *(v22 + 48) = 0u;
            *(v22 + 64) = 0u;
            *(v22 + 16) = 0u;
            *(v22 + 32) = 0u;
            *v22 = 0u;
            v1302 = MEMORY[0x1E69E9C10];
            v1303 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v1528[0]) = 136315906;
            *(v1528 + 4) = "operator[]";
            if (v1303)
            {
              v1304 = 3;
            }

            else
            {
              v1304 = 2;
            }

            WORD6(v1528[0]) = 1024;
            *(v1528 + 14) = 621;
            WORD1(v1528[1]) = 2048;
            *(&v1528[1] + 4) = v14;
            WORD6(v1528[1]) = 2048;
            *(&v1528[1] + 14) = v69;
            _os_log_send_and_compose_impl(v1304, v1527, v1502, 80, &dword_1E1C61000, v1302, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
            _os_crash_msg();
            __break(1u);
LABEL_1656:
            *v1527 = 0;
            *(v22 + 48) = 0u;
            *(v22 + 64) = 0u;
            *(v22 + 16) = 0u;
            *(v22 + 32) = 0u;
            *v22 = 0u;
            v1305 = MEMORY[0x1E69E9C10];
            v1306 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v1528[0]) = 136315906;
            *(v1528 + 4) = "operator[]";
            if (v1306)
            {
              v1307 = 3;
            }

            else
            {
              v1307 = 2;
            }

            WORD6(v1528[0]) = 1024;
            *(v1528 + 14) = 621;
            WORD1(v1528[1]) = 2048;
            *(&v1528[1] + 4) = v27;
            WORD6(v1528[1]) = 2048;
            *(&v1528[1] + 14) = v69;
            _os_log_send_and_compose_impl(v1307, v1527, v1502, 80, &dword_1E1C61000, v1305, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
            _os_crash_msg();
            __break(1u);
LABEL_1660:
            *v1527 = 0;
            v1503 = 0u;
            v1504 = 0u;
            memset(v1502, 0, sizeof(v1502));
            v1308 = MEMORY[0x1E69E9C10];
            v1309 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v1528[0]) = 136315906;
            *(v1528 + 4) = "operator[]";
            WORD6(v1528[0]) = 1024;
            if (v1309)
            {
              v1310 = 3;
            }

            else
            {
              v1310 = 2;
            }

            *(v1528 + 14) = 797;
            WORD1(v1528[1]) = 2048;
            *(&v1528[1] + 4) = 0;
            WORD6(v1528[1]) = 2048;
            *(&v1528[1] + 14) = 0;
            _os_log_send_and_compose_impl(v1310, v1527, v1502, 80, &dword_1E1C61000, v1308, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
            _os_crash_msg();
            __break(1u);
LABEL_1664:
            *v1527 = 0;
            v1503 = 0u;
            v1504 = 0u;
            memset(v1502, 0, sizeof(v1502));
            v1311 = MEMORY[0x1E69E9C10];
            v1312 = v470;
            v1313 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v1528[0]) = 136315906;
            *(v1528 + 4) = "operator[]";
            WORD6(v1528[0]) = 1024;
            if (v1313)
            {
              v1314 = 3;
            }

            else
            {
              v1314 = 2;
            }

            *(v1528 + 14) = 621;
            WORD1(v1528[1]) = 2048;
            *(&v1528[1] + 4) = v27;
            WORD6(v1528[1]) = 2048;
            *(&v1528[1] + 14) = v1312;
            _os_log_send_and_compose_impl(v1314, v1527, v1502, 80, &dword_1E1C61000, v1311, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
            _os_crash_msg();
            __break(1u);
LABEL_1668:
            *v1527 = 0;
            v1503 = 0u;
            v1504 = 0u;
            memset(v1502, 0, sizeof(v1502));
            v1315 = MEMORY[0x1E69E9C10];
            v1316 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v1528[0]) = 136315906;
            *(v1528 + 4) = "operator[]";
            WORD6(v1528[0]) = 1024;
            if (v1316)
            {
              v1317 = 3;
            }

            else
            {
              v1317 = 2;
            }

            *(v1528 + 14) = 797;
            WORD1(v1528[1]) = 2048;
            *(&v1528[1] + 4) = 0;
            WORD6(v1528[1]) = 2048;
            *(&v1528[1] + 14) = 0;
            _os_log_send_and_compose_impl(v1317, v1527, v1502, 80, &dword_1E1C61000, v1315, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
            _os_crash_msg();
            __break(1u);
LABEL_1672:
            *v1527 = 0;
            v1503 = 0u;
            v1504 = 0u;
            memset(v1502, 0, sizeof(v1502));
            v69 = MEMORY[0x1E69E9C10];
            v1318 = v470;
            v1319 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v1528[0]) = 136315906;
            *(v1528 + 4) = "operator[]";
            WORD6(v1528[0]) = 1024;
            if (v1319)
            {
              v1320 = 3;
            }

            else
            {
              v1320 = 2;
            }

            *(v1528 + 14) = 621;
            WORD1(v1528[1]) = 2048;
            *(&v1528[1] + 4) = v17;
            WORD6(v1528[1]) = 2048;
            *(&v1528[1] + 14) = v1318;
            _os_log_send_and_compose_impl(v1320, v1527, v1502, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
            _os_crash_msg();
            __break(1u);
LABEL_1676:
            re::internal::assertLog(6, v470, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v27, v27);
            _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v1428, v1431);
            __break(1u);
LABEL_1677:
            *v1527 = 0;
            v1503 = 0u;
            v1504 = 0u;
            memset(v1502, 0, sizeof(v1502));
            v1321 = MEMORY[0x1E69E9C10];
            v1322 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v1528[0]) = 136315906;
            *(v1528 + 4) = "operator[]";
            WORD6(v1528[0]) = 1024;
            if (v1322)
            {
              v1323 = 3;
            }

            else
            {
              v1323 = 2;
            }

            *(v1528 + 14) = 621;
            WORD1(v1528[1]) = 2048;
            *(&v1528[1] + 4) = v3;
            WORD6(v1528[1]) = 2048;
            *(&v1528[1] + 14) = v14;
            _os_log_send_and_compose_impl(v1323, v1527, v1502, 80, &dword_1E1C61000, v1321, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
            _os_crash_msg();
            __break(1u);
LABEL_1681:
            *v1527 = 0;
            *(v22 + 48) = 0u;
            *(v22 + 64) = 0u;
            *(v22 + 16) = 0u;
            *(v22 + 32) = 0u;
            *v22 = 0u;
            v1324 = MEMORY[0x1E69E9C10];
            v1325 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v1528[0]) = 136315906;
            *(v1528 + 4) = "operator[]";
            WORD6(v1528[0]) = 1024;
            if (v1325)
            {
              v1326 = 3;
            }

            else
            {
              v1326 = 2;
            }

            *(v1528 + 14) = 613;
            WORD1(v1528[1]) = 2048;
            *(&v1528[1] + 4) = v17;
            WORD6(v1528[1]) = 2048;
            *(&v1528[1] + 14) = v20;
            _os_log_send_and_compose_impl(v1326, v1527, v1502, 80, &dword_1E1C61000, v1324, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
            _os_crash_msg();
            __break(1u);
LABEL_1685:
            *v1527 = 0;
            *(v22 + 48) = 0u;
            *(v22 + 64) = 0u;
            *(v22 + 16) = 0u;
            *(v22 + 32) = 0u;
            *v22 = 0u;
            v1327 = MEMORY[0x1E69E9C10];
            v1328 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v1528[0]) = 136315906;
            *(v1528 + 4) = "operator[]";
            WORD6(v1528[0]) = 1024;
            if (v1328)
            {
              v1329 = 3;
            }

            else
            {
              v1329 = 2;
            }

            *(v1528 + 14) = 613;
            WORD1(v1528[1]) = 2048;
            *(&v1528[1] + 4) = v14;
            WORD6(v1528[1]) = 2048;
            *(&v1528[1] + 14) = v27;
            _os_log_send_and_compose_impl(v1329, v1527, v1502, 80, &dword_1E1C61000, v1327, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
            _os_crash_msg();
            __break(1u);
LABEL_1689:
            *v1527 = 0;
            v1503 = 0u;
            v1504 = 0u;
            memset(v1502, 0, sizeof(v1502));
            v363 = MEMORY[0x1E69E9C10];
            v1330 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v1528[0]) = 136315906;
            *(v1528 + 4) = "operator[]";
            WORD6(v1528[0]) = 1024;
            if (v1330)
            {
              v1331 = 3;
            }

            else
            {
              v1331 = 2;
            }

            *(v1528 + 14) = 797;
            WORD1(v1528[1]) = 2048;
            *(&v1528[1] + 4) = v69;
            WORD6(v1528[1]) = 2048;
            *(&v1528[1] + 14) = v27;
            _os_log_send_and_compose_impl(v1331, v1527, v1502, 80, &dword_1E1C61000, v363, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
            _os_crash_msg();
            __break(1u);
LABEL_1693:
            *v1527 = 0;
            v1503 = 0u;
            v1504 = 0u;
            memset(v1502, 0, sizeof(v1502));
            v1332 = MEMORY[0x1E69E9C10];
            v1333 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v1528[0]) = 136315906;
            *(v1528 + 4) = "operator[]";
            WORD6(v1528[0]) = 1024;
            if (v1333)
            {
              v1334 = 3;
            }

            else
            {
              v1334 = 2;
            }

            *(v1528 + 14) = 621;
            WORD1(v1528[1]) = 2048;
            *(&v1528[1] + 4) = v14;
            WORD6(v1528[1]) = 2048;
            *(&v1528[1] + 14) = v363;
            _os_log_send_and_compose_impl(v1334, v1527, v1502, 80, &dword_1E1C61000, v1332, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
            _os_crash_msg();
            __break(1u);
LABEL_1697:
            *v1527 = 0;
            v1503 = 0u;
            v1504 = 0u;
            memset(v1502, 0, sizeof(v1502));
            v363 = MEMORY[0x1E69E9C10];
            v1335 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v1528[0]) = 136315906;
            *(v1528 + 4) = "operator[]";
            WORD6(v1528[0]) = 1024;
            if (v1335)
            {
              v1336 = 3;
            }

            else
            {
              v1336 = 2;
            }

            *(v1528 + 14) = 797;
            WORD1(v1528[1]) = 2048;
            *(&v1528[1] + 4) = v3;
            WORD6(v1528[1]) = 2048;
            *(&v1528[1] + 14) = v27;
            _os_log_send_and_compose_impl(v1336, v1527, v1502, 80, &dword_1E1C61000, v363, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
            _os_crash_msg();
            __break(1u);
LABEL_1701:
            *v1527 = 0;
            v1503 = 0u;
            v1504 = 0u;
            memset(v1502, 0, sizeof(v1502));
            v69 = MEMORY[0x1E69E9C10];
            v1337 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v1528[0]) = 136315906;
            *(v1528 + 4) = "operator[]";
            WORD6(v1528[0]) = 1024;
            if (v1337)
            {
              v1338 = 3;
            }

            else
            {
              v1338 = 2;
            }

            *(v1528 + 14) = 621;
            WORD1(v1528[1]) = 2048;
            *(&v1528[1] + 4) = v27;
            WORD6(v1528[1]) = 2048;
            *(&v1528[1] + 14) = v363;
            _os_log_send_and_compose_impl(v1338, v1527, v1502, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
            _os_crash_msg();
            __break(1u);
LABEL_1705:
            *v1527 = 0;
            v1503 = 0u;
            v1504 = 0u;
            memset(v1502, 0, sizeof(v1502));
            v363 = MEMORY[0x1E69E9C10];
            v1339 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v1528[0]) = 136315906;
            *(v1528 + 4) = "operator[]";
            WORD6(v1528[0]) = 1024;
            if (v1339)
            {
              v1340 = 3;
            }

            else
            {
              v1340 = 2;
            }

            *(v1528 + 14) = 797;
            WORD1(v1528[1]) = 2048;
            *(&v1528[1] + 4) = v69;
            WORD6(v1528[1]) = 2048;
            *(&v1528[1] + 14) = v20;
            _os_log_send_and_compose_impl(v1340, v1527, v1502, 80, &dword_1E1C61000, v363, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
            _os_crash_msg();
            __break(1u);
LABEL_1709:
            *v1527 = 0;
            v1503 = 0u;
            v1504 = 0u;
            memset(v1502, 0, sizeof(v1502));
            v1341 = MEMORY[0x1E69E9C10];
            v1342 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v1528[0]) = 136315906;
            *(v1528 + 4) = "operator[]";
            WORD6(v1528[0]) = 1024;
            if (v1342)
            {
              v1343 = 3;
            }

            else
            {
              v1343 = 2;
            }

            *(v1528 + 14) = 621;
            WORD1(v1528[1]) = 2048;
            *(&v1528[1] + 4) = v17;
            WORD6(v1528[1]) = 2048;
            *(&v1528[1] + 14) = v363;
            _os_log_send_and_compose_impl(v1343, v1527, v1502, 80, &dword_1E1C61000, v1341, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
            _os_crash_msg();
            __break(1u);
LABEL_1713:
            *v1527 = 0;
            v1503 = 0u;
            v1504 = 0u;
            memset(v1502, 0, sizeof(v1502));
            v363 = MEMORY[0x1E69E9C10];
            v1344 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v1528[0]) = 136315906;
            *(v1528 + 4) = "operator[]";
            WORD6(v1528[0]) = 1024;
            if (v1344)
            {
              v1345 = 3;
            }

            else
            {
              v1345 = 2;
            }

            *(v1528 + 14) = 797;
            WORD1(v1528[1]) = 2048;
            *(&v1528[1] + 4) = v3;
            WORD6(v1528[1]) = 2048;
            *(&v1528[1] + 14) = v20;
            _os_log_send_and_compose_impl(v1345, v1527, v1502, 80, &dword_1E1C61000, v363, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
            _os_crash_msg();
            __break(1u);
LABEL_1717:
            *v1527 = 0;
            v1503 = 0u;
            v1504 = 0u;
            memset(v1502, 0, sizeof(v1502));
            v69 = MEMORY[0x1E69E9C10];
            v1346 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v1528[0]) = 136315906;
            *(v1528 + 4) = "operator[]";
            WORD6(v1528[0]) = 1024;
            if (v1346)
            {
              v1347 = 3;
            }

            else
            {
              v1347 = 2;
            }

            *(v1528 + 14) = 621;
            WORD1(v1528[1]) = 2048;
            *(&v1528[1] + 4) = v3;
            WORD6(v1528[1]) = 2048;
            *(&v1528[1] + 14) = v363;
            _os_log_send_and_compose_impl(v1347, v1527, v1502, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
            _os_crash_msg();
            __break(1u);
LABEL_1721:
            *v1527 = 0;
            *(v22 + 48) = 0u;
            *(v22 + 64) = 0u;
            *(v22 + 16) = 0u;
            *(v22 + 32) = 0u;
            *v22 = 0u;
            v1348 = MEMORY[0x1E69E9C10];
            v1349 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v1528[0]) = 136315906;
            *(v1528 + 4) = "operator[]";
            WORD6(v1528[0]) = 1024;
            if (v1349)
            {
              v1350 = 3;
            }

            else
            {
              v1350 = 2;
            }

            *(v1528 + 14) = 621;
            WORD1(v1528[1]) = 2048;
            *(&v1528[1] + 4) = v1441;
            WORD6(v1528[1]) = 2048;
            *(&v1528[1] + 14) = v69;
            _os_log_send_and_compose_impl(v1350, v1527, v1502, 80, &dword_1E1C61000, v1348, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
            _os_crash_msg();
            __break(1u);
LABEL_1725:
            *v1527 = 0;
            *(v22 + 48) = 0u;
            *(v22 + 64) = 0u;
            *(v22 + 16) = 0u;
            *(v22 + 32) = 0u;
            *v22 = 0u;
            v1351 = MEMORY[0x1E69E9C10];
            v14 = v525;
            v1352 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v1528[0]) = 136315906;
            *(v1528 + 4) = "operator[]";
            WORD6(v1528[0]) = 1024;
            if (v1352)
            {
              v1353 = 3;
            }

            else
            {
              v1353 = 2;
            }

            *(v1528 + 14) = 621;
            WORD1(v1528[1]) = 2048;
            *(&v1528[1] + 4) = v14;
            WORD6(v1528[1]) = 2048;
            *(&v1528[1] + 14) = v69;
            _os_log_send_and_compose_impl(v1353, v1527, v1502, 80, &dword_1E1C61000, v1351, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
            _os_crash_msg();
            __break(1u);
LABEL_1729:
            *v1527 = 0;
            *(v22 + 48) = 0u;
            *(v22 + 64) = 0u;
            *(v22 + 16) = 0u;
            *(v22 + 32) = 0u;
            *v22 = 0u;
            v1354 = MEMORY[0x1E69E9C10];
            v1355 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v1528[0]) = 136315906;
            *(v1528 + 4) = "operator[]";
            WORD6(v1528[0]) = 1024;
            if (v1355)
            {
              v1356 = 3;
            }

            else
            {
              v1356 = 2;
            }

            *(v1528 + 14) = 621;
            WORD1(v1528[1]) = 2048;
            *(&v1528[1] + 4) = v27;
            WORD6(v1528[1]) = 2048;
            *(&v1528[1] + 14) = v69;
            _os_log_send_and_compose_impl(v1356, v1527, v1502, 80, &dword_1E1C61000, v1354, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
            _os_crash_msg();
            __break(1u);
LABEL_1733:
            *v1527 = 0;
            *(v22 + 48) = 0u;
            *(v22 + 64) = 0u;
            *(v22 + 16) = 0u;
            *(v22 + 32) = 0u;
            *v22 = 0u;
            v1357 = MEMORY[0x1E69E9C10];
            v1358 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v1528[0]) = 136315906;
            *(v1528 + 4) = "operator[]";
            WORD6(v1528[0]) = 1024;
            if (v1358)
            {
              v1359 = 3;
            }

            else
            {
              v1359 = 2;
            }

            *(v1528 + 14) = 621;
            WORD1(v1528[1]) = 2048;
            *(&v1528[1] + 4) = v3;
            WORD6(v1528[1]) = 2048;
            *(&v1528[1] + 14) = v69;
            _os_log_send_and_compose_impl(v1359, v1527, v1502, 80, &dword_1E1C61000, v1357, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
            _os_crash_msg();
            __break(1u);
LABEL_1737:
            re::internal::assertLog(6, v470, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v27, v27);
            _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v1429, v1432);
            __break(1u);
LABEL_1738:
            *v1527 = 0;
            v1503 = 0u;
            v1504 = 0u;
            memset(v1502, 0, sizeof(v1502));
            v1360 = MEMORY[0x1E69E9C10];
            v1361 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v1528[0]) = 136315906;
            *(v1528 + 4) = "operator[]";
            WORD6(v1528[0]) = 1024;
            if (v1361)
            {
              v1362 = 3;
            }

            else
            {
              v1362 = 2;
            }

            *(v1528 + 14) = 621;
            WORD1(v1528[1]) = 2048;
            *(&v1528[1] + 4) = v3;
            WORD6(v1528[1]) = 2048;
            *(&v1528[1] + 14) = v14;
            _os_log_send_and_compose_impl(v1362, v1527, v1502, 80, &dword_1E1C61000, v1360, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
            _os_crash_msg();
            __break(1u);
LABEL_1742:
            *v1527 = 0;
            v1503 = 0u;
            v1504 = 0u;
            memset(v1502, 0, sizeof(v1502));
            v1363 = MEMORY[0x1E69E9C10];
            v1364 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v1528[0]) = 136315906;
            *(v1528 + 4) = "operator[]";
            WORD6(v1528[0]) = 1024;
            if (v1364)
            {
              v1365 = 3;
            }

            else
            {
              v1365 = 2;
            }

            *(v1528 + 14) = 797;
            WORD1(v1528[1]) = 2048;
            *(&v1528[1] + 4) = 0;
            WORD6(v1528[1]) = 2048;
            *(&v1528[1] + 14) = 0;
            _os_log_send_and_compose_impl(v1365, v1527, v1502, 80, &dword_1E1C61000, v1363, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
            _os_crash_msg();
            __break(1u);
LABEL_1746:
            *v1527 = 0;
            v1503 = 0u;
            v1504 = 0u;
            memset(v1502, 0, sizeof(v1502));
            v1366 = MEMORY[0x1E69E9C10];
            v1367 = v406;
            v1368 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v1528[0]) = 136315906;
            *(v1528 + 4) = "operator[]";
            WORD6(v1528[0]) = 1024;
            if (v1368)
            {
              v1369 = 3;
            }

            else
            {
              v1369 = 2;
            }

            *(v1528 + 14) = 621;
            WORD1(v1528[1]) = 2048;
            *(&v1528[1] + 4) = v69;
            WORD6(v1528[1]) = 2048;
            *(&v1528[1] + 14) = v1367;
            _os_log_send_and_compose_impl(v1369, v1527, v1502, 80, &dword_1E1C61000, v1366, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
            _os_crash_msg();
            __break(1u);
LABEL_1750:
            *v1527 = 0;
            v1503 = 0u;
            v1504 = 0u;
            memset(v1502, 0, sizeof(v1502));
            v1370 = MEMORY[0x1E69E9C10];
            v14 = v407;
            v1371 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v1528[0]) = 136315906;
            *(v1528 + 4) = "operator[]";
            WORD6(v1528[0]) = 1024;
            if (v1371)
            {
              v1372 = 3;
            }

            else
            {
              v1372 = 2;
            }

            *(v1528 + 14) = 621;
            WORD1(v1528[1]) = 2048;
            *(&v1528[1] + 4) = v69;
            WORD6(v1528[1]) = 2048;
            *(&v1528[1] + 14) = v14;
            _os_log_send_and_compose_impl(v1372, v1527, v1502, 80, &dword_1E1C61000, v1370, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
            _os_crash_msg();
            __break(1u);
LABEL_1754:
            *v1527 = 0;
            v1503 = 0u;
            v1504 = 0u;
            memset(v1502, 0, sizeof(v1502));
            v1373 = MEMORY[0x1E69E9C10];
            v1374 = v407;
            v1375 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v1528[0]) = 136315906;
            *(v1528 + 4) = "operator[]";
            WORD6(v1528[0]) = 1024;
            if (v1375)
            {
              v1376 = 3;
            }

            else
            {
              v1376 = 2;
            }

            *(v1528 + 14) = 621;
            WORD1(v1528[1]) = 2048;
            *(&v1528[1] + 4) = v14;
            WORD6(v1528[1]) = 2048;
            *(&v1528[1] + 14) = v1374;
            _os_log_send_and_compose_impl(v1376, v1527, v1502, 80, &dword_1E1C61000, v1373, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
            _os_crash_msg();
            __break(1u);
LABEL_1758:
            *v1527 = 0;
            v1503 = 0u;
            v1504 = 0u;
            memset(v1502, 0, sizeof(v1502));
            v1377 = MEMORY[0x1E69E9C10];
            v1378 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v1528[0]) = 136315906;
            *(v1528 + 4) = "operator[]";
            WORD6(v1528[0]) = 1024;
            if (v1378)
            {
              v1379 = 3;
            }

            else
            {
              v1379 = 2;
            }

            *(v1528 + 14) = 797;
            WORD1(v1528[1]) = 2048;
            *(&v1528[1] + 4) = 0;
            WORD6(v1528[1]) = 2048;
            *(&v1528[1] + 14) = 0;
            _os_log_send_and_compose_impl(v1379, v1527, v1502, 80, &dword_1E1C61000, v1377, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
            _os_crash_msg();
            __break(1u);
LABEL_1762:
            *v1527 = 0;
            v1503 = 0u;
            v1504 = 0u;
            memset(v1502, 0, sizeof(v1502));
            v1380 = MEMORY[0x1E69E9C10];
            v1381 = v407;
            v1382 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v1528[0]) = 136315906;
            *(v1528 + 4) = "operator[]";
            WORD6(v1528[0]) = 1024;
            if (v1382)
            {
              v1383 = 3;
            }

            else
            {
              v1383 = 2;
            }

            *(v1528 + 14) = 621;
            WORD1(v1528[1]) = 2048;
            *(&v1528[1] + 4) = v27;
            WORD6(v1528[1]) = 2048;
            *(&v1528[1] + 14) = v1381;
            _os_log_send_and_compose_impl(v1383, v1527, v1502, 80, &dword_1E1C61000, v1380, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
            _os_crash_msg();
            __break(1u);
LABEL_1766:
            *v1527 = 0;
            v1503 = 0u;
            v1504 = 0u;
            memset(v1502, 0, sizeof(v1502));
            v363 = MEMORY[0x1E69E9C10];
            v1384 = v407;
            v1385 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v1528[0]) = 136315906;
            *(v1528 + 4) = "operator[]";
            WORD6(v1528[0]) = 1024;
            if (v1385)
            {
              v1386 = 3;
            }

            else
            {
              v1386 = 2;
            }

            *(v1528 + 14) = 621;
            WORD1(v1528[1]) = 2048;
            *(&v1528[1] + 4) = v17;
            WORD6(v1528[1]) = 2048;
            *(&v1528[1] + 14) = v1384;
            _os_log_send_and_compose_impl(v1386, v1527, v1502, 80, &dword_1E1C61000, v363, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
            _os_crash_msg();
            __break(1u);
            goto LABEL_1770;
          }

LABEL_1790:
          *v1527 = 0;
          *(v22 + 48) = 0u;
          *(v22 + 64) = 0u;
          *(v22 + 16) = 0u;
          *(v22 + 32) = 0u;
          *v22 = 0u;
          v1401 = MEMORY[0x1E69E9C10];
          v1402 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v1528[0]) = 136315906;
          *(v1528 + 4) = "operator[]";
          WORD6(v1528[0]) = 1024;
          if (v1402)
          {
            v1403 = 3;
          }

          else
          {
            v1403 = 2;
          }

          *(v1528 + 14) = 613;
          WORD1(v1528[1]) = 2048;
          *(&v1528[1] + 4) = v1441;
          WORD6(v1528[1]) = 2048;
          *(&v1528[1] + 14) = v27;
          _os_log_send_and_compose_impl(v1403, v1527, v1502, 80, &dword_1E1C61000, v1401, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
          _os_crash_msg();
          __break(1u);
LABEL_1794:
          v1501 = 0;
          v1503 = 0u;
          v1504 = 0u;
          memset(v1502, 0, sizeof(v1502));
          v363 = MEMORY[0x1E69E9C10];
          v14 = v1527;
          v1404 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v1528[0]) = 136315906;
          *(v1528 + 4) = "operator[]";
          WORD6(v1528[0]) = 1024;
          if (v1404)
          {
            v1405 = 3;
          }

          else
          {
            v1405 = 2;
          }

          *(v1528 + 14) = 621;
          WORD1(v1528[1]) = 2048;
          *(&v1528[1] + 4) = v69;
          WORD6(v1528[1]) = 2048;
          *(&v1528[1] + 14) = v69;
          _os_log_send_and_compose_impl(v1405, &v1501, v1502, 80, &dword_1E1C61000, v363, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
          _os_crash_msg();
          __break(1u);
LABEL_1798:
          *v1527 = 0;
          v1503 = 0u;
          v1504 = 0u;
          memset(v1502, 0, sizeof(v1502));
          v1406 = MEMORY[0x1E69E9C10];
          v1407 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v1528[0]) = 136315906;
          *(v1528 + 4) = "operator[]";
          WORD6(v1528[0]) = 1024;
          if (v1407)
          {
            v1408 = 3;
          }

          else
          {
            v1408 = 2;
          }

          *(v1528 + 14) = 621;
          WORD1(v1528[1]) = 2048;
          *(&v1528[1] + 4) = v3;
          WORD6(v1528[1]) = 2048;
          *(&v1528[1] + 14) = v363;
          _os_log_send_and_compose_impl(v1408, v1527, v1502, 80, &dword_1E1C61000, v1406, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
          _os_crash_msg();
          __break(1u);
          goto LABEL_1802;
        }

LABEL_1786:
        *v1527 = 0;
        *(v22 + 48) = 0u;
        *(v22 + 64) = 0u;
        *(v22 + 16) = 0u;
        *(v22 + 32) = 0u;
        *v22 = 0u;
        v1398 = MEMORY[0x1E69E9C10];
        v1399 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v1528[0]) = 136315906;
        *(v1528 + 4) = "operator[]";
        WORD6(v1528[0]) = 1024;
        if (v1399)
        {
          v1400 = 3;
        }

        else
        {
          v1400 = 2;
        }

        *(v1528 + 14) = 613;
        WORD1(v1528[1]) = 2048;
        *(&v1528[1] + 4) = v14;
        WORD6(v1528[1]) = 2048;
        *(&v1528[1] + 14) = v27;
        _os_log_send_and_compose_impl(v1400, v1527, v1502, 80, &dword_1E1C61000, v1398, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
        _os_crash_msg();
        __break(1u);
        goto LABEL_1790;
      }

      ++v25;
      *(v71 + 2 * v69) = 1120;
      if (++v70 == v42)
      {
        goto LABEL_76;
      }
    }

    v72 = v4[4];
    v73 = v46;
    while (1)
    {
      v39 = v25;
      if (v27 <= v25)
      {
        goto LABEL_286;
      }

      ++v25;
      *(v72 + 2 * v39) = 1104;
      if (!--v73)
      {
        goto LABEL_74;
      }
    }
  }

LABEL_76:
  if (v45)
  {
    v74 = 0;
    v27 = v4[2];
    v75 = v4[4];
    while (!v46)
    {
LABEL_82:
      v69 = v25;
      if (v27 <= v25)
      {
        goto LABEL_708;
      }

      ++v25;
      *(v75 + 2 * v69) = 1184;
      if (++v74 == v45)
      {
        goto LABEL_84;
      }
    }

    v76 = v4[4];
    v77 = v46;
    while (1)
    {
      v39 = v25;
      if (v27 <= v25)
      {
        goto LABEL_290;
      }

      ++v25;
      *(v76 + 2 * v39) = 1168;
      if (!--v77)
      {
        goto LABEL_82;
      }
    }
  }

LABEL_84:
  if (v42)
  {
    v78 = 0;
    v27 = v4[2];
    v79 = v4[4];
    while (!v46)
    {
LABEL_90:
      v69 = v25;
      if (v27 <= v25)
      {
        goto LABEL_728;
      }

      ++v25;
      *(v79 + 2 * v69) = 1120;
      if (++v78 == v42)
      {
        goto LABEL_92;
      }
    }

    v80 = v4[4];
    v81 = v46;
    while (1)
    {
      v82 = v25;
      if (v27 <= v25)
      {
        break;
      }

      ++v25;
      *(v80 + 2 * v82) = 1104;
      if (!--v81)
      {
        goto LABEL_90;
      }
    }

    v1502[0] = 0;
    v1517 = 0u;
    v1518 = 0u;
    v1515 = 0u;
    v1516 = 0u;
    v1514 = 0u;
    v278 = MEMORY[0x1E69E9C10];
    v279 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v1508 + 4) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v279)
    {
      v280 = 3;
    }

    else
    {
      v280 = 2;
    }

    *(&v1508[1] + 6) = 789;
    WORD1(v1508[2]) = 2048;
    *(&v1508[2] + 4) = v82;
    WORD2(v1508[3]) = 2048;
    *(&v1508[3] + 6) = v27;
    _os_log_send_and_compose_impl(v280, v1502, &v1514, 80, &dword_1E1C61000, v278, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_374:
    v1502[0] = 0;
    v1517 = 0u;
    v1518 = 0u;
    v1515 = 0u;
    v1516 = 0u;
    v1514 = 0u;
    v281 = MEMORY[0x1E69E9C10];
    v282 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v1508 + 4) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v282)
    {
      v283 = 3;
    }

    else
    {
      v283 = 2;
    }

    *(&v1508[1] + 6) = 789;
    WORD1(v1508[2]) = 2048;
    *(&v1508[2] + 4) = v82;
    WORD2(v1508[3]) = 2048;
    *(&v1508[3] + 6) = v27;
    _os_log_send_and_compose_impl(v283, v1502, &v1514, 80, &dword_1E1C61000, v281, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_378:
    *&v1528[0] = 0;
    v1509 = 0u;
    v1510 = 0u;
    memset(v1508, 0, sizeof(v1508));
    v284 = MEMORY[0x1E69E9C10];
    v285 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1502[0]) = 136315906;
    *(v1502 + 4) = "operator[]";
    WORD2(v1502[1]) = 1024;
    if (v285)
    {
      v286 = 3;
    }

    else
    {
      v286 = 2;
    }

    *(&v1502[1] + 6) = 797;
    WORD1(v1502[2]) = 2048;
    *(&v1502[2] + 4) = v20;
    WORD2(v1502[3]) = 2048;
    *(&v1502[3] + 6) = v27;
    _os_log_send_and_compose_impl(v286, v1528, v1508, 80, &dword_1E1C61000, v284, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1502, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_382:
    *v1527 = 0;
    v1509 = 0u;
    v1510 = 0u;
    memset(v1508, 0, sizeof(v1508));
    v287 = MEMORY[0x1E69E9C10];
    v288 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1502[0]) = 136315906;
    *(v1502 + 4) = "operator[]";
    WORD2(v1502[1]) = 1024;
    if (v288)
    {
      v289 = 3;
    }

    else
    {
      v289 = 2;
    }

    *(&v1502[1] + 6) = 797;
    WORD1(v1502[2]) = 2048;
    *(&v1502[2] + 4) = v23;
    WORD2(v1502[3]) = 2048;
    *(&v1502[3] + 6) = v27;
    _os_log_send_and_compose_impl(v289, v1527, v1508, 80, &dword_1E1C61000, v287, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1502, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_386:
    *v1527 = 0;
    v107 = v1502;
    v1509 = 0u;
    v1510 = 0u;
    memset(v1508, 0, sizeof(v1508));
    v290 = MEMORY[0x1E69E9C10];
    v291 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1502[0]) = 136315906;
    *(v1502 + 4) = "operator[]";
    WORD2(v1502[1]) = 1024;
    if (v291)
    {
      v292 = 3;
    }

    else
    {
      v292 = 2;
    }

    *(&v1502[1] + 6) = 789;
    WORD1(v1502[2]) = 2048;
    *(&v1502[2] + 4) = v23;
    WORD2(v1502[3]) = 2048;
    *(&v1502[3] + 6) = v27;
    _os_log_send_and_compose_impl(v292, v1527, v1508, 80, &dword_1E1C61000, v290, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1502, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_390:
    v1502[0] = 0;
    *(v21 + 272) = 0u;
    *(v21 + 288) = 0u;
    *(v21 + 240) = 0u;
    *(v21 + 256) = 0u;
    *(v21 + 224) = 0u;
    v293 = MEMORY[0x1E69E9C10];
    v294 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v21 + 116) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v294)
    {
      v295 = 3;
    }

    else
    {
      v295 = 2;
    }

    *(v21 + 126) = 789;
    WORD1(v1508[2]) = 2048;
    *(v21 + 132) = v107;
    WORD2(v1508[3]) = 2048;
    *(v21 + 142) = v14;
    _os_log_send_and_compose_impl(v295, v1502, &v1514, 80, &dword_1E1C61000, v293, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_394:
    v1502[0] = 0;
    *(v21 + 272) = 0u;
    *(v21 + 288) = 0u;
    *(v21 + 240) = 0u;
    *(v21 + 256) = 0u;
    *(v21 + 224) = 0u;
    v276 = MEMORY[0x1E69E9C10];
    v296 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v21 + 116) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v296)
    {
      v297 = 3;
    }

    else
    {
      v297 = 2;
    }

    *(v21 + 126) = 789;
    WORD1(v1508[2]) = 2048;
    *(v21 + 132) = v107;
    WORD2(v1508[3]) = 2048;
    *(v21 + 142) = v14;
    _os_log_send_and_compose_impl(v297, v1502, &v1514, 80, &dword_1E1C61000, v276, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
    goto LABEL_398;
  }

LABEL_92:
  if (v45)
  {
    v83 = 0;
    v27 = v4[2];
    v84 = v4[4];
    while (!v46)
    {
LABEL_98:
      v69 = v25;
      if (v27 <= v25)
      {
        goto LABEL_772;
      }

      ++v25;
      *(v84 + 2 * v69) = 1184;
      if (++v83 == v45)
      {
        goto LABEL_100;
      }
    }

    v85 = v4[4];
    v86 = v46;
    while (1)
    {
      v82 = v25;
      if (v27 <= v25)
      {
        goto LABEL_374;
      }

      ++v25;
      *(v85 + 2 * v82) = 1168;
      if (!--v86)
      {
        goto LABEL_98;
      }
    }
  }

LABEL_100:
  if (v45 * v42)
  {
    v87 = v4[4];
    v88 = v45 * v42;
    do
    {
      v69 = v25;
      if (v27 <= v25)
      {
        goto LABEL_732;
      }

      ++v25;
      *(v87 + 2 * v69) = 513;
      --v88;
    }

    while (v88);
    v89 = v4[4];
    v90 = v45 * v42;
    do
    {
      v69 = v25;
      if (v27 <= v25)
      {
        goto LABEL_736;
      }

      ++v25;
      *(v89 + 2 * v69) = 1025;
    }

    while (--v90);
  }

  v91 = v1468 * v47;
  if (v1468 * v47)
  {
    v92 = v4[4];
    v93 = v1468 * v47;
    do
    {
      v69 = v25;
      if (v27 <= v25)
      {
        goto LABEL_740;
      }

      ++v25;
      *(v92 + 2 * v69) = 2306;
    }

    while (--v93);
  }

  v94 = v47 * v42;
  if (v47 * v42)
  {
    v95 = v4[4];
    v96 = v47 * v42;
    do
    {
      v69 = v25;
      if (v27 <= v25)
      {
        goto LABEL_744;
      }

      ++v25;
      *(v95 + 2 * v69) = 2114;
    }

    while (--v96);
  }

  if (v91)
  {
    v97 = v4[4];
    v98 = v1468 * v47;
    do
    {
      v69 = v25;
      if (v27 <= v25)
      {
        goto LABEL_748;
      }

      ++v25;
      *(v97 + 2 * v69) = 2306;
    }

    while (--v98);
  }

  v99 = v47 * v45;
  if (v47 * v45)
  {
    v100 = v4[4];
    v101 = v47 * v45;
    do
    {
      v69 = v25;
      if (v27 <= v25)
      {
        goto LABEL_752;
      }

      ++v25;
      *(v100 + 2 * v69) = 2178;
    }

    while (--v101);
  }

  if (v91)
  {
    v102 = v4[4];
    v103 = v1468 * v47;
    do
    {
      v69 = v25;
      if (v27 <= v25)
      {
        goto LABEL_756;
      }

      ++v25;
      *(v102 + 2 * v69) = 2306;
    }

    while (--v103);
  }

  if (v94)
  {
    v104 = v4[4];
    do
    {
      v69 = v25;
      if (v27 <= v25)
      {
        goto LABEL_760;
      }

      ++v25;
      *(v104 + 2 * v69) = 2114;
    }

    while (--v94);
  }

  if (v91)
  {
    v105 = v4[4];
    do
    {
      v69 = v25;
      if (v27 <= v25)
      {
        goto LABEL_764;
      }

      ++v25;
      *(v105 + 2 * v69) = 2306;
    }

    while (--v91);
  }

  if (v99)
  {
    v106 = v4[4];
    do
    {
      v69 = v25;
      if (v27 <= v25)
      {
        goto LABEL_768;
      }

      ++v25;
      *(v106 + 2 * v69) = 2178;
    }

    while (--v99);
  }

  v1471 = v24;
  v1443 = v45 * v42;
  v1500 = 0;
  v1498 = 0;
  v1497[0] = 0;
  v1497[1] = 0;
  v1499 = 0;
  v1496 = 0;
  v1494 = 0;
  v1493[0] = 0;
  v1493[1] = 0;
  v27 = v36 + 1;
  v1495 = 0;
  re::DynamicArray<float>::resize(v1497, v27);
  re::DynamicArray<float>::resize(v1493, v27);
  v107 = v1498;
  if (!v1498)
  {
    goto LABEL_1360;
  }

  v108 = v1500;
  *v1500 = 0;
  v14 = v1494;
  v109 = v1464;
  if (!v1494)
  {
LABEL_1364:
    v1502[0] = 0;
    *(v21 + 272) = 0u;
    *(v21 + 288) = 0u;
    *(v21 + 240) = 0u;
    *(v21 + 256) = 0u;
    *(v21 + 224) = 0u;
    v1080 = MEMORY[0x1E69E9C10];
    v1081 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v21 + 116) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v1081)
    {
      v1082 = 3;
    }

    else
    {
      v1082 = 2;
    }

    *(v21 + 126) = 789;
    WORD1(v1508[2]) = 2048;
    *(v21 + 132) = 0;
    WORD2(v1508[3]) = 2048;
    *(v21 + 142) = 0;
    _os_log_send_and_compose_impl(v1082, v1502, &v1514, 80, &dword_1E1C61000, v1080, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1368:
    v1502[0] = 0;
    *(v21 + 272) = 0u;
    *(v21 + 288) = 0u;
    *(v21 + 240) = 0u;
    *(v21 + 256) = 0u;
    *(v21 + 224) = 0u;
    v1083 = MEMORY[0x1E69E9C10];
    v14 = v109;
    v1084 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v21 + 116) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v1084)
    {
      v1085 = 3;
    }

    else
    {
      v1085 = 2;
    }

    *(v21 + 126) = 789;
    WORD1(v1508[2]) = 2048;
    *(v21 + 132) = v14;
    WORD2(v1508[3]) = 2048;
    *(v21 + 142) = v107;
    _os_log_send_and_compose_impl(v1085, v1502, &v1514, 80, &dword_1E1C61000, v1083, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
    goto LABEL_1372;
  }

  v110 = v1496;
  *v1496 = v1468;
  if (v1464 >= 2)
  {
    v111 = v110 + 1;
    v112 = v108 + 1;
    v113 = 1;
    while (v107 != v113)
    {
      *v112 = *(v112 - 1) + v1475;
      if (v14 == v113)
      {
        goto LABEL_825;
      }

      *v111 = *(v111 - 1) + v1475;
      ++v111;
      ++v113;
      ++v112;
      if (v1464 == v113)
      {
        goto LABEL_146;
      }
    }

LABEL_821:
    v1502[0] = 0;
    v1517 = 0u;
    v1518 = 0u;
    v1515 = 0u;
    v1516 = 0u;
    v1514 = 0u;
    v723 = MEMORY[0x1E69E9C10];
    v724 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v1508 + 4) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v724)
    {
      v725 = 3;
    }

    else
    {
      v725 = 2;
    }

    *(&v1508[1] + 6) = 789;
    WORD1(v1508[2]) = 2048;
    *(&v1508[2] + 4) = v107;
    WORD2(v1508[3]) = 2048;
    *(&v1508[3] + 6) = v107;
    _os_log_send_and_compose_impl(v725, v1502, &v1514, 80, &dword_1E1C61000, v723, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_825:
    v1502[0] = 0;
    v1517 = 0u;
    v1518 = 0u;
    v1515 = 0u;
    v1516 = 0u;
    v1514 = 0u;
    v726 = MEMORY[0x1E69E9C10];
    v727 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v1508 + 4) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v727)
    {
      v728 = 3;
    }

    else
    {
      v728 = 2;
    }

    *(&v1508[1] + 6) = 789;
    WORD1(v1508[2]) = 2048;
    *(&v1508[2] + 4) = v14;
    WORD2(v1508[3]) = 2048;
    *(&v1508[3] + 6) = v14;
    _os_log_send_and_compose_impl(v728, v1502, &v1514, 80, &dword_1E1C61000, v726, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_829:
    v1502[0] = 0;
    v1517 = 0u;
    v1518 = 0u;
    v1515 = 0u;
    v1516 = 0u;
    v1514 = 0u;
    v729 = MEMORY[0x1E69E9C10];
    v730 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v1508 + 4) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v730)
    {
      v731 = 3;
    }

    else
    {
      v731 = 2;
    }

    *(&v1508[1] + 6) = 789;
    WORD1(v1508[2]) = 2048;
    *(&v1508[2] + 4) = v14;
    WORD2(v1508[3]) = 2048;
    *(&v1508[3] + 6) = v14;
    _os_log_send_and_compose_impl(v731, v1502, &v1514, 80, &dword_1E1C61000, v729, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_833:
    v1502[0] = 0;
    v1517 = 0u;
    v1518 = 0u;
    v1515 = 0u;
    v1516 = 0u;
    v1514 = 0u;
    v732 = MEMORY[0x1E69E9C10];
    v733 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v1508 + 4) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v733)
    {
      v734 = 3;
    }

    else
    {
      v734 = 2;
    }

    *(&v1508[1] + 6) = 789;
    WORD1(v1508[2]) = 2048;
    *(&v1508[2] + 4) = v107;
    WORD2(v1508[3]) = 2048;
    *(&v1508[3] + 6) = v14;
    _os_log_send_and_compose_impl(v734, v1502, &v1514, 80, &dword_1E1C61000, v732, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_837:
    v1502[0] = 0;
    v1517 = 0u;
    v1518 = 0u;
    v1515 = 0u;
    v1516 = 0u;
    v1514 = 0u;
    v735 = MEMORY[0x1E69E9C10];
    v736 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v1508 + 4) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v736)
    {
      v737 = 3;
    }

    else
    {
      v737 = 2;
    }

    *(&v1508[1] + 6) = 789;
    WORD1(v1508[2]) = 2048;
    *(&v1508[2] + 4) = v17;
    WORD2(v1508[3]) = 2048;
    *(&v1508[3] + 6) = v14;
    _os_log_send_and_compose_impl(v737, v1502, &v1514, 80, &dword_1E1C61000, v735, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_841:
    v1502[0] = 0;
    v1517 = 0u;
    v1518 = 0u;
    v1515 = 0u;
    v1516 = 0u;
    v1514 = 0u;
    v738 = MEMORY[0x1E69E9C10];
    v739 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v1508 + 4) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v739)
    {
      v740 = 3;
    }

    else
    {
      v740 = 2;
    }

    *(&v1508[1] + 6) = 789;
    WORD1(v1508[2]) = 2048;
    *(&v1508[2] + 4) = v107;
    WORD2(v1508[3]) = 2048;
    *(&v1508[3] + 6) = v14;
    _os_log_send_and_compose_impl(v740, v1502, &v1514, 80, &dword_1E1C61000, v738, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_845:
    v1502[0] = 0;
    v1517 = 0u;
    v1518 = 0u;
    v1515 = 0u;
    v1516 = 0u;
    v1514 = 0u;
    v741 = MEMORY[0x1E69E9C10];
    v742 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v1508 + 4) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v742)
    {
      v743 = 3;
    }

    else
    {
      v743 = 2;
    }

    *(&v1508[1] + 6) = 789;
    WORD1(v1508[2]) = 2048;
    *(&v1508[2] + 4) = v14;
    WORD2(v1508[3]) = 2048;
    *(&v1508[3] + 6) = v14;
    _os_log_send_and_compose_impl(v743, v1502, &v1514, 80, &dword_1E1C61000, v741, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_849:
    v1502[0] = 0;
    v1517 = 0u;
    v1518 = 0u;
    v1515 = 0u;
    v1516 = 0u;
    v1514 = 0u;
    v744 = MEMORY[0x1E69E9C10];
    v745 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v1508 + 4) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v745)
    {
      v746 = 3;
    }

    else
    {
      v746 = 2;
    }

    *(&v1508[1] + 6) = 789;
    WORD1(v1508[2]) = 2048;
    *(&v1508[2] + 4) = v107;
    WORD2(v1508[3]) = 2048;
    *(&v1508[3] + 6) = v14;
    _os_log_send_and_compose_impl(v746, v1502, &v1514, 80, &dword_1E1C61000, v744, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_853:
    v1502[0] = 0;
    v1517 = 0u;
    v1518 = 0u;
    v1515 = 0u;
    v1516 = 0u;
    v1514 = 0u;
    v747 = MEMORY[0x1E69E9C10];
    v748 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v1508 + 4) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v748)
    {
      v749 = 3;
    }

    else
    {
      v749 = 2;
    }

    *(&v1508[1] + 6) = 789;
    WORD1(v1508[2]) = 2048;
    *(&v1508[2] + 4) = v107;
    WORD2(v1508[3]) = 2048;
    *(&v1508[3] + 6) = v14;
    _os_log_send_and_compose_impl(v749, v1502, &v1514, 80, &dword_1E1C61000, v747, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_857:
    v1502[0] = 0;
    v1517 = 0u;
    v1518 = 0u;
    v1515 = 0u;
    v1516 = 0u;
    v1514 = 0u;
    v750 = MEMORY[0x1E69E9C10];
    v751 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v1508 + 4) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v751)
    {
      v752 = 3;
    }

    else
    {
      v752 = 2;
    }

    *(&v1508[1] + 6) = 789;
    WORD1(v1508[2]) = 2048;
    *(&v1508[2] + 4) = v107;
    WORD2(v1508[3]) = 2048;
    *(&v1508[3] + 6) = v14;
    _os_log_send_and_compose_impl(v752, v1502, &v1514, 80, &dword_1E1C61000, v750, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_861:
    v1502[0] = 0;
    v1517 = 0u;
    v1518 = 0u;
    v1515 = 0u;
    v1516 = 0u;
    v1514 = 0u;
    v753 = MEMORY[0x1E69E9C10];
    v754 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v1508 + 4) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v754)
    {
      v755 = 3;
    }

    else
    {
      v755 = 2;
    }

    *(&v1508[1] + 6) = 789;
    WORD1(v1508[2]) = 2048;
    *(&v1508[2] + 4) = v14;
    WORD2(v1508[3]) = 2048;
    *(&v1508[3] + 6) = v107;
    _os_log_send_and_compose_impl(v755, v1502, &v1514, 80, &dword_1E1C61000, v753, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_865:
    v1502[0] = 0;
    v1517 = 0u;
    v1518 = 0u;
    v1515 = 0u;
    v1516 = 0u;
    v1514 = 0u;
    v756 = MEMORY[0x1E69E9C10];
    v757 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v1508 + 4) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v757)
    {
      v758 = 3;
    }

    else
    {
      v758 = 2;
    }

    *(&v1508[1] + 6) = 789;
    WORD1(v1508[2]) = 2048;
    *(&v1508[2] + 4) = v14;
    WORD2(v1508[3]) = 2048;
    *(&v1508[3] + 6) = v107;
    _os_log_send_and_compose_impl(v758, v1502, &v1514, 80, &dword_1E1C61000, v756, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_869:
    v1502[0] = 0;
    v1517 = 0u;
    v1518 = 0u;
    v1515 = 0u;
    v1516 = 0u;
    v1514 = 0u;
    v759 = MEMORY[0x1E69E9C10];
    v760 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v1508 + 4) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v760)
    {
      v761 = 3;
    }

    else
    {
      v761 = 2;
    }

    *(&v1508[1] + 6) = 789;
    WORD1(v1508[2]) = 2048;
    *(&v1508[2] + 4) = v14;
    WORD2(v1508[3]) = 2048;
    *(&v1508[3] + 6) = v107;
    _os_log_send_and_compose_impl(v761, v1502, &v1514, 80, &dword_1E1C61000, v759, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_873:
    v1502[0] = 0;
    v1517 = 0u;
    v1518 = 0u;
    v1515 = 0u;
    v1516 = 0u;
    v1514 = 0u;
    v762 = MEMORY[0x1E69E9C10];
    v763 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v1508 + 4) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v763)
    {
      v764 = 3;
    }

    else
    {
      v764 = 2;
    }

    *(&v1508[1] + 6) = 789;
    WORD1(v1508[2]) = 2048;
    *(&v1508[2] + 4) = v14;
    WORD2(v1508[3]) = 2048;
    *(&v1508[3] + 6) = v107;
    _os_log_send_and_compose_impl(v764, v1502, &v1514, 80, &dword_1E1C61000, v762, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_877:
    v1502[0] = 0;
    v1517 = 0u;
    v1518 = 0u;
    v1515 = 0u;
    v1516 = 0u;
    v1514 = 0u;
    v765 = MEMORY[0x1E69E9C10];
    v766 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v1508 + 4) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v766)
    {
      v767 = 3;
    }

    else
    {
      v767 = 2;
    }

    *(&v1508[1] + 6) = 789;
    WORD1(v1508[2]) = 2048;
    *(&v1508[2] + 4) = v14;
    WORD2(v1508[3]) = 2048;
    *(&v1508[3] + 6) = v14;
    _os_log_send_and_compose_impl(v767, v1502, &v1514, 80, &dword_1E1C61000, v765, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_881:
    v1502[0] = 0;
    v1517 = 0u;
    v1518 = 0u;
    v1515 = 0u;
    v1516 = 0u;
    v1514 = 0u;
    v768 = MEMORY[0x1E69E9C10];
    v769 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v1508 + 4) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v769)
    {
      v770 = 3;
    }

    else
    {
      v770 = 2;
    }

    *(&v1508[1] + 6) = 789;
    WORD1(v1508[2]) = 2048;
    *(&v1508[2] + 4) = v107;
    WORD2(v1508[3]) = 2048;
    *(&v1508[3] + 6) = v14;
    _os_log_send_and_compose_impl(v770, v1502, &v1514, 80, &dword_1E1C61000, v768, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_885:
    v1502[0] = 0;
    v1517 = 0u;
    v1518 = 0u;
    v1515 = 0u;
    v1516 = 0u;
    v1514 = 0u;
    v771 = MEMORY[0x1E69E9C10];
    v772 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v1508 + 4) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v772)
    {
      v773 = 3;
    }

    else
    {
      v773 = 2;
    }

    *(&v1508[1] + 6) = 789;
    WORD1(v1508[2]) = 2048;
    *(&v1508[2] + 4) = v17;
    WORD2(v1508[3]) = 2048;
    *(&v1508[3] + 6) = v14;
    _os_log_send_and_compose_impl(v773, v1502, &v1514, 80, &dword_1E1C61000, v771, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_889:
    v1502[0] = 0;
    v1517 = 0u;
    v1518 = 0u;
    v1515 = 0u;
    v1516 = 0u;
    v1514 = 0u;
    v363 = MEMORY[0x1E69E9C10];
    v774 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v1508 + 4) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v774)
    {
      v775 = 3;
    }

    else
    {
      v775 = 2;
    }

    *(&v1508[1] + 6) = 789;
    WORD1(v1508[2]) = 2048;
    *(&v1508[2] + 4) = v107;
    WORD2(v1508[3]) = 2048;
    *(&v1508[3] + 6) = v14;
    _os_log_send_and_compose_impl(v775, v1502, &v1514, 80, &dword_1E1C61000, v363, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    v536 = _os_crash_msg();
    __break(1u);
LABEL_893:
    v604 = v598;
    v602 = v598;
    v21 = v1449;
    v599 = v1474;
    goto LABEL_894;
  }

LABEL_146:
  if (v107 <= v1464)
  {
    goto LABEL_1368;
  }

  v107 = v1465;
  v108[v1464] = v1465;
  if (v14 <= v1464)
  {
LABEL_1372:
    v1502[0] = 0;
    *(v21 + 272) = 0u;
    *(v21 + 288) = 0u;
    *(v21 + 240) = 0u;
    *(v21 + 256) = 0u;
    *(v21 + 224) = 0u;
    v1086 = MEMORY[0x1E69E9C10];
    v1087 = v109;
    v1088 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v21 + 116) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v1088)
    {
      v1089 = 3;
    }

    else
    {
      v1089 = 2;
    }

    *(v21 + 126) = 789;
    WORD1(v1508[2]) = 2048;
    *(v21 + 132) = v1087;
    WORD2(v1508[3]) = 2048;
    *(v21 + 142) = v14;
    _os_log_send_and_compose_impl(v1089, v1502, &v1514, 80, &dword_1E1C61000, v1086, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
    goto LABEL_1376;
  }

  v110[v1464] = v1465;
  v1492 = 0;
  v1489[1] = 0;
  v1490 = 0;
  v1488 = 0;
  v1489[0] = 0;
  v1491 = 0;
  v1485[1] = 0;
  v1486 = 0;
  v1484 = 0;
  v1485[0] = 0;
  v1487 = 0;
  v1481[1] = 0;
  v1482 = 0;
  v1480 = 0;
  v1481[0] = 0;
  v1483 = 0;
  v1477[1] = 0;
  v1478 = 0;
  v17 = v1474;
  v3 = (v1474 + 1);
  v1477[0] = 0;
  v1479 = 0;
  re::DynamicArray<unsigned int>::resize(v1489, (v3 + v3 * v1473), &re::kInvalidMeshIndex);
  re::DynamicArray<float>::resize(v1481, (v1467 + 2 * v1459 - 3));
  re::DynamicArray<float>::resize(v1485, v1490);
  re::DynamicArray<float>::resize(v1477, v1482);
  v14 = v1490;
  if (!v1490)
  {
LABEL_1376:
    v1502[0] = 0;
    *(v21 + 272) = 0u;
    *(v21 + 288) = 0u;
    *(v21 + 240) = 0u;
    *(v21 + 256) = 0u;
    *(v21 + 224) = 0u;
    v1090 = MEMORY[0x1E69E9C10];
    v1091 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v21 + 116) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v1091)
    {
      v1092 = 3;
    }

    else
    {
      v1092 = 2;
    }

    *(v21 + 126) = 789;
    WORD1(v1508[2]) = 2048;
    *(v21 + 132) = 0;
    WORD2(v1508[3]) = 2048;
    *(v21 + 142) = 0;
    _os_log_send_and_compose_impl(v1092, v1502, &v1514, 80, &dword_1E1C61000, v1090, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1380:
    v1502[0] = 0;
    *(v21 + 272) = 0u;
    *(v21 + 288) = 0u;
    *(v21 + 240) = 0u;
    *(v21 + 256) = 0u;
    *(v21 + 224) = 0u;
    v1093 = MEMORY[0x1E69E9C10];
    v1094 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v21 + 116) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v1094)
    {
      v1095 = 3;
    }

    else
    {
      v1095 = 2;
    }

    *(v21 + 126) = 789;
    WORD1(v1508[2]) = 2048;
    *(v21 + 132) = v17;
    WORD2(v1508[3]) = 2048;
    *(v21 + 142) = v14;
    _os_log_send_and_compose_impl(v1095, v1502, &v1514, 80, &dword_1E1C61000, v1093, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1384:
    v1502[0] = 0;
    *(v21 + 272) = 0u;
    *(v21 + 288) = 0u;
    *(v21 + 240) = 0u;
    *(v21 + 256) = 0u;
    *(v21 + 224) = 0u;
    v1096 = MEMORY[0x1E69E9C10];
    v1097 = v125;
    v1098 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v21 + 116) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v1098)
    {
      v1099 = 3;
    }

    else
    {
      v1099 = 2;
    }

    *(v21 + 126) = 789;
    WORD1(v1508[2]) = 2048;
    *(v21 + 132) = v1097;
    WORD2(v1508[3]) = 2048;
    *(v21 + 142) = v14;
    _os_log_send_and_compose_impl(v1099, v1502, &v1514, 80, &dword_1E1C61000, v1096, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1388:
    v1502[0] = 0;
    *(v21 + 272) = 0u;
    *(v21 + 288) = 0u;
    *(v21 + 240) = 0u;
    *(v21 + 256) = 0u;
    *(v21 + 224) = 0u;
    v1100 = MEMORY[0x1E69E9C10];
    v107 = v129;
    v1101 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v21 + 116) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v1101)
    {
      v1102 = 3;
    }

    else
    {
      v1102 = 2;
    }

    *(v21 + 126) = 789;
    WORD1(v1508[2]) = 2048;
    *(v21 + 132) = v107;
    WORD2(v1508[3]) = 2048;
    *(v21 + 142) = v14;
    _os_log_send_and_compose_impl(v1102, v1502, &v1514, 80, &dword_1E1C61000, v1100, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1392:
    v1502[0] = 0;
    *(v21 + 272) = 0u;
    *(v21 + 288) = 0u;
    *(v21 + 240) = 0u;
    *(v21 + 256) = 0u;
    *(v21 + 224) = 0u;
    v1103 = MEMORY[0x1E69E9C10];
    v1104 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v21 + 116) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v1104)
    {
      v1105 = 3;
    }

    else
    {
      v1105 = 2;
    }

    *(v21 + 126) = 789;
    WORD1(v1508[2]) = 2048;
    *(v21 + 132) = 0;
    WORD2(v1508[3]) = 2048;
    *(v21 + 142) = 0;
    _os_log_send_and_compose_impl(v1105, v1502, &v1514, 80, &dword_1E1C61000, v1103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1396:
    v1502[0] = 0;
    *(v21 + 272) = 0u;
    *(v21 + 288) = 0u;
    *(v21 + 240) = 0u;
    *(v21 + 256) = 0u;
    *(v21 + 224) = 0u;
    v363 = MEMORY[0x1E69E9C10];
    v1106 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v21 + 116) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v1106)
    {
      v1107 = 3;
    }

    else
    {
      v1107 = 2;
    }

    *(v21 + 126) = 789;
    WORD1(v1508[2]) = 2048;
    *(v21 + 132) = v107;
    WORD2(v1508[3]) = 2048;
    *(v21 + 142) = v14;
    _os_log_send_and_compose_impl(v1107, v1502, &v1514, 80, &dword_1E1C61000, v363, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1400:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1108 = MEMORY[0x1E69E9C10];
    v1109 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    *(v1528 + 14) = 621;
    if (v1109)
    {
      v1110 = 3;
    }

    else
    {
      v1110 = 2;
    }

    LODWORD(v1528[0]) = 136315906;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = (v14 + v27);
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v363;
    _os_log_send_and_compose_impl(v1110, v1527, v1502, 80, &dword_1E1C61000, v1108, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1404:
    v1502[0] = 0;
    *(v21 + 272) = 0u;
    *(v21 + 288) = 0u;
    *(v21 + 240) = 0u;
    *(v21 + 256) = 0u;
    *(v21 + 224) = 0u;
    v1111 = MEMORY[0x1E69E9C10];
    v1112 = v125;
    v1113 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v21 + 116) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v1113)
    {
      v1114 = 3;
    }

    else
    {
      v1114 = 2;
    }

    *(v21 + 126) = 789;
    WORD1(v1508[2]) = 2048;
    *(v21 + 132) = v1112;
    WORD2(v1508[3]) = 2048;
    *(v21 + 142) = v14;
    _os_log_send_and_compose_impl(v1114, v1502, &v1514, 80, &dword_1E1C61000, v1111, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1408:
    v1502[0] = 0;
    *(v21 + 272) = 0u;
    *(v21 + 288) = 0u;
    *(v21 + 240) = 0u;
    *(v21 + 256) = 0u;
    *(v21 + 224) = 0u;
    v1115 = MEMORY[0x1E69E9C10];
    v69 = v129;
    v1116 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v21 + 116) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v1116)
    {
      v1117 = 3;
    }

    else
    {
      v1117 = 2;
    }

    *(v21 + 126) = 789;
    WORD1(v1508[2]) = 2048;
    *(v21 + 132) = v69;
    WORD2(v1508[3]) = 2048;
    *(v21 + 142) = v14;
    _os_log_send_and_compose_impl(v1117, v1502, &v1514, 80, &dword_1E1C61000, v1115, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
    goto LABEL_1412;
  }

  v114 = v1492;
  *v1492 = 2 * v1472 + v1465;
  v115 = ~v1464;
  if (v1474 > 1)
  {
    v116 = 1;
    v117 = v1464 * ((8 * v1475) | 1) + (v1473 + v22 - 4) * v27 + 24;
    while (v14 != v116)
    {
      v114[v116++] = v117;
      v117 += v115;
      if (v1474 == v116)
      {
        goto LABEL_153;
      }
    }

    goto LABEL_829;
  }

LABEL_153:
  v17 = v1474;
  if (v14 <= v1474)
  {
    goto LABEL_1380;
  }

  v118 = v27 * (v1474 - 1);
  v114[v1474] = 3 * v1472 + v1465;
  if (v1473 >= 2)
  {
    v119 = v1473 - 1;
    v120 = v1464 * ((8 * v1475) | 1);
    v121 = v120 + (v22 + 2 * v1473 - 5) * v27 + 24;
    v122 = v118 + v120 + 24;
    v123 = v22 + 1;
    v124 = v1474 + 1;
    do
    {
      v107 = v124;
      if (v14 <= v124)
      {
        goto LABEL_833;
      }

      v114[v124] = v122;
      v17 = v123;
      if (v14 <= v123)
      {
        goto LABEL_837;
      }

      v114[v123] = v121;
      v121 += v115;
      v122 += v27;
      v123 += v3;
      v124 += v3;
    }

    while (--v119);
  }

  v125 = (v3 * v1473);
  if (v14 <= v125)
  {
    goto LABEL_1384;
  }

  v114[v125] = v1472 + v1465;
  if (v1474 >= 2)
  {
    v126 = v1474 - 1;
    v127 = v1464 * ((8 * v1475) | 1) + 24;
    v128 = v125 + 1;
    do
    {
      v107 = v128;
      if (v14 <= v128)
      {
        goto LABEL_841;
      }

      v114[v128] = v127;
      v127 += v27;
      ++v128;
    }

    while (--v126);
  }

  v129 = (v125 + v1474);
  if (v14 <= v129)
  {
    goto LABEL_1388;
  }

  v114[v129] = v1465;
  if (v1473 >= 2)
  {
    v130 = v1474 + 2;
    v131 = 1;
    while (1)
    {
      v132 = v130;
      v133 = v1474 - 1;
      if (v1474 >= 2)
      {
        break;
      }

LABEL_170:
      ++v131;
      v130 += v3;
      if (v131 == v1473)
      {
        goto LABEL_171;
      }
    }

    while (1)
    {
      v107 = v132;
      if (v14 <= v132)
      {
        goto LABEL_390;
      }

      v114[v132] = v20;
      v20 = (v20 + 1);
      ++v132;
      if (!--v133)
      {
        goto LABEL_170;
      }
    }
  }

LABEL_171:
  v134 = v1468 + v1474;
  v135 = 3 * v1475;
  if (v1475)
  {
    v136 = 0;
    v14 = v1482;
    v137 = v1484;
    while (v14 != v136)
    {
      *(v137 + v136) = v136;
      v107 = v134 + v136;
      if (v14 <= v107)
      {
        goto LABEL_809;
      }

      *(v137 + v107) = v1472 + v136;
      v107 = (v1474 + v1473 + 2 * v1475 - 2 + v136);
      if (v14 <= v107)
      {
        goto LABEL_813;
      }

      *(v137 + v107) = 2 * v1472 + v136;
      v107 = (v1473 + v22 + v135 - 3 + v136);
      if (v14 <= v107)
      {
        goto LABEL_817;
      }

      *(v137 + v107) = 3 * v1472 + v136++;
      if (v1475 == v136)
      {
        goto LABEL_178;
      }
    }

    v1502[0] = 0;
    v1517 = 0u;
    v1518 = 0u;
    v1515 = 0u;
    v1516 = 0u;
    v1514 = 0u;
    v711 = MEMORY[0x1E69E9C10];
    v712 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v1508 + 4) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v712)
    {
      v713 = 3;
    }

    else
    {
      v713 = 2;
    }

    *(&v1508[1] + 6) = 789;
    WORD1(v1508[2]) = 2048;
    *(&v1508[2] + 4) = v14;
    WORD2(v1508[3]) = 2048;
    *(&v1508[3] + 6) = v14;
    _os_log_send_and_compose_impl(v713, v1502, &v1514, 80, &dword_1E1C61000, v711, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_809:
    v1502[0] = 0;
    v1517 = 0u;
    v1518 = 0u;
    v1515 = 0u;
    v1516 = 0u;
    v1514 = 0u;
    v714 = MEMORY[0x1E69E9C10];
    v715 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v1508 + 4) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v715)
    {
      v716 = 3;
    }

    else
    {
      v716 = 2;
    }

    *(&v1508[1] + 6) = 789;
    WORD1(v1508[2]) = 2048;
    *(&v1508[2] + 4) = v107;
    WORD2(v1508[3]) = 2048;
    *(&v1508[3] + 6) = v14;
    _os_log_send_and_compose_impl(v716, v1502, &v1514, 80, &dword_1E1C61000, v714, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_813:
    v1502[0] = 0;
    v1517 = 0u;
    v1518 = 0u;
    v1515 = 0u;
    v1516 = 0u;
    v1514 = 0u;
    v717 = MEMORY[0x1E69E9C10];
    v718 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v1508 + 4) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v718)
    {
      v719 = 3;
    }

    else
    {
      v719 = 2;
    }

    *(&v1508[1] + 6) = 789;
    WORD1(v1508[2]) = 2048;
    *(&v1508[2] + 4) = v107;
    WORD2(v1508[3]) = 2048;
    *(&v1508[3] + 6) = v14;
    _os_log_send_and_compose_impl(v719, v1502, &v1514, 80, &dword_1E1C61000, v717, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_817:
    v1502[0] = 0;
    v1517 = 0u;
    v1518 = 0u;
    v1515 = 0u;
    v1516 = 0u;
    v1514 = 0u;
    v720 = MEMORY[0x1E69E9C10];
    v721 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v1508 + 4) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v721)
    {
      v722 = 3;
    }

    else
    {
      v722 = 2;
    }

    *(&v1508[1] + 6) = 789;
    WORD1(v1508[2]) = 2048;
    *(&v1508[2] + 4) = v107;
    WORD2(v1508[3]) = 2048;
    *(&v1508[3] + 6) = v14;
    _os_log_send_and_compose_impl(v722, v1502, &v1514, 80, &dword_1E1C61000, v720, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
    goto LABEL_821;
  }

LABEL_178:
  if (v1474 >= 2)
  {
    v107 = v1482;
    v138 = v1484;
    v139 = v1474 - 1;
    v140 = v27 * (v1474 - 2) + 8 * v1465 + 24;
    v141 = v1475;
    do
    {
      v14 = v141;
      if (v107 <= v141)
      {
        goto LABEL_861;
      }

      *(v138 + v141) = v140;
      v140 += v115;
      ++v141;
    }

    while (--v139);
  }

  v142 = v134 + v1475;
  if (v1473 >= 2)
  {
    v107 = v1482;
    v143 = v1484;
    v144 = v1473 - 1;
    v145 = (v1474 + v1473 - 3) * v27 + 8 * v1465 + 24;
    v146 = v134 + v1475;
    do
    {
      v14 = v146;
      if (v107 <= v146)
      {
        goto LABEL_865;
      }

      *(v143 + v146) = v145;
      v145 += v115;
      ++v146;
    }

    while (--v144);
  }

  if (v1474 >= 2)
  {
    v107 = v1482;
    v147 = v1484;
    v148 = v1474 - 1;
    v149 = (v1473 + v22 - 4) * v27 + 8 * v1465 + 24;
    v150 = v1474 + v1473 + v135 - 2;
    do
    {
      v14 = v150;
      if (v107 <= v150)
      {
        goto LABEL_869;
      }

      *(v147 + v150) = v149;
      v149 += v115;
      ++v150;
    }

    while (--v148);
  }

  if (v1473 >= 2)
  {
    v107 = v1482;
    v151 = v1484;
    v152 = v1473 - 1;
    v153 = (v22 + 2 * v1473 - 5) * v27 + 8 * v1465 + 24;
    v154 = v1473 + v1467 + v22 - 3;
    do
    {
      v14 = v154;
      if (v107 <= v154)
      {
        goto LABEL_873;
      }

      *(v151 + v154) = v153;
      v153 += v115;
      ++v154;
    }

    while (--v152);
  }

  v14 = v1486;
  if (!v1486)
  {
    goto LABEL_1392;
  }

  v1447 = (4 * v1472);
  v155 = v1488;
  *v1488 = v1447 + v1465;
  if (v1474 >= 2)
  {
    v156 = 1;
    v157 = v1464 * ((8 * v1475) | 1) + (3 * v1473 + 4 * v1474 - 8) * v27 + 24;
    while (v14 != v156)
    {
      v155[v156++] = v157;
      v157 += v115;
      if (v1474 == v156)
      {
        goto LABEL_199;
      }
    }

    goto LABEL_877;
  }

LABEL_199:
  v107 = v1474;
  if (v14 <= v1474)
  {
    goto LABEL_1396;
  }

  v1445 = 5 * v1472;
  v155[v1474] = 5 * v1472 + v1465;
  if (v1473 >= 2)
  {
    v158 = v1473 - 1;
    v159 = v1464 * ((8 * v1475) | 1);
    v160 = v159 + (3 * (v1474 + v1473) - 7) * v27 + 24;
    v161 = v159 + (3 * v1473 + 4 * v1474 - 7) * v27 + 24;
    v162 = v22 + 1;
    v163 = v1474 + 1;
    do
    {
      v107 = v163;
      if (v14 <= v163)
      {
        goto LABEL_881;
      }

      v155[v163] = v161;
      v17 = v162;
      if (v14 <= v162)
      {
        goto LABEL_885;
      }

      v155[v162] = v160;
      v160 += ~v1464;
      v161 += v27;
      v162 += v3;
      v163 += v3;
    }

    while (--v158);
  }

  if (v14 <= v125)
  {
    goto LABEL_1404;
  }

  v164 = v27 * v1458;
  v1444 = v1461 - v1472;
  v155[v125] = v1461 - v1472 + v1465;
  if (v1474 >= 2)
  {
    v165 = v1474 - 1;
    v166 = v164 + v1464 * ((8 * v1475) | 1) + 24;
    v167 = v125 + 1;
    do
    {
      v107 = v167;
      if (v14 <= v167)
      {
        goto LABEL_889;
      }

      v155[v167] = v166;
      v166 += v27;
      ++v167;
    }

    while (--v165);
  }

  if (v14 <= v129)
  {
    goto LABEL_1408;
  }

  v155[v129] = v1465 + 6 * v1472;
  if (v1473 >= 2)
  {
    v168 = v1474 + 2;
    v169 = 1;
    while (1)
    {
      v170 = v168;
      v171 = v1474 - 1;
      if (v1474 >= 2)
      {
        break;
      }

LABEL_216:
      ++v169;
      v168 += v3;
      if (v169 == v1473)
      {
        goto LABEL_217;
      }
    }

    while (1)
    {
      v107 = v170;
      if (v14 <= v170)
      {
        goto LABEL_394;
      }

      v155[v170] = v20;
      v20 = (v20 + 1);
      ++v170;
      if (!--v171)
      {
        goto LABEL_216;
      }
    }
  }

LABEL_217:
  v1458 = v1474 + 1;
  v3 = v1475;
  if (v1475)
  {
    v172 = 0;
    v14 = v1478;
    v173 = v1480;
    v174 = v1473 + v22 + v135 - 3;
    v175 = v1474 + v1473 + 2 * v1475 - 2;
    v176 = v1480;
    while (v14 + v172)
    {
      *v176 = v1475 - v1465 + 8 * v1465 + 20 + v172;
      v107 = v134;
      if (v14 <= v134)
      {
        goto LABEL_849;
      }

      v173[v134] = v1475 * ((6 * v1464) | 1) + 17 + v172;
      v107 = v175;
      if (v14 <= v175)
      {
        goto LABEL_853;
      }

      v173[v175] = v1475 + 5 * v1465 + 14 + v172;
      v107 = v174;
      if (v14 <= v174)
      {
        goto LABEL_857;
      }

      v173[v174] = v1475 + v1475 * v1454 + 11 + v172;
      ++v176;
      --v172;
      ++v174;
      ++v175;
      ++v134;
      if (-v1475 == v172)
      {
        goto LABEL_224;
      }
    }

    goto LABEL_845;
  }

LABEL_224:
  v177 = v1461 + v164;
  if (v1474 >= 2)
  {
    v69 = v1478;
    v178 = v1480;
    v179 = v1474 - 1;
    v180 = v1475;
    v181 = v177;
    while (1)
    {
      v14 = v180;
      if (v69 <= v180)
      {
        break;
      }

      v178[v180] = v181;
      v181 += v27;
      ++v180;
      if (!--v179)
      {
        goto LABEL_228;
      }
    }

    v1502[0] = 0;
    v1517 = 0u;
    v1518 = 0u;
    v1515 = 0u;
    v1516 = 0u;
    v1514 = 0u;
    v793 = MEMORY[0x1E69E9C10];
    v794 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v1508 + 4) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v794)
    {
      v795 = 3;
    }

    else
    {
      v795 = 2;
    }

    *(&v1508[1] + 6) = 789;
    WORD1(v1508[2]) = 2048;
    *(&v1508[2] + 4) = v14;
    WORD2(v1508[3]) = 2048;
    *(&v1508[3] + 6) = v69;
    _os_log_send_and_compose_impl(v795, v1502, &v1514, 80, &dword_1E1C61000, v793, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_935:
    v1502[0] = 0;
    v1517 = 0u;
    v1518 = 0u;
    v1515 = 0u;
    v1516 = 0u;
    v1514 = 0u;
    v363 = MEMORY[0x1E69E9C10];
    v796 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v1508 + 4) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v796)
    {
      v797 = 3;
    }

    else
    {
      v797 = 2;
    }

    *(&v1508[1] + 6) = 789;
    WORD1(v1508[2]) = 2048;
    *(&v1508[2] + 4) = v14;
    WORD2(v1508[3]) = 2048;
    *(&v1508[3] + 6) = v69;
    _os_log_send_and_compose_impl(v797, v1502, &v1514, 80, &dword_1E1C61000, v363, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_939:
    v798 = re::GeomMesh::accessVertexPositions(v3);
    LODWORD(v799) = *(v20 + 40);
    v800 = *(v20 + 52);
    v801 = *(v20 + 56);
    v802 = *(v20 + 60);
    v3 = (v802 * v801);
    v803 = v3 + 1;
    if (*(v20 + 20) <= 0.0)
    {
      goto LABEL_1074;
    }

    v804 = *(v20 + 24);
    v805 = v802 - 1;
    if (v804 <= 0.0)
    {
      v3 = v803;
    }

    else
    {
      v3 = 0;
    }

    if (v804 > 0.0)
    {
      v806 = 1;
    }

    else
    {
      v806 = v805;
    }

    if (v3 >= v363)
    {
      goto LABEL_1798;
    }

    v20 = (v806 * v801);
    if (v20 >= v363)
    {
      goto LABEL_1806;
    }

    v14 = v470;
    if (v3 >= v470)
    {
      goto LABEL_1814;
    }

    if (v20 >= v470)
    {
      goto LABEL_1822;
    }

    if (v27)
    {
      v14 = *v17;
      if (v14 < v363)
      {
        if (!v27)
        {
          goto LABEL_1173;
        }

        v807 = 0;
        v808 = vsub_f32(*(v69 + 8 * v3), *(v69 + 8 * v20));
        v809 = vsubq_f32(*(v798 + 16 * v3), *(v798 + 16 * v20));
        v810 = vmulq_f32(v809, v809);
        v811 = (*&v799 * (sqrtf(vaddv_f32(vmul_f32(v808, v808))) / sqrtf(v810.f32[2] + vaddv_f32(*v810.f32)))) / v800;
        v812 = *(v69 + 8 * v14);
        v813 = v800 + 1;
        v14 = v363;
        v814 = v1450 + 8 * v1465 + v1451 + 24;
        v815 = 0.0;
        while (1)
        {
          if (v807 == v27)
          {
            goto LABEL_1737;
          }

          v3 = *(v17 + 4 * v807);
          if (v3 >= v363)
          {
            goto LABEL_1738;
          }

          v816 = *(v69 + 8 * v3);
          v817 = vsub_f32(v816, v812);
          v815 = v815 + sqrtf(vaddv_f32(vmul_f32(v817, v817)));
          if (v813)
          {
            break;
          }

LABEL_960:
          ++v807;
          v814 += v813;
          v812 = v816;
          if (v807 == v27)
          {
            goto LABEL_1173;
          }
        }

        v818 = 0;
        v3 = v814;
        v819 = v813;
        while (v3 < v363)
        {
          *&v820 = v811 * v818;
          *(&v820 + 1) = v815;
          *(v69 + 8 * v3) = v820;
          ++v818;
          ++v3;
          if (!--v819)
          {
            goto LABEL_960;
          }
        }

LABEL_1412:
        *v1527 = 0;
        v1503 = 0u;
        v1504 = 0u;
        memset(v1502, 0, sizeof(v1502));
        v1118 = MEMORY[0x1E69E9C10];
        v1119 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v1528[0]) = 136315906;
        *(v1528 + 4) = "operator[]";
        WORD6(v1528[0]) = 1024;
        if (v1119)
        {
          v1120 = 3;
        }

        else
        {
          v1120 = 2;
        }

        *(v1528 + 14) = 621;
        WORD1(v1528[1]) = 2048;
        *(&v1528[1] + 4) = v3;
        WORD6(v1528[1]) = 2048;
        *(&v1528[1] + 14) = v14;
        _os_log_send_and_compose_impl(v1120, v1527, v1502, 80, &dword_1E1C61000, v1118, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
        _os_crash_msg();
        __break(1u);
        goto LABEL_1416;
      }
    }

    else
    {
LABEL_1826:
      re::internal::assertLog(6, v470, v799, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v1430, v1433);
      __break(1u);
    }

    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1425 = MEMORY[0x1E69E9C10];
    v1426 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1426)
    {
      v1427 = 3;
    }

    else
    {
      v1427 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v14;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v363;
    _os_log_send_and_compose_impl(v1427, v1527, v1502, 80, &dword_1E1C61000, v1425, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
  }

LABEL_228:
  if (v1473 >= 2)
  {
    v182 = v177 + v118;
    v69 = v1478;
    v183 = v1480;
    v184 = v1473 - 1;
    do
    {
      v14 = v142;
      if (v69 <= v142)
      {
        goto LABEL_935;
      }

      v183[v142] = v182;
      v182 += v27;
      ++v142;
    }

    while (--v184);
  }

  if (v1474 >= 2)
  {
    v69 = v1478;
    v185 = v1480;
    v186 = v1474 - 1;
    v187 = (3 * v1459 - 6) * v27 + 8 * v1465 + 24;
    v188 = v1474 + v1473 + v135 - 2;
    while (1)
    {
      v14 = v188;
      if (v69 <= v188)
      {
        break;
      }

      v185[v188] = v187;
      v187 += v27;
      ++v188;
      if (!--v186)
      {
        goto LABEL_236;
      }
    }

    v1502[0] = 0;
    v1517 = 0u;
    v1518 = 0u;
    v1515 = 0u;
    v1516 = 0u;
    v1514 = 0u;
    v821 = MEMORY[0x1E69E9C10];
    v822 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v1508 + 4) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v822)
    {
      v823 = 3;
    }

    else
    {
      v823 = 2;
    }

    *(&v1508[1] + 6) = 789;
    WORD1(v1508[2]) = 2048;
    *(&v1508[2] + 4) = v14;
    WORD2(v1508[3]) = 2048;
    *(&v1508[3] + 6) = v69;
    _os_log_send_and_compose_impl(v823, v1502, &v1514, 80, &dword_1E1C61000, v821, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_966:
    v1502[0] = 0;
    v1517 = 0u;
    v1518 = 0u;
    v1515 = 0u;
    v1516 = 0u;
    v1514 = 0u;
    v824 = MEMORY[0x1E69E9C10];
    v825 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v1508 + 4) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v825)
    {
      v826 = 3;
    }

    else
    {
      v826 = 2;
    }

    *(&v1508[1] + 6) = 789;
    WORD1(v1508[2]) = 2048;
    *(&v1508[2] + 4) = v14;
    WORD2(v1508[3]) = 2048;
    *(&v1508[3] + 6) = v69;
    _os_log_send_and_compose_impl(v826, v1502, &v1514, 80, &dword_1E1C61000, v824, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_970:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v827 = MEMORY[0x1E69E9C10];
    v828 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    *(v1528 + 14) = 621;
    if (v828)
    {
      v829 = 3;
    }

    else
    {
      v829 = 2;
    }

    LODWORD(v1528[0]) = 136315906;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = (v27 + v69);
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v20;
    _os_log_send_and_compose_impl(v829, v1527, v1502, 80, &dword_1E1C61000, v827, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_974:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v485 = MEMORY[0x1E69E9C10];
    v830 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v830)
    {
      v831 = 3;
    }

    else
    {
      v831 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v27 + v69;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v23;
    _os_log_send_and_compose_impl(v831, v1527, v1502, 80, &dword_1E1C61000, v485, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_978:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v832 = MEMORY[0x1E69E9C10];
    v833 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v833)
    {
      v834 = 3;
    }

    else
    {
      v834 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v27 + v69;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v485;
    _os_log_send_and_compose_impl(v834, v1527, v1502, 80, &dword_1E1C61000, v832, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_982:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v363 = MEMORY[0x1E69E9C10];
    v835 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    *(v1528 + 14) = 621;
    if (v835)
    {
      v836 = 3;
    }

    else
    {
      v836 = 2;
    }

    LODWORD(v1528[0]) = 136315906;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = (v27 + v69);
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v17;
    _os_log_send_and_compose_impl(v836, v1527, v1502, 80, &dword_1E1C61000, v363, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_986:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v14 = MEMORY[0x1E69E9C10];
    v837 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v837)
    {
      v838 = 3;
    }

    else
    {
      v838 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v27 + v69;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v363;
    _os_log_send_and_compose_impl(v838, v1527, v1502, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_990:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v363 = MEMORY[0x1E69E9C10];
    v839 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v839)
    {
      v840 = 3;
    }

    else
    {
      v840 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v27 + v69;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v23;
    _os_log_send_and_compose_impl(v840, v1527, v1502, 80, &dword_1E1C61000, v363, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
    goto LABEL_994;
  }

LABEL_236:
  if (v1473 >= 2)
  {
    v69 = v1478;
    v189 = v1480;
    v190 = v1473 - 1;
    v191 = (3 * v1473 + 4 * v1474 - 7) * v27 + 8 * v1465 + 24;
    v192 = v1473 + v1467 + v22 - 3;
    do
    {
      v14 = v192;
      if (v69 <= v192)
      {
        goto LABEL_966;
      }

      v189[v192] = v191;
      v191 += v27;
      ++v192;
    }

    while (--v190);
  }

  if (!v1482)
  {
    goto LABEL_1452;
  }

  v1454 = (3 * v1472);
  v1442 = (2 * v1472);
  *(v1484 + v1482 - 1) = *v1484;
  if (!v1478)
  {
LABEL_1456:
    v1502[0] = 0;
    *(v21 + 272) = 0u;
    *(v21 + 288) = 0u;
    *(v21 + 240) = 0u;
    *(v21 + 256) = 0u;
    *(v21 + 224) = 0u;
    v363 = MEMORY[0x1E69E9C10];
    v1150 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v21 + 116) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v1150)
    {
      v1151 = 3;
    }

    else
    {
      v1151 = 2;
    }

    *(v21 + 126) = 789;
    WORD1(v1508[2]) = 2048;
    *(v21 + 132) = 0;
    WORD2(v1508[3]) = 2048;
    *(v21 + 142) = 0;
    _os_log_send_and_compose_impl(v1151, v1502, &v1514, 80, &dword_1E1C61000, v363, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1460:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1152 = MEMORY[0x1E69E9C10];
    v1153 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    *(v1528 + 14) = 621;
    if (v1153)
    {
      v1154 = 3;
    }

    else
    {
      v1154 = 2;
    }

    LODWORD(v1528[0]) = 136315906;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = (v14 + v27);
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v363;
    _os_log_send_and_compose_impl(v1154, v1527, v1502, 80, &dword_1E1C61000, v1152, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1464:
    *v1527 = 0;
    *(v22 + 48) = 0u;
    *(v22 + 64) = 0u;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0u;
    *v22 = 0u;
    v363 = MEMORY[0x1E69E9C10];
    v1155 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1155)
    {
      v1156 = 3;
    }

    else
    {
      v1156 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v14;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v14;
    _os_log_send_and_compose_impl(v1156, v1527, v1502, 80, &dword_1E1C61000, v363, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1468:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v487 = MEMORY[0x1E69E9C10];
    v1157 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    *(v1528 + 14) = 621;
    if (v1157)
    {
      v1158 = 3;
    }

    else
    {
      v1158 = 2;
    }

    LODWORD(v1528[0]) = 136315906;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = (v14 + v27);
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v363;
    _os_log_send_and_compose_impl(v1158, v1527, v1502, 80, &dword_1E1C61000, v487, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
    goto LABEL_1472;
  }

  v1480[v1478 - 1] = *v1480;
  bzero(&v1514, 0x2D0uLL);
  re::DynamicArray<re::BlendNode>::setCapacity(&v1515, 1uLL);
  ++DWORD2(v1516);
  re::internal::GeomAttributeManager::GeomAttributeManager((&v1517 + 8));
  re::internal::GeomAttributeManager::addAttribute((&v1517 + 8), "vertexPosition", 1, 7);
  if (v23 < v1516)
  {
    v194 = v1526;
    if (v1526)
    {
      v195 = 0;
      do
      {
        v196 = re::internal::GeomAttributeContainer::attributeByIndex(v1525, v195);
        re::internal::accessFaceVaryingAttributeSubmesh(v196, v197);
        ++v195;
      }

      while (v194 != v195);
    }
  }

  re::DynamicArray<re::GeomCell4>::resize(&v1515, v23);
  v1522 = v23;
  if (v1523)
  {
    v198 = v1524;
    v199 = 8 * v1523;
    do
    {
      v200 = *v198++;
      (*(*v200 + 80))(v200, v1522);
      v199 -= 8;
    }

    while (v199);
  }

  DWORD2(v1514) = v1457;
  v1519 = v1457;
  if (v1520)
  {
    v201 = v1521;
    v202 = 8 * v1520;
    do
    {
      v203 = *v201++;
      (*(*v203 + 80))(v203, v1519);
      v202 -= 8;
    }

    while (v202);
  }

  if (v4[1] < v23)
  {
    re::DynamicArray<unsigned short>::setCapacity(v4, v23);
  }

  v204 = v1468;
  v205 = v1469;
  if (!v1469)
  {
    goto LABEL_294;
  }

  v206 = 0;
  v207 = 0;
  do
  {
    v208 = v206;
    if (v204)
    {
      v209 = v207 * v1475;
      v208 = v206 + v204;
      v210 = 1;
      do
      {
        v211 = v209 + 1;
        re::GeomMeshBuilder::setFaceVertices(&v1514, v206 + v210++ - 1, v209, v209 + 1, v1475 + v209 + 1, v1475 + v209);
        v209 = v211;
      }

      while (v1475 != v210);
      v204 = v1468;
      v205 = v1469;
    }

    ++v207;
    v206 += v204;
  }

  while (v207 != v205);
LABEL_295:
  v236 = (v205 * v3);
  re::GeomMeshBuilder::setFaceVertices(&v1514, v208, v1465, v205 * v3, v1465 + 1);
  *v1448 = (v1465 + 1);
  re::GeomMeshBuilder::setFaceVertices(&v1514, v208 + 1, v1465, v1448[0], v1465 + 2);
  v1457 = (v1465 + 2);
  v1440 = (v1465 - 1);
  re::GeomMeshBuilder::setFaceVertices(&v1514, v208 + 2, v1465, v1465 + 2, v1465 - 1);
  v237 = v208 + 3;
  v238 = (v3 | 0xFFFFFFFE) + v3;
  v239 = v238 >> 1;
  v1441 = v236;
  if (!v238)
  {
    if ((v3 & 1) == 0)
    {
      goto LABEL_302;
    }

    goto LABEL_304;
  }

  if (v239 <= 1)
  {
    v240 = 1;
  }

  else
  {
    v240 = v238 >> 1;
  }

  v241 = v236;
  v20 = (v1465 + 1);
  do
  {
    LODWORD(v236) = v241 + 1;
    re::GeomMeshBuilder::setFaceVertices(&v1514, v237++, v1448[0], v241, v241 + 1);
    v241 = v236;
    --v240;
  }

  while (v240);
  if (v3)
  {
LABEL_304:
    v242 = v1465 + 2;
    re::GeomMeshBuilder::setFaceVertices(&v1514, v237, v1448[0], v236, v1457);
    goto LABEL_305;
  }

LABEL_302:
  v242 = v1465 + 2;
  re::GeomMeshBuilder::setFaceVertices(&v1514, v237, v1448[0], v236, v236 + 1, v1457);
  LODWORD(v236) = v236 + 1;
LABEL_305:
  v1446 = 2 * v1454;
  if (v238)
  {
    if (v239 <= 1)
    {
      v239 = 1;
    }

    v243 = v237 + 1;
    do
    {
      re::GeomMeshBuilder::setFaceVertices(&v1514, v243++, v242, v236, v236 + 1);
      LODWORD(v236) = v236 + 1;
      --v239;
    }

    while (v239);
  }

  v14 = &v1514;
  v244 = 1;
  v3 = v1528;
  v245 = v1471;
  v22 = v1471;
  v246 = v1472;
  do
  {
    LODWORD(v1467) = v244;
    if (v245)
    {
      v20 = 0;
      v27 = v1516;
      while (v27 > v20)
      {
        v247 = 0;
        v248 = v1517;
        v1528[0] = *(v1517 + 16 * v20);
        v21 = HIDWORD(v1528[0]);
        if (HIDWORD(v1528[0]) == -1)
        {
          v249 = 3;
        }

        else
        {
          v249 = 4;
        }

        do
        {
          *(v1528 + v247++) += v246;
        }

        while (v249 != v247);
        v23 = v22;
        if (v27 <= v22)
        {
          goto LABEL_382;
        }

        v250 = (v248 + 16 * v22);
        if (*v250 != -1)
        {
          v251 = v250[3];
          _ZF = v21 == -1 || HIDWORD(v1528[0]) == -1;
          v253 = _ZF;
          if ((((v251 != -1) ^ v253) & 1) == 0)
          {
            v254 = v1526;
            if (v1526)
            {
              v255 = 0;
              do
              {
                v256 = re::internal::GeomAttributeContainer::attributeByIndex(v1525, v255);
                re::internal::accessFaceVaryingAttributeSubmesh(v256, v257);
                ++v255;
              }

              while (v254 != v255);
              v27 = v1516;
              v245 = v1471;
            }
          }
        }

        if (v27 <= v22)
        {
          goto LABEL_386;
        }

        v259 = DWORD2(v1528[0]);
        v258 = HIDWORD(v1528[0]);
        if (v21 == -1)
        {
          v258 = -1;
        }

        v260 = v1517 + 16 * v22;
        *v260 = *&v1528[0];
        *(v260 + 8) = v259;
        *(v260 + 12) = v258;
        v22 = (v22 + 1);
        if (++v20 == v245)
        {
          goto LABEL_335;
        }
      }

      goto LABEL_378;
    }

LABEL_335:
    v246 += v1472;
    v244 = v1467 + 1;
  }

  while (v1467 != 7);
  v1508[0] = v1500;
  v1508[1] = v1498;
  v1502[0] = v1496;
  v1502[1] = v1494;
  LODWORD(v1528[0]) = v1461;
  *v1527 = v1452;
  v261 = v1474;
  v262 = v1473;
  v22 = v1502;
  v3 = v1475;
  v263 = v1462;
  if (!v1473)
  {
    goto LABEL_359;
  }

  v264 = 0;
  while (2)
  {
    if (v261)
    {
      v265 = v264 * v1458;
      v14 = ++v264 * v1458;
      v17 = v261;
      while (1)
      {
        v60 = v265;
        v27 = v1490;
        if (v1490 <= v265)
        {
          break;
        }

        v3 = v265 + 1;
        if (v1490 <= v3)
        {
          goto LABEL_506;
        }

        v20 = (v14 + 1);
        if (v1490 <= v20)
        {
          goto LABEL_510;
        }

        v21 = v14;
        if (v1490 <= v14)
        {
          goto LABEL_514;
        }

        re::GeomMeshBuilder::setFaceVertices(&v1514, v1476[0]++, v1492[v265], v1492[v3], v1492[v20], v1492[v14]);
        v14 = (v14 + 1);
        v265 = v60 + 1;
        --v17;
        v3 = v1475;
        if (!v17)
        {
          v262 = v1473;
          v261 = v1474;
          v263 = v1462;
          goto LABEL_347;
        }
      }

      *&v1528[0] = 0;
      v1509 = 0u;
      v1510 = 0u;
      memset(v1508, 0, sizeof(v1508));
      v420 = MEMORY[0x1E69E9C10];
      v421 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v1502[0]) = 136315906;
      *(v1502 + 4) = "operator[]";
      WORD2(v1502[1]) = 1024;
      if (v421)
      {
        v422 = 3;
      }

      else
      {
        v422 = 2;
      }

      *(&v1502[1] + 6) = 797;
      WORD1(v1502[2]) = 2048;
      *(&v1502[2] + 4) = v60;
      WORD2(v1502[3]) = 2048;
      *(&v1502[3] + 6) = v27;
      _os_log_send_and_compose_impl(v422, v1528, v1508, 80, &dword_1E1C61000, v420, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1502, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_506:
      *&v1528[0] = 0;
      v1509 = 0u;
      v1510 = 0u;
      memset(v1508, 0, sizeof(v1508));
      v423 = MEMORY[0x1E69E9C10];
      v424 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v1502[0]) = 136315906;
      *(v1502 + 4) = "operator[]";
      WORD2(v1502[1]) = 1024;
      if (v424)
      {
        v425 = 3;
      }

      else
      {
        v425 = 2;
      }

      *(&v1502[1] + 6) = 797;
      WORD1(v1502[2]) = 2048;
      *(&v1502[2] + 4) = v3;
      WORD2(v1502[3]) = 2048;
      *(&v1502[3] + 6) = v27;
      _os_log_send_and_compose_impl(v425, v1528, v1508, 80, &dword_1E1C61000, v423, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1502, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_510:
      *&v1528[0] = 0;
      v1509 = 0u;
      v1510 = 0u;
      memset(v1508, 0, sizeof(v1508));
      v426 = MEMORY[0x1E69E9C10];
      v427 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v1502[0]) = 136315906;
      *(v1502 + 4) = "operator[]";
      WORD2(v1502[1]) = 1024;
      if (v427)
      {
        v428 = 3;
      }

      else
      {
        v428 = 2;
      }

      *(&v1502[1] + 6) = 797;
      WORD1(v1502[2]) = 2048;
      *(&v1502[2] + 4) = v20;
      WORD2(v1502[3]) = 2048;
      *(&v1502[3] + 6) = v27;
      _os_log_send_and_compose_impl(v428, v1528, v1508, 80, &dword_1E1C61000, v426, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1502, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_514:
      *&v1528[0] = 0;
      v1509 = 0u;
      v1510 = 0u;
      memset(v1508, 0, sizeof(v1508));
      v429 = MEMORY[0x1E69E9C10];
      v430 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v1502[0]) = 136315906;
      *(v1502 + 4) = "operator[]";
      WORD2(v1502[1]) = 1024;
      if (v430)
      {
        v431 = 3;
      }

      else
      {
        v431 = 2;
      }

      *(&v1502[1] + 6) = 797;
      WORD1(v1502[2]) = 2048;
      *(&v1502[2] + 4) = v21;
      WORD2(v1502[3]) = 2048;
      *(&v1502[3] + 6) = v27;
      _os_log_send_and_compose_impl(v431, v1528, v1508, 80, &dword_1E1C61000, v429, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1502, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_518:
      v1502[0] = 0;
      *(v21 + 272) = 0u;
      *(v21 + 288) = 0u;
      *(v21 + 240) = 0u;
      *(v21 + 256) = 0u;
      *(v21 + 224) = 0u;
      v432 = MEMORY[0x1E69E9C10];
      v433 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v1508[0]) = 136315906;
      *(v21 + 116) = "operator[]";
      WORD2(v1508[1]) = 1024;
      if (v433)
      {
        v434 = 3;
      }

      else
      {
        v434 = 2;
      }

      *(v21 + 126) = 789;
      WORD1(v1508[2]) = 2048;
      *(v21 + 132) = v60;
      WORD2(v1508[3]) = 2048;
      *(v21 + 142) = v27;
      _os_log_send_and_compose_impl(v434, v1502, &v1514, 80, &dword_1E1C61000, v432, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_522:
      v1502[0] = 0;
      *(v21 + 272) = 0u;
      *(v21 + 288) = 0u;
      *(v21 + 240) = 0u;
      *(v21 + 256) = 0u;
      *(v21 + 224) = 0u;
      v435 = MEMORY[0x1E69E9C10];
      v436 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v1508[0]) = 136315906;
      *(v21 + 116) = "operator[]";
      WORD2(v1508[1]) = 1024;
      if (v436)
      {
        v437 = 3;
      }

      else
      {
        v437 = 2;
      }

      *(v21 + 126) = 789;
      WORD1(v1508[2]) = 2048;
      *(v21 + 132) = v60;
      WORD2(v1508[3]) = 2048;
      *(v21 + 142) = v27;
      _os_log_send_and_compose_impl(v437, v1502, &v1514, 80, &dword_1E1C61000, v435, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
      v403 = _os_crash_msg();
      __break(1u);
LABEL_526:
      v413.i64[0] = 0x7F0000007FLL;
      v413.i64[1] = 0x7F0000007FLL;
      v412 = vnegq_f32(v413).u64[0];
      v408 = 0.0;
      v406 = 0xFFFFFFFFLL;
      v419 = 0x7F0000007FLL;
      v418 = v412;
      v407 = v27;
      goto LABEL_527;
    }

    ++v264;
LABEL_347:
    if (v264 != v262)
    {
      continue;
    }

    break;
  }

  v266 = 0;
  do
  {
    if (v261)
    {
      v267 = v266 * v1458;
      v268 = ++v266 * v1458;
      v17 = v261;
      do
      {
        v69 = v267;
        v27 = v1486;
        if (v1486 <= v267)
        {
          goto LABEL_712;
        }

        v3 = v267 + 1;
        if (v1486 <= v3)
        {
          goto LABEL_716;
        }

        v20 = v268 + 1;
        if (v1486 <= v20)
        {
          goto LABEL_720;
        }

        v21 = v268;
        if (v1486 <= v268)
        {
          goto LABEL_724;
        }

        re::GeomMeshBuilder::setFaceVertices(&v1514, v1476[0]++, v1488[v267], v1488[v3], v1488[v20], v1488[v268++]);
        v267 = v69 + 1;
        --v17;
        v3 = v1475;
      }

      while (v17);
      v262 = v1473;
      v261 = v1474;
      v263 = v1462;
    }

    else
    {
      ++v266;
    }
  }

  while (v266 != v262);
LABEL_359:
  if (v1463)
  {
    v269 = 0;
    v270 = v1450 + 8 * v1465 + v1451;
    v271 = v270 + v1466;
    do
    {
      if (v1466)
      {
        v272 = v263;
        for (i = 0; i != v1466; ++i)
        {
          re::GeomMeshBuilder::setFaceVertices(&v1514, v272 + i, v270 + i + 24, v270 + i + 25, v271 + i + 26, v271 + i + 25);
        }

        v263 = v272 + i;
      }

      ++v269;
      v270 += v1470;
      v271 += v1470;
    }

    while (v269 != v1463);
  }

  v107 = a1;
  v274 = re::GeomMesh::operator=(a1, &v1514 + 1);
  re::GeomMesh::setName(v274, v1514);
  re::GeomMesh::freeName(&v1514);
  v276 = a2;
  if (*a2 == 1)
  {
    re::addVertexUVs(a1, v275);
  }

  v277 = *(a2 + 72);
  v14 = v1472;
  if (v277)
  {
    v17 = re::GeomMesh::addAttribute(a1, v277, 1, 4);
    goto LABEL_399;
  }

LABEL_398:
  v17 = 0;
LABEL_399:
  v298 = *v276[3].i32;
  v299 = v276[1];
  re::internal::UIKitStyleBezierArc::UIKitStyleBezierArc(v1508, *&vdup_lane_s32(v276[2], 0), v298);
  v1511 = v7;
  v1512 = v298;
  v1513 = v299;
  v27 = v1464;
  v1467 = v17;
  if (v276->i8[5] != 1)
  {
    v315 = re::GeomMesh::modifyVertexPositions(v107);
    v317 = v316;
    *v1527 = v315;
    *&v1527[8] = v316;
    v14 = re::modifyVertexTangents(v107, v316);
    v319 = v318;
    v320 = re::modifyVertexNormals(v107, v318);
    v3 = v1458;
    if (!v1447)
    {
LABEL_418:
      v333 = v1472;
      v322.f32[0] = v9;
      v334 = a1;
      goto LABEL_492;
    }

    v324 = 0;
    v69 = v317;
    v325 = 16 * v317;
    v326 = v317 - v1447;
    if (v317 < v1447)
    {
      v326 = 0;
    }

    v327 = 16 * v326;
    if (v319 >= v1447)
    {
      v328 = v319 - v1447;
    }

    else
    {
      v328 = 0;
    }

    v329 = v321 - v1447;
    if (v321 < v1447)
    {
      v329 = 0;
    }

    v330 = 16 * v329;
    v20 = v321;
    v331 = 16 * v328;
    v21 = v319;
    v332 = 16 * v319;
    v27 = v1447;
    while (1)
    {
      if (v325 == v324)
      {
        goto LABEL_1264;
      }

      if (v327 == v324)
      {
        break;
      }

      v322.i32[0] = *(v315 + v324);
      v322.f32[1] = -*(v315 + v324 + 4);
      v322.f32[2] = -*(v315 + v324 + 8);
      *(v315 + 16 * v1447 + v324) = v322;
      if (v332 == v324)
      {
        goto LABEL_1272;
      }

      if (v331 == v324)
      {
        goto LABEL_1276;
      }

      v322.i32[0] = *(v14 + v324);
      v322.f32[1] = -*(v14 + v324 + 4);
      v322.f32[2] = -*(v14 + v324 + 8);
      *(v14 + 16 * v1447 + v324) = v322;
      if (16 * v321 == v324)
      {
        goto LABEL_1280;
      }

      if (v330 == v324)
      {
        goto LABEL_1284;
      }

      v322.i32[0] = *(v320 + v324);
      v322.f32[1] = -*(v320 + v324 + 4);
      v322.f32[2] = -*(v320 + v324 + 8);
      *(v320 + 16 * v1447 + v324) = v322;
      v324 += 16;
      ++v27;
      if (16 * v1447 == v324)
      {
        goto LABEL_418;
      }
    }

LABEL_1268:
    v1501 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1009 = MEMORY[0x1E69E9C10];
    v1010 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1010)
    {
      v1011 = 3;
    }

    else
    {
      v1011 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v27;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v69;
    _os_log_send_and_compose_impl(v1011, &v1501, v1502, 80, &dword_1E1C61000, v1009, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1272:
    v1501 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1012 = MEMORY[0x1E69E9C10];
    v1013 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1013)
    {
      v1014 = 3;
    }

    else
    {
      v1014 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v21;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v21;
    _os_log_send_and_compose_impl(v1014, &v1501, v1502, 80, &dword_1E1C61000, v1012, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1276:
    v1501 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1015 = MEMORY[0x1E69E9C10];
    v1016 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1016)
    {
      v1017 = 3;
    }

    else
    {
      v1017 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v27;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v21;
    _os_log_send_and_compose_impl(v1017, &v1501, v1502, 80, &dword_1E1C61000, v1015, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1280:
    v1501 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1018 = MEMORY[0x1E69E9C10];
    v1019 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1019)
    {
      v1020 = 3;
    }

    else
    {
      v1020 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v20;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v20;
    _os_log_send_and_compose_impl(v1020, &v1501, v1502, 80, &dword_1E1C61000, v1018, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1284:
    v1501 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1021 = MEMORY[0x1E69E9C10];
    v1022 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1022)
    {
      v1023 = 3;
    }

    else
    {
      v1023 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v27;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v20;
    _os_log_send_and_compose_impl(v1023, &v1501, v1502, 80, &dword_1E1C61000, v1021, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1288:
    *v1527 = 0;
    *(v22 + 48) = 0u;
    *(v22 + 64) = 0u;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0u;
    *v22 = 0u;
    v1024 = MEMORY[0x1E69E9C10];
    v1025 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    if (v1025)
    {
      v1026 = 3;
    }

    else
    {
      v1026 = 2;
    }

    WORD6(v1528[0]) = 1024;
    *(v1528 + 14) = 613;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v17;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v27;
    _os_log_send_and_compose_impl(v1026, v1527, v1502, 80, &dword_1E1C61000, v1024, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1292:
    *v1527 = 0;
    *(v22 + 48) = 0u;
    *(v22 + 64) = 0u;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0u;
    *v22 = 0u;
    v1027 = MEMORY[0x1E69E9C10];
    v1028 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1028)
    {
      v1029 = 3;
    }

    else
    {
      v1029 = 2;
    }

    *(v1528 + 14) = 613;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v14;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v27;
    _os_log_send_and_compose_impl(v1029, v1527, v1502, 80, &dword_1E1C61000, v1027, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1296:
    *v1527 = 0;
    *(v22 + 48) = 0u;
    *(v22 + 64) = 0u;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0u;
    *v22 = 0u;
    v1030 = MEMORY[0x1E69E9C10];
    v1031 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1031)
    {
      v1032 = 3;
    }

    else
    {
      v1032 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v14;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v69;
    _os_log_send_and_compose_impl(v1032, v1527, v1502, 80, &dword_1E1C61000, v1030, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1300:
    *v1527 = 0;
    *(v22 + 48) = 0u;
    *(v22 + 64) = 0u;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0u;
    *v22 = 0u;
    v1033 = MEMORY[0x1E69E9C10];
    v1034 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    if (v1034)
    {
      v1035 = 3;
    }

    else
    {
      v1035 = 2;
    }

    WORD6(v1528[0]) = 1024;
    *(v1528 + 14) = 613;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v21;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v20;
    _os_log_send_and_compose_impl(v1035, v1527, v1502, 80, &dword_1E1C61000, v1033, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1304:
    *v1527 = 0;
    *(v22 + 48) = 0u;
    *(v22 + 64) = 0u;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0u;
    *v22 = 0u;
    v1036 = MEMORY[0x1E69E9C10];
    v1037 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1037)
    {
      v1038 = 3;
    }

    else
    {
      v1038 = 2;
    }

    *(v1528 + 14) = 613;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v3;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v20;
    _os_log_send_and_compose_impl(v1038, v1527, v1502, 80, &dword_1E1C61000, v1036, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1308:
    *v1527 = 0;
    *(v22 + 48) = 0u;
    *(v22 + 64) = 0u;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0u;
    *v22 = 0u;
    v1039 = MEMORY[0x1E69E9C10];
    v1040 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1040)
    {
      v1041 = 3;
    }

    else
    {
      v1041 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v3;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v69;
    _os_log_send_and_compose_impl(v1041, v1527, v1502, 80, &dword_1E1C61000, v1039, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1312:
    v1501 = 0;
    v1529 = 0u;
    v1530 = 0u;
    memset(v1528, 0, sizeof(v1528));
    v1042 = MEMORY[0x1E69E9C10];
    v27 = v375;
    v1043 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *&v1527[4] = "operator[]";
    *&v1527[12] = 1024;
    *&v1527[14] = 621;
    if (v1043)
    {
      v1044 = 3;
    }

    else
    {
      v1044 = 2;
    }

    *v1527 = 136315906;
    *&v1527[18] = 2048;
    *&v1527[20] = (v27 + v69 + 14);
    *&v1527[28] = 2048;
    *&v1527[30] = v17;
    _os_log_send_and_compose_impl(v1044, &v1501, v1528, 80, &dword_1E1C61000, v1042, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1527, 38, v1434, v1435);
    v379 = _os_crash_msg();
    __break(1u);
LABEL_1316:
    v1501 = 0;
    v1529 = 0u;
    v1530 = 0u;
    memset(v1528, 0, sizeof(v1528));
    v1045 = MEMORY[0x1E69E9C10];
    v1046 = v379;
    v1047 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v1527 = 136315906;
    *&v1527[4] = "operator[]";
    *&v1527[12] = 1024;
    if (v1047)
    {
      v1048 = 3;
    }

    else
    {
      v1048 = 2;
    }

    *&v1527[14] = 621;
    *&v1527[18] = 2048;
    *&v1527[20] = v1046;
    *&v1527[28] = 2048;
    *&v1527[30] = v1476[0];
    _os_log_send_and_compose_impl(v1048, &v1501, v1528, 80, &dword_1E1C61000, v1045, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1527, 38, v1434, v1435);
    v379 = _os_crash_msg();
    __break(1u);
LABEL_1320:
    v1501 = 0;
    v69 = v1527;
    v1529 = 0u;
    v1530 = 0u;
    memset(v1528, 0, sizeof(v1528));
    v1049 = MEMORY[0x1E69E9C10];
    v1050 = v379;
    v1051 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v1527 = 136315906;
    *&v1527[4] = "operator[]";
    *&v1527[12] = 1024;
    if (v1051)
    {
      v1052 = 3;
    }

    else
    {
      v1052 = 2;
    }

    *&v1527[14] = 621;
    *&v1527[18] = 2048;
    *&v1527[20] = v1050;
    *&v1527[28] = 2048;
    *&v1527[30] = v22;
    _os_log_send_and_compose_impl(v1052, &v1501, v1528, 80, &dword_1E1C61000, v1049, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1527, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1324:
    v1501 = 0;
    v1529 = 0u;
    v1530 = 0u;
    memset(v1528, 0, sizeof(v1528));
    v1053 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v1054 = 3;
    }

    else
    {
      v1054 = 2;
    }

    *v1527 = 136315906;
    *&v1527[4] = "operator[]";
    *&v1527[12] = 1024;
    *&v1527[14] = 621;
    *&v1527[18] = 2048;
    *&v1527[20] = (6 * v1465 - v27 + v69 + 17);
    *&v1527[28] = 2048;
    *&v1527[30] = v17;
    _os_log_send_and_compose_impl(v1054, &v1501, v1528, 80, &dword_1E1C61000, v1053, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1527, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1328:
    v1501 = 0;
    v1529 = 0u;
    v1530 = 0u;
    memset(v1528, 0, sizeof(v1528));
    v1055 = MEMORY[0x1E69E9C10];
    v1056 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *&v1527[4] = "operator[]";
    *&v1527[12] = 1024;
    *&v1527[14] = 621;
    if (v1056)
    {
      v1057 = 3;
    }

    else
    {
      v1057 = 2;
    }

    *v1527 = 136315906;
    *&v1527[18] = 2048;
    *&v1527[20] = (v69 - v1465 + 8 * v1465 + 20);
    *&v1527[28] = 2048;
    *&v1527[30] = v17;
    _os_log_send_and_compose_impl(v1057, &v1501, v1528, 80, &dword_1E1C61000, v1055, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1527, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1332:
    v1501 = 0;
    v1529 = 0u;
    v1530 = 0u;
    memset(v1528, 0, sizeof(v1528));
    v391 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v1058 = 3;
    }

    else
    {
      v1058 = 2;
    }

    *v1527 = 136315906;
    *&v1527[4] = "operator[]";
    *&v1527[12] = 1024;
    *&v1527[14] = 621;
    *&v1527[18] = 2048;
    *&v1527[20] = (v69 - v27 + 8 * v1465 + 23);
    *&v1527[28] = 2048;
    *&v1527[30] = v17;
    _os_log_send_and_compose_impl(v1058, &v1501, v1528, 80, &dword_1E1C61000, v391, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1527, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1336:
    v1501 = 0;
    v1529 = 0u;
    v1530 = 0u;
    memset(v1528, 0, sizeof(v1528));
    v1059 = MEMORY[0x1E69E9C10];
    v1060 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v1527 = 136315906;
    *&v1527[4] = "operator[]";
    *&v1527[12] = 1024;
    if (v1060)
    {
      v1061 = 3;
    }

    else
    {
      v1061 = 2;
    }

    *&v1527[14] = 621;
    *&v1527[18] = 2048;
    *&v1527[20] = v391;
    *&v1527[28] = 2048;
    *&v1527[30] = v22;
    _os_log_send_and_compose_impl(v1061, &v1501, v1528, 80, &dword_1E1C61000, v1059, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1527, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1340:
    v1501 = 0;
    v1529 = 0u;
    v1530 = 0u;
    memset(v1528, 0, sizeof(v1528));
    v1062 = MEMORY[0x1E69E9C10];
    v1063 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v1527 = 136315906;
    *&v1527[4] = "operator[]";
    *&v1527[12] = 1024;
    if (v1063)
    {
      v1064 = 3;
    }

    else
    {
      v1064 = 2;
    }

    *&v1527[14] = 621;
    *&v1527[18] = 2048;
    *&v1527[20] = v27;
    *&v1527[28] = 2048;
    *&v1527[30] = v22;
    _os_log_send_and_compose_impl(v1064, &v1501, v1528, 80, &dword_1E1C61000, v1062, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1527, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1344:
    v1501 = 0;
    v391 = v1527;
    v1529 = 0u;
    v1530 = 0u;
    memset(v1528, 0, sizeof(v1528));
    v1065 = MEMORY[0x1E69E9C10];
    v1066 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v1527 = 136315906;
    *&v1527[4] = "operator[]";
    *&v1527[12] = 1024;
    if (v1066)
    {
      v1067 = 3;
    }

    else
    {
      v1067 = 2;
    }

    *&v1527[14] = 621;
    *&v1527[18] = 2048;
    *&v1527[20] = v23;
    *&v1527[28] = 2048;
    *&v1527[30] = v1476[0];
    _os_log_send_and_compose_impl(v1067, &v1501, v1528, 80, &dword_1E1C61000, v1065, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1527, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1348:
    v1501 = 0;
    v1529 = 0u;
    v1530 = 0u;
    memset(v1528, 0, sizeof(v1528));
    v1068 = MEMORY[0x1E69E9C10];
    v1069 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v1527 = 136315906;
    *&v1527[4] = "operator[]";
    *&v1527[12] = 1024;
    if (v1069)
    {
      v1070 = 3;
    }

    else
    {
      v1070 = 2;
    }

    *&v1527[14] = 621;
    *&v1527[18] = 2048;
    *&v1527[20] = v391;
    *&v1527[28] = 2048;
    *&v1527[30] = v22;
    _os_log_send_and_compose_impl(v1070, &v1501, v1528, 80, &dword_1E1C61000, v1068, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1527, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1352:
    v1501 = 0;
    v1529 = 0u;
    v1530 = 0u;
    memset(v1528, 0, sizeof(v1528));
    v1071 = MEMORY[0x1E69E9C10];
    v1072 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v1527 = 136315906;
    *&v1527[4] = "operator[]";
    *&v1527[12] = 1024;
    if (v1072)
    {
      v1073 = 3;
    }

    else
    {
      v1073 = 2;
    }

    *&v1527[14] = 621;
    *&v1527[18] = 2048;
    *&v1527[20] = v27;
    *&v1527[28] = 2048;
    *&v1527[30] = v22;
    _os_log_send_and_compose_impl(v1073, &v1501, v1528, 80, &dword_1E1C61000, v1071, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1527, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1356:
    v1501 = 0;
    v107 = v1527;
    v1529 = 0u;
    v1530 = 0u;
    memset(v1528, 0, sizeof(v1528));
    v1074 = MEMORY[0x1E69E9C10];
    v1075 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v1527 = 136315906;
    *&v1527[4] = "operator[]";
    *&v1527[12] = 1024;
    if (v1075)
    {
      v1076 = 3;
    }

    else
    {
      v1076 = 2;
    }

    *&v1527[14] = 621;
    *&v1527[18] = 2048;
    *&v1527[20] = v23;
    *&v1527[28] = 2048;
    *&v1527[30] = v22;
    _os_log_send_and_compose_impl(v1076, &v1501, v1528, 80, &dword_1E1C61000, v1074, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1527, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1360:
    v1502[0] = 0;
    *(v21 + 272) = 0u;
    *(v21 + 288) = 0u;
    *(v21 + 240) = 0u;
    *(v21 + 256) = 0u;
    *(v21 + 224) = 0u;
    v1077 = MEMORY[0x1E69E9C10];
    v1078 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1508[0]) = 136315906;
    *(v21 + 116) = "operator[]";
    WORD2(v1508[1]) = 1024;
    if (v1078)
    {
      v1079 = 3;
    }

    else
    {
      v1079 = 2;
    }

    *(v21 + 126) = 789;
    WORD1(v1508[2]) = 2048;
    *(v21 + 132) = 0;
    WORD2(v1508[3]) = 2048;
    *(v21 + 142) = 0;
    _os_log_send_and_compose_impl(v1079, v1502, &v1514, 80, &dword_1E1C61000, v1077, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
    goto LABEL_1364;
  }

  v300 = *&v276[3].i32[1];
  re::internal::UIKitStyleBezierArc::UIKitStyleBezierArc(v1502, *&vdup_lane_s32(v276[2], 0), v300);
  v1505 = v7;
  v1506 = v300;
  v1507 = v299;
  v21 = re::GeomMesh::modifyVertexPositions(v107);
  v1463 = v301;
  v14 = re::modifyVertexTangents(v107, v301);
  *v1476 = v302;
  v20 = re::modifyVertexNormals(v107, v302);
  v22 = v309;
  v310 = v17;
  if (v17)
  {
    v311 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v17);
    v310 = v17;
    v312 = v311;
    v314 = v313;
    goto LABEL_424;
  }

LABEL_423:
  v312 = 0;
  v314 = 0xFFFFFFFFLL;
LABEL_424:
  v338 = v1465;
  v339 = v1464;
  v17 = v1463;
  if (v1464)
  {
    v340 = 0;
    v3 = ((v1472 + -3.0) / v1464);
    v1439 = v1463;
    v1438 = v1476[0];
    v1437 = v22;
    v1471 = v314;
    do
    {
      if (v3)
      {
        v341 = 0;
        v342 = 0;
        v343 = (v340 * v3 + v1447);
        v1436 = v340;
        v344 = v340 + 1;
        v345 = v340 * v3 + v1446;
        v1460 = v312 + 4 * v345;
        v1453 = v344;
        v346 = v344 * v3;
        if (v1463 >= v343)
        {
          v347 = v1463 - v343;
        }

        else
        {
          v347 = 0;
        }

        if (v1463 >= v345)
        {
          v348 = v1463 - v345;
        }

        else
        {
          v348 = 0;
        }

        if (v1476[0] >= v343)
        {
          v349 = v1476[0] - v343;
        }

        else
        {
          v349 = 0;
        }

        v350 = v312;
        v351 = v312 + 4 * v343;
        if (v1476[0] >= v345)
        {
          v352 = v1476[0] - v345;
        }

        else
        {
          v352 = 0;
        }

        v353 = v20 + 16 * v343;
        if (v22 >= v343)
        {
          v354 = v22 - v343;
        }

        else
        {
          v354 = 0;
        }

        if (v22 >= v345)
        {
          v23 = v22 - v345;
        }

        else
        {
          v23 = 0;
        }

        v355 = 7 * v1465 + 20 + v346;
        v356 = 5 * v1465 + 14 + v346;
        v357 = v14 + 16 * v343;
        v358 = v21 + 16 * v343;
        do
        {
          if (v347 == v342)
          {
            goto LABEL_1026;
          }

          v303.i32[0] = *(v358 + v341);
          v304.i64[0] = *(v358 + v341 + 4);
          v359 = vnegq_f32(v304);
          v360 = vextq_s8(vextq_s8(v303, v303, 4uLL), v359, 0xCuLL);
          *(v358 + v341) = v360;
          v27 = v356;
          if (v356 >= v17)
          {
            goto LABEL_1030;
          }

          *v303.i32 = -*v303.i32;
          v361 = vextq_s8(vextq_s8(v303, v303, 4uLL), v359, 0xCuLL);
          v362 = v361;
          v362.i32[2] = v359.i32[1];
          *(v21 + 16 * v356) = v362;
          if (v348 == v342)
          {
            goto LABEL_1034;
          }

          *(v21 + 16 * v345 + 16 * v342) = vtrn1q_s32(v361, v304);
          v363 = v355;
          if (v355 >= v17)
          {
            goto LABEL_1038;
          }

          *(v21 + 16 * v355) = vtrn1q_s32(v360, v304);
          if (v349 == v342)
          {
            goto LABEL_1042;
          }

          v360.i32[0] = *(v357 + v341);
          v364 = *(v357 + v341 + 4);
          v365 = -*(v357 + v341 + 8);
          v366 = v360;
          *&v366.i32[1] = v364;
          *&v366.i32[2] = v365;
          *(v357 + v341) = v366;
          v17 = *v1476;
          if (v356 >= v1476[0])
          {
            goto LABEL_1046;
          }

          *v366.i32 = -*v360.i32;
          *&v366.i32[1] = v364;
          *&v366.i32[2] = v365;
          *(v14 + 16 * v356) = v366;
          if (v352 == v342)
          {
            goto LABEL_1050;
          }

          *&v360.i32[1] = -v364;
          *&v360.i32[2] = v365;
          *(v14 + 16 * v345 + 16 * v342) = v360;
          if (v355 >= v1476[0])
          {
            goto LABEL_1054;
          }

          v361.f32[2] = v365;
          *(v14 + 16 * v355) = v361;
          if (v354 == v342)
          {
            goto LABEL_1058;
          }

          v17 = v353 + v341;
          v360.i32[0] = *(v353 + v341);
          v361.i64[0] = *(v353 + v341 + 4);
          v306 = vnegq_f32(v361);
          v304 = vextq_s8(vextq_s8(v360, v360, 4uLL), v306, 0xCuLL);
          *(v353 + v341) = v304;
          if (v356 >= v22)
          {
            goto LABEL_1062;
          }

          *v360.i32 = -*v360.i32;
          v367 = vextq_s8(vextq_s8(v360, v360, 4uLL), v306, 0xCuLL);
          *(v20 + 16 * v356) = v367;
          if (v23 == v342)
          {
            goto LABEL_1066;
          }

          v305 = vtrn1q_s32(v367, v361);
          *(v20 + 16 * v345 + 16 * v342) = v305;
          if (v355 >= v22)
          {
            goto LABEL_1070;
          }

          v303 = vtrn1q_s32(v304, v361);
          *(v20 + 16 * v355) = v303;
          if (v1467)
          {
            v17 = v343 + v342;
            if (v343 + v342 >= v314)
            {
              goto LABEL_1236;
            }

            if (v314 <= v356)
            {
              goto LABEL_1240;
            }

            v17 = v345 + v342;
            v368 = *(v351 + 4 * v342);
            *(v350 + 4 * v356) = v368;
            if (v345 + v342 >= v314)
            {
              goto LABEL_1244;
            }

            *(v1460 + 4 * v342) = v368;
            if (v314 <= v355)
            {
              goto LABEL_1248;
            }

            *(v350 + 4 * v355) = *(v351 + 4 * v342);
          }

          ++v342;
          --v355;
          --v356;
          v341 += 16;
          v17 = v1463;
        }

        while (v3 != v342);
        v338 = v1465;
        v339 = v1464;
        v310 = v1467;
        v312 = v350;
        v369 = v1453;
      }

      else
      {
        v369 = v340 + 1;
      }

      v340 = v369;
    }

    while (v369 != v339);
  }

  v370 = v338;
  v69 = 0;
  v371 = 8 * v338;
  v372 = v371 - v370 + 20;
  v373 = (v371 + 16) | 7;
  v374 = (6 * v370 + 16) | 1;
  v375 = (5 * v370);
  v376 = v375 + 14;
  v377 = 1;
  v3 = v1458;
  do
  {
    if (v69)
    {
      v27 = (v377 + -3.0);
    }

    else
    {
      v27 = 1;
    }

    v378 = v376 + v69;
    if (v376 + v69 >= v17)
    {
      goto LABEL_1312;
    }

    v379 = v378;
    if (v378 >= v1476[0])
    {
      goto LABEL_1316;
    }

    if (v378 >= v22)
    {
      goto LABEL_1320;
    }

    v380 = v21 + 16 * v378;
    v308.i32[0] = *v380;
    v307.i64[0] = *(v380 + 4);
    v381 = v14 + 16 * v378;
    v306.i64[0] = *v381;
    v382 = *(v381 + 8);
    v383 = v20 + 16 * v378;
    v305.i32[0] = *v383;
    v304.i64[0] = *(v383 + 4);
    v384 = vnegq_f32(v307);
    v385 = vextq_s8(vextq_s8(v308, v308, 4uLL), v384, 0xCuLL);
    *v380 = v385;
    v386 = v374 + v69 - v27;
    if (v386 >= v17)
    {
      goto LABEL_1324;
    }

    *v308.i32 = -*v308.i32;
    v387 = vextq_s8(vextq_s8(v308, v308, 4uLL), v384, 0xCuLL);
    *(v21 + 16 * v386) = v387;
    v388 = v372 + v69;
    if (v372 + v69 >= v17)
    {
      goto LABEL_1328;
    }

    v308 = vtrn1q_s32(v387, v307);
    *(v21 + 16 * v388) = v308;
    v389 = v373 + v69 - v27;
    if (v389 >= v17)
    {
      goto LABEL_1332;
    }

    v390 = v22;
    v391 = v386;
    *(v21 + 16 * v389) = vtrn1q_s32(v385, v307);
    v392 = -v382;
    v307 = v306;
    v307.f32[2] = v392;
    *v381 = v307;
    v22 = *v1476;
    if (v386 >= v1476[0])
    {
      goto LABEL_1336;
    }

    v393 = v306;
    *v393.i32 = -*v306.i32;
    v27 = v388;
    *&v393.i32[2] = v392;
    *(v14 + 16 * v386) = v393;
    if (v388 >= v1476[0])
    {
      goto LABEL_1340;
    }

    v23 = v389;
    *(v14 + 16 * v388) = v393;
    if (v389 >= v1476[0])
    {
      goto LABEL_1344;
    }

    v307.f32[1] = -*&v306.i32[1];
    v307.f32[2] = v392;
    v307.f32[0] = -*v306.i32;
    *(v14 + 16 * v389) = v307;
    v394 = vnegq_f32(v304);
    v306 = vextq_s8(vextq_s8(v305, v305, 4uLL), v394, 0xCuLL);
    *v383 = v306;
    v22 = v390;
    if (v386 >= v390)
    {
      goto LABEL_1348;
    }

    *v305.i32 = -*v305.i32;
    v395 = vextq_s8(vextq_s8(v305, v305, 4uLL), v394, 0xCuLL);
    *(v20 + 16 * v386) = v395;
    if (v388 >= v390)
    {
      goto LABEL_1352;
    }

    v305 = vtrn1q_s32(v395, v304);
    *(v20 + 16 * v388) = v305;
    if (v389 >= v390)
    {
      goto LABEL_1356;
    }

    v304 = vtrn1q_s32(v306, v304);
    *(v20 + 16 * v389) = v304;
    if (v310)
    {
      if (v314 <= v378)
      {
        goto LABEL_1436;
      }

      if (v314 <= v386)
      {
LABEL_1440:
        v1501 = 0;
        v1529 = 0u;
        v1530 = 0u;
        memset(v1528, 0, sizeof(v1528));
        v1137 = MEMORY[0x1E69E9C10];
        v27 = v314;
        v1138 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1527 = 136315906;
        *&v1527[4] = "operator[]";
        if (v1138)
        {
          v1139 = 3;
        }

        else
        {
          v1139 = 2;
        }

        *&v1527[12] = 1024;
        *&v1527[14] = 621;
        *&v1527[18] = 2048;
        *&v1527[20] = v391;
        *&v1527[28] = 2048;
        *&v1527[30] = v27;
        _os_log_send_and_compose_impl(v1139, &v1501, v1528, 80, &dword_1E1C61000, v1137, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1527, 38, v1434, v1435);
        _os_crash_msg();
        __break(1u);
LABEL_1444:
        v1501 = 0;
        v1529 = 0u;
        v1530 = 0u;
        memset(v1528, 0, sizeof(v1528));
        v1140 = MEMORY[0x1E69E9C10];
        v1141 = v314;
        v1142 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1527 = 136315906;
        *&v1527[4] = "operator[]";
        if (v1142)
        {
          v1143 = 3;
        }

        else
        {
          v1143 = 2;
        }

        *&v1527[12] = 1024;
        *&v1527[14] = 621;
        *&v1527[18] = 2048;
        *&v1527[20] = v27;
        *&v1527[28] = 2048;
        *&v1527[30] = v1141;
        _os_log_send_and_compose_impl(v1143, &v1501, v1528, 80, &dword_1E1C61000, v1140, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1527, 38, v1434, v1435);
        _os_crash_msg();
        __break(1u);
LABEL_1448:
        v1501 = 0;
        v1529 = 0u;
        v1530 = 0u;
        memset(v1528, 0, sizeof(v1528));
        v1144 = MEMORY[0x1E69E9C10];
        v14 = v314;
        v1145 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1527 = 136315906;
        *&v1527[4] = "operator[]";
        if (v1145)
        {
          v1146 = 3;
        }

        else
        {
          v1146 = 2;
        }

        *&v1527[12] = 1024;
        *&v1527[14] = 621;
        *&v1527[18] = 2048;
        *&v1527[20] = v23;
        *&v1527[28] = 2048;
        *&v1527[30] = v14;
        _os_log_send_and_compose_impl(v1146, &v1501, v1528, 80, &dword_1E1C61000, v1144, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1527, 38, v1434, v1435);
        _os_crash_msg();
        __break(1u);
LABEL_1452:
        v1502[0] = 0;
        *(v21 + 272) = 0u;
        *(v21 + 288) = 0u;
        *(v21 + 240) = 0u;
        *(v21 + 256) = 0u;
        *(v21 + 224) = 0u;
        v1147 = MEMORY[0x1E69E9C10];
        v1148 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v1508[0]) = 136315906;
        *(v21 + 116) = "operator[]";
        WORD2(v1508[1]) = 1024;
        if (v1148)
        {
          v1149 = 3;
        }

        else
        {
          v1149 = 2;
        }

        *(v21 + 126) = 789;
        WORD1(v1508[2]) = 2048;
        *(v21 + 132) = 0;
        WORD2(v1508[3]) = 2048;
        *(v21 + 142) = 0;
        _os_log_send_and_compose_impl(v1149, v1502, &v1514, 80, &dword_1E1C61000, v1147, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1508, 38, v1434, v1435);
        _os_crash_msg();
        __break(1u);
        goto LABEL_1456;
      }

      v396 = *(v312 + 4 * v378);
      *(v312 + 4 * v386) = v396;
      if (v314 <= v388)
      {
        goto LABEL_1444;
      }

      *(v312 + 4 * v388) = v396;
      if (v314 <= v389)
      {
        goto LABEL_1448;
      }

      *(v312 + 4 * v389) = *(v312 + 4 * v378);
    }

    --v69;
    ++v377;
  }

  while (v69 != -3);
  v334 = a1;
  *&v1528[0] = re::GeomMesh::modifyVertexPositions(a1);
  DWORD2(v1528[0]) = v397;
  v333 = v1472;
  v398.f32[0] = v9;
LABEL_492:
  v1502[0] = v1500;
  v1502[1] = v1498;
  *&v1528[0] = v1496;
  *(&v1528[0] + 1) = v1494;
  *v1527 = v1461;
  v14 = v1474;
  v69 = v1473;
  v17 = v1444;
  if (v1443 < 2)
  {
    goto LABEL_561;
  }

  v21 = re::GeomMesh::modifyVertexPositions(a1);
  v27 = v400;
  v23 = re::modifyVertexTangents(a1, v400);
  v22 = v401;
  v20 = re::modifyVertexNormals(a1, v401);
  v403 = v1467;
  if (!v1467)
  {
    goto LABEL_526;
  }

  v404 = v402;
  v403 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v1467);
  if (!v1490)
  {
    goto LABEL_1742;
  }

  v406 = v405;
  v69 = *v1492;
  if (v69 >= v405)
  {
    goto LABEL_1746;
  }

  v407 = v27;
  if (v69 >= v27)
  {
    goto LABEL_1750;
  }

  v14 = v1492[v1490 - 1];
  if (v14 >= v27)
  {
    goto LABEL_1754;
  }

  if (!v1486)
  {
    goto LABEL_1758;
  }

  v27 = *v1488;
  if (v27 >= v407)
  {
    goto LABEL_1762;
  }

  v17 = v1488[v1486 - 1];
  if (v17 >= v407)
  {
    goto LABEL_1766;
  }

  v402 = v404;
  v408 = *(v403 + 4 * v69);
  v409 = *(v21 + 16 * v69);
  v409.i32[3] = 0;
  v410 = vmaxnmq_f32(v409, xmmword_1E306D4B0);
  v413 = vminnmq_f32(v409, xmmword_1E306D4A0);
  v411 = *(v21 + 16 * v14);
  v413.i32[3] = 0;
  v411.i32[3] = 0;
  v410.i32[3] = 0;
  v412 = vminnmq_f32(v413, v411).u64[0];
  v413.i64[0] = vmaxnmq_f32(v410, v411).u64[0];
  v414 = *(v21 + 16 * v27);
  v414.i32[3] = 0;
  v415 = vmaxnmq_f32(v414, xmmword_1E306D4B0);
  v416 = vminnmq_f32(v414, xmmword_1E306D4A0);
  v417 = *(v21 + 16 * v17);
  v416.i32[3] = 0;
  v417.i32[3] = 0;
  v418 = vminnmq_f32(v416, v417).u64[0];
  v415.i32[3] = 0;
  v419 = vmaxnmq_f32(v415, v417).u64[0];
  v14 = v1474;
LABEL_527:
  if (v1473 >= 2)
  {
    v438 = 1.0 / v14;
    v439 = v14 - 1;
    v440 = v14 + 2;
    v441 = 1;
    while (1)
    {
      v442 = (v3 * v441);
      v27 = v1490;
      if (v1490 <= v442)
      {
        goto LABEL_1552;
      }

      v443 = v1492[v442];
      if (v443 >= v407)
      {
        goto LABEL_1556;
      }

      v14 = (v442 + v14);
      if (v1490 <= v14)
      {
        goto LABEL_1560;
      }

      v444 = v1492[v14];
      if (v444 >= v407)
      {
        goto LABEL_1564;
      }

      if (v443 >= v22)
      {
        goto LABEL_1568;
      }

      if (v443 >= v402)
      {
        goto LABEL_1572;
      }

      v17 = v1486;
      if (v1486 <= v442)
      {
        goto LABEL_1576;
      }

      v27 = v1488[v442];
      if (v27 >= v407)
      {
        goto LABEL_1580;
      }

      if (v1486 <= v14)
      {
        goto LABEL_1584;
      }

      v17 = v1488[v14];
      if (v17 >= v407)
      {
        goto LABEL_1588;
      }

      if (v27 >= v22)
      {
        goto LABEL_1592;
      }

      if (v27 >= v402)
      {
        goto LABEL_1596;
      }

      if (v1474 >= 2)
      {
        break;
      }

LABEL_560:
      ++v441;
      v440 += v3;
      LODWORD(v14) = v1474;
      if (v441 == v1473)
      {
        goto LABEL_561;
      }
    }

    v445 = 1;
    v446 = v440;
    v447 = v439;
    while (1)
    {
      v69 = v446;
      v448 = v1490;
      if (v1490 <= v446)
      {
        goto LABEL_1204;
      }

      v448 = v1486;
      if (v1486 <= v446)
      {
        break;
      }

      v448 = v1492[v446];
      if (v448 >= v407)
      {
        goto LABEL_1212;
      }

      v449 = v1488[v446];
      v450 = v438 * v445;
      v451 = (v21 + 16 * v448);
      *v451->f32 = vaddq_f32(vmulq_n_f32(*(v21 + 16 * v443), 1.0 - v450), vmulq_n_f32(*(v21 + 16 * v444), v450));
      if (v449 >= v407)
      {
        goto LABEL_1216;
      }

      v452 = (v21 + 16 * v449);
      *v452->f32 = vaddq_f32(vmulq_n_f32(*(v21 + 16 * v27), 1.0 - v450), vmulq_n_f32(*(v21 + 16 * v17), v450));
      if (v448 >= v22)
      {
        goto LABEL_1220;
      }

      *(v23 + 16 * v448) = *(v23 + 16 * v443);
      if (v449 >= v22)
      {
        goto LABEL_1224;
      }

      *(v23 + 16 * v449) = *(v23 + 16 * v27);
      if (v448 >= v402)
      {
        goto LABEL_1228;
      }

      *(v20 + 16 * v448) = *(v20 + 16 * v443);
      if (v449 >= v402)
      {
        goto LABEL_1232;
      }

      *(v20 + 16 * v449) = *(v20 + 16 * v27);
      if (v1467)
      {
        if (v406 <= v448)
        {
          goto LABEL_1252;
        }

        v453 = vsub_f32(*v451, v412);
        v454 = vsub_f32(*v413.f32, *v451);
        v455 = vbsl_s8(vcgt_f32(v453, v454), v454, v453);
        if (*v455.i32 > *&v455.i32[1])
        {
          v455.i32[0] = v455.i32[1];
        }

        *(v403 + 4 * v448) = v408 + *v455.i32;
        if (v406 <= v449)
        {
          goto LABEL_1256;
        }

        v456 = vsub_f32(*v452, v418);
        v457 = vsub_f32(v419, *v452);
        v458 = vbsl_s8(vcgt_f32(v456, v457), v457, v456);
        if (*v458.i32 > *&v458.i32[1])
        {
          v458.i32[0] = v458.i32[1];
        }

        *(v403 + 4 * v449) = v408 + *v458.i32;
      }

      v446 = v69 + 1;
      ++v445;
      if (!--v447)
      {
        goto LABEL_560;
      }
    }

LABEL_1208:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v966 = MEMORY[0x1E69E9C10];
    v967 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v967)
    {
      v968 = 3;
    }

    else
    {
      v968 = 2;
    }

    *(v1528 + 14) = 797;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v69;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v448;
    _os_log_send_and_compose_impl(v968, v1527, v1502, 80, &dword_1E1C61000, v966, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1212:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v449 = MEMORY[0x1E69E9C10];
    v969 = v407;
    v970 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v970)
    {
      v971 = 3;
    }

    else
    {
      v971 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v448;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v969;
    _os_log_send_and_compose_impl(v971, v1527, v1502, 80, &dword_1E1C61000, v449, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1216:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v972 = MEMORY[0x1E69E9C10];
    v448 = v407;
    v973 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v973)
    {
      v974 = 3;
    }

    else
    {
      v974 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v449;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v448;
    _os_log_send_and_compose_impl(v974, v1527, v1502, 80, &dword_1E1C61000, v972, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1220:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v975 = MEMORY[0x1E69E9C10];
    v976 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v976)
    {
      v977 = 3;
    }

    else
    {
      v977 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v448;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v22;
    _os_log_send_and_compose_impl(v977, v1527, v1502, 80, &dword_1E1C61000, v975, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1224:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v978 = MEMORY[0x1E69E9C10];
    v979 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v979)
    {
      v980 = 3;
    }

    else
    {
      v980 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v449;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v22;
    _os_log_send_and_compose_impl(v980, v1527, v1502, 80, &dword_1E1C61000, v978, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1228:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v449 = MEMORY[0x1E69E9C10];
    v981 = v402;
    v982 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v982)
    {
      v983 = 3;
    }

    else
    {
      v983 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v448;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v981;
    _os_log_send_and_compose_impl(v983, v1527, v1502, 80, &dword_1E1C61000, v449, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1232:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v342 = MEMORY[0x1E69E9C10];
    v984 = v402;
    v985 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v985)
    {
      v986 = 3;
    }

    else
    {
      v986 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v449;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v984;
    _os_log_send_and_compose_impl(v986, v1527, v1502, 80, &dword_1E1C61000, v342, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1236:
    v1501 = 0;
    v1529 = 0u;
    v1530 = 0u;
    memset(v1528, 0, sizeof(v1528));
    v987 = MEMORY[0x1E69E9C10];
    v988 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v1527 = 136315906;
    *&v1527[4] = "operator[]";
    *&v1527[12] = 1024;
    *&v1527[14] = 621;
    *&v1527[18] = 2048;
    *&v1527[20] = (v3 * v1436 + 4 * v1465 + 12) + v342;
    if (v988)
    {
      v989 = 3;
    }

    else
    {
      v989 = 2;
    }

    *&v1527[28] = 2048;
    *&v1527[30] = v1471;
    _os_log_send_and_compose_impl(v989, &v1501, v1528, 80, &dword_1E1C61000, v987, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1527, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1240:
    v1501 = 0;
    v342 = v1527;
    v1529 = 0u;
    v1530 = 0u;
    memset(v1528, 0, sizeof(v1528));
    v990 = MEMORY[0x1E69E9C10];
    v991 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v1527 = 136315906;
    *&v1527[4] = "operator[]";
    *&v1527[12] = 1024;
    if (v991)
    {
      v992 = 3;
    }

    else
    {
      v992 = 2;
    }

    *&v1527[14] = 621;
    *&v1527[18] = 2048;
    *&v1527[20] = v27;
    *&v1527[28] = 2048;
    *&v1527[30] = v1471;
    _os_log_send_and_compose_impl(v992, &v1501, v1528, 80, &dword_1E1C61000, v990, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1527, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1244:
    v1501 = 0;
    v1529 = 0u;
    v1530 = 0u;
    memset(v1528, 0, sizeof(v1528));
    v363 = MEMORY[0x1E69E9C10];
    v993 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v1527 = 136315906;
    *&v1527[4] = "operator[]";
    *&v1527[12] = 1024;
    *&v1527[14] = 621;
    *&v1527[18] = 2048;
    *&v1527[20] = (v3 * v1436 + 6 * v1465 + 18) + v342;
    if (v993)
    {
      v994 = 3;
    }

    else
    {
      v994 = 2;
    }

    *&v1527[28] = 2048;
    *&v1527[30] = v1471;
    _os_log_send_and_compose_impl(v994, &v1501, v1528, 80, &dword_1E1C61000, v363, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1527, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1248:
    v1501 = 0;
    v448 = v1527;
    v1529 = 0u;
    v1530 = 0u;
    memset(v1528, 0, sizeof(v1528));
    v995 = MEMORY[0x1E69E9C10];
    v996 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v1527 = 136315906;
    *&v1527[4] = "operator[]";
    *&v1527[12] = 1024;
    if (v996)
    {
      v997 = 3;
    }

    else
    {
      v997 = 2;
    }

    *&v1527[14] = 621;
    *&v1527[18] = 2048;
    *&v1527[20] = v363;
    *&v1527[28] = 2048;
    *&v1527[30] = v1471;
    _os_log_send_and_compose_impl(v997, &v1501, v1528, 80, &dword_1E1C61000, v995, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1527, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1252:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v449 = MEMORY[0x1E69E9C10];
    v998 = v406;
    v999 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    if (v999)
    {
      v1000 = 3;
    }

    else
    {
      v1000 = 2;
    }

    WORD6(v1528[0]) = 1024;
    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v448;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v998;
    _os_log_send_and_compose_impl(v1000, v1527, v1502, 80, &dword_1E1C61000, v449, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1256:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v69 = MEMORY[0x1E69E9C10];
    v14 = v406;
    v1001 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    if (v1001)
    {
      v1002 = 3;
    }

    else
    {
      v1002 = 2;
    }

    WORD6(v1528[0]) = 1024;
    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v449;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v14;
    _os_log_send_and_compose_impl(v1002, v1527, v1502, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
    goto LABEL_1260;
  }

LABEL_561:
  v14 = re::GeomMesh::modifyVertexPositions(a1);
  v27 = v459;
  v17 = re::modifyVertexTangents(a1, v459);
  v21 = v460;
  v461 = re::modifyVertexNormals(a1, v460);
  v23 = v463;
  LODWORD(v69) = 0;
  v464 = v1482;
  v465 = *(a2 + 24);
  if (*(a2 + 20) == 0.0)
  {
    v3 = v1457;
    v466 = v1467;
    if (v465 == 0.0)
    {
      LODWORD(v69) = *(a2 + 28) == 0.0;
    }
  }

  else
  {
    v3 = v1457;
    v466 = v1467;
  }

  v20 = v461;
  if (v466)
  {
    v466 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v466);
    v467 = v1482;
    v469 = v468;
  }

  else
  {
    v469 = 0xFFFFFFFFLL;
    v467 = v1482;
  }

  v470 = v27;
  v471 = v17;
  if (!v467)
  {
    goto LABEL_1660;
  }

  v27 = *v1484;
  v22 = v1467;
  if (v27 >= v470)
  {
    goto LABEL_1664;
  }

  if (!v1478)
  {
    goto LABEL_1668;
  }

  v17 = *v1480;
  if (v17 >= v470)
  {
    goto LABEL_1672;
  }

  v472 = v20;
  v473 = 1.0 / v1466;
  v474 = *(v14 + 16 * v27 + 8);
  v475 = *(v14 + 16 * v17 + 8);
  v476 = v464;
  if ((v69 & 1) == 0)
  {
    if (!v464)
    {
      goto LABEL_619;
    }

    v500 = v21;
    v501 = 0;
    v17 = v470;
    v363 = v21;
    v23 = v23;
    v502 = v1450 + 8 * v1465 + v1451 + 24;
    while (1)
    {
      v27 = v1482;
      if (v1482 <= v501)
      {
        goto LABEL_1488;
      }

      v20 = *(v1484 + v501);
      if (v20 >= v470)
      {
        goto LABEL_1492;
      }

      v27 = v1478;
      if (v1478 <= v501)
      {
        goto LABEL_1496;
      }

      v21 = v1480[v501];
      if (v21 >= v470)
      {
        goto LABEL_1500;
      }

      if (v20 >= v500)
      {
        goto LABEL_1504;
      }

      if (v465 == 0.0)
      {
        if (v20 >= v23)
        {
          goto LABEL_1600;
        }

        v503 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*(v472 + 16 * v20), *(v472 + 16 * v20)), *(v472 + 16 * v20), 0xCuLL), vnegq_f32(*(v471 + 16 * v20))), *(v472 + 16 * v20), vextq_s8(vuzp1q_s32(*(v471 + 16 * v20), *(v471 + 16 * v20)), *(v471 + 16 * v20), 0xCuLL));
        v504 = vmulq_f32(v503, v503);
        *&v505 = v504.f32[1] + (v504.f32[2] + v504.f32[0]);
        v506 = vrsqrte_f32(v505);
        v507 = vmul_f32(v506, vrsqrts_f32(v505, vmul_f32(v506, v506)));
        v508 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v503, v503), v503, 0xCuLL), vmul_f32(v507, vrsqrts_f32(v505, vmul_f32(v507, v507))).f32[0]);
        v509 = v508.i64[1];
        v510 = v508.i64[0];
      }

      else
      {
        if (v20 >= v23)
        {
          goto LABEL_1640;
        }

        v510 = *(v472 + 16 * v20);
        v509 = *(v472 + 16 * v20 + 8);
      }

      v27 = v502;
      if (v1470)
      {
        break;
      }

LABEL_618:
      ++v501;
      v502 = v27 + v1470;
      if (v501 == v476)
      {
        goto LABEL_619;
      }
    }

    v69 = 0;
    v511 = v466 + 4 * v502;
    v512 = v472 + 16 * v502;
    v513 = (v471 + 16 * v502);
    v514 = 8;
    v515 = v14 + 16 * v502;
    while (1)
    {
      v516 = v27 + v69;
      if (v27 + v69 >= v470)
      {
        goto LABEL_982;
      }

      *(v515 + 16 * v69) = vaddq_f32(vmulq_n_f32(*(v14 + 16 * v20), 1.0 - (v473 * v69)), vmulq_n_f32(*(v14 + 16 * v21), v473 * v69));
      if (v516 >= v363)
      {
        goto LABEL_986;
      }

      *v513 = *(v471 + 16 * v20);
      if (v516 >= v23)
      {
        goto LABEL_990;
      }

      v517 = (v512 + 16 * v69);
      *v517 = v510;
      v517[1] = v509;
      if (v1467)
      {
        if (v469 <= v516)
        {
          goto LABEL_1200;
        }

        v518 = *(v515 + v514);
        v519 = v474 - v518;
        v520 = v518 - v475;
        if (v519 <= v520)
        {
          v520 = v519;
        }

        *&v511[4 * v69] = v520;
      }

      ++v69;
      ++v513;
      v514 += 16;
      if (v1470 == v69)
      {
        goto LABEL_618;
      }
    }
  }

  if (v464)
  {
    v477 = v21;
    v478 = v23;
    v21 = 0;
    v479 = *(a2 + 56);
    v480 = *(a2 + 44);
    v481 = v479 - 1 + v480;
    v482 = *(a2 + 48) + v479 - 1;
    v483 = (v480 + v479);
    v484 = (v482 + v483);
    v20 = v470;
    v23 = v477;
    v485 = v478;
    v486 = v1450 + 8 * v1465 + v1451 + 24;
    v462.i64[0] = (v481 + v484);
    while (1)
    {
      v487 = v1482;
      if (v1482 <= v21)
      {
        break;
      }

      v17 = *(v1484 + v21);
      if (v17 >= v470)
      {
        goto LABEL_1476;
      }

      v487 = v1478;
      if (v1478 <= v21)
      {
        goto LABEL_1480;
      }

      v3 = v1480[v21];
      if (v3 >= v470)
      {
        goto LABEL_1484;
      }

      v488 = xmmword_1E30661F0;
      v489 = xmmword_1E3047680;
      if (v21 >= v483)
      {
        v488 = xmmword_1E30661D0;
        v489 = xmmword_1E30661F0;
        if (v21 >= v484)
        {
          v488.i64[0] = v21;
          v490 = vdupq_lane_s64(vcgtq_u64(v462, v488).i64[0], 0);
          v488 = vbslq_s8(v490, xmmword_1E3047670, xmmword_1E3047680);
          v489 = vbslq_s8(v490, xmmword_1E30661D0, xmmword_1E3047670);
        }
      }

      v27 = v486;
      if (v1470)
      {
        v69 = 0;
        v491 = v466 + 4 * v486;
        v492 = v472 + 16 * v486;
        v493 = v471 + 16 * v486;
        v494 = 8;
        v495 = v14 + 16 * v486;
        do
        {
          v496 = v27 + v69;
          if (v27 + v69 >= v470)
          {
            goto LABEL_970;
          }

          *(v495 + 16 * v69) = vaddq_f32(vmulq_n_f32(*(v14 + 16 * v17), 1.0 - (v473 * v69)), vmulq_n_f32(*(v14 + 16 * v3), v473 * v69));
          if (v496 >= v23)
          {
            goto LABEL_974;
          }

          *(v493 + 16 * v69) = v488;
          if (v496 >= v485)
          {
            goto LABEL_978;
          }

          *(v492 + 16 * v69) = v489;
          if (v1467)
          {
            if (v469 <= v496)
            {
              *v1527 = 0;
              v1503 = 0u;
              v1504 = 0u;
              memset(v1502, 0, sizeof(v1502));
              v956 = MEMORY[0x1E69E9C10];
              v957 = v469;
              v958 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v1528[0]) = 136315906;
              *(v1528 + 4) = "operator[]";
              WORD6(v1528[0]) = 1024;
              if (v958)
              {
                v959 = 3;
              }

              else
              {
                v959 = 2;
              }

              *(v1528 + 14) = 621;
              WORD1(v1528[1]) = 2048;
              *(&v1528[1] + 4) = v27 + v69;
              WORD6(v1528[1]) = 2048;
              *(&v1528[1] + 14) = v957;
              _os_log_send_and_compose_impl(v959, v1527, v1502, 80, &dword_1E1C61000, v956, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
              _os_crash_msg();
              __break(1u);
LABEL_1200:
              *v1527 = 0;
              v1503 = 0u;
              v1504 = 0u;
              memset(v1502, 0, sizeof(v1502));
              v960 = MEMORY[0x1E69E9C10];
              v448 = v469;
              v961 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v1528[0]) = 136315906;
              *(v1528 + 4) = "operator[]";
              WORD6(v1528[0]) = 1024;
              if (v961)
              {
                v962 = 3;
              }

              else
              {
                v962 = 2;
              }

              *(v1528 + 14) = 621;
              WORD1(v1528[1]) = 2048;
              *(&v1528[1] + 4) = v27 + v69;
              WORD6(v1528[1]) = 2048;
              *(&v1528[1] + 14) = v448;
              _os_log_send_and_compose_impl(v962, v1527, v1502, 80, &dword_1E1C61000, v960, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
              _os_crash_msg();
              __break(1u);
LABEL_1204:
              *v1527 = 0;
              v1503 = 0u;
              v1504 = 0u;
              memset(v1502, 0, sizeof(v1502));
              v963 = MEMORY[0x1E69E9C10];
              v964 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v1528[0]) = 136315906;
              *(v1528 + 4) = "operator[]";
              WORD6(v1528[0]) = 1024;
              if (v964)
              {
                v965 = 3;
              }

              else
              {
                v965 = 2;
              }

              *(v1528 + 14) = 797;
              WORD1(v1528[1]) = 2048;
              *(&v1528[1] + 4) = v69;
              WORD6(v1528[1]) = 2048;
              *(&v1528[1] + 14) = v448;
              _os_log_send_and_compose_impl(v965, v1527, v1502, 80, &dword_1E1C61000, v963, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
              _os_crash_msg();
              __break(1u);
              goto LABEL_1208;
            }

            v497 = *(v495 + v494);
            v498 = v474 - v497;
            v499 = v497 - v475;
            if (v498 <= v499)
            {
              v499 = v498;
            }

            *&v491[4 * v69] = v499;
          }

          ++v69;
          v494 += 16;
        }

        while (v1470 != v69);
      }

      ++v21;
      v486 = v27 + v1470;
      v3 = v1457;
      if (v21 == v476)
      {
        goto LABEL_619;
      }
    }

LABEL_1472:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1159 = MEMORY[0x1E69E9C10];
    v1160 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1160)
    {
      v1161 = 3;
    }

    else
    {
      v1161 = 2;
    }

    *(v1528 + 14) = 797;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v21;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v487;
    _os_log_send_and_compose_impl(v1161, v1527, v1502, 80, &dword_1E1C61000, v1159, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1476:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1162 = MEMORY[0x1E69E9C10];
    v1163 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1163)
    {
      v1164 = 3;
    }

    else
    {
      v1164 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v17;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v20;
    _os_log_send_and_compose_impl(v1164, v1527, v1502, 80, &dword_1E1C61000, v1162, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1480:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1165 = MEMORY[0x1E69E9C10];
    v1166 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1166)
    {
      v1167 = 3;
    }

    else
    {
      v1167 = 2;
    }

    *(v1528 + 14) = 797;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v21;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v487;
    _os_log_send_and_compose_impl(v1167, v1527, v1502, 80, &dword_1E1C61000, v1165, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1484:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1168 = MEMORY[0x1E69E9C10];
    v1169 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1169)
    {
      v1170 = 3;
    }

    else
    {
      v1170 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v3;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v20;
    _os_log_send_and_compose_impl(v1170, v1527, v1502, 80, &dword_1E1C61000, v1168, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1488:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1171 = MEMORY[0x1E69E9C10];
    v1172 = v501;
    v1173 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1173)
    {
      v1174 = 3;
    }

    else
    {
      v1174 = 2;
    }

    *(v1528 + 14) = 797;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v1172;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v27;
    _os_log_send_and_compose_impl(v1174, v1527, v1502, 80, &dword_1E1C61000, v1171, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1492:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1175 = MEMORY[0x1E69E9C10];
    v1176 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1176)
    {
      v1177 = 3;
    }

    else
    {
      v1177 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v20;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v17;
    _os_log_send_and_compose_impl(v1177, v1527, v1502, 80, &dword_1E1C61000, v1175, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1496:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1178 = MEMORY[0x1E69E9C10];
    v1179 = v501;
    v1180 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1180)
    {
      v1181 = 3;
    }

    else
    {
      v1181 = 2;
    }

    *(v1528 + 14) = 797;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v1179;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v27;
    _os_log_send_and_compose_impl(v1181, v1527, v1502, 80, &dword_1E1C61000, v1178, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1500:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v363 = MEMORY[0x1E69E9C10];
    v1182 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1182)
    {
      v1183 = 3;
    }

    else
    {
      v1183 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v21;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v17;
    _os_log_send_and_compose_impl(v1183, v1527, v1502, 80, &dword_1E1C61000, v363, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1504:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1184 = MEMORY[0x1E69E9C10];
    v1185 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1185)
    {
      v1186 = 3;
    }

    else
    {
      v1186 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v20;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v363;
    _os_log_send_and_compose_impl(v1186, v1527, v1502, 80, &dword_1E1C61000, v1184, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1508:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1187 = MEMORY[0x1E69E9C10];
    v1188 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    *(v1528 + 14) = 621;
    if (v1188)
    {
      v1189 = 3;
    }

    else
    {
      v1189 = 2;
    }

    LODWORD(v1528[0]) = 136315906;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = (v14 + v27);
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v363;
    _os_log_send_and_compose_impl(v1189, v1527, v1502, 80, &dword_1E1C61000, v1187, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1512:
    v1501 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1190 = MEMORY[0x1E69E9C10];
    v1191 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    *(v1528 + 14) = 621;
    if (v1191)
    {
      v1192 = 3;
    }

    else
    {
      v1192 = 2;
    }

    LODWORD(v1528[0]) = 136315906;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = (v21 + v14 - 1);
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v363;
    _os_log_send_and_compose_impl(v1192, &v1501, v1502, 80, &dword_1E1C61000, v1190, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1516:
    v1501 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1193 = MEMORY[0x1E69E9C10];
    v1194 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v1528 + 4) = "operator[]";
    if (v1194)
    {
      v1195 = 3;
    }

    else
    {
      v1195 = 2;
    }

    LODWORD(v1528[0]) = 136315906;
    WORD6(v1528[0]) = 1024;
    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = (v22 - v3 + v14 - 1);
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v363;
    _os_log_send_and_compose_impl(v1195, &v1501, v1502, 80, &dword_1E1C61000, v1193, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1520:
    v1501 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1196 = MEMORY[0x1E69E9C10];
    v1197 = v572;
    v1198 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    *(v1528 + 14) = 621;
    if (v1198)
    {
      v1199 = 3;
    }

    else
    {
      v1199 = 2;
    }

    LODWORD(v1528[0]) = 136315906;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = (v1197 + v14 - 1);
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v363;
    _os_log_send_and_compose_impl(v1199, &v1501, v1502, 80, &dword_1E1C61000, v1196, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1524:
    v1501 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1200 = MEMORY[0x1E69E9C10];
    v1201 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v1528 + 4) = "operator[]";
    if (v1201)
    {
      v1202 = 3;
    }

    else
    {
      v1202 = 2;
    }

    LODWORD(v1528[0]) = 136315906;
    WORD6(v1528[0]) = 1024;
    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = (v23 - v3 + v14 - 1);
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v363;
    _os_log_send_and_compose_impl(v1202, &v1501, v1502, 80, &dword_1E1C61000, v1200, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1528:
    v1501 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1203 = MEMORY[0x1E69E9C10];
    v1204 = v573;
    v1205 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    *(v1528 + 14) = 621;
    if (v1205)
    {
      v1206 = 3;
    }

    else
    {
      v1206 = 2;
    }

    LODWORD(v1528[0]) = 136315906;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = (v1204 + v14 - 1);
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v363;
    _os_log_send_and_compose_impl(v1206, &v1501, v1502, 80, &dword_1E1C61000, v1203, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1532:
    v1501 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1207 = MEMORY[0x1E69E9C10];
    v1208 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v1528 + 4) = "operator[]";
    if (v1208)
    {
      v1209 = 3;
    }

    else
    {
      v1209 = 2;
    }

    LODWORD(v1528[0]) = 136315906;
    WORD6(v1528[0]) = 1024;
    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = (v20 - v3 + v14 - 1);
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v363;
    _os_log_send_and_compose_impl(v1209, &v1501, v1502, 80, &dword_1E1C61000, v1207, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1536:
    v1501 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1210 = MEMORY[0x1E69E9C10];
    v27 = v1527;
    v1211 = v574;
    v1212 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    *(v1528 + 14) = 621;
    if (v1212)
    {
      v1213 = 3;
    }

    else
    {
      v1213 = 2;
    }

    LODWORD(v1528[0]) = 136315906;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = (v1211 + v14 - 1);
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v363;
    _os_log_send_and_compose_impl(v1213, &v1501, v1502, 80, &dword_1E1C61000, v1210, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1540:
    v1501 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1214 = MEMORY[0x1E69E9C10];
    v17 = v1527;
    v1215 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v1528 + 4) = "operator[]";
    if (v1215)
    {
      v1216 = 3;
    }

    else
    {
      v1216 = 2;
    }

    LODWORD(v1528[0]) = 136315906;
    WORD6(v1528[0]) = 1024;
    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = (v27 - v3 + v14 - 1);
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v363;
    _os_log_send_and_compose_impl(v1216, &v1501, v1502, 80, &dword_1E1C61000, v1214, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1544:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1217 = MEMORY[0x1E69E9C10];
    v1218 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    *(v1528 + 14) = 621;
    if (v1218)
    {
      v1219 = 3;
    }

    else
    {
      v1219 = 2;
    }

    LODWORD(v1528[0]) = 136315906;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = (v14 + v27);
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v363;
    _os_log_send_and_compose_impl(v1219, v1527, v1502, 80, &dword_1E1C61000, v1217, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1548:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v442 = MEMORY[0x1E69E9C10];
    v1220 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    *(v1528 + 14) = 621;
    if (v1220)
    {
      v1221 = 3;
    }

    else
    {
      v1221 = 2;
    }

    LODWORD(v1528[0]) = 136315906;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = (v14 + v27);
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v363;
    _os_log_send_and_compose_impl(v1221, v1527, v1502, 80, &dword_1E1C61000, v442, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1552:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1222 = MEMORY[0x1E69E9C10];
    v1223 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1223)
    {
      v1224 = 3;
    }

    else
    {
      v1224 = 2;
    }

    *(v1528 + 14) = 797;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v442;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v27;
    _os_log_send_and_compose_impl(v1224, v1527, v1502, 80, &dword_1E1C61000, v1222, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1556:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1225 = MEMORY[0x1E69E9C10];
    v1226 = v407;
    v14 = v443;
    v1227 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1227)
    {
      v1228 = 3;
    }

    else
    {
      v1228 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v14;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v1226;
    _os_log_send_and_compose_impl(v1228, v1527, v1502, 80, &dword_1E1C61000, v1225, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1560:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1229 = MEMORY[0x1E69E9C10];
    v1230 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1230)
    {
      v1231 = 3;
    }

    else
    {
      v1231 = 2;
    }

    *(v1528 + 14) = 797;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v14;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v27;
    _os_log_send_and_compose_impl(v1231, v1527, v1502, 80, &dword_1E1C61000, v1229, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1564:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1232 = MEMORY[0x1E69E9C10];
    v1233 = v407;
    v1234 = v444;
    v1235 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1235)
    {
      v1236 = 3;
    }

    else
    {
      v1236 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v1234;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v1233;
    _os_log_send_and_compose_impl(v1236, v1527, v1502, 80, &dword_1E1C61000, v1232, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1568:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1237 = MEMORY[0x1E69E9C10];
    v1238 = v443;
    v1239 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1239)
    {
      v1240 = 3;
    }

    else
    {
      v1240 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v1238;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v22;
    _os_log_send_and_compose_impl(v1240, v1527, v1502, 80, &dword_1E1C61000, v1237, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1572:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1241 = MEMORY[0x1E69E9C10];
    v442 = v402;
    v14 = v443;
    v1242 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1242)
    {
      v1243 = 3;
    }

    else
    {
      v1243 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v14;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v442;
    _os_log_send_and_compose_impl(v1243, v1527, v1502, 80, &dword_1E1C61000, v1241, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1576:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1244 = MEMORY[0x1E69E9C10];
    v1245 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1245)
    {
      v1246 = 3;
    }

    else
    {
      v1246 = 2;
    }

    *(v1528 + 14) = 797;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v442;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v17;
    _os_log_send_and_compose_impl(v1246, v1527, v1502, 80, &dword_1E1C61000, v1244, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1580:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1247 = MEMORY[0x1E69E9C10];
    v1248 = v407;
    v1249 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1249)
    {
      v1250 = 3;
    }

    else
    {
      v1250 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v27;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v1248;
    _os_log_send_and_compose_impl(v1250, v1527, v1502, 80, &dword_1E1C61000, v1247, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1584:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1251 = MEMORY[0x1E69E9C10];
    v1252 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1252)
    {
      v1253 = 3;
    }

    else
    {
      v1253 = 2;
    }

    *(v1528 + 14) = 797;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v14;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v17;
    _os_log_send_and_compose_impl(v1253, v1527, v1502, 80, &dword_1E1C61000, v1251, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1588:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1254 = MEMORY[0x1E69E9C10];
    v1255 = v407;
    v1256 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1256)
    {
      v1257 = 3;
    }

    else
    {
      v1257 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v17;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v1255;
    _os_log_send_and_compose_impl(v1257, v1527, v1502, 80, &dword_1E1C61000, v1254, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1592:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1258 = MEMORY[0x1E69E9C10];
    v1259 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1259)
    {
      v1260 = 3;
    }

    else
    {
      v1260 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v27;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v22;
    _os_log_send_and_compose_impl(v1260, v1527, v1502, 80, &dword_1E1C61000, v1258, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1596:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1261 = MEMORY[0x1E69E9C10];
    v1262 = v402;
    v1263 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1263)
    {
      v1264 = 3;
    }

    else
    {
      v1264 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v27;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v1262;
    _os_log_send_and_compose_impl(v1264, v1527, v1502, 80, &dword_1E1C61000, v1261, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1600:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v363 = MEMORY[0x1E69E9C10];
    v1265 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1265)
    {
      v1266 = 3;
    }

    else
    {
      v1266 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v20;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v23;
    _os_log_send_and_compose_impl(v1266, v1527, v1502, 80, &dword_1E1C61000, v363, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1604:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v69 = MEMORY[0x1E69E9C10];
    v1267 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    *(v1528 + 14) = 621;
    if (v1267)
    {
      v1268 = 3;
    }

    else
    {
      v1268 = 2;
    }

    LODWORD(v1528[0]) = 136315906;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = (v14 + v27);
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v363;
    _os_log_send_and_compose_impl(v1268, v1527, v1502, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
    goto LABEL_1608;
  }

LABEL_619:
  v521 = a2;
  if ((*a2 & 1) == 0 && *(a2 + 3) != 1)
  {
    goto LABEL_1175;
  }

  v10 = *(a2 + 24);
  v363 = re::modifyVertexUVs(a1, v470);
  v69 = v522;
  v523 = re::GeomMesh::accessVertexPositions(a1);
  if (v7 != 0.0)
  {
LABEL_678:
    v27 = v524;
    v607 = v1464;
    v22 = v1502;
    if (v7 <= v10)
    {
      goto LABEL_776;
    }

    v14 = v1465;
    if (v1465 >= v69)
    {
      goto LABEL_1774;
    }

    *(v363 + 8 * v1465) = 0;
    v608 = v1464;
    if (v1464)
    {
      v609 = 0.0;
      v610 = v1464;
      v611 = v1441;
      v17 = v1465;
      while (1)
      {
        if (v17 >= v524)
        {
          goto LABEL_1616;
        }

        v612 = v611;
        v14 = v611;
        if (v611 >= v524)
        {
          break;
        }

        if (v611 >= v69)
        {
          goto LABEL_1624;
        }

        v613 = vsubq_f32(*(v523 + 16 * v17), *(v523 + 16 * v611));
        v614 = vmulq_f32(v613, v613);
        v609 = v609 + sqrtf(v614.f32[2] + vaddv_f32(*v614.f32));
        *(v363 + 8 * v611) = LODWORD(v609);
        v611 = (v611 - v1475);
        v17 = v612;
        if (!--v610)
        {
          goto LABEL_686;
        }
      }

LABEL_1620:
      *v1527 = 0;
      *(v22 + 48) = 0u;
      *(v22 + 64) = 0u;
      *(v22 + 16) = 0u;
      *(v22 + 32) = 0u;
      *v22 = 0u;
      v1278 = MEMORY[0x1E69E9C10];
      v1279 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v1528[0]) = 136315906;
      *(v1528 + 4) = "operator[]";
      WORD6(v1528[0]) = 1024;
      if (v1279)
      {
        v1280 = 3;
      }

      else
      {
        v1280 = 2;
      }

      *(v1528 + 14) = 613;
      WORD1(v1528[1]) = 2048;
      *(&v1528[1] + 4) = v14;
      WORD6(v1528[1]) = 2048;
      *(&v1528[1] + 14) = v27;
      _os_log_send_and_compose_impl(v1280, v1527, v1502, 80, &dword_1E1C61000, v1278, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_1624:
      *v1527 = 0;
      *(v22 + 48) = 0u;
      *(v22 + 64) = 0u;
      *(v22 + 16) = 0u;
      *(v22 + 32) = 0u;
      *v22 = 0u;
      v1281 = MEMORY[0x1E69E9C10];
      v1282 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v1528[0]) = 136315906;
      *(v1528 + 4) = "operator[]";
      WORD6(v1528[0]) = 1024;
      if (v1282)
      {
        v1283 = 3;
      }

      else
      {
        v1283 = 2;
      }

      *(v1528 + 14) = 621;
      WORD1(v1528[1]) = 2048;
      *(&v1528[1] + 4) = v14;
      WORD6(v1528[1]) = 2048;
      *(&v1528[1] + 14) = v69;
      _os_log_send_and_compose_impl(v1283, v1527, v1502, 80, &dword_1E1C61000, v1281, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_1628:
      *v1527 = 0;
      *(v22 + 48) = 0u;
      *(v22 + 64) = 0u;
      *(v22 + 16) = 0u;
      *(v22 + 32) = 0u;
      *v22 = 0u;
      v1284 = MEMORY[0x1E69E9C10];
      v1285 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v1528[0]) = 136315906;
      *(v1528 + 4) = "operator[]";
      if (v1285)
      {
        v1286 = 3;
      }

      else
      {
        v1286 = 2;
      }

      WORD6(v1528[0]) = 1024;
      *(v1528 + 14) = 613;
      WORD1(v1528[1]) = 2048;
      *(&v1528[1] + 4) = v3;
      WORD6(v1528[1]) = 2048;
      *(&v1528[1] + 14) = v27;
      _os_log_send_and_compose_impl(v1286, v1527, v1502, 80, &dword_1E1C61000, v1284, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_1632:
      *v1527 = 0;
      *(v22 + 48) = 0u;
      *(v22 + 64) = 0u;
      *(v22 + 16) = 0u;
      *(v22 + 32) = 0u;
      *v22 = 0u;
      v1287 = MEMORY[0x1E69E9C10];
      v1288 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v1528[0]) = 136315906;
      *(v1528 + 4) = "operator[]";
      WORD6(v1528[0]) = 1024;
      if (v1288)
      {
        v1289 = 3;
      }

      else
      {
        v1289 = 2;
      }

      *(v1528 + 14) = 613;
      WORD1(v1528[1]) = 2048;
      *(&v1528[1] + 4) = v17;
      WORD6(v1528[1]) = 2048;
      *(&v1528[1] + 14) = v27;
      _os_log_send_and_compose_impl(v1289, v1527, v1502, 80, &dword_1E1C61000, v1287, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_1636:
      *v1527 = 0;
      *(v22 + 48) = 0u;
      *(v22 + 64) = 0u;
      *(v22 + 16) = 0u;
      *(v22 + 32) = 0u;
      *v22 = 0u;
      v1290 = MEMORY[0x1E69E9C10];
      v1291 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v1528[0]) = 136315906;
      *(v1528 + 4) = "operator[]";
      WORD6(v1528[0]) = 1024;
      if (v1291)
      {
        v1292 = 3;
      }

      else
      {
        v1292 = 2;
      }

      *(v1528 + 14) = 621;
      WORD1(v1528[1]) = 2048;
      *(&v1528[1] + 4) = v17;
      WORD6(v1528[1]) = 2048;
      *(&v1528[1] + 14) = v69;
      _os_log_send_and_compose_impl(v1292, v1527, v1502, 80, &dword_1E1C61000, v1290, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_1640:
      *v1527 = 0;
      v1503 = 0u;
      v1504 = 0u;
      memset(v1502, 0, sizeof(v1502));
      v1293 = MEMORY[0x1E69E9C10];
      v1294 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v1528[0]) = 136315906;
      *(v1528 + 4) = "operator[]";
      WORD6(v1528[0]) = 1024;
      if (v1294)
      {
        v1295 = 3;
      }

      else
      {
        v1295 = 2;
      }

      *(v1528 + 14) = 621;
      WORD1(v1528[1]) = 2048;
      *(&v1528[1] + 4) = v20;
      WORD6(v1528[1]) = 2048;
      *(&v1528[1] + 14) = v23;
      _os_log_send_and_compose_impl(v1295, v1527, v1502, 80, &dword_1E1C61000, v1293, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
      goto LABEL_1644;
    }

LABEL_686:
    v14 = v1441;
    if (v524 <= v1441)
    {
      goto LABEL_1778;
    }

    if (v1465 >= v524)
    {
LABEL_1782:
      *v1527 = 0;
      *(v22 + 48) = 0u;
      *(v22 + 64) = 0u;
      *(v22 + 16) = 0u;
      *(v22 + 32) = 0u;
      *v22 = 0u;
      v1395 = MEMORY[0x1E69E9C10];
      v1396 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v1528[0]) = 136315906;
      *(v1528 + 4) = "operator[]";
      WORD6(v1528[0]) = 1024;
      if (v1396)
      {
        v1397 = 3;
      }

      else
      {
        v1397 = 2;
      }

      *(v1528 + 14) = 613;
      WORD1(v1528[1]) = 2048;
      *(&v1528[1] + 4) = v1465;
      WORD6(v1528[1]) = 2048;
      *(&v1528[1] + 14) = v27;
      _os_log_send_and_compose_impl(v1397, v1527, v1502, 80, &dword_1E1C61000, v1395, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
      goto LABEL_1786;
    }

    if (v1468 < 2)
    {
LABEL_698:
      v525 = v1440;
      if (!v1464)
      {
        goto LABEL_626;
      }

      v14 = v1441;
      v27 = v1440;
      while (v14 < v69)
      {
        if (v27 >= v69)
        {
          goto LABEL_1656;
        }

        LODWORD(v633) = 0;
        HIDWORD(v633) = *(v363 + 8 * v14);
        *(v363 + 8 * v27) = v633;
        v27 = (v27 - v1475);
        v14 = (v14 - v1475);
        if (!--v608)
        {
          goto LABEL_626;
        }
      }

      goto LABEL_1652;
    }

    v615 = vsubq_f32(*(v523 + 16 * v1441), *(v523 + 16 * v1465));
    v616 = vmulq_f32(v615, v615);
    v617 = sqrtf(v616.f32[2] + vaddv_f32(*v616.f32));
    v618 = vextq_s8(vuzp1q_s32(v615, v615), v615, 0xCuLL);
    v619 = vnegq_f32(v615);
    v620 = 1;
    while (1)
    {
      v621 = v14;
      v14 += v620;
      if (v620 == v524 - v1441)
      {
        goto LABEL_1685;
      }

      if (v1464)
      {
        break;
      }

LABEL_697:
      ++v620;
      v14 = v621;
      if (v620 == v1468)
      {
        goto LABEL_698;
      }
    }

    v622 = vsubq_f32(*(v523 + 16 * v14), *(v523 + 16 * v1465));
    v623 = vmulq_f32(v622, v622);
    v624 = vmulq_f32(v615, v622);
    v624.f32[0] = v624.f32[2] + vaddv_f32(*v624.f32);
    v625 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v622, v622), v622, 0xCuLL), v619), v622, v618);
    v626 = vmulq_f32(v625, v625);
    v624.i32[1] = sqrtf(v626.f32[1] + (v626.f32[2] + v626.f32[0]));
    v627 = vmul_n_f32(*v624.f32, 1.0 / (v617 * sqrtf(v623.f32[2] + vaddv_f32(*v623.f32))));
    v628 = 0.0;
    v629 = v1464;
    v17 = v1465;
    while (v17 < v524)
    {
      v630 = v14;
      v14 = v14;
      if (v630 >= v524)
      {
        goto LABEL_1292;
      }

      if (v630 >= v69)
      {
        goto LABEL_1296;
      }

      v631 = vsubq_f32(*(v523 + 16 * v17), *(v523 + 16 * v14));
      v632 = vmulq_f32(v631, v631);
      v628 = v628 + sqrtf(v632.f32[2] + vaddv_f32(*v632.f32));
      *(v363 + 8 * v14) = vmul_n_f32(v627, v628);
      v14 = (v630 - v1475);
      v17 = v630;
      if (!--v629)
      {
        goto LABEL_697;
      }
    }

    goto LABEL_1288;
  }

  v525 = v1440;
  v22 = v1502;
  if (v1472)
  {
    v14 = v69;
    v526 = v69;
    v527 = v1472;
    v528 = v363;
    while (v526)
    {
      *v528++ = 0;
      --v526;
      if (!--v527)
      {
        goto LABEL_626;
      }
    }

    goto LABEL_1464;
  }

LABEL_626:
  if (v1441 >= v69)
  {
    goto LABEL_1721;
  }

  v14 = v1472;
  v27 = *v1448;
  if (v525 >= v69)
  {
    goto LABEL_1725;
  }

  if (v1448[0] >= v69)
  {
    goto LABEL_1729;
  }

  v529 = *(v363 + 8 * v1441);
  v530 = *(v363 + 8 * v525);
  __asm { FMOV            V2.2S, #3.0 }

  *(v363 + 8 * v1448[0]) = vdiv_f32(vadd_f32(vadd_f32(v529, v529), v530), _D2);
  if (v3 >= v69)
  {
    goto LABEL_1733;
  }

  *(v363 + 8 * v3) = vdiv_f32(vadd_f32(v529, vadd_f32(v530, v530)), _D2);
  v535 = *(a2 + 2);
  v536 = re::modifyVertexUVs(a1, v524);
  LODWORD(v363) = v537;
  v538 = 0;
  v539 = 0;
  v540.f32[0] = v9 * 0.5;
  v541.f32[0] = -(v9 * 0.5);
  v542 = xmmword_1E3049620;
  v543 = vdupq_n_s64(9uLL);
  v544 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v543, v542)).u8[0])
    {
      *&v1527[v539] = v538;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(9uLL), *&v542)).i32[1])
    {
      *&v1527[v539 + 4] = v1472 + v538;
    }

    v542 = vaddq_s64(v542, v544);
    v539 += 8;
    v538 += 2 * v1465 + 6;
  }

  while (v539 != 40);
  v545 = 0;
  v546.f32[0] = -(v9 * 0.5);
  v546.f32[1] = -(v8 * 0.5);
  v547.f32[0] = v9 * 0.5;
  v547.f32[1] = v8 * 0.5;
  v541.f32[1] = v8 * 0.5;
  v540.f32[1] = v546.f32[1];
  if (v1464 <= 1)
  {
    v548 = 1;
  }

  else
  {
    v548 = v1464;
  }

  v549 = *v1527;
  v550 = *&v1527[16];
  v551 = v1465 / v1464;
  while (2)
  {
    v552 = v545 + 1;
    if (v1464 <= v1465)
    {
      v553 = 0;
      v554 = v545 * v551;
      while (1)
      {
        v555 = vtrn2q_s32(vrev64q_s32(vdupq_n_s32(v553 + v554)), vdupq_n_s32(v552 * v551 + ~v553));
        v556 = vaddq_s32(v555, v549);
        v14 = v556.u32[0];
        if (v556.i32[0] >= v537)
        {
          break;
        }

        v557 = &v536[v556.u32[0]];
        v558.i32[0] = v557->i32[0];
        v559 = v557->f32[1];
        v560 = vadd_f32(v547, *v557);
        *v557 = v560;
        v14 = v556.u32[1];
        if (v556.i32[1] >= v537)
        {
          goto LABEL_998;
        }

        v561.f32[0] = -v558.f32[0];
        v561.f32[1] = v559;
        v562 = vadd_f32(v541, v561);
        v536[v556.u32[1]] = v562;
        v14 = v556.u32[2];
        if (v556.i32[2] >= v537)
        {
          goto LABEL_1002;
        }

        v563 = -v559;
        v564.f32[1] = -v559;
        v564.f32[0] = -v558.f32[0];
        v565 = vadd_f32(v546, v564);
        v536[v556.u32[2]] = v565;
        v14 = v556.u32[3];
        if (v556.i32[3] >= v537)
        {
          goto LABEL_1006;
        }

        v558.f32[1] = v563;
        v566 = vaddq_s32(v555, v550);
        v567 = vadd_f32(v540, v558);
        v536[v556.u32[3]] = v567;
        v14 = v566.u32[0];
        if (v566.i32[0] >= v537)
        {
          goto LABEL_1010;
        }

        v568 = &v536[v566.u32[0]];
        *v568 = v565;
        v14 = v566.u32[1];
        if (v566.i32[1] >= v537)
        {
          goto LABEL_1014;
        }

        v569 = &v536[v566.u32[1]];
        *v569 = v567;
        v14 = v566.u32[2];
        if (v566.i32[2] >= v537)
        {
          goto LABEL_1018;
        }

        v570 = &v536[v566.u32[2]];
        *v570 = v560;
        v14 = v566.u32[3];
        if (v566.i32[3] >= v537)
        {
          goto LABEL_1022;
        }

        v571 = &v536[v566.u32[3]];
        *v571 = v562;
        if (v535)
        {
          v568->f32[0] = -v568->f32[0];
          v569->f32[0] = -v569->f32[0];
          v570->f32[0] = -v570->f32[0];
          v571->f32[0] = -v571->f32[0];
        }

        if (++v553 >= v551)
        {
          goto LABEL_653;
        }
      }

LABEL_994:
      v1501 = 0;
      *(v22 + 48) = 0u;
      *(v22 + 64) = 0u;
      *(v22 + 16) = 0u;
      *(v22 + 32) = 0u;
      *v22 = 0u;
      v841 = MEMORY[0x1E69E9C10];
      v842 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v1528[0]) = 136315906;
      *(v1528 + 4) = "operator[]";
      WORD6(v1528[0]) = 1024;
      if (v842)
      {
        v843 = 3;
      }

      else
      {
        v843 = 2;
      }

      *(v1528 + 14) = 621;
      WORD1(v1528[1]) = 2048;
      *(&v1528[1] + 4) = v14;
      WORD6(v1528[1]) = 2048;
      *(&v1528[1] + 14) = v363;
      _os_log_send_and_compose_impl(v843, &v1501, v1502, 80, &dword_1E1C61000, v841, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_998:
      v1501 = 0;
      *(v22 + 48) = 0u;
      *(v22 + 64) = 0u;
      *(v22 + 16) = 0u;
      *(v22 + 32) = 0u;
      *v22 = 0u;
      v844 = MEMORY[0x1E69E9C10];
      v845 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v1528[0]) = 136315906;
      *(v1528 + 4) = "operator[]";
      WORD6(v1528[0]) = 1024;
      if (v845)
      {
        v846 = 3;
      }

      else
      {
        v846 = 2;
      }

      *(v1528 + 14) = 621;
      WORD1(v1528[1]) = 2048;
      *(&v1528[1] + 4) = v14;
      WORD6(v1528[1]) = 2048;
      *(&v1528[1] + 14) = v363;
      _os_log_send_and_compose_impl(v846, &v1501, v1502, 80, &dword_1E1C61000, v844, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_1002:
      v1501 = 0;
      *(v22 + 48) = 0u;
      *(v22 + 64) = 0u;
      *(v22 + 16) = 0u;
      *(v22 + 32) = 0u;
      *v22 = 0u;
      v847 = MEMORY[0x1E69E9C10];
      v848 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v1528[0]) = 136315906;
      *(v1528 + 4) = "operator[]";
      WORD6(v1528[0]) = 1024;
      if (v848)
      {
        v849 = 3;
      }

      else
      {
        v849 = 2;
      }

      *(v1528 + 14) = 621;
      WORD1(v1528[1]) = 2048;
      *(&v1528[1] + 4) = v14;
      WORD6(v1528[1]) = 2048;
      *(&v1528[1] + 14) = v363;
      _os_log_send_and_compose_impl(v849, &v1501, v1502, 80, &dword_1E1C61000, v847, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_1006:
      v1501 = 0;
      *(v22 + 48) = 0u;
      *(v22 + 64) = 0u;
      *(v22 + 16) = 0u;
      *(v22 + 32) = 0u;
      *v22 = 0u;
      v850 = MEMORY[0x1E69E9C10];
      v851 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v1528[0]) = 136315906;
      *(v1528 + 4) = "operator[]";
      WORD6(v1528[0]) = 1024;
      if (v851)
      {
        v852 = 3;
      }

      else
      {
        v852 = 2;
      }

      *(v1528 + 14) = 621;
      WORD1(v1528[1]) = 2048;
      *(&v1528[1] + 4) = v14;
      WORD6(v1528[1]) = 2048;
      *(&v1528[1] + 14) = v363;
      _os_log_send_and_compose_impl(v852, &v1501, v1502, 80, &dword_1E1C61000, v850, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_1010:
      v1501 = 0;
      *(v22 + 48) = 0u;
      *(v22 + 64) = 0u;
      *(v22 + 16) = 0u;
      *(v22 + 32) = 0u;
      *v22 = 0u;
      v853 = MEMORY[0x1E69E9C10];
      v854 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v1528[0]) = 136315906;
      *(v1528 + 4) = "operator[]";
      WORD6(v1528[0]) = 1024;
      if (v854)
      {
        v855 = 3;
      }

      else
      {
        v855 = 2;
      }

      *(v1528 + 14) = 621;
      WORD1(v1528[1]) = 2048;
      *(&v1528[1] + 4) = v14;
      WORD6(v1528[1]) = 2048;
      *(&v1528[1] + 14) = v363;
      _os_log_send_and_compose_impl(v855, &v1501, v1502, 80, &dword_1E1C61000, v853, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_1014:
      v1501 = 0;
      *(v22 + 48) = 0u;
      *(v22 + 64) = 0u;
      *(v22 + 16) = 0u;
      *(v22 + 32) = 0u;
      *v22 = 0u;
      v856 = MEMORY[0x1E69E9C10];
      v857 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v1528[0]) = 136315906;
      *(v1528 + 4) = "operator[]";
      WORD6(v1528[0]) = 1024;
      if (v857)
      {
        v858 = 3;
      }

      else
      {
        v858 = 2;
      }

      *(v1528 + 14) = 621;
      WORD1(v1528[1]) = 2048;
      *(&v1528[1] + 4) = v14;
      WORD6(v1528[1]) = 2048;
      *(&v1528[1] + 14) = v363;
      _os_log_send_and_compose_impl(v858, &v1501, v1502, 80, &dword_1E1C61000, v856, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_1018:
      v1501 = 0;
      *(v22 + 48) = 0u;
      *(v22 + 64) = 0u;
      *(v22 + 16) = 0u;
      *(v22 + 32) = 0u;
      *v22 = 0u;
      v859 = MEMORY[0x1E69E9C10];
      v860 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v1528[0]) = 136315906;
      *(v1528 + 4) = "operator[]";
      WORD6(v1528[0]) = 1024;
      if (v860)
      {
        v861 = 3;
      }

      else
      {
        v861 = 2;
      }

      *(v1528 + 14) = 621;
      WORD1(v1528[1]) = 2048;
      *(&v1528[1] + 4) = v14;
      WORD6(v1528[1]) = 2048;
      *(&v1528[1] + 14) = v363;
      _os_log_send_and_compose_impl(v861, &v1501, v1502, 80, &dword_1E1C61000, v859, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_1022:
      v1501 = 0;
      *(v22 + 48) = 0u;
      *(v22 + 64) = 0u;
      *(v22 + 16) = 0u;
      *(v22 + 32) = 0u;
      *v22 = 0u;
      v342 = MEMORY[0x1E69E9C10];
      v27 = v1527;
      v862 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v1528[0]) = 136315906;
      *(v1528 + 4) = "operator[]";
      WORD6(v1528[0]) = 1024;
      if (v862)
      {
        v863 = 3;
      }

      else
      {
        v863 = 2;
      }

      *(v1528 + 14) = 621;
      WORD1(v1528[1]) = 2048;
      *(&v1528[1] + 4) = v14;
      WORD6(v1528[1]) = 2048;
      *(&v1528[1] + 14) = v363;
      _os_log_send_and_compose_impl(v863, &v1501, v1502, 80, &dword_1E1C61000, v342, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_1026:
      v1501 = 0;
      v1529 = 0u;
      v1530 = 0u;
      memset(v1528, 0, sizeof(v1528));
      v864 = MEMORY[0x1E69E9C10];
      v865 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v1527 = 136315906;
      *&v1527[4] = "operator[]";
      *&v1527[12] = 1024;
      *&v1527[14] = 621;
      *&v1527[18] = 2048;
      *&v1527[20] = (v3 * v1436 + 4 * v1465 + v342 + 12);
      if (v865)
      {
        v866 = 3;
      }

      else
      {
        v866 = 2;
      }

      *&v1527[28] = 2048;
      *&v1527[30] = v1439;
      _os_log_send_and_compose_impl(v866, &v1501, v1528, 80, &dword_1E1C61000, v864, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1527, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_1030:
      v1501 = 0;
      v342 = v1527;
      v1529 = 0u;
      v1530 = 0u;
      memset(v1528, 0, sizeof(v1528));
      v867 = MEMORY[0x1E69E9C10];
      v868 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v1527 = 136315906;
      *&v1527[4] = "operator[]";
      *&v1527[12] = 1024;
      if (v868)
      {
        v869 = 3;
      }

      else
      {
        v869 = 2;
      }

      *&v1527[14] = 621;
      *&v1527[18] = 2048;
      *&v1527[20] = v27;
      *&v1527[28] = 2048;
      *&v1527[30] = v1439;
      _os_log_send_and_compose_impl(v869, &v1501, v1528, 80, &dword_1E1C61000, v867, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1527, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_1034:
      v1501 = 0;
      v1529 = 0u;
      v1530 = 0u;
      memset(v1528, 0, sizeof(v1528));
      v363 = MEMORY[0x1E69E9C10];
      v870 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v1527 = 136315906;
      *&v1527[4] = "operator[]";
      *&v1527[12] = 1024;
      *&v1527[14] = 621;
      *&v1527[18] = 2048;
      *&v1527[20] = (v3 * v1436 + 6 * v1465 + v342 + 18);
      if (v870)
      {
        v871 = 3;
      }

      else
      {
        v871 = 2;
      }

      *&v1527[28] = 2048;
      *&v1527[30] = v1439;
      _os_log_send_and_compose_impl(v871, &v1501, v1528, 80, &dword_1E1C61000, v363, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1527, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_1038:
      v1501 = 0;
      v1529 = 0u;
      v1530 = 0u;
      memset(v1528, 0, sizeof(v1528));
      v342 = MEMORY[0x1E69E9C10];
      v872 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v1527 = 136315906;
      *&v1527[4] = "operator[]";
      *&v1527[12] = 1024;
      if (v872)
      {
        v873 = 3;
      }

      else
      {
        v873 = 2;
      }

      *&v1527[14] = 621;
      *&v1527[18] = 2048;
      *&v1527[20] = v363;
      *&v1527[28] = 2048;
      *&v1527[30] = v1439;
      _os_log_send_and_compose_impl(v873, &v1501, v1528, 80, &dword_1E1C61000, v342, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1527, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_1042:
      v1501 = 0;
      v1529 = 0u;
      v1530 = 0u;
      memset(v1528, 0, sizeof(v1528));
      v874 = MEMORY[0x1E69E9C10];
      v875 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v1527 = 136315906;
      *&v1527[4] = "operator[]";
      *&v1527[12] = 1024;
      *&v1527[14] = 621;
      *&v1527[18] = 2048;
      *&v1527[20] = (v3 * v1436 + 4 * v1465 + 12) + v342;
      if (v875)
      {
        v876 = 3;
      }

      else
      {
        v876 = 2;
      }

      *&v1527[28] = 2048;
      *&v1527[30] = v1438;
      _os_log_send_and_compose_impl(v876, &v1501, v1528, 80, &dword_1E1C61000, v874, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1527, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_1046:
      v1501 = 0;
      v342 = v1527;
      v1529 = 0u;
      v1530 = 0u;
      memset(v1528, 0, sizeof(v1528));
      v877 = MEMORY[0x1E69E9C10];
      v878 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v1527 = 136315906;
      *&v1527[4] = "operator[]";
      *&v1527[12] = 1024;
      if (v878)
      {
        v879 = 3;
      }

      else
      {
        v879 = 2;
      }

      *&v1527[14] = 621;
      *&v1527[18] = 2048;
      *&v1527[20] = v27;
      *&v1527[28] = 2048;
      *&v1527[30] = v1438;
      _os_log_send_and_compose_impl(v879, &v1501, v1528, 80, &dword_1E1C61000, v877, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1527, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_1050:
      v1501 = 0;
      v1529 = 0u;
      v1530 = 0u;
      memset(v1528, 0, sizeof(v1528));
      v363 = MEMORY[0x1E69E9C10];
      v880 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v1527 = 136315906;
      *&v1527[4] = "operator[]";
      *&v1527[12] = 1024;
      *&v1527[14] = 621;
      *&v1527[18] = 2048;
      *&v1527[20] = (v3 * v1436 + 6 * v1465 + 18) + v342;
      if (v880)
      {
        v881 = 3;
      }

      else
      {
        v881 = 2;
      }

      *&v1527[28] = 2048;
      *&v1527[30] = v1438;
      _os_log_send_and_compose_impl(v881, &v1501, v1528, 80, &dword_1E1C61000, v363, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1527, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_1054:
      v1501 = 0;
      v1529 = 0u;
      v1530 = 0u;
      memset(v1528, 0, sizeof(v1528));
      v342 = MEMORY[0x1E69E9C10];
      v882 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v1527 = 136315906;
      *&v1527[4] = "operator[]";
      *&v1527[12] = 1024;
      if (v882)
      {
        v883 = 3;
      }

      else
      {
        v883 = 2;
      }

      *&v1527[14] = 621;
      *&v1527[18] = 2048;
      *&v1527[20] = v363;
      *&v1527[28] = 2048;
      *&v1527[30] = v1438;
      _os_log_send_and_compose_impl(v883, &v1501, v1528, 80, &dword_1E1C61000, v342, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1527, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_1058:
      v1501 = 0;
      v1529 = 0u;
      v1530 = 0u;
      memset(v1528, 0, sizeof(v1528));
      v884 = MEMORY[0x1E69E9C10];
      v885 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v1527 = 136315906;
      *&v1527[4] = "operator[]";
      *&v1527[12] = 1024;
      *&v1527[14] = 621;
      *&v1527[18] = 2048;
      *&v1527[20] = (v3 * v1436 + 4 * v1465 + 12) + v342;
      if (v885)
      {
        v886 = 3;
      }

      else
      {
        v886 = 2;
      }

      *&v1527[28] = 2048;
      *&v1527[30] = v1437;
      _os_log_send_and_compose_impl(v886, &v1501, v1528, 80, &dword_1E1C61000, v884, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1527, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_1062:
      v1501 = 0;
      v342 = v1527;
      v1529 = 0u;
      v1530 = 0u;
      memset(v1528, 0, sizeof(v1528));
      v887 = MEMORY[0x1E69E9C10];
      v888 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v1527 = 136315906;
      *&v1527[4] = "operator[]";
      *&v1527[12] = 1024;
      if (v888)
      {
        v889 = 3;
      }

      else
      {
        v889 = 2;
      }

      *&v1527[14] = 621;
      *&v1527[18] = 2048;
      *&v1527[20] = v27;
      *&v1527[28] = 2048;
      *&v1527[30] = v1437;
      _os_log_send_and_compose_impl(v889, &v1501, v1528, 80, &dword_1E1C61000, v887, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1527, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_1066:
      v1501 = 0;
      v1529 = 0u;
      v1530 = 0u;
      memset(v1528, 0, sizeof(v1528));
      v363 = MEMORY[0x1E69E9C10];
      v890 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v1527 = 136315906;
      *&v1527[4] = "operator[]";
      *&v1527[12] = 1024;
      *&v1527[14] = 621;
      *&v1527[18] = 2048;
      *&v1527[20] = (v3 * v1436 + 6 * v1465 + 18) + v342;
      if (v890)
      {
        v891 = 3;
      }

      else
      {
        v891 = 2;
      }

      *&v1527[28] = 2048;
      *&v1527[30] = v1437;
      _os_log_send_and_compose_impl(v891, &v1501, v1528, 80, &dword_1E1C61000, v363, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1527, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_1070:
      v1501 = 0;
      v14 = v1527;
      v1529 = 0u;
      v1530 = 0u;
      memset(v1528, 0, sizeof(v1528));
      v69 = MEMORY[0x1E69E9C10];
      v892 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v1527 = 136315906;
      *&v1527[4] = "operator[]";
      *&v1527[12] = 1024;
      if (v892)
      {
        v893 = 3;
      }

      else
      {
        v893 = 2;
      }

      *&v1527[14] = 621;
      *&v1527[18] = 2048;
      *&v1527[20] = v363;
      *&v1527[28] = 2048;
      *&v1527[30] = v1437;
      _os_log_send_and_compose_impl(v893, &v1501, v1528, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1527, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_1074:
      if (v3 < v363)
      {
        v27 = v803 + v3;
        if (v27 < v363)
        {
          v14 = v27 + v803;
          if (v14 < v363)
          {
            v894 = (v69 + 8 * v27);
            v895 = v894[1];
            v896 = *(v69 + 8 * v3) - *v894;
            v897 = *(v69 + 8 * v14 + 4);
            v898 = (*&v799 * (v896 / *(a2 + 32))) / v800;
            v14 = v21;
            if (v801)
            {
              v899 = 0;
              v900 = v800 + 1;
              if (v900 <= 1)
              {
                LODWORD(v900) = 1;
              }

              v14 = v21;
              v901 = v800;
              do
              {
                if (v901 != -1)
                {
                  v27 = 0;
                  v902 = v363 - v14;
                  if (v363 < v14)
                  {
                    v902 = 0;
                  }

                  do
                  {
                    if (v902 == v27)
                    {
                      goto LABEL_1400;
                    }

                    *(v69 + 8 * v14 + 8 * v27) = COERCE_UNSIGNED_INT(v898 * v27);
                    ++v27;
                  }

                  while (v900 != v27);
                  v14 = (v14 + v27);
                  v901 = v800;
                }

                ++v899;
              }

              while (v899 != v801);
            }

            v903 = v896 + 0.0;
            v904 = *(a2 + 44) - 1;
            if (*(a2 + 44) != 1)
            {
              v905 = v800 + 1;
              if (v905 <= 1)
              {
                LODWORD(v905) = 1;
              }

              v906 = 1;
              v907 = v800;
              do
              {
                if (v907 != -1)
                {
                  v27 = 0;
                  v908 = v363 - v14;
                  if (v363 < v14)
                  {
                    v908 = 0;
                  }

                  do
                  {
                    if (v908 == v27)
                    {
                      goto LABEL_1432;
                    }

                    *&v909 = v898 * v27;
                    *(&v909 + 1) = (v906 * (v903 / (v904 + 1.0))) + 0.0;
                    *(v69 + 8 * v14 + 8 * v27++) = v909;
                  }

                  while (v905 != v27);
                  v14 = (v14 + v27);
                  v907 = v800;
                }

                ++v906;
              }

              while (v906 <= v904);
            }

            if (v801)
            {
              v910 = 0;
              v911 = v800 + 1;
              if (v911 <= 1)
              {
                LODWORD(v911) = 1;
              }

              v912 = v800;
              do
              {
                if (v912 != -1)
                {
                  v27 = 0;
                  v913 = v363 - v14;
                  if (v363 < v14)
                  {
                    v913 = 0;
                  }

                  do
                  {
                    if (v913 == v27)
                    {
                      goto LABEL_1460;
                    }

                    *&v914 = v898 * v27;
                    *(&v914 + 1) = v896 + 0.0;
                    *(v69 + 8 * v14 + 8 * v27++) = v914;
                  }

                  while (v911 != v27);
                  v14 = (v14 + v27);
                  v912 = v800;
                }

                ++v910;
              }

              while (v910 != v801);
            }

            v915 = v895 - v897;
            v916 = v903 + v915;
            v917 = *(a2 + 48) - 1;
            if (*(a2 + 48) != 1)
            {
              v918 = v800 + 1;
              if (v918 <= 1)
              {
                LODWORD(v918) = 1;
              }

              v919 = 1;
              v920 = v800;
              do
              {
                if (v920 != -1)
                {
                  v27 = 0;
                  v921 = v363 - v14;
                  if (v363 < v14)
                  {
                    v921 = 0;
                  }

                  do
                  {
                    if (v921 == v27)
                    {
                      goto LABEL_1468;
                    }

                    *&v922 = v898 * v27;
                    *(&v922 + 1) = v903 + (v919 * ((v916 - v903) / (v917 + 1.0)));
                    *(v69 + 8 * v14 + 8 * v27++) = v922;
                  }

                  while (v918 != v27);
                  v14 = (v14 + v27);
                  v920 = v800;
                }

                ++v919;
              }

              while (v919 <= v917);
            }

            if (v801)
            {
              v923 = 0;
              v924 = v800 + 1;
              if (v924 <= 1)
              {
                LODWORD(v924) = 1;
              }

              v925 = v800;
              do
              {
                if (v925 != -1)
                {
                  v27 = 0;
                  v926 = v363 - v14;
                  if (v363 < v14)
                  {
                    v926 = 0;
                  }

                  do
                  {
                    if (v926 == v27)
                    {
                      goto LABEL_1508;
                    }

                    *&v927 = v898 * v27;
                    *(&v927 + 1) = v916;
                    *(v69 + 8 * v14 + 8 * v27++) = v927;
                  }

                  while (v924 != v27);
                  v14 = (v14 + v27);
                  v925 = v800;
                }

                ++v923;
              }

              while (v923 != v801);
            }

            v928 = v896 + v916;
            v929 = v800 + 1;
            v930 = *(a2 + 44) - 1;
            if (*(a2 + 44) != 1)
            {
              if (v929 <= 1)
              {
                v931 = 1;
              }

              else
              {
                v931 = v800 + 1;
              }

              v932 = 1;
              v933 = v800;
              do
              {
                if (v933 != -1)
                {
                  v27 = 0;
                  v934 = v363 - v14;
                  if (v363 < v14)
                  {
                    v934 = 0;
                  }

                  do
                  {
                    if (v934 == v27)
                    {
                      goto LABEL_1544;
                    }

                    *&v935 = v898 * v27;
                    *(&v935 + 1) = v916 + (v932 * ((v928 - v916) / (v930 + 1.0)));
                    *(v69 + 8 * v14 + 8 * v27++) = v935;
                  }

                  while (v931 != v27);
                  v14 = (v14 + v27);
                  v933 = v800;
                }

                ++v932;
              }

              while (v932 <= v930);
            }

            if (v801)
            {
              v936 = 0;
              if (v929 <= 1)
              {
                v937 = 1;
              }

              else
              {
                v937 = v800 + 1;
              }

              v938 = v800;
              do
              {
                if (v938 != -1)
                {
                  v27 = 0;
                  v939 = v363 - v14;
                  if (v363 < v14)
                  {
                    v939 = 0;
                  }

                  do
                  {
                    if (v939 == v27)
                    {
                      goto LABEL_1548;
                    }

                    *&v940 = v898 * v27;
                    *(&v940 + 1) = v928;
                    *(v69 + 8 * v14 + 8 * v27++) = v940;
                  }

                  while (v937 != v27);
                  v14 = (v14 + v27);
                  v938 = v800;
                }

                ++v936;
              }

              while (v936 != v801);
            }

            v941 = v915 + v928;
            v942 = *(a2 + 48) - 1;
            if (*(a2 + 48) != 1)
            {
              if (v929 <= 1)
              {
                v943 = 1;
              }

              else
              {
                v943 = v800 + 1;
              }

              v944 = 1;
              v945 = v800;
              do
              {
                if (v945 != -1)
                {
                  v27 = 0;
                  v946 = v363 - v14;
                  if (v363 < v14)
                  {
                    v946 = 0;
                  }

                  do
                  {
                    if (v946 == v27)
                    {
                      goto LABEL_1604;
                    }

                    *&v947 = v898 * v27;
                    *(&v947 + 1) = v928 + (v944 * ((v941 - v928) / (v942 + 1.0)));
                    *(v69 + 8 * v14 + 8 * v27++) = v947;
                  }

                  while (v943 != v27);
                  v14 = (v14 + v27);
                  v945 = v800;
                }

                ++v944;
              }

              while (v944 <= v942);
            }

            if (v800 == -1)
            {
              goto LABEL_1173;
            }

            v948 = 0;
            v27 = v14;
            v949 = v363 - v14;
            if (v363 < v14)
            {
              v949 = 0;
            }

            while (v949 != v948)
            {
              *&v950 = v898 * v948;
              *(&v950 + 1) = v941;
              *(v69 + 8 * v27++) = v950;
              if (v929 == ++v948)
              {
                goto LABEL_1173;
              }
            }

LABEL_1770:
            *v1527 = 0;
            v1503 = 0u;
            v1504 = 0u;
            memset(v1502, 0, sizeof(v1502));
            v69 = MEMORY[0x1E69E9C10];
            v1387 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v1528[0]) = 136315906;
            *(v1528 + 4) = "operator[]";
            WORD6(v1528[0]) = 1024;
            if (v1387)
            {
              v1388 = 3;
            }

            else
            {
              v1388 = 2;
            }

            *(v1528 + 14) = 621;
            WORD1(v1528[1]) = 2048;
            *(&v1528[1] + 4) = v27;
            WORD6(v1528[1]) = 2048;
            *(&v1528[1] + 14) = v363;
            _os_log_send_and_compose_impl(v1388, v1527, v1502, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
            _os_crash_msg();
            __break(1u);
LABEL_1774:
            *v1527 = 0;
            *(v22 + 48) = 0u;
            *(v22 + 64) = 0u;
            *(v22 + 16) = 0u;
            *(v22 + 32) = 0u;
            *v22 = 0u;
            v1389 = MEMORY[0x1E69E9C10];
            v1390 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v1528[0]) = 136315906;
            *(v1528 + 4) = "operator[]";
            WORD6(v1528[0]) = 1024;
            if (v1390)
            {
              v1391 = 3;
            }

            else
            {
              v1391 = 2;
            }

            *(v1528 + 14) = 621;
            WORD1(v1528[1]) = 2048;
            *(&v1528[1] + 4) = v14;
            WORD6(v1528[1]) = 2048;
            *(&v1528[1] + 14) = v69;
            _os_log_send_and_compose_impl(v1391, v1527, v1502, 80, &dword_1E1C61000, v1389, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
            _os_crash_msg();
            __break(1u);
LABEL_1778:
            *v1527 = 0;
            *(v22 + 48) = 0u;
            *(v22 + 64) = 0u;
            *(v22 + 16) = 0u;
            *(v22 + 32) = 0u;
            *v22 = 0u;
            v1392 = MEMORY[0x1E69E9C10];
            v1393 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v1528[0]) = 136315906;
            *(v1528 + 4) = "operator[]";
            WORD6(v1528[0]) = 1024;
            if (v1393)
            {
              v1394 = 3;
            }

            else
            {
              v1394 = 2;
            }

            *(v1528 + 14) = 613;
            WORD1(v1528[1]) = 2048;
            *(&v1528[1] + 4) = v14;
            WORD6(v1528[1]) = 2048;
            *(&v1528[1] + 14) = v27;
            _os_log_send_and_compose_impl(v1394, v1527, v1502, 80, &dword_1E1C61000, v1392, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
            _os_crash_msg();
            __break(1u);
            goto LABEL_1782;
          }

LABEL_1818:
          *v1527 = 0;
          v1503 = 0u;
          v1504 = 0u;
          memset(v1502, 0, sizeof(v1502));
          v1420 = MEMORY[0x1E69E9C10];
          v1421 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v1528[0]) = 136315906;
          *(v1528 + 4) = "operator[]";
          WORD6(v1528[0]) = 1024;
          if (v1421)
          {
            v1422 = 3;
          }

          else
          {
            v1422 = 2;
          }

          *(v1528 + 14) = 621;
          WORD1(v1528[1]) = 2048;
          *(&v1528[1] + 4) = v14;
          WORD6(v1528[1]) = 2048;
          *(&v1528[1] + 14) = v363;
          _os_log_send_and_compose_impl(v1422, v1527, v1502, 80, &dword_1E1C61000, v1420, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
          _os_crash_msg();
          __break(1u);
LABEL_1822:
          *v1527 = 0;
          v1503 = 0u;
          v1504 = 0u;
          memset(v1502, 0, sizeof(v1502));
          v363 = MEMORY[0x1E69E9C10];
          v1423 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v1528[0]) = 136315906;
          *(v1528 + 4) = "operator[]";
          WORD6(v1528[0]) = 1024;
          if (v1423)
          {
            v1424 = 3;
          }

          else
          {
            v1424 = 2;
          }

          *(v1528 + 14) = 613;
          WORD1(v1528[1]) = 2048;
          *(&v1528[1] + 4) = v20;
          WORD6(v1528[1]) = 2048;
          *(&v1528[1] + 14) = v14;
          _os_log_send_and_compose_impl(v1424, v1527, v1502, 80, &dword_1E1C61000, v363, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
          _os_crash_msg();
          __break(1u);
          goto LABEL_1826;
        }

LABEL_1810:
        *v1527 = 0;
        v1503 = 0u;
        v1504 = 0u;
        memset(v1502, 0, sizeof(v1502));
        v1415 = MEMORY[0x1E69E9C10];
        v1416 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v1528[0]) = 136315906;
        *(v1528 + 4) = "operator[]";
        WORD6(v1528[0]) = 1024;
        if (v1416)
        {
          v1417 = 3;
        }

        else
        {
          v1417 = 2;
        }

        *(v1528 + 14) = 621;
        WORD1(v1528[1]) = 2048;
        *(&v1528[1] + 4) = v27;
        WORD6(v1528[1]) = 2048;
        *(&v1528[1] + 14) = v363;
        _os_log_send_and_compose_impl(v1417, v1527, v1502, 80, &dword_1E1C61000, v1415, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
        _os_crash_msg();
        __break(1u);
LABEL_1814:
        *v1527 = 0;
        v1503 = 0u;
        v1504 = 0u;
        memset(v1502, 0, sizeof(v1502));
        v363 = MEMORY[0x1E69E9C10];
        v1418 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v1528[0]) = 136315906;
        *(v1528 + 4) = "operator[]";
        WORD6(v1528[0]) = 1024;
        if (v1418)
        {
          v1419 = 3;
        }

        else
        {
          v1419 = 2;
        }

        *(v1528 + 14) = 613;
        WORD1(v1528[1]) = 2048;
        *(&v1528[1] + 4) = v3;
        WORD6(v1528[1]) = 2048;
        *(&v1528[1] + 14) = v14;
        _os_log_send_and_compose_impl(v1419, v1527, v1502, 80, &dword_1E1C61000, v363, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
        _os_crash_msg();
        __break(1u);
        goto LABEL_1818;
      }

LABEL_1802:
      *v1527 = 0;
      v1503 = 0u;
      v1504 = 0u;
      memset(v1502, 0, sizeof(v1502));
      v1409 = MEMORY[0x1E69E9C10];
      v1410 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v1528[0]) = 136315906;
      *(v1528 + 4) = "operator[]";
      WORD6(v1528[0]) = 1024;
      if (v1410)
      {
        v1411 = 3;
      }

      else
      {
        v1411 = 2;
      }

      *(v1528 + 14) = 621;
      WORD1(v1528[1]) = 2048;
      *(&v1528[1] + 4) = v3;
      WORD6(v1528[1]) = 2048;
      *(&v1528[1] + 14) = v363;
      _os_log_send_and_compose_impl(v1411, v1527, v1502, 80, &dword_1E1C61000, v1409, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_1806:
      *v1527 = 0;
      v1503 = 0u;
      v1504 = 0u;
      memset(v1502, 0, sizeof(v1502));
      v1412 = MEMORY[0x1E69E9C10];
      v1413 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v1528[0]) = 136315906;
      *(v1528 + 4) = "operator[]";
      WORD6(v1528[0]) = 1024;
      if (v1413)
      {
        v1414 = 3;
      }

      else
      {
        v1414 = 2;
      }

      *(v1528 + 14) = 621;
      WORD1(v1528[1]) = 2048;
      *(&v1528[1] + 4) = v20;
      WORD6(v1528[1]) = 2048;
      *(&v1528[1] + 14) = v363;
      _os_log_send_and_compose_impl(v1414, v1527, v1502, 80, &dword_1E1C61000, v1412, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
      goto LABEL_1810;
    }

LABEL_653:
    v545 = v552;
    if (v552 != v548)
    {
      continue;
    }

    break;
  }

  v14 = 0;
  v572 = *&v1527[12];
  v23 = *&v1527[16];
  v573 = *&v1527[20];
  v20 = *&v1527[24];
  v574 = *&v1527[28];
  v27 = *&v1527[32];
  v575 = *&v1527[28] - 1;
  v576 = *&v1527[20] - 1;
  v577 = *&v1527[12] - 1;
  v578 = *&v1527[32] - 1;
  v579 = *&v1527[24] - 1;
  LODWORD(v21) = *&v1527[4];
  v22 = *&v1527[8];
  v580 = *&v1527[16] - 1;
  v581 = *&v1527[8] - 1;
  v582 = *&v1527[4] - 1;
  v583 = -2;
  v17 = v1458;
  do
  {
    if (v582 + v14 >= v363)
    {
      goto LABEL_1512;
    }

    if (v14)
    {
      v3 = v583;
    }

    else
    {
      v3 = 1;
    }

    v584 = &v536[(v582 + v14)];
    v585.i32[0] = v584->i32[0];
    v586 = v584->f32[1];
    v587 = vadd_f32(v547, *v584);
    *v584 = v587;
    if (v581 + v14 - v3 >= v363)
    {
      goto LABEL_1516;
    }

    v588.f32[0] = -v585.f32[0];
    v588.f32[1] = v586;
    v589 = vadd_f32(v541, v588);
    v536[(v581 + v14 - v3)] = v589;
    if (v577 + v14 >= v363)
    {
      goto LABEL_1520;
    }

    v590 = -v586;
    v591.f32[1] = -v586;
    v591.f32[0] = -v585.f32[0];
    v592 = vadd_f32(v546, v591);
    v536[(v577 + v14)] = v592;
    if (v580 + v14 - v3 >= v363)
    {
      goto LABEL_1524;
    }

    v585.f32[1] = v590;
    v593 = vadd_f32(v540, v585);
    v536[(v580 + v14 - v3)] = v593;
    if (v576 + v14 >= v363)
    {
      goto LABEL_1528;
    }

    v594 = &v536[(v576 + v14)];
    *v594 = v592;
    if (v579 + v14 - v3 >= v363)
    {
      goto LABEL_1532;
    }

    v595 = &v536[(v579 + v14 - v3)];
    *v595 = v593;
    if (v575 + v14 >= v363)
    {
      goto LABEL_1536;
    }

    v596 = &v536[(v575 + v14)];
    *v596 = v587;
    if (v578 + v14 - v3 >= v363)
    {
      goto LABEL_1540;
    }

    v597 = &v536[(v578 + v14 - v3)];
    *v597 = v589;
    if (v535)
    {
      v594->f32[0] = -v594->f32[0];
      v595->f32[0] = -v595->f32[0];
      v596->f32[0] = -v596->f32[0];
      v597->f32[0] = -v597->f32[0];
    }

    --v14;
    ++v583;
  }

  while (v14 != -3);
  v598 = *v536;
  if (v27 < 2)
  {
    goto LABEL_893;
  }

  v69 = v363;
  v21 = v1449;
  v599 = v1474;
  if (v363 - 1 <= v27 - 2)
  {
    goto LABEL_1794;
  }

  v600 = v27 - 1;
  v601 = v536 + 1;
  v602 = *v536;
  do
  {
    v603 = *v601++;
    v604.i32[0] = vbsl_s8(vcgt_f32(v598, v603), v603, v598).u32[0];
    v604.i32[1] = v598.i32[1];
    v604.i32[1] = vbsl_s8(vcgt_f32(v604, v603), *&v603, *&v598).i32[1];
    v602 = vbsl_s8(vcgt_f32(v603, v602), v603, v602);
    v598 = v604;
    --v600;
  }

  while (v600);
LABEL_894:
  if (v27)
  {
    v776 = vsub_f32(v602, v604);
    if (v776.f32[1] >= v776.f32[0])
    {
      v776.f32[0] = v776.f32[1];
    }

    if (v776.f32[0] > 0.0)
    {
      v776.f32[0] = 1.0 / v776.f32[0];
    }

    v69 = v363;
    v777 = v363;
    while (v777)
    {
      *v536 = vmul_n_f32(vsub_f32(*v536, v604), v776.f32[0]);
      ++v536;
      --v777;
      if (!--v27)
      {
        goto LABEL_902;
      }
    }

LABEL_1608:
    v1501 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1269 = MEMORY[0x1E69E9C10];
    v14 = v1527;
    v1270 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1270)
    {
      v1271 = 3;
    }

    else
    {
      v1271 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v69;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v69;
    _os_log_send_and_compose_impl(v1271, &v1501, v1502, 80, &dword_1E1C61000, v1269, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1612:
    *v1527 = 0;
    *(v22 + 48) = 0u;
    *(v22 + 64) = 0u;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0u;
    *v22 = 0u;
    v1272 = MEMORY[0x1E69E9C10];
    v1273 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1273)
    {
      v1274 = 3;
    }

    else
    {
      v1274 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v17;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v14;
    _os_log_send_and_compose_impl(v1274, v1527, v1502, 80, &dword_1E1C61000, v1272, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1616:
    *v1527 = 0;
    *(v22 + 48) = 0u;
    *(v22 + 64) = 0u;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0u;
    *v22 = 0u;
    v1275 = MEMORY[0x1E69E9C10];
    v1276 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    if (v1276)
    {
      v1277 = 3;
    }

    else
    {
      v1277 = 2;
    }

    WORD6(v1528[0]) = 1024;
    *(v1528 + 14) = 613;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v17;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v27;
    _os_log_send_and_compose_impl(v1277, v1527, v1502, 80, &dword_1E1C61000, v1275, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
    goto LABEL_1620;
  }

LABEL_902:
  v1502[0] = v1500;
  v1502[1] = v1498;
  *&v1528[0] = v1496;
  *(&v1528[0] + 1) = v1494;
  *v1527 = v1461;
  v3 = v1444;
  v778 = v599;
  v14 = v1447;
  if (v1443 >= 2)
  {
    v780 = re::modifyVertexUVs(a1, v779);
    if (v1473 >= 2)
    {
      LODWORD(v363) = v779;
      v781 = v1474 + 2;
      v782 = 1;
      while (1)
      {
        v69 = (v17 * v782);
        v27 = v1490;
        if (v1490 <= v69)
        {
          goto LABEL_1689;
        }

        v14 = v1492[v69];
        if (v14 >= v779)
        {
          goto LABEL_1693;
        }

        v3 = (v69 + v1474);
        if (v1490 <= v3)
        {
          goto LABEL_1697;
        }

        v27 = v1492[v3];
        if (v27 >= v779)
        {
          goto LABEL_1701;
        }

        v20 = v1486;
        if (v1486 <= v69)
        {
          goto LABEL_1705;
        }

        v17 = v1488[v69];
        if (v17 >= v779)
        {
          goto LABEL_1709;
        }

        if (v1486 <= v3)
        {
          goto LABEL_1713;
        }

        v3 = v1488[v3];
        if (v3 >= v779)
        {
          goto LABEL_1717;
        }

        if (v1474 >= 2)
        {
          break;
        }

LABEL_920:
        ++v782;
        v17 = v1458;
        v781 += v1458;
        if (v782 == v1473)
        {
          goto LABEL_921;
        }
      }

      v783 = 1;
      v784 = v781;
      v785 = v1474 - 1;
      while (1)
      {
        v786 = (1.0 / v1474) * v783;
        v787 = 1.0 - v786;
        v69 = v784;
        v20 = v1490;
        if (v1490 <= v784)
        {
          break;
        }

        v20 = v1492[v784];
        if (v20 >= v779)
        {
          goto LABEL_1420;
        }

        *(v780 + 8 * v20) = vadd_f32(vmul_n_f32(*(v780 + 8 * v27), v786), vmul_n_f32(*(v780 + 8 * v14), v787));
        v20 = v1486;
        if (v1486 <= v784)
        {
          goto LABEL_1424;
        }

        v20 = v1488[v784];
        if (v20 >= v779)
        {
          goto LABEL_1428;
        }

        *(v780 + 8 * v20) = vadd_f32(vmul_n_f32(*(v780 + 8 * v17), v787), vmul_n_f32(*(v780 + 8 * v3), v786));
        ++v784;
        ++v783;
        if (!--v785)
        {
          goto LABEL_920;
        }
      }

LABEL_1416:
      *v1527 = 0;
      v1503 = 0u;
      v1504 = 0u;
      memset(v1502, 0, sizeof(v1502));
      v363 = MEMORY[0x1E69E9C10];
      v1121 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v1528[0]) = 136315906;
      *(v1528 + 4) = "operator[]";
      WORD6(v1528[0]) = 1024;
      if (v1121)
      {
        v1122 = 3;
      }

      else
      {
        v1122 = 2;
      }

      *(v1528 + 14) = 797;
      WORD1(v1528[1]) = 2048;
      *(&v1528[1] + 4) = v69;
      WORD6(v1528[1]) = 2048;
      *(&v1528[1] + 14) = v20;
      _os_log_send_and_compose_impl(v1122, v1527, v1502, 80, &dword_1E1C61000, v363, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_1420:
      *v1527 = 0;
      v1503 = 0u;
      v1504 = 0u;
      memset(v1502, 0, sizeof(v1502));
      v69 = MEMORY[0x1E69E9C10];
      v1123 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v1528[0]) = 136315906;
      *(v1528 + 4) = "operator[]";
      WORD6(v1528[0]) = 1024;
      if (v1123)
      {
        v1124 = 3;
      }

      else
      {
        v1124 = 2;
      }

      *(v1528 + 14) = 621;
      WORD1(v1528[1]) = 2048;
      *(&v1528[1] + 4) = v20;
      WORD6(v1528[1]) = 2048;
      *(&v1528[1] + 14) = v363;
      _os_log_send_and_compose_impl(v1124, v1527, v1502, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_1424:
      *v1527 = 0;
      v1503 = 0u;
      v1504 = 0u;
      memset(v1502, 0, sizeof(v1502));
      v363 = MEMORY[0x1E69E9C10];
      v1125 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v1528[0]) = 136315906;
      *(v1528 + 4) = "operator[]";
      WORD6(v1528[0]) = 1024;
      if (v1125)
      {
        v1126 = 3;
      }

      else
      {
        v1126 = 2;
      }

      *(v1528 + 14) = 797;
      WORD1(v1528[1]) = 2048;
      *(&v1528[1] + 4) = v69;
      WORD6(v1528[1]) = 2048;
      *(&v1528[1] + 14) = v20;
      _os_log_send_and_compose_impl(v1126, v1527, v1502, 80, &dword_1E1C61000, v363, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_1428:
      *v1527 = 0;
      v1503 = 0u;
      v1504 = 0u;
      memset(v1502, 0, sizeof(v1502));
      v1127 = MEMORY[0x1E69E9C10];
      v1128 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v1528[0]) = 136315906;
      *(v1528 + 4) = "operator[]";
      WORD6(v1528[0]) = 1024;
      if (v1128)
      {
        v1129 = 3;
      }

      else
      {
        v1129 = 2;
      }

      *(v1528 + 14) = 621;
      WORD1(v1528[1]) = 2048;
      *(&v1528[1] + 4) = v20;
      WORD6(v1528[1]) = 2048;
      *(&v1528[1] + 14) = v363;
      _os_log_send_and_compose_impl(v1129, v1527, v1502, 80, &dword_1E1C61000, v1127, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
LABEL_1432:
      *v1527 = 0;
      v1503 = 0u;
      v1504 = 0u;
      memset(v1502, 0, sizeof(v1502));
      v1130 = MEMORY[0x1E69E9C10];
      v1131 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *(v1528 + 4) = "operator[]";
      WORD6(v1528[0]) = 1024;
      *(v1528 + 14) = 621;
      if (v1131)
      {
        v1132 = 3;
      }

      else
      {
        v1132 = 2;
      }

      LODWORD(v1528[0]) = 136315906;
      WORD1(v1528[1]) = 2048;
      *(&v1528[1] + 4) = (v14 + v27);
      WORD6(v1528[1]) = 2048;
      *(&v1528[1] + 14) = v363;
      _os_log_send_and_compose_impl(v1132, v1527, v1502, 80, &dword_1E1C61000, v1130, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
      v379 = _os_crash_msg();
      __break(1u);
LABEL_1436:
      v1501 = 0;
      v1529 = 0u;
      v1530 = 0u;
      memset(v1528, 0, sizeof(v1528));
      v391 = MEMORY[0x1E69E9C10];
      v1133 = v379;
      v1134 = v314;
      v1135 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v1527 = 136315906;
      *&v1527[4] = "operator[]";
      if (v1135)
      {
        v1136 = 3;
      }

      else
      {
        v1136 = 2;
      }

      *&v1527[12] = 1024;
      *&v1527[14] = 621;
      *&v1527[18] = 2048;
      *&v1527[20] = v1133;
      *&v1527[28] = 2048;
      *&v1527[30] = v1134;
      _os_log_send_and_compose_impl(v1136, &v1501, v1528, 80, &dword_1E1C61000, v391, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1527, 38, v1434, v1435);
      _os_crash_msg();
      __break(1u);
      goto LABEL_1440;
    }
  }

LABEL_921:
  v20 = a2;
  v3 = a1;
  v14 = *(a2 + 2);
  v17 = v1484;
  v27 = v1482;
  v788 = re::modifyVertexUVs(a1, v779);
  v69 = v788;
  LODWORD(v363) = v470;
  if (v14 != 1)
  {
    goto LABEL_939;
  }

  if (v27)
  {
    v789 = 0;
    v790 = (*(a2 + 52) + 1);
    v14 = v470;
    v791 = v1450 + 8 * v1465 + v1451 + 24;
    while (1)
    {
      if (v789 == v27)
      {
        goto LABEL_1676;
      }

      v3 = *(v17 + 4 * v789);
      if (v3 >= v470)
      {
        goto LABEL_1677;
      }

      v20 = v791;
      v792 = v790;
      if (v790)
      {
        break;
      }

LABEL_929:
      ++v789;
      v791 += v790;
      if (v789 == v27)
      {
        goto LABEL_1173;
      }
    }

    while (v20 < v470)
    {
      *(v788 + 8 * v20++) = *(v788 + 8 * v3);
      if (!--v792)
      {
        goto LABEL_929;
      }
    }

LABEL_1260:
    *v1527 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1003 = MEMORY[0x1E69E9C10];
    v1004 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1004)
    {
      v1005 = 3;
    }

    else
    {
      v1005 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v20;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v14;
    _os_log_send_and_compose_impl(v1005, v1527, v1502, 80, &dword_1E1C61000, v1003, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
LABEL_1264:
    v1501 = 0;
    v1503 = 0u;
    v1504 = 0u;
    memset(v1502, 0, sizeof(v1502));
    v1006 = MEMORY[0x1E69E9C10];
    v1007 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v1528[0]) = 136315906;
    *(v1528 + 4) = "operator[]";
    WORD6(v1528[0]) = 1024;
    if (v1007)
    {
      v1008 = 3;
    }

    else
    {
      v1008 = 2;
    }

    *(v1528 + 14) = 621;
    WORD1(v1528[1]) = 2048;
    *(&v1528[1] + 4) = v69;
    WORD6(v1528[1]) = 2048;
    *(&v1528[1] + 14) = v69;
    _os_log_send_and_compose_impl(v1008, &v1501, v1502, 80, &dword_1E1C61000, v1006, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1528, 38, v1434, v1435);
    _os_crash_msg();
    __break(1u);
    goto LABEL_1268;
  }

LABEL_1173:
  v521 = a2;
  if (*(a2 + 1) == 1)
  {
    v951 = 3 - (4 * *(a2 + 56) + 2 * (*(a2 + 48) + *(a2 + 44)));
    v952 = *(a1 + 4);
    v953 = v951 + v951 * *(a2 + 52) + v952;
    v1502[0] = re::modifyVertexUVs(a1, v470);
    LODWORD(v1502[1]) = v954;
    v521 = a2;
  }

LABEL_1175:
  if (*(v521 + 4) == 1)
  {
    re::internal::mergeVertexPositions(a1, v470);
  }

  re::GeomMeshBuilder::~GeomMeshBuilder(&v1514);
  if (v1477[0] && v1480)
  {
    (*(*v1477[0] + 40))();
  }

  if (v1481[0] && v1484)
  {
    (*(*v1481[0] + 40))();
  }

  if (v1485[0] && v1488)
  {
    (*(*v1485[0] + 40))();
  }

  if (v1489[0] && v1492)
  {
    (*(*v1489[0] + 40))();
  }

  if (v1493[0] && v1496)
  {
    (*(*v1493[0] + 40))();
  }

  if (v1497[0] && v1500)
  {
    (*(*v1497[0] + 40))();
  }

  return v1449;
}