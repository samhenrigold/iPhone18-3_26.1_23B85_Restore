unint64_t re::RigHierarchyJointTransform::setLocalSpaceJointTranslation(void *a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a1[3] - 0x7FFFFFFFFFFFFFFFLL;
  v4 = *(*a1 + 944);
  if (v4 <= v3)
  {
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v10 = MEMORY[0x1E69E9C10];
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v20 = 789;
    v21 = 2048;
    v22 = v3;
    v23 = 2048;
    v24 = v4;
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

    v20 = 789;
    v21 = 2048;
    v22 = v3;
    v23 = 2048;
    v24 = v4;
    _os_log_send_and_compose_impl(v14, &v16, &v25, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
    _os_crash_msg();
    __break(1u);
  }

  *(v2[120] + 8 * v3) = a2;
  v5 = a1[6];
  v6 = a1[18];
  v7 = a1[3];
  LODWORD(v25) = 43;
  v26 = 0uLL;
  *(&v25 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v2 + 243), &v25);
  v8 = v2[245] - 1;
  result = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((v2 + 208), v8);
  *(result + 8) = v6;
  *(result + 16) = v7;
  v3 = v5 - 0x7FFFFFFFFFFFFFFFLL;
  v4 = v2[118];
  if (v4 <= v3)
  {
    goto LABEL_8;
  }

  *(v2[120] + 8 * v3) = v8;
  return result;
}

void re::RigHierarchyJointTransform::setParentTransform(unint64_t *result, void *a2)
{
  v78 = *MEMORY[0x1E69E9840];
  v5 = *result;
  if (a2)
  {
    v6 = result[12] - 0x7FFFFFFFFFFFFFFFLL;
    v7 = *(v5 + 944);
    if (v7 <= v6)
    {
      v68 = 0;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v73 = 0u;
      v21 = MEMORY[0x1E69E9C10];
      *v72 = 136315906;
      *&v72[4] = "operator[]";
      *&v72[12] = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v22 = 3;
      }

      else
      {
        v22 = 2;
      }

      *&v72[14] = 789;
      *&v72[18] = 2048;
      *&v72[20] = v6;
      *&v72[28] = 2048;
      *&v72[30] = v7;
      _os_log_send_and_compose_impl(v22, &v68, &v73, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v72, 38);
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      v8 = *(v5 + 960);
      *(v8 + 8 * v6) = a2[4];
      v6 = result[13] - 0x7FFFFFFFFFFFFFFFLL;
      v7 = *(v5 + 864);
      if (v7 > v6)
      {
        v9 = *(v5 + 880);
        *(v9 + 8 * v6) = a2[5];
        v6 = result[14] - 0x7FFFFFFFFFFFFFFFLL;
        v7 = *(v5 + 944);
        if (v7 > v6)
        {
          *(v8 + 8 * v6) = a2[6];
          v6 = result[15] - 0x7FFFFFFFFFFFFFFFLL;
          v7 = *(v5 + 864);
          if (v7 > v6)
          {
            *(v9 + 8 * v6) = a2[7];
            v6 = result[16] - 0x7FFFFFFFFFFFFFFFLL;
            v7 = *(v5 + 784);
            if (v7 > v6)
            {
              v10 = *(v5 + 800);
              *(v10 + 8 * v6) = a2[8];
              v6 = result[17] - 0x7FFFFFFFFFFFFFFFLL;
              v7 = *(v5 + 784);
              if (v7 > v6)
              {
                *(v10 + 8 * v6) = a2[9];
                v6 = result[18] - 0x7FFFFFFFFFFFFFFFLL;
                v7 = *(v5 + 824);
                if (v7 > v6)
                {
                  v11 = *(v5 + 840);
                  *(v11 + 8 * v6) = a2[10];
                  v6 = result[19] - 0x7FFFFFFFFFFFFFFFLL;
                  v5 = *(v5 + 824);
                  if (v5 > v6)
                  {
                    *(v11 + 8 * v6) = a2[11];
                    return;
                  }

                  goto LABEL_49;
                }

LABEL_45:
                v68 = 0;
                v76 = 0u;
                v77 = 0u;
                v74 = 0u;
                v75 = 0u;
                v73 = 0u;
                v38 = MEMORY[0x1E69E9C10];
                v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v72 = 136315906;
                *&v72[4] = "operator[]";
                *&v72[12] = 1024;
                if (v39)
                {
                  v40 = 3;
                }

                else
                {
                  v40 = 2;
                }

                *&v72[14] = 789;
                *&v72[18] = 2048;
                *&v72[20] = v6;
                *&v72[28] = 2048;
                *&v72[30] = v7;
                _os_log_send_and_compose_impl(v40, &v68, &v73, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v72, 38);
                _os_crash_msg();
                __break(1u);
LABEL_49:
                v68 = 0;
                v76 = 0u;
                v77 = 0u;
                v74 = 0u;
                v75 = 0u;
                v73 = 0u;
                v41 = MEMORY[0x1E69E9C10];
                v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v72 = 136315906;
                *&v72[4] = "operator[]";
                *&v72[12] = 1024;
                if (v42)
                {
                  v43 = 3;
                }

                else
                {
                  v43 = 2;
                }

                *&v72[14] = 789;
                *&v72[18] = 2048;
                *&v72[20] = v6;
                *&v72[28] = 2048;
                *&v72[30] = v5;
                _os_log_send_and_compose_impl(v43, &v68, &v73, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v72, 38);
                _os_crash_msg();
                __break(1u);
                goto LABEL_53;
              }

LABEL_41:
              v68 = 0;
              v76 = 0u;
              v77 = 0u;
              v74 = 0u;
              v75 = 0u;
              v73 = 0u;
              v35 = MEMORY[0x1E69E9C10];
              v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v72 = 136315906;
              *&v72[4] = "operator[]";
              *&v72[12] = 1024;
              if (v36)
              {
                v37 = 3;
              }

              else
              {
                v37 = 2;
              }

              *&v72[14] = 789;
              *&v72[18] = 2048;
              *&v72[20] = v6;
              *&v72[28] = 2048;
              *&v72[30] = v7;
              _os_log_send_and_compose_impl(v37, &v68, &v73, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v72, 38);
              _os_crash_msg();
              __break(1u);
              goto LABEL_45;
            }

LABEL_37:
            v68 = 0;
            v76 = 0u;
            v77 = 0u;
            v74 = 0u;
            v75 = 0u;
            v73 = 0u;
            v32 = MEMORY[0x1E69E9C10];
            v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v72 = 136315906;
            *&v72[4] = "operator[]";
            *&v72[12] = 1024;
            if (v33)
            {
              v34 = 3;
            }

            else
            {
              v34 = 2;
            }

            *&v72[14] = 789;
            *&v72[18] = 2048;
            *&v72[20] = v6;
            *&v72[28] = 2048;
            *&v72[30] = v7;
            _os_log_send_and_compose_impl(v34, &v68, &v73, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v72, 38);
            _os_crash_msg();
            __break(1u);
            goto LABEL_41;
          }

LABEL_33:
          v68 = 0;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v73 = 0u;
          v29 = MEMORY[0x1E69E9C10];
          v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v72 = 136315906;
          *&v72[4] = "operator[]";
          *&v72[12] = 1024;
          if (v30)
          {
            v31 = 3;
          }

          else
          {
            v31 = 2;
          }

          *&v72[14] = 789;
          *&v72[18] = 2048;
          *&v72[20] = v6;
          *&v72[28] = 2048;
          *&v72[30] = v7;
          _os_log_send_and_compose_impl(v31, &v68, &v73, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v72, 38);
          _os_crash_msg();
          __break(1u);
          goto LABEL_37;
        }

LABEL_29:
        v68 = 0;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v73 = 0u;
        v26 = MEMORY[0x1E69E9C10];
        v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v72 = 136315906;
        *&v72[4] = "operator[]";
        *&v72[12] = 1024;
        if (v27)
        {
          v28 = 3;
        }

        else
        {
          v28 = 2;
        }

        *&v72[14] = 789;
        *&v72[18] = 2048;
        *&v72[20] = v6;
        *&v72[28] = 2048;
        *&v72[30] = v7;
        _os_log_send_and_compose_impl(v28, &v68, &v73, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v72, 38);
        _os_crash_msg();
        __break(1u);
        goto LABEL_33;
      }
    }

    v68 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    v23 = MEMORY[0x1E69E9C10];
    v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v72 = 136315906;
    *&v72[4] = "operator[]";
    *&v72[12] = 1024;
    if (v24)
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    *&v72[14] = 789;
    *&v72[18] = 2048;
    *&v72[20] = v6;
    *&v72[28] = 2048;
    *&v72[30] = v7;
    _os_log_send_and_compose_impl(v25, &v68, &v73, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v72, 38);
    _os_crash_msg();
    __break(1u);
    goto LABEL_29;
  }

  v73 = xmmword_1E3047670;
  v74 = xmmword_1E3047680;
  v75 = xmmword_1E30476A0;
  *v72 = 3;
  memset(&v72[8], 0, 24);
  re::DynamicArray<re::EvaluationRegister>::add((v5 + 1784), v72);
  *v72 = *(v5 + 1800) - 1;
  re::DynamicArray<unsigned long>::add((v5 + 128), v72);
  re::DynamicArray<re::Matrix3x3<float>>::add((v5 + 448), &v73);
  v5 = *(*(v5 + 160) + 8 * *(v5 + 144) - 8);
  v12 = *result;
  v73 = xmmword_1E3047670;
  v74 = xmmword_1E3047680;
  v75 = xmmword_1E30476A0;
  v76 = xmmword_1E30474D0;
  *v72 = 4;
  memset(&v72[8], 0, 24);
  re::DynamicArray<re::EvaluationRegister>::add((v12 + 228), v72);
  *v72 = v12[230] - 1;
  v7 = v72;
  re::DynamicArray<unsigned long>::add((v12 + 21), v72);
  re::DynamicArray<re::Matrix4x4<float>>::add((v12 + 61), &v73);
  v13 = *(v12[25] + 8 * v12[23] - 8);
  v14 = *result;
  *&v73 = 0x3F8000003F800000;
  *(&v73 + 1) = 1065353216;
  *&v74 = 0;
  *(&v74 + 1) = 0x3F80000000000000;
  v75 = 0uLL;
  re::EvaluationTree::createInputRegister(v14, &v73, &v68);
  v15 = *result;
  v2 = result[12] - 0x7FFFFFFFFFFFFFFFLL;
  v3 = *(*result + 944);
  if (v3 <= v2)
  {
LABEL_53:
    v71 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    v44 = MEMORY[0x1E69E9C10];
    v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v72 = 136315906;
    *&v72[4] = "operator[]";
    *&v72[12] = 1024;
    if (v45)
    {
      v46 = 3;
    }

    else
    {
      v46 = 2;
    }

    *&v72[14] = 789;
    *&v72[18] = 2048;
    *&v72[20] = v2;
    *&v72[28] = 2048;
    *&v72[30] = v3;
    _os_log_send_and_compose_impl(v46, &v71, &v73, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v7, 38, v68, v69);
    _os_crash_msg();
    __break(1u);
    goto LABEL_57;
  }

  v16 = v15[120];
  *(v16 + 8 * v2) = v68;
  v7 = result[13] - 0x7FFFFFFFFFFFFFFFLL;
  v2 = v15[108];
  if (v2 <= v7)
  {
LABEL_57:
    v71 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    v47 = MEMORY[0x1E69E9C10];
    v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v72 = 136315906;
    *&v72[4] = "operator[]";
    *&v72[12] = 1024;
    if (v48)
    {
      v49 = 3;
    }

    else
    {
      v49 = 2;
    }

    *&v72[14] = 789;
    *&v72[18] = 2048;
    *&v72[20] = v7;
    *&v72[28] = 2048;
    *&v72[30] = v2;
    _os_log_send_and_compose_impl(v49, &v71, &v73, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v72, 38, v68, v69);
    _os_crash_msg();
    __break(1u);
    goto LABEL_61;
  }

  v17 = v69;
  v18 = v15[110];
  *(v18 + 8 * v7) = v69;
  v7 = result[14] - 0x7FFFFFFFFFFFFFFFLL;
  v2 = v15[118];
  if (v2 <= v7)
  {
LABEL_61:
    v71 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    v50 = MEMORY[0x1E69E9C10];
    v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v72 = 136315906;
    *&v72[4] = "operator[]";
    *&v72[12] = 1024;
    if (v51)
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    *&v72[14] = 789;
    *&v72[18] = 2048;
    *&v72[20] = v7;
    *&v72[28] = 2048;
    *&v72[30] = v2;
    _os_log_send_and_compose_impl(v52, &v71, &v73, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v72, 38, v68, v69);
    _os_crash_msg();
    __break(1u);
    goto LABEL_65;
  }

  *(v16 + 8 * v7) = v70;
  v7 = result[15] - 0x7FFFFFFFFFFFFFFFLL;
  v2 = v15[108];
  if (v2 <= v7)
  {
LABEL_65:
    v71 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    v53 = MEMORY[0x1E69E9C10];
    v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v72 = 136315906;
    *&v72[4] = "operator[]";
    *&v72[12] = 1024;
    if (v54)
    {
      v55 = 3;
    }

    else
    {
      v55 = 2;
    }

    *&v72[14] = 789;
    *&v72[18] = 2048;
    *&v72[20] = v7;
    *&v72[28] = 2048;
    *&v72[30] = v2;
    _os_log_send_and_compose_impl(v55, &v71, &v73, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v72, 38, v68, v69);
    _os_crash_msg();
    __break(1u);
    goto LABEL_69;
  }

  *(v18 + 8 * v7) = v17;
  v7 = result[16] - 0x7FFFFFFFFFFFFFFFLL;
  v2 = v15[98];
  if (v2 <= v7)
  {
LABEL_69:
    v71 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    v56 = MEMORY[0x1E69E9C10];
    v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v72 = 136315906;
    *&v72[4] = "operator[]";
    *&v72[12] = 1024;
    if (v57)
    {
      v58 = 3;
    }

    else
    {
      v58 = 2;
    }

    *&v72[14] = 789;
    *&v72[18] = 2048;
    *&v72[20] = v7;
    *&v72[28] = 2048;
    *&v72[30] = v2;
    _os_log_send_and_compose_impl(v58, &v71, &v73, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v72, 38, v68, v69);
    _os_crash_msg();
    __break(1u);
    goto LABEL_73;
  }

  v19 = v15[100];
  *(v19 + 8 * v7) = v5;
  v7 = result[17] - 0x7FFFFFFFFFFFFFFFLL;
  v2 = v15[98];
  if (v2 <= v7)
  {
LABEL_73:
    v71 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    v59 = MEMORY[0x1E69E9C10];
    v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v72 = 136315906;
    *&v72[4] = "operator[]";
    *&v72[12] = 1024;
    if (v60)
    {
      v61 = 3;
    }

    else
    {
      v61 = 2;
    }

    *&v72[14] = 789;
    *&v72[18] = 2048;
    *&v72[20] = v7;
    *&v72[28] = 2048;
    *&v72[30] = v2;
    _os_log_send_and_compose_impl(v61, &v71, &v73, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v72, 38, v68, v69);
    _os_crash_msg();
    __break(1u);
    goto LABEL_77;
  }

  *(v19 + 8 * v7) = v5;
  v5 = result[18] - 0x7FFFFFFFFFFFFFFFLL;
  v7 = v15[103];
  if (v7 <= v5)
  {
LABEL_77:
    v71 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    v62 = MEMORY[0x1E69E9C10];
    v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v72 = 136315906;
    *&v72[4] = "operator[]";
    *&v72[12] = 1024;
    if (v63)
    {
      v64 = 3;
    }

    else
    {
      v64 = 2;
    }

    *&v72[14] = 789;
    *&v72[18] = 2048;
    *&v72[20] = v5;
    *&v72[28] = 2048;
    *&v72[30] = v7;
    _os_log_send_and_compose_impl(v64, &v71, &v73, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v72, 38, v68, v69);
    _os_crash_msg();
    __break(1u);
LABEL_81:
    v71 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    v65 = MEMORY[0x1E69E9C10];
    v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v72 = 136315906;
    *&v72[4] = "operator[]";
    *&v72[12] = 1024;
    if (v66)
    {
      v67 = 3;
    }

    else
    {
      v67 = 2;
    }

    *&v72[14] = 789;
    *&v72[18] = 2048;
    *&v72[20] = v5;
    *&v72[28] = 2048;
    *&v72[30] = v7;
    _os_log_send_and_compose_impl(v67, &v71, &v73, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v72, 38, v68, v69);
    _os_crash_msg();
    __break(1u);
  }

  v20 = v15[105];
  *(v20 + 8 * v5) = v13;
  v5 = result[19] - 0x7FFFFFFFFFFFFFFFLL;
  v7 = v15[103];
  if (v7 <= v5)
  {
    goto LABEL_81;
  }

  *(v20 + 8 * v5) = v13;
}

unint64_t re::RigHierarchyJointTransform::setModelSpaceJointScale(void *a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a1[4] - 0x7FFFFFFFFFFFFFFFLL;
  v4 = *(*a1 + 944);
  if (v4 <= v3)
  {
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v10 = MEMORY[0x1E69E9C10];
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v20 = 789;
    v21 = 2048;
    v22 = v3;
    v23 = 2048;
    v24 = v4;
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

    v20 = 789;
    v21 = 2048;
    v22 = v3;
    v23 = 2048;
    v24 = v4;
    _os_log_send_and_compose_impl(v14, &v16, &v25, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
    _os_crash_msg();
    __break(1u);
  }

  *(v2[120] + 8 * v3) = a2;
  v5 = a1[1];
  v6 = a1[4];
  v7 = a1[12];
  LODWORD(v25) = 17;
  v26 = 0uLL;
  *(&v25 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v2 + 243), &v25);
  v8 = v2[245] - 1;
  result = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((v2 + 208), v8);
  *(result + 8) = v6;
  *(result + 16) = v7;
  v3 = v5 - 0x7FFFFFFFFFFFFFFFLL;
  v4 = v2[118];
  if (v4 <= v3)
  {
    goto LABEL_8;
  }

  *(v2[120] + 8 * v3) = v8;
  return result;
}

unint64_t re::RigHierarchyJointTransform::setModelSpaceJointRotation(void *a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a1[5] - 0x7FFFFFFFFFFFFFFFLL;
  v4 = *(*a1 + 864);
  if (v4 <= v3)
  {
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v10 = MEMORY[0x1E69E9C10];
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v20 = 789;
    v21 = 2048;
    v22 = v3;
    v23 = 2048;
    v24 = v4;
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

    v20 = 789;
    v21 = 2048;
    v22 = v3;
    v23 = 2048;
    v24 = v4;
    _os_log_send_and_compose_impl(v14, &v16, &v25, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
    _os_crash_msg();
    __break(1u);
  }

  *(v2[110] + 8 * v3) = a2;
  v5 = a1[2];
  v6 = a1[15];
  v7 = a1[5];
  LODWORD(v25) = 24;
  v26 = 0uLL;
  *(&v25 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v2 + 233), &v25);
  v8 = v2[235] - 1;
  result = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((v2 + 208), v8);
  *(result + 8) = v6;
  *(result + 16) = v7;
  v3 = v5 - 0x7FFFFFFFFFFFFFFFLL;
  v4 = v2[108];
  if (v4 <= v3)
  {
    goto LABEL_8;
  }

  *(v2[110] + 8 * v3) = v8;
  return result;
}

unint64_t re::RigHierarchyJointTransform::setModelSpaceJointTranslation(void *a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a1[6] - 0x7FFFFFFFFFFFFFFFLL;
  v4 = *(*a1 + 944);
  if (v4 <= v3)
  {
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v10 = MEMORY[0x1E69E9C10];
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v20 = 789;
    v21 = 2048;
    v22 = v3;
    v23 = 2048;
    v24 = v4;
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

    v20 = 789;
    v21 = 2048;
    v22 = v3;
    v23 = 2048;
    v24 = v4;
    _os_log_send_and_compose_impl(v14, &v16, &v25, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
    _os_crash_msg();
    __break(1u);
  }

  *(v2[120] + 8 * v3) = a2;
  v5 = a1[3];
  v6 = a1[19];
  v7 = a1[6];
  LODWORD(v25) = 43;
  v26 = 0uLL;
  *(&v25 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v2 + 243), &v25);
  v8 = v2[245] - 1;
  result = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((v2 + 208), v8);
  *(result + 8) = v6;
  *(result + 16) = v7;
  v3 = v5 - 0x7FFFFFFFFFFFFFFFLL;
  v4 = v2[118];
  if (v4 <= v3)
  {
    goto LABEL_8;
  }

  *(v2[120] + 8 * v3) = v8;
  return result;
}

_anonymous_namespace_ *re::RigHierarchy::init(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6)
{
  v204 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  if (2 * a6 <= 0x80)
  {
    v11 = 128;
  }

  else
  {
    v11 = 2 * a6;
  }

  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1 + 24, a3, v11);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1 + 72, a3, 8);
  *(a1 + 120) = a3;
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::setCapacity((a1 + 120), 8uLL);
  ++*(a1 + 144);
  *(a1 + 160) = a3;
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::setCapacity((a1 + 160), a6);
  ++*(a1 + 184);
  *(a1 + 200) = a3;
  re::DynamicArray<re::StringID>::setCapacity((a1 + 200), a6);
  *(a1 + 240) = a3;
  ++*(a1 + 224);
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity((a1 + 240), a6);
  ++*(a1 + 264);
  v199 = xmmword_1E3047670;
  v200 = xmmword_1E3047680;
  v201 = xmmword_1E30476A0;
  *v197 = 3;
  memset(&v197[8], 0, 24);
  re::DynamicArray<re::EvaluationRegister>::add((a4 + 223), v197);
  *v197 = a4[225] - 1;
  re::DynamicArray<unsigned long>::add((a4 + 16), v197);
  re::DynamicArray<re::Matrix3x3<float>>::add((a4 + 56), &v199);
  v12 = *(a4[20] + 8 * a4[18] - 8);
  v199 = xmmword_1E3047670;
  v200 = xmmword_1E3047680;
  v201 = xmmword_1E30476A0;
  v202 = xmmword_1E30474D0;
  *v197 = 4;
  memset(&v197[8], 0, 24);
  re::DynamicArray<re::EvaluationRegister>::add((a4 + 228), v197);
  *v197 = a4[230] - 1;
  re::DynamicArray<unsigned long>::add((a4 + 21), v197);
  re::DynamicArray<re::Matrix4x4<float>>::add((a4 + 61), &v199);
  v13 = *(a4[25] + 8 * a4[23] - 8);
  v199.n128_u64[0] = 0x3F8000003F800000;
  v199.n128_u64[1] = 1065353216;
  *&v200 = 0;
  *(&v200 + 1) = 0x3F80000000000000;
  v201 = 0uLL;
  re::EvaluationTree::createInputRegister(a4, &v199, &v192);
  v188 = a3;
  *(a1 + 280) = a3;
  re::DynamicArray<re::RigHierarchyJointTransform>::setCapacity((a1 + 280), a6);
  ++*(a1 + 304);
  v14 = *(a1 + 296);
  if (v14 >= a6)
  {
    if (v14 <= a6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (*(a1 + 288) < a6)
    {
      re::DynamicArray<re::RigHierarchyJointTransform>::setCapacity((a1 + 280), a6);
      v14 = *(a1 + 296);
    }

    if (a6 > v14)
    {
      v15 = 160 * (a6 - v14);
      if (v15 >= 1)
      {
        v16 = *(a1 + 312) + 160 * v14;
        v17 = v15 / 0xA0uLL + 1;
        *&v18 = -1;
        *(&v18 + 1) = -1;
        do
        {
          *v16 = 0;
          *(v16 + 8) = v18;
          *(v16 + 24) = v18;
          *(v16 + 40) = v18;
          *(v16 + 56) = v18;
          *(v16 + 72) = v18;
          *(v16 + 88) = v18;
          *(v16 + 104) = v18;
          *(v16 + 120) = v18;
          *(v16 + 136) = v18;
          *(v16 + 152) = -1;
          v16 += 160;
          --v17;
        }

        while (v17 > 1);
      }
    }
  }

  *(a1 + 296) = a6;
  ++*(a1 + 304);
LABEL_14:
  *(a1 + 320) = a3;
  result = re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity((a1 + 320), a6);
  ++*(a1 + 344);
  v20 = *(a1 + 336);
  if (v20 >= a6)
  {
    if (v20 <= a6)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (*(a1 + 328) < a6)
    {
      result = re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity((a1 + 320), a6);
      v20 = *(a1 + 336);
    }

    if (a6 > v20 && a6 > v20)
    {
      result = memset((*(a1 + 352) + 8 * v20), 255, 8 * (a6 - v20));
    }
  }

  *(a1 + 336) = a6;
  ++*(a1 + 344);
LABEL_25:
  if (!a6)
  {
    return result;
  }

  v22 = 0;
  v23 = 0;
  v24 = v197;
  do
  {
    v25 = *(a1 + 296);
    if (v25 <= v23)
    {
      goto LABEL_114;
    }

    v26 = *(a1 + 312);
    v199 = v192;
    *&v200 = v193;
    result = re::RigHierarchyJointTransform::init((v26 + v22), a4, &v199, v12, v13);
    ++v23;
    v22 += 160;
  }

  while (a6 != v23);
  v23 = 0;
  v24 = &v199;
  v191 = 0;
  v187 = a6;
  do
  {
    v27 = a5 + 176 * v23;
    v22 = *v27;
    v28 = *(v27 + 8);
    v199.n128_u64[0] = 0;
    v199.n128_u64[1] = &str_67;
    v29 = re::DynamicArray<re::StringID>::add((a1 + 200), &v199);
    if (v199.n128_u8[0])
    {
      if (v199.n128_u8[0])
      {
      }
    }

    v199.n128_u64[1] = 0;
    v200 = 0uLL;
    v30 = *(v27 + 8);
    if (v30)
    {
      v31 = v30 + 1;
    }

    else
    {
      v31 = 0;
    }

    re::DynamicString::setCapacity(&v199, v31);
    re::DynamicString::operator=(&v199, v27);
    v32 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(a1 + 24, &v199, &v191);
    if (v199.n128_u64[0] && (v199.n128_u8[8] & 1) != 0)
    {
      (*(*v199.n128_u64[0] + 40))(v32);
    }

    re::DynamicArray<unsigned long>::add((a1 + 240), (v27 + 16));
    v34 = *(v27 + 16);
    v25 = 176;
    if (v34 == -1)
    {
      if (*(v27 + 96))
      {
        *v197 = 0u;
        *v195 = xmmword_1E30474D0;
        v189 = 0u;
        re::decomposeScaleRotationTranslation<float>(v27 + 112, v197, v195, &v189);
        v199 = *v197;
        v200 = *v195;
        v201 = v189;
        re::EvaluationTree::createInputRegister(a4, &v199, v195);
        v22 = *(a1 + 296);
        v38 = v187;
        if (v22 <= v23)
        {
          goto LABEL_150;
        }

        re::RigHierarchyJointTransform::setLocalSpaceJointScale((*(a1 + 312) + 160 * v23), *v195);
        v22 = *(a1 + 296);
        if (v22 <= v23)
        {
LABEL_154:
          *&v189 = 0;
          v202 = 0u;
          v203 = 0u;
          v200 = 0u;
          v201 = 0u;
          v199 = 0u;
          v157 = MEMORY[0x1E69E9C10];
          v158 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v197 = 136315906;
          *&v197[4] = "operator[]";
          *&v197[12] = 1024;
          if (v158)
          {
            v159 = 3;
          }

          else
          {
            v159 = 2;
          }

          *&v197[14] = 789;
          *&v197[18] = 2048;
          *&v197[20] = v23;
          *&v197[28] = 2048;
          *&v197[30] = v22;
          _os_log_send_and_compose_impl(v159, &v189, &v199, 80, &dword_1E1C61000, v157, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v197, 38, v185, v186);
          _os_crash_msg();
          __break(1u);
          goto LABEL_158;
        }

        re::RigHierarchyJointTransform::setLocalSpaceJointRotation((*(a1 + 312) + 160 * v23), *&v195[8]);
        v22 = *(a1 + 296);
        if (v22 <= v23)
        {
LABEL_158:
          *&v189 = 0;
          v202 = 0u;
          v203 = 0u;
          v200 = 0u;
          v201 = 0u;
          v199 = 0u;
          v160 = MEMORY[0x1E69E9C10];
          v161 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v197 = 136315906;
          *&v197[4] = "operator[]";
          *&v197[12] = 1024;
          if (v161)
          {
            v162 = 3;
          }

          else
          {
            v162 = 2;
          }

          *&v197[14] = 789;
          *&v197[18] = 2048;
          *&v197[20] = v23;
          *&v197[28] = 2048;
          *&v197[30] = v22;
          _os_log_send_and_compose_impl(v162, &v189, &v199, 80, &dword_1E1C61000, v160, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v197, 38, v185, v186);
          _os_crash_msg();
          __break(1u);
          goto LABEL_162;
        }
      }

      else
      {
        v38 = v187;
        if (*(v27 + 32) != 1)
        {
          goto LABEL_76;
        }

        re::EvaluationTree::createInputRegister(a4, (v27 + 48), v195);
        v22 = *(a1 + 296);
        if (v22 <= v23)
        {
          goto LABEL_174;
        }

        re::RigHierarchyJointTransform::setLocalSpaceJointScale((*(a1 + 312) + 160 * v23), *v195);
        v22 = *(a1 + 296);
        if (v22 <= v23)
        {
LABEL_178:
          *&v189 = 0;
          v202 = 0u;
          v203 = 0u;
          v200 = 0u;
          v201 = 0u;
          v199 = 0u;
          v175 = MEMORY[0x1E69E9C10];
          v176 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v197 = 136315906;
          *&v197[4] = "operator[]";
          *&v197[12] = 1024;
          if (v176)
          {
            v177 = 3;
          }

          else
          {
            v177 = 2;
          }

          *&v197[14] = 789;
          *&v197[18] = 2048;
          *&v197[20] = v23;
          *&v197[28] = 2048;
          *&v197[30] = v22;
          _os_log_send_and_compose_impl(v177, &v189, &v199, 80, &dword_1E1C61000, v175, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v197, 38, v185, v186);
          _os_crash_msg();
          __break(1u);
LABEL_182:
          *&v189 = 0;
          v202 = 0u;
          v203 = 0u;
          v200 = 0u;
          v201 = 0u;
          v199 = 0u;
          v178 = MEMORY[0x1E69E9C10];
          v179 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v197 = 136315906;
          *&v197[4] = "operator[]";
          *&v197[12] = 1024;
          if (v179)
          {
            v180 = 3;
          }

          else
          {
            v180 = 2;
          }

          *&v197[14] = 789;
          *&v197[18] = 2048;
          *&v197[20] = v23;
          *&v197[28] = 2048;
          *&v197[30] = v22;
          _os_log_send_and_compose_impl(v180, &v189, &v199, 80, &dword_1E1C61000, v178, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v197, 38, v185, v186);
          _os_crash_msg();
          __break(1u);
        }

        re::RigHierarchyJointTransform::setLocalSpaceJointRotation((*(a1 + 312) + 160 * v23), *&v195[8]);
        v22 = *(a1 + 296);
        if (v22 <= v23)
        {
          goto LABEL_182;
        }
      }

      re::RigHierarchyJointTransform::setLocalSpaceJointTranslation((*(a1 + 312) + 160 * v23), *&v195[16]);
      goto LABEL_76;
    }

    if (!*(v27 + 96))
    {
      v38 = v187;
      v25 = 160;
      if (*(v27 + 32) != 1)
      {
        goto LABEL_73;
      }

      re::EvaluationTree::createInputRegister(a4, (v27 + 48), v195);
      v22 = *(a1 + 296);
      if (v22 > v23)
      {
        re::RigHierarchyJointTransform::setLocalSpaceJointScale((*(a1 + 312) + 160 * v23), *v195);
        v22 = *(a1 + 296);
        if (v22 > v23)
        {
          re::RigHierarchyJointTransform::setLocalSpaceJointRotation((*(a1 + 312) + 160 * v23), *&v195[8]);
          v22 = *(a1 + 296);
          if (v22 > v23)
          {
            v60 = (*(a1 + 312) + 160 * v23);
            v61 = *&v195[16];
            goto LABEL_72;
          }

          goto LABEL_170;
        }

LABEL_166:
        *&v189 = 0;
        v202 = 0u;
        v203 = 0u;
        v200 = 0u;
        v201 = 0u;
        v199 = 0u;
        v166 = MEMORY[0x1E69E9C10];
        v167 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v197 = 136315906;
        *&v197[4] = "operator[]";
        *&v197[12] = 1024;
        if (v167)
        {
          v168 = 3;
        }

        else
        {
          v168 = 2;
        }

        *&v197[14] = 789;
        *&v197[18] = 2048;
        *&v197[20] = v23;
        *&v197[28] = 2048;
        *&v197[30] = v22;
        _os_log_send_and_compose_impl(v168, &v189, &v199, 80, &dword_1E1C61000, v166, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v197, 38, v185, v186);
        _os_crash_msg();
        __break(1u);
LABEL_170:
        *&v189 = 0;
        v202 = 0u;
        v203 = 0u;
        v200 = 0u;
        v201 = 0u;
        v199 = 0u;
        v169 = MEMORY[0x1E69E9C10];
        v170 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v197 = 136315906;
        *&v197[4] = "operator[]";
        *&v197[12] = 1024;
        if (v170)
        {
          v171 = 3;
        }

        else
        {
          v171 = 2;
        }

        *&v197[14] = 789;
        *&v197[18] = 2048;
        *&v197[20] = v23;
        *&v197[28] = 2048;
        *&v197[30] = v22;
        _os_log_send_and_compose_impl(v171, &v189, &v199, 80, &dword_1E1C61000, v169, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v197, 38, v185, v186);
        _os_crash_msg();
        __break(1u);
LABEL_174:
        *&v189 = 0;
        v202 = 0u;
        v203 = 0u;
        v200 = 0u;
        v201 = 0u;
        v199 = 0u;
        v172 = MEMORY[0x1E69E9C10];
        v173 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v197 = 136315906;
        *&v197[4] = "operator[]";
        *&v197[12] = 1024;
        if (v173)
        {
          v174 = 3;
        }

        else
        {
          v174 = 2;
        }

        *&v197[14] = 789;
        *&v197[18] = 2048;
        *&v197[20] = v23;
        *&v197[28] = 2048;
        *&v197[30] = v22;
        _os_log_send_and_compose_impl(v174, &v189, &v199, 80, &dword_1E1C61000, v172, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v197, 38, v185, v186);
        _os_crash_msg();
        __break(1u);
        goto LABEL_178;
      }

LABEL_162:
      *&v189 = 0;
      v202 = 0u;
      v203 = 0u;
      v200 = 0u;
      v201 = 0u;
      v199 = 0u;
      v163 = MEMORY[0x1E69E9C10];
      v164 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v197 = 136315906;
      *&v197[4] = "operator[]";
      *&v197[12] = 1024;
      if (v164)
      {
        v165 = 3;
      }

      else
      {
        v165 = 2;
      }

      *&v197[14] = 789;
      *&v197[18] = 2048;
      *&v197[20] = v23;
      *&v197[28] = 2048;
      *&v197[30] = v22;
      _os_log_send_and_compose_impl(v165, &v189, &v199, 80, &dword_1E1C61000, v163, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v197, 38, v185, v186);
      _os_crash_msg();
      __break(1u);
      goto LABEL_166;
    }

    v35 = *(v27 + 112);
    v36 = *(v27 + 128);
    v37 = *(v27 + 160);
    *&v195[32] = *(v27 + 144);
    v196 = v37;
    *v195 = v35;
    *&v195[16] = v36;
    v38 = v187;
    while (1)
    {
      if (v187 <= v34)
      {
        re::internal::assertLog(6, v33, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v34, v187);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v181, v183);
        __break(1u);
LABEL_113:
        re::internal::assertLog(6, v64, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, v38);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v182, v184);
        __break(1u);
LABEL_114:
        *v195 = 0;
        v202 = 0u;
        v203 = 0u;
        v200 = 0u;
        v201 = 0u;
        v199 = 0u;
        v127 = MEMORY[0x1E69E9C10];
        v128 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v197 = 136315906;
        *(v24->n128_u64 + 4) = "operator[]";
        *&v197[12] = 1024;
        if (v128)
        {
          v129 = 3;
        }

        else
        {
          v129 = 2;
        }

        *(&v24->n128_u32[3] + 2) = 789;
        *&v197[18] = 2048;
        *(v24[1].n128_u64 + 4) = v23;
        *&v197[28] = 2048;
        *(&v24[1].n128_u64[1] + 6) = v25;
        _os_log_send_and_compose_impl(v129, v195, &v199, 80, &dword_1E1C61000, v127, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v197, 38, v185, v186);
        _os_crash_msg();
        __break(1u);
LABEL_118:
        *v195 = 0;
        v202 = 0u;
        v203 = 0u;
        v200 = 0u;
        v201 = 0u;
        v199 = 0u;
        v130 = MEMORY[0x1E69E9C10];
        v131 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v197 = 136315906;
        *&v197[4] = "operator[]";
        *&v197[12] = 1024;
        if (v131)
        {
          v132 = 3;
        }

        else
        {
          v132 = 2;
        }

        *&v197[14] = 789;
        *&v197[18] = 2048;
        *&v197[20] = v23;
        *&v197[28] = 2048;
        *&v197[30] = v22;
        _os_log_send_and_compose_impl(v132, v195, &v199, 80, &dword_1E1C61000, v130, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v197, 38, v185, v186);
        _os_crash_msg();
        __break(1u);
LABEL_122:
        *v195 = 0;
        v202 = 0u;
        v203 = 0u;
        v200 = 0u;
        v201 = 0u;
        v199 = 0u;
        v133 = MEMORY[0x1E69E9C10];
        v134 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v197 = 136315906;
        *&v197[4] = "operator[]";
        *&v197[12] = 1024;
        if (v134)
        {
          v135 = 3;
        }

        else
        {
          v135 = 2;
        }

        *&v197[14] = 789;
        *&v197[18] = 2048;
        *&v197[20] = v25;
        *&v197[28] = 2048;
        *&v197[30] = v22;
        _os_log_send_and_compose_impl(v135, v195, &v199, 80, &dword_1E1C61000, v133, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v197, 38, v185, v186);
        _os_crash_msg();
        __break(1u);
LABEL_126:
        *v195 = 0;
        v202 = 0u;
        v203 = 0u;
        v200 = 0u;
        v201 = 0u;
        v199 = 0u;
        v136 = MEMORY[0x1E69E9C10];
        v137 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v197 = 136315906;
        *&v197[4] = "operator[]";
        *&v197[12] = 1024;
        if (v137)
        {
          v138 = 3;
        }

        else
        {
          v138 = 2;
        }

        *&v197[14] = 789;
        *&v197[18] = 2048;
        *&v197[20] = v23;
        *&v197[28] = 2048;
        *&v197[30] = v22;
        _os_log_send_and_compose_impl(v138, v195, &v199, 80, &dword_1E1C61000, v136, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v197, 38, v185, v186);
        _os_crash_msg();
        __break(1u);
LABEL_130:
        *&v194 = 0;
        v202 = 0u;
        v203 = 0u;
        v200 = 0u;
        v201 = 0u;
        v199 = 0u;
        v139 = MEMORY[0x1E69E9C10];
        v140 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v197 = 136315906;
        *&v197[4] = "operator[]";
        *&v197[12] = 1024;
        if (v140)
        {
          v141 = 3;
        }

        else
        {
          v141 = 2;
        }

        *&v197[14] = 789;
        *&v197[18] = 2048;
        *&v197[20] = v23;
        *&v197[28] = 2048;
        *&v197[30] = v22;
        _os_log_send_and_compose_impl(v141, &v194, &v199, 80, &dword_1E1C61000, v139, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v197, 38, v185, v186);
        _os_crash_msg();
        __break(1u);
LABEL_134:
        *&v194 = 0;
        v202 = 0u;
        v203 = 0u;
        v200 = 0u;
        v201 = 0u;
        v199 = 0u;
        v142 = MEMORY[0x1E69E9C10];
        v143 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v197 = 136315906;
        *&v197[4] = "operator[]";
        *&v197[12] = 1024;
        if (v143)
        {
          v144 = 3;
        }

        else
        {
          v144 = 2;
        }

        *&v197[14] = 789;
        *&v197[18] = 2048;
        *&v197[20] = v23;
        *&v197[28] = 2048;
        *&v197[30] = v22;
        _os_log_send_and_compose_impl(v144, &v194, &v199, 80, &dword_1E1C61000, v142, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v197, 38, v185, v186);
        _os_crash_msg();
        __break(1u);
LABEL_138:
        *&v194 = 0;
        v202 = 0u;
        v203 = 0u;
        v200 = 0u;
        v201 = 0u;
        v199 = 0u;
        v145 = MEMORY[0x1E69E9C10];
        v146 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v197 = 136315906;
        *&v197[4] = "operator[]";
        *&v197[12] = 1024;
        if (v146)
        {
          v147 = 3;
        }

        else
        {
          v147 = 2;
        }

        *&v197[14] = 789;
        *&v197[18] = 2048;
        *&v197[20] = v23;
        *&v197[28] = 2048;
        *&v197[30] = v22;
        _os_log_send_and_compose_impl(v147, &v194, &v199, 80, &dword_1E1C61000, v145, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v197, 38, v185, v186);
        _os_crash_msg();
        __break(1u);
        goto LABEL_142;
      }

      v22 = a5 + 176 * v34;
      if (*(v22 + 32) == 1)
      {
        v39 = *(v22 + 64);
        v40 = *(v22 + 68);
        v41 = v39 + v39;
        v42 = v40 + v40;
        v43 = *(v22 + 72);
        v44 = *(v22 + 76);
        v45 = v43 + v43;
        v46 = v39 * (v39 + v39);
        v47 = v40 * (v40 + v40);
        v48 = v43 * (v43 + v43);
        v49 = v41 * v40;
        v50 = v41 * v43;
        v51 = v42 * v43;
        v52 = v41 * v44;
        v53 = v42 * v44;
        v54 = v45 * v44;
        v55.i32[3] = 0;
        v55.f32[0] = 1.0 - (v47 + v48);
        v55.f32[1] = v49 + v54;
        v55.f32[2] = v50 - v53;
        v56.i32[3] = 0;
        v56.f32[0] = v49 - v54;
        v56.f32[1] = 1.0 - (v46 + v48);
        v56.f32[2] = v51 + v52;
        v57.i32[3] = 0;
        v57.f32[0] = v50 + v53;
        v57.f32[1] = v51 - v52;
        v57.f32[2] = 1.0 - (v46 + v47);
        v58 = *(v22 + 48);
        v205.columns[0] = vmulq_n_f32(v55, v58.f32[0]);
        v205.columns[2] = vmulq_laneq_f32(v57, v58, 2);
        v205.columns[1] = vmulq_n_f32(v56, COERCE_FLOAT(HIDWORD(*(v22 + 48))));
        v205.columns[3] = *(v22 + 80);
        v205.columns[3].i32[3] = 1.0;
        v206 = __invert_f4(v205);
        v59 = 0;
        *v197 = *v195;
        *&v197[16] = *&v195[16];
        *&v197[32] = *&v195[32];
        v198 = v196;
        do
        {
          *(&v199 + v59) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v206.columns[0], COERCE_FLOAT(*&v197[v59])), v206.columns[1], *&v197[v59], 1), v206.columns[2], *&v197[v59], 2), v206.columns[3], *&v197[v59], 3);
          v59 += 16;
        }

        while (v59 != 64);
        *v195 = v199;
        *&v195[16] = v200;
        *&v195[32] = v201;
        v196 = v202;
        goto LABEL_48;
      }

      if (*(v22 + 96) == 1)
      {
        break;
      }

LABEL_48:
      v34 = *(v22 + 16);
      if (v34 == -1)
      {
        goto LABEL_68;
      }
    }

    v207 = __invert_f4(*(v22 + 112));
    v62 = 0;
    *v197 = *v195;
    *&v197[16] = *&v195[16];
    *&v197[32] = *&v195[32];
    v198 = v196;
    do
    {
      *(&v199 + v62) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v207.columns[0], COERCE_FLOAT(*&v197[v62])), v207.columns[1], *&v197[v62], 1), v207.columns[2], *&v197[v62], 2), v207.columns[3], *&v197[v62], 3);
      v62 += 16;
    }

    while (v62 != 64);
    *v195 = v199;
    *&v195[16] = v200;
    *&v195[32] = v201;
    v196 = v202;
LABEL_68:
    *v197 = 0u;
    v189 = xmmword_1E30474D0;
    v194 = 0u;
    re::decomposeScaleRotationTranslation<float>(v195, v197, &v189, &v194);
    v199 = *v197;
    v200 = v189;
    v201 = v194;
    re::EvaluationTree::createInputRegister(a4, &v199, &v189);
    v22 = *(a1 + 296);
    if (v22 <= v23)
    {
      goto LABEL_130;
    }

    v25 = 160;
    re::RigHierarchyJointTransform::setLocalSpaceJointScale((*(a1 + 312) + 160 * v23), v189);
    v22 = *(a1 + 296);
    if (v22 <= v23)
    {
      goto LABEL_134;
    }

    re::RigHierarchyJointTransform::setLocalSpaceJointRotation((*(a1 + 312) + 160 * v23), *(&v189 + 1));
    v22 = *(a1 + 296);
    if (v22 <= v23)
    {
      goto LABEL_138;
    }

    v60 = (*(a1 + 312) + 160 * v23);
    v61 = v190;
LABEL_72:
    re::RigHierarchyJointTransform::setLocalSpaceJointTranslation(v60, v61);
LABEL_73:
    v22 = *(a1 + 296);
    if (v22 <= v23)
    {
      goto LABEL_118;
    }

    v25 = *(v27 + 16);
    if (v22 <= v25)
    {
      goto LABEL_122;
    }

    re::RigHierarchyJointTransform::setParentTransform((*(a1 + 312) + 160 * v23), (*(a1 + 312) + 160 * v25));
    v25 = 176;
LABEL_76:
    *&v201 = 0;
    *&v200 = 0;
    v199 = 0uLL;
    DWORD2(v200) = 0;
    re::DynamicArray<re::DynamicArray<re::RigDataValue>>::add((a1 + 160), &v199);
    re::DynamicArray<re::RigDataValue>::deinit(&v199);
    v63 = *(a1 + 192) + 40 * *(a1 + 176);
    *(v63 - 40) = v188;
    v22 = v63 - 40;
    re::DynamicArray<re::RigDataValue>::setCapacity(v22, 8uLL);
    ++*(v22 + 24);
    if (*(v27 + 96) != 1)
    {
      if (*(v27 + 32) == 1)
      {
        v65 = *(v27 + 64);
        v66 = *(v27 + 68);
        v67 = v65 + v65;
        v68 = v66 + v66;
        v69 = *(v27 + 72);
        v70 = *(v27 + 76);
        v71 = v69 + v69;
        v72 = v65 * (v65 + v65);
        v73 = v66 * (v66 + v66);
        v74 = v69 * (v69 + v69);
        v75 = v67 * v66;
        v76 = v67 * v69;
        v77 = v68 * v69;
        v78 = v67 * v70;
        v79 = v68 * v70;
        v80 = v71 * v70;
        v81.i32[3] = 0;
        v81.f32[0] = 1.0 - (v73 + v74);
        v81.f32[1] = v75 + v80;
        v81.f32[2] = v76 - v79;
        v82.i32[3] = 0;
        v82.f32[0] = v75 - v80;
        v82.f32[1] = 1.0 - (v72 + v74);
        v82.f32[2] = v77 + v78;
        v83.i32[3] = 0;
        v83.f32[0] = v76 + v79;
        v83.f32[1] = v77 - v78;
        v83.f32[2] = 1.0 - (v72 + v73);
        v84 = *(v27 + 48);
        v85 = vmulq_n_f32(v81, v84.f32[0]);
        v86 = vmulq_laneq_f32(v83, v84, 2);
        v87 = vmulq_n_f32(v82, COERCE_FLOAT(HIDWORD(*(v27 + 48))));
        *v195 = v85;
        *&v195[16] = v87;
        *&v195[32] = v86;
        v88 = *(v27 + 80);
        HIDWORD(v88) = 1.0;
        v196 = v88;
        for (i = *(v27 + 16); i != -1; i = v90[1].u64[0])
        {
          if (v38 <= i)
          {
            goto LABEL_113;
          }

          v90 = (a5 + 176 * i);
          if (v90[2].i8[0] == 1)
          {
            v91 = 0;
            v92 = v90[4].f32[0];
            v93 = v90[4].f32[1];
            v94 = v92 + v92;
            v95 = v93 + v93;
            v96 = v90[4].f32[2];
            v97 = v90[4].f32[3];
            v98 = v96 + v96;
            v99 = v92 * (v92 + v92);
            v100 = v93 * (v93 + v93);
            v101 = v96 * (v96 + v96);
            v102 = v94 * v93;
            v103 = v94 * v96;
            v104 = v95 * v96;
            v105 = v94 * v97;
            v106 = v95 * v97;
            v107 = v98 * v97;
            v108.i32[3] = 0;
            v108.f32[0] = 1.0 - (v100 + v101);
            v108.f32[1] = v102 + v107;
            v108.f32[2] = v103 - v106;
            v109.i32[3] = 0;
            v109.f32[0] = v102 - v107;
            v109.f32[1] = 1.0 - (v99 + v101);
            v109.f32[2] = v104 + v105;
            v110.i32[3] = 0;
            v110.f32[0] = v103 + v106;
            v110.f32[1] = v104 - v105;
            v110.f32[2] = 1.0 - (v99 + v100);
            v111 = v90[3];
            v112 = vmulq_n_f32(v108, v111.f32[0]);
            v113 = vmulq_laneq_f32(v110, v111, 2);
            v114 = v90[5];
            v114.i32[3] = 1.0;
            v110.i64[0] = HIDWORD(v90[3].i64[0]);
            *v197 = v85;
            *&v197[16] = v87;
            v115 = vmulq_n_f32(v109, v110.f32[0]);
            *&v197[32] = v86;
            v198 = v88;
            do
            {
              *(&v199 + v91) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v112, COERCE_FLOAT(*&v197[v91])), v115, *&v197[v91], 1), v113, *&v197[v91], 2), v114, *&v197[v91], 3);
              v91 += 16;
            }

            while (v91 != 64);
            v85 = v199;
            v87 = v200;
            v86 = v201;
            v88 = v202;
            *v195 = v199;
            *&v195[16] = v200;
            *&v195[32] = v201;
            v196 = v202;
          }

          else if (v90[6].i8[0] == 1)
          {
            v116 = 0;
            v117 = v90[7];
            v118 = v90[8];
            v119 = v90[9];
            v120 = v90[10];
            *v197 = v85;
            *&v197[16] = v87;
            *&v197[32] = v86;
            v198 = v88;
            do
            {
              *(&v199 + v116) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v117, COERCE_FLOAT(*&v197[v116])), v118, *&v197[v116], 1), v119, *&v197[v116], 2), v120, *&v197[v116], 3);
              v116 += 16;
            }

            while (v116 != 64);
            *v195 = v199;
            *&v195[16] = v200;
            *&v195[32] = v201;
            v196 = v202;
            break;
          }
        }

        v199.n128_u32[0] = 4;
        v200 = 0uLL;
        v199.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 228), &v199);
        v199.n128_u64[0] = a4[230] - 1;
        re::DynamicArray<unsigned long>::add((a4 + 21), &v199);
        re::DynamicArray<re::Matrix4x4<float>>::add((a4 + 61), v195);
        v22 = *(a1 + 336);
        if (v22 > v23)
        {
          goto LABEL_95;
        }

LABEL_146:
        *&v189 = 0;
        v202 = 0u;
        v203 = 0u;
        v200 = 0u;
        v201 = 0u;
        v199 = 0u;
        v151 = MEMORY[0x1E69E9C10];
        v152 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v197 = 136315906;
        *&v197[4] = "operator[]";
        *&v197[12] = 1024;
        if (v152)
        {
          v153 = 3;
        }

        else
        {
          v153 = 2;
        }

        *&v197[14] = 789;
        *&v197[18] = 2048;
        *&v197[20] = v23;
        *&v197[28] = 2048;
        *&v197[30] = v22;
        _os_log_send_and_compose_impl(v153, &v189, &v199, 80, &dword_1E1C61000, v151, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v197, 38, v185, v186);
        _os_crash_msg();
        __break(1u);
LABEL_150:
        *&v189 = 0;
        v202 = 0u;
        v203 = 0u;
        v200 = 0u;
        v201 = 0u;
        v199 = 0u;
        v154 = MEMORY[0x1E69E9C10];
        v155 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v197 = 136315906;
        *&v197[4] = "operator[]";
        *&v197[12] = 1024;
        if (v155)
        {
          v156 = 3;
        }

        else
        {
          v156 = 2;
        }

        *&v197[14] = 789;
        *&v197[18] = 2048;
        *&v197[20] = v23;
        *&v197[28] = 2048;
        *&v197[30] = v22;
        _os_log_send_and_compose_impl(v156, &v189, &v199, 80, &dword_1E1C61000, v154, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v197, 38, v185, v186);
        _os_crash_msg();
        __break(1u);
        goto LABEL_154;
      }

      *v197 = xmmword_1E3047670;
      *&v197[16] = xmmword_1E3047680;
      *&v197[32] = xmmword_1E30476A0;
      v198 = xmmword_1E30474D0;
      v199.n128_u32[0] = 4;
      v200 = 0uLL;
      v199.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 228), &v199);
      v199.n128_u64[0] = a4[230] - 1;
      re::DynamicArray<unsigned long>::add((a4 + 21), &v199);
      re::DynamicArray<re::Matrix4x4<float>>::add((a4 + 61), v197);
      v22 = *(a1 + 336);
      if (v22 > v23)
      {
        goto LABEL_95;
      }

LABEL_142:
      *&v189 = 0;
      v202 = 0u;
      v203 = 0u;
      v200 = 0u;
      v201 = 0u;
      v199 = 0u;
      v148 = MEMORY[0x1E69E9C10];
      v149 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v195 = 136315906;
      *&v195[4] = "operator[]";
      *&v195[12] = 1024;
      if (v149)
      {
        v150 = 3;
      }

      else
      {
        v150 = 2;
      }

      *&v195[14] = 789;
      *&v195[18] = 2048;
      *&v195[20] = v23;
      *&v195[28] = 2048;
      *&v195[30] = v22;
      _os_log_send_and_compose_impl(v150, &v189, &v199, 80, &dword_1E1C61000, v148, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v195, 38, v185, v186);
      _os_crash_msg();
      __break(1u);
      goto LABEL_146;
    }

    v199.n128_u32[0] = 4;
    v200 = 0uLL;
    v199.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 228), &v199);
    v199.n128_u64[0] = a4[230] - 1;
    re::DynamicArray<unsigned long>::add((a4 + 21), &v199);
    re::DynamicArray<re::Matrix4x4<float>>::add((a4 + 61), v27 + 112);
    v22 = *(a1 + 336);
    if (v22 <= v23)
    {
      goto LABEL_126;
    }

LABEL_95:
    *(*(a1 + 352) + 8 * v23++) = *(a4[25] + 8 * a4[23] - 8);
    v191 = v23;
  }

  while (v23 < v38);
  *&v189 = 0;
  v121 = 1;
  do
  {
    v199.n128_u64[1] = 0;
    v200 = 0uLL;
    v122 = *(a5 + 8);
    if (v122)
    {
      v123 = v122 + 1;
    }

    else
    {
      v123 = 0;
    }

    re::DynamicString::setCapacity(&v199, v123);
    v124 = re::DynamicString::operator=(&v199, a5);
    re::DynamicString::rfind(v195, v124, 47);
    if (v195[0] == 1)
    {
      v126 = (v199.n128_u8[8] & 1) != 0 ? v199.n128_u64[1] >> 1 : v199.n128_u8[8] >> 1;
      re::DynamicString::substr(v197, &v199, *&v195[8] + 1, v126);
      v125.n128_f64[0] = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(a1 + 24, v197, &v189);
      if (*v197)
      {
        if (v197[8])
        {
          (*(**v197 + 40))(v125.n128_f64[0]);
        }
      }
    }

    result = v199.n128_u64[0];
    if (v199.n128_u64[0] && (v199.n128_u8[8] & 1) != 0)
    {
      result = (*(*v199.n128_u64[0] + 40))(v125);
    }

    *&v189 = v121++;
    a5 += 176;
    --v38;
  }

  while (v38);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::StringID>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::StringID>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = (*(v3 + 4) + 16 * v4);
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  v5[1] = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

double re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(uint64_t a1, void *a2, void *a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v16, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, v6, &v13, a2);
  if (HIDWORD(v14) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v14, v13);
    result = 0.0;
    *(v8 + 24) = 0u;
    *(v8 + 8) = 0u;
    *(v8 + 32) = a2[3];
    v9 = a2[1];
    *(v8 + 8) = *a2;
    *a2 = 0;
    v10 = a2[2];
    a2[3] = 0;
    v12 = *(v8 + 16);
    v11 = *(v8 + 24);
    *(v8 + 16) = v9;
    *(v8 + 24) = v10;
    a2[1] = v12;
    a2[2] = v11;
    *(v8 + 40) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::DynamicArray<re::RigDataValue>>::add(_anonymous_namespace_ *result, uint64_t a2)
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

        result = re::DynamicArray<re::DynamicArray<re::RigDataValue>>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::DynamicArray<re::RigDataValue>>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  v11 = *(v3 + 4) + 40 * v5;
  *(v11 + 32) = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *v11 = 0;
  *(v11 + 24) = 0;
  v12 = *(a2 + 8);
  *v11 = *a2;
  *(v11 + 8) = v12;
  *a2 = 0;
  *(a2 + 8) = 0;
  v13 = *(v11 + 16);
  *(v11 + 16) = *(a2 + 16);
  *(a2 + 16) = v13;
  v14 = *(v11 + 32);
  *(v11 + 32) = *(a2 + 32);
  *(a2 + 32) = v14;
  ++*(a2 + 24);
  ++*(v11 + 24);
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

uint64_t re::RigHierarchy::init(re::RigHierarchy *this, const re::RigEnvironment *a2, const re::Skeleton *a3, re::Allocator *a4, re::EvaluationTree *a5)
{
  v8 = *(a3 + 3);
  v41 = 0;
  v38[1] = 0;
  v39 = 0;
  v40 = 0;
  re::DynamicArray<re::RigHierarchyJointDescription>::setCapacity(v38, v8);
  ++v40;
  if (v8)
  {
    v10 = 0;
    v11 = 0;
    v12 = 8;
    while (1)
    {
      v13 = *(a3 + 3);
      if (v13 <= v11)
      {
        break;
      }

      v14 = strlen(*(*(a3 + 4) + v12));
      *&v31 = *(*(a3 + 4) + v12);
      *(&v31 + 1) = v14;
      v16 = *(a3 + 6);
      if (v16 <= v11)
      {
        goto LABEL_14;
      }

      v17 = *(*(a3 + 7) + 4 * v11);
      if (v17 == -1)
      {
        v17 = -1;
      }

      v32 = v17;
      v18 = *(a3 + 12);
      if (v18 <= v11)
      {
        goto LABEL_15;
      }

      v19 = (*(a3 + 13) + v10);
      v33 = 1;
      v21 = v19[1];
      v20 = v19[2];
      v34 = *v19;
      v35 = v21;
      v36 = v20;
      v37 = 0;
      re::DynamicArray<re::RigHierarchyJointDescription>::add(v38, &v31);
      ++v11;
      v12 += 16;
      v10 += 48;
      if (v8 == v11)
      {
        goto LABEL_9;
      }
    }

    re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, v13, a4, a5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v23, v26);
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, v16);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v24, v27);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, v18);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v25, v28);
    __break(1u);
  }

  else
  {
LABEL_9:
    re::RigHierarchy::init(this, a2, a4, a5, v41, v39);
    result = v38[0];
    if (v38[0])
    {
      if (v41)
      {
        return (*(*v38[0] + 40))(v38[0]);
      }
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::RigHierarchyJointDescription>::add(_anonymous_namespace_ *this, __int128 *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::RigHierarchyJointDescription>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = *(v3 + 4) + 176 * v4;
  v6 = *a2;
  *(v5 + 16) = *(a2 + 2);
  *v5 = v6;
  v7 = *(a2 + 32);
  *(v5 + 32) = v7;
  if (v7 == 1)
  {
    v8 = a2[3];
    v9 = a2[5];
    *(v5 + 64) = a2[4];
    *(v5 + 80) = v9;
    *(v5 + 48) = v8;
  }

  v10 = *(a2 + 96);
  *(v5 + 96) = v10;
  if (v10 == 1)
  {
    v11 = a2[7];
    v12 = a2[8];
    v13 = a2[10];
    *(v5 + 144) = a2[9];
    *(v5 + 160) = v13;
    *(v5 + 112) = v11;
    *(v5 + 128) = v12;
  }

  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

void re::RigHierarchy::deinit(re::RigHierarchy *this)
{
  re::DynamicArray<unsigned long>::deinit(this + 280);
  re::DynamicArray<unsigned long>::deinit(this + 240);
  re::DynamicArray<re::StringID>::deinit(this + 200);
  re::DynamicArray<unsigned long>::deinit(this + 320);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(this + 160);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(this + 120);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 9);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 3);
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
}

uint64_t re::RigHierarchy::jointDescription@<X0>(re::RigHierarchy *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = *(this + 27);
  result = *(this + 1);
  a3[1] = v5;
  a3[2] = 0;
  *a3 = result;
  if (v5)
  {
    if (v5 < 0x1745D1745D1745ELL)
    {
      v7 = (*(*result + 32))(result, 176 * v5, 16);
      a3[2] = v7;
      if (!v7)
      {
        goto LABEL_36;
      }

      v9 = v5 - 1;
      if (v5 == 1)
      {
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = -1;
        *(v7 + 32) = 0;
        v10 = (v7 + 96);
      }

      else
      {
        v10 = (v7 + 96);
        do
        {
          *(v10 - 12) = 0;
          *(v10 - 11) = 0;
          *(v10 - 10) = -1;
          *(v10 - 64) = 0;
          *v10 = 0;
          v10 += 176;
          --v9;
        }

        while (v9);
        *(v10 - 12) = 0;
        *(v10 - 11) = 0;
        *(v10 - 10) = -1;
        *(v10 - 64) = 0;
      }

      v11 = 0;
      *v10 = 0;
      v12 = (v7 + 112);
      for (i = 8; ; i += 16)
      {
        v14 = *(this + 27);
        if (v14 <= v11)
        {
          break;
        }

        if (v5 == v11)
        {
          goto LABEL_23;
        }

        v15 = strlen(*(*(this + 29) + i));
        *(v12 - 14) = *(*(this + 29) + i);
        *(v12 - 13) = v15;
        v14 = *(this + 32);
        if (v14 <= v11)
        {
          goto LABEL_27;
        }

        *(v12 - 12) = *(*(this + 34) + 8 * v11);
        *v36 = xmmword_1E3047670;
        *&v36[16] = xmmword_1E3047680;
        *&v36[32] = xmmword_1E30476A0;
        v37 = xmmword_1E30474D0;
        v14 = *(this + 42);
        if (v14 <= v11)
        {
          goto LABEL_31;
        }

        result = re::EvaluationTree::getInputValue<re::Matrix4x4<float>>(*(this + 2), *(*(this + 44) + 8 * v11), v36);
        *(v45 + 15) = *v36;
        *(&v45[1] + 15) = *&v36[16];
        *(&v45[2] + 15) = *&v36[32];
        *(&v45[3] + 15) = v37;
        if (*(v12 - 1))
        {
          v16 = *v36;
          v17 = *&v36[16];
          v18 = v37;
          v12[2] = *&v36[32];
          v12[3] = v18;
          *v12 = v16;
          v12[1] = v17;
        }

        else
        {
          *(v12 - 16) = 1;
          *v12 = *(v45 + 15);
          v12[1] = *(&v45[1] + 15);
          v12[2] = *(&v45[2] + 15);
          v12[3] = *(&v45[3] + 15);
        }

        ++v11;
        v12 += 11;
        if (v5 == v11)
        {
          return result;
        }
      }

      *v38 = 0;
      memset(v45, 0, sizeof(v45));
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
      *&v36[20] = v11;
      *&v36[28] = 2048;
      *&v36[30] = v14;
      _os_log_send_and_compose_impl(v21, v38, v45, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v36, 38, v33, v34);
      _os_crash_msg();
      __break(1u);
LABEL_23:
      *v38 = 0;
      memset(v45, 0, sizeof(v45));
      v22 = MEMORY[0x1E69E9C10];
      v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v36 = 136315906;
      *&v36[4] = "operator[]";
      *&v36[12] = 1024;
      if (v23)
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }

      *&v36[14] = 468;
      *&v36[18] = 2048;
      *&v36[20] = v5;
      *&v36[28] = 2048;
      *&v36[30] = v5;
      _os_log_send_and_compose_impl(v24, v38, v45, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v36, 38, v33, v34);
      _os_crash_msg();
      __break(1u);
LABEL_27:
      *v38 = 0;
      memset(v45, 0, sizeof(v45));
      v25 = MEMORY[0x1E69E9C10];
      v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v36 = 136315906;
      *&v36[4] = "operator[]";
      *&v36[12] = 1024;
      if (v26)
      {
        v27 = 3;
      }

      else
      {
        v27 = 2;
      }

      *&v36[14] = 797;
      *&v36[18] = 2048;
      *&v36[20] = v11;
      *&v36[28] = 2048;
      *&v36[30] = v14;
      _os_log_send_and_compose_impl(v27, v38, v45, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v36, 38, v33, v34);
      _os_crash_msg();
      __break(1u);
LABEL_31:
      v35 = 0;
      memset(v45, 0, sizeof(v45));
      v28 = MEMORY[0x1E69E9C10];
      v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v38 = 136315906;
      *&v38[4] = "operator[]";
      v39 = 1024;
      if (v29)
      {
        v30 = 3;
      }

      else
      {
        v30 = 2;
      }

      v40 = 797;
      v41 = 2048;
      v42 = v11;
      v43 = 2048;
      v44 = v14;
      _os_log_send_and_compose_impl(v30, &v35, v45, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v38, 38, v33, v34);
      _os_crash_msg();
      __break(1u);
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 176, v5);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v31, v32);
    __break(1u);
LABEL_36:
    re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
  }

  return result;
}

uint64_t re::EvaluationTree::getInputValue<re::Matrix4x4<float>>(void *a1, unint64_t a2, _OWORD *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2 - 0x7FFFFFFFFFFFFFFFLL;
  if ((a2 - 0x7FFFFFFFFFFFFFFFLL) >= 0)
  {
    v4 = a1[103];
    while (v4 > v3)
    {
      a2 = *(a1[105] + 8 * v3);
      v3 = a2 - 0x7FFFFFFFFFFFFFFFLL;
      if ((a2 - 0x7FFFFFFFFFFFFFFFLL) < 0)
      {
        goto LABEL_5;
      }
    }

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

    v28 = 797;
    v29 = 2048;
    v30 = v3;
    v31 = 2048;
    v32 = v4;
    _os_log_send_and_compose_impl(v19, &v24, &v33, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
    _os_crash_msg();
    __break(1u);
LABEL_22:
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

    v28 = 797;
    v29 = 2048;
    v30 = v3;
    v31 = 2048;
    v32 = v4;
    _os_log_send_and_compose_impl(v22, &v24, &v33, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
    _os_crash_msg();
    __break(1u);
  }

LABEL_5:
  v5 = a1[25];
  v6 = a1[23];
  v7 = (v5 + 8 * v6);
  if (v6)
  {
    v8 = a1[25];
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
    v8 = a1[25];
  }

  if (v8 == v7 || *v8 != a2)
  {
    return 0;
  }

  v3 = (v8 - v5) >> 3;
  v4 = a1[63];
  if (v4 <= v3)
  {
    goto LABEL_22;
  }

  v13 = (a1[65] + (v3 << 6));
  v14 = *v13;
  v15 = v13[1];
  v16 = v13[3];
  a3[2] = v13[2];
  a3[3] = v16;
  *a3 = v14;
  a3[1] = v15;
  return 1;
}

unint64_t re::RigHierarchy::setLocalSpaceJointTransform@<X0>(re::DynamicString **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  v33 = 0uLL;
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 0;
  }

  *(&v32 + 1) = 0;
  re::DynamicString::setCapacity(&v32, v9);
  re::DynamicString::operator=(&v32, a2);
  v10 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 3), &v32);
  if (v32 && (BYTE8(v32) & 1) != 0)
  {
    (*(*v32 + 40))();
  }

  if (v10)
  {
    v11 = *v10;
    v12 = a1[37];
    if (v12 <= *v10)
    {
      v30 = 0;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v32 = 0u;
      v21 = MEMORY[0x1E69E9C10];
      *v31 = 136315906;
      *&v31[4] = "operator[]";
      *&v31[12] = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v22 = 3;
      }

      else
      {
        v22 = 2;
      }

      *&v31[14] = 789;
      *&v31[18] = 2048;
      *&v31[20] = v11;
      *&v31[28] = 2048;
      *&v31[30] = v12;
      _os_log_send_and_compose_impl(v22, &v30, &v32, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v31, 38, v29);
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      re::RigHierarchyJointTransform::setLocalSpaceJointScale(a1[39] + 20 * v11, *a3);
      v11 = *v10;
      v12 = a1[37];
      if (v12 > *v10)
      {
        re::RigHierarchyJointTransform::setLocalSpaceJointRotation(a1[39] + 20 * v11, a3[1]);
        v11 = *v10;
        v10 = a1[37];
        if (v10 > v11)
        {
          result = re::RigHierarchyJointTransform::setLocalSpaceJointTranslation(a1[39] + 20 * v11, a3[2]);
          *a4 = 1;
          return result;
        }

LABEL_30:
        v30 = 0;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v32 = 0u;
        v26 = MEMORY[0x1E69E9C10];
        v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v31 = 136315906;
        *&v31[4] = "operator[]";
        *&v31[12] = 1024;
        if (v27)
        {
          v28 = 3;
        }

        else
        {
          v28 = 2;
        }

        *&v31[14] = 789;
        *&v31[18] = 2048;
        *&v31[20] = v11;
        *&v31[28] = 2048;
        *&v31[30] = v10;
        _os_log_send_and_compose_impl(v28, &v30, &v32, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v31, 38, v29);
        _os_crash_msg();
        __break(1u);
      }
    }

    v30 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v23 = MEMORY[0x1E69E9C10];
    v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v31 = 136315906;
    *&v31[4] = "operator[]";
    *&v31[12] = 1024;
    if (v24)
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    *&v31[14] = 789;
    *&v31[18] = 2048;
    *&v31[20] = v11;
    *&v31[28] = 2048;
    *&v31[30] = v12;
    _os_log_send_and_compose_impl(v25, &v30, &v32, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v31, 38, v29);
    _os_crash_msg();
    __break(1u);
    goto LABEL_30;
  }

  v14 = a1[1];
  *&v31[16] = 0;
  *&v31[24] = 0;
  v15 = *(a2 + 8);
  if (v15)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = 0;
  }

  *v31 = v14;
  *&v31[8] = 0;
  re::DynamicString::setCapacity(v31, v16);
  re::DynamicString::operator=(v31, a2);
  if (v31[8])
  {
    v18 = *&v31[16];
  }

  else
  {
    v18 = &v31[9];
  }

  re::DynamicString::format(&v32, v14, "Unknown joint name: %s", v17, v18);
  v19 = v32;
  v20 = v33;
  *a4 = 0;
  *(a4 + 8) = 1000;
  *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
  *(a4 + 24) = v19;
  *(a4 + 40) = v20;
  result = *v31;
  if (*v31 && (v31[8] & 1) != 0)
  {
    return (*(**v31 + 40))();
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(uint64_t a1, char *a2)
{
  v7 = a2;
  v3 = re::Hash<re::DynamicString>::operator()(v5, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v7, v3, v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 56 * v6 + 40;
  }
}

uint64_t *re::RigHierarchy::getEvaluationSkeletalPose@<X0>(uint64_t *__return_ptr a1@<X8>, re::RigHierarchy *this@<X0>, re::Allocator *a3@<X1>, unint64_t a4@<X2>)
{
  v91 = *MEMORY[0x1E69E9840];
  v10 = *(this + 27);
  v64 = 0;
  v65 = 0;
  v66 = 0;
  if (v10)
  {
    v13 = 0;
    v5 = 8;
    while (1)
    {
      v4 = *(this + 27);
      if (v4 <= v13)
      {
        break;
      }

      v14 = *(*(this + 29) + v5);
      *&v68 = 0;
      *(&v68 + 1) = &str_67;
      v4 = v65;
      if (v65 <= v13)
      {
        goto LABEL_45;
      }

      v12 = re::StringID::operator=((v66 + v5 - 8), &v68);
      if (v68)
      {
        if (v68)
        {
        }
      }

      ++v13;
      v5 += 16;
      if (v10 == v13)
      {
        goto LABEL_9;
      }
    }

    *&v68 = 0;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v72 = 0u;
    v30 = MEMORY[0x1E69E9C10];
    v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v88[0].i32[0] = 136315906;
    *(v88[0].i64 + 4) = "operator[]";
    v88[0].i16[6] = 1024;
    if (v31)
    {
      v32 = 3;
    }

    else
    {
      v32 = 2;
    }

    *(&v88[0].i32[3] + 2) = 797;
    v88[1].i16[1] = 2048;
    *(v88[1].i64 + 4) = v13;
    v88[1].i16[6] = 2048;
    *(&v88[1].i64[1] + 6) = v4;
    _os_log_send_and_compose_impl(v32, &v68, &v72, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v88[0].i8, 38, v54, *(&v54 + 1));
    _os_crash_msg();
    __break(1u);
LABEL_45:
    *v83 = 0;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v72 = 0u;
    v33 = MEMORY[0x1E69E9C10];
    v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v88[0].i32[0] = 136315906;
    *(v88[0].i64 + 4) = "operator[]";
    v88[0].i16[6] = 1024;
    if (v34)
    {
      v35 = 3;
    }

    else
    {
      v35 = 2;
    }

    *(&v88[0].i32[3] + 2) = 468;
    v88[1].i16[1] = 2048;
    *(v88[1].i64 + 4) = v13;
    v88[1].i16[6] = 2048;
    *(&v88[1].i64[1] + 6) = v4;
    _os_log_send_and_compose_impl(v35, v83, &v72, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v88[0].i8, 38, v54, *(&v54 + 1));
    _os_crash_msg();
    __break(1u);
    goto LABEL_49;
  }

LABEL_9:
  v11 = &v68;
  *&v72 = 0;
  *(&v72 + 1) = &str_67;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  memset(v81, 0, sizeof(v81));
  v82 = 0x7FFFFFFFLL;
  if (a4)
  {
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    if (v10)
    {
      v16 = 0;
      v4 = 0;
      v54 = xmmword_1E30476A0;
      v17 = xmmword_1E30474D0;
      while (1)
      {
        v5 = *(this + 32);
        if (v5 <= v4)
        {
          break;
        }

        v5 = v62;
        if (v62 <= v4)
        {
          goto LABEL_61;
        }

        v18 = *(*(this + 34) + 8 * v4);
        if (v18 >= v4)
        {
          LODWORD(v18) = -1;
        }

        *(v63 + 4 * v4) = v18;
        v68 = xmmword_1E3047670;
        v69 = xmmword_1E3047680;
        v70 = xmmword_1E30476A0;
        v71 = v17;
        v5 = *(this + 42);
        if (v5 <= v4)
        {
          goto LABEL_65;
        }

        re::EvaluationTree::getInputValue<re::Matrix4x4<float>>(*(this + 2), *(*(this + 44) + 8 * v4), &v68);
        v88[0] = 0u;
        *v83 = xmmword_1E30474D0;
        v67 = 0u;
        re::decomposeScaleRotationTranslation<float>(&v68, v88, v83, &v67);
        v5 = v59;
        if (v59 <= v4)
        {
          goto LABEL_69;
        }

        v19 = v88[0].i64[1];
        v21 = *v83;
        v20 = *&v83[8];
        v22 = v67;
        v23 = v60 + v16;
        *v23 = v88[0].i64[0];
        *(v23 + 8) = v19;
        *(v23 + 16) = v21;
        *(v23 + 24) = v20;
        ++v4;
        v16 += 48;
        *(v23 + 32) = v22;
        v17 = xmmword_1E30474D0;
        if (v10 == v4)
        {
          goto LABEL_19;
        }
      }

LABEL_57:
      *v83 = 0;
      v89 = 0u;
      v90 = 0u;
      memset(v88, 0, sizeof(v88));
      v42 = MEMORY[0x1E69E9C10];
      v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v68) = 136315906;
      *(v11 + 4) = "operator[]";
      WORD6(v68) = 1024;
      if (v43)
      {
        v44 = 3;
      }

      else
      {
        v44 = 2;
      }

      *(v11 + 14) = 797;
      WORD1(v69) = 2048;
      *(v11 + 20) = v4;
      WORD6(v69) = 2048;
      *(v11 + 30) = v5;
      _os_log_send_and_compose_impl(v44, v83, v88, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v68, 38, v54, *(&v54 + 1));
      _os_crash_msg();
      __break(1u);
LABEL_61:
      *v83 = 0;
      v89 = 0u;
      v90 = 0u;
      memset(v88, 0, sizeof(v88));
      v45 = MEMORY[0x1E69E9C10];
      v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v68) = 136315906;
      *(v11 + 4) = "operator[]";
      WORD6(v68) = 1024;
      if (v46)
      {
        v47 = 3;
      }

      else
      {
        v47 = 2;
      }

      *(v11 + 14) = 468;
      WORD1(v69) = 2048;
      *(v11 + 20) = v4;
      WORD6(v69) = 2048;
      *(v11 + 30) = v5;
      _os_log_send_and_compose_impl(v47, v83, v88, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v68, 38, v54, *(&v54 + 1));
      _os_crash_msg();
      __break(1u);
LABEL_65:
      *&v67 = 0;
      v89 = 0u;
      v90 = 0u;
      memset(v88, 0, sizeof(v88));
      v48 = MEMORY[0x1E69E9C10];
      v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v83 = 136315906;
      *&v83[4] = "operator[]";
      *&v83[12] = 1024;
      if (v49)
      {
        v50 = 3;
      }

      else
      {
        v50 = 2;
      }

      *&v83[14] = 797;
      v84 = 2048;
      v85 = v4;
      v86 = 2048;
      v87 = v5;
      _os_log_send_and_compose_impl(v50, &v67, v88, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v83, 38, v54, *(&v54 + 1));
      _os_crash_msg();
      __break(1u);
LABEL_69:
      *&v67 = 0;
      v89 = 0u;
      v90 = 0u;
      memset(v88, 0, sizeof(v88));
      v51 = MEMORY[0x1E69E9C10];
      v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v83 = 136315906;
      *&v83[4] = "operator[]";
      *&v83[12] = 1024;
      if (v52)
      {
        v53 = 3;
      }

      else
      {
        v53 = 2;
      }

      *&v83[14] = 468;
      v84 = 2048;
      v85 = v4;
      v86 = 2048;
      v87 = v5;
      _os_log_send_and_compose_impl(v53, &v67, v88, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v83, 38, v54, *(&v54 + 1));
      _os_crash_msg();
      __break(1u);
    }

LABEL_19:
    v88[0].i64[0] = 0x270108FE20E3CD24;
    v88[0].i64[1] = "RigHierarchySkeleton";
    *&v68 = v66;
    *(&v68 + 1) = v65;
    *v83 = v63;
    *&v83[8] = v62;
    *&v67 = v60;
    *(&v67 + 1) = v59;
    v4 = v55;
    re::Skeleton::init(&v72, a3, v88[0].i64, &v68, v83, &v67, v55);
    if ((v55[0] & 1) == 0)
    {
      v24 = v56;
      if (v56)
      {
        if (BYTE8(v56))
        {
          v24 = (*(*v56 + 40))();
        }

        v57 = 0u;
        v56 = 0u;
      }
    }

    if (v88[0].i8[0])
    {
      if (v88[0].i8[0])
      {
      }
    }

    if (v58 && v59)
    {
      (*(*v58 + 40))();
    }

    if (v61 && v62)
    {
      (*(*v61 + 40))();
    }
  }

  re::make::shared::object<re::SkeletalPoseJointDefinition,re::FixedArray<re::StringID>,re::Skeleton>(&v64, &v72, v88[0].i64);
  *a1 = 0u;
  *(a1 + 1) = 0u;
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(a1 + 3, v88[0].i64[0]);
  re::FixedArray<re::EvaluationSRT>::init<>(a1, a3, *(v88[0].i64[0] + 216));
  if (v88[0].i64[0])
  {
  }

  if (v10)
  {
    v25 = 0;
    a3 = 0;
    v26 = (a1[2] + 16);
    while (1)
    {
      a4 = *(this + 37);
      if (a4 <= a3)
      {
        break;
      }

      a4 = a1[1];
      if (a4 <= a3)
      {
        goto LABEL_53;
      }

      v27 = *(this + 39) + v25;
      v28 = *(v27 + 24);
      *(v26 - 1) = *(v27 + 8);
      *v26 = v28;
      v26 += 3;
      a3 = (a3 + 1);
      v25 += 160;
      if (v10 == a3)
      {
        goto LABEL_40;
      }
    }

LABEL_49:
    *v83 = 0;
    v89 = 0u;
    v90 = 0u;
    memset(v88, 0, sizeof(v88));
    v36 = MEMORY[0x1E69E9C10];
    v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v68) = 136315906;
    *(v11 + 4) = "operator[]";
    WORD6(v68) = 1024;
    if (v37)
    {
      v38 = 3;
    }

    else
    {
      v38 = 2;
    }

    *(v11 + 14) = 797;
    WORD1(v69) = 2048;
    *(v11 + 20) = a3;
    WORD6(v69) = 2048;
    *(v11 + 30) = a4;
    _os_log_send_and_compose_impl(v38, v83, v88, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v68, 38, v54, *(&v54 + 1));
    _os_crash_msg();
    __break(1u);
LABEL_53:
    *v83 = 0;
    v89 = 0u;
    v90 = 0u;
    memset(v88, 0, sizeof(v88));
    v39 = MEMORY[0x1E69E9C10];
    v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v68) = 136315906;
    *(v11 + 4) = "operator[]";
    WORD6(v68) = 1024;
    if (v40)
    {
      v41 = 3;
    }

    else
    {
      v41 = 2;
    }

    *(v11 + 14) = 468;
    WORD1(v69) = 2048;
    *(v11 + 20) = a3;
    WORD6(v69) = 2048;
    *(v11 + 30) = a4;
    _os_log_send_and_compose_impl(v41, v83, v88, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v68, 38, v54, *(&v54 + 1));
    _os_crash_msg();
    __break(1u);
    goto LABEL_57;
  }

LABEL_40:
  re::Skeleton::~Skeleton(&v72);
  return re::FixedArray<re::StringID>::deinit(&v64);
}

__n128 re::RigHierarchy::bindRigHierarchyPose@<Q0>(re::DynamicString **this@<X0>, re::EvaluationTree *a2@<X1>, re::EvaluationContextManager *a3@<X2>, const re::BindPoint *a4@<X3>, unsigned __int8 *a5@<X8>)
{
  v9 = re::BindPoint::valueUntyped(a4);
  if (v9)
  {
    v11 = *(v9 + 80);
    v12 = v11 + 28;
    if (!v11)
    {
      v12 = this + 29;
      v11 = this;
    }

    v13 = v11[27];
    if (v13)
    {
      v14 = 0;
      v15 = (*v12 + 8);
      while (1)
      {
        v24.n128_u64[0] = 0x3F8000003F800000;
        v24.n128_u64[1] = 1065353216;
        v25 = 0;
        v26 = 0x3F80000000000000;
        v27 = 0;
        v28 = 0;
        re::EvaluationTree::createInputRegister(a2, &v24, v29);
        v24.n128_u64[0] = 0x3F8000003F800000;
        v24.n128_u64[1] = 1065353216;
        v25 = 0;
        v26 = 0x3F80000000000000;
        v27 = 0;
        v28 = 0;
        re::DynamicArray<re::EvaluationSRT>::add((a3 + 328), v29);
        re::DynamicArray<re::Matrix3x3<float>>::add((a3 + 688), &v24);
        v16 = (*(a3 + 43) - 1);
        v23[0] = a3;
        v23[1] = v16;
        re::makeSkeletalPoseJointBindNode(&v24, a4, v14);
        re::EvaluationContextManager::bindInputHandle<re::GenericSRT<float>>(v23[0], v23, &v24, 0);
        v17 = strlen(*v15);
        v22[0] = *v15;
        v22[1] = v17;
        re::RigHierarchy::setLocalSpaceJointTransform(this, v22, v29, a5);
        v18 = *a5;
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v24.n128_i64[1]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v24.n128_i64[1]);
        if (v18 != 1)
        {
          break;
        }

        v14 = (v14 + 1);
        v15 += 2;
        if (v13 == v14)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      *a5 = 1;
    }
  }

  else
  {
    result = v24;
    v19 = v25;
    v20 = v26;
    *a5 = 0;
    *(a5 + 1) = 5000;
    *(a5 + 2) = &re::AnimationErrorCategory(void)::instance;
    *(a5 + 24) = result;
    *(a5 + 5) = v19;
    *(a5 + 6) = v20;
  }

  return result;
}

uint64_t *re::RigHierarchy::addJoint@<X0>(uint64_t a1@<X0>, const char **a2@<X1>, uint64_t a3@<X8>)
{
  v73 = *MEMORY[0x1E69E9840];
  v69 = 0uLL;
  v6 = a2[1];
  if (v6)
  {
    v7 = (v6 + 1);
  }

  else
  {
    v7 = 0;
  }

  *(&v68 + 1) = 0;
  re::DynamicString::setCapacity(&v68, v7);
  re::DynamicString::operator=(&v68, a2);
  v8 = re::Hash<re::DynamicString>::operator()(v67, &v68);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1 + 24, v8, v67, &v68);
  v9 = *&v67[12];
  if (v68 && (BYTE8(v68) & 1) != 0)
  {
    (*(*v68 + 40))();
  }

  if (v9 == 0x7FFFFFFF)
  {
    *&v70 = 0;
    *&v69 = 0;
    v68 = 0uLL;
    DWORD2(v69) = 0;
    re::DynamicArray<re::DynamicArray<re::RigDataValue>>::add((a1 + 160), &v68);
    re::DynamicArray<re::RigDataValue>::deinit(&v68);
    v10 = *(a1 + 192) + 40 * *(a1 + 176);
    v11 = *(a1 + 136);
    *(v10 - 40) = *(a1 + 8);
    v10 -= 40;
    re::DynamicArray<re::RigDataValue>::setCapacity(v10, v11);
    ++*(v10 + 24);
    v12 = *(a1 + 136);
    re::DynamicArray<re::RigDataValue>::resize(*(a1 + 192) + 40 * *(a1 + 176) - 40, v12);
    if (v12)
    {
      v14 = 0;
      v15 = 0;
      v16 = 32;
      do
      {
        v17 = *(a1 + 192) + 40 * *(a1 + 176);
        v18 = *(v17 - 24);
        if (v18 <= v15)
        {
          v62 = 0;
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v68 = 0u;
          v54 = MEMORY[0x1E69E9C10];
          v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v67 = 136315906;
          *&v67[4] = "operator[]";
          *&v67[12] = 1024;
          if (v55)
          {
            v56 = 3;
          }

          else
          {
            v56 = 2;
          }

          *&v67[14] = 789;
          *&v67[18] = 2048;
          *&v67[20] = v15;
          *&v67[28] = 2048;
          *&v67[30] = v18;
          _os_log_send_and_compose_impl(v56, &v62, &v68, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v67, 38, v60, v61);
          _os_crash_msg();
          __break(1u);
LABEL_57:
          v62 = 0;
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v68 = 0u;
          v57 = MEMORY[0x1E69E9C10];
          v58 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v67 = 136315906;
          *&v67[4] = "operator[]";
          *&v67[12] = 1024;
          if (v58)
          {
            v59 = 3;
          }

          else
          {
            v59 = 2;
          }

          *&v67[14] = 789;
          *&v67[18] = 2048;
          *&v67[20] = v15;
          *&v67[28] = 2048;
          *&v67[30] = v18;
          _os_log_send_and_compose_impl(v59, &v62, &v68, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v67, 38, v60, v61);
          _os_crash_msg();
          __break(1u);
        }

        v18 = *(a1 + 136);
        if (v18 <= v15)
        {
          goto LABEL_57;
        }

        re::RigDataValue::init((*(v17 - 8) + v14), *(a1 + 8), *a1, (*(a1 + 152) + v16), *(a1 + 16));
        ++v15;
        v14 += 288;
        v16 += 96;
      }

      while (v12 != v15);
    }

    v19 = *a2;
    v20 = a2[1];
    *&v68 = 0;
    *(&v68 + 1) = &str_67;
    v21 = re::DynamicArray<re::StringID>::add((a1 + 200), &v68);
    if (v68)
    {
      if (v68)
      {
      }
    }

    v22 = *(a1 + 216) - 1;
    v66 = v22;
    v64 = 0;
    v65 = 0;
    v23 = a2[1];
    if (v23)
    {
      v24 = (v23 + 1);
    }

    else
    {
      v24 = 0;
    }

    v63 = 0;
    re::DynamicString::setCapacity(&v62, v24);
    re::DynamicString::operator=(&v62, a2);
    v68 = 0uLL;
    *&v69 = 0;
    v25 = re::Hash<re::DynamicString>::operator()(v67, &v62);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1 + 24, v25, &v68, &v62);
    if (HIDWORD(v68) == 0x7FFFFFFF)
    {
      v26 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1 + 24, DWORD2(v68), v68);
      re::DynamicString::DynamicString((v26 + 8), &v62);
      *(v26 + 40) = v22;
      ++*(a1 + 64);
    }

    re::DynamicString::rfind(v67, &v62, 47);
    if (v67[0])
    {
      v27 = (v63 & 1) != 0 ? v63 >> 1 : v63 >> 1;
      re::DynamicString::substr(&v68, &v62, *&v67[8] + 1, v27);
      v28 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(a1 + 24, &v68, &v66);
      if (v68)
      {
        if (BYTE8(v68))
        {
          (*(*v68 + 40))(v28);
        }
      }
    }

    v29 = re::DynamicArray<unsigned long>::add((a1 + 240), &re::RigHierarchyJointDescription::kInvalidParentIndex);
    v30 = *(a1 + 288);
    v31 = *(a1 + 296);
    if (v31 >= v30)
    {
      v32 = v31 + 1;
      if (v30 < v31 + 1)
      {
        if (*(a1 + 280))
        {
          v33 = 2 * v30;
          v34 = v30 == 0;
          v35 = 8;
          if (!v34)
          {
            v35 = v33;
          }

          if (v35 <= v32)
          {
            v36 = v32;
          }

          else
          {
            v36 = v35;
          }

          re::DynamicArray<re::RigHierarchyJointTransform>::setCapacity((a1 + 280), v36);
        }

        else
        {
          re::DynamicArray<re::RigHierarchyJointTransform>::setCapacity((a1 + 280), v32);
          ++*(a1 + 304);
        }
      }

      v31 = *(a1 + 296);
    }

    v46 = *(a1 + 312) + 160 * v31;
    *v46 = 0;
    *&v47 = -1;
    *(&v47 + 1) = -1;
    *(v46 + 8) = v47;
    *(v46 + 24) = v47;
    *(v46 + 40) = v47;
    *(v46 + 56) = v47;
    *(v46 + 72) = v47;
    *(v46 + 88) = v47;
    *(v46 + 104) = v47;
    *(v46 + 120) = v47;
    *(v46 + 136) = v47;
    *(v46 + 152) = -1;
    ++*(a1 + 296);
    ++*(a1 + 304);
    v48 = *(a1 + 16);
    v68 = xmmword_1E3047670;
    v69 = xmmword_1E3047680;
    v70 = xmmword_1E30476A0;
    *v67 = 3;
    memset(&v67[8], 0, 24);
    re::DynamicArray<re::EvaluationRegister>::add((v48 + 223), v67);
    *v67 = v48[225] - 1;
    re::DynamicArray<unsigned long>::add((v48 + 16), v67);
    re::DynamicArray<re::Matrix3x3<float>>::add((v48 + 56), &v68);
    v49 = *(v48[20] + 8 * v48[18] - 8);
    v50 = *(a1 + 16);
    v68 = xmmword_1E3047670;
    v69 = xmmword_1E3047680;
    v70 = xmmword_1E30476A0;
    v71 = xmmword_1E30474D0;
    *v67 = 4;
    memset(&v67[8], 0, 24);
    re::DynamicArray<re::EvaluationRegister>::add((v50 + 228), v67);
    *v67 = v50[230] - 1;
    re::DynamicArray<unsigned long>::add((v50 + 21), v67);
    re::DynamicArray<re::Matrix4x4<float>>::add((v50 + 61), &v68);
    v51 = *(v50[25] + 8 * v50[23] - 8);
    v52 = *(a1 + 16);
    *&v68 = 0x3F8000003F800000;
    *(&v68 + 1) = 1065353216;
    *&v69 = 0;
    *(&v69 + 1) = 0x3F80000000000000;
    v70 = 0uLL;
    re::EvaluationTree::createInputRegister(v52, &v68, v67);
    re::RigHierarchyJointTransform::init((*(a1 + 312) + 160 * *(a1 + 296) - 160), *(a1 + 16), v67, v49, v51);
    v53 = *(a1 + 16);
    v68 = xmmword_1E3047670;
    v69 = xmmword_1E3047680;
    v70 = xmmword_1E30476A0;
    v71 = xmmword_1E30474D0;
    *v67 = 4;
    memset(&v67[8], 0, 24);
    re::DynamicArray<re::EvaluationRegister>::add((v53 + 228), v67);
    *v67 = v53[230] - 1;
    re::DynamicArray<unsigned long>::add((v53 + 21), v67);
    re::DynamicArray<re::Matrix4x4<float>>::add((v53 + 61), &v68);
    *v67 = *(v53[25] + 8 * v53[23] - 8);
    re::DynamicArray<unsigned long>::add((a1 + 320), v67);
    *a3 = 1;
    result = v62;
    if (v62 && (v63 & 1) != 0)
    {
      v45 = v64;
      return (*(*result + 40))(result, v45);
    }
  }

  else
  {
    v37 = *(a1 + 8);
    *&v67[16] = 0;
    *&v67[24] = 0;
    v38 = a2[1];
    if (v38)
    {
      v39 = (v38 + 1);
    }

    else
    {
      v39 = 0;
    }

    *v67 = v37;
    *&v67[8] = 0;
    re::DynamicString::setCapacity(v67, v39);
    re::DynamicString::operator=(v67, a2);
    if (v67[8])
    {
      v41 = *&v67[16];
    }

    else
    {
      v41 = &v67[9];
    }

    re::DynamicString::format(&v68, v37, "Cannot add duplicate joint: %s", v40, v41);
    v42 = v68;
    v43 = v69;
    *a3 = 0;
    *(a3 + 8) = 1030;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = v42;
    *(a3 + 40) = v43;
    result = *v67;
    if (*v67 && (v67[8] & 1) != 0)
    {
      v45 = *&v67[16];
      return (*(*result + 40))(result, v45);
    }
  }

  return result;
}

void re::DynamicArray<re::RigDataValue>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 288 * a2;
    v9 = a2;
    do
    {
      re::RigDataValue::~RigDataValue((*(a1 + 32) + v8));
      ++v9;
      v8 += 288;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::RigDataValue>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 288 * v4;
      do
      {
        v7 = *(a1 + 32) + v6;
        *(v7 + 32) = 0;
        *v7 = 0uLL;
        *(v7 + 16) = 0uLL;
        *(v7 + 40) = 0;
        *(v7 + 48) = &str_67;
        *(v7 + 88) = 0;
        *(v7 + 64) = 0;
        *(v7 + 72) = 0;
        *(v7 + 56) = 0;
        *(v7 + 80) = 0;
        *(v7 + 96) = 0;
        *(v7 + 112) = 0uLL;
        *(v7 + 128) = 0uLL;
        *(v7 + 144) = 0uLL;
        *(v7 + 160) = 0uLL;
        *(v7 + 176) = -1;
        *(v7 + 184) = 0;
        *(v7 + 216) = 0;
        *(v7 + 224) = 0;
        *(v7 + 272) = 0;
        *(v7 + 264) = 0;
        *(v7 + 232) = &str_67;
        *(v7 + 240) = 0;
        v6 += 288;
        *(v7 + 248) = 0;
        *(v7 + 256) = 0;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

uint64_t re::RigHierarchy::removeJoint@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = 0;
  v33 = 0;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  *(&v31 + 1) = 0;
  re::DynamicString::setCapacity(&v31, v7);
  re::DynamicString::operator=(&v31, a2);
  v8 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 24, &v31);
  v9 = v31;
  if (v31 && (BYTE8(v31) & 1) != 0)
  {
    v9 = (*(*v31 + 40))();
  }

  if (v8)
  {
    v32 = 0;
    v33 = 0;
    v10 = *(a2 + 8);
    if (v10)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 0;
    }

    re::DynamicString::setCapacity(&v31, v11);
    re::DynamicString::operator=(&v31, a2);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(a1 + 24, &v31);
    result = v31;
    if (v31 && (BYTE8(v31) & 1) != 0)
    {
      result = (*(*v31 + 40))();
    }

    v13 = *(a1 + 56);
    if (v13)
    {
      v14 = 0;
      v15 = *(a1 + 40);
      while (1)
      {
        v16 = *v15;
        v15 += 14;
        if (v16 < 0)
        {
          break;
        }

        if (v13 == ++v14)
        {
          LODWORD(v14) = *(a1 + 56);
          break;
        }
      }
    }

    else
    {
      LODWORD(v14) = 0;
    }

    if (v14 != v13)
    {
      v25 = *(a1 + 40);
      while (*(v25 + 56 * v14 + 40) != *v8)
      {
        if (v13 <= v14 + 1)
        {
          v26 = v14 + 1;
        }

        else
        {
          v26 = *(a1 + 56);
        }

        while (v26 - 1 != v14)
        {
          LODWORD(v14) = v14 + 1;
          if ((*(v25 + 56 * v14) & 0x80000000) != 0)
          {
            goto LABEL_39;
          }
        }

        LODWORD(v14) = v26;
LABEL_39:
        if (v14 == v13)
        {
          goto LABEL_42;
        }
      }

      result = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(a1 + 24, (v25 + 56 * v14 + 8));
    }

LABEL_42:
    *a3 = 1;
  }

  else
  {
    v17 = *(a1 + 8);
    v29 = 0;
    v30 = 0;
    v18 = *(a2 + 8);
    if (v18)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 0;
    }

    v27 = v17;
    v28 = 0;
    re::DynamicString::setCapacity(&v27, v19);
    re::DynamicString::operator=(&v27, a2);
    if (v28)
    {
      v21 = v29;
    }

    else
    {
      v21 = &v28 + 1;
    }

    re::DynamicString::format(&v31, v17, "Cannot remove unknown joint: %s", v20, v21);
    v22 = v31;
    v23 = v32;
    v24 = v33;
    *a3 = 0;
    *(a3 + 8) = 1000;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = v22;
    *(a3 + 40) = v23;
    *(a3 + 48) = v24;
    result = v27;
    if (v27 && (v28 & 1) != 0)
    {
      return (*(*v27 + 40))();
    }
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(&v6, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, v4, &v6, a2);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 56 * v7 + 40;
  }
}

BOOL re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(uint64_t a1, void *a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, v4, v6, a2);
  return re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::removeInternal(a1, v6);
}

uint64_t *re::RigHierarchy::jointParent@<X0>(re::DynamicString **a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v50 = *MEMORY[0x1E69E9840];
  v46 = 0uLL;
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 0;
  }

  *(&v45 + 1) = 0;
  re::DynamicString::setCapacity(&v45, v9);
  re::DynamicString::operator=(&v45, a2);
  v10 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 3), &v45);
  result = v45;
  if (v45 && (BYTE8(v45) & 1) != 0)
  {
    result = (*(*v45 + 40))();
  }

  if (v10)
  {
    v12 = *v10;
    v13 = a1[32];
    if (v13 <= v12)
    {
LABEL_42:
      v39 = 0;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v45 = 0u;
      v32 = MEMORY[0x1E69E9C10];
      v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v44 = 136315906;
      *&v44[4] = "operator[]";
      *&v44[12] = 1024;
      if (v33)
      {
        v34 = 3;
      }

      else
      {
        v34 = 2;
      }

      *&v44[14] = 797;
      *&v44[18] = 2048;
      *&v44[20] = v12;
      *&v44[28] = 2048;
      *&v44[30] = v13;
      _os_log_send_and_compose_impl(v34, &v39, &v45, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v44, 38, v38);
      _os_crash_msg();
      __break(1u);
LABEL_46:
      v39 = 0;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v45 = 0u;
      v35 = MEMORY[0x1E69E9C10];
      v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v44 = 136315906;
      *&v44[4] = "operator[]";
      *&v44[12] = 1024;
      if (v36)
      {
        v37 = 3;
      }

      else
      {
        v37 = 2;
      }

      *&v44[14] = 797;
      *&v44[18] = 2048;
      *&v44[20] = v13;
      *&v44[28] = 2048;
      *&v44[30] = v12;
      _os_log_send_and_compose_impl(v37, &v39, &v45, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v44, 38, v38);
      _os_crash_msg();
      __break(1u);
    }

    v13 = *(a1[34] + v12);
    if (v13 == -1)
    {
LABEL_21:
      *a4 = 1;
      *(a4 + 8) = 0;
    }

    else
    {
      if (a3)
      {
        while (1)
        {
          v12 = a1[27];
          if (v12 <= v13)
          {
            break;
          }

          v14 = strlen(*(a1[29] + 2 * v13 + 1));
          *v44 = *(a1[29] + 2 * v13 + 1);
          *&v44[8] = v14;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          if (v14)
          {
            v15 = v14 + 1;
          }

          else
          {
            v15 = 0;
          }

          re::DynamicString::setCapacity(&v39, v15);
          re::DynamicString::operator=(&v39, v44);
          v16 = re::Hash<re::DynamicString>::operator()(&v45, &v39);
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>((a1 + 3), v16, &v45, &v39);
          v17 = HIDWORD(v45);
          result = v39;
          if (v39 && (v40 & 1) != 0)
          {
            result = (*(*v39 + 40))();
          }

          if (v17 != 0x7FFFFFFF)
          {
            goto LABEL_31;
          }

          v12 = a1[32];
          if (v12 <= v13)
          {
            goto LABEL_38;
          }

          v13 = *(a1[34] + v13);
          if (v13 == -1)
          {
            goto LABEL_21;
          }
        }

        v43 = 0;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v45 = 0u;
        v26 = MEMORY[0x1E69E9C10];
        v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v44 = 136315906;
        *&v44[4] = "operator[]";
        *&v44[12] = 1024;
        if (v27)
        {
          v28 = 3;
        }

        else
        {
          v28 = 2;
        }

        *&v44[14] = 797;
        *&v44[18] = 2048;
        *&v44[20] = v13;
        *&v44[28] = 2048;
        *&v44[30] = v12;
        _os_log_send_and_compose_impl(v28, &v43, &v45, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v44, 38, v38, v39);
        _os_crash_msg();
        __break(1u);
LABEL_38:
        v39 = 0;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v45 = 0u;
        v29 = MEMORY[0x1E69E9C10];
        v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v44 = 136315906;
        *&v44[4] = "operator[]";
        *&v44[12] = 1024;
        if (v30)
        {
          v31 = 3;
        }

        else
        {
          v31 = 2;
        }

        *&v44[14] = 797;
        *&v44[18] = 2048;
        *&v44[20] = v13;
        *&v44[28] = 2048;
        *&v44[30] = v12;
        _os_log_send_and_compose_impl(v31, &v39, &v45, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v44, 38, v38);
        _os_crash_msg();
        __break(1u);
        goto LABEL_42;
      }

LABEL_31:
      v12 = a1[27];
      if (v12 <= v13)
      {
        goto LABEL_46;
      }

      v25 = a1[29] + 16 * v13;
      *a4 = 1;
      *(a4 + 8) = v25;
    }
  }

  else
  {
    v18 = a1[1];
    *&v44[16] = 0;
    *&v44[24] = 0;
    v19 = *(a2 + 8);
    if (v19)
    {
      v20 = v19 + 1;
    }

    else
    {
      v20 = 0;
    }

    *v44 = v18;
    *&v44[8] = 0;
    re::DynamicString::setCapacity(v44, v20);
    re::DynamicString::operator=(v44, a2);
    if (v44[8])
    {
      v22 = *&v44[16];
    }

    else
    {
      v22 = &v44[9];
    }

    re::DynamicString::format(&v45, v18, "Unknown joint name: %s", v21, v22);
    v23 = v45;
    v24 = v46;
    *a4 = 0;
    *(a4 + 8) = 1000;
    *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a4 + 24) = v23;
    *(a4 + 40) = v24;
    result = *v44;
    if (*v44 && (v44[8] & 1) != 0)
    {
      return (*(**v44 + 40))();
    }
  }

  return result;
}

unint64_t re::RigHierarchy::getLocalSpaceJointTransform@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>)
{
  re::RigHierarchy::getLocalSpaceJointSRT(a1, a3, &v10);
  if (v10 == 1)
  {
    result = re::EvaluationTree::constructMatrix4x4(*(a1 + 16), v11, *(&v11 + 1), v12);
    *a2 = 1;
    *(a2 + 8) = result;
  }

  else
  {
    v6 = v11;
    re::DynamicString::DynamicString(&v7, &v12);
    *a2 = 0;
    *(a2 + 8) = v6;
    *(a2 + 24) = v7;
    *(a2 + 48) = v9;
    *(a2 + 32) = v8;
    result = v12;
    if (v12)
    {
      if (v13)
      {
        return (*(*v12 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::RigHierarchy::getLocalSpaceJointSRT@<X0>(re::DynamicString **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v27 = 0uLL;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  *(&v26 + 1) = 0;
  re::DynamicString::setCapacity(&v26, v7);
  re::DynamicString::operator=(&v26, a2);
  v8 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 3), &v26);
  result = v26;
  if (v26 && (BYTE8(v26) & 1) != 0)
  {
    result = (*(*v26 + 40))();
  }

  if (v8)
  {
    v10 = *v8;
    v11 = a1[37];
    if (v11 <= v10)
    {
      v24 = 0;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
      v21 = MEMORY[0x1E69E9C10];
      *v25 = 136315906;
      *&v25[4] = "operator[]";
      *&v25[12] = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v22 = 3;
      }

      else
      {
        v22 = 2;
      }

      *&v25[14] = 797;
      *&v25[18] = 2048;
      *&v25[20] = v10;
      *&v25[28] = 2048;
      *&v25[30] = v11;
      _os_log_send_and_compose_impl(v22, &v24, &v26, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v25, 38, v23);
      _os_crash_msg();
      __break(1u);
    }

    v12 = a1[39] + 160 * v10;
    v13 = *(v12 + 24);
    *a3 = 1;
    *(a3 + 8) = *(v12 + 8);
    *(a3 + 24) = v13;
  }

  else
  {
    v14 = a1[1];
    *&v25[16] = 0;
    *&v25[24] = 0;
    v15 = *(a2 + 8);
    if (v15)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 0;
    }

    *v25 = v14;
    *&v25[8] = 0;
    re::DynamicString::setCapacity(v25, v16);
    re::DynamicString::operator=(v25, a2);
    if (v25[8])
    {
      v18 = *&v25[16];
    }

    else
    {
      v18 = &v25[9];
    }

    re::DynamicString::format(&v26, v14, "Unknown joint name: %s", v17, v18);
    v19 = v26;
    v20 = v27;
    *a3 = 0;
    *(a3 + 8) = 1000;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = v19;
    *(a3 + 40) = v20;
    result = *v25;
    if (*v25 && (v25[8] & 1) != 0)
    {
      return (*(**v25 + 40))();
    }
  }

  return result;
}

unint64_t re::RigHierarchy::setLocalSpaceJointTransform@<X0>(re::DynamicString **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  v40 = 0uLL;
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 0;
  }

  *(&v39 + 1) = 0;
  re::DynamicString::setCapacity(&v39, v9);
  re::DynamicString::operator=(&v39, a2);
  v10 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 3), &v39);
  if (v39 && (BYTE8(v39) & 1) != 0)
  {
    (*(*v39 + 40))();
  }

  if (v10)
  {
    v11 = *v10;
    v12 = a1[37];
    if (v12 <= *v10)
    {
      v37 = 0;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v39 = 0u;
      v28 = MEMORY[0x1E69E9C10];
      *v38 = 136315906;
      *&v38[4] = "operator[]";
      *&v38[12] = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v29 = 3;
      }

      else
      {
        v29 = 2;
      }

      *&v38[14] = 789;
      *&v38[18] = 2048;
      *&v38[20] = v11;
      *&v38[28] = 2048;
      *&v38[30] = v12;
      _os_log_send_and_compose_impl(v29, &v37, &v39, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v38, 38, v36);
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      v13 = (a1[39] + 160 * v11);
      Scale = re::EvaluationTree::extractScale(a1[2], a3);
      re::RigHierarchyJointTransform::setLocalSpaceJointScale(v13, Scale);
      v11 = *v10;
      v12 = a1[37];
      if (v12 > *v10)
      {
        v15 = (a1[39] + 160 * v11);
        Rotation = re::EvaluationTree::extractRotation(a1[2], a3);
        re::RigHierarchyJointTransform::setLocalSpaceJointRotation(v15, Rotation);
        v11 = *v10;
        v10 = a1[37];
        if (v10 > v11)
        {
          v17 = a1[2];
          v18 = (a1[39] + 160 * v11);
          LODWORD(v39) = 37;
          v40 = 0uLL;
          *(&v39 + 1) = 0;
          re::DynamicArray<re::EvaluationRegister>::add((v17 + 1944), &v39);
          v19 = *(v17 + 245) - 1;
          *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v17 + 1664, v19) + 8) = a3;
          result = re::RigHierarchyJointTransform::setLocalSpaceJointTranslation(v18, v19);
          *a4 = 1;
          return result;
        }

LABEL_30:
        v37 = 0;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        v33 = MEMORY[0x1E69E9C10];
        v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v38 = 136315906;
        *&v38[4] = "operator[]";
        *&v38[12] = 1024;
        if (v34)
        {
          v35 = 3;
        }

        else
        {
          v35 = 2;
        }

        *&v38[14] = 789;
        *&v38[18] = 2048;
        *&v38[20] = v11;
        *&v38[28] = 2048;
        *&v38[30] = v10;
        _os_log_send_and_compose_impl(v35, &v37, &v39, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v38, 38, v36);
        _os_crash_msg();
        __break(1u);
      }
    }

    v37 = 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v30 = MEMORY[0x1E69E9C10];
    v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v38 = 136315906;
    *&v38[4] = "operator[]";
    *&v38[12] = 1024;
    if (v31)
    {
      v32 = 3;
    }

    else
    {
      v32 = 2;
    }

    *&v38[14] = 789;
    *&v38[18] = 2048;
    *&v38[20] = v11;
    *&v38[28] = 2048;
    *&v38[30] = v12;
    _os_log_send_and_compose_impl(v32, &v37, &v39, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v38, 38, v36);
    _os_crash_msg();
    __break(1u);
    goto LABEL_30;
  }

  v21 = a1[1];
  *&v38[16] = 0;
  *&v38[24] = 0;
  v22 = *(a2 + 8);
  if (v22)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = 0;
  }

  *v38 = v21;
  *&v38[8] = 0;
  re::DynamicString::setCapacity(v38, v23);
  re::DynamicString::operator=(v38, a2);
  if (v38[8])
  {
    v25 = *&v38[16];
  }

  else
  {
    v25 = &v38[9];
  }

  re::DynamicString::format(&v39, v21, "Unknown joint name: %s", v24, v25);
  v26 = v39;
  v27 = v40;
  *a4 = 0;
  *(a4 + 8) = 1000;
  *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
  *(a4 + 24) = v26;
  *(a4 + 40) = v27;
  result = *v38;
  if (*v38 && (v38[8] & 1) != 0)
  {
    return (*(**v38 + 40))();
  }

  return result;
}

uint64_t re::RigHierarchy::getModelSpaceJointTransform@<X0>(re::DynamicString **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v26 = 0uLL;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  *(&v25 + 1) = 0;
  re::DynamicString::setCapacity(&v25, v7);
  re::DynamicString::operator=(&v25, a2);
  v8 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 3), &v25);
  result = v25;
  if (v25 && (BYTE8(v25) & 1) != 0)
  {
    result = (*(*v25 + 40))();
  }

  if (v8)
  {
    v10 = *v8;
    v11 = a1[37];
    if (v11 <= v10)
    {
      v23 = 0;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      v20 = MEMORY[0x1E69E9C10];
      *v24 = 136315906;
      *&v24[4] = "operator[]";
      *&v24[12] = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      *&v24[14] = 797;
      *&v24[18] = 2048;
      *&v24[20] = v10;
      *&v24[28] = 2048;
      *&v24[30] = v11;
      _os_log_send_and_compose_impl(v21, &v23, &v25, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v24, 38, v22);
      _os_crash_msg();
      __break(1u);
    }

    v12 = *(a1[39] + 20 * v10 + 10);
    *a3 = 1;
    *(a3 + 8) = v12;
  }

  else
  {
    v13 = a1[1];
    *&v24[16] = 0;
    *&v24[24] = 0;
    v14 = *(a2 + 8);
    if (v14)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 0;
    }

    *v24 = v13;
    *&v24[8] = 0;
    re::DynamicString::setCapacity(v24, v15);
    re::DynamicString::operator=(v24, a2);
    if (v24[8])
    {
      v17 = *&v24[16];
    }

    else
    {
      v17 = &v24[9];
    }

    re::DynamicString::format(&v25, v13, "Unknown joint name: %s", v16, v17);
    v18 = v25;
    v19 = v26;
    *a3 = 0;
    *(a3 + 8) = 1000;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = v18;
    *(a3 + 40) = v19;
    result = *v24;
    if (*v24 && (v24[8] & 1) != 0)
    {
      return (*(**v24 + 40))();
    }
  }

  return result;
}

unint64_t re::RigHierarchy::setModelSpaceJointTransform@<X0>(re::DynamicString **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  v40 = 0uLL;
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 0;
  }

  *(&v39 + 1) = 0;
  re::DynamicString::setCapacity(&v39, v9);
  re::DynamicString::operator=(&v39, a2);
  v10 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 3), &v39);
  if (v39 && (BYTE8(v39) & 1) != 0)
  {
    (*(*v39 + 40))();
  }

  if (v10)
  {
    v11 = *v10;
    v12 = a1[37];
    if (v12 <= *v10)
    {
      v37 = 0;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v39 = 0u;
      v28 = MEMORY[0x1E69E9C10];
      *v38 = 136315906;
      *&v38[4] = "operator[]";
      *&v38[12] = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v29 = 3;
      }

      else
      {
        v29 = 2;
      }

      *&v38[14] = 789;
      *&v38[18] = 2048;
      *&v38[20] = v11;
      *&v38[28] = 2048;
      *&v38[30] = v12;
      _os_log_send_and_compose_impl(v29, &v37, &v39, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v38, 38, v36);
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      v13 = (a1[39] + 160 * v11);
      Scale = re::EvaluationTree::extractScale(a1[2], a3);
      re::RigHierarchyJointTransform::setModelSpaceJointScale(v13, Scale);
      v11 = *v10;
      v12 = a1[37];
      if (v12 > *v10)
      {
        v15 = (a1[39] + 160 * v11);
        Rotation = re::EvaluationTree::extractRotation(a1[2], a3);
        re::RigHierarchyJointTransform::setModelSpaceJointRotation(v15, Rotation);
        v11 = *v10;
        v10 = a1[37];
        if (v10 > v11)
        {
          v17 = a1[2];
          v18 = (a1[39] + 160 * v11);
          LODWORD(v39) = 37;
          v40 = 0uLL;
          *(&v39 + 1) = 0;
          re::DynamicArray<re::EvaluationRegister>::add((v17 + 1944), &v39);
          v19 = *(v17 + 245) - 1;
          *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(v17 + 1664, v19) + 8) = a3;
          result = re::RigHierarchyJointTransform::setModelSpaceJointTranslation(v18, v19);
          *a4 = 1;
          return result;
        }

LABEL_30:
        v37 = 0;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        v33 = MEMORY[0x1E69E9C10];
        v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v38 = 136315906;
        *&v38[4] = "operator[]";
        *&v38[12] = 1024;
        if (v34)
        {
          v35 = 3;
        }

        else
        {
          v35 = 2;
        }

        *&v38[14] = 789;
        *&v38[18] = 2048;
        *&v38[20] = v11;
        *&v38[28] = 2048;
        *&v38[30] = v10;
        _os_log_send_and_compose_impl(v35, &v37, &v39, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v38, 38, v36);
        _os_crash_msg();
        __break(1u);
      }
    }

    v37 = 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v30 = MEMORY[0x1E69E9C10];
    v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v38 = 136315906;
    *&v38[4] = "operator[]";
    *&v38[12] = 1024;
    if (v31)
    {
      v32 = 3;
    }

    else
    {
      v32 = 2;
    }

    *&v38[14] = 789;
    *&v38[18] = 2048;
    *&v38[20] = v11;
    *&v38[28] = 2048;
    *&v38[30] = v12;
    _os_log_send_and_compose_impl(v32, &v37, &v39, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v38, 38, v36);
    _os_crash_msg();
    __break(1u);
    goto LABEL_30;
  }

  v21 = a1[1];
  *&v38[16] = 0;
  *&v38[24] = 0;
  v22 = *(a2 + 8);
  if (v22)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = 0;
  }

  *v38 = v21;
  *&v38[8] = 0;
  re::DynamicString::setCapacity(v38, v23);
  re::DynamicString::operator=(v38, a2);
  if (v38[8])
  {
    v25 = *&v38[16];
  }

  else
  {
    v25 = &v38[9];
  }

  re::DynamicString::format(&v39, v21, "Unknown joint name: %s", v24, v25);
  v26 = v39;
  v27 = v40;
  *a4 = 0;
  *(a4 + 8) = 1000;
  *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
  *(a4 + 24) = v26;
  *(a4 + 40) = v27;
  result = *v38;
  if (*v38 && (v38[8] & 1) != 0)
  {
    return (*(**v38 + 40))();
  }

  return result;
}

void re::RigHierarchy::setJointParent(re::DynamicString **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v41 = 0uLL;
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 0;
  }

  *(&v40 + 1) = 0;
  re::DynamicString::setCapacity(&v40, v9);
  re::DynamicString::operator=(&v40, a2);
  v10 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 3), &v40);
  v11 = v40;
  if (v40 && (BYTE8(v40) & 1) != 0)
  {
    v11 = (*(*v40 + 40))();
  }

  if (v10)
  {
    v41 = 0uLL;
    v12 = *(a3 + 8);
    if (v12)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 0;
    }

    re::DynamicString::setCapacity(&v40, v13);
    re::DynamicString::operator=(&v40, a3);
    v14 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 3), &v40);
    if (v40 && (BYTE8(v40) & 1) != 0)
    {
      (*(*v40 + 40))();
    }

    if (v14)
    {
      v15 = *v10;
      v16 = a1[32];
      if (v16 <= *v10)
      {
        v38 = 0;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v40 = 0u;
        v29 = MEMORY[0x1E69E9C10];
        *v39 = 136315906;
        *&v39[4] = "operator[]";
        *&v39[12] = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v30 = 3;
        }

        else
        {
          v30 = 2;
        }

        *&v39[14] = 789;
        *&v39[18] = 2048;
        *&v39[20] = v15;
        *&v39[28] = 2048;
        *&v39[30] = v16;
        _os_log_send_and_compose_impl(v30, &v38, &v40, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v39, 38, v37);
        _os_crash_msg();
        __break(1u);
      }

      else
      {
        v14 = *v14;
        *(a1[34] + v15) = v14;
        v10 = *v10;
        v15 = a1[37];
        if (v15 > v10)
        {
          if (v15 > v14)
          {
            re::RigHierarchyJointTransform::setParentTransform(a1[39] + 20 * v10, a1[39] + 20 * v14);
            *a4 = 1;
            return;
          }

LABEL_45:
          v38 = 0;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v40 = 0u;
          v34 = MEMORY[0x1E69E9C10];
          v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v39 = 136315906;
          *&v39[4] = "operator[]";
          *&v39[12] = 1024;
          if (v35)
          {
            v36 = 3;
          }

          else
          {
            v36 = 2;
          }

          *&v39[14] = 789;
          *&v39[18] = 2048;
          *&v39[20] = v14;
          *&v39[28] = 2048;
          *&v39[30] = v15;
          _os_log_send_and_compose_impl(v36, &v38, &v40, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v39, 38, v37);
          _os_crash_msg();
          __break(1u);
        }
      }

      v38 = 0;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v40 = 0u;
      v31 = MEMORY[0x1E69E9C10];
      v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v39 = 136315906;
      *&v39[4] = "operator[]";
      *&v39[12] = 1024;
      if (v32)
      {
        v33 = 3;
      }

      else
      {
        v33 = 2;
      }

      *&v39[14] = 789;
      *&v39[18] = 2048;
      *&v39[20] = v10;
      *&v39[28] = 2048;
      *&v39[30] = v15;
      _os_log_send_and_compose_impl(v33, &v38, &v40, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v39, 38, v37);
      _os_crash_msg();
      __break(1u);
      goto LABEL_45;
    }

    v22 = a1[1];
    *&v39[16] = 0;
    *&v39[24] = 0;
    v23 = *(a3 + 8);
    if (v23)
    {
      v24 = v23 + 1;
    }

    else
    {
      v24 = 0;
    }

    *v39 = v22;
    *&v39[8] = 0;
    re::DynamicString::setCapacity(v39, v24);
    re::DynamicString::operator=(v39, a3);
    if (v39[8])
    {
      v26 = *&v39[16];
    }

    else
    {
      v26 = &v39[9];
    }

    re::DynamicString::format(&v40, v22, "Unknown joint parent name: %s", v25, v26);
  }

  else
  {
    v17 = a1[1];
    *&v39[16] = 0;
    *&v39[24] = 0;
    v18 = *(a2 + 8);
    if (v18)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 0;
    }

    *v39 = v17;
    *&v39[8] = 0;
    re::DynamicString::setCapacity(v39, v19);
    re::DynamicString::operator=(v39, a2);
    if (v39[8])
    {
      v21 = *&v39[16];
    }

    else
    {
      v21 = &v39[9];
    }

    re::DynamicString::format(&v40, v17, "Unknown joint name: %s", v20, v21);
  }

  v27 = v40;
  v28 = v41;
  *a4 = 0;
  *(a4 + 8) = 1000;
  *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
  *(a4 + 24) = v27;
  *(a4 + 40) = v28;
  if (*v39 && (v39[8] & 1) != 0)
  {
    (*(**v39 + 40))();
  }
}

void re::RigHierarchy::clearJointParent(re::DynamicString **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v27 = 0uLL;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  *(&v26 + 1) = 0;
  re::DynamicString::setCapacity(&v26, v7);
  re::DynamicString::operator=(&v26, a2);
  v8 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 3), &v26);
  if (v26 && (BYTE8(v26) & 1) != 0)
  {
    (*(*v26 + 40))();
  }

  if (v8)
  {
    v9 = *v8;
    v10 = a1[32];
    if (v10 <= *v8)
    {
      v24 = 0;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
      v18 = MEMORY[0x1E69E9C10];
      *v25 = 136315906;
      *&v25[4] = "operator[]";
      *&v25[12] = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      *&v25[14] = 789;
      *&v25[18] = 2048;
      *&v25[20] = v9;
      *&v25[28] = 2048;
      *&v25[30] = v10;
      _os_log_send_and_compose_impl(v19, &v24, &v26, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v25, 38, v23);
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      *(a1[34] + v9) = -1;
      v9 = *v8;
      v8 = a1[37];
      if (v8 > v9)
      {
        re::RigHierarchyJointTransform::setParentTransform(a1[39] + 20 * v9, 0);
        *a3 = 1;
        return;
      }
    }

    v24 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v20 = MEMORY[0x1E69E9C10];
    v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v25 = 136315906;
    *&v25[4] = "operator[]";
    *&v25[12] = 1024;
    if (v21)
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    *&v25[14] = 789;
    *&v25[18] = 2048;
    *&v25[20] = v9;
    *&v25[28] = 2048;
    *&v25[30] = v8;
    _os_log_send_and_compose_impl(v22, &v24, &v26, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v25, 38, v23);
    _os_crash_msg();
    __break(1u);
  }

  v11 = a1[1];
  *&v25[16] = 0;
  *&v25[24] = 0;
  v12 = *(a2 + 8);
  if (v12)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = 0;
  }

  *v25 = v11;
  *&v25[8] = 0;
  re::DynamicString::setCapacity(v25, v13);
  re::DynamicString::operator=(v25, a2);
  if (v25[8])
  {
    v15 = *&v25[16];
  }

  else
  {
    v15 = &v25[9];
  }

  re::DynamicString::format(&v26, v11, "Unknown joint name: %s", v14, v15);
  v16 = v26;
  v17 = v27;
  *a3 = 0;
  *(a3 + 8) = 1000;
  *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
  *(a3 + 24) = v16;
  *(a3 + 40) = v17;
  if (*v25 && (v25[8] & 1) != 0)
  {
    (*(**v25 + 40))();
  }
}

uint64_t re::RigHierarchy::getLocalSpaceJointScale@<X0>(re::DynamicString **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v26 = 0uLL;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  *(&v25 + 1) = 0;
  re::DynamicString::setCapacity(&v25, v7);
  re::DynamicString::operator=(&v25, a2);
  v8 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 3), &v25);
  result = v25;
  if (v25 && (BYTE8(v25) & 1) != 0)
  {
    result = (*(*v25 + 40))();
  }

  if (v8)
  {
    v10 = *v8;
    v11 = a1[37];
    if (v11 <= v10)
    {
      v23 = 0;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      v20 = MEMORY[0x1E69E9C10];
      *v24 = 136315906;
      *&v24[4] = "operator[]";
      *&v24[12] = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      *&v24[14] = 797;
      *&v24[18] = 2048;
      *&v24[20] = v10;
      *&v24[28] = 2048;
      *&v24[30] = v11;
      _os_log_send_and_compose_impl(v21, &v23, &v25, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v24, 38, v22);
      _os_crash_msg();
      __break(1u);
    }

    v12 = *(a1[39] + 20 * v10 + 1);
    *a3 = 1;
    *(a3 + 8) = v12;
  }

  else
  {
    v13 = a1[1];
    *&v24[16] = 0;
    *&v24[24] = 0;
    v14 = *(a2 + 8);
    if (v14)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 0;
    }

    *v24 = v13;
    *&v24[8] = 0;
    re::DynamicString::setCapacity(v24, v15);
    re::DynamicString::operator=(v24, a2);
    if (v24[8])
    {
      v17 = *&v24[16];
    }

    else
    {
      v17 = &v24[9];
    }

    re::DynamicString::format(&v25, v13, "Unknown joint name: %s", v16, v17);
    v18 = v25;
    v19 = v26;
    *a3 = 0;
    *(a3 + 8) = 1000;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = v18;
    *(a3 + 40) = v19;
    result = *v24;
    if (*v24 && (v24[8] & 1) != 0)
    {
      return (*(**v24 + 40))();
    }
  }

  return result;
}

uint64_t re::RigHierarchy::getLocalSpaceJointRotation@<X0>(re::DynamicString **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v26 = 0uLL;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  *(&v25 + 1) = 0;
  re::DynamicString::setCapacity(&v25, v7);
  re::DynamicString::operator=(&v25, a2);
  v8 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 3), &v25);
  result = v25;
  if (v25 && (BYTE8(v25) & 1) != 0)
  {
    result = (*(*v25 + 40))();
  }

  if (v8)
  {
    v10 = *v8;
    v11 = a1[37];
    if (v11 <= v10)
    {
      v23 = 0;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      v20 = MEMORY[0x1E69E9C10];
      *v24 = 136315906;
      *&v24[4] = "operator[]";
      *&v24[12] = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      *&v24[14] = 797;
      *&v24[18] = 2048;
      *&v24[20] = v10;
      *&v24[28] = 2048;
      *&v24[30] = v11;
      _os_log_send_and_compose_impl(v21, &v23, &v25, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v24, 38, v22);
      _os_crash_msg();
      __break(1u);
    }

    v12 = *(a1[39] + 20 * v10 + 2);
    *a3 = 1;
    *(a3 + 8) = v12;
  }

  else
  {
    v13 = a1[1];
    *&v24[16] = 0;
    *&v24[24] = 0;
    v14 = *(a2 + 8);
    if (v14)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 0;
    }

    *v24 = v13;
    *&v24[8] = 0;
    re::DynamicString::setCapacity(v24, v15);
    re::DynamicString::operator=(v24, a2);
    if (v24[8])
    {
      v17 = *&v24[16];
    }

    else
    {
      v17 = &v24[9];
    }

    re::DynamicString::format(&v25, v13, "Unknown joint name: %s", v16, v17);
    v18 = v25;
    v19 = v26;
    *a3 = 0;
    *(a3 + 8) = 1000;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = v18;
    *(a3 + 40) = v19;
    result = *v24;
    if (*v24 && (v24[8] & 1) != 0)
    {
      return (*(**v24 + 40))();
    }
  }

  return result;
}

uint64_t re::RigHierarchy::getLocalSpaceJointTranslation@<X0>(re::DynamicString **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v26 = 0uLL;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  *(&v25 + 1) = 0;
  re::DynamicString::setCapacity(&v25, v7);
  re::DynamicString::operator=(&v25, a2);
  v8 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 3), &v25);
  result = v25;
  if (v25 && (BYTE8(v25) & 1) != 0)
  {
    result = (*(*v25 + 40))();
  }

  if (v8)
  {
    v10 = *v8;
    v11 = a1[37];
    if (v11 <= v10)
    {
      v23 = 0;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      v20 = MEMORY[0x1E69E9C10];
      *v24 = 136315906;
      *&v24[4] = "operator[]";
      *&v24[12] = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      *&v24[14] = 797;
      *&v24[18] = 2048;
      *&v24[20] = v10;
      *&v24[28] = 2048;
      *&v24[30] = v11;
      _os_log_send_and_compose_impl(v21, &v23, &v25, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v24, 38, v22);
      _os_crash_msg();
      __break(1u);
    }

    v12 = *(a1[39] + 20 * v10 + 3);
    *a3 = 1;
    *(a3 + 8) = v12;
  }

  else
  {
    v13 = a1[1];
    *&v24[16] = 0;
    *&v24[24] = 0;
    v14 = *(a2 + 8);
    if (v14)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 0;
    }

    *v24 = v13;
    *&v24[8] = 0;
    re::DynamicString::setCapacity(v24, v15);
    re::DynamicString::operator=(v24, a2);
    if (v24[8])
    {
      v17 = *&v24[16];
    }

    else
    {
      v17 = &v24[9];
    }

    re::DynamicString::format(&v25, v13, "Unknown joint name: %s", v16, v17);
    v18 = v25;
    v19 = v26;
    *a3 = 0;
    *(a3 + 8) = 1000;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = v18;
    *(a3 + 40) = v19;
    result = *v24;
    if (*v24 && (v24[8] & 1) != 0)
    {
      return (*(**v24 + 40))();
    }
  }

  return result;
}

unint64_t re::RigHierarchy::setLocalSpaceJointScale@<X0>(re::DynamicString **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v27 = 0uLL;
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 0;
  }

  *(&v26 + 1) = 0;
  re::DynamicString::setCapacity(&v26, v9);
  re::DynamicString::operator=(&v26, a2);
  v10 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 3), &v26);
  if (v26 && (BYTE8(v26) & 1) != 0)
  {
    (*(*v26 + 40))();
  }

  if (v10)
  {
    v11 = *v10;
    v12 = a1[37];
    if (v12 <= v11)
    {
      v24 = 0;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
      v21 = MEMORY[0x1E69E9C10];
      *v25 = 136315906;
      *&v25[4] = "operator[]";
      *&v25[12] = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v22 = 3;
      }

      else
      {
        v22 = 2;
      }

      *&v25[14] = 789;
      *&v25[18] = 2048;
      *&v25[20] = v11;
      *&v25[28] = 2048;
      *&v25[30] = v12;
      _os_log_send_and_compose_impl(v22, &v24, &v26, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v25, 38, v23);
      _os_crash_msg();
      __break(1u);
    }

    result = re::RigHierarchyJointTransform::setLocalSpaceJointScale(a1[39] + 20 * v11, a3);
    *a4 = 1;
  }

  else
  {
    v14 = a1[1];
    *&v25[16] = 0;
    *&v25[24] = 0;
    v15 = *(a2 + 8);
    if (v15)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 0;
    }

    *v25 = v14;
    *&v25[8] = 0;
    re::DynamicString::setCapacity(v25, v16);
    re::DynamicString::operator=(v25, a2);
    if (v25[8])
    {
      v18 = *&v25[16];
    }

    else
    {
      v18 = &v25[9];
    }

    re::DynamicString::format(&v26, v14, "Unknown joint name: %s", v17, v18);
    v19 = v26;
    v20 = v27;
    *a4 = 0;
    *(a4 + 8) = 1000;
    *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a4 + 24) = v19;
    *(a4 + 40) = v20;
    result = *v25;
    if (*v25 && (v25[8] & 1) != 0)
    {
      return (*(**v25 + 40))();
    }
  }

  return result;
}

unint64_t re::RigHierarchy::setLocalSpaceJointRotation@<X0>(re::DynamicString **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v27 = 0uLL;
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 0;
  }

  *(&v26 + 1) = 0;
  re::DynamicString::setCapacity(&v26, v9);
  re::DynamicString::operator=(&v26, a2);
  v10 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 3), &v26);
  if (v26 && (BYTE8(v26) & 1) != 0)
  {
    (*(*v26 + 40))();
  }

  if (v10)
  {
    v11 = *v10;
    v12 = a1[37];
    if (v12 <= v11)
    {
      v24 = 0;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
      v21 = MEMORY[0x1E69E9C10];
      *v25 = 136315906;
      *&v25[4] = "operator[]";
      *&v25[12] = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v22 = 3;
      }

      else
      {
        v22 = 2;
      }

      *&v25[14] = 789;
      *&v25[18] = 2048;
      *&v25[20] = v11;
      *&v25[28] = 2048;
      *&v25[30] = v12;
      _os_log_send_and_compose_impl(v22, &v24, &v26, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v25, 38, v23);
      _os_crash_msg();
      __break(1u);
    }

    result = re::RigHierarchyJointTransform::setLocalSpaceJointRotation(a1[39] + 20 * v11, a3);
    *a4 = 1;
  }

  else
  {
    v14 = a1[1];
    *&v25[16] = 0;
    *&v25[24] = 0;
    v15 = *(a2 + 8);
    if (v15)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 0;
    }

    *v25 = v14;
    *&v25[8] = 0;
    re::DynamicString::setCapacity(v25, v16);
    re::DynamicString::operator=(v25, a2);
    if (v25[8])
    {
      v18 = *&v25[16];
    }

    else
    {
      v18 = &v25[9];
    }

    re::DynamicString::format(&v26, v14, "Unknown joint name: %s", v17, v18);
    v19 = v26;
    v20 = v27;
    *a4 = 0;
    *(a4 + 8) = 1000;
    *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a4 + 24) = v19;
    *(a4 + 40) = v20;
    result = *v25;
    if (*v25 && (v25[8] & 1) != 0)
    {
      return (*(**v25 + 40))();
    }
  }

  return result;
}

unint64_t re::RigHierarchy::setLocalSpaceJointTranslation@<X0>(re::DynamicString **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v27 = 0uLL;
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 0;
  }

  *(&v26 + 1) = 0;
  re::DynamicString::setCapacity(&v26, v9);
  re::DynamicString::operator=(&v26, a2);
  v10 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 3), &v26);
  if (v26 && (BYTE8(v26) & 1) != 0)
  {
    (*(*v26 + 40))();
  }

  if (v10)
  {
    v11 = *v10;
    v12 = a1[37];
    if (v12 <= v11)
    {
      v24 = 0;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
      v21 = MEMORY[0x1E69E9C10];
      *v25 = 136315906;
      *&v25[4] = "operator[]";
      *&v25[12] = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v22 = 3;
      }

      else
      {
        v22 = 2;
      }

      *&v25[14] = 789;
      *&v25[18] = 2048;
      *&v25[20] = v11;
      *&v25[28] = 2048;
      *&v25[30] = v12;
      _os_log_send_and_compose_impl(v22, &v24, &v26, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v25, 38, v23);
      _os_crash_msg();
      __break(1u);
    }

    result = re::RigHierarchyJointTransform::setLocalSpaceJointTranslation(a1[39] + 20 * v11, a3);
    *a4 = 1;
  }

  else
  {
    v14 = a1[1];
    *&v25[16] = 0;
    *&v25[24] = 0;
    v15 = *(a2 + 8);
    if (v15)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 0;
    }

    *v25 = v14;
    *&v25[8] = 0;
    re::DynamicString::setCapacity(v25, v16);
    re::DynamicString::operator=(v25, a2);
    if (v25[8])
    {
      v18 = *&v25[16];
    }

    else
    {
      v18 = &v25[9];
    }

    re::DynamicString::format(&v26, v14, "Unknown joint name: %s", v17, v18);
    v19 = v26;
    v20 = v27;
    *a4 = 0;
    *(a4 + 8) = 1000;
    *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a4 + 24) = v19;
    *(a4 + 40) = v20;
    result = *v25;
    if (*v25 && (v25[8] & 1) != 0)
    {
      return (*(**v25 + 40))();
    }
  }

  return result;
}

uint64_t re::RigHierarchy::getModelSpaceJointScale@<X0>(re::DynamicString **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v26 = 0uLL;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  *(&v25 + 1) = 0;
  re::DynamicString::setCapacity(&v25, v7);
  re::DynamicString::operator=(&v25, a2);
  v8 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 3), &v25);
  result = v25;
  if (v25 && (BYTE8(v25) & 1) != 0)
  {
    result = (*(*v25 + 40))();
  }

  if (v8)
  {
    v10 = *v8;
    v11 = a1[37];
    if (v11 <= v10)
    {
      v23 = 0;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      v20 = MEMORY[0x1E69E9C10];
      *v24 = 136315906;
      *&v24[4] = "operator[]";
      *&v24[12] = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      *&v24[14] = 797;
      *&v24[18] = 2048;
      *&v24[20] = v10;
      *&v24[28] = 2048;
      *&v24[30] = v11;
      _os_log_send_and_compose_impl(v21, &v23, &v25, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v24, 38, v22);
      _os_crash_msg();
      __break(1u);
    }

    v12 = *(a1[39] + 20 * v10 + 4);
    *a3 = 1;
    *(a3 + 8) = v12;
  }

  else
  {
    v13 = a1[1];
    *&v24[16] = 0;
    *&v24[24] = 0;
    v14 = *(a2 + 8);
    if (v14)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 0;
    }

    *v24 = v13;
    *&v24[8] = 0;
    re::DynamicString::setCapacity(v24, v15);
    re::DynamicString::operator=(v24, a2);
    if (v24[8])
    {
      v17 = *&v24[16];
    }

    else
    {
      v17 = &v24[9];
    }

    re::DynamicString::format(&v25, v13, "Unknown joint name: %s", v16, v17);
    v18 = v25;
    v19 = v26;
    *a3 = 0;
    *(a3 + 8) = 1000;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = v18;
    *(a3 + 40) = v19;
    result = *v24;
    if (*v24 && (v24[8] & 1) != 0)
    {
      return (*(**v24 + 40))();
    }
  }

  return result;
}

uint64_t re::RigHierarchy::getModelSpaceJointRotation@<X0>(re::DynamicString **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v26 = 0uLL;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  *(&v25 + 1) = 0;
  re::DynamicString::setCapacity(&v25, v7);
  re::DynamicString::operator=(&v25, a2);
  v8 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 3), &v25);
  result = v25;
  if (v25 && (BYTE8(v25) & 1) != 0)
  {
    result = (*(*v25 + 40))();
  }

  if (v8)
  {
    v10 = *v8;
    v11 = a1[37];
    if (v11 <= v10)
    {
      v23 = 0;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      v20 = MEMORY[0x1E69E9C10];
      *v24 = 136315906;
      *&v24[4] = "operator[]";
      *&v24[12] = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      *&v24[14] = 797;
      *&v24[18] = 2048;
      *&v24[20] = v10;
      *&v24[28] = 2048;
      *&v24[30] = v11;
      _os_log_send_and_compose_impl(v21, &v23, &v25, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v24, 38, v22);
      _os_crash_msg();
      __break(1u);
    }

    v12 = *(a1[39] + 20 * v10 + 5);
    *a3 = 1;
    *(a3 + 8) = v12;
  }

  else
  {
    v13 = a1[1];
    *&v24[16] = 0;
    *&v24[24] = 0;
    v14 = *(a2 + 8);
    if (v14)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 0;
    }

    *v24 = v13;
    *&v24[8] = 0;
    re::DynamicString::setCapacity(v24, v15);
    re::DynamicString::operator=(v24, a2);
    if (v24[8])
    {
      v17 = *&v24[16];
    }

    else
    {
      v17 = &v24[9];
    }

    re::DynamicString::format(&v25, v13, "Unknown joint name: %s", v16, v17);
    v18 = v25;
    v19 = v26;
    *a3 = 0;
    *(a3 + 8) = 1000;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = v18;
    *(a3 + 40) = v19;
    result = *v24;
    if (*v24 && (v24[8] & 1) != 0)
    {
      return (*(**v24 + 40))();
    }
  }

  return result;
}

uint64_t re::RigHierarchy::getModelSpaceJointTranslation@<X0>(re::DynamicString **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v26 = 0uLL;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  *(&v25 + 1) = 0;
  re::DynamicString::setCapacity(&v25, v7);
  re::DynamicString::operator=(&v25, a2);
  v8 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 3), &v25);
  result = v25;
  if (v25 && (BYTE8(v25) & 1) != 0)
  {
    result = (*(*v25 + 40))();
  }

  if (v8)
  {
    v10 = *v8;
    v11 = a1[37];
    if (v11 <= v10)
    {
      v23 = 0;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      v20 = MEMORY[0x1E69E9C10];
      *v24 = 136315906;
      *&v24[4] = "operator[]";
      *&v24[12] = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      *&v24[14] = 797;
      *&v24[18] = 2048;
      *&v24[20] = v10;
      *&v24[28] = 2048;
      *&v24[30] = v11;
      _os_log_send_and_compose_impl(v21, &v23, &v25, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v24, 38, v22);
      _os_crash_msg();
      __break(1u);
    }

    v12 = *(a1[39] + 20 * v10 + 6);
    *a3 = 1;
    *(a3 + 8) = v12;
  }

  else
  {
    v13 = a1[1];
    *&v24[16] = 0;
    *&v24[24] = 0;
    v14 = *(a2 + 8);
    if (v14)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 0;
    }

    *v24 = v13;
    *&v24[8] = 0;
    re::DynamicString::setCapacity(v24, v15);
    re::DynamicString::operator=(v24, a2);
    if (v24[8])
    {
      v17 = *&v24[16];
    }

    else
    {
      v17 = &v24[9];
    }

    re::DynamicString::format(&v25, v13, "Unknown joint name: %s", v16, v17);
    v18 = v25;
    v19 = v26;
    *a3 = 0;
    *(a3 + 8) = 1000;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = v18;
    *(a3 + 40) = v19;
    result = *v24;
    if (*v24 && (v24[8] & 1) != 0)
    {
      return (*(**v24 + 40))();
    }
  }

  return result;
}

unint64_t re::RigHierarchy::setModelSpaceJointScale@<X0>(re::DynamicString **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v27 = 0uLL;
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 0;
  }

  *(&v26 + 1) = 0;
  re::DynamicString::setCapacity(&v26, v9);
  re::DynamicString::operator=(&v26, a2);
  v10 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 3), &v26);
  if (v26 && (BYTE8(v26) & 1) != 0)
  {
    (*(*v26 + 40))();
  }

  if (v10)
  {
    v11 = *v10;
    v12 = a1[37];
    if (v12 <= v11)
    {
      v24 = 0;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
      v21 = MEMORY[0x1E69E9C10];
      *v25 = 136315906;
      *&v25[4] = "operator[]";
      *&v25[12] = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v22 = 3;
      }

      else
      {
        v22 = 2;
      }

      *&v25[14] = 789;
      *&v25[18] = 2048;
      *&v25[20] = v11;
      *&v25[28] = 2048;
      *&v25[30] = v12;
      _os_log_send_and_compose_impl(v22, &v24, &v26, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v25, 38, v23);
      _os_crash_msg();
      __break(1u);
    }

    result = re::RigHierarchyJointTransform::setModelSpaceJointScale(a1[39] + 20 * v11, a3);
    *a4 = 1;
  }

  else
  {
    v14 = a1[1];
    *&v25[16] = 0;
    *&v25[24] = 0;
    v15 = *(a2 + 8);
    if (v15)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 0;
    }

    *v25 = v14;
    *&v25[8] = 0;
    re::DynamicString::setCapacity(v25, v16);
    re::DynamicString::operator=(v25, a2);
    if (v25[8])
    {
      v18 = *&v25[16];
    }

    else
    {
      v18 = &v25[9];
    }

    re::DynamicString::format(&v26, v14, "Unknown joint name: %s", v17, v18);
    v19 = v26;
    v20 = v27;
    *a4 = 0;
    *(a4 + 8) = 1000;
    *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a4 + 24) = v19;
    *(a4 + 40) = v20;
    result = *v25;
    if (*v25 && (v25[8] & 1) != 0)
    {
      return (*(**v25 + 40))();
    }
  }

  return result;
}

unint64_t re::RigHierarchy::setModelSpaceJointRotation@<X0>(re::DynamicString **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v27 = 0uLL;
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 0;
  }

  *(&v26 + 1) = 0;
  re::DynamicString::setCapacity(&v26, v9);
  re::DynamicString::operator=(&v26, a2);
  v10 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 3), &v26);
  if (v26 && (BYTE8(v26) & 1) != 0)
  {
    (*(*v26 + 40))();
  }

  if (v10)
  {
    v11 = *v10;
    v12 = a1[37];
    if (v12 <= v11)
    {
      v24 = 0;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
      v21 = MEMORY[0x1E69E9C10];
      *v25 = 136315906;
      *&v25[4] = "operator[]";
      *&v25[12] = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v22 = 3;
      }

      else
      {
        v22 = 2;
      }

      *&v25[14] = 789;
      *&v25[18] = 2048;
      *&v25[20] = v11;
      *&v25[28] = 2048;
      *&v25[30] = v12;
      _os_log_send_and_compose_impl(v22, &v24, &v26, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v25, 38, v23);
      _os_crash_msg();
      __break(1u);
    }

    result = re::RigHierarchyJointTransform::setModelSpaceJointRotation(a1[39] + 20 * v11, a3);
    *a4 = 1;
  }

  else
  {
    v14 = a1[1];
    *&v25[16] = 0;
    *&v25[24] = 0;
    v15 = *(a2 + 8);
    if (v15)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 0;
    }

    *v25 = v14;
    *&v25[8] = 0;
    re::DynamicString::setCapacity(v25, v16);
    re::DynamicString::operator=(v25, a2);
    if (v25[8])
    {
      v18 = *&v25[16];
    }

    else
    {
      v18 = &v25[9];
    }

    re::DynamicString::format(&v26, v14, "Unknown joint name: %s", v17, v18);
    v19 = v26;
    v20 = v27;
    *a4 = 0;
    *(a4 + 8) = 1000;
    *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a4 + 24) = v19;
    *(a4 + 40) = v20;
    result = *v25;
    if (*v25 && (v25[8] & 1) != 0)
    {
      return (*(**v25 + 40))();
    }
  }

  return result;
}

unint64_t re::RigHierarchy::setModelSpaceJointTranslation@<X0>(re::DynamicString **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v27 = 0uLL;
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 0;
  }

  *(&v26 + 1) = 0;
  re::DynamicString::setCapacity(&v26, v9);
  re::DynamicString::operator=(&v26, a2);
  v10 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 3), &v26);
  if (v26 && (BYTE8(v26) & 1) != 0)
  {
    (*(*v26 + 40))();
  }

  if (v10)
  {
    v11 = *v10;
    v12 = a1[37];
    if (v12 <= v11)
    {
      v24 = 0;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
      v21 = MEMORY[0x1E69E9C10];
      *v25 = 136315906;
      *&v25[4] = "operator[]";
      *&v25[12] = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v22 = 3;
      }

      else
      {
        v22 = 2;
      }

      *&v25[14] = 789;
      *&v25[18] = 2048;
      *&v25[20] = v11;
      *&v25[28] = 2048;
      *&v25[30] = v12;
      _os_log_send_and_compose_impl(v22, &v24, &v26, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v25, 38, v23);
      _os_crash_msg();
      __break(1u);
    }

    result = re::RigHierarchyJointTransform::setModelSpaceJointTranslation(a1[39] + 20 * v11, a3);
    *a4 = 1;
  }

  else
  {
    v14 = a1[1];
    *&v25[16] = 0;
    *&v25[24] = 0;
    v15 = *(a2 + 8);
    if (v15)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 0;
    }

    *v25 = v14;
    *&v25[8] = 0;
    re::DynamicString::setCapacity(v25, v16);
    re::DynamicString::operator=(v25, a2);
    if (v25[8])
    {
      v18 = *&v25[16];
    }

    else
    {
      v18 = &v25[9];
    }

    re::DynamicString::format(&v26, v14, "Unknown joint name: %s", v17, v18);
    v19 = v26;
    v20 = v27;
    *a4 = 0;
    *(a4 + 8) = 1000;
    *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a4 + 24) = v19;
    *(a4 + 40) = v20;
    result = *v25;
    if (*v25 && (v25[8] & 1) != 0)
    {
      return (*(**v25 + 40))();
    }
  }

  return result;
}

uint64_t re::RigHierarchy::getBindPoseHierarchy@<X0>(re::RigHierarchy *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 44) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  *(a3 + 60) = 0x7FFFFFFFLL;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  *(a3 + 108) = 0x7FFFFFFFLL;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  *(a3 + 120) = 0;
  *(a3 + 144) = 0;
  v4 = (a3 + 312);
  *(a3 + 352) = 0;
  *(a3 + 152) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 184) = 0;
  *(a3 + 224) = 0;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 264) = 0;
  *(a3 + 248) = 0u;
  *(a3 + 232) = 0u;
  *(a3 + 304) = 0;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 344) = 0;
  *v4 = 0u;
  v4[1] = 0u;
  v5 = *this;
  v6 = *(this + 1);
  v7 = *(this + 2);
  re::RigHierarchy::jointDescription(this, a2, &v11);
  v8 = v12;
  re::RigHierarchy::init(a3, v5, v6, v7, v13, v12);
  result = v11;
  if (v11 && v8)
  {
    v10 = *(*v11 + 40);

    return v10();
  }

  return result;
}

void re::Skeleton::~Skeleton(re::Skeleton *this)
{
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 17);
  re::FixedArray<CoreIKTransform>::deinit(this + 14);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  re::FixedArray<re::FixedArray<unsigned int>>::deinit(this + 8);
  re::FixedArray<CoreIKTransform>::deinit(this + 5);
  re::FixedArray<re::StringID>::deinit(this + 2);
  re::StringID::destroyString(this);
}

void *re::FixedArray<re::FixedArray<unsigned int>>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 24 * v2;
      do
      {
        re::FixedArray<CoreIKTransform>::deinit(v4);
        v4 += 3;
        v5 -= 24;
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

__n128 re::DynamicArray<re::EvaluationSRT>::add(_anonymous_namespace_ *this, __n128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::EvaluationSRT>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 24 * v4);
  result = *a2;
  v5[1].n128_u64[0] = a2[1].n128_u64[0];
  *v5 = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::EvaluationSRT>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::EvaluationSRT>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::EvaluationSRT>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>@<X0>(uint64_t result@<X0>, unint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X1>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = a2 % *(result + 24);
  v8 = *(*(result + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(result + 16);
  result = re::DynamicString::operator==(v10 + 56 * v8 + 8, a4);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 56 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::DynamicString::operator==(v10 + 56 * v11 + 8, a4);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 56 * v12) & 0x7FFFFFFF;
      v8 = v12;
      if (v11 == 0x7FFFFFFF)
      {
        v8 = v12;
        goto LABEL_7;
      }
    }

    v6 = v12;
  }

LABEL_7:
  *a3 = a2;
  *(a3 + 8) = v7;
  *(a3 + 12) = v6;
  *(a3 + 16) = v8;
  return result;
}

unint64_t re::Hash<re::DynamicString>::operator()(uint64_t a1, void *a2)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = a2[1];
  if (v3)
  {
    v4 = v3 >> 1;
  }

  else
  {
    v4 = v3 >> 1;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = a2 + 9;
  v6 = a2[2];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  MurmurHash3_x64_128(v7, v4, 0, v9);
  return (v9[1] + (v9[0] << 6) + (v9[0] >> 2) - 0x61C8864680B583E9) ^ v9[0];
}

_anonymous_namespace_ *re::DynamicArray<re::StringID>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::StringID>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::StringID>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::decomposeScaleRotationTranslation<float>(uint64_t result, int32x4_t *a2, void *a3, _OWORD *a4)
{
  *a4 = *(result + 48);
  v4 = *(result + 16);
  v5 = *(result + 32);
  v6 = vmulq_f32(*result, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v5, v5, 0xCuLL), v5, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL))), vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL), vextq_s8(vextq_s8(v4, v4, 0xCuLL), v4, 8uLL)));
  v7 = -1.0;
  if ((v6.f32[2] + vaddv_f32(*v6.f32)) > 0.0)
  {
    v7 = 1.0;
  }

  v8 = vmulq_f32(*result, *result);
  v9 = vmulq_f32(v4, v4);
  v10 = vadd_f32(vzip1_s32(*v8.i8, *v9.i8), vzip2_s32(*v8.i8, *v9.i8));
  v11 = vextq_s8(v8, v8, 8uLL);
  *v11.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v11.f32, *&vextq_s8(v9, v9, 8uLL)), v10));
  v12 = vmulq_f32(v5, v5);
  v11.i32[2] = sqrtf(v12.f32[2] + vaddv_f32(*v12.f32));
  v13 = vmulq_n_f32(v11, v7);
  *a2 = v13;
  v14 = v13.i64[1];
  v15 = vdupq_laneq_s32(v13, 2);
  v16 = v13.i64[0];
  v17 = vdivq_f32(*result, vdupq_lane_s32(*v13.i8, 0));
  v18 = vdivq_f32(*(result + 16), vdupq_lane_s32((__PAIR128__(v14, v16) >> 32), 0));
  v19 = vdivq_f32(*(result + 32), v15);
  v20 = vmulq_f32(v17, v17);
  v15.f32[0] = vaddv_f32(*v20.f32);
  v20.i32[1] = 0;
  *&v21 = v20.f32[2] + v15.f32[0];
  *v15.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v20.f32[2] + v15.f32[0]));
  *v15.f32 = vmul_f32(*v15.f32, vrsqrts_f32(v21, vmul_f32(*v15.f32, *v15.f32)));
  v22 = vmulq_n_f32(v17, vmul_f32(*v15.f32, vrsqrts_f32(v21, vmul_f32(*v15.f32, *v15.f32))).f32[0]);
  v23 = vmulq_f32(v22, v18);
  v24 = vmulq_f32(v22, v22);
  v24.f32[0] = v24.f32[2] + vaddv_f32(*v24.f32);
  v25 = vsubq_f32(v18, vmulq_n_f32(v22, (v23.f32[2] + vaddv_f32(*v23.f32)) / v24.f32[0]));
  v26 = vmulq_f32(v25, v25);
  *&v27 = v26.f32[2] + vaddv_f32(*v26.f32);
  *v26.f32 = vrsqrte_f32(v27);
  *v26.f32 = vmul_f32(*v26.f32, vrsqrts_f32(v27, vmul_f32(*v26.f32, *v26.f32)));
  v28 = vmulq_n_f32(v25, vmul_f32(*v26.f32, vrsqrts_f32(v27, vmul_f32(*v26.f32, *v26.f32))).f32[0]);
  v29 = vmulq_f32(v22, v19);
  v30 = vsubq_f32(v19, vmulq_n_f32(v22, (v29.f32[2] + vaddv_f32(*v29.f32)) / v24.f32[0]));
  v31 = vmulq_f32(v19, v28);
  v32 = vmulq_f32(v28, v28);
  v33 = vsubq_f32(v30, vmulq_n_f32(v28, (v31.f32[2] + vaddv_f32(*v31.f32)) / (v32.f32[2] + vaddv_f32(*v32.f32))));
  v34 = vmulq_f32(v33, v33);
  v32.f32[0] = v34.f32[2] + vaddv_f32(*v34.f32);
  *v34.f32 = vrsqrte_f32(v32.u32[0]);
  *v34.f32 = vmul_f32(*v34.f32, vrsqrts_f32(v32.u32[0], vmul_f32(*v34.f32, *v34.f32)));
  v35 = vmulq_n_f32(v33, vmul_f32(*v34.f32, vrsqrts_f32(v32.u32[0], vmul_f32(*v34.f32, *v34.f32))).f32[0]);
  v36 = (v22.f32[0] + v28.f32[1]) + v35.f32[2];
  if (v36 >= 0.0)
  {
    v46 = sqrtf(v36 + 1.0);
    v47 = v46 + v46;
    v20.f32[0] = v46 + v46;
    v48 = vrecpe_f32(*v20.f32);
    v49 = vmul_f32(v48, vrecps_f32(*v20.f32, v48));
    v50 = vmul_f32(v49, vrecps_f32(*v20.f32, v49)).f32[0];
    v42 = (v28.f32[2] - v35.f32[1]) * v50;
    v43 = (v35.f32[0] - v22.f32[2]) * v50;
    v44 = (v22.f32[1] - v28.f32[0]) * v50;
    v51 = v47 * 0.25;
  }

  else
  {
    if (v22.f32[0] < v28.f32[1] || v22.f32[0] < v35.f32[2])
    {
      v52 = 1.0 - v22.f32[0];
      if (v28.f32[1] >= v35.f32[2])
      {
        v57 = sqrtf(v28.f32[1] + (v52 - v35.f32[2]));
        v58 = v57 + v57;
        v59 = vrecpe_f32(COERCE_UNSIGNED_INT(v57 + v57));
        v60 = vmul_f32(v59, vrecps_f32(COERCE_UNSIGNED_INT(v57 + v57), v59));
        v41 = vmul_f32(v60, vrecps_f32(COERCE_UNSIGNED_INT(v57 + v57), v60)).f32[0];
        v42 = (v22.f32[1] + v28.f32[0]) * v41;
        v43 = v58 * 0.25;
        v44 = (v28.f32[2] + v35.f32[1]) * v41;
        v45 = v35.f32[0] - v22.f32[2];
      }

      else
      {
        v53 = sqrtf((v52 - v28.f32[1]) + v35.f32[2]);
        v54 = v53 + v53;
        v55 = vrecpe_f32(COERCE_UNSIGNED_INT(v53 + v53));
        v56 = vmul_f32(v55, vrecps_f32(COERCE_UNSIGNED_INT(v53 + v53), v55));
        v41 = vmul_f32(v56, vrecps_f32(COERCE_UNSIGNED_INT(v53 + v53), v56)).f32[0];
        v42 = (v22.f32[2] + v35.f32[0]) * v41;
        v43 = (v28.f32[2] + v35.f32[1]) * v41;
        v44 = v54 * 0.25;
        v45 = v22.f32[1] - v28.f32[0];
      }
    }

    else
    {
      v37 = sqrtf(v22.f32[0] + ((1.0 - v28.f32[1]) - v35.f32[2]));
      *&v38 = v37 + v37;
      v39 = vrecpe_f32(v38);
      v40 = vmul_f32(v39, vrecps_f32(v38, v39));
      v41 = vmul_f32(v40, vrecps_f32(v38, v40)).f32[0];
      v42 = *&v38 * 0.25;
      v43 = (v22.f32[1] + v28.f32[0]) * v41;
      v44 = (v22.f32[2] + v35.f32[0]) * v41;
      v45 = v28.f32[2] - v35.f32[1];
    }

    v51 = v45 * v41;
  }

  *a3 = __PAIR64__(LODWORD(v43), LODWORD(v42));
  a3[1] = __PAIR64__(LODWORD(v51), LODWORD(v44));
  return result;
}

void *re::DynamicArray<re::RigHierarchyJointDescription>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigHierarchyJointDescription>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xB0uLL))
        {
          v2 = 176 * a2;
          result = (*(*result + 32))(result, 176 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_20;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 176, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v20, v22);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v21, v23);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_20:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = &v8[11 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          v11[2] = *(v8 + 2);
          *v11 = v12;
          v13 = *(v8 + 32);
          *(v11 + 32) = v13;
          if (v13 == 1)
          {
            v14 = v8[3];
            v15 = v8[5];
            *(v11 + 4) = v8[4];
            *(v11 + 5) = v15;
            *(v11 + 3) = v14;
          }

          v16 = *(v8 + 96);
          *(v11 + 96) = v16;
          if (v16 == 1)
          {
            v17 = v8[7];
            v18 = v8[8];
            v19 = v8[10];
            *(v11 + 9) = v8[9];
            *(v11 + 10) = v19;
            *(v11 + 7) = v17;
            *(v11 + 8) = v18;
          }

          v8 += 11;
          v11 += 22;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_20;
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::RigHierarchyJointDescription>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::RigHierarchyJointDescription>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RigHierarchyJointDescription>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>@<X0>(uint64_t result@<X0>, const char **a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v7) = 0;
    goto LABEL_17;
  }

  v7 = a3 % *(result + 24);
  v8 = *(*(result + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_17:
    v8 = 0x7FFFFFFF;
    goto LABEL_18;
  }

  v9 = *(result + 16);
  v10 = *a2;
  v11 = v9 + 56 * v8;
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);
  v14 = (v11 + 17);
  if (v12)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  result = strcmp(v15, *a2);
  if (!result)
  {
    v6 = v8;
    goto LABEL_17;
  }

  v16 = *(v9 + 56 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v16 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v17 = v16;
      v18 = v9 + 56 * v16;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      v21 = v18 + 17;
      v22 = ((v19 & 1) != 0 ? v20 : v21);
      result = strcmp(v22, v10);
      if (!result)
      {
        break;
      }

      v16 = *(v9 + 56 * v17) & 0x7FFFFFFF;
      v8 = v17;
      if (v16 == 0x7FFFFFFF)
      {
        v8 = v17;
        goto LABEL_18;
      }
    }

    v6 = v17;
  }

LABEL_18:
  *a4 = a3;
  *(a4 + 8) = v7;
  *(a4 + 12) = v6;
  *(a4 + 16) = v8;
  return result;
}

size_t re::Hash<re::DynamicString>::operator()(int a1, char *__s)
{
  v4[2] = *MEMORY[0x1E69E9840];
  result = strlen(__s);
  if (result)
  {
    MurmurHash3_x64_128(__s, result, 0, v4);
    return (v4[1] + (v4[0] << 6) + (v4[0] >> 2) - 0x61C8864680B583E9) ^ v4[0];
  }

  return result;
}

uint64_t re::make::shared::object<re::SkeletalPoseJointDefinition,re::FixedArray<re::StringID>,re::Skeleton>@<X0>(re *a1@<X0>, const StringID *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = re::globalAllocators(a1);
  v7 = (*(*v6[2] + 32))(v6[2], 280, 8);
  result = re::SkeletalPoseJointDefinition::SkeletalPoseJointDefinition(v7, a1, a2);
  *a3 = result;
  return result;
}

uint64_t re::EvaluationContextManager::bindInputHandle<re::GenericSRT<float>>(void *a1, uint64_t a2, uint64_t *a3, char a4)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a3[3])
  {
    return 0;
  }

  v7 = *a3;
  v8 = &unk_1EE187000;
  {
    v18 = a2;
    v8 = &unk_1EE187000;
    a2 = v18;
    if (v17)
    {
      re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
      v8 = &unk_1EE187000;
      a2 = v18;
    }
  }

  if (v7 != v8[248])
  {
    return 0;
  }

  v10 = *(a2 + 8);
  v22 = v10;
  if (v10 >= a1[133])
  {
    re::DynamicArray<re::EvaluationContextManager::BindPointReference>::resize(a1 + 131, v10 + 1);
  }

  else if (*(a1[135] + 56 * v10 + 24))
  {
    return 0;
  }

  re::DynamicArray<unsigned long>::add((a1 + 176), &v22);
  v19 = *a3;
  re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(v20, a3 + 1);
  v21 = a4;
  v11 = v22;
  v12 = a1[133];
  if (v12 <= v22)
  {
    v23 = 0;
    memset(v32, 0, sizeof(v32));
    v14 = MEMORY[0x1E69E9C10];
    v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    if (v15)
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v27 = 789;
    v28 = 2048;
    v29 = v11;
    v30 = 2048;
    v31 = v12;
    _os_log_send_and_compose_impl(v16, &v23, v32, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v18, v19);
    _os_crash_msg();
    __break(1u);
  }

  v13 = a1[135] + 56 * v22;
  *v13 = v19;
  re::DynamicArray<re::RigDataValue>::operator=(v13 + 8, v20);
  *(v13 + 48) = v21;
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v20);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v20);
  return 1;
}

void *re::DynamicArray<re::EvaluationContextManager::BindPointReference>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 56 * a2 + 8;
    v9 = a2;
    do
    {
      v10 = v3[4];
      re::DynamicArray<re::BindPoint::BindPointData>::deinit(v10 + v8);
      result = re::DynamicArray<re::BindPoint::BindPointData>::deinit(v10 + v8);
      ++v9;
      v8 += 56;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::EvaluationContextManager::BindPointReference>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 56 * v4;
      do
      {
        v7 = v3[4] + v6;
        *(v7 + 40) = 0;
        *v7 = 0uLL;
        *(v7 + 16) = 0uLL;
        *(v7 + 32) = 0;
        *(v7 + 48) = 0;
        v6 += 56;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

uint64_t re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::BindPoint::BindPointData>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::BindPoint::BindPointData>::copy(a1, a2);
  }

  return a1;
}

BOOL re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 56 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
      v9 = v8;
    }

    else
    {
      *(v6 + 56 * v5) = *(v6 + 56 * v5) & 0x80000000 | v7;
      v8 = v2;
      v9 = v2;
    }

    v10 = (v6 + 56 * v8);
    v11 = *v10;
    if (*v10 < 0)
    {
      *v10 = v11 & 0x7FFFFFFF;
      re::DynamicString::deinit((v10 + 2));
      v12 = a2[3];
      v6 = *(a1 + 16);
      v11 = *(v6 + 56 * v12);
      v9 = v12;
    }

    else
    {
      v12 = v9;
    }

    v13 = *(a1 + 40);
    *(v6 + 56 * v12) = *(a1 + 36) | v11 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v13 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

BOOL re::TransitionConditionInt::evaluate(re::TransitionConditionInt *this, const re::StateParameterBlackboard *a2)
{
  v9 = 0;
  result = re::StateParameterBlackboard::getStateParameterIntValue(a2, (this + 8), &v9);
  if (result)
  {
    v4 = *(this + 4);
    v5 = *(this + 24);
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        return v9 <= v4;
      }

      v6 = v9 > v4;
      v7 = v9 >= v4;
      if (v5 != 5)
      {
        v7 = 0;
      }

      v8 = v5 == 4;
    }

    else
    {
      if (!*(this + 24))
      {
        return v9 == v4;
      }

      v6 = v9 != v4;
      v7 = v9 < v4;
      if (v5 != 2)
      {
        v7 = 0;
      }

      v8 = v5 == 1;
    }

    if (v8)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  return result;
}

BOOL re::StateParameterBlackboard::getStateParameterIntValue(re::StateParameterBlackboard *this, const re::StringID *a2, uint64_t *a3)
{
  v5 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 8, a2, (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31), &v7);
  return v8 != 0x7FFFFFFF && (re::StateParameterInt::getValue(*(*(this + 3) + 32 * v8 + 24), a3) & 1) != 0;
}

BOOL re::TransitionConditionFloat::evaluate(re::TransitionConditionFloat *this, const re::StateParameterBlackboard *a2)
{
  v7 = 0.0;
  StateParameterFloatValue = re::StateParameterBlackboard::getStateParameterFloatValue(a2, (this + 8), &v7);
  result = 0;
  if (StateParameterFloatValue)
  {
    result = 0;
    v5 = *(this + 7);
    v6 = *(this + 24);
    if (v6 > 2)
    {
      switch(v6)
      {
        case 3u:
          return v7 <= v5;
        case 4u:
          return v7 > v5;
        case 5u:
          return v7 >= v5;
      }
    }

    else if (*(this + 24))
    {
      if (v6 == 1)
      {
        return v7 != v5;
      }

      else if (v6 == 2)
      {
        return v7 < v5;
      }
    }

    else
    {
      return v7 == v5;
    }
  }

  return result;
}

BOOL re::StateParameterBlackboard::getStateParameterFloatValue(re::StateParameterBlackboard *this, const re::StringID *a2, float *a3)
{
  v5 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 56, a2, (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31), &v7);
  return v8 != 0x7FFFFFFF && (re::StateParameterFloat::getValue(*(*(this + 9) + 32 * v8 + 24), a3) & 1) != 0;
}

uint64_t re::TransitionConditionBool::evaluate(re::TransitionConditionBool *this, const re::StateParameterBlackboard *a2)
{
  v5 = 0;
  StateParameterBoolValue = re::StateParameterBlackboard::getStateParameterBoolValue(a2, (this + 8), &v5);
  result = 0;
  if (StateParameterBoolValue)
  {
  }

  return result;
}

BOOL re::StateParameterBlackboard::getStateParameterBoolValue(re::StateParameterBlackboard *this, const re::StringID *a2, BOOL *a3)
{
  v5 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 104, a2, (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31), &v7);
  return v8 != 0x7FFFFFFF && (re::StateParameterBool::getValue(*(*(this + 15) + 32 * v8 + 24), a3) & 1) != 0;
}

uint64_t anonymous namespace::evaluateTransitionCondition<BOOL>(int a1, int a2, int a3)
{
  v3 = a1 ^ 1 | a2;
  v4 = a1 & ~a2;
  v5 = a2 ^ 1 | a1;
  if (a3 != 5)
  {
    v5 = 0;
  }

  if (a3 != 4)
  {
    v4 = v5;
  }

  if (a3 != 3)
  {
    v3 = v4;
  }

  v6 = a1 ^ a2;
  v7 = a2 & ~a1;
  if (a3 != 2)
  {
    v7 = 0;
  }

  if (a3 != 1)
  {
    v6 = v7;
  }

  if (!a3)
  {
    v6 = a1 ^ a2 ^ 1;
  }

  if (a3 <= 2)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

uint64_t re::TransitionConditionTrigger::evaluate(re::TransitionConditionTrigger *this, const re::StateParameterBlackboard *a2)
{
  v5 = 0;
  StateParameterTriggerValue = re::StateParameterBlackboard::getStateParameterTriggerValue(a2, (this + 8), &v5);
  result = 0;
  if (StateParameterTriggerValue)
  {
  }

  return result;
}

BOOL re::StateParameterBlackboard::getStateParameterTriggerValue(re::StateParameterBlackboard *this, const re::StringID *a2, BOOL *a3)
{
  v5 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 152, a2, (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31), &v7);
  return v8 != 0x7FFFFFFF && (re::StateParameterBool::getValue(*(*(this + 21) + 32 * v8 + 24), a3) & 1) != 0;
}

void *re::TransitionConditionTrigger::setStateParameterReset(uint64_t a1, uint64_t a2, char a3)
{
  v5 = 0xBF58476D1CE4E5B9 * ((*(a1 + 8) >> 31) ^ (*(a1 + 8) >> 1));
  result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a2 + 152, (a1 + 8), (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31), &v7);
  *(*(*(a2 + 168) + 32 * v8 + 24) + 56) = a3;
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::TransitionCondition *>::add(_anonymous_namespace_ *this, void *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<float *>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  *(*(v3 + 4) + 8 * v4) = *a2;
  *(v3 + 2) = v4 + 1;
  ++*(v3 + 6);
  return this;
}

uint64_t re::StateTransition::canTransition(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v5 = *(a1 + 32);
  v6 = 8 * v2;
  do
  {
    if (((***v5)(*v5, a2) & 1) == 0)
    {
      return 0;
    }

    ++v5;
    v6 -= 8;
  }

  while (v6);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return 1;
  }

  v8 = *(a1 + 32);
  v9 = 8 * v7;
  do
  {
    v10 = *v8++;
    v11 = 1;
    (*(*v10 + 8))(v10, a2, 1);
    v9 -= 8;
  }

  while (v9);
  return v11;
}

re *re::internal::destroyPersistent<re::TransitionCondition>(re *result, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    *a3 = &unk_1F5CADBD0;
    re::StringID::destroyString((a3 + 1));
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::StateMachineState::addIntTransitionCondition(uint64_t a1, void *a2, const StringID *a3, char a4, uint64_t a5)
{
  v5 = *(a1 + 24);
  if (!v5)
  {
    return 0;
  }

  v10 = *(a1 + 40);
  v11 = 8 * v5;
  while (1)
  {
    v12 = *v10;
    v13 = re::StringID::operator==(*v10 + 5, a2);
    if (v13)
    {
      break;
    }

    ++v10;
    v11 -= 8;
    if (!v11)
    {
      return 0;
    }
  }

  v15 = re::globalAllocators(v13);
  v16 = (*(*v15[2] + 32))(v15[2], 40, 8);
  *v16 = &unk_1F5CADBD0;
  re::StringID::StringID((v16 + 8), a3);
  *(v16 + 24) = a4;
  *v16 = &unk_1F5CADAE0;
  *(v16 + 32) = a5;
  v17 = v16;
  re::DynamicArray<re::TransitionCondition *>::add(v12, &v17);
  return 1;
}

uint64_t re::StateMachineState::addFloatTransitionCondition(uint64_t a1, void *a2, const StringID *a3, char a4, float a5)
{
  v5 = *(a1 + 24);
  if (!v5)
  {
    return 0;
  }

  v10 = *(a1 + 40);
  v11 = 8 * v5;
  while (1)
  {
    v12 = *v10;
    v13 = re::StringID::operator==(*v10 + 5, a2);
    if (v13)
    {
      break;
    }

    ++v10;
    v11 -= 8;
    if (!v11)
    {
      return 0;
    }
  }

  v15 = re::globalAllocators(v13);
  v16 = (*(*v15[2] + 32))(v15[2], 32, 8);
  *v16 = &unk_1F5CADBD0;
  re::StringID::StringID((v16 + 8), a3);
  *(v16 + 24) = a4;
  *v16 = &unk_1F5CADB28;
  *(v16 + 28) = a5;
  v17 = v16;
  re::DynamicArray<re::TransitionCondition *>::add(v12, &v17);
  return 1;
}

uint64_t re::StateMachineState::addBoolTransitionCondition(uint64_t a1, void *a2, const StringID *a3, char a4, char a5)
{
  v5 = *(a1 + 24);
  if (!v5)
  {
    return 0;
  }

  v10 = *(a1 + 40);
  v11 = 8 * v5;
  while (1)
  {
    v12 = *v10;
    v13 = re::StringID::operator==(*v10 + 5, a2);
    if (v13)
    {
      break;
    }

    ++v10;
    v11 -= 8;
    if (!v11)
    {
      return 0;
    }
  }

  v15 = re::globalAllocators(v13);
  v16 = (*(*v15[2] + 32))(v15[2], 32, 8);
  *v16 = &unk_1F5CADBD0;
  re::StringID::StringID((v16 + 8), a3);
  *(v16 + 24) = a4;
  *v16 = &unk_1F5CADB60;
  *(v16 + 25) = a5;
  v17 = v16;
  re::DynamicArray<re::TransitionCondition *>::add(v12, &v17);
  return 1;
}

uint64_t re::StateMachineState::addTriggerTransitionCondition(re::StateMachineState *this, const re::StringID *a2, const StringID *a3)
{
  v3 = *(this + 3);
  if (!v3)
  {
    return 0;
  }

  v6 = *(this + 5);
  v7 = 8 * v3;
  while (1)
  {
    v8 = *v6;
    v9 = re::StringID::operator==(*v6 + 5, a2);
    if (v9)
    {
      break;
    }

    ++v6;
    v7 -= 8;
    if (!v7)
    {
      return 0;
    }
  }

  v11 = re::globalAllocators(v9);
  v12 = (*(*v11[2] + 32))(v11[2], 32, 8);
  *v12 = &unk_1F5CADBD0;
  re::StringID::StringID((v12 + 8), a3);
  *(v12 + 24) = 256;
  *v12 = &unk_1F5CADB98;
  v13 = v12;
  re::DynamicArray<re::TransitionCondition *>::add(v8, &v13);
  return 1;
}

uint64_t re::StateMachineState::canTransition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 108) > 0.0)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return 0;
  }

  v6 = *(a1 + 40);
  v7 = 8 * v3;
  while (1)
  {
    v8 = *v6;
    if (!a3 || v8 != a3) && (re::StateTransition::canTransition(*v6, a2))
    {
      break;
    }

    ++v6;
    v7 -= 8;
    if (!v7)
    {
      return 0;
    }
  }

  return v8;
}

float re::StateMachineState::internalEnterState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 64);
  if (v9)
  {
    v11 = *(a1 + 80);
    v12 = 8 * v9;
    do
    {
      v13 = *v11++;
      (*(*v13 + 136))(v13, a2, a3, a4, a5);
      v12 -= 8;
    }

    while (v12);
  }

  (*(*a1 + 32))(a1, a2, a3, a4, a5);
  result = *(a1 + 104);
  *(a1 + 108) = result;
  return result;
}

re *re::StateMachineState::deinit(re *this)
{
  v1 = this;
  v2 = *(this + 3);
  if (v2)
  {
    v3 = *(this + 5);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      this = re::internal::destroyPersistent<re::StateTransition>("deinit", 326, v5);
      v4 -= 8;
    }

    while (v4);
  }

  v6 = *(v1 + 8);
  if (v6)
  {
    v7 = *(v1 + 10);
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      this = re::internal::destroyPersistent<re::StateCommand>("deinit", 331, v9);
      v8 -= 8;
    }

    while (v8);
  }

  return this;
}

re *re::internal::destroyPersistent<re::StateTransition>(re *result, uint64_t a2, re::StateTransition *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::StateTransition::~StateTransition(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

re *re::internal::destroyPersistent<re::StateCommand>(re *result, uint64_t a2, void (***a3)(void))
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    (**a3)(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

re *re::StateGraph::addAnyState(re *this, re::StateMachineState *a2)
{
  if (a2)
  {
    v3 = this;
    v4 = *(this + 8);
    if (v4)
    {
      v5 = re::globalAllocators(this)[2];
      (**v4)(v4);
      this = (*(*v5 + 40))(v5, v4);
    }

    *(v3 + 8) = a2;
  }

  return this;
}

re *re::internal::destroyPersistent<re::StateMachineState>(re *result, uint64_t a2, void (***a3)(void))
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    (**a3)(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

BOOL re::StateGraph::createStateTransition(re::StateGraph *a1, uint64_t a2, re::StringID *a3, void *a4, const re::StringID *a5, StringID *a6, char a7, float a8)
{
  v50 = *MEMORY[0x1E69E9840];
  v38 = -1;
  StateByName = re::StateGraph::findStateByName(a1, a3, &v39);
  StateGraphByName = re::StateGraph::findStateGraphByName(a2, a4);
  v16 = StateGraphByName;
  v17 = *(a2 + 16);
  if (v17 <= StateGraphByName)
  {
    v40 = 0;
    memset(v49, 0, sizeof(v49));
    v34 = MEMORY[0x1E69E9C10];
    v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v41 = 136315906;
    v42 = "operator[]";
    v43 = 1024;
    if (v35)
    {
      v36 = 3;
    }

    else
    {
      v36 = 2;
    }

    v44 = 797;
    v45 = 2048;
    v46 = v16;
    v47 = 2048;
    v48 = v17;
    _os_log_send_and_compose_impl(v36, &v40, v49, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v41, 38, v37, v38);
    _os_crash_msg();
    __break(1u);
  }

  v18 = re::StateGraph::findStateByName(*(*(a2 + 32) + 8 * StateGraphByName), a5, &v38);
  result = 0;
  if (StateByName && v18)
  {
    v20 = v38;
    v21 = *(StateByName + 24);
    if (v21)
    {
      v22 = *(StateByName + 40);
      v23 = 8 * v21;
      while (1)
      {
        result = re::StringID::operator==((*v22 + 40), a6);
        if (result)
        {
          return 0;
        }

        v22 += 8;
        v23 -= 8;
        if (!v23)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      v24 = re::globalAllocators(result);
      v25 = (*(*v24[2] + 32))(v24[2], 80, 8);
      *(v25 + 32) = 0;
      *(v25 + 8) = 0;
      *(v25 + 16) = 0;
      *v25 = 0;
      *(v25 + 24) = 0;
      v26 = re::StringID::StringID((v25 + 40), a6);
      *(v25 + 56) = v16;
      *(v25 + 64) = v20;
      *(v25 + 72) = a8;
      *(v25 + 76) = a7;
      v27 = *(StateByName + 16);
      v28 = *(StateByName + 24);
      if (v28 >= v27)
      {
        v29 = v28 + 1;
        if (v27 < v28 + 1)
        {
          if (*(StateByName + 8))
          {
            v30 = 2 * v27;
            v31 = v27 == 0;
            v32 = 8;
            if (!v31)
            {
              v32 = v30;
            }

            if (v32 <= v29)
            {
              v33 = v29;
            }

            else
            {
              v33 = v32;
            }

            re::DynamicArray<float *>::setCapacity((StateByName + 8), v33);
          }

          else
          {
            re::DynamicArray<float *>::setCapacity((StateByName + 8), v29);
            ++*(StateByName + 32);
          }
        }

        v28 = *(StateByName + 24);
      }

      *(*(StateByName + 40) + 8 * v28) = v25;
      *(StateByName + 24) = v28 + 1;
      ++*(StateByName + 32);
      return 1;
    }
  }

  return result;
}

uint64_t re::StateGraph::findStateByName(re::StateGraph *this, const re::StringID *a2, unint64_t *a3)
{
  *a3 = -1;
  v5 = *(this + 5);
  if (v5)
  {
    v7 = 0;
    v8 = *(this + 7);
    while (1)
    {
      v9 = *(v8 + 8 * v7);
      if (v9)
      {
        if (re::StringID::operator==((v9 + 88), a2))
        {
          break;
        }
      }

      if (v5 == ++v7)
      {
        goto LABEL_6;
      }
    }

    *a3 = v7;
  }

  else
  {
LABEL_6:
    v10 = *(this + 8);
    if (v10)
    {
      if (re::StringID::operator==((v10 + 88), a2))
      {
        return v10;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

uint64_t re::StateGraph::findStateGraphByName(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return -1;
  }

  v4 = 0;
  v5 = *(a1 + 32);
  while (1)
  {
    v6 = *(v5 + 8 * v4);
    if (v6)
    {
      if (re::StringID::operator==((v6 + 8), a2))
      {
        break;
      }
    }

    if (v2 == ++v4)
    {
      return -1;
    }
  }

  return v4;
}

uint64_t re::StateGraph::addIntTransitionCondition(re::StateGraph *a1, const re::StringID *a2, void *a3, const StringID *a4, char a5, uint64_t a6)
{
  result = re::StateGraph::findStateByName(a1, a2, &v11);
  if (result)
  {

    return re::StateMachineState::addIntTransitionCondition(result, a3, a4, a5, a6);
  }

  return result;
}

uint64_t re::StateGraph::addFloatTransitionCondition(re::StateGraph *a1, const re::StringID *a2, void *a3, const StringID *a4, char a5, float a6)
{
  result = re::StateGraph::findStateByName(a1, a2, &v11);
  if (result)
  {

    return re::StateMachineState::addFloatTransitionCondition(result, a3, a4, a5, a6);
  }

  return result;
}

uint64_t re::StateGraph::addBoolTransitionCondition(re::StateGraph *a1, const re::StringID *a2, void *a3, const StringID *a4, char a5, char a6)
{
  result = re::StateGraph::findStateByName(a1, a2, &v11);
  if (result)
  {

    return re::StateMachineState::addBoolTransitionCondition(result, a3, a4, a5, a6);
  }

  return result;
}

re::StateMachineState *re::StateGraph::addTriggerTransitionCondition(re::StateGraph *this, const re::StringID *a2, const re::StringID *a3, const StringID *a4)
{
  result = re::StateGraph::findStateByName(this, a2, &v7);
  if (result)
  {

    return re::StateMachineState::addTriggerTransitionCondition(result, a3, a4);
  }

  return result;
}

re *re::StateGraph::deinit(re::StateGraph *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 7);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      re::internal::destroyPersistent<re::StateMachineState>("deinit", 507, v5);
      v4 -= 8;
    }

    while (v4);
  }

  v6 = *(this + 8);

  return re::internal::destroyPersistent<re::StateMachineState>("deinit", 510, v6);
}

void *re::introspect_StateTransitionConditionOperator(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "Equal";
    re::introspect_StateTransitionConditionOperator(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = "NotEqual";
    qword_1ECF1BEF8 = v12;
    v13 = re::introspectionAllocator();
    v14 = (*(*v13 + 32))(v13, 24, 8);
    *v14 = 1;
    *(v14 + 8) = 2;
    *(v14 + 16) = "LessThan";
    qword_1ECF1BF00 = v14;
    v15 = re::introspectionAllocator();
    v16 = (*(*v15 + 32))(v15, 24, 8);
    *v16 = 1;
    *(v16 + 8) = 3;
    *(v16 + 16) = "LessThanOrEqual";
    qword_1ECF1BF08 = v16;
    v17 = re::introspectionAllocator();
    v18 = (*(*v17 + 32))(v17, 24, 8);
    *v18 = 1;
    *(v18 + 8) = 4;
    *(v18 + 16) = "GreaterThan";
    qword_1ECF1BF10 = v18;
    v19 = re::introspectionAllocator();
    v20 = (*(*v19 + 32))(v19, 24, 8);
    *v20 = 1;
    *(v20 + 8) = 5;
    *(v20 + 16) = "GreaterThanOrEqual";
    qword_1ECF1BF18 = v20;
  }

  {
    v21 = re::IntrospectionBasic::IntrospectionBasic(&re::introspect_StateTransitionConditionOperator(BOOL)::info, "StateTransitionConditionOperator", 1, 1, 1, 1);
    *v21 = &unk_1F5D0C658;
    *(v21 + 8) = &re::introspect_StateTransitionConditionOperator(BOOL)::enumTable;
    *(v21 + 4) = 9;
  }

  if (v2)
  {
    if (re::introspect_StateTransitionConditionOperator(BOOL)::isInitialized)
    {
      return &re::introspect_StateTransitionConditionOperator(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v23);
    v3 = re::introspect_StateTransitionConditionOperator(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v23);
    if (v3)
    {
      return &re::introspect_StateTransitionConditionOperator(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::introspect_StateTransitionConditionOperator(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::introspect_StateTransitionConditionOperator(BOOL)::info;
    }
  }

  re::introspect_StateTransitionConditionOperator(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_StateTransitionConditionOperator(BOOL)::info, a2);
  v22[0] = 0x510755AC47BE15B2;
  v22[1] = "StateTransitionConditionOperator";
  xmmword_1ECF1BF48 = v23;
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::introspect_StateTransitionConditionOperator(BOOL)::info;
}

void re::internal::registerEnumType<re::StateTransitionConditionOperator>(re::TypeRegistry *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  *&v36.var0 = 0x31CD534126;
  v36.var1 = "uint8_t";
  v8 = re::TypeRegistry::typeID(v35, a1, &v36);
  v10 = v35[0];
  v11 = v35[1];
  if (*&v36.var0)
  {
    if (*&v36.var0)
    {
    }
  }

  if (v10)
  {
    v12 = *(a2 + 64);
    v34[0] = v10;
    v34[1] = v11;
    re::TypeBuilder::beginEnumType(v35, a3, 1, 1, v34);
    v13 = *v12;
    if (v13)
    {
      for (i = 0; i < v13; ++i)
      {
        v15 = *(*(v12 + 1) + 8 * i);
        if (*v15 == 1)
        {
          v16 = *(v15 + 16);
          if (v16)
          {
            v17 = *v16;
            if (*v16)
            {
              v18 = v16[1];
              if (v18)
              {
                v19 = (v16 + 2);
                do
                {
                  v17 = 31 * v17 + v18;
                  v20 = *v19++;
                  v18 = v20;
                }

                while (v20);
              }
            }
          }

          else
          {
            v17 = 0;
          }

          v21 = *(v15 + 8);
          *&v36.var0 = 2 * v17;
          v36.var1 = v16;
          re::TypeBuilder::addEnumConstant(v35, v21, &v36);
          if (*&v36.var0)
          {
            if (*&v36.var0)
            {
            }
          }

          v13 = *v12;
        }
      }

      if (v13)
      {
        for (j = 0; j < v13; ++j)
        {
          v24 = *(*(v12 + 1) + 8 * j);
          if (*v24 == 2)
          {
            v25 = *(v24 + 16);
            if (v25)
            {
              v26 = *v25;
              if (*v25)
              {
                v27 = v25[1];
                if (v27)
                {
                  v28 = (v25 + 2);
                  do
                  {
                    v26 = 31 * v26 + v27;
                    v29 = *v28++;
                    v27 = v29;
                  }

                  while (v29);
                }
              }
            }

            else
            {
              v26 = 0;
            }

            v30 = *(v24 + 8);
            *&v36.var0 = 2 * v26;
            v36.var1 = v25;
            re::TypeBuilder::addEnumConstantRenaming(v35, v30, &v36);
            if (*&v36.var0)
            {
              if (*&v36.var0)
              {
              }
            }

            v13 = *v12;
          }
        }
      }
    }

    re::TypeBuilder::commitTo(a4, v35, a1);
    re::TypeBuilder::~TypeBuilder(v35, v32);
  }

  else
  {
    re::internal::assertLog(5, v9, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, a3[1]);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v33);
    __break(1u);
  }
}

void *re::introspect_StateTransitionInterruptionType(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "NoInterruption";
    re::introspect_StateTransitionInterruptionType(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = "InterruptFrom";
    qword_1ECF1BF88 = v12;
    v13 = re::introspectionAllocator();
    v14 = (*(*v13 + 32))(v13, 24, 8);
    *v14 = 1;
    *(v14 + 8) = 2;
    *(v14 + 16) = "InterruptTo";
    qword_1ECF1BF90 = v14;
    v15 = re::introspectionAllocator();
    v16 = (*(*v15 + 32))(v15, 24, 8);
    *v16 = 1;
    *(v16 + 8) = 3;
    *(v16 + 16) = "InterruptFromTo";
    qword_1ECF1BF98 = v16;
    v17 = re::introspectionAllocator();
    v18 = (*(*v17 + 32))(v17, 24, 8);
    *v18 = 1;
    *(v18 + 8) = 4;
    *(v18 + 16) = "InterruptToFrom";
    qword_1ECF1BFA0 = v18;
  }

  {
    v19 = re::IntrospectionBasic::IntrospectionBasic(&re::introspect_StateTransitionInterruptionType(BOOL)::info, "StateTransitionInterruptionType", 1, 1, 1, 1);
    *v19 = &unk_1F5D0C658;
    *(v19 + 8) = &re::introspect_StateTransitionInterruptionType(BOOL)::enumTable;
    *(v19 + 4) = 9;
  }

  if (v2)
  {
    if (re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized)
    {
      return &re::introspect_StateTransitionInterruptionType(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v21);
    v3 = re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v21);
    if (v3)
    {
      return &re::introspect_StateTransitionInterruptionType(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::introspect_StateTransitionInterruptionType(BOOL)::info;
    }
  }

  re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_StateTransitionInterruptionType(BOOL)::info, a2);
  v20[0] = 0x3BFE1784889200CALL;
  v20[1] = "StateTransitionInterruptionType";
  xmmword_1ECF1BFD0 = v21;
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::introspect_StateTransitionInterruptionType(BOOL)::info;
}

void *re::introspect_TransitionConditionType(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "Unknown";
    re::introspect_TransitionConditionType(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = "Int";
    qword_1ECF1C010 = v12;
    v13 = re::introspectionAllocator();
    v14 = (*(*v13 + 32))(v13, 24, 8);
    *v14 = 1;
    *(v14 + 8) = 2;
    *(v14 + 16) = "Float";
    qword_1ECF1C018 = v14;
    v15 = re::introspectionAllocator();
    v16 = (*(*v15 + 32))(v15, 24, 8);
    *v16 = 1;
    *(v16 + 8) = 3;
    *(v16 + 16) = "Bool";
    qword_1ECF1C020 = v16;
    v17 = re::introspectionAllocator();
    v18 = (*(*v17 + 32))(v17, 24, 8);
    *v18 = 1;
    *(v18 + 8) = 4;
    *(v18 + 16) = "Trigger";
    qword_1ECF1C028 = v18;
  }

  {
    v19 = re::IntrospectionBasic::IntrospectionBasic(&re::introspect_TransitionConditionType(BOOL)::info, "TransitionConditionType", 1, 1, 1, 1);
    *v19 = &unk_1F5D0C658;
    *(v19 + 8) = &re::introspect_TransitionConditionType(BOOL)::enumTable;
    *(v19 + 4) = 9;
  }

  if (v2)
  {
    if (re::introspect_TransitionConditionType(BOOL)::isInitialized)
    {
      return &re::introspect_TransitionConditionType(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v21);
    v3 = re::introspect_TransitionConditionType(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v21);
    if (v3)
    {
      return &re::introspect_TransitionConditionType(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::introspect_TransitionConditionType(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::introspect_TransitionConditionType(BOOL)::info;
    }
  }

  re::introspect_TransitionConditionType(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_TransitionConditionType(BOOL)::info, a2);
  v20[0] = 0x5876EE64EBA2F00;
  v20[1] = "TransitionConditionType";
  xmmword_1ECF1C058 = v21;
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::introspect_TransitionConditionType(BOOL)::info;
}

uint64_t re::StateParameterInt::getValue(re::StateParameterInt *this, uint64_t *a2)
{
  if (!*(this + 4))
  {
    return 0;
  }

  result = re::BindPoint::isAlive((this + 8));
  if (result)
  {
    result = re::BindPoint::valueUntyped((this + 8));
    if (result)
    {
      *a2 = *result;
      return 1;
    }
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = a3 % *(result + 24);
  v8 = *(*(result + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    LODWORD(v8) = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(result + 16);
  result = re::StringID::operator==((v10 + 32 * v8 + 8), a2);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 32 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::StringID::operator==((v10 + 32 * v11 + 8), a2);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 32 * v12) & 0x7FFFFFFF;
      LODWORD(v8) = v12;
      if (v11 == 0x7FFFFFFF)
      {
        LODWORD(v8) = v12;
        goto LABEL_7;
      }
    }

    v6 = v12;
  }

LABEL_7:
  *a4 = a3;
  *(a4 + 8) = v7;
  *(a4 + 12) = v6;
  *(a4 + 16) = v8;
  return result;
}

uint64_t re::StateParameterFloat::getValue(re::StateParameterFloat *this, float *a2)
{
  if (!*(this + 4))
  {
    return 0;
  }

  result = re::BindPoint::isAlive((this + 8));
  if (result)
  {
    result = re::BindPoint::valueUntyped((this + 8));
    if (result)
    {
      *a2 = *result;
      return 1;
    }
  }

  return result;
}

uint64_t re::StateParameterBool::getValue(re::StateParameterBool *this, BOOL *a2)
{
  if (!*(this + 4))
  {
    return 0;
  }

  result = re::BindPoint::isAlive((this + 8));
  if (result)
  {
    result = re::BindPoint::valueUntyped((this + 8));
    if (result)
    {
      *a2 = *result;
      return 1;
    }
  }

  return result;
}

void re::StateTransition::~StateTransition(re::StateTransition *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(this + 4);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      re::internal::destroyPersistent<re::TransitionCondition>("deinit", 123, v5);
      v4 -= 8;
    }

    while (v4);
  }

  re::StringID::destroyString((this + 40));
  re::DynamicArray<unsigned long>::deinit(this);
}

uint64_t re::internal::floorLevelSolverCallback(uint64_t a1, const re::RigDataValue *a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6, re::RigDataValue *a7, uint64_t a8, float32x4_t *a9)
{
  v9 = a4;
  v85 = *MEMORY[0x1E69E9840];
  if (a4 <= 2)
  {
LABEL_29:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, v9, *&v60, *&v61);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v52, v55);
    __break(1u);
    goto LABEL_30;
  }

  re::internal::getSRTFromRDV(&v72, (a3 + 72));
  if (v9 == 3)
  {
LABEL_30:
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v53, v56);
    __break(1u);
    goto LABEL_31;
  }

  re::internal::getSRTFromRDV(v71, (a3 + 108));
  v69 = v71[1];
  v70 = v71[0];
  v64 = v73;
  v65 = v72;
  _S0 = v73.i32[3];
  __asm { FMLA            S1, S0, V3.S[3] }

  v62 = v74;
  v63 = _S1;
  v68 = v71[2];
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v20 = a3[68];
  if (v20)
  {
    v21 = 0;
    v9 = 0;
    v22 = vnegq_f32(v69);
    v23 = vextq_s8(vuzp1q_s32(v69, v69), v69, 0xCuLL);
    v24 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v62, v62), v62, 0xCuLL), v22), v62, v23);
    v25 = vaddq_f32(v24, v24);
    v26 = vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL);
    v66 = v23;
    v67 = v22;
    v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), v22), v26, v23);
    v28 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v64, v64), v64, 0xCuLL), v22), v64, v23);
    v29 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL), v64, v69, 3), v69, v64, 3);
    v30 = vaddq_f32(v68, vmulq_f32(v70, vaddq_f32(vaddq_f32(v62, vmulq_laneq_f32(v26, v69, 3)), vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL))));
    v31 = vnegq_f32(v29);
    v32 = vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL);
    v33 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL), v29), v30, v32);
    v34 = vaddq_f32(v33, v33);
    v35 = vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL);
    v36 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), v29), v35, v32);
    __asm { FMOV            V5.4S, #1.0 }

    v38 = vaddq_f32(v30, vmulq_n_f32(v35, v63));
    v39 = vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL);
    v40 = vdivq_f32(_Q5, vmulq_f32(v70, v65));
    v60 = vmulq_f32(v40, vaddq_f32(v38, v39));
    v61 = v40;
    while (1)
    {
      v41 = a3[68];
      if (v41 <= v9)
      {
        break;
      }

      re::internal::getSRTFromRDV(&v77, (a3[70] + v21));
      v42 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*&v84[2], *&v84[2]), *&v84[2], 0xCuLL), v67), *&v84[2], v66);
      v43 = vaddq_f32(v42, v42);
      v44 = vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL);
      v45 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL), v67), v44, v66);
      a9[1] = vsubq_f32(vaddq_f32(v68, vmulq_f32(v70, vaddq_f32(vaddq_f32(*&v84[2], vmulq_laneq_f32(v44, v69, 3)), vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL)))), vmulq_n_f32(a9[2], a9[3].f32[0] * 0.5));
      re::internal::RayCaster::cast(a9[4].i64, &a9[1], v76);
      if (LOBYTE(v76[0]) == 1)
      {
        MEMORY[0x1E69036C0](a9->i64[0], v9);
        CoreIKACPPenetrationConstraintSetPlaneDefinition();
      }

      ++v9;
      v21 += 288;
      if (v20 == v9)
      {
        goto LABEL_11;
      }
    }

    v75 = 0;
    memset(v76, 0, 80);
    v49 = MEMORY[0x1E69E9C10];
    v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v77 = 136315906;
    v78 = "operator[]";
    v79 = 1024;
    if (v50)
    {
      v51 = 3;
    }

    else
    {
      v51 = 2;
    }

    v80 = 797;
    v81 = 2048;
    v82 = v9;
    v83 = 2048;
    *v84 = v41;
    _os_log_send_and_compose_impl(v51, &v75, v76, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v77, 38, v58, v59);
    _os_crash_msg();
    __break(1u);
    goto LABEL_29;
  }

LABEL_11:
  re::internal::transferPose(a3, &a9[11].i64[1]);
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (!a8)
  {
LABEL_31:
    re::internal::assertLog(6, v46, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v54, v57);
    __break(1u);
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v47 = MEMORY[0x1E69036A0](a9->i64[0], a9[12].i64[1], a9[12].i64[0]);
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::internal::updateOutputBasedOnSolveResult(v47, a3, &a9[11].u32[2], a7);
  result = re::internal::enableSignposts(0, 0);
  if (result)
  {

    return kdebug_trace();
  }

  return result;
}

uint64_t re::internal::floorLevelSolverCompile(re::Allocator **a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v61[36] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v35, v39);
    __break(1u);
    goto LABEL_38;
  }

  if (a3 == 1)
  {
LABEL_38:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v36, v40);
    __break(1u);
    goto LABEL_39;
  }

  if (a3 <= 2)
  {
LABEL_39:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v37, v41);
    __break(1u);
LABEL_40:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v38, v42);
    __break(1u);
  }

  if (!a5)
  {
    goto LABEL_40;
  }

  v6 = a2[1];
  v7 = a2[2];
  v8 = *a4;
  v9 = *(*a2 + 232);
  v10 = strlen(v9);
  v11 = MEMORY[0x1E6903780](v9, v10);
  v12 = *(v6 + 184);
  v13 = MEMORY[0x1E6903C50](v11, 0);
  v61[0] = v13;
  v61[1] = strlen(v13);
  re::RigHierarchy::jointParent(v12, v61, 1, v49);
  if (v49[0] == 1 && v50)
  {
    v13 = *(v50 + 8);
  }

  v57 = 164778;
  v58 = "SRT";
  re::internal::makeRigDataValue(a1, &v57, v61);
  if (v57)
  {
    if (v57)
    {
    }
  }

  re::internal::makeModelSpaceJointPoseRDV(a1, v12, v13, &v57);
  re::RigDataValue::operator=(v61, &v57);
  re::RigDataValue::~RigDataValue(&v57);
  v15 = *(a1[2] + 7);
  v16 = *a1;
  v17 = (*(**a1 + 32))(*a1, 208, 16);
  *v17 = CoreIKCreateACPPenetrationSolverFromRig();
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0;
  *(v17 + 64) = v15;
  *(v17 + 80) = 0;
  *(v17 + 88) = 0;
  *(v17 + 84) = 0xFFFFFFFF00000001;
  *(v17 + 124) = 0u;
  *(v17 + 152) = 0u;
  *(v17 + 140) = 0u;
  *(v17 + 108) = 0u;
  *(v17 + 92) = 0u;
  *(v17 + 128) = 1;
  *(v17 + 144) = 0;
  *(v17 + 152) = 0;
  *(v17 + 136) = 0;
  *(v17 + 160) = 0;
  *(v17 + 176) = v16;
  *(v17 + 192) = 0;
  *(v17 + 200) = 0;
  *(v17 + 184) = 0;
  v18 = MEMORY[0x1E6903C40](v11);
  re::FixedArray<CoreIKTransform>::init<>((v17 + 184), v16, v18);
  CoreIKACPPenetrationSolverGetTargetRestPose();
  v20 = vmulq_f32(v19, v19);
  v20.f32[0] = sqrtf(v20.f32[2] + vaddv_f32(*v20.f32));
  *(v17 + 16) = 0u;
  *(v17 + 32) = xmmword_1E30476B0;
  *(v17 + 48) = v20.f32[0] + v20.f32[0];
  v57 = &unk_1F5CADBF0;
  v58 = v16;
  v59 = &v57;
  v55 = v17;
  v56[3] = v56;
  v56[0] = &unk_1F5CADBF0;
  v56[1] = v16;
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](&v57);
  v54[0] = 158357486;
  v54[1] = "SRT[]";
  re::internal::makeRigDataValue(a1, v54, &v57);
  if (v54[0])
  {
    if (v54[0])
    {
    }
  }

  v22 = CoreIKACPPenetrationSolverConstraintCount();
  if (v22)
  {
    v23 = v22;
    for (i = 0; i != v23; ++i)
    {
      ConstraintTargetName = CoreIKACPPenetrationSolverGetConstraintTargetName();
      re::internal::makeModelSpaceJointPoseRDV(a1, v12, ConstraintTargetName, v54);
      re::DynamicArray<re::RigDataValue>::add(&v60, v54);
      re::RigDataValue::~RigDataValue(v54);
    }
  }

  v26 = *(v6 + 184);
  re::internal::makePoseFromRig(a1, v26, v11, v54);
  v27 = MEMORY[0x1E6903C40](v11);
  re::internal::makePose(a1, v27, v53);
  v48 = 0;
  memset(v44, 0, sizeof(v44));
  v45 = 0;
  memset(v46, 0, sizeof(v46));
  v47 = 0;
  re::RigGraphCallbackBuilder::init(v44, *a1);
  *&v43.var0 = 0x10643527A253C4;
  v43.var1 = "TargetPose";
  re::RigGraphCallbackBuilder::addInputParam(v44, &v43, v54);
  if (*&v43.var0)
  {
    if (*&v43.var0)
    {
    }
  }

  *&v43.var0 = 0x170CCA3259E8975ELL;
  v43.var1 = "ModelSpaceTaskJointTransforms";
  re::RigGraphCallbackBuilder::addInputParam(v44, &v43, &v57);
  if (*&v43.var0)
  {
    if (*&v43.var0)
    {
    }
  }

  *&v43.var0 = 0x675FFFDDE7071B76;
  v43.var1 = "SolverToModel";
  re::RigGraphCallbackBuilder::addInputParam(v44, &v43, v61);
  if (*&v43.var0)
  {
    if (*&v43.var0)
    {
    }
  }

  *&v43.var0 = 0x1F85042B1B4E4034;
  v43.var1 = "WorldTransform";
  re::RigGraphCallbackBuilder::addInputParam(v44, &v43, v7);
  if (*&v43.var0)
  {
    if (*&v43.var0)
    {
    }
  }

  *&v43.var0 = 0x10498EC9357CACLL;
  v43.var1 = "SolvedPose";
  re::RigGraphCallbackBuilder::addOutputParam(v44, &v43, v53);
  if (*&v43.var0)
  {
    if (*&v43.var0)
    {
    }
  }

  re::RigGraphCallbackBuilder::buildCallbackData(v44, a1, re::internal::floorLevelSolverCallback, &v55);
  v33 = re::internal::bindCallbackOutputToNodeOutputPose(v26, v53, v11, a1, v8);
  MEMORY[0x1E69037D0](v11, v33);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v46 + 8);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v44 + 8);
  re::RigDataValue::~RigDataValue(v53);
  re::RigDataValue::~RigDataValue(v54);
  re::RigDataValue::~RigDataValue(&v57);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v55);
  re::RigDataValue::~RigDataValue(v61);
  if (v49[0] & 1) == 0 && v51 && (v52)
  {
    (*(*v51 + 40))();
  }

  return 1;
}

void re::internal::registerFloorLevelSolverNode(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[0] = xmmword_1E8717D90;
  v11[1] = *&off_1E8717DA0;
  v11[2] = xmmword_1E8717DB0;
  v11[3] = *off_1E8717DC0;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 3uLL, 1uLL, re::internal::floorLevelSolverCompile, v11);
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

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_36CoreIKACPPenetrationSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigNS_17reference_wrapperIKNS2_14CollisionWorldEEEEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISJ_EEFvSI_EE7__cloneEPNS0_6__baseISM_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CADBF0;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_36CoreIKACPPenetrationSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigNS_17reference_wrapperIKNS2_14CollisionWorldEEEEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISJ_EEFvSI_EEclEOSI_(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    CoreIKDestroyACPPenetrationSolver();
    re::FixedArray<CoreIKTransform>::deinit((v2 + 184));
    re::BucketArray<re::CollisionCastHit,10ul>::deinit(v2 + 112);
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v2 + 112);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_36CoreIKACPPenetrationSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigNS_17reference_wrapperIKNS2_14CollisionWorldEEEEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISJ_EEFvSI_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZN2re8internal14makeNodeUniqueINS0_36CoreIKACPPenetrationSolverNodeHelperENS_9AllocatorEJP9CoreIKRigNSt3__117reference_wrapperIKNS_14CollisionWorldEEEEEEDaPT0_DpT1_EUlPvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *re::introspect_REStateCommandID(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "InvalidCommand";
    re::introspect_REStateCommandID(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = "AnimationPlayCommand";
    qword_1ECF1C098 = v12;
    v13 = re::introspectionAllocator();
    v14 = (*(*v13 + 32))(v13, 24, 8);
    *v14 = 1;
    *(v14 + 8) = 2;
    *(v14 + 16) = "AnimationStopCommand";
    qword_1ECF1C0A0 = v14;
    v15 = re::introspectionAllocator();
    v16 = (*(*v15 + 32))(v15, 24, 8);
    *v16 = 1;
    *(v16 + 8) = 3;
    *(v16 + 16) = "AnimationStopAllCommand";
    qword_1ECF1C0A8 = v16;
    v17 = re::introspectionAllocator();
    v18 = (*(*v17 + 32))(v17, 24, 8);
    *v18 = 1;
    *(v18 + 8) = 4;
    *(v18 + 16) = "AnimationSetPlaybackTimeCommand";
    qword_1ECF1C0B0 = v18;
  }

  {
    v19 = re::IntrospectionBasic::IntrospectionBasic(&re::introspect_REStateCommandID(BOOL)::info, "REStateCommandID", 1, 1, 1, 1);
    *v19 = &unk_1F5D0C658;
    *(v19 + 8) = &re::introspect_REStateCommandID(BOOL)::enumTable;
    *(v19 + 4) = 9;
  }

  if (v2)
  {
    if (re::introspect_REStateCommandID(BOOL)::isInitialized)
    {
      return &re::introspect_REStateCommandID(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v21);
    v3 = re::introspect_REStateCommandID(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v21);
    if (v3)
    {
      return &re::introspect_REStateCommandID(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::introspect_REStateCommandID(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::introspect_REStateCommandID(BOOL)::info;
    }
  }

  re::introspect_REStateCommandID(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_REStateCommandID(BOOL)::info, a2);
  v20[0] = 0x87BB690F50576250;
  v20[1] = "REStateCommandID";
  xmmword_1ECF1C0E0 = v21;
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::introspect_REStateCommandID(BOOL)::info;
}

uint64_t *anonymous namespace::countTimelinesRecursive@<X0>(uint64_t *this@<X0>, const re::Timeline *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 > 999)
  {
LABEL_2:
    *a3 = 0;
    return this;
  }

  v4 = a2;
  v5 = this;
  this = (*(*this + 24))(this);
  if (this)
  {
    v6 = 0;
    v7 = 1;
    while (1)
    {
      v8 = (*(*v5 + 32))(v5, v6);
      if (v9[0] != 1)
      {
        goto LABEL_2;
      }

      v7 += v10;
      ++v6;
      this = (*(*v5 + 24))(v5);
      if (v6 >= this)
      {
        goto LABEL_9;
      }
    }
  }

  v7 = 1;
LABEL_9:
  *a3 = 1;
  *(a3 + 4) = v7;
  return this;
}

void *re::RigGraphDefinitionBuilder::init(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  a1[1] = a4;
  a1[2] = a3;
  *a1 = a2;
  *(a3 + 96) = a2;
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity((a3 + 96), 0);
  ++*(v4 + 120);
  *(v4 + 136) = *a1;
  re::DynamicArray<re::RigGraphConnection>::setCapacity((v4 + 136), 0);
  ++*(v4 + 160);
  *(v4 + 176) = *a1;
  re::DynamicArray<re::RigGraphInputValue>::setCapacity((v4 + 176), 0);
  ++*(v4 + 200);
  *(v4 + 16) = *a1;
  re::DynamicArray<re::RigGraphParameterProxy>::setCapacity((v4 + 16), 0);
  *(v4 + 56) = *a1;
  v4 += 56;
  ++*(v4 - 16);
  result = re::DynamicArray<re::RigGraphParameterProxy>::setCapacity(v4, 0);
  ++*(v4 + 24);
  return result;
}

void re::RigGraphDefinitionBuilder::addNode(re::RigGraphDefinitionBuilder *this@<X0>, _anonymous_namespace_ *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X8>)
{
  re::RigGraphDefinitionBuilder::getParameterCount(&v19, this, a2);
  if (v19 == 1)
  {
    *&v15 = 0;
    *(&v15 + 1) = &str_67;
    v16 = 0;
    *&v17 = &str_67;
    v10 = re::DynamicArray<re::RigGraphNodeDescription>::add((*(this + 2) + 96), &v15);
    v13 = 0;
    v14 = &str_67;
    v12 = *(*(this + 2) + 112) - 1;
    v11 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(this + 24, &v13, &v12);
    if (v13)
    {
      if (v13)
      {
      }
    }

    *a4 = 1;
    if (v16)
    {
      if (v16)
      {
      }
    }

    v16 = 0;
    *&v17 = &str_67;
    if (v15)
    {
      if (v15)
      {
      }
    }
  }

  else
  {
    v15 = v20;
    re::DynamicString::DynamicString(&v16, &v21);
    *a4 = 0;
    *(a4 + 8) = v15;
    *(a4 + 24) = v16;
    *(a4 + 48) = v18;
    *(a4 + 32) = v17;
    if (v21 && (v22 & 1) != 0)
    {
      (*(*v21 + 40))(v21, v23);
    }
  }
}