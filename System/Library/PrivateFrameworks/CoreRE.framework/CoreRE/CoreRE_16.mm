double re::KeyframeAnimation<re::GenericSRT<float>>::totalDuration(uint64_t a1)
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

double re::KeyframeAnimation<re::GenericSRT<float>>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, _OWORD *a6)
{
  v80 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v62, v63);
    __break(1u);
LABEL_39:
    v66 = 0;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v75 = 0u;
    v31 = MEMORY[0x1E69E9C10];
    v67 = 136315906;
    v68 = "operator[]";
    v69 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v32 = 3;
    }

    else
    {
      v32 = 2;
    }

    v70 = 476;
    v71 = 2048;
    v72 = 0;
    v73 = 2048;
    v74 = 0;
    _os_log_send_and_compose_impl(v32, &v66, &v75, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v67, 38, v64, v65);
    _os_crash_msg();
    __break(1u);
    goto LABEL_43;
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
    v12 = a4[1];
    v13 = a4[2];
LABEL_27:
    a6[1] = v12;
    a6[2] = v13;
    *a6 = v11;
    return *&v11;
  }

  if (!v6)
  {
    goto LABEL_39;
  }

  if (v6 <= v7)
  {
LABEL_43:
    v66 = 0;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v75 = 0u;
    v33 = MEMORY[0x1E69E9C10];
    v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v67 = 136315906;
    v68 = "operator[]";
    v69 = 1024;
    if (v34)
    {
      v35 = 3;
    }

    else
    {
      v35 = 2;
    }

    v70 = 476;
    v71 = 2048;
    v72 = v7;
    v73 = 2048;
    v74 = v6;
    _os_log_send_and_compose_impl(v35, &v66, &v75, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v67, 38, v64, v65);
    _os_crash_msg();
    __break(1u);
    goto LABEL_47;
  }

  v14 = *(a1 + 96);
  v15 = *(a2 + 24);
  if (*v14 >= v15)
  {
    if (v9)
    {
LABEL_25:
      v25 = *(a1 + 120);
      goto LABEL_26;
    }

LABEL_47:
    v66 = 0;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v75 = 0u;
    v36 = MEMORY[0x1E69E9C10];
    v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v67 = 136315906;
    v68 = "operator[]";
    v69 = 1024;
    if (v37)
    {
      v38 = 3;
    }

    else
    {
      v38 = 2;
    }

    v70 = 476;
    v71 = 2048;
    v72 = 0;
    v73 = 2048;
    v74 = 0;
    _os_log_send_and_compose_impl(v38, &v66, &v75, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v67, 38, v64, v65);
    _os_crash_msg();
    __break(1u);
LABEL_51:
    v66 = 0;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v75 = 0u;
    v39 = MEMORY[0x1E69E9C10];
    v40 = v9;
    v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v67 = 136315906;
    v68 = "operator[]";
    v69 = 1024;
    if (v41)
    {
      v42 = 3;
    }

    else
    {
      v42 = 2;
    }

    v70 = 476;
    v71 = 2048;
    v72 = v7;
    v73 = 2048;
    v74 = v40;
    _os_log_send_and_compose_impl(v42, &v66, &v75, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v67, 38, v64, v65);
    _os_crash_msg();
    __break(1u);
    goto LABEL_55;
  }

  if (v14[v7] <= v15)
  {
    if (v9 > v7)
    {
      v25 = (*(a1 + 120) + 48 * v7);
      goto LABEL_26;
    }

    goto LABEL_51;
  }

  v16 = *(a1 + 96);
  v17 = *(a1 + 88);
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[v17 >> 1];
    v21 = *v19;
    v20 = v19 + 1;
    v17 += ~(v17 >> 1);
    if (v21 < v15)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  v22 = v16 - v14;
  v23 = v16 - v14;
  if (*(a1 + 73) != 1 || v23 == v10)
  {
    if (v9 > v23)
    {
      v25 = (*(a1 + 120) + 48 * v23);
LABEL_26:
      v11 = *v25;
      v12 = v25[1];
      v13 = v25[2];
      goto LABEL_27;
    }

LABEL_55:
    v66 = 0;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v75 = 0u;
    v43 = MEMORY[0x1E69E9C10];
    v6 = v9;
    v26 = v23;
    v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v67 = 136315906;
    v68 = "operator[]";
    v69 = 1024;
    if (v44)
    {
      v45 = 3;
    }

    else
    {
      v45 = 2;
    }

    v70 = 476;
    v71 = 2048;
    v72 = v26;
    v73 = 2048;
    v74 = v6;
    _os_log_send_and_compose_impl(v45, &v66, &v75, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v67, 38, v64, v65);
    _os_crash_msg();
    __break(1u);
    goto LABEL_59;
  }

  v26 = v23 - 1;
  if (v6 <= v23 - 1)
  {
LABEL_59:
    v66 = 0;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v75 = 0u;
    v46 = MEMORY[0x1E69E9C10];
    v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v67 = 136315906;
    v68 = "operator[]";
    v69 = 1024;
    if (v47)
    {
      v48 = 3;
    }

    else
    {
      v48 = 2;
    }

    v70 = 476;
    v71 = 2048;
    v72 = v26;
    v73 = 2048;
    v74 = v6;
    _os_log_send_and_compose_impl(v48, &v66, &v75, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v67, 38, v64, v65);
    _os_crash_msg();
    __break(1u);
    goto LABEL_63;
  }

  if (v6 <= v23)
  {
LABEL_63:
    v66 = 0;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v75 = 0u;
    v49 = MEMORY[0x1E69E9C10];
    v26 = v23;
    v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v67 = 136315906;
    v68 = "operator[]";
    v69 = 1024;
    if (v50)
    {
      v51 = 3;
    }

    else
    {
      v51 = 2;
    }

    v70 = 476;
    v71 = 2048;
    v72 = v26;
    v73 = 2048;
    v74 = v6;
    _os_log_send_and_compose_impl(v51, &v66, &v75, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v67, 38, v64, v65);
    _os_crash_msg();
    __break(1u);
LABEL_67:
    v66 = 0;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v75 = 0u;
    v52 = MEMORY[0x1E69E9C10];
    v53 = v9;
    v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v67 = 136315906;
    v68 = "operator[]";
    v69 = 1024;
    if (v54)
    {
      v55 = 3;
    }

    else
    {
      v55 = 2;
    }

    v70 = 476;
    v71 = 2048;
    v72 = v26;
    v73 = 2048;
    v74 = v53;
    _os_log_send_and_compose_impl(v55, &v66, &v75, 80, &dword_1E1C61000, v52, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v67, 38, v64, v65);
    _os_crash_msg();
    __break(1u);
LABEL_71:
    v66 = 0;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v75 = 0u;
    v56 = MEMORY[0x1E69E9C10];
    v57 = v9;
    v58 = v23;
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

    v70 = 476;
    v71 = 2048;
    v72 = v58;
    v73 = 2048;
    v74 = v57;
    _os_log_send_and_compose_impl(v60, &v66, &v75, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v67, 38, v64, v65);
    _os_crash_msg();
    __break(1u);
  }

  v27 = v14[v26];
  v28 = *(v14 + v22) - v27;
  v29 = 0.0;
  if (v28 > 0.0)
  {
    v29 = (v15 - v27) / v28;
  }

  if (v9 <= v26)
  {
    goto LABEL_67;
  }

  if (v9 <= v23)
  {
    goto LABEL_71;
  }

  re::lerp<float>((*(a1 + 120) + 48 * v26), *(a1 + 120) + 48 * v23, &v75, v29);
  v30 = v76;
  *a6 = v75;
  a6[1] = v30;
  *&v11 = v77;
  a6[2] = v77;
  return *&v11;
}

double re::KeyframeAnimation<re::SkeletalPose>::totalDuration(uint64_t a1)
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

void re::KeyframeAnimation<re::SkeletalPose>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void *a6)
{
  v75 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v57, v58);
    __break(1u);
LABEL_41:
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
    goto LABEL_45;
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

  if (!v9)
  {
    v10 = a4;
LABEL_26:

    re::AnimationValueTraits<re::SkeletalPose>::copy(v10, a6);
    return;
  }

  if (!v6)
  {
    goto LABEL_41;
  }

  if (v6 <= v7)
  {
LABEL_45:
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
    goto LABEL_49;
  }

  v11 = *(a1 + 96);
  v12 = *(a2 + 24);
  if (*v11 >= v12)
  {
    if (v8)
    {
LABEL_25:
      v10 = *(a1 + 120);
      goto LABEL_26;
    }

LABEL_49:
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
LABEL_53:
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
LABEL_57:
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
    goto LABEL_61;
  }

  if (v11[v7] <= v12)
  {
    if (v8 > v7)
    {
      v10 = (*(a1 + 120) + 88 * v7);
      goto LABEL_26;
    }

    goto LABEL_53;
  }

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
  if (*(a1 + 73) != 1 || v20 == v9)
  {
    if (v8 > v20)
    {
      v10 = (*(a1 + 120) + 88 * v20);
      goto LABEL_26;
    }

    goto LABEL_57;
  }

  v22 = v20 - 1;
  if (v6 <= v20 - 1)
  {
LABEL_61:
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
    goto LABEL_65;
  }

  if (v6 <= v20)
  {
LABEL_65:
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
LABEL_69:
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
LABEL_73:
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

  v23 = v11[v22];
  v24 = *(v11 + v19) - v23;
  v25 = 0.0;
  if (v24 > 0.0)
  {
    v25 = (v12 - v23) / v24;
  }

  if (v8 <= v22)
  {
    goto LABEL_69;
  }

  if (v8 <= v20)
  {
    goto LABEL_73;
  }

  v26 = *(a1 + 120);

  re::AnimationValueTraits<re::SkeletalPose>::interpolate((v26 + 88 * v22), (v26 + 88 * v20), a6, v25);
}

double re::KeyframeAnimation<re::BlendShapeWeights>::totalDuration(uint64_t a1)
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

_anonymous_namespace_ *re::KeyframeAnimation<re::BlendShapeWeights>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  v76 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v58, v59);
    __break(1u);
LABEL_41:
    v62 = 0;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
    v28 = MEMORY[0x1E69E9C10];
    v63 = 136315906;
    v64 = "operator[]";
    v65 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }

    v66 = 476;
    v67 = 2048;
    v68 = 0;
    v69 = 2048;
    v70 = 0;
    _os_log_send_and_compose_impl(v29, &v62, &v71, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v63, 38, v60, v61);
    _os_crash_msg();
    __break(1u);
    goto LABEL_45;
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

  if (!v9)
  {
    v10 = a4;
LABEL_26:

    return re::AnimationValueTraits<re::BlendShapeWeights>::copy(v10, a6);
  }

  if (!v6)
  {
    goto LABEL_41;
  }

  if (v6 <= v7)
  {
LABEL_45:
    v62 = 0;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
    v30 = MEMORY[0x1E69E9C10];
    v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v63 = 136315906;
    v64 = "operator[]";
    v65 = 1024;
    if (v31)
    {
      v32 = 3;
    }

    else
    {
      v32 = 2;
    }

    v66 = 476;
    v67 = 2048;
    v68 = v7;
    v69 = 2048;
    v70 = v6;
    _os_log_send_and_compose_impl(v32, &v62, &v71, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v63, 38, v60, v61);
    _os_crash_msg();
    __break(1u);
    goto LABEL_49;
  }

  v11 = *(a1 + 96);
  v12 = *(a2 + 24);
  if (*v11 >= v12)
  {
    if (v8)
    {
LABEL_25:
      v10 = *(a1 + 120);
      goto LABEL_26;
    }

LABEL_49:
    v62 = 0;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
    v33 = MEMORY[0x1E69E9C10];
    v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v63 = 136315906;
    v64 = "operator[]";
    v65 = 1024;
    if (v34)
    {
      v35 = 3;
    }

    else
    {
      v35 = 2;
    }

    v66 = 476;
    v67 = 2048;
    v68 = 0;
    v69 = 2048;
    v70 = 0;
    _os_log_send_and_compose_impl(v35, &v62, &v71, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v63, 38, v60, v61);
    _os_crash_msg();
    __break(1u);
LABEL_53:
    v62 = 0;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
    v36 = MEMORY[0x1E69E9C10];
    v37 = v8;
    v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v63 = 136315906;
    v64 = "operator[]";
    v65 = 1024;
    if (v38)
    {
      v39 = 3;
    }

    else
    {
      v39 = 2;
    }

    v66 = 476;
    v67 = 2048;
    v68 = v7;
    v69 = 2048;
    v70 = v37;
    _os_log_send_and_compose_impl(v39, &v62, &v71, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v63, 38, v60, v61);
    _os_crash_msg();
    __break(1u);
LABEL_57:
    v62 = 0;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
    v40 = MEMORY[0x1E69E9C10];
    v6 = v8;
    v23 = v20;
    v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v63 = 136315906;
    v64 = "operator[]";
    v65 = 1024;
    if (v41)
    {
      v42 = 3;
    }

    else
    {
      v42 = 2;
    }

    v66 = 476;
    v67 = 2048;
    v68 = v23;
    v69 = 2048;
    v70 = v6;
    _os_log_send_and_compose_impl(v42, &v62, &v71, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v63, 38, v60, v61);
    _os_crash_msg();
    __break(1u);
    goto LABEL_61;
  }

  if (v11[v7] <= v12)
  {
    if (v8 > v7)
    {
      v10 = (*(a1 + 120) + 32 * v7);
      goto LABEL_26;
    }

    goto LABEL_53;
  }

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
  if (*(a1 + 73) != 1 || v20 == v9)
  {
    if (v8 > v20)
    {
      v10 = (*(a1 + 120) + 32 * v20);
      goto LABEL_26;
    }

    goto LABEL_57;
  }

  v23 = v20 - 1;
  if (v6 <= v20 - 1)
  {
LABEL_61:
    v62 = 0;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
    v43 = MEMORY[0x1E69E9C10];
    v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v63 = 136315906;
    v64 = "operator[]";
    v65 = 1024;
    if (v44)
    {
      v45 = 3;
    }

    else
    {
      v45 = 2;
    }

    v66 = 476;
    v67 = 2048;
    v68 = v23;
    v69 = 2048;
    v70 = v6;
    _os_log_send_and_compose_impl(v45, &v62, &v71, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v63, 38, v60, v61);
    _os_crash_msg();
    __break(1u);
    goto LABEL_65;
  }

  if (v6 <= v20)
  {
LABEL_65:
    v62 = 0;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
    v46 = MEMORY[0x1E69E9C10];
    v23 = v20;
    v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v63 = 136315906;
    v64 = "operator[]";
    v65 = 1024;
    if (v47)
    {
      v48 = 3;
    }

    else
    {
      v48 = 2;
    }

    v66 = 476;
    v67 = 2048;
    v68 = v23;
    v69 = 2048;
    v70 = v6;
    _os_log_send_and_compose_impl(v48, &v62, &v71, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v63, 38, v60, v61);
    _os_crash_msg();
    __break(1u);
LABEL_69:
    v62 = 0;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
    v49 = MEMORY[0x1E69E9C10];
    v50 = v8;
    v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v63 = 136315906;
    v64 = "operator[]";
    v65 = 1024;
    if (v51)
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    v66 = 476;
    v67 = 2048;
    v68 = v23;
    v69 = 2048;
    v70 = v50;
    _os_log_send_and_compose_impl(v52, &v62, &v71, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v63, 38, v60, v61);
    _os_crash_msg();
    __break(1u);
LABEL_73:
    v62 = 0;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
    v53 = MEMORY[0x1E69E9C10];
    v54 = v8;
    v55 = v20;
    v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v63 = 136315906;
    v64 = "operator[]";
    v65 = 1024;
    if (v56)
    {
      v57 = 3;
    }

    else
    {
      v57 = 2;
    }

    v66 = 476;
    v67 = 2048;
    v68 = v55;
    v69 = 2048;
    v70 = v54;
    _os_log_send_and_compose_impl(v57, &v62, &v71, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v63, 38, v60, v61);
    _os_crash_msg();
    __break(1u);
  }

  v24 = v11[v23];
  v25 = *(v11 + v19) - v24;
  v26 = 0.0;
  if (v25 > 0.0)
  {
    v26 = (v12 - v24) / v25;
  }

  if (v8 <= v23)
  {
    goto LABEL_69;
  }

  if (v8 <= v20)
  {
    goto LABEL_73;
  }

  v27 = *(a1 + 120);

  return re::AnimationValueTraits<re::BlendShapeWeights>::interpolate((v27 + 32 * v23), (v27 + 32 * v20), a6, v26);
}

uint64_t *re::KeyframeAnimation<float>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0B00;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::KeyframeAnimation<float>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0B00;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::KeyframeAnimation<double>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0B98;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::KeyframeAnimation<double>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0B98;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::KeyframeAnimation<re::Vector2<float>>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0C30;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::KeyframeAnimation<re::Vector2<float>>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0C30;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::KeyframeAnimation<re::Vector3<float>>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0CC8;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::KeyframeAnimation<re::Vector3<float>>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0CC8;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::KeyframeAnimation<re::Vector4<float>>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0D60;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::KeyframeAnimation<re::Vector4<float>>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0D60;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::KeyframeAnimation<re::Quaternion<float>>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0DF8;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::KeyframeAnimation<re::Quaternion<float>>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0DF8;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::KeyframeAnimation<re::GenericSRT<float>>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0E90;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::KeyframeAnimation<re::GenericSRT<float>>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0E90;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::KeyframeAnimation<re::SkeletalPose>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0F28;
  v2 = (a1 + 5);
  re::FixedArray<re::SkeletalPose>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::KeyframeAnimation<re::SkeletalPose>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0F28;
  v2 = (a1 + 5);
  re::FixedArray<re::SkeletalPose>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::KeyframeAnimation<re::BlendShapeWeights>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0FC0;
  v2 = (a1 + 5);
  re::FixedArray<re::BlendShapeWeights>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::KeyframeAnimation<re::BlendShapeWeights>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0FC0;
  v2 = (a1 + 5);
  re::FixedArray<re::BlendShapeWeights>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

BOOL re::TimelineEventData::addParameterDescription(void *a1, StringID *a2, int a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  v7 = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a1 + 17), a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &buf);
  if (buf.n128_u32[3] == 0x7FFFFFFF || !*(a1[19] + 40 * buf.n128_u32[3] + 32))
  {
    result = 1;
    if (a3 > 3)
    {
      if (a3 != 4)
      {
        if (a3 == 5)
        {
          buf.n128_u64[0] = a1[47];
          buf.n128_u64[1] = 5;
          *&v22 = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add((a1 + 17), a2, &buf).n128_u64[0];
          if (!a1[50])
          {
            ++a1[47];
            return 1;
          }

LABEL_31:
          re::internal::assertLog(4, v21, v22, "assertion failure: '%s' (%s:line %i) Can not define additional parameters after adding events.", "parameters.isEmpty()", "addParameter", 32);
          _os_crash("assertion failure: (parameters.isEmpty()) Can not define additional parameters after adding events.");
          __break(1u);
        }

        if (a3 != 6)
        {
          return result;
        }

        buf.n128_u64[0] = a1[53];
        buf.n128_u64[1] = 6;
        *&v14 = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add((a1 + 17), a2, &buf).n128_u64[0];
        if (!a1[56])
        {
          ++a1[53];
          return 1;
        }

        goto LABEL_29;
      }

      buf.n128_u64[0] = a1[41];
      buf.n128_u64[1] = 4;
      *&v18 = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add((a1 + 17), a2, &buf).n128_u64[0];
      if (!a1[44])
      {
        ++a1[41];
        return 1;
      }
    }

    else
    {
      if (a3 != 1)
      {
        if (a3 == 2)
        {
          buf.n128_u64[0] = a1[29];
          buf.n128_u64[1] = 2;
          *&v20 = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add((a1 + 17), a2, &buf).n128_u64[0];
          if (!a1[32])
          {
            ++a1[29];
            return 1;
          }

          goto LABEL_30;
        }

        if (a3 != 3)
        {
          return result;
        }

        buf.n128_u64[0] = a1[35];
        buf.n128_u64[1] = 3;
        *&v12 = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add((a1 + 17), a2, &buf).n128_u64[0];
        if (!a1[38])
        {
          ++a1[35];
          return 1;
        }

        goto LABEL_28;
      }

      buf.n128_u64[0] = a1[23];
      buf.n128_u64[1] = 1;
      *&v16 = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add((a1 + 17), a2, &buf).n128_u64[0];
      if (!a1[26])
      {
        ++a1[23];
        return 1;
      }

      re::internal::assertLog(4, v15, v16, "assertion failure: '%s' (%s:line %i) Can not define additional parameters after adding events.", "parameters.isEmpty()", "addParameter", 32);
      _os_crash("assertion failure: (parameters.isEmpty()) Can not define additional parameters after adding events.");
      __break(1u);
    }

    re::internal::assertLog(4, v17, v18, "assertion failure: '%s' (%s:line %i) Can not define additional parameters after adding events.", "parameters.isEmpty()", "addParameter", 32);
    _os_crash("assertion failure: (parameters.isEmpty()) Can not define additional parameters after adding events.");
    __break(1u);
LABEL_28:
    re::internal::assertLog(4, v11, v12, "assertion failure: '%s' (%s:line %i) Can not define additional parameters after adding events.", "parameters.isEmpty()", "addParameter", 32);
    _os_crash("assertion failure: (parameters.isEmpty()) Can not define additional parameters after adding events.");
    __break(1u);
LABEL_29:
    re::internal::assertLog(4, v13, v14, "assertion failure: '%s' (%s:line %i) Can not define additional parameters after adding events.", "parameters.isEmpty()", "addParameter", 32);
    _os_crash("assertion failure: (parameters.isEmpty()) Can not define additional parameters after adding events.");
    __break(1u);
LABEL_30:
    re::internal::assertLog(4, v19, v20, "assertion failure: '%s' (%s:line %i) Can not define additional parameters after adding events.", "parameters.isEmpty()", "addParameter", 32);
    _os_crash("assertion failure: (parameters.isEmpty()) Can not define additional parameters after adding events.");
    __break(1u);
    goto LABEL_31;
  }

  v8 = *re::animationLogObjects(v7);
  result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (result)
  {
    var1 = a2->var1;
    buf.n128_u32[0] = 136315138;
    *(buf.n128_u64 + 4) = var1;
    _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Event parameter named %s was already declared.", &buf, 0xCu);
    return 0;
  }

  return result;
}

__n128 re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, __n128 *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v10, v9);
    re::StringID::StringID((v8 + 8), a2);
    result = *a3;
    *(v8 + 24) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

void re::TimelineEventData::addEvent(re::TimelineEventData *this, uint64_t a2)
{
  v4 = this;
  v89 = *MEMORY[0x1E69E9840];
  v5 = *(this + 23);
  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      LODWORD(v84) = 0;
      this = re::DynamicArray<float>::insert((v4 + 192), i + v5 * a2, &v84);
      v5 = *(v4 + 23);
    }
  }

  v7 = *(v4 + 29);
  if (v7)
  {
    v8 = 0;
    v9 = *(v4 + 32);
    while (1)
    {
      v10 = v8 + v7 * a2;
      v11 = v9 + 1;
      if (v9 + 1 <= v10)
      {
        break;
      }

      if (v9 >= *(v4 + 31))
      {
        this = re::DynamicArray<float>::growCapacity((v4 + 240), v9 + 1);
        v9 = *(v4 + 32);
      }

      v12 = *(v4 + 34);
      v13 = (v12 + 4 * v9);
      if (v9 > v10)
      {
        *v13 = *(v13 - 1);
        v14 = v12 + 4 * v10;
        if (v13 - 1 != v14)
        {
          this = memmove((v14 + 4), v14, v13 - v14 - 4);
          v12 = *(v4 + 34);
          v9 = *(v4 + 32);
        }

        v13 = (v12 + 4 * v10);
      }

      *v13 = 0;
      *(v4 + 32) = ++v9;
      ++*(v4 + 66);
      ++v8;
      v7 = *(v4 + 29);
      if (v8 >= v7)
      {
        goto LABEL_14;
      }
    }

    v72 = 0;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v84 = 0u;
    v60 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v61 = 3;
    }

    else
    {
      v61 = 2;
    }

    v76 = 136315906;
    v77 = "insert";
    v78 = 1024;
    v79 = 887;
    v80 = 2048;
    v81 = v8 + a2 * v7;
    v82 = 2048;
    v83 = v11;
    _os_log_send_and_compose_impl(v61, &v72, &v84, 80, &dword_1E1C61000, v60, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v76, 38);
    _os_crash_msg();
    __break(1u);
    goto LABEL_81;
  }

LABEL_14:
  v15 = *(v4 + 35);
  if (v15)
  {
    v7 = 0;
    v10 = &str_67;
    while (1)
    {
      v16 = v15 * a2;
      v2 = v15 * a2 + v7;
      v72 = 0;
      v73 = &str_67;
      v17 = *(v4 + 38);
      v8 = v17 + 1;
      if (v17 + 1 <= v2)
      {
        break;
      }

      if (v17 >= *(v4 + 37))
      {
        this = re::DynamicArray<re::StringID>::growCapacity((v4 + 288), v17 + 1);
        v17 = *(v4 + 38);
      }

      v18 = (*(v4 + 40) + 16 * v17);
      if (v17 <= v2)
      {
        *v18 = 0;
        v18[1] = &str_67;
        ++*(v4 + 38);
        ++*(v4 + 78);
      }

      else
      {
        v19 = *(v18 - 1);
        *v18 = *(v18 - 2);
        v18[1] = v19;
        *(v18 - 2) = 0;
        *(v18 - 1) = &str_67;
        v20 = *(v4 + 40);
        v21 = *(v4 + 38);
        v22 = (v20 + 16 * v21 - 16);
        if (v22 != (v20 + 16 * v2))
        {
          v23 = 16 * (v7 + v16) - 16 * v21 + 16;
          do
          {
            v24 = (v22 - 16);
            re::StringID::operator=(v22, v22 - 2);
            v22 = v24;
            v23 += 16;
          }

          while (v23);
          v20 = *(v4 + 40);
        }

        this = re::StringID::operator=((v20 + 16 * v2), &v72);
        v25 = v72;
        ++*(v4 + 38);
        ++*(v4 + 78);
        if (v25)
        {
        }
      }

      ++v7;
      v15 = *(v4 + 35);
      if (v7 >= v15)
      {
        goto LABEL_28;
      }
    }

LABEL_81:
    v75 = 0;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v84 = 0u;
    a2 = MEMORY[0x1E69E9C10];
    v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v76 = 136315906;
    v77 = "insert";
    v78 = 1024;
    if (v62)
    {
      v63 = 3;
    }

    else
    {
      v63 = 2;
    }

    v79 = 887;
    v80 = 2048;
    v81 = v2;
    v82 = 2048;
    v83 = v8;
    _os_log_send_and_compose_impl(v63, &v75, &v84, 80, &dword_1E1C61000, a2, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v76, 38, v72, v73);
    _os_crash_msg();
    __break(1u);
LABEL_85:
    v72 = 0;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v84 = 0u;
    v64 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v65 = 3;
    }

    else
    {
      v65 = 2;
    }

    v76 = 136315906;
    v77 = "insert";
    v78 = 1024;
    v79 = 887;
    v80 = 2048;
    v81 = v7 + a2 * v10;
    v82 = 2048;
    v83 = v8;
    _os_log_send_and_compose_impl(v65, &v72, &v84, 80, &dword_1E1C61000, v64, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v76, 38);
    _os_crash_msg();
    __break(1u);
LABEL_89:
    v75 = 0;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v84 = 0u;
    v66 = MEMORY[0x1E69E9C10];
    v67 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v76 = 136315906;
    v77 = "insert";
    v78 = 1024;
    if (v67)
    {
      v68 = 3;
    }

    else
    {
      v68 = 2;
    }

    v79 = 887;
    v80 = 2048;
    v81 = v2;
    v82 = 2048;
    v83 = v8;
    _os_log_send_and_compose_impl(v68, &v75, &v84, 80, &dword_1E1C61000, v66, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v76, 38, v72, v73);
    _os_crash_msg();
    __break(1u);
    goto LABEL_93;
  }

LABEL_28:
  v10 = *(v4 + 41);
  if (v10)
  {
    v7 = 0;
    v26 = *(v4 + 44);
    do
    {
      v2 = v7 + v10 * a2;
      v8 = v26 + 1;
      if (v26 + 1 <= v2)
      {
        goto LABEL_85;
      }

      if (v26 >= *(v4 + 43))
      {
        this = re::DynamicArray<re::Vector4<float>>::growCapacity((v4 + 336), v26 + 1);
        v26 = *(v4 + 44);
      }

      v27 = *(v4 + 46) + 16 * v26;
      if (v26 > v2)
      {
        *v27 = *(v27 - 16);
        v28 = *(v4 + 46);
        v29 = v28 + 16 * v2;
        v30 = v28 + 16 * *(v4 + 44) - 16;
        if (v30 != v29)
        {
          this = memmove((v29 + 16), v29, v30 - v29);
          v28 = *(v4 + 46);
        }

        v27 = v28 + 16 * v2;
      }

      *v27 = 0;
      *(v27 + 8) = 0;
      v26 = *(v4 + 44) + 1;
      *(v4 + 44) = v26;
      ++*(v4 + 90);
      ++v7;
      v10 = *(v4 + 41);
    }

    while (v7 < v10);
  }

  v31 = *(v4 + 47);
  if (v31)
  {
    for (j = 0; j < v31; ++j)
    {
      v33 = v31 * a2;
      v2 = v31 * a2 + j;
      v72 = 0;
      v73 = 0;
      v74 = 0;
      v34 = *(v4 + 50);
      v8 = v34 + 1;
      if (v34 + 1 <= v2)
      {
        goto LABEL_89;
      }

      if (v34 >= *(v4 + 49))
      {
        re::DynamicArray<re::FixedArray<unsigned char>>::growCapacity((v4 + 384), v34 + 1);
        v34 = *(v4 + 50);
      }

      v35 = (*(v4 + 52) + 24 * v34);
      if (v34 <= v2)
      {
        *v35 = 0;
        v35[1] = 0;
        v35[2] = 0;
        *v35 = v72;
        v72 = 0;
        v35[1] = v73;
        v73 = 0;
        v42 = v35[2];
        v35[2] = v74;
        v74 = v42;
      }

      else
      {
        *v35 = *(v35 - 3);
        v36 = *(v35 - 1);
        *(v35 - 2) = 0;
        *(v35 - 1) = 0;
        *(v35 - 3) = 0;
        v35[2] = v36;
        v37 = *(v4 + 52);
        v38 = *(v4 + 50);
        v39 = (v37 + 24 * v38 - 24);
        if (v39 != (v37 + 24 * v2))
        {
          v40 = 24 * (j + v33) - 24 * v38 + 24;
          do
          {
            v41 = v39 - 3;
            re::FixedArray<float>::operator=(v39, v39 - 3);
            v39 = v41;
            v40 += 24;
          }

          while (v40);
          v37 = *(v4 + 52);
        }

        re::FixedArray<float>::operator=((v37 + 24 * v2), &v72);
      }

      ++*(v4 + 50);
      ++*(v4 + 102);
      this = v72;
      if (v72 && v73)
      {
        this = (*(*v72 + 40))();
      }

      v31 = *(v4 + 47);
    }
  }

  v43 = *(v4 + 53);
  if (v43)
  {
    v44 = 0;
    while (1)
    {
      v45 = v43 * a2;
      v2 = v43 * a2 + v44;
      v46 = *(v4 + 56);
      v8 = v46 + 1;
      if (v46 + 1 <= v2)
      {
        break;
      }

      v47 = *(v4 + 55);
      if (v46 >= v47)
      {
        if (v47 < v8)
        {
          if (*(v4 + 54))
          {
            v48 = 2 * v47;
            if (!v47)
            {
              v48 = 8;
            }

            if (v48 <= v8)
            {
              v49 = v8;
            }

            else
            {
              v49 = v48;
            }

            this = re::DynamicArray<re::ObjCObject>::setCapacity(v4 + 54, v49);
          }

          else
          {
            this = re::DynamicArray<re::ObjCObject>::setCapacity(v4 + 54, v8);
            ++*(v4 + 114);
          }
        }

        v46 = *(v4 + 56);
      }

      v50 = (*(v4 + 58) + 8 * v46);
      if (v46 <= v2)
      {
        *v50 = 0;
      }

      else
      {
        v51 = *(v50 - 1);
        *(v50 - 1) = 0;
        *v50 = v51;
        v52 = *(v4 + 58);
        v53 = *(v4 + 56);
        v54 = (v52 + 8 * v53 - 8);
        if (v54 != (v52 + 8 * v2))
        {
          v55 = 8 * (v44 + v45) - 8 * v53 + 8;
          v56 = (v52 + 8 * v53 - 8);
          do
          {
            v57 = *--v56;
            *v56 = 0;
            v58 = *v54;
            *v54 = v57;

            v54 = v56;
            v55 += 8;
          }

          while (v55);
          v52 = *(v4 + 58);
        }

        v59 = *(v52 + 8 * v2);
        *(v52 + 8 * v2) = 0;

        v46 = *(v4 + 56);
      }

      *(v4 + 56) = v46 + 1;
      ++*(v4 + 114);
      ++v44;
      v43 = *(v4 + 53);
      if (v44 >= v43)
      {
        return;
      }
    }

LABEL_93:
    v72 = 0;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v84 = 0u;
    v69 = MEMORY[0x1E69E9C10];
    v70 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v76 = 136315906;
    v77 = "insert";
    v78 = 1024;
    if (v70)
    {
      v71 = 3;
    }

    else
    {
      v71 = 2;
    }

    v79 = 887;
    v80 = 2048;
    v81 = v2;
    v82 = 2048;
    v83 = v8;
    _os_log_send_and_compose_impl(v71, &v72, &v84, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v76, 38);
    _os_crash_msg();
    __break(1u);
  }
}

void re::EventTimeline::setEventData(re::EventTimeline *this, const re::TimelineEventData *a2, re::Allocator *a3)
{
  v6 = (*(*a3 + 32))(a3, 584, 8);
  ArcSharedObject::ArcSharedObject(v6, 0);
  v7[2] = a3;
  *v7 = &unk_1F5CB11E0;
  re::TimelineEventData::TimelineEventData((v7 + 3), a2);
  v8 = *(this + 10);
  *(this + 10) = v6;
  if (v8)
  {
  }
}

void re::TimelineEventData::addEvent(re::TimelineEventData *this@<X0>, double a2@<D0>, double a3@<D1>, uint64_t a4@<X1>, uint64_t a5@<X8>)
{
  v56 = *MEMORY[0x1E69E9840];
  if (a3 < 0.0)
  {
    *a5 = 0;
    return;
  }

  if (a3 != 0.0)
  {
    v12 = *(this + 4);
    if (v12)
    {
      v13 = 0;
      v14 = *(this + 6);
      while (*(v14 + 4 * v13) < a2)
      {
        if (v12 == ++v13)
        {
          v15 = (this + 16);
          v13 = *(this + 4);
          goto LABEL_21;
        }
      }

      v15 = (this + 16);
      if (v13)
      {
LABEL_21:
        v18 = v13 - 1;
        if (v12 <= v13 - 1)
        {
LABEL_32:
          v42 = 0;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v51 = 0u;
          v27 = MEMORY[0x1E69E9C10];
          v28 = v12;
          v29 = v18;
          v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v43 = 136315906;
          v44 = "operator[]";
          v45 = 1024;
          if (v30)
          {
            v31 = 3;
          }

          else
          {
            v31 = 2;
          }

          v46 = 789;
          v47 = 2048;
          v48 = v29;
          v49 = 2048;
          v50 = v28;
          _os_log_send_and_compose_impl(v31, &v42, &v51, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v43, 38, v40, v41);
          _os_crash_msg();
          __break(1u);
LABEL_36:
          v42 = 0;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v51 = 0u;
          v32 = MEMORY[0x1E69E9C10];
          v33 = v18;
          v34 = v19;
          v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v43 = 136315906;
          v44 = "operator[]";
          v45 = 1024;
          if (v35)
          {
            v36 = 3;
          }

          else
          {
            v36 = 2;
          }

          v46 = 789;
          v47 = 2048;
          v48 = v33;
          v49 = 2048;
          v50 = v34;
          _os_log_send_and_compose_impl(v36, &v42, &v51, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v43, 38, v40, v41);
          _os_crash_msg();
          __break(1u);
        }

        v19 = *(this + 9);
        if (v19 <= v18)
        {
          goto LABEL_36;
        }

        v20 = *(v14 + 4 * v18) + *(*(this + 11) + 4 * v18);
        v21 = a2;
        if (v20 <= v21 || vabds_f32(v20, v21) < (((fabsf(v21) + fabsf(v20)) + 1.0) * 0.00001))
        {
LABEL_27:
          *&v51 = v21;
          re::DynamicArray<float>::insert(v15, v13, &v51);
          v22 = a3;
          *&v51 = v22;
          re::DynamicArray<float>::insert((this + 56), v13, &v51);
          re::TimelineEventData::addEvent(this, v13);
          *a5 = 1;
          *(a5 + 8) = v13;
          return;
        }

        re::internal::assertLog(6, a4, "assertion failure: '%s' (%s:line %i) Can not add event inteval at time %f with duration %f. It overlaps with an existing event.", "false", "addEvent", 143, *&a2, *&a3);
        v15 = _os_crash("assertion failure: (false) Can not add event inteval at time %f with duration %f. It overlaps with an existing event.", v37, v39);
        __break(1u);
      }
    }

    else
    {
      v15 = (this + 16);
    }

    v13 = 0;
    v21 = a2;
    goto LABEL_27;
  }

  v7 = *(this + 14);
  if (!v7)
  {
    v8 = 0;
    v10 = (this + 96);
LABEL_18:
    v16 = a2;
    *&v51 = v16;
    re::DynamicArray<float>::insert(v10, v8, &v51);
    re::TimelineEventData::addEvent(this, *(this + 4) + v8);
    v17 = *(this + 4) + v8;
    *a5 = 1;
    *(a5 + 8) = v17;
    return;
  }

  v8 = 0;
  v9 = *(this + 16);
  while (*(v9 + 4 * v8) < a2)
  {
    if (v7 == ++v8)
    {
      v10 = (this + 96);
      v8 = *(this + 14);
      goto LABEL_16;
    }
  }

  v10 = (this + 96);
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (v7 <= v8 - 1)
  {
    v42 = 0;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v51 = 0u;
    v23 = MEMORY[0x1E69E9C10];
    v24 = v7;
    v25 = v8 - 1;
    v43 = 136315906;
    v44 = "operator[]";
    v45 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    v46 = 789;
    v47 = 2048;
    v48 = v25;
    v49 = 2048;
    v50 = v24;
    _os_log_send_and_compose_impl(v26, &v42, &v51, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v43, 38, v40, v41);
    _os_crash_msg();
    __break(1u);
    goto LABEL_32;
  }

  if (*(v9 + 4 * (v8 - 1)) < a2)
  {
    goto LABEL_18;
  }

  re::internal::assertLog(5, a4, "assertion failure: '%s' (%s:line %i) Can not add skip only, fence event at time %f. It overlaps with an existing fence event.", "false", "addEvent", 127, *&a2);
  _os_crash("assertion failure: (false) Can not add skip only, fence event at time %f. It overlaps with an existing fence event.", v38);
  __break(1u);
}

_anonymous_namespace_ *re::DynamicArray<float>::insert(_anonymous_namespace_ *this, unint64_t a2, _DWORD *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(this + 2);
  v5 = v4 + 1;
  if (v4 + 1 <= a2)
  {
    v14 = 0;
    memset(v23, 0, sizeof(v23));
    v11 = MEMORY[0x1E69E9C10];
    v15 = 136315906;
    v16 = "insert";
    v17 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v18 = 887;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v5;
    _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
  }

  v7 = this;
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<float>::growCapacity(this, v4 + 1);
    v4 = *(v7 + 2);
  }

  v8 = *(v7 + 4);
  v9 = (v8 + 4 * v4);
  if (v4 <= a2)
  {
    *v9 = *a3;
  }

  else
  {
    *v9 = *(v9 - 1);
    v10 = v8 + 4 * a2;
    if (v9 - 1 != v10)
    {
      this = memmove((v10 + 4), v10, v9 - v10 - 4);
      v8 = *(v7 + 4);
      v4 = *(v7 + 2);
    }

    *(v8 + 4 * a2) = *a3;
  }

  *(v7 + 2) = v4 + 1;
  ++*(v7 + 6);
  return this;
}

double re::TimelineEventData::totalDuration(re::TimelineEventData *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = *(*(this + 6) + 4 * v1 - 4) + *(*(this + 11) + 4 * *(this + 9) - 4);
  }

  else
  {
    v2 = 0.0;
  }

  v3 = *(this + 14);
  if (v3)
  {
    v4 = *(this + 16) + 4 * v3;
    if (v2 < *(v4 - 4))
    {
      return *(v4 - 4);
    }
  }

  return v2;
}

uint64_t re::TimelineEventData::parameterName(re::TimelineEventData *this, unint64_t a2)
{
  if (*(this + 41) <= a2)
  {
    return 0;
  }

  v2 = *(this + 42);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 19);
    while (1)
    {
      v5 = *v4;
      v4 += 10;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 42);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (v3 == v2)
  {
    return 0;
  }

  v6 = 0;
  while (v6 != a2)
  {
    ++v6;
    if (v2 <= v3 + 1)
    {
      v7 = v3 + 1;
    }

    else
    {
      v7 = *(this + 42);
    }

    while (v7 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(this + 19) + 40 * v3) & 0x80000000) != 0)
      {
        goto LABEL_18;
      }
    }

    LODWORD(v3) = v7;
LABEL_18:
    if (v3 == v2)
    {
      return 0;
    }
  }

  return *(*(this + 19) + 40 * v3 + 16);
}

uint64_t re::TimelineEventData::instancedTimelineType(re::TimelineEventData *this)
{
  if (*(this + 472) - 1 > 6)
  {
    return 51;
  }

  else
  {
    return *&a4[4 * (*(this + 472) - 1)];
  }
}

uint64_t re::EventTimeline::instance(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, int *a7)
{
  if (a2 > 3)
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        v7 = (*(*a3 + 32))(a3, 128, 8);
        v13 = re::Timeline::Timeline(v7, 49);
        *(v13 + 72) = 0;
        v14 = &unk_1F5CB1598;
      }

      else
      {
        v7 = (*(*a3 + 32))(a3, 128, 8);
        v13 = re::Timeline::Timeline(v7, 49);
        *(v13 + 72) = 0;
        v14 = &unk_1F5CB1648;
      }

      goto LABEL_19;
    }

    if (a2 == 6)
    {
      v7 = (*(*a3 + 32))(a3, 128, 8);
      v13 = re::Timeline::Timeline(v7, 49);
      *(v13 + 72) = 0;
      v14 = &unk_1F5CB12D8;
      goto LABEL_19;
    }

    if (a2 == 7)
    {
      v7 = (*(*a3 + 32))(a3, 128, 8);
      v13 = re::Timeline::Timeline(v7, 49);
      *(v13 + 72) = 0;
      v14 = &unk_1F5CB16F8;
      goto LABEL_19;
    }

    if (a2 != 8)
    {
      return v7;
    }

LABEL_10:
    v7 = (*(*a3 + 32))(a3, 128, 8);
    v13 = re::Timeline::Timeline(v7, 49);
    *(v13 + 72) = 0;
    v14 = &unk_1F5CB1228;
    goto LABEL_19;
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v7 = (*(*a3 + 32))(a3, 128, 8);
      v13 = re::Timeline::Timeline(v7, 49);
      *(v13 + 72) = 0;
      v14 = &unk_1F5CB1438;
    }

    else
    {
      v7 = (*(*a3 + 32))(a3, 128, 8);
      v13 = re::Timeline::Timeline(v7, 49);
      *(v13 + 72) = 0;
      v14 = &unk_1F5CB14E8;
    }

    goto LABEL_19;
  }

  if ((a2 + 1) < 2)
  {
    goto LABEL_10;
  }

  if (a2 != 1)
  {
    return v7;
  }

  v7 = (*(*a3 + 32))(a3, 128, 8);
  v13 = re::Timeline::Timeline(v7, 49);
  *(v13 + 72) = 0;
  v14 = &unk_1F5CB1388;
LABEL_19:
  *v13 = v14;
  *(v13 + 80) = -1;
  *(v13 + 96) = 0;
  *(v13 + 104) = a4;
  *(v13 + 112) = a1;
  *(v13 + 120) = a5;
  re::DynamicString::operator=((v13 + 40), (a1 + 40));
  *(v7 + 72) = *(a1 + 72);
  *(v7 + 12) = *(a1 + 12);
  *(v7 + 16) = *(a1 + 16);
  re::StringID::operator=((v7 + 24), (a1 + 24));
  if (a7)
  {
    v15 = *a7;
  }

  else
  {
    v16 = *a6;
    v17 = **a6 + 7;
    *v16 = (v17 & 0xFFFFFFF8) + 80;
    v18 = (*(v16 + 8) + (v17 & 0xFFFFFFF8));
    v18[3] = 0u;
    v18[4] = 0u;
    v18[1] = 0u;
    v18[2] = 0u;
    *v18 = 0u;
    v15 = v18 - *(v16 + 8);
  }

  *(v7 + 80) = v15;
  *(v7 + 88) = a6;
  return v7;
}

double *re::TypedEventTimelineInstance<float>::initAnimationState(uint64_t a1, uint64_t a2, __int128 *a3, unint64_t a4, double *a5, char a6)
{
  if (a3)
  {
    v11 = *a3;
    v12 = a3[1];
    v13 = a3[2];
    *(a2 + 41) = *(a3 + 41);
    *(a2 + 16) = v12;
    *(a2 + 32) = v13;
    *a2 = v11;
  }

  v14 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((*(a1 + 104) + 80), a2);
  v15 = *(re::RelativeArray<re::AnimationClock>::operator[](v14, 0) + 1);
  result = re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v16);
  v18 = v15 - result[2];
  *(a2 + 4) = v18;
  v19 = *(*(a1 + 112) + 80);
  v20 = v19[7];
  v21 = a4 >= v20;
  v22 = a4 - v20;
  if (!v21)
  {
    v23 = 6;
    v22 = a4;
LABEL_7:
    v24 = *(v19[v23 + 3] + 4 * v22);
    goto LABEL_9;
  }

  if (v22 < v19[17])
  {
    v23 = 16;
    goto LABEL_7;
  }

  v24 = NAN;
LABEL_9:
  v25 = v19[12];
  v21 = a4 >= v25;
  v26 = a4 - v25;
  if (v21)
  {
    if (v26 >= v19[17])
    {
      v27 = NAN;
    }

    else
    {
      v27 = 0.0;
    }
  }

  else
  {
    v27 = *(v19[14] + 4 * a4);
  }

  v28 = *a5;
  v29 = -1.0;
  if (v28 == 1)
  {
    v30 = (a5[1] - v24) / v27;
    if (v30 > 1.0)
    {
      v30 = 1.0;
    }

    if (v30 < 0.0)
    {
      v30 = 0.0;
    }

    v29 = v30;
  }

  *(a2 + 8) = v29;
  *(a2 + 1) = 0;
  *(a2 + 2) = v28;
  v31 = *(a1 + 120);
  if ((v31 & 0x80000000) == 0)
  {
    result = *(a1 + 104);
    do
    {
      v33 = (*(*result + 16))(result, v31);
      result = *(a1 + 104);
      v34 = *(result + 2);
      if (v34 <= v31)
      {
        re::internal::assertLog(6, v32, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v31, v34);
        result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v35, v36);
        __break(1u);
        return result;
      }

      if (v33)
      {
        break;
      }

      v31 = *(*(result + 1) + 4 * v31);
    }

    while ((v31 & 0x80000000) == 0);
    if (v33)
    {
      *(a2 + 40) = v33 + 8;
    }
  }

  *(a2 + 56) = a6;
  *(a2 + 48) = v24;
  *(a2 + 52) = v27;
  return result;
}

void re::TypedEventTimelineInstance<float>::raiseSkippedEvents(uint64_t a1, uint64_t a2, __int128 *a3, double a4, double a5)
{
  v81 = *MEMORY[0x1E69E9840];
  v69 = a3;
  if (a4 != a5 && vabdd_f64(a4, a5) >= (fabs(a4) + fabs(a5) + 1.0) * 1.0e-12)
  {
    v7 = *(*(a1 + 112) + 80);
    v66[0] = v7 + 24;
    v66[1] = &v68;
    v66[2] = &v67;
    v66[3] = a1;
    v66[4] = &v69;
    v66[5] = a2;
    if (a5 <= a4)
    {
      if (a5 < a4 && (*(v7 + 536) & 1) != 0)
      {
        v67 = a4;
        v68 = a5;
        if (*(v7 + 56) >= 1)
        {
          v32 = *(v7 + 56) & 0x7FFFFFFFLL;
          do
          {
            re::TypedEventTimelineInstance<float>::raiseSkippedEvents(double,double,re::AnimationClock,re::CompositionChainStateBase const*)::$_0::operator()(v66, v32 - 1, 1, v32 == *(v7 + 56));
          }

          while (v32-- > 1);
        }

        v34 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), a2);
        v36 = *(v34 + 56);
        if (v36 == 1)
        {
          v63 = *(v34 + 64);
        }

        v37 = re::PackedDataPtr<re::EventTimelineStateData>::get((a1 + 80), v35);
        if (*(v37 + 56) == 1)
        {
          *(v37 + 56) = 0;
        }

        v39 = re::PackedDataPtr<re::EventTimelineStateData>::get((a1 + 80), v38);
        if (*(v39 + 40) == 1)
        {
          *(v39 + 40) = 0;
        }

        if (*(v7 + 136) >= 1)
        {
          v41 = (*(v7 + 136) & 0x7FFFFFFFLL) - 1;
          while (1)
          {
            v42 = *(v7 + 136);
            if (v42 <= v41)
            {
              v70 = 0;
              v79 = 0u;
              memset(v80, 0, sizeof(v80));
              v78 = 0u;
              v59 = MEMORY[0x1E69E9C10];
              v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *to = 136315906;
              *&to[4] = "operator[]";
              v72 = 1024;
              if (v60)
              {
                v61 = 3;
              }

              else
              {
                v61 = 2;
              }

              v73 = 797;
              v74 = 2048;
              v75 = v41;
              v76 = 2048;
              v77 = v42;
              _os_log_send_and_compose_impl(v61, &v70, &v78, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", to, 38, v62, v63);
              _os_crash_msg();
              __break(1u);
            }

            v43 = *(*(v7 + 152) + 4 * v41);
            v44 = v68;
            if (v43 <= v44)
            {
              break;
            }

            v45 = fabsf(v43);
            if (vabds_f32(v43, v44) < (((v45 + fabsf(v44)) + 1.0) * 0.00001))
            {
              break;
            }

            if (v68 < v43)
            {
              if (v67 > v43 || v36 && v63 == v41 && ((v46 = v67, v43 == v46) || vabds_f32(v43, v46) < (((v45 + fabsf(v46)) + 1.0) * 0.00001)))
              {
                LOWORD(v78) = 255;
                BYTE2(v78) = 0;
                *(&v78 + 4) = 0;
                v79 = 0u;
                memset(v80, 0, 25);
                v47 = *(v7 + 56);
                LOBYTE(v64[0]) = 0;
                re::TypedEventTimelineInstance<float>::initAnimationState(a1, &v78, v69, v41 + v47, v64, 1);
                v48 = *(a1 + 104);
                *to = 0;
                objc_copyWeak(to, (v48 + 168));
                WeakRetained = objc_loadWeakRetained(to);
                if (WeakRetained)
                {
                  v51 = WeakRetained - 8;
                }

                else
                {
                  v51 = 0;
                }

                v52 = *(a1 + 104);
                v53 = *(v52 + 160);
                v54 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((v52 + 80), v50);
                v55 = re::RelativeArray<re::AnimationClock>::operator[](v54, 0);
                (*(*v51 + 40))(v51, 10, v53, a2, *(a1 + 112), v41 + v47, a1, &v78, *(v55 + 1));

                objc_destroyWeak(to);
              }
            }

            v56 = v41-- + 1;
            if (v56 <= 1)
            {
              return;
            }
          }

          if (v43 == v44 || vabds_f32(v43, v44) < (((fabsf(v43) + fabsf(v44)) + 1.0) * 0.00001))
          {
            v58 = re::PackedDataPtr<re::EventTimelineStateData>::get((a1 + 80), v40);
            if ((*(v58 + 56) & 1) == 0)
            {
              *(v58 + 56) = 1;
            }

            *(v58 + 64) = v41;
          }
        }
      }
    }

    else
    {
      v67 = a5;
      v68 = a4;
      v8 = *(v7 + 56);
      if (v8)
      {
        for (i = 0; i < v8; ++i)
        {
          re::TypedEventTimelineInstance<float>::raiseSkippedEvents(double,double,re::AnimationClock,re::CompositionChainStateBase const*)::$_0::operator()(v66, i, 0, i == v8 - 1);
          v8 = *(v7 + 56);
        }
      }

      v10 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), a2);
      v12 = *(v10 + 40);
      if (v12 == 1)
      {
        v63 = *(v10 + 48);
      }

      v13 = re::PackedDataPtr<re::EventTimelineStateData>::get((a1 + 80), v11);
      if (*(v13 + 40) == 1)
      {
        *(v13 + 40) = 0;
      }

      v15 = re::PackedDataPtr<re::EventTimelineStateData>::get((a1 + 80), v14);
      if (*(v15 + 56) == 1)
      {
        *(v15 + 56) = 0;
      }

      v17 = *(v7 + 136);
      if (v17)
      {
        v18 = 0;
        while (1)
        {
          v19 = *(*(v7 + 152) + 4 * v18);
          v20 = v67;
          if (v19 >= v20)
          {
            break;
          }

          v21 = fabsf(v19);
          if (vabds_f32(v19, v20) < (((v21 + fabsf(v20)) + 1.0) * 0.00001))
          {
            break;
          }

          if (v67 > v19)
          {
            if (v68 < v19 || v12 && v63 == v18 && ((v22 = v68, v19 == v22) || vabds_f32(v19, v22) < (((v21 + fabsf(v22)) + 1.0) * 0.00001)))
            {
              LOWORD(v78) = 255;
              BYTE2(v78) = 0;
              *(&v78 + 4) = 0;
              v79 = 0u;
              memset(v80, 0, 25);
              v23 = *(v7 + 56);
              LOBYTE(v65[0]) = 0;
              re::TypedEventTimelineInstance<float>::initAnimationState(a1, &v78, v69, v18 + v23, v65, 0);
              v24 = *(a1 + 104);
              *to = 0;
              objc_copyWeak(to, (v24 + 168));
              v25 = objc_loadWeakRetained(to);
              if (v25)
              {
                v27 = v25 - 8;
              }

              else
              {
                v27 = 0;
              }

              v28 = *(a1 + 104);
              v29 = *(v28 + 160);
              v30 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((v28 + 80), v26);
              v31 = re::RelativeArray<re::AnimationClock>::operator[](v30, 0);
              (*(*v27 + 40))(v27, 10, v29, a2, *(a1 + 112), v18 + v23, a1, &v78, *(v31 + 1));

              objc_destroyWeak(to);
              v17 = *(v7 + 136);
            }
          }

          if (++v18 >= v17)
          {
            return;
          }
        }

        if (v19 == v20 || vabds_f32(v19, v20) < (((fabsf(v19) + fabsf(v20)) + 1.0) * 0.00001))
        {
          v57 = re::PackedDataPtr<re::EventTimelineStateData>::get((a1 + 80), v16);
          if ((*(v57 + 40) & 1) == 0)
          {
            *(v57 + 40) = 1;
          }

          *(v57 + 48) = v18;
        }
      }
    }
  }
}

void re::TypedEventTimelineInstance<float>::raiseSkippedEvents(double,double,re::AnimationClock,re::CompositionChainStateBase const*)::$_0::operator()(uint64_t a1, unint64_t a2, char a3, int a4)
{
  v5 = &v39;
  v42 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = *(*a1 + 32);
  if (v7 <= a2)
  {
    v31 = 0;
    memset(v41, 0, sizeof(v41));
    v39 = 0u;
    v40 = 0u;
    v24 = MEMORY[0x1E69E9C10];
    *to = 136315906;
    *&to[4] = "operator[]";
    v33 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    v34 = 797;
    v35 = 2048;
    v36 = a2;
    v37 = 2048;
    v38 = v7;
    _os_log_send_and_compose_impl(v25, &v31, &v39, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", to, 38, v29, v30[0]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_18;
  }

  v9 = *(v6[6] + 4 * a2);
  if (**(a1 + 8) >= v9)
  {
    return;
  }

  v7 = v6[9];
  if (v7 <= a2)
  {
LABEL_18:
    v31 = 0;
    v5[4] = 0u;
    memset(v41, 0, 32);
    v39 = 0u;
    v40 = 0u;
    v26 = MEMORY[0x1E69E9C10];
    v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *to = 136315906;
    *&to[4] = "operator[]";
    v33 = 1024;
    if (v27)
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    v34 = 797;
    v35 = 2048;
    v36 = a2;
    v37 = 2048;
    v38 = v7;
    _os_log_send_and_compose_impl(v28, &v31, &v39, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", to, 38, v29, v30[0]);
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 24);
  v12 = v9 + *(v6[11] + 4 * a2);
  if (a4)
  {
    if (**(a1 + 16) <= v12)
    {
      return;
    }
  }

  else
  {
    v13 = **(a1 + 16);
    if (v12 > v13 && vabds_f32(v12, v13) >= (((fabsf(v12) + fabsf(v13)) + 1.0) * 0.00001))
    {
      return;
    }
  }

  LOWORD(v39) = 255;
  BYTE2(v39) = 0;
  *(&v39 + 4) = 0;
  v40 = 0u;
  memset(v41, 0, 25);
  v14 = **(a1 + 32);
  LOBYTE(v30[0]) = 0;
  re::TypedEventTimelineInstance<float>::initAnimationState(v11, &v39, v14, a2, v30, a3);
  v15 = *(v11 + 104);
  *to = 0;
  objc_copyWeak(to, (v15 + 168));
  WeakRetained = objc_loadWeakRetained(to);
  if (WeakRetained)
  {
    v18 = WeakRetained - 8;
  }

  else
  {
    v18 = 0;
  }

  v19 = *(v11 + 104);
  v20 = *(v19 + 160);
  v21 = *(a1 + 40);
  v22 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((v19 + 80), v17);
  v23 = re::RelativeArray<re::AnimationClock>::operator[](v22, 0);
  (*(*v18 + 40))(v18, 10, v20, v21, *(v11 + 112), a2, v11, &v39, *(v23 + 1));

  objc_destroyWeak(to);
}

void re::TypedEventTimelineInstance<float>::timelineRemoved(uint64_t a1, uint64_t a2)
{
  v42 = 255;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0u;
  memset(v47, 0, 25);
  v3 = *(a1 + 120);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(a1 + 104);
    do
    {
      v5 = (*(*v4 + 16))(v4, v3);
      v4 = *(a1 + 104);
      v6 = v4[2];
      if (v6 <= v3)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v3, v6);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v38, v39);
        __break(1u);
        return;
      }

      if (v5)
      {
        break;
      }

      v3 = *(v4[1] + 4 * v3);
    }

    while ((v3 & 0x80000000) == 0);
    if (v5)
    {
      v47[1] = v5 + 8;
    }
  }

  if (*re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), a2) == 1)
  {
    v8 = *(re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v7) + 8);
    LOBYTE(v41[0]) = 0;
    re::TypedEventTimelineInstance<float>::initAnimationState(a1, &v42, 0, v8, v41, 0);
    v9 = *(a1 + 104);
    to = 0;
    objc_copyWeak(&to, (v9 + 168));
    v10 = objc_loadWeakRetained(&to);
    v12 = v10 ? (v10 - 8) : 0;
    v13 = *(a1 + 104);
    v14 = *(v13 + 160);
    v15 = *(a1 + 120);
    v16 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((v13 + 80), v11);
    v17 = re::RelativeArray<re::AnimationClock>::operator[](v16, v15);
    v19 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((*(a1 + 104) + 80), v18);
    v20 = *(re::RelativeArray<re::AnimationClock>::operator[](v19, 0) + 1);
    v21 = *(a1 + 112);
    v23 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v22);
    (*(*v12 + 40))(v12, 7, v14, v17, v21, *(v23 + 8), a1, &v42, v20);

    objc_destroyWeak(&to);
    v25 = re::PackedDataPtr<re::EventTimelineStateData>::get((a1 + 80), v24);
    if (*v25 == 1)
    {
      *v25 = 0;
    }
  }

  v26 = *(a1 + 104);
  to = 0;
  objc_copyWeak(&to, (v26 + 168));
  v27 = objc_loadWeakRetained(&to);
  if (v27)
  {
    v29 = v27 - 8;
  }

  else
  {
    v29 = 0;
  }

  v30 = *(a1 + 104);
  v31 = *(v30 + 160);
  v32 = *(a1 + 120);
  v33 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((v30 + 80), v28);
  v34 = re::RelativeArray<re::AnimationClock>::operator[](v33, v32);
  v36 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((*(a1 + 104) + 80), v35);
  v37 = re::RelativeArray<re::AnimationClock>::operator[](v36, 0);
  (*(*v29 + 40))(v29, 11, v31, v34, *(a1 + 112), -1, a1, &v42, *(v37 + 1));

  objc_destroyWeak(&to);
}

void re::TypedEventTimelineInstance<float>::processPauseResume(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v6 = a2;
  if (*(re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), a2) + 72) != a2)
  {
    v9 = re::PackedDataPtr<re::EventTimelineStateData>::get((a1 + 80), v8);
    v10 = 0;
    *(v9 + 72) = v6;
    v31 = 255;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0u;
    memset(v36, 0, sizeof(v36));
    if (*(a3 + 16) == 1)
    {
      v30[1] = *(a3 + 24);
      v10 = 1;
    }

    LOBYTE(v30[0]) = v10;
    re::TypedEventTimelineInstance<float>::initAnimationState(a1, &v31, a4, 0xFFFFFFFFFFFFFFFFLL, v30, 0);
    if (v6)
    {
      v12 = *(a1 + 104);
      to = 0;
      objc_copyWeak(&to, (v12 + 168));
      v13 = objc_loadWeakRetained(&to);
      if (v13)
      {
        v15 = v13 - 8;
      }

      else
      {
        v15 = 0;
      }

      v16 = *(a1 + 104);
      v17 = *(v16 + 160);
      v18 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((v16 + 80), v14);
      v19.n128_u64[0] = *(re::RelativeArray<re::AnimationClock>::operator[](v18, 0) + 1);
      v20 = v15 + 8;
      (*(*v15 + 40))(v15, 8, v17, a3, *(a1 + 112), -1, a1, &v31, v19);
    }

    else
    {
      if ((*(a3 + 16) & 1) == 0)
      {
        re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) ", "clock.time.hasValue()", "processPauseResume", 497);
        _os_crash("assertion failure: (clock.time.hasValue()) ");
        __break(1u);
        return;
      }

      v21 = *(a1 + 104);
      to = 0;
      objc_copyWeak(&to, (v21 + 168));
      v22 = objc_loadWeakRetained(&to);
      if (v22)
      {
        v24 = v22 - 8;
      }

      else
      {
        v24 = 0;
      }

      v25 = *(a1 + 104);
      v26 = *(v25 + 160);
      v27 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((v25 + 80), v23);
      v28.n128_u64[0] = *(re::RelativeArray<re::AnimationClock>::operator[](v27, 0) + 1);
      v20 = v24 + 8;
      (*(*v24 + 40))(v24, 9, v26, a3, *(a1 + 112), -1, a1, &v31, v28);
    }

    objc_destroyWeak(&to);
  }
}

uint64_t re::TypedEventTimelineInstance<float>::processEvents(uint64_t a1, double *a2, __int128 *a3)
{
  v10 = &v167;
  v199 = *MEMORY[0x1E69E9840];
  v167 = 255;
  v168 = 0;
  v170 = 0;
  v169 = 0;
  v171 = 0u;
  memset(v172, 0, sizeof(v172));
  if ((a2[2] & 1) == 0)
  {
    if (*re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), a2) == 1)
    {
      v14 = *(re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v13) + 8);
      LOBYTE(v166[0]) = 0;
      re::TypedEventTimelineInstance<float>::initAnimationState(a1, &v167, a3, v14, v166, 0);
      v15 = *(a1 + 104);
      to[0] = 0;
      objc_copyWeak(to, (v15 + 168));
      WeakRetained = objc_loadWeakRetained(to);
      v18 = WeakRetained ? (WeakRetained - 8) : 0;
      v19 = *(a1 + 104);
      v20 = *(v19 + 160);
      v21 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((v19 + 80), v17);
      v22 = *(re::RelativeArray<re::AnimationClock>::operator[](v21, 0) + 1);
      v23 = *(a1 + 112);
      v25 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v24);
      (*(*v18 + 40))(v18, 7, v20, a2, v23, *(v25 + 8), a1, &v167, v22);

      objc_destroyWeak(to);
      v27 = re::PackedDataPtr<re::EventTimelineStateData>::get((a1 + 80), v26);
      if (*v27 == 1)
      {
        *v27 = 0;
      }
    }

    goto LABEL_101;
  }

  v11 = a2[3];
  if (*(a2 + 9) >= 0.0)
  {
    v12 = *(re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), a2) + 24) == 1 && v11 < *(re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), a2) + 32);
  }

  else
  {
    v12 = 1;
  }

  if (*(re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), a2) + 72) == 1 && (*(**(a1 + 104) + 32))(*(a1 + 104)) != 1)
  {
    v160 = *a2;
    v161 = *(a2 + 16);
    if (v161 == 1)
    {
      v162 = *(a2 + 3);
    }

    v29 = *(a2 + 3);
    v163 = *(a2 + 2);
    v164 = v29;
    v165 = *(a2 + 8);
    re::TypedEventTimelineInstance<float>::processPauseResume(a1, 0, &v160, a3);
  }

  if (*(re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v28) + 24) != 1)
  {
LABEL_59:
    v64 = re::PackedDataPtr<re::EventTimelineStateData>::get((a1 + 80), v30);
    if ((*(v64 + 24) & 1) == 0)
    {
      *(v64 + 24) = 1;
    }

    *(v64 + 32) = v11;
    v65 = *(*(a1 + 112) + 80);
    if (v12 && *(v65 + 536) != 1)
    {
      goto LABEL_101;
    }

    v66 = v11;
    v3 = *(v65 + 56);
    if (!v3)
    {
      goto LABEL_74;
    }

    v67 = *(v65 + 72);
    v68 = v67;
    v69 = *(v65 + 56);
    do
    {
      v70 = v69 >> 1;
      v71 = &v68[v69 >> 1];
      v73 = *v71;
      v72 = v71 + 1;
      v69 += ~(v69 >> 1);
      if (v66 + 0.00416666667 > v73)
      {
        v68 = v72;
      }

      else
      {
        v69 = v70;
      }
    }

    while (v69);
    v74 = v68 - v67;
    if (!v74)
    {
LABEL_74:
      v76 = re::TimelineEventData::totalDuration((v65 + 24));
      if (v76 != v66 && vabds_f32(v76, v66) >= (((fabsf(v66) + fabsf(v76)) + 1.0) * 0.00001))
      {
        if (*re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v13))
        {
          if (*re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v78) != 1)
          {
            goto LABEL_94;
          }

          v80 = 0;
LABEL_81:
          v81 = *(re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v79) + 8);
          LOBYTE(v141[0]) = 1;
          v141[1] = v11;
          re::TypedEventTimelineInstance<float>::initAnimationState(a1, &v167, a3, v81, v141, v12);
          v82 = *(a1 + 104);
          to[0] = 0;
          objc_copyWeak(to, (v82 + 168));
          v83 = objc_loadWeakRetained(to);
          if (v83)
          {
            v85 = v83 - 8;
          }

          else
          {
            v85 = 0;
          }

          v86 = *(a1 + 104);
          v87 = *(v86 + 160);
          v88 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((v86 + 80), v84);
          v89 = *(re::RelativeArray<re::AnimationClock>::operator[](v88, 0) + 1);
          v90 = *(a1 + 112);
          v92 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v91);
          (*(*v85 + 40))(v85, 7, v87, a2, v90, *(v92 + 8), a1, &v167, v89);

          objc_destroyWeak(to);
          if (v80)
          {
            goto LABEL_85;
          }

LABEL_94:
          v102 = re::PackedDataPtr<re::EventTimelineStateData>::get((a1 + 80), v79);
          if (*v102 == 1)
          {
            *v102 = 0;
          }
        }

LABEL_96:
        if (*re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v78) == 1)
        {
          v103 = *(re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v13) + 8);
          LOBYTE(v139[0]) = 1;
          v139[1] = v11;
          re::TypedEventTimelineInstance<float>::initAnimationState(a1, &v167, a3, v103, v139, v12);
          v104 = *(a1 + 104);
          to[0] = 0;
          objc_copyWeak(to, (v104 + 168));
          v105 = objc_loadWeakRetained(to);
          if (v105)
          {
            v107 = v105 - 8;
          }

          else
          {
            v107 = 0;
          }

          v108 = *(a1 + 104);
          v109 = *(v108 + 160);
          v110 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((v108 + 80), v106);
          v111 = *(re::RelativeArray<re::AnimationClock>::operator[](v110, 0) + 1);
          v112 = *(a1 + 112);
          v114 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v113);
          (*(*v107 + 40))(v107, 6, v109, a2, v112, *(v114 + 8), a1, &v167, v111);

          objc_destroyWeak(to);
        }

LABEL_101:
        v115 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((*(a1 + 104) + 80), v13);
        v116 = *(re::RelativeArray<re::AnimationClock>::operator[](v115, 0) + 1);
        result = re::PackedDataPtr<re::EventTimelineStateData>::get((a1 + 80), v117);
        *(result + 16) = v116;
        return result;
      }

      v4 = *(v65 + 56) - 1;
LABEL_77:
      v77 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v13);
      if (*v77 != 1 || v4 != *(v77 + 8))
      {
        if ((*re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v78) & 1) == 0)
        {
LABEL_85:
          v93 = re::PackedDataPtr<re::EventTimelineStateData>::get((a1 + 80), v79);
          if ((*v93 & 1) == 0)
          {
            *v93 = 1;
          }

          *(v93 + 8) = v4;
          LOBYTE(v140[0]) = 1;
          v140[1] = v11;
          re::TypedEventTimelineInstance<float>::initAnimationState(a1, &v167, a3, v4, v140, v12);
          v94 = *(a1 + 104);
          to[0] = 0;
          objc_copyWeak(to, (v94 + 168));
          v95 = objc_loadWeakRetained(to);
          if (v95)
          {
            v97 = v95 - 8;
          }

          else
          {
            v97 = 0;
          }

          v98 = *(a1 + 104);
          v99 = *(v98 + 160);
          v100 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((v98 + 80), v96);
          v101 = re::RelativeArray<re::AnimationClock>::operator[](v100, 0);
          (*(*v97 + 40))(v97, 5, v99, a2, *(a1 + 112), v4, a1, &v167, *(v101 + 1));

          objc_destroyWeak(to);
          goto LABEL_96;
        }

        v80 = 1;
        goto LABEL_81;
      }

      goto LABEL_96;
    }

    v4 = (v74 >> 2) - 1;
    if (v3 > v4)
    {
      v3 = *(v65 + 96);
      if (v3 > v4)
      {
        v75 = v67[v4] + *(*(v65 + 112) + 4 * v4);
        if (v75 > v66 && vabds_f32(v66, v75) >= (((fabsf(v66) + fabsf(v75)) + 1.0) * 0.00001))
        {
          goto LABEL_77;
        }

        goto LABEL_74;
      }

      goto LABEL_110;
    }

LABEL_106:
    v179[0] = 0;
    v197 = 0u;
    v198 = 0u;
    v195 = 0u;
    v196 = 0u;
    *to = 0u;
    v119 = MEMORY[0x1E69E9C10];
    v120 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v183 = 136315906;
    *(v10 + 180) = "operator[]";
    WORD2(v184) = 1024;
    if (v120)
    {
      v121 = 3;
    }

    else
    {
      v121 = 2;
    }

    *(v10 + 190) = 797;
    v186 = 2048;
    *(v10 + 196) = v4;
    WORD2(v187) = 2048;
    *(v10 + 206) = v3;
    _os_log_send_and_compose_impl(v121, v179, to, 80, &dword_1E1C61000, v119, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v183, 38, v137, v138);
    _os_crash_msg();
    __break(1u);
LABEL_110:
    v179[0] = 0;
    v197 = 0u;
    v198 = 0u;
    v195 = 0u;
    v196 = 0u;
    *to = 0u;
    v122 = MEMORY[0x1E69E9C10];
    v123 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v183 = 136315906;
    *(v10 + 180) = "operator[]";
    WORD2(v184) = 1024;
    if (v123)
    {
      v124 = 3;
    }

    else
    {
      v124 = 2;
    }

    *(v10 + 190) = 797;
    v186 = 2048;
    *(v10 + 196) = v4;
    WORD2(v187) = 2048;
    *(v10 + 206) = v3;
    _os_log_send_and_compose_impl(v124, v179, to, 80, &dword_1E1C61000, v122, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v183, 38, v137, v138);
    _os_crash_msg();
    __break(1u);
LABEL_114:
    re::internal::assertLog(6, v40, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v43, v44);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v131, v136);
    __break(1u);
  }

  v31 = *(re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v30) + 32);
  v4 = *(a1 + 120);
  v33 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((*(a1 + 104) + 80), v32);
  v34 = re::RelativeArray<re::AnimationClock>::operator[](v33, v4);
  v36 = *(a1 + 104);
  v37 = *(a1 + 120);
  v38 = *(v36 + 32);
  if (v38 <= v37)
  {
LABEL_105:
    re::internal::assertLog(6, v35, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v37, v38);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v130, v135);
    __break(1u);
    goto LABEL_106;
  }

  v39 = v34[56];
  if (*(v34 + 12) != *(v34 + 13))
  {
    v53 = *(v36 + 24) + 28 * v37;
    v6 = *(v53 + 12);
    v5 = *(v53 + 16);
LABEL_49:
    if (v39)
    {
      v148 = *a2;
      v149 = *(a2 + 16);
      if (v149 == 1)
      {
        v150 = *(a2 + 3);
      }

      v61 = *(a2 + 3);
      v151 = *(a2 + 2);
      v152 = v61;
      v153 = *(a2 + 8);
      re::TypedEventTimelineInstance<float>::raiseSkippedEvents(a1, &v148, a3, v31, v6 + -0.00100000005);
      v31 = v5 + 0.00100000005;
    }

    else
    {
      v154 = *a2;
      v155 = *(a2 + 16);
      if (v155 == 1)
      {
        v156 = *(a2 + 3);
      }

      v62 = *(a2 + 3);
      v157 = *(a2 + 2);
      v158 = v62;
      v159 = *(a2 + 8);
      re::TypedEventTimelineInstance<float>::raiseSkippedEvents(a1, &v154, a3, v31, v5 + 0.00100000005);
      v31 = v6 + -0.00100000005;
    }

LABEL_56:
    v142 = *a2;
    v143 = *(a2 + 16);
    if (v143 == 1)
    {
      v144 = *(a2 + 3);
    }

    v63 = *(a2 + 3);
    v145 = *(a2 + 2);
    v146 = v63;
    v147 = *(a2 + 8);
    re::TypedEventTimelineInstance<float>::raiseSkippedEvents(a1, &v142, a3, v31, v11);
    goto LABEL_59;
  }

  re::StackScratchAllocator::StackScratchAllocator(to);
  v182 = 0;
  v180 = 0;
  v181 = 0;
  v179[1] = 0;
  v179[0] = to;
  re::DynamicArray<int>::setCapacity(v179, 0);
  ++v181;
  v183 = *(a1 + 120);
  re::DynamicArray<int>::add(v179, &v183);
  (*(**(a1 + 104) + 24))(*(a1 + 104));
  v42 = *(a1 + 104);
  v43 = *(a1 + 120);
  v44 = *(v42 + 16);
  if (v44 <= v43)
  {
    goto LABEL_114;
  }

  v4 = *(*(v42 + 8) + 4 * v43);
  v178 = v4;
  if ((v4 & 0x80000000) != 0)
  {
LABEL_30:
    v4 = 0;
LABEL_45:
    if (v179[0] && v182)
    {
      (*(*v179[0] + 40))();
    }

    re::StackScratchAllocator::~StackScratchAllocator(to);
    if (!v4)
    {
      goto LABEL_56;
    }

    goto LABEL_49;
  }

  v45 = v41;
  v3 = 1;
  while (1)
  {
    v46 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((v42 + 80), v40);
    v47 = re::RelativeArray<re::AnimationClock>::operator[](v46, v4);
    v49 = *(a1 + 104);
    v50 = *(v49 + 32);
    if (v50 <= v178)
    {
      re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v178, v50);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v127, v132);
      __break(1u);
LABEL_103:
      re::internal::assertLog(6, v40, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v51, v52);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v128, v133);
      __break(1u);
LABEL_104:
      re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v56, v58);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v129, v134);
      __break(1u);
      goto LABEL_105;
    }

    if (v47[56])
    {
      v39 = (v39 & 1) == 0;
    }

    if (*(v47 + 12) != *(v47 + 13))
    {
      break;
    }

    re::DynamicArray<int>::add(v179, &v178);
    v42 = *(a1 + 104);
    v51 = v178;
    v52 = *(v42 + 16);
    if (v52 <= v178)
    {
      goto LABEL_103;
    }

    v4 = *(*(v42 + 8) + 4 * v178);
    v178 = v4;
    if ((v4 & 0x80000000) != 0)
    {
      goto LABEL_30;
    }
  }

  v54 = *(v49 + 24) + 28 * v178;
  v6 = *(v54 + 12);
  v5 = *(v54 + 16);
  v55 = v180;
  v4 = 1;
  if (!v180)
  {
    goto LABEL_45;
  }

  v10 = 1;
  v3 = 1;
  while (1)
  {
    v56 = *(v182 + 4 * v55 - 4);
    v57 = *(a1 + 104);
    v58 = *(v57 + 32);
    if (v58 <= v56)
    {
      goto LABEL_104;
    }

    v59 = (*(v57 + 24) + 28 * v56);
    v60 = *v59;
    *&v177[12] = *(v59 + 12);
    *v177 = v60;
    v177[25] = 3;
    v180 = v55 - 1;
    ++v181;
    LOBYTE(v183) = 1;
    v184 = 0;
    v185 = 0;
    v188 = 0;
    v192 = 0;
    v191 = 0;
    v190[0] = 0;
    v189 = 0;
    *(v190 + 5) = 0;
    v193 = 2;
    v175[0] = v10;
    if ((v10 & 1) == 0)
    {
      goto LABEL_116;
    }

    v176 = v6;
    re::AnimationClock::update(&v183, v175, v177, v45);
    v173[0] = v3;
    if ((v3 & 1) == 0)
    {
      break;
    }

    if (v185)
    {
      v6 = v187;
      v10 = v10;
    }

    else
    {
      v10 = 0;
    }

    v174 = v5;
    re::AnimationClock::update(&v183, v173, v177, v45);
    if (v185)
    {
      v5 = v187;
      v3 = v3;
    }

    else
    {
      v3 = 0;
    }

    v55 = v180;
    if (!v180)
    {
      v4 = 1;
      v10 = &v167;
      goto LABEL_45;
    }
  }

  re::AnimationClock::update(&v183, v173, v177, v45);
  re::internal::assertLog(4, v125, "assertion failure: '%s' (%s:line %i) ", "loopEnd.hasValue()", "didLoop", 477);
  _os_crash("assertion failure: (loopEnd.hasValue()) ");
  __break(1u);
LABEL_116:
  re::AnimationClock::update(&v183, v175, v177, v45);
  re::internal::assertLog(4, v126, "assertion failure: '%s' (%s:line %i) ", "loopStart.hasValue()", "didLoop", 474);
  result = _os_crash("assertion failure: (loopStart.hasValue()) ");
  __break(1u);
  return result;
}

void re::EventTimeline::~EventTimeline(re::EventTimeline *this)
{
  *this = &unk_1F5CB1130;
  v2 = *(this + 10);
  if (v2)
  {

    *(this + 10) = 0;
  }

  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CB1130;
  v2 = *(this + 10);
  if (v2)
  {

    *(this + 10) = 0;
  }

  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

double re::EventTimeline::totalDuration(re::EventTimeline *this)
{
  v1 = *(this + 10);
  if (v1)
  {
    return re::TimelineEventData::totalDuration((v1 + 24));
  }

  else
  {
    return 0.0;
  }
}

void re::EventTimeline::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Requires EventTimelineInstance", "!Unreachable code", "evaluateCore", 390);
  _os_crash("assertion failure: (!Unreachable code) Requires EventTimelineInstance");
  __break(1u);
}

uint64_t re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(result + 16);
  result = re::StringID::operator==((v10 + 40 * v8 + 8), a2);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 40 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::StringID::operator==((v10 + 40 * v11 + 8), a2);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 40 * v12) & 0x7FFFFFFF;
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
  *a4 = a3;
  *(a4 + 8) = v7;
  *(a4 + 12) = v6;
  *(a4 + 16) = v8;
  return result;
}

void re::SharedEventData::~SharedEventData(re::SharedEventData *this)
{
  *this = &unk_1F5CB11E0;
  re::DynamicArray<unsigned long>::deinit(this + 544);

  re::FixedArray<CoreIKTransform>::deinit(this + 63);
  re::DynamicArray<re::ObjCObject>::deinit(this + 456);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(this + 408);
  re::DynamicArray<unsigned long>::deinit(this + 360);
  re::DynamicArray<re::StringID>::deinit(this + 312);
  re::DynamicArray<unsigned long>::deinit(this + 264);
  re::DynamicArray<unsigned long>::deinit(this + 216);
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 20);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  re::DynamicArray<unsigned long>::deinit(this + 40);
  re::StringID::destroyString((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CB11E0;
  re::DynamicArray<unsigned long>::deinit(this + 544);

  re::FixedArray<CoreIKTransform>::deinit(this + 63);
  re::DynamicArray<re::ObjCObject>::deinit(this + 456);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(this + 408);
  re::DynamicArray<unsigned long>::deinit(this + 360);
  re::DynamicArray<re::StringID>::deinit(this + 312);
  re::DynamicArray<unsigned long>::deinit(this + 264);
  re::DynamicArray<unsigned long>::deinit(this + 216);
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 20);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  re::DynamicArray<unsigned long>::deinit(this + 40);
  re::StringID::destroyString((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

re::TimelineEventData *re::TimelineEventData::TimelineEventData(re::TimelineEventData *this, const re::TimelineEventData *a2)
{
  v4 = re::StringID::StringID(this, a2);
  re::DynamicArray<float>::DynamicArray(v4 + 16, a2 + 2);
  re::DynamicArray<float>::DynamicArray(this + 56, a2 + 7);
  re::DynamicArray<float>::DynamicArray(this + 96, a2 + 12);
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::HashTable(this + 136, a2 + 17);
  *(this + 23) = *(a2 + 23);
  re::DynamicArray<float>::DynamicArray(this + 192, a2 + 24);
  *(this + 29) = *(a2 + 29);
  re::DynamicArray<float>::DynamicArray(this + 240, a2 + 30);
  *(this + 35) = *(a2 + 35);
  re::DynamicArray<re::StringID>::DynamicArray(this + 288, a2 + 36);
  *(this + 41) = *(a2 + 41);
  re::DynamicArray<re::Vector4<float>>::DynamicArray(this + 336, a2 + 42);
  *(this + 47) = *(a2 + 47);
  re::DynamicArray<re::FixedArray<unsigned char>>::DynamicArray(this + 384, a2 + 48);
  *(this + 53) = *(a2 + 53);
  re::DynamicArray<re::ObjCObject>::DynamicArray(this + 432, a2 + 54);
  *(this + 472) = *(a2 + 472);
  re::FixedArray<unsigned char>::FixedArray(this + 60, a2 + 60);
  *(this + 63) = *(a2 + 63);
  *(this + 512) = *(a2 + 512);
  re::DynamicArray<char const*>::DynamicArray(this + 520, a2 + 65);
  return this;
}

uint64_t re::DynamicArray<float>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<int>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<float>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::HashTable(uint64_t a1, void *a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  v4 = *a2;
  if (v4)
  {
    if (*(a2 + 7) <= 3u)
    {
      v5 = 3;
    }

    else
    {
      v5 = *(a2 + 7);
    }

    re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, v4, v5);
    re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(a1, a2);
  }

  return a1;
}

void re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = (v7 + 1);
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 40 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

re::StringID *re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(re::StringID *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        v10 = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 24), v9);
        result = re::StringID::StringID((v10 + 8), (*(a2 + 16) + v5 + 8));
        *(v10 + 24) = *(*(a2 + 16) + v5 + 24);
        v2 = *(a2 + 32);
      }

      v5 += 40;
    }
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 40 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 40 * v4;
}

void re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        result = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 24), v9);
        v10 = *(a2 + 16) + v5;
        v11 = *(v10 + 8);
        *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        *(result + 8) = *(v10 + 8) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        *(result + 16) = *(v10 + 16);
        *(v10 + 8) = 0;
        *(v10 + 16) = &str_67;
        *(result + 24) = *(*(a2 + 16) + v5 + 24);
        v2 = *(a2 + 32);
      }

      v5 += 40;
    }
  }

  return result;
}

double re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::StringID::destroyString((v6 + v4 + 8));
          v3 = *(a1 + 8);
        }

        v4 += 40;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t re::DynamicArray<re::Vector4<float>>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::Vector4<float>>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::Vector4<float>>::copy(a1, a2);
  }

  return a1;
}

void **re::DynamicArray<re::Vector4<float>>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::Vector4<float>>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 16 * v5);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 16 * v5, (*(a2 + 32) + 16 * v5), 16 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 16 * v4);
  }

  v3[2] = v4;
  return result;
}

uint64_t re::DynamicArray<re::FixedArray<unsigned char>>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::FixedArray<unsigned char>>::copy(a1, a2);
  }

  return a1;
}

uint64_t *re::DynamicArray<re::FixedArray<unsigned char>>::copy(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = result[2];
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(result, *(a2 + 16));
    v11 = *(a2 + 32);
    v12 = v3[2];
    v13 = v3[4];
    if (v12)
    {
      v14 = 24 * v12;
      do
      {
        result = re::FixedArray<unsigned char>::operator=(v13, v11);
        v11 += 3;
        v13 += 3;
        v14 -= 24;
      }

      while (v14);
      v13 = v3[4];
      v12 = v3[2];
      v11 = *(a2 + 32);
    }

    if (v12 != v4)
    {
      v15 = 3 * v12;
      v16 = &v11[v15];
      result = &v13[v15];
      v17 = 24 * v4 - 8 * v15;
      do
      {
        v18 = re::FixedArray<unsigned char>::FixedArray(result, v16);
        v16 += 3;
        result = v18 + 3;
        v17 -= 24;
      }

      while (v17);
    }
  }

  else
  {
    v6 = result[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 24 * v4;
      do
      {
        result = re::FixedArray<unsigned char>::operator=(v6, v7);
        v7 += 3;
        v6 += 3;
        v8 -= 24;
      }

      while (v8);
      v6 = v3[4];
      v5 = v3[2];
    }

    if (v4 != v5)
    {
      v9 = &v6[3 * v4];
      v10 = 24 * v5 - 24 * v4;
      do
      {
        result = re::FixedArray<CoreIKTransform>::deinit(v9);
        v9 += 3;
        v10 -= 24;
      }

      while (v10);
    }
  }

  v3[2] = v4;
  return result;
}

uint64_t *re::FixedArray<unsigned char>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (!v4)
      {
        return a1;
      }

      goto LABEL_7;
    }

    if (v4)
    {
      re::FixedArray<BOOL>::init<>(a1, v4, a2[1]);
LABEL_7:
      re::FixedArray<unsigned char>::copy(a1, a2);
    }
  }

  return a1;
}

void *re::FixedArray<unsigned char>::copy(void *result, uint64_t a2)
{
  v4 = result[1];
  if (v4 == *(a2 + 8))
  {
    if (v4)
    {
      v5 = *(a2 + 16);
      v6 = result[2];

      return memmove(v6, v5, v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388, v2, v3);
    result = _os_crash("assertion failure: (m_size == other.m_size) Cannot copy from a FixedArray of a different size");
    __break(1u);
  }

  return result;
}

uint64_t re::DynamicArray<re::ObjCObject>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::ObjCObject>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::ObjCObject>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::ObjCObject>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::ObjCObject>::setCapacity(a1, *(a2 + 16));
    v13 = *(a2 + 32);
    v14 = a1[2];
    v15 = a1[4];
    if (v14)
    {
      v16 = 8 * v14;
      do
      {
        v17 = re::ObjCObject::operator=(v15, v13++);
        v15 = v17 + 1;
        v16 -= 8;
      }

      while (v16);
      v15 = a1[4];
      v14 = a1[2];
      v13 = *(a2 + 32);
    }

    if (v14 != v4)
    {
      v18 = &v13[v14];
      v19 = &v15[v14];
      v20 = 8 * v4 - 8 * v14;
      do
      {
        v21 = *v18++;
        *v19++ = v21;
        v20 -= 8;
      }

      while (v20);
    }
  }

  else
  {
    v6 = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 8 * v4;
      do
      {
        v9 = re::ObjCObject::operator=(v6, v7++);
        v6 = v9 + 1;
        v8 -= 8;
      }

      while (v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v10 = &v6[v4];
      v11 = 8 * v5 - 8 * v4;
      do
      {
        v12 = *v10++;

        v11 -= 8;
      }

      while (v11);
    }
  }

  a1[2] = v4;
}

void *re::DynamicArray<re::ObjCObject>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ObjCObject>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 61)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 8, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v14, v16);
          __break(1u);
        }

        else
        {
          v2 = 8 * a2;
          result = (*(*result + 32))(result, 8 * a2, 8);
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

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v15, v17);
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
        v10 = 8 * v9;
        v11 = v7;
        do
        {
          v12 = *v8;
          *v8 = 0;
          *v11++ = v12;
          v13 = *v8++;

          v10 -= 8;
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

void *re::FixedArray<unsigned char>::FixedArray(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<BOOL>::init<>(a1, v4, a2[1]);
    re::FixedArray<unsigned char>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::DynamicArray<char const*>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<float *>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<char const*>::copy(a1, a2);
  }

  return a1;
}

void **re::DynamicArray<char const*>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<float *>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 8 * v5);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 8 * v5, (*(a2 + 32) + 8 * v5), 8 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 8 * v4);
  }

  v3[2] = v4;
  return result;
}

uint64_t re::DynamicArray<re::ObjCObject>::deinit(uint64_t a1)
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
        v5 = 8 * v4;
        do
        {
          v6 = *v3++;

          v5 -= 8;
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

_anonymous_namespace_ *re::DynamicArray<re::FixedArray<unsigned char>>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypedEventTimelineInstance<float>::~TypedEventTimelineInstance(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v2);
  return a1;
}

void re::TypedEventTimelineInstance<float>::~TypedEventTimelineInstance(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::TypedEventTimelineInstance<float>::evaluateCore(uint64_t a1, __int128 *a2, uint64_t a3, void *a4, void *a5, _DWORD *a6)
{
  v12 = *(a1 + 104);
  to[0] = 0;
  objc_copyWeak(to, (v12 + 168));
  WeakRetained = objc_loadWeakRetained(to);
  objc_destroyWeak(to);
  if (WeakRetained)
  {
    v15 = *(*(*(a1 + 112) + 80) + 496);
    if (v15 != 255)
    {
      v28 = a6;
      v29 = 0;
      v30 = 1;
      *(to + 1) = 0;
      HIDWORD(to[0]) = 0;
      LODWORD(to[1]) = 0;
      to[5] = 0;
      to[6] = 0;
      v27 = 0;
      LOBYTE(to[0]) = v15;
      to[2] = a4;
      to[3] = a5;
      to[4] = &v28;
      if (!a3)
      {
        re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v19);
        __break(1u);
        return;
      }

      v20 = *a2;
      v21 = *(a2 + 16);
      if (v21 == 1)
      {
        v22 = *(a2 + 3);
      }

      v16 = a2[2];
      v17 = a2[3];
      v25 = *(a2 + 8);
      v23 = v16;
      v24 = v17;
      re::TypedEventTimelineInstance<float>::processEvents(a1, &v20, to);
      if (!v29 && *(a1 + 72) == 1 && *(a2 + 16) == 1 && v30 == 1)
      {
        *v28 = 0;
      }
    }
  }
}

void *re::TypedEventTimelineInstance<re::GenericSRT<float>>::~TypedEventTimelineInstance(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v2);
  return a1;
}

void re::TypedEventTimelineInstance<re::GenericSRT<float>>::~TypedEventTimelineInstance(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::TypedEventTimelineInstance<re::GenericSRT<float>>::evaluateCore(uint64_t a1, __int128 *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v12 = *(a1 + 104);
  to[0] = 0;
  objc_copyWeak(to, (v12 + 168));
  WeakRetained = objc_loadWeakRetained(to);
  objc_destroyWeak(to);
  if (WeakRetained)
  {
    v15 = *(*(*(a1 + 112) + 80) + 496);
    if (v15 != 255)
    {
      v29 = a6;
      v30 = 0;
      v31 = 1;
      *(to + 1) = 0;
      HIDWORD(to[0]) = 0;
      LODWORD(to[1]) = 0;
      to[5] = 0;
      to[6] = 0;
      v28 = 0;
      LOBYTE(to[0]) = v15;
      to[2] = a4;
      to[3] = a5;
      to[4] = &v29;
      if (!a3)
      {
        re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v20);
        __break(1u);
        return;
      }

      v21 = *a2;
      v22 = *(a2 + 16);
      if (v22 == 1)
      {
        v23 = *(a2 + 3);
      }

      v16 = a2[2];
      v17 = a2[3];
      v26 = *(a2 + 8);
      v24 = v16;
      v25 = v17;
      re::TypedEventTimelineInstance<float>::processEvents(a1, &v21, to);
      if (!v30 && *(a1 + 72) == 1 && *(a2 + 16) == 1 && v31 == 1)
      {
        v18 = v29;
        *v29 = 0x3F8000003F800000;
        v18[1] = 1065353216;
        v18[2] = 0;
        v18[3] = 0x3F80000000000000;
        v18[4] = 0;
        v18[5] = 0;
      }
    }
  }
}

void *re::TypedEventTimelineInstance<double>::~TypedEventTimelineInstance(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v2);
  return a1;
}

void re::TypedEventTimelineInstance<double>::~TypedEventTimelineInstance(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::TypedEventTimelineInstance<double>::evaluateCore(uint64_t a1, __int128 *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v12 = *(a1 + 104);
  to[0] = 0;
  objc_copyWeak(to, (v12 + 168));
  WeakRetained = objc_loadWeakRetained(to);
  objc_destroyWeak(to);
  if (WeakRetained)
  {
    v15 = *(*(*(a1 + 112) + 80) + 496);
    if (v15 != 255)
    {
      v28 = a6;
      v29 = 0;
      v30 = 1;
      *(to + 1) = 0;
      HIDWORD(to[0]) = 0;
      LODWORD(to[1]) = 0;
      to[5] = 0;
      to[6] = 0;
      v27 = 0;
      LOBYTE(to[0]) = v15;
      to[2] = a4;
      to[3] = a5;
      to[4] = &v28;
      if (!a3)
      {
        re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v19);
        __break(1u);
        return;
      }

      v20 = *a2;
      v21 = *(a2 + 16);
      if (v21 == 1)
      {
        v22 = *(a2 + 3);
      }

      v16 = a2[2];
      v17 = a2[3];
      v25 = *(a2 + 8);
      v23 = v16;
      v24 = v17;
      re::TypedEventTimelineInstance<float>::processEvents(a1, &v20, to);
      if (!v29 && *(a1 + 72) == 1 && *(a2 + 16) == 1 && v30 == 1)
      {
        *v28 = 0;
      }
    }
  }
}

void *re::TypedEventTimelineInstance<re::Vector2<float>>::~TypedEventTimelineInstance(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v2);
  return a1;
}

void re::TypedEventTimelineInstance<re::Vector2<float>>::~TypedEventTimelineInstance(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::TypedEventTimelineInstance<re::Vector2<float>>::evaluateCore(uint64_t a1, __int128 *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v12 = *(a1 + 104);
  to[0] = 0;
  objc_copyWeak(to, (v12 + 168));
  WeakRetained = objc_loadWeakRetained(to);
  objc_destroyWeak(to);
  if (WeakRetained)
  {
    v15 = *(*(*(a1 + 112) + 80) + 496);
    if (v15 != 255)
    {
      v28 = a6;
      v29 = 0;
      v30 = 1;
      *(to + 1) = 0;
      HIDWORD(to[0]) = 0;
      LODWORD(to[1]) = 0;
      to[5] = 0;
      to[6] = 0;
      v27 = 0;
      LOBYTE(to[0]) = v15;
      to[2] = a4;
      to[3] = a5;
      to[4] = &v28;
      if (!a3)
      {
        re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v19);
        __break(1u);
        return;
      }

      v20 = *a2;
      v21 = *(a2 + 16);
      if (v21 == 1)
      {
        v22 = *(a2 + 3);
      }

      v16 = a2[2];
      v17 = a2[3];
      v25 = *(a2 + 8);
      v23 = v16;
      v24 = v17;
      re::TypedEventTimelineInstance<float>::processEvents(a1, &v20, to);
      if (!v29 && *(a1 + 72) == 1 && *(a2 + 16) == 1 && v30 == 1)
      {
        *v28 = 0;
      }
    }
  }
}

void *re::TypedEventTimelineInstance<re::Vector3<float>>::~TypedEventTimelineInstance(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v2);
  return a1;
}

void re::TypedEventTimelineInstance<re::Vector3<float>>::~TypedEventTimelineInstance(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::TypedEventTimelineInstance<re::Vector3<float>>::evaluateCore(uint64_t a1, __int128 *a2, uint64_t a3, void *a4, void *a5, _OWORD *a6)
{
  v12 = *(a1 + 104);
  to[0] = 0;
  objc_copyWeak(to, (v12 + 168));
  WeakRetained = objc_loadWeakRetained(to);
  objc_destroyWeak(to);
  if (WeakRetained)
  {
    v15 = *(*(*(a1 + 112) + 80) + 496);
    if (v15 != 255)
    {
      v28 = a6;
      v29 = 0;
      v30 = 1;
      *(to + 1) = 0;
      HIDWORD(to[0]) = 0;
      LODWORD(to[1]) = 0;
      to[5] = 0;
      to[6] = 0;
      v27 = 0;
      LOBYTE(to[0]) = v15;
      to[2] = a4;
      to[3] = a5;
      to[4] = &v28;
      if (!a3)
      {
        re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v19);
        __break(1u);
        return;
      }

      v20 = *a2;
      v21 = *(a2 + 16);
      if (v21 == 1)
      {
        v22 = *(a2 + 3);
      }

      v16 = a2[2];
      v17 = a2[3];
      v25 = *(a2 + 8);
      v23 = v16;
      v24 = v17;
      re::TypedEventTimelineInstance<float>::processEvents(a1, &v20, to);
      if (!v29 && *(a1 + 72) == 1 && *(a2 + 16) == 1 && v30 == 1)
      {
        *v28 = 0u;
      }
    }
  }
}

void *re::TypedEventTimelineInstance<re::Vector4<float>>::~TypedEventTimelineInstance(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v2);
  return a1;
}

void re::TypedEventTimelineInstance<re::Vector4<float>>::~TypedEventTimelineInstance(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::TypedEventTimelineInstance<re::Vector4<float>>::evaluateCore(uint64_t a1, __int128 *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v12 = *(a1 + 104);
  to[0] = 0;
  objc_copyWeak(to, (v12 + 168));
  WeakRetained = objc_loadWeakRetained(to);
  objc_destroyWeak(to);
  if (WeakRetained)
  {
    v15 = *(*(*(a1 + 112) + 80) + 496);
    if (v15 != 255)
    {
      v29 = a6;
      v30 = 0;
      v31 = 1;
      *(to + 1) = 0;
      HIDWORD(to[0]) = 0;
      LODWORD(to[1]) = 0;
      to[5] = 0;
      to[6] = 0;
      v28 = 0;
      LOBYTE(to[0]) = v15;
      to[2] = a4;
      to[3] = a5;
      to[4] = &v29;
      if (!a3)
      {
        re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v20);
        __break(1u);
        return;
      }

      v21 = *a2;
      v22 = *(a2 + 16);
      if (v22 == 1)
      {
        v23 = *(a2 + 3);
      }

      v16 = a2[2];
      v17 = a2[3];
      v26 = *(a2 + 8);
      v24 = v16;
      v25 = v17;
      re::TypedEventTimelineInstance<float>::processEvents(a1, &v21, to);
      if (!v30 && *(a1 + 72) == 1 && *(a2 + 16) == 1 && v31 == 1)
      {
        v18 = v29;
        *v29 = 0;
        v18[1] = 0;
      }
    }
  }
}

void *re::TypedEventTimelineInstance<re::Quaternion<float>>::~TypedEventTimelineInstance(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v2);
  return a1;
}

void re::TypedEventTimelineInstance<re::Quaternion<float>>::~TypedEventTimelineInstance(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::TypedEventTimelineInstance<re::Quaternion<float>>::evaluateCore(uint64_t a1, __int128 *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v12 = *(a1 + 104);
  to[0] = 0;
  objc_copyWeak(to, (v12 + 168));
  WeakRetained = objc_loadWeakRetained(to);
  objc_destroyWeak(to);
  if (WeakRetained)
  {
    v15 = *(*(*(a1 + 112) + 80) + 496);
    if (v15 != 255)
    {
      v29 = a6;
      v30 = 0;
      v31 = 1;
      *(to + 1) = 0;
      HIDWORD(to[0]) = 0;
      LODWORD(to[1]) = 0;
      to[5] = 0;
      to[6] = 0;
      v28 = 0;
      LOBYTE(to[0]) = v15;
      to[2] = a4;
      to[3] = a5;
      to[4] = &v29;
      if (!a3)
      {
        re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v20);
        __break(1u);
        return;
      }

      v21 = *a2;
      v22 = *(a2 + 16);
      if (v22 == 1)
      {
        v23 = *(a2 + 3);
      }

      v16 = a2[2];
      v17 = a2[3];
      v26 = *(a2 + 8);
      v24 = v16;
      v25 = v17;
      re::TypedEventTimelineInstance<float>::processEvents(a1, &v21, to);
      if (!v30 && *(a1 + 72) == 1 && *(a2 + 16) == 1 && v31 == 1)
      {
        v18 = v29;
        *v29 = 0;
        v18[1] = 0x3F80000000000000;
      }
    }
  }
}

void *re::TypedEventTimelineInstance<re::SkeletalPose>::~TypedEventTimelineInstance(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v2);
  return a1;
}

void re::TypedEventTimelineInstance<re::SkeletalPose>::~TypedEventTimelineInstance(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::TypedEventTimelineInstance<re::SkeletalPose>::evaluateCore(uint64_t a1, __int128 *a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v12 = *(a1 + 104);
  to[0] = 0;
  objc_copyWeak(to, (v12 + 168));
  WeakRetained = objc_loadWeakRetained(to);
  objc_destroyWeak(to);
  if (WeakRetained)
  {
    v15 = *(*(*(a1 + 112) + 80) + 496);
    if (v15 != 255)
    {
      v31 = a6;
      v32 = 0;
      v33 = 1;
      *(to + 1) = 0;
      HIDWORD(to[0]) = 0;
      LODWORD(to[1]) = 0;
      to[5] = 0;
      to[6] = 0;
      v30 = 0;
      LOBYTE(to[0]) = v15;
      to[2] = a4;
      to[3] = a5;
      to[4] = &v31;
      if (!a3)
      {
        re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v22);
        __break(1u);
        return;
      }

      v23 = *a2;
      v24 = *(a2 + 16);
      if (v24 == 1)
      {
        v25 = *(a2 + 3);
      }

      v16 = a2[2];
      v17 = a2[3];
      v28 = *(a2 + 8);
      v26 = v16;
      v27 = v17;
      re::TypedEventTimelineInstance<float>::processEvents(a1, &v23, to);
      if (!v32 && *(a1 + 72) == 1 && *(a2 + 16) == 1 && v33 == 1)
      {
        v18 = *(v31 + 24);
        if (v18)
        {
          v19 = *(v31 + 32);
          v20 = &v19[6 * v18];
          do
          {
            *v19 = 0x3F8000003F800000;
            v19[1] = 1065353216;
            v19[2] = 0;
            v19[3] = 0x3F80000000000000;
            v19[4] = 0;
            v19[5] = 0;
            v19 += 6;
          }

          while (v19 != v20);
        }
      }
    }
  }
}

uint64_t re::PackedDataPtr<re::EventTimelineStateData>::get(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 == -1)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Packed data handle must be valid.", "m_handle.isValid()", "get", 61);
    _os_crash("assertion failure: (m_handle.isValid()) Packed data handle must be valid.");
    __break(1u);
    goto LABEL_8;
  }

  v3 = **(a1 + 1);
  if (!v3)
  {
LABEL_8:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Packed data ptr must not be null.", "packedData", "get", 63);
    result = _os_crash("assertion failure: (packedData) Packed data ptr must not be null.");
    __break(1u);
    return result;
  }

  if (v2 >= *v3)
  {
    return 0;
  }

  else
  {
    return *(v3 + 8) + v2;
  }
}

void *re::RigGraphCompilation::init(re::RigGraphCompilation *this, re::Allocator *a2)
{
  v3 = this;
  re::BucketArray<std::unique_ptr<void,std::function<void ()(void *)>>,64ul>::init(this, a2, 1uLL);
  *(v3 + 7) = a2;
  re::DynamicArray<re::RigDataValue>::setCapacity(v3 + 7, 0);
  *(v3 + 12) = a2;
  v3 = (v3 + 96);
  ++*(v3 - 4);
  result = re::DynamicArray<re::RigDataValue>::setCapacity(v3, 0);
  ++*(v3 + 6);
  return result;
}

uint64_t *re::BucketArray<std::unique_ptr<void,std::function<void ()(void *)>>,64ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<std::unique_ptr<void,std::function<void ()(void *)>>,64ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t re::RigGraphCompilation::setRuntimeContext(uint64_t this, re::EvaluationContext *a2)
{
  v3 = this;
  v4 = *(this + 72);
  if (v4)
  {
    v5 = *(this + 88);
    v6 = 288 * v4;
    do
    {
      this = re::RigDataValue::setRuntimeContext(v5, a2);
      v5 += 288;
      v6 -= 288;
    }

    while (v6);
  }

  v7 = *(v3 + 112);
  if (v7)
  {
    v8 = *(v3 + 128);
    v9 = 288 * v7;
    do
    {
      this = re::RigDataValue::setRuntimeContext(v8, a2);
      v8 += 288;
      v9 -= 288;
    }

    while (v9);
  }

  return this;
}

void *re::RigGraphCompilation::setInputOutputValues(void *a1, re::EvaluationContextManager *a2, uint64_t a3, uint64_t a4)
{
  re::DynamicArray<re::RigDataValue>::operator=((a1 + 7), a3);
  v7 = a1[9];
  if (v7)
  {
    v8 = a1[11];
    v9 = 288 * v7;
    do
    {
      if (*(v8 + 32) != 10)
      {
        re::RigDataValue::resolveRuntimeInputValues(v8, a2);
      }

      v8 = (v8 + 288);
      v9 -= 288;
    }

    while (v9);
  }

  result = re::DynamicArray<re::RigDataValue>::operator=((a1 + 12), a4);
  v11 = a1[14];
  if (v11)
  {
    v12 = a1[16];
    v13 = 288 * v11;
    do
    {
      if (*(v12 + 32) != 10)
      {
        result = re::RigDataValue::resolveRuntimeOutputValues(v12, a2);
      }

      v12 += 288;
      v13 -= 288;
    }

    while (v13);
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::RigDataValue>::operator=(_anonymous_namespace_ *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*a1)
  {
    if (v4)
    {
      re::DynamicArray<re::RigDataValue>::copy(a1, 0, *a2, v4);
      re::DynamicArray<re::RigDataValue>::resize(a1, *(a2 + 8));
    }

    else
    {
      re::DynamicArray<re::RigDataValue>::clear(a1);
    }
  }

  else if (v4)
  {
    re::DynamicArray<re::RigDataValue>::setCapacity(a1, v4);
    ++*(a1 + 6);
    re::DynamicArray<re::RigDataValue>::copy(a1, 0, *a2, *(a2 + 8));
  }

  return a1;
}

uint64_t *re::BucketArray<std::unique_ptr<void,std::function<void ()(void *)>>,64ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < a2 << 6)
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
        v5 = (*(**v3 + 32))(*v3, 2560, 0);
        result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::add(uint64_t a1, void *a2)
{
  result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::ensureCapacity(a1);
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

_anonymous_namespace_ *re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::ensureCapacity(_anonymous_namespace_ *result)
{
  v1 = result;
  if (!*result)
  {
    v7 = *(v1 + 1);
    result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v1, v7 + 1);
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

    return re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(result, v8);
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::RigDataValue>::copy(_anonymous_namespace_ *this, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return this;
  }

  v6 = this;
  v7 = *(this + 2);
  v8 = v7 + 1;
  if (v7 + 1 <= a2)
  {
    v30 = 0;
    memset(v36, 0, sizeof(v36));
    v23 = MEMORY[0x1E69E9C10];
    *v31 = 136315906;
    *&v31[4] = "copy";
    *&v31[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }

    *&v31[14] = 643;
    v32 = 2048;
    v33 = a2;
    v34 = 2048;
    v35 = v8;
    _os_log_send_and_compose_impl(v24, &v30, v36, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v31, 38, v27, v29);
    _os_crash_msg();
    __break(1u);
LABEL_21:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, a2, v4, v30, *v31);
    _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", v25, v26, v28);
    __break(1u);
  }

  v4 = a4;
  v9 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_21;
  }

  if (v7 >= v9)
  {
    v21 = (*(this + 4) + 288 * a2);
    v22 = 288 * a4;
    do
    {
      this = re::RigDataValue::operator=(v21, a3);
      a3 += 288;
      v21 += 36;
      v22 -= 288;
    }

    while (v22);
  }

  else
  {
    this = re::DynamicArray<re::RigDataValue>::growCapacity(this, a2 + a4);
    v11 = *(v6 + 2);
    v12 = *(v6 + 4);
    v13 = a2;
    v14 = v11 - a2;
    if (v11 != a2)
    {
      v15 = (v12 + 288 * a2);
      v16 = 288 * v11 - 288 * a2;
      v17 = a3;
      do
      {
        this = re::RigDataValue::operator=(v15, v17);
        v17 += 288;
        v15 += 36;
        v16 -= 288;
      }

      while (v16);
      v12 = *(v6 + 4);
      v13 = *(v6 + 2);
    }

    if (v14 != v4)
    {
      v18 = (a3 + 288 * v14);
      this = (v12 + 288 * v13);
      v19 = 288 * a2 + 288 * v4 - 288 * v11;
      do
      {
        v20 = re::RigDataValue::RigDataValue(this, v18);
        v18 = (v18 + 288);
        this = (v20 + 288);
        v19 -= 288;
      }

      while (v19);
    }

    *(v6 + 2) = v9;
  }

  ++*(v6 + 6);
  return this;
}

uint64_t re::BucketArray<std::unique_ptr<void,std::function<void ()(void *)>>,64ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > v3 << 6)
  {
    re::BucketArray<std::unique_ptr<void,std::function<void ()(void *)>>,64ul>::setBucketsCapacity(a1, (v2 + 64) >> 6);
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
  return v5 + 40 * (v2 & 0x3F);
}

uint64_t std::__function::__value_func<void ()(void *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t re::internal::TimelineTree::setTimelines(re::internal::TimelineTree *this, re::internal::TimelineTree *a2, const re::Timeline *a3, int a4, const re::BindNode *a5, int a6, re::Allocator *a7)
{
  v50 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = *(a2 + 18);
  v11 = *(v10 + 32);
  if (v11 <= a4)
  {
    v35[0] = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    v26 = MEMORY[0x1E69E9C10];
    v37 = 136315906;
    v38 = "operator[]";
    v39 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v27 = 3;
    }

    else
    {
      v27 = 2;
    }

    v40 = 468;
    v41 = 2048;
    v42 = v9;
    v43 = 2048;
    v44 = v11;
    _os_log_send_and_compose_impl(v27, v35, &v45, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v37, 38, v34);
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  v7 = a7;
  *(*(v10 + 40) + 4 * a4) = a6;
  (*(*a3 + 48))(v35, a3);
  v16 = *(a2 + 18);
  v11 = *(v16 + 56);
  if (v11 <= v9)
  {
LABEL_12:
    v36 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    v28 = MEMORY[0x1E69E9C10];
    v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v37 = 136315906;
    v38 = "operator[]";
    v39 = 1024;
    if (v29)
    {
      v30 = 3;
    }

    else
    {
      v30 = 2;
    }

    v40 = 468;
    v41 = 2048;
    v42 = v9;
    v43 = 2048;
    v44 = v11;
    _os_log_send_and_compose_impl(v30, &v36, &v45, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v37, 38, v34, v35[0]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  v17 = (*(v16 + 64) + 28 * v9);
  v18 = *v35;
  *(v17 + 10) = *(&v35[1] + 2);
  *v17 = v18;
  v19 = (a4 + 1);
  v20 = (*(*a3 + 24))(a3);
  if (v20)
  {
    v21 = v20;
    for (i = 0; i != v21; ++i)
    {
      v23 = (*(*a3 + 32))(a3, i);
      v19 = re::internal::TimelineTree::setTimelines(this, a2, v23, v19, a5, a4, v7);
    }
  }

  v24 = (*(*a3 + 72))(a3, v7, a5, a2, v9, this + 72);
  v7 = *(a2 + 13);
  if (v7 <= v9)
  {
LABEL_16:
    v35[0] = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    v31 = MEMORY[0x1E69E9C10];
    v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v37 = 136315906;
    v38 = "operator[]";
    v39 = 1024;
    if (v32)
    {
      v33 = 3;
    }

    else
    {
      v33 = 2;
    }

    v40 = 468;
    v41 = 2048;
    v42 = v9;
    v43 = 2048;
    v44 = v7;
    _os_log_send_and_compose_impl(v33, v35, &v45, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v37, 38, v34);
    _os_crash_msg();
    __break(1u);
  }

  *(*(a2 + 14) + 8 * v9) = v24;
  return v19;
}

uint64_t re::internal::instanceDataSize(re::internal *this, const re::Timeline *a2)
{
  v3 = (*(*this + 80))(this, a2);
  v4 = (*(*this + 24))(this);
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      v7 = (*(*this + 32))(this, i);
      v3 += re::internal::instanceDataSize(v7, v8);
    }
  }

  return v3;
}

BOOL re::internal::TimelineTree::init(re::internal::TimelineTree *this, const re::Timeline *a2, re::PackedData *a3, const re::BindNode *a4, re::Allocator *a5)
{
  __n[5] = *MEMORY[0x1E69E9840];
  if (*(this + 152) == 1)
  {
    re::internal::assertLog(4, a2, a3, a4, a5, "assertion failure: '%s' (%s:line %i) init() should only be called once.", "!isInitialized()", "init", 71);
    _os_crash("assertion failure: (!isInitialized()) init() should only be called once.");
    __break(1u);
LABEL_45:
    re::internal::assertLog(6, v30, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 28, v5);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v40, v41);
    __break(1u);
LABEL_46:
    re::internal::assertLog(4, v33, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
  }

  v8 = a3;
  if (LOBYTE(__n[0]))
  {
    v12 = HIDWORD(__n[0]);
  }

  else
  {
    v12 = 0;
  }

  v5 = v12;
  if (!v12)
  {
    return v5 != 0;
  }

  if (!v8)
  {
    v13 = re::internal::instanceDataSize(a2, v11);
    LOBYTE(__n[0]) = 1;
    v14 = v13 + 72 * v5 + 8;
    __n[1] = 0;
    __n[2] = 0;
    re::PackedData::reserve(&__n[1], 0);
    if (*(this + 120))
    {
      if ((__n[0] & 1) == 0)
      {
        v16 = *(this + 17);
        if (v16)
        {
          free(v16);
          *(this + 17) = 0;
        }

        *(this + 120) = 0;
        goto LABEL_18;
      }

      *(this + 8) = *&__n[1];
    }

    else
    {
      if ((__n[0] & 1) == 0)
      {
LABEL_18:
        v8 = (this + 128);
        re::PackedData::reserve((this + 128), (v14 + 256));
        goto LABEL_19;
      }

      *(this + 16) = 0;
      *(this + 120) = 1;
      *(this + 17) = 0;
      re::PackedData::reserve((this + 128), HIDWORD(__n[1]));
      v15 = __n[1];
      if (LODWORD(__n[1]))
      {
        memcpy(*(this + 17), __n[2], LODWORD(__n[1]));
        *(this + 32) = v15;
      }
    }

    if (__n[2])
    {
      free(__n[2]);
    }

    goto LABEL_18;
  }

LABEL_19:
  *(this + 9) = v8;
  v17 = *v8 + 3;
  *v8 = (v17 & 0xFFFFFFFC) + 8;
  v18 = (*(v8 + 1) + (v17 & 0xFFFFFFFC));
  *v18 = 0;
  *(this + 20) = v18 - *(v8 + 2);
  *(this + 11) = this + 72;
  v19 = re::PackedDataPtr<re::internal::TimelineTreeState>::get(this + 20, v11);
  v20 = 0;
  v21 = *v8 + 7;
  if ((v21 & 0xFFFFFFF8) + 72 * v5 < *(v8 + 1))
  {
    *v8 = (v21 & 0xFFFFFFF8) + 72 * v5;
    v20 = *(v8 + 1) + (v21 & 0xFFFFFFF8);
  }

  v22 = v20;
  do
  {
    *v22 = 1;
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    *(v22 + 32) = 0;
    *(v22 + 60) = 0;
    *(v22 + 64) = 0;
    *(v22 + 44) = 0;
    *(v22 + 36) = 0;
    *(v22 + 49) = 0;
    *(v22 + 68) = 2;
    v22 += 72;
  }

  while (v22 != v20 + 72 * v5);
  v23 = v20 == 0;
  if (v20)
  {
    v24 = (v20 - v19);
  }

  else
  {
    v24 = 0;
  }

  if (v23)
  {
    v25 = 0;
  }

  else
  {
    v25 = v5;
  }

  *v19 = v24;
  *(v19 + 1) = v25;
  if (v24)
  {
    v26 = v19 + v24;
  }

  else
  {
    v26 = 0;
  }

  v27 = (v5 - 1);
  if (v5 != 1)
  {
    do
    {
      *(v26 + 2) = 0uLL;
      *(v26 + 3) = 0uLL;
      *v26 = 0uLL;
      *(v26 + 1) = 0uLL;
      *v26 = 1;
      *(v26 + 8) = 0x200000000;
      *(v26 + 36) = 0;
      *(v26 + 44) = 0;
      *(v26 + 49) = 0;
      v26 += 72;
      --v27;
    }

    while (v27);
  }

  *(v26 + 2) = 0u;
  *(v26 + 3) = 0u;
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *v26 = 1;
  *(v26 + 8) = 0x200000000;
  *(v26 + 36) = 0;
  *(v26 + 44) = 0;
  *(v26 + 49) = 0;
  v28 = re::globalAllocators(v19);
  v29 = (*(*v28[2] + 32))(v28[2], 72, 8);
  *v29 = 0u;
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  *(v29 + 48) = 0u;
  *(v29 + 64) = 0;
  ArcSharedObject::ArcSharedObject(v29, 0);
  *v29 = &unk_1F5CB17A8;
  *(v29 + 24) = 0u;
  *(v29 + 40) = 0u;
  *(v29 + 56) = 0u;
  v31 = *(this + 18);
  *(this + 18) = v29;
  if (v31)
  {

    v29 = *(this + 18);
  }

  *(v29 + 48) = a5;
  *(v29 + 56) = v5;
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_45;
  }

  v32 = (*(*a5 + 32))(a5, 28 * v5, 4);
  *(v29 + 64) = v32;
  if (!v32)
  {
    goto LABEL_46;
  }

  v34 = v5 - 1;
  if (v5 != 1)
  {
    do
    {
      *v32 = 0;
      *(v32 + 8) = 1065353216;
      *(v32 + 12) = 0;
      *(v32 + 18) = 0;
      v32 += 28;
      --v34;
    }

    while (v34);
  }

  *v32 = 0;
  *(v32 + 8) = 1065353216;
  *(v32 + 12) = 0;
  *(v32 + 18) = 0;
  re::FixedArray<int>::init<>((*(this + 18) + 24), a5, v5);
  v35 = *(this + 18);
  v36 = v35[4];
  *(this + 1) = v35[5];
  *(this + 2) = v36;
  v38 = v35 + 7;
  v37 = v35[7];
  *(this + 3) = v38[1];
  *(this + 4) = v37;
  re::FixedArray<unsigned long>::init<>(this + 12, a5, v5);
  memset(__n, 0, 32);
  if (a4)
  {
    re::BindNode::copy(__n, a4);
  }

  re::internal::TimelineTree::setTimelines(this, this, a2, 0, __n, -1, a5);
  re::BindNode::deinit(__n);
  *(this + 152) = 1;
  return v5 != 0;
}

char *re::internal::TimelineTree::setTime(re::internal::TimelineTree *this, double a2, float a3, uint64_t a4)
{
  v7 = re::PackedDataPtr<re::internal::TimelineTreeState>::get(this + 20, a4);
  v9 = *v7;
  v10 = v7[1];
  if (v9)
  {
    v11 = v7 + v9;
  }

  else
  {
    v11 = 0;
  }

  if (a3 >= 0.0)
  {
    if (!v10)
    {
LABEL_24:
      re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, v10);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v30, v37);
      __break(1u);
      goto LABEL_25;
    }

    LOBYTE(v42) = 1;
    v43 = a2;
    if (!*(this + 4))
    {
LABEL_26:
      re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
      result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v32, v39);
      __break(1u);
      return result;
    }

    v15 = *(this + 3);
    v14 = &v42;
  }

  else
  {
    if (!*(this + 4))
    {
LABEL_23:
      re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v29, v36);
      __break(1u);
      goto LABEL_24;
    }

    v12 = *(this + 3);
    v13 = *(v12 + 12);
    v46[0] = *v12;
    *(v46 + 12) = v13;
    *(v46 + 2) = -*(v46 + 2);
    if (!v10)
    {
LABEL_25:
      re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, v10);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v31, v38);
      __break(1u);
      goto LABEL_26;
    }

    a3 = -a3;
    LOBYTE(v44) = 1;
    v45 = fabs(a2);
    v14 = &v44;
    v15 = v46;
  }

  result = re::AnimationClock::update(v11, v14, v15, a3);
  if (*(this + 4) >= 2uLL)
  {
    v18 = v11 + 72;
    v19 = 1;
    for (i = 28; ; i += 28)
    {
      v21 = *(this + 2);
      if (v21 <= v19)
      {
        break;
      }

      if (v10 == v19)
      {
        goto LABEL_21;
      }

      v22 = *(*(this + 1) + 4 * v19);
      if (v10 <= v22)
      {
        goto LABEL_22;
      }

      v23 = &v11[72 * v22];
      v25 = v23[16];
      v24 = v23 + 16;
      LOBYTE(v40) = v25;
      if (v25 == 1)
      {
        v41 = *(v24 + 1);
      }

      result = re::AnimationClock::update(v18, &v40, *(this + 3) + i, a3);
      ++v19;
      v18 += 72;
      if (*(this + 4) <= v19)
      {
        return result;
      }
    }

    re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v19, v21);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v26, v33);
    __break(1u);
LABEL_21:
    re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v10, v40, v41, v42, *&v43, v44, *&v45, v46[0], v46[1]);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v27, v34);
    __break(1u);
LABEL_22:
    re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v22, v10);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v28, v35);
    __break(1u);
    goto LABEL_23;
  }

  return result;
}

uint64_t re::internal::TimelineTree::deinit(uint64_t this, Allocator *a2)
{
  v2 = *(this + 104);
  if (v2)
  {
    v4 = *(this + 112);
    do
    {
      this = (*(**v4 + 88))();
      if (this)
      {
        (***v4)();
        this = (*(a2->var0 + 5))(a2, *v4);
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  return this;
}

void re::internal::TimelineTreeConstantData::~TimelineTreeConstantData(re::internal::TimelineTreeConstantData *this)
{
  *this = &unk_1F5CB17A8;
  v2 = (this + 24);
  re::FixedArray<CoreIKTransform>::deinit(this + 6);
  re::FixedArray<CoreIKTransform>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CB17A8;
  v2 = (this + 24);
  re::FixedArray<CoreIKTransform>::deinit(this + 6);
  re::FixedArray<CoreIKTransform>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::internal::TimelineTreeInfo::~TimelineTreeInfo(re::internal::TimelineTreeInfo *this)
{
  *this = &unk_1F5CB17F0;
  v2 = *(this + 34);
  if (v2)
  {
    CFRelease(v2);
    CFRelease(*(this + 35));
  }

  v3 = *(this + 28);
  if (v3)
  {
    if (*(this + 29))
    {
      (*(*v3 + 40))(v3, *(this + 30));
      *(this + 29) = 0;
      *(this + 30) = 0;
    }

    *(this + 28) = 0;
  }

  re::FixedArray<CoreIKTransform>::deinit(this + 25);
  v4 = *(this + 22);
  if (v4)
  {
    if (*(this + 23))
    {
      (*(*v4 + 40))(v4, *(this + 24));
      *(this + 23) = 0;
      *(this + 24) = 0;
    }

    *(this + 22) = 0;
  }

  re::internal::TimelineTree::~TimelineTree(this);
}

{
  re::internal::TimelineTreeInfo::~TimelineTreeInfo(this);

  JUMPOUT(0x1E6906520);
}

BOOL re::internal::TimelineTreeInfo::init(uint64_t a1, const re::Timeline *a2, char a3, void *a4, re::internal::TimelineTreeInfo *a5, void *a6, int a7, re::BindNode *a8, re::Allocator *a9)
{
  v15 = re::internal::TimelineTree::init(a1, a2, 0, a8, a9);
  if (v15)
  {
    if (*a6)
    {
      v16 = (*a6 + 8);
    }

    else
    {
      v16 = 0;
    }

    objc_storeWeak((a1 + 168), v16);
    if (a5)
    {
      *(a1 + 288) = a5;
      *(a1 + 296) = re::internal::TimelineTreeInfo::currentTime(a5);
    }

    else
    {
      *(a1 + 280) = a4;
      CFRetain(a4);
      CMTimebaseCreateWithSourceTimebase(*MEMORY[0x1E695E480], a4, (a1 + 272));
    }

    v18 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v17);
    v19 = v18[1];
    v21 = *(a1 + 184);
    if (v21)
    {
      v22 = 0;
      v23 = 12 * v21 - 12;
      v24 = vdupq_n_s64(v23 / 0xC);
      v25 = (*(a1 + 192) + 28);
      do
      {
        v26 = vdupq_n_s64(v22);
        v27 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_1E3049620)));
        if (vuzp1_s16(v27, *v24.i8).u8[0])
        {
          *(v25 - 6) = 1065353216;
        }

        if (vuzp1_s16(v27, *&v24).i8[2])
        {
          *(v25 - 3) = 1065353216;
        }

        if (vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_1E3049640)))).i32[1])
        {
          *v25 = 1065353216;
          v25[3] = 1065353216;
        }

        v22 += 4;
        v25 += 12;
      }

      while (((v23 / 0xC + 4) & 0x3FFFFFFFFFFFFFFCLL) != v22);
    }

    v29 = *(a1 + 208);
    if (v29)
    {
      memset_pattern16(*(a1 + 216), &memset_pattern_1, 4 * v29);
    }

    *(a1 + 248) = a3;
    if (a7)
    {
      v31 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v30);
      v32 = *v31;
      v33 = v31[1];
      v34 = v31 + v32;
      if (!v32)
      {
        v34 = 0;
      }

      if (v33)
      {
        v35 = 0;
        v36 = 72 * v33 - 72;
        v37 = vdupq_n_s64(v36 / 0x48);
        v38 = v34 + 212;
        do
        {
          v39 = vdupq_n_s64(v35);
          v40 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v39, xmmword_1E3049620)));
          if (vuzp1_s16(v40, *v37.i8).u8[0])
          {
            *(v38 - 36) = 1;
          }

          if (vuzp1_s16(v40, *&v37).i8[2])
          {
            *(v38 - 18) = 1;
          }

          if (vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v39, xmmword_1E3049640)))).i32[1])
          {
            *v38 = 1;
            v38[18] = 1;
          }

          v35 += 4;
          v38 += 72;
        }

        while (((v36 / 0x48 + 4) & 0x7FFFFFFFFFFFFFCLL) != v35);
      }
    }
  }

  return v15;
}

uint64_t re::internal::TimelineTreeInfo::updateEffectiveSpeed(uint64_t this)
{
  if (!*(this + 288))
  {
    v1 = this;
    if (*(this + 249) == 2)
    {
      this = CMTimebaseSetRate(*(this + 272), *(this + 252));
      *(v1 + 249) = 0;
    }
  }

  return this;
}

void re::internal::TimelineTreeInfo::setPaused(re::internal::TimelineTreeInfo *this, uint64_t a2)
{
  if (*(this + 36))
  {
    return;
  }

  v23[7] = v2;
  v23[8] = v3;
  v6 = *(this + 249);
  if (!a2)
  {
    if (v6 != 1)
    {
      return;
    }

    *(this + 249) = 2;
    goto LABEL_9;
  }

  if ((*(this + 304) & 1) == 0)
  {
    CMTimebaseSetRate(*(this + 34), 0.0);
  }

  *(this + 249) = 1;
  if (v6 != 1)
  {
LABEL_9:
    if (*(this + 13))
    {
      v7 = 0;
      do
      {
        if (*(re::internal::TimelineTree::source(this, v7) + 8) == 49)
        {
          if ((a2 & 1) != 0 || (v9 = re::PackedDataPtr<re::internal::TimelineTreeState>::get(this + 20, v8), re::RelativeArray<re::AnimationClock>::operator[](v9, v7)[16] == 1))
          {
            v10 = re::internal::TimelineTree::source(this, v7);
            v23[0] = 0;
            objc_copyWeak(v23, this + 21);
            WeakRetained = objc_loadWeakRetained(v23);
            objc_destroyWeak(v23);
            if (WeakRetained)
            {
              v13 = re::PackedDataPtr<re::internal::TimelineTreeState>::get(this + 20, v12);
              v14 = re::RelativeArray<re::AnimationClock>::operator[](v13, v7);
              v17 = *v14;
              v18 = v14[16];
              if (v18 == 1)
              {
                v19 = *(v14 + 3);
              }

              v15 = *(v14 + 2);
              v16 = *(v14 + 3);
              v22 = *(v14 + 8);
              v20 = v15;
              v21 = v16;
              re::TypedEventTimelineInstance<float>::processPauseResume(v10, a2, &v17, 0);
            }
          }
        }

        ++v7;
      }

      while (v7 < *(this + 13));
    }
  }
}

uint64_t re::internal::TimelineTreeInfo::setParentClockOrTimebase(uint64_t this, void *a2, char a3)
{
  if (!*(this + 288))
  {
    v4 = this;
    if (a2)
    {
      v6 = re::internal::TimelineTreeInfo::currentTime(this);
      CMTimebaseSetRate(*(v4 + 272), *(v4 + 252));
      v7 = CFGetTypeID(a2);
      TypeID = CMClockGetTypeID();
      v9 = *(v4 + 272);
      if (v7 == TypeID)
      {
        CMTimebaseSetSourceClock(v9, a2);
      }

      else
      {
        CMTimebaseSetSourceTimebase(v9, a2);
      }

      this = re::internal::TimelineTreeInfo::setCurrentTime(v4, v6);
      *(v4 + 304) = a3;
      if (*(v4 + 249) == 1 && (a3 & 1) == 0)
      {
        v10 = *(v4 + 272);

        return CMTimebaseSetRate(v10, 0.0);
      }
    }

    else
    {
      this = CMTimebaseSetSourceTimebase(*(this + 272), *(this + 280));
      if (*(v4 + 249) == 1 && *(v4 + 304) == 1)
      {
        this = CMTimebaseSetRate(*(v4 + 272), 0.0);
      }

      *(v4 + 304) = 0;
    }
  }

  return this;
}

uint64_t re::internal::TimelineTreeInfo::compositionChain(re::internal::TimelineTreeInfo *this, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(this + 29);
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

  return *(*(this + 30) + 8 * a2);
}

float re::internal::TimelineTreeInfo::localEffectiveSpeed(re::internal::TimelineTreeInfo *this)
{
  v3 = *(this + 36);
  if (!v3)
  {
    return CMTimebaseGetRate(*(this + 34));
  }

  v4 = *(*v3 + 24);

  v4();
  return result;
}

uint64_t re::FixedArray<re::OverridableValue<float>>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x1555555555555556)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 12, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v7, v8);
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 12 * a3, 4);
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
      *result = 0;
      *(result + 4) = 0;
      *(result + 8) = 0;
      result += 12;
      --v6;
    }

    while (v6);
  }

  *result = 0;
  *(result + 4) = 0;
  *(result + 8) = 0;
  return result;
}

void re::FixedArray<re::internal::AnimationCompositionChainBase *>::init<>(void *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 61)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v9, v10);
    __break(1u);
    goto LABEL_9;
  }

  v5 = 8 * a3;
  v6 = (*(*a2 + 32))(a2, 8 * a3, 8);
  a1[2] = v6;
  if (!v6)
  {
LABEL_9:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return;
  }

  v8 = v6;
  if (a3 != 1)
  {
    bzero(v6, v5 - 8);
    v8 = (v8 + v5 - 8);
  }

  *v8 = 0;
}

uint64_t re::FromToByAnimation<float>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, float *a5, float *a6, __n128 a7)
{
  if (a3)
  {
    v11 = *(a1 + 80);
    a7.n128_u32[0] = 1.0;
    v12 = 1.0;
    if (fabs(v11) >= 1.0e-12)
    {
      v12 = *(a2 + 24) / v11;
    }

    if (v12 <= 1.0)
    {
      a7.n128_f32[0] = v12;
    }

    if (a7.n128_f32[0] < 0.0)
    {
      a7.n128_f32[0] = 0.0;
    }

    result = *(a1 + 112);
    if (result)
    {
      result = (*(*result + 16))(result, a7);
    }

    v20 = 0.0;
    v14 = *(a1 + 88);
    if (v14 == 1)
    {
      v15 = (a1 + 92);
    }

    else
    {
      v15 = a4;
      if (*(a1 + 96) == 1)
      {
        v15 = a4;
        if (*(a1 + 104) == 1)
        {
          v20 = *(a1 + 100) - *(a1 + 108);
          v15 = &v20;
        }
      }
    }

    if (a7.n128_f32[0] == 0.0)
    {
      v16 = *v15;
    }

    else
    {
      if (*(a1 + 96) == 1)
      {
        v17 = (a1 + 100);
      }

      else if (*(a1 + 104) == 1)
      {
        v20 = *v15 + *(a1 + 108);
        v17 = &v20;
      }

      else if (v14)
      {
        v17 = a4;
      }

      else
      {
        v17 = a5;
      }

      if (a7.n128_f32[0] == 1.0)
      {
        v16 = *v17;
      }

      else
      {
        v16 = (a7.n128_f32[0] * *v17) + (*v15 * (1.0 - a7.n128_f32[0]));
      }
    }

    *a6 = v16;
  }

  else
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, a7.n128_f64[0], "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v19);
    __break(1u);
  }

  return result;
}

uint64_t re::FromToByAnimation<double>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, double *a5, double *a6, __n128 a7)
{
  if (a3)
  {
    v11 = *(a1 + 80);
    a7.n128_u32[0] = 1.0;
    v12 = 1.0;
    if (fabs(v11) >= 1.0e-12)
    {
      v12 = *(a2 + 24) / v11;
    }

    if (v12 <= 1.0)
    {
      a7.n128_f32[0] = v12;
    }

    if (a7.n128_f32[0] < 0.0)
    {
      a7.n128_f32[0] = 0.0;
    }

    result = *(a1 + 136);
    if (result)
    {
      result = (*(*result + 16))(result, a7);
    }

    v20 = 0.0;
    v14 = *(a1 + 88);
    if (v14 == 1)
    {
      v15 = (a1 + 96);
    }

    else
    {
      v15 = a4;
      if (*(a1 + 104) == 1)
      {
        v15 = a4;
        if (*(a1 + 120) == 1)
        {
          v20 = *(a1 + 112) - *(a1 + 128);
          v15 = &v20;
        }
      }
    }

    if (a7.n128_f32[0] == 0.0)
    {
      v16 = *v15;
    }

    else
    {
      if (*(a1 + 104) == 1)
      {
        v17 = (a1 + 112);
      }

      else if (*(a1 + 120) == 1)
      {
        v20 = *v15 + *(a1 + 128);
        v17 = &v20;
      }

      else if (v14)
      {
        v17 = a4;
      }

      else
      {
        v17 = a5;
      }

      if (a7.n128_f32[0] == 1.0)
      {
        v16 = *v17;
      }

      else
      {
        v16 = *v17 * a7.n128_f32[0] + *v15 * (1.0 - a7.n128_f32[0]);
      }
    }

    *a6 = v16;
  }

  else
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, a7.n128_f64[0], "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v19);
    __break(1u);
  }

  return result;
}

uint64_t re::FromToByAnimation<re::Vector2<float>>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5, float32x2_t *a6, __n128 a7)
{
  if (a3)
  {
    v11 = *(a1 + 80);
    a7.n128_u32[0] = 1.0;
    v12 = 1.0;
    if (fabs(v11) >= 1.0e-12)
    {
      v12 = *(a2 + 24) / v11;
    }

    if (v12 <= 1.0)
    {
      a7.n128_f32[0] = v12;
    }

    if (a7.n128_f32[0] < 0.0)
    {
      a7.n128_f32[0] = 0.0;
    }

    result = *(a1 + 136);
    if (result)
    {
      result = (*(*result + 16))(result, a7);
    }

    v20 = 0;
    v14 = *(a1 + 88);
    if (v14 == 1)
    {
      v15 = (a1 + 96);
    }

    else
    {
      v15 = a4;
      if (*(a1 + 104) == 1)
      {
        v15 = a4;
        if (*(a1 + 120) == 1)
        {
          v20 = vsub_f32(*(a1 + 112), *(a1 + 128));
          v15 = &v20;
        }
      }
    }

    if (a7.n128_f32[0] == 0.0)
    {
      v16 = *v15;
    }

    else
    {
      if (*(a1 + 104) == 1)
      {
        v17 = (a1 + 112);
      }

      else if (*(a1 + 120) == 1)
      {
        v20 = vadd_f32(*v15, *(a1 + 128));
        v17 = &v20;
      }

      else if (v14)
      {
        v17 = a4;
      }

      else
      {
        v17 = a5;
      }

      if (a7.n128_f32[0] != 1.0)
      {
        *a6 = vadd_f32(vmul_n_f32(*v15, 1.0 - a7.n128_f32[0]), vmul_n_f32(*v17, a7.n128_f32[0]));
        return result;
      }

      v16 = *v17;
    }

    *a6 = v16;
  }

  else
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, a7.n128_f64[0], "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v19);
    __break(1u);
  }

  return result;
}

uint64_t re::FromToByAnimation<re::Vector3<float>>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, __n128 a7)
{
  if (a3)
  {
    v11 = *(a1 + 80);
    a7.n128_u32[0] = 1.0;
    v12 = 1.0;
    if (fabs(v11) >= 1.0e-12)
    {
      v12 = *(a2 + 24) / v11;
    }

    if (v12 <= 1.0)
    {
      a7.n128_f32[0] = v12;
    }

    if (a7.n128_f32[0] < 0.0)
    {
      a7.n128_f32[0] = 0.0;
    }

    result = *(a1 + 192);
    if (result)
    {
      result = (*(*result + 16))(result, a7);
    }

    v20 = 0u;
    v14 = *(a1 + 96);
    if (v14 == 1)
    {
      v15 = (a1 + 112);
    }

    else
    {
      v15 = a4;
      if (*(a1 + 128) == 1)
      {
        v15 = a4;
        if (*(a1 + 160) == 1)
        {
          v20 = vsubq_f32(*(a1 + 144), *(a1 + 176));
          v15 = &v20;
        }
      }
    }

    if (a7.n128_f32[0] == 0.0)
    {
      v16 = *v15;
    }

    else
    {
      if (*(a1 + 128) == 1)
      {
        v17 = (a1 + 144);
      }

      else if (*(a1 + 160) == 1)
      {
        v20 = vaddq_f32(*v15, *(a1 + 176));
        v17 = &v20;
      }

      else if (v14)
      {
        v17 = a4;
      }

      else
      {
        v17 = a5;
      }

      if (a7.n128_f32[0] == 1.0)
      {
        v16 = *v17;
      }

      else
      {
        v16 = vmlaq_n_f32(vmulq_n_f32(*v17, a7.n128_f32[0]), *v15, 1.0 - a7.n128_f32[0]);
      }
    }

    *a6 = v16;
  }

  else
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, a7.n128_f64[0], "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v19);
    __break(1u);
  }

  return result;
}

uint64_t re::FromToByAnimation<re::Vector4<float>>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, __n128 a7)
{
  if (a3)
  {
    v11 = *(a1 + 80);
    a7.n128_u32[0] = 1.0;
    v12 = 1.0;
    if (fabs(v11) >= 1.0e-12)
    {
      v12 = *(a2 + 24) / v11;
    }

    if (v12 <= 1.0)
    {
      a7.n128_f32[0] = v12;
    }

    if (a7.n128_f32[0] < 0.0)
    {
      a7.n128_f32[0] = 0.0;
    }

    result = *(a1 + 192);
    if (result)
    {
      result = (*(*result + 16))(result, a7);
    }

    v20 = 0uLL;
    v14 = *(a1 + 96);
    if (v14 == 1)
    {
      v15 = (a1 + 112);
    }

    else
    {
      v15 = a4;
      if (*(a1 + 128) == 1)
      {
        v15 = a4;
        if (*(a1 + 160) == 1)
        {
          v20 = vsubq_f32(*(a1 + 144), *(a1 + 176));
          v15 = &v20;
        }
      }
    }

    if (a7.n128_f32[0] == 0.0)
    {
      v16 = *v15;
    }

    else
    {
      if (*(a1 + 128) == 1)
      {
        v17 = (a1 + 144);
      }

      else if (*(a1 + 160) == 1)
      {
        v20 = vaddq_f32(*v15, *(a1 + 176));
        v17 = &v20;
      }

      else if (v14)
      {
        v17 = a4;
      }

      else
      {
        v17 = a5;
      }

      if (a7.n128_f32[0] == 1.0)
      {
        v16 = *v17;
      }

      else
      {
        v16 = vaddq_f32(vmulq_n_f32(*v15, 1.0 - a7.n128_f32[0]), vmulq_n_f32(*v17, a7.n128_f32[0]));
      }
    }

    *a6 = v16;
  }

  else
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, a7.n128_f64[0], "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v19);
    __break(1u);
  }

  return result;
}

void re::FromToByAnimation<re::Quaternion<float>>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, int32x4_t *a4, float32x4_t *a5, float32x4_t *a6)
{
  if (a3)
  {
    v10 = *(a1 + 80);
    v11 = 1.0;
    v12 = 1.0;
    if (fabs(v10) >= 1.0e-12)
    {
      v12 = *(a2 + 24) / v10;
    }

    if (v12 <= 1.0)
    {
      v11 = v12;
    }

    if (v11 >= 0.0)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0.0;
    }

    v14 = *(a1 + 192);
    if (v14)
    {
      v13 = (*(*v14 + 16))(v14, v13);
    }

    v70 = xmmword_1E30474D0;
    v15 = *(a1 + 96);
    if (v15 == 1)
    {
      v16 = (a1 + 112);
    }

    else
    {
      v16 = a4;
      if (*(a1 + 128) == 1)
      {
        v16 = a4;
        if (*(a1 + 160) == 1)
        {
          v70 = *(a1 + 176);
          _V0.S[3] = HIDWORD(v70);
          _Q1 = vnegq_f32(v70);
          v19 = *(a1 + 144);
          _Q4 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), v70), v19, vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL));
          v21 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q4, _Q4), _Q4, 0xCuLL), v19, v70, 3);
          _Q4.i32[0] = v19.i32[3];
          v22 = vmlsq_laneq_f32(v21, v70, v19, 3);
          __asm { FMLA            S1, S4, V0.S[3] }

          v22.i32[3] = _Q1.i32[0];
          v70 = v22;
          v16 = &v70;
        }
      }
    }

    if (v13 == 0.0)
    {
      v27 = *v16;
LABEL_27:
      *a6 = v27;
      return;
    }

    if (*(a1 + 128) == 1)
    {
      v28 = (a1 + 144);
    }

    else if (*(a1 + 160) == 1)
    {
      _Q0 = *(a1 + 176);
      _Q3 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*v16, *v16), *v16, 0xCuLL), vnegq_f32(_Q0)), *v16, vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL));
      v31 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), *v16, _Q0, 3);
      _Q3.i32[0] = HIDWORD(*v16);
      v32 = vmlaq_laneq_f32(v31, _Q0, *v16, 3);
      __asm { FMLA            S1, S3, V0.S[3] }

      v32.i32[3] = _S1;
      v70 = v32;
      v28 = &v70;
    }

    else if (v15)
    {
      v28 = a4;
    }

    else
    {
      v28 = a5;
    }

    if (v13 == 1.0)
    {
      v27 = *v28;
      goto LABEL_27;
    }

    v34 = vmulq_f32(*v16, *v28);
    v35 = vextq_s8(v34, v34, 8uLL);
    *v34.i8 = vadd_f32(*v34.i8, *v35.f32);
    *v34.i32 = vaddv_f32(*v34.i8);
    v35.i64[0] = 0;
    v36 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v34, v35)), 0), vnegq_f32(*v28), *v28);
    v37 = 1.0 - v13;
    v38 = vsubq_f32(*v16, v36);
    v39 = vmulq_f32(v38, v38);
    v68 = v36;
    v69 = *v16;
    v40 = vaddq_f32(*v16, v36);
    v41 = vmulq_f32(v40, v40);
    v42 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v39.i8, *&vextq_s8(v39, v39, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v41.i8, *&vextq_s8(v41, v41, 8uLL)))));
    v43 = 1.0;
    v44 = v42 + v42;
    if ((v42 + v42) != 0.0)
    {
      v43 = sinf(v42 + v42) / v44;
    }

    v45 = v43;
    v46 = vrecpe_f32(LODWORD(v43));
    v47 = vmul_f32(v46, vrecps_f32(LODWORD(v45), v46));
    v50 = vrecps_f32(LODWORD(v45), v47);
    LODWORD(v48) = vmul_f32(v47, v50).u32[0];
    v49 = 1.0;
    v50.i32[0] = 1.0;
    if ((v37 * v44) != 0.0)
    {
      v66 = v48;
      *v50.i32 = sinf(v37 * v44);
      v48 = v66;
      *v50.i32 = *v50.i32 / (v37 * v44);
    }

    *v50.i32 = v37 * (v48 * *v50.i32);
    v51 = vdupq_lane_s32(v50, 0);
    v52 = v13 * v44;
    if (v52 != 0.0)
    {
      v65 = v51;
      v67 = v48;
      v53 = sinf(v52);
      v51 = v65;
      v48 = v67;
      v49 = v53 / v52;
    }

    v54 = vmlaq_f32(vmulq_n_f32(v68, v13 * (v48 * v49)), v69, v51);
    v55 = vmulq_f32(v54, v54);
    v56 = vadd_f32(*v55.i8, *&vextq_s8(v55, v55, 8uLL));
    if (vaddv_f32(v56) == 0.0)
    {
      v57 = 0;
      v58 = 0x3F80000000000000;
    }

    else
    {
      v59 = vadd_f32(v56, vdup_lane_s32(v56, 1)).u32[0];
      v60 = vrsqrte_f32(v59);
      v61 = vmul_f32(v60, vrsqrts_f32(v59, vmul_f32(v60, v60)));
      v62 = vmulq_n_f32(v54, vmul_f32(v61, vrsqrts_f32(v59, vmul_f32(v61, v61))).f32[0]);
      v58 = v62.i64[1];
      v57 = v62.i64[0];
    }

    a6->i64[0] = v57;
    a6->i64[1] = v58;
  }

  else
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v63, v64);
    __break(1u);
  }
}

void re::FromToByAnimation<re::GenericSRT<float>>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6)
{
  if (a3)
  {
    v7 = a5;
    v10 = *(a1 + 80);
    v11 = 1.0;
    v12 = 1.0;
    if (fabs(v10) >= 1.0e-12)
    {
      v12 = *(a2 + 24) / v10;
    }

    if (v12 <= 1.0)
    {
      v11 = v12;
    }

    if (v11 >= 0.0)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0.0;
    }

    v14 = *(a1 + 288);
    if (v14)
    {
      v13 = (*(*v14 + 16))(v14, v13);
    }

    v48.i64[0] = 0x3F8000003F800000;
    v48.i64[1] = 1065353216;
    v49.i64[0] = 0;
    v49.i64[1] = 0x3F80000000000000;
    v50 = 0uLL;
    v15 = *(a1 + 96);
    if (v15 == 1)
    {
      v16 = (a1 + 112);
    }

    else
    {
      v16 = a4;
      if (*(a1 + 160) == 1)
      {
        v16 = a4;
        if (*(a1 + 224) == 1)
        {
          _Q1 = *(a1 + 256);
          v18 = *(a1 + 272);
          __asm { FMOV            V3.4S, #1.0 }

          v24 = vdivq_f32(_Q3, *(a1 + 240));
          _Q3 = vnegq_f32(_Q1);
          v26 = vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL);
          v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), _Q1), v18, v26);
          v28 = vaddq_f32(v27, v27);
          v29 = vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL);
          v30 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL), _Q1), v29, v26);
          v31 = vaddq_f32(vaddq_f32(v18, vmulq_laneq_f32(v29, _Q1, 3)), vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL));
          v32 = *(a1 + 192);
          v33 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL), _Q1), v32, v26);
          _S16 = v32.i32[3];
          v35 = vmlsq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL), v32, _Q1, 3), _Q1, v32, 3);
          __asm { FMLA            S3, S16, V1.S[3] }

          v35.i32[3] = _Q3.i32[0];
          v36 = *(a1 + 208);
          v37 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL), _Q1), v36, v26);
          v38 = vaddq_f32(v37, v37);
          v39 = vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL);
          v40 = vaddq_f32(v36, vmulq_laneq_f32(v39, _Q1, 3));
          v41 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL), _Q1), v39, v26);
          v48 = vmulq_f32(v24, *(a1 + 176));
          v49 = v35;
          v50 = vsubq_f32(vmulq_f32(v24, vaddq_f32(v40, vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL))), vmulq_f32(v24, v31));
          v16 = &v48;
        }
      }
    }

    if (v13 == 0.0)
    {
      v42 = *v16;
      v43 = v16[1];
      v44 = v16[2];
LABEL_26:
      a6[1] = v43;
      a6[2] = v44;
      *a6 = v42;
      return;
    }

    if (*(a1 + 160) == 1)
    {
      v7 = (a1 + 176);
    }

    else if (*(a1 + 224) == 1)
    {
      v7 = &v48;
      re::AnimationValueTraits<re::GenericSRT<float>>::combine(v16, (a1 + 240), &v48);
    }

    else if (v15)
    {
      v7 = a4;
    }

    if (v13 == 1.0)
    {
      v42 = *v7;
      v43 = v7[1];
      v44 = v7[2];
      goto LABEL_26;
    }

    re::lerp<float>(v16, v7, v51, v13);
    v45 = v51[1];
    *a6 = v51[0];
    a6[1] = v45;
    a6[2] = v51[2];
  }

  else
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v46, v47);
    __break(1u);
  }
}

void re::FromToByAnimation<re::SkeletalPose>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void *a6)
{
  if (a3)
  {
    v7 = a5;
    v10 = *(a1 + 80);
    v11 = 1.0;
    v12 = 1.0;
    if (fabs(v10) >= 1.0e-12)
    {
      v12 = *(a2 + 24) / v10;
    }

    if (v12 <= 1.0)
    {
      v11 = v12;
    }

    if (v11 >= 0.0)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0.0;
    }

    v14 = *(a1 + 376);
    if (v14)
    {
      v13 = (*(*v14 + 16))(v14, v13);
    }

    v19[0] = 0;
    v19[1] = &str_67;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    if (*(a1 + 88) == 1)
    {
      v15 = 0;
      v16 = (a1 + 96);
    }

    else if (*(a1 + 184) == 1 && *(a1 + 280) == 1)
    {
      v16 = v19;
      re::AnimationValueTraits<re::SkeletalPose>::init(v19, a4);
      re::AnimationValueTraits<re::SkeletalPose>::invert((a1 + 288), v19);
      re::AnimationValueTraits<re::SkeletalPose>::combine((a1 + 192), v19, v19);
      v15 = 1;
    }

    else
    {
      v15 = 0;
      v16 = a4;
    }

    if (v13 == 0.0)
    {
      re::AnimationValueTraits<re::SkeletalPose>::copy(v16, a6);
LABEL_28:
      re::SkeletalPose::~SkeletalPose(v19);
      return;
    }

    if (*(a1 + 184) == 1)
    {
      v7 = (a1 + 192);
    }

    else if (*(a1 + 280) == 1)
    {
      v7 = v19;
      re::AnimationValueTraits<re::SkeletalPose>::init(v19, a4);
      re::AnimationValueTraits<re::SkeletalPose>::combine(v16, (a1 + 288), v19);
      v15 = 1;
    }

    else if (*(a1 + 88))
    {
      v7 = a4;
    }

    if (v13 == 1.0)
    {
      re::AnimationValueTraits<re::SkeletalPose>::copy(v7, a6);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      re::AnimationValueTraits<re::SkeletalPose>::interpolate(v16, v7, a6, v13);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    re::SkeletalPose::deinit(v19);
    goto LABEL_28;
  }

  re::internal::assertLog(6, a2, 0, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v18);
  __break(1u);
}

void re::FromToByAnimation<re::BlendShapeWeights>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a3)
  {
    v7 = a5;
    v10 = *(a1 + 80);
    v11 = 1.0;
    v12 = 1.0;
    if (fabs(v10) >= 1.0e-12)
    {
      v12 = *(a2 + 24) / v10;
    }

    if (v12 <= 1.0)
    {
      v11 = v12;
    }

    if (v11 >= 0.0)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0.0;
    }

    v14 = *(a1 + 208);
    if (v14)
    {
      v13 = (*(*v14 + 16))(v14, v13);
    }

    memset(v19, 0, sizeof(v19));
    if (*(a1 + 88) == 1)
    {
      v15 = 0;
      v16 = (a1 + 96);
    }

    else if (*(a1 + 128) == 1 && *(a1 + 168) == 1)
    {
      v16 = v19;
      re::BlendShapeWeights::init(v19, a4 + 3);
      re::AnimationValueTraits<re::BlendShapeWeights>::invert((a1 + 176), v19);
      re::AnimationValueTraits<re::BlendShapeWeights>::combine((a1 + 136), v19, v19);
      v15 = 1;
    }

    else
    {
      v15 = 0;
      v16 = a4;
    }

    if (v13 == 0.0)
    {
      re::AnimationValueTraits<re::BlendShapeWeights>::copy(v16, a6);
LABEL_28:
      re::BlendShapeWeights::~BlendShapeWeights(v19);
      return;
    }

    if (*(a1 + 128) == 1)
    {
      v7 = (a1 + 136);
    }

    else if (*(a1 + 168) == 1)
    {
      v7 = v19;
      re::BlendShapeWeights::init(v19, a4 + 3);
      re::AnimationValueTraits<re::BlendShapeWeights>::combine(v16, (a1 + 176), v19);
      v15 = 1;
    }

    else if (*(a1 + 88))
    {
      v7 = a4;
    }

    if (v13 == 1.0)
    {
      re::AnimationValueTraits<re::BlendShapeWeights>::copy(v7, a6);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      re::AnimationValueTraits<re::BlendShapeWeights>::interpolate(v16, v7, a6, v13);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    re::BlendShapeWeights::deinit(v19);
    goto LABEL_28;
  }

  re::internal::assertLog(6, a2, 0, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v18);
  __break(1u);
}

uint64_t re::FromToByAnimation<re::SkeletalPose>::~FromToByAnimation(uint64_t a1)
{
  *a1 = &unk_1F5CB1840;
  if (*(a1 + 280) == 1)
  {
    re::SkeletalPose::~SkeletalPose((a1 + 288));
  }

  if (*(a1 + 184) == 1)
  {
    re::SkeletalPose::~SkeletalPose((a1 + 192));
  }

  if (*(a1 + 88) == 1)
  {
    re::SkeletalPose::~SkeletalPose((a1 + 96));
  }

  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::FromToByAnimation<re::SkeletalPose>::~FromToByAnimation(uint64_t a1)
{
  *a1 = &unk_1F5CB1840;
  if (*(a1 + 280) == 1)
  {
    re::SkeletalPose::~SkeletalPose((a1 + 288));
  }

  if (*(a1 + 184) == 1)
  {
    re::SkeletalPose::~SkeletalPose((a1 + 192));
  }

  if (*(a1 + 88) == 1)
  {
    re::SkeletalPose::~SkeletalPose((a1 + 96));
  }

  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));

  JUMPOUT(0x1E6906520);
}

uint64_t re::FromToByAnimation<re::BlendShapeWeights>::~FromToByAnimation(uint64_t a1)
{
  *a1 = &unk_1F5CB18D8;
  if (*(a1 + 168) == 1)
  {
    re::BlendShapeWeights::~BlendShapeWeights((a1 + 176));
  }

  if (*(a1 + 128) == 1)
  {
    re::BlendShapeWeights::~BlendShapeWeights((a1 + 136));
  }

  if (*(a1 + 88) == 1)
  {
    re::BlendShapeWeights::~BlendShapeWeights((a1 + 96));
  }

  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::FromToByAnimation<re::BlendShapeWeights>::~FromToByAnimation(uint64_t a1)
{
  *a1 = &unk_1F5CB18D8;
  if (*(a1 + 168) == 1)
  {
    re::BlendShapeWeights::~BlendShapeWeights((a1 + 176));
  }

  if (*(a1 + 128) == 1)
  {
    re::BlendShapeWeights::~BlendShapeWeights((a1 + 136));
  }

  if (*(a1 + 88) == 1)
  {
    re::BlendShapeWeights::~BlendShapeWeights((a1 + 96));
  }

  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));

  JUMPOUT(0x1E6906520);
}

uint64_t re::AnimationHelper::makeAdditiveForOptionalValueReferences<float>(re *a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 1) != a4)
  {
    v23 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v37 = 0;
    v24 = "Cannot make additive values, output values expected to match input values size.";
    v25 = &v37;
    goto LABEL_42;
  }

  if (!a2[1])
  {
    v23 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v24 = "Cannot make additive values, base values array size must not be zero.";
    v25 = buf;
LABEL_42:
    _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, v24, v25, 2u);
    return 0;
  }

  result = 1;
  if (a4)
  {
    v6 = 0;
    v7 = *a1;
    v8 = 0.0;
    v9 = a4;
    do
    {
      if (a4 == v6)
      {
        re::internal::assertLog(6, a2, a3, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a4, a4);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v26, v31);
        __break(1u);
LABEL_44:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, v9);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v27, v32);
        __break(1u);
LABEL_45:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, v15);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v28, v33);
        __break(1u);
        goto LABEL_46;
      }

      v10 = *(v7 + 8 * v6);
      v11 = *v10;
      v12 = *(a3 + 8 * v6);
      v13 = *v12;
      if (v11 != v13)
      {
        if (v13)
        {
          if (v11)
          {
            *(v12 + 1) = *(v10 + 1);
            v9 = *(a1 + 1);
          }

          else
          {
            *v12 = 0;
          }
        }

        else if (v11)
        {
          *v12 = 1;
          *(v12 + 1) = *(v10 + 1);
        }
      }

      if (v9 <= v6)
      {
        goto LABEL_44;
      }

      v7 = *a1;
      v14 = *(*a1 + 8 * v6);
      v15 = a2[1];
      if (*v14 == 1)
      {
        if (v15 <= v6)
        {
          goto LABEL_45;
        }

        v16 = **(*a2 + 8 * v6);
        *&v8 = -v16;
        *(*(a3 + 8 * v6) + 4) = *(v14 + 4) - v16;
        v15 = a2[1];
      }

      ++v6;
    }

    while (v9 > v6 && v15 > v6);
    result = 1;
    if (v9 <= v6)
    {
      return result;
    }

    v17 = v6;
    if (a4 <= v6)
    {
      v18 = v6;
    }

    else
    {
      v18 = a4;
    }

    if (a4 <= v6)
    {
      v6 = v6;
    }

    else
    {
      v6 = a4;
    }

    while (v6 != v17)
    {
      v19 = *(v7 + 8 * v17);
      v20 = *v19;
      v21 = *(a3 + 8 * v17);
      v22 = *v21;
      if (v20 != v22)
      {
        if (v22)
        {
          if (v20)
          {
            *(v21 + 1) = *(v19 + 1);
            v9 = *(a1 + 1);
          }

          else
          {
            *v21 = 0;
          }
        }

        else if (v20)
        {
          *v21 = 1;
          *(v21 + 1) = *(v19 + 1);
        }
      }

      if (v9 <= v17)
      {
        goto LABEL_47;
      }

      v7 = *a1;
      *(*(a3 + 8 * v17) + 4) = *&v8 + *(*(*a1 + 8 * v17) + 4);
      if (v9 <= ++v17)
      {
        return 1;
      }
    }

LABEL_46:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v18, a4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v29, v34);
    __break(1u);
LABEL_47:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, v9);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v30, v35);
    __break(1u);
  }

  return result;
}

uint64_t re::AnimationHelper::makeAdditiveForOptionalValueReferences<double>(re *a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 1) != a4)
  {
    v23 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v37 = 0;
    v24 = "Cannot make additive values, output values expected to match input values size.";
    v25 = &v37;
    goto LABEL_42;
  }

  if (!a2[1])
  {
    v23 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v24 = "Cannot make additive values, base values array size must not be zero.";
    v25 = buf;
LABEL_42:
    _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, v24, v25, 2u);
    return 0;
  }

  result = 1;
  if (a4)
  {
    v6 = 0;
    v7 = *a1;
    v8 = 0.0;
    v9 = a4;
    do
    {
      if (a4 == v6)
      {
        re::internal::assertLog(6, a2, a3, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a4, a4);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v26, v31);
        __break(1u);
LABEL_44:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, v9);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v27, v32);
        __break(1u);
LABEL_45:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, v15);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v28, v33);
        __break(1u);
        goto LABEL_46;
      }

      v10 = *(v7 + 8 * v6);
      v11 = *v10;
      v12 = *(a3 + 8 * v6);
      v13 = *v12;
      if (v11 != v13)
      {
        if (v13)
        {
          if (v11)
          {
            *(v12 + 1) = *(v10 + 1);
            v9 = *(a1 + 1);
          }

          else
          {
            *v12 = 0;
          }
        }

        else if (v11)
        {
          *v12 = 1;
          *(v12 + 1) = *(v10 + 1);
        }
      }

      if (v9 <= v6)
      {
        goto LABEL_44;
      }

      v7 = *a1;
      v14 = *(*a1 + 8 * v6);
      v15 = a2[1];
      if (*v14 == 1)
      {
        if (v15 <= v6)
        {
          goto LABEL_45;
        }

        v16 = **(*a2 + 8 * v6);
        v8 = -v16;
        *(*(a3 + 8 * v6) + 8) = *(v14 + 8) - v16;
        v15 = a2[1];
      }

      ++v6;
    }

    while (v9 > v6 && v15 > v6);
    result = 1;
    if (v9 <= v6)
    {
      return result;
    }

    v17 = v6;
    if (a4 <= v6)
    {
      v18 = v6;
    }

    else
    {
      v18 = a4;
    }

    if (a4 <= v6)
    {
      v6 = v6;
    }

    else
    {
      v6 = a4;
    }

    while (v6 != v17)
    {
      v19 = *(v7 + 8 * v17);
      v20 = *v19;
      v21 = *(a3 + 8 * v17);
      v22 = *v21;
      if (v20 != v22)
      {
        if (v22)
        {
          if (v20)
          {
            *(v21 + 1) = *(v19 + 1);
            v9 = *(a1 + 1);
          }

          else
          {
            *v21 = 0;
          }
        }

        else if (v20)
        {
          *v21 = 1;
          *(v21 + 1) = *(v19 + 1);
        }
      }

      if (v9 <= v17)
      {
        goto LABEL_47;
      }

      v7 = *a1;
      *(*(a3 + 8 * v17) + 8) = v8 + *(*(*a1 + 8 * v17) + 8);
      if (v9 <= ++v17)
      {
        return 1;
      }
    }

LABEL_46:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v18, a4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v29, v34);
    __break(1u);
LABEL_47:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, v9);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v30, v35);
    __break(1u);
  }

  return result;
}

uint64_t re::AnimationHelper::makeAdditiveForOptionalValueReferences<re::Vector2<float>>(re *a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 1) != a4)
  {
    v23 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v37 = 0;
    v24 = "Cannot make additive values, output values expected to match input values size.";
    v25 = &v37;
    goto LABEL_42;
  }

  if (!a2[1])
  {
    v23 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v24 = "Cannot make additive values, base values array size must not be zero.";
    v25 = buf;
LABEL_42:
    _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, v24, v25, 2u);
    return 0;
  }

  result = 1;
  if (!a4)
  {
    return result;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    if (a4 == v6)
    {
      re::internal::assertLog(6, a2, a3, *&v7, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a4, a4);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v26, v31);
      __break(1u);
LABEL_44:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, v12);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v27, v32);
      __break(1u);
LABEL_45:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, v14);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v28, v33);
      __break(1u);
LABEL_46:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v17, a4);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v29, v34);
      __break(1u);
LABEL_47:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, v22);
      result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v30, v35);
      __break(1u);
      return result;
    }

    v8 = *(*a1 + 8 * v6);
    v9 = *v8;
    v10 = *(a3 + 8 * v6);
    v11 = *v10;
    if (v9 != v11)
    {
      if (v11)
      {
        if ((v9 & 1) == 0)
        {
          *v10 = 0;
          goto LABEL_13;
        }
      }

      else
      {
        if ((v9 & 1) == 0)
        {
          goto LABEL_13;
        }

        *v10 = 1;
      }

      *(v10 + 1) = *(v8 + 1);
    }

LABEL_13:
    v12 = *(a1 + 1);
    if (v12 <= v6)
    {
      goto LABEL_44;
    }

    v13 = *(*a1 + 8 * v6);
    v14 = a2[1];
    if (v13->i8[0] == 1)
    {
      if (v14 <= v6)
      {
        goto LABEL_45;
      }

      v15 = **(*a2 + 8 * v6);
      v7 = vneg_f32(v15);
      *(*(a3 + 8 * v6) + 8) = vsub_f32(v13[1], v15);
      v12 = *(a1 + 1);
      v14 = a2[1];
    }

    ++v6;
  }

  while (v12 > v6 && v14 > v6);
  result = 1;
  if (v12 > v6)
  {
    v16 = v6;
    if (a4 <= v6)
    {
      v17 = v6;
    }

    else
    {
      v17 = a4;
    }

    if (a4 <= v6)
    {
      v6 = v6;
    }

    else
    {
      v6 = a4;
    }

    while (1)
    {
      if (v6 == v16)
      {
        goto LABEL_46;
      }

      v18 = *(*a1 + 8 * v16);
      v19 = *v18;
      v20 = *(a3 + 8 * v16);
      v21 = *v20;
      if (v19 != v21)
      {
        if (v21)
        {
          if (v19)
          {
            goto LABEL_33;
          }

          *v20 = 0;
        }

        else if (v19)
        {
          *v20 = 1;
LABEL_33:
          *(v20 + 1) = *(v18 + 1);
        }
      }

      v22 = *(a1 + 1);
      if (v22 <= v16)
      {
        goto LABEL_47;
      }

      *(*(a3 + 8 * v16) + 8) = vadd_f32(v7, *(*(*a1 + 8 * v16) + 8));
      if (*(a1 + 1) <= ++v16)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t re::AnimationHelper::makeAdditiveForOptionalValueReferences<re::Vector3<float>>(re *a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 1) != a4)
  {
    v23 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v37 = 0;
    v24 = "Cannot make additive values, output values expected to match input values size.";
    v25 = &v37;
    goto LABEL_42;
  }

  if (!a2[1])
  {
    v23 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v24 = "Cannot make additive values, base values array size must not be zero.";
    v25 = buf;
LABEL_42:
    _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, v24, v25, 2u);
    return 0;
  }

  result = 1;
  if (!a4)
  {
    return result;
  }

  v6 = 0;
  v7 = 0uLL;
  do
  {
    if (a4 == v6)
    {
      re::internal::assertLog(6, a2, a3, *v7.i64, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a4, a4);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v26, v31);
      __break(1u);
LABEL_44:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, v12);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v27, v32);
      __break(1u);
LABEL_45:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, v14);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v28, v33);
      __break(1u);
LABEL_46:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v17, a4);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v29, v34);
      __break(1u);
LABEL_47:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, v22);
      result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v30, v35);
      __break(1u);
      return result;
    }

    v8 = *(*a1 + 8 * v6);
    v9 = *v8;
    v10 = *(a3 + 8 * v6);
    v11 = *v10;
    if (v9 != v11)
    {
      if (v11)
      {
        if ((v9 & 1) == 0)
        {
          *v10 = 0;
          goto LABEL_13;
        }
      }

      else
      {
        if ((v9 & 1) == 0)
        {
          goto LABEL_13;
        }

        *v10 = 1;
      }

      *(v10 + 1) = *(v8 + 1);
    }

LABEL_13:
    v12 = *(a1 + 1);
    if (v12 <= v6)
    {
      goto LABEL_44;
    }

    v13 = *(*a1 + 8 * v6);
    v14 = a2[1];
    if (v13->i8[0] == 1)
    {
      if (v14 <= v6)
      {
        goto LABEL_45;
      }

      v15 = **(*a2 + 8 * v6);
      v7 = vnegq_f32(v15);
      *(*(a3 + 8 * v6) + 16) = vsubq_f32(v13[1], v15);
      v12 = *(a1 + 1);
      v14 = a2[1];
    }

    ++v6;
  }

  while (v12 > v6 && v14 > v6);
  result = 1;
  if (v12 > v6)
  {
    v16 = v6;
    if (a4 <= v6)
    {
      v17 = v6;
    }

    else
    {
      v17 = a4;
    }

    if (a4 <= v6)
    {
      v6 = v6;
    }

    else
    {
      v6 = a4;
    }

    while (1)
    {
      if (v6 == v16)
      {
        goto LABEL_46;
      }

      v18 = *(*a1 + 8 * v16);
      v19 = *v18;
      v20 = *(a3 + 8 * v16);
      v21 = *v20;
      if (v19 != v21)
      {
        if (v21)
        {
          if (v19)
          {
            goto LABEL_33;
          }

          *v20 = 0;
        }

        else if (v19)
        {
          *v20 = 1;
LABEL_33:
          *(v20 + 1) = *(v18 + 1);
        }
      }

      v22 = *(a1 + 1);
      if (v22 <= v16)
      {
        goto LABEL_47;
      }

      *(*(a3 + 8 * v16) + 16) = vaddq_f32(v7, *(*(*a1 + 8 * v16) + 16));
      if (*(a1 + 1) <= ++v16)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t re::AnimationHelper::makeAdditiveForOptionalValueReferences<re::Quaternion<float>>(re *a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 1) != a4)
  {
    v40 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v54 = 0;
    v41 = "Cannot make additive values, output values expected to match input values size.";
    v42 = &v54;
    goto LABEL_42;
  }

  if (!a2[1])
  {
    v40 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v41 = "Cannot make additive values, base values array size must not be zero.";
    v42 = buf;
LABEL_42:
    _os_log_error_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_ERROR, v41, v42, 2u);
    return 0;
  }

  result = 1;
  if (!a4)
  {
    return result;
  }

  v6 = 0;
  v7 = xmmword_1E30474D0;
  do
  {
    if (a4 == v6)
    {
      re::internal::assertLog(6, a2, a3, *v7.i64, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a4, a4);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v43, v48);
      __break(1u);
LABEL_44:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, v12);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v44, v49);
      __break(1u);
LABEL_45:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, v14);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v45, v50);
      __break(1u);
LABEL_46:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v30, a4);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v46, v51);
      __break(1u);
LABEL_47:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v25, v35);
      result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v47, v52);
      __break(1u);
      return result;
    }

    v8 = *(*a1 + 8 * v6);
    v9 = *v8;
    v10 = *(a3 + 8 * v6);
    v11 = *v10;
    if (v9 != v11)
    {
      if (v11)
      {
        if ((v9 & 1) == 0)
        {
          *v10 = 0;
          goto LABEL_13;
        }
      }

      else
      {
        if ((v9 & 1) == 0)
        {
          goto LABEL_13;
        }

        *v10 = 1;
      }

      *(v10 + 1) = *(v8 + 1);
    }

LABEL_13:
    v12 = *(a1 + 1);
    if (v12 <= v6)
    {
      goto LABEL_44;
    }

    v13 = *(*a1 + 8 * v6);
    v14 = a2[1];
    if (v13->i8[0] == 1)
    {
      if (v14 <= v6)
      {
        goto LABEL_45;
      }

      _Q1 = **(*a2 + 8 * v6);
      v7 = vnegq_f32(_Q1);
      _Q2 = v13[1];
      v17 = vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL);
      v7.i32[3] = _Q1.i32[3];
      _Q5 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL), _Q1), _Q2, v17);
      v19 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q5, _Q5), _Q5, 0xCuLL), _Q2, _Q1, 3);
      _Q5.i32[0] = _Q2.i32[3];
      v20 = vmlsq_laneq_f32(v19, _Q1, _Q2, 3);
      __asm { FMLA            S2, S5, V1.S[3] }

      v20.i32[3] = _Q2.i32[0];
      *(*(a3 + 8 * v6) + 16) = v20;
      v12 = *(a1 + 1);
      v14 = a2[1];
    }

    ++v6;
  }

  while (v12 > v6 && v14 > v6);
  result = 1;
  if (v12 > v6)
  {
    v25 = v6;
    v26 = vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL);
    v27 = vnegq_f32(v7);
    v28 = vdupq_laneq_s32(v7, 3);
    _S4 = v7.i32[3];
    if (a4 <= v6)
    {
      v30 = v6;
    }

    else
    {
      v30 = a4;
    }

    if (a4 <= v6)
    {
      v6 = v6;
    }

    else
    {
      v6 = a4;
    }

    while (1)
    {
      if (v6 == v25)
      {
        goto LABEL_46;
      }

      v31 = *(*a1 + 8 * v25);
      v32 = *v31;
      v33 = *(a3 + 8 * v25);
      v34 = *v33;
      if (v32 != v34)
      {
        if (v34)
        {
          if (v32)
          {
            goto LABEL_33;
          }

          *v33 = 0;
        }

        else if (v32)
        {
          *v33 = 1;
LABEL_33:
          *(v33 + 1) = *(v31 + 1);
        }
      }

      v35 = *(a1 + 1);
      if (v35 <= v25)
      {
        goto LABEL_47;
      }

      _Q5 = *(*(*a1 + 8 * v25) + 16);
      v37 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q5, _Q5), _Q5, 0xCuLL), v27), _Q5, v26);
      v38 = vmlaq_laneq_f32(vmlaq_f32(vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL), _Q5, v28), v7, _Q5, 3);
      __asm { FMLA            S7, S4, V5.S[3] }

      v38.i32[3] = _S7;
      *(*(a3 + 8 * v25++) + 16) = v38;
      if (*(a1 + 1) <= v25)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t re::AnimationHelper::makeAdditiveForOptionalValueReferences<re::GenericSRT<float>>(re *a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 1) != a4)
  {
    v42 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v43 = "Cannot make additive values, output values expected to match input values size.";
    goto LABEL_42;
  }

  v4 = a2;
  if (!a2[1])
  {
    v42 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v43 = "Cannot make additive values, base values array size must not be zero.";
LABEL_42:
    _os_log_error_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_ERROR, v43, buf, 2u);
    return 0;
  }

  *buf = 0x3F8000003F800000;
  *&buf[8] = 1065353216;
  v56.i64[0] = 0;
  v56.i64[1] = 0x3F80000000000000;
  v57 = 0uLL;
  if (!a4)
  {
    return 1;
  }

  v8 = 0;
  v9 = 1;
  __asm { FMOV            V0.4S, #1.0 }

  v54 = _Q0;
  do
  {
    if (a4 == v8)
    {
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a4, a4);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v44, v49);
      __break(1u);
LABEL_44:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, v21);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v45, v50);
      __break(1u);
LABEL_45:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, v23);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v46, v51);
      __break(1u);
LABEL_46:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, a4);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v47, v52);
      __break(1u);
LABEL_47:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v4, v40);
      result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v48, v53);
      __break(1u);
      return result;
    }

    v15 = *(*a1 + 8 * v8);
    v16 = *v15;
    v17 = *(a3 + 8 * v8);
    v18 = *v17;
    if (v16 != v18)
    {
      if (v18)
      {
        if ((v16 & 1) == 0)
        {
          *v17 = 0;
          goto LABEL_13;
        }
      }

      else
      {
        if ((v16 & 1) == 0)
        {
          goto LABEL_13;
        }

        *v17 = 1;
      }

      v19 = v15[1];
      v20 = v15[3];
      *(v17 + 2) = v15[2];
      *(v17 + 3) = v20;
      *(v17 + 1) = v19;
    }

LABEL_13:
    v21 = *(a1 + 1);
    if (v21 <= v8)
    {
      goto LABEL_44;
    }

    v22 = *a1;
    v23 = *(v4 + 8);
    if (**(*a1 + 8 * v8) == 1)
    {
      if (v23 <= v8)
      {
        goto LABEL_45;
      }

      v24 = *(*v4 + 8 * v8);
      v25 = *(v24 + 16);
      v26 = *(v24 + 32);
      v27 = vnegq_f32(v25);
      v28 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
      v27.i32[3] = v25.i32[3];
      v29 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), v25), v26, v28);
      v30 = vaddq_f32(v29, v29);
      v31 = vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL);
      v32 = vaddq_f32(v26, vmulq_laneq_f32(v31, v25, 3));
      v33 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL), v25), v31, v28);
      *buf = vdivq_f32(v54, *v24);
      v56 = v27;
      v57 = vmulq_f32(vaddq_f32(v32, vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL)), vnegq_f32(*buf));
      re::AnimationValueTraits<re::GenericSRT<float>>::combine((*(v22 + 8 * v8) + 16), buf, (*(a3 + 8 * v8) + 16));
      v21 = *(a1 + 1);
      v23 = *(v4 + 8);
    }

    ++v8;
  }

  while (v21 > v8 && v23 > v8);
  if (v21 > v8)
  {
    v4 = v8;
    if (a4 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = a4;
    }

    if (a4 <= v8)
    {
      v8 = v8;
    }

    else
    {
      v8 = a4;
    }

    do
    {
      if (v8 == v4)
      {
        goto LABEL_46;
      }

      v34 = *(*a1 + 8 * v4);
      v35 = *v34;
      v36 = *(a3 + 8 * v4);
      v37 = *v36;
      if (v35 != v37)
      {
        if (v37)
        {
          if (v35)
          {
            goto LABEL_33;
          }

          *v36 = 0;
        }

        else if (v35)
        {
          *v36 = 1;
LABEL_33:
          v38 = v34[1];
          v39 = v34[3];
          *(v36 + 2) = v34[2];
          *(v36 + 3) = v39;
          *(v36 + 1) = v38;
        }
      }

      v40 = *(a1 + 1);
      if (v40 <= v4)
      {
        goto LABEL_47;
      }

      re::AnimationValueTraits<re::GenericSRT<float>>::combine((*(*a1 + 8 * v4) + 16), buf, (*(a3 + 8 * v4) + 16));
      ++v4;
    }

    while (*(a1 + 1) > v4);
  }

  return 1;
}

uint64_t re::AnimationHelper::makeAdditiveForOptionalValueReferences<re::SkeletalPose>(re *a1, uint64_t **a2, uint64_t a3, uint64_t **a4)
{
  if (*(a1 + 1) != a4)
  {
    v18 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v19 = "Cannot make additive values, output values expected to match input values size.";
    goto LABEL_32;
  }

  v4 = a2;
  if (!a2[1])
  {
    v18 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v19 = "Cannot make additive values, base values array size must not be zero.";
LABEL_32:
    _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, v19, buf, 2u);
    return 0;
  }

  *buf = 0;
  v33 = &str_67;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  re::AnimationValueTraits<re::SkeletalPose>::init(buf, **a2);
  v9 = 0;
  v10 = *(a1 + 1);
  if (v10 && v4[1])
  {
    v9 = 0;
    while (a4 != v9)
    {
      v8 = *(*a1 + 8 * v9);
      v11 = *(a3 + 8 * v9);
      if (*v8 != *v11)
      {
        re::Optional<re::SkeletalPose>::operator=(v11, v8);
        v10 = *(a1 + 1);
      }

      if (v10 <= v9)
      {
        goto LABEL_34;
      }

      v12 = v4[1];
      if (**(*a1 + 8 * v9) == 1)
      {
        if (v12 <= v9)
        {
          goto LABEL_37;
        }

        re::AnimationValueTraits<re::SkeletalPose>::invert((*v4)[v9], buf);
        v14 = *(a1 + 1);
        if (v14 <= v9)
        {
          goto LABEL_38;
        }

        re::AnimationValueTraits<re::SkeletalPose>::combine((*(*a1 + 8 * v9) + 8), buf, (*(a3 + 8 * v9) + 8));
        v10 = *(a1 + 1);
        v12 = v4[1];
      }

      if (v10 <= ++v9 || v12 <= v9)
      {
        v9 = v9;
        goto LABEL_17;
      }
    }

    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a4, a4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v26);
    __break(1u);
LABEL_34:
    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, v10);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v27);
    __break(1u);
  }

  else
  {
LABEL_17:
    if (v10 <= v9)
    {
LABEL_26:
      re::SkeletalPose::deinit(buf);
      re::SkeletalPose::~SkeletalPose(buf);
      return 1;
    }

    if (a4 <= v9)
    {
      v4 = v9;
    }

    else
    {
      v4 = a4;
    }

    while (v4 != v9)
    {
      v15 = *(*a1 + 8 * v9);
      v16 = *(a3 + 8 * v9);
      if (*v15 != *v16)
      {
        re::Optional<re::SkeletalPose>::operator=(v16, v15);
        v10 = *(a1 + 1);
      }

      if (v10 <= v9)
      {
        goto LABEL_36;
      }

      re::AnimationValueTraits<re::SkeletalPose>::combine((*(*a1 + 8 * v9) + 8), buf, (*(a3 + 8 * v9) + 8));
      ++v9;
      v10 = *(a1 + 1);
      if (v10 <= v9)
      {
        goto LABEL_26;
      }
    }
  }

  re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, a4);
  _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v28);
  __break(1u);
LABEL_36:
  re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, v10);
  _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v23, v29);
  __break(1u);
LABEL_37:
  re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, v12);
  _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v24, v30);
  __break(1u);
LABEL_38:
  re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, v14);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v25, v31);
  __break(1u);
  return result;
}

double re::OrbitAnimation::OrbitAnimation(re::OrbitAnimation *this)
{
  v1 = re::Timeline::Timeline(this, 37);
  *(v1 + 72) = 0;
  *v1 = &unk_1F5CB1A48;
  __asm { FMOV            V0.2S, #1.0 }

  *(v1 + 76) = _D0;
  *(v1 + 84) = 1;
  *(v1 + 96) = xmmword_1E3047680;
  *(v1 + 112) = 0;
  *(v1 + 128) = 0x3F8000003F800000;
  *(v1 + 136) = 1065353216;
  *(v1 + 144) = 0;
  *(v1 + 152) = 0x3F80000000000000;
  result = 0.0;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0x3F8000003F800000;
  *(v1 + 184) = 1065353216;
  *(v1 + 192) = 0;
  *(v1 + 200) = 0x3F80000000000000;
  *(v1 + 208) = 0u;
  return result;
}

void re::OrbitAnimation::computeOrbitTransform(uint64_t a1, uint64_t a2, float a3)
{
  v5 = *(a1 + 112) + ((a3 * 6.2832) * *(a1 + 80));
  v6 = -v5;
  if (!*(a1 + 84))
  {
    v6 = v5;
  }

  v7 = *(a1 + 96);
  v8 = vmulq_f32(v7, v7);
  v9 = v8.f32[2] + vaddv_f32(*v8.f32);
  if (fabsf(v9) >= 1.0e-10)
  {
    v10 = v9;
    v11 = vrsqrte_f32(LODWORD(v9));
    v12 = vmul_f32(v11, vrsqrts_f32(LODWORD(v10), vmul_f32(v11, v11)));
    v7 = vmulq_n_f32(v7, vmul_f32(v12, vrsqrts_f32(LODWORD(v10), vmul_f32(v12, v12))).f32[0]);
  }

  v64 = v7;
  _KR00_8 = __sincosf_stret(v6 * 0.5);
  v14 = vmulq_n_f32(v64, _KR00_8.__sinval);
  v14.i32[2] = vmuls_lane_f32(_KR00_8.__sinval, v64, 2);
  v15 = v14;
  v15.i32[3] = LODWORD(_KR00_8.__cosval);
  if (*(a1 + 72) == 1)
  {
    _Q3 = *(a1 + 192);
    v17 = *(a1 + 208);
    __asm { FMOV            V5.4S, #1.0 }

    v23 = *(a1 + 160);
    v24 = vdivq_f32(_Q5, *(a1 + 176));
    v25 = vnegq_f32(_Q3);
    v26 = vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL);
    v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL), _Q3), v17, v26);
    v28 = vaddq_f32(v27, v27);
    v29 = vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL);
    v30 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL), _Q3), v29, v26);
    v31 = vaddq_f32(vaddq_f32(v17, vmulq_laneq_f32(v29, _Q3, 3)), vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL));
    v32 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL), _Q3), v14, v26);
    v33 = vmlsq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL), v14, _Q3, 3), _Q3, v15, 3);
    __asm { FMLA            S0, S1, V3.S[3] }

    v35 = vmlaq_f32(vmulq_f32(_Q3, 0), 0, v26);
    v36 = vaddq_f32(v35, v35);
    _Q2 = vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL);
    v38 = vaddq_f32(vmulq_laneq_f32(_Q2, _Q3, 3), 0);
    v39 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL), _Q3), _Q2, v26);
    v40 = vsubq_f32(vmulq_f32(v24, vaddq_f32(v38, vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL))), vmulq_f32(v24, v31));
    _Q6 = *(a1 + 144);
    v42 = vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL);
    v43 = vnegq_f32(v33);
    v44 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q6, _Q6), _Q6, 0xCuLL), v43), _Q6, v42);
    v46 = vmlaq_laneq_f32(vmlaq_n_f32(vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL), _Q6, _S0), v33, _Q6, 3);
    v45 = vmulq_f32(*(a1 + 128), v24);
    __asm { FMLA            S2, S0, V6.S[3] }

    v46.i32[3] = _Q2.i32[0];
    v47 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL), v43), v23, v42);
    v48 = vaddq_f32(v47, v47);
    v49 = vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL);
    v50 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL), v43), v49, v42);
    v51 = vaddq_f32(v40, vmulq_f32(v24, vaddq_f32(vaddq_f32(v23, vmulq_n_f32(v49, _S0)), vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL))));
    _Q5 = xmmword_1E30474D0;
  }

  else
  {
    v45 = *(a1 + 128);
    _Q5 = *(a1 + 144);
    v53 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
    v54 = vnegq_f32(v14);
    v55 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q5, _Q5), _Q5, 0xCuLL), v54), _Q5, v53);
    v46 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL), _Q5, v15, 3), v14, _Q5, 3);
    __asm { FMLA            S2, S1, V5.S[3] }

    v46.i32[3] = _S2;
    v57 = *(a1 + 160);
    v58 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v57, v57), v57, 0xCuLL), v54), v57, v53);
    v59 = vaddq_f32(v58, v58);
    v60 = vextq_s8(vuzp1q_s32(v59, v59), v59, 0xCuLL);
    v61 = vaddq_f32(v57, vmulq_laneq_f32(v60, v15, 3));
    v62 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v60, v60), v60, 0xCuLL), v54), v60, v53);
    v51 = vaddq_f32(vaddq_f32(v61, vextq_s8(vuzp1q_s32(v62, v62), v62, 0xCuLL)), 0);
  }

  if (*(a1 + 85))
  {
    v63 = -1;
  }

  else
  {
    v63 = 0;
  }

  *a2 = v45;
  *(a2 + 16) = vbslq_s8(vdupq_n_s32(v63), v46, _Q5);
  *(a2 + 32) = v51;
}

void re::OrbitAnimation::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v8 = *(a2 + 24) / *(a1 + 76);

    re::OrbitAnimation::computeOrbitTransform(a1, a6, v8);
  }

  else
  {
    re::internal::assertLog(6, a2, a3, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v6, v7);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
  }
}

void re::OrbitAnimation::~OrbitAnimation(re::OrbitAnimation *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::EvaluationOutputHandle<re::Matrix4x4<float>>::bindEvaluationOutput<re::Matrix4x4<float>>(uint64_t *a1, const re::IntrospectionBase *a2, void *a3)
{
  v3 = a3;
  {
    v9 = a2;
    a2 = v9;
    if (v8)
    {
      re::introspect<re::Matrix4x4<float>>(BOOL)::info = re::introspect_Matrix4x4F(0);
      a2 = v9;
    }
  }

  re::makeBindPoint(&v10, re::introspect<re::Matrix4x4<float>>(BOOL)::info, a2);
  v5 = *a1;
  v12 = v10;
  re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(v13, v11);
  v6 = re::EvaluationContextManager::bindOutputHandle<re::Matrix4x4<float>>(v5, a1, &v12, v3);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v13);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v13);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v11);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v11);
  return v6;
}

void re::FixedArray<re::EvaluationOutputHandle<re::GenericSRT<float>>>::init<>(void *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 60)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v9, v10);
    __break(1u);
    goto LABEL_9;
  }

  v5 = 16 * a3;
  v6 = (*(*a2 + 32))(a2, 16 * a3, 8);
  a1[2] = v6;
  if (!v6)
  {
LABEL_9:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return;
  }

  v8 = v6;
  if (a3 != 1)
  {
    bzero(v6, v5 - 16);
    v8 = (v8 + v5 - 16);
  }

  *v8 = 0;
  v8[1] = 0;
}