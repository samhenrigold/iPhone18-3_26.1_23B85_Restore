uint64_t re::makeMeshFromFaces@<X0>(unint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X8>)
{
  v10 = a1;
  v132 = *MEMORY[0x1E69E9840];
  v111 = 0;
  v108[1] = 0;
  v109 = 0;
  v107 = 0;
  v108[0] = 0;
  v110 = 0;
  v104[0] = 0;
  v104[1] = 0;
  v12 = *(a1 + 40);
  v13 = *(a2 + 2);
  *(a5 + 16) = 0;
  ++*(a5 + 24);
  if (*(a5 + 8) < v13)
  {
    re::DynamicArray<int>::setCapacity(a5, v13);
  }

  v14 = &v113;
  v105 = 0;
  v106 = 1;
  re::DynamicArray<unsigned int>::resize(v104, v12, &re::kInvalidMeshIndex);
  if (v13)
  {
    v16 = 0;
    while (1)
    {
      v17 = a2[1];
      if (v17 <= v16)
      {
        break;
      }

      v15 = (*a2 + 4 * v16);
      v6 = *v15;
      v7 = v105;
      if (v105 <= v6)
      {
        goto LABEL_74;
      }

      if (*(v107 + 4 * v6) == -1)
      {
        *(v107 + 4 * v6) = *(a5 + 16);
        re::DynamicArray<int>::add(a5, v15);
      }

      if (++v16 == v13)
      {
        goto LABEL_10;
      }
    }

LABEL_73:
    re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, v17, v101);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v95, v97);
    __break(1u);
LABEL_74:
    *v124 = 0;
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v113 = 0u;
    v58 = MEMORY[0x1E69E9C10];
    v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v129[0]) = 136315906;
    *(v129 + 4) = "operator[]";
    WORD2(v129[1]) = 1024;
    if (v59)
    {
      v60 = 3;
    }

    else
    {
      v60 = 2;
    }

    *(&v129[1] + 6) = 789;
    WORD1(v129[2]) = 2048;
    *(&v129[2] + 4) = v6;
    WORD2(v129[3]) = 2048;
    *(&v129[3] + 6) = v7;
    _os_log_send_and_compose_impl(v60, v124, &v113, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v129, 38, v99, v100);
    _os_crash_msg();
    __break(1u);
    goto LABEL_78;
  }

LABEL_10:
  v101 = a6;
  v18 = v10 + 16;
  v13 = *(v10 + 16);
  v6 = *(a5 + 16);
  v109 = 0;
  ++v110;
  re::DynamicArray<unsigned int>::resize(v108, v13, &re::kInvalidMeshIndex);
  if (!v6)
  {
    v21 = 0;
    goto LABEL_24;
  }

  v20 = 0;
  v21 = 0;
  v12 = *(a5 + 16);
  a6 = v109;
  v22 = *(a5 + 32);
  v23 = *(v10 + 40);
  v24 = *(v10 + 56);
  do
  {
    if (v20 == v12)
    {
      goto LABEL_111;
    }

    v7 = *(v22 + 4 * v20);
    if (v23 <= v7)
    {
LABEL_115:
      *v124 = 0;
      v14[3] = 0u;
      v14[4] = 0u;
      v114 = 0u;
      v115 = 0u;
      v113 = 0u;
      v86 = MEMORY[0x1E69E9C10];
      v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v129[0]) = 136315906;
      *(v129 + 4) = "operator[]";
      WORD2(v129[1]) = 1024;
      if (v87)
      {
        v88 = 3;
      }

      else
      {
        v88 = 2;
      }

      *(&v129[1] + 6) = 797;
      WORD1(v129[2]) = 2048;
      *(&v129[2] + 4) = v7;
      WORD2(v129[3]) = 2048;
      *(&v129[3] + 6) = v23;
      _os_log_send_and_compose_impl(v88, v124, &v113, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v129, 38, v99, v100);
      _os_crash_msg();
      __break(1u);
LABEL_119:
      *v124 = 0;
      v14[3] = 0u;
      v14[4] = 0u;
      v114 = 0u;
      v115 = 0u;
      v113 = 0u;
      v89 = MEMORY[0x1E69E9C10];
      v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v129[0]) = 136315906;
      *(v129 + 4) = "operator[]";
      WORD2(v129[1]) = 1024;
      if (v90)
      {
        v91 = 3;
      }

      else
      {
        v91 = 2;
      }

      *(&v129[1] + 6) = 789;
      WORD1(v129[2]) = 2048;
      *(&v129[2] + 4) = v12;
      WORD2(v129[3]) = 2048;
      *(&v129[3] + 6) = v7;
      _os_log_send_and_compose_impl(v91, v124, &v113, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v129, 38, v99, v100);
      _os_crash_msg();
      __break(1u);
LABEL_123:
      v112 = 0;
      v130 = 0u;
      v131 = 0u;
      memset(v129, 0, sizeof(v129));
      v92 = MEMORY[0x1E69E9C10];
      v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v124 = 136315906;
      *&v124[4] = "operator[]";
      *&v124[12] = 1024;
      if (v93)
      {
        v94 = 3;
      }

      else
      {
        v94 = 2;
      }

      *&v124[14] = 797;
      v125 = 2048;
      v126 = v6;
      v127 = 2048;
      v128 = v12;
      _os_log_send_and_compose_impl(v94, &v112, v129, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v124, 38, v99, v100);
      _os_crash_msg();
      __break(1u);
    }

    v25 = 0;
    *v124 = *(v24 + 16 * v7);
    v26 = v111;
    if (*&v124[12] == -1)
    {
      v27 = 3;
    }

    else
    {
      v27 = 4;
    }

    do
    {
      v7 = *&v124[4 * v25];
      if (a6 <= v7)
      {
        v112 = 0;
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v113 = 0u;
        v16 = MEMORY[0x1E69E9C10];
        v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v129[0]) = 136315906;
        *(v129 + 4) = "operator[]";
        WORD2(v129[1]) = 1024;
        if (v56)
        {
          v57 = 3;
        }

        else
        {
          v57 = 2;
        }

        *(&v129[1] + 6) = 789;
        WORD1(v129[2]) = 2048;
        *(&v129[2] + 4) = v7;
        WORD2(v129[3]) = 2048;
        *(&v129[3] + 6) = a6;
        _os_log_send_and_compose_impl(v57, &v112, &v113, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v129, 38, v99, v100);
        _os_crash_msg();
        __break(1u);
        goto LABEL_73;
      }

      if (*(v26 + 4 * v7) == -1)
      {
        *(v26 + 4 * v7) = v21++;
      }

      ++v25;
    }

    while (v27 != v25);
    v20 = (v20 + 1);
  }

  while (v20 != v6);
LABEL_24:
  v28 = a3[1];
  if (v28)
  {
    v29 = 0;
    v6 = v109;
    v30 = v111;
    v31 = *a3;
    v32 = a4;
    while (v28 != v29)
    {
      v7 = *(v31 + 4 * v29);
      if (v6 <= v7)
      {
        goto LABEL_79;
      }

      if (*(v30 + 4 * v7) == -1)
      {
        *(v30 + 4 * v7) = v21++;
      }

      if (v28 == ++v29)
      {
        goto LABEL_33;
      }
    }

LABEL_78:
    re::internal::assertLog(6, v19, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v28, v28);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v96, v98);
    __break(1u);
LABEL_79:
    *v124 = 0;
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v113 = 0u;
    v61 = MEMORY[0x1E69E9C10];
    v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v129[0]) = 136315906;
    *(v129 + 4) = "operator[]";
    WORD2(v129[1]) = 1024;
    if (v62)
    {
      v63 = 3;
    }

    else
    {
      v63 = 2;
    }

    *(&v129[1] + 6) = 789;
    WORD1(v129[2]) = 2048;
    *(&v129[2] + 4) = v7;
    WORD2(v129[3]) = 2048;
    *(&v129[3] + 6) = v6;
    _os_log_send_and_compose_impl(v63, v124, &v113, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v129, 38, v99, v100);
    _os_crash_msg();
    __break(1u);
LABEL_83:
    *v124 = 0;
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v113 = 0u;
    v64 = MEMORY[0x1E69E9C10];
    v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v129[0]) = 136315906;
    *(v129 + 4) = "operator[]";
    WORD2(v129[1]) = 1024;
    if (v65)
    {
      v66 = 3;
    }

    else
    {
      v66 = 2;
    }

    *(&v129[1] + 6) = 789;
    WORD1(v129[2]) = 2048;
    *(&v129[2] + 4) = v6;
    WORD2(v129[3]) = 2048;
    *(&v129[3] + 6) = v6;
    _os_log_send_and_compose_impl(v66, v124, &v113, 80, &dword_1E1C61000, v64, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v129, 38, v99, v100);
    _os_crash_msg();
    __break(1u);
LABEL_87:
    v112 = 0;
    v130 = 0u;
    v131 = 0u;
    memset(v129, 0, sizeof(v129));
    v44 = MEMORY[0x1E69E9C10];
    v67 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v124 = 136315906;
    *&v124[4] = "operator[]";
    *&v124[12] = 1024;
    if (v67)
    {
      v68 = 3;
    }

    else
    {
      v68 = 2;
    }

    *&v124[14] = 789;
    v125 = 2048;
    v126 = v14;
    v127 = 2048;
    v128 = v14;
    _os_log_send_and_compose_impl(v68, &v112, v129, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v124, 38, v99, v100);
    _os_crash_msg();
    __break(1u);
LABEL_91:
    v112 = 0;
    v130 = 0u;
    v131 = 0u;
    memset(v129, 0, sizeof(v129));
    v69 = MEMORY[0x1E69E9C10];
    v70 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v124 = 136315906;
    *&v124[4] = "operator[]";
    *&v124[12] = 1024;
    if (v70)
    {
      v71 = 3;
    }

    else
    {
      v71 = 2;
    }

    *&v124[14] = 797;
    v125 = 2048;
    v126 = v6;
    v127 = 2048;
    v128 = v44;
    _os_log_send_and_compose_impl(v71, &v112, v129, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v124, 38, v99, v100);
    _os_crash_msg();
    __break(1u);
LABEL_95:
    v112 = 0;
    v130 = 0u;
    v131 = 0u;
    memset(v129, 0, sizeof(v129));
    v72 = MEMORY[0x1E69E9C10];
    v73 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v124 = 136315906;
    *&v124[4] = "operator[]";
    *&v124[12] = 1024;
    if (v73)
    {
      v74 = 3;
    }

    else
    {
      v74 = 2;
    }

    *&v124[14] = 797;
    v125 = 2048;
    v126 = v6;
    v127 = 2048;
    v128 = v12;
    _os_log_send_and_compose_impl(v74, &v112, v129, 80, &dword_1E1C61000, v72, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v124, 38, v99, v100);
    _os_crash_msg();
    __break(1u);
LABEL_99:
    v112 = 0;
    v130 = 0u;
    v131 = 0u;
    memset(v129, 0, sizeof(v129));
    v75 = MEMORY[0x1E69E9C10];
    v76 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v124 = 136315906;
    *&v124[4] = "operator[]";
    *&v124[12] = 1024;
    if (v76)
    {
      v77 = 3;
    }

    else
    {
      v77 = 2;
    }

    *&v124[14] = 797;
    v125 = 2048;
    v126 = v10;
    v127 = 2048;
    v128 = v12;
    _os_log_send_and_compose_impl(v77, &v112, v129, 80, &dword_1E1C61000, v75, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v124, 38, v99, v100);
    _os_crash_msg();
    __break(1u);
LABEL_103:
    v112 = 0;
    v130 = 0u;
    v131 = 0u;
    memset(v129, 0, sizeof(v129));
    v78 = MEMORY[0x1E69E9C10];
    v79 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v124 = 136315906;
    *&v124[4] = "operator[]";
    *&v124[12] = 1024;
    if (v79)
    {
      v80 = 3;
    }

    else
    {
      v80 = 2;
    }

    *&v124[14] = 797;
    v125 = 2048;
    v126 = v13;
    v127 = 2048;
    v128 = v12;
    _os_log_send_and_compose_impl(v80, &v112, v129, 80, &dword_1E1C61000, v78, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v124, 38, v99, v100);
    _os_crash_msg();
    __break(1u);
LABEL_107:
    v112 = 0;
    v130 = 0u;
    v131 = 0u;
    memset(v129, 0, sizeof(v129));
    v81 = MEMORY[0x1E69E9C10];
    v82 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v124 = 136315906;
    *&v124[4] = "operator[]";
    *&v124[12] = 1024;
    if (v82)
    {
      v83 = 3;
    }

    else
    {
      v83 = 2;
    }

    *&v124[14] = 789;
    v125 = 2048;
    v126 = a6;
    v127 = 2048;
    v128 = a6;
    _os_log_send_and_compose_impl(v83, &v112, v129, 80, &dword_1E1C61000, v81, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v124, 38, v99, v100);
    _os_crash_msg();
    __break(1u);
LABEL_111:
    *v124 = 0;
    v14[3] = 0u;
    v14[4] = 0u;
    v114 = 0u;
    v115 = 0u;
    v113 = 0u;
    v23 = MEMORY[0x1E69E9C10];
    v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v129[0]) = 136315906;
    *(v129 + 4) = "operator[]";
    WORD2(v129[1]) = 1024;
    if (v84)
    {
      v85 = 3;
    }

    else
    {
      v85 = 2;
    }

    *(&v129[1] + 6) = 789;
    WORD1(v129[2]) = 2048;
    *(&v129[2] + 4) = v12;
    WORD2(v129[3]) = 2048;
    *(&v129[3] + 6) = v12;
    _os_log_send_and_compose_impl(v85, v124, &v113, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v129, 38, v99, v100);
    _os_crash_msg();
    __break(1u);
    goto LABEL_115;
  }

  v32 = a4;
LABEL_33:
  re::DynamicArray<float>::resize(v32, v21);
  if (v13)
  {
    v34 = 0;
    v6 = v109;
    v35 = v111;
    v7 = *(v32 + 16);
    v36 = *(v32 + 32);
    while (v6 != v34)
    {
      v12 = *(v35 + 4 * v34);
      if (v12 != -1)
      {
        if (v7 <= v12)
        {
          goto LABEL_119;
        }

        *(v36 + 4 * v12) = v34;
      }

      v34 = (v34 + 1);
      if (v13 == v34)
      {
        goto LABEL_40;
      }
    }

    goto LABEL_83;
  }

LABEL_40:
  LODWORD(v113) = 0;
  *(&v115 + 1) = 0;
  v114 = 0uLL;
  LODWORD(v115) = 0;
  re::DynamicArray<re::BlendNode>::setCapacity(&v113 + 1, 1uLL);
  LODWORD(v115) = v115 + 1;
  re::internal::GeomAttributeManager::GeomAttributeManager(&v116);
  v37 = *(v32 + 16);
  v38 = *(a5 + 16);
  v7 = v38;
  LODWORD(v113) = v37;
  v118 = v37;
  if (v119)
  {
    v6 = v120;
    v13 = 8 * v119;
    do
    {
      v39 = *v6;
      v6 += 8;
      (*(*v39 + 80))(v39, v118);
      v13 -= 8;
    }

    while (v13);
  }

  re::DynamicArray<re::GeomCell4>::resize(&v113 + 1, v38);
  v121 = v38;
  if (v122)
  {
    v6 = v123;
    v13 = 8 * v122;
    do
    {
      v40 = *v6;
      v6 += 8;
      (*(*v40 + 80))(v40, v121);
      v13 -= 8;
    }

    while (v13);
  }

  if (v38)
  {
    v41 = 0;
    v14 = *(a5 + 16);
    v12 = v109;
    v42 = v111;
    a6 = *(&v114 + 1);
    v43 = *(a5 + 32);
    v44 = *(v10 + 40);
    v45 = *(v10 + 56);
    v46 = (*(&v115 + 1) + 8);
    while (v14 != v41)
    {
      v6 = *(v43 + 4 * v41);
      if (v44 <= v6)
      {
        goto LABEL_91;
      }

      v47 = (v45 + 16 * v6);
      v6 = *v47;
      if (v12 <= v6)
      {
        goto LABEL_95;
      }

      v10 = v47[1];
      if (v12 <= v10)
      {
        goto LABEL_99;
      }

      v13 = v47[2];
      if (v12 <= v13)
      {
        goto LABEL_103;
      }

      v48 = *(v42 + 4 * v6);
      v6 = v47[3];
      v49 = *(v42 + 4 * v10);
      v50 = *(v42 + 4 * v13);
      if (v6 == -1)
      {
        v51 = -1;
      }

      else
      {
        if (v12 <= v6)
        {
          goto LABEL_123;
        }

        v51 = *(v42 + 4 * v6);
      }

      if (a6 == v41)
      {
        goto LABEL_107;
      }

      *(v46 - 2) = v48;
      *(v46 - 1) = v49;
      *v46 = v50;
      v46[1] = v51;
      v46 += 4;
      v41 = (v41 + 1);
      if (v7 == v41)
      {
        goto LABEL_59;
      }
    }

    goto LABEL_87;
  }

LABEL_59:
  re::internal::addAndCopyAttributeValues(v18, &v113, 0);
  re::internal::addAndCopyAttributeValues(v18, &v113, 4);
  v52 = *(a4 + 16);
  v129[0] = *(a4 + 32);
  v129[1] = v52;
  re::internal::addAndCopyVertexAttributes(v18, v129, &v113);
  v53 = *(a5 + 16);
  v129[0] = *(a5 + 32);
  v129[1] = v53;
  re::internal::addAndCopyFaceAttributes(v18, v129, &v113);
  v54 = *(a5 + 16);
  v129[0] = *(a5 + 32);
  v129[1] = v54;
  re::internal::addAndCopyFaceVaryingAttributes(v18, v129, &v113);
  re::GeomMesh::GeomMesh(v101, &v113);
  re::internal::GeomAttributeManager::~GeomAttributeManager(&v116);
  if (*(&v113 + 1) && *(&v115 + 1))
  {
    (*(**(&v113 + 1) + 40))();
  }

  if (v104[0] && v107)
  {
    (*(*v104[0] + 40))();
  }

  result = v108[0];
  if (v108[0])
  {
    if (v111)
    {
      return (*(*v108[0] + 40))();
    }
  }

  return result;
}

{
  v21 = 0;
  v18 = 0;
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  re::makeMeshFromFaces(a1, a2, a3, v19, v16, a6);
  re::GeomIndexMap::GeomIndexMap(v12, v19);
  re::GeomIndexMap::operator=(a4, v12);
  if (v13)
  {
    if (v13 == 2)
    {
      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v14);
    }

    else
    {
      if (v13 != 1)
      {
        re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
        _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
        __break(1u);
        goto LABEL_23;
      }

      if (v14[0] && v15)
      {
        (*(*v14[0] + 40))();
      }
    }
  }

  re::GeomIndexMap::GeomIndexMap(v12, v16);
  re::GeomIndexMap::operator=(a5, v12);
  if (v13)
  {
    if (v13 != 2)
    {
      if (v13 == 1)
      {
        if (v14[0] && v15)
        {
          (*(*v14[0] + 40))();
        }

        goto LABEL_15;
      }

LABEL_23:
      re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
      result = _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
      __break(1u);
      return result;
    }

    v10.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v14);
  }

LABEL_15:
  if (v16[0] && v18)
  {
    (*(*v16[0] + 40))(v16[0], v10);
  }

  result = v19[0];
  if (v19[0])
  {
    if (v21)
    {
      return (*(*v19[0] + 40))(v19[0], v10);
    }
  }

  return result;
}

void re::remapIndexMap(int *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v95 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  if (*(a1 + 12))
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = *a2;
  if (*a2)
  {
    v9 = *(a2 + 12) == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 && v6 == v8)
  {
    v32 = 0;
    *a3 = 0xFFFFFFFF00000000;
    *(a3 + 8) = -1;
    *(a3 + 12) = 0;
    if (v6 - 1 <= 0xFFFFFFFD)
    {
      *(a3 + 4) = 0;
      *(a3 + 8) = v6 - 1;
      v32 = v6;
      *a3 = v6;
    }

    *(a3 + 16) = v32;
    return;
  }

  if (v6)
  {
LABEL_15:
    if (a1[1] || a1[2] + 1 != v6)
    {
      goto LABEL_30;
    }

    v8 = *a2;
  }

  if (v8 && (a2[1] || a2[2] + 1 != v8))
  {
LABEL_30:
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v21 = v6;
    v23 = *(a1 + 12);
    if (!*(a1 + 12))
    {
      LOBYTE(v82) = 0;
      LODWORD(v83) = 0;
      v39 = a1[4];
      LOBYTE(v88) = 0;
      *&v89[4] = v39;
      goto LABEL_65;
    }

    if (v23 == 2)
    {
      v83 = a1 + 4;
      v84 = 0;
      v33 = *(a1 + 4);
      if (v33 <= 0xF)
      {
LABEL_47:
        v38 = -1;
      }

      else
      {
        v34 = 0;
        v35 = *(a1 + 2);
        v36 = v33 >> 4;
        while (1)
        {
          v37 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v35), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v84 = v37 ^ 0xFFFFLL;
          if (v37 != 0xFFFFLL)
          {
            break;
          }

          v34 -= 16;
          ++v35;
          if (!--v36)
          {
            goto LABEL_47;
          }
        }

        v38 = __clz(__rbit64(v37 ^ 0xFFFFLL)) - v34;
      }

      v85 = v38;
      LOBYTE(v82) = 2;
      LOBYTE(v88) = 2;
      *&v89[4] = a1 + 4;
      *&v89[12] = xmmword_1E3049610;
      goto LABEL_65;
    }

    if (v23 != 1)
    {
      goto LABEL_102;
    }

    if (*a1)
    {
      v24 = *(a1 + 6);
      v25 = a1[1];
      v26 = *(a1 + 4);
      v27 = &v24[v26];
      LOBYTE(v82) = 1;
      if (v24)
      {
        v28 = &v24[v25];
        if (v26 != v25)
        {
          v28 -= 4;
          v29 = 4 * v26 - 4 * v25;
          do
          {
            v31 = *(v28 + 4);
            v28 += 4;
            v30 = v31;
            if (!v29)
            {
              break;
            }

            v29 -= 4;
          }

          while (v30 == -1);
        }
      }

      else
      {
        v28 = 0;
      }

      v83 = v24;
      v84 = v28;
      v85 = v27;
      v40 = *(a1 + 6);
      v41 = v40 + 4 * *(a1 + 4);
      LOBYTE(v88) = 1;
      *&v89[4] = v40;
      *&v89[12] = v41;
      *&v89[20] = v41;
    }

    else
    {
      LOBYTE(v82) = 1;
      v84 = 0;
      v85 = 0;
      v83 = 0;
      LOBYTE(v88) = 1;
      memset(&v89[4], 0, 24);
    }

    while (1)
    {
LABEL_65:
      if (re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator==(&v82, &v88))
      {
        re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v88, v48);
        re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v82, v49);
        re::GeomIndexMap::GeomIndexMap(a3, &v90);
        re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v90);
        return;
      }

      v78 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v82, v48);
      v43 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v82, v42);
      v45 = HIDWORD(v43);
      LODWORD(v75) = HIDWORD(v43);
      v46 = *(a2 + 12);
      if (v46 == 2)
      {
        break;
      }

      if (v46 == 1)
      {
        if (*(a2 + 4) > v45)
        {
          LODWORD(v45) = *(*(a2 + 6) + 4 * v45);
          goto LABEL_64;
        }

LABEL_63:
        LODWORD(v45) = -1;
        goto LABEL_64;
      }

      if (*(a2 + 12))
      {
        goto LABEL_100;
      }

      if (a2[4] <= HIDWORD(v43))
      {
        LODWORD(v45) = -1;
      }

LABEL_64:
      LODWORD(v75) = v45;
      re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::addNew(&v90, &v78, &v75);
      re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::increment(&v82);
    }

    v47 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(a2 + 2, &v75);
    if (v47 != -1)
    {
      LODWORD(v45) = *(*(a2 + 3) + 8 * v47 + 4);
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  v86 = 0;
  v83 = 0;
  v84 = 0;
  v82 = 0;
  LODWORD(v85) = 0;
  re::DynamicArray<unsigned int>::resize(&v82, v6, &re::kInvalidMeshIndex);
  v12 = *(a1 + 12);
  if (*(a1 + 12))
  {
    if (v12 == 2)
    {
      v79 = a1 + 4;
      v80 = 0;
      v50 = *(a1 + 4);
      if (v50 <= 0xF)
      {
LABEL_72:
        v55 = -1;
      }

      else
      {
        v51 = 0;
        v52 = *(a1 + 2);
        v53 = v50 >> 4;
        while (1)
        {
          v54 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v52), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v80 = v54 ^ 0xFFFFLL;
          if (v54 != 0xFFFFLL)
          {
            break;
          }

          v51 -= 16;
          ++v52;
          if (!--v53)
          {
            goto LABEL_72;
          }
        }

        v55 = __clz(__rbit64(v54 ^ 0xFFFFLL)) - v51;
      }

      v81 = v55;
      LOBYTE(v78) = 2;
      LOBYTE(v75) = 2;
      v76 = a1 + 4;
      v77 = xmmword_1E3049610;
    }

    else
    {
      if (v12 != 1)
      {
        goto LABEL_103;
      }

      if (*a1)
      {
        v13 = *(a1 + 6);
        v14 = a1[1];
        v15 = *(a1 + 4);
        v16 = &v13[v15];
        LOBYTE(v78) = 1;
        if (v13)
        {
          v17 = &v13[v14];
          if (v15 != v14)
          {
            v17 -= 4;
            v18 = 4 * v15 - 4 * v14;
            do
            {
              v20 = *(v17 + 4);
              v17 += 4;
              v19 = v20;
              if (!v18)
              {
                break;
              }

              v18 -= 4;
            }

            while (v19 == -1);
          }
        }

        else
        {
          v17 = 0;
        }

        v79 = v13;
        v80 = v17;
        v81 = v16;
        v57 = *(a1 + 6);
        v58 = &v57[*(a1 + 4)];
        LOBYTE(v75) = 1;
        v76 = v57;
        *&v77 = v58;
        *(&v77 + 1) = v58;
      }

      else
      {
        LOBYTE(v78) = 1;
        v80 = 0;
        v81 = 0;
        v79 = 0;
        LOBYTE(v75) = 1;
        v77 = 0uLL;
        v76 = 0;
      }
    }
  }

  else
  {
    LOBYTE(v78) = 0;
    LODWORD(v79) = 0;
    v56 = a1[4];
    LOBYTE(v75) = 0;
    LODWORD(v76) = v56;
  }

  if (re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator==(&v78, &v75))
  {
LABEL_93:
    re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v75, v59);
    re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v78, v69);
    re::GeomIndexMap::GeomIndexMap(a3, &v82);
    if (v82)
    {
      if (v86)
      {
        (*(*v82 + 40))();
      }
    }

    return;
  }

  while (1)
  {
    v60 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v78, v59);
    v62 = HIDWORD(v60);
    LODWORD(v90) = HIDWORD(v60);
    v63 = *(a2 + 12);
    if (v63 == 2)
    {
      v65 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(a2 + 2, &v90);
      if (v65 != -1)
      {
        v64 = *(*(a2 + 3) + 8 * v65 + 4);
        goto LABEL_91;
      }

      goto LABEL_90;
    }

    if (v63 == 1)
    {
      if (*(a2 + 4) > v62)
      {
        v64 = *(*(a2 + 6) + 4 * v62);
        goto LABEL_91;
      }

LABEL_90:
      v64 = -1;
      goto LABEL_91;
    }

    if (*(a2 + 12))
    {
      break;
    }

    if (a2[4] <= HIDWORD(v60))
    {
      v64 = -1;
    }

    else
    {
      v64 = HIDWORD(v60);
    }

LABEL_91:
    v66 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v78, v61);
    v67 = v66;
    v68 = v84;
    if (v84 <= v66)
    {
      v87 = 0;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v90 = 0u;
      v70 = MEMORY[0x1E69E9C10];
      v71 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v88 = 136315906;
      *v89 = "operator[]";
      *&v89[8] = 1024;
      if (v71)
      {
        v72 = 3;
      }

      else
      {
        v72 = 2;
      }

      *&v89[10] = 789;
      *&v89[14] = 2048;
      *&v89[16] = v67;
      *&v89[24] = 2048;
      *&v89[26] = v68;
      _os_log_send_and_compose_impl(v72, &v87, &v90, 80, &dword_1E1C61000, v70, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v88, 38, v73, v74);
      _os_crash_msg();
      __break(1u);
LABEL_100:
      re::internal::assertLog(4, v44, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
      _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
      __break(1u);
    }

    *(v86 + 4 * v66) = v64;
    re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::increment(&v78);
    if (re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator==(&v78, &v75))
    {
      goto LABEL_93;
    }
  }

  re::internal::assertLog(4, v61, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680, v75, v76);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_102:
  re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "begin", 699);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_103:
  re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "begin", 699);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
}

uint64_t re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(unsigned __int8 *a1, uint64_t a2)
{
  v4 = *a1;
  if (v4 == 2)
  {
    v8 = (*(*(a1 + 1) + 8) + 8 * *(a1 + 3));
    LODWORD(v5) = *v8;
    v6 = v8[1];
    return v5 | (v6 << 32);
  }

  if (v4 == 1)
  {
    v7 = *(a1 + 2);
    v5 = (v7 - *(a1 + 1)) >> 2;
    v6 = *v7;
    return v5 | (v6 << 32);
  }

  if (!*a1)
  {
    LODWORD(v5) = *(a1 + 2);
    v6 = v5;
    return v5 | (v6 << 32);
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "operator*", 177, v2, v3);
  result = _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
  return result;
}

void re::internal::wrapGeometryAroundCylinder(int8x16_t **this, int8x16_t **a2, re::GeomMesh *a3, float a4)
{
  v4 = a3;
  v51 = *MEMORY[0x1E69E9840];
  if (this != a2)
  {
    re::GeomMesh::copy(this, a2);
  }

  if (fabsf(a4) >= 0.00001)
  {
    re::computeAABB(&v34, this);
    v8 = v35;
    v9 = v34.f32[0];
    if (vabds_f32(v35, v34.f32[0]) >= 0.00001)
    {
      v10 = v35 - v34.f32[0];
      v11 = re::GeomMesh::modifyVertexPositions(a2);
      v13 = *(this + 4);
      v14 = (v8 + v9) * 0.5;
      v15 = (v36 + v34.f32[2]) * 0.5;
      v16 = v10 / a4;
      if (v4)
      {
        if (v13)
        {
          v17 = v16 + v15;
          v18 = v12;
          v19 = (v11 + 8);
          v20 = v12;
          while (v20)
          {
            v21 = v17 - *v19;
            v22 = __sincosf_stret(((*(v19 - 2) - v14) / v10) * a4);
            *(v19 - 2) = v14 + (v21 * v22.__sinval);
            *v19 = v17 - (v21 * v22.__cosval);
            v19 += 4;
            --v20;
            if (!--v13)
            {
              goto LABEL_15;
            }
          }

          v37 = 0;
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v46 = 0u;
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

          v41 = 621;
          v42 = 2048;
          v43 = v18;
          v44 = 2048;
          v45 = v18;
          _os_log_send_and_compose_impl(v30, &v37, &v46, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v38, 38, v34.u64[0], v34.u64[1]);
          _os_crash_msg();
          __break(1u);
          goto LABEL_21;
        }
      }

      else if (v13)
      {
        v23 = v15 - v16;
        v18 = v12;
        v24 = (v11 + 8);
        v25 = v12;
        while (v25)
        {
          v26 = *v24 - v23;
          v27 = __sincosf_stret(((*(v24 - 2) - v14) / v10) * a4);
          *(v24 - 2) = v14 + (v26 * v27.__sinval);
          *v24 = v23 + (v26 * v27.__cosval);
          v24 += 4;
          --v25;
          if (!--v13)
          {
            goto LABEL_15;
          }
        }

LABEL_21:
        v37 = 0;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v46 = 0u;
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

        v41 = 621;
        v42 = 2048;
        v43 = v18;
        v44 = 2048;
        v45 = v18;
        _os_log_send_and_compose_impl(v33, &v37, &v46, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v38, 38, v34.u64[0], v34.u64[1]);
        _os_crash_msg();
        __break(1u);
      }

LABEL_15:
      re::internal::GeomAttributeManager::deleteAttribute((a2 + 8), "vertexNormal");
      re::internal::GeomAttributeManager::deleteAttribute((a2 + 8), "vertexBitangent");
      re::internal::GeomAttributeManager::deleteAttribute((a2 + 8), "vertexTangent");
    }
  }
}

uint64_t re::GeomAttribute::modifyValues<re::Vector3<float>>(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!(*(*a1 + 16))(a1))
  {
    return 0;
  }

  if (!a1[5])
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

  v2 = a1[7];
  (*(*a1 + 16))(a1);
  return v2;
}

float32x4_t re::anonymous namespace::transformTangentsArray(uint64_t a1, float32x4_t *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = *(a1 + 8);
      if (i >= v4)
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

        v13 = 621;
        v14 = 2048;
        v15 = i;
        v16 = 2048;
        v17 = v4;
        _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
        _os_crash_msg();
        __break(1u);
      }

      result = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a2, COERCE_FLOAT(*(*a1 + 16 * i))), a2[1], *(*a1 + 16 * i), 1), a2[2], *(*a1 + 16 * i), 2);
      *(*a1 + 16 * i) = result;
    }
  }

  return result;
}

uint64_t re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator==(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  if (v4 != *a2)
  {
    return 0;
  }

  if (v4 == 2)
  {
    return *(a1 + 3) == a2[3];
  }

  if (v4 == 1)
  {
    if (*(a1 + 1) != a2[1] || *(a1 + 2) != a2[2])
    {
      return 0;
    }

    return *(a1 + 3) == a2[3];
  }

  if (*a1)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "operator==", 197, v2, v3);
    result = _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
    return result;
  }

  return *(a1 + 2) == *(a2 + 2);
}

void *re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::increment(void *this)
{
  v1 = *this;
  if (v1 == 2)
  {
    return re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(this + 1);
  }

  if (v1 == 1)
  {
    v2 = this[2];
    if (v2)
    {
      v3 = this[3];
      if (v2 != v3)
      {
        v4 = v2 + 1;
        do
        {
          this[2] = v4;
          if (v4 == v3)
          {
            break;
          }

          v5 = *v4++;
        }

        while (v5 == -1);
      }
    }
  }

  else if (!*this)
  {
    ++*(this + 2);
  }

  return this;
}

void re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(re::GeomIndexMap::ConstantOrHashTableOrArrayIterator *this, uint64_t a2)
{
  if (*this >= 3u)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~ConstantOrHashTableOrArrayIterator", 147, v2, v3);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
  }
}

unsigned int *re::GeomIndexMap::GeomIndexMap(unsigned int *a1, uint64_t *a2)
{
  v2 = a2;
  v71 = *MEMORY[0x1E69E9840];
  *(a1 + 1) = -1;
  *(a1 + 12) = 2;
  v54 = 0;
  v51[1] = 0;
  v52 = 0;
  v51[0] = 0;
  v53 = 0;
  if (re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(a2, &re::kInvalidMeshIndex) != -1)
  {
    re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::remove(v2, &re::kInvalidMeshIndex);
  }

  *&v66 = v2;
  v6 = *(v2 + 16);
  if (v6 >= 0x10)
  {
    v7 = 0;
    v8 = *v2;
    v9 = v6 >> 4;
    v4 = xmmword_1E304FAD0;
    v5.n128_u64[0] = 0x3830282018100800;
    while (1)
    {
      v10 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v8), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      *(&v66 + 1) = v10 ^ 0xFFFFLL;
      if (v10 != 0xFFFFLL)
      {
        break;
      }

      v7 -= 16;
      ++v8;
      if (!--v9)
      {
        goto LABEL_27;
      }
    }

    v11 = __clz(__rbit64(v10 ^ 0xFFFFLL));
    v12 = v11 - v7;
    *&v67 = v11 - v7;
    if (v11 + 1 != v7)
    {
      do
      {
        v13 = (*(v66 + 8) + 8 * v12);
        v14 = *v13;
        *v56 = *v13;
        if (v13[1] == -1)
        {
          re::DynamicArray<int>::add(v51, v56);
        }

        else
        {
          v15 = a1[1];
          if (v15 == -1 || v14 < v15)
          {
            a1[1] = v14;
          }

          v17 = a1[2];
          if (v17 == -1 || v14 > v17)
          {
            a1[2] = v14;
          }
        }

        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v66);
        v12 = v67;
      }

      while (v67 != -1);
      v19 = v52;
      if (v52)
      {
        v20 = 0;
        while (1)
        {
          v21 = v52;
          if (v52 <= v20)
          {
            break;
          }

          re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::remove(v2, (v54 + 4 * v20++));
          if (v20 == v19)
          {
            goto LABEL_27;
          }
        }

        *v59 = 0;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v66 = 0u;
        v40 = MEMORY[0x1E69E9C10];
        v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v56 = 136315906;
        *&v56[4] = "operator[]";
        *&v56[12] = 1024;
        if (v41)
        {
          v42 = 3;
        }

        else
        {
          v42 = 2;
        }

        *&v56[14] = 789;
        *&v56[18] = 2048;
        *&v56[20] = v20;
        v57 = 2048;
        *v58 = v21;
        _os_log_send_and_compose_impl(v42, v59, &v66, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v56, 38, v46, v48);
        _os_crash_msg();
        __break(1u);
LABEL_60:
        v55 = 0;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v66 = 0u;
        v43 = MEMORY[0x1E69E9C10];
        v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v59 = 136315906;
        *&v59[4] = "operator[]";
        v60 = 1024;
        if (v44)
        {
          v45 = 3;
        }

        else
        {
          v45 = 2;
        }

        v61 = 789;
        v62 = 2048;
        v63 = v2;
        v64 = 2048;
        v65 = v20;
        _os_log_send_and_compose_impl(v45, &v55, &v66, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v59, 38, v47, *(&v47 + 1));
        _os_crash_msg();
        __break(1u);
      }
    }
  }

LABEL_27:
  v22 = a1[1];
  if (v22 == -1)
  {
    *(a1 + 12) = 0;
    a1[2] = -1;
    a1[4] = 0;
    *a1 = 0;
  }

  else
  {
    v23 = a1[2] - v22 + 1;
    *a1 = v23;
    v24 = *(v2 + 24);
    if (!v22 && v24 == v23)
    {
      *&v66 = v2;
      v25 = *(v2 + 16);
      if (v25 < 0x10)
      {
        goto LABEL_42;
      }

      v26 = 0;
      v27 = *v2;
      v28 = v25 >> 4;
      v5 = xmmword_1E304FAD0;
      while (1)
      {
        v4 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v27), xmmword_1E304FAD0))));
        v4.n128_u64[0] = vqtbl1_s8(v4, 0x3830282018100800);
        *(&v66 + 1) = v4.n128_u16[0] ^ 0xFFFFLL;
        if (v4.n128_u16[0] != 0xFFFFLL)
        {
          break;
        }

        v26 -= 16;
        ++v27;
        if (!--v28)
        {
LABEL_42:
          *(a1 + 12) = 0;
          a1[4] = v23;
          goto LABEL_43;
        }
      }

      v29 = __clz(__rbit64(v4.n128_u16[0] ^ 0xFFFFLL));
      v30 = v29 - v26;
      *&v67 = v29 - v26;
      if (v29 + 1 == v26)
      {
        goto LABEL_42;
      }

      v47 = xmmword_1E304FAD0;
      while (*(*(v66 + 8) + 8 * v30) == *(*(v66 + 8) + 8 * v30 + 4))
      {
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v66);
        v30 = v67;
        if (v67 == -1)
        {
          LODWORD(v23) = *a1;
          goto LABEL_42;
        }
      }

      *&v58[2] = 0;
      memset(v56, 0, sizeof(v56));
      re::DynamicArray<unsigned int>::resize(v56, *a1, &re::kInvalidMeshIndex);
      v49[0] = v2;
      v32 = *(v2 + 16);
      v5 = xmmword_1E304FAD0;
      if (v32 < 0x10)
      {
        goto LABEL_55;
      }

      v33 = 0;
      v34 = *v2;
      v35 = v32 >> 4;
      while (1)
      {
        v36 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v34), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
        v49[1] = v36 ^ 0xFFFFLL;
        if (v36 != 0xFFFFLL)
        {
          break;
        }

        v33 -= 16;
        ++v34;
        if (!--v35)
        {
          goto LABEL_55;
        }
      }

      v37 = __clz(__rbit64(v36 ^ 0xFFFFLL));
      v38 = v37 - v33;
      v50 = v37 - v33;
      if (v37 + 1 == v33)
      {
LABEL_55:
        *(a1 + 12) = 1;
        *(a1 + 2) = *v56;
        v4 = *&v56[8];
        *(a1 + 6) = *&v56[8];
        *(a1 + 6) = *&v58[2];
        a1[10] = 1;
        goto LABEL_43;
      }

      while (1)
      {
        v39 = (*(v49[0] + 8) + 8 * v38);
        v2 = *v39;
        v20 = *&v56[16];
        if (*&v56[16] <= v2)
        {
          goto LABEL_60;
        }

        *(*&v58[2] + 4 * v2) = v39[1];
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v49);
        v38 = v50;
        if (v50 == -1)
        {
          goto LABEL_55;
        }
      }
    }

    *a1 = v24;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap(a1 + 2, v2);
  }

LABEL_43:
  if (v51[0] && v54)
  {
    (*(*v51[0] + 40))(v4, v5);
  }

  return a1;
}

BOOL re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::remove(uint64_t a1, unsigned int *a2)
{
  v3 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(a1, a2);
  v4 = v3;
  if (v3 != -1)
  {
    v5 = (*a1 + (v3 & 0xFFFFFFFFFFFFFFF0));
    v6.i64[0] = -1;
    v6.i64[1] = -1;
    v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v5, v6), xmmword_1E304FAD0)))), 0x3830282018100800);
    if (v7)
    {
      v8 = -1;
    }

    else
    {
      v8 = 0x80;
    }

    v5->i8[v3 & 0xF] = v8;
    v9 = *(a1 + 16);
    v10 = *(*(a1 + 8) + 8 * v3);
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
    *(a1 + 40) ^= (v11 >> 31) ^ v11;
    v6.i64[1] = *&v7 != 0;
    v12 = vaddq_s64(*(a1 + 24), v6);
    *(a1 + 24) = v12;
    if (v9 >= 0x11 && v12.i64[0] < v9 >> 2)
    {
      re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::resize(a1, 0);
    }
  }

  return v4 != -1;
}

uint64_t re::internal::GeomKDTree<float>::buildHelper(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v105 = *MEMORY[0x1E69E9840];
  if (a3 <= a2)
  {
    return 0;
  }

  v6 = a5;
  v8 = *a5;
  *a5 = v8 + 1;
  v9 = a1[4];
  if (v9 <= v8)
  {
    v91 = 0;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v100 = 0u;
    v81 = MEMORY[0x1E69E9C10];
    v92 = 136315906;
    v93 = "operator[]";
    v94 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v82 = 3;
    }

    else
    {
      v82 = 2;
    }

    v95 = 789;
    v96 = 2048;
    v97 = v8;
    v98 = 2048;
    v99 = v9;
    _os_log_send_and_compose_impl(v82, &v91, &v100, 80, &dword_1E1C61000, v81, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v92, 38, v90);
    _os_crash_msg();
    __break(1u);
    goto LABEL_104;
  }

  v11 = a1[6] + 24 * v8;
  if (a3 - a2 != 1)
  {
    v13 = (a3 + a2) >> 1;
    v14 = *(a4 + 32);
    v15 = a3;
    if (v13 == a3)
    {
      goto LABEL_97;
    }

    v16 = (v14 + 4 * a3);
    v17 = (v14 + 4 * v13);
    v18 = (v14 + 4 * a2);
    while (1)
    {
      v19 = v16 - v18;
      if (v19 < 2)
      {
        goto LABEL_96;
      }

      if (v19 == 3)
      {
        v62 = *v18;
        v63 = v18[1];
        v64 = *a1;
        v65 = *(*a1 + 4 * v63);
        v66 = *(*a1 + 4 * v62);
        v67 = *(v16 - 1);
        v68 = *(*a1 + 4 * v67);
        if (v65 >= v66)
        {
          if (v68 < v65)
          {
            v18[1] = v67;
            *(v16 - 1) = v63;
            v78 = *v18;
            v77 = v18[1];
            if (*(v64 + 4 * v77) < *(v64 + 4 * v78))
            {
              *v18 = v77;
              v18[1] = v78;
            }
          }

          goto LABEL_96;
        }

        if (v68 >= v65)
        {
          *v18 = v63;
          v18[1] = v62;
          v79 = *(v16 - 1);
          if (*(v64 + 4 * v79) >= v66)
          {
            goto LABEL_96;
          }

          v18[1] = v79;
        }

        else
        {
          *v18 = v67;
        }

LABEL_95:
        *(v16 - 1) = v62;
        goto LABEL_96;
      }

      if (v19 == 2)
      {
        v69 = *(v16 - 1);
        v62 = *v18;
        if (*(*a1 + 4 * v69) >= *(*a1 + 4 * v62))
        {
          goto LABEL_96;
        }

        *v18 = v69;
        goto LABEL_95;
      }

      if (v19 <= 7)
      {
        for (; v18 != v16 - 1; ++v18)
        {
          if (v18 != v16)
          {
            v70 = v18 + 1;
            if (v18 + 1 != v16)
            {
              v71 = *v18;
              v72 = *v18;
              v73 = v18;
              v74 = v18 + 1;
              do
              {
                v76 = *v74++;
                v75 = v76;
                if (*(*a1 + 4 * v76) < *(*a1 + 4 * v72))
                {
                  v72 = v75;
                  v73 = v70;
                }

                v70 = v74;
              }

              while (v74 != v16);
              if (v73 != v18)
              {
                *v18 = *v73;
                *v73 = v71;
              }
            }
          }
        }

        goto LABEL_96;
      }

      v20 = &v18[v19 >> 1];
      v21 = v16 - 1;
      v22 = *(v16 - 1);
      v23 = *v20;
      v24 = *a1;
      v25 = *(*a1 + 4 * v23);
      v26 = *v18;
      v27 = *(*a1 + 4 * v26);
      v28 = *(*a1 + 4 * v22);
      if (v25 < v27)
      {
        break;
      }

      if (v28 < v25)
      {
        *v20 = v22;
        *v21 = v23;
        v29 = *v20;
        v30 = *v18;
        if (*(v24 + 4 * v29) < *(v24 + 4 * v30))
        {
          *v18 = v29;
          *v20 = v30;
        }

        goto LABEL_22;
      }

      v32 = 0;
LABEL_24:
      v33 = *v18;
      v34 = *(v24 + 4 * v33);
      v35 = *(v24 + 4 * *v20);
      if (v34 >= v35)
      {
        v36 = v16 - 1;
        while (--v36 != v18)
        {
          v37 = *v36;
          if (*(v24 + 4 * v37) < v35)
          {
            *v18 = v37;
            *v36 = v33;
            if (v32)
            {
              v32 = 2;
            }

            else
            {
              v32 = 1;
            }

            goto LABEL_32;
          }
        }

        v50 = v18 + 1;
        v51 = *v21;
        if (v34 >= *(v24 + 4 * v51))
        {
          while (v50 != v21)
          {
            v52 = *v50;
            if (v34 < *(v24 + 4 * v52))
            {
              *v50++ = v51;
              *v21 = v52;
              goto LABEL_64;
            }

            ++v50;
          }

LABEL_96:
          v15 = v13;
LABEL_97:
          v9 = *(a4 + 16);
          if (v9 > v15)
          {
            *(v11 + 16) = *(v14 + 4 * v15);
            *v11 = re::internal::GeomKDTree<float>::buildHelper(a1, a2, v13, a4, v6);
            *(v11 + 8) = re::internal::GeomKDTree<float>::buildHelper(a1, (v13 + 1), a3, a4, v6);
            return v11;
          }

LABEL_108:
          v91 = 0;
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v100 = 0u;
          v86 = MEMORY[0x1E69E9C10];
          v87 = v15;
          v88 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v92 = 136315906;
          v93 = "operator[]";
          v94 = 1024;
          if (v88)
          {
            v89 = 3;
          }

          else
          {
            v89 = 2;
          }

          v95 = 789;
          v96 = 2048;
          v97 = v87;
          v98 = 2048;
          v99 = v9;
          _os_log_send_and_compose_impl(v89, &v91, &v100, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v92, 38, v90);
          _os_crash_msg();
          __break(1u);
        }

LABEL_64:
        if (v50 == v21)
        {
          goto LABEL_96;
        }

        while (1)
        {
          v56 = *(v24 + 4 * *v18);
          do
          {
            v58 = *v50++;
            v57 = v58;
          }

          while (v56 >= *(v24 + 4 * v58));
          v59 = v50 - 1;
          do
          {
            v61 = *--v21;
            v60 = v61;
          }

          while (v56 < *(v24 + 4 * v61));
          if (v59 >= v21)
          {
            break;
          }

          *v59 = v60;
          *v21 = v57;
        }

        v18 = v50 - 1;
        if (v59 > v17)
        {
          goto LABEL_96;
        }
      }

      else
      {
        v36 = v16 - 1;
LABEL_32:
        v38 = v18 + 1;
        if (v18 + 1 >= v36)
        {
          v43 = v18 + 1;
        }

        else
        {
          v39 = v18 + 1;
          while (1)
          {
            v40 = *(v24 + 4 * *v20);
            do
            {
              v42 = *v39++;
              v41 = v42;
            }

            while (*(v24 + 4 * v42) < v40);
            v43 = v39 - 1;
            do
            {
              v45 = *--v36;
              v44 = v45;
            }

            while (*(v24 + 4 * v45) >= v40);
            if (v43 >= v36)
            {
              break;
            }

            *v43 = v44;
            *v36 = v41;
            ++v32;
            if (v43 == v20)
            {
              v20 = v36;
            }
          }
        }

        if (v43 != v20)
        {
          v46 = *v20;
          v47 = *v43;
          if (*(v24 + 4 * v46) < *(v24 + 4 * v47))
          {
            *v43 = v46;
            *v20 = v47;
            ++v32;
          }
        }

        if (v43 == v17)
        {
          goto LABEL_96;
        }

        if (!v32)
        {
          if (v43 <= v17)
          {
            v53 = v43 + 1;
            while (v53 != v16)
            {
              v54 = *(v24 + 4 * *v53);
              v55 = *(v24 + 4 * *(v53++ - 1));
              if (v54 < v55)
              {
                goto LABEL_48;
              }
            }
          }

          else
          {
            while (v38 != v43)
            {
              v48 = *(v24 + 4 * *v38);
              v49 = *(v24 + 4 * *(v38++ - 1));
              if (v48 < v49)
              {
                goto LABEL_48;
              }
            }
          }

          goto LABEL_96;
        }

LABEL_48:
        if (v43 > v17)
        {
          v16 = v43;
        }

        else
        {
          v18 = v43 + 1;
        }
      }

      if (v16 == v17)
      {
        goto LABEL_96;
      }
    }

    if (v28 >= v25)
    {
      *v18 = v23;
      *v20 = v26;
      v31 = *v21;
      if (*(v24 + 4 * v31) >= v27)
      {
LABEL_22:
        v32 = 1;
        goto LABEL_24;
      }

      *v20 = v31;
    }

    else
    {
      *v18 = v22;
    }

    *v21 = v26;
    goto LABEL_22;
  }

  v6 = a2;
  v5 = *(a4 + 16);
  if (v5 <= a2)
  {
LABEL_104:
    v91 = 0;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v100 = 0u;
    v83 = MEMORY[0x1E69E9C10];
    v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v92 = 136315906;
    v93 = "operator[]";
    v94 = 1024;
    if (v84)
    {
      v85 = 3;
    }

    else
    {
      v85 = 2;
    }

    v95 = 789;
    v96 = 2048;
    v97 = v6;
    v98 = 2048;
    v99 = v5;
    _os_log_send_and_compose_impl(v85, &v91, &v100, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v92, 38, v90);
    _os_crash_msg();
    __break(1u);
    goto LABEL_108;
  }

  *(v11 + 16) = *(*(a4 + 32) + 4 * a2);
  *v11 = 0;
  *(v11 + 8) = 0;
  return v11;
}

void *re::DynamicArray<re::internal::GeomKDTree<float>::Node>::setCapacity(void *result, unint64_t a2)
{
  v2 = result[1];
  if (v2 != a2)
  {
    v4 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v4)
      {
        if (!a2)
        {
          v6 = 0;
          if (!v2)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

        result = (*(*result + 32))(result, 24 * a2, 8);
        if (result)
        {
          v6 = result;
          if (!v4[1])
          {
LABEL_8:
            v4[4] = v6;
            v4[1] = a2;
            return result;
          }

LABEL_7:
          memcpy(v6, v4[4], 24 * v4[2]);
          result = (*(**v4 + 40))(*v4, v4[4]);
          goto LABEL_8;
        }

        re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, 24 * a2, *(*v4 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v7, v8);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::internal::GeomKDTree<float>::Node>::setCapacity(v4, a2);
        ++*(v4 + 6);
      }
    }
  }

  return result;
}

void *re::internal::GeomKDTree<float>::findWithinRadiusHelper(void *result, uint64_t **a2, float *a3, _anonymous_namespace_ *a4, double a5)
{
  if (a2)
  {
    v8 = a2;
    v9 = result;
    v10 = -a5;
    v11 = a5 * a5;
    do
    {
      v12 = *(*v9 + 4 * *(v8 + 4));
      if (v12 == *a3)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = (*a3 - v12);
      }

      if (v13 >= v10)
      {
        if (v13 <= a5)
        {
          if (v13 * v13 <= v11)
          {
            re::DynamicArray<int>::add(a4, v8 + 4);
          }

          v14 = *v8++;
          result = re::internal::GeomKDTree<float>::findWithinRadiusHelper(v9, v14, a3, a4, a5);
        }

        else
        {
          ++v8;
        }
      }

      v8 = *v8;
    }

    while (v8);
  }

  return result;
}

uint64_t re::internal::GeomKDTree<double>::buildHelper(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v105 = *MEMORY[0x1E69E9840];
  if (a3 <= a2)
  {
    return 0;
  }

  v6 = a5;
  v8 = *a5;
  *a5 = v8 + 1;
  v9 = a1[4];
  if (v9 <= v8)
  {
    v91 = 0;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v100 = 0u;
    v81 = MEMORY[0x1E69E9C10];
    v92 = 136315906;
    v93 = "operator[]";
    v94 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v82 = 3;
    }

    else
    {
      v82 = 2;
    }

    v95 = 789;
    v96 = 2048;
    v97 = v8;
    v98 = 2048;
    v99 = v9;
    _os_log_send_and_compose_impl(v82, &v91, &v100, 80, &dword_1E1C61000, v81, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v92, 38, v90);
    _os_crash_msg();
    __break(1u);
    goto LABEL_104;
  }

  v11 = a1[6] + 24 * v8;
  if (a3 - a2 != 1)
  {
    v13 = (a3 + a2) >> 1;
    v14 = *(a4 + 32);
    v15 = a3;
    if (v13 == a3)
    {
      goto LABEL_97;
    }

    v16 = (v14 + 4 * a3);
    v17 = (v14 + 4 * v13);
    v18 = (v14 + 4 * a2);
    while (1)
    {
      v19 = v16 - v18;
      if (v19 < 2)
      {
        goto LABEL_96;
      }

      if (v19 == 3)
      {
        v62 = *v18;
        v63 = v18[1];
        v64 = *a1;
        v65 = *(*a1 + 8 * v63);
        v66 = *(*a1 + 8 * v62);
        v67 = *(v16 - 1);
        v68 = *(*a1 + 8 * v67);
        if (v65 >= v66)
        {
          if (v68 < v65)
          {
            v18[1] = v67;
            *(v16 - 1) = v63;
            v78 = *v18;
            v77 = v18[1];
            if (*(v64 + 8 * v77) < *(v64 + 8 * v78))
            {
              *v18 = v77;
              v18[1] = v78;
            }
          }

          goto LABEL_96;
        }

        if (v68 >= v65)
        {
          *v18 = v63;
          v18[1] = v62;
          v79 = *(v16 - 1);
          if (*(v64 + 8 * v79) >= v66)
          {
            goto LABEL_96;
          }

          v18[1] = v79;
        }

        else
        {
          *v18 = v67;
        }

LABEL_95:
        *(v16 - 1) = v62;
        goto LABEL_96;
      }

      if (v19 == 2)
      {
        v69 = *(v16 - 1);
        v62 = *v18;
        if (*(*a1 + 8 * v69) >= *(*a1 + 8 * v62))
        {
          goto LABEL_96;
        }

        *v18 = v69;
        goto LABEL_95;
      }

      if (v19 <= 7)
      {
        for (; v18 != v16 - 1; ++v18)
        {
          if (v18 != v16)
          {
            v70 = v18 + 1;
            if (v18 + 1 != v16)
            {
              v71 = *v18;
              v72 = *v18;
              v73 = v18;
              v74 = v18 + 1;
              do
              {
                v76 = *v74++;
                v75 = v76;
                if (*(*a1 + 8 * v76) < *(*a1 + 8 * v72))
                {
                  v72 = v75;
                  v73 = v70;
                }

                v70 = v74;
              }

              while (v74 != v16);
              if (v73 != v18)
              {
                *v18 = *v73;
                *v73 = v71;
              }
            }
          }
        }

        goto LABEL_96;
      }

      v20 = &v18[v19 >> 1];
      v21 = v16 - 1;
      v22 = *(v16 - 1);
      v23 = *v20;
      v24 = *a1;
      v25 = *(*a1 + 8 * v23);
      v26 = *v18;
      v27 = *(*a1 + 8 * v26);
      v28 = *(*a1 + 8 * v22);
      if (v25 < v27)
      {
        break;
      }

      if (v28 < v25)
      {
        *v20 = v22;
        *v21 = v23;
        v29 = *v20;
        v30 = *v18;
        if (*(v24 + 8 * v29) < *(v24 + 8 * v30))
        {
          *v18 = v29;
          *v20 = v30;
        }

        goto LABEL_22;
      }

      v32 = 0;
LABEL_24:
      v33 = *v18;
      v34 = *(v24 + 8 * v33);
      v35 = *(v24 + 8 * *v20);
      if (v34 >= v35)
      {
        v36 = v16 - 1;
        while (--v36 != v18)
        {
          v37 = *v36;
          if (*(v24 + 8 * v37) < v35)
          {
            *v18 = v37;
            *v36 = v33;
            if (v32)
            {
              v32 = 2;
            }

            else
            {
              v32 = 1;
            }

            goto LABEL_32;
          }
        }

        v50 = v18 + 1;
        v51 = *v21;
        if (v34 >= *(v24 + 8 * v51))
        {
          while (v50 != v21)
          {
            v52 = *v50;
            if (v34 < *(v24 + 8 * v52))
            {
              *v50++ = v51;
              *v21 = v52;
              goto LABEL_64;
            }

            ++v50;
          }

LABEL_96:
          v15 = v13;
LABEL_97:
          v9 = *(a4 + 16);
          if (v9 > v15)
          {
            *(v11 + 16) = *(v14 + 4 * v15);
            *v11 = re::internal::GeomKDTree<double>::buildHelper(a1, a2, v13, a4, v6);
            *(v11 + 8) = re::internal::GeomKDTree<double>::buildHelper(a1, (v13 + 1), a3, a4, v6);
            return v11;
          }

LABEL_108:
          v91 = 0;
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v100 = 0u;
          v86 = MEMORY[0x1E69E9C10];
          v87 = v15;
          v88 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v92 = 136315906;
          v93 = "operator[]";
          v94 = 1024;
          if (v88)
          {
            v89 = 3;
          }

          else
          {
            v89 = 2;
          }

          v95 = 789;
          v96 = 2048;
          v97 = v87;
          v98 = 2048;
          v99 = v9;
          _os_log_send_and_compose_impl(v89, &v91, &v100, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v92, 38, v90);
          _os_crash_msg();
          __break(1u);
        }

LABEL_64:
        if (v50 == v21)
        {
          goto LABEL_96;
        }

        while (1)
        {
          v56 = *(v24 + 8 * *v18);
          do
          {
            v58 = *v50++;
            v57 = v58;
          }

          while (v56 >= *(v24 + 8 * v58));
          v59 = v50 - 1;
          do
          {
            v61 = *--v21;
            v60 = v61;
          }

          while (v56 < *(v24 + 8 * v61));
          if (v59 >= v21)
          {
            break;
          }

          *v59 = v60;
          *v21 = v57;
        }

        v18 = v50 - 1;
        if (v59 > v17)
        {
          goto LABEL_96;
        }
      }

      else
      {
        v36 = v16 - 1;
LABEL_32:
        v38 = v18 + 1;
        if (v18 + 1 >= v36)
        {
          v43 = v18 + 1;
        }

        else
        {
          v39 = v18 + 1;
          while (1)
          {
            v40 = *(v24 + 8 * *v20);
            do
            {
              v42 = *v39++;
              v41 = v42;
            }

            while (*(v24 + 8 * v42) < v40);
            v43 = v39 - 1;
            do
            {
              v45 = *--v36;
              v44 = v45;
            }

            while (*(v24 + 8 * v45) >= v40);
            if (v43 >= v36)
            {
              break;
            }

            *v43 = v44;
            *v36 = v41;
            ++v32;
            if (v43 == v20)
            {
              v20 = v36;
            }
          }
        }

        if (v43 != v20)
        {
          v46 = *v20;
          v47 = *v43;
          if (*(v24 + 8 * v46) < *(v24 + 8 * v47))
          {
            *v43 = v46;
            *v20 = v47;
            ++v32;
          }
        }

        if (v43 == v17)
        {
          goto LABEL_96;
        }

        if (!v32)
        {
          if (v43 <= v17)
          {
            v53 = v43 + 1;
            while (v53 != v16)
            {
              v54 = *(v24 + 8 * *v53);
              v55 = *(v24 + 8 * *(v53++ - 1));
              if (v54 < v55)
              {
                goto LABEL_48;
              }
            }
          }

          else
          {
            while (v38 != v43)
            {
              v48 = *(v24 + 8 * *v38);
              v49 = *(v24 + 8 * *(v38++ - 1));
              if (v48 < v49)
              {
                goto LABEL_48;
              }
            }
          }

          goto LABEL_96;
        }

LABEL_48:
        if (v43 > v17)
        {
          v16 = v43;
        }

        else
        {
          v18 = v43 + 1;
        }
      }

      if (v16 == v17)
      {
        goto LABEL_96;
      }
    }

    if (v28 >= v25)
    {
      *v18 = v23;
      *v20 = v26;
      v31 = *v21;
      if (*(v24 + 8 * v31) >= v27)
      {
LABEL_22:
        v32 = 1;
        goto LABEL_24;
      }

      *v20 = v31;
    }

    else
    {
      *v18 = v22;
    }

    *v21 = v26;
    goto LABEL_22;
  }

  v6 = a2;
  v5 = *(a4 + 16);
  if (v5 <= a2)
  {
LABEL_104:
    v91 = 0;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v100 = 0u;
    v83 = MEMORY[0x1E69E9C10];
    v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v92 = 136315906;
    v93 = "operator[]";
    v94 = 1024;
    if (v84)
    {
      v85 = 3;
    }

    else
    {
      v85 = 2;
    }

    v95 = 789;
    v96 = 2048;
    v97 = v6;
    v98 = 2048;
    v99 = v5;
    _os_log_send_and_compose_impl(v85, &v91, &v100, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v92, 38, v90);
    _os_crash_msg();
    __break(1u);
    goto LABEL_108;
  }

  *(v11 + 16) = *(*(a4 + 32) + 4 * a2);
  *v11 = 0;
  *(v11 + 8) = 0;
  return v11;
}

void *re::internal::GeomKDTree<double>::findWithinRadiusHelper(void *result, uint64_t **a2, double *a3, _anonymous_namespace_ *a4, double a5)
{
  if (a2)
  {
    v8 = a2;
    v9 = result;
    v10 = -a5;
    v11 = a5 * a5;
    do
    {
      v12 = *(*v9 + 8 * *(v8 + 4));
      if (v12 == *a3)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = *a3 - v12;
      }

      if (v13 >= v10)
      {
        if (v13 <= a5)
        {
          if (v13 * v13 <= v11)
          {
            re::DynamicArray<int>::add(a4, v8 + 4);
          }

          v14 = *v8++;
          result = re::internal::GeomKDTree<double>::findWithinRadiusHelper(v9, v14, a3, a4, a5);
        }

        else
        {
          ++v8;
        }
      }

      v8 = *v8;
    }

    while (v8);
  }

  return result;
}

uint64_t re::internal::GeomKDTree<re::Vector2<float>>::buildHelper(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v126 = *MEMORY[0x1E69E9840];
  if (a3 <= a2)
  {
    return 0;
  }

  v6 = a5;
  v8 = *a5;
  *a5 = v8 + 1;
  v9 = a1[4];
  if (v9 <= v8)
  {
    v112 = 0;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v121 = 0u;
    v95 = MEMORY[0x1E69E9C10];
    v113 = 136315906;
    v114 = "operator[]";
    v115 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v96 = 3;
    }

    else
    {
      v96 = 2;
    }

    v116 = 789;
    v117 = 2048;
    v118 = v8;
    v119 = 2048;
    v120 = v9;
    _os_log_send_and_compose_impl(v96, &v112, &v121, 80, &dword_1E1C61000, v95, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v113, 38, v111);
    _os_crash_msg();
    __break(1u);
    goto LABEL_106;
  }

  v11 = a1[6] + 24 * v8;
  v9 = a2;
  if (a3 - a2 != 1)
  {
    v5 = *(a4 + 16);
    if (v5 <= a2)
    {
LABEL_110:
      v112 = 0;
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v121 = 0u;
      v13 = MEMORY[0x1E69E9C10];
      v100 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v113 = 136315906;
      v114 = "operator[]";
      v115 = 1024;
      if (v100)
      {
        v101 = 3;
      }

      else
      {
        v101 = 2;
      }

      v116 = 789;
      v117 = 2048;
      v118 = v9;
      v119 = 2048;
      v120 = v5;
      _os_log_send_and_compose_impl(v101, &v112, &v121, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v113, 38, v111);
      _os_crash_msg();
      __break(1u);
      goto LABEL_114;
    }

    v13 = (a3 + a2) >> 1;
    if (v5 <= v13)
    {
LABEL_114:
      v112 = 0;
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v121 = 0u;
      v102 = MEMORY[0x1E69E9C10];
      v103 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v113 = 136315906;
      v114 = "operator[]";
      v115 = 1024;
      if (v103)
      {
        v104 = 3;
      }

      else
      {
        v104 = 2;
      }

      v116 = 789;
      v117 = 2048;
      v118 = v13;
      v119 = 2048;
      v120 = v5;
      _os_log_send_and_compose_impl(v104, &v112, &v121, 80, &dword_1E1C61000, v102, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v113, 38, v111);
      _os_crash_msg();
      __break(1u);
      goto LABEL_118;
    }

    v14 = (a3 - 1);
    if (v5 <= v14)
    {
LABEL_118:
      v112 = 0;
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v121 = 0u;
      v13 = MEMORY[0x1E69E9C10];
      v105 = v14;
      v106 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v113 = 136315906;
      v114 = "operator[]";
      v115 = 1024;
      if (v106)
      {
        v107 = 3;
      }

      else
      {
        v107 = 2;
      }

      v116 = 789;
      v117 = 2048;
      v118 = v105;
      v119 = 2048;
      v120 = v5;
      _os_log_send_and_compose_impl(v107, &v112, &v121, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v113, 38, v111);
      _os_crash_msg();
      __break(1u);
      goto LABEL_122;
    }

    v15 = *(a4 + 32);
    v16 = *(*a1 + 8 * *(v15 + 4 * a2));
    v17 = *(*a1 + 8 * *(v15 + 4 * v13));
    v18 = *(*a1 + 8 * *(v15 + 4 * v14));
    v19 = vsub_f32(vmaxnm_f32(vmaxnm_f32(v16, v17), v18), vminnm_f32(vminnm_f32(v16, v17), v18));
    *(v11 + 20) = vmvn_s8(vcge_f32(v19, vdup_lane_s32(v19, 1))).u8[0] & 1;
    if (v13 == a3)
    {
LABEL_11:
      v9 = *(a4 + 16);
      if (v9 > v13)
      {
        *(v11 + 16) = *(*(a4 + 32) + 4 * v13);
        *v11 = re::internal::GeomKDTree<re::Vector2<float>>::buildHelper(a1, a2, v13, a4, v6);
        *(v11 + 8) = re::internal::GeomKDTree<re::Vector2<float>>::buildHelper(a1, (v13 + 1), a3, a4, v6);
        return v11;
      }

LABEL_122:
      v112 = 0;
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v121 = 0u;
      v108 = MEMORY[0x1E69E9C10];
      v109 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v113 = 136315906;
      v114 = "operator[]";
      v115 = 1024;
      if (v109)
      {
        v110 = 3;
      }

      else
      {
        v110 = 2;
      }

      v116 = 789;
      v117 = 2048;
      v118 = v13;
      v119 = 2048;
      v120 = v9;
      _os_log_send_and_compose_impl(v110, &v112, &v121, 80, &dword_1E1C61000, v108, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v113, 38, v111);
      _os_crash_msg();
      __break(1u);
    }

    v21 = *(a4 + 32);
    v22 = (v21 + 4 * a3);
    v23 = (v21 + 4 * v13);
    v24 = (v21 + 4 * a2);
    while (1)
    {
      v25 = v22 - v24;
      if (v25 < 2)
      {
        goto LABEL_11;
      }

      if (v25 == 3)
      {
        v74 = *v24;
        v75 = v24[1];
        v76 = *a1;
        v77 = *(v11 + 20);
        v78 = *(*a1 + 8 * v75 + 4 * v77);
        v79 = *a1 + 8 * v74;
        v80 = *(v22 - 1);
        v81 = *(*a1 + 8 * v80 + 4 * v77);
        if (v78 >= *(v79 + 4 * v77))
        {
          if (v81 < v78)
          {
            v24[1] = v80;
            *(v22 - 1) = v75;
            v93 = *v24;
            v92 = v24[1];
            if (*(v76 + 8 * v92 + 4 * *(v11 + 20)) < *(v76 + 8 * v93 + 4 * *(v11 + 20)))
            {
              *v24 = v92;
              v24[1] = v93;
            }
          }
        }

        else
        {
          if (v81 >= v78)
          {
            *v24 = v75;
            v24[1] = v74;
            v94 = *(v22 - 1);
            if (*(v76 + 8 * v94 + 4 * *(v11 + 20)) >= *(v79 + 4 * *(v11 + 20)))
            {
              goto LABEL_11;
            }

            v24[1] = v94;
          }

          else
          {
            *v24 = v80;
          }

          *(v22 - 1) = v74;
        }

        goto LABEL_11;
      }

      if (v25 == 2)
      {
        v82 = *(v22 - 1);
        v83 = *v24;
        if (*(*a1 + 8 * v82 + 4 * *(v11 + 20)) < *(*a1 + 8 * v83 + 4 * *(v11 + 20)))
        {
          *v24 = v82;
          *(v22 - 1) = v83;
        }

        goto LABEL_11;
      }

      if (v25 <= 7)
      {
        for (; v24 != v22 - 1; ++v24)
        {
          if (v24 != v22)
          {
            v84 = v24 + 1;
            if (v24 + 1 != v22)
            {
              v86 = *v24;
              v87 = *v24;
              v88 = v24;
              v89 = v24 + 1;
              do
              {
                v91 = *v89++;
                v90 = v91;
                v85 = *a1 + 4 * *(v11 + 20);
                if (*(v85 + 8 * v91) < *(v85 + 8 * v87))
                {
                  v87 = v90;
                  v88 = v84;
                }

                v84 = v89;
              }

              while (v89 != v22);
              if (v88 != v24)
              {
                *v24 = *v88;
                *v88 = v86;
              }
            }
          }
        }

        goto LABEL_11;
      }

      v26 = &v24[v25 >> 1];
      v27 = v22 - 1;
      v28 = *(v22 - 1);
      v29 = *v26;
      v30 = *v24;
      v31 = *a1;
      v32 = *(v11 + 20);
      v33 = *(*a1 + 8 * v29 + 4 * v32);
      v34 = *a1 + 8 * v30;
      v35 = *(*a1 + 8 * v28 + 4 * v32);
      if (v33 < *(v34 + 4 * v32))
      {
        break;
      }

      if (v35 < v33)
      {
        *v26 = v28;
        *v27 = v29;
        v36 = *v26;
        v37 = *v24;
        if (*(v31 + 8 * v36 + 4 * *(v11 + 20)) < *(v31 + 8 * v37 + 4 * *(v11 + 20)))
        {
          *v24 = v36;
          *v26 = v37;
        }

        goto LABEL_28;
      }

      v39 = 0;
LABEL_30:
      v40 = *v24;
      v41 = *(v11 + 20);
      v42 = *(v31 + 8 * v40 + 4 * v41);
      v43 = *(v31 + 8 * *v26 + 4 * v41);
      if (v42 >= v43)
      {
        v45 = v31 + 4 * v41;
        v44 = v22 - 1;
        while (--v44 != v24)
        {
          v46 = *v44;
          if (*(v45 + 8 * v46) < v43)
          {
            *v24 = v46;
            *v44 = v40;
            if (v39)
            {
              v39 = 2;
            }

            else
            {
              v39 = 1;
            }

            goto LABEL_38;
          }
        }

        v61 = v24 + 1;
        v62 = *v27;
        if (v42 >= *(v31 + 8 * v62 + 4 * v41))
        {
          while (v61 != v27)
          {
            v63 = *v61;
            if (v42 < *(v45 + 8 * v63))
            {
              *v61++ = v62;
              *v27 = v63;
              goto LABEL_70;
            }

            ++v61;
          }

          goto LABEL_11;
        }

LABEL_70:
        if (v61 == v27)
        {
          goto LABEL_11;
        }

        while (1)
        {
          v67 = v31 + 4 * *(v11 + 20);
          v68 = *(v67 + 8 * *v24);
          do
          {
            v70 = *v61++;
            v69 = v70;
          }

          while (v68 >= *(v67 + 8 * v70));
          v71 = v61 - 1;
          do
          {
            v73 = *--v27;
            v72 = v73;
          }

          while (v68 < *(v67 + 8 * v73));
          if (v71 >= v27)
          {
            break;
          }

          *v71 = v72;
          *v27 = v69;
        }

        v24 = v61 - 1;
        if (v71 > v23)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v44 = v22 - 1;
LABEL_38:
        v47 = v24 + 1;
        if (v24 + 1 >= v44)
        {
          v53 = v24 + 1;
        }

        else
        {
          v48 = v24 + 1;
          while (1)
          {
            v49 = v31 + 4 * *(v11 + 20);
            v50 = *(v49 + 8 * *v26);
            do
            {
              v52 = *v48++;
              v51 = v52;
            }

            while (*(v49 + 8 * v52) < v50);
            v53 = v48 - 1;
            do
            {
              v55 = *--v44;
              v54 = v55;
            }

            while (*(v49 + 8 * v55) >= v50);
            if (v53 >= v44)
            {
              break;
            }

            *v53 = v54;
            *v44 = v51;
            ++v39;
            if (v53 == v26)
            {
              v26 = v44;
            }
          }
        }

        if (v53 != v26)
        {
          v56 = *v26;
          v57 = *v53;
          if (*(v31 + 8 * v56 + 4 * *(v11 + 20)) < *(v31 + 8 * v57 + 4 * *(v11 + 20)))
          {
            *v53 = v56;
            *v26 = v57;
            ++v39;
          }
        }

        if (v53 == v23)
        {
          goto LABEL_11;
        }

        if (!v39)
        {
          v58 = v31 + 4 * *(v11 + 20);
          if (v53 <= v23)
          {
            v64 = v53 + 1;
            while (v64 != v22)
            {
              v65 = *(v58 + 8 * *v64);
              v66 = *(v58 + 8 * *(v64++ - 1));
              if (v65 < v66)
              {
                goto LABEL_54;
              }
            }
          }

          else
          {
            while (v47 != v53)
            {
              v59 = *(v58 + 8 * *v47);
              v60 = *(v58 + 8 * *(v47++ - 1));
              if (v59 < v60)
              {
                goto LABEL_54;
              }
            }
          }

          goto LABEL_11;
        }

LABEL_54:
        if (v53 > v23)
        {
          v22 = v53;
        }

        else
        {
          v24 = v53 + 1;
        }
      }

      if (v22 == v23)
      {
        goto LABEL_11;
      }
    }

    if (v35 >= v33)
    {
      *v24 = v29;
      *v26 = v30;
      v38 = *v27;
      if (*(v31 + 8 * v38 + 4 * *(v11 + 20)) >= *(v34 + 4 * *(v11 + 20)))
      {
LABEL_28:
        v39 = 1;
        goto LABEL_30;
      }

      *v26 = v38;
    }

    else
    {
      *v24 = v28;
    }

    *v27 = v30;
    goto LABEL_28;
  }

  v6 = *(a4 + 16);
  if (v6 <= a2)
  {
LABEL_106:
    v112 = 0;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v121 = 0u;
    v97 = MEMORY[0x1E69E9C10];
    v98 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v113 = 136315906;
    v114 = "operator[]";
    v115 = 1024;
    if (v98)
    {
      v99 = 3;
    }

    else
    {
      v99 = 2;
    }

    v116 = 789;
    v117 = 2048;
    v118 = v9;
    v119 = 2048;
    v120 = v6;
    _os_log_send_and_compose_impl(v99, &v112, &v121, 80, &dword_1E1C61000, v97, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v113, 38, v111);
    _os_crash_msg();
    __break(1u);
    goto LABEL_110;
  }

  *(v11 + 16) = *(*(a4 + 32) + 4 * a2);
  *v11 = 0;
  *(v11 + 8) = 0;
  return v11;
}

void *re::internal::GeomKDTree<re::Vector2<float>>::findWithinRadiusHelper(void *result, uint64_t **a2, float32x2_t *a3, _anonymous_namespace_ *a4, double a5)
{
  if (a2)
  {
    v8 = a2;
    v9 = result;
    v10 = -a5;
    v11 = a5 * a5;
    do
    {
      v12 = (*v9 + 8 * *(v8 + 4));
      v13 = *(v8 + 20);
      v14 = a3->f32[v13];
      v15 = v12->f32[v13];
      if (v14 == v15)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = (v14 - v15);
      }

      if (v16 >= v10)
      {
        if (v16 <= a5)
        {
          v17 = vceq_f32(*v12, *a3);
          if ((vpmin_u32(v17, v17).u32[0] & 0x80000000) != 0)
          {
            v19 = 0.0;
          }

          else
          {
            v18 = vsub_f32(*v12, *a3);
            v19 = vaddv_f32(vmul_f32(v18, v18));
          }

          if (v19 <= v11)
          {
            re::DynamicArray<int>::add(a4, v8 + 4);
          }

          v20 = *v8++;
          result = re::internal::GeomKDTree<re::Vector2<float>>::findWithinRadiusHelper(v9, v20, a3, a4, a5);
        }

        else
        {
          ++v8;
        }
      }

      v8 = *v8;
    }

    while (v8);
  }

  return result;
}

uint64_t re::internal::GeomKDTree<re::Vector3<float>>::build(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  *a1 = a3;
  *(a1 + 8) = a2;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v16 = 0;
  re::DynamicArray<float>::resize(&v13, a2);
  if (a2)
  {
    v5 = 0;
    v6 = 1;
    v7 = v15;
    v8 = v17;
    do
    {
      if (v7 <= v5)
      {
        v18 = 0;
        memset(v27, 0, sizeof(v27));
        v10 = MEMORY[0x1E69E9C10];
        v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v19 = 136315906;
        v20 = "operator[]";
        v21 = 1024;
        if (v11)
        {
          v12 = 3;
        }

        else
        {
          v12 = 2;
        }

        v22 = 789;
        v23 = 2048;
        v24 = v5;
        v25 = 2048;
        v26 = v7;
        _os_log_send_and_compose_impl(v12, &v18, v27, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v13, v14);
        _os_crash_msg();
        __break(1u);
      }

      *(v8 + 4 * v5) = v6 - 1;
      v5 = v6++;
    }

    while (v5 < a2);
  }

  *(a1 + 32) = 0;
  ++*(a1 + 40);
  re::DynamicArray<re::internal::GeomKDTree<re::Vector3<float>>::Node>::resize((a1 + 16), a2);
  if (*(a1 + 8))
  {
    LODWORD(v27[0]) = 0;
    re::internal::GeomKDTree<re::Vector3<float>>::buildHelper(a1, 0, a2, &v13, v27);
  }

  if (v13 && v17)
  {
    (*(*v13 + 40))();
  }

  return 1;
}

void *re::DynamicArray<re::internal::GeomKDTree<re::Vector3<float>>::Node>::resize(void *result, unint64_t a2)
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

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(result, a2);
      v4 = v3[2];
    }

    if (a2 > v4)
    {
      v5 = 24 * (a2 - v4);
      if (v5 >= 1)
      {
        v6 = v3[4] + 24 * v4;
        v7 = v5 / 0x18uLL + 1;
        do
        {
          *v6 = 0;
          *(v6 + 8) = 0;
          *(v6 + 16) = -1;
          *(v6 + 20) = 0;
          v6 += 24;
          --v7;
        }

        while (v7 > 1);
      }
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

uint64_t re::internal::GeomKDTree<re::Vector3<float>>::buildHelper(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a3 <= a2)
  {
    return 0;
  }

  v6 = a5;
  v8 = *a5;
  *a5 = v8 + 1;
  v9 = a1[4];
  if (v9 <= v8)
  {
    v25 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v29 = 789;
    v30 = 2048;
    v31 = v8;
    v32 = 2048;
    v33 = v9;
    _os_log_send_and_compose_impl(v17, &v25, &v34, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v12 = a1[6] + 24 * v8;
  if (a3 - a2 != 1)
  {
    v14 = re::internal::GeomKDTree<re::Vector3<float>>::partition(a1, a2, a3, a4, (v12 + 20));
    v8 = v14;
    v9 = *(a4 + 16);
    if (v9 > v14)
    {
      *(v12 + 16) = *(*(a4 + 32) + 4 * v14);
      *v12 = re::internal::GeomKDTree<re::Vector3<float>>::buildHelper(a1, a2, v14, a4, v6);
      *(v12 + 8) = re::internal::GeomKDTree<re::Vector3<float>>::buildHelper(a1, (v8 + 1), a3, a4, v6);
      return v12;
    }

LABEL_18:
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
    v31 = v8;
    v32 = 2048;
    v33 = v9;
    _os_log_send_and_compose_impl(v23, &v25, &v34, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
    _os_crash_msg();
    __break(1u);
  }

  v6 = a2;
  v5 = *(a4 + 16);
  if (v5 <= a2)
  {
LABEL_14:
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

    v29 = 789;
    v30 = 2048;
    v31 = v6;
    v32 = 2048;
    v33 = v5;
    _os_log_send_and_compose_impl(v20, &v25, &v34, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
    _os_crash_msg();
    __break(1u);
    goto LABEL_18;
  }

  *(v12 + 16) = *(*(a4 + 32) + 4 * a2);
  *v12 = 0;
  *(v12 + 8) = 0;
  return v12;
}

uint64_t re::internal::GeomKDTree<re::Vector3<float>>::partition(void *a1, unsigned int a2, unsigned int a3, uint64_t a4, char *a5)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = *(a4 + 16);
  if (v7 <= a2)
  {
    v28 = 0;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    v8 = MEMORY[0x1E69E9C10];
    v29 = 136315906;
    v30 = "operator[]";
    v31 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v32 = 789;
    v33 = 2048;
    v34 = v6;
    v35 = 2048;
    v36 = v7;
    _os_log_send_and_compose_impl(v20, &v28, &v37, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v29, 38, v27);
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v8 = (a3 + a2) >> 1;
  if (v7 <= v8)
  {
LABEL_19:
    v28 = 0;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    v21 = MEMORY[0x1E69E9C10];
    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v29 = 136315906;
    v30 = "operator[]";
    v31 = 1024;
    if (v22)
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v32 = 789;
    v33 = 2048;
    v34 = v8;
    v35 = 2048;
    v36 = v7;
    _os_log_send_and_compose_impl(v23, &v28, &v37, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v29, 38, v27);
    _os_crash_msg();
    __break(1u);
LABEL_23:
    v28 = 0;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    v24 = MEMORY[0x1E69E9C10];
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

    v32 = 789;
    v33 = 2048;
    v34 = v5;
    v35 = 2048;
    v36 = v7;
    _os_log_send_and_compose_impl(v26, &v28, &v37, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v29, 38, v27);
    _os_crash_msg();
    __break(1u);
  }

  v5 = a3 - 1;
  if (v7 <= v5)
  {
    goto LABEL_23;
  }

  v9 = *(a4 + 32);
  v10 = *(*a1 + 16 * *(v9 + 4 * a2));
  v11 = *(*a1 + 16 * *(v9 + 4 * v8));
  v10.i32[3] = 0;
  v11.i32[3] = 0;
  v12 = *(*a1 + 16 * *(v9 + 4 * v5));
  v13 = vmaxnmq_f32(v10, v11);
  v13.i32[3] = 0;
  v12.i32[3] = 0;
  v14 = vminnmq_f32(v10, v11);
  v14.i32[3] = 0;
  v15 = vsubq_f32(vmaxnmq_f32(v13, v12), vminnmq_f32(v14, v12));
  if (v15.f32[1] >= v15.f32[2])
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  if (v15.f32[0] >= v15.f32[2] && v15.f32[0] >= v15.f32[1])
  {
    v16 = 0;
  }

  *a5 = v16;
  v18 = *(a4 + 32);
  *&v37 = a1;
  *(&v37 + 1) = a5;
  if (v8 != a3)
  {
    std::__nth_element[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::GeomKDTree<re::Vector3<float>>::partition(unsigned int,unsigned int,re::DynamicArray<unsigned int> &,unsigned char &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>((v18 + 4 * a2), (v18 + 4 * v8), (v18 + 4 * a3), &v37);
  }

  return v8;
}

unsigned int *std::__nth_element[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::GeomKDTree<re::Vector3<float>>::partition(unsigned int,unsigned int,re::DynamicArray<unsigned int> &,unsigned char &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(unsigned int *result, unsigned int *a2, unsigned int *a3, uint64_t **a4)
{
  if (a3 != a2)
  {
    v5 = *a4;
    v4 = a4[1];
    while (1)
    {
      v6 = a3 - result;
      if (v6 < 2)
      {
        return result;
      }

      if (v6 == 3)
      {
        v56 = *result;
        v57 = result[1];
        v58 = *v5;
        v59 = *v4;
        v60 = *(v58 + 16 * v57 + 4 * v59);
        v61 = v58 + 16 * v56;
        v62 = *(a3 - 1);
        v63 = *(v58 + 16 * v62 + 4 * v59);
        if (v60 >= *(v61 + 4 * v59))
        {
          if (v63 < v60)
          {
            result[1] = v62;
            *(a3 - 1) = v57;
            v67 = *result;
            v66 = result[1];
            if (*(v58 + 16 * v66 + 4 * *v4) < *(v58 + 16 * v67 + 4 * *v4))
            {
              *result = v66;
              result[1] = v67;
            }
          }
        }

        else
        {
          if (v63 >= v60)
          {
            *result = v57;
            result[1] = v56;
            v68 = *(a3 - 1);
            if (*(v58 + 16 * v68 + 4 * *v4) >= *(v61 + 4 * *v4))
            {
              return result;
            }

            result[1] = v68;
          }

          else
          {
            *result = v62;
          }

          *(a3 - 1) = v56;
        }

        return result;
      }

      if (v6 == 2)
      {
        v64 = *(a3 - 1);
        v65 = *result;
        if (*(*v5 + 16 * v64 + 4 * *v4) < *(*v5 + 16 * v65 + 4 * *v4))
        {
          *result = v64;
          *(a3 - 1) = v65;
        }

        return result;
      }

      if (v6 <= 7)
      {
        return std::__selection_sort[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::GeomKDTree<re::Vector3<float>>::partition(unsigned int,unsigned int,re::DynamicArray<unsigned int> &,unsigned char &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(result, a3, a4);
      }

      v7 = &result[v6 >> 1];
      v8 = a3 - 1;
      v9 = *(a3 - 1);
      v10 = *v7;
      v11 = *result;
      v12 = *v5;
      v13 = *v4;
      v14 = *(*v5 + 16 * v10 + 4 * v13);
      v15 = *v5 + 16 * v11;
      v16 = *(*v5 + 16 * v9 + 4 * v13);
      if (v14 < *(v15 + 4 * v13))
      {
        break;
      }

      if (v16 < v14)
      {
        *v7 = v9;
        *v8 = v10;
        v17 = *v7;
        v18 = *result;
        if (*(v12 + 16 * v17 + 4 * *v4) < *(v12 + 16 * v18 + 4 * *v4))
        {
          *result = v17;
          *v7 = v18;
        }

        goto LABEL_16;
      }

      v20 = 0;
LABEL_18:
      v21 = *result;
      v22 = *v4;
      v23 = *(v12 + 16 * v21 + 4 * v22);
      v24 = *(v12 + 16 * *v7 + 4 * v22);
      if (v23 >= v24)
      {
        v26 = v12 + 4 * v22;
        v25 = a3 - 1;
        while (--v25 != result)
        {
          v27 = *v25;
          if (*(v26 + 16 * v27) < v24)
          {
            *result = v27;
            *v25 = v21;
            if (v20)
            {
              v20 = 2;
            }

            else
            {
              v20 = 1;
            }

            goto LABEL_26;
          }
        }

        v42 = result + 1;
        v43 = *v8;
        if (v23 >= *(v12 + 16 * v43 + 4 * v22))
        {
          while (v42 != v8)
          {
            v44 = *v42;
            if (v23 < *(v26 + 16 * v44))
            {
              *v42++ = v43;
              *v8 = v44;
              goto LABEL_58;
            }

            ++v42;
          }

          return result;
        }

LABEL_58:
        if (v42 == v8)
        {
          return result;
        }

        while (1)
        {
          v49 = v12 + 4 * *v4;
          v50 = *(v49 + 16 * *result);
          do
          {
            v52 = *v42++;
            v51 = v52;
          }

          while (v50 >= *(v49 + 16 * v52));
          v53 = v42 - 1;
          do
          {
            v55 = *--v8;
            v54 = v55;
          }

          while (v50 < *(v49 + 16 * v55));
          if (v53 >= v8)
          {
            break;
          }

          *v53 = v54;
          *v8 = v51;
        }

        result = v42 - 1;
        if (v53 > a2)
        {
          return result;
        }
      }

      else
      {
        v25 = a3 - 1;
LABEL_26:
        v28 = result + 1;
        if (result + 1 >= v25)
        {
          v34 = result + 1;
        }

        else
        {
          v29 = result + 1;
          while (1)
          {
            v30 = v12 + 4 * *v4;
            v31 = *(v30 + 16 * *v7);
            do
            {
              v33 = *v29++;
              v32 = v33;
            }

            while (*(v30 + 16 * v33) < v31);
            v34 = v29 - 1;
            do
            {
              v36 = *--v25;
              v35 = v36;
            }

            while (*(v30 + 16 * v36) >= v31);
            if (v34 >= v25)
            {
              break;
            }

            *v34 = v35;
            *v25 = v32;
            ++v20;
            if (v34 == v7)
            {
              v7 = v25;
            }
          }
        }

        if (v34 != v7)
        {
          v37 = *v7;
          v38 = *v34;
          if (*(v12 + 16 * v37 + 4 * *v4) < *(v12 + 16 * v38 + 4 * *v4))
          {
            *v34 = v37;
            *v7 = v38;
            ++v20;
          }
        }

        if (v34 == a2)
        {
          return result;
        }

        if (!v20)
        {
          if (v34 <= a2)
          {
            v45 = v34 + 1;
            while (v45 != a3)
            {
              v46 = *v4;
              v47 = *(v12 + 16 * *v45 + 4 * v46);
              v48 = *(v12 + 16 * *(v45++ - 1) + 4 * v46);
              if (v47 < v48)
              {
                goto LABEL_42;
              }
            }
          }

          else
          {
            while (v28 != v34)
            {
              v39 = *v4;
              v40 = *(v12 + 16 * *v28 + 4 * v39);
              v41 = *(v12 + 16 * *(v28++ - 1) + 4 * v39);
              if (v40 < v41)
              {
                goto LABEL_42;
              }
            }
          }

          return result;
        }

LABEL_42:
        if (v34 > a2)
        {
          a3 = v34;
        }

        else
        {
          result = v34 + 1;
        }
      }

      if (a3 == a2)
      {
        return result;
      }
    }

    if (v16 >= v14)
    {
      *result = v10;
      *v7 = v11;
      v19 = *v8;
      if (*(v12 + 16 * v19 + 4 * *v4) >= *(v15 + 4 * *v4))
      {
LABEL_16:
        v20 = 1;
        goto LABEL_18;
      }

      *v7 = v19;
    }

    else
    {
      *result = v9;
    }

    *v8 = v11;
    goto LABEL_16;
  }

  return result;
}

unsigned int *std::__selection_sort[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::GeomKDTree<re::Vector3<float>>::partition(unsigned int,unsigned int,re::DynamicArray<unsigned int> &,unsigned char &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *>(unsigned int *result, unsigned int *a2, uint64_t a3)
{
  v3 = a2 - 1;
  if (a2 - 1 != result)
  {
    v6 = result;
    do
    {
      result = std::__min_element[abi:nn200100]<re::internal::GeomKDTree<re::Vector3<float>>::partition(unsigned int,unsigned int,re::DynamicArray<unsigned int> &,unsigned char &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,unsigned int *>(v6, a2, a3);
      if (v6 != result)
      {
        v7 = *v6;
        *v6 = *result;
        *result = v7;
      }

      ++v6;
    }

    while (v6 != v3);
  }

  return result;
}

unsigned int *std::__min_element[abi:nn200100]<re::internal::GeomKDTree<re::Vector3<float>>::partition(unsigned int,unsigned int,re::DynamicArray<unsigned int> &,unsigned char &)::{lambda(unsigned int,unsigned int)#1} &,unsigned int *,unsigned int *>(unsigned int *result, unsigned int *a2, uint64_t a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v5 = *result;
      v6 = result + 1;
      do
      {
        v8 = *v6++;
        v7 = v8;
        v4 = **a3 + 4 * **(a3 + 8);
        if (*(v4 + 16 * v8) < *(v4 + 16 * v5))
        {
          v5 = v7;
          result = v3;
        }

        v3 = v6;
      }

      while (v6 != a2);
    }
  }

  return result;
}

void *re::internal::GeomKDTree<re::Vector3<float>>::findWithinRadiusHelper(void *result, uint64_t **a2, float32x4_t *a3, _anonymous_namespace_ *a4, double a5)
{
  if (a2)
  {
    v8 = a2;
    v9 = result;
    v10 = -a5;
    v11 = a5 * a5;
    do
    {
      v12 = (*v9 + 16 * *(v8 + 4));
      v13 = *(v8 + 20);
      v14 = a3->f32[v13];
      v15 = v12->f32[v13];
      if (v14 == v15)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = (v14 - v15);
      }

      if (v16 >= v10)
      {
        if (v16 <= a5)
        {
          v17 = vceqq_f32(*v12, *a3);
          v17.i32[3] = v17.i32[2];
          if ((vminvq_u32(v17) & 0x80000000) != 0)
          {
            v20 = 0.0;
          }

          else
          {
            v18 = vsubq_f32(*v12, *a3);
            v19 = vmulq_f32(v18, v18);
            v20 = (v19.f32[2] + vaddv_f32(*v19.f32));
          }

          if (v20 <= v11)
          {
            re::DynamicArray<int>::add(a4, v8 + 4);
          }

          v21 = *v8++;
          result = re::internal::GeomKDTree<re::Vector3<float>>::findWithinRadiusHelper(v9, v21, a3, a4, a5);
        }

        else
        {
          ++v8;
        }
      }

      v8 = *v8;
    }

    while (v8);
  }

  return result;
}

uint64_t re::internal::GeomKDTree<re::Vector4<float>>::buildHelper(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v128 = *MEMORY[0x1E69E9840];
  if (a3 <= a2)
  {
    return 0;
  }

  v6 = a5;
  v8 = *a5;
  *a5 = v8 + 1;
  v9 = a1[4];
  if (v9 <= v8)
  {
    v114 = 0;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v123 = 0u;
    v97 = MEMORY[0x1E69E9C10];
    v115 = 136315906;
    v116 = "operator[]";
    v117 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v98 = 3;
    }

    else
    {
      v98 = 2;
    }

    v118 = 789;
    v119 = 2048;
    v120 = v8;
    v121 = 2048;
    v122 = v9;
    _os_log_send_and_compose_impl(v98, &v114, &v123, 80, &dword_1E1C61000, v97, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v115, 38, v113);
    _os_crash_msg();
    __break(1u);
    goto LABEL_122;
  }

  v11 = a1[6] + 24 * v8;
  v9 = a2;
  if (a3 - a2 != 1)
  {
    v5 = *(a4 + 16);
    if (v5 <= a2)
    {
LABEL_126:
      v114 = 0;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v123 = 0u;
      v13 = MEMORY[0x1E69E9C10];
      v102 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v115 = 136315906;
      v116 = "operator[]";
      v117 = 1024;
      if (v102)
      {
        v103 = 3;
      }

      else
      {
        v103 = 2;
      }

      v118 = 789;
      v119 = 2048;
      v120 = v9;
      v121 = 2048;
      v122 = v5;
      _os_log_send_and_compose_impl(v103, &v114, &v123, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v115, 38, v113);
      _os_crash_msg();
      __break(1u);
      goto LABEL_130;
    }

    v13 = (a3 + a2) >> 1;
    if (v5 <= v13)
    {
LABEL_130:
      v114 = 0;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v123 = 0u;
      v104 = MEMORY[0x1E69E9C10];
      v105 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v115 = 136315906;
      v116 = "operator[]";
      v117 = 1024;
      if (v105)
      {
        v106 = 3;
      }

      else
      {
        v106 = 2;
      }

      v118 = 789;
      v119 = 2048;
      v120 = v13;
      v121 = 2048;
      v122 = v5;
      _os_log_send_and_compose_impl(v106, &v114, &v123, 80, &dword_1E1C61000, v104, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v115, 38, v113);
      _os_crash_msg();
      __break(1u);
      goto LABEL_134;
    }

    v14 = (a3 - 1);
    if (v5 <= v14)
    {
LABEL_134:
      v114 = 0;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v123 = 0u;
      v13 = MEMORY[0x1E69E9C10];
      v107 = v14;
      v108 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v115 = 136315906;
      v116 = "operator[]";
      v117 = 1024;
      if (v108)
      {
        v109 = 3;
      }

      else
      {
        v109 = 2;
      }

      v118 = 789;
      v119 = 2048;
      v120 = v107;
      v121 = 2048;
      v122 = v5;
      _os_log_send_and_compose_impl(v109, &v114, &v123, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v115, 38, v113);
      _os_crash_msg();
      __break(1u);
      goto LABEL_138;
    }

    v15 = *(a4 + 32);
    v16 = *(v15 + 4 * a2);
    v17 = vsubq_f32(vmaxnmq_f32(vmaxnmq_f32(*(*a1 + 16 * v16), *(*a1 + 16 * *(v15 + 4 * v13))), *(*a1 + 16 * *(v15 + 4 * v14))), vminnmq_f32(vminnmq_f32(*(*a1 + 16 * v16), *(*a1 + 16 * *(v15 + 4 * v13))), *(*a1 + 16 * *(v15 + 4 * v14))));
    if (v17.f32[0] < v17.f32[3] || v17.f32[0] < v17.f32[1] || v17.f32[0] < v17.f32[2])
    {
      if (v17.f32[1] < v17.f32[2] || v17.f32[1] < v17.f32[3])
      {
        if (v17.f32[2] >= v17.f32[3])
        {
          v21 = 2;
        }

        else
        {
          v21 = 3;
        }
      }

      else
      {
        v21 = 1;
      }
    }

    else
    {
      v21 = 0;
    }

    *(v11 + 20) = v21;
    if (v13 == a3)
    {
LABEL_27:
      v9 = *(a4 + 16);
      if (v9 > v13)
      {
        *(v11 + 16) = *(*(a4 + 32) + 4 * v13);
        *v11 = re::internal::GeomKDTree<re::Vector4<float>>::buildHelper(a1, a2, v13, a4, v6);
        *(v11 + 8) = re::internal::GeomKDTree<re::Vector4<float>>::buildHelper(a1, (v13 + 1), a3, a4, v6);
        return v11;
      }

LABEL_138:
      v114 = 0;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v123 = 0u;
      v110 = MEMORY[0x1E69E9C10];
      v111 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v115 = 136315906;
      v116 = "operator[]";
      v117 = 1024;
      if (v111)
      {
        v112 = 3;
      }

      else
      {
        v112 = 2;
      }

      v118 = 789;
      v119 = 2048;
      v120 = v13;
      v121 = 2048;
      v122 = v9;
      _os_log_send_and_compose_impl(v112, &v114, &v123, 80, &dword_1E1C61000, v110, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v115, 38, v113);
      _os_crash_msg();
      __break(1u);
    }

    v23 = *(a4 + 32);
    v24 = (v23 + 4 * a3);
    v25 = (v23 + 4 * v13);
    v26 = (v23 + 4 * a2);
    while (1)
    {
      v27 = v24 - v26;
      if (v27 < 2)
      {
        goto LABEL_27;
      }

      if (v27 == 3)
      {
        v76 = *v26;
        v77 = v26[1];
        v78 = *a1;
        v79 = *(v11 + 20);
        v80 = *(*a1 + 16 * v77 + 4 * v79);
        v81 = *a1 + 16 * v76;
        v82 = *(v24 - 1);
        v83 = *(*a1 + 16 * v82 + 4 * v79);
        if (v80 >= *(v81 + 4 * v79))
        {
          if (v83 < v80)
          {
            v26[1] = v82;
            *(v24 - 1) = v77;
            v95 = *v26;
            v94 = v26[1];
            if (*(v78 + 16 * v94 + 4 * *(v11 + 20)) < *(v78 + 16 * v95 + 4 * *(v11 + 20)))
            {
              *v26 = v94;
              v26[1] = v95;
            }
          }
        }

        else
        {
          if (v83 >= v80)
          {
            *v26 = v77;
            v26[1] = v76;
            v96 = *(v24 - 1);
            if (*(v78 + 16 * v96 + 4 * *(v11 + 20)) >= *(v81 + 4 * *(v11 + 20)))
            {
              goto LABEL_27;
            }

            v26[1] = v96;
          }

          else
          {
            *v26 = v82;
          }

          *(v24 - 1) = v76;
        }

        goto LABEL_27;
      }

      if (v27 == 2)
      {
        v84 = *(v24 - 1);
        v85 = *v26;
        if (*(*a1 + 16 * v84 + 4 * *(v11 + 20)) < *(*a1 + 16 * v85 + 4 * *(v11 + 20)))
        {
          *v26 = v84;
          *(v24 - 1) = v85;
        }

        goto LABEL_27;
      }

      if (v27 <= 7)
      {
        for (; v26 != v24 - 1; ++v26)
        {
          if (v26 != v24)
          {
            v86 = v26 + 1;
            if (v26 + 1 != v24)
            {
              v88 = *v26;
              v89 = *v26;
              v90 = v26;
              v91 = v26 + 1;
              do
              {
                v93 = *v91++;
                v92 = v93;
                v87 = *a1 + 4 * *(v11 + 20);
                if (*(v87 + 16 * v93) < *(v87 + 16 * v89))
                {
                  v89 = v92;
                  v90 = v86;
                }

                v86 = v91;
              }

              while (v91 != v24);
              if (v90 != v26)
              {
                *v26 = *v90;
                *v90 = v88;
              }
            }
          }
        }

        goto LABEL_27;
      }

      v28 = &v26[v27 >> 1];
      v29 = v24 - 1;
      v30 = *(v24 - 1);
      v31 = *v28;
      v32 = *v26;
      v33 = *a1;
      v34 = *(v11 + 20);
      v35 = *(*a1 + 16 * v31 + 4 * v34);
      v36 = *a1 + 16 * v32;
      v37 = *(*a1 + 16 * v30 + 4 * v34);
      if (v35 < *(v36 + 4 * v34))
      {
        break;
      }

      if (v37 < v35)
      {
        *v28 = v30;
        *v29 = v31;
        v38 = *v28;
        v39 = *v26;
        if (*(v33 + 16 * v38 + 4 * *(v11 + 20)) < *(v33 + 16 * v39 + 4 * *(v11 + 20)))
        {
          *v26 = v38;
          *v28 = v39;
        }

        goto LABEL_44;
      }

      v41 = 0;
LABEL_46:
      v42 = *v26;
      v43 = *(v11 + 20);
      v44 = *(v33 + 16 * v42 + 4 * v43);
      v45 = *(v33 + 16 * *v28 + 4 * v43);
      if (v44 >= v45)
      {
        v47 = v33 + 4 * v43;
        v46 = v24 - 1;
        while (--v46 != v26)
        {
          v48 = *v46;
          if (*(v47 + 16 * v48) < v45)
          {
            *v26 = v48;
            *v46 = v42;
            if (v41)
            {
              v41 = 2;
            }

            else
            {
              v41 = 1;
            }

            goto LABEL_54;
          }
        }

        v63 = v26 + 1;
        v64 = *v29;
        if (v44 >= *(v33 + 16 * v64 + 4 * v43))
        {
          while (v63 != v29)
          {
            v65 = *v63;
            if (v44 < *(v47 + 16 * v65))
            {
              *v63++ = v64;
              *v29 = v65;
              goto LABEL_86;
            }

            ++v63;
          }

          goto LABEL_27;
        }

LABEL_86:
        if (v63 == v29)
        {
          goto LABEL_27;
        }

        while (1)
        {
          v69 = v33 + 4 * *(v11 + 20);
          v70 = *(v69 + 16 * *v26);
          do
          {
            v72 = *v63++;
            v71 = v72;
          }

          while (v70 >= *(v69 + 16 * v72));
          v73 = v63 - 1;
          do
          {
            v75 = *--v29;
            v74 = v75;
          }

          while (v70 < *(v69 + 16 * v75));
          if (v73 >= v29)
          {
            break;
          }

          *v73 = v74;
          *v29 = v71;
        }

        v26 = v63 - 1;
        if (v73 > v25)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v46 = v24 - 1;
LABEL_54:
        v49 = v26 + 1;
        if (v26 + 1 >= v46)
        {
          v55 = v26 + 1;
        }

        else
        {
          v50 = v26 + 1;
          while (1)
          {
            v51 = v33 + 4 * *(v11 + 20);
            v52 = *(v51 + 16 * *v28);
            do
            {
              v54 = *v50++;
              v53 = v54;
            }

            while (*(v51 + 16 * v54) < v52);
            v55 = v50 - 1;
            do
            {
              v57 = *--v46;
              v56 = v57;
            }

            while (*(v51 + 16 * v57) >= v52);
            if (v55 >= v46)
            {
              break;
            }

            *v55 = v56;
            *v46 = v53;
            ++v41;
            if (v55 == v28)
            {
              v28 = v46;
            }
          }
        }

        if (v55 != v28)
        {
          v58 = *v28;
          v59 = *v55;
          if (*(v33 + 16 * v58 + 4 * *(v11 + 20)) < *(v33 + 16 * v59 + 4 * *(v11 + 20)))
          {
            *v55 = v58;
            *v28 = v59;
            ++v41;
          }
        }

        if (v55 == v25)
        {
          goto LABEL_27;
        }

        if (!v41)
        {
          v60 = v33 + 4 * *(v11 + 20);
          if (v55 <= v25)
          {
            v66 = v55 + 1;
            while (v66 != v24)
            {
              v67 = *(v60 + 16 * *v66);
              v68 = *(v60 + 16 * *(v66++ - 1));
              if (v67 < v68)
              {
                goto LABEL_70;
              }
            }
          }

          else
          {
            while (v49 != v55)
            {
              v61 = *(v60 + 16 * *v49);
              v62 = *(v60 + 16 * *(v49++ - 1));
              if (v61 < v62)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_27;
        }

LABEL_70:
        if (v55 > v25)
        {
          v24 = v55;
        }

        else
        {
          v26 = v55 + 1;
        }
      }

      if (v24 == v25)
      {
        goto LABEL_27;
      }
    }

    if (v37 >= v35)
    {
      *v26 = v31;
      *v28 = v32;
      v40 = *v29;
      if (*(v33 + 16 * v40 + 4 * *(v11 + 20)) >= *(v36 + 4 * *(v11 + 20)))
      {
LABEL_44:
        v41 = 1;
        goto LABEL_46;
      }

      *v28 = v40;
    }

    else
    {
      *v26 = v30;
    }

    *v29 = v32;
    goto LABEL_44;
  }

  v6 = *(a4 + 16);
  if (v6 <= a2)
  {
LABEL_122:
    v114 = 0;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v123 = 0u;
    v99 = MEMORY[0x1E69E9C10];
    v100 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v115 = 136315906;
    v116 = "operator[]";
    v117 = 1024;
    if (v100)
    {
      v101 = 3;
    }

    else
    {
      v101 = 2;
    }

    v118 = 789;
    v119 = 2048;
    v120 = v9;
    v121 = 2048;
    v122 = v6;
    _os_log_send_and_compose_impl(v101, &v114, &v123, 80, &dword_1E1C61000, v99, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v115, 38, v113);
    _os_crash_msg();
    __break(1u);
    goto LABEL_126;
  }

  *(v11 + 16) = *(*(a4 + 32) + 4 * a2);
  *v11 = 0;
  *(v11 + 8) = 0;
  return v11;
}

void *re::internal::GeomKDTree<re::Vector4<float>>::findWithinRadiusHelper(void *result, uint64_t **a2, float32x4_t *a3, _anonymous_namespace_ *a4, double a5)
{
  if (a2)
  {
    v8 = a2;
    v9 = result;
    v10 = -a5;
    v11 = a5 * a5;
    do
    {
      v12 = (*v9 + 16 * *(v8 + 4));
      v13 = *(v8 + 20);
      v14 = a3->f32[v13];
      v15 = v12->f32[v13];
      if (v14 == v15)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = (v14 - v15);
      }

      if (v16 >= v10)
      {
        if (v16 <= a5)
        {
          if ((vminvq_u32(vceqq_f32(*v12, *a3)) & 0x80000000) != 0)
          {
            v19 = 0.0;
          }

          else
          {
            v17 = vsubq_f32(*v12, *a3);
            v18 = vmulq_f32(v17, v17);
            v19 = vaddv_f32(vadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL)));
          }

          if (v19 <= v11)
          {
            re::DynamicArray<int>::add(a4, v8 + 4);
          }

          v20 = *v8++;
          result = re::internal::GeomKDTree<re::Vector4<float>>::findWithinRadiusHelper(v9, v20, a3, a4, a5);
        }

        else
        {
          ++v8;
        }
      }

      v8 = *v8;
    }

    while (v8);
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<signed char>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *,false>(uint64_t result, unsigned int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v167 = *(a2 - 1);
        v168 = *v10;
        v169 = *(*a3 + v168);
        if (*(*a3 + v167) == v169)
        {
          v170 = v167 < v168;
        }

        else
        {
          v170 = *(*a3 + v167) < v169;
        }

        if (v170)
        {
          *v10 = v167;
          *(a2 - 1) = v168;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v181 = *a3;
    }

    if (v11 == 5)
    {
      v149 = *a3;
      v150 = *(a2 - 1);
      v151 = v10[3];
      v152 = *(*a3 + v151);
      v153 = *(*a3 + v150) < v152;
      if (*(*a3 + v150) == v152)
      {
        v153 = v150 < v151;
      }

      if (!v153)
      {
        return result;
      }

      v10[3] = v150;
      *(a2 - 1) = v151;
      v155 = v10[2];
      v154 = v10[3];
      v156 = *(v149 + v155);
      v157 = *(v149 + v154) < v156;
      if (*(v149 + v154) == v156)
      {
        v157 = v154 < v155;
      }

      if (!v157)
      {
        return result;
      }

      v10[2] = v154;
      v10[3] = v155;
      v158 = v10[1];
      v159 = *(v149 + v158);
      v160 = *(v149 + v154) < v159;
      if (*(v149 + v154) == v159)
      {
        v160 = v154 < v158;
      }

      if (!v160)
      {
        return result;
      }

      v10[1] = v154;
      v10[2] = v158;
      v161 = *(v149 + v154);
      v162 = *(v149 + v154);
      v163 = *v10;
      v164 = *(v149 + v163);
      v165 = v161 < v164;
      v166 = v162 == v164 ? v154 < v163 : v165;
      if (v166 != 1)
      {
        return result;
      }

      *v10 = v154;
LABEL_282:
      v10[1] = v163;
      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v182 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v183 = *a3;
            v184 = 4;
            v185 = v10;
            do
            {
              v187 = *v185;
              v186 = v185[1];
              v185 = v182;
              v188 = *(v183 + v187);
              LODWORD(v182) = v187;
              v189 = v186 < v187;
              if (*(v183 + v186) != v188)
              {
                v189 = *(v183 + v186) < v188;
              }

              if (v189)
              {
                v190 = v184;
                while (1)
                {
                  *(v10 + v190) = v182;
                  v191 = v190 - 4;
                  if (v190 == 4)
                  {
                    break;
                  }

                  v182 = *(v10 + v190 - 8);
                  v192 = *(v182 + v183);
                  v193 = *(v183 + v186) < v192;
                  if (*(v183 + v186) == v192)
                  {
                    v193 = v186 < v182;
                  }

                  v190 -= 4;
                  if (!v193)
                  {
                    v194 = (v10 + v191);
                    goto LABEL_221;
                  }
                }

                v194 = v10;
LABEL_221:
                *v194 = v186;
              }

              v182 = v185 + 1;
              v184 += 4;
            }

            while (v185 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v247 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v248 = *a3;
          do
          {
            v250 = *v9;
            v249 = v9[1];
            v9 = v247;
            v251 = *(v248 + v250);
            LODWORD(v247) = v250;
            v252 = v249 < v250;
            if (*(v248 + v249) != v251)
            {
              v252 = *(v248 + v249) < v251;
            }

            if (v252)
            {
              v253 = v9;
              do
              {
                *v253 = v247;
                v247 = *(v253 - 2);
                v254 = *(v247 + v248);
                v255 = *(v248 + v249) < v254;
                if (*(v248 + v249) == v254)
                {
                  v255 = v249 < v247;
                }

                --v253;
              }

              while (v255);
              *v253 = v249;
            }

            v247 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v195 = (v11 - 2) >> 1;
        v196 = *a3;
        v197 = v195;
        do
        {
          v198 = v197;
          if (v195 >= v197)
          {
            v199 = (2 * v197) | 1;
            v200 = &v10[v199];
            if (2 * v198 + 2 >= v11)
            {
              LODWORD(v206) = *v200;
            }

            else
            {
              v201 = *v200;
              v202 = v200[1];
              v203 = *(v196 + v202);
              v204 = *(v196 + v201) < v203;
              if (*(v196 + v201) == v203)
              {
                v204 = v201 < v202;
              }

              v205 = !v204;
              if (v204)
              {
                LODWORD(v206) = v200[1];
              }

              else
              {
                LODWORD(v206) = *v200;
              }

              if (!v205)
              {
                ++v200;
                v199 = 2 * v198 + 2;
              }
            }

            v207 = &v10[v198];
            result = *(v196 + v206);
            v208 = *v207;
            v209 = *(v196 + *v207);
            v210 = *(v196 + v206) < v209;
            if (result == v209)
            {
              v210 = v206 < *v207;
            }

            if (!v210)
            {
              do
              {
                *v207 = v206;
                v207 = v200;
                if (v195 < v199)
                {
                  break;
                }

                v211 = (2 * v199) | 1;
                v200 = &v10[v211];
                v199 = 2 * v199 + 2;
                if (v199 >= v11)
                {
                  LODWORD(v206) = *v200;
                  v199 = v211;
                }

                else
                {
                  v206 = *v200;
                  v212 = v200[1];
                  v213 = *(v196 + v212);
                  v214 = *(v196 + v206) < v213;
                  if (*(v196 + v206) == v213)
                  {
                    v214 = v206 < v212;
                  }

                  if (v214)
                  {
                    LODWORD(v206) = v200[1];
                    ++v200;
                  }

                  else
                  {
                    v199 = v211;
                  }
                }

                result = *(v196 + v206);
                v215 = *(v196 + v208);
                v216 = *(v196 + v206) < v215;
                if (result == v215)
                {
                  v216 = v206 < v208;
                }
              }

              while (!v216);
              *v207 = v208;
            }
          }

          v197 = v198 - 1;
        }

        while (v198);
        do
        {
          v217 = 0;
          v218 = *v10;
          v219 = *a3;
          v220 = v10;
          do
          {
            v221 = &v220[v217];
            v222 = v221 + 1;
            v223 = (2 * v217) | 1;
            v217 = 2 * v217 + 2;
            if (v217 >= v11)
            {
              v225 = *v222;
              v217 = v223;
            }

            else
            {
              v226 = v221[2];
              v224 = v221 + 2;
              v225 = v226;
              result = *(v224 - 1);
              v227 = *(v219 + v226);
              v228 = result < v226;
              v229 = *(v219 + result) < v227;
              if (*(v219 + result) == v227)
              {
                v229 = v228;
              }

              if (v229)
              {
                v222 = v224;
              }

              else
              {
                v225 = *(v224 - 1);
                v217 = v223;
              }
            }

            *v220 = v225;
            v220 = v222;
          }

          while (v217 <= ((v11 - 2) >> 1));
          if (v222 == --a2)
          {
            *v222 = v218;
          }

          else
          {
            *v222 = *a2;
            *a2 = v218;
            v230 = (v222 - v10 + 4) >> 2;
            v231 = v230 < 2;
            v232 = v230 - 2;
            if (!v231)
            {
              v233 = v232 >> 1;
              v234 = &v10[v233];
              v235 = *v234;
              v236 = *v222;
              v237 = *(v219 + *v222);
              result = v235 < *v222;
              v238 = *(v219 + v235) < v237;
              if (*(v219 + v235) == v237)
              {
                v238 = v235 < *v222;
              }

              if (v238)
              {
                do
                {
                  *v222 = v235;
                  v222 = v234;
                  if (!v233)
                  {
                    break;
                  }

                  v233 = (v233 - 1) >> 1;
                  v234 = &v10[v233];
                  v235 = *v234;
                  v239 = *(v219 + v236);
                  result = v235 < v236;
                  v240 = *(v219 + v235) < v239;
                  if (*(v219 + v235) == v239)
                  {
                    v240 = v235 < v236;
                  }
                }

                while (v240);
                *v222 = v236;
              }
            }
          }

          v231 = v11-- <= 2;
        }

        while (!v231);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *a3;
    v15 = *(a2 - 1);
    v16 = *(*a3 + v15);
    if (v11 >= 0x81)
    {
      v17 = *v12;
      v18 = *(v14 + v17);
      v19 = *v10;
      v20 = *(v14 + *v10);
      if (*(v14 + v17) == v20)
      {
        v21 = v17 < *v10;
      }

      else
      {
        v21 = v18 < v20;
      }

      if (v16 == v18)
      {
        v22 = v15 < v17;
      }

      else
      {
        v22 = v18 > v16;
      }

      if (v21)
      {
        if (v22)
        {
          *v10 = v15;
          goto LABEL_45;
        }

        *v10 = v17;
        *v12 = v19;
        v37 = *(a2 - 1);
        v38 = *(v14 + v19);
        v39 = *(v14 + v37) < v38;
        if (*(v14 + v37) == v38)
        {
          v39 = v37 < v19;
        }

        if (v39)
        {
          *v12 = v37;
LABEL_45:
          *(a2 - 1) = v19;
        }
      }

      else if (v22)
      {
        *v12 = v15;
        *(a2 - 1) = v17;
        v29 = *v12;
        v30 = *v10;
        v31 = *(v14 + v30);
        v32 = *(v14 + v29) < v31;
        if (*(v14 + v29) == v31)
        {
          v32 = v29 < v30;
        }

        if (v32)
        {
          *v10 = v29;
          *v12 = v30;
        }
      }

      v40 = v12 - 1;
      v41 = *(v12 - 1);
      v42 = *(v14 + v41);
      v43 = *(v14 + v41);
      v44 = v10[1];
      v45 = *(v14 + v44);
      v46 = v41 < v44;
      if (v43 != v45)
      {
        v46 = v42 < v45;
      }

      v47 = *(a2 - 2);
      v48 = *(v14 + v47);
      v49 = v48 < v42;
      if (v43 == v48)
      {
        v49 = v47 < v41;
      }

      if (v46)
      {
        if (v49)
        {
          v10[1] = v47;
          goto LABEL_67;
        }

        v10[1] = v41;
        *v40 = v44;
        v57 = *(a2 - 2);
        v58 = *(v14 + v44);
        v59 = *(v14 + v57) < v58;
        if (*(v14 + v57) == v58)
        {
          v59 = v57 < v44;
        }

        if (v59)
        {
          *v40 = v57;
LABEL_67:
          *(a2 - 2) = v44;
        }
      }

      else if (v49)
      {
        *v40 = v47;
        *(a2 - 2) = v41;
        v50 = *v40;
        v51 = v10[1];
        v52 = *(v14 + v51);
        v53 = *(v14 + v50) < v52;
        if (*(v14 + v50) == v52)
        {
          v53 = v50 < v51;
        }

        if (v53)
        {
          v10[1] = v50;
          *v40 = v51;
        }
      }

      v62 = v12[1];
      v60 = v12 + 1;
      v61 = v62;
      v63 = *(v14 + v62);
      v64 = *(v14 + v62);
      v65 = v10[2];
      v66 = *(v14 + v65);
      v67 = v62 < v65;
      if (v64 != v66)
      {
        v67 = v63 < v66;
      }

      v68 = *(a2 - 3);
      v69 = *(v14 + v68);
      v70 = v69 < v63;
      if (v64 == v69)
      {
        v70 = v68 < v61;
      }

      if (v67)
      {
        if (v70)
        {
          v10[2] = v68;
          goto LABEL_84;
        }

        v10[2] = v61;
        *v60 = v65;
        v75 = *(a2 - 3);
        v76 = *(v14 + v65);
        v77 = *(v14 + v75) < v76;
        if (*(v14 + v75) == v76)
        {
          v77 = v75 < v65;
        }

        if (v77)
        {
          *v60 = v75;
LABEL_84:
          *(a2 - 3) = v65;
        }
      }

      else if (v70)
      {
        *v60 = v68;
        *(a2 - 3) = v61;
        v71 = *v60;
        v72 = v10[2];
        v73 = *(v14 + v72);
        v74 = *(v14 + v71) < v73;
        if (*(v14 + v71) == v73)
        {
          v74 = v71 < v72;
        }

        if (v74)
        {
          v10[2] = v71;
          *v60 = v72;
        }
      }

      v78 = *v13;
      v79 = *(v14 + v78);
      v80 = *(v14 + v78);
      v81 = *v40;
      v82 = *(v14 + *v40);
      v83 = v78 < *v40;
      if (v80 != v82)
      {
        v83 = v79 < v82;
      }

      v84 = *v60;
      result = *(v14 + *v60);
      v85 = result < v79;
      if (v80 == *(v14 + *v60))
      {
        v85 = *v60 < v78;
      }

      if (v83)
      {
        if (!v85)
        {
          *v40 = v78;
          *v13 = v81;
          v86 = *(v14 + v81);
          v87 = *(v14 + v84) == v86 ? v84 < v81 : *(v14 + v84) < v86;
          v40 = v13;
          LODWORD(v78) = v84;
          if (!v87)
          {
            LODWORD(v78) = v81;
LABEL_102:
            v90 = *v10;
            *v10 = v78;
            *v13 = v90;
            goto LABEL_103;
          }
        }
      }

      else
      {
        if (!v85)
        {
          goto LABEL_102;
        }

        *v13 = v84;
        *v60 = v78;
        v88 = *(v14 + v81);
        if (*(v14 + v84) == v88)
        {
          v89 = v84 < v81;
        }

        else
        {
          v89 = *(v14 + v84) < v88;
        }

        v60 = v13;
        LODWORD(v78) = v81;
        if (!v89)
        {
          LODWORD(v78) = v84;
          goto LABEL_102;
        }
      }

      *v40 = v84;
      *v60 = v81;
      goto LABEL_102;
    }

    v23 = *v10;
    v24 = *(v14 + v23);
    v25 = *v13;
    v26 = *(v14 + *v13);
    result = v24 < v26;
    if (*(v14 + v23) == v26)
    {
      v27 = v23 < *v13;
    }

    else
    {
      v27 = v24 < v26;
    }

    if (v16 == v24)
    {
      v28 = v15 < v23;
    }

    else
    {
      v28 = v24 > v16;
    }

    if (v27)
    {
      if (v28)
      {
        *v13 = v15;
LABEL_62:
        *(a2 - 1) = v25;
        goto LABEL_103;
      }

      *v13 = v23;
      *v10 = v25;
      v54 = *(a2 - 1);
      v55 = *(v14 + v25);
      v56 = *(v14 + v54) < v55;
      if (*(v14 + v54) == v55)
      {
        v56 = v54 < v25;
      }

      if (v56)
      {
        *v10 = v54;
        goto LABEL_62;
      }
    }

    else if (v28)
    {
      *v10 = v15;
      *(a2 - 1) = v23;
      v33 = *v10;
      v34 = *v13;
      v35 = *(v14 + v34);
      v36 = *(v14 + v33) < v35;
      if (*(v14 + v33) == v35)
      {
        v36 = v33 < v34;
      }

      if (v36)
      {
        *v13 = v33;
        *v10 = v34;
      }
    }

LABEL_103:
    --a4;
    v91 = *v10;
    if (a5)
    {
      v92 = *(v14 + v91);
      goto LABEL_108;
    }

    v93 = *(v10 - 1);
    v94 = *(v14 + v93);
    v92 = *(v14 + v91);
    v95 = v93 < v91;
    if (v92 != v94)
    {
      v95 = v94 < *(v14 + v91);
    }

    if (v95)
    {
LABEL_108:
      v96 = 0;
      do
      {
        v97 = v10[v96 + 1];
        v98 = *(v14 + v97);
        if (v92 == v98)
        {
          v99 = v97 < v91;
        }

        else
        {
          v99 = v98 < v92;
        }

        ++v96;
      }

      while (v99);
      v100 = &v10[v96];
      v101 = a2;
      if (v96 == 1)
      {
        v101 = a2;
        do
        {
          if (v100 >= v101)
          {
            break;
          }

          v105 = *--v101;
          v106 = *(v14 + v105);
          v107 = v105 < v91;
          if (v92 != v106)
          {
            v107 = v106 < v92;
          }
        }

        while (!v107);
      }

      else
      {
        do
        {
          v102 = *--v101;
          v103 = *(v14 + v102);
          v104 = v102 < v91;
          if (v92 != v103)
          {
            v104 = v103 < v92;
          }
        }

        while (!v104);
      }

      if (v100 >= v101)
      {
        v121 = v100 - 1;
      }

      else
      {
        v108 = *v101;
        v109 = v97;
        v110 = v100;
        v111 = v101;
        do
        {
          *v110 = v108;
          *v111 = v109;
          v112 = *(v14 + v91);
          do
          {
            v113 = v110[1];
            ++v110;
            v109 = v113;
            v114 = *(v14 + v113);
            v115 = v113 < v91;
            if (v112 == v114)
            {
              v116 = v115;
            }

            else
            {
              v116 = v114 < v112;
            }
          }

          while (v116);
          do
          {
            v117 = *--v111;
            v108 = v117;
            v118 = *(v14 + v117);
            v119 = v117 < v91;
            if (v112 == v118)
            {
              v120 = v119;
            }

            else
            {
              v120 = v118 < v112;
            }
          }

          while (!v120);
        }

        while (v110 < v111);
        v121 = v110 - 1;
      }

      if (v121 != v10)
      {
        *v10 = *v121;
      }

      *v121 = v91;
      if (v100 < v101)
      {
        goto LABEL_142;
      }

      v10 = v121 + 1;
      if (result)
      {
        a2 = v121;
        if (!v122)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v122)
      {
LABEL_142:
        a5 = 0;
        v10 = v121 + 1;
      }
    }

    else
    {
      v123 = *(a2 - 1);
      v124 = *(v14 + v123);
      v125 = v91 < v123;
      if (v92 != v124)
      {
        v125 = v124 > v92;
      }

      if (v125)
      {
        do
        {
          v126 = v10[1];
          ++v10;
          v127 = *(v14 + v126);
          v128 = v91 < v126;
          if (v92 != v127)
          {
            v128 = v127 > v92;
          }
        }

        while (!v128);
      }

      else
      {
        v129 = (v10 + 1);
        do
        {
          v10 = v129;
          if (v129 >= a2)
          {
            break;
          }

          v129 += 4;
          v130 = *v10;
          v131 = *(v14 + v130);
          v132 = v91 < v130;
          if (v92 != v131)
          {
            v132 = v131 > v92;
          }
        }

        while (!v132);
      }

      v133 = a2;
      if (v10 < a2)
      {
        v133 = a2;
        do
        {
          v134 = *--v133;
          v135 = *(v14 + v134);
          v136 = v91 < v134;
          if (v92 != v135)
          {
            v136 = v135 > v92;
          }
        }

        while (v136);
      }

      if (v10 < v133)
      {
        v137 = *v10;
        v138 = *v133;
        do
        {
          *v10 = v138;
          *v133 = v137;
          v139 = *(v14 + v91);
          do
          {
            v140 = v10[1];
            ++v10;
            v137 = v140;
            v141 = *(v14 + v140);
            v142 = v91 < v140;
            if (v139 == v141)
            {
              v143 = v142;
            }

            else
            {
              v143 = v141 > v139;
            }
          }

          while (!v143);
          do
          {
            v144 = *--v133;
            v138 = v144;
            v145 = *(v14 + v144);
            v146 = v91 < v144;
            if (v139 == v145)
            {
              v147 = v146;
            }

            else
            {
              v147 = v145 > v139;
            }
          }

          while (v147);
        }

        while (v10 < v133);
      }

      v148 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v148;
      }

      a5 = 0;
      *v148 = v91;
    }
  }

  v171 = *a3;
  v172 = *v10;
  v173 = v10[1];
  v174 = *(*a3 + v173);
  v175 = *(*a3 + v173);
  v176 = *(*a3 + *v10);
  v177 = v173 < *v10;
  if (v175 != v176)
  {
    v177 = v174 < v176;
  }

  v178 = *(a2 - 1);
  v179 = *(v171 + v178);
  v180 = v179 < v174;
  if (v175 == v179)
  {
    v180 = v178 < v173;
  }

  if (v177)
  {
    if (v180)
    {
      *v10 = v178;
    }

    else
    {
      *v10 = v173;
      v10[1] = v172;
      v256 = *(a2 - 1);
      v257 = *(v171 + v256);
      v258 = *(v171 + v256);
      v259 = *(v171 + v172);
      v260 = v257 < v259;
      if (v258 == v259)
      {
        v261 = v256 < v172;
      }

      else
      {
        v261 = v260;
      }

      if (!v261)
      {
        return result;
      }

      v10[1] = v256;
    }

    *(a2 - 1) = v172;
    return result;
  }

  if (v180)
  {
    v10[1] = v178;
    *(a2 - 1) = v173;
    v163 = *v10;
    v241 = v10[1];
    v242 = *(v171 + v241);
    v243 = *(v171 + v241);
    v244 = *(v171 + v163);
    v245 = v242 < v244;
    v246 = v243 == v244 ? v241 < v163 : v245;
    if (v246 == 1)
    {
      *v10 = v241;
      goto LABEL_282;
    }
  }

  return result;
}

unsigned int *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<signed char>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *,0>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *(a5 + v5);
  v7 = *(a5 + v5);
  v8 = *result;
  v9 = *(a5 + v8);
  v10 = v5 < v8;
  if (v7 != v9)
  {
    v10 = v6 < v9;
  }

  v11 = *a3;
  v12 = *(a5 + *a3);
  v13 = v12 < v6;
  if (v7 == v12)
  {
    v13 = *a3 < v5;
  }

  if (v10)
  {
    if (v13)
    {
      *result = v11;
LABEL_17:
      *a3 = v8;
      goto LABEL_18;
    }

    *result = v5;
    *a2 = v8;
    v11 = *a3;
    v18 = *(a5 + v8);
    v19 = *(a5 + *a3) < v18;
    if (*(a5 + *a3) == v18)
    {
      v19 = *a3 < v8;
    }

    if (v19)
    {
      *a2 = v11;
      goto LABEL_17;
    }

    v8 = *a3;
  }

  else if (v13)
  {
    *a2 = v11;
    *a3 = v5;
    v14 = *a2;
    v15 = *result;
    v16 = *(a5 + v15);
    v17 = *(a5 + v14) < v16;
    if (*(a5 + v14) == v16)
    {
      v17 = v14 < v15;
    }

    if (v17)
    {
      *result = v14;
      *a2 = v15;
      v8 = *a3;
LABEL_18:
      v11 = v8;
      goto LABEL_22;
    }

    v8 = v5;
    v11 = v5;
  }

  else
  {
    v8 = *a3;
  }

LABEL_22:
  v20 = *a4;
  v21 = *(a5 + v8);
  if (*(a5 + v20) == v21)
  {
    v22 = v20 < v11;
  }

  else
  {
    v22 = *(a5 + v20) < v21;
  }

  if (v22)
  {
    *a3 = v20;
    *a4 = v11;
    v23 = *a3;
    v24 = *a2;
    v25 = *(a5 + v24);
    v26 = *(a5 + v23) < v25;
    if (*(a5 + v23) == v25)
    {
      v26 = v23 < v24;
    }

    if (v26)
    {
      *a2 = v23;
      *a3 = v24;
      v27 = *a2;
      v28 = *result;
      v29 = *(a5 + v28);
      v30 = *(a5 + v27) < v29;
      if (*(a5 + v27) == v29)
      {
        v30 = v27 < v28;
      }

      if (v30)
      {
        *result = v27;
        *a2 = v28;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<signed char>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t *a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v29 = *a3;
        v30 = *a1;
        v31 = a1[1];
        v32 = *(*a3 + v31);
        v33 = *(*a3 + v31);
        v34 = *(*a3 + *a1);
        v35 = v31 < *a1;
        if (v33 != v34)
        {
          v35 = v32 < v34;
        }

        v36 = *(a2 - 1);
        v37 = *(v29 + v36);
        v38 = v37 < v32;
        if (v33 == v37)
        {
          v38 = v36 < v31;
        }

        if (v35)
        {
          if (v38)
          {
            *a1 = v36;
          }

          else
          {
            *a1 = v31;
            a1[1] = v30;
            v75 = *(a2 - 1);
            v76 = *(v29 + v75);
            v77 = *(v29 + v75);
            v78 = *(v29 + v30);
            v79 = v76 < v78;
            if (v77 == v78)
            {
              v80 = v75 < v30;
            }

            else
            {
              v80 = v79;
            }

            if (!v80)
            {
              return 1;
            }

            a1[1] = v75;
          }

          *(a2 - 1) = v30;
          return 1;
        }

        if (!v38)
        {
          return 1;
        }

        a1[1] = v36;
        *(a2 - 1) = v31;
        v25 = *a1;
        v55 = a1[1];
        v56 = *(v29 + v55);
        v57 = *(v29 + v55);
        v58 = *(v29 + v25);
        v59 = v56 < v58;
        v60 = v57 == v58 ? v55 < v25 : v59;
        if (v60 != 1)
        {
          return 1;
        }

        *a1 = v55;
        break;
      case 4:
        return 1;
      case 5:
        v11 = *a3;
        v12 = *(a2 - 1);
        v13 = a1[3];
        v14 = *(*a3 + v13);
        v15 = *(*a3 + v12) < v14;
        if (*(*a3 + v12) == v14)
        {
          v15 = v12 < v13;
        }

        if (!v15)
        {
          return 1;
        }

        a1[3] = v12;
        *(a2 - 1) = v13;
        v17 = a1[2];
        v16 = a1[3];
        v18 = *(v11 + v17);
        v19 = *(v11 + v16) < v18;
        if (*(v11 + v16) == v18)
        {
          v19 = v16 < v17;
        }

        if (!v19)
        {
          return 1;
        }

        a1[2] = v16;
        a1[3] = v17;
        v20 = a1[1];
        v21 = *(v11 + v20);
        v22 = *(v11 + v16) < v21;
        if (*(v11 + v16) == v21)
        {
          v22 = v16 < v20;
        }

        if (!v22)
        {
          return 1;
        }

        a1[1] = v16;
        a1[2] = v20;
        v23 = *(v11 + v16);
        v24 = *(v11 + v16);
        v25 = *a1;
        v26 = *(v11 + v25);
        v27 = v23 < v26;
        v28 = v24 == v26 ? v16 < v25 : v27;
        if (v28 != 1)
        {
          return 1;
        }

        *a1 = v16;
        break;
      default:
        goto LABEL_33;
    }

    a1[1] = v25;
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *(a2 - 1);
    v8 = *a1;
    v9 = *(*a3 + v8);
    if (*(*a3 + v7) == v9)
    {
      v10 = v7 < v8;
    }

    else
    {
      v10 = *(*a3 + v7) < v9;
    }

    if (v10)
    {
      *a1 = v7;
      *(a2 - 1) = v8;
    }

    return 1;
  }

LABEL_33:
  v39 = a1 + 2;
  v40 = a1[2];
  v41 = a1[1];
  v42 = *a3;
  v43 = *(*a3 + v41);
  v44 = *(*a3 + v41);
  v45 = *a1;
  v46 = *(*a3 + *a1);
  v47 = v41 < *a1;
  if (v44 != v46)
  {
    v47 = v43 < v46;
  }

  v48 = *(v42 + v40);
  v49 = v48 < v43;
  if (v44 == v48)
  {
    v50 = v40 < v41;
  }

  else
  {
    v50 = v49;
  }

  if (v47)
  {
    v51 = a1;
    v52 = a1 + 2;
    if (!v50)
    {
      *a1 = v41;
      a1[1] = v45;
      v53 = *(v42 + v45);
      v54 = *(v42 + v40) < v53;
      if (*(v42 + v40) == v53)
      {
        v54 = v40 < v45;
      }

      v51 = a1 + 1;
      v52 = a1 + 2;
      if (!v54)
      {
        goto LABEL_57;
      }
    }

LABEL_56:
    *v51 = v40;
    *v52 = v45;
    goto LABEL_57;
  }

  if (v50)
  {
    a1[1] = v40;
    *v39 = v41;
    v61 = *(v42 + v45);
    v62 = *(v42 + v40) < v61;
    if (*(v42 + v40) == v61)
    {
      v62 = v40 < v45;
    }

    v51 = a1;
    v52 = a1 + 1;
    if (v62)
    {
      goto LABEL_56;
    }
  }

LABEL_57:
  v63 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v64 = 0;
  for (i = 12; ; i += 4)
  {
    v66 = *v63;
    v67 = *v39;
    v68 = *(v42 + v67);
    v69 = *(v42 + *v63) < v68;
    if (*(v42 + *v63) == v68)
    {
      v69 = *v63 < v67;
    }

    if (v69)
    {
      v70 = i;
      while (1)
      {
        *(a1 + v70) = v67;
        v71 = v70 - 4;
        if (v70 == 4)
        {
          break;
        }

        v67 = *(a1 + v70 - 8);
        v72 = *(v42 + v67);
        v73 = *(v42 + v66) < v72;
        if (*(v42 + v66) == v72)
        {
          v73 = v66 < v67;
        }

        v70 -= 4;
        if (!v73)
        {
          v74 = (a1 + v71);
          goto LABEL_69;
        }
      }

      v74 = a1;
LABEL_69:
      *v74 = v66;
      if (++v64 == 8)
      {
        break;
      }
    }

    v39 = v63++;
    if (v63 == a2)
    {
      return 1;
    }
  }

  return v63 + 1 == a2;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<short>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *,false>(uint64_t result, unsigned int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
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
      v170 = *(a2 - 1);
      v171 = *v10;
      v172 = *(*a3 + 2 * v171);
      if (*(*a3 + 2 * v170) == v172)
      {
        v173 = v170 < v171;
      }

      else
      {
        v173 = *(*a3 + 2 * v170) < v172;
      }

      if (v173)
      {
        *v10 = v170;
LABEL_316:
        *(a2 - 1) = v171;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v184 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v185 = *a3;
            v186 = 4;
            v187 = v10;
            do
            {
              v189 = *v187;
              v188 = v187[1];
              v187 = v184;
              v190 = *(v185 + 2 * v188);
              v191 = *(v185 + 2 * v189);
              v192 = *(v185 + 2 * v188) < v191;
              if (v190 == v191)
              {
                v192 = v188 < v189;
              }

              if (v192)
              {
                v193 = v186;
                while (1)
                {
                  *(v10 + v193) = v189;
                  v194 = v193 - 4;
                  if (v193 == 4)
                  {
                    break;
                  }

                  v189 = *(v10 + v193 - 8);
                  v195 = *(v185 + 2 * v189);
                  v196 = v188 < v189;
                  if (v190 != v195)
                  {
                    v196 = v195 > v190;
                  }

                  v193 = v194;
                  if (!v196)
                  {
                    v197 = (v10 + v194);
                    goto LABEL_232;
                  }
                }

                v197 = v10;
LABEL_232:
                *v197 = v188;
              }

              v184 = v187 + 1;
              v186 += 4;
            }

            while (v187 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v248 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v249 = *a3;
          do
          {
            v251 = *v9;
            v250 = v9[1];
            v9 = v248;
            v252 = *(v249 + 2 * v250);
            v253 = *(v249 + 2 * v251);
            v254 = *(v249 + 2 * v250) < v253;
            if (v252 == v253)
            {
              v254 = v250 < v251;
            }

            if (v254)
            {
              v255 = v9;
              do
              {
                *v255 = v251;
                v251 = *(v255 - 2);
                v256 = *(v249 + 2 * v251);
                if (v252 == v256)
                {
                  v257 = v250 < v251;
                }

                else
                {
                  v257 = v256 > v252;
                }

                --v255;
              }

              while (v257);
              *v255 = v250;
            }

            v248 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v198 = (v11 - 2) >> 1;
        v199 = *a3;
        v200 = v198;
        do
        {
          v201 = v200;
          if (v198 >= v200)
          {
            v202 = (2 * v200) | 1;
            v203 = &v10[v202];
            if (2 * v201 + 2 >= v11)
            {
              LODWORD(v208) = *v203;
            }

            else
            {
              v204 = *v203;
              v205 = v203[1];
              v206 = *(v199 + 2 * v205);
              v207 = *(v199 + 2 * v204) < v206;
              if (*(v199 + 2 * v204) == v206)
              {
                v207 = v204 < v205;
              }

              if (v207)
              {
                LODWORD(v208) = v203[1];
              }

              else
              {
                LODWORD(v208) = *v203;
              }

              if (v207)
              {
                ++v203;
                v202 = 2 * v201 + 2;
              }
            }

            v209 = &v10[v201];
            v210 = *(v199 + 2 * v208);
            v211 = *v209;
            v212 = *(v199 + 2 * v211);
            if (v212 == v210)
            {
              result = v208 < v211;
            }

            else
            {
              result = v210 < *(v199 + 2 * v211);
            }

            if ((result & 1) == 0)
            {
              do
              {
                *v209 = v208;
                v209 = v203;
                if (v198 < v202)
                {
                  break;
                }

                v213 = (2 * v202) | 1;
                v203 = &v10[v213];
                v202 = 2 * v202 + 2;
                if (v202 >= v11)
                {
                  LODWORD(v208) = *v203;
                  v202 = v213;
                }

                else
                {
                  v208 = *v203;
                  v214 = v203[1];
                  v215 = *(v199 + 2 * v214);
                  v216 = *(v199 + 2 * v208) < v215;
                  if (*(v199 + 2 * v208) == v215)
                  {
                    v216 = v208 < v214;
                  }

                  if (v216)
                  {
                    LODWORD(v208) = v203[1];
                    ++v203;
                  }

                  else
                  {
                    v202 = v213;
                  }
                }

                v217 = *(v199 + 2 * v208);
                result = v212 == v217 ? v208 < v211 : v217 < v212;
              }

              while (result != 1);
              *v209 = v211;
            }
          }

          v200 = v201 - 1;
        }

        while (v201);
        do
        {
          v218 = 0;
          v219 = *v10;
          v220 = *a3;
          v221 = v10;
          do
          {
            v222 = &v221[v218];
            v223 = v222 + 1;
            v224 = (2 * v218) | 1;
            v218 = 2 * v218 + 2;
            if (v218 >= v11)
            {
              v226 = *v223;
              v218 = v224;
            }

            else
            {
              v227 = v222[2];
              v225 = v222 + 2;
              v226 = v227;
              result = *(v225 - 1);
              v228 = *(v220 + 2 * v227);
              v229 = result < v227;
              v230 = *(v220 + 2 * result) < v228;
              if (*(v220 + 2 * result) == v228)
              {
                v230 = v229;
              }

              if (v230)
              {
                v223 = v225;
              }

              else
              {
                v226 = *(v225 - 1);
                v218 = v224;
              }
            }

            *v221 = v226;
            v221 = v223;
          }

          while (v218 <= ((v11 - 2) >> 1));
          if (v223 == --a2)
          {
            *v223 = v219;
          }

          else
          {
            *v223 = *a2;
            *a2 = v219;
            v231 = (v223 - v10 + 4) >> 2;
            v232 = v231 < 2;
            v233 = v231 - 2;
            if (!v232)
            {
              v234 = v233 >> 1;
              v235 = &v10[v234];
              v236 = *v235;
              v237 = *(v220 + 2 * v236);
              v238 = *v223;
              v239 = *(v220 + 2 * v238);
              result = v236 < v238;
              if (v239 == v237 ? v236 < v238 : v237 < *(v220 + 2 * v238))
              {
                do
                {
                  *v223 = v236;
                  v223 = v235;
                  if (!v234)
                  {
                    break;
                  }

                  v234 = (v234 - 1) >> 1;
                  v235 = &v10[v234];
                  v236 = *v235;
                  v241 = *(v220 + 2 * v236);
                  result = v241 < v239;
                }

                while (v239 == v241 ? v236 < v238 : v241 < v239);
                *v223 = v238;
              }
            }
          }

          v232 = v11-- <= 2;
        }

        while (!v232);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *a3;
    v15 = *(a2 - 1);
    v16 = *(*a3 + 2 * v15);
    if (v11 >= 0x81)
    {
      v17 = *v12;
      v18 = *(v14 + 2 * v17);
      v19 = *v10;
      v20 = *(v14 + 2 * v19);
      if (*(v14 + 2 * v17) == v20)
      {
        v21 = v17 < v19;
      }

      else
      {
        v21 = v18 < v20;
      }

      if (v16 == v18)
      {
        v22 = v15 < v17;
      }

      else
      {
        v22 = v18 > v16;
      }

      if (v21)
      {
        if (v22)
        {
          *v10 = v15;
          goto LABEL_48;
        }

        *v10 = v17;
        *v12 = v19;
        v39 = *(a2 - 1);
        v40 = *(v14 + 2 * v39);
        if (v20 == v40)
        {
          v41 = v39 < v19;
        }

        else
        {
          v41 = v40 < v20;
        }

        if (v41)
        {
          *v12 = v39;
LABEL_48:
          *(a2 - 1) = v19;
        }
      }

      else if (v22)
      {
        *v12 = v15;
        *(a2 - 1) = v17;
        v29 = *v12;
        v30 = *(v14 + 2 * v29);
        v31 = *v10;
        v32 = *(v14 + 2 * v31);
        if (v30 == v32 ? v29 < v31 : v30 < v32)
        {
          *v10 = v29;
          *v12 = v31;
        }
      }

      v42 = v12 - 1;
      v43 = *(v12 - 1);
      v44 = *(v14 + 2 * v43);
      v45 = *(v14 + 2 * v43);
      v46 = v10[1];
      v47 = *(v14 + 2 * v46);
      v48 = v44 < v47;
      if (v45 == v47)
      {
        v48 = v43 < v46;
      }

      v49 = *(a2 - 2);
      v50 = *(v14 + 2 * v49);
      v51 = v50 < v44;
      if (v45 == v50)
      {
        v51 = v49 < v43;
      }

      if (v48)
      {
        if (v51)
        {
          v10[1] = v49;
          goto LABEL_73;
        }

        v62 = *(v14 + 2 * v46);
        v10[1] = v43;
        *v42 = v46;
        v63 = *(a2 - 2);
        v64 = *(v14 + 2 * v63);
        if (v62 == v64)
        {
          v65 = v63 < v46;
        }

        else
        {
          v65 = v64 < v62;
        }

        if (v65)
        {
          *v42 = v63;
LABEL_73:
          *(a2 - 2) = v46;
        }
      }

      else if (v51)
      {
        *v42 = v49;
        *(a2 - 2) = v43;
        v52 = *v42;
        v53 = *(v14 + 2 * v52);
        v54 = v10[1];
        v55 = *(v14 + 2 * v54);
        if (v53 == v55 ? v52 < v54 : v53 < v55)
        {
          v10[1] = v52;
          *v42 = v54;
        }
      }

      v68 = v12[1];
      v66 = v12 + 1;
      v67 = v68;
      v69 = *(v14 + 2 * v68);
      v70 = *(v14 + 2 * v68);
      v71 = v10[2];
      v72 = *(v14 + 2 * v71);
      v73 = v68 < v71;
      v74 = v69 < v72;
      if (v70 == v72)
      {
        v74 = v73;
      }

      v75 = *(a2 - 3);
      v76 = *(v14 + 2 * v75);
      v77 = v76 < v69;
      if (v70 == v76)
      {
        v77 = v75 < v67;
      }

      if (v74)
      {
        if (v77)
        {
          v10[2] = v75;
          goto LABEL_92;
        }

        v83 = *(v14 + 2 * v71);
        v10[2] = v67;
        *v66 = v71;
        v84 = *(a2 - 3);
        v85 = *(v14 + 2 * v84);
        if (v83 == v85)
        {
          v86 = v84 < v71;
        }

        else
        {
          v86 = v85 < v83;
        }

        if (v86)
        {
          *v66 = v84;
LABEL_92:
          *(a2 - 3) = v71;
        }
      }

      else if (v77)
      {
        *v66 = v75;
        *(a2 - 3) = v67;
        v78 = *v66;
        v79 = *(v14 + 2 * v78);
        v80 = v10[2];
        v81 = *(v14 + 2 * v80);
        if (v79 == v81 ? v78 < v80 : v79 < v81)
        {
          v10[2] = v78;
          *v66 = v80;
        }
      }

      v87 = *v13;
      v88 = *(v14 + 2 * v87);
      v89 = *v42;
      v90 = *(v14 + 2 * v89);
      v91 = *(v14 + 2 * v89);
      if (*(v14 + 2 * v87) == v90)
      {
        result = v87 < v89;
      }

      else
      {
        result = v88 < v90;
      }

      v92 = *v66;
      v93 = *(v14 + 2 * v92);
      if (v93 == v88)
      {
        v94 = v92 < v87;
      }

      else
      {
        v94 = *(v14 + 2 * v92) < v88;
      }

      if (result)
      {
        if (!v94)
        {
          *v42 = v87;
          *v13 = v89;
          v95 = v93 == v91 ? v92 < v89 : v93 < v91;
          v42 = v13;
          LODWORD(v87) = v92;
          if (!v95)
          {
            LODWORD(v87) = v89;
LABEL_112:
            v97 = *v10;
            *v10 = v87;
            *v13 = v97;
            goto LABEL_113;
          }
        }
      }

      else
      {
        if (!v94)
        {
          goto LABEL_112;
        }

        *v13 = v92;
        *v66 = v87;
        if (v93 == v91)
        {
          v96 = v92 < v89;
        }

        else
        {
          v96 = v93 < v91;
        }

        v66 = v13;
        LODWORD(v87) = v89;
        if (!v96)
        {
          LODWORD(v87) = v92;
          goto LABEL_112;
        }
      }

      *v42 = v92;
      *v66 = v89;
      goto LABEL_112;
    }

    v23 = *v10;
    v24 = *(v14 + 2 * v23);
    v25 = *v13;
    v26 = *(v14 + 2 * v25);
    if (*(v14 + 2 * v23) == v26)
    {
      v27 = v23 < v25;
    }

    else
    {
      v27 = v24 < v26;
    }

    result = v24 > v16;
    if (v16 == v24)
    {
      v28 = v15 < v23;
    }

    else
    {
      v28 = v24 > v16;
    }

    if (v27)
    {
      if (v28)
      {
        *v13 = v15;
LABEL_67:
        *(a2 - 1) = v25;
        goto LABEL_113;
      }

      v57 = *(v14 + 2 * v25);
      *v13 = v23;
      *v10 = v25;
      v58 = *(a2 - 1);
      v59 = *(v14 + 2 * v58);
      v60 = v59 < v26;
      if (v57 == v59)
      {
        v61 = v58 < v25;
      }

      else
      {
        v61 = v60;
      }

      if (v61)
      {
        *v10 = v58;
        goto LABEL_67;
      }
    }

    else if (v28)
    {
      *v10 = v15;
      *(a2 - 1) = v23;
      v34 = *v10;
      v35 = *(v14 + 2 * v34);
      v36 = *v13;
      v37 = *(v14 + 2 * v36);
      if (v35 == v37 ? v34 < v36 : v35 < v37)
      {
        *v13 = v34;
        *v10 = v36;
      }
    }

LABEL_113:
    --a4;
    v98 = *v10;
    if (a5)
    {
      v99 = *(v14 + 2 * v98);
      goto LABEL_118;
    }

    v100 = *(v10 - 1);
    v101 = *(v14 + 2 * v100);
    v99 = *(v14 + 2 * v98);
    v102 = v100 < v98;
    if (v99 != v101)
    {
      v102 = v101 < *(v14 + 2 * v98);
    }

    if (v102)
    {
LABEL_118:
      v103 = 0;
      do
      {
        v104 = v10[v103 + 1];
        v105 = *(v14 + 2 * v104);
        if (v99 == v105)
        {
          v106 = v104 < v98;
        }

        else
        {
          v106 = v105 < v99;
        }

        ++v103;
      }

      while (v106);
      v107 = &v10[v103];
      v108 = a2;
      if (v103 == 1)
      {
        v108 = a2;
        do
        {
          if (v107 >= v108)
          {
            break;
          }

          v112 = *--v108;
          v113 = *(v14 + 2 * v112);
          v114 = v112 < v98;
          if (v99 != v113)
          {
            v114 = v113 < v99;
          }
        }

        while (!v114);
      }

      else
      {
        do
        {
          v109 = *--v108;
          v110 = *(v14 + 2 * v109);
          v111 = v109 < v98;
          if (v99 != v110)
          {
            v111 = v110 < v99;
          }
        }

        while (!v111);
      }

      if (v107 >= v108)
      {
        v127 = v107 - 1;
      }

      else
      {
        v115 = *v108;
        v116 = v104;
        v117 = v107;
        v118 = v108;
        do
        {
          *v117 = v115;
          *v118 = v116;
          do
          {
            v119 = v117[1];
            ++v117;
            v116 = v119;
            v120 = *(v14 + 2 * v119);
            v121 = v119 < v98;
            if (v99 == v120)
            {
              v122 = v121;
            }

            else
            {
              v122 = v120 < v99;
            }
          }

          while (v122);
          do
          {
            v123 = *--v118;
            v115 = v123;
            v124 = *(v14 + 2 * v123);
            v125 = v123 < v98;
            if (v99 == v124)
            {
              v126 = v125;
            }

            else
            {
              v126 = v124 < v99;
            }
          }

          while (!v126);
        }

        while (v117 < v118);
        v127 = v117 - 1;
      }

      if (v127 != v10)
      {
        *v10 = *v127;
      }

      *v127 = v98;
      if (v107 < v108)
      {
        goto LABEL_152;
      }

      v10 = v127 + 1;
      if (result)
      {
        a2 = v127;
        if (!v128)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v128)
      {
LABEL_152:
        a5 = 0;
        v10 = v127 + 1;
      }
    }

    else
    {
      v129 = *(a2 - 1);
      v130 = *(v14 + 2 * v129);
      v131 = v98 < v129;
      if (v99 != v130)
      {
        v131 = v130 > v99;
      }

      if (v131)
      {
        do
        {
          v132 = v10[1];
          ++v10;
          v133 = *(v14 + 2 * v132);
          v134 = v98 < v132;
          if (v99 != v133)
          {
            v134 = v133 > v99;
          }
        }

        while (!v134);
      }

      else
      {
        v135 = (v10 + 1);
        do
        {
          v10 = v135;
          if (v135 >= a2)
          {
            break;
          }

          v135 += 4;
          v136 = *v10;
          v137 = *(v14 + 2 * v136);
          v138 = v98 < v136;
          if (v99 != v137)
          {
            v138 = v137 > v99;
          }
        }

        while (!v138);
      }

      v139 = a2;
      if (v10 < a2)
      {
        v139 = a2;
        do
        {
          v140 = *--v139;
          v141 = *(v14 + 2 * v140);
          v142 = v98 < v140;
          if (v99 != v141)
          {
            v142 = v141 > v99;
          }
        }

        while (v142);
      }

      if (v10 < v139)
      {
        v143 = *v10;
        v144 = *v139;
        do
        {
          *v10 = v144;
          *v139 = v143;
          do
          {
            v145 = v10[1];
            ++v10;
            v143 = v145;
            v146 = *(v14 + 2 * v145);
            v147 = v98 < v145;
            if (v99 == v146)
            {
              v148 = v147;
            }

            else
            {
              v148 = v146 > v99;
            }
          }

          while (!v148);
          do
          {
            v149 = *--v139;
            v144 = v149;
            v150 = *(v14 + 2 * v149);
            v151 = v98 < v149;
            if (v99 == v150)
            {
              v152 = v151;
            }

            else
            {
              v152 = v150 > v99;
            }
          }

          while (v152);
        }

        while (v10 < v139);
      }

      v153 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v153;
      }

      a5 = 0;
      *v153 = v98;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v183 = *a3;
    }

    if (v11 == 5)
    {
      v154 = *a3;
      v155 = *(a2 - 1);
      v156 = v10[3];
      v157 = *(*a3 + 2 * v156);
      v158 = *(*a3 + 2 * v155) < v157;
      if (*(*a3 + 2 * v155) == v157)
      {
        v158 = v155 < v156;
      }

      if (v158)
      {
        v10[3] = v155;
        *(a2 - 1) = v156;
        v160 = v10[2];
        v159 = v10[3];
        v161 = *(v154 + 2 * v159);
        v162 = *(v154 + 2 * v160);
        v163 = *(v154 + 2 * v159) < v162;
        if (v161 == v162)
        {
          v163 = v159 < v160;
        }

        if (v163)
        {
          v10[2] = v159;
          v10[3] = v160;
          v164 = v10[1];
          v165 = *(v154 + 2 * v164);
          if (v161 == v165 ? v159 < v164 : v165 > v161)
          {
            v10[1] = v159;
            v10[2] = v164;
            v167 = *v10;
            v168 = *(v154 + 2 * v167);
            if (v161 == v168 ? v159 < v167 : v168 > v161)
            {
              *v10 = v159;
              v10[1] = v167;
            }
          }
        }
      }

      return result;
    }

    goto LABEL_10;
  }

  v174 = *a3;
  v171 = *v10;
  v175 = v10[1];
  v176 = *(*a3 + 2 * v175);
  v177 = *(*a3 + 2 * v175);
  v178 = *(*a3 + 2 * v171);
  v179 = v176 < v178;
  if (v177 == v178)
  {
    v179 = v175 < v171;
  }

  v180 = *(a2 - 1);
  v181 = *(v174 + 2 * v180);
  v182 = v181 < v176;
  if (v177 == v181)
  {
    v182 = v180 < v175;
  }

  if (v179)
  {
    if (v182)
    {
      *v10 = v180;
      goto LABEL_316;
    }

    v258 = *(*a3 + 2 * v171);
    *v10 = v175;
    v10[1] = v171;
    v259 = *(a2 - 1);
    v260 = *(v174 + 2 * v259);
    if (v258 == v260)
    {
      v261 = v259 < v171;
    }

    else
    {
      v261 = v260 < v258;
    }

    if (v261)
    {
      v10[1] = v259;
      goto LABEL_316;
    }
  }

  else if (v182)
  {
    v10[1] = v180;
    *(a2 - 1) = v175;
    v244 = *v10;
    v243 = v10[1];
    v245 = *(v174 + 2 * v243);
    v246 = *(v174 + 2 * v244);
    if (v245 == v246 ? v243 < v244 : v245 < v246)
    {
      *v10 = v243;
      v10[1] = v244;
    }
  }

  return result;
}

unsigned int *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<short>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *,0>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *(a5 + 2 * v5);
  v7 = *(a5 + 2 * v5);
  v8 = *result;
  v9 = *(a5 + 2 * v8);
  v10 = v6 < v9;
  if (v7 == v9)
  {
    v10 = v5 < v8;
  }

  v11 = *a3;
  v12 = *(a5 + 2 * *a3);
  v13 = v12 < v6;
  if (v7 == v12)
  {
    v13 = *a3 < v5;
  }

  if (v10)
  {
    if (v13)
    {
      *result = v11;
LABEL_19:
      *a3 = v8;
      goto LABEL_20;
    }

    v19 = *(a5 + 2 * v8);
    *result = v5;
    *a2 = v8;
    v11 = *a3;
    v20 = *(a5 + 2 * *a3);
    if (v19 == v20)
    {
      v21 = *a3 < v8;
    }

    else
    {
      v21 = v20 < v19;
    }

    if (v21)
    {
      *a2 = v11;
      goto LABEL_19;
    }

    v8 = *a3;
  }

  else if (v13)
  {
    *a2 = v11;
    *a3 = v5;
    v14 = *a2;
    v15 = *(a5 + 2 * v14);
    v16 = *result;
    v17 = *(a5 + 2 * v16);
    if (v15 == v17)
    {
      v18 = v14 < v16;
    }

    else
    {
      v18 = v15 < v17;
    }

    if (v18)
    {
      *result = v14;
      *a2 = v16;
      v8 = *a3;
LABEL_20:
      v11 = v8;
      goto LABEL_24;
    }

    v8 = v5;
    v11 = v5;
  }

  else
  {
    v8 = *a3;
  }

LABEL_24:
  v22 = *a4;
  v23 = *(a5 + 2 * v8);
  if (*(a5 + 2 * v22) == v23)
  {
    v24 = v22 < v11;
  }

  else
  {
    v24 = *(a5 + 2 * v22) < v23;
  }

  if (v24)
  {
    *a3 = v22;
    *a4 = v11;
    v25 = *a3;
    v26 = *(a5 + 2 * v25);
    v27 = *a2;
    v28 = *(a5 + 2 * v27);
    if (v26 == v28 ? v25 < v27 : v26 < v28)
    {
      *a2 = v25;
      *a3 = v27;
      v30 = *a2;
      v31 = *(a5 + 2 * v30);
      v32 = *result;
      v33 = *(a5 + 2 * v32);
      if (v31 == v33)
      {
        v34 = v30 < v32;
      }

      else
      {
        v34 = v31 < v33;
      }

      if (v34)
      {
        *result = v30;
        *a2 = v32;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<short>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t *a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v27 = *a3;
      v8 = *a1;
      v28 = a1[1];
      v29 = *(*a3 + 2 * v28);
      v30 = *(*a3 + 2 * v28);
      v31 = *(*a3 + 2 * v8);
      v32 = v29 < v31;
      if (v30 == v31)
      {
        v32 = v28 < v8;
      }

      v33 = *(a2 - 1);
      v34 = *(v27 + 2 * v33);
      v35 = v34 < v29;
      if (v30 == v34)
      {
        v35 = v33 < v28;
      }

      if (!v32)
      {
        if (v35)
        {
          a1[1] = v33;
          *(a2 - 1) = v28;
          v52 = *a1;
          v51 = a1[1];
          v53 = *(v27 + 2 * v51);
          v54 = *(v27 + 2 * v52);
          if (v53 == v54 ? v51 < v52 : v53 < v54)
          {
            *a1 = v51;
            a1[1] = v52;
          }
        }

        return 1;
      }

      if (v35)
      {
        *a1 = v33;
      }

      else
      {
        v70 = *(*a3 + 2 * v8);
        *a1 = v28;
        a1[1] = v8;
        v71 = *(a2 - 1);
        v72 = *(v27 + 2 * v71);
        if (v70 == v72)
        {
          v73 = v71 < v8;
        }

        else
        {
          v73 = v72 < v70;
        }

        if (!v73)
        {
          return 1;
        }

        a1[1] = v71;
      }

LABEL_79:
      *(a2 - 1) = v8;
      return 1;
    }

    if (v6 != 4)
    {
      if (v6 == 5)
      {
        v11 = *a3;
        v12 = *(a2 - 1);
        v13 = a1[3];
        v14 = *(*a3 + 2 * v13);
        v15 = *(*a3 + 2 * v12) < v14;
        if (*(*a3 + 2 * v12) == v14)
        {
          v15 = v12 < v13;
        }

        if (v15)
        {
          a1[3] = v12;
          *(a2 - 1) = v13;
          v17 = a1[2];
          v16 = a1[3];
          v18 = *(v11 + 2 * v16);
          v19 = *(v11 + 2 * v17);
          v20 = *(v11 + 2 * v16) < v19;
          if (v18 == v19)
          {
            v20 = v16 < v17;
          }

          if (v20)
          {
            a1[2] = v16;
            a1[3] = v17;
            v21 = a1[1];
            v22 = *(v11 + 2 * v21);
            if (v18 == v22 ? v16 < v21 : v22 > v18)
            {
              a1[1] = v16;
              a1[2] = v21;
              v24 = *a1;
              v25 = *(v11 + 2 * v24);
              if (v18 == v25 ? v16 < v24 : v25 > v18)
              {
                *a1 = v16;
                a1[1] = v24;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_34;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *(a2 - 1);
    v8 = *a1;
    v9 = *(*a3 + 2 * v8);
    if (*(*a3 + 2 * v7) == v9)
    {
      v10 = v7 < v8;
    }

    else
    {
      v10 = *(*a3 + 2 * v7) < v9;
    }

    if (!v10)
    {
      return 1;
    }

    *a1 = v7;
    goto LABEL_79;
  }

LABEL_34:
  v36 = a1 + 2;
  v37 = a1[2];
  v38 = a1 + 1;
  v39 = a1[1];
  v40 = *a3;
  v41 = *(*a3 + 2 * v39);
  v42 = *a1;
  v43 = *(*a3 + 2 * v42);
  v44 = *(*a3 + 2 * v42);
  if (*(*a3 + 2 * v39) == v43)
  {
    v45 = v39 < v42;
  }

  else
  {
    v45 = v41 < v43;
  }

  v46 = *(v40 + 2 * v37);
  v47 = *(v40 + 2 * v37) < v41;
  if (v46 == v41)
  {
    v47 = v37 < v39;
  }

  if (v45)
  {
    v48 = a1;
    v49 = a1 + 2;
    if (!v47)
    {
      *a1 = v39;
      a1[1] = v42;
      v50 = v46 == v44 ? v37 < v42 : v46 < v44;
      v48 = a1 + 1;
      v49 = a1 + 2;
      if (!v50)
      {
        goto LABEL_59;
      }
    }

LABEL_58:
    *v48 = v37;
    *v49 = v42;
    goto LABEL_59;
  }

  if (v47)
  {
    *v38 = v37;
    *v36 = v39;
    v56 = v46 == v44 ? v37 < v42 : v46 < v44;
    v48 = a1;
    v49 = a1 + 1;
    if (v56)
    {
      goto LABEL_58;
    }
  }

LABEL_59:
  v57 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v58 = 0;
  for (i = 12; ; i += 4)
  {
    v60 = *v57;
    v61 = *(v40 + 2 * v60);
    v62 = *v36;
    v63 = *(v40 + 2 * v62);
    v64 = *(v40 + 2 * v60) < v63;
    if (v61 == v63)
    {
      v64 = v60 < v62;
    }

    if (v64)
    {
      v65 = i;
      while (1)
      {
        *(a1 + v65) = v62;
        v66 = v65 - 4;
        if (v65 == 4)
        {
          break;
        }

        v62 = *(a1 + v65 - 8);
        v67 = *(v40 + 2 * v62);
        v68 = v60 < v62;
        if (v61 != v67)
        {
          v68 = v67 > v61;
        }

        v65 = v66;
        if (!v68)
        {
          v69 = (a1 + v66);
          goto LABEL_71;
        }
      }

      v69 = a1;
LABEL_71:
      *v69 = v60;
      if (++v58 == 8)
      {
        break;
      }
    }

    v36 = v57++;
    if (v57 == a2)
    {
      return 1;
    }
  }

  return v57 + 1 == a2;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<unsigned char>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *,false>(uint64_t result, unsigned int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v187 = *(a2 - 1);
        v188 = *(*a3 + v187);
        v189 = *v10;
        v190 = *(*a3 + v189);
        v191 = v188 == v190;
        v192 = v188 < v190;
        if (v191)
        {
          v192 = v187 < v189;
        }

        if (v192)
        {
          *v10 = v187;
          *(a2 - 1) = v189;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v203 = *a3;
    }

    if (v11 == 5)
    {
      v168 = *a3;
      v169 = *(a2 - 1);
      v170 = *(*a3 + v169);
      v171 = v10[3];
      v172 = *(*a3 + v171);
      v191 = v170 == v172;
      v173 = v170 < v172;
      if (v191)
      {
        v173 = v169 < v171;
      }

      if (!v173)
      {
        return result;
      }

      v10[3] = v169;
      *(a2 - 1) = v171;
      v175 = v10[2];
      v174 = v10[3];
      v176 = *(v168 + v174);
      v177 = *(v168 + v175);
      v191 = v176 == v177;
      v178 = v176 < v177;
      if (v191)
      {
        v178 = v174 < v175;
      }

      if (!v178)
      {
        return result;
      }

      v10[2] = v174;
      v10[3] = v175;
      v179 = *(v168 + v174);
      v180 = v10[1];
      v181 = *(v168 + v180);
      v191 = v179 == v181;
      v182 = v179 < v181;
      if (v191)
      {
        v182 = v174 < v180;
      }

      if (!v182)
      {
        return result;
      }

      v10[1] = v174;
      v10[2] = v180;
      v183 = *(v168 + v174);
      v184 = *v10;
      v185 = *(v168 + v184);
      v191 = v183 == v185;
      v186 = v183 < v185;
      if (v191)
      {
        v186 = v174 < v184;
      }

      if (!v186)
      {
        return result;
      }

      *v10 = v174;
LABEL_269:
      v10[1] = v184;
      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v204 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v205 = *a3;
            v206 = 4;
            v207 = v10;
            do
            {
              v209 = *v207;
              v208 = v207[1];
              v207 = v204;
              v210 = *(v205 + v208);
              v211 = *(v205 + v209);
              LODWORD(v204) = v209;
              v212 = v208 < v209;
              v191 = v210 == v211;
              v213 = v210 < v211;
              if (!v191)
              {
                v212 = v213;
              }

              if (v212)
              {
                v214 = v206;
                while (1)
                {
                  *(v10 + v214) = v204;
                  v215 = v214 - 4;
                  if (v214 == 4)
                  {
                    break;
                  }

                  v216 = v10 + v214;
                  v217 = *(v205 + v208);
                  v204 = *(v216 - 2);
                  v218 = *(v204 + v205);
                  v191 = v217 == v218;
                  v219 = v217 < v218;
                  if (v191)
                  {
                    v220 = v208 < v204;
                  }

                  else
                  {
                    v220 = v219;
                  }

                  v214 = v215;
                  if (!v220)
                  {
                    v221 = (v10 + v215);
                    goto LABEL_209;
                  }
                }

                v221 = v10;
LABEL_209:
                *v221 = v208;
              }

              v204 = v207 + 1;
              v206 += 4;
            }

            while (v207 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v277 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v278 = *a3;
          do
          {
            v280 = *v9;
            v279 = v9[1];
            v9 = v277;
            v281 = *(v278 + v279);
            v282 = *(v278 + v280);
            LODWORD(v277) = v280;
            v283 = v279 < v280;
            v191 = v281 == v282;
            v284 = v281 < v282;
            if (!v191)
            {
              v283 = v284;
            }

            if (v283)
            {
              v285 = v9;
              do
              {
                *v285 = v277;
                v286 = *(v278 + v279);
                v277 = *(v285 - 2);
                v287 = *(v277 + v278);
                v191 = v286 == v287;
                v288 = v286 < v287;
                if (v191)
                {
                  v288 = v279 < v277;
                }

                --v285;
              }

              while (v288);
              *v285 = v279;
            }

            v277 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v222 = (v11 - 2) >> 1;
        v223 = *a3;
        v224 = v222;
        do
        {
          v225 = v224;
          if (v222 >= v224)
          {
            v226 = (2 * v224) | 1;
            v227 = &v10[v226];
            if (2 * v225 + 2 >= v11)
            {
              LODWORD(v234) = *v227;
            }

            else
            {
              v228 = *v227;
              v229 = *(v223 + v228);
              v230 = v227[1];
              v231 = *(v223 + v230);
              v191 = v229 == v231;
              v232 = v229 < v231;
              if (v191)
              {
                v232 = v228 < v230;
              }

              v233 = !v232;
              if (v232)
              {
                LODWORD(v234) = v227[1];
              }

              else
              {
                LODWORD(v234) = *v227;
              }

              if (!v233)
              {
                ++v227;
                v226 = 2 * v225 + 2;
              }
            }

            v235 = &v10[v225];
            v236 = *(v223 + v234);
            v237 = *v235;
            result = *(v223 + *v235);
            v191 = v236 == result;
            v238 = v236 < result;
            if (v191)
            {
              v238 = v234 < *v235;
            }

            if (!v238)
            {
              do
              {
                *v235 = v234;
                v235 = v227;
                if (v222 < v226)
                {
                  break;
                }

                v239 = (2 * v226) | 1;
                v227 = &v10[v239];
                v226 = 2 * v226 + 2;
                if (v226 >= v11)
                {
                  LODWORD(v234) = *v227;
                  v226 = v239;
                }

                else
                {
                  v234 = *v227;
                  v240 = *(v223 + v234);
                  v241 = v227[1];
                  v242 = *(v223 + v241);
                  v191 = v240 == v242;
                  v243 = v240 < v242;
                  if (v191)
                  {
                    v243 = v234 < v241;
                  }

                  if (v243)
                  {
                    LODWORD(v234) = v227[1];
                    ++v227;
                  }

                  else
                  {
                    v226 = v239;
                  }
                }

                v244 = *(v223 + v234);
                result = *(v223 + v237);
                v191 = v244 == result;
                v245 = v244 < result;
                if (v191)
                {
                  v245 = v234 < v237;
                }
              }

              while (!v245);
              *v235 = v237;
            }
          }

          v224 = v225 - 1;
        }

        while (v225);
        do
        {
          v246 = 0;
          v247 = *v10;
          v248 = *a3;
          v249 = v10;
          do
          {
            v250 = &v249[v246];
            v251 = v250 + 1;
            v252 = (2 * v246) | 1;
            v246 = 2 * v246 + 2;
            if (v246 >= v11)
            {
              v254 = *v251;
              v246 = v252;
            }

            else
            {
              v255 = v250[2];
              v253 = v250 + 2;
              v254 = v255;
              result = *(v253 - 1);
              v256 = *(v248 + result);
              v257 = *(v248 + v255);
              v258 = result < v255;
              v191 = v256 == v257;
              v259 = v256 < v257;
              if (v191)
              {
                v259 = v258;
              }

              if (v259)
              {
                v251 = v253;
              }

              else
              {
                v254 = *(v253 - 1);
                v246 = v252;
              }
            }

            *v249 = v254;
            v249 = v251;
          }

          while (v246 <= ((v11 - 2) >> 1));
          if (v251 == --a2)
          {
            *v251 = v247;
          }

          else
          {
            *v251 = *a2;
            *a2 = v247;
            v260 = (v251 - v10 + 4) >> 2;
            v261 = v260 < 2;
            v262 = v260 - 2;
            if (!v261)
            {
              v263 = v262 >> 1;
              v264 = &v10[v263];
              v265 = *v264;
              v266 = *(v248 + v265);
              v267 = *v251;
              v268 = *(v248 + *v251);
              v191 = v266 == v268;
              v269 = v266 < v268;
              if (v191)
              {
                v269 = v265 < *v251;
              }

              if (v269)
              {
                do
                {
                  *v251 = v265;
                  v251 = v264;
                  if (!v263)
                  {
                    break;
                  }

                  v263 = (v263 - 1) >> 1;
                  v264 = &v10[v263];
                  v265 = *v264;
                  v270 = *(v248 + v265);
                  v271 = *(v248 + v267);
                  v191 = v270 == v271;
                  v272 = v270 < v271;
                  if (v191)
                  {
                    v272 = v265 < v267;
                  }
                }

                while (v272);
                *v251 = v267;
              }
            }
          }

          v261 = v11-- <= 2;
        }

        while (!v261);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *a3;
    v15 = *(a2 - 1);
    v16 = *(*a3 + v15);
    if (v11 >= 0x81)
    {
      v17 = *v12;
      v18 = *(v14 + v17);
      v19 = *v10;
      v20 = *(v14 + *v10);
      v191 = v18 == v20;
      v21 = v18 < v20;
      if (v191)
      {
        v21 = v17 < *v10;
      }

      v191 = v16 == v18;
      v22 = v16 < v18;
      if (v191)
      {
        v22 = v15 < v17;
      }

      if (v21)
      {
        if (v22)
        {
          *v10 = v15;
          goto LABEL_41;
        }

        *v10 = v17;
        *v12 = v19;
        v39 = *(a2 - 1);
        v40 = *(v14 + v39);
        v41 = *(v14 + v19);
        v191 = v40 == v41;
        v42 = v40 < v41;
        if (v191)
        {
          v42 = v39 < v19;
        }

        if (v42)
        {
          *v12 = v39;
LABEL_41:
          *(a2 - 1) = v19;
        }
      }

      else if (v22)
      {
        *v12 = v15;
        *(a2 - 1) = v17;
        v29 = *v12;
        v30 = *(v14 + v29);
        v31 = *v10;
        v32 = *(v14 + v31);
        v191 = v30 == v32;
        v33 = v30 < v32;
        if (v191)
        {
          v33 = v29 < v31;
        }

        if (v33)
        {
          *v10 = v29;
          *v12 = v31;
        }
      }

      v43 = v12 - 1;
      v44 = *(v12 - 1);
      v45 = *(v14 + v44);
      v46 = v10[1];
      v47 = *(v14 + v46);
      v48 = v44 < v46;
      v191 = v45 == v47;
      v49 = v45 < v47;
      v50 = *(a2 - 2);
      v51 = *(v14 + v50);
      if (!v191)
      {
        v48 = v49;
      }

      v191 = v51 == v45;
      v52 = v51 < v45;
      if (v191)
      {
        v52 = v50 < v44;
      }

      if (v48)
      {
        if (v52)
        {
          v10[1] = v50;
          goto LABEL_63;
        }

        v10[1] = v44;
        *v43 = v46;
        v62 = *(a2 - 2);
        v63 = *(v14 + v62);
        v64 = *(v14 + v46);
        v191 = v63 == v64;
        v65 = v63 < v64;
        if (v191)
        {
          v65 = v62 < v46;
        }

        if (v65)
        {
          *v43 = v62;
LABEL_63:
          *(a2 - 2) = v46;
        }
      }

      else if (v52)
      {
        *v43 = v50;
        *(a2 - 2) = v44;
        v53 = *v43;
        v54 = *(v14 + v53);
        v55 = v10[1];
        v56 = *(v14 + v55);
        v191 = v54 == v56;
        v57 = v54 < v56;
        if (v191)
        {
          v57 = v53 < v55;
        }

        if (v57)
        {
          v10[1] = v53;
          *v43 = v55;
        }
      }

      v68 = v12[1];
      v66 = v12 + 1;
      v67 = v68;
      v69 = *(v14 + v68);
      v70 = v10[2];
      v71 = *(v14 + v70);
      v72 = v68 < v70;
      v191 = v69 == v71;
      v73 = v69 < v71;
      v74 = *(a2 - 3);
      v75 = *(v14 + v74);
      if (!v191)
      {
        v72 = v73;
      }

      v191 = v75 == v69;
      v76 = v75 < v69;
      if (v191)
      {
        v76 = v74 < v67;
      }

      if (v72)
      {
        if (v76)
        {
          v10[2] = v74;
          goto LABEL_80;
        }

        v10[2] = v67;
        *v66 = v70;
        v82 = *(a2 - 3);
        v83 = *(v14 + v82);
        v84 = *(v14 + v70);
        v191 = v83 == v84;
        v85 = v83 < v84;
        if (v191)
        {
          v85 = v82 < v70;
        }

        if (v85)
        {
          *v66 = v82;
LABEL_80:
          *(a2 - 3) = v70;
        }
      }

      else if (v76)
      {
        *v66 = v74;
        *(a2 - 3) = v67;
        v77 = *v66;
        v78 = *(v14 + v77);
        v79 = v10[2];
        v80 = *(v14 + v79);
        v191 = v78 == v80;
        v81 = v78 < v80;
        if (v191)
        {
          v81 = v77 < v79;
        }

        if (v81)
        {
          v10[2] = v77;
          *v66 = v79;
        }
      }

      v86 = *v13;
      v87 = *(v14 + v86);
      v88 = *v43;
      v89 = *(v14 + *v43);
      v90 = v86 < *v43;
      v191 = v87 == v89;
      v91 = v87 < v89;
      v92 = *v66;
      result = *(v14 + *v66);
      if (!v191)
      {
        v90 = v91;
      }

      v191 = result == v87;
      v93 = result < v87;
      if (v191)
      {
        v93 = v92 < v86;
      }

      if (v90)
      {
        if (!v93)
        {
          *v43 = v86;
          *v13 = v88;
          v94 = *(v14 + v92);
          v95 = *(v14 + v88);
          v96 = v92 < v88;
          v191 = v94 == v95;
          v97 = v94 < v95;
          if (!v191)
          {
            v96 = v97;
          }

          v43 = v13;
          LODWORD(v86) = v92;
          if (!v96)
          {
            LODWORD(v86) = v88;
LABEL_96:
            v102 = *v10;
            *v10 = v86;
            *v13 = v102;
            goto LABEL_97;
          }
        }
      }

      else
      {
        if (!v93)
        {
          goto LABEL_96;
        }

        *v13 = v92;
        *v66 = v86;
        v98 = *(v14 + v92);
        v99 = *(v14 + v88);
        v100 = v92 < v88;
        v191 = v98 == v99;
        v101 = v98 < v99;
        if (!v191)
        {
          v100 = v101;
        }

        v66 = v13;
        LODWORD(v86) = v88;
        if (!v100)
        {
          LODWORD(v86) = v92;
          goto LABEL_96;
        }
      }

      *v43 = v92;
      *v66 = v88;
      goto LABEL_96;
    }

    v23 = *v10;
    v24 = *(v14 + v23);
    v25 = *v13;
    v26 = *(v14 + *v13);
    v191 = v24 == v26;
    v27 = v24 < v26;
    if (v191)
    {
      v27 = v23 < *v13;
    }

    v191 = v16 == v24;
    v28 = v16 < v24;
    if (v191)
    {
      v28 = v15 < v23;
    }

    if (v27)
    {
      if (v28)
      {
        *v13 = v15;
LABEL_58:
        *(a2 - 1) = v25;
        goto LABEL_97;
      }

      *v13 = v23;
      *v10 = v25;
      v58 = *(a2 - 1);
      v59 = *(v14 + v58);
      v60 = *(v14 + v25);
      v191 = v59 == v60;
      v61 = v59 < v60;
      if (v191)
      {
        v61 = v58 < v25;
      }

      if (v61)
      {
        *v10 = v58;
        goto LABEL_58;
      }
    }

    else if (v28)
    {
      *v10 = v15;
      *(a2 - 1) = v23;
      v34 = *v10;
      v35 = *(v14 + v34);
      v36 = *v13;
      v37 = *(v14 + v36);
      v191 = v35 == v37;
      v38 = v35 < v37;
      if (v191)
      {
        v38 = v34 < v36;
      }

      if (v38)
      {
        *v13 = v34;
        *v10 = v36;
      }
    }

LABEL_97:
    --a4;
    v103 = *v10;
    if (a5)
    {
      v104 = *(v14 + v103);
      goto LABEL_102;
    }

    v105 = *(v10 - 1);
    v106 = *(v14 + v105);
    v104 = *(v14 + v103);
    v107 = v105 < v103;
    v191 = v106 == v104;
    v108 = v106 < v104;
    if (!v191)
    {
      v107 = v108;
    }

    if (v107)
    {
LABEL_102:
      v109 = 0;
      do
      {
        v110 = v10[v109 + 1];
        v111 = *(v14 + v110);
        v191 = v111 == v104;
        v112 = v111 < v104;
        if (v191)
        {
          v112 = v110 < v103;
        }

        ++v109;
      }

      while (v112);
      v113 = &v10[v109];
      v114 = a2;
      if (v109 == 1)
      {
        v114 = a2;
        do
        {
          if (v113 >= v114)
          {
            break;
          }

          v119 = *--v114;
          v120 = *(v14 + v119);
          v121 = v119 < v103;
          v191 = v120 == v104;
          v122 = v120 < v104;
          if (!v191)
          {
            v121 = v122;
          }
        }

        while (!v121);
      }

      else
      {
        do
        {
          v115 = *--v114;
          v116 = *(v14 + v115);
          v117 = v115 < v103;
          v191 = v116 == v104;
          v118 = v116 < v104;
          if (!v191)
          {
            v117 = v118;
          }
        }

        while (!v117);
      }

      if (v113 >= v114)
      {
        v136 = v113 - 1;
      }

      else
      {
        v123 = *v114;
        v124 = v110;
        v125 = v113;
        v126 = v114;
        do
        {
          *v125 = v123;
          *v126 = v124;
          v127 = *(v14 + v103);
          do
          {
            v128 = v125[1];
            ++v125;
            v124 = v128;
            v129 = *(v14 + v128);
            v130 = v128 < v103;
            v191 = v129 == v127;
            v131 = v129 < v127;
            if (v191)
            {
              v131 = v130;
            }
          }

          while (v131);
          do
          {
            v132 = *--v126;
            v123 = v132;
            v133 = *(v14 + v132);
            v134 = v132 < v103;
            v191 = v133 == v127;
            v135 = v133 < v127;
            if (v191)
            {
              v135 = v134;
            }
          }

          while (!v135);
        }

        while (v125 < v126);
        v136 = v125 - 1;
      }

      if (v136 != v10)
      {
        *v10 = *v136;
      }

      *v136 = v103;
      if (v113 < v114)
      {
        goto LABEL_133;
      }

      v10 = v136 + 1;
      if (result)
      {
        a2 = v136;
        if (!v137)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v137)
      {
LABEL_133:
        a5 = 0;
        v10 = v136 + 1;
      }
    }

    else
    {
      v138 = *(a2 - 1);
      v139 = *(v14 + v138);
      v140 = v103 < v138;
      v191 = v104 == v139;
      v141 = v104 < v139;
      if (!v191)
      {
        v140 = v141;
      }

      if (v140)
      {
        do
        {
          v142 = v10[1];
          ++v10;
          v143 = *(v14 + v142);
          v144 = v103 < v142;
          v191 = v104 == v143;
          v145 = v104 < v143;
          if (!v191)
          {
            v144 = v145;
          }
        }

        while (!v144);
      }

      else
      {
        v146 = (v10 + 1);
        do
        {
          v10 = v146;
          if (v146 >= a2)
          {
            break;
          }

          v146 += 4;
          v147 = *v10;
          v148 = *(v14 + v147);
          v149 = v103 < v147;
          v191 = v104 == v148;
          v150 = v104 < v148;
          if (!v191)
          {
            v149 = v150;
          }
        }

        while (!v149);
      }

      v151 = a2;
      if (v10 < a2)
      {
        v151 = a2;
        do
        {
          v152 = *--v151;
          v153 = *(v14 + v152);
          v154 = v103 < v152;
          v191 = v104 == v153;
          v155 = v104 < v153;
          if (!v191)
          {
            v154 = v155;
          }
        }

        while (v154);
      }

      if (v10 < v151)
      {
        v156 = *v10;
        v157 = *v151;
        do
        {
          *v10 = v157;
          *v151 = v156;
          v158 = *(v14 + v103);
          do
          {
            v159 = v10[1];
            ++v10;
            v156 = v159;
            v160 = *(v14 + v159);
            v161 = v103 < v159;
            v191 = v158 == v160;
            v162 = v158 < v160;
            if (v191)
            {
              v162 = v161;
            }
          }

          while (!v162);
          do
          {
            v163 = *--v151;
            v157 = v163;
            v164 = *(v14 + v163);
            v165 = v103 < v163;
            v191 = v158 == v164;
            v166 = v158 < v164;
            if (v191)
            {
              v166 = v165;
            }
          }

          while (v166);
        }

        while (v10 < v151);
      }

      v167 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v167;
      }

      a5 = 0;
      *v167 = v103;
    }
  }

  v193 = *a3;
  v194 = *v10;
  v195 = v10[1];
  v196 = *(*a3 + v195);
  v197 = *(*a3 + *v10);
  v198 = v195 < *v10;
  v191 = v196 == v197;
  v199 = v196 < v197;
  v200 = *(a2 - 1);
  v201 = *(*a3 + v200);
  if (!v191)
  {
    v198 = v199;
  }

  v191 = v201 == v196;
  v202 = v201 < v196;
  if (v191)
  {
    v202 = v200 < v195;
  }

  if (v198)
  {
    if (v202)
    {
      *v10 = v200;
    }

    else
    {
      *v10 = v195;
      v10[1] = v194;
      v289 = *(a2 - 1);
      v290 = *(v193 + v289);
      v291 = *(v193 + v194);
      v191 = v290 == v291;
      v292 = v290 < v291;
      if (v191)
      {
        v292 = v289 < v194;
      }

      if (!v292)
      {
        return result;
      }

      v10[1] = v289;
    }

    *(a2 - 1) = v194;
    return result;
  }

  if (v202)
  {
    v10[1] = v200;
    *(a2 - 1) = v195;
    v184 = *v10;
    v273 = v10[1];
    v274 = *(v193 + v273);
    v275 = *(v193 + v184);
    v191 = v274 == v275;
    v276 = v274 < v275;
    if (v191)
    {
      v276 = v273 < v184;
    }

    if (v276)
    {
      *v10 = v273;
      goto LABEL_269;
    }
  }

  return result;
}