float re::AnimationValueTraits<re::BlendShapeWeights>::combine(_anonymous_namespace_ *a1, _anonymous_namespace_ *a2, void *a3)
{
  v6 = a2;
  v7 = a1;
  v103 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 3);
  v9 = *(v8 + 32);
  v10 = *(a2 + 3);
  if (v9 != *(v10 + 32) || *(v8 + 96) != *(v10 + 96))
  {
    v17 = *(*(v6 + 3) + 32);
    v87 = 0;
    v88 = 0;
    v86 = 0;
    v18 = *(*(v7 + 3) + 32);
    if (v18)
    {
      v19 = 0;
      v20 = 0;
      v4 = 0x7FFFFFFFLL;
      while (1)
      {
        v21 = *(v7 + 3);
        v12 = *(v21 + 32);
        if (v12 <= v20)
        {
          break;
        }

        v22 = *(v21 + 40);
        v9 = a3[3];
        v23 = 0xBF58476D1CE4E5B9 * ((*(v22 + v19) >> 31) ^ (*(v22 + v19) >> 1));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v9 + 48, (v22 + v19), (0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) ^ ((0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) >> 31), &v98);
        if (HIDWORD(v98) != 0x7FFFFFFF)
        {
          v3 = *(*(v9 + 64) + 32 * HIDWORD(v98) + 24);
          v9 = *(v6 + 3);
          v24 = 0xBF58476D1CE4E5B9 * ((*(v22 + v19) >> 31) ^ (*(v22 + v19) >> 1));
          re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v9 + 48, (v22 + v19), (0x94D049BB133111EBLL * (v24 ^ (v24 >> 27))) ^ ((0x94D049BB133111EBLL * (v24 ^ (v24 >> 27))) >> 31), &v98);
          if (HIDWORD(v98) == 0x7FFFFFFF)
          {
            v12 = *(v7 + 1);
            if (v12 <= v20)
            {
              goto LABEL_65;
            }

            v12 = a3[1];
            if (v12 <= v3)
            {
              goto LABEL_69;
            }

            result = *(*(v7 + 2) + 4 * v20);
            *(a3[2] + 4 * v3) = result;
          }

          else
          {
            v12 = *(v7 + 1);
            if (v12 <= v20)
            {
              goto LABEL_61;
            }

            v12 = *(*(v9 + 64) + 32 * HIDWORD(v98) + 24);
            v9 = *(v6 + 1);
            if (v9 <= v12)
            {
              goto LABEL_73;
            }

            v9 = a3[1];
            if (v9 <= v3)
            {
              goto LABEL_77;
            }

            result = *(*(v7 + 2) + 4 * v20) + *(*(v6 + 2) + 4 * v12);
            *(a3[2] + 4 * v3) = result;
            v9 = v87;
            if (v87 <= v12)
            {
              goto LABEL_81;
            }

            *(v88 + v12) = 1;
          }
        }

        ++v20;
        v19 += 16;
        if (v18 == v20)
        {
          goto LABEL_28;
        }
      }

      v89 = 0;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v98 = 0u;
      v32 = MEMORY[0x1E69E9C10];
      v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v90 = 136315906;
      v91 = "operator[]";
      v92 = 1024;
      if (v33)
      {
        v34 = 3;
      }

      else
      {
        v34 = 2;
      }

      v93 = 476;
      v94 = 2048;
      v95 = v20;
      v96 = 2048;
      v97 = v12;
      _os_log_send_and_compose_impl(v34, &v89, &v98, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v90, 38, v86, v87);
      _os_crash_msg();
      __break(1u);
    }

    else
    {
LABEL_28:
      v20 = *(*(v6 + 3) + 32);
      if (!v20)
      {
LABEL_38:
        if (v86 && v87)
        {
          (*(*v86 + 40))();
        }

        return result;
      }

      v12 = 0;
      v7 = 0;
      v3 = 0x7FFFFFFFLL;
      while (1)
      {
        v9 = v87;
        if (v87 <= v7)
        {
          break;
        }

        if ((*(v7 + v88) & 1) == 0)
        {
          v25 = *(v6 + 3);
          v9 = *(v25 + 32);
          if (v9 <= v7)
          {
            goto LABEL_57;
          }

          v26 = *(v25 + 40);
          v18 = a3[3];
          v27 = 0xBF58476D1CE4E5B9 * ((*(v26 + v12) >> 31) ^ (*(v26 + v12) >> 1));
          re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v18 + 48, (v26 + v12), (0x94D049BB133111EBLL * (v27 ^ (v27 >> 27))) ^ ((0x94D049BB133111EBLL * (v27 ^ (v27 >> 27))) >> 31), &v98);
          if (HIDWORD(v98) != 0x7FFFFFFF)
          {
            v9 = *(v6 + 1);
            if (v9 <= v20)
            {
              goto LABEL_85;
            }

            v18 = *(*(v18 + 64) + 32 * HIDWORD(v98) + 24);
            v9 = a3[1];
            if (v9 <= v18)
            {
              goto LABEL_89;
            }

            result = *(*(v6 + 2) + 4 * v20);
            *(a3[2] + 4 * v18) = result;
          }
        }

        v7 = (v7 + 1);
        v12 += 16;
        if (v20 == v7)
        {
          goto LABEL_38;
        }
      }
    }

    v89 = 0;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v98 = 0u;
    v35 = MEMORY[0x1E69E9C10];
    v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v90 = 136315906;
    v91 = "operator[]";
    v92 = 1024;
    if (v36)
    {
      v37 = 3;
    }

    else
    {
      v37 = 2;
    }

    v93 = 468;
    v94 = 2048;
    v95 = v7;
    v96 = 2048;
    v97 = v9;
    _os_log_send_and_compose_impl(v37, &v89, &v98, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v90, 38, v86, v87);
    _os_crash_msg();
    __break(1u);
LABEL_57:
    v89 = 0;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v98 = 0u;
    v38 = MEMORY[0x1E69E9C10];
    v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v90 = 136315906;
    v91 = "operator[]";
    v92 = 1024;
    if (v39)
    {
      v40 = 3;
    }

    else
    {
      v40 = 2;
    }

    v93 = 476;
    v94 = 2048;
    v95 = v7;
    v96 = 2048;
    v97 = v9;
    _os_log_send_and_compose_impl(v40, &v89, &v98, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v90, 38, v86, v87);
    _os_crash_msg();
    __break(1u);
LABEL_61:
    v89 = 0;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v98 = 0u;
    v41 = MEMORY[0x1E69E9C10];
    v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v90 = 136315906;
    v91 = "operator[]";
    v92 = 1024;
    if (v42)
    {
      v43 = 3;
    }

    else
    {
      v43 = 2;
    }

    v93 = 476;
    v94 = 2048;
    v95 = v20;
    v96 = 2048;
    v97 = v12;
    _os_log_send_and_compose_impl(v43, &v89, &v98, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v90, 38, v86, v87);
    _os_crash_msg();
    __break(1u);
LABEL_65:
    v89 = 0;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v98 = 0u;
    v44 = MEMORY[0x1E69E9C10];
    v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v90 = 136315906;
    v91 = "operator[]";
    v92 = 1024;
    if (v45)
    {
      v46 = 3;
    }

    else
    {
      v46 = 2;
    }

    v93 = 476;
    v94 = 2048;
    v95 = v20;
    v96 = 2048;
    v97 = v12;
    _os_log_send_and_compose_impl(v46, &v89, &v98, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v90, 38, v86, v87);
    _os_crash_msg();
    __break(1u);
LABEL_69:
    v89 = 0;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v98 = 0u;
    v47 = MEMORY[0x1E69E9C10];
    v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v90 = 136315906;
    v91 = "operator[]";
    v92 = 1024;
    if (v48)
    {
      v49 = 3;
    }

    else
    {
      v49 = 2;
    }

    v93 = 468;
    v94 = 2048;
    v95 = v3;
    v96 = 2048;
    v97 = v12;
    _os_log_send_and_compose_impl(v49, &v89, &v98, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v90, 38, v86, v87);
    _os_crash_msg();
    __break(1u);
LABEL_73:
    v89 = 0;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v98 = 0u;
    v50 = MEMORY[0x1E69E9C10];
    v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v90 = 136315906;
    v91 = "operator[]";
    v92 = 1024;
    if (v51)
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    v93 = 476;
    v94 = 2048;
    v95 = v12;
    v96 = 2048;
    v97 = v9;
    _os_log_send_and_compose_impl(v52, &v89, &v98, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v90, 38, v86, v87);
    _os_crash_msg();
    __break(1u);
LABEL_77:
    v89 = 0;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v98 = 0u;
    v53 = MEMORY[0x1E69E9C10];
    v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v90 = 136315906;
    v91 = "operator[]";
    v92 = 1024;
    if (v54)
    {
      v55 = 3;
    }

    else
    {
      v55 = 2;
    }

    v93 = 468;
    v94 = 2048;
    v95 = v3;
    v96 = 2048;
    v97 = v9;
    _os_log_send_and_compose_impl(v55, &v89, &v98, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v90, 38, v86, v87);
    _os_crash_msg();
    __break(1u);
LABEL_81:
    v89 = 0;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v98 = 0u;
    v56 = MEMORY[0x1E69E9C10];
    v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v90 = 136315906;
    v91 = "operator[]";
    v92 = 1024;
    if (v57)
    {
      v58 = 3;
    }

    else
    {
      v58 = 2;
    }

    v93 = 468;
    v94 = 2048;
    v95 = v12;
    v96 = 2048;
    v97 = v9;
    _os_log_send_and_compose_impl(v58, &v89, &v98, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v90, 38, v86, v87);
    _os_crash_msg();
    __break(1u);
LABEL_85:
    v89 = 0;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v98 = 0u;
    v59 = MEMORY[0x1E69E9C10];
    v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v90 = 136315906;
    v91 = "operator[]";
    v92 = 1024;
    if (v60)
    {
      v61 = 3;
    }

    else
    {
      v61 = 2;
    }

    v93 = 476;
    v94 = 2048;
    v95 = v20;
    v96 = 2048;
    v97 = v9;
    _os_log_send_and_compose_impl(v61, &v89, &v98, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v90, 38, v86, v87);
    _os_crash_msg();
    __break(1u);
LABEL_89:
    v89 = 0;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v98 = 0u;
    v62 = MEMORY[0x1E69E9C10];
    v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v90 = 136315906;
    v91 = "operator[]";
    v92 = 1024;
    if (v63)
    {
      v64 = 3;
    }

    else
    {
      v64 = 2;
    }

    v93 = 468;
    v94 = 2048;
    v95 = v18;
    v96 = 2048;
    v97 = v9;
    _os_log_send_and_compose_impl(v64, &v89, &v98, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v90, 38, v86, v87);
    _os_crash_msg();
    __break(1u);
    goto LABEL_93;
  }

  if (v8 == a3[3])
  {
    if (v9)
    {
      v28 = 0;
      v12 = *(a1 + 1);
      v29 = *(a1 + 2);
      v7 = *(a2 + 1);
      v30 = *(a2 + 2);
      v6 = a3[1];
      v31 = a3[2];
      while (v12 != v28)
      {
        if (v7 == v28)
        {
          goto LABEL_101;
        }

        if (v6 == v28)
        {
          goto LABEL_105;
        }

        result = *(v29 + 4 * v28) + *(v30 + 4 * v28);
        *(v31 + 4 * v28) = result;
        v28 = (v28 + 1);
        if (v9 == v28)
        {
          return result;
        }
      }

LABEL_97:
      v86 = 0;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v98 = 0u;
      v68 = MEMORY[0x1E69E9C10];
      v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v90 = 136315906;
      v91 = "operator[]";
      v92 = 1024;
      if (v69)
      {
        v70 = 3;
      }

      else
      {
        v70 = 2;
      }

      v93 = 476;
      v94 = 2048;
      v95 = v12;
      v96 = 2048;
      v97 = v12;
      _os_log_send_and_compose_impl(v70, &v86, &v98, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v90, 38);
      _os_crash_msg();
      __break(1u);
LABEL_101:
      v86 = 0;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v98 = 0u;
      v71 = MEMORY[0x1E69E9C10];
      v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v90 = 136315906;
      v91 = "operator[]";
      v92 = 1024;
      if (v72)
      {
        v73 = 3;
      }

      else
      {
        v73 = 2;
      }

      v93 = 476;
      v94 = 2048;
      v95 = v7;
      v96 = 2048;
      v97 = v7;
      _os_log_send_and_compose_impl(v73, &v86, &v98, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v90, 38);
      _os_crash_msg();
      __break(1u);
LABEL_105:
      v86 = 0;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v98 = 0u;
      v74 = MEMORY[0x1E69E9C10];
      v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v90 = 136315906;
      v91 = "operator[]";
      v92 = 1024;
      if (v75)
      {
        v76 = 3;
      }

      else
      {
        v76 = 2;
      }

      v93 = 468;
      v94 = 2048;
      v95 = v6;
      v96 = 2048;
      v97 = v6;
      _os_log_send_and_compose_impl(v76, &v86, &v98, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v90, 38);
      _os_crash_msg();
      __break(1u);
LABEL_109:
      v86 = 0;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v98 = 0u;
      v77 = MEMORY[0x1E69E9C10];
      v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v90 = 136315906;
      v91 = "operator[]";
      v92 = 1024;
      if (v78)
      {
        v79 = 3;
      }

      else
      {
        v79 = 2;
      }

      v93 = 476;
      v94 = 2048;
      v95 = v12;
      v96 = 2048;
      v97 = v4;
      _os_log_send_and_compose_impl(v79, &v86, &v98, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v90, 38);
      _os_crash_msg();
      __break(1u);
LABEL_113:
      v86 = 0;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v98 = 0u;
      v80 = MEMORY[0x1E69E9C10];
      v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v90 = 136315906;
      v91 = "operator[]";
      v92 = 1024;
      if (v81)
      {
        v82 = 3;
      }

      else
      {
        v82 = 2;
      }

      v93 = 476;
      v94 = 2048;
      v95 = v12;
      v96 = 2048;
      v97 = v4;
      _os_log_send_and_compose_impl(v82, &v86, &v98, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v90, 38);
      _os_crash_msg();
      __break(1u);
LABEL_117:
      v86 = 0;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v98 = 0u;
      v83 = MEMORY[0x1E69E9C10];
      v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v90 = 136315906;
      v91 = "operator[]";
      v92 = 1024;
      if (v84)
      {
        v85 = 3;
      }

      else
      {
        v85 = 2;
      }

      v93 = 468;
      v94 = 2048;
      v95 = v4;
      v96 = 2048;
      v97 = v3;
      _os_log_send_and_compose_impl(v85, &v86, &v98, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v90, 38);
      _os_crash_msg();
      __break(1u);
    }
  }

  else if (v9)
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = *(v7 + 3);
      v4 = *(v13 + 32);
      if (v4 <= v12)
      {
        break;
      }

      v14 = *(v13 + 40);
      v3 = a3[3];
      v15 = 0xBF58476D1CE4E5B9 * ((*(v14 + v11) >> 31) ^ (*(v14 + v11) >> 1));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v3 + 48, (v14 + v11), (0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) ^ ((0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) >> 31), &v98);
      if (HIDWORD(v98) != 0x7FFFFFFF)
      {
        v4 = *(v7 + 1);
        if (v4 <= v12)
        {
          goto LABEL_109;
        }

        v4 = *(v6 + 1);
        if (v4 <= v12)
        {
          goto LABEL_113;
        }

        v4 = *(*(v3 + 64) + 32 * HIDWORD(v98) + 24);
        v3 = a3[1];
        if (v3 <= v4)
        {
          goto LABEL_117;
        }

        result = *(*(v7 + 2) + 4 * v12) + *(*(v6 + 2) + 4 * v12);
        *(a3[2] + 4 * v4) = result;
      }

      ++v12;
      v11 += 16;
      if (v9 == v12)
      {
        return result;
      }
    }

LABEL_93:
    v86 = 0;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v98 = 0u;
    v65 = MEMORY[0x1E69E9C10];
    v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v90 = 136315906;
    v91 = "operator[]";
    v92 = 1024;
    if (v66)
    {
      v67 = 3;
    }

    else
    {
      v67 = 2;
    }

    v93 = 476;
    v94 = 2048;
    v95 = v12;
    v96 = 2048;
    v97 = v4;
    _os_log_send_and_compose_impl(v67, &v86, &v98, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v90, 38);
    _os_crash_msg();
    __break(1u);
    goto LABEL_97;
  }

  return result;
}

void *re::AnimationValueTraits<re::BlendShapeWeights>::invert(void *result, void *a2)
{
  v4 = result;
  v46 = *MEMORY[0x1E69E9840];
  v5 = result[3];
  v6 = *(v5 + 32);
  v7 = a2[3];
  if (v6 == *(v7 + 32) && *(v5 + 96) == *(v7 + 96))
  {
    if (v6)
    {
      v8 = 0;
      v10 = result[1];
      v9 = result[2];
      v4 = a2[1];
      v11 = a2[2];
      while (v10 != v8)
      {
        if (v4 == v8)
        {
          goto LABEL_34;
        }

        *(v11 + 4 * v8) = -*(v9 + 4 * v8);
        v8 = (v8 + 1);
        if (v6 == v8)
        {
          return result;
        }
      }

      goto LABEL_30;
    }
  }

  else if (v6)
  {
    v12 = 0;
    v10 = 0;
    while (1)
    {
      v13 = v4[3];
      v14 = *(v13 + 32);
      if (v14 <= v10)
      {
        break;
      }

      v15 = *(v13 + 40);
      v2 = a2[3];
      v16 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v15 + v12) >> 31) ^ (*(v15 + v12) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v15 + v12) >> 31) ^ (*(v15 + v12) >> 1))) >> 27));
      result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((v2 + 6), (v15 + v12), v16 ^ (v16 >> 31), &v41);
      if (HIDWORD(v41) != 0x7FFFFFFF)
      {
        v14 = v4[1];
        if (v14 <= v10)
        {
          goto LABEL_22;
        }

        v14 = *(v2[8] + 32 * HIDWORD(v41) + 24);
        v2 = a2[1];
        if (v2 <= v14)
        {
          goto LABEL_26;
        }

        *(a2[2] + 4 * v14) = -*(v4[2] + 4 * v10);
      }

      v10 = (v10 + 1);
      v12 += 16;
      if (v6 == v10)
      {
        return result;
      }
    }

    v32 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v33 = 136315906;
    v34 = "operator[]";
    v35 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v36 = 476;
    v37 = 2048;
    v38 = v10;
    v39 = 2048;
    v40 = v14;
    _os_log_send_and_compose_impl(v18, &v32, &v41, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v31);
    _os_crash_msg();
    __break(1u);
LABEL_22:
    v32 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v19 = MEMORY[0x1E69E9C10];
    v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v33 = 136315906;
    v34 = "operator[]";
    v35 = 1024;
    if (v20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    v36 = 476;
    v37 = 2048;
    v38 = v10;
    v39 = 2048;
    v40 = v14;
    _os_log_send_and_compose_impl(v21, &v32, &v41, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v31);
    _os_crash_msg();
    __break(1u);
LABEL_26:
    v32 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v22 = MEMORY[0x1E69E9C10];
    v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v33 = 136315906;
    v34 = "operator[]";
    v35 = 1024;
    if (v23)
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }

    v36 = 468;
    v37 = 2048;
    v38 = v14;
    v39 = 2048;
    v40 = v2;
    _os_log_send_and_compose_impl(v24, &v32, &v41, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v31);
    _os_crash_msg();
    __break(1u);
LABEL_30:
    v32 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v25 = MEMORY[0x1E69E9C10];
    v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v33 = 136315906;
    v34 = "operator[]";
    v35 = 1024;
    if (v26)
    {
      v27 = 3;
    }

    else
    {
      v27 = 2;
    }

    v36 = 476;
    v37 = 2048;
    v38 = v10;
    v39 = 2048;
    v40 = v10;
    _os_log_send_and_compose_impl(v27, &v32, &v41, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v31);
    _os_crash_msg();
    __break(1u);
LABEL_34:
    v32 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v28 = MEMORY[0x1E69E9C10];
    v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v33 = 136315906;
    v34 = "operator[]";
    v35 = 1024;
    if (v29)
    {
      v30 = 3;
    }

    else
    {
      v30 = 2;
    }

    v36 = 468;
    v37 = 2048;
    v38 = v4;
    v39 = 2048;
    v40 = v4;
    _os_log_send_and_compose_impl(v30, &v32, &v41, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v31);
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

_anonymous_namespace_ *re::AnimationValueTraits<re::BlendShapeWeights>::interpolate(_anonymous_namespace_ *result, void *a2, void *a3, float a4)
{
  v9 = a2;
  v10 = result;
  v106 = *MEMORY[0x1E69E9840];
  v11 = *(result + 3);
  v12 = *(v11 + 32);
  v13 = a2[3];
  if (v12 != *(v13 + 32) || *(v11 + 96) != *(v13 + 96))
  {
    v19 = *(v9[3] + 32);
    v90 = 0;
    v91 = 0;
    v89 = 0;
    v4 = *(*(v10 + 24) + 32);
    if (v4)
    {
      v20 = 0;
      v21 = 0;
      v22 = 1.0 - a4;
      v6 = 0x7FFFFFFFLL;
      while (1)
      {
        v23 = *(v10 + 24);
        v15 = *(v23 + 32);
        if (v15 <= v21)
        {
          break;
        }

        v24 = *(v23 + 40);
        v12 = a3[3];
        v25 = 0xBF58476D1CE4E5B9 * ((*(v24 + v20) >> 31) ^ (*(v24 + v20) >> 1));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v12 + 48, (v24 + v20), (0x94D049BB133111EBLL * (v25 ^ (v25 >> 27))) ^ ((0x94D049BB133111EBLL * (v25 ^ (v25 >> 27))) >> 31), &v101);
        if (HIDWORD(v101) != 0x7FFFFFFF)
        {
          v5 = *(*(v12 + 64) + 32 * HIDWORD(v101) + 24);
          v12 = v9[3];
          v26 = 0xBF58476D1CE4E5B9 * ((*(v24 + v20) >> 31) ^ (*(v24 + v20) >> 1));
          re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v12 + 48, (v24 + v20), (0x94D049BB133111EBLL * (v26 ^ (v26 >> 27))) ^ ((0x94D049BB133111EBLL * (v26 ^ (v26 >> 27))) >> 31), &v101);
          if (HIDWORD(v101) == 0x7FFFFFFF)
          {
            v15 = *(v10 + 8);
            if (v15 <= v21)
            {
              goto LABEL_65;
            }

            v15 = a3[1];
            if (v15 <= v5)
            {
              goto LABEL_69;
            }

            *(a3[2] + 4 * v5) = (a4 * 0.0) + (*(*(v10 + 16) + 4 * v21) * v22);
          }

          else
          {
            v15 = *(v10 + 8);
            if (v15 <= v21)
            {
              goto LABEL_61;
            }

            v15 = *(*(v12 + 64) + 32 * HIDWORD(v101) + 24);
            v12 = v9[1];
            if (v12 <= v15)
            {
              goto LABEL_73;
            }

            v12 = a3[1];
            if (v12 <= v5)
            {
              goto LABEL_77;
            }

            *(a3[2] + 4 * v5) = (*(v9[2] + 4 * v15) * a4) + (*(*(v10 + 16) + 4 * v21) * v22);
            v12 = v90;
            if (v90 <= v15)
            {
              goto LABEL_81;
            }

            *(v91 + v15) = 1;
          }
        }

        ++v21;
        v20 += 16;
        if (v4 == v21)
        {
          goto LABEL_28;
        }
      }

      v92 = 0;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v101 = 0u;
      v35 = MEMORY[0x1E69E9C10];
      v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v93 = 136315906;
      v94 = "operator[]";
      v95 = 1024;
      if (v36)
      {
        v37 = 3;
      }

      else
      {
        v37 = 2;
      }

      v96 = 476;
      v97 = 2048;
      v98 = v21;
      v99 = 2048;
      v100 = v15;
      _os_log_send_and_compose_impl(v37, &v92, &v101, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v93, 38, v89, v90);
      _os_crash_msg();
      __break(1u);
    }

    else
    {
LABEL_28:
      v15 = *(v9[3] + 32);
      if (!v15)
      {
LABEL_38:
        result = v89;
        if (v89 && v90)
        {
          return (*(*v89 + 40))();
        }

        return result;
      }

      v21 = 0;
      v10 = 0;
      v4 = 0x7FFFFFFFLL;
      while (1)
      {
        v12 = v90;
        if (v90 <= v10)
        {
          break;
        }

        if ((*(v91 + v10) & 1) == 0)
        {
          v27 = v9[3];
          v12 = *(v27 + 32);
          if (v12 <= v10)
          {
            goto LABEL_57;
          }

          v28 = *(v27 + 40);
          v5 = a3[3];
          v29 = 0xBF58476D1CE4E5B9 * ((*(v28 + v21) >> 31) ^ (*(v28 + v21) >> 1));
          re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 48, (v28 + v21), (0x94D049BB133111EBLL * (v29 ^ (v29 >> 27))) ^ ((0x94D049BB133111EBLL * (v29 ^ (v29 >> 27))) >> 31), &v101);
          if (HIDWORD(v101) != 0x7FFFFFFF)
          {
            v12 = v9[1];
            if (v12 <= v10)
            {
              goto LABEL_85;
            }

            v5 = *(*(v5 + 64) + 32 * HIDWORD(v101) + 24);
            v12 = a3[1];
            if (v12 <= v5)
            {
              goto LABEL_89;
            }

            *(a3[2] + 4 * v5) = (*(v9[2] + 4 * v10) * a4) + ((1.0 - a4) * 0.0);
          }
        }

        ++v10;
        v21 += 16;
        if (v15 == v10)
        {
          goto LABEL_38;
        }
      }
    }

    v92 = 0;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v101 = 0u;
    v38 = MEMORY[0x1E69E9C10];
    v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v93 = 136315906;
    v94 = "operator[]";
    v95 = 1024;
    if (v39)
    {
      v40 = 3;
    }

    else
    {
      v40 = 2;
    }

    v96 = 468;
    v97 = 2048;
    v98 = v10;
    v99 = 2048;
    v100 = v12;
    _os_log_send_and_compose_impl(v40, &v92, &v101, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v93, 38, v89, v90);
    _os_crash_msg();
    __break(1u);
LABEL_57:
    v92 = 0;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v101 = 0u;
    v41 = MEMORY[0x1E69E9C10];
    v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v93 = 136315906;
    v94 = "operator[]";
    v95 = 1024;
    if (v42)
    {
      v43 = 3;
    }

    else
    {
      v43 = 2;
    }

    v96 = 476;
    v97 = 2048;
    v98 = v10;
    v99 = 2048;
    v100 = v12;
    _os_log_send_and_compose_impl(v43, &v92, &v101, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v93, 38, v89, v90);
    _os_crash_msg();
    __break(1u);
LABEL_61:
    v92 = 0;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v101 = 0u;
    v44 = MEMORY[0x1E69E9C10];
    v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v93 = 136315906;
    v94 = "operator[]";
    v95 = 1024;
    if (v45)
    {
      v46 = 3;
    }

    else
    {
      v46 = 2;
    }

    v96 = 476;
    v97 = 2048;
    v98 = v21;
    v99 = 2048;
    v100 = v15;
    _os_log_send_and_compose_impl(v46, &v92, &v101, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v93, 38, v89, v90);
    _os_crash_msg();
    __break(1u);
LABEL_65:
    v92 = 0;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v101 = 0u;
    v47 = MEMORY[0x1E69E9C10];
    v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v93 = 136315906;
    v94 = "operator[]";
    v95 = 1024;
    if (v48)
    {
      v49 = 3;
    }

    else
    {
      v49 = 2;
    }

    v96 = 476;
    v97 = 2048;
    v98 = v21;
    v99 = 2048;
    v100 = v15;
    _os_log_send_and_compose_impl(v49, &v92, &v101, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v93, 38, v89, v90);
    _os_crash_msg();
    __break(1u);
LABEL_69:
    v92 = 0;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v101 = 0u;
    v50 = MEMORY[0x1E69E9C10];
    v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v93 = 136315906;
    v94 = "operator[]";
    v95 = 1024;
    if (v51)
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    v96 = 468;
    v97 = 2048;
    v98 = v5;
    v99 = 2048;
    v100 = v15;
    _os_log_send_and_compose_impl(v52, &v92, &v101, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v93, 38, v89, v90);
    _os_crash_msg();
    __break(1u);
LABEL_73:
    v92 = 0;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v101 = 0u;
    v53 = MEMORY[0x1E69E9C10];
    v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v93 = 136315906;
    v94 = "operator[]";
    v95 = 1024;
    if (v54)
    {
      v55 = 3;
    }

    else
    {
      v55 = 2;
    }

    v96 = 476;
    v97 = 2048;
    v98 = v15;
    v99 = 2048;
    v100 = v12;
    _os_log_send_and_compose_impl(v55, &v92, &v101, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v93, 38, v89, v90);
    _os_crash_msg();
    __break(1u);
LABEL_77:
    v92 = 0;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v101 = 0u;
    v56 = MEMORY[0x1E69E9C10];
    v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v93 = 136315906;
    v94 = "operator[]";
    v95 = 1024;
    if (v57)
    {
      v58 = 3;
    }

    else
    {
      v58 = 2;
    }

    v96 = 468;
    v97 = 2048;
    v98 = v5;
    v99 = 2048;
    v100 = v12;
    _os_log_send_and_compose_impl(v58, &v92, &v101, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v93, 38, v89, v90);
    _os_crash_msg();
    __break(1u);
LABEL_81:
    v92 = 0;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v101 = 0u;
    v59 = MEMORY[0x1E69E9C10];
    v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v93 = 136315906;
    v94 = "operator[]";
    v95 = 1024;
    if (v60)
    {
      v61 = 3;
    }

    else
    {
      v61 = 2;
    }

    v96 = 468;
    v97 = 2048;
    v98 = v15;
    v99 = 2048;
    v100 = v12;
    _os_log_send_and_compose_impl(v61, &v92, &v101, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v93, 38, v89, v90);
    _os_crash_msg();
    __break(1u);
LABEL_85:
    v92 = 0;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v101 = 0u;
    v62 = MEMORY[0x1E69E9C10];
    v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v93 = 136315906;
    v94 = "operator[]";
    v95 = 1024;
    if (v63)
    {
      v64 = 3;
    }

    else
    {
      v64 = 2;
    }

    v96 = 476;
    v97 = 2048;
    v98 = v10;
    v99 = 2048;
    v100 = v12;
    _os_log_send_and_compose_impl(v64, &v92, &v101, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v93, 38, v89, v90);
    _os_crash_msg();
    __break(1u);
LABEL_89:
    v92 = 0;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v101 = 0u;
    v65 = MEMORY[0x1E69E9C10];
    v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v93 = 136315906;
    v94 = "operator[]";
    v95 = 1024;
    if (v66)
    {
      v67 = 3;
    }

    else
    {
      v67 = 2;
    }

    v96 = 468;
    v97 = 2048;
    v98 = v5;
    v99 = 2048;
    v100 = v12;
    _os_log_send_and_compose_impl(v67, &v92, &v101, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v93, 38, v89, v90);
    _os_crash_msg();
    __break(1u);
    goto LABEL_93;
  }

  if (v11 == a3[3])
  {
    if (v12)
    {
      v30 = 0;
      v15 = *(result + 1);
      v31 = *(result + 2);
      v10 = a2[1];
      v32 = a2[2];
      v9 = a3[1];
      v33 = a3[2];
      v34 = 1.0 - a4;
      while (v15 != v30)
      {
        if (v10 == v30)
        {
          goto LABEL_101;
        }

        if (v9 == v30)
        {
          goto LABEL_105;
        }

        *(v33 + 4 * v30) = (*(v32 + 4 * v30) * a4) + (*(v31 + 4 * v30) * v34);
        v30 = (v30 + 1);
        if (v12 == v30)
        {
          return result;
        }
      }

LABEL_97:
      v89 = 0;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v101 = 0u;
      v71 = MEMORY[0x1E69E9C10];
      v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v93 = 136315906;
      v94 = "operator[]";
      v95 = 1024;
      if (v72)
      {
        v73 = 3;
      }

      else
      {
        v73 = 2;
      }

      v96 = 476;
      v97 = 2048;
      v98 = v15;
      v99 = 2048;
      v100 = v15;
      _os_log_send_and_compose_impl(v73, &v89, &v101, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v93, 38);
      _os_crash_msg();
      __break(1u);
LABEL_101:
      v89 = 0;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v101 = 0u;
      v74 = MEMORY[0x1E69E9C10];
      v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v93 = 136315906;
      v94 = "operator[]";
      v95 = 1024;
      if (v75)
      {
        v76 = 3;
      }

      else
      {
        v76 = 2;
      }

      v96 = 476;
      v97 = 2048;
      v98 = v10;
      v99 = 2048;
      v100 = v10;
      _os_log_send_and_compose_impl(v76, &v89, &v101, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v93, 38);
      _os_crash_msg();
      __break(1u);
LABEL_105:
      v89 = 0;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v101 = 0u;
      v77 = MEMORY[0x1E69E9C10];
      v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v93 = 136315906;
      v94 = "operator[]";
      v95 = 1024;
      if (v78)
      {
        v79 = 3;
      }

      else
      {
        v79 = 2;
      }

      v96 = 468;
      v97 = 2048;
      v98 = v9;
      v99 = 2048;
      v100 = v9;
      _os_log_send_and_compose_impl(v79, &v89, &v101, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v93, 38);
      _os_crash_msg();
      __break(1u);
LABEL_109:
      v89 = 0;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v101 = 0u;
      v80 = MEMORY[0x1E69E9C10];
      v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v93 = 136315906;
      v94 = "operator[]";
      v95 = 1024;
      if (v81)
      {
        v82 = 3;
      }

      else
      {
        v82 = 2;
      }

      v96 = 476;
      v97 = 2048;
      v98 = v15;
      v99 = 2048;
      v100 = v6;
      _os_log_send_and_compose_impl(v82, &v89, &v101, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v93, 38);
      _os_crash_msg();
      __break(1u);
LABEL_113:
      v89 = 0;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v101 = 0u;
      v83 = MEMORY[0x1E69E9C10];
      v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v93 = 136315906;
      v94 = "operator[]";
      v95 = 1024;
      if (v84)
      {
        v85 = 3;
      }

      else
      {
        v85 = 2;
      }

      v96 = 476;
      v97 = 2048;
      v98 = v15;
      v99 = 2048;
      v100 = v6;
      _os_log_send_and_compose_impl(v85, &v89, &v101, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v93, 38);
      _os_crash_msg();
      __break(1u);
LABEL_117:
      v89 = 0;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v101 = 0u;
      v86 = MEMORY[0x1E69E9C10];
      v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v93 = 136315906;
      v94 = "operator[]";
      v95 = 1024;
      if (v87)
      {
        v88 = 3;
      }

      else
      {
        v88 = 2;
      }

      v96 = 468;
      v97 = 2048;
      v98 = v6;
      v99 = 2048;
      v100 = v4;
      _os_log_send_and_compose_impl(v88, &v89, &v101, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v93, 38);
      _os_crash_msg();
      __break(1u);
    }
  }

  else if (v12)
  {
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = *(v10 + 24);
      v6 = *(v16 + 32);
      if (v6 <= v15)
      {
        break;
      }

      v17 = *(v16 + 40);
      v4 = a3[3];
      v18 = 0xBF58476D1CE4E5B9 * ((*(v17 + v14) >> 31) ^ (*(v17 + v14) >> 1));
      result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v4 + 48, (v17 + v14), (0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31), &v101);
      if (HIDWORD(v101) != 0x7FFFFFFF)
      {
        v6 = *(v10 + 8);
        if (v6 <= v15)
        {
          goto LABEL_109;
        }

        v6 = v9[1];
        if (v6 <= v15)
        {
          goto LABEL_113;
        }

        v6 = *(*(v4 + 64) + 32 * HIDWORD(v101) + 24);
        v4 = a3[1];
        if (v4 <= v6)
        {
          goto LABEL_117;
        }

        *(a3[2] + 4 * v6) = (*(v9[2] + 4 * v15) * a4) + (*(*(v10 + 16) + 4 * v15) * (1.0 - a4));
      }

      ++v15;
      v14 += 16;
      if (v12 == v15)
      {
        return result;
      }
    }

LABEL_93:
    v89 = 0;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v101 = 0u;
    v68 = MEMORY[0x1E69E9C10];
    v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v93 = 136315906;
    v94 = "operator[]";
    v95 = 1024;
    if (v69)
    {
      v70 = 3;
    }

    else
    {
      v70 = 2;
    }

    v96 = 476;
    v97 = 2048;
    v98 = v15;
    v99 = 2048;
    v100 = v6;
    _os_log_send_and_compose_impl(v70, &v89, &v101, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v93, 38);
    _os_crash_msg();
    __break(1u);
    goto LABEL_97;
  }

  return result;
}

void re::BlendShapeWeightsDefinition::~BlendShapeWeightsDefinition(re::BlendShapeWeightsDefinition *this)
{
  *this = &unk_1F5CB0788;
  v2 = (this + 24);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 6);
  re::FixedArray<re::StringID>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CB0788;
  v2 = (this + 24);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 6);
  re::FixedArray<re::StringID>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::TypeBuilderHelper::registerFixedArray<float>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
{
  re::TypeRegistry::typeID(&v12, a1, a2);
  if (v12)
  {
    *a4 = v12;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v11);
    re::TypeBuilder::TypeBuilder(v10, v11);
    v9 = *a3;
    re::TypeBuilder::beginListType(v10, a2, 1, 0x18uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerFixedArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerFixedArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerFixedArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerFixedArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerFixedArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerFixedArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(a4, v10, a1);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

ArcSharedObject *re::IntrospectionFixedArray<float>::IntrospectionFixedArray(ArcSharedObject *a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 22) = 0;
  v2[2] = 0;
  v2[4] = 0;
  v2[5] = 0xFFFFFFFFLL;
  *v2 = &unk_1F5CAE268;
  v2[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset((v2 + 6));
  *a1 = &unk_1F5CB07D0;
  return a1;
}

void *re::IntrospectionFixedArray<float>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionFixedArray<float>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionFixedArray<float>::construct(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void re::IntrospectionFixedArray<float>::init(uint64_t a1, void *a2, re *a3, int a4, unint64_t a5)
{
  v26 = *MEMORY[0x1E69E9840];
  re::FixedArray<int>::init<>(a2, a3, a5);
  if (a5)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = a2[1];
      if (v12 <= v11)
      {
        v16 = 0;
        memset(v25, 0, sizeof(v25));
        v13 = MEMORY[0x1E69E9C10];
        v17 = 136315906;
        v18 = "operator[]";
        v19 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }

        v20 = 468;
        v21 = 2048;
        v22 = v11;
        v23 = 2048;
        v24 = v12;
        _os_log_send_and_compose_impl(v14, &v16, v25, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
        _os_crash_msg();
        __break(1u);
      }

      re::introspectionInitElement(a3, a4, *(a1 + 48), (a2[2] + v10));
      ++v11;
      v10 += 4;
    }

    while (a5 != v11);
  }
}

unint64_t re::IntrospectionFixedArray<float>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  if (v4 <= a3)
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

    v13 = 468;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 4 * a3;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  if (v4 <= a3)
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

    v13 = 476;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 4 * a3;
}

void *re::TypeBuilderHelper::registerFixedArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = a3;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);

  return re::FixedArray<CoreIKTransform>::deinit(a1);
}

void re::TypeBuilderHelper::registerFixedArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t *a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);
  re::FixedArray<int>::init<>(a1, a3, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = a1[1];
    if (v9)
    {
      v10 = a1[2];
      v11 = 4 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 4;
        v11 -= 4;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerFixedArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
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

    v12 = 468;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16) + 4 * a2;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (v1 < v3)
  {
    a1[2] = ++v1;
  }

  if (v3 <= v1)
  {
    return 0;
  }

  else
  {
    return *(v2 + 16) + 4 * v1;
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<float>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t re::internal::retargetingSolverCallback(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, re::RigDataValue *a7, uint64_t a8, void *a9)
{
  if (!a4)
  {
    re::internal::assertLog(6, a2, a3, 0, a5, a6, a7, a8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v17);
    __break(1u);
    goto LABEL_21;
  }

  if (a4 == 1)
  {
LABEL_21:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v18);
    __break(1u);
    goto LABEL_22;
  }

  if (a4 <= 2)
  {
LABEL_22:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, a4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v19);
    __break(1u);
    goto LABEL_23;
  }

  if (!a8)
  {
LABEL_23:
    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v20);
    __break(1u);
    return result;
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::internal::transferPose((a3 + 288), (a9 + 5));
  re::internal::transferPose(a3, (a9 + 2));
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v11 = CoreIKSolve();
  if (re::internal::enableSignposts(0, 0))
  {
    CoreIKSolverGetConstraintCount();
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::internal::updateOutputBasedOnSolveResult(v11, a3, a9 + 1, a7);
  result = re::internal::enableSignposts(0, 0);
  if (result)
  {

    return kdebug_trace();
  }

  return result;
}

uint64_t re::internal::retargetingSolverCompile(re::Allocator **a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v45[4] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v24, v29);
    __break(1u);
    goto LABEL_20;
  }

  if (a3 == 1)
  {
LABEL_20:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v25, v30);
    __break(1u);
    goto LABEL_21;
  }

  if (a3 <= 2)
  {
LABEL_21:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v26, v31);
    __break(1u);
    goto LABEL_22;
  }

  if (a3 == 3)
  {
LABEL_22:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v27, v32);
    __break(1u);
LABEL_23:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v28, v33);
    __break(1u);
  }

  if (!a5)
  {
    goto LABEL_23;
  }

  v6 = *(a2[1] + 184);
  v7 = a2[3];
  v8 = *(a2[2] + 184);
  v9 = *a4;
  v10 = *(*a2 + 232);
  v11 = strlen(v10);
  v12 = MEMORY[0x1E6903780](v10, v11);
  re::internal::makePoseFromRig(a1, v6, v12, v44);
  re::internal::makeSourcePose(a1, v8, v12, v43);
  v13 = MEMORY[0x1E6903C40](v12);
  re::internal::makePose(a1, v13, v42);
  v38 = 0;
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  memset(v36, 0, sizeof(v36));
  v37 = 0;
  v14 = *a1;
  re::RigGraphCallbackBuilder::init(v34, *a1);
  *&v39.var0 = 0x10643527A253C4;
  v39.var1 = "TargetPose";
  re::RigGraphCallbackBuilder::addInputParam(v34, &v39, v44);
  if (*&v39.var0)
  {
    if (*&v39.var0)
    {
    }
  }

  *&v39.var0 = 0x104A00692196D8;
  v39.var1 = "SourcePose";
  re::RigGraphCallbackBuilder::addInputParam(v34, &v39, v43);
  if (*&v39.var0)
  {
    if (*&v39.var0)
    {
    }
  }

  *&v39.var0 = 0xF3F1BA25D000CB3ALL;
  v39.var1 = "SolverToComponentTransform";
  re::RigGraphCallbackBuilder::addInputParam(v34, &v39, v7);
  if (*&v39.var0)
  {
    if (*&v39.var0)
    {
    }
  }

  *&v39.var0 = 0xDC3EE39E3142978ELL;
  v39.var1 = "SolvedTargetPose";
  re::RigGraphCallbackBuilder::addOutputParam(v34, &v39, v42);
  if (*&v39.var0)
  {
    if (*&v39.var0)
    {
    }
  }

  v19 = (*(*v14 + 32))(v14, 64, 8);
  *v19 = MEMORY[0x1E6903790](v12);
  *(v19 + 8) = v14;
  *(v19 + 32) = 0u;
  *(v19 + 48) = 0u;
  *(v19 + 16) = 0u;
  v20 = MEMORY[0x1E6903C40](v12);
  re::FixedArray<CoreIKTransform>::init<>((v19 + 16), v14, v20);
  v21 = MEMORY[0x1E6903C20](v12);
  re::FixedArray<CoreIKTransform>::init<>((v19 + 40), v14, v21);
  v45[0] = &unk_1F5CB0868;
  v45[1] = v14;
  v45[3] = v45;
  p_var1 = &v39.var1;
  *&v39.var0 = v19;
  v39.var1 = &unk_1F5CB0868;
  v40 = v14;
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v45);
  re::RigGraphCallbackBuilder::buildCallbackData(v34, a1, re::internal::retargetingSolverCallback, &v39);
  v22 = re::internal::bindCallbackOutputToNodeOutputPose(v6, v42, v12, a1, v9);
  MEMORY[0x1E69037D0](v12, v22);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v39);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v36 + 8);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v34 + 8);
  re::RigDataValue::~RigDataValue(v42);
  re::RigDataValue::~RigDataValue(v43);
  re::RigDataValue::~RigDataValue(v44);
  return 1;
}

void re::internal::arvinoToArvinoRetargetNodeCallback(int a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, re::RigDataValue *a7, uint64_t a8, re::internal::AutoRetargetRigGraphNode *a9)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    re::internal::assertLog(6, a2, a3, 0, a5, a6, a7, a8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v18);
    __break(1u);
    goto LABEL_11;
  }

  if (a4 == 1)
  {
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v19);
    __break(1u);
    goto LABEL_12;
  }

  if (a4 <= 2)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, a4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v20);
    __break(1u);
    goto LABEL_13;
  }

  if (a4 == 3)
  {
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v21);
    __break(1u);
    goto LABEL_14;
  }

  if (a4 <= 4)
  {
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 4, 4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v22);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v23);
    __break(1u);
  }

  if (!a8)
  {
    goto LABEL_15;
  }

  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v26 = 0;
  v27 = &str_67;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v31 = 0;
  v33 = 0;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = -1;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v47 = 0;
  v46 = 0;
  v42 = &str_67;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v11 = re::internal::AutoRetargetRigGraphNode::initialize(a9, (a3 + 576), (a3 + 864), (a3 + 1152), (a3 + 1152), v24);
  re::RigDataValue::~RigDataValue(v24);
  if (v11)
  {
    re::internal::AutoRetargetRigGraphNode::solveAndUpdate(a9, a3, (a3 + 288), a7);
  }
}

uint64_t re::internal::arvinoToArvinoRetargetNodeCompile(re::Allocator **a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v104 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v25);
    __break(1u);
    goto LABEL_73;
  }

  if (a3 == 1)
  {
LABEL_73:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v26);
    __break(1u);
    goto LABEL_74;
  }

  if (a3 <= 2)
  {
LABEL_74:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v23, v27);
    __break(1u);
LABEL_75:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v24, v28);
    __break(1u);
  }

  if (!a5)
  {
    goto LABEL_75;
  }

  v6 = *(*a2 + 184);
  v7 = *(a2[1] + 184);
  v8 = a2[2];
  v9 = *a4;
  re::internal::makePoseFromRigHierarchy(a1, v6, v103);
  re::RigHierarchy::getBindPoseHierarchy(v6, v10, &v82);
  re::internal::makePoseFromRigHierarchy(a1, &v82, v102);
  re::internal::makePoseFromRigHierarchy(a1, v7, v101);
  re::RigHierarchy::getBindPoseHierarchy(v7, v11, &v66);
  re::internal::makePoseFromRigHierarchy(a1, &v66, v100);
  re::internal::makePose(a1, v6[27], v99);
  v65 = 0;
  memset(v61, 0, sizeof(v61));
  memset(v63, 0, sizeof(v63));
  v62 = 0;
  v64 = 0;
  v12 = *a1;
  re::RigGraphCallbackBuilder::init(v61, *a1);
  *&v98[0].var0 = 0x10643527A253C4;
  v98[0].var1 = "TargetPose";
  re::RigGraphCallbackBuilder::addInputParam(v61, v98, v103);
  if (*&v98[0].var0)
  {
    if (*&v98[0].var0)
    {
    }
  }

  *&v98[0].var0 = 0x104A00692196D8;
  v98[0].var1 = "SourcePose";
  re::RigGraphCallbackBuilder::addInputParam(v61, v98, v101);
  if (*&v98[0].var0)
  {
    if (*&v98[0].var0)
    {
    }
  }

  *&v98[0].var0 = 0xFC2B6F833ABE967ELL;
  v98[0].var1 = "TargetBindPose";
  re::RigGraphCallbackBuilder::addInputParam(v61, v98, v102);
  if (*&v98[0].var0)
  {
    if (*&v98[0].var0)
    {
    }
  }

  *&v98[0].var0 = 0x8AE112C755FE2F92;
  v98[0].var1 = "SourceBindPose";
  re::RigGraphCallbackBuilder::addInputParam(v61, v98, v100);
  if (*&v98[0].var0)
  {
    if (*&v98[0].var0)
    {
    }
  }

  *&v98[0].var0 = 0xB88303615935B0FCLL;
  v98[0].var1 = "ModelToWorldTransform";
  re::RigGraphCallbackBuilder::addInputParam(v61, v98, v8);
  if (*&v98[0].var0)
  {
    if (*&v98[0].var0)
    {
    }
  }

  *&v98[0].var0 = 0xDC3EE39E3142978ELL;
  v98[0].var1 = "SolvedTargetPose";
  re::RigGraphCallbackBuilder::addOutputParam(v61, v98, v99);
  if (*&v98[0].var0)
  {
    if (*&v98[0].var0)
    {
    }
  }

  v45 = v82;
  v46 = v83;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v47, v84);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v48, v85);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::DynamicArray(v49, v86);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::DynamicArray(v50, v87);
  re::DynamicArray<re::StringID>::DynamicArray(v51, v88);
  re::DynamicArray<unsigned long>::DynamicArray(v52, v89);
  re::DynamicArray<re::RigHierarchyJointTransform>::DynamicArray(v55, v92);
  re::DynamicArray<unsigned long>::DynamicArray(v58, v95);
  v29 = v66;
  v30 = v67;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v31, v68);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v32, v69);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::DynamicArray(v33, v70);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::DynamicArray(v34, v71);
  re::DynamicArray<re::StringID>::DynamicArray(v35, v72);
  re::DynamicArray<unsigned long>::DynamicArray(v36, v73);
  re::DynamicArray<re::RigHierarchyJointTransform>::DynamicArray(v39, v76);
  re::DynamicArray<unsigned long>::DynamicArray(v42, v79);
  re::internal::makeNodeUnique<re::internal::AutoRetargetRigGraphNode,re::Allocator,re::RigHierarchy,re::RigHierarchy>(v98, v12, &v45, &v29);
  if (v42[0])
  {
    if (v44)
    {
      (*(*v42[0] + 40))();
    }

    v44 = 0;
    memset(v42, 0, sizeof(v42));
    ++v43;
  }

  if (v39[0])
  {
    if (v41)
    {
      (*(*v39[0] + 40))();
    }

    v41 = 0;
    memset(v39, 0, sizeof(v39));
    ++v40;
  }

  if (v36[0])
  {
    if (v38)
    {
      (*(*v36[0] + 40))();
    }

    v38 = 0;
    memset(v36, 0, sizeof(v36));
    ++v37;
  }

  re::DynamicArray<re::StringID>::deinit(v35);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v34);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v33);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v32);
  v19.n128_f64[0] = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v31);
  if (v58[0])
  {
    if (v60)
    {
      (*(*v58[0] + 40))(v19.n128_f64[0]);
    }

    v60 = 0;
    memset(v58, 0, sizeof(v58));
    ++v59;
  }

  if (v55[0])
  {
    if (v57)
    {
      (*(*v55[0] + 40))(v19);
    }

    v57 = 0;
    memset(v55, 0, sizeof(v55));
    ++v56;
  }

  if (v52[0])
  {
    if (v54)
    {
      (*(*v52[0] + 40))(v19);
    }

    v54 = 0;
    memset(v52, 0, sizeof(v52));
    ++v53;
  }

  re::DynamicArray<re::StringID>::deinit(v51);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v50);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v49);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v48);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v47);
  re::RigGraphCallbackBuilder::buildCallbackData(v61, a1, re::internal::arvinoToArvinoRetargetNodeCallback, v98);
  re::internal::bindCallbackOutputToNodeOutputPose(v6, v99, v9, a1);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v98);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v63[8]);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v61 + 8);
  re::RigDataValue::~RigDataValue(v99);
  re::RigDataValue::~RigDataValue(v100);
  if (v79[0])
  {
    if (v81)
    {
      (*(*v79[0] + 40))();
    }

    v81 = 0;
    memset(v79, 0, sizeof(v79));
    ++v80;
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

  re::DynamicArray<re::StringID>::deinit(v72);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v71);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v70);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v69);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v68);
  re::RigDataValue::~RigDataValue(v101);
  re::RigDataValue::~RigDataValue(v102);
  if (v95[0])
  {
    if (v97)
    {
      (*(*v95[0] + 40))();
    }

    v97 = 0;
    memset(v95, 0, sizeof(v95));
    ++v96;
  }

  if (v92[0])
  {
    if (v94)
    {
      (*(*v92[0] + 40))();
    }

    v94 = 0;
    memset(v92, 0, sizeof(v92));
    ++v93;
  }

  if (v89[0])
  {
    if (v91)
    {
      (*(*v89[0] + 40))();
    }

    v91 = 0;
    memset(v89, 0, sizeof(v89));
    ++v90;
  }

  re::DynamicArray<re::StringID>::deinit(v88);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v87);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v86);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v85);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v84);
  re::RigDataValue::~RigDataValue(v103);
  return 1;
}

uint64_t re::internal::makeNodeUnique<re::internal::AutoRetargetRigGraphNode,re::Allocator,re::RigHierarchy,re::RigHierarchy>(re::internal::AutoRetargetRigGraphNode **a1, re::Allocator *a2, const re::RigHierarchy *a3, const re::RigHierarchy *a4)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v8 = (*(*a2 + 32))(a2, 144, 8);
  v9 = re::internal::AutoRetargetRigGraphNode::AutoRetargetRigGraphNode(v8, a2, a3, a4);
  v11[0] = &unk_1F5CB08E8;
  v11[1] = a2;
  v11[3] = v11;
  a1[4] = (a1 + 1);
  *a1 = v9;
  a1[1] = &unk_1F5CB08E8;
  a1[2] = a2;
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v11);
}

void re::internal::bipedToBipedAutoRetargetNodeCallback(int a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, re::RigDataValue *a7, uint64_t a8, re::internal::AutoRetargetRigGraphNode *a9)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    re::internal::assertLog(6, a2, a3, 0, a5, a6, a7, a8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v19);
    __break(1u);
    goto LABEL_12;
  }

  if (a4 == 1)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v20);
    __break(1u);
    goto LABEL_13;
  }

  if (a4 <= 2)
  {
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, a4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v21);
    __break(1u);
    goto LABEL_14;
  }

  if (a4 == 3)
  {
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v22);
    __break(1u);
    goto LABEL_15;
  }

  if (a4 <= 4)
  {
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 4, 4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v23);
    __break(1u);
    goto LABEL_16;
  }

  if (a4 == 5)
  {
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 5, 5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v24);
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v25);
    __break(1u);
  }

  if (!a8)
  {
    goto LABEL_17;
  }

  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v28 = 0;
  v29 = &str_67;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v33 = 0;
  v35 = 0;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = -1;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v49 = 0;
  v48 = 0;
  v44 = &str_67;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v11 = re::internal::AutoRetargetRigGraphNode::initialize(a9, (a3 + 576), (a3 + 864), (a3 + 1152), (a3 + 1440), v26);
  re::RigDataValue::~RigDataValue(v26);
  if (v11)
  {
    re::internal::AutoRetargetRigGraphNode::solveAndUpdate(a9, a3, (a3 + 288), a7);
  }
}

uint64_t re::internal::bipedToBipedAutoRetargetNodeCompile(re::Allocator **a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v108 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v23, v28);
    __break(1u);
    goto LABEL_77;
  }

  if (a3 == 1)
  {
LABEL_77:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v24, v29);
    __break(1u);
    goto LABEL_78;
  }

  if (a3 <= 2)
  {
LABEL_78:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v25, v30);
    __break(1u);
    goto LABEL_79;
  }

  if (a3 == 3)
  {
LABEL_79:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v26, v31);
    __break(1u);
LABEL_80:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v27, v32);
    __break(1u);
  }

  if (!a5)
  {
    goto LABEL_80;
  }

  v6 = *(*a2 + 184);
  v7 = *(a2[1] + 184);
  v9 = a2[2];
  v8 = a2[3];
  v10 = *a4;
  re::internal::makePoseFromRigHierarchy(a1, v6, v107);
  re::RigHierarchy::getBindPoseHierarchy(v6, v11, &v86);
  re::internal::makePoseFromRigHierarchy(a1, &v86, v106);
  re::internal::makePoseFromRigHierarchy(a1, v7, v105);
  re::RigHierarchy::getBindPoseHierarchy(v7, v12, &v70);
  re::internal::makePoseFromRigHierarchy(a1, &v70, v104);
  re::internal::makePose(a1, v6[27], v103);
  v69 = 0;
  memset(v65, 0, sizeof(v65));
  memset(v67, 0, sizeof(v67));
  v66 = 0;
  v68 = 0;
  v13 = *a1;
  re::RigGraphCallbackBuilder::init(v65, *a1);
  *&v102[0].var0 = 0x10643527A253C4;
  v102[0].var1 = "TargetPose";
  re::RigGraphCallbackBuilder::addInputParam(v65, v102, v107);
  if (*&v102[0].var0)
  {
    if (*&v102[0].var0)
    {
    }
  }

  *&v102[0].var0 = 0x104A00692196D8;
  v102[0].var1 = "SourcePose";
  re::RigGraphCallbackBuilder::addInputParam(v65, v102, v105);
  if (*&v102[0].var0)
  {
    if (*&v102[0].var0)
    {
    }
  }

  *&v102[0].var0 = 0xFC2B6F833ABE967ELL;
  v102[0].var1 = "TargetBindPose";
  re::RigGraphCallbackBuilder::addInputParam(v65, v102, v106);
  if (*&v102[0].var0)
  {
    if (*&v102[0].var0)
    {
    }
  }

  *&v102[0].var0 = 0x8AE112C755FE2F92;
  v102[0].var1 = "SourceBindPose";
  re::RigGraphCallbackBuilder::addInputParam(v65, v102, v104);
  if (*&v102[0].var0)
  {
    if (*&v102[0].var0)
    {
    }
  }

  *&v102[0].var0 = 0xE3E7F62755B346DALL;
  v102[0].var1 = "TargetModelToWorldTransform";
  re::RigGraphCallbackBuilder::addInputParam(v65, v102, v9);
  if (*&v102[0].var0)
  {
    if (*&v102[0].var0)
    {
    }
  }

  *&v102[0].var0 = 0x8128E1FAEBA80E46;
  v102[0].var1 = "SourceModelToWorldTransform";
  re::RigGraphCallbackBuilder::addInputParam(v65, v102, v8);
  if (*&v102[0].var0)
  {
    if (*&v102[0].var0)
    {
    }
  }

  *&v102[0].var0 = 0xDC3EE39E3142978ELL;
  v102[0].var1 = "SolvedTargetPose";
  re::RigGraphCallbackBuilder::addOutputParam(v65, v102, v103);
  if (*&v102[0].var0)
  {
    if (*&v102[0].var0)
    {
    }
  }

  v49 = v86;
  v50 = v87;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v51, v88);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v52, v89);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::DynamicArray(v53, v90);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::DynamicArray(v54, v91);
  re::DynamicArray<re::StringID>::DynamicArray(v55, v92);
  re::DynamicArray<unsigned long>::DynamicArray(v56, v93);
  re::DynamicArray<re::RigHierarchyJointTransform>::DynamicArray(v59, v96);
  re::DynamicArray<unsigned long>::DynamicArray(v62, v99);
  v33 = v70;
  v34 = v71;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v35, v72);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v36, v73);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::DynamicArray(v37, v74);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::DynamicArray(v38, v75);
  re::DynamicArray<re::StringID>::DynamicArray(v39, v76);
  re::DynamicArray<unsigned long>::DynamicArray(v40, v77);
  re::DynamicArray<re::RigHierarchyJointTransform>::DynamicArray(v43, v80);
  re::DynamicArray<unsigned long>::DynamicArray(v46, v83);
  re::internal::makeNodeUnique<re::internal::AutoRetargetRigGraphNode,re::Allocator,re::RigHierarchy,re::RigHierarchy>(v102, v13, &v49, &v33);
  if (v46[0])
  {
    if (v48)
    {
      (*(*v46[0] + 40))();
    }

    v48 = 0;
    memset(v46, 0, sizeof(v46));
    ++v47;
  }

  if (v43[0])
  {
    if (v45)
    {
      (*(*v43[0] + 40))();
    }

    v45 = 0;
    memset(v43, 0, sizeof(v43));
    ++v44;
  }

  if (v40[0])
  {
    if (v42)
    {
      (*(*v40[0] + 40))();
    }

    v42 = 0;
    memset(v40, 0, sizeof(v40));
    ++v41;
  }

  re::DynamicArray<re::StringID>::deinit(v39);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v38);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v37);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v36);
  v21.n128_f64[0] = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v35);
  if (v62[0])
  {
    if (v64)
    {
      (*(*v62[0] + 40))(v21.n128_f64[0]);
    }

    v64 = 0;
    memset(v62, 0, sizeof(v62));
    ++v63;
  }

  if (v59[0])
  {
    if (v61)
    {
      (*(*v59[0] + 40))(v21);
    }

    v61 = 0;
    memset(v59, 0, sizeof(v59));
    ++v60;
  }

  if (v56[0])
  {
    if (v58)
    {
      (*(*v56[0] + 40))(v21);
    }

    v58 = 0;
    memset(v56, 0, sizeof(v56));
    ++v57;
  }

  re::DynamicArray<re::StringID>::deinit(v55);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v54);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v53);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v52);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v51);
  re::RigGraphCallbackBuilder::buildCallbackData(v65, a1, re::internal::bipedToBipedAutoRetargetNodeCallback, v102);
  re::internal::bindCallbackOutputToNodeOutputPose(v6, v103, v10, a1);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v102);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v67[8]);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v65 + 8);
  re::RigDataValue::~RigDataValue(v103);
  re::RigDataValue::~RigDataValue(v104);
  if (v83[0])
  {
    if (v85)
    {
      (*(*v83[0] + 40))();
    }

    v85 = 0;
    memset(v83, 0, sizeof(v83));
    ++v84;
  }

  if (v80[0])
  {
    if (v82)
    {
      (*(*v80[0] + 40))();
    }

    v82 = 0;
    memset(v80, 0, sizeof(v80));
    ++v81;
  }

  if (v77[0])
  {
    if (v79)
    {
      (*(*v77[0] + 40))();
    }

    v79 = 0;
    memset(v77, 0, sizeof(v77));
    ++v78;
  }

  re::DynamicArray<re::StringID>::deinit(v76);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v75);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v74);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v73);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v72);
  re::RigDataValue::~RigDataValue(v105);
  re::RigDataValue::~RigDataValue(v106);
  if (v99[0])
  {
    if (v101)
    {
      (*(*v99[0] + 40))();
    }

    v101 = 0;
    memset(v99, 0, sizeof(v99));
    ++v100;
  }

  if (v96[0])
  {
    if (v98)
    {
      (*(*v96[0] + 40))();
    }

    v98 = 0;
    memset(v96, 0, sizeof(v96));
    ++v97;
  }

  if (v93[0])
  {
    if (v95)
    {
      (*(*v93[0] + 40))();
    }

    v95 = 0;
    memset(v93, 0, sizeof(v93));
    ++v94;
  }

  re::DynamicArray<re::StringID>::deinit(v92);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v91);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v90);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v89);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v88);
  re::RigDataValue::~RigDataValue(v107);
  return 1;
}

uint64_t re::internal::bipedToBipedAutoRetargetWithOffsetNodeCallback(int a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, re::RigDataValue *a7, uint64_t a8, re::internal::AutoRetargetRigGraphNode *a9)
{
  if (!a4)
  {
    re::internal::assertLog(6, a2, a3, 0, a5, a6, a7, a8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v20);
    __break(1u);
    goto LABEL_15;
  }

  if (a4 == 1)
  {
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v21);
    __break(1u);
    goto LABEL_16;
  }

  if (a4 <= 2)
  {
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, a4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v22);
    __break(1u);
    goto LABEL_17;
  }

  if (a4 == 3)
  {
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v23);
    __break(1u);
    goto LABEL_18;
  }

  if (a4 <= 4)
  {
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 4, 4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v16, v24);
    __break(1u);
    goto LABEL_19;
  }

  if (a4 == 5)
  {
LABEL_19:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 5, 5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v25);
    __break(1u);
    goto LABEL_20;
  }

  if (a4 <= 6)
  {
LABEL_20:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 6, 6);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v26);
    __break(1u);
    goto LABEL_21;
  }

  if (!a8)
  {
LABEL_21:
    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v27);
    __break(1u);
    return result;
  }

  result = re::internal::AutoRetargetRigGraphNode::initialize(a9, (a3 + 576), (a3 + 864), (a3 + 1152), (a3 + 1440), (a3 + 1728));
  if (result)
  {

    return re::internal::AutoRetargetRigGraphNode::solveAndUpdate(a9, a3, (a3 + 288), a7);
  }

  return result;
}

uint64_t re::internal::bipedToBipedAutoRetargetWithOffsetNodeCompile(re::Allocator **a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v114 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v27, v33);
    __break(1u);
    goto LABEL_81;
  }

  if (a3 == 1)
  {
LABEL_81:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v28, v34);
    __break(1u);
    goto LABEL_82;
  }

  if (a3 <= 2)
  {
LABEL_82:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v29, v35);
    __break(1u);
    goto LABEL_83;
  }

  if (a3 == 3)
  {
LABEL_83:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v30, v36);
    __break(1u);
    goto LABEL_84;
  }

  if (!a5)
  {
LABEL_84:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v31, v37);
    __break(1u);
    goto LABEL_85;
  }

  v8 = *(*a2 + 184);
  v9 = *(*(a2 + 8) + 184);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *a4;
  re::internal::makePoseFromRigHierarchy(a1, v8, v113);
  re::RigHierarchy::getBindPoseHierarchy(v8, v13, &v92);
  re::internal::makePoseFromRigHierarchy(a1, &v92, v112);
  re::internal::makePoseFromRigHierarchy(a1, v9, v111);
  re::RigHierarchy::getBindPoseHierarchy(v9, v14, &v76);
  re::internal::makePoseFromRigHierarchy(a1, &v76, v110);
  re::internal::makePose(a1, v8[27], v109);
  v75 = 0;
  memset(v71, 0, sizeof(v71));
  memset(v73, 0, sizeof(v73));
  v72 = 0;
  v74 = 0;
  v15 = *a1;
  re::RigGraphCallbackBuilder::init(v71, *a1);
  *&v108[0].var0 = 0x10643527A253C4;
  v108[0].var1 = "TargetPose";
  re::RigGraphCallbackBuilder::addInputParam(v71, v108, v113);
  if (*&v108[0].var0)
  {
    if (*&v108[0].var0)
    {
    }
  }

  *&v108[0].var0 = 0x104A00692196D8;
  v108[0].var1 = "SourcePose";
  re::RigGraphCallbackBuilder::addInputParam(v71, v108, v111);
  if (*&v108[0].var0)
  {
    if (*&v108[0].var0)
    {
    }
  }

  *&v108[0].var0 = 0xFC2B6F833ABE967ELL;
  v108[0].var1 = "TargetBindPose";
  re::RigGraphCallbackBuilder::addInputParam(v71, v108, v112);
  if (*&v108[0].var0)
  {
    if (*&v108[0].var0)
    {
    }
  }

  *&v108[0].var0 = 0x8AE112C755FE2F92;
  v108[0].var1 = "SourceBindPose";
  re::RigGraphCallbackBuilder::addInputParam(v71, v108, v110);
  if (*&v108[0].var0)
  {
    if (*&v108[0].var0)
    {
    }
  }

  *&v108[0].var0 = 0xE3E7F62755B346DALL;
  v108[0].var1 = "TargetModelToWorldTransform";
  re::RigGraphCallbackBuilder::addInputParam(v71, v108, v11);
  if (*&v108[0].var0)
  {
    if (*&v108[0].var0)
    {
    }
  }

  *&v108[0].var0 = 0x8128E1FAEBA80E46;
  v108[0].var1 = "SourceModelToWorldTransform";
  re::RigGraphCallbackBuilder::addInputParam(v71, v108, v10);
  if (*&v108[0].var0)
  {
    if (*&v108[0].var0)
    {
    }
  }

  *&v108[0].var0 = 0xA7BB9F3DA476C144;
  v108[0].var1 = "RetargetingOffsets";
  if (a3 <= 4)
  {
LABEL_85:
    re::internal::assertLog(6, v22, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 4, 4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v32, v38);
    __break(1u);
  }

  re::RigGraphCallbackBuilder::addInputParam(v71, v108, *(a2 + 32));
  if (*&v108[0].var0)
  {
    if (*&v108[0].var0)
    {
    }
  }

  *&v108[0].var0 = 0xDC3EE39E3142978ELL;
  v108[0].var1 = "SolvedTargetPose";
  re::RigGraphCallbackBuilder::addOutputParam(v71, v108, v109);
  if (*&v108[0].var0)
  {
    if (*&v108[0].var0)
    {
    }
  }

  v55 = v92;
  v56 = v93;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v57, v94);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v58, v95);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::DynamicArray(v59, v96);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::DynamicArray(v60, v97);
  re::DynamicArray<re::StringID>::DynamicArray(v61, v98);
  re::DynamicArray<unsigned long>::DynamicArray(v62, v99);
  re::DynamicArray<re::RigHierarchyJointTransform>::DynamicArray(v65, v102);
  re::DynamicArray<unsigned long>::DynamicArray(v68, v105);
  v39 = v76;
  v40 = v77;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v41, v78);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v42, v79);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::DynamicArray(v43, v80);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::DynamicArray(v44, v81);
  re::DynamicArray<re::StringID>::DynamicArray(v45, v82);
  re::DynamicArray<unsigned long>::DynamicArray(v46, v83);
  re::DynamicArray<re::RigHierarchyJointTransform>::DynamicArray(v49, v86);
  re::DynamicArray<unsigned long>::DynamicArray(v52, v89);
  re::internal::makeNodeUnique<re::internal::AutoRetargetRigGraphNode,re::Allocator,re::RigHierarchy,re::RigHierarchy>(v108, v15, &v55, &v39);
  if (v52[0])
  {
    if (v54)
    {
      (*(*v52[0] + 40))();
    }

    v54 = 0;
    memset(v52, 0, sizeof(v52));
    ++v53;
  }

  if (v49[0])
  {
    if (v51)
    {
      (*(*v49[0] + 40))();
    }

    v51 = 0;
    memset(v49, 0, sizeof(v49));
    ++v50;
  }

  if (v46[0])
  {
    if (v48)
    {
      (*(*v46[0] + 40))();
    }

    v48 = 0;
    memset(v46, 0, sizeof(v46));
    ++v47;
  }

  re::DynamicArray<re::StringID>::deinit(v45);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v44);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v43);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v42);
  v25.n128_f64[0] = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v41);
  if (v68[0])
  {
    if (v70)
    {
      (*(*v68[0] + 40))(v25.n128_f64[0]);
    }

    v70 = 0;
    memset(v68, 0, sizeof(v68));
    ++v69;
  }

  if (v65[0])
  {
    if (v67)
    {
      (*(*v65[0] + 40))(v25);
    }

    v67 = 0;
    memset(v65, 0, sizeof(v65));
    ++v66;
  }

  if (v62[0])
  {
    if (v64)
    {
      (*(*v62[0] + 40))(v25);
    }

    v64 = 0;
    memset(v62, 0, sizeof(v62));
    ++v63;
  }

  re::DynamicArray<re::StringID>::deinit(v61);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v60);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v59);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v58);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v57);
  re::RigGraphCallbackBuilder::buildCallbackData(v71, a1, re::internal::bipedToBipedAutoRetargetWithOffsetNodeCallback, v108);
  re::internal::bindCallbackOutputToNodeOutputPose(v8, v109, v12, a1);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v108);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v73[8]);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v71 + 8);
  re::RigDataValue::~RigDataValue(v109);
  re::RigDataValue::~RigDataValue(v110);
  if (v89[0])
  {
    if (v91)
    {
      (*(*v89[0] + 40))();
    }

    v91 = 0;
    memset(v89, 0, sizeof(v89));
    ++v90;
  }

  if (v86[0])
  {
    if (v88)
    {
      (*(*v86[0] + 40))();
    }

    v88 = 0;
    memset(v86, 0, sizeof(v86));
    ++v87;
  }

  if (v83[0])
  {
    if (v85)
    {
      (*(*v83[0] + 40))();
    }

    v85 = 0;
    memset(v83, 0, sizeof(v83));
    ++v84;
  }

  re::DynamicArray<re::StringID>::deinit(v82);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v81);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v80);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v79);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v78);
  re::RigDataValue::~RigDataValue(v111);
  re::RigDataValue::~RigDataValue(v112);
  if (v105[0])
  {
    if (v107)
    {
      (*(*v105[0] + 40))();
    }

    v107 = 0;
    memset(v105, 0, sizeof(v105));
    ++v106;
  }

  if (v102[0])
  {
    if (v104)
    {
      (*(*v102[0] + 40))();
    }

    v104 = 0;
    memset(v102, 0, sizeof(v102));
    ++v103;
  }

  if (v99[0])
  {
    if (v101)
    {
      (*(*v99[0] + 40))();
    }

    v101 = 0;
    memset(v99, 0, sizeof(v99));
    ++v100;
  }

  re::DynamicArray<re::StringID>::deinit(v98);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v97);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v96);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v95);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v94);
  re::RigDataValue::~RigDataValue(v113);
  return 1;
}

void re::internal::registerRetargetingSolverNode(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[2] = xmmword_1E8719BC8;
  v11[3] = *&off_1E8719BD8;
  v11[4] = xmmword_1E8719BE8;
  v11[0] = xmmword_1E8719BA8;
  v11[1] = *&off_1E8719BB8;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 4uLL, 1uLL, re::internal::retargetingSolverCompile, v11);
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

void re::internal::registerArvinoToArvinoRetargetNode(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[0] = xmmword_1E8719BF8;
  v11[1] = *&off_1E8719C08;
  v11[2] = xmmword_1E8719C18;
  v11[3] = *&off_1E8719C28;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 3uLL, 1uLL, re::internal::arvinoToArvinoRetargetNodeCompile, v11);
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

void re::internal::registerBipedToBipedRetargetNode(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[2] = xmmword_1E8719C58;
  v11[3] = *&off_1E8719C68;
  v11[4] = xmmword_1E8719C78;
  v11[0] = xmmword_1E8719C38;
  v11[1] = *&off_1E8719C48;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 4uLL, 1uLL, re::internal::bipedToBipedAutoRetargetNodeCompile, v11);
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

void re::internal::registerBipedToBipedRetargetWithOffsetNode(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[2] = xmmword_1E8719CA8;
  v11[3] = *&off_1E8719CB8;
  v11[4] = xmmword_1E8719CC8;
  v11[5] = *&off_1E8719CD8;
  v11[0] = xmmword_1E8719C88;
  v11[1] = *&off_1E8719C98;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 5uLL, 1uLL, re::internal::bipedToBipedAutoRetargetWithOffsetNodeCompile, v11);
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_33CoreIKRetargetingSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE7__cloneEPNS0_6__baseISI_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CB0868;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_33CoreIKRetargetingSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISF_EEFvSE_EEclEOSE_(uint64_t result, void *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    MEMORY[0x1E69037E0](*v2);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 5);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_33CoreIKRetargetingSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZN2re8internal14makeNodeUniqueINS0_33CoreIKRetargetingSolverNodeHelperENS_9AllocatorEJP9CoreIKRigEEEDaPT0_DpT1_EUlPvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_24AutoRetargetRigGraphNodeENS2_9AllocatorEJNS2_12RigHierarchyES7_EEEDaPT0_DpT1_EUlPvE_NS_9allocatorISE_EEFvSD_EE7__cloneEPNS0_6__baseISH_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CB08E8;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_24AutoRetargetRigGraphNodeENS2_9AllocatorEJNS2_12RigHierarchyES7_EEEDaPT0_DpT1_EUlPvE_NS_9allocatorISE_EEFvSD_EEclEOSD_(uint64_t result, uint64_t **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    if (*v2)
    {
      MEMORY[0x1E69037E0]();
    }

    re::FixedArray<CoreIKTransform>::deinit(v2 + 13);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 10);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 7);
    re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v2 + 4);
    re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v2 + 1);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_24AutoRetargetRigGraphNodeENS2_9AllocatorEJNS2_12RigHierarchyES7_EEEDaPT0_DpT1_EUlPvE_NS_9allocatorISE_EEFvSD_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZN2re8internal14makeNodeUniqueINS0_24AutoRetargetRigGraphNodeENS_9AllocatorEJNS_12RigHierarchyES4_EEEDaPT0_DpT1_EUlPvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::introspect_AnimationHandoffType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1907F0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1907F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1907F8))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE190858, "AnimationHandoffType", 4, 4, 1, 1);
      qword_1EE190858 = &unk_1F5D0C658;
      qword_1EE190898 = &re::introspect_AnimationHandoffType(BOOL)::enumTable;
      dword_1EE190868 = 9;
      __cxa_guard_release(&qword_1EE1907F8);
    }

    if (_MergedGlobals_19)
    {
      break;
    }

    _MergedGlobals_19 = 1;
    re::IntrospectionRegistry::add(&qword_1EE190858, a2);
    v41 = 0x8FFDC97622DE77ECLL;
    v42 = "AnimationHandoffType";
    v45 = 208862;
    v46 = "int";
    v4 = v44[0];
    v5 = v44[1];
    if (v45)
    {
      if (v45)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE190898;
      v45 = v4;
      v46 = v5;
      re::TypeBuilder::beginEnumType(v44, &v41, 1, 1, &v45);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v43.var0 = 2 * v11;
            v43.var1 = v10;
            re::TypeBuilder::addEnumConstant(v44, v15, &v43);
            if (*&v43.var0)
            {
              if (*&v43.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v43.var0 = 2 * v20;
              v43.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v44, v24, &v43);
              if (*&v43.var0)
              {
                if (*&v43.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v44, v26);
      xmmword_1EE190878 = v43;
      if (v41)
      {
        if (v41)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v42);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v40);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1907F0))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "SnapshotAndReplace";
      qword_1EE190828 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "Replace";
      qword_1EE190830 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "Compose";
      qword_1EE190838 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 3;
      *(v35 + 16) = "Stop";
      qword_1EE190840 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 4;
      *(v37 + 16) = "UpdateBaseAndCompose";
      qword_1EE190848 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 5;
      *(v39 + 16) = "ComposeAndUpdateBase";
      qword_1EE190850 = v39;
      __cxa_guard_release(&qword_1EE1907F0);
    }
  }
}

void *re::allocInfo_AnimationHandoffDesc(re *this)
{
  if ((atomic_load_explicit(&qword_1EE190800, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE190800))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1908A0, "AnimationHandoffDesc");
    __cxa_guard_release(&qword_1EE190800);
  }

  return &unk_1EE1908A0;
}

void re::initInfo_AnimationHandoffDesc(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v19[0] = 0x8FFDC97622CF569ALL;
  v19[1] = "AnimationHandoffDesc";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE190808, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE190808))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_float(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "fadeDuration";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0x400000001;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE190810 = v10;
    v11 = re::introspectionAllocator();
    re::introspect_AnimationHandoffType(v11, v12);
    v13 = (*(*v11 + 32))(v11, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "type";
    *(v13 + 16) = &qword_1EE190858;
    *(v13 + 24) = 0;
    *(v13 + 32) = 2;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE190818 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "layerOnly";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x800000003;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE190820 = v17;
    __cxa_guard_release(&qword_1EE190808);
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE190810;
  *(this + 9) = re::internal::defaultConstruct<re::AnimationHandoffDesc>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AnimationHandoffDesc>;
  *(this + 13) = re::internal::defaultConstructV2<re::AnimationHandoffDesc>;
  *(this + 14) = re::internal::defaultDestructV2<re::AnimationHandoffDesc>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v18 = v20;
}

void re::internal::defaultConstruct<re::AnimationHandoffDesc>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 8) = 0;
  *a3 = 0;
  *(a3 + 12) = 0x80000000;
  *(a3 + 16) = "";
}

uint64_t re::internal::defaultConstructV2<re::AnimationHandoffDesc>(uint64_t result)
{
  *(result + 8) = 0;
  *result = 0;
  *(result + 12) = 0x80000000;
  *(result + 16) = "";
  return result;
}

void re::TimelineGroup::timelineDesc(re::TimelineGroup *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 10);
  if (v4)
  {
    v5 = *(this + 11);
    v6 = 8 * v4;
    v7 = 0.0;
    do
    {
      v8 = *v5++;
      v9 = (*(*v8 + 40))(v8);
      if (v7 < v9)
      {
        v7 = v9;
      }

      v6 -= 8;
    }

    while (v6);
    v10 = v7;
  }

  else
  {
    v10 = 0.0;
  }

  *a2 = 0;
  *(a2 + 4) = v10;
  *(a2 + 8) = 1065353216;
  *(a2 + 16) = v10;
  *(a2 + 20) = 0;
  *(a2 + 24) = 0;
  *(a2 + 25) = *(this + 16);
}

double re::TimelineGroup::totalDuration(re::TimelineGroup *this)
{
  v1 = *(this + 10);
  if (!v1)
  {
    return 0.0;
  }

  v2 = *(this + 11);
  v3 = 8 * v1;
  v4 = 0.0;
  do
  {
    v5 = *v2++;
    v6 = (*(*v5 + 40))(v5);
    if (v4 < v6)
    {
      v4 = v6;
    }

    v3 -= 8;
  }

  while (v3);
  return v4;
}

void re::TimelineGroup::~TimelineGroup(re::TimelineGroup *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 9);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));
}

{
  re::FixedArray<CoreIKTransform>::deinit(this + 9);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

uint64_t re::TimelineGroup::child(re::TimelineGroup *this, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(this + 10);
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

    v12 = 476;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 11) + 8 * a2);
}

uint64_t re::internal::CoreIKFootPlacementSolverNodeHelper::updateLookAtTasks(re::internal::CoreIKFootPlacementSolverNodeHelper *this, const re::RigDataValue *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  result = CoreIKFootPlacementSolverGetGenericSolver();
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = result;
    for (i = 0; i != v4; ++i)
    {
      v7 = re::RigDataValue::attributeValue(a2, i);
      re::internal::getRuntimeValue<re::internal::IKLookAtTaskSettings>(v7, &v8);
      MEMORY[0x1E6903A00](v5, v9);
      result = CoreIKGenericConstraintSetLookAtParameters();
    }
  }

  return result;
}

uint64_t re::internal::CoreIKFootPlacementSolverNodeHelper::updateRayCastTasks(float32x4_t *a1, re::RigDataValue *a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  result = CoreIKFootPlacementSolverGetConstraintCount();
  if (result)
  {
    v7 = result;
    v8 = 0;
    for (i = 0; i != v7; ++i)
    {
      v10 = MEMORY[0x1E69038A0](a1->i64[0], i);
      result = CoreIKFootPlacementConstraintIsRayTracing();
      if (result)
      {
        v21 = a1[3].f32[0] * 0.5;
        v22 = a1[2];
        v11 = re::RigDataValue::attributeValue(a2, v8);
        re::internal::getSRTFromRDV(v23, v11);
        v12 = *(a3 + 16);
        v13 = vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL);
        v14 = vnegq_f32(v12);
        v15 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL), v14), v24, v13);
        v16 = vaddq_f32(v15, v15);
        v17 = vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL);
        v18 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL), v14), v17, v13);
        a1[1] = vsubq_f32(vaddq_f32(*(a3 + 32), vmulq_f32(*a3, vaddq_f32(vaddq_f32(v24, vmulq_laneq_f32(v17, v12, 3)), vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL)))), vmulq_n_f32(v22, v21));
        re::internal::RayCaster::cast(a1[4].i64, &a1[1], v23);
        if (LOBYTE(v23[0]) == 1)
        {
          CoreIKFootPlacementConstraintSetRayTraceParameters();
          v19.n128_u32[0] = 1.0;
          v20.n128_u32[0] = 1.0;
        }

        else
        {
          v19.n128_u64[0] = 0;
          v20.n128_u64[0] = 0;
        }

        result = MEMORY[0x1E6903860](v10, v19, v20);
        ++v8;
      }
    }
  }

  return result;
}

uint64_t re::internal::CoreIKFootPlacementSolverNodeHelper::solveAndUpdate(re::internal::CoreIKFootPlacementSolverNodeHelper *this, const re::RigDataValue *a2, re::RigDataValue *a3)
{
  CoreIKFootPlacementSolverGetGenericSolver();
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v6 = CoreIKGenericSolverSolve();
  if (re::internal::enableSignposts(0, 0))
  {
    CoreIKFootPlacementSolverGetGenericSolver();
    CoreIKGenericSolverGetConstraintCount();
    CoreIKFootPlacementSolverGetGenericSolver();
    CoreIKGenericSolverGetJointCount();
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::internal::updateOutputBasedOnSolveResult(v6, a2, (this + 184), a3);
  result = re::internal::enableSignposts(0, 0);
  if (result)
  {

    return kdebug_trace();
  }

  return result;
}

uint64_t re::internal::footPlacementSolverCallback(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, re::RigDataValue *a7, uint64_t a8, float32x4_t *a9)
{
  if (!a4)
  {
    re::internal::assertLog(6, a2, a3, 0, a5, a6, a7, a8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v33, v40);
    __break(1u);
    goto LABEL_16;
  }

  v9 = a4;
  if (a4 == 1)
  {
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v34, v41);
    __break(1u);
    goto LABEL_17;
  }

  if (a4 <= 2)
  {
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, v9);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v35, v42);
    __break(1u);
    goto LABEL_18;
  }

  re::internal::getSRTFromRDV(&v51, (a3 + 576));
  if (v9 == 3)
  {
LABEL_18:
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v36, v43);
    __break(1u);
    goto LABEL_19;
  }

  re::internal::getSRTFromRDV(&v48, (a3 + 864));
  if (v9 <= 4)
  {
LABEL_19:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 4, 4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v37, v44);
    __break(1u);
    goto LABEL_20;
  }

  if (v9 == 5)
  {
LABEL_20:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 5, 5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v38, v45);
    __break(1u);
    goto LABEL_21;
  }

  if (!a8)
  {
LABEL_21:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v39, v46);
    __break(1u);
    return result;
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  _Q2 = v52;
  v16 = vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL);
  v17 = vnegq_f32(v52);
  v18 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL), v17), v49, v16);
  _S7 = v49.i32[3];
  v20 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), v49, v52, 3), v52, v49, 3);
  __asm { FMLA            S3, S7, V2.S[3] }

  v26 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL), v17), v50, v16);
  v27 = vaddq_f32(v26, v26);
  v28 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
  v29 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL), v17), v28, v16);
  v20.i32[3] = _S3;
  v47[0] = vmulq_f32(v51, v48);
  v47[1] = v20;
  v47[2] = vaddq_f32(v53, vmulq_f32(v51, vaddq_f32(vaddq_f32(v50, vmulq_laneq_f32(v28, v52, 3)), vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL))));
  __asm { FMOV            V5.4S, #-1.0 }

  CoreIKFootPlacementSolverGetGenericSolver();
  CoreIKGenericSolverSetWorldToSolverTransform();
  re::RigDataValue::getRuntimeValue<float>(a3 + 1440, v31);
  CoreIKFootPlacementSolverSetBodyControllerParameters();
  re::internal::CoreIKFootPlacementSolverNodeHelper::updateRayCastTasks(a9, (a3 + 288), v47);
  re::internal::CoreIKFootPlacementSolverNodeHelper::updateLookAtTasks(a9->i64[0], (a3 + 1152));
  re::internal::transferPose(a3, &a9[11].i64[1]);
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  return re::internal::CoreIKFootPlacementSolverNodeHelper::solveAndUpdate(a9, a3, a7);
}

uint64_t re::internal::footPlacementSolverCompile(re::Allocator **a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v52[37] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v31, v36);
    __break(1u);
    goto LABEL_34;
  }

  if (a3 == 1)
  {
LABEL_34:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v32, v37);
    __break(1u);
    goto LABEL_35;
  }

  if (a3 <= 2)
  {
LABEL_35:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v33, v38);
    __break(1u);
    goto LABEL_36;
  }

  if (a3 == 3)
  {
LABEL_36:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v34, v39);
    __break(1u);
    goto LABEL_37;
  }

  v10 = a2[1];
  v11 = *(*a2 + 184);
  v12 = a2[2];
  v13 = a2[3];
  v51[0] = 0x51C691EF1C9C00D8;
  v51[1] = "IKLookAtTaskSettings[0]";
  re::internal::makeRigDataValue(a1, v51, v52);
  if (v51[0])
  {
    if (v51[0])
    {
    }
  }

  if (a3 == 5)
  {
    re::RigDataValue::operator=(v52, a2[4]);
  }

  if (!a5)
  {
LABEL_37:
    re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v35, v40);
    __break(1u);
  }

  v16 = *a4;
  v17 = strlen(*(v10 + 232));
  v18 = MEMORY[0x1E6903780](*(v10 + 232), v17);
  re::internal::makePoseFromRig(a1, v11, v18, v51);
  v19 = MEMORY[0x1E6903C40](v18);
  re::internal::makePose(a1, v19, v50);
  v20 = *a1;
  re::internal::makeNodeUnique<re::internal::CoreIKFootPlacementSolverNodeHelper,re::Allocator,CoreIKRig *,std::reference_wrapper<re::CollisionWorld const>>(v49, *a1, v18, *(a1[2] + 7));
  re::internal::makeModelSpacePoseForRayTracingJoints(a1, v11, *v49[0], v48);
  v21 = re::RigHierarchy::jointName(v11, 0);
  re::internal::makeModelSpaceJointPoseRDV(a1, v11, *(v21 + 8), v47);
  v46 = 0;
  memset(v42, 0, sizeof(v42));
  v43 = 0;
  memset(v44, 0, sizeof(v44));
  v45 = 0;
  re::RigGraphCallbackBuilder::init(v42, v20);
  *&v41.var0 = 0x76F1BA5D1EB6;
  v41.var1 = "InputPose";
  re::RigGraphCallbackBuilder::addInputParam(v42, &v41, v51);
  if (*&v41.var0)
  {
    if (*&v41.var0)
    {
    }
  }

  *&v41.var0 = 0x10988E7944E83FE6;
  v41.var1 = "ModelSpaceRayCastTransforms";
  re::RigGraphCallbackBuilder::addInputParam(v42, &v41, v48);
  if (*&v41.var0)
  {
    if (*&v41.var0)
    {
    }
  }

  *&v41.var0 = 0x1F85042B1B4E4034;
  v41.var1 = "WorldTransform";
  re::RigGraphCallbackBuilder::addInputParam(v42, &v41, v13);
  if (*&v41.var0)
  {
    if (*&v41.var0)
    {
    }
  }

  *&v41.var0 = 0xF5F802EF32C90F2;
  v41.var1 = "SolverTransform";
  re::RigGraphCallbackBuilder::addInputParam(v42, &v41, v47);
  if (*&v41.var0)
  {
    if (*&v41.var0)
    {
    }
  }

  *&v41.var0 = 0x1D028121B777EB8;
  v41.var1 = "LookAtTasks";
  re::RigGraphCallbackBuilder::addInputParam(v42, &v41, v52);
  if (*&v41.var0)
  {
    if (*&v41.var0)
    {
    }
  }

  *&v41.var0 = 0x4DF90C13235A0886;
  v41.var1 = "HipOffsetMultiplier";
  re::RigGraphCallbackBuilder::addInputParam(v42, &v41, v12);
  if (*&v41.var0)
  {
    if (*&v41.var0)
    {
    }
  }

  *&v41.var0 = 0x10498EC9357CACLL;
  v41.var1 = "SolvedPose";
  re::RigGraphCallbackBuilder::addOutputParam(v42, &v41, v50);
  if (*&v41.var0)
  {
    if (*&v41.var0)
    {
    }
  }

  re::RigGraphCallbackBuilder::buildCallbackData(v42, a1, re::internal::footPlacementSolverCallback, v49);
  v29 = re::internal::bindCallbackOutputToNodeOutputPose(v11, v50, v18, a1, v16);
  MEMORY[0x1E69037D0](v18, v29);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v44 + 8);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v42 + 8);
  re::RigDataValue::~RigDataValue(v47);
  re::RigDataValue::~RigDataValue(v48);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v49);
  re::RigDataValue::~RigDataValue(v50);
  re::RigDataValue::~RigDataValue(v51);
  re::RigDataValue::~RigDataValue(v52);
  return 1;
}

uint64_t re::internal::makeNodeUnique<re::internal::CoreIKFootPlacementSolverNodeHelper,re::Allocator,CoreIKRig *,std::reference_wrapper<re::CollisionWorld const>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v8 = (*(*a2 + 32))(a2, 224, 16);
  *v8 = CoreIKFootPlacementSolverCreate();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0;
  *(v8 + 64) = a4;
  *(v8 + 80) = 0;
  *(v8 + 88) = 0;
  *(v8 + 84) = 0xFFFFFFFF00000001;
  *(v8 + 124) = 0u;
  *(v8 + 152) = 0u;
  *(v8 + 140) = 0u;
  *(v8 + 108) = 0u;
  *(v8 + 92) = 0u;
  *(v8 + 128) = 1;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 136) = 0;
  *(v8 + 160) = 0;
  *(v8 + 176) = a2;
  *(v8 + 192) = 0;
  *(v8 + 200) = 0;
  *(v8 + 184) = 0;
  *(v8 + 208) = 1;
  v9 = MEMORY[0x1E6903C40](a3);
  re::FixedArray<CoreIKTransform>::init<>((v8 + 184), a2, v9);
  CoreIKFootPlacementSolverGetGenericSolver();
  CoreIKGenericSolverGetTargetRestPose();
  v11 = vmulq_f32(v10, v10);
  *(v8 + 16) = 0u;
  *(v8 + 32) = xmmword_1E30476B0;
  *(v8 + 48) = sqrtf(v11.f32[2] + vaddv_f32(*v11.f32)) * 4.0;
  v13[0] = &unk_1F5CB0A00;
  v13[1] = a2;
  v13[3] = v13;
  a1[4] = (a1 + 1);
  *a1 = v8;
  a1[1] = &unk_1F5CB0A00;
  a1[2] = a2;
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v13);
}

uint64_t re::internal::footPlacementDebugSolverCallback(uint64_t a1, uint64_t a2, _BOOL8 a3, unint64_t a4, uint64_t a5, uint64_t a6, re::RigDataValue *a7, uint64_t a8, float32x4_t *a9)
{
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (a4 <= 3)
  {
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, a4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v40, v47);
    __break(1u);
    goto LABEL_16;
  }

  re::internal::getSRTFromRDV(&v58, (a3 + 864));
  if (a4 == 4)
  {
LABEL_16:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 4, 4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v41, v48);
    __break(1u);
    goto LABEL_17;
  }

  re::internal::getSRTFromRDV(&v55, (a3 + 1152));
  _Q2 = v59;
  v16 = vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL);
  v17 = vnegq_f32(v59);
  v18 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL), v17), v56, v16);
  _S7 = v56.i32[3];
  v20 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), v56, v59, 3), v59, v56, 3);
  __asm { FMLA            S3, S7, V2.S[3] }

  v26 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v57, v57), v57, 0xCuLL), v17), v57, v16);
  v27 = vaddq_f32(v26, v26);
  v28 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
  v29 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL), v17), v28, v16);
  v20.i32[3] = _S3;
  v54[0] = vmulq_f32(v58, v55);
  v54[1] = v20;
  v54[2] = vaddq_f32(v60, vmulq_f32(v58, vaddq_f32(vaddq_f32(v57, vmulq_laneq_f32(v28, v59, 3)), vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL))));
  __asm { FMOV            V5.4S, #-1.0 }

  CoreIKFootPlacementSolverGetGenericSolver();
  CoreIKGenericSolverSetWorldToSolverTransform();
  re::RigDataValue::getRuntimeValue<float>(a3 + 576, v31);
  CoreIKFootPlacementSolverSetBodyControllerParameters();
  re::internal::CoreIKFootPlacementSolverNodeHelper::updateRayCastTasks(a9, (a3 + 288), v54);
  if (a4 <= 5)
  {
LABEL_17:
    re::internal::assertLog(6, v32, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 5, 5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v42, v49);
    __break(1u);
    goto LABEL_18;
  }

  re::internal::CoreIKFootPlacementSolverNodeHelper::updateLookAtTasks(a9->i64[0], (a3 + 1440));
  GenericSolver = CoreIKFootPlacementSolverGetGenericSolver();
  if (a4 == 6)
  {
LABEL_18:
    re::internal::assertLog(6, v34, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 6, 6);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v43, v50);
    __break(1u);
    goto LABEL_19;
  }

  v35 = GenericSolver;
  re::internal::GameRigSettingsUpdateHelper::updateRigJointSettings((a3 + 1728), GenericSolver);
  if (a4 <= 7)
  {
LABEL_19:
    re::internal::assertLog(6, v36, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 7, 7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v44, v51);
    __break(1u);
    goto LABEL_20;
  }

  re::internal::GameRigSettingsUpdateHelper::updateRigTaskSettings((a3 + 2016), v35);
  if (a4 == 8)
  {
LABEL_20:
    re::internal::assertLog(6, v37, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 8, 8);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v45, v52);
    __break(1u);
LABEL_21:
    re::internal::assertLog(6, v38, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v46, v53);
    __break(1u);
    return result;
  }

  re::internal::GameRigSettingsUpdateHelper::updateRigSolverSettings((a3 + 2304), v35);
  re::internal::transferPose(a3, &a9[11].i64[1]);
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (!a8)
  {
    goto LABEL_21;
  }

  return re::internal::CoreIKFootPlacementSolverNodeHelper::solveAndUpdate(a9, a3, a7);
}

uint64_t re::internal::footPlacementSolverDebugCompile(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v65 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v36, v45);
    __break(1u);
    goto LABEL_44;
  }

  if (a3 == 1)
  {
LABEL_44:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v37, v46);
    __break(1u);
LABEL_45:
    re::internal::assertLog(6, v19, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v38, v47);
    __break(1u);
LABEL_46:
    re::internal::assertLog(6, v21, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v39, v48);
    __break(1u);
LABEL_47:
    re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 4, 4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v40, v49);
    __break(1u);
LABEL_48:
    re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 5, 5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v41, v50);
    __break(1u);
LABEL_49:
    re::internal::assertLog(6, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 6, 6);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v42, v51);
    __break(1u);
LABEL_50:
    re::internal::assertLog(6, v30, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 7, 7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v43, v52);
    __break(1u);
    goto LABEL_51;
  }

  v10 = *(*a2 + 184);
  v11 = *(*(a2 + 8) + 232);
  v12 = strlen(v11);
  v13 = MEMORY[0x1E6903780](v11, v12);
  re::internal::makePoseFromRig(a1, v10, v13, v64);
  v14 = MEMORY[0x1E6903C40](v13);
  re::internal::makePose(a1, v14, v63);
  v15 = *a1;
  re::internal::makeNodeUnique<re::internal::CoreIKFootPlacementSolverNodeHelper,re::Allocator,CoreIKRig *,std::reference_wrapper<re::CollisionWorld const>>(v62, *a1, v13, *(*(a1 + 16) + 56));
  re::internal::makeModelSpacePoseForRayTracingJoints(a1, v10, *v62[0], v61);
  v16 = re::RigHierarchy::jointName(v10, 0);
  re::internal::makeModelSpaceJointPoseRDV(a1, v10, *(v16 + 8), v60);
  v59 = 0;
  memset(v55, 0, sizeof(v55));
  v56 = 0;
  memset(v57, 0, sizeof(v57));
  v58 = 0;
  re::RigGraphCallbackBuilder::init(v55, v15);
  *&v54.var0 = 0x76F1BA5D1EB6;
  v54.var1 = "InputPose";
  re::RigGraphCallbackBuilder::addInputParam(v55, &v54, v64);
  if (*&v54.var0)
  {
    if (*&v54.var0)
    {
    }
  }

  *&v54.var0 = 0x10988E7944E83FE6;
  v54.var1 = "ModelSpaceRayCastTransforms";
  re::RigGraphCallbackBuilder::addInputParam(v55, &v54, v61);
  if (*&v54.var0)
  {
    if (*&v54.var0)
    {
    }
  }

  *&v54.var0 = 0x4DF90C13235A0886;
  v54.var1 = "HipOffsetMultiplier";
  if (a3 <= 2)
  {
    goto LABEL_45;
  }

  re::RigGraphCallbackBuilder::addInputParam(v55, &v54, *(a2 + 16));
  if (*&v54.var0)
  {
    if (*&v54.var0)
    {
    }
  }

  *&v54.var0 = 0x1F85042B1B4E4034;
  v54.var1 = "WorldTransform";
  if (a3 == 3)
  {
    goto LABEL_46;
  }

  re::RigGraphCallbackBuilder::addInputParam(v55, &v54, *(a2 + 24));
  if (*&v54.var0)
  {
    if (*&v54.var0)
    {
    }
  }

  *&v54.var0 = 0xF5F802EF32C90F2;
  v54.var1 = "SolverTransform";
  re::RigGraphCallbackBuilder::addInputParam(v55, &v54, v60);
  if (*&v54.var0)
  {
    if (*&v54.var0)
    {
    }
  }

  *&v54.var0 = 0x80FA33623D02F274;
  v54.var1 = "LookAtTaskSettings";
  if (a3 <= 4)
  {
    goto LABEL_47;
  }

  re::RigGraphCallbackBuilder::addInputParam(v55, &v54, *(a2 + 32));
  if (*&v54.var0)
  {
    if (*&v54.var0)
    {
    }
  }

  *&v54.var0 = 0x608B8AAFAB2B677ALL;
  v54.var1 = "RigJointSettings";
  if (a3 == 5)
  {
    goto LABEL_48;
  }

  re::RigGraphCallbackBuilder::addInputParam(v55, &v54, *(a2 + 40));
  if (*&v54.var0)
  {
    if (*&v54.var0)
    {
    }
  }

  *&v54.var0 = 0x963E12F0C5BD5BB0;
  v54.var1 = "RigTaskSettings";
  if (a3 <= 6)
  {
    goto LABEL_49;
  }

  re::RigGraphCallbackBuilder::addInputParam(v55, &v54, *(a2 + 48));
  if (*&v54.var0)
  {
    if (*&v54.var0)
    {
    }
  }

  *&v54.var0 = 0x86B1473B92D2CCCCLL;
  v54.var1 = "RigSolverSettings";
  if (a3 == 7)
  {
    goto LABEL_50;
  }

  re::RigGraphCallbackBuilder::addInputParam(v55, &v54, *(a2 + 56));
  if (*&v54.var0)
  {
    if (*&v54.var0)
    {
    }
  }

  *&v54.var0 = 0x10498EC9357CACLL;
  v54.var1 = "SolvedPose";
  re::RigGraphCallbackBuilder::addOutputParam(v55, &v54, v63);
  if (*&v54.var0)
  {
    if (*&v54.var0)
    {
    }
  }

  re::RigGraphCallbackBuilder::buildCallbackData(v55, a1, re::internal::footPlacementDebugSolverCallback, v62);
  if (!a5)
  {
LABEL_51:
    re::internal::assertLog(6, v33, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v44, v53);
    __break(1u);
  }

  v34 = re::internal::bindCallbackOutputToNodeOutputPose(v10, v63, v13, a1, *a4);
  if (v13)
  {
    MEMORY[0x1E69037D0](v13, v34);
  }

  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v57 + 8);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v55 + 8);
  re::RigDataValue::~RigDataValue(v60);
  re::RigDataValue::~RigDataValue(v61);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v62);
  re::RigDataValue::~RigDataValue(v63);
  re::RigDataValue::~RigDataValue(v64);
  return 1;
}

void re::internal::registerFootPlacementSolverNoLookAtNode(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[2] = xmmword_1E8719D08;
  v11[3] = *&off_1E8719D18;
  v11[4] = xmmword_1E8719D28;
  v11[0] = xmmword_1E8719CE8;
  v11[1] = *&off_1E8719CF8;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 4uLL, 1uLL, re::internal::footPlacementSolverCompile, v11);
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

void re::internal::registerFootPlacementSolverNode(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[2] = xmmword_1E8719D58;
  v11[3] = *&off_1E8719D68;
  v11[4] = xmmword_1E8719D78;
  v11[5] = *&off_1E8719D88;
  v11[0] = xmmword_1E8719D38;
  v11[1] = *&off_1E8719D48;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 5uLL, 1uLL, re::internal::footPlacementSolverCompile, v11);
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

void re::internal::registerFootPlacementSolverDebugNode(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[6] = xmmword_1E8719DF8;
  v11[7] = *&off_1E8719E08;
  v11[8] = xmmword_1E8719E18;
  v11[2] = xmmword_1E8719DB8;
  v11[3] = *&off_1E8719DC8;
  v11[4] = xmmword_1E8719DD8;
  v11[5] = *&off_1E8719DE8;
  v11[0] = xmmword_1E8719D98;
  v11[1] = *&off_1E8719DA8;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 8uLL, 1uLL, re::internal::footPlacementSolverDebugCompile, v11);
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_35CoreIKFootPlacementSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigNS_17reference_wrapperIKNS2_14CollisionWorldEEEEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISJ_EEFvSI_EE7__cloneEPNS0_6__baseISM_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CB0A00;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_35CoreIKFootPlacementSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigNS_17reference_wrapperIKNS2_14CollisionWorldEEEEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISJ_EEFvSI_EEclEOSI_(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    CoreIKFootPlacementSolverDestroy();
    re::FixedArray<CoreIKTransform>::deinit((v2 + 184));
    re::BucketArray<re::CollisionCastHit,10ul>::deinit(v2 + 112);
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v2 + 112);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_35CoreIKFootPlacementSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigNS_17reference_wrapperIKNS2_14CollisionWorldEEEEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISJ_EEFvSI_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZN2re8internal14makeNodeUniqueINS0_35CoreIKFootPlacementSolverNodeHelperENS_9AllocatorEJP9CoreIKRigNSt3__117reference_wrapperIKNS_14CollisionWorldEEEEEEDaPT0_DpT1_EUlPvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::internal::feetSlidingSolverCallback(uint64_t a1, uint64_t a2, re::RigDataValue *a3, uint64_t a4, uint64_t a5, uint64_t a6, re::RigDataValue *a7, uint64_t a8, uint64_t a9)
{
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (!a4)
  {
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v19);
    __break(1u);
LABEL_19:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v20);
    __break(1u);
    return result;
  }

  re::internal::transferPose(a3, a9 + 16);
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (!a8)
  {
    goto LABEL_19;
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v15 = MEMORY[0x1E69036F0](*a9, *(a9 + 32), *(a9 + 24));
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::internal::updateOutputBasedOnSolveResult(v15, a3, (a9 + 16), a7);
  result = re::internal::enableSignposts(0, 0);
  if (result)
  {

    return kdebug_trace();
  }

  return result;
}

uint64_t re::internal::feetSlidingSolverCompile(re::Allocator **a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v35[4] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (a3 == 1)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
  }

  if (!a5)
  {
    goto LABEL_13;
  }

  v6 = a2[1];
  v7 = *a4;
  v8 = *(*a2 + 232);
  v9 = strlen(v8);
  v10 = MEMORY[0x1E6903780](v8, v9);
  v11 = *a1;
  v12 = (*(**a1 + 32))(*a1, 40, 8);
  *v12 = CoreIKCreateACPSlidingSolverFromRig();
  v12[1] = v11;
  v12[3] = 0;
  v12[4] = 0;
  v12[2] = 0;
  v13 = MEMORY[0x1E6903C40](v10);
  re::FixedArray<CoreIKTransform>::init<>(v12 + 2, v11, v13);
  v33[0] = &unk_1F5CB0A80;
  v33[1] = v11;
  v33[3] = v33;
  v35[3] = v35;
  v34 = v12;
  v35[0] = &unk_1F5CB0A80;
  v35[1] = v11;
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v33);
  v14 = *(v6 + 184);
  re::internal::makePoseFromRig(a1, v14, v10, v33);
  v15 = MEMORY[0x1E6903C40](v10);
  re::internal::makePose(a1, v15, v32);
  v31 = 0;
  memset(v27, 0, sizeof(v27));
  v28 = 0;
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  re::RigGraphCallbackBuilder::init(v27, *a1);
  *&v26.var0 = 0x10643527A253C4;
  v26.var1 = "TargetPose";
  re::RigGraphCallbackBuilder::addInputParam(v27, &v26, v33);
  if (*&v26.var0)
  {
    if (*&v26.var0)
    {
    }
  }

  *&v26.var0 = 0x10498EC9357CACLL;
  v26.var1 = "SolvedPose";
  re::RigGraphCallbackBuilder::addOutputParam(v27, &v26, v32);
  if (*&v26.var0)
  {
    if (*&v26.var0)
    {
    }
  }

  re::RigGraphCallbackBuilder::buildCallbackData(v27, a1, re::internal::feetSlidingSolverCallback, &v34);
  v18 = re::internal::bindCallbackOutputToNodeOutputPose(v14, v32, v10, a1, v7);
  MEMORY[0x1E69037D0](v10, v18);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v29 + 8);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v27 + 8);
  re::RigDataValue::~RigDataValue(v32);
  re::RigDataValue::~RigDataValue(v33);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v34);
  return 1;
}

void re::internal::registerFeetSlidingSolverNode(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[0] = xmmword_1E8719E28;
  v11[1] = *&off_1E8719E38;
  v11[2] = xmmword_1E8719E48;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 2uLL, 1uLL, re::internal::feetSlidingSolverCompile, v11);
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_32CoreIKACPSlidingSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE7__cloneEPNS0_6__baseISI_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CB0A80;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_32CoreIKACPSlidingSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISF_EEFvSE_EEclEOSE_(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    CoreIKDestroyACPSlidingSolver();
    re::FixedArray<CoreIKTransform>::deinit((v2 + 16));
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_32CoreIKACPSlidingSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZN2re8internal14makeNodeUniqueINS0_32CoreIKACPSlidingSolverNodeHelperENS_9AllocatorEJP9CoreIKRigEEEDaPT0_DpT1_EUlPvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *re::AnimationController::indexOf@<X0>(void *this@<X0>, const re::Timeline *a2@<X1>, uint64_t a3@<X8>)
{
  if (*this && (this = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (this[1] >> 56 << 6) + 72, this[1])) != 0)
  {
    if (a2)
    {
      v6 = this[13];
      v5 = this[14];
      if (v6)
      {
        v7 = 8 * v6;
        v8 = this[14];
        while (*v8 != a2)
        {
          ++v8;
          v7 -= 8;
          if (!v7)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        v8 = this[14];
      }

      if (v8 == (v5 + 8 * v6))
      {
LABEL_14:
        v9 = 0;
      }

      else
      {
        *(a3 + 8) = (v8 - v5) >> 3;
        v9 = 1;
      }

      *a3 = v9;
    }

    else
    {
      *a3 = 1;
      *(a3 + 8) = 0;
    }
  }

  else
  {
    *a3 = 0;
  }

  return this;
}

void re::AnimationController::pause(uint64_t *this)
{
  if (*this)
  {
    v1 = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (this[1] >> 56 << 6) + 72, this[1]);
    if (v1)
    {

      re::internal::TimelineTreeInfo::setPaused(v1, 1);
    }
  }
}

void re::AnimationController::resume(uint64_t *this)
{
  if (*this)
  {
    v1 = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (this[1] >> 56 << 6) + 72, this[1]);
    if (v1)
    {

      re::internal::TimelineTreeInfo::setPaused(v1, 0);
    }
  }
}

double re::AnimationController::stop(re::Scheduler *this, double a2)
{
  if (*this)
  {
    v2 = *&a2;
    v4 = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (*(this + 1) >> 56 << 6) + 72, *(this + 1));
    if (v4)
    {
      v5 = v4;
      v6 = *this;
      if (v2 <= 0.0)
      {

        return re::AnimationManager::remove(v6, v5, 1uLL);
      }

      else
      {
        v7 = 3;
        v8 = 0;
        v9 = 1;
        v10 = 0;
        v11 = v2;
        re::AnimationManager::addFadeOutHandoffBehavior(v6, v5, &v7);
      }
    }
  }

  return a2;
}

void re::AnimationController::updateAndApply(re::AnimationController *this)
{
  if (*this)
  {
    v2 = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (*(this + 1) >> 56 << 6) + 72, *(this + 1));
    if (v2)
    {
      v3 = v2;
      v4 = *this;

      re::AnimationManager::updateAndApplyAnimations(v4, v3);
    }
  }
}

uint64_t re::AnimationController::isPaused(re::AnimationController *this)
{
  if (!*this)
  {
    return 0;
  }

  result = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (*(this + 1) >> 56 << 6) + 72, *(this + 1));
  if (result)
  {
    do
    {
      v2 = result;
      result = *(result + 288);
    }

    while (result);
    return *(v2 + 249) == 1;
  }

  return result;
}

uint64_t *re::AnimationController::setParentClockOrTimebase(uint64_t *this, void *a2)
{
  if (*this)
  {
    this = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (this[1] >> 56 << 6) + 72, this[1]);
    if (this)
    {
      if (a2)
      {
        v3 = a2;
      }

      else
      {
        v3 = 0;
      }

      return re::internal::TimelineTreeInfo::setParentClockOrTimebase(this, v3, 0);
    }
  }

  return this;
}

void *re::AnimationController::timebase@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  if (*this && (this = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (this[1] >> 56 << 6) + 72, this[1])) != 0)
  {
    do
    {
      v3 = this;
      this = this[36];
    }

    while (this);
    *a2 = 1;
    *(a2 + 8) = v3[34];
  }

  else
  {
    *a2 = 0;
  }

  return this;
}

float re::AnimationController::speed(re::AnimationController *this)
{
  if (!*this)
  {
    return NAN;
  }

  v1 = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (*(this + 1) >> 56 << 6) + 72, *(this + 1));
  if (!v1)
  {
    return NAN;
  }

  do
  {
    v2 = v1;
    v1 = *(v1 + 288);
  }

  while (v1);
  return *(v2 + 252);
}

uint64_t re::AnimationController::setSpeed(uint64_t this, float a2)
{
  if (*this)
  {
    this = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (*(this + 8) >> 56 << 6) + 72, *(this + 8));
    if (this)
    {
      if (!*(this + 288))
      {
        *(this + 252) = a2;
        if (!*(this + 249))
        {
          v3 = *(this + 272);

          return CMTimebaseSetRate(v3, a2);
        }
      }
    }
  }

  return this;
}

uint64_t re::AnimationController::timeline(re::AnimationController *this)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!*this)
  {
    return 0;
  }

  result = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (*(this + 1) >> 56 << 6) + 72, *(this + 1));
  if (result)
  {
    if (!*(result + 104))
    {
      v5 = 0;
      memset(v14, 0, sizeof(v14));
      v2 = MEMORY[0x1E69E9C10];
      v6 = 136315906;
      v7 = "operator[]";
      v8 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v3 = 3;
      }

      else
      {
        v3 = 2;
      }

      v9 = 476;
      v10 = 2048;
      v11 = 0;
      v12 = 2048;
      v13 = 0;
      _os_log_send_and_compose_impl(v3, &v5, v14, 80, &dword_1E1C61000, v2, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v6, 38, v4);
      _os_crash_msg();
      __break(1u);
    }

    return **(result + 112);
  }

  return result;
}

double re::AnimationController::clock@<D0>(uint64_t *__return_ptr a1@<X8>, re::AnimationController *this@<X0>, const re::Timeline *a3@<X1>)
{
  re::AnimationController::indexOf(this, a3, v14);
  if (v14[0] == 1)
  {
    v5 = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (*(this + 1) >> 56 << 6) + 72, *(this + 1));
    v6 = v15;
    v8 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((v5 + 80), v7);
    v9 = re::RelativeArray<re::AnimationClock>::operator[](v8, v6);
    *a1 = *v9;
    v10 = v9[16];
    *(a1 + 16) = v10;
    if (v10 == 1)
    {
      a1[3] = *(v9 + 3);
    }

    v11 = *(v9 + 2);
    v12 = *(v9 + 3);
    *(a1 + 2) = v11;
    *(a1 + 3) = v12;
    a1[8] = *(v9 + 8);
  }

  else
  {
    *&v11 = 0;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *a1 = 1;
    *(a1 + 15) = 0;
    *(a1 + 16) = 0;
    *(a1 + 36) = 0;
    *(a1 + 44) = 0;
    *(a1 + 49) = 0;
    *(a1 + 17) = 2;
  }

  return *&v11;
}

void re::AnimationController::time(re::AnimationController *this@<X0>, uint64_t a2@<X8>)
{
  if (*this && (v3 = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (*(this + 1) >> 56 << 6) + 72, *(this + 1))) != 0)
  {
    v4 = re::internal::TimelineTreeInfo::currentTime(v3);
    *a2 = 1;
    *(a2 + 8) = v4;
  }

  else
  {
    *a2 = 0;
  }
}

uint64_t *re::AnimationController::setTime(uint64_t *this, double a2)
{
  if (*this)
  {
    this = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (this[1] >> 56 << 6) + 72, this[1]);
    if (this)
    {

      return re::internal::TimelineTreeInfo::setCurrentTime(this, a2);
    }
  }

  return this;
}

uint64_t re::internal::TimelineTreeInfo::setCurrentTime(uint64_t this, double a2)
{
  if (!*(this + 288))
  {
    v10 = v5;
    v11 = v4;
    v12 = v2;
    v13 = v3;
    v7 = this;
    if (*(this + 264) && *(this + 256))
    {
      realitykit_willSetWithString(this + 264, this + 256, "AnimationPlaybackController.time");
    }

    v8 = v7[34];
    CMTimeMake(&time, (a2 * 18000.0 + 0.5), 18000);
    this = CMTimebaseSetTime(v8, &time);
    if (v7[33])
    {
      if (v7[32])
      {
        return realitykit_didSetWithString((v7 + 33), (v7 + 32), "AnimationPlaybackController.time");
      }
    }
  }

  return this;
}

float re::AnimationController::blendFactor(re::AnimationController *this, const re::Timeline *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  re::AnimationController::indexOf(this, a2, &v13);
  if (v13 != 1)
  {
    return NAN;
  }

  if (*this)
  {
    v3 = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (*(this + 1) >> 56 << 6) + 72, *(this + 1));
  }

  else
  {
    v3 = 0;
  }

  v5 = v14;
  v6 = *(v3 + 184);
  if (v6 <= v14)
  {
    v15 = 0;
    memset(v24, 0, sizeof(v24));
    v9 = MEMORY[0x1E69E9C10];
    v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v16 = 136315906;
    v17 = "operator[]";
    v18 = 1024;
    if (v10)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v19 = 468;
    v20 = 2048;
    v21 = v5;
    v22 = 2048;
    v23 = v6;
    _os_log_send_and_compose_impl(v11, &v15, v24, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v12, v13);
    _os_crash_msg();
    __break(1u);
  }

  v7 = (*(v3 + 192) + 12 * v14);
  v8 = 4;
  if (*v7)
  {
    v8 = 8;
  }

  return *&v7[v8];
}

uint64_t re::AnimationController::setBlendFactor(re::AnimationController *this, float a2, const re::Timeline *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  result = re::AnimationController::indexOf(this, a3, &v12);
  if (v12 == 1)
  {
    if (*this)
    {
      result = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (*(this + 1) >> 56 << 6) + 72, *(this + 1));
    }

    else
    {
      result = 0;
    }

    v6 = v13;
    v7 = *(result + 184);
    if (v7 <= v13)
    {
      v14 = 0;
      memset(v23, 0, sizeof(v23));
      v8 = MEMORY[0x1E69E9C10];
      v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v15 = 136315906;
      v16 = "operator[]";
      v17 = 1024;
      if (v9)
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v18 = 468;
      v19 = 2048;
      v20 = v6;
      v21 = 2048;
      v22 = v7;
      _os_log_send_and_compose_impl(v10, &v14, v23, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v11, v12);
      _os_crash_msg();
      __break(1u);
    }

    *(*(result + 192) + 12 * v13 + 4) = a2;
  }

  return result;
}

void *re::AnimationController::setParentController(re::AnimationController *this, const re::AnimationController *a2)
{
  if (a2)
  {
    result = re::AnimationController::timebase(a2, v7);
    if (v7[0] != 1)
    {
      return result;
    }

    if (*this)
    {
      v4 = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (*(this + 1) >> 56 << 6) + 72, *(this + 1));
    }

    else
    {
      v4 = 0;
    }

    v5 = v8;
    v6 = 1;
  }

  else
  {
    if (*this)
    {
      v4 = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*this + (*(this + 1) >> 56 << 6) + 72, *(this + 1));
    }

    else
    {
      v4 = 0;
    }

    v5 = 0;
    v6 = 0;
  }

  return re::internal::TimelineTreeInfo::setParentClockOrTimebase(v4, v5, v6);
}

void re::RigDataTypeClass::rigDataTypeParser(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v148 = *MEMORY[0x1E69E9840];
  v6 = re::RigDataParser::parseAlphaNumeric(a2);
  v8 = v7;
  if (!strncmp(v6, "struct", v7) && !aStruct_0[v8] && (v24 = (*a2 + *(a2 + 8) - &v6[v8]), *&v143.var0 = &v6[v8], v143.var1 = v24, v25 = re::RigDataParser::parseAlphaNumeric(&v143), v26) && (v27 = v25, v28 = v26, v29 = *a2 + *(a2 + 8), *&v143.var0 = &v26[v25], v143.var1 = (v29 - &v26[v25]), v30 = re::RigDataParser::parseWhitespace(&v143), v32 = &v30[v31], v33 = &v30[v31] < v29, !strncmp(&v30[v31], "{", v33)) && !asc_1E3139C82[v33])
  {
    v34 = &v32[v33];
    *&v130.var0 = v27;
    v130.var1 = v28;
    *&v131.var0 = 0;
    v131.var1 = 0;
    LODWORD(v132) = 1;
    v134 = 0;
    v135 = 0;
    v133 = 0;
    v136 = 0;
    v35 = *a2;
    v36 = *(a2 + 8);
    v37 = *a2 + v36;
    if (v34 >= v37)
    {
      HIDWORD(v125) = 1;
      v124 = 0;
      v129 = 0;
      v38 = 0;
    }

    else
    {
      v124 = 0;
      v129 = 0;
      v38 = 0;
      HIDWORD(v125) = 1;
      while (1)
      {
        *&v143.var0 = v34;
        v143.var1 = (v37 - v34);
        v39 = re::RigDataParser::parseWhitespace(&v143);
        v41 = &v39[v40];
        v42 = &v39[v40] < v37;
        if (!strncmp(&v39[v40], "}", v42) && !asc_1E3139DCF[v42])
        {
          break;
        }

        v43 = (*a2 + *(a2 + 8) - v34);
        *&v143.var0 = v34;
        v143.var1 = v43;
        v44 = re::RigDataParser::parseTypeName(&v143);
        if (!v45 || (v46 = v44, v47 = v45, v48 = (*a2 + *(a2 + 8) - &v45[v44]), *&v143.var0 = &v45[v44], v143.var1 = v48, v49 = re::RigDataParser::parseAlphaNumeric(&v143), !v50) || (v51 = v49, v52 = v50, v126 = v47, v127 = v46, v53 = &v49[v50], v54 = *a2 + *(a2 + 8), *&v143.var0 = &v49[v50], v143.var1 = (v54 - &v49[v50]), v55 = re::RigDataParser::parseWhitespace(&v143), v57 = &v55[v56], v58 = &v55[v56] < v54, strncmp(&v55[v56], ";", v58)) || asc_1E313E293[v58])
        {
          *&v143.var0 = 0;
          goto LABEL_109;
        }

        if (v38)
        {
          v59 = 0;
          while (1)
          {
            v60 = re::BucketArray<re::RigDataTypeStructBuilder::RigDataTypeStructMember,8ul>::operator[](&v131, v59);
            if (*(v60 + 8) == v52 && !memcmp(*v60, v51, v52))
            {
              break;
            }

            if (v38 == ++v59)
            {
              goto LABEL_30;
            }
          }
        }

        else
        {
LABEL_30:
          v61 = memchr(v51, 46, v52);
          if (!v61 || v61 == v53)
          {
            var1 = v129;
            if (v38 + 1 > 8 * v129)
            {
              re::BucketArray<re::RigDataTypeStructBuilder::RigDataTypeStructMember,8ul>::setBucketsCapacity(&v131, (v38 + 8) >> 3);
              var1 = v131.var1;
            }

            v63 = v38 >> 3;
            v129 = var1;
            if (var1 <= v38 >> 3)
            {
              goto LABEL_130;
            }

            HIDWORD(v125) = v132;
            v64 = &v133;
            v124 = v134;
            if ((v132 & 1) == 0)
            {
              v64 = v134;
            }

            v65 = v64[v63];
            v66 = v38 & 7;
            v38 = ++v135;
            ++v136;
            v67 = (v65 + 32 * v66);
            *v67 = v51;
            v67[1] = v52;
            v67[2] = v127;
            v67[3] = v126;
          }
        }

        v34 = &v57[v58];
        v35 = *a2;
        v36 = *(a2 + 8);
        v37 = *a2 + v36;
        if (&v57[v58] >= v37)
        {
          goto LABEL_66;
        }
      }

      v34 = &v41[v42];
      v35 = *a2;
      v36 = *(a2 + 8);
    }

LABEL_66:
    v91 = (v35 + v36);
    *&v143.var0 = v34;
    v143.var1 = (v35 + v36 - v34);
    v92 = re::RigDataParser::parseWhitespace(&v143);
    if (&v92[v93] == v91)
    {
      v63 = v130.var1;
      *&v143.var0 = 0;
      v143.var1 = &str_67;
      v138[0] = 13;
      v105 = re::StringID::StringID(&v138[8], &v143);
      v141 = 0;
      *&v138[32] = 0;
      v139 = 0;
      *&v138[24] = 0;
      v140 = 0;
      if (*&v143.var0)
      {
        if (*&v143.var0)
        {
        }
      }

      v106 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(&v138[24], v38);
      ++v140;
      if (v38)
      {
        v107 = 0;
        v108 = &v133;
        if ((v125 & 0x100000000) == 0)
        {
          v108 = v124;
        }

        v128 = v108;
        while (v129 > v107 >> 3)
        {
          v109 = v128[v107 >> 3] + 32 * (v107 & 7);
          v110 = *v109;
          v111 = *(v109 + 8);
          *&v143.var0 = 0;
          v143.var1 = &str_67;
          v112 = *(v109 + 16);
          v63 = *(v109 + 24);
          *&v144 = 0;
          *(&v144 + 1) = &str_67;
          v106 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::add(&v138[24], &v143);
          if (v144)
          {
            if (v144)
            {
            }
          }

          *&v144 = 0;
          *(&v144 + 1) = &str_67;
          if (*&v143.var0)
          {
            if (*&v143.var0)
            {
            }
          }

          if (v38 == ++v107)
          {
            goto LABEL_106;
          }
        }

        v137 = 0;
        v146 = 0u;
        v147 = 0u;
        v144 = 0u;
        v145 = 0u;
        v143 = 0;
        v118 = MEMORY[0x1E69E9C10];
        v119 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v142 = 136315906;
        *&v142[4] = "operator[]";
        *&v142[12] = 1024;
        if (v119)
        {
          v120 = 3;
        }

        else
        {
          v120 = 2;
        }

        *&v142[14] = 866;
        *&v142[18] = 2048;
        *&v142[20] = v107 >> 3;
        *&v142[28] = 2048;
        *&v142[30] = v129;
        _os_log_send_and_compose_impl(v120, &v137, &v143, 80, &dword_1E1C61000, v118, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v142, 38, v124, v125);
        _os_crash_msg();
        __break(1u);
LABEL_130:
        *v142 = 0;
        v146 = 0u;
        v147 = 0u;
        v144 = 0u;
        v145 = 0u;
        v143 = 0;
        v121 = MEMORY[0x1E69E9C10];
        v122 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v138 = 136315906;
        *&v138[4] = "operator[]";
        *&v138[12] = 1024;
        if (v122)
        {
          v123 = 3;
        }

        else
        {
          v123 = 2;
        }

        *&v138[14] = 858;
        *&v138[18] = 2048;
        *&v138[20] = v63;
        *&v138[28] = 2048;
        *&v138[30] = v129;
        _os_log_send_and_compose_impl(v123, v142, &v143, 80, &dword_1E1C61000, v121, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v138, 38, v124, v125);
        _os_crash_msg();
        __break(1u);
      }

LABEL_106:
      *&v143.var0 = 1;
      LOBYTE(v143.var1) = v138[0];
      re::StringID::StringID(&v144, &v138[8]);
      re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::DynamicArray(&v145, &v138[24]);
      v114 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v138[24]);
      if (v138[8])
      {
        if (v138[8])
        {
        }
      }
    }

    else
    {
      *&v143.var0 = 0;
    }

LABEL_109:
    if (v38)
    {
      for (i = 0; i != v38; ++i)
      {
        re::BucketArray<re::RigDataTypeStructBuilder::RigDataTypeStructMember,8ul>::operator[](&v131, i);
      }
    }

    if (v129)
    {
      do
      {
        re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v131);
      }

      while (v131.var1);
    }

    if (*&v131.var0 && (v132 & 1) == 0)
    {
      (*(**&v131.var0 + 40))();
    }

    if (*&v143.var0)
    {
      *&v130.var0 = v143.var1;
      re::StringID::StringID(&v130.var1, &v144);
      re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::DynamicArray(&v131.var1, &v145);
      *a3 = 1;
      *(a3 + 8) = v130.var0;
      re::StringID::StringID((a3 + 16), &v130.var1);
      re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::DynamicArray(a3 + 32, &v131.var1);
      v116 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v131.var1);
      if (v130.var1)
      {
        if (v130.var1)
        {
        }
      }

      goto LABEL_54;
    }
  }

  else
  {
    *&v143.var0 = 0;
  }

  v9 = re::RigDataParser::parseAlphaNumeric(a2);
  if (!v10)
  {
    *&v130.var0 = 0;
    goto LABEL_48;
  }

  v11 = v9;
  v12 = v10;
  v13 = &v9[v10];
  v14 = *a2 + *(a2 + 8);
  *&v130.var0 = &v9[v10];
  v130.var1 = (v14 - &v9[v10]);
  v15 = re::RigDataParser::parseWhitespace(&v130);
  v17 = &v15[v16];
  v18 = &v15[v16] < v14;
  if (strncmp(&v15[v16], "[", v18) || asc_1E3139E79[v18])
  {
    v19 = (*a2 + *(a2 + 8));
    *&v130.var0 = v13;
    v130.var1 = (v19 - v13);
    v20 = re::RigDataParser::parseWhitespace(&v130);
    if (&v20[v21] == v19)
    {
      v22 = 1;
      while (1)
      {
        v23 = *re::RigDataTypeDescriptions::rigDataTypeDescription(v22, v21);
        if (!strncmp(v11, v23, v12) && !v23[v12])
        {
          break;
        }

        if (++v22 == 14)
        {
          goto LABEL_43;
        }
      }

      v87 = re::RigDataTypeDescriptions::rigDataTypeDescription(v22, v21);
      v88 = *v87;
      *&v130.var0 = 0;
      v130.var1 = &str_67;
      v138[0] = v22;
      v89 = re::StringID::StringID(&v138[8], &v130);
      v141 = 0;
      *&v138[32] = 0;
      v139 = 0;
      *&v138[24] = 0;
      v140 = 0;
      if (*&v130.var0)
      {
        if (*&v130.var0)
        {
        }
      }

      goto LABEL_62;
    }

LABEL_43:
    *&v130.var0 = 0;
    goto LABEL_44;
  }

  v68 = (*a2 + *(a2 + 8) - &v17[v18]);
  *&v130.var0 = &v17[v18];
  v130.var1 = v68;
  v69 = re::RigDataParser::parseNumeric(&v130);
  v71 = v70;
  v72 = *a2 + *(a2 + 8);
  *&v130.var0 = &v69[v70];
  v130.var1 = (v72 - &v69[v70]);
  v73 = re::RigDataParser::parseWhitespace(&v130);
  v75 = &v73[v74];
  v76 = &v73[v74] < v72;
  if (strncmp(&v73[v74], "]", v76))
  {
    goto LABEL_43;
  }

  if (asc_1E3139E7B[v76])
  {
    goto LABEL_43;
  }

  v77 = &v75[v76];
  v78 = (*a2 + *(a2 + 8));
  *&v130.var0 = v77;
  v130.var1 = (v78 - v77);
  v79 = re::RigDataParser::parseWhitespace(&v130);
  if (&v79[v80] != v78)
  {
    goto LABEL_43;
  }

  if (v71)
  {
    v94 = 0;
    do
    {
      v95 = v94;
      v97 = *v69++;
      v96 = v97;
      v94 = v97 + 10 * v94 - 48;
      --v71;
    }

    while (v71);
    *&v130.var0 = 0;
    v130.var1 = &str_67;
    v138[0] = 11;
    v98 = re::StringID::StringID(&v138[8], &v130);
    v141 = 0;
    *&v138[32] = 0;
    v139 = 0;
    *&v138[24] = 0;
    v140 = 0;
    if (*&v130.var0)
    {
      if (*&v130.var0)
      {
      }
    }

    v99 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(&v138[24], v94);
    ++v140;
    v130.var1 = 0;
    *&v131.var0 = 0;
    v131.var1 = 0;
    re::DynamicString::setCapacity(&v130, 0);
    if (v94)
    {
      v100 = 0;
      v101 = v96 + 10 * v95 - 48;
      do
      {
        v102 = re::DynamicString::assignf(&v130, "value[%zu]", v100);
        if (v130.var1)
        {
          v103 = *&v131.var0;
        }

        else
        {
          v103 = &v130.var1 + 1;
        }

        *v142 = 0;
        *&v142[8] = &str_67;
        re::StringID::StringID(&v142[16], &v138[8]);
        v104 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::add(&v138[24], v142);
        if (v142[16])
        {
          if (v142[16])
          {
          }
        }

        *&v142[16] = 0;
        *&v142[24] = &str_67;
        if (v142[0])
        {
          if (v142[0])
          {
          }
        }

        ++v100;
      }

      while (v101 != v100);
    }

    if (*&v130.var0 && (v130.var1 & 1) != 0)
    {
      (*(**&v130.var0 + 40))();
    }
  }

  else
  {
    *&v130.var0 = 0;
    v130.var1 = &str_67;
    v138[0] = 12;
    v117 = re::StringID::StringID(&v138[8], &v130);
    v141 = 0;
    *&v138[32] = 0;
    v139 = 0;
    *&v138[24] = 0;
    v140 = 0;
    if (*&v130.var0)
    {
      if (*&v130.var0)
      {
      }
    }
  }

LABEL_62:
  *&v130.var0 = 1;
  LOBYTE(v130.var1) = v138[0];
  re::StringID::StringID(&v131, &v138[8]);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::DynamicArray(&v132, &v138[24]);
  v90 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v138[24]);
  if (v138[8])
  {
    if (v138[8])
    {
    }
  }

LABEL_44:
  if (*&v130.var0)
  {
    v138[0] = v130.var1;
    re::StringID::StringID(&v138[8], &v131);
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::DynamicArray(&v138[24], &v132);
    *a3 = 1;
    *(a3 + 8) = v138[0];
    re::StringID::StringID((a3 + 16), &v138[8]);
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::DynamicArray(a3 + 32, &v138[24]);
    v81 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v138[24]);
    if (v138[8])
    {
      if (v138[8])
      {
      }
    }

    goto LABEL_49;
  }

LABEL_48:
  *&v138[16] = 0;
  *&v138[24] = 0;
  *v138 = a1;
  re::DynamicString::setCapacity(v138, 0x40uLL);
  re::DynamicString::append(v138, "Unknown rig data type: ", 0x17uLL);
  re::DynamicString::append(v138, *a2, *(a2 + 8));
  v82 = *v138;
  v83 = *&v138[16];
  v84 = *&v138[24];
  *a3 = 0;
  *(a3 + 8) = 5000;
  *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
  *(a3 + 24) = v82;
  *(a3 + 40) = v83;
  *(a3 + 48) = v84;
LABEL_49:
  if (v130.var0 == 1)
  {
    v85 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v132);
    if (*&v131.var0)
    {
      if (*&v131.var0)
      {
      }
    }

    v131.var1 = &str_67;
  }

LABEL_54:
  if (v143.var0 == 1)
  {
    v86 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v145);
    if (v144)
    {
      if (v144)
      {
      }
    }
  }
}

void re::RigDataTypeClass::attributeType(uint64_t a1@<X0>, re::RigEnvironment *a2@<X1>, char **a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *a3;
  v8 = a3[1];
  v10 = &v8[v9];
  v11 = memchr(v9, 46, v8);
  if (v11)
  {
    v12 = v11 == v10;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (v12)
  {
    v43 = *a3;
  }

  else
  {
    *&v43 = v9;
    *(&v43 + 1) = v11 - v9;
    v9 = v11 - v9 + 1;
  }

  if (*a1 == 12)
  {
    re::RigDataParser::extractArrayIndex(&v43, v36);
    if (v36[0] != 1)
    {
      v28 = v37;
      *(a4 + 8) = *&v36[8];
      v29 = v38;
      v30 = v39;
      *a4 = 0;
      *(a4 + 24) = v28;
      *(a4 + 40) = v29;
      *(a4 + 48) = v30;
      return;
    }

    v14 = (a1 + 8);
    goto LABEL_13;
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    v14 = (*(a1 + 56) + 16);
    v18 = 32 * v17;
    while (1)
    {
      v11 = strlen(v14[-1].var1);
      if (*(&v43 + 1) == v11)
      {
        v11 = memcmp(v43, v14[-1].var1, *(&v43 + 1));
        if (!v11)
        {
          break;
        }
      }

      v14 += 2;
      v18 -= 32;
      if (!v18)
      {
        goto LABEL_21;
      }
    }

LABEL_13:
    if (v13)
    {
      re::RigEnvironment::lookupRigDataType(v36, a2, v14);
      if (v36[0])
      {
        *&v40 = re::Slice<char>::range(a3, v9, a3[1]);
        *(&v40 + 1) = v16;
        re::RigDataTypeClass::attributeType(&v36[8], a2, &v40, a4);
      }

      else
      {
        re::DynamicString::format(&v40, "Unknown child attribute type: %s", v15, v14->var1);
        v32 = v40;
        v33 = v41;
        v34 = v42;
        *a4 = 0;
        *(a4 + 8) = 5000;
        *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
        *(a4 + 24) = v32;
        *(a4 + 40) = v33;
        *(a4 + 48) = v34;
      }

      if (v36[0] == 1)
      {
        v35 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v37 + 8);
        if (v36[16])
        {
          if (v36[16])
          {
            v27 = v37;
            goto LABEL_30;
          }
        }
      }
    }

    else
    {
      re::StringID::StringID(v36, v14);
      *a4 = 1;
      v31 = *&v36[8];
      *(a4 + 8) = *v36;
      *(a4 + 16) = v31;
    }

    return;
  }

LABEL_21:
  v41 = 0;
  v42 = 0;
  v19 = a3[1];
  if (v19)
  {
    v20 = (v19 + 1);
  }

  else
  {
    v20 = 0;
  }

  *(&v40 + 1) = 0;
  re::DynamicString::setCapacity(&v40, v20);
  re::DynamicString::operator=(&v40, a3);
  if (BYTE8(v40))
  {
    v22 = v41;
  }

  else
  {
    v22 = &v40 + 9;
  }

  re::DynamicString::format(v36, "Attribute name could not be resolved: %s", v21, v22);
  v23 = *v36;
  v24 = *&v36[16];
  v25 = v37;
  *a4 = 0;
  *(a4 + 8) = 5003;
  *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
  *(a4 + 24) = v23;
  *(a4 + 40) = v24;
  *(a4 + 48) = v25;
  v26 = v40;
  if (v40 && (BYTE8(v40) & 1) != 0)
  {
    v27 = v41;
LABEL_30:
    (*(*v26 + 40))(v26, v27);
  }
}

uint64_t re::Slice<char>::range(void *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1[1];
  if (v3 < a2)
  {
    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. fromInclusive = %zu, size = %zu", "fromInclusive <= size()", "range", 248, a2, v3);
    _os_crash("assertion failure: (fromInclusive <= size()) Index out of range. fromInclusive = %zu, size = %zu", v5, v7);
    __break(1u);
  }

  else if (v3 >= a3)
  {
    return *a1 + a2;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. toExclusive = %zu, size = %zu", "toExclusive <= size()", "range", 249, a2, v3);
  result = _os_crash("assertion failure: (toExclusive <= size()) Index out of range. toExclusive = %zu, size = %zu", v6, v8);
  __break(1u);
  return result;
}

BOOL re::RigDataTypeClass::operator==(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 12)
  {
    if (v3 == 12)
    {
      v4 = a1 + 8;
      v5 = a2 + 8;

      return re::StringID::operator==(v4, v5);
    }

    return 0;
  }

  if (v2 != v3)
  {
    return 0;
  }

  v7 = *(a1 + 5);
  if (v7 != *(a2 + 5))
  {
    return 0;
  }

  if (!v7)
  {
    return 1;
  }

  v8 = *(a1 + 7);
  v9 = &v8[4 * v7];
  v10 = *(a2 + 7);
  while (1)
  {
    result = re::StringID::operator==(v8, v10);
    if (!result)
    {
      break;
    }

    v11 = v8 + 2;
    v12 = v10 + 2;
    result = re::StringID::operator==(v11, v12);
    if (!result)
    {
      break;
    }

    v8 = v11 + 2;
    v10 = v12 + 2;
    if (v8 == v9)
    {
      return 1;
    }
  }

  return result;
}

char **re::RigDataTypeDescriptions::rigDataTypeDescription(unsigned int a1, uint64_t a2)
{
  if (a1 < 0xE)
  {
    return &(&re::kRigDataTypeDescriptions)[2 * a1];
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a1, 14, v2, v3);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v5, v6);
  __break(1u);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::add(_anonymous_namespace_ *result, uint64_t *a2)
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

        result = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  v11 = (*(v3 + 4) + 32 * v5);
  v12 = *a2;
  *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v11 = *a2 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
  v11[1] = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v13 = a2[2];
  v11[2] = v11[2] & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
  v11[2] = a2[2] & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
  v11[3] = a2[3];
  a2[2] = 0;
  a2[3] = &str_67;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

unint64_t re::BucketArray<re::RigDataTypeStructBuilder::RigDataTypeStructMember,8ul>::operator[](uint64_t a1, unint64_t a2)
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

  v2 = a2 >> 3;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 3)
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

  return *(v5 + 8 * v2) + 32 * (a2 & 7);
}

_anonymous_namespace_ *re::BucketArray<re::RigDataTypeStructBuilder::RigDataTypeStructMember,8ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 8 * a2)
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
          result = (*(**v3 + 32))(*v3, 256, 0);
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
    result = re::BucketArray<re::RigDataTypeStructBuilder::RigDataTypeStructMember,8ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

char *re::RigDataParser::parseWhitespace(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v2)
  {
    v4 = -v1;
    v5 = MEMORY[0x1E69E9830];
    while (1)
    {
      v6 = *v1;
      if ((v6 & 0x80000000) != 0)
      {
        if (!__maskrune(v6, 0x4000uLL))
        {
          return *a1;
        }
      }

      else if ((*(v5 + 4 * v6 + 60) & 0x4000) == 0)
      {
        return *a1;
      }

      ++v1;
      --v4;
      if (!--v2)
      {
        v1 = *a1;
        v7 = a1[1];
        return (v1 + v7);
      }
    }
  }

  v7 = 0;
  return (v1 + v7);
}

char *re::RigDataParser::parseAlphaNumeric(uint64_t *a1)
{
  v2 = re::RigDataParser::parseWhitespace(a1);
  result = &v2[v3];
  v5 = *a1 + a1[1];
  if (result < v5)
  {
    v6 = result;
    do
    {
      v7 = *v6;
      if ((v7 - 48) >= 0xA && (v7 & 0xFFFFFFDF) - 65 > 0x19)
      {
        break;
      }

      ++v6;
    }

    while (v6 < v5);
  }

  return result;
}

char *re::RigDataParser::parseNumeric(uint64_t *a1)
{
  v2 = re::RigDataParser::parseWhitespace(a1);
  result = &v2[v3];
  v5 = *a1 + a1[1];
  if (result < v5)
  {
    v6 = result;
    do
    {
      if (*v6 - 48 > 9)
      {
        break;
      }

      ++v6;
    }

    while (v6 < v5);
  }

  return result;
}

char *re::RigDataParser::parseFloat(uint64_t *a1)
{
  v2 = re::RigDataParser::parseWhitespace(a1);
  result = &v2[v3];
  v5 = result + 1;
  if (*result != 45)
  {
    v5 = result;
  }

  v6 = *a1 + a1[1];
  if (v5 >= v6)
  {
LABEL_7:
    v7 = *v5;
  }

  else
  {
    while (1)
    {
      v7 = *v5;
      if ((v7 - 48) > 9)
      {
        break;
      }

      if (++v5 >= v6)
      {
        v5 = (*a1 + a1[1]);
        goto LABEL_7;
      }
    }
  }

  if (v7 == 46)
  {
    v8 = v5 + 1;
    do
    {
      v9 = v8;
      if (v8 >= v6)
      {
        break;
      }

      ++v8;
    }

    while (*v9 - 48 < 0xA);
  }

  return result;
}

char *re::RigDataParser::parseTypeName(char **a1)
{
  v2 = a1[1];
  v18 = *a1;
  v19 = v2;
  v3 = re::RigDataParser::parseAlphaNumeric(&v18);
  v5 = v3;
  if (v4)
  {
    v6 = &a1[1][*a1];
    v18 = &v3[v4];
    v19 = v6 - &v3[v4];
    v7 = re::RigDataParser::parseWhitespace(&v18);
    v9 = &v7[v8];
    v10 = &v7[v8] < v6;
    if (!strncmp(&v7[v8], "[", v10) && !str_5[v10])
    {
      v11 = &a1[1][*a1] - &v9[v10];
      v18 = &v9[v10];
      v19 = v11;
      v12 = re::RigDataParser::parseNumeric(&v18);
      v13 = &a1[1][*a1];
      v18 = &v12[v14];
      v19 = v13 - &v12[v14];
      v15 = re::RigDataParser::parseWhitespace(&v18);
      strncmp(&v15[v16], "]", &v15[v16] < v13);
    }
  }

  return v5;
}

char *re::RigDataParser::extractArrayIndex@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = re::RigDataParser::parseAlphaNumeric(a1);
  v6 = v5;
  v7 = strncmp(v4, "value", v5);
  if (v7 || aValue[v6])
  {
    v55 = 0;
    v56 = 0;
    v8 = a1[1];
    if (v8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 0;
    }

    v54 = 0;
    re::DynamicString::setCapacity(&v53, v9);
    re::DynamicString::operator=(&v53, a1);
    if (v54)
    {
      v11 = v55;
    }

    else
    {
      v11 = &v54 + 1;
    }

    re::DynamicString::format(&v57, "Unknown child attribute (expected array value): %s", v10, v11);
  }

  else
  {
    v16 = &v4[v6];
    v17 = *a1 + a1[1];
    *&v57 = v16;
    *(&v57 + 1) = v17 - v16;
    v18 = re::RigDataParser::parseWhitespace(&v57);
    v20 = &v18[v19];
    v21 = &v18[v19] < v17;
    v22 = strncmp(&v18[v19], "[", v21);
    if (v22 || str_5[v21])
    {
      v55 = 0;
      v56 = 0;
      v23 = a1[1];
      if (v23)
      {
        v24 = v23 + 1;
      }

      else
      {
        v24 = 0;
      }

      v54 = 0;
      re::DynamicString::setCapacity(&v53, v24);
      re::DynamicString::operator=(&v53, a1);
      if (v54)
      {
        v26 = v55;
      }

      else
      {
        v26 = &v54 + 1;
      }

      re::DynamicString::format(&v57, "Unknown child attribute (expected array subscript): %s", v25, v26);
    }

    else
    {
      v27 = *a1 + a1[1] - &v20[v21];
      *&v57 = &v20[v21];
      *(&v57 + 1) = v27;
      v28 = re::RigDataParser::parseNumeric(&v57);
      if (v29)
      {
        v30 = v28;
        v31 = v29;
        v32 = *a1 + a1[1];
        *&v57 = &v28[v29];
        *(&v57 + 1) = v32 - &v28[v29];
        v33 = re::RigDataParser::parseWhitespace(&v57);
        v35 = &v33[v34];
        v36 = &v33[v34] < v32;
        v37 = strncmp(&v33[v34], "]", v36);
        if (v37 || str_1_5[v36])
        {
          v55 = 0;
          v56 = 0;
          v38 = a1[1];
          if (v38)
          {
            v39 = v38 + 1;
          }

          else
          {
            v39 = 0;
          }

          v54 = 0;
          re::DynamicString::setCapacity(&v53, v39);
          re::DynamicString::operator=(&v53, a1);
          if (v54)
          {
            v41 = v55;
          }

          else
          {
            v41 = &v54 + 1;
          }

          re::DynamicString::format(&v57, "Unknown child attribute (expected array subscript end): %s", v40, v41);
        }

        else
        {
          v46 = &v35[v36];
          v47 = (*a1 + a1[1]);
          *&v57 = v46;
          *(&v57 + 1) = v47 - v46;
          result = re::RigDataParser::parseWhitespace(&v57);
          if (&result[v48] == v47)
          {
            *a2 = 1;
            *(a2 + 8) = v30;
            *(a2 + 16) = v31;
            return result;
          }

          v55 = 0;
          v56 = 0;
          v49 = a1[1];
          if (v49)
          {
            v50 = v49 + 1;
          }

          else
          {
            v50 = 0;
          }

          v54 = 0;
          re::DynamicString::setCapacity(&v53, v50);
          re::DynamicString::operator=(&v53, a1);
          if (v54)
          {
            v52 = v55;
          }

          else
          {
            v52 = &v54 + 1;
          }

          re::DynamicString::format(&v57, "Unknown child attribute (expected only array value): %s", v51, v52);
        }
      }

      else
      {
        v55 = 0;
        v56 = 0;
        v42 = a1[1];
        if (v42)
        {
          v43 = v42 + 1;
        }

        else
        {
          v43 = 0;
        }

        v54 = 0;
        re::DynamicString::setCapacity(&v53, v43);
        re::DynamicString::operator=(&v53, a1);
        if (v54)
        {
          v45 = v55;
        }

        else
        {
          v45 = &v54 + 1;
        }

        re::DynamicString::format(&v57, "Unknown child attribute (expected array index): %s", v44, v45);
      }
    }
  }

  v12 = v57;
  v13 = v58;
  v14 = v59;
  *a2 = 0;
  *(a2 + 8) = 5007;
  *(a2 + 16) = &re::AnimationErrorCategory(void)::instance;
  *(a2 + 24) = v12;
  *(a2 + 40) = v13;
  *(a2 + 48) = v14;
  result = v53;
  if (v53)
  {
    if (v54)
    {
      return (*(*v53 + 40))();
    }
  }

  return result;
}

float re::RigDataParser::stringToFloat(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = **a1;
  v4 = v3 == 45;
  result = 0.0;
  if (v2 != v4)
  {
    v6 = &v2[v1];
    v7 = (v1 + v4);
    v8 = &v2[~v4];
    while (1)
    {
      v9 = *v7;
      if (v9 == 46)
      {
        break;
      }

      result = (result * 10.0) + (v9 - 48);
      ++v7;
      --v8;
      if (v7 == v6)
      {
        goto LABEL_9;
      }
    }

    if (v7 + 1 != v6)
    {
      v10 = 1.0;
      v11 = 1;
      do
      {
        v10 = v10 * 0.1;
        result = result + ((v7[v11++] - 48) * v10);
        --v8;
      }

      while (v8);
    }
  }

LABEL_9:
  if (v3 == 45)
  {
    return -result;
  }

  return result;
}

uint64_t *re::FixedArray<float>::operator=(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v4 == v5;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      *result = v5;
      *a2 = v4;
      v7 = result[1];
      v8 = result[2];
      v9 = a2[2];
      result[1] = a2[1];
      result[2] = v9;
      a2[1] = v7;
      a2[2] = v8;
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator", "operator=", 296, v2, v3);
      result = _os_crash("assertion failure: (!isInitialized() || m_allocator == other.m_allocator) ");
      __break(1u);
    }
  }

  return result;
}

double re::KeyframeAnimation<float>::totalDuration(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    return *(*(a1 + 96) + 4 * v1 - 4);
  }

  else
  {
    return 0.0;
  }
}

uint64_t re::KeyframeAnimation<float>::evaluateCore(uint64_t result, uint64_t a2, uint64_t a3, float *a4, uint64_t a5, float *a6)
{
  v74 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v56, v57);
    __break(1u);
    goto LABEL_37;
  }

  v6 = *(result + 88);
  v8 = *(result + 112);
  if (v6 >= v8)
  {
    v9 = *(result + 112);
  }

  else
  {
    v9 = *(result + 88);
  }

  v7 = v9 - 1;
  if (v9 == 1)
  {
    goto LABEL_25;
  }

  if (v9)
  {
    if (v6)
    {
      if (v6 > v7)
      {
        v11 = *(result + 96);
        v12 = *(a2 + 24);
        if (*v11 < v12)
        {
          if (v11[v7] > v12)
          {
            v13 = *(result + 96);
            v14 = *(result + 88);
            do
            {
              v15 = v14 >> 1;
              v16 = &v13[v14 >> 1];
              v18 = *v16;
              v17 = v16 + 1;
              v14 += ~(v14 >> 1);
              if (v18 < v12)
              {
                v13 = v17;
              }

              else
              {
                v14 = v15;
              }
            }

            while (v14);
            v19 = v13 - v11;
            v20 = v13 - v11;
            if (*(result + 73) == 1 && v20 != v9)
            {
              v22 = v20 - 1;
              if (v6 > v20 - 1)
              {
                if (v6 > v20)
                {
                  v23 = v11[v22];
                  v24 = *(v11 + v19) - v23;
                  v25 = 0.0;
                  if (v24 > 0.0)
                  {
                    v25 = (v12 - v23) / v24;
                  }

                  if (v8 > v22)
                  {
                    if (v8 > v20)
                    {
                      v10 = (v25 * *(*(result + 120) + v19)) + (*(*(result + 120) + 4 * v22) * (1.0 - v25));
                      goto LABEL_26;
                    }

LABEL_69:
                    v60 = 0;
                    v72 = 0u;
                    v73 = 0u;
                    v70 = 0u;
                    v71 = 0u;
                    v69 = 0u;
                    v51 = MEMORY[0x1E69E9C10];
                    v52 = v8;
                    v53 = v20;
                    v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    v61 = 136315906;
                    v62 = "operator[]";
                    v63 = 1024;
                    if (v54)
                    {
                      v55 = 3;
                    }

                    else
                    {
                      v55 = 2;
                    }

                    v64 = 476;
                    v65 = 2048;
                    v66 = v53;
                    v67 = 2048;
                    v68 = v52;
                    _os_log_send_and_compose_impl(v55, &v60, &v69, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
                    _os_crash_msg();
                    __break(1u);
                  }

LABEL_65:
                  v60 = 0;
                  v72 = 0u;
                  v73 = 0u;
                  v70 = 0u;
                  v71 = 0u;
                  v69 = 0u;
                  v47 = MEMORY[0x1E69E9C10];
                  v48 = v8;
                  v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v61 = 136315906;
                  v62 = "operator[]";
                  v63 = 1024;
                  if (v49)
                  {
                    v50 = 3;
                  }

                  else
                  {
                    v50 = 2;
                  }

                  v64 = 476;
                  v65 = 2048;
                  v66 = v22;
                  v67 = 2048;
                  v68 = v48;
                  _os_log_send_and_compose_impl(v50, &v60, &v69, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
                  _os_crash_msg();
                  __break(1u);
                  goto LABEL_69;
                }

LABEL_61:
                v60 = 0;
                v72 = 0u;
                v73 = 0u;
                v70 = 0u;
                v71 = 0u;
                v69 = 0u;
                v44 = MEMORY[0x1E69E9C10];
                v22 = v20;
                v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v61 = 136315906;
                v62 = "operator[]";
                v63 = 1024;
                if (v45)
                {
                  v46 = 3;
                }

                else
                {
                  v46 = 2;
                }

                v64 = 476;
                v65 = 2048;
                v66 = v22;
                v67 = 2048;
                v68 = v6;
                _os_log_send_and_compose_impl(v46, &v60, &v69, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
                _os_crash_msg();
                __break(1u);
                goto LABEL_65;
              }

LABEL_57:
              v60 = 0;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v69 = 0u;
              v41 = MEMORY[0x1E69E9C10];
              v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v61 = 136315906;
              v62 = "operator[]";
              v63 = 1024;
              if (v42)
              {
                v43 = 3;
              }

              else
              {
                v43 = 2;
              }

              v64 = 476;
              v65 = 2048;
              v66 = v22;
              v67 = 2048;
              v68 = v6;
              _os_log_send_and_compose_impl(v43, &v60, &v69, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
              _os_crash_msg();
              __break(1u);
              goto LABEL_61;
            }

            if (v8 > v20)
            {
              v10 = *(*(result + 120) + v19);
              goto LABEL_26;
            }

LABEL_53:
            v60 = 0;
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v69 = 0u;
            v38 = MEMORY[0x1E69E9C10];
            v6 = v8;
            v22 = v20;
            v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v61 = 136315906;
            v62 = "operator[]";
            v63 = 1024;
            if (v39)
            {
              v40 = 3;
            }

            else
            {
              v40 = 2;
            }

            v64 = 476;
            v65 = 2048;
            v66 = v22;
            v67 = 2048;
            v68 = v6;
            _os_log_send_and_compose_impl(v40, &v60, &v69, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
            _os_crash_msg();
            __break(1u);
            goto LABEL_57;
          }

          if (v8 > v7)
          {
            v10 = *(*(result + 120) + 4 * v7);
            goto LABEL_26;
          }

LABEL_49:
          v60 = 0;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v69 = 0u;
          v34 = MEMORY[0x1E69E9C10];
          v35 = v8;
          v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v61 = 136315906;
          v62 = "operator[]";
          v63 = 1024;
          if (v36)
          {
            v37 = 3;
          }

          else
          {
            v37 = 2;
          }

          v64 = 476;
          v65 = 2048;
          v66 = v7;
          v67 = 2048;
          v68 = v35;
          _os_log_send_and_compose_impl(v37, &v60, &v69, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
          _os_crash_msg();
          __break(1u);
          goto LABEL_53;
        }

        if (v8)
        {
LABEL_25:
          v10 = **(result + 120);
          goto LABEL_26;
        }

LABEL_45:
        v60 = 0;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v69 = 0u;
        v31 = MEMORY[0x1E69E9C10];
        v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v61 = 136315906;
        v62 = "operator[]";
        v63 = 1024;
        if (v32)
        {
          v33 = 3;
        }

        else
        {
          v33 = 2;
        }

        v64 = 476;
        v65 = 2048;
        v66 = 0;
        v67 = 2048;
        v68 = 0;
        _os_log_send_and_compose_impl(v33, &v60, &v69, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
        _os_crash_msg();
        __break(1u);
        goto LABEL_49;
      }

LABEL_41:
      v60 = 0;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v69 = 0u;
      v28 = MEMORY[0x1E69E9C10];
      v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v61 = 136315906;
      v62 = "operator[]";
      v63 = 1024;
      if (v29)
      {
        v30 = 3;
      }

      else
      {
        v30 = 2;
      }

      v64 = 476;
      v65 = 2048;
      v66 = v7;
      v67 = 2048;
      v68 = v6;
      _os_log_send_and_compose_impl(v30, &v60, &v69, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
      _os_crash_msg();
      __break(1u);
      goto LABEL_45;
    }

LABEL_37:
    v60 = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    v26 = MEMORY[0x1E69E9C10];
    v61 = 136315906;
    v62 = "operator[]";
    v63 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v27 = 3;
    }

    else
    {
      v27 = 2;
    }

    v64 = 476;
    v65 = 2048;
    v66 = 0;
    v67 = 2048;
    v68 = 0;
    _os_log_send_and_compose_impl(v27, &v60, &v69, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
    _os_crash_msg();
    __break(1u);
    goto LABEL_41;
  }

  v10 = *a4;
LABEL_26:
  *a6 = v10;
  return result;
}

double re::KeyframeAnimation<double>::totalDuration(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    return *(*(a1 + 96) + 4 * v1 - 4);
  }

  else
  {
    return 0.0;
  }
}

uint64_t re::KeyframeAnimation<double>::evaluateCore(uint64_t result, uint64_t a2, uint64_t a3, double *a4, uint64_t a5, double *a6)
{
  v74 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v56, v57);
    __break(1u);
    goto LABEL_37;
  }

  v6 = *(result + 88);
  v8 = *(result + 112);
  if (v6 >= v8)
  {
    v9 = *(result + 112);
  }

  else
  {
    v9 = *(result + 88);
  }

  v7 = v9 - 1;
  if (v9 == 1)
  {
    goto LABEL_25;
  }

  if (v9)
  {
    if (v6)
    {
      if (v6 > v7)
      {
        v11 = *(result + 96);
        v12 = *(a2 + 24);
        if (*v11 < v12)
        {
          if (v11[v7] > v12)
          {
            v13 = *(result + 96);
            v14 = *(result + 88);
            do
            {
              v15 = v14 >> 1;
              v16 = &v13[v14 >> 1];
              v18 = *v16;
              v17 = v16 + 1;
              v14 += ~(v14 >> 1);
              if (v18 < v12)
              {
                v13 = v17;
              }

              else
              {
                v14 = v15;
              }
            }

            while (v14);
            v19 = v13 - v11;
            v20 = v13 - v11;
            if (*(result + 73) == 1 && v20 != v9)
            {
              v22 = v20 - 1;
              if (v6 > v20 - 1)
              {
                if (v6 > v20)
                {
                  v23 = v11[v22];
                  v24 = *(v11 + v19) - v23;
                  v25 = 0.0;
                  if (v24 > 0.0)
                  {
                    v25 = (v12 - v23) / v24;
                  }

                  if (v8 > v22)
                  {
                    if (v8 > v20)
                    {
                      v10 = *(*(result + 120) + 8 * v20) * v25 + *(*(result + 120) + 8 * v22) * (1.0 - v25);
                      goto LABEL_26;
                    }

LABEL_69:
                    v60 = 0;
                    v72 = 0u;
                    v73 = 0u;
                    v70 = 0u;
                    v71 = 0u;
                    v69 = 0u;
                    v51 = MEMORY[0x1E69E9C10];
                    v52 = v8;
                    v53 = v20;
                    v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    v61 = 136315906;
                    v62 = "operator[]";
                    v63 = 1024;
                    if (v54)
                    {
                      v55 = 3;
                    }

                    else
                    {
                      v55 = 2;
                    }

                    v64 = 476;
                    v65 = 2048;
                    v66 = v53;
                    v67 = 2048;
                    v68 = v52;
                    _os_log_send_and_compose_impl(v55, &v60, &v69, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
                    _os_crash_msg();
                    __break(1u);
                  }

LABEL_65:
                  v60 = 0;
                  v72 = 0u;
                  v73 = 0u;
                  v70 = 0u;
                  v71 = 0u;
                  v69 = 0u;
                  v47 = MEMORY[0x1E69E9C10];
                  v48 = v8;
                  v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v61 = 136315906;
                  v62 = "operator[]";
                  v63 = 1024;
                  if (v49)
                  {
                    v50 = 3;
                  }

                  else
                  {
                    v50 = 2;
                  }

                  v64 = 476;
                  v65 = 2048;
                  v66 = v22;
                  v67 = 2048;
                  v68 = v48;
                  _os_log_send_and_compose_impl(v50, &v60, &v69, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
                  _os_crash_msg();
                  __break(1u);
                  goto LABEL_69;
                }

LABEL_61:
                v60 = 0;
                v72 = 0u;
                v73 = 0u;
                v70 = 0u;
                v71 = 0u;
                v69 = 0u;
                v44 = MEMORY[0x1E69E9C10];
                v22 = v20;
                v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v61 = 136315906;
                v62 = "operator[]";
                v63 = 1024;
                if (v45)
                {
                  v46 = 3;
                }

                else
                {
                  v46 = 2;
                }

                v64 = 476;
                v65 = 2048;
                v66 = v22;
                v67 = 2048;
                v68 = v6;
                _os_log_send_and_compose_impl(v46, &v60, &v69, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
                _os_crash_msg();
                __break(1u);
                goto LABEL_65;
              }

LABEL_57:
              v60 = 0;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v69 = 0u;
              v41 = MEMORY[0x1E69E9C10];
              v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v61 = 136315906;
              v62 = "operator[]";
              v63 = 1024;
              if (v42)
              {
                v43 = 3;
              }

              else
              {
                v43 = 2;
              }

              v64 = 476;
              v65 = 2048;
              v66 = v22;
              v67 = 2048;
              v68 = v6;
              _os_log_send_and_compose_impl(v43, &v60, &v69, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
              _os_crash_msg();
              __break(1u);
              goto LABEL_61;
            }

            if (v8 > v20)
            {
              v10 = *(*(result + 120) + 8 * v20);
              goto LABEL_26;
            }

LABEL_53:
            v60 = 0;
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v69 = 0u;
            v38 = MEMORY[0x1E69E9C10];
            v6 = v8;
            v22 = v20;
            v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v61 = 136315906;
            v62 = "operator[]";
            v63 = 1024;
            if (v39)
            {
              v40 = 3;
            }

            else
            {
              v40 = 2;
            }

            v64 = 476;
            v65 = 2048;
            v66 = v22;
            v67 = 2048;
            v68 = v6;
            _os_log_send_and_compose_impl(v40, &v60, &v69, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
            _os_crash_msg();
            __break(1u);
            goto LABEL_57;
          }

          if (v8 > v7)
          {
            v10 = *(*(result + 120) + 8 * v7);
            goto LABEL_26;
          }

LABEL_49:
          v60 = 0;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v69 = 0u;
          v34 = MEMORY[0x1E69E9C10];
          v35 = v8;
          v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v61 = 136315906;
          v62 = "operator[]";
          v63 = 1024;
          if (v36)
          {
            v37 = 3;
          }

          else
          {
            v37 = 2;
          }

          v64 = 476;
          v65 = 2048;
          v66 = v7;
          v67 = 2048;
          v68 = v35;
          _os_log_send_and_compose_impl(v37, &v60, &v69, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
          _os_crash_msg();
          __break(1u);
          goto LABEL_53;
        }

        if (v8)
        {
LABEL_25:
          v10 = **(result + 120);
          goto LABEL_26;
        }

LABEL_45:
        v60 = 0;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v69 = 0u;
        v31 = MEMORY[0x1E69E9C10];
        v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v61 = 136315906;
        v62 = "operator[]";
        v63 = 1024;
        if (v32)
        {
          v33 = 3;
        }

        else
        {
          v33 = 2;
        }

        v64 = 476;
        v65 = 2048;
        v66 = 0;
        v67 = 2048;
        v68 = 0;
        _os_log_send_and_compose_impl(v33, &v60, &v69, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
        _os_crash_msg();
        __break(1u);
        goto LABEL_49;
      }

LABEL_41:
      v60 = 0;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v69 = 0u;
      v28 = MEMORY[0x1E69E9C10];
      v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v61 = 136315906;
      v62 = "operator[]";
      v63 = 1024;
      if (v29)
      {
        v30 = 3;
      }

      else
      {
        v30 = 2;
      }

      v64 = 476;
      v65 = 2048;
      v66 = v7;
      v67 = 2048;
      v68 = v6;
      _os_log_send_and_compose_impl(v30, &v60, &v69, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
      _os_crash_msg();
      __break(1u);
      goto LABEL_45;
    }

LABEL_37:
    v60 = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    v26 = MEMORY[0x1E69E9C10];
    v61 = 136315906;
    v62 = "operator[]";
    v63 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v27 = 3;
    }

    else
    {
      v27 = 2;
    }

    v64 = 476;
    v65 = 2048;
    v66 = 0;
    v67 = 2048;
    v68 = 0;
    _os_log_send_and_compose_impl(v27, &v60, &v69, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
    _os_crash_msg();
    __break(1u);
    goto LABEL_41;
  }

  v10 = *a4;
LABEL_26:
  *a6 = v10;
  return result;
}

double re::KeyframeAnimation<re::Vector2<float>>::totalDuration(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    return *(*(a1 + 96) + 4 * v1 - 4);
  }

  else
  {
    return 0.0;
  }
}

float32x2_t re::KeyframeAnimation<re::Vector2<float>>::evaluateCore(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t *a4, float32x2_t result, uint64_t a6, double *a7)
{
  v74 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a6, a7, *&result, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v56, v57);
    __break(1u);
    goto LABEL_38;
  }

  v7 = *(a1 + 88);
  v9 = *(a1 + 112);
  if (v7 >= v9)
  {
    v10 = *(a1 + 112);
  }

  else
  {
    v10 = *(a1 + 88);
  }

  v8 = v10 - 1;
  if (v10 == 1)
  {
    goto LABEL_25;
  }

  if (v10)
  {
    if (v7)
    {
      if (v7 > v8)
      {
        v12 = *(a1 + 96);
        result = a2[3];
        result.f32[0] = *&result;
        if (*v12 < result.f32[0])
        {
          if (v12[v8] > result.f32[0])
          {
            v13 = *(a1 + 96);
            v14 = *(a1 + 88);
            do
            {
              v15 = v14 >> 1;
              v16 = &v13[v14 >> 1];
              v18 = *v16;
              v17 = v16 + 1;
              v14 += ~(v14 >> 1);
              if (v18 < result.f32[0])
              {
                v13 = v17;
              }

              else
              {
                v14 = v15;
              }
            }

            while (v14);
            v19 = v13 - v12;
            v20 = v13 - v12;
            if (*(a1 + 73) == 1 && v20 != v10)
            {
              v22 = v20 - 1;
              if (v7 > v20 - 1)
              {
                if (v7 > v20)
                {
                  v23 = v12[v22];
                  v24 = *(v12 + v19) - v23;
                  v25 = 0.0;
                  if (v24 > 0.0)
                  {
                    v25 = (result.f32[0] - v23) / v24;
                  }

                  if (v9 > v22)
                  {
                    if (v9 > v20)
                    {
                      result = vadd_f32(vmul_n_f32(*(*(a1 + 120) + 8 * v22), 1.0 - v25), vmul_n_f32(*(*(a1 + 120) + 8 * v20), v25));
                      *a7 = *&result;
                      return result;
                    }

LABEL_70:
                    v60 = 0;
                    v72 = 0u;
                    v73 = 0u;
                    v70 = 0u;
                    v71 = 0u;
                    v69 = 0u;
                    v51 = MEMORY[0x1E69E9C10];
                    v52 = v9;
                    v53 = v20;
                    v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    v61 = 136315906;
                    v62 = "operator[]";
                    v63 = 1024;
                    if (v54)
                    {
                      v55 = 3;
                    }

                    else
                    {
                      v55 = 2;
                    }

                    v64 = 476;
                    v65 = 2048;
                    v66 = v53;
                    v67 = 2048;
                    v68 = v52;
                    _os_log_send_and_compose_impl(v55, &v60, &v69, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
                    _os_crash_msg();
                    __break(1u);
                  }

LABEL_66:
                  v60 = 0;
                  v72 = 0u;
                  v73 = 0u;
                  v70 = 0u;
                  v71 = 0u;
                  v69 = 0u;
                  v47 = MEMORY[0x1E69E9C10];
                  v48 = v9;
                  v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v61 = 136315906;
                  v62 = "operator[]";
                  v63 = 1024;
                  if (v49)
                  {
                    v50 = 3;
                  }

                  else
                  {
                    v50 = 2;
                  }

                  v64 = 476;
                  v65 = 2048;
                  v66 = v22;
                  v67 = 2048;
                  v68 = v48;
                  _os_log_send_and_compose_impl(v50, &v60, &v69, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
                  _os_crash_msg();
                  __break(1u);
                  goto LABEL_70;
                }

LABEL_62:
                v60 = 0;
                v72 = 0u;
                v73 = 0u;
                v70 = 0u;
                v71 = 0u;
                v69 = 0u;
                v44 = MEMORY[0x1E69E9C10];
                v22 = v20;
                v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v61 = 136315906;
                v62 = "operator[]";
                v63 = 1024;
                if (v45)
                {
                  v46 = 3;
                }

                else
                {
                  v46 = 2;
                }

                v64 = 476;
                v65 = 2048;
                v66 = v22;
                v67 = 2048;
                v68 = v7;
                _os_log_send_and_compose_impl(v46, &v60, &v69, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
                _os_crash_msg();
                __break(1u);
                goto LABEL_66;
              }

LABEL_58:
              v60 = 0;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v69 = 0u;
              v41 = MEMORY[0x1E69E9C10];
              v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v61 = 136315906;
              v62 = "operator[]";
              v63 = 1024;
              if (v42)
              {
                v43 = 3;
              }

              else
              {
                v43 = 2;
              }

              v64 = 476;
              v65 = 2048;
              v66 = v22;
              v67 = 2048;
              v68 = v7;
              _os_log_send_and_compose_impl(v43, &v60, &v69, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
              _os_crash_msg();
              __break(1u);
              goto LABEL_62;
            }

            if (v9 > v20)
            {
              v11 = *(*(a1 + 120) + 8 * v20);
              goto LABEL_26;
            }

LABEL_54:
            v60 = 0;
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v69 = 0u;
            v38 = MEMORY[0x1E69E9C10];
            v7 = v9;
            v22 = v20;
            v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v61 = 136315906;
            v62 = "operator[]";
            v63 = 1024;
            if (v39)
            {
              v40 = 3;
            }

            else
            {
              v40 = 2;
            }

            v64 = 476;
            v65 = 2048;
            v66 = v22;
            v67 = 2048;
            v68 = v7;
            _os_log_send_and_compose_impl(v40, &v60, &v69, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
            _os_crash_msg();
            __break(1u);
            goto LABEL_58;
          }

          if (v9 > v8)
          {
            v11 = *(*(a1 + 120) + 8 * v8);
            goto LABEL_26;
          }

LABEL_50:
          v60 = 0;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v69 = 0u;
          v34 = MEMORY[0x1E69E9C10];
          v35 = v9;
          v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v61 = 136315906;
          v62 = "operator[]";
          v63 = 1024;
          if (v36)
          {
            v37 = 3;
          }

          else
          {
            v37 = 2;
          }

          v64 = 476;
          v65 = 2048;
          v66 = v8;
          v67 = 2048;
          v68 = v35;
          _os_log_send_and_compose_impl(v37, &v60, &v69, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
          _os_crash_msg();
          __break(1u);
          goto LABEL_54;
        }

        if (v9)
        {
LABEL_25:
          v11 = **(a1 + 120);
          goto LABEL_26;
        }

LABEL_46:
        v60 = 0;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v69 = 0u;
        v31 = MEMORY[0x1E69E9C10];
        v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v61 = 136315906;
        v62 = "operator[]";
        v63 = 1024;
        if (v32)
        {
          v33 = 3;
        }

        else
        {
          v33 = 2;
        }

        v64 = 476;
        v65 = 2048;
        v66 = 0;
        v67 = 2048;
        v68 = 0;
        _os_log_send_and_compose_impl(v33, &v60, &v69, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
        _os_crash_msg();
        __break(1u);
        goto LABEL_50;
      }

LABEL_42:
      v60 = 0;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v69 = 0u;
      v28 = MEMORY[0x1E69E9C10];
      v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v61 = 136315906;
      v62 = "operator[]";
      v63 = 1024;
      if (v29)
      {
        v30 = 3;
      }

      else
      {
        v30 = 2;
      }

      v64 = 476;
      v65 = 2048;
      v66 = v8;
      v67 = 2048;
      v68 = v7;
      _os_log_send_and_compose_impl(v30, &v60, &v69, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
      _os_crash_msg();
      __break(1u);
      goto LABEL_46;
    }

LABEL_38:
    v60 = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    v26 = MEMORY[0x1E69E9C10];
    v61 = 136315906;
    v62 = "operator[]";
    v63 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v27 = 3;
    }

    else
    {
      v27 = 2;
    }

    v64 = 476;
    v65 = 2048;
    v66 = 0;
    v67 = 2048;
    v68 = 0;
    _os_log_send_and_compose_impl(v27, &v60, &v69, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
    _os_crash_msg();
    __break(1u);
    goto LABEL_42;
  }

  v11 = *a4;
LABEL_26:
  *a7 = v11;
  return result;
}

double re::KeyframeAnimation<re::Vector3<float>>::totalDuration(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    return *(*(a1 + 96) + 4 * v1 - 4);
  }

  else
  {
    return 0.0;
  }
}

float32x4_t re::KeyframeAnimation<re::Vector3<float>>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5, float32x4_t *a6)
{
  v75 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v57, v58);
    __break(1u);
    goto LABEL_38;
  }

  v6 = *(a1 + 88);
  v8 = *(a1 + 112);
  if (v6 >= v8)
  {
    v9 = *(a1 + 112);
  }

  else
  {
    v9 = *(a1 + 88);
  }

  v7 = v9 - 1;
  if (v9 == 1)
  {
    goto LABEL_25;
  }

  if (v9)
  {
    if (v6)
    {
      if (v6 > v7)
      {
        v11 = *(a1 + 96);
        v12 = *(a2 + 24);
        if (*v11 < v12)
        {
          if (v11[v7] > v12)
          {
            v13 = *(a1 + 96);
            v14 = *(a1 + 88);
            do
            {
              v15 = v14 >> 1;
              v16 = &v13[v14 >> 1];
              v18 = *v16;
              v17 = v16 + 1;
              v14 += ~(v14 >> 1);
              if (v18 < v12)
              {
                v13 = v17;
              }

              else
              {
                v14 = v15;
              }
            }

            while (v14);
            v19 = v13 - v11;
            v20 = v13 - v11;
            if (*(a1 + 73) == 1 && v20 != v9)
            {
              v22 = v20 - 1;
              if (v6 > v20 - 1)
              {
                if (v6 > v20)
                {
                  v23 = v11[v22];
                  v24 = *(v11 + v19) - v23;
                  v25 = 0.0;
                  if (v24 > 0.0)
                  {
                    v25 = (v12 - v23) / v24;
                  }

                  if (v8 > v22)
                  {
                    if (v8 > v20)
                    {
                      v26 = *(a1 + 120);
                      result = *(v26 + 16 * v22);
                      *a6 = vmlaq_n_f32(vmulq_n_f32(*(v26 + 16 * v20), v25), result, 1.0 - v25);
                      return result;
                    }

LABEL_70:
                    v61 = 0;
                    v73 = 0u;
                    v74 = 0u;
                    v71 = 0u;
                    v72 = 0u;
                    v70 = 0u;
                    v52 = MEMORY[0x1E69E9C10];
                    v53 = v8;
                    v54 = v20;
                    v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    v62 = 136315906;
                    v63 = "operator[]";
                    v64 = 1024;
                    if (v55)
                    {
                      v56 = 3;
                    }

                    else
                    {
                      v56 = 2;
                    }

                    v65 = 476;
                    v66 = 2048;
                    v67 = v54;
                    v68 = 2048;
                    v69 = v53;
                    _os_log_send_and_compose_impl(v56, &v61, &v70, 80, &dword_1E1C61000, v52, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v62, 38, v59, v60);
                    _os_crash_msg();
                    __break(1u);
                  }

LABEL_66:
                  v61 = 0;
                  v73 = 0u;
                  v74 = 0u;
                  v71 = 0u;
                  v72 = 0u;
                  v70 = 0u;
                  v48 = MEMORY[0x1E69E9C10];
                  v49 = v8;
                  v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v62 = 136315906;
                  v63 = "operator[]";
                  v64 = 1024;
                  if (v50)
                  {
                    v51 = 3;
                  }

                  else
                  {
                    v51 = 2;
                  }

                  v65 = 476;
                  v66 = 2048;
                  v67 = v22;
                  v68 = 2048;
                  v69 = v49;
                  _os_log_send_and_compose_impl(v51, &v61, &v70, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v62, 38, v59, v60);
                  _os_crash_msg();
                  __break(1u);
                  goto LABEL_70;
                }

LABEL_62:
                v61 = 0;
                v73 = 0u;
                v74 = 0u;
                v71 = 0u;
                v72 = 0u;
                v70 = 0u;
                v45 = MEMORY[0x1E69E9C10];
                v22 = v20;
                v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v62 = 136315906;
                v63 = "operator[]";
                v64 = 1024;
                if (v46)
                {
                  v47 = 3;
                }

                else
                {
                  v47 = 2;
                }

                v65 = 476;
                v66 = 2048;
                v67 = v22;
                v68 = 2048;
                v69 = v6;
                _os_log_send_and_compose_impl(v47, &v61, &v70, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v62, 38, v59, v60);
                _os_crash_msg();
                __break(1u);
                goto LABEL_66;
              }

LABEL_58:
              v61 = 0;
              v73 = 0u;
              v74 = 0u;
              v71 = 0u;
              v72 = 0u;
              v70 = 0u;
              v42 = MEMORY[0x1E69E9C10];
              v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v62 = 136315906;
              v63 = "operator[]";
              v64 = 1024;
              if (v43)
              {
                v44 = 3;
              }

              else
              {
                v44 = 2;
              }

              v65 = 476;
              v66 = 2048;
              v67 = v22;
              v68 = 2048;
              v69 = v6;
              _os_log_send_and_compose_impl(v44, &v61, &v70, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v62, 38, v59, v60);
              _os_crash_msg();
              __break(1u);
              goto LABEL_62;
            }

            if (v8 > v20)
            {
              result = *(*(a1 + 120) + 16 * v20);
              goto LABEL_26;
            }

LABEL_54:
            v61 = 0;
            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            v70 = 0u;
            v39 = MEMORY[0x1E69E9C10];
            v6 = v8;
            v22 = v20;
            v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v62 = 136315906;
            v63 = "operator[]";
            v64 = 1024;
            if (v40)
            {
              v41 = 3;
            }

            else
            {
              v41 = 2;
            }

            v65 = 476;
            v66 = 2048;
            v67 = v22;
            v68 = 2048;
            v69 = v6;
            _os_log_send_and_compose_impl(v41, &v61, &v70, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v62, 38, v59, v60);
            _os_crash_msg();
            __break(1u);
            goto LABEL_58;
          }

          if (v8 > v7)
          {
            result = *(*(a1 + 120) + 16 * v7);
            goto LABEL_26;
          }

LABEL_50:
          v61 = 0;
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v70 = 0u;
          v35 = MEMORY[0x1E69E9C10];
          v36 = v8;
          v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v62 = 136315906;
          v63 = "operator[]";
          v64 = 1024;
          if (v37)
          {
            v38 = 3;
          }

          else
          {
            v38 = 2;
          }

          v65 = 476;
          v66 = 2048;
          v67 = v7;
          v68 = 2048;
          v69 = v36;
          _os_log_send_and_compose_impl(v38, &v61, &v70, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v62, 38, v59, v60);
          _os_crash_msg();
          __break(1u);
          goto LABEL_54;
        }

        if (v8)
        {
LABEL_25:
          result = **(a1 + 120);
          goto LABEL_26;
        }

LABEL_46:
        v61 = 0;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v70 = 0u;
        v32 = MEMORY[0x1E69E9C10];
        v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v62 = 136315906;
        v63 = "operator[]";
        v64 = 1024;
        if (v33)
        {
          v34 = 3;
        }

        else
        {
          v34 = 2;
        }

        v65 = 476;
        v66 = 2048;
        v67 = 0;
        v68 = 2048;
        v69 = 0;
        _os_log_send_and_compose_impl(v34, &v61, &v70, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v62, 38, v59, v60);
        _os_crash_msg();
        __break(1u);
        goto LABEL_50;
      }

LABEL_42:
      v61 = 0;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v70 = 0u;
      v29 = MEMORY[0x1E69E9C10];
      v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v62 = 136315906;
      v63 = "operator[]";
      v64 = 1024;
      if (v30)
      {
        v31 = 3;
      }

      else
      {
        v31 = 2;
      }

      v65 = 476;
      v66 = 2048;
      v67 = v7;
      v68 = 2048;
      v69 = v6;
      _os_log_send_and_compose_impl(v31, &v61, &v70, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v62, 38, v59, v60);
      _os_crash_msg();
      __break(1u);
      goto LABEL_46;
    }

LABEL_38:
    v61 = 0;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v70 = 0u;
    v27 = MEMORY[0x1E69E9C10];
    v62 = 136315906;
    v63 = "operator[]";
    v64 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    v65 = 476;
    v66 = 2048;
    v67 = 0;
    v68 = 2048;
    v69 = 0;
    _os_log_send_and_compose_impl(v28, &v61, &v70, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v62, 38, v59, v60);
    _os_crash_msg();
    __break(1u);
    goto LABEL_42;
  }

  result = *a4;
LABEL_26:
  *a6 = result;
  return result;
}

double re::KeyframeAnimation<re::Vector4<float>>::totalDuration(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    return *(*(a1 + 96) + 4 * v1 - 4);
  }

  else
  {
    return 0.0;
  }
}

uint64_t re::KeyframeAnimation<re::Vector4<float>>::evaluateCore(uint64_t result, uint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5, float32x4_t *a6)
{
  v74 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v56, v57);
    __break(1u);
    goto LABEL_37;
  }

  v6 = *(result + 88);
  v8 = *(result + 112);
  if (v6 >= v8)
  {
    v9 = *(result + 112);
  }

  else
  {
    v9 = *(result + 88);
  }

  v7 = v9 - 1;
  if (v9 == 1)
  {
    goto LABEL_25;
  }

  if (v9)
  {
    if (v6)
    {
      if (v6 > v7)
      {
        v11 = *(result + 96);
        v12 = *(a2 + 24);
        if (*v11 < v12)
        {
          if (v11[v7] > v12)
          {
            v13 = *(result + 96);
            v14 = *(result + 88);
            do
            {
              v15 = v14 >> 1;
              v16 = &v13[v14 >> 1];
              v18 = *v16;
              v17 = v16 + 1;
              v14 += ~(v14 >> 1);
              if (v18 < v12)
              {
                v13 = v17;
              }

              else
              {
                v14 = v15;
              }
            }

            while (v14);
            v19 = v13 - v11;
            v20 = v13 - v11;
            if (*(result + 73) == 1 && v20 != v9)
            {
              v22 = v20 - 1;
              if (v6 > v20 - 1)
              {
                if (v6 > v20)
                {
                  v23 = v11[v22];
                  v24 = *(v11 + v19) - v23;
                  v25 = 0.0;
                  if (v24 > 0.0)
                  {
                    v25 = (v12 - v23) / v24;
                  }

                  if (v8 > v22)
                  {
                    if (v8 > v20)
                    {
                      v10 = vaddq_f32(vmulq_n_f32(*(*(result + 120) + 16 * v22), 1.0 - v25), vmulq_n_f32(*(*(result + 120) + 16 * v20), v25));
                      goto LABEL_26;
                    }

LABEL_69:
                    v60 = 0;
                    v72 = 0u;
                    v73 = 0u;
                    v70 = 0u;
                    v71 = 0u;
                    v69 = 0u;
                    v51 = MEMORY[0x1E69E9C10];
                    v52 = v8;
                    v53 = v20;
                    v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    v61 = 136315906;
                    v62 = "operator[]";
                    v63 = 1024;
                    if (v54)
                    {
                      v55 = 3;
                    }

                    else
                    {
                      v55 = 2;
                    }

                    v64 = 476;
                    v65 = 2048;
                    v66 = v53;
                    v67 = 2048;
                    v68 = v52;
                    _os_log_send_and_compose_impl(v55, &v60, &v69, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
                    _os_crash_msg();
                    __break(1u);
                  }

LABEL_65:
                  v60 = 0;
                  v72 = 0u;
                  v73 = 0u;
                  v70 = 0u;
                  v71 = 0u;
                  v69 = 0u;
                  v47 = MEMORY[0x1E69E9C10];
                  v48 = v8;
                  v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v61 = 136315906;
                  v62 = "operator[]";
                  v63 = 1024;
                  if (v49)
                  {
                    v50 = 3;
                  }

                  else
                  {
                    v50 = 2;
                  }

                  v64 = 476;
                  v65 = 2048;
                  v66 = v22;
                  v67 = 2048;
                  v68 = v48;
                  _os_log_send_and_compose_impl(v50, &v60, &v69, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
                  _os_crash_msg();
                  __break(1u);
                  goto LABEL_69;
                }

LABEL_61:
                v60 = 0;
                v72 = 0u;
                v73 = 0u;
                v70 = 0u;
                v71 = 0u;
                v69 = 0u;
                v44 = MEMORY[0x1E69E9C10];
                v22 = v20;
                v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v61 = 136315906;
                v62 = "operator[]";
                v63 = 1024;
                if (v45)
                {
                  v46 = 3;
                }

                else
                {
                  v46 = 2;
                }

                v64 = 476;
                v65 = 2048;
                v66 = v22;
                v67 = 2048;
                v68 = v6;
                _os_log_send_and_compose_impl(v46, &v60, &v69, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
                _os_crash_msg();
                __break(1u);
                goto LABEL_65;
              }

LABEL_57:
              v60 = 0;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v69 = 0u;
              v41 = MEMORY[0x1E69E9C10];
              v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v61 = 136315906;
              v62 = "operator[]";
              v63 = 1024;
              if (v42)
              {
                v43 = 3;
              }

              else
              {
                v43 = 2;
              }

              v64 = 476;
              v65 = 2048;
              v66 = v22;
              v67 = 2048;
              v68 = v6;
              _os_log_send_and_compose_impl(v43, &v60, &v69, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
              _os_crash_msg();
              __break(1u);
              goto LABEL_61;
            }

            if (v8 > v20)
            {
              v10 = *(*(result + 120) + 16 * v20);
              goto LABEL_26;
            }

LABEL_53:
            v60 = 0;
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v69 = 0u;
            v38 = MEMORY[0x1E69E9C10];
            v6 = v8;
            v22 = v20;
            v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v61 = 136315906;
            v62 = "operator[]";
            v63 = 1024;
            if (v39)
            {
              v40 = 3;
            }

            else
            {
              v40 = 2;
            }

            v64 = 476;
            v65 = 2048;
            v66 = v22;
            v67 = 2048;
            v68 = v6;
            _os_log_send_and_compose_impl(v40, &v60, &v69, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
            _os_crash_msg();
            __break(1u);
            goto LABEL_57;
          }

          if (v8 > v7)
          {
            v10 = *(*(result + 120) + 16 * v7);
            goto LABEL_26;
          }

LABEL_49:
          v60 = 0;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v69 = 0u;
          v34 = MEMORY[0x1E69E9C10];
          v35 = v8;
          v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v61 = 136315906;
          v62 = "operator[]";
          v63 = 1024;
          if (v36)
          {
            v37 = 3;
          }

          else
          {
            v37 = 2;
          }

          v64 = 476;
          v65 = 2048;
          v66 = v7;
          v67 = 2048;
          v68 = v35;
          _os_log_send_and_compose_impl(v37, &v60, &v69, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
          _os_crash_msg();
          __break(1u);
          goto LABEL_53;
        }

        if (v8)
        {
LABEL_25:
          v10 = **(result + 120);
          goto LABEL_26;
        }

LABEL_45:
        v60 = 0;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v69 = 0u;
        v31 = MEMORY[0x1E69E9C10];
        v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v61 = 136315906;
        v62 = "operator[]";
        v63 = 1024;
        if (v32)
        {
          v33 = 3;
        }

        else
        {
          v33 = 2;
        }

        v64 = 476;
        v65 = 2048;
        v66 = 0;
        v67 = 2048;
        v68 = 0;
        _os_log_send_and_compose_impl(v33, &v60, &v69, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
        _os_crash_msg();
        __break(1u);
        goto LABEL_49;
      }

LABEL_41:
      v60 = 0;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v69 = 0u;
      v28 = MEMORY[0x1E69E9C10];
      v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v61 = 136315906;
      v62 = "operator[]";
      v63 = 1024;
      if (v29)
      {
        v30 = 3;
      }

      else
      {
        v30 = 2;
      }

      v64 = 476;
      v65 = 2048;
      v66 = v7;
      v67 = 2048;
      v68 = v6;
      _os_log_send_and_compose_impl(v30, &v60, &v69, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
      _os_crash_msg();
      __break(1u);
      goto LABEL_45;
    }

LABEL_37:
    v60 = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    v26 = MEMORY[0x1E69E9C10];
    v61 = 136315906;
    v62 = "operator[]";
    v63 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v27 = 3;
    }

    else
    {
      v27 = 2;
    }

    v64 = 476;
    v65 = 2048;
    v66 = 0;
    v67 = 2048;
    v68 = 0;
    _os_log_send_and_compose_impl(v27, &v60, &v69, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v58, v59);
    _os_crash_msg();
    __break(1u);
    goto LABEL_41;
  }

  v10 = *a4;
LABEL_26:
  *a6 = v10;
  return result;
}

double re::KeyframeAnimation<re::Quaternion<float>>::totalDuration(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    return *(*(a1 + 96) + 4 * v1 - 4);
  }

  else
  {
    return 0.0;
  }
}

void re::KeyframeAnimation<re::Quaternion<float>>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v112 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v89, v90);
    __break(1u);
LABEL_46:
    v98 = 0;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    v59 = MEMORY[0x1E69E9C10];
    v99 = 136315906;
    v100 = "operator[]";
    v101 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v60 = 3;
    }

    else
    {
      v60 = 2;
    }

    v102 = 476;
    v103 = 2048;
    v104 = 0;
    v105 = 2048;
    v106 = 0;
    _os_log_send_and_compose_impl(v60, &v98, &v107, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v99, 38, v91, v92);
    _os_crash_msg();
    __break(1u);
    goto LABEL_50;
  }

  v6 = *(a1 + 88);
  v9 = *(a1 + 112);
  if (v6 >= v9)
  {
    v10 = *(a1 + 112);
  }

  else
  {
    v10 = *(a1 + 88);
  }

  v7 = v10 - 1;
  if (v10 == 1)
  {
    goto LABEL_25;
  }

  if (!v10)
  {
    v11 = *a4;
LABEL_26:
    *a6 = v11;
    return;
  }

  if (!v6)
  {
    goto LABEL_46;
  }

  if (v6 <= v7)
  {
LABEL_50:
    v98 = 0;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    v61 = MEMORY[0x1E69E9C10];
    v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v99 = 136315906;
    v100 = "operator[]";
    v101 = 1024;
    if (v62)
    {
      v63 = 3;
    }

    else
    {
      v63 = 2;
    }

    v102 = 476;
    v103 = 2048;
    v104 = v7;
    v105 = 2048;
    v106 = v6;
    _os_log_send_and_compose_impl(v63, &v98, &v107, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v99, 38, v91, v92);
    _os_crash_msg();
    __break(1u);
    goto LABEL_54;
  }

  v12 = *(a1 + 96);
  v13 = *(a2 + 24);
  if (*v12 >= v13)
  {
    if (v9)
    {
LABEL_25:
      v11 = **(a1 + 120);
      goto LABEL_26;
    }

LABEL_54:
    v98 = 0;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    v64 = MEMORY[0x1E69E9C10];
    v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v99 = 136315906;
    v100 = "operator[]";
    v101 = 1024;
    if (v65)
    {
      v66 = 3;
    }

    else
    {
      v66 = 2;
    }

    v102 = 476;
    v103 = 2048;
    v104 = 0;
    v105 = 2048;
    v106 = 0;
    _os_log_send_and_compose_impl(v66, &v98, &v107, 80, &dword_1E1C61000, v64, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v99, 38, v91, v92);
    _os_crash_msg();
    __break(1u);
LABEL_58:
    v98 = 0;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    v67 = MEMORY[0x1E69E9C10];
    v68 = v9;
    v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v99 = 136315906;
    v100 = "operator[]";
    v101 = 1024;
    if (v69)
    {
      v70 = 3;
    }

    else
    {
      v70 = 2;
    }

    v102 = 476;
    v103 = 2048;
    v104 = v7;
    v105 = 2048;
    v106 = v68;
    _os_log_send_and_compose_impl(v70, &v98, &v107, 80, &dword_1E1C61000, v67, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v99, 38, v91, v92);
    _os_crash_msg();
    __break(1u);
LABEL_62:
    v98 = 0;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    v71 = MEMORY[0x1E69E9C10];
    v6 = v9;
    v23 = v21;
    v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v99 = 136315906;
    v100 = "operator[]";
    v101 = 1024;
    if (v72)
    {
      v73 = 3;
    }

    else
    {
      v73 = 2;
    }

    v102 = 476;
    v103 = 2048;
    v104 = v23;
    v105 = 2048;
    v106 = v6;
    _os_log_send_and_compose_impl(v73, &v98, &v107, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v99, 38, v91, v92);
    _os_crash_msg();
    __break(1u);
    goto LABEL_66;
  }

  if (v12[v7] <= v13)
  {
    if (v9 > v7)
    {
      v11 = *(*(a1 + 120) + 16 * v7);
      goto LABEL_26;
    }

    goto LABEL_58;
  }

  v14 = *(a1 + 96);
  v15 = *(a1 + 88);
  do
  {
    v16 = v15 >> 1;
    v17 = &v14[v15 >> 1];
    v19 = *v17;
    v18 = v17 + 1;
    v15 += ~(v15 >> 1);
    if (v19 < v13)
    {
      v14 = v18;
    }

    else
    {
      v15 = v16;
    }
  }

  while (v15);
  v20 = v14 - v12;
  v21 = v14 - v12;
  v22 = *(a1 + 73) != 1 || v21 == v10;
  if (v22)
  {
    if (v9 > v21)
    {
      v11 = *(*(a1 + 120) + 16 * v21);
      goto LABEL_26;
    }

    goto LABEL_62;
  }

  v23 = v21 - 1;
  if (v6 <= v21 - 1)
  {
LABEL_66:
    v98 = 0;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    v74 = MEMORY[0x1E69E9C10];
    v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v99 = 136315906;
    v100 = "operator[]";
    v101 = 1024;
    if (v75)
    {
      v76 = 3;
    }

    else
    {
      v76 = 2;
    }

    v102 = 476;
    v103 = 2048;
    v104 = v23;
    v105 = 2048;
    v106 = v6;
    _os_log_send_and_compose_impl(v76, &v98, &v107, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v99, 38, v91, v92);
    _os_crash_msg();
    __break(1u);
    goto LABEL_70;
  }

  if (v6 <= v21)
  {
LABEL_70:
    v98 = 0;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    v77 = MEMORY[0x1E69E9C10];
    v23 = v21;
    v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v99 = 136315906;
    v100 = "operator[]";
    v101 = 1024;
    if (v78)
    {
      v79 = 3;
    }

    else
    {
      v79 = 2;
    }

    v102 = 476;
    v103 = 2048;
    v104 = v23;
    v105 = 2048;
    v106 = v6;
    _os_log_send_and_compose_impl(v79, &v98, &v107, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v99, 38, v91, v92);
    _os_crash_msg();
    __break(1u);
LABEL_74:
    v98 = 0;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    v80 = MEMORY[0x1E69E9C10];
    v81 = v9;
    v82 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v99 = 136315906;
    v100 = "operator[]";
    v101 = 1024;
    if (v82)
    {
      v83 = 3;
    }

    else
    {
      v83 = 2;
    }

    v102 = 476;
    v103 = 2048;
    v104 = v23;
    v105 = 2048;
    v106 = v81;
    _os_log_send_and_compose_impl(v83, &v98, &v107, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v99, 38, v91, v92);
    _os_crash_msg();
    __break(1u);
LABEL_78:
    v98 = 0;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    v84 = MEMORY[0x1E69E9C10];
    v85 = v9;
    v86 = v21;
    v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v99 = 136315906;
    v100 = "operator[]";
    v101 = 1024;
    if (v87)
    {
      v88 = 3;
    }

    else
    {
      v88 = 2;
    }

    v102 = 476;
    v103 = 2048;
    v104 = v86;
    v105 = 2048;
    v106 = v85;
    _os_log_send_and_compose_impl(v88, &v98, &v107, 80, &dword_1E1C61000, v84, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v99, 38, v91, v92);
    _os_crash_msg();
    __break(1u);
  }

  v24 = v12[v23];
  v25 = *(v12 + v20) - v24;
  v26 = 0.0;
  if (v25 > 0.0)
  {
    v26 = (v13 - v24) / v25;
  }

  if (v9 <= v23)
  {
    goto LABEL_74;
  }

  if (v9 <= v21)
  {
    goto LABEL_78;
  }

  v27 = *(a1 + 120);
  v28 = *(v27 + 16 * v23);
  v29 = *(v27 + 16 * v21);
  v30 = vmulq_f32(v28, v29);
  v31 = vextq_s8(v30, v30, 8uLL);
  *v30.i8 = vadd_f32(*v30.i8, *v31.f32);
  *v30.i32 = vaddv_f32(*v30.i8);
  v31.i64[0] = 0;
  v32 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v30, v31)), 0), vnegq_f32(v29), v29);
  v33 = 1.0;
  v34 = 1.0 - v26;
  v35 = vsubq_f32(v28, v32);
  v36 = vmulq_f32(v35, v35);
  v96 = v32;
  v97 = v28;
  v37 = vaddq_f32(v28, v32);
  v38 = vmulq_f32(v37, v37);
  v39 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v36.i8, *&vextq_s8(v36, v36, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v38.i8, *&vextq_s8(v38, v38, 8uLL)))));
  v40 = v39 + v39;
  v22 = (v39 + v39) == 0.0;
  v41 = 1.0;
  if (!v22)
  {
    v41 = sinf(v40) / v40;
  }

  v42 = v41;
  v43 = vrecpe_f32(LODWORD(v41));
  v44 = vmul_f32(v43, vrecps_f32(LODWORD(v42), v43));
  LODWORD(v45) = vmul_f32(v44, vrecps_f32(LODWORD(v42), v44)).u32[0];
  if ((v34 * v40) != 0.0)
  {
    v94 = v45;
    *v44.i32 = sinf(v34 * v40);
    v45 = v94;
    v33 = *v44.i32 / (v34 * v40);
  }

  *v44.i32 = v34 * (v45 * v33);
  v46 = vdupq_lane_s32(v44, 0);
  v47 = v26 * v40;
  v48 = 1.0;
  if (v47 != 0.0)
  {
    v93 = v46;
    v95 = v45;
    v49 = sinf(v47);
    v46 = v93;
    v45 = v95;
    v48 = v49 / v47;
  }

  v50 = vmlaq_f32(vmulq_n_f32(v96, v26 * (v45 * v48)), v97, v46);
  v51 = vmulq_f32(v50, v50);
  v52 = vadd_f32(*v51.i8, *&vextq_s8(v51, v51, 8uLL));
  if (vaddv_f32(v52) == 0.0)
  {
    v53 = 0;
    v54 = 0x3F80000000000000;
  }

  else
  {
    v55 = vadd_f32(v52, vdup_lane_s32(v52, 1)).u32[0];
    v56 = vrsqrte_f32(v55);
    v57 = vmul_f32(v56, vrsqrts_f32(v55, vmul_f32(v56, v56)));
    v58 = vmulq_n_f32(v50, vmul_f32(v57, vrsqrts_f32(v55, vmul_f32(v57, v57))).f32[0]);
    v54 = v58.i64[1];
    v53 = v58.i64[0];
  }

  *a6 = v53;
  *(a6 + 8) = v54;
}