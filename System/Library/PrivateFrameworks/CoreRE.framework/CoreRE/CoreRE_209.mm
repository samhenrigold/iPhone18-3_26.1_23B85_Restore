void re::internal::attachOpenSubdivDataToMesh(re::internal *this, MDLMesh *a2, MDLSubmesh *a3, re::GeomMesh *a4)
{
  v126 = *MEMORY[0x1E69E9840];
  v7 = this;
  v8 = a2;
  if ([(re::internal *)v7 subdivisionScheme]== 1)
  {
    v109 = 0;
    v106[1] = 0;
    v107 = 0;
    v106[0] = 0;
    v108 = 0;
    v9 = v107;
    if (v107)
    {
      v10 = [(re::internal *)v7 vertexDescriptor];
      v11 = [v10 attributeNamed:@"position"];
      v12 = [v11 bufferIndex];
      if (v9 <= v12)
      {
LABEL_76:
        *v114 = 0;
        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        v121 = 0u;
        v91 = MEMORY[0x1E69E9C10];
        v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v111 = 136315906;
        *&v111[4] = "operator[]";
        *&v111[12] = 1024;
        if (v92)
        {
          v93 = 3;
        }

        else
        {
          v93 = 2;
        }

        *&v111[14] = 789;
        *&v111[18] = 2048;
        *&v111[20] = v12;
        v112 = 2048;
        *v113 = v9;
        _os_log_send_and_compose_impl(v93, v114, &v121, 80, &dword_1E1C61000, v91, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v111, 38, v97, v98);
        _os_crash_msg();
        __break(1u);
LABEL_80:
        *v114 = 0;
        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        v121 = 0u;
        v94 = MEMORY[0x1E69E9C10];
        v95 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v111 = 136315906;
        *&v111[4] = "operator[]";
        *&v111[12] = 1024;
        if (v95)
        {
          v96 = 3;
        }

        else
        {
          v96 = 2;
        }

        *&v111[14] = 789;
        *&v111[18] = 2048;
        *&v111[20] = 0;
        v112 = 2048;
        *v113 = 0;
        _os_log_send_and_compose_impl(v96, v114, &v121, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v111, 38, v97, v98);
        _os_crash_msg();
        __break(1u);
      }

      v13 = v109;
      v14 = [(MDLMesh *)v8 topology];
      v15 = re::GeomMesh::addAttribute(a3, "osdSubdivisionScheme", 0, 1);
      if (v15)
      {
        if (!*(v15 + 5))
        {
          goto LABEL_80;
        }

        **(v15 + 7) = 1;
      }

      if (v14)
      {
        v16 = [v14 edgeCreaseCount];
        v17 = [v14 vertexCreaseCount];
        *&v113[2] = 0;
        memset(v111, 0, sizeof(v111));
        if (v17 | v16)
        {
          v103 = v10;
          v104 = v17;
          re::DynamicArray<unsigned int>::resize(v111, [(re::internal *)v7 vertexCount], &re::kInvalidMeshIndex);
          isa_low = LODWORD(a3[2].super.isa);
          if (isa_low)
          {
            v19 = 0;
            v20 = v13 + 80 * v12;
            v9 = *(v20 + 16);
            v21 = *&v111[16];
            v22 = *&v113[2];
            while (v9 != v19)
            {
              v4 = *(*(v20 + 32) + 4 * v19);
              if (v21 <= v4)
              {
                goto LABEL_40;
              }

              *(v22 + 4 * v4) = v19++;
              if (isa_low == v19)
              {
                goto LABEL_14;
              }
            }

            v110 = 0;
            v124 = 0u;
            v125 = 0u;
            v122 = 0u;
            v123 = 0u;
            v121 = 0u;
            v60 = MEMORY[0x1E69E9C10];
            v61 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v114 = 136315906;
            *&v114[4] = "operator[]";
            v115 = 1024;
            if (v61)
            {
              v62 = 3;
            }

            else
            {
              v62 = 2;
            }

            v116 = 797;
            v117 = 2048;
            v118 = v9;
            v119 = 2048;
            v120 = v9;
            _os_log_send_and_compose_impl(v62, &v110, &v121, 80, &dword_1E1C61000, v60, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v114, 38, v97, v98);
            _os_crash_msg();
            __break(1u);
LABEL_40:
            v110 = 0;
            v124 = 0u;
            v125 = 0u;
            v122 = 0u;
            v123 = 0u;
            v121 = 0u;
            v63 = MEMORY[0x1E69E9C10];
            v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v114 = 136315906;
            *&v114[4] = "operator[]";
            v115 = 1024;
            if (v64)
            {
              v65 = 3;
            }

            else
            {
              v65 = 2;
            }

            v116 = 789;
            v117 = 2048;
            v118 = v4;
            v119 = 2048;
            v120 = v21;
            _os_log_send_and_compose_impl(v65, &v110, &v121, 80, &dword_1E1C61000, v63, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v114, 38, v97, v98);
            _os_crash_msg();
            __break(1u);
LABEL_44:
            v110 = 0;
            v124 = 0u;
            v125 = 0u;
            v122 = 0u;
            v123 = 0u;
            v121 = 0u;
            v66 = MEMORY[0x1E69E9C10];
            v67 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v114 = 136315906;
            *&v114[4] = "operator[]";
            v115 = 1024;
            if (v67)
            {
              v68 = 3;
            }

            else
            {
              v68 = 2;
            }

            v116 = 789;
            v117 = 2048;
            v118 = v9;
            v119 = 2048;
            v120 = v21;
            _os_log_send_and_compose_impl(v68, &v110, &v121, 80, &dword_1E1C61000, v66, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v114, 38, v97, v99);
            _os_crash_msg();
            __break(1u);
LABEL_48:
            v110 = 0;
            v124 = 0u;
            v125 = 0u;
            v122 = 0u;
            v123 = 0u;
            v121 = 0u;
            v69 = MEMORY[0x1E69E9C10];
            v70 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v114 = 136315906;
            *&v114[4] = "operator[]";
            v115 = 1024;
            if (v70)
            {
              v71 = 3;
            }

            else
            {
              v71 = 2;
            }

            v116 = 621;
            v117 = 2048;
            v118 = v4;
            v119 = 2048;
            v120 = v16;
            _os_log_send_and_compose_impl(v71, &v110, &v121, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v114, 38, v97, v99);
            _os_crash_msg();
            __break(1u);
LABEL_52:
            v110 = 0;
            v124 = 0u;
            v125 = 0u;
            v122 = 0u;
            v123 = 0u;
            v121 = 0u;
            v72 = MEMORY[0x1E69E9C10];
            v73 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v114 = 136315906;
            *&v114[4] = "operator[]";
            v115 = 1024;
            if (v73)
            {
              v74 = 3;
            }

            else
            {
              v74 = 2;
            }

            v116 = 789;
            v117 = 2048;
            v118 = v9;
            v119 = 2048;
            v120 = v21;
            _os_log_send_and_compose_impl(v74, &v110, &v121, 80, &dword_1E1C61000, v72, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v114, 38, v97, v99);
            _os_crash_msg();
            __break(1u);
LABEL_56:
            v110 = 0;
            v124 = 0u;
            v125 = 0u;
            v122 = 0u;
            v123 = 0u;
            v121 = 0u;
            v75 = MEMORY[0x1E69E9C10];
            v76 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v114 = 136315906;
            *&v114[4] = "operator[]";
            v115 = 1024;
            if (v76)
            {
              v77 = 3;
            }

            else
            {
              v77 = 2;
            }

            v116 = 621;
            v117 = 2048;
            v118 = v4 + 1;
            v119 = 2048;
            v120 = v16;
            _os_log_send_and_compose_impl(v77, &v110, &v121, 80, &dword_1E1C61000, v75, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v114, 38, v97, v99);
            _os_crash_msg();
            __break(1u);
LABEL_60:
            v110 = 0;
            v124 = 0u;
            v125 = 0u;
            v122 = 0u;
            v123 = 0u;
            v121 = 0u;
            v78 = MEMORY[0x1E69E9C10];
            v79 = v34;
            v80 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v114 = 136315906;
            *&v114[4] = "operator[]";
            v115 = 1024;
            if (v80)
            {
              v81 = 3;
            }

            else
            {
              v81 = 2;
            }

            v116 = 621;
            v117 = 2048;
            v118 = v79;
            v119 = 2048;
            v120 = v79;
            _os_log_send_and_compose_impl(v81, &v110, &v121, 80, &dword_1E1C61000, v78, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v114, 38, v97, v99);
            _os_crash_msg();
            __break(1u);
LABEL_64:
            v110 = 0;
            v124 = 0u;
            v125 = 0u;
            v122 = 0u;
            v123 = 0u;
            v121 = 0u;
            v82 = MEMORY[0x1E69E9C10];
            v83 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v114 = 136315906;
            *&v114[4] = "operator[]";
            v115 = 1024;
            if (v83)
            {
              v84 = 3;
            }

            else
            {
              v84 = 2;
            }

            v116 = 789;
            v117 = 2048;
            v118 = v9;
            v119 = 2048;
            v120 = v21;
            _os_log_send_and_compose_impl(v84, &v110, &v121, 80, &dword_1E1C61000, v82, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v114, 38, v97, v100);
            _os_crash_msg();
            __break(1u);
LABEL_68:
            v110 = 0;
            v124 = 0u;
            v125 = 0u;
            v122 = 0u;
            v123 = 0u;
            v121 = 0u;
            v85 = MEMORY[0x1E69E9C10];
            v86 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v114 = 136315906;
            *&v114[4] = "operator[]";
            v115 = 1024;
            if (v86)
            {
              v87 = 3;
            }

            else
            {
              v87 = 2;
            }

            v116 = 621;
            v117 = 2048;
            v118 = v12;
            v119 = 2048;
            v120 = v12;
            _os_log_send_and_compose_impl(v87, &v110, &v121, 80, &dword_1E1C61000, v85, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v114, 38, v97, v100);
            _os_crash_msg();
            __break(1u);
LABEL_72:
            v110 = 0;
            v124 = 0u;
            v125 = 0u;
            v122 = 0u;
            v123 = 0u;
            v121 = 0u;
            v88 = MEMORY[0x1E69E9C10];
            v89 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v114 = 136315906;
            *&v114[4] = "operator[]";
            v115 = 1024;
            if (v89)
            {
              v90 = 3;
            }

            else
            {
              v90 = 2;
            }

            v116 = 621;
            v117 = 2048;
            v118 = v4;
            v119 = 2048;
            v120 = v4;
            _os_log_send_and_compose_impl(v90, &v110, &v121, 80, &dword_1E1C61000, v88, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v114, 38, v97, v100);
            _os_crash_msg();
            __break(1u);
            goto LABEL_76;
          }

LABEL_14:
          v105 = v11;
          if (v16)
          {
            v23 = [v14 edgeCreases];
            v24 = [v14 edgeCreaseIndices];
            v99 = v23;
            v25 = [v23 map];
            v12 = [v25 bytes];

            v97 = v24;
            v26 = [v24 map];
            v101 = [v26 bytes];

            v27 = re::GeomMesh::addAttribute(a3, "osdEdgeCreaseIndices", 4, 3);
            v28 = re::GeomMesh::addAttribute(a3, "osdEdgeCreaseWeights", 4, 4);
            (*(*v27 + 24))(v27, (2 * v16));
            (*(*v28 + 24))(v28, v16);
            v29 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v27);
            LODWORD(v23) = v30;
            v31 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v28);
            v4 = 0;
            v21 = *&v111[16];
            v33 = *&v113[2];
            v34 = v32;
            v35 = v16;
            v16 = v23;
            v36 = (v29 + 4);
            v37 = 2 * v35;
            v38 = (v101 + 4);
            v39 = v23 & 0xFFFFFFFE;
            v40 = (v23 + 1) & 0x1FFFFFFFELL;
            do
            {
              v9 = *(v38 - 1);
              if (v21 <= v9)
              {
                goto LABEL_44;
              }

              if (v40 == v4)
              {
                goto LABEL_48;
              }

              *(v36 - 1) = *(v33 + 4 * v9);
              v9 = *v38;
              if (v21 <= v9)
              {
                goto LABEL_52;
              }

              if (v39 == v4)
              {
                goto LABEL_56;
              }

              *v36 = *(v33 + 4 * v9);
              if (2 * v32 == v4)
              {
                goto LABEL_60;
              }

              v41 = *v12;
              v12 += 4;
              v38 += 2;
              *v31++ = v41;
              v4 += 2;
              v36 += 2;
            }

            while (v37 != v4);

            v11 = v105;
          }

          if (v104)
          {
            v42 = [v14 vertexCreases];
            v43 = [v14 vertexCreaseIndices];
            v102 = v42;
            v44 = [v42 map];
            v45 = [v44 bytes];

            v100 = v43;
            v46 = [v43 map];
            v47 = [v46 bytes];

            v48 = re::GeomMesh::addAttribute(a3, "osdVertexCreaseIndices", 4, 3);
            v49 = re::GeomMesh::addAttribute(a3, "osdVertexCreaseWeights", 4, 4);
            (*(*v48 + 24))(v48, v104);
            (*(*v49 + 24))(v49, v104);
            v50 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v48);
            LODWORD(v48) = v51;
            v52 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v49);
            v21 = *&v111[16];
            v53 = *&v113[2];
            v54 = v48;
            v4 = v55;
            v56 = v104;
            v12 = v48;
            v57 = v55;
            do
            {
              v58 = *v47++;
              v9 = v58;
              if (v21 <= v58)
              {
                goto LABEL_64;
              }

              if (!v54)
              {
                goto LABEL_68;
              }

              *v50 = *(v53 + 4 * v9);
              if (!v57)
              {
                goto LABEL_72;
              }

              v59 = *v45++;
              *v52++ = v59;
              ++v50;
              --v57;
              --v54;
              --v56;
            }

            while (v56);

            v11 = v105;
          }

          v10 = v103;
          if (*v111 && *&v113[2])
          {
            (*(**v111 + 40))();
          }
        }
      }
    }
  }
}

void *re::DynamicArray<re::internal::anonymous namespace::MDLAttrTopologyMap>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 80 * a2;
    v9 = a2;
    do
    {
      v10 = v3[4] + v8;
      re::DynamicArray<unsigned long>::deinit(v10 + 40);
      result = re::DynamicArray<unsigned long>::deinit(v10);
      ++v9;
      v8 += 80;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 80 * v4;
      do
      {
        v7 = v3[4] + v6;
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 24) = 0;
        *(v7 + 16) = 0;
        *(v7 + 72) = 0;
        *(v7 + 32) = 0uLL;
        *(v7 + 48) = 0uLL;
        *(v7 + 64) = 0;
        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

unint64_t *re::internal::anonymous namespace::buildMappingsForMDLSubmeshToGeomVertexHelper(unint64_t *result, unint64_t a2, unint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v63 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v10 = a3;
    v11 = a2;
    v12 = result;
    v13 = 0;
    v15 = result[1];
    v14 = result[2];
    v16 = a4;
    v17 = 0xFFFFFFFFLL;
    v18 = a3;
    v19 = a4;
    do
    {
      if (*result <= v18)
      {
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "index < m_max_index", "operator[]", 79);
        _os_crash("assertion failure: (index < m_max_index) ");
        __break(1u);
LABEL_44:
        re::internal::assertLog(4, v21, "assertion failure: '%s' (%s:line %i) ", "index < m_max_index", "operator[]", 79);
        _os_crash("assertion failure: (index < m_max_index) ");
        __break(1u);
LABEL_45:
        v49 = 0;
        v61 = 0u;
        v62 = 0u;
        v60 = 0u;
        v58 = 0u;
        v59 = 0u;
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

        v53 = 789;
        v54 = 2048;
        v55 = v10;
        v56 = 2048;
        v57 = v12;
        _os_log_send_and_compose_impl(v35, &v49, &v58, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v50, 38, v42, v43);
        _os_crash_msg();
        __break(1u);
        goto LABEL_49;
      }

      v6 = v17;
      switch(v14)
      {
        case 0x20uLL:
          v7 = *(v15 + 4 * v18);
          break;
        case 0x10uLL:
          v7 = *(v15 + 2 * v18);
          break;
        case 8uLL:
          v7 = *(v15 + v18);
          break;
        default:
          goto LABEL_57;
      }

      if (v7 >= v17)
      {
        v17 = v17;
      }

      else
      {
        v17 = v7;
      }

      if (v7 > v13)
      {
        v13 = v7;
      }

      v18 += a2;
      --v19;
    }

    while (v19);
    v48 = 0;
    v20 = v13 - v17 + 1;
    v45[1] = 0;
    v46 = 0;
    v45[0] = 0;
    v47 = 0;
    LOBYTE(v58) = 0;
    re::DynamicArray<BOOL>::resize(v45, v20, &v58);
    v22 = 0;
    v24 = v12[1];
    v23 = v12[2];
    v25 = *v12;
    v12 = v46;
    v26 = v48;
    do
    {
      if (v25 <= v10)
      {
        goto LABEL_44;
      }

      v27 = v10;
      switch(v23)
      {
        case 0x20uLL:
          v28 = *(v24 + 4 * v10);
          break;
        case 0x10uLL:
          v28 = *(v24 + 2 * v10);
          break;
        case 8uLL:
          v28 = *(v24 + v10);
          break;
        default:
          goto LABEL_58;
      }

      v10 = (v28 - v17);
      if (v12 <= v10)
      {
        goto LABEL_45;
      }

      if ((*(v26 + v10) & 1) == 0)
      {
        *(v26 + v10) = 1;
        ++v22;
      }

      v10 = (v27 + v11);
      --v16;
    }

    while (v16);
    re::DynamicArray<float>::resize(a6, v22);
    if (v20)
    {
      v29 = 0;
      v11 = 0;
      if (v7 >= v6)
      {
        v30 = v6;
      }

      else
      {
        v30 = v7;
      }

      while (1)
      {
        v7 = v46;
        if (v46 <= v11)
        {
          break;
        }

        if (*(v48 + v11) == 1)
        {
          v44 = v30 + v11;
          v58 = 0uLL;
          *&v59 = 0;
          v31 = 0xBF58476D1CE4E5B9 * ((v30 + v11) ^ ((v30 + v11) >> 30));
          re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(a5, &v44, (0x94D049BB133111EBLL * (v31 ^ (v31 >> 27))) ^ ((0x94D049BB133111EBLL * (v31 ^ (v31 >> 27))) >> 31), &v58);
          if (HIDWORD(v58) == 0x7FFFFFFF)
          {
            v32 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a5, DWORD2(v58), v58);
            *(v32 + 4) = v44;
            *(v32 + 8) = v29;
            ++*(a5 + 40);
          }

          v7 = v29;
          v6 = *(a6 + 16);
          if (v6 <= v29)
          {
            goto LABEL_53;
          }

          *(*(a6 + 32) + 4 * v29++) = v44;
        }

        if (v20 == ++v11)
        {
          goto LABEL_39;
        }
      }

LABEL_49:
      v49 = 0;
      v61 = 0u;
      v62 = 0u;
      v60 = 0u;
      v58 = 0u;
      v59 = 0u;
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

      v53 = 789;
      v54 = 2048;
      v55 = v11;
      v56 = 2048;
      v57 = v7;
      _os_log_send_and_compose_impl(v38, &v49, &v58, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v50, 38, v42, v43);
      _os_crash_msg();
      __break(1u);
LABEL_53:
      v49 = 0;
      v61 = 0u;
      v62 = 0u;
      v60 = 0u;
      v58 = 0u;
      v59 = 0u;
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

      v53 = 789;
      v54 = 2048;
      v55 = v7;
      v56 = 2048;
      v57 = v6;
      _os_log_send_and_compose_impl(v41, &v49, &v58, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v50, 38, v42, v43);
      _os_crash_msg();
      __break(1u);
LABEL_57:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unsupported or invalid MDLIndexBitDepth detected.", "!Unreachable code", "operator[]", 93);
      _os_crash("assertion failure: (!Unreachable code) Unsupported or invalid MDLIndexBitDepth detected.");
      __break(1u);
LABEL_58:
      re::internal::assertLog(4, v21, "assertion failure: '%s' (%s:line %i) Unsupported or invalid MDLIndexBitDepth detected.", "!Unreachable code", "operator[]", 93);
      _os_crash("assertion failure: (!Unreachable code) Unsupported or invalid MDLIndexBitDepth detected.");
      __break(1u);
    }

LABEL_39:
    result = v45[0];
    if (v45[0])
    {
      if (v48)
      {
        return (*(*v45[0] + 40))();
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::internal::anonymous namespace::MDLAttrTopologyMap>::setCapacity(void *result, unint64_t a2)
{
  v2 = result[1];
  if (v2 != a2)
  {
    v4 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v4)
      {
        ++*(v4 + 6);
        return result;
      }

      if (a2)
      {
        result = (*(*result + 32))(result, 80 * a2, 8);
        if (!result)
        {
          re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, 80 * a2, *(*v4 + 8));
          result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v20, v21);
          __break(1u);
          return result;
        }

        v6 = result;
        if (!v4[1])
        {
          goto LABEL_15;
        }
      }

      else
      {
        v6 = 0;
        if (!v2)
        {
LABEL_15:
          v4[4] = v6;
          v4[1] = a2;
          return result;
        }
      }

      v7 = v4[4];
      v8 = v4[2];
      if (v8)
      {
        v9 = 0;
        v10 = v7 + 80 * v8;
        do
        {
          v11 = v7 + v9;
          v12 = &v6[v9 / 8];
          v12[4] = 0;
          v12[1] = 0;
          v12[2] = 0;
          *v12 = 0;
          *(v12 + 6) = 0;
          v13 = *(v7 + v9 + 8);
          *v12 = *(v7 + v9);
          v12[1] = v13;
          *v11 = 0;
          *(v11 + 8) = 0;
          v14 = v6[v9 / 8 + 2];
          v12[2] = *(v7 + v9 + 16);
          *(v11 + 16) = v14;
          v15 = v6[v9 / 8 + 4];
          v12[4] = *(v7 + v9 + 32);
          *(v11 + 32) = v15;
          *(v11 + 24) = *(v7 + v9 + 24) + 1;
          *(v12 + 6) = LODWORD(v6[v9 / 8 + 3]) + 1;
          v12[9] = 0;
          v12[6] = 0;
          v12[7] = 0;
          v12[5] = 0;
          *(v12 + 16) = 0;
          v16 = (v7 + v9 + 40);
          v17 = *(v7 + v9 + 48);
          v12[5] = *v16;
          *v16 = 0;
          v12[6] = v17;
          *(v11 + 48) = 0;
          v18 = v6[v9 / 8 + 7];
          v12[7] = *(v7 + v9 + 56);
          *(v11 + 56) = v18;
          v19 = v6[v9 / 8 + 9];
          v12[9] = *(v7 + v9 + 72);
          *(v11 + 72) = v19;
          *(v11 + 64) = *(v7 + v9 + 64) + 1;
          *(v12 + 16) = LODWORD(v6[v9 / 8 + 8]) + 1;
          re::DynamicArray<unsigned long>::deinit(v16);
          re::DynamicArray<unsigned long>::deinit(v7 + v9);
          v9 += 80;
        }

        while (v11 + 80 != v10);
        v7 = v4[4];
      }

      result = (*(**v4 + 40))(*v4, v7);
      goto LABEL_15;
    }
  }

  return result;
}

void re::makeGeomMeshFromModelDescriptor(uint64_t *__return_ptr a1@<X8>, re *this@<X0>)
{
  v2 = this;
  v910 = *MEMORY[0x1E69E9840];
  v3 = *(this + 4);
  if (v3)
  {
    v4 = (v3 + 8);
    v5 = *(v3 + 33);
    if (v5 >= 6)
    {
      v6 = v5 == 5;
    }

    else
    {
      v6 = 0x30u >> v5;
    }

    if (v6 & 1) != 0 && (*(v3 + 32))
    {
      v7 = (v3 + 8);
      v8 = *(v3 + 48);
      v851 = (*(v3 + 24) + *(v3 + 56));
      v9 = *(v3 + 40);
      v10 = (v3 + 8);

      v11 = 0;
      v12 = 0;
      v13 = 1;
      v14 = v3;
    }

    else
    {
      v15 = re::internal::DataPayload::computePoDConversionHelper<unsigned int>(v3, &v858);
      if (v858 == 1)
      {
        v11 = *(&v858 + 1);
        v9 = v859;
        v8 = 4;
        v12 = v860;
      }

      else
      {
        if (v860 && (v861 & 1) != 0)
        {
          (*(*v860 + 40))(v15);
        }

        v9 = 0;
        v11 = 0;
        v12 = 0;
        v8 = 0;
      }

      v14 = 0;
      v13 = v9 == 0;
      v851 = v12;
    }
  }

  else
  {
    v851 = 0;
    v8 = 0;
    v12 = 0;
    v11 = 0;
    v14 = 0;
    v9 = 0;
    v13 = 1;
  }

  if (*(v2 + 24) != v9)
  {
    v27 = v858;
    v28 = v859;
    v29 = v860;
    *a1 = 0;
    a1[1] = 100;
    a1[2] = re::AssetErrorCategory(void)::instance;
    *(a1 + 3) = v27;
    a1[5] = v28;
    a1[6] = v29;
    goto LABEL_1163;
  }

  v853 = v8;
  v16 = re::GeomMesh::GeomMesh(&v858, 0);
  v863 = xmmword_1E30A0E80;
  v864 = -1;
  v865 = 0;
  LODWORD(v866) = 0;
  v871 = 0u;
  memset(v872, 0, sizeof(v872));
  v842 = v2;
  v843 = *(v2 + 16);
  v841 = *(v2 + 24);
  v18 = *(v2 + 40);
  v838 = v12;
  if (v18)
  {
    v19 = (v18 + 8);
    v20 = *(v18 + 33);
    if (v20 >= 6)
    {
      v21 = v20 == 5;
    }

    else
    {
      v21 = 0x30u >> v20;
    }

    if (v21 & 1) != 0 && (*(v18 + 32))
    {
      v22 = (v18 + 8);
      v23 = *(v18 + 48);
      v24 = *(v18 + 24) + *(v18 + 56);
      v25 = *(v18 + 40);
      v26 = (v18 + 8);

      v845 = 0;
      v2 = 0;
      LODWORD(v852) = 1;
      v854 = v18;
    }

    else
    {
      v31 = re::internal::DataPayload::computePoDConversionHelper<unsigned int>(v18, v878);
      if (LOBYTE(v878[0]) == 1)
      {
        v2 = v878[1];
        v25 = v879;
        v23 = 4;
        v24 = *(&v879 + 1);
      }

      else
      {
        if (*(&v879 + 1) && (v880 & 1) != 0)
        {
          (*(**(&v879 + 1) + 40))(v31);
        }

        v24 = 0;
        v25 = 0;
        v2 = 0;
        v23 = 0;
      }

      v854 = 0;
      LODWORD(v852) = v25 == 0;
      v845 = v24;
    }

    v30 = v2;
  }

  else
  {
    v24 = 0;
    v23 = 0;
    v25 = 0;
    v854 = 0;
    v30 = 0;
    v845 = 0;
    LODWORD(v852) = 1;
  }

  if (v9 != v841)
  {
    goto LABEL_1416;
  }

  v844 = v9;
  v847 = v30;
  if (v9)
  {
    v32 = v9;
    LODWORD(v9) = 0;
    LODWORD(v33) = 0;
    LODWORD(v2) = 0;
    v34 = v851;
    while (1)
    {
      v35 = *v34;
      if (*v34 < 5)
      {
        if (v35 <= 2)
        {
          v41 = "Model contains degenerate face (face < 2 vertices).";
LABEL_54:
          v42 = 0;
          v2 = *(&v879 + 1);
          v18 = v879;
          v23 = v878[0];
          v24 = v878[1];
LABEL_64:
          v9 = v844;
          goto LABEL_65;
        }

        v36 = 1;
      }

      else
      {
        v36 = v35 - 2;
      }

      v34 = (v34 + v8);
      v9 = (v36 + v9);
      if (v35 <= v2)
      {
        v2 = v2;
      }

      else
      {
        v2 = v35;
      }

      v33 = v35 + v33;
      if (!--v32)
      {
        goto LABEL_48;
      }
    }
  }

  v2 = 0;
  v33 = 0;
LABEL_48:
  if (v25 != v33)
  {
    v41 = "Model contains a corrupt index list.";
    goto LABEL_54;
  }

  v37 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((v842 + 6), v906);
  if (v37)
  {
    v38 = v13;
    v39 = v11;
    v11 = *v37;
    v13 = v842[14];
    if (v13 <= *v37)
    {
LABEL_1505:
      *&v905[0] = 0;
      v882 = 0u;
      v881 = 0u;
      v880 = 0u;
      v879 = 0u;
      *v878 = 0u;
      v683 = MEMORY[0x1E69E9C10];
      v684 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v901[0]) = 136315906;
      *(v901 + 4) = "operator[]";
      WORD6(v901[0]) = 1024;
      if (v684)
      {
        v685 = 3;
      }

      else
      {
        v685 = 2;
      }

      *(v901 + 14) = 797;
      WORD1(v901[1]) = 2048;
      *(&v901[1] + 4) = v11;
      WORD6(v901[1]) = 2048;
      *(&v901[1] + 14) = v13;
      _os_log_send_and_compose_impl(v685, v905, v878, 80, &dword_1E1C61000, v683, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v901, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1509:
      v874 = 0;
      v882 = 0u;
      v881 = 0u;
      v880 = 0u;
      v879 = 0u;
      *v878 = 0u;
      v686 = MEMORY[0x1E69E9C10];
      v687 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v908 = 136315906;
      *&v908[4] = "operator[]";
      *&v908[12] = 1024;
      if (v687)
      {
        v688 = 3;
      }

      else
      {
        v688 = 2;
      }

      *&v908[14] = 789;
      *&v908[18] = 2048;
      *&v908[20] = v25;
      *&v908[28] = 2048;
      *&v908[30] = v9;
      _os_log_send_and_compose_impl(v688, &v874, v878, 80, &dword_1E1C61000, v686, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v908, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1513:
      v874 = 0;
      v882 = 0u;
      v881 = 0u;
      v880 = 0u;
      v879 = 0u;
      *v878 = 0u;
      v689 = MEMORY[0x1E69E9C10];
      v690 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v908 = 136315906;
      *&v908[4] = "operator[]";
      *&v908[12] = 1024;
      if (v690)
      {
        v691 = 3;
      }

      else
      {
        v691 = 2;
      }

      *&v908[14] = 789;
      *&v908[18] = 2048;
      *&v908[20] = v25;
      *&v908[28] = 2048;
      *&v908[30] = v9;
      _os_log_send_and_compose_impl(v691, &v874, v878, 80, &dword_1E1C61000, v689, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v908, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1517:
      *v908 = 0;
      v882 = 0u;
      v881 = 0u;
      v880 = 0u;
      v879 = 0u;
      *v878 = 0u;
      v692 = MEMORY[0x1E69E9C10];
      v693 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v901[0]) = 136315906;
      *(v901 + 4) = "operator[]";
      WORD6(v901[0]) = 1024;
      if (v693)
      {
        v694 = 3;
      }

      else
      {
        v694 = 2;
      }

      *(v901 + 14) = 789;
      WORD1(v901[1]) = 2048;
      *(&v901[1] + 4) = v25;
      WORD6(v901[1]) = 2048;
      *(&v901[1] + 14) = v14;
      _os_log_send_and_compose_impl(v694, v908, v878, 80, &dword_1E1C61000, v692, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v901, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1521:
      *v908 = 0;
      v882 = 0u;
      v881 = 0u;
      v880 = 0u;
      v879 = 0u;
      *v878 = 0u;
      v695 = MEMORY[0x1E69E9C10];
      v696 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v901[0]) = 136315906;
      *(v901 + 4) = "operator[]";
      WORD6(v901[0]) = 1024;
      if (v696)
      {
        v697 = 3;
      }

      else
      {
        v697 = 2;
      }

      *(v901 + 14) = 789;
      WORD1(v901[1]) = 2048;
      *(&v901[1] + 4) = v25;
      WORD6(v901[1]) = 2048;
      *(&v901[1] + 14) = v14;
      _os_log_send_and_compose_impl(v697, v908, v878, 80, &dword_1E1C61000, v695, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v901, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
      goto LABEL_1525;
    }

    v40 = v842[16] + 56 * v11;
    v11 = v39;
    v13 = v38;
  }

  else
  {
    v40 = re::GeomModelDescriptor::emptyAttribute(0);
  }

  v833 = v14;
  v43 = *&v906[0];
  if (*&v906[0] && (BYTE8(v906[0]) & 1) != 0)
  {
    v43 = (*(**&v906[0] + 40))(*&v906[0], *&v906[1]);
  }

  v44 = *(v40 + 40);
  if (!v44)
  {
    v45 = "No positions specified for model.";
    goto LABEL_63;
  }

  if (*(v40 + 48))
  {
    v45 = "Positions cannot be indexed.";
LABEL_63:
    v42 = 0;
    v2 = *(&v879 + 1);
    v18 = v879;
    v23 = v878[0];
    v24 = v878[1];
    v14 = v833;
    goto LABEL_64;
  }

  v474 = (v44 + 8);
  if (*(v44 + 32) == 1 && (*(v44 + 33) | 2) == 0xB)
  {
    v475 = (v44 + 8);
    v800 = *(v44 + 48);
    v797 = *(v44 + 24) + *(v44 + 56);
    v476 = (v44 + 8);

    v801 = v44;
    v807 = 0;
    LOBYTE(v813) = 1;
  }

  else
  {
    v477 = re::internal::DataPayload::computeConvertedValues<re::PackedFloat3>(v44, v878);
    if (LOBYTE(v878[0]) == 1)
    {
      v478 = v878[1];
      v479 = *(&v879 + 1);
      LOBYTE(v813) = v879 == 0;
      v800 = 12;
    }

    else
    {
      if (*(&v879 + 1) && (v880 & 1) != 0)
      {
        (*(**(&v879 + 1) + 40))(v477);
      }

      v478 = 0;
      v479 = 0;
      v800 = 0;
      LOBYTE(v813) = 1;
    }

    v801 = 0;
    v807 = v478;
    v797 = v479;
  }

  v818 = v11;

  bzero(v878, 0x2D0uLL);
  re::DynamicArray<re::BlendNode>::setCapacity(&v879, 1uLL);
  ++DWORD2(v880);
  re::internal::GeomAttributeManager::GeomAttributeManager((&v881 + 8));
  re::internal::GeomAttributeManager::addAttribute((&v881 + 8), "vertexPosition", 1, 7);
  LODWORD(v878[1]) = v843;
  v883 = v843;
  if (v884)
  {
    v493 = v885;
    v494 = 8 * v884;
    do
    {
      v495 = *v493++;
      (*(*v495 + 80))(v495, v883);
      v494 -= 8;
    }

    while (v494);
  }

  if (v9 < v880)
  {
    v496 = v890;
    if (v890)
    {
      v497 = 0;
      do
      {
        v498 = re::internal::GeomAttributeContainer::attributeByIndex(v889, v497);
        re::internal::accessFaceVaryingAttributeSubmesh(v498, v499);
        ++v497;
      }

      while (v496 != v497);
    }
  }

  v18 = v9;
  v500 = re::DynamicArray<re::GeomCell4>::resize(&v879, v9);
  v886 = v9;
  if (v887)
  {
    v501 = v888;
    v502 = 8 * v887;
    do
    {
      v503 = *v501++;
      v500 = (*(*v503 + 80))(v503, v886);
      v502 -= 8;
    }

    while (v502);
  }

  *(&v872[0] + 1) = 0;
  *(&v872[1] + 8) = 0u;
  v504 = *&v872[0];
  *&v872[1] = *&v872[0];
  *&v901[0] = &v871;
  if (*&v872[0] > 0xFuLL)
  {
    v505 = 0;
    v506 = v871;
    v507 = *&v872[0] >> 4;
    while (1)
    {
      v508 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v506), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      *(&v901[0] + 1) = v508 ^ 0xFFFFLL;
      if (v508 != 0xFFFFLL)
      {
        break;
      }

      v505 -= 16;
      ++v506;
      if (!--v507)
      {
        goto LABEL_1218;
      }
    }

    v516 = __clz(__rbit64(v508 ^ 0xFFFFLL));
    v517 = v516 - v505;
    *&v901[1] = v516 - v505;
    if (v516 + 1 != v505)
    {
      do
      {
        v518 = *(&v871 + 1) + 96 * v517;
        re::DynamicArray<unsigned long>::deinit(v518 + 56);
        re::FixedArray<CoreIKTransform>::deinit((v518 + 32));
        re::FixedArray<CoreIKTransform>::deinit((v518 + 8));
        v500 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v901);
        v517 = *&v901[1];
      }

      while (*&v901[1] != -1);
      v504 = *&v872[0];
    }

LABEL_1218:
    if (v504 >= 0x10)
    {
      v519 = 0;
      *&v520 = -1;
      *(&v520 + 1) = -1;
      do
      {
        *(v871 + 16 * v519++) = v520;
      }

      while (v519 < *&v872[0] >> 4);
    }
  }

  if (v2 <= 4)
  {
    v14 = v833;
    v550 = v843;
    if (!v841)
    {
LABEL_1298:
      v558 = 0;
      *&v901[0] = 0xFFFFFFFF00000000;
      DWORD2(v901[0]) = -1;
      BYTE12(v901[0]) = 0;
      if ((v9 - 1) <= 0xFFFFFFFD)
      {
        DWORD2(v901[0]) = v9 - 1;
        v558 = v9;
        *&v901[0] = v9;
      }

      LODWORD(v901[1]) = v558;
      re::GeomIndexMap::operator=(&v863 + 8, v901);
      v11 = v818;
      v25 = v842;
      v9 = v844;
      if (BYTE12(v901[0]))
      {
        if (BYTE12(v901[0]) == 2)
        {
          re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v901[1]);
        }

        else
        {
          if (BYTE12(v901[0]) != 1)
          {
            goto LABEL_1681;
          }

          if (*&v901[1] && *&v902[0])
          {
            (*(**&v901[1] + 40))();
          }
        }
      }

      v8 = v853;
      goto LABEL_1345;
    }

    v18 = 0;
    v551 = 0;
    v552 = v851;
    while (1)
    {
      v553 = *(v24 + v23 * v551);
      if (v553 >= v550 || (v554 = *(v24 + v23 * (v551 + 1)), v554 >= v550))
      {
LABEL_1316:
        v42 = 0;
        v2 = *(&v901[1] + 1);
        v18 = *&v901[1];
        v24 = *(&v901[0] + 1);
        v23 = *&v901[0];
        v11 = v818;
        v9 = v844;
        v8 = v853;
        goto LABEL_1357;
      }

      v555 = *v552;
      v556 = *(v24 + v23 * (v551 + 2));
      if (*v552 == 4 && v556 < v550)
      {
        break;
      }

      if (v555 == 4 || v556 >= v550)
      {
        goto LABEL_1316;
      }

      if (v555 == 3)
      {
        v500 = re::GeomMeshBuilder::setFaceVertices(v878, v18, v553, v554, v556);
LABEL_1296:
        v550 = v843;
      }

      v552 = (v552 + v853);
      v551 += v555;
      if (v844 == ++v18)
      {
        goto LABEL_1298;
      }
    }

    v557 = *(v24 + v23 * (v551 + 3));
    if (v557 >= v550)
    {
      goto LABEL_1316;
    }

    v500 = re::GeomMeshBuilder::setFaceVertices(v878, v18, v553, v554, v556, v557);
    goto LABEL_1296;
  }

  v855 = 0;
  v856 = 0;
  v857 = 0;
  v875 = 0;
  v874 = 0;
  v876 = 0;
  *&v905[2] = 0;
  memset(v905, 0, 28);
  v25 = v2;
  v522 = re::DynamicArray<unsigned int>::resize(v905, v9, &re::kInvalidMeshIndex);
  v523 = 0;
  v18 = v856;
  v524 = v857;
  v11 = v818;
  v9 = v844;
  v8 = v853;
  do
  {
    if (v18 == v523)
    {
      goto LABEL_1412;
    }

    *(v524 + 4 * v523) = v523;
    ++v523;
  }

  while (v2 != v523);
  v873 = 0;
  v14 = v833;
  v25 = v842;
  v525 = v843;
  if (!v841)
  {
    goto LABEL_1278;
  }

  v526 = 0;
  v527 = 0;
  v796 = v841;
  do
  {
    v18 = v526;
    v528 = v8 * v526;
    v529 = *(v851 + v528);
    if (v529)
    {
      v530 = *(v851 + v528);
      v531 = v527;
      do
      {
        if (*(v24 + v23 * v531) >= v525)
        {
          v2 = *(&v901[1] + 1);
          v18 = *&v901[1];
          v24 = *(&v901[0] + 1);
          v23 = *&v901[0];
          if (*&v905[0] && *&v905[2])
          {
            (*(**&v905[0] + 40))();
          }

          if (v874 && v875)
          {
            (*(*v874 + 40))();
          }

          if (v855 && v856)
          {
            (*(*v855 + 40))();
          }

          v42 = 0;
          goto LABEL_1357;
        }

        ++v531;
        --v530;
      }

      while (v530);
    }

    v11 = *&v905[1];
    if (*&v905[1] <= v526)
    {
      goto LABEL_1593;
    }

    *(*&v905[2] + 4 * v526) = v526;
    v840 = v526;
    v799 = v529;
    if (v529 == 4)
    {
      v18 = v527;
      v522 = re::GeomMeshBuilder::setFaceVertices(v878, v526, *(v24 + v23 * v527), *(v24 + v23 * (v527 + 1)), *(v24 + v23 * (v527 + 2)), *(v24 + v23 * (v527 + 3)));
      v532 = v840;
      v525 = v843;
      v11 = v818;
      goto LABEL_1277;
    }

    if (v529 == 3)
    {
      v18 = v527;
      v522 = re::GeomMeshBuilder::setFaceVertices(v878, v526, *(v24 + v23 * v527), *(v24 + v23 * (v527 + 1)), *(v24 + v23 * (v527 + 2)));
      v532 = v840;
      v11 = v818;
      v525 = v843;
      goto LABEL_1277;
    }

    v533 = (v529 - 2);
    v903 = 0;
    memset(v901, 0, sizeof(v901));
    memset(v902, 0, 28);
    v832 = v527;
    v815 = v533;
    if (v799)
    {
      v535 = 0;
      v18 = *(&v901[0] + 1);
      v536 = *&v901[1];
      v537 = v832;
      do
      {
        if (v18 == v535)
        {
          goto LABEL_1437;
        }

        *(v536 + 4 * v535++) = *(v24 + v23 * v537++);
      }

      while (v799 != v535);
      if (v799 > 0xFF)
      {
        v542 = v13;
        re::DynamicArray<unsigned int>::resize(v902, (3 * v815), &re::kInvalidMeshIndex);
        v544 = 0;
        v545 = 2;
        v11 = *&v902[1];
        v546 = v903;
        v543 = v840;
        while (1)
        {
          v18 = v544;
          if (v11 <= v544)
          {
            goto LABEL_1529;
          }

          v546[v544] = 0;
          v13 = v544 + 1;
          if (v11 <= v13)
          {
            goto LABEL_1533;
          }

          v546[v13] = v545 - 1;
          v13 = v544 + 2;
          if (v11 <= v13)
          {
            goto LABEL_1541;
          }

          v546[v13] = v545;
          v544 += 3;
          ++v545;
          if (v18 + 3 >= (3 * v815))
          {
            goto LABEL_1252;
          }
        }
      }

      v11 = 0;
      v538 = 4;
      while (1)
      {
        v18 = v875;
        if (v875 <= v11)
        {
          break;
        }

        v539 = (v797 + v800 * *(v24 + v23 * (v832 + v11)));
        v541 = v539[1];
        v540 = v539[2];
        *(v876 + v538 - 4) = *v539;
        v18 = v875;
        if (v875 <= v11)
        {
          goto LABEL_1537;
        }

        *(v876 + v538) = v541;
        v18 = v875;
        if (v875 <= v11)
        {
          goto LABEL_1545;
        }

        *(v876 + v538 + 4) = v540;
        ++v11;
        v538 += 16;
        if (v799 == v11)
        {
          goto LABEL_1246;
        }
      }

LABEL_1525:
      v877 = 0;
      v907 = 0u;
      memset(v906, 0, sizeof(v906));
      v698 = MEMORY[0x1E69E9C10];
      v699 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v908 = 136315906;
      *&v908[4] = "operator[]";
      *&v908[12] = 1024;
      if (v699)
      {
        v700 = 3;
      }

      else
      {
        v700 = 2;
      }

      *&v908[14] = 468;
      *&v908[18] = 2048;
      *&v908[20] = v11;
      *&v908[28] = 2048;
      *&v908[30] = v18;
      _os_log_send_and_compose_impl(v700, &v877, v906, 80, &dword_1E1C61000, v698, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v908, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1529:
      v877 = 0;
      v907 = 0u;
      memset(v906, 0, sizeof(v906));
      v701 = MEMORY[0x1E69E9C10];
      v702 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v908 = 136315906;
      *&v908[4] = "operator[]";
      *&v908[12] = 1024;
      if (v702)
      {
        v703 = 3;
      }

      else
      {
        v703 = 2;
      }

      *&v908[14] = 789;
      *&v908[18] = 2048;
      *&v908[20] = v18;
      *&v908[28] = 2048;
      *&v908[30] = v11;
      _os_log_send_and_compose_impl(v703, &v877, v906, 80, &dword_1E1C61000, v701, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v908, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1533:
      v877 = 0;
      v907 = 0u;
      memset(v906, 0, sizeof(v906));
      v704 = MEMORY[0x1E69E9C10];
      v705 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v908 = 136315906;
      *&v908[4] = "operator[]";
      *&v908[12] = 1024;
      if (v705)
      {
        v706 = 3;
      }

      else
      {
        v706 = 2;
      }

      *&v908[14] = 789;
      *&v908[18] = 2048;
      *&v908[20] = v13;
      *&v908[28] = 2048;
      *&v908[30] = v11;
      _os_log_send_and_compose_impl(v706, &v877, v906, 80, &dword_1E1C61000, v704, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v908, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1537:
      v877 = 0;
      v907 = 0u;
      memset(v906, 0, sizeof(v906));
      v707 = MEMORY[0x1E69E9C10];
      v708 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v908 = 136315906;
      *&v908[4] = "operator[]";
      *&v908[12] = 1024;
      if (v708)
      {
        v709 = 3;
      }

      else
      {
        v709 = 2;
      }

      *&v908[14] = 468;
      *&v908[18] = 2048;
      *&v908[20] = v11;
      *&v908[28] = 2048;
      *&v908[30] = v18;
      _os_log_send_and_compose_impl(v709, &v877, v906, 80, &dword_1E1C61000, v707, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v908, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1541:
      v877 = 0;
      v907 = 0u;
      memset(v906, 0, sizeof(v906));
      v710 = MEMORY[0x1E69E9C10];
      v711 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v908 = 136315906;
      *&v908[4] = "operator[]";
      *&v908[12] = 1024;
      if (v711)
      {
        v712 = 3;
      }

      else
      {
        v712 = 2;
      }

      *&v908[14] = 789;
      *&v908[18] = 2048;
      *&v908[20] = v13;
      *&v908[28] = 2048;
      *&v908[30] = v11;
      _os_log_send_and_compose_impl(v712, &v877, v906, 80, &dword_1E1C61000, v710, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v908, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1545:
      v877 = 0;
      v907 = 0u;
      memset(v906, 0, sizeof(v906));
      v713 = MEMORY[0x1E69E9C10];
      v714 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v908 = 136315906;
      *&v908[4] = "operator[]";
      *&v908[12] = 1024;
      if (v714)
      {
        v715 = 3;
      }

      else
      {
        v715 = 2;
      }

      *&v908[14] = 468;
      *&v908[18] = 2048;
      *&v908[20] = v11;
      *&v908[28] = 2048;
      *&v908[30] = v18;
      _os_log_send_and_compose_impl(v715, &v877, v906, 80, &dword_1E1C61000, v713, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v908, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1549:
      *&v905[0] = 0;
      v882 = 0u;
      v881 = 0u;
      v880 = 0u;
      v879 = 0u;
      *v878 = 0u;
      v716 = MEMORY[0x1E69E9C10];
      v717 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v906[0]) = 136315906;
      *(v906 + 4) = "operator[]";
      WORD6(v906[0]) = 1024;
      if (v717)
      {
        v718 = 3;
      }

      else
      {
        v718 = 2;
      }

      *(v906 + 14) = 621;
      WORD1(v906[1]) = 2048;
      *(&v906[1] + 4) = v2;
      WORD6(v906[1]) = 2048;
      *(&v906[1] + 14) = v11;
      _os_log_send_and_compose_impl(v718, v905, v878, 80, &dword_1E1C61000, v716, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v906, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1553:
      *v908 = 0;
      v882 = 0u;
      v881 = 0u;
      v880 = 0u;
      v879 = 0u;
      *v878 = 0u;
      v719 = MEMORY[0x1E69E9C10];
      v720 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v905[0]) = 136315906;
      *(v905 + 4) = "operator[]";
      WORD6(v905[0]) = 1024;
      if (v720)
      {
        v721 = 3;
      }

      else
      {
        v721 = 2;
      }

      *(v905 + 14) = 621;
      WORD1(v905[1]) = 2048;
      *(&v905[1] + 4) = v24;
      WORD6(v905[1]) = 2048;
      *(&v905[1] + 14) = v11;
      _os_log_send_and_compose_impl(v721, v908, v878, 80, &dword_1E1C61000, v719, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v905, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1557:
      *&v905[0] = 0;
      v882 = 0u;
      v881 = 0u;
      v880 = 0u;
      v879 = 0u;
      *v878 = 0u;
      v722 = MEMORY[0x1E69E9C10];
      v723 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v906[0]) = 136315906;
      *(v906 + 4) = "operator[]";
      WORD6(v906[0]) = 1024;
      if (v723)
      {
        v724 = 3;
      }

      else
      {
        v724 = 2;
      }

      *(v906 + 14) = 621;
      WORD1(v906[1]) = 2048;
      *(&v906[1] + 4) = v2;
      WORD6(v906[1]) = 2048;
      *(&v906[1] + 14) = v11;
      _os_log_send_and_compose_impl(v724, v905, v878, 80, &dword_1E1C61000, v722, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v906, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1561:
      *&v905[0] = 0;
      v882 = 0u;
      v881 = 0u;
      v880 = 0u;
      v879 = 0u;
      *v878 = 0u;
      v725 = MEMORY[0x1E69E9C10];
      v726 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v906[0]) = 136315906;
      *(v906 + 4) = "operator[]";
      WORD6(v906[0]) = 1024;
      if (v726)
      {
        v727 = 3;
      }

      else
      {
        v727 = 2;
      }

      *(v906 + 14) = 621;
      WORD1(v906[1]) = 2048;
      *(&v906[1] + 4) = v11;
      WORD6(v906[1]) = 2048;
      *(&v906[1] + 14) = v2;
      _os_log_send_and_compose_impl(v727, v905, v878, 80, &dword_1E1C61000, v725, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v906, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1565:
      *&v905[0] = 0;
      v882 = 0u;
      v881 = 0u;
      v880 = 0u;
      v879 = 0u;
      *v878 = 0u;
      v728 = MEMORY[0x1E69E9C10];
      v729 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v906[0]) = 136315906;
      *(v906 + 4) = "operator[]";
      WORD6(v906[0]) = 1024;
      if (v729)
      {
        v730 = 3;
      }

      else
      {
        v730 = 2;
      }

      *(v906 + 14) = 621;
      WORD1(v906[1]) = 2048;
      *(&v906[1] + 4) = v11;
      WORD6(v906[1]) = 2048;
      *(&v906[1] + 14) = v2;
      _os_log_send_and_compose_impl(v730, v905, v878, 80, &dword_1E1C61000, v728, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v906, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1569:
      *&v905[0] = 0;
      v882 = 0u;
      v881 = 0u;
      v880 = 0u;
      v879 = 0u;
      *v878 = 0u;
      v731 = MEMORY[0x1E69E9C10];
      v732 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v906[0]) = 136315906;
      *(v906 + 4) = "operator[]";
      WORD6(v906[0]) = 1024;
      if (v732)
      {
        v733 = 3;
      }

      else
      {
        v733 = 2;
      }

      *(v906 + 14) = 621;
      WORD1(v906[1]) = 2048;
      *(&v906[1] + 4) = v11;
      WORD6(v906[1]) = 2048;
      *(&v906[1] + 14) = v2;
      _os_log_send_and_compose_impl(v733, v905, v878, 80, &dword_1E1C61000, v731, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v906, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1573:
      *&v905[0] = 0;
      v882 = 0u;
      v881 = 0u;
      v880 = 0u;
      v879 = 0u;
      *v878 = 0u;
      v734 = MEMORY[0x1E69E9C10];
      v735 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v906[0]) = 136315906;
      *(v906 + 4) = "operator[]";
      WORD6(v906[0]) = 1024;
      if (v735)
      {
        v736 = 3;
      }

      else
      {
        v736 = 2;
      }

      *(v906 + 14) = 621;
      WORD1(v906[1]) = 2048;
      *(&v906[1] + 4) = v2;
      WORD6(v906[1]) = 2048;
      *(&v906[1] + 14) = v11;
      _os_log_send_and_compose_impl(v736, v905, v878, 80, &dword_1E1C61000, v734, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v906, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1577:
      *v908 = 0;
      v882 = 0u;
      v881 = 0u;
      v880 = 0u;
      v879 = 0u;
      *v878 = 0u;
      v737 = MEMORY[0x1E69E9C10];
      v738 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v905[0]) = 136315906;
      *(v905 + 4) = "operator[]";
      WORD6(v905[0]) = 1024;
      if (v738)
      {
        v739 = 3;
      }

      else
      {
        v739 = 2;
      }

      *(v905 + 14) = 621;
      WORD1(v905[1]) = 2048;
      *(&v905[1] + 4) = v24;
      WORD6(v905[1]) = 2048;
      *(&v905[1] + 14) = v11;
      _os_log_send_and_compose_impl(v739, v908, v878, 80, &dword_1E1C61000, v737, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v905, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1581:
      *&v905[0] = 0;
      v882 = 0u;
      v881 = 0u;
      v880 = 0u;
      v879 = 0u;
      *v878 = 0u;
      v740 = MEMORY[0x1E69E9C10];
      v741 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v906[0]) = 136315906;
      *(v906 + 4) = "operator[]";
      WORD6(v906[0]) = 1024;
      if (v741)
      {
        v742 = 3;
      }

      else
      {
        v742 = 2;
      }

      *(v906 + 14) = 621;
      WORD1(v906[1]) = 2048;
      *(&v906[1] + 4) = v2;
      WORD6(v906[1]) = 2048;
      *(&v906[1] + 14) = v11;
      _os_log_send_and_compose_impl(v742, v905, v878, 80, &dword_1E1C61000, v740, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v906, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1585:
      *&v905[0] = 0;
      v882 = 0u;
      v881 = 0u;
      v880 = 0u;
      v879 = 0u;
      *v878 = 0u;
      v743 = MEMORY[0x1E69E9C10];
      v744 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v906[0]) = 136315906;
      *(v906 + 4) = "operator[]";
      WORD6(v906[0]) = 1024;
      if (v744)
      {
        v745 = 3;
      }

      else
      {
        v745 = 2;
      }

      *(v906 + 14) = 621;
      WORD1(v906[1]) = 2048;
      *(&v906[1] + 4) = v2;
      WORD6(v906[1]) = 2048;
      *(&v906[1] + 14) = v11;
      _os_log_send_and_compose_impl(v745, v905, v878, 80, &dword_1E1C61000, v743, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v906, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1589:
      *&v905[0] = 0;
      v882 = 0u;
      v881 = 0u;
      v880 = 0u;
      v879 = 0u;
      *v878 = 0u;
      v746 = MEMORY[0x1E69E9C10];
      v747 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v906[0]) = 136315906;
      *(v906 + 4) = "operator[]";
      WORD6(v906[0]) = 1024;
      if (v747)
      {
        v748 = 3;
      }

      else
      {
        v748 = 2;
      }

      *(v906 + 14) = 621;
      WORD1(v906[1]) = 2048;
      *(&v906[1] + 4) = v2;
      WORD6(v906[1]) = 2048;
      *(&v906[1] + 14) = v11;
      _os_log_send_and_compose_impl(v748, v905, v878, 80, &dword_1E1C61000, v746, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v906, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1593:
      *v908 = 0;
      memset(v902, 0, sizeof(v902));
      memset(v901, 0, sizeof(v901));
      v749 = MEMORY[0x1E69E9C10];
      v750 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v906[0]) = 136315906;
      *(v906 + 4) = "operator[]";
      WORD6(v906[0]) = 1024;
      if (v750)
      {
        v751 = 3;
      }

      else
      {
        v751 = 2;
      }

      *(v906 + 14) = 789;
      WORD1(v906[1]) = 2048;
      *(&v906[1] + 4) = v18;
      WORD6(v906[1]) = 2048;
      *(&v906[1] + 14) = v11;
      _os_log_send_and_compose_impl(v751, v908, v901, 80, &dword_1E1C61000, v749, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v906, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
      goto LABEL_1597;
    }

LABEL_1246:
    v542 = v13;
    *&v906[0] = v876;
    *(&v906[0] + 1) = v799;
    *v908 = v857;
    *&v908[8] = v799;
    re::triangulatePolygon(v906, v908, v902);
    v543 = v840;
LABEL_1252:
    if (!*&v901[2])
    {
      goto LABEL_1637;
    }

    **(&v901[2] + 1) = v543;
    if (!*&v902[1])
    {
LABEL_1641:
      v877 = 0;
      v907 = 0u;
      memset(v906, 0, sizeof(v906));
      v785 = MEMORY[0x1E69E9C10];
      v786 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v908 = 136315906;
      *&v908[4] = "operator[]";
      *&v908[12] = 1024;
      if (v786)
      {
        v787 = 3;
      }

      else
      {
        v787 = 2;
      }

      *&v908[14] = 789;
      *&v908[18] = 2048;
      *&v908[20] = 0;
      *&v908[28] = 2048;
      *&v908[30] = 0;
      _os_log_send_and_compose_impl(v787, &v877, v906, 80, &dword_1E1C61000, v785, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v908, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1645:
      v877 = 0;
      v907 = 0u;
      memset(v906, 0, sizeof(v906));
      v788 = MEMORY[0x1E69E9C10];
      v789 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v908 = 136315906;
      *&v908[4] = "operator[]";
      *&v908[12] = 1024;
      if (v789)
      {
        v790 = 3;
      }

      else
      {
        v790 = 2;
      }

      *&v908[14] = 789;
      *&v908[18] = 2048;
      *&v908[20] = 1;
      *&v908[28] = 2048;
      *&v908[30] = 1;
      _os_log_send_and_compose_impl(v790, &v877, v906, 80, &dword_1E1C61000, v788, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v908, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1649:
      v877 = 0;
      v907 = 0u;
      memset(v906, 0, sizeof(v906));
      v791 = MEMORY[0x1E69E9C10];
      v792 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v908 = 136315906;
      *&v908[4] = "operator[]";
      *&v908[12] = 1024;
      if (v792)
      {
        v793 = 3;
      }

      else
      {
        v793 = 2;
      }

      *&v908[14] = 789;
      *&v908[18] = 2048;
      *&v908[20] = 2;
      *&v908[28] = 2048;
      *&v908[30] = 2;
      _os_log_send_and_compose_impl(v793, &v877, v906, 80, &dword_1E1C61000, v791, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v908, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
    }

    v11 = v818;
    if (*&v902[1] == 1)
    {
      goto LABEL_1645;
    }

    v25 = v842;
    if (*&v902[1] <= 2uLL)
    {
      goto LABEL_1649;
    }

    v13 = v542;
    re::GeomMeshBuilder::setFaceVertices(v878, v543, *(v24 + v23 * (*v903 + v832)), *(v24 + v23 * (v903[1] + v832)), *(v24 + v23 * (v903[2] + v832)));
    if (v815 < 2)
    {
      goto LABEL_1265;
    }

    v18 = 5;
    v25 = 1;
    do
    {
      v11 = *&v901[2];
      if (*&v901[2] <= v25)
      {
        goto LABEL_1485;
      }

      v547 = v796 + v25 - 1;
      *(*(&v901[2] + 1) + 4 * v25) = v547;
      v11 = v547;
      v13 = *&v905[1];
      if (*&v905[1] <= v547)
      {
LABEL_1489:
        v877 = 0;
        v907 = 0u;
        memset(v906, 0, sizeof(v906));
        v671 = MEMORY[0x1E69E9C10];
        v672 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v908 = 136315906;
        *&v908[4] = "operator[]";
        *&v908[12] = 1024;
        if (v672)
        {
          v673 = 3;
        }

        else
        {
          v673 = 2;
        }

        *&v908[14] = 789;
        *&v908[18] = 2048;
        *&v908[20] = v11;
        *&v908[28] = 2048;
        *&v908[30] = v13;
        _os_log_send_and_compose_impl(v673, &v877, v906, 80, &dword_1E1C61000, v671, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v908, 38, v794, v795);
        _os_crash_msg();
        __break(1u);
LABEL_1493:
        v877 = 0;
        v907 = 0u;
        memset(v906, 0, sizeof(v906));
        v674 = MEMORY[0x1E69E9C10];
        v675 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v908 = 136315906;
        *&v908[4] = "operator[]";
        *&v908[12] = 1024;
        if (v675)
        {
          v676 = 3;
        }

        else
        {
          v676 = 2;
        }

        *&v908[14] = 789;
        *&v908[18] = 2048;
        *&v908[20] = v13;
        *&v908[28] = 2048;
        *&v908[30] = v11;
        _os_log_send_and_compose_impl(v676, &v877, v906, 80, &dword_1E1C61000, v674, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v908, 38, v794, v795);
        _os_crash_msg();
        __break(1u);
LABEL_1497:
        v877 = 0;
        v907 = 0u;
        memset(v906, 0, sizeof(v906));
        v677 = MEMORY[0x1E69E9C10];
        v678 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v908 = 136315906;
        *&v908[4] = "operator[]";
        *&v908[12] = 1024;
        if (v678)
        {
          v679 = 3;
        }

        else
        {
          v679 = 2;
        }

        *&v908[14] = 789;
        *&v908[18] = 2048;
        *&v908[20] = v9;
        *&v908[28] = 2048;
        *&v908[30] = v11;
        _os_log_send_and_compose_impl(v679, &v877, v906, 80, &dword_1E1C61000, v677, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v908, 38, v794, v795);
        _os_crash_msg();
        __break(1u);
LABEL_1501:
        v877 = 0;
        v907 = 0u;
        memset(v906, 0, sizeof(v906));
        v680 = MEMORY[0x1E69E9C10];
        v681 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v908 = 136315906;
        *&v908[4] = "operator[]";
        *&v908[12] = 1024;
        if (v681)
        {
          v682 = 3;
        }

        else
        {
          v682 = 2;
        }

        *&v908[14] = 789;
        *&v908[18] = 2048;
        *&v908[20] = v14;
        *&v908[28] = 2048;
        *&v908[30] = v11;
        _os_log_send_and_compose_impl(v682, &v877, v906, 80, &dword_1E1C61000, v680, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v908, 38, v794, v795);
        _os_crash_msg();
        __break(1u);
        goto LABEL_1505;
      }

      v13 = (v18 - 2);
      *(*&v905[2] + 4 * v547) = v840;
      v11 = *&v902[1];
      if (*&v902[1] <= v13)
      {
        goto LABEL_1493;
      }

      v9 = (v18 - 1);
      if (*&v902[1] <= v9)
      {
        goto LABEL_1497;
      }

      v14 = v18;
      if (*&v902[1] <= v18)
      {
        goto LABEL_1501;
      }

      re::GeomMeshBuilder::setFaceVertices(v878, v547, *(v24 + v23 * (v903[v13] + v832)), *(v24 + v23 * (v903[v9] + v832)), *(v24 + v23 * (v903[v18] + v832)));
      ++v25;
      v18 = (v18 + 3);
      v14 = v833;
      v9 = v844;
    }

    while (v815 != v25);
    v796 = v796 + v25 - 1;
    v11 = v818;
    v13 = v542;
    v25 = v842;
LABEL_1265:
    v8 = v853;
    re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::addNew(&v871, &v873, v901);
    v525 = v843;
    if (*&v902[0])
    {
      if (v903)
      {
        (*(**&v902[0] + 40))();
        v525 = v843;
      }

      v903 = 0;
      memset(v902, 0, 24);
      ++DWORD2(v902[1]);
    }

    v532 = v840;
    if (*(&v901[1] + 1))
    {
      if (*&v901[2])
      {
        (*(**(&v901[1] + 1) + 40))();
        v532 = v840;
        v525 = v843;
        v901[2] = 0uLL;
      }

      *(&v901[1] + 1) = 0;
    }

    v522 = *&v901[0];
    if (*&v901[0] && *(&v901[0] + 1))
    {
      v522 = (*(**&v901[0] + 40))();
      v532 = v840;
      v525 = v843;
    }

    v18 = v832;
LABEL_1277:
    v527 = (v799 + v18);
    v526 = v532 + 1;
    v873 = v526;
  }

  while (v526 < v841);
LABEL_1278:
  re::GeomIndexMap::GeomIndexMap(v901, v905);
  re::GeomIndexMap::operator=(&v863 + 8, v901);
  if (BYTE12(v901[0]))
  {
    if (BYTE12(v901[0]) == 2)
    {
      goto LABEL_1335;
    }

    if (BYTE12(v901[0]) != 1)
    {
      goto LABEL_1682;
    }

    if (*&v901[1] && *&v902[0])
    {
      (*(**&v901[1] + 40))();
    }
  }

LABEL_1336:
  if (*&v905[0] && *&v905[2])
  {
    (*(**&v905[0] + 40))(v549);
  }

  if (v874 && v875)
  {
    (*(*v874 + 40))(v549);
  }

  if (v855 && v856)
  {
    (*(*v855 + 40))(v549);
  }

LABEL_1345:
  re::GeomMesh::operator=(&v858, &v878[1]);
  re::GeomMesh::setName(&v858, v878[0]);
  re::GeomMesh::freeName(v878);
  v569 = re::GeomMesh::modifyVertexPositions(&v858);
  if (v843)
  {
    v572 = v843;
    v18 = v570;
    v573 = (v797 + 8);
    v574 = v570;
    while (v574)
    {
      *&v571 = *(v573 - 1);
      DWORD2(v571) = *v573;
      v573 = (v573 + v800);
      *v569++ = v571;
      --v574;
      if (!--v572)
      {
        goto LABEL_1349;
      }
    }

    goto LABEL_1417;
  }

LABEL_1349:
  *&v863 = __PAIR64__(v2, v841);
  v575 = *(v25 + 192);
  v576 = v575 >> 1;
  if ((v575 & 1) == 0)
  {
    v576 = v575 >> 1;
  }

  if (v576)
  {
    if (v575)
    {
      v577 = *(v25 + 200);
    }

    else
    {
      v577 = (v25 + 193);
    }

    re::GeomMesh::setName(&v858, v577);
  }

  v42 = 1;
LABEL_1357:
  re::GeomMesh::freeName(v878);
  re::internal::GeomAttributeManager::~GeomAttributeManager((&v881 + 8));
  if (v879 && v881)
  {
    (*(*v879 + 40))();
  }

  if (!((v807 == 0) | v813 & 1))
  {
    (*(*v807 + 40))();
  }

  if (v801)
  {
  }

LABEL_65:
  v46 = v847;
  if (!((v847 == 0) | v852 & 1))
  {
    v46 = (*(*v847 + 40))();
  }

  if (v854)
  {
  }

  v843 = &v866;
  if ((v42 & 1) == 0)
  {
    *a1 = 0;
    a1[1] = 100;
    a1[2] = re::AssetErrorCategory(void)::instance;
    a1[5] = v18;
    a1[6] = v2;
    a1[3] = v23;
    a1[4] = v24;
    v12 = v838;
LABEL_1153:
    v491 = re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::deinit(&v871);
    if (v865 == 2)
    {
      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v866);
    }

    else if (v865 == 1)
    {
      if (v866)
      {
        if (v870)
        {
          (*(*v866 + 40))(v491);
        }

        v870 = 0;
        v867 = 0;
        v868 = 0;
        v866 = 0;
        ++v869;
      }
    }

    else
    {
      if (v865)
      {
        goto LABEL_1657;
      }

      LODWORD(v866) = 0;
    }

    re::GeomMesh::~GeomMesh(&v858);
LABEL_1163:
    if (!((v11 == 0) | v13 & 1))
    {
      (*(*v11 + 40))(v11, v12);
    }

    if (v14)
    {
    }

    return;
  }

  v24 = v842;
  v48 = v842[5];
  v816 = v13;
  if (v48)
  {
    v813 = *(v48 + 40);
  }

  else
  {
    v813 = 0;
  }

  v25 = v842[14];
  v817 = v11;
  if (!v25)
  {
    goto LABEL_1075;
  }

  v49 = 0;
  v798 = v9;
  if (v9 <= 1)
  {
    v50 = 1;
  }

  else
  {
    v50 = v9;
  }

  v841 = v50;
  v23 = 56;
  v814 = v842[14];
  while (2)
  {
    v18 = *(v24 + 112);
    if (v18 <= v49)
    {
      goto LABEL_1380;
    }

    v13 = v47;
    v854 = v49;
    v18 = *(v24 + 128) + 56 * v49;
    v51 = re::DynamicString::operator!=(v18, &v855);
    if (!v51)
    {
      v47 = v13;
      goto LABEL_90;
    }

    v52 = *(v18 + 40);
    if (!v52)
    {
      v57 = "Null attribute.";
LABEL_142:
      v852 = v879;
      v47 = v878[0];
      v89 = v878[1];
      v56 = v854;
LABEL_143:
      if (v47)
      {
        if (v89)
        {
          (*(*v47 + 40))(v47, v852);
          v56 = v854;
        }

        v47 = 0;
        v845 = 0;
        v852 = 0;
      }

      else
      {
        v845 = v89;
      }

      LODWORD(v847) = 0;
      goto LABEL_149;
    }

    v53 = 0;
    v54 = *(v18 + 32);
    if (v54 > 1)
    {
      if (v54 != 2)
      {
        if (v54 == 3)
        {
          v58 = *(v18 + 48);
          if (!v58)
          {
            v58 = *(v18 + 40);
          }

          if (*(v58 + 40) != v813)
          {
            goto LABEL_101;
          }

          v53 = 1;
        }

        goto LABEL_106;
      }

      v60 = *(v18 + 48);
      if (!v60)
      {
        v60 = *(v18 + 40);
      }

      if (*(v60 + 40) == v9)
      {
        goto LABEL_105;
      }

LABEL_101:
      v57 = "Incorrect number of attribute values specified.";
      goto LABEL_142;
    }

    if (*(v18 + 32))
    {
      if (v54 == 1)
      {
        v55 = *(v18 + 48);
        if (!v55)
        {
          v55 = *(v18 + 40);
        }

        if (*(v55 + 40) != v859)
        {
          goto LABEL_101;
        }

        goto LABEL_105;
      }
    }

    else
    {
      v59 = *(v18 + 48);
      if (!v59)
      {
        v59 = *(v18 + 40);
      }

      if (*(v59 + 40) != 1)
      {
        goto LABEL_101;
      }

LABEL_105:
      v53 = 0;
    }

LABEL_106:
    v61 = *(v52 + 33);
    if (v61 >= 0xC)
    {
      v57 = "Unexpected attribute type.";
      goto LABEL_142;
    }

    v839 = v18;
    v819 = byte_1E30FFBDC[v61];
    if (!v53)
    {
      if (*(v18 + 8))
      {
        v90 = *(v18 + 16);
      }

      else
      {
        v90 = (v18 + 9);
      }

      v91 = re::GeomMesh::addAttribute(&v858, v90, v54, byte_1E30FFBDC[v61]);
      v92 = v91;
      v47 = v13;
      if (v91)
      {
        goto LABEL_155;
      }

LABEL_278:
      v56 = v854;
      v852 = v879;
      v47 = v878[0];
      v89 = v878[1];
      v24 = v842;
      v25 = v814;
      goto LABEL_143;
    }

    v9 = *(v52 + 40);
    *&v905[2] = 0;
    memset(v905, 0, 28);
    v62 = re::DynamicArray<re::GeomCell4>::resize(v905, v862);
    v63 = v18;
    v64 = *(v18 + 48);
    if (!*(&v872[0] + 1))
    {
      v24 = v798;
      if (!v64)
      {
        if (v844)
        {
          v23 = 0;
          v160 = 0;
          v18 = *&v905[1];
          v161 = *&v905[2];
          v162 = v851;
          do
          {
            v163 = *v162;
            if (*v162 == 3)
            {
              if (v18 <= v23)
              {
                goto LABEL_1433;
              }

              v164 = -1;
            }

            else
            {
              if (v18 <= v23)
              {
                goto LABEL_1429;
              }

              v164 = v160 + 3;
            }

            v162 = (v162 + v8);
            *v161 = v160;
            *(v161 + 4) = vadd_s32(vdup_n_s32(v160), 0x200000001);
            *(v161 + 12) = v164;
            v160 += v163;
            ++v23;
            v161 += 16;
          }

          while (v798 != v23);
          v23 = 56;
          if (v9 < v160)
          {
            goto LABEL_291;
          }
        }

LABEL_139:
        v87 = *&v905[2];
        *&v905[2] = 0;
        ++DWORD2(v905[1]);
        LOBYTE(v906[0]) = 1;
        *(&v906[0] + 1) = *&v905[0];
        v88 = *(v905 + 8);
        memset(v905, 0, 24);
        v906[1] = v88;
        *(&v906[2] + 1) = v87;
        LODWORD(v906[2]) = 1;
        goto LABEL_140;
      }

      re::GeomModelDescriptor::AttributeData::makeConvertedIndices<unsigned int>(v18, v901);
      v115 = *&v901[1];
      if (*&v901[1])
      {
        v116 = *&v901[0];
        while (v9 > *v116)
        {
          v116 = (v116 + *(&v901[0] + 1));
          if (!--v115)
          {
            goto LABEL_188;
          }
        }

LABEL_236:
        LOBYTE(v906[0]) = 0;
        *(&v906[0] + 1) = 100;
        *&v906[1] = re::AssetErrorCategory(void)::instance;
        *(&v906[1] + 8) = *v878;
        *(&v906[2] + 8) = v879;
        v9 = v844;
        if (*&v901[2])
        {
          if (*(&v901[2] + 1))
          {
            (*(**&v901[2] + 40))();
            *(&v901[2] + 1) = 0;
            *&v902[0] = 0;
          }

          *&v901[2] = 0;
        }

        if (*(&v901[1] + 1))
        {
        }

        v63 = v18;
        goto LABEL_243;
      }

LABEL_188:
      if (v844)
      {
        v2 = 0;
        v117 = 0;
        v18 = *&v905[1];
        v118 = *&v905[2];
        v119 = v851;
        v120 = v901[0];
        do
        {
          v121 = *v119;
          if (*v119 == 3)
          {
            if (v18 <= v2)
            {
              goto LABEL_1425;
            }

            v122 = *(v120 + *(&v120 + 1) * (v117 + 1));
            v123 = *(v120 + *(&v120 + 1) * (v117 + 2));
            *v118 = *(v120 + *(&v120 + 1) * v117);
            v124 = -1;
          }

          else
          {
            if (v18 <= v2)
            {
              goto LABEL_1421;
            }

            v122 = *(v120 + *(&v120 + 1) * (v117 + 1));
            v123 = *(v120 + *(&v120 + 1) * (v117 + 2));
            v124 = *(v120 + *(&v120 + 1) * (v117 + 3));
            *v118 = *(v120 + *(&v120 + 1) * v117);
          }

          v119 = (v119 + v8);
          v118[1] = v122;
          v118[2] = v123;
          v118[3] = v124;
          v117 += v121;
          ++v2;
          v118 += 4;
        }

        while (v798 != v2);
      }

      if (*&v901[2])
      {
        if (*(&v901[2] + 1))
        {
          (*(**&v901[2] + 40))();
          *(&v901[2] + 1) = 0;
          *&v902[0] = 0;
        }

        *&v901[2] = 0;
      }

      v86 = *(&v901[1] + 1);
      if (!*(&v901[1] + 1))
      {
LABEL_138:
        v63 = v839;
        goto LABEL_139;
      }

LABEL_137:

      goto LABEL_138;
    }

    if (v64)
    {
      re::GeomModelDescriptor::AttributeData::makeConvertedIndices<unsigned int>(v18, v901);
      v66 = *&v901[1];
      if (*&v901[1])
      {
        v67 = *&v901[0];
        while (v9 > *v67)
        {
          v67 = (v67 + *(&v901[0] + 1));
          if (!--v66)
          {
            goto LABEL_114;
          }
        }

        goto LABEL_236;
      }

LABEL_114:
      v834 = v14;
      if (v844)
      {
        v25 = 0;
        v14 = 0;
        v9 = *&v905[1];
        v801 = *&v905[2];
        v807 = *(&v871 + 1);
        v11 = *(&v901[0] + 1);
        v800 = *&v901[0];
        do
        {
          v23 = *(v851 + v8 * v25);
          v68 = re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v871, v25);
          if (v68 == -1)
          {
            if (v23 == 3)
            {
              if (v9 <= v25)
              {
                goto LABEL_1509;
              }

              v81 = *(v800 + v11 * (v14 + 1));
              v82 = *(v800 + v11 * (v14 + 2));
              *(v801 + 16 * v25) = *(v800 + v11 * v14);
              v83 = v801;
              v84 = -1;
            }

            else
            {
              if (v9 <= v25)
              {
                goto LABEL_1513;
              }

              v81 = *(v800 + v11 * (v14 + 1));
              v82 = *(v800 + v11 * (v14 + 2));
              v84 = *(v800 + v11 * (v14 + 3));
              *(v801 + 16 * v25) = *(v800 + v11 * v14);
              v83 = v801;
            }

            v85 = (v83 + 16 * v25);
            v85[1] = v81;
            v85[2] = v82;
            v85[3] = v84;
          }

          else
          {
            v69 = &v807[96 * v68];
            v70 = *(v69 + 5);
            if (v70)
            {
              v71 = 0;
              v72 = *(v69 + 6);
              v73 = *&v905[2];
              v74 = v901[0];
              while (1)
              {
                v75 = *v72++;
                v24 = v75;
                if (v9 <= v75)
                {
                  break;
                }

                v2 = *(v69 + 9);
                if (v2 <= v71)
                {
                  goto LABEL_1323;
                }

                v18 = v71 + 1;
                if (v2 <= v71 + 1)
                {
                  goto LABEL_1327;
                }

                v18 = v71 + 2;
                if (v2 <= v71 + 2)
                {
                  goto LABEL_1331;
                }

                v76 = *(v69 + 11);
                v77 = *(v74 + *(&v74 + 1) * (*(v76 + 4 * v71) + v14));
                v78 = v76 + 4 * v71;
                v79 = *(v74 + *(&v74 + 1) * (*(v78 + 4) + v14));
                LODWORD(v78) = *(v74 + *(&v74 + 1) * (*(v78 + 8) + v14));
                v80 = (v73 + 16 * v24);
                *v80 = v77;
                v80[1] = v79;
                v80[2] = v78;
                v80[3] = -1;
                v71 += 3;
                if (!--v70)
                {
                  goto LABEL_131;
                }
              }

              v874 = 0;
              v882 = 0u;
              v881 = 0u;
              v880 = 0u;
              v879 = 0u;
              *v878 = 0u;
              v71 = MEMORY[0x1E69E9C10];
              v560 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v908 = 136315906;
              *&v908[4] = "operator[]";
              *&v908[12] = 1024;
              if (v560)
              {
                v561 = 3;
              }

              else
              {
                v561 = 2;
              }

              *&v908[14] = 789;
              *&v908[18] = 2048;
              *&v908[20] = v24;
              *&v908[28] = 2048;
              *&v908[30] = v9;
              _os_log_send_and_compose_impl(v561, &v874, v878, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v908, 38, v794, v795);
              _os_crash_msg();
              __break(1u);
LABEL_1323:
              v874 = 0;
              v882 = 0u;
              v881 = 0u;
              v880 = 0u;
              v879 = 0u;
              *v878 = 0u;
              v18 = MEMORY[0x1E69E9C10];
              v562 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v908 = 136315906;
              *&v908[4] = "operator[]";
              *&v908[12] = 1024;
              if (v562)
              {
                v563 = 3;
              }

              else
              {
                v563 = 2;
              }

              *&v908[14] = 797;
              *&v908[18] = 2048;
              *&v908[20] = v71;
              *&v908[28] = 2048;
              *&v908[30] = v2;
              _os_log_send_and_compose_impl(v563, &v874, v878, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v908, 38, v794, v795);
              _os_crash_msg();
              __break(1u);
LABEL_1327:
              v874 = 0;
              v882 = 0u;
              v881 = 0u;
              v880 = 0u;
              v879 = 0u;
              *v878 = 0u;
              v564 = MEMORY[0x1E69E9C10];
              v565 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v908 = 136315906;
              *&v908[4] = "operator[]";
              *&v908[12] = 1024;
              if (v565)
              {
                v566 = 3;
              }

              else
              {
                v566 = 2;
              }

              *&v908[14] = 797;
              *&v908[18] = 2048;
              *&v908[20] = v18;
              *&v908[28] = 2048;
              *&v908[30] = v2;
              _os_log_send_and_compose_impl(v566, &v874, v878, 80, &dword_1E1C61000, v564, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v908, 38, v794, v795);
              _os_crash_msg();
              __break(1u);
LABEL_1331:
              v874 = 0;
              v882 = 0u;
              v881 = 0u;
              v880 = 0u;
              v879 = 0u;
              *v878 = 0u;
              v8 = MEMORY[0x1E69E9C10];
              v567 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v908 = 136315906;
              *&v908[4] = "operator[]";
              *&v908[12] = 1024;
              if (v567)
              {
                v568 = 3;
              }

              else
              {
                v568 = 2;
              }

              *&v908[14] = 797;
              *&v908[18] = 2048;
              *&v908[20] = v18;
              *&v908[28] = 2048;
              *&v908[30] = v2;
              _os_log_send_and_compose_impl(v568, &v874, v878, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v908, 38, v794, v795);
              _os_crash_msg();
              __break(1u);
LABEL_1335:
              v549.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v901[1]);
              goto LABEL_1336;
            }
          }

LABEL_131:
          v14 = (v23 + v14);
          ++v25;
          v8 = v853;
        }

        while (v25 != v841);
      }

      if (*&v901[2])
      {
        if (*(&v901[2] + 1))
        {
          (*(**&v901[2] + 40))();
          *(&v901[2] + 1) = 0;
          *&v902[0] = 0;
        }

        *&v901[2] = 0;
      }

      v86 = *(&v901[1] + 1);
      v11 = v817;
      v14 = v834;
      v23 = 56;
      if (!*(&v901[1] + 1))
      {
        goto LABEL_138;
      }

      goto LABEL_137;
    }

    if (!v844)
    {
      goto LABEL_139;
    }

    v836 = v14;
    v25 = 0;
    v131 = 0;
    v14 = *&v905[1];
    v802 = *&v905[2];
    v810 = *(&v871 + 1);
    do
    {
      v11 = *(v851 + v853 * v25);
      v62 = re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v871, v25);
      if (v62 == -1)
      {
        if (v11 == 3)
        {
          if (v14 <= v25)
          {
            goto LABEL_1521;
          }

          v143 = -1;
        }

        else
        {
          if (v14 <= v25)
          {
            goto LABEL_1517;
          }

          v143 = v131 + 3;
        }

        v144 = v802 + 16 * v25;
        *v144 = v131;
        *(v144 + 4) = vadd_s32(vdup_n_s32(v131), 0x200000001);
        *(v144 + 12) = v143;
      }

      else
      {
        v132 = (v810 + 96 * v62);
        v133 = v132[5];
        if (v133)
        {
          v134 = 0;
          v135 = v132[6];
          v136 = *&v905[2];
          v137 = 4;
          v138 = vdup_n_s32(v131);
          while (1)
          {
            v139 = *v135++;
            v24 = v139;
            if (v14 <= v139)
            {
              break;
            }

            v2 = v132[9];
            if (v2 <= v134)
            {
              goto LABEL_1368;
            }

            v18 = v134 + 1;
            if (v2 <= v134 + 1)
            {
              goto LABEL_1372;
            }

            v18 = v134 + 2;
            if (v2 <= v134 + 2)
            {
              goto LABEL_1376;
            }

            v140 = v136 + 16 * v24;
            v141 = v132[11];
            v142 = *(v141 + v137);
            *v140 = *(v141 + 4 * v134) + v131;
            *(v140 + 4) = vadd_s32(v142, v138);
            *(v140 + 12) = -1;
            v134 += 3;
            v137 += 12;
            if (!--v133)
            {
              goto LABEL_233;
            }
          }

          *v908 = 0;
          v882 = 0u;
          v881 = 0u;
          v880 = 0u;
          v879 = 0u;
          *v878 = 0u;
          v578 = MEMORY[0x1E69E9C10];
          v579 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v901[0]) = 136315906;
          *(v901 + 4) = "operator[]";
          WORD6(v901[0]) = 1024;
          if (v579)
          {
            v580 = 3;
          }

          else
          {
            v580 = 2;
          }

          *(v901 + 14) = 789;
          WORD1(v901[1]) = 2048;
          *(&v901[1] + 4) = v24;
          WORD6(v901[1]) = 2048;
          *(&v901[1] + 14) = v14;
          _os_log_send_and_compose_impl(v580, v908, v878, 80, &dword_1E1C61000, v578, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v901, 38, v794, v795);
          _os_crash_msg();
          __break(1u);
LABEL_1368:
          *v908 = 0;
          v882 = 0u;
          v881 = 0u;
          v880 = 0u;
          v879 = 0u;
          *v878 = 0u;
          v581 = MEMORY[0x1E69E9C10];
          v582 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v901[0]) = 136315906;
          *(v901 + 4) = "operator[]";
          WORD6(v901[0]) = 1024;
          if (v582)
          {
            v583 = 3;
          }

          else
          {
            v583 = 2;
          }

          *(v901 + 14) = 797;
          WORD1(v901[1]) = 2048;
          *(&v901[1] + 4) = v134;
          WORD6(v901[1]) = 2048;
          *(&v901[1] + 14) = v2;
          _os_log_send_and_compose_impl(v583, v908, v878, 80, &dword_1E1C61000, v581, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v901, 38, v794, v795);
          _os_crash_msg();
          __break(1u);
LABEL_1372:
          *v908 = 0;
          v882 = 0u;
          v881 = 0u;
          v880 = 0u;
          v879 = 0u;
          *v878 = 0u;
          v584 = MEMORY[0x1E69E9C10];
          v585 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v901[0]) = 136315906;
          *(v901 + 4) = "operator[]";
          WORD6(v901[0]) = 1024;
          if (v585)
          {
            v586 = 3;
          }

          else
          {
            v586 = 2;
          }

          *(v901 + 14) = 797;
          WORD1(v901[1]) = 2048;
          *(&v901[1] + 4) = v18;
          WORD6(v901[1]) = 2048;
          *(&v901[1] + 14) = v2;
          _os_log_send_and_compose_impl(v586, v908, v878, 80, &dword_1E1C61000, v584, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v901, 38, v794, v795);
          _os_crash_msg();
          __break(1u);
LABEL_1376:
          *v908 = 0;
          v882 = 0u;
          v881 = 0u;
          v880 = 0u;
          v879 = 0u;
          *v878 = 0u;
          v587 = MEMORY[0x1E69E9C10];
          v588 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v901[0]) = 136315906;
          *(v901 + 4) = "operator[]";
          WORD6(v901[0]) = 1024;
          if (v588)
          {
            v589 = 3;
          }

          else
          {
            v589 = 2;
          }

          *(v901 + 14) = 797;
          WORD1(v901[1]) = 2048;
          *(&v901[1] + 4) = v18;
          WORD6(v901[1]) = 2048;
          *(&v901[1] + 14) = v2;
          _os_log_send_and_compose_impl(v589, v908, v878, 80, &dword_1E1C61000, v587, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v901, 38, v794, v795);
          _os_crash_msg();
          __break(1u);
LABEL_1380:
          *&v906[0] = 0;
          v882 = 0u;
          v881 = 0u;
          v880 = 0u;
          v879 = 0u;
          *v878 = 0u;
          v590 = MEMORY[0x1E69E9C10];
          v23 = v49;
          v591 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v901[0]) = 136315906;
          *(v901 + 4) = "operator[]";
          WORD6(v901[0]) = 1024;
          if (v591)
          {
            v592 = 3;
          }

          else
          {
            v592 = 2;
          }

          *(v901 + 14) = 797;
          WORD1(v901[1]) = 2048;
          *(&v901[1] + 4) = v23;
          WORD6(v901[1]) = 2048;
          *(&v901[1] + 14) = v18;
          _os_log_send_and_compose_impl(v592, v906, v878, 80, &dword_1E1C61000, v590, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v901, 38, v794, v795);
          _os_crash_msg();
          __break(1u);
          goto LABEL_1384;
        }
      }

LABEL_233:
      v131 += v11;
      ++v25;
      v23 = 56;
    }

    while (v25 != v841);
    v11 = v817;
    v14 = v836;
    v63 = v839;
    if (v9 >= v131)
    {
      goto LABEL_139;
    }

LABEL_291:
    v63 = v839;
    LOBYTE(v906[0]) = 0;
    *(&v906[0] + 1) = 100;
    *&v906[1] = re::AssetErrorCategory(void)::instance;
    *(&v906[1] + 8) = *v878;
    *(&v906[2] + 8) = v879;
LABEL_140:
    v9 = v844;
LABEL_243:
    if (*&v905[0] && *&v905[2])
    {
      (*(**&v905[0] + 40))();
      v63 = v839;
    }

    v145 = v906[0];
    if (LOBYTE(v906[0]) == 1)
    {
      if (*(v63 + 8))
      {
        v146 = *(v63 + 16);
      }

      else
      {
        v146 = (v63 + 9);
      }

      v147 = *(v63 + 40);
      if (v147)
      {
        v148 = *(v147 + 40);
      }

      else
      {
        v148 = 0;
      }

      v92 = re::GeomMesh::addFaceVaryingAttribute(&v858, v146, v819, v148, v906 + 1);
      if (v906[0])
      {
        v91 = *(&v906[0] + 1);
        if (*(&v906[0] + 1) && *(&v906[2] + 1))
        {
          v91 = (*(**(&v906[0] + 1) + 40))();
        }

        v47 = v13;
        goto LABEL_276;
      }

      v47 = v13;
    }

    else
    {
      v92 = 0;
      LOBYTE(v847) = 0;
      v47 = *(&v906[1] + 1);
      v845 = *&v906[2];
      memset(&v906[1] + 8, 0, 32);
      v852 = *(&v906[2] + 1);
    }

    v91 = *(&v906[1] + 1);
    if (*(&v906[1] + 1) && (v906[2] & 1) != 0)
    {
      v18 = v47;
      v91 = (*(**(&v906[1] + 1) + 40))();
      v47 = v18;
    }

LABEL_276:
    v56 = v854;
    if ((v145 & 1) == 0)
    {
      if (v847)
      {
        LODWORD(v847) = 1;
        v24 = v842;
        v8 = v853;
        v25 = v814;
        goto LABEL_149;
      }

      v24 = v842;
      v8 = v853;
      v25 = v814;
      v89 = v845;
      goto LABEL_143;
    }

    v8 = v853;
    if (!v92)
    {
      goto LABEL_278;
    }

LABEL_155:
    v13 = *(v92 + 16);
    v835 = v47;
    if (v819 <= 4)
    {
      v103 = v839;
      if (v819 > 1)
      {
        v848 = *(v92 + 16);
        if (v819 != 2)
        {
          if (v819 == 3)
          {
            if (v13 == 4)
            {
              v104 = *(v839 + 48);
              if (v104 || (v104 = *(v839 + 40)) != 0)
              {
                v105 = *(v104 + 40);
              }

              else
              {
                v105 = 0;
              }

              (*(*v92 + 24))(v92, v105);
              v103 = v839;
            }

            v106 = *(v103 + 40);
            if (v106)
            {
              v107 = (v106 + 8);
              v108 = *(v106 + 33);
              if (v108 >= 6)
              {
                v109 = v108 == 5;
              }

              else
              {
                v109 = 0x30u >> v108;
              }

              if (v109 & 1) != 0 && (*(v106 + 32))
              {
                v110 = (v106 + 8);
                v111 = *(v106 + 48);
                v13 = *(v106 + 24) + *(v106 + 56);
                v18 = *(v106 + 40);
                v112 = (v106 + 8);

                v809 = 0;
                v113 = 1;
                v114 = v106;
              }

              else
              {
                v265 = re::internal::DataPayload::computePoDConversionHelper<unsigned int>(v106, v878);
                if (LOBYTE(v878[0]) == 1)
                {
                  v809 = v878[1];
                  v18 = v879;
                  v111 = 4;
                  v266 = *(&v879 + 1);
                }

                else
                {
                  if (*(&v879 + 1) && (v880 & 1) != 0)
                  {
                    (*(**(&v879 + 1) + 40))(v265);
                  }

                  v809 = 0;
                  v18 = 0;
                  v266 = 0;
                  v111 = 0;
                }

                v114 = 0;
                v113 = v18 == 0;
                v13 = v266;
              }
            }

            else
            {
              v13 = 0;
              v111 = 0;
              v18 = 0;
              v809 = 0;
              v114 = 0;
              v113 = 1;
            }

            v828 = v113;
            if ((*(*v92 + 16))(v92))
            {
              if (*(v92 + 5))
              {
                v9 = *(v92 + 7);
                v25 = (*(*v92 + 16))(v92);
                goto LABEL_744;
              }

LABEL_1597:
              *&v906[0] = 0;
              v882 = 0u;
              v881 = 0u;
              v880 = 0u;
              v879 = 0u;
              *v878 = 0u;
              v752 = MEMORY[0x1E69E9C10];
              v753 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v901[0]) = 136315906;
              *(v901 + 4) = "operator[]";
              WORD6(v901[0]) = 1024;
              if (v753)
              {
                v754 = 3;
              }

              else
              {
                v754 = 2;
              }

              *(v901 + 14) = 789;
              WORD1(v901[1]) = 2048;
              *(&v901[1] + 4) = 0;
              WORD6(v901[1]) = 2048;
              *(&v901[1] + 14) = 0;
              _os_log_send_and_compose_impl(v754, v906, v878, 80, &dword_1E1C61000, v752, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v901, 38, v794, v795);
              _os_crash_msg();
              __break(1u);
              goto LABEL_1601;
            }

            v25 = 0;
            v9 = 0;
LABEL_744:
            v24 = v114;
            if (v848 != 3 && *(v839 + 48) != 0)
            {
              re::GeomModelDescriptor::AttributeData::makeConvertedIndices<unsigned int>(v839, v901);
              v356 = v901[1];
              v357 = LODWORD(v901[1]);
              if (LODWORD(v901[1]))
              {
                v2 = 0;
                v359 = *(&v901[0] + 1);
                v358 = *&v901[0];
                v11 = v25;
                do
                {
                  v360 = *v358;
                  if (v360 < v18)
                  {
                    if (v2 >= v25)
                    {
                      goto LABEL_1557;
                    }

                    *(v9 + 4 * v2) = *(v13 + v111 * v360);
                  }

                  v358 = (v358 + v359);
                  ++v2;
                }

                while (v357 != v2);
              }

              v11 = v817;
              v2 = v24;
              v279 = v828;
              if (v848 != 2 || v25 <= v356)
              {
                goto LABEL_849;
              }

              while (2)
              {
                LODWORD(v878[0]) = v357;
                if (v865 == 2)
                {
                  v362 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v866, v878);
                  if (v362 != -1)
                  {
                    v361 = *(v867 + 8 * v362 + 4);
                    goto LABEL_788;
                  }
                }

                else
                {
                  if (v865 != 1)
                  {
                    if (v865)
                    {
                      goto LABEL_1661;
                    }

                    if (v357 >= v866)
                    {
                      v361 = -1;
                    }

                    else
                    {
                      v361 = v357;
                    }

LABEL_788:
                    v363 = *(*&v901[0] + *(&v901[0] + 1) * v361);
                    if (v363 < v18)
                    {
                      *(v9 + 4 * v357) = *(v13 + v111 * v363);
                    }

                    if (v25 == ++v357)
                    {
                      goto LABEL_849;
                    }

                    continue;
                  }

                  if (v868 > v357)
                  {
                    v361 = *(v870 + 4 * v357);
                    goto LABEL_788;
                  }
                }

                break;
              }

              v361 = -1;
              goto LABEL_788;
            }

            if (v18)
            {
              v2 = v25;
              v348 = v18;
              v349 = v25;
              v350 = v9;
              v351 = v13;
              while (v349)
              {
                *v350++ = *v351;
                v351 = (v351 + v111);
                --v349;
                if (!--v348)
                {
                  goto LABEL_753;
                }
              }

              goto LABEL_1461;
            }

LABEL_753:
            v2 = v24;
            v279 = v828;
            if (v848 != 2)
            {
              goto LABEL_855;
            }

            v352 = v25 - v18;
            if (v25 <= v18)
            {
              goto LABEL_855;
            }

            v18 = v18;
            while (2)
            {
              LODWORD(v878[0]) = v18;
              if (v865 == 2)
              {
                v354 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v866, v878);
                if (v354 != -1)
                {
                  v353 = *(v867 + 8 * v354 + 4);
                  goto LABEL_767;
                }
              }

              else
              {
                if (v865 != 1)
                {
                  if (v865)
                  {
                    goto LABEL_1677;
                  }

                  if (v18 >= v866)
                  {
                    v353 = -1;
                  }

                  else
                  {
                    v353 = v18;
                  }

LABEL_767:
                  *(v9 + 4 * v18++) = *(v13 + v111 * v353);
                  if (!--v352)
                  {
                    goto LABEL_855;
                  }

                  continue;
                }

                if (v868 > v18)
                {
                  v353 = *(v870 + 4 * v18);
                  goto LABEL_767;
                }
              }

              break;
            }

            v353 = -1;
            goto LABEL_767;
          }

          if (v13 == 4)
          {
            v194 = *(v839 + 48);
            if (v194 || (v194 = *(v839 + 40)) != 0)
            {
              v195 = *(v194 + 40);
            }

            else
            {
              v195 = 0;
            }

            (*(*v92 + 24))(v92, v195);
            v103 = v839;
          }

          v196 = *(v103 + 40);
          if (v196)
          {
            v197 = (v196 + 8);
            if (*(v196 + 32) == 1 && *(v196 + 33) == 6)
            {
              v198 = (v196 + 8);
              v199 = *(v196 + 48);
              v13 = *(v196 + 24) + *(v196 + 56);
              v18 = *(v196 + 40);
              v200 = (v196 + 8);

              v809 = 0;
              v201 = 1;
              v202 = v196;
            }

            else
            {
              v267 = re::internal::DataPayload::computePoDConversionHelper<float>(v196, v878);
              if (LOBYTE(v878[0]) == 1)
              {
                v809 = v878[1];
                v18 = v879;
                v199 = 4;
                v268 = *(&v879 + 1);
              }

              else
              {
                if (*(&v879 + 1) && (v880 & 1) != 0)
                {
                  (*(**(&v879 + 1) + 40))(v267);
                }

                v809 = 0;
                v18 = 0;
                v268 = 0;
                v199 = 0;
              }

              v202 = 0;
              v201 = v18 == 0;
              v13 = v268;
            }
          }

          else
          {
            v13 = 0;
            v199 = 0;
            v18 = 0;
            v809 = 0;
            v202 = 0;
            v201 = 1;
          }

          v829 = v201;
          if ((*(*v92 + 16))(v92))
          {
            if (!*(v92 + 5))
            {
              goto LABEL_1625;
            }

            v9 = *(v92 + 7);
            v25 = (*(*v92 + 16))(v92);
          }

          else
          {
            v25 = 0;
            v9 = 0;
          }

          v24 = v202;
          if (v848 != 3 && *(v839 + 48) != 0)
          {
            re::GeomModelDescriptor::AttributeData::makeConvertedIndices<unsigned int>(v839, v901);
            v374 = v901[1];
            v375 = LODWORD(v901[1]);
            if (LODWORD(v901[1]))
            {
              v2 = 0;
              v377 = *(&v901[0] + 1);
              v376 = *&v901[0];
              v11 = v25;
              do
              {
                v378 = *v376;
                if (v378 < v18)
                {
                  if (v2 >= v25)
                  {
                    goto LABEL_1581;
                  }

                  *(v9 + 4 * v2) = *(v13 + v199 * v378);
                }

                v376 = (v376 + v377);
                ++v2;
              }

              while (v375 != v2);
            }

            v11 = v817;
            v2 = v24;
            v279 = v829;
            if (v848 != 2 || v25 <= v374)
            {
              goto LABEL_849;
            }

            while (2)
            {
              LODWORD(v878[0]) = v375;
              if (v865 == 2)
              {
                v380 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v866, v878);
                if (v380 != -1)
                {
                  v379 = *(v867 + 8 * v380 + 4);
                  goto LABEL_846;
                }
              }

              else
              {
                if (v865 != 1)
                {
                  if (v865)
                  {
                    goto LABEL_1665;
                  }

                  if (v375 >= v866)
                  {
                    v379 = -1;
                  }

                  else
                  {
                    v379 = v375;
                  }

LABEL_846:
                  v381 = *(*&v901[0] + *(&v901[0] + 1) * v379);
                  if (v381 < v18)
                  {
                    *(v9 + 4 * v375) = *(v13 + v199 * v381);
                  }

                  if (v25 == ++v375)
                  {
                    goto LABEL_849;
                  }

                  continue;
                }

                if (v868 > v375)
                {
                  v379 = *(v870 + 4 * v375);
                  goto LABEL_846;
                }
              }

              break;
            }

            v379 = -1;
            goto LABEL_846;
          }

          if (v18)
          {
            v2 = v25;
            v366 = v18;
            v367 = v25;
            v368 = v9;
            v369 = v13;
            while (v367)
            {
              *v368++ = *v369;
              v369 = (v369 + v199);
              --v367;
              if (!--v366)
              {
                goto LABEL_811;
              }
            }

            goto LABEL_1449;
          }

LABEL_811:
          v2 = v24;
          v279 = v829;
          if (v848 != 2)
          {
            goto LABEL_855;
          }

          v370 = v25 - v18;
          if (v25 <= v18)
          {
            goto LABEL_855;
          }

          v18 = v18;
          while (2)
          {
            LODWORD(v878[0]) = v18;
            if (v865 == 2)
            {
              v372 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v866, v878);
              if (v372 != -1)
              {
                v371 = *(v867 + 8 * v372 + 4);
                goto LABEL_825;
              }
            }

            else
            {
              if (v865 != 1)
              {
                if (v865)
                {
                  goto LABEL_1680;
                }

                if (v18 >= v866)
                {
                  v371 = -1;
                }

                else
                {
                  v371 = v18;
                }

LABEL_825:
                *(v9 + 4 * v18++) = *(v13 + v199 * v371);
                if (!--v370)
                {
                  goto LABEL_855;
                }

                continue;
              }

              if (v868 > v18)
              {
                v371 = *(v870 + 4 * v18);
                goto LABEL_825;
              }
            }

            break;
          }

          v371 = -1;
          goto LABEL_825;
        }

        if (v13 == 4)
        {
          v165 = *(v839 + 48);
          if (v165 || (v165 = *(v839 + 40)) != 0)
          {
            v166 = *(v165 + 40);
          }

          else
          {
            v166 = 0;
          }

          (*(*v92 + 24))(v92, v166);
          v103 = v839;
        }

        v167 = *(v103 + 40);
        if (v167)
        {
          v168 = (v167 + 8);
          v169 = *(v167 + 33);
          if (v169 >= 6)
          {
            v170 = v169 == 4;
          }

          else
          {
            v170 = 0x30u >> v169;
          }

          if (v170 & 1) != 0 && (*(v167 + 32))
          {
            v171 = (v167 + 8);
            v172 = *(v167 + 48);
            v13 = *(v167 + 24) + *(v167 + 56);
            v18 = *(v167 + 40);
            v173 = (v167 + 8);

            v809 = 0;
            v174 = 1;
            v175 = v167;
          }

          else
          {
            v259 = re::internal::DataPayload::computePoDConversionHelper<int>(v167, v878);
            if (LOBYTE(v878[0]) == 1)
            {
              v809 = v878[1];
              v18 = v879;
              v172 = 4;
              v260 = *(&v879 + 1);
            }

            else
            {
              if (*(&v879 + 1) && (v880 & 1) != 0)
              {
                (*(**(&v879 + 1) + 40))(v259);
              }

              v809 = 0;
              v18 = 0;
              v260 = 0;
              v172 = 0;
            }

            v175 = 0;
            v174 = v18 == 0;
            v13 = v260;
          }
        }

        else
        {
          v13 = 0;
          v172 = 0;
          v18 = 0;
          v809 = 0;
          v175 = 0;
          v174 = 1;
        }

        v825 = v174;
        if ((*(*v92 + 16))(v92))
        {
          if (!*(v92 + 5))
          {
            goto LABEL_1605;
          }

          v9 = *(v92 + 7);
          v25 = (*(*v92 + 16))(v92);
        }

        else
        {
          v25 = 0;
          v9 = 0;
        }

        v24 = v175;
        if (v848 != 3 && *(v839 + 48) != 0)
        {
          re::GeomModelDescriptor::AttributeData::makeConvertedIndices<unsigned int>(v839, v901);
          v304 = v901[1];
          v305 = LODWORD(v901[1]);
          if (LODWORD(v901[1]))
          {
            v2 = 0;
            v307 = *(&v901[0] + 1);
            v306 = *&v901[0];
            v11 = v25;
            do
            {
              v308 = *v306;
              if (v308 < v18)
              {
                if (v2 >= v25)
                {
                  goto LABEL_1589;
                }

                *(v9 + 4 * v2) = *(v13 + v172 * v308);
              }

              v306 = (v306 + v307);
              ++v2;
            }

            while (v305 != v2);
          }

          v11 = v817;
          v2 = v24;
          v279 = v825;
          if (v848 != 2 || v25 <= v304)
          {
            goto LABEL_849;
          }

          while (2)
          {
            LODWORD(v878[0]) = v305;
            if (v865 == 2)
            {
              v310 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v866, v878);
              if (v310 != -1)
              {
                v309 = *(v867 + 8 * v310 + 4);
                goto LABEL_610;
              }
            }

            else
            {
              if (v865 != 1)
              {
                if (v865)
                {
                  goto LABEL_1667;
                }

                if (v305 >= v866)
                {
                  v309 = -1;
                }

                else
                {
                  v309 = v305;
                }

LABEL_610:
                v311 = *(*&v901[0] + *(&v901[0] + 1) * v309);
                if (v311 < v18)
                {
                  *(v9 + 4 * v305) = *(v13 + v172 * v311);
                }

                if (v25 == ++v305)
                {
                  goto LABEL_849;
                }

                continue;
              }

              if (v868 > v305)
              {
                v309 = *(v870 + 4 * v305);
                goto LABEL_610;
              }
            }

            break;
          }

          v309 = -1;
          goto LABEL_610;
        }

        if (v18)
        {
          v2 = v25;
          v296 = v18;
          v297 = v25;
          v298 = v9;
          v299 = v13;
          while (v297)
          {
            *v298++ = *v299;
            v299 = (v299 + v172);
            --v297;
            if (!--v296)
            {
              goto LABEL_575;
            }
          }

          goto LABEL_1481;
        }

LABEL_575:
        v2 = v24;
        v279 = v825;
        if (v848 != 2)
        {
          goto LABEL_855;
        }

        v300 = v25 - v18;
        if (v25 <= v18)
        {
          goto LABEL_855;
        }

        v18 = v18;
        while (2)
        {
          LODWORD(v878[0]) = v18;
          if (v865 == 2)
          {
            v302 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v866, v878);
            if (v302 != -1)
            {
              v301 = *(v867 + 8 * v302 + 4);
              goto LABEL_589;
            }
          }

          else
          {
            if (v865 != 1)
            {
              if (v865)
              {
                goto LABEL_1672;
              }

              if (v18 >= v866)
              {
                v301 = -1;
              }

              else
              {
                v301 = v18;
              }

LABEL_589:
              *(v9 + 4 * v18++) = *(v13 + v172 * v301);
              if (!--v300)
              {
                goto LABEL_855;
              }

              continue;
            }

            if (v868 > v18)
            {
              v301 = *(v870 + 4 * v18);
              goto LABEL_589;
            }
          }

          break;
        }

        v301 = -1;
        goto LABEL_589;
      }

      if (!v819)
      {
        if (v13 == 4)
        {
          v149 = *(v839 + 48);
          if (v149 || (v149 = *(v839 + 40)) != 0)
          {
            v150 = *(v149 + 40);
          }

          else
          {
            v150 = 0;
          }

          (*(*v92 + 24))(v92, v150);
          v103 = v839;
        }

        v151 = *(v103 + 40);
        v849 = v13;
        if (v151)
        {
          v152 = (v151 + 8);
          v153 = *(v151 + 33);
          if (v153 >= 6)
          {
            v154 = v153 == 2;
          }

          else
          {
            v154 = 0xCu >> v153;
          }

          if (v154 & 1) != 0 && (*(v151 + 32))
          {
            v155 = (v151 + 8);
            v156 = *(v151 + 48);
            v820 = (*(v151 + 24) + *(v151 + 56));
            v18 = *(v151 + 40);
            v157 = (v151 + 8);

            v24 = 0;
            v158 = 1;
            v159 = v151;
          }

          else
          {
            re::internal::DataPayload::computePoDConversionHelper<short>(v151, v878);
            if (LOBYTE(v878[0]) == 1)
            {
              v24 = v878[1];
              v18 = v879;
              v156 = 2;
              v269 = *(&v879 + 1);
            }

            else
            {
              if (*(&v879 + 1) && (v880 & 1) != 0)
              {
                (*(**(&v879 + 1) + 40))();
              }

              v24 = 0;
              v18 = 0;
              v269 = 0;
              v156 = 0;
            }

            v159 = 0;
            v158 = v18 == 0;
            v820 = v269;
          }
        }

        else
        {
          v820 = 0;
          v156 = 0;
          v18 = 0;
          v24 = 0;
          v159 = 0;
          v158 = 1;
        }

        v812 = v158;
        if ((*(*v92 + 16))(v92))
        {
          if (!*(v92 + 5))
          {
            goto LABEL_1617;
          }

          v9 = *(v92 + 7);
          v25 = (*(*v92 + 16))(v92);
        }

        else
        {
          v25 = 0;
          v9 = 0;
        }

        v13 = v159;
        if (v849 == 3 || *(v839 + 48) == 0)
        {
          v385 = v820;
          if (v18)
          {
            v2 = v25;
            v386 = v18;
            v387 = v25;
            v388 = v9;
            v389 = v820;
            while (v387)
            {
              *v388++ = *v389;
              v389 = (v389 + v156);
              --v387;
              if (!--v386)
              {
                goto LABEL_876;
              }
            }

            goto LABEL_1477;
          }

LABEL_876:
          v2 = v13;
          v13 = v812;
          if (v849 == 2)
          {
            v390 = v25 - v18;
            if (v25 > v18)
            {
              v18 = v18;
              do
              {
                LODWORD(v878[0]) = v18;
                if (v865 == 2)
                {
                  v392 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v866, v878);
                  if (v392 == -1)
                  {
                    v391 = -1;
                  }

                  else
                  {
                    v391 = *(v867 + 8 * v392 + 4);
                  }

                  v385 = v820;
                }

                else if (v865 == 1)
                {
                  if (v868 <= v18)
                  {
                    v391 = -1;
                  }

                  else
                  {
                    v391 = *(v870 + 4 * v18);
                  }
                }

                else
                {
                  if (v865)
                  {
                    goto LABEL_1675;
                  }

                  if (v18 >= v866)
                  {
                    v391 = -1;
                  }

                  else
                  {
                    v391 = v18;
                  }
                }

                *(v9 + 2 * v18++) = *(v385 + v156 * v391);
                --v390;
              }

              while (v390);
            }
          }
        }

        else
        {
          re::GeomModelDescriptor::AttributeData::makeConvertedIndices<unsigned int>(v839, v901);
          v394 = v901[1];
          v395 = LODWORD(v901[1]);
          v396 = v820;
          if (LODWORD(v901[1]))
          {
            v2 = 0;
            v398 = *(&v901[0] + 1);
            v397 = *&v901[0];
            v11 = v25;
            do
            {
              v399 = *v397;
              if (v399 < v18)
              {
                if (v2 >= v25)
                {
                  goto LABEL_1585;
                }

                *(v9 + 2 * v2) = *(v820 + v156 * v399);
              }

              v397 = (v397 + v398);
              ++v2;
            }

            while (v395 != v2);
          }

          v11 = v817;
          v2 = v13;
          v13 = v812;
          if (v849 == 2 && v25 > v394)
          {
            do
            {
              LODWORD(v878[0]) = v395;
              if (v865 == 2)
              {
                v401 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v866, v878);
                if (v401 == -1)
                {
                  v400 = -1;
                }

                else
                {
                  v400 = *(v867 + 8 * v401 + 4);
                }

                v396 = v820;
              }

              else if (v865 == 1)
              {
                if (v868 <= v395)
                {
                  v400 = -1;
                }

                else
                {
                  v400 = *(v870 + 4 * v395);
                }
              }

              else
              {
                if (v865)
                {
                  goto LABEL_1659;
                }

                if (v395 >= v866)
                {
                  v400 = -1;
                }

                else
                {
                  v400 = v395;
                }
              }

              v402 = *(*&v901[0] + *(&v901[0] + 1) * v400);
              if (v402 < v18)
              {
                *(v9 + 2 * v395) = *(v396 + v156 * v402);
              }

              ++v395;
            }

            while (v25 != v395);
          }

          if (*&v901[2])
          {
            if (*(&v901[2] + 1))
            {
              (*(**&v901[2] + 40))();
              *(&v901[2] + 1) = 0;
              *&v902[0] = 0;
            }

            *&v901[2] = 0;
          }

          if (*(&v901[1] + 1))
          {
          }
        }

        if (!((v24 == 0) | v13 & 1))
        {
          v382 = *(*v24 + 40);
          goto LABEL_1059;
        }

LABEL_1060:
        v24 = v842;
        v9 = v844;
        v8 = v853;
        v25 = v814;
        v23 = 56;
        if (!v2)
        {
          goto LABEL_1063;
        }

        v421 = (v2 + 8);
        goto LABEL_1062;
      }

      if (v13 == 4)
      {
        v203 = *(v839 + 48);
        if (v203 || (v203 = *(v839 + 40)) != 0)
        {
          v204 = *(v203 + 40);
        }

        else
        {
          v204 = 0;
        }

        (*(*v92 + 24))(v92, v204);
        v103 = v839;
      }

      v205 = *(v103 + 40);
      if (v205)
      {
        v206 = (v205 + 8);
        v207 = *(v205 + 33);
        if (v207 >= 6)
        {
          v208 = v207 == 3;
        }

        else
        {
          v208 = 0xCu >> v207;
        }

        if (v208 & 1) != 0 && (*(v205 + 32))
        {
          v209 = (v205 + 8);
          v210 = *(v205 + 48);
          v24 = *(v205 + 24) + *(v205 + 56);
          v9 = *(v205 + 40);
          v211 = (v205 + 8);

          v212 = 0;
          v803 = 1;
          v811 = v205;
        }

        else
        {
          re::internal::DataPayload::computePoDConversionHelper<unsigned short>(v205, v878);
          if (LOBYTE(v878[0]) == 1)
          {
            v212 = v878[1];
            v9 = v879;
            v210 = 2;
            v24 = *(&v879 + 1);
          }

          else
          {
            if (*(&v879 + 1) && (v880 & 1) != 0)
            {
              (*(**(&v879 + 1) + 40))();
            }

            v212 = 0;
            v9 = 0;
            v24 = 0;
            v210 = 0;
          }

          v811 = 0;
          v803 = v9 == 0;
        }
      }

      else
      {
        v24 = 0;
        v210 = 0;
        v9 = 0;
        v212 = 0;
        v811 = 0;
        v803 = 1;
      }

      if ((*(*v92 + 16))(v92))
      {
        v18 = re::internal::GeomTypedAttribute<unsigned short>::operator[](v92);
        v25 = (*(*v92 + 16))(v92);
      }

      else
      {
        v25 = 0;
        v18 = 0;
      }

      v404 = v13 == 3 || *(v839 + 48) == 0;
      v830 = v212;
      if (!v404)
      {
        re::GeomModelDescriptor::AttributeData::makeConvertedIndices<unsigned int>(v839, v901);
        v413 = v901[1];
        v414 = LODWORD(v901[1]);
        if (LODWORD(v901[1]))
        {
          v2 = 0;
          v416 = *(&v901[0] + 1);
          v415 = *&v901[0];
          v11 = v25;
          do
          {
            v417 = *v415;
            if (v417 < v9)
            {
              if (v2 >= v25)
              {
                goto LABEL_1549;
              }

              *(v18 + 2 * v2) = *(v24 + v210 * v417);
            }

            v415 = (v415 + v416);
            ++v2;
          }

          while (v414 != v2);
        }

        v11 = v817;
        if (v13 == 2 && v25 > v413)
        {
          while (2)
          {
            LODWORD(v878[0]) = v414;
            if (v865 == 2)
            {
              v419 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v866, v878);
              if (v419 != -1)
              {
                v418 = *(v867 + 8 * v419 + 4);
                goto LABEL_979;
              }
            }

            else
            {
              if (v865 != 1)
              {
                if (v865)
                {
                  goto LABEL_1663;
                }

                if (v414 >= v866)
                {
                  v418 = -1;
                }

                else
                {
                  v418 = v414;
                }

LABEL_979:
                v420 = *(*&v901[0] + *(&v901[0] + 1) * v418);
                if (v420 < v9)
                {
                  *(v18 + 2 * v414) = *(v24 + v210 * v420);
                }

                if (v25 == ++v414)
                {
                  goto LABEL_982;
                }

                continue;
              }

              if (v868 > v414)
              {
                v418 = *(v870 + 4 * v414);
                goto LABEL_979;
              }
            }

            break;
          }

          v418 = -1;
          goto LABEL_979;
        }

LABEL_982:
        if (*&v901[2])
        {
          if (*(&v901[2] + 1))
          {
            (*(**&v901[2] + 40))();
            *(&v901[2] + 1) = 0;
            *&v902[0] = 0;
          }

          *&v901[2] = 0;
        }

        if (*(&v901[1] + 1))
        {
        }

LABEL_988:
        if (v830 != 0 && !v803)
        {
          (*(*v830 + 40))();
        }

        v24 = v842;
        v9 = v844;
        v8 = v853;
        v25 = v814;
        v23 = 56;
        v258 = v811;
        if (!v811)
        {
          goto LABEL_1063;
        }

LABEL_991:
        v421 = (v258 + 8);
LABEL_1062:

        goto LABEL_1063;
      }

      if (v9)
      {
        v2 = v25;
        v405 = v9;
        v406 = v25;
        v407 = v18;
        v408 = v24;
        while (v406)
        {
          *v407++ = *v408;
          v408 = (v408 + v210);
          --v406;
          if (!--v405)
          {
            goto LABEL_944;
          }
        }

        goto LABEL_1441;
      }

LABEL_944:
      if (v13 != 2)
      {
        goto LABEL_988;
      }

      v409 = v25 - v9;
      if (v25 <= v9)
      {
        goto LABEL_988;
      }

      v2 = v9;
      while (2)
      {
        LODWORD(v878[0]) = v2;
        if (v865 == 2)
        {
          v411 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v866, v878);
          if (v411 != -1)
          {
            v410 = *(v867 + 8 * v411 + 4);
            goto LABEL_958;
          }
        }

        else
        {
          if (v865 != 1)
          {
            if (v865)
            {
              goto LABEL_1670;
            }

            if (v2 >= v866)
            {
              v410 = -1;
            }

            else
            {
              v410 = v2;
            }

LABEL_958:
            *(v18 + 2 * v2++) = *(v24 + v210 * v410);
            if (!--v409)
            {
              goto LABEL_988;
            }

            continue;
          }

          if (v868 > v2)
          {
            v410 = *(v870 + 4 * v2);
            goto LABEL_958;
          }
        }

        break;
      }

      v410 = -1;
      goto LABEL_958;
    }

    v93 = v839;
    if (v819 <= 7)
    {
      if (v819 != 5)
      {
        if (v819 == 6)
        {
          if (v13 == 4)
          {
            v94 = *(v839 + 48);
            if (v94 || (v94 = *(v839 + 40)) != 0)
            {
              v95 = *(v94 + 40);
            }

            else
            {
              v95 = 0;
            }

            (*(*v92 + 24))(v92, v95);
            v93 = v839;
          }

          v96 = *(v93 + 40);
          if (v96)
          {
            v97 = (v96 + 8);
            if (*(v96 + 32) == 1 && *(v96 + 33) == 8)
            {
              v98 = (v96 + 8);
              v99 = *(v96 + 48);
              v24 = *(v96 + 24) + *(v96 + 56);
              v18 = *(v96 + 40);
              v100 = (v96 + 8);

              v808 = 0;
              v101 = 1;
              v102 = v96;
            }

            else
            {
              v270 = _ZNK2re8internal11DataPayload22computeConvertedValuesIDv2_fEENS_6ResultINS_10FixedArrayIT_EENS_13DetailedErrorEEEv(v96, v878);
              v823 = v96;
              if (LOBYTE(v878[0]) == 1)
              {
                v808 = v878[1];
                v18 = v879;
                v99 = 8;
                v271 = *(&v879 + 1);
              }

              else
              {
                if (*(&v879 + 1) && (v880 & 1) != 0)
                {
                  (*(**(&v879 + 1) + 40))(v270);
                }

                v271 = 0;
                v18 = 0;
                v808 = 0;
                v99 = 0;
              }

              v96 = 0;
              v101 = v18 == 0;
              v24 = v271;
              v102 = v823;
            }
          }

          else
          {
            v24 = 0;
            v99 = 0;
            v18 = 0;
            v808 = 0;
            v101 = 1;
          }

          v831 = v101;
          if ((*(*v92 + 16))(v92))
          {
            if (*(v92 + 5))
            {
              v9 = *(v92 + 7);
              v25 = (*(*v92 + 16))(v92);
              goto LABEL_1002;
            }

LABEL_1609:
            *&v906[0] = 0;
            v882 = 0u;
            v881 = 0u;
            v880 = 0u;
            v879 = 0u;
            *v878 = 0u;
            v761 = MEMORY[0x1E69E9C10];
            v762 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v901[0]) = 136315906;
            *(v901 + 4) = "operator[]";
            WORD6(v901[0]) = 1024;
            if (v762)
            {
              v763 = 3;
            }

            else
            {
              v763 = 2;
            }

            *(v901 + 14) = 789;
            WORD1(v901[1]) = 2048;
            *(&v901[1] + 4) = 0;
            WORD6(v901[1]) = 2048;
            *(&v901[1] + 14) = 0;
            _os_log_send_and_compose_impl(v763, v906, v878, 80, &dword_1E1C61000, v761, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v901, 38, v794, v795);
            _os_crash_msg();
            __break(1u);
LABEL_1613:
            *&v906[0] = 0;
            v882 = 0u;
            v881 = 0u;
            v880 = 0u;
            v879 = 0u;
            *v878 = 0u;
            v764 = MEMORY[0x1E69E9C10];
            v765 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v901[0]) = 136315906;
            *(v901 + 4) = "operator[]";
            WORD6(v901[0]) = 1024;
            if (v765)
            {
              v766 = 3;
            }

            else
            {
              v766 = 2;
            }

            *(v901 + 14) = 789;
            WORD1(v901[1]) = 2048;
            *(&v901[1] + 4) = 0;
            WORD6(v901[1]) = 2048;
            *(&v901[1] + 14) = 0;
            _os_log_send_and_compose_impl(v766, v906, v878, 80, &dword_1E1C61000, v764, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v901, 38, v794, v795);
            _os_crash_msg();
            __break(1u);
LABEL_1617:
            *&v906[0] = 0;
            v882 = 0u;
            v881 = 0u;
            v880 = 0u;
            v879 = 0u;
            *v878 = 0u;
            v767 = MEMORY[0x1E69E9C10];
            v768 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v901[0]) = 136315906;
            *(v901 + 4) = "operator[]";
            WORD6(v901[0]) = 1024;
            if (v768)
            {
              v769 = 3;
            }

            else
            {
              v769 = 2;
            }

            *(v901 + 14) = 789;
            WORD1(v901[1]) = 2048;
            *(&v901[1] + 4) = 0;
            WORD6(v901[1]) = 2048;
            *(&v901[1] + 14) = 0;
            _os_log_send_and_compose_impl(v769, v906, v878, 80, &dword_1E1C61000, v767, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v901, 38, v794, v795);
            _os_crash_msg();
            __break(1u);
LABEL_1621:
            *&v906[0] = 0;
            v882 = 0u;
            v881 = 0u;
            v880 = 0u;
            v879 = 0u;
            *v878 = 0u;
            v770 = MEMORY[0x1E69E9C10];
            v771 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v901[0]) = 136315906;
            *(v901 + 4) = "operator[]";
            WORD6(v901[0]) = 1024;
            if (v771)
            {
              v772 = 3;
            }

            else
            {
              v772 = 2;
            }

            *(v901 + 14) = 789;
            WORD1(v901[1]) = 2048;
            *(&v901[1] + 4) = 0;
            WORD6(v901[1]) = 2048;
            *(&v901[1] + 14) = 0;
            _os_log_send_and_compose_impl(v772, v906, v878, 80, &dword_1E1C61000, v770, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v901, 38, v794, v795);
            _os_crash_msg();
            __break(1u);
LABEL_1625:
            *&v906[0] = 0;
            v882 = 0u;
            v881 = 0u;
            v880 = 0u;
            v879 = 0u;
            *v878 = 0u;
            v773 = MEMORY[0x1E69E9C10];
            v774 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v901[0]) = 136315906;
            *(v901 + 4) = "operator[]";
            WORD6(v901[0]) = 1024;
            if (v774)
            {
              v775 = 3;
            }

            else
            {
              v775 = 2;
            }

            *(v901 + 14) = 789;
            WORD1(v901[1]) = 2048;
            *(&v901[1] + 4) = 0;
            WORD6(v901[1]) = 2048;
            *(&v901[1] + 14) = 0;
            _os_log_send_and_compose_impl(v775, v906, v878, 80, &dword_1E1C61000, v773, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v901, 38, v794, v795);
            _os_crash_msg();
            __break(1u);
LABEL_1629:
            *&v905[0] = 0;
            v882 = 0u;
            v881 = 0u;
            v880 = 0u;
            v879 = 0u;
            *v878 = 0u;
            v776 = MEMORY[0x1E69E9C10];
            v777 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v906[0]) = 136315906;
            *(v906 + 4) = "operator[]";
            WORD6(v906[0]) = 1024;
            if (v777)
            {
              v778 = 3;
            }

            else
            {
              v778 = 2;
            }

            *(v906 + 14) = 789;
            WORD1(v906[1]) = 2048;
            *(&v906[1] + 4) = 0;
            WORD6(v906[1]) = 2048;
            *(&v906[1] + 14) = 0;
            _os_log_send_and_compose_impl(v778, v905, v878, 80, &dword_1E1C61000, v776, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v906, 38, v794, v795);
            _os_crash_msg();
            __break(1u);
LABEL_1633:
            *&v906[0] = 0;
            v882 = 0u;
            v881 = 0u;
            v880 = 0u;
            v879 = 0u;
            *v878 = 0u;
            v779 = MEMORY[0x1E69E9C10];
            v780 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v901[0]) = 136315906;
            *(v901 + 4) = "operator[]";
            WORD6(v901[0]) = 1024;
            if (v780)
            {
              v781 = 3;
            }

            else
            {
              v781 = 2;
            }

            *(v901 + 14) = 789;
            WORD1(v901[1]) = 2048;
            *(&v901[1] + 4) = 0;
            WORD6(v901[1]) = 2048;
            *(&v901[1] + 14) = 0;
            _os_log_send_and_compose_impl(v781, v906, v878, 80, &dword_1E1C61000, v779, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v901, 38, v794, v795);
            _os_crash_msg();
            __break(1u);
LABEL_1637:
            v877 = 0;
            v907 = 0u;
            memset(v906, 0, sizeof(v906));
            v782 = MEMORY[0x1E69E9C10];
            v783 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v908 = 136315906;
            *&v908[4] = "operator[]";
            *&v908[12] = 1024;
            if (v783)
            {
              v784 = 3;
            }

            else
            {
              v784 = 2;
            }

            *&v908[14] = 468;
            *&v908[18] = 2048;
            *&v908[20] = 0;
            *&v908[28] = 2048;
            *&v908[30] = 0;
            _os_log_send_and_compose_impl(v784, &v877, v906, 80, &dword_1E1C61000, v782, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v908, 38, v794, v795);
            _os_crash_msg();
            __break(1u);
            goto LABEL_1641;
          }

          v25 = 0;
          v9 = 0;
LABEL_1002:
          v806 = v96;
          if (v13 != 3 && *(v839 + 48) != 0)
          {
            re::GeomModelDescriptor::AttributeData::makeConvertedIndices<unsigned int>(v839, v901);
            v432 = v901[1];
            v433 = LODWORD(v901[1]);
            if (LODWORD(v901[1]))
            {
              v11 = 0;
              v2 = v25;
              do
              {
                v434 = *(*&v901[0] + *(&v901[0] + 1) * v11);
                if (v434 < v18)
                {
                  if (v11 >= v25)
                  {
                    goto LABEL_1565;
                  }

                  *(v9 + 8 * v11) = *(v24 + v99 * v434);
                }

                ++v11;
              }

              while (v433 != v11);
            }

            v230 = v13 == 2;
            v11 = v817;
            v2 = v806;
            v13 = v831;
            if (v230 && v25 > v432)
            {
              while (2)
              {
                LODWORD(v878[0]) = v433;
                if (v865 == 2)
                {
                  v436 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v866, v878);
                  if (v436 != -1)
                  {
                    v435 = *(v867 + 8 * v436 + 4);
                    goto LABEL_1048;
                  }
                }

                else
                {
                  if (v865 != 1)
                  {
                    if (v865)
                    {
                      goto LABEL_1662;
                    }

                    if (v433 >= v866)
                    {
                      v435 = -1;
                    }

                    else
                    {
                      v435 = v433;
                    }

LABEL_1048:
                    v437 = *(*&v901[0] + *(&v901[0] + 1) * v435);
                    if (v437 < v18)
                    {
                      *(v9 + 8 * v433) = *(v24 + v99 * v437);
                    }

                    if (v25 == ++v433)
                    {
                      goto LABEL_1051;
                    }

                    continue;
                  }

                  if (v868 > v433)
                  {
                    v435 = *(v870 + 4 * v433);
                    goto LABEL_1048;
                  }
                }

                break;
              }

              v435 = -1;
              goto LABEL_1048;
            }

LABEL_1051:
            if (*&v901[2])
            {
              if (*(&v901[2] + 1))
              {
                (*(**&v901[2] + 40))();
                *(&v901[2] + 1) = 0;
                *&v902[0] = 0;
              }

              *&v901[2] = 0;
            }

            if (*(&v901[1] + 1))
            {
            }

LABEL_1057:
            if (!((v808 == 0) | v13 & 1))
            {
              v382 = *(*v808 + 40);
LABEL_1059:
              v382();
            }

            goto LABEL_1060;
          }

          if (v18)
          {
            v2 = v25;
            v424 = v18;
            v425 = v25;
            v426 = v9;
            v427 = v24;
            while (v425)
            {
              *v426++ = *v427;
              v427 = (v427 + v99);
              --v425;
              if (!--v424)
              {
                goto LABEL_1011;
              }
            }

LABEL_1457:
            *&v906[0] = 0;
            v882 = 0u;
            v881 = 0u;
            v880 = 0u;
            v879 = 0u;
            *v878 = 0u;
            v647 = MEMORY[0x1E69E9C10];
            v648 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v901[0]) = 136315906;
            *(v901 + 4) = "operator[]";
            WORD6(v901[0]) = 1024;
            if (v648)
            {
              v649 = 3;
            }

            else
            {
              v649 = 2;
            }

            *(v901 + 14) = 621;
            WORD1(v901[1]) = 2048;
            *(&v901[1] + 4) = v2;
            WORD6(v901[1]) = 2048;
            *(&v901[1] + 14) = v2;
            _os_log_send_and_compose_impl(v649, v906, v878, 80, &dword_1E1C61000, v647, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v901, 38, v794, v795);
            _os_crash_msg();
            __break(1u);
LABEL_1461:
            *&v906[0] = 0;
            v882 = 0u;
            v881 = 0u;
            v880 = 0u;
            v879 = 0u;
            *v878 = 0u;
            v650 = MEMORY[0x1E69E9C10];
            v651 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v901[0]) = 136315906;
            *(v901 + 4) = "operator[]";
            WORD6(v901[0]) = 1024;
            if (v651)
            {
              v652 = 3;
            }

            else
            {
              v652 = 2;
            }

            *(v901 + 14) = 621;
            WORD1(v901[1]) = 2048;
            *(&v901[1] + 4) = v2;
            WORD6(v901[1]) = 2048;
            *(&v901[1] + 14) = v2;
            _os_log_send_and_compose_impl(v652, v906, v878, 80, &dword_1E1C61000, v650, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v901, 38, v794, v795);
            _os_crash_msg();
            __break(1u);
LABEL_1465:
            *&v906[0] = 0;
            v882 = 0u;
            v881 = 0u;
            v880 = 0u;
            v879 = 0u;
            *v878 = 0u;
            v653 = MEMORY[0x1E69E9C10];
            v654 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v901[0]) = 136315906;
            *(v901 + 4) = "operator[]";
            WORD6(v901[0]) = 1024;
            if (v654)
            {
              v655 = 3;
            }

            else
            {
              v655 = 2;
            }

            *(v901 + 14) = 621;
            WORD1(v901[1]) = 2048;
            *(&v901[1] + 4) = v2;
            WORD6(v901[1]) = 2048;
            *(&v901[1] + 14) = v2;
            _os_log_send_and_compose_impl(v655, v906, v878, 80, &dword_1E1C61000, v653, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v901, 38, v794, v795);
            _os_crash_msg();
            __break(1u);
LABEL_1469:
            *&v905[0] = 0;
            v882 = 0u;
            v881 = 0u;
            v880 = 0u;
            v879 = 0u;
            *v878 = 0u;
            v656 = MEMORY[0x1E69E9C10];
            v657 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v906[0]) = 136315906;
            *(v906 + 4) = "operator[]";
            WORD6(v906[0]) = 1024;
            if (v657)
            {
              v658 = 3;
            }

            else
            {
              v658 = 2;
            }

            *(v906 + 14) = 621;
            WORD1(v906[1]) = 2048;
            *(&v906[1] + 4) = v2;
            WORD6(v906[1]) = 2048;
            *(&v906[1] + 14) = v2;
            _os_log_send_and_compose_impl(v658, v905, v878, 80, &dword_1E1C61000, v656, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v906, 38, v794, v795);
            _os_crash_msg();
            __break(1u);
LABEL_1473:
            *&v906[0] = 0;
            v882 = 0u;
            v881 = 0u;
            v880 = 0u;
            v879 = 0u;
            *v878 = 0u;
            v659 = MEMORY[0x1E69E9C10];
            v660 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v901[0]) = 136315906;
            *(v901 + 4) = "operator[]";
            WORD6(v901[0]) = 1024;
            if (v660)
            {
              v661 = 3;
            }

            else
            {
              v661 = 2;
            }

            *(v901 + 14) = 621;
            WORD1(v901[1]) = 2048;
            *(&v901[1] + 4) = v2;
            WORD6(v901[1]) = 2048;
            *(&v901[1] + 14) = v2;
            _os_log_send_and_compose_impl(v661, v906, v878, 80, &dword_1E1C61000, v659, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v901, 38, v794, v795);
            _os_crash_msg();
            __break(1u);
LABEL_1477:
            *&v906[0] = 0;
            v882 = 0u;
            v881 = 0u;
            v880 = 0u;
            v879 = 0u;
            *v878 = 0u;
            v662 = MEMORY[0x1E69E9C10];
            v663 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v901[0]) = 136315906;
            *(v901 + 4) = "operator[]";
            WORD6(v901[0]) = 1024;
            if (v663)
            {
              v664 = 3;
            }

            else
            {
              v664 = 2;
            }

            *(v901 + 14) = 621;
            WORD1(v901[1]) = 2048;
            *(&v901[1] + 4) = v2;
            WORD6(v901[1]) = 2048;
            *(&v901[1] + 14) = v2;
            _os_log_send_and_compose_impl(v664, v906, v878, 80, &dword_1E1C61000, v662, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v901, 38, v794, v795);
            _os_crash_msg();
            __break(1u);
LABEL_1481:
            *&v906[0] = 0;
            v882 = 0u;
            v881 = 0u;
            v880 = 0u;
            v879 = 0u;
            *v878 = 0u;
            v665 = MEMORY[0x1E69E9C10];
            v666 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v901[0]) = 136315906;
            *(v901 + 4) = "operator[]";
            WORD6(v901[0]) = 1024;
            if (v666)
            {
              v667 = 3;
            }

            else
            {
              v667 = 2;
            }

            *(v901 + 14) = 621;
            WORD1(v901[1]) = 2048;
            *(&v901[1] + 4) = v2;
            WORD6(v901[1]) = 2048;
            *(&v901[1] + 14) = v2;
            _os_log_send_and_compose_impl(v667, v906, v878, 80, &dword_1E1C61000, v665, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v901, 38, v794, v795);
            _os_crash_msg();
            __break(1u);
LABEL_1485:
            v877 = 0;
            v907 = 0u;
            memset(v906, 0, sizeof(v906));
            v668 = MEMORY[0x1E69E9C10];
            v669 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v908 = 136315906;
            *&v908[4] = "operator[]";
            *&v908[12] = 1024;
            if (v669)
            {
              v670 = 3;
            }

            else
            {
              v670 = 2;
            }

            *&v908[14] = 468;
            *&v908[18] = 2048;
            *&v908[20] = v25;
            *&v908[28] = 2048;
            *&v908[30] = v11;
            _os_log_send_and_compose_impl(v670, &v877, v906, 80, &dword_1E1C61000, v668, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v908, 38, v794, v795);
            _os_crash_msg();
            __break(1u);
            goto LABEL_1489;
          }

LABEL_1011:
          v230 = v13 == 2;
          v2 = v806;
          v13 = v831;
          if (!v230)
          {
            goto LABEL_1057;
          }

          v428 = v25 - v18;
          if (v25 <= v18)
          {
            goto LABEL_1057;
          }

          v18 = v18;
          while (2)
          {
            LODWORD(v878[0]) = v18;
            if (v865 == 2)
            {
              v430 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v866, v878);
              if (v430 != -1)
              {
                v429 = *(v867 + 8 * v430 + 4);
                goto LABEL_1026;
              }
            }

            else
            {
              if (v865 != 1)
              {
                if (v865)
                {
                  goto LABEL_1678;
                }

                if (v18 >= v866)
                {
                  v429 = -1;
                }

                else
                {
                  v429 = v18;
                }

LABEL_1026:
                *(v9 + 8 * v18++) = *(v24 + v99 * v429);
                if (!--v428)
                {
                  goto LABEL_1057;
                }

                continue;
              }

              if (v868 > v18)
              {
                v429 = *(v870 + 4 * v18);
                goto LABEL_1026;
              }
            }

            break;
          }

          v429 = -1;
          goto LABEL_1026;
        }

        if (v13 == 4)
        {
          v213 = *(v839 + 48);
          if (v213 || (v213 = *(v839 + 40)) != 0)
          {
            v214 = *(v213 + 40);
          }

          else
          {
            v214 = 0;
          }

          (*(*v92 + 24))(v92, v214);
          v93 = v839;
        }

        v215 = *(v93 + 40);
        v850 = v13;
        if (v215)
        {
          v216 = (v215 + 8);
          if (*(v215 + 32) == 1 && (*(v215 + 33) | 2) == 0xB)
          {
            v217 = (v215 + 8);
            v218 = *(v215 + 48);
            v13 = *(v215 + 24) + *(v215 + 56);
            v18 = *(v215 + 40);
            v219 = (v215 + 8);

            v809 = 0;
            v220 = 1;
            v221 = v215;
          }

          else
          {
            v228 = _ZNK2re8internal11DataPayload22computeConvertedValuesIDv3_fEENS_6ResultINS_10FixedArrayIT_EENS_13DetailedErrorEEEv(v215, v878);
            if (LOBYTE(v878[0]) == 1)
            {
              v809 = v878[1];
              v18 = v879;
              v218 = 16;
              v229 = *(&v879 + 1);
            }

            else
            {
              if (*(&v879 + 1) && (v880 & 1) != 0)
              {
                (*(**(&v879 + 1) + 40))(v228);
              }

              v229 = 0;
              v18 = 0;
              v809 = 0;
              v218 = 0;
            }

            v221 = 0;
            v220 = v18 == 0;
            v13 = v229;
          }
        }

        else
        {
          v13 = 0;
          v218 = 0;
          v18 = 0;
          v221 = 0;
          v809 = 0;
          v220 = 1;
        }

        v824 = v220;
        if ((*(*v92 + 16))(v92))
        {
          if (!*(v92 + 5))
          {
            goto LABEL_1621;
          }

          v9 = *(v92 + 7);
          v25 = (*(*v92 + 16))(v92);
        }

        else
        {
          v25 = 0;
          v9 = 0;
        }

        v24 = v221;
        if (v850 != 3 && *(v839 + 48) != 0)
        {
          re::GeomModelDescriptor::AttributeData::makeConvertedIndices<unsigned int>(v839, v901);
          v286 = v901[1];
          v287 = LODWORD(v901[1]);
          if (LODWORD(v901[1]))
          {
            v11 = 0;
            v2 = v25;
            do
            {
              v288 = *(*&v901[0] + *(&v901[0] + 1) * v11);
              if (v288 < v18)
              {
                if (v11 >= v25)
                {
                  goto LABEL_1561;
                }

                v289 = v13 + v218 * v288;
                *&v285 = *v289;
                DWORD2(v285) = *(v289 + 8);
                *(v9 + 16 * v11) = v285;
              }

              ++v11;
            }

            while (v287 != v11);
          }

          v11 = v817;
          v2 = v24;
          v279 = v824;
          if (v850 == 2 && v25 > v286)
          {
            while (2)
            {
              LODWORD(v878[0]) = v287;
              if (v865 == 2)
              {
                v291 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v866, v878);
                if (v291 != -1)
                {
                  v290 = *(v867 + 8 * v291 + 4);
                  goto LABEL_552;
                }
              }

              else
              {
                if (v865 != 1)
                {
                  if (v865)
                  {
                    goto LABEL_1666;
                  }

                  if (v287 >= v866)
                  {
                    v290 = -1;
                  }

                  else
                  {
                    v290 = v287;
                  }

LABEL_552:
                  v292 = *(*&v901[0] + *(&v901[0] + 1) * v290);
                  if (v292 < v18)
                  {
                    v293 = v13 + v218 * v292;
                    *&v285 = *v293;
                    DWORD2(v285) = *(v293 + 8);
                    *(v9 + 16 * v287) = v285;
                  }

                  if (v25 == ++v287)
                  {
                    goto LABEL_849;
                  }

                  continue;
                }

                if (v868 > v287)
                {
                  v290 = *(v870 + 4 * v287);
                  goto LABEL_552;
                }
              }

              break;
            }

            v290 = -1;
            goto LABEL_552;
          }

LABEL_849:
          if (*&v901[2])
          {
            if (*(&v901[2] + 1))
            {
              (*(**&v901[2] + 40))();
              *(&v901[2] + 1) = 0;
              *&v902[0] = 0;
            }

            *&v901[2] = 0;
          }

          if (*(&v901[1] + 1))
          {
          }

LABEL_855:
          if (v809 != 0 && !v279)
          {
            v382 = *(*v809 + 40);
            goto LABEL_1059;
          }

          goto LABEL_1060;
        }

        if (v18)
        {
          v2 = v25;
          v275 = v18;
          v276 = (v13 + 8);
          v277 = v25;
          v278 = v9;
          while (v277)
          {
            *&v273 = *(v276 - 1);
            DWORD2(v273) = *v276;
            v276 = (v276 + v218);
            *v278++ = v273;
            --v277;
            if (!--v275)
            {
              goto LABEL_517;
            }
          }

          goto LABEL_1473;
        }

LABEL_517:
        v2 = v24;
        v279 = v824;
        if (v850 != 2)
        {
          goto LABEL_855;
        }

        v280 = v25 - v18;
        if (v25 <= v18)
        {
          goto LABEL_855;
        }

        v18 = v18;
        while (2)
        {
          LODWORD(v878[0]) = v18;
          if (v865 == 2)
          {
            v282 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v866, v878);
            if (v282 != -1)
            {
              v281 = *(v867 + 8 * v282 + 4);
              goto LABEL_531;
            }
          }

          else
          {
            if (v865 != 1)
            {
              if (v865)
              {
                goto LABEL_1671;
              }

              if (v18 >= v866)
              {
                v281 = -1;
              }

              else
              {
                v281 = v18;
              }

LABEL_531:
              v283 = v13 + v218 * v281;
              *&v273 = *v283;
              DWORD2(v273) = *(v283 + 8);
              *(v9 + 16 * v18++) = v273;
              if (!--v280)
              {
                goto LABEL_855;
              }

              continue;
            }

            if (v868 > v18)
            {
              v281 = *(v870 + 4 * v18);
              goto LABEL_531;
            }
          }

          break;
        }

        v281 = -1;
        goto LABEL_531;
      }

      if (v13 == 4)
      {
        v176 = *(v839 + 48);
        if (v176 || (v176 = *(v839 + 40)) != 0)
        {
          v177 = *(v176 + 40);
        }

        else
        {
          v177 = 0;
        }

        (*(*v92 + 24))(v92, v177);
        v93 = v839;
      }

      v178 = *(v93 + 40);
      if (v178)
      {
        v179 = (v178 + 8);
        if (*(v178 + 32) == 1 && *(v178 + 33) == 7)
        {
          v180 = (v178 + 8);
          v181 = *(v178 + 48);
          v24 = *(v178 + 24) + *(v178 + 56);
          v18 = *(v178 + 40);
          v182 = (v178 + 8);

          v808 = 0;
          v183 = 1;
          v184 = v178;
        }

        else
        {
          v261 = re::internal::DataPayload::computePoDConversionHelper<double>(v178, v878);
          v821 = v178;
          if (LOBYTE(v878[0]) == 1)
          {
            v808 = v878[1];
            v18 = v879;
            v181 = 8;
            v262 = *(&v879 + 1);
          }

          else
          {
            if (*(&v879 + 1) && (v880 & 1) != 0)
            {
              (*(**(&v879 + 1) + 40))(v261);
            }

            v808 = 0;
            v18 = 0;
            v262 = 0;
            v181 = 0;
          }

          v178 = 0;
          v183 = v18 == 0;
          v24 = v262;
          v184 = v821;
        }
      }

      else
      {
        v24 = 0;
        v181 = 0;
        v18 = 0;
        v808 = 0;
        v183 = 1;
      }

      v826 = v183;
      if ((*(*v92 + 16))(v92))
      {
        if (!*(v92 + 5))
        {
          goto LABEL_1613;
        }

        v9 = *(v92 + 7);
        v25 = (*(*v92 + 16))(v92);
      }

      else
      {
        v25 = 0;
        v9 = 0;
      }

      v804 = v178;
      if (v13 != 3 && *(v839 + 48) != 0)
      {
        re::GeomModelDescriptor::AttributeData::makeConvertedIndices<unsigned int>(v839, v901);
        v322 = v901[1];
        v323 = LODWORD(v901[1]);
        if (LODWORD(v901[1]))
        {
          v2 = 0;
          v325 = *(&v901[0] + 1);
          v324 = *&v901[0];
          v11 = v25;
          do
          {
            v326 = *v324;
            if (v326 < v18)
            {
              if (v2 >= v25)
              {
                goto LABEL_1573;
              }

              *(v9 + 8 * v2) = *(v24 + v181 * v326);
            }

            v324 = (v324 + v325);
            ++v2;
          }

          while (v323 != v2);
        }

        v230 = v13 == 2;
        v11 = v817;
        v2 = v804;
        v13 = v826;
        if (!v230 || v25 <= v322)
        {
          goto LABEL_1051;
        }

        while (2)
        {
          LODWORD(v878[0]) = v323;
          if (v865 == 2)
          {
            v328 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v866, v878);
            if (v328 != -1)
            {
              v327 = *(v867 + 8 * v328 + 4);
              goto LABEL_670;
            }
          }

          else
          {
            if (v865 != 1)
            {
              if (v865)
              {
                goto LABEL_1669;
              }

              if (v323 >= v866)
              {
                v327 = -1;
              }

              else
              {
                v327 = v323;
              }

LABEL_670:
              v329 = *(*&v901[0] + *(&v901[0] + 1) * v327);
              if (v329 < v18)
              {
                *(v9 + 8 * v323) = *(v24 + v181 * v329);
              }

              if (v25 == ++v323)
              {
                goto LABEL_1051;
              }

              continue;
            }

            if (v868 > v323)
            {
              v327 = *(v870 + 4 * v323);
              goto LABEL_670;
            }
          }

          break;
        }

        v327 = -1;
        goto LABEL_670;
      }

      if (v18)
      {
        v2 = v25;
        v314 = v18;
        v315 = v25;
        v316 = v9;
        v317 = v24;
        while (v315)
        {
          *v316++ = *v317;
          v317 = (v317 + v181);
          --v315;
          if (!--v314)
          {
            goto LABEL_633;
          }
        }

LABEL_1445:
        *&v906[0] = 0;
        v882 = 0u;
        v881 = 0u;
        v880 = 0u;
        v879 = 0u;
        *v878 = 0u;
        v638 = MEMORY[0x1E69E9C10];
        v639 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v901[0]) = 136315906;
        *(v901 + 4) = "operator[]";
        WORD6(v901[0]) = 1024;
        if (v639)
        {
          v640 = 3;
        }

        else
        {
          v640 = 2;
        }

        *(v901 + 14) = 621;
        WORD1(v901[1]) = 2048;
        *(&v901[1] + 4) = v2;
        WORD6(v901[1]) = 2048;
        *(&v901[1] + 14) = v2;
        _os_log_send_and_compose_impl(v640, v906, v878, 80, &dword_1E1C61000, v638, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v901, 38, v794, v795);
        _os_crash_msg();
        __break(1u);
LABEL_1449:
        *&v906[0] = 0;
        v882 = 0u;
        v881 = 0u;
        v880 = 0u;
        v879 = 0u;
        *v878 = 0u;
        v641 = MEMORY[0x1E69E9C10];
        v642 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v901[0]) = 136315906;
        *(v901 + 4) = "operator[]";
        WORD6(v901[0]) = 1024;
        if (v642)
        {
          v643 = 3;
        }

        else
        {
          v643 = 2;
        }

        *(v901 + 14) = 621;
        WORD1(v901[1]) = 2048;
        *(&v901[1] + 4) = v2;
        WORD6(v901[1]) = 2048;
        *(&v901[1] + 14) = v2;
        _os_log_send_and_compose_impl(v643, v906, v878, 80, &dword_1E1C61000, v641, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v901, 38, v794, v795);
        _os_crash_msg();
        __break(1u);
LABEL_1453:
        *&v905[0] = 0;
        v882 = 0u;
        v881 = 0u;
        v880 = 0u;
        v879 = 0u;
        *v878 = 0u;
        v644 = MEMORY[0x1E69E9C10];
        v645 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v906[0]) = 136315906;
        *(v906 + 4) = "operator[]";
        WORD6(v906[0]) = 1024;
        if (v645)
        {
          v646 = 3;
        }

        else
        {
          v646 = 2;
        }

        *(v906 + 14) = 621;
        WORD1(v906[1]) = 2048;
        *(&v906[1] + 4) = v2;
        WORD6(v906[1]) = 2048;
        *(&v906[1] + 14) = v2;
        _os_log_send_and_compose_impl(v646, v905, v878, 80, &dword_1E1C61000, v644, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v906, 38, v794, v795);
        _os_crash_msg();
        __break(1u);
        goto LABEL_1457;
      }

LABEL_633:
      v230 = v13 == 2;
      v2 = v804;
      v13 = v826;
      if (!v230)
      {
        goto LABEL_1057;
      }

      v318 = v25 - v18;
      if (v25 <= v18)
      {
        goto LABEL_1057;
      }

      v18 = v18;
      while (2)
      {
        LODWORD(v878[0]) = v18;
        if (v865 == 2)
        {
          v320 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v866, v878);
          if (v320 != -1)
          {
            v319 = *(v867 + 8 * v320 + 4);
            goto LABEL_648;
          }
        }

        else
        {
          if (v865 != 1)
          {
            if (v865)
            {
              goto LABEL_1674;
            }

            if (v18 >= v866)
            {
              v319 = -1;
            }

            else
            {
              v319 = v18;
            }

LABEL_648:
            *(v9 + 8 * v18++) = *(v24 + v181 * v319);
            if (!--v318)
            {
              goto LABEL_1057;
            }

            continue;
          }

          if (v868 > v18)
          {
            v319 = *(v870 + 4 * v18);
            goto LABEL_648;
          }
        }

        break;
      }

      v319 = -1;
      goto LABEL_648;
    }

    if (v819 == 8)
    {
      if (v13 == 4)
      {
        v185 = *(v839 + 48);
        if (v185 || (v185 = *(v839 + 40)) != 0)
        {
          v186 = *(v185 + 40);
        }

        else
        {
          v186 = 0;
        }

        (*(*v92 + 24))(v92, v186);
        v93 = v839;
      }

      v187 = *(v93 + 40);
      if (v187)
      {
        v188 = (v187 + 8);
        if (*(v187 + 32) == 1 && *(v187 + 33) == 10)
        {
          v189 = (v187 + 8);
          v190 = *(v187 + 48);
          v24 = *(v187 + 24) + *(v187 + 56);
          v18 = *(v187 + 40);
          v191 = (v187 + 8);

          v808 = 0;
          v192 = 1;
          v193 = v187;
        }

        else
        {
          v263 = _ZNK2re8internal11DataPayload22computeConvertedValuesIDv4_fEENS_6ResultINS_10FixedArrayIT_EENS_13DetailedErrorEEEv(v187, v878);
          v822 = v187;
          if (LOBYTE(v878[0]) == 1)
          {
            v808 = v878[1];
            v18 = v879;
            v190 = 16;
            v264 = *(&v879 + 1);
          }

          else
          {
            if (*(&v879 + 1) && (v880 & 1) != 0)
            {
              (*(**(&v879 + 1) + 40))(v263);
            }

            v264 = 0;
            v18 = 0;
            v808 = 0;
            v190 = 0;
          }

          v187 = 0;
          v192 = v18 == 0;
          v24 = v264;
          v193 = v822;
        }
      }

      else
      {
        v24 = 0;
        v190 = 0;
        v18 = 0;
        v808 = 0;
        v192 = 1;
      }

      v827 = v192;
      if ((*(*v92 + 16))(v92))
      {
        if (!*(v92 + 5))
        {
          goto LABEL_1633;
        }

        v9 = *(v92 + 7);
        v25 = (*(*v92 + 16))(v92);
      }

      else
      {
        v25 = 0;
        v9 = 0;
      }

      v805 = v187;
      if (v13 != 3 && *(v839 + 48) != 0)
      {
        re::GeomModelDescriptor::AttributeData::makeConvertedIndices<unsigned int>(v839, v901);
        v340 = v901[1];
        v341 = LODWORD(v901[1]);
        if (LODWORD(v901[1]))
        {
          v11 = 0;
          v2 = v25;
          do
          {
            v342 = *(*&v901[0] + *(&v901[0] + 1) * v11);
            if (v342 < v18)
            {
              if (v11 >= v25)
              {
                goto LABEL_1569;
              }

              *(v9 + 16 * v11) = *(v24 + v190 * v342);
            }

            ++v11;
          }

          while (v341 != v11);
        }

        v230 = v13 == 2;
        v11 = v817;
        v2 = v805;
        v13 = v827;
        if (!v230 || v25 <= v340)
        {
          goto LABEL_1051;
        }

        while (2)
        {
          LODWORD(v878[0]) = v341;
          if (v865 == 2)
          {
            v344 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v866, v878);
            if (v344 != -1)
            {
              v343 = *(v867 + 8 * v344 + 4);
              goto LABEL_730;
            }
          }

          else
          {
            if (v865 != 1)
            {
              if (v865)
              {
                goto LABEL_1660;
              }

              if (v341 >= v866)
              {
                v343 = -1;
              }

              else
              {
                v343 = v341;
              }

LABEL_730:
              v345 = *(*&v901[0] + *(&v901[0] + 1) * v343);
              if (v345 < v18)
              {
                *(v9 + 16 * v341) = *(v24 + v190 * v345);
              }

              if (v25 == ++v341)
              {
                goto LABEL_1051;
              }

              continue;
            }

            if (v868 > v341)
            {
              v343 = *(v870 + 4 * v341);
              goto LABEL_730;
            }
          }

          break;
        }

        v343 = -1;
        goto LABEL_730;
      }

      if (v18)
      {
        v2 = v25;
        v332 = v18;
        v333 = v25;
        v334 = v9;
        v335 = v24;
        while (v333)
        {
          *v334++ = *v335;
          v335 = (v335 + v190);
          --v333;
          if (!--v332)
          {
            goto LABEL_693;
          }
        }

        goto LABEL_1465;
      }

LABEL_693:
      v230 = v13 == 2;
      v2 = v805;
      v13 = v827;
      if (!v230)
      {
        goto LABEL_1057;
      }

      v336 = v25 - v18;
      if (v25 <= v18)
      {
        goto LABEL_1057;
      }

      v18 = v18;
      while (2)
      {
        LODWORD(v878[0]) = v18;
        if (v865 == 2)
        {
          v338 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v866, v878);
          if (v338 != -1)
          {
            v337 = *(v867 + 8 * v338 + 4);
            goto LABEL_708;
          }
        }

        else
        {
          if (v865 != 1)
          {
            if (v865)
            {
              goto LABEL_1676;
            }

            if (v18 >= v866)
            {
              v337 = -1;
            }

            else
            {
              v337 = v18;
            }

LABEL_708:
            *(v9 + 16 * v18++) = *(v24 + v190 * v337);
            if (!--v336)
            {
              goto LABEL_1057;
            }

            continue;
          }

          if (v868 > v18)
          {
            v337 = *(v870 + 4 * v18);
            goto LABEL_708;
          }
        }

        break;
      }

      v337 = -1;
      goto LABEL_708;
    }

    if (v819 != 9)
    {
      if (v13 == 4)
      {
        v222 = *(v839 + 48);
        if (v222 || (v222 = *(v839 + 40)) != 0)
        {
          v223 = *(v222 + 40);
        }

        else
        {
          v223 = 0;
        }

        (*(*v92 + 24))(v92, v223);
        v93 = v839;
      }

      v224 = *(v93 + 40);
      v878[0] = v224;
      if (v224)
      {
        v225 = v224 + 8;
      }

      re::GeomModelDescriptor::makeConvertedValues<signed char>(v878, v901);
      if (v878[0])
      {
      }

      if ((*(*v92 + 16))(v92))
      {
        if (!*(v92 + 5))
        {
          goto LABEL_1629;
        }

        v227 = *(v92 + 7);
        v18 = (*(*v92 + 16))(v92);
      }

      else
      {
        v18 = 0;
        v227 = 0;
      }

      if (v13 != 3 && *(v839 + 48) != 0)
      {
        v250 = v11;
        re::GeomModelDescriptor::AttributeData::makeConvertedIndices<unsigned int>(v839, v906);
        v252 = v901[1];
        v253 = v906[1];
        v2 = LODWORD(v906[1]);
        if (LODWORD(v906[1]))
        {
          v24 = 0;
          v11 = v18;
          do
          {
            v254 = *(*&v906[0] + *(&v906[0] + 1) * v24);
            if (v254 < v252)
            {
              if (v24 >= v18)
              {
                goto LABEL_1553;
              }

              *(v227 + v24) = *(*&v901[0] + *(&v901[0] + 1) * v254);
            }

            ++v24;
          }

          while (v253 != v24);
        }

        v11 = v250;
        v24 = v842;
        v25 = v814;
        if (v13 != 2 || v18 <= v253)
        {
          goto LABEL_470;
        }

        while (2)
        {
          LODWORD(v878[0]) = v2;
          if (v865 == 2)
          {
            v256 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v866, v878);
            if (v256 != -1)
            {
              v255 = *(v867 + 8 * v256 + 4);
              goto LABEL_467;
            }
          }

          else
          {
            if (v865 != 1)
            {
              if (v865)
              {
                goto LABEL_1668;
              }

              if (v2 >= v866)
              {
                v255 = -1;
              }

              else
              {
                v255 = v2;
              }

LABEL_467:
              v257 = *(*&v906[0] + *(&v906[0] + 1) * v255);
              if (v257 < v252)
              {
                *(v227 + v2) = *(*&v901[0] + *(&v901[0] + 1) * v257);
              }

              if (v18 == ++v2)
              {
                goto LABEL_470;
              }

              continue;
            }

            if (v868 > v2)
            {
              v255 = *(v870 + 4 * v2);
              goto LABEL_467;
            }
          }

          break;
        }

        v255 = -1;
        goto LABEL_467;
      }

      v245 = v901[1];
      v246 = LODWORD(v901[1]);
      v24 = v842;
      v25 = v814;
      if (LODWORD(v901[1]))
      {
        v247 = 0;
        v2 = v18;
        while (v18 != v247)
        {
          *(v227 + v247) = *(*&v901[0] + *(&v901[0] + 1) * v247);
          if (v246 == ++v247)
          {
            goto LABEL_433;
          }
        }

        goto LABEL_1453;
      }

LABEL_433:
      if (v13 != 2 || v18 <= v245)
      {
        goto LABEL_476;
      }

      while (2)
      {
        LODWORD(v878[0]) = v246;
        if (v865 == 2)
        {
          v249 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v866, v878);
          if (v249 != -1)
          {
            v248 = *(v867 + 8 * v249 + 4);
            goto LABEL_446;
          }
        }

        else
        {
          if (v865 != 1)
          {
            if (v865)
            {
              goto LABEL_1673;
            }

            if (v246 >= v866)
            {
              v248 = -1;
            }

            else
            {
              v248 = v246;
            }

LABEL_446:
            *(v227 + v246++) = *(*&v901[0] + *(&v901[0] + 1) * v248);
            if (v18 == v246)
            {
              goto LABEL_476;
            }

            continue;
          }

          if (v868 > v246)
          {
            v248 = *(v870 + 4 * v246);
            goto LABEL_446;
          }
        }

        break;
      }

      v248 = -1;
      goto LABEL_446;
    }

    if (v13 == 4)
    {
      v125 = *(v839 + 48);
      if (v125 || (v125 = *(v839 + 40)) != 0)
      {
        v126 = *(v125 + 40);
      }

      else
      {
        v126 = 0;
      }

      (*(*v92 + 24))(v92, v126);
      v93 = v839;
    }

    v127 = *(v93 + 40);
    v878[0] = v127;
    if (v127)
    {
      v128 = v127 + 8;
    }

    re::GeomModelDescriptor::makeConvertedValues<unsigned char>(v878, v901);
    if (v878[0])
    {
    }

    if ((*(*v92 + 16))(v92))
    {
      if (*(v92 + 5))
      {
        v130 = *(v92 + 7);
        v18 = (*(*v92 + 16))(v92);
        goto LABEL_375;
      }

LABEL_1601:
      *&v905[0] = 0;
      v882 = 0u;
      v881 = 0u;
      v880 = 0u;
      v879 = 0u;
      *v878 = 0u;
      v755 = MEMORY[0x1E69E9C10];
      v756 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v906[0]) = 136315906;
      *(v906 + 4) = "operator[]";
      WORD6(v906[0]) = 1024;
      if (v756)
      {
        v757 = 3;
      }

      else
      {
        v757 = 2;
      }

      *(v906 + 14) = 789;
      WORD1(v906[1]) = 2048;
      *(&v906[1] + 4) = 0;
      WORD6(v906[1]) = 2048;
      *(&v906[1] + 14) = 0;
      _os_log_send_and_compose_impl(v757, v905, v878, 80, &dword_1E1C61000, v755, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v906, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1605:
      *&v906[0] = 0;
      v882 = 0u;
      v881 = 0u;
      v880 = 0u;
      v879 = 0u;
      *v878 = 0u;
      v758 = MEMORY[0x1E69E9C10];
      v759 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v901[0]) = 136315906;
      *(v901 + 4) = "operator[]";
      WORD6(v901[0]) = 1024;
      if (v759)
      {
        v760 = 3;
      }

      else
      {
        v760 = 2;
      }

      *(v901 + 14) = 789;
      WORD1(v901[1]) = 2048;
      *(&v901[1] + 4) = 0;
      WORD6(v901[1]) = 2048;
      *(&v901[1] + 14) = 0;
      _os_log_send_and_compose_impl(v760, v906, v878, 80, &dword_1E1C61000, v758, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v901, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
      goto LABEL_1609;
    }

    v18 = 0;
    v130 = 0;
LABEL_375:
    v230 = v13 == 3 || *(v839 + 48) == 0;
    if (v230)
    {
      v231 = v901[1];
      v232 = LODWORD(v901[1]);
      v24 = v842;
      v25 = v814;
      if (LODWORD(v901[1]))
      {
        v233 = 0;
        v2 = v18;
        while (v18 != v233)
        {
          *(v130 + v233) = *(*&v901[0] + *(&v901[0] + 1) * v233);
          if (v232 == ++v233)
          {
            goto LABEL_384;
          }
        }

        goto LABEL_1469;
      }

LABEL_384:
      if (v13 != 2 || v18 <= v231)
      {
        goto LABEL_476;
      }

      while (2)
      {
        LODWORD(v878[0]) = v232;
        if (v865 == 2)
        {
          v235 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v866, v878);
          if (v235 != -1)
          {
            v234 = *(v867 + 8 * v235 + 4);
            goto LABEL_397;
          }
        }

        else
        {
          if (v865 != 1)
          {
            if (v865)
            {
              goto LABEL_1679;
            }

            if (v232 >= v866)
            {
              v234 = -1;
            }

            else
            {
              v234 = v232;
            }

LABEL_397:
            *(v130 + v232++) = *(*&v901[0] + *(&v901[0] + 1) * v234);
            if (v18 == v232)
            {
              goto LABEL_476;
            }

            continue;
          }

          if (v868 > v232)
          {
            v234 = *(v870 + 4 * v232);
            goto LABEL_397;
          }
        }

        break;
      }

      v234 = -1;
      goto LABEL_397;
    }

    v236 = v11;
    re::GeomModelDescriptor::AttributeData::makeConvertedIndices<unsigned int>(v839, v906);
    v238 = v901[1];
    v239 = v906[1];
    v2 = LODWORD(v906[1]);
    if (LODWORD(v906[1]))
    {
      v24 = 0;
      v11 = v18;
      do
      {
        v240 = *(*&v906[0] + *(&v906[0] + 1) * v24);
        if (v240 < v238)
        {
          if (v24 >= v18)
          {
            goto LABEL_1577;
          }

          *(v130 + v24) = *(*&v901[0] + *(&v901[0] + 1) * v240);
        }

        ++v24;
      }

      while (v239 != v24);
    }

    v11 = v236;
    v24 = v842;
    v25 = v814;
    if (v13 == 2 && v18 > v239)
    {
      while (2)
      {
        LODWORD(v878[0]) = v2;
        if (v865 == 2)
        {
          v242 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v866, v878);
          if (v242 != -1)
          {
            v241 = *(v867 + 8 * v242 + 4);
            goto LABEL_418;
          }
        }

        else
        {
          if (v865 != 1)
          {
            if (v865)
            {
              goto LABEL_1664;
            }

            if (v2 >= v866)
            {
              v241 = -1;
            }

            else
            {
              v241 = v2;
            }

LABEL_418:
            v243 = *(*&v906[0] + *(&v906[0] + 1) * v241);
            if (v243 < v238)
            {
              *(v130 + v2) = *(*&v901[0] + *(&v901[0] + 1) * v243);
            }

            if (v18 == ++v2)
            {
              goto LABEL_470;
            }

            continue;
          }

          if (v868 > v2)
          {
            v241 = *(v870 + 4 * v2);
            goto LABEL_418;
          }
        }

        break;
      }

      v241 = -1;
      goto LABEL_418;
    }

LABEL_470:
    if (*&v906[2])
    {
      if (*(&v906[2] + 1))
      {
        (*(**&v906[2] + 40))();
        *(&v906[2] + 1) = 0;
        *&v906[3] = 0;
      }

      *&v906[2] = 0;
    }

    if (*(&v906[1] + 1))
    {
    }

LABEL_476:
    v8 = v853;
    v23 = 56;
    if (*&v901[2])
    {
      if (*(&v901[2] + 1))
      {
        (*(**&v901[2] + 40))();
        *(&v901[2] + 1) = 0;
        *&v902[0] = 0;
      }

      *&v901[2] = 0;
    }

    v258 = *(&v901[1] + 1);
    if (*(&v901[1] + 1))
    {
      goto LABEL_991;
    }

LABEL_1063:
    LODWORD(v847) = 1;
    v47 = v835;
LABEL_90:
    v56 = v854;
LABEL_149:
    v49 = v56 + 1;
    if (v49 != v25)
    {
      continue;
    }

    break;
  }

LABEL_1075:
  if (*v24 == 1)
  {
    v438 = re::GeomMesh::addAttribute(&v858, "osdSubdivisionScheme", 0, 1);
    if (v438)
    {
      *re::internal::GeomTypedAttribute<unsigned short>::operator[](v438) = 1;
    }
  }

  LOBYTE(v13) = v816;
  if (*(v24 + 1) != 1)
  {
    goto LABEL_1141;
  }

  re::GeomMeshBuilder::GeomMeshBuilder(v878, &v858);
  v439 = v880;
  if (v880)
  {
    v440 = 0;
    v441 = v881;
    v442 = v881;
    do
    {
      v443 = v442[3];
      if (v443 == -1)
      {
        v445 = *v442;
        v446 = -1;
        v444 = v442;
      }

      else
      {
        v444 = (v441 + 16 * v440 + 4);
        v446 = *v442;
        v445 = v442[1];
        *v442 = v443;
      }

      *v444 = v442[2];
      v442[2] = v445;
      v442[3] = v446;
      ++v440;
      v442 += 4;
      --v439;
    }

    while (v439);
  }

  v837 = v14;
  v447 = v890;
  if (v890)
  {
    LODWORD(v18) = 0;
    v2 = v908;
    v9 = 1;
    do
    {
      v448 = re::internal::GeomAttributeContainer::attributeByIndex(v889, v18);
      v450 = re::internal::accessFaceVaryingAttributeSubmesh(v448, v449);
      *v908 = *v450;
      re::DynamicArray<re::GeomCell4>::DynamicArray(&v908[8], (v450 + 8));
      if (!*&v908[16])
      {
        re::DynamicArray<re::BlendNode>::setCapacity(&v908[8], 1uLL);
      }

      *&v906[0] = *(v450 + 128);
      DWORD2(v906[0]) = *(v450 + 136);
      BYTE12(v906[0]) = *(v450 + 140);
      if (BYTE12(v906[0]) == 2)
      {
        re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrown(&v906[1], v450 + 144);
      }

      else if (BYTE12(v906[0]) == 1)
      {
        re::DynamicArray<float>::DynamicArray(&v906[1], (v450 + 144));
      }

      else
      {
        if (BYTE12(v906[0]))
        {
          goto LABEL_1655;
        }

        LODWORD(v906[1]) = *(v450 + 144);
      }

      *&v905[0] = *(v450 + 48);
      DWORD2(v905[0]) = *(v450 + 56);
      BYTE12(v905[0]) = *(v450 + 60);
      if (BYTE12(v905[0]) == 2)
      {
        re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrown(&v905[1], v450 + 64);
      }

      else if (BYTE12(v905[0]) == 1)
      {
        re::DynamicArray<float>::DynamicArray(&v905[1], (v450 + 64));
      }

      else
      {
        if (BYTE12(v905[0]))
        {
          goto LABEL_1656;
        }

        LODWORD(v905[1]) = *(v450 + 64);
      }

      v452 = *&v908[24];
      if (*&v908[24])
      {
        v453 = 0;
        v454 = v909;
        v455 = v909;
        v456 = *&v908[24];
        do
        {
          v457 = v455[3];
          if (v457 == -1)
          {
            v459 = *v455;
            v460 = -1;
            v458 = v455;
          }

          else
          {
            v458 = &v454[4 * v453 + 1];
            v460 = *v455;
            v459 = v455[1];
            *v455 = v457;
          }

          *v458 = v455[2];
          v455[2] = v459;
          v455[3] = v460;
          ++v453;
          v455 += 4;
          --v456;
        }

        while (v456);
      }

      LODWORD(v901[0]) = *v908;
      *(&v901[0] + 1) = *&v908[8];
      *&v901[1] = *&v908[16];
      memset(&v908[8], 0, 24);
      *(&v901[1] + 1) = v452;
      *(&v901[2] + 1) = v909;
      v909 = 0;
      LODWORD(v901[2]) = 1;
      *v908 = 0;
      *&v908[32] += 2;
      re::GeomIndexMap::GeomIndexMap(v902, v906);
      re::GeomIndexMap::GeomIndexMap(&v904, v905);
      re::internal::GeomAttributeManager::updateFaceVaryingAttributeSubmesh(&v881 + 1, v448[1], v901);
      re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh(v901, v461);
      if (BYTE12(v905[0]))
      {
        if (BYTE12(v905[0]) == 2)
        {
          v463.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v905[1]);
        }

        else
        {
          if (BYTE12(v905[0]) != 1)
          {
            re::internal::assertLog(4, v462, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
            _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
            __break(1u);
LABEL_1654:
            re::internal::assertLog(4, v462, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
            _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
            __break(1u);
LABEL_1655:
            re::internal::assertLog(4, v451, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "GeomIndexMap", 433);
            _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
            __break(1u);
LABEL_1656:
            re::internal::assertLog(4, v451, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "GeomIndexMap", 433);
            _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
            __break(1u);
LABEL_1657:
            re::internal::assertLog(4, v490, v491, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
            _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
            __break(1u);
            goto LABEL_1658;
          }

          if (*&v905[1])
          {
            v462 = *&v905[3];
            if (*&v905[3])
            {
              (*(**&v905[1] + 40))();
            }
          }
        }
      }

      if (BYTE12(v906[0]))
      {
        if (BYTE12(v906[0]) == 2)
        {
          v463.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v906[1]);
        }

        else
        {
          if (BYTE12(v906[0]) != 1)
          {
            goto LABEL_1654;
          }

          if (*&v906[1] && *&v906[3])
          {
            (*(**&v906[1] + 40))(v463);
          }
        }
      }

      if (*&v908[8] && v909)
      {
        (*(**&v908[8] + 40))(v463);
      }

      v18 = (v18 + 1);
    }

    while (v18 != v447);
  }

  re::GeomMesh::operator=(&v858, &v878[1]);
  re::GeomMesh::setName(&v858, v878[0]);
  re::GeomMesh::freeName(v878);
  v464 = 0uLL;
  memset(v905, 0, 64);
  v874 = &v871;
  v875 = 0;
  v465 = *&v872[0];
  if (*&v872[0] < 0x10uLL)
  {
    v466 = 0;
    v467 = 0;
    v468 = 0uLL;
    v469 = 0uLL;
    goto LABEL_1138;
  }

  v470 = 0;
  v471 = v871;
  v472 = *&v872[0] >> 4;
  while (1)
  {
    v473 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v471), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
    v875 = v473 ^ 0xFFFFLL;
    if (v473 != 0xFFFFLL)
    {
      break;
    }

    v470 -= 16;
    ++v471;
    if (!--v472)
    {
      goto LABEL_1137;
    }
  }

  v480 = __clz(__rbit64(v473 ^ 0xFFFFLL));
  v481 = v480 - v470;
  v876 = v480 - v470;
  if (v480 + 1 == v470)
  {
LABEL_1137:
    v466 = 0;
    v467 = 0;
    v468 = 0uLL;
    v469 = 0uLL;
    v464 = 0uLL;
    goto LABEL_1138;
  }

  v23 = v901;
  while (2)
  {
    v24 = *(v874 + 1) + 96 * v481;
    v873 = *v24;
    v903 = 0;
    memset(v901, 0, sizeof(v901));
    memset(v902, 0, 28);
    v509 = re::FixedArray<unsigned int>::operator=(&v901[1] + 1, (v24 + 32));
    v510 = *(v24 + 16);
    v14 = v510 - 1;
    if (v510)
    {
      v11 = *(v24 + 16);
      v13 = *(&v901[0] + 1);
      v511 = *&v901[1];
      v512 = *(&v901[0] + 1);
      v25 = v14;
      while (v11 > v25)
      {
        if (!v512)
        {
          goto LABEL_1388;
        }

        *v511++ = *(*(v24 + 24) + 4 * v25--);
        --v512;
        if (v25 == -1)
        {
          goto LABEL_1194;
        }
      }

LABEL_1384:
      v877 = 0;
      v907 = 0u;
      memset(v906, 0, sizeof(v906));
      v593 = MEMORY[0x1E69E9C10];
      v594 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v908 = 136315906;
      *&v908[4] = "operator[]";
      *&v908[12] = 1024;
      if (v594)
      {
        v595 = 3;
      }

      else
      {
        v595 = 2;
      }

      *&v908[14] = 476;
      *&v908[18] = 2048;
      *&v908[20] = v25;
      *&v908[28] = 2048;
      *&v908[30] = v11;
      _os_log_send_and_compose_impl(v595, &v877, v906, 80, &dword_1E1C61000, v593, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v908, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1388:
      v877 = 0;
      v907 = 0u;
      memset(v906, 0, sizeof(v906));
      v596 = MEMORY[0x1E69E9C10];
      v597 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v908 = 136315906;
      *&v908[4] = "operator[]";
      *&v908[12] = 1024;
      if (v597)
      {
        v598 = 3;
      }

      else
      {
        v598 = 2;
      }

      *&v908[14] = 468;
      *&v908[18] = 2048;
      *&v908[20] = v13;
      *&v908[28] = 2048;
      *&v908[30] = v13;
      _os_log_send_and_compose_impl(v598, &v877, v906, 80, &dword_1E1C61000, v596, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v908, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1392:
      v877 = 0;
      v907 = 0u;
      memset(v906, 0, sizeof(v906));
      v599 = MEMORY[0x1E69E9C10];
      v600 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v908 = 136315906;
      *&v908[4] = "operator[]";
      *&v908[12] = 1024;
      if (v600)
      {
        v601 = 3;
      }

      else
      {
        v601 = 2;
      }

      *&v908[14] = 797;
      *&v908[18] = 2048;
      *&v908[20] = v2;
      *&v908[28] = 2048;
      *&v908[30] = v25;
      _os_log_send_and_compose_impl(v601, &v877, v906, 80, &dword_1E1C61000, v599, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v908, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1396:
      v877 = 0;
      v907 = 0u;
      memset(v906, 0, sizeof(v906));
      v602 = MEMORY[0x1E69E9C10];
      v603 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v908 = 136315906;
      *&v908[4] = "operator[]";
      *&v908[12] = 1024;
      if (v603)
      {
        v604 = 3;
      }

      else
      {
        v604 = 2;
      }

      *&v908[14] = 789;
      *&v908[18] = 2048;
      *&v908[20] = v13;
      *&v908[28] = 2048;
      *&v908[30] = v11;
      _os_log_send_and_compose_impl(v604, &v877, v906, 80, &dword_1E1C61000, v602, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v908, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1400:
      v877 = 0;
      v907 = 0u;
      memset(v906, 0, sizeof(v906));
      v605 = MEMORY[0x1E69E9C10];
      v606 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v908 = 136315906;
      *&v908[4] = "operator[]";
      *&v908[12] = 1024;
      if (v606)
      {
        v607 = 3;
      }

      else
      {
        v607 = 2;
      }

      *&v908[14] = 797;
      *&v908[18] = 2048;
      *&v908[20] = v18;
      *&v908[28] = 2048;
      *&v908[30] = v25;
      _os_log_send_and_compose_impl(v607, &v877, v906, 80, &dword_1E1C61000, v605, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v908, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1404:
      v877 = 0;
      v907 = 0u;
      memset(v906, 0, sizeof(v906));
      v608 = MEMORY[0x1E69E9C10];
      v609 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v908 = 136315906;
      *&v908[4] = "operator[]";
      *&v908[12] = 1024;
      if (v609)
      {
        v610 = 3;
      }

      else
      {
        v610 = 2;
      }

      *&v908[14] = 789;
      *&v908[18] = 2048;
      *&v908[20] = v13 + 1;
      *&v908[28] = 2048;
      *&v908[30] = v11;
      _os_log_send_and_compose_impl(v610, &v877, v906, 80, &dword_1E1C61000, v608, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v908, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1408:
      v877 = 0;
      v907 = 0u;
      memset(v906, 0, sizeof(v906));
      v611 = MEMORY[0x1E69E9C10];
      v612 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v908 = 136315906;
      *&v908[4] = "operator[]";
      *&v908[12] = 1024;
      if (v612)
      {
        v613 = 3;
      }

      else
      {
        v613 = 2;
      }

      *&v908[14] = 789;
      *&v908[18] = 2048;
      *&v908[20] = v13 + 2;
      *&v908[28] = 2048;
      *&v908[30] = v11;
      _os_log_send_and_compose_impl(v613, &v877, v906, 80, &dword_1E1C61000, v611, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v908, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1412:
      *v908 = 0;
      memset(v902, 0, sizeof(v902));
      memset(v901, 0, sizeof(v901));
      v614 = MEMORY[0x1E69E9C10];
      v615 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v906[0]) = 136315906;
      *(v906 + 4) = "operator[]";
      WORD6(v906[0]) = 1024;
      if (v615)
      {
        v616 = 3;
      }

      else
      {
        v616 = 2;
      }

      *(v906 + 14) = 468;
      WORD1(v906[1]) = 2048;
      *(&v906[1] + 4) = v18;
      WORD6(v906[1]) = 2048;
      *(&v906[1] + 14) = v18;
      _os_log_send_and_compose_impl(v616, v908, v901, 80, &dword_1E1C61000, v614, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v906, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1416:
      re::internal::assertLog(4, v17, "assertion failure: '%s' (%s:line %i) ", "vertexCountPerPolygon.size() == originalPolygonCount", "buildPositionsOnlyMeshHelper", 64);
      _os_crash("assertion failure: (vertexCountPerPolygon.size() == originalPolygonCount) ");
      __break(1u);
LABEL_1417:
      *&v905[0] = 0;
      memset(v902, 0, sizeof(v902));
      memset(v901, 0, sizeof(v901));
      v617 = MEMORY[0x1E69E9C10];
      v618 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v906[0]) = 136315906;
      *(v906 + 4) = "operator[]";
      WORD6(v906[0]) = 1024;
      if (v618)
      {
        v619 = 3;
      }

      else
      {
        v619 = 2;
      }

      *(v906 + 14) = 621;
      WORD1(v906[1]) = 2048;
      *(&v906[1] + 4) = v18;
      WORD6(v906[1]) = 2048;
      *(&v906[1] + 14) = v18;
      _os_log_send_and_compose_impl(v619, v905, v901, 80, &dword_1E1C61000, v617, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v906, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1421:
      v874 = 0;
      v882 = 0u;
      v881 = 0u;
      v880 = 0u;
      v879 = 0u;
      *v878 = 0u;
      v620 = MEMORY[0x1E69E9C10];
      v621 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v908 = 136315906;
      *&v908[4] = "operator[]";
      *&v908[12] = 1024;
      if (v621)
      {
        v622 = 3;
      }

      else
      {
        v622 = 2;
      }

      *&v908[14] = 789;
      *&v908[18] = 2048;
      *&v908[20] = v2;
      *&v908[28] = 2048;
      *&v908[30] = v18;
      _os_log_send_and_compose_impl(v622, &v874, v878, 80, &dword_1E1C61000, v620, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v908, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1425:
      v874 = 0;
      v882 = 0u;
      v881 = 0u;
      v880 = 0u;
      v879 = 0u;
      *v878 = 0u;
      v623 = MEMORY[0x1E69E9C10];
      v624 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v908 = 136315906;
      *&v908[4] = "operator[]";
      *&v908[12] = 1024;
      if (v624)
      {
        v625 = 3;
      }

      else
      {
        v625 = 2;
      }

      *&v908[14] = 789;
      *&v908[18] = 2048;
      *&v908[20] = v2;
      *&v908[28] = 2048;
      *&v908[30] = v18;
      _os_log_send_and_compose_impl(v625, &v874, v878, 80, &dword_1E1C61000, v623, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v908, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1429:
      *v908 = 0;
      v882 = 0u;
      v881 = 0u;
      v880 = 0u;
      v879 = 0u;
      *v878 = 0u;
      v626 = MEMORY[0x1E69E9C10];
      v627 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v901[0]) = 136315906;
      *(v901 + 4) = "operator[]";
      WORD6(v901[0]) = 1024;
      if (v627)
      {
        v628 = 3;
      }

      else
      {
        v628 = 2;
      }

      *(v901 + 14) = 789;
      WORD1(v901[1]) = 2048;
      *(&v901[1] + 4) = v23;
      WORD6(v901[1]) = 2048;
      *(&v901[1] + 14) = v18;
      _os_log_send_and_compose_impl(v628, v908, v878, 80, &dword_1E1C61000, v626, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v901, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1433:
      *v908 = 0;
      v882 = 0u;
      v881 = 0u;
      v880 = 0u;
      v879 = 0u;
      *v878 = 0u;
      v629 = MEMORY[0x1E69E9C10];
      v630 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v901[0]) = 136315906;
      *(v901 + 4) = "operator[]";
      WORD6(v901[0]) = 1024;
      if (v630)
      {
        v631 = 3;
      }

      else
      {
        v631 = 2;
      }

      *(v901 + 14) = 789;
      WORD1(v901[1]) = 2048;
      *(&v901[1] + 4) = v23;
      WORD6(v901[1]) = 2048;
      *(&v901[1] + 14) = v18;
      _os_log_send_and_compose_impl(v631, v908, v878, 80, &dword_1E1C61000, v629, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v901, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1437:
      v877 = 0;
      v907 = 0u;
      memset(v906, 0, sizeof(v906));
      v632 = MEMORY[0x1E69E9C10];
      v633 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v908 = 136315906;
      *&v908[4] = "operator[]";
      *&v908[12] = 1024;
      if (v633)
      {
        v634 = 3;
      }

      else
      {
        v634 = 2;
      }

      *&v908[14] = 468;
      *&v908[18] = 2048;
      *&v908[20] = v18;
      *&v908[28] = 2048;
      *&v908[30] = v18;
      _os_log_send_and_compose_impl(v634, &v877, v906, 80, &dword_1E1C61000, v632, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v908, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
LABEL_1441:
      *&v906[0] = 0;
      v882 = 0u;
      v881 = 0u;
      v880 = 0u;
      v879 = 0u;
      *v878 = 0u;
      v635 = MEMORY[0x1E69E9C10];
      v636 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v901[0]) = 136315906;
      *(v901 + 4) = "operator[]";
      WORD6(v901[0]) = 1024;
      if (v636)
      {
        v637 = 3;
      }

      else
      {
        v637 = 2;
      }

      *(v901 + 14) = 621;
      WORD1(v901[1]) = 2048;
      *(&v901[1] + 4) = v2;
      WORD6(v901[1]) = 2048;
      *(&v901[1] + 14) = v2;
      _os_log_send_and_compose_impl(v637, v906, v878, 80, &dword_1E1C61000, v635, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v901, 38, v794, v795);
      _os_crash_msg();
      __break(1u);
      goto LABEL_1445;
    }

LABEL_1194:
    v9 = *(v24 + 72);
    re::DynamicArray<float>::operator=(v902, (v24 + 56));
    if (v9)
    {
      v13 = 0;
      v25 = *(v24 + 72);
      v11 = *&v902[1];
      v513 = v903 + 2;
      v514 = 4;
      do
      {
        v2 = v13 + 2;
        if (v25 <= v13 + 2)
        {
          goto LABEL_1392;
        }

        if (v11 <= v13)
        {
          goto LABEL_1396;
        }

        v515 = *(v24 + 88);
        *(v513 - 2) = v14 - *(v515 + v514 + 4);
        v18 = v13 + 1;
        if (v25 <= v13 + 1)
        {
          goto LABEL_1400;
        }

        if (v11 <= v18)
        {
          goto LABEL_1404;
        }

        *(v513 - 1) = v14 - *(v515 + v514);
        if (v11 <= v2)
        {
          goto LABEL_1408;
        }

        *v513 = v14 - *(v515 + v514 - 4);
        v513 += 3;
        v13 += 3;
        v514 += 12;
      }

      while (v13 < v9);
    }

    re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::addNew(v905, &v873, v901);
    if (*&v902[0])
    {
      if (v903)
      {
        (*(**&v902[0] + 40))();
      }

      v903 = 0;
      memset(v902, 0, 24);
      ++DWORD2(v902[1]);
    }

    if (*(&v901[1] + 1))
    {
      if (*&v901[2])
      {
        (*(**(&v901[1] + 1) + 40))();
        v901[2] = 0uLL;
      }

      *(&v901[1] + 1) = 0;
    }

    if (*&v901[0] && *(&v901[0] + 1))
    {
      (*(**&v901[0] + 40))();
    }

    re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v874);
    v481 = v876;
    if (v876 != -1)
    {
      continue;
    }

    break;
  }

  v465 = *&v872[0];
  v467 = *(&v905[3] + 1);
  v466 = *&v905[3];
  v464 = v905[0];
  v468 = v905[1];
  v469 = v905[2];
LABEL_1138:
  v482 = *(&v872[2] + 1);
  *(&v872[2] + 1) = v467;
  v905[0] = v871;
  *(&v905[3] + 1) = v482;
  *&v905[1] = v465;
  v483 = *(&v872[1] + 8);
  v484 = *(v872 + 8);
  *&v872[2] = v466;
  *(&v905[2] + 8) = v483;
  v871 = v464;
  v872[0] = v468;
  v872[1] = v469;
  *(&v905[1] + 8) = v484;
  re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::deinit(v905);
  re::GeomMesh::freeName(v878);
  re::internal::GeomAttributeManager::~GeomAttributeManager((&v881 + 8));
  v11 = v817;
  v14 = v837;
  LOBYTE(v13) = v816;
  if (v879 && v881)
  {
    (*(*v879 + 40))();
  }

LABEL_1141:
  re::GeomMesh::GeomMesh(v878, &v858);
  v891 = v863;
  re::GeomIndexMap::GeomIndexMap(v892, &v863 + 8);
  v900 = v872[2];
  v485 = v871;
  v486 = v872[0];
  v871 = 0u;
  memset(v872, 0, sizeof(v872));
  v897 = v485;
  v898 = v486;
  v899 = v872[1];
  *a1 = 1;
  re::GeomMesh::GeomMesh((a1 + 1), v878);
  a1[93] = v891;
  re::GeomIndexMap::GeomIndexMap((a1 + 94), v892);
  *(a1 + 55) = v900;
  v900 = 0u;
  v487 = v898;
  *(a1 + 52) = v897;
  *(a1 + 53) = v487;
  v897 = 0u;
  v898 = 0u;
  *(a1 + 54) = v899;
  v899 = 0u;
  v489 = re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::deinit(&v897);
  if (v893 == 2)
  {
    re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v894);
    v12 = v838;
LABEL_1150:
    re::GeomMesh::~GeomMesh(v878);
    if (v855 && (v856 & 1) != 0)
    {
      (*(*v855 + 40))();
    }

    goto LABEL_1153;
  }

  v12 = v838;
  if (v893 == 1)
  {
    if (v894[0])
    {
      if (v896)
      {
        (*(*v894[0] + 40))(v489);
      }

      v896 = 0;
      memset(v894, 0, sizeof(v894));
      ++v895;
    }

    goto LABEL_1150;
  }

  if (!v893)
  {
    LODWORD(v894[0]) = 0;
    goto LABEL_1150;
  }

LABEL_1658:
  re::internal::assertLog(4, v488, v489, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1659:
  re::internal::assertLog(4, v393, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1660:
  re::internal::assertLog(4, v339, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1661:
  re::internal::assertLog(4, v355, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1662:
  re::internal::assertLog(4, v431, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1663:
  re::internal::assertLog(4, v412, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1664:
  re::internal::assertLog(4, v237, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1665:
  re::internal::assertLog(4, v373, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1666:
  re::internal::assertLog(4, v284, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1667:
  re::internal::assertLog(4, v303, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1668:
  re::internal::assertLog(4, v251, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1669:
  re::internal::assertLog(4, v321, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1670:
  re::internal::assertLog(4, v403, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1671:
  re::internal::assertLog(4, v272, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1672:
  re::internal::assertLog(4, v294, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1673:
  re::internal::assertLog(4, v226, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1674:
  re::internal::assertLog(4, v312, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1675:
  re::internal::assertLog(4, v383, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1676:
  re::internal::assertLog(4, v330, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1677:
  re::internal::assertLog(4, v346, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1678:
  re::internal::assertLog(4, v422, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1679:
  re::internal::assertLog(4, v129, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1680:
  re::internal::assertLog(4, v364, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1681:
  re::internal::assertLog(4, v559, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1682:
  re::internal::assertLog(4, v548, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
}

void re::makeGeomModelFromModelDescriptor(uint64_t *__return_ptr a1@<X8>, re *this@<X0>)
{
  v201 = *MEMORY[0x1E69E9840];
  re::makeGeomMeshFromModelDescriptor(&v111, this);
  if ((v111 & 1) == 0)
  {
    v161[0] = v112;
    re::DynamicString::DynamicString(&v161[1], &v113);
    *a1 = 0;
    *(a1 + 1) = v161[0];
    a1[3] = *&v161[1];
    a1[6] = *(&v161[2] + 1);
    *(a1 + 2) = *(&v161[1] + 8);
    goto LABEL_198;
  }

  v4 = &v177;
  v5 = &v145;
  v6 = *(this + 1);
  if (!v6)
  {
    re::GeomModel::GeomModel(v161);
    if (!*(&v161[2] + 1))
    {
      re::DynamicArray<re::GeomMesh>::setCapacity(&v161[2], 1uLL);
    }

    re::DynamicArray<re::GeomMesh>::add(&v161[2], &v112);
    if (!v164)
    {
      re::DynamicArray<int>::setCapacity(&v163 + 1, 1uLL);
    }

    LODWORD(v181) = *(this + 1);
    re::DynamicArray<int>::add((&v163 + 8), &v181);
    v17 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(&v181, this + 136);
    v18 = v174;
    if (v174 >= v173)
    {
      v19 = v174 + 1;
      if (v173 < v174 + 1)
      {
        if (v172)
        {
          v20 = 8;
          if (v173)
          {
            v20 = 2 * v173;
          }

          if (v20 <= v19)
          {
            v21 = v174 + 1;
          }

          else
          {
            v21 = v20;
          }

          re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::setCapacity(&v172, v21);
        }

        else
        {
          re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::setCapacity(&v172, v19);
          ++v175;
        }
      }

      v18 = v174;
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v176 + 48 * v18, &v181);
    ++v174;
    ++v175;
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v181);
    v135 = 0;
    v132 = 0;
    v133 = 0uLL;
    v134 = 0;
    v130 = 0;
    v127 = 0;
    v128 = 0uLL;
    v129 = 0;
    re::DynamicArray<re::GeomIndexMap>::resize(&v132, 1uLL);
    re::DynamicArray<re::GeomIndexMap>::resize(&v127, 1uLL);
    v64 = 0;
    v65 = *(this + 4);
    *&v150[0] = 0xFFFFFFFF00000000;
    DWORD2(v150[0]) = -1;
    BYTE12(v150[0]) = 0;
    if (v65 - 1 <= 0xFFFFFFFD)
    {
      DWORD2(v150[0]) = v65 - 1;
      v64 = v65;
      *&v150[0] = v65;
    }

    LODWORD(v150[1]) = v64;
    if (!*(&v133 + 1))
    {
      goto LABEL_249;
    }

    re::GeomIndexMap::operator=(v135, v150);
    if (BYTE12(v150[0]))
    {
      if (BYTE12(v150[0]) == 2)
      {
        re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v150[1]);
      }

      else
      {
        if (BYTE12(v150[0]) != 1)
        {
          goto LABEL_260;
        }

        if (*&v150[1] && v151)
        {
          (*(**&v150[1] + 40))();
        }
      }
    }

    if (!*(&v128 + 1))
    {
LABEL_253:
      *&v177 = 0;
      v184 = 0u;
      v183 = 0u;
      memset(v182, 0, sizeof(v182));
      v181 = 0u;
      v97 = MEMORY[0x1E69E9C10];
      v98 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v150[0]) = 136315906;
      *(v5 + 68) = "operator[]";
      WORD6(v150[0]) = 1024;
      if (v98)
      {
        v99 = 3;
      }

      else
      {
        v99 = 2;
      }

      *(v5 + 78) = 789;
      WORD1(v150[1]) = 2048;
      *(v5 + 84) = 0;
      WORD6(v150[1]) = 2048;
      *(v5 + 94) = 0;
      _os_log_send_and_compose_impl(v99, &v177, &v181, 80, &dword_1E1C61000, v97, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v150, 38, v100, v101);
      _os_crash_msg();
      __break(1u);
    }

    re::GeomIndexMap::operator=(v130, &v116);
    LOBYTE(v181) = 1;
    *(&v181 + 1) = v132;
    v182[0] = v133;
    v132 = 0;
    v133 = 0uLL;
    *(&v182[1] + 1) = v135;
    v135 = 0;
    ++v134;
    LODWORD(v182[1]) = 1;
    re::Optional<re::DynamicArray<re::GeomIndexMap>>::operator=(v168, &v181);
    if (v181 == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit(&v181 + 8);
    }

    LOBYTE(v181) = 1;
    *(&v181 + 1) = v127;
    v182[0] = v128;
    v127 = 0;
    v128 = 0uLL;
    *(&v182[1] + 1) = v130;
    v130 = 0;
    ++v129;
    LODWORD(v182[1]) = 1;
    re::Optional<re::DynamicArray<re::GeomIndexMap>>::operator=(v170, &v181);
    if (v181 == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit(&v181 + 8);
    }

    re::DynamicString::operator=(v161, (this + 184));
    re::Ok<re::GeomModel,re::GeomModel>(&v181, v161);
    re::Result<re::GeomModel,re::DetailedError>::Result(a1, &v181);
    re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(v193);
    if (v191[0] == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit(v192);
    }

    if (v189[0] == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit(v190);
    }

    if (*(&v184 + 1))
    {
      if (v188)
      {
        (*(**(&v184 + 1) + 40))();
      }

      v188 = 0;
      v185 = 0;
      v186 = 0;
      *(&v184 + 1) = 0;
      ++v187;
    }

    re::DynamicArray<re::GeomMesh>::deinit(&v182[1]);
    if (v181 && (BYTE8(v181) & 1) != 0)
    {
      (*(*v181 + 40))();
    }

    re::DynamicArray<re::GeomIndexMap>::deinit(&v127);
    re::DynamicArray<re::GeomIndexMap>::deinit(&v132);
    re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(&v172);
    if (v170[0] == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit(&v171);
    }

    if (v168[0] == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit(&v169);
    }

    if (*(&v163 + 1))
    {
      if (v167)
      {
        (*(**(&v163 + 1) + 40))();
      }

      v167 = 0;
      v164 = 0;
      v165 = 0;
      *(&v163 + 1) = 0;
      ++v166;
    }

    re::DynamicArray<re::GeomMesh>::deinit(&v161[2]);
    if (*&v161[0] && (BYTE8(v161[0]) & 1) != 0)
    {
      (*(**&v161[0] + 40))();
    }

LABEL_198:
    if (v111 == 1)
    {
      v68 = re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::deinit(&v122);
      if (v118 == 2)
      {
        re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v119);
      }

      else if (v118 == 1)
      {
        if (v119[0])
        {
          if (v121)
          {
            (*(*v119[0] + 40))(v68);
          }

          v121 = 0;
          memset(v119, 0, sizeof(v119));
          ++v120;
        }
      }

      else
      {
        if (v118)
        {
          goto LABEL_259;
        }

        LODWORD(v119[0]) = 0;
      }

      re::GeomMesh::~GeomMesh(&v112);
    }

    else if (v113 && (v114 & 1) != 0)
    {
      (*(*v113 + 40))();
    }

    return;
  }

  v7 = (v6 + 8);
  v8 = *(v6 + 33);
  if (v8 >= 6)
  {
    v9 = v8 == 5;
  }

  else
  {
    v9 = 0x30u >> v8;
  }

  if (v9 & 1) != 0 && (*(v6 + 32))
  {
    v10 = (v6 + 8);
    v11 = *(v6 + 48);
    v109 = (*(v6 + 24) + *(v6 + 56));
    v12 = (v6 + 8);

    v13 = 0;
    v14 = 0;
    v15 = 1;
    v16 = v6;
  }

  else
  {
    v22 = re::internal::DataPayload::computePoDConversionHelper<unsigned int>(v6, v161);
    if (LOBYTE(v161[0]) == 1)
    {
      v13 = *(&v161[0] + 1);
      v14 = *(&v161[1] + 1);
      v15 = *&v161[1] == 0;
      v11 = 4;
    }

    else
    {
      if (*(&v161[1] + 1) && (v161[2] & 1) != 0)
      {
        (*(**(&v161[1] + 1) + 40))(v22);
      }

      v13 = 0;
      v14 = 0;
      v11 = 0;
      v15 = 1;
    }

    v16 = 0;
    v109 = v14;
  }

  if (*(this + 3) != v115)
  {
    v32 = v161[0];
    v33 = v161[1];
    *a1 = 0;
    a1[1] = 100;
    a1[2] = re::AssetErrorCategory(void)::instance;
    *(a1 + 3) = v32;
    *(a1 + 5) = v33;
LABEL_155:
    if (v13 != 0 && !v15)
    {
      (*(*v13 + 40))(v13, v14);
    }

    if (v16)
    {
    }

    goto LABEL_198;
  }

  v104 = v13;
  v105 = v16;
  v103 = v14;
  v106 = this;
  v107 = a1;
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v110, this + 136);
  v24 = re::GeomModel::GeomModel(&v181);
  v179 = 0;
  v178 = 0u;
  v177 = 0u;
  v180 = 0x7FFFFFFFLL;
  v25 = v115;
  if (v115)
  {
    v26 = 0;
    v27 = v109;
    do
    {
      LODWORD(v150[0]) = *v27;
      v28 = re::HashTable<unsigned int,unsigned long,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(&v177, LODWORD(v150[0]));
      v24 = re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v122, v26);
      if (v24 == -1)
      {
        v29 = 1;
      }

      else
      {
        v29 = *(v123 + 96 * v24 + 40);
      }

      *&v161[0] = v29;
      if (v28)
      {
        *v28 += v29;
      }

      else
      {
        v24 = re::HashTable<unsigned int,unsigned long,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::add(&v177, v150, v161);
      }

      v27 = (v27 + v11);
      ++v26;
    }

    while (v25 != v26);
    v30 = HIDWORD(v178);
    v31 = v179;
  }

  else
  {
    v31 = 0;
    v30 = 0;
  }

  v147 = 0;
  v146 = 0u;
  v145 = 0u;
  v148 = 0x7FFFFFFFLL;
  if (v31)
  {
    v34 = 0;
    v35 = v178;
    while (1)
    {
      v36 = *v35;
      v35 += 6;
      if (v36 < 0)
      {
        break;
      }

      if (v31 == ++v34)
      {
        LODWORD(v34) = v31;
        break;
      }
    }
  }

  else
  {
    LODWORD(v34) = 0;
  }

  if (v34 != v31)
  {
    v37 = v178;
    do
    {
      v38 = v37 + 24 * v34;
      LODWORD(v150[0]) = *(v38 + 4);
      v39 = *(v38 + 8);
      *&v161[2] = 0;
      memset(v161, 0, 28);
      if (v39)
      {
        re::DynamicArray<int>::setCapacity(v161, v39);
      }

      re::HashTable<unsigned int,re::DynamicArray<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addNew(&v145, v150, v161);
      if (*&v161[0] && *&v161[2])
      {
        (*(**&v161[0] + 40))();
      }

      if (v31 <= v34 + 1)
      {
        v40 = v34 + 1;
      }

      else
      {
        v40 = v31;
      }

      while (v40 - 1 != v34)
      {
        LODWORD(v34) = v34 + 1;
        if ((*(v37 + 24 * v34) & 0x80000000) != 0)
        {
          goto LABEL_63;
        }
      }

      LODWORD(v34) = v40;
LABEL_63:
      ;
    }

    while (v34 != v31);
  }

  v108 = v30;
  v102 = v15;
  if (v25)
  {
    for (i = 0; i != v25; ++i)
    {
      v42 = re::HashTable<unsigned int,re::DynamicArray<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(&v145, *(v109 + v11 * i));
      v43 = re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v122, i);
      if (v43 == -1)
      {
        LODWORD(v161[0]) = i;
        re::DynamicArray<int>::add(v42, v161);
      }

      else
      {
        v44 = v123 + 96 * v43;
        v45 = *(v44 + 40);
        if (v45)
        {
          v46 = 0;
          v5 = 0;
          while (1)
          {
            v47 = *(v44 + 40);
            if (v47 <= v5)
            {
              break;
            }

            re::DynamicArray<int>::add(v42, (*(v44 + 48) + v46));
            ++v5;
            v46 += 4;
            if (v45 == v5)
            {
              goto LABEL_73;
            }
          }

          v132 = 0;
          v163 = 0u;
          v162 = 0u;
          memset(v161, 0, sizeof(v161));
          v55 = MEMORY[0x1E69E9C10];
          v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v150[0]) = 136315906;
          *(v150 + 4) = "operator[]";
          WORD6(v150[0]) = 1024;
          if (v69)
          {
            v70 = 3;
          }

          else
          {
            v70 = 2;
          }

          *(v150 + 14) = 476;
          WORD1(v150[1]) = 2048;
          *(&v150[1] + 4) = v5;
          WORD6(v150[1]) = 2048;
          *(&v150[1] + 14) = v47;
          _os_log_send_and_compose_impl(v70, &v132, v161, 80, &dword_1E1C61000, v55, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v150, 38, v100, v101);
          _os_crash_msg();
          __break(1u);
LABEL_217:
          *v194 = 0;
          v163 = 0u;
          v162 = 0u;
          memset(v161, 0, sizeof(v161));
          v71 = MEMORY[0x1E69E9C10];
          v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v150[0]) = 136315906;
          *(v150 + 4) = "operator[]";
          WORD6(v150[0]) = 1024;
          if (v72)
          {
            v73 = 3;
          }

          else
          {
            v73 = 2;
          }

          *(v150 + 14) = 789;
          WORD1(v150[1]) = 2048;
          *(&v150[1] + 4) = v42;
          WORD6(v150[1]) = 2048;
          *(&v150[1] + 14) = v55;
          _os_log_send_and_compose_impl(v73, v194, v161, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v150, 38, v100, v101);
          _os_crash_msg();
          __break(1u);
LABEL_221:
          *v194 = 0;
          v163 = 0u;
          v162 = 0u;
          memset(v161, 0, sizeof(v161));
          v74 = MEMORY[0x1E69E9C10];
          v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v150[0]) = 136315906;
          *(v150 + 4) = "operator[]";
          WORD6(v150[0]) = 1024;
          if (v75)
          {
            v76 = 3;
          }

          else
          {
            v76 = 2;
          }

          *(v150 + 14) = 789;
          WORD1(v150[1]) = 2048;
          *(&v150[1] + 4) = v42;
          WORD6(v150[1]) = 2048;
          *(&v150[1] + 14) = v55;
          _os_log_send_and_compose_impl(v76, v194, v161, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v150, 38, v100, v101);
          _os_crash_msg();
          __break(1u);
LABEL_225:
          v149 = 0;
          v152 = 0u;
          v151 = 0u;
          memset(v150, 0, sizeof(v150));
          v77 = MEMORY[0x1E69E9C10];
          v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v194 = 136315906;
          *&v194[4] = "operator[]";
          v195 = 1024;
          if (v78)
          {
            v79 = 3;
          }

          else
          {
            v79 = 2;
          }

          v196 = 789;
          v197 = 2048;
          v198 = v42;
          v199 = 2048;
          v200 = v55;
          _os_log_send_and_compose_impl(v79, &v149, v150, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v194, 38, v100, v101);
          _os_crash_msg();
          __break(1u);
LABEL_229:
          v125 = 0;
          v163 = 0u;
          v162 = 0u;
          memset(v161, 0, sizeof(v161));
          v80 = MEMORY[0x1E69E9C10];
          v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v194 = 136315906;
          *&v194[4] = "operator[]";
          v195 = 1024;
          if (v81)
          {
            v82 = 3;
          }

          else
          {
            v82 = 2;
          }

          v196 = 789;
          v197 = 2048;
          v198 = v42;
          v199 = 2048;
          v200 = v55;
          _os_log_send_and_compose_impl(v82, &v125, v161, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v194, 38, v100, v101);
          _os_crash_msg();
          __break(1u);
LABEL_233:
          *v194 = 0;
          v163 = 0u;
          v162 = 0u;
          memset(v161, 0, sizeof(v161));
          v83 = MEMORY[0x1E69E9C10];
          v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v150[0]) = 136315906;
          *(v150 + 4) = "operator[]";
          WORD6(v150[0]) = 1024;
          if (v84)
          {
            v85 = 3;
          }

          else
          {
            v85 = 2;
          }

          *(v150 + 14) = 789;
          WORD1(v150[1]) = 2048;
          *(&v150[1] + 4) = v42;
          WORD6(v150[1]) = 2048;
          *(&v150[1] + 14) = v55;
          _os_log_send_and_compose_impl(v85, v194, v161, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v150, 38, v100, v101);
          _os_crash_msg();
          __break(1u);
LABEL_237:
          *v194 = 0;
          v163 = 0u;
          v162 = 0u;
          memset(v161, 0, sizeof(v161));
          v86 = MEMORY[0x1E69E9C10];
          v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v150[0]) = 136315906;
          *(v150 + 4) = "operator[]";
          WORD6(v150[0]) = 1024;
          if (v87)
          {
            v88 = 3;
          }

          else
          {
            v88 = 2;
          }

          *(v150 + 14) = 789;
          WORD1(v150[1]) = 2048;
          *(&v150[1] + 4) = v42;
          WORD6(v150[1]) = 2048;
          *(&v150[1] + 14) = v55;
          _os_log_send_and_compose_impl(v88, v194, v161, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v150, 38, v100, v101);
          _os_crash_msg();
          __break(1u);
LABEL_241:
          *v194 = 0;
          v163 = 0u;
          v162 = 0u;
          memset(v161, 0, sizeof(v161));
          v89 = MEMORY[0x1E69E9C10];
          v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v150[0]) = 136315906;
          *(v150 + 4) = "operator[]";
          WORD6(v150[0]) = 1024;
          if (v90)
          {
            v91 = 3;
          }

          else
          {
            v91 = 2;
          }

          *(v150 + 14) = 789;
          WORD1(v150[1]) = 2048;
          *(&v150[1] + 4) = v42;
          WORD6(v150[1]) = 2048;
          *(&v150[1] + 14) = v55;
          _os_log_send_and_compose_impl(v91, v194, v161, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v150, 38, v100, v101);
          _os_crash_msg();
          __break(1u);
LABEL_245:
          *v194 = 0;
          v163 = 0u;
          v162 = 0u;
          memset(v161, 0, sizeof(v161));
          v4 = MEMORY[0x1E69E9C10];
          v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v150[0]) = 136315906;
          *(v150 + 4) = "operator[]";
          WORD6(v150[0]) = 1024;
          if (v92)
          {
            v93 = 3;
          }

          else
          {
            v93 = 2;
          }

          *(v150 + 14) = 789;
          WORD1(v150[1]) = 2048;
          *(&v150[1] + 4) = v42;
          WORD6(v150[1]) = 2048;
          *(&v150[1] + 14) = v55;
          _os_log_send_and_compose_impl(v93, v194, v161, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v150, 38, v100, v101);
          _os_crash_msg();
          __break(1u);
LABEL_249:
          *&v145 = 0;
          v184 = 0u;
          v183 = 0u;
          memset(v182, 0, sizeof(v182));
          v181 = 0u;
          v94 = MEMORY[0x1E69E9C10];
          v95 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v177) = 136315906;
          *(v4 + 4) = "operator[]";
          WORD6(v177) = 1024;
          if (v95)
          {
            v96 = 3;
          }

          else
          {
            v96 = 2;
          }

          *(v4 + 14) = 789;
          WORD1(v178) = 2048;
          *(v4 + 20) = 0;
          WORD6(v178) = 2048;
          *(v4 + 30) = 0;
          _os_log_send_and_compose_impl(v96, &v145, &v181, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v177, 38, v100, v101);
          _os_crash_msg();
          __break(1u);
          goto LABEL_253;
        }
      }

LABEL_73:
      ;
    }
  }

  re::DynamicArray<re::GeomMesh>::resize(&v182[1], v108);
  LODWORD(v161[0]) = 0;
  re::DynamicArray<unsigned int>::resize(&v184 + 1, v108, v161);
  re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::resize(v193, v108, v110);
  v144 = 0;
  v141 = 0;
  v142 = 0uLL;
  v143 = 0;
  v140 = 0;
  v137 = 0;
  v138 = 0uLL;
  v139 = 0;
  re::DynamicArray<re::GeomIndexMap>::resize(&v141, v108);
  re::DynamicArray<re::GeomIndexMap>::resize(&v137, v108);
  v132 = v116;
  LODWORD(v133) = v117;
  BYTE4(v133) = v118;
  if (v118 == 2)
  {
    re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrown(&v133 + 1, v119);
  }

  else if (v118 == 1)
  {
    re::DynamicArray<float>::DynamicArray(&v133 + 8, v119);
  }

  else
  {
    if (v118)
    {
      goto LABEL_261;
    }

    DWORD2(v133) = v119[0];
  }

  v49 = v147;
  if (v147)
  {
    v50 = 0;
    v51 = v146;
    while (1)
    {
      v52 = *v51;
      v51 += 14;
      if (v52 < 0)
      {
        break;
      }

      if (v147 == ++v50)
      {
        LODWORD(v50) = v147;
        break;
      }
    }
  }

  else
  {
    LODWORD(v50) = 0;
  }

  if (v50 == v147)
  {
LABEL_118:
    LOBYTE(v161[0]) = 1;
    *(&v161[0] + 1) = v141;
    v161[1] = v142;
    v141 = 0;
    v142 = 0uLL;
    *(&v161[2] + 1) = v144;
    v144 = 0;
    ++v143;
    LODWORD(v161[2]) = 1;
    re::Optional<re::DynamicArray<re::GeomIndexMap>>::operator=(v189, v161);
    if (LOBYTE(v161[0]) == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit(v161 + 8);
    }

    LOBYTE(v161[0]) = 1;
    *(&v161[0] + 1) = v137;
    v161[1] = v138;
    v137 = 0;
    v138 = 0uLL;
    *(&v161[2] + 1) = v140;
    v140 = 0;
    ++v139;
    LODWORD(v161[2]) = 1;
    re::Optional<re::DynamicArray<re::GeomIndexMap>>::operator=(v191, v161);
    v16 = v105;
    if (LOBYTE(v161[0]) == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit(v161 + 8);
    }

    re::Ok<re::GeomModel,re::GeomModel>(v150, &v181);
    re::Result<re::GeomModel,re::DetailedError>::Result(v161, v150);
    re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(&v160);
    if (v158[40] == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit(&v159);
    }

    if (v157 == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit(v158);
    }

    if (*(&v152 + 1))
    {
      if (v156)
      {
        (*(**(&v152 + 1) + 40))();
      }

      v156 = 0;
      v153 = 0;
      v154 = 0;
      *(&v152 + 1) = 0;
      ++v155;
    }

    re::DynamicArray<re::GeomMesh>::deinit(&v150[2]);
    if (*&v150[0] && (BYTE8(v150[0]) & 1) != 0)
    {
      (*(**&v150[0] + 40))();
    }

    if (BYTE4(v133))
    {
      if (BYTE4(v133) == 2)
      {
        re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v133 + 8);
      }

      else
      {
        if (BYTE4(v133) != 1)
        {
          goto LABEL_262;
        }

        if (*(&v133 + 1) && v136)
        {
          (*(**(&v133 + 1) + 40))();
        }
      }
    }

    re::DynamicArray<re::GeomIndexMap>::deinit(&v137);
    re::DynamicArray<re::GeomIndexMap>::deinit(&v141);
    re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::deinit(&v145);
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(&v177);
    re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(v193);
    if (v191[0] == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit(v192);
    }

    if (v189[0] == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit(v190);
    }

    if (*(&v184 + 1))
    {
      if (v188)
      {
        (*(**(&v184 + 1) + 40))();
      }

      v188 = 0;
      v185 = 0;
      v186 = 0;
      *(&v184 + 1) = 0;
      ++v187;
    }

    re::DynamicArray<re::GeomMesh>::deinit(&v182[1]);
    if (v181 && (BYTE8(v181) & 1) != 0)
    {
      (*(*v181 + 40))();
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v110);
    if (LOBYTE(v161[0]) == 1)
    {
      re::DynamicString::operator=((v161 + 8), (v106 + 184));
      re::Result<re::GeomModel,re::DetailedError>::Result(v107, v161);
    }

    else
    {
      v181 = *(v161 + 8);
      re::DynamicString::DynamicString(v182, (&v161[1] + 8));
      *v107 = 0;
      *(v107 + 1) = v181;
      v63 = *(&v182[1] + 1);
      v107[3] = *&v182[0];
      v107[6] = v63;
      *(v107 + 2) = *(v182 + 8);
    }

    v15 = v102;
    re::Result<re::GeomModel,re::DetailedError>::~Result(v161);
    v14 = v103;
    v13 = v104;
    goto LABEL_155;
  }

  v53 = 0;
  v54 = v146;
  v5 = 80;
  while (1)
  {
    v127 = 0xFFFFFFFF00000000;
    LODWORD(v128) = -1;
    BYTE4(v128) = 0;
    DWORD2(v128) = 0;
    v42 = v53;
    v55 = v186;
    if (v186 <= v53)
    {
      goto LABEL_217;
    }

    v56 = v54 + 56 * v50;
    *(v188 + 4 * v42) = *(v56 + 4);
    v126 = 0;
    v125 = 0;
    v57 = *(v56 + 40);
    v58 = *(v56 + 24);
    v125 = v57;
    v126 = v58;
    v124[1] = 0;
    v124[0] = 0;
    v55 = *(&v142 + 1);
    if (*(&v142 + 1) <= v42)
    {
      goto LABEL_221;
    }

    re::makeMeshFromFaces(&v112, &v125, v124, v144 + 80 * v42, &v127, v161);
    v55 = v183;
    if (v183 <= v42)
    {
      goto LABEL_225;
    }

    re::GeomMesh::operator=((v184 + 736 * v42), v161);
    re::GeomMesh::~GeomMesh(v161);
    re::remapIndexMap(&v127, &v132, v150);
    v55 = *(&v138 + 1);
    if (*(&v138 + 1) <= v42)
    {
      goto LABEL_229;
    }

    re::GeomIndexMap::operator=(v140 + 80 * v42, v150);
    if (BYTE12(v150[0]))
    {
      break;
    }

LABEL_99:
    v55 = v183;
    if (v183 <= v42)
    {
      goto LABEL_233;
    }

    v55 = *(&v142 + 1);
    if (*(&v142 + 1) <= v42)
    {
      goto LABEL_237;
    }

    re::remapSkinningAttributes(v184 + 736 * v42, &v112, v144 + 80 * v42);
    v55 = v183;
    if (v183 <= v42)
    {
      goto LABEL_241;
    }

    v55 = *(&v142 + 1);
    if (*(&v142 + 1) <= v42)
    {
      goto LABEL_245;
    }

    re::remapSubdivisionSurfaceAttributes((v184 + 736 * v42), &v112, v144 + 80 * v42);
    if (BYTE4(v128))
    {
      if (BYTE4(v128) == 2)
      {
        re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v128 + 8);
      }

      else
      {
        if (BYTE4(v128) != 1)
        {
          goto LABEL_258;
        }

        if (*(&v128 + 1) && v131)
        {
          (*(**(&v128 + 1) + 40))();
        }
      }
    }

    if (v49 <= v50 + 1)
    {
      v61 = v50 + 1;
    }

    else
    {
      v61 = v49;
    }

    while (v61 - 1 != v50)
    {
      LODWORD(v50) = v50 + 1;
      if ((*(v54 + 56 * v50) & 0x80000000) != 0)
      {
        goto LABEL_117;
      }
    }

    LODWORD(v50) = v61;
LABEL_117:
    v53 = v42 + 1;
    if (v50 == v49)
    {
      goto LABEL_118;
    }
  }

  if (BYTE12(v150[0]) == 2)
  {
    re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v150[1]);
    goto LABEL_99;
  }

  if (BYTE12(v150[0]) == 1)
  {
    if (*&v150[1] && v151)
    {
      (*(**&v150[1] + 40))();
    }

    goto LABEL_99;
  }

  re::internal::assertLog(4, v59, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_258:
  re::internal::assertLog(4, v60, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_259:
  re::internal::assertLog(4, v67, v68, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_260:
  re::internal::assertLog(4, v66, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_261:
  re::internal::assertLog(4, v48, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "GeomIndexMap", 433);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_262:
  re::internal::assertLog(4, v62, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
}