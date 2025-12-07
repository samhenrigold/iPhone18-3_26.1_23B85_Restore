uint64_t (***re::DeformationManager::removeDeformationStack(re *a1, uint64_t a2))(void)
{
  v11[5] = *MEMORY[0x1E69E9840];
  re::globalAllocators(a1);
  v4 = *(a1 + 3);
  if (v4)
  {
    v5 = re::RenderManager::perFrameAllocator(v4);
    v6 = *(a1 + 3);
    if (v6)
    {
      v7 = re::RenderManager::perFrameAllocator(v6);
    }

    else
    {
      v7 = *(a1 + 5);
    }
  }

  else
  {
    v5 = *(a1 + 5);
    v7 = v5;
  }

  v8 = (*(*v7 + 32))(v7, 24, 8);
  *v8 = a2;
  *(v8 + 1) = a1 + 816;
  *(v8 + 2) = a1 + 48;
  v9 = re::globalAllocators(v8)[2];
  v11[0] = &unk_1F5D09710;
  v11[3] = v9;
  v11[4] = v11;
  (*(*v5 + 16))(v5, v8, v11);
  return re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v11);
}

uint64_t re::DataArray<re::DeformationStack>::get(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = HIWORD(a2);
  v3 = *(a1 + 16);
  if (v3 <= HIWORD(a2))
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
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 32) + 16 * HIWORD(a2)) + 1032 * a2;
}

void re::DeformationManager::addDeformation(uint64_t a1, void *a2, uint64_t a3)
{
  v109 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 24);
  v88 = a1;
  if (v9)
  {
    v9 = re::RenderManager::perFrameAllocator(v9);
    v93 = v9;
  }

  else
  {
    v93 = *(a1 + 40);
  }

  v10 = a2[1];
  v94 = a2[3];
  if (v10)
  {
    v11 = a2[3] == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = *(v88 + 32);
    v87 = *(a3 + 48);
    v13 = a2[12];
    v92 = v12;
    if (v13[1])
    {
      v14 = a3;
    }

    else
    {
      *v13 = v93;
      v13[1] = v10;
      if (v10 >= 0xAAAAAAAAAAAAAABLL)
      {
LABEL_73:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 24, v10);
        _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v69, v78);
        __break(1u);
LABEL_74:
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
        _os_crash("assertion failure: (m_data) Out of memory.");
        __break(1u);
      }

      v5 = 24 * v10;
      v9 = (*(*v93 + 32))(v93, 24 * v10, 8);
      v13[2] = v9;
      if (!v9)
      {
        goto LABEL_74;
      }

      v4 = v9;
      if (v10 != 1)
      {
        v5 -= 24;
        bzero(v9, v5);
        v4 += v5;
      }

      v14 = a3;
      v12 = v92;
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v86 = v14 + 32;
    while (1)
    {
      v19 = a2[3];
      if (v19 <= v18)
      {
        break;
      }

      v20 = a2[1];
      v21 = (a2[2] + v15);
      v4 = *v21;
      if (v20 <= v4)
      {
        goto LABEL_45;
      }

      v3 = WORD1(*(*a2 + 8 * v4));
      v5 = v12[11];
      if (v5 <= v3)
      {
        goto LABEL_46;
      }

      v3 = *(v12[13] + 16 * WORD1(*(*a2 + 8 * v4))) + 144 * *(*a2 + 8 * v4);
      v5 = WORD1(*(v3 + 16));
      v6 = v12[3];
      if (v6 <= v5)
      {
        goto LABEL_50;
      }

      v22 = a2[12];
      v6 = *(v22 + 8);
      if (v6 <= v4)
      {
        goto LABEL_54;
      }

      v23 = *(v21 + 2);
      v6 = *(v22 + 16) + 24 * v4;
      if (!*v6)
      {
        v24 = *(*(v12[5] + 16 * WORD1(*(v3 + 16))) + 864 * *(v3 + 16) + 56);
        *v6 = v93;
        *(v6 + 8) = v24;
        if (v24)
        {
          if (v24 >> 61)
          {
            goto LABEL_63;
          }

          v90 = v17;
          v25 = v16;
          v26 = v3;
          v27 = v23;
          v9 = (*(*v93 + 32))(v93, 8 * v24, 8);
          *(v6 + 16) = v9;
          if (!v9)
          {
            goto LABEL_64;
          }

          v28 = v9;
          if (v24 != 1)
          {
            bzero(v9, 8 * v24 - 8);
            v28 = (v28 + 8 * v24 - 8);
          }

          v23 = v27;
          *v28 = 0;
          v3 = v26;
          v16 = v25;
          v17 = v90;
          v12 = v92;
        }
      }

      v4 = *(v6 + 8);
      if (v4 <= v23)
      {
        goto LABEL_58;
      }

      v5 = *(v6 + 16);
      if (!*(v5 + 8 * v23))
      {
        v6 = v23;
        re::globalAllocators(v9);
        v24 = v93;
        v4 = (*(*v93 + 32))(v93, 328, 8);
        *v4 = 0u;
        *(v4 + 16) = 0u;
        *(v4 + 32) = 0u;
        *(v4 + 48) = 0u;
        *(v4 + 64) = 0u;
        *(v4 + 80) = 0u;
        *(v4 + 96) = 0u;
        *(v4 + 112) = 0u;
        *(v4 + 128) = 0u;
        *(v4 + 144) = 0u;
        *(v4 + 160) = 0u;
        *(v4 + 176) = 0u;
        *(v4 + 192) = 0u;
        *(v4 + 208) = 0u;
        *(v4 + 224) = 0u;
        *(v4 + 240) = 0u;
        *(v4 + 256) = 0u;
        *(v4 + 272) = 0u;
        *(v4 + 320) = 0;
        *(v4 + 200) = 1;
        *(v4 + 216) = 0;
        *(v4 + 224) = 0;
        *(v4 + 208) = 0;
        *(v4 + 232) = 0;
        *(v4 + 248) = 0;
        *(v4 + 256) = 0;
        *(v4 + 240) = 0;
        *(v4 + 264) = 0;
        *(v4 + 272) = 0u;
        *(v4 + 288) = 0u;
        *(v4 + 288) = 0u;
        *(v4 + 304) = 0u;
        *(v4 + 304) = 0;
        v29 = re::globalAllocators(v4)[2];
        *&v104 = &unk_1F5D09768;
        *(&v105 + 1) = v29;
        *&v106 = &v104;
        *(v5 + 8 * v6) = (*(*v93 + 16))(v93, v4, &v104);
        v9 = re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v104);
        v30 = a2[5];
        if (v30 <= v18)
        {
          goto LABEL_62;
        }

        v31 = a2[4];
        v12 = v92;
        if ((*(v31 + v15 + 4) & 0xFFFFFF) != 0)
        {
          v9 = re::DataArray<re::DeformationStack>::get(v88 + 816, *(v31 + 8 * v18));
          v32 = a2[5];
          if (v32 <= v18)
          {
            goto LABEL_65;
          }

          v33 = a2[7];
          if (v33 <= v18)
          {
            goto LABEL_66;
          }

          v34 = a2[9];
          if (v34 <= v18)
          {
            goto LABEL_67;
          }

          v35 = a2[11];
          if (v35 <= v18)
          {
            goto LABEL_68;
          }

          v36 = *(a2[4] + 8 * v18);
          v4 = v9 + 48;
          v37 = *v9;
          v38 = *(a2[6] + 8 * v18);
          v39 = a2[8];
          v40 = a2[10];
          v41 = v6;
          v42 = *(v5 + 8 * v6);
          v5 = *(a3 + 48);
          v43 = *(a3 + 16);
          if (v5 + 1 > 8 * v43)
          {
            v91 = *v9;
            v84 = v42;
            v85 = *(a2[4] + 8 * v18);
            v82 = a2[8];
            v83 = *(a2[6] + 8 * v18);
            v81 = a2[10];
            v9 = re::BucketArray<re::ActiveDeformation,8ul>::setBucketsCapacity((a3 + 8), (v5 + 8) >> 3);
            v40 = v81;
            v39 = v82;
            v38 = v83;
            v42 = v84;
            v36 = v85;
            v37 = v91;
            v41 = v6;
            v43 = *(a3 + 16);
          }

          v6 = v5 >> 3;
          if (v43 <= v5 >> 3)
          {
            goto LABEL_69;
          }

          v44 = v86;
          if ((*(a3 + 24) & 1) == 0)
          {
            v44 = *(a3 + 40);
          }

          v45 = *(v44 + 8 * v6);
          ++*(a3 + 48);
          ++*(a3 + 56);
          v46 = v45 + 400 * (v5 & 7);
          *(v46 + 288) = 0u;
          *(v46 + 304) = 0u;
          *(v46 + 256) = 0u;
          *(v46 + 272) = 0u;
          *(v46 + 224) = 0u;
          *(v46 + 240) = 0u;
          *(v46 + 192) = 0u;
          *(v46 + 208) = 0u;
          *(v46 + 160) = 0u;
          *(v46 + 176) = 0u;
          *(v46 + 128) = 0u;
          *(v46 + 144) = 0u;
          *(v46 + 96) = 0u;
          *(v46 + 112) = 0u;
          *(v46 + 64) = 0u;
          *(v46 + 80) = 0u;
          *(v46 + 32) = 0u;
          *(v46 + 48) = 0u;
          *v46 = 0u;
          *(v46 + 16) = 0u;
          *(v46 + 320) = v36;
          *(v46 + 328) = v4;
          *(v46 + 336) = v37;
          *(v46 + 344) = v38;
          *(v46 + 352) = v39 + v17;
          *(v46 + 360) = v40 + v16;
          *(v46 + 368) = v3;
          *(v46 + 376) = v42;
          *(v46 + 384) = v87;
          *(v46 + 392) = v41;
          v12 = v92;
        }
      }

      ++v18;
      v17 += 168;
      v16 += 48;
      v15 += 8;
      if (v94 == v18)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v18, v19);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v61, v70);
    __break(1u);
LABEL_45:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v4, v20);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v62, v71);
    __break(1u);
LABEL_46:
    v95 = 0;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v104 = 0u;
    v47 = MEMORY[0x1E69E9C10];
    v96 = 136315906;
    v97 = "operator[]";
    v98 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v48 = 3;
    }

    else
    {
      v48 = 2;
    }

    v99 = 797;
    v100 = 2048;
    v101 = v3;
    v102 = 2048;
    v103 = v5;
    _os_log_send_and_compose_impl(v48, &v95, &v104, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v96, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
LABEL_50:
    v95 = 0;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v104 = 0u;
    v49 = MEMORY[0x1E69E9C10];
    v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v96 = 136315906;
    v97 = "operator[]";
    v98 = 1024;
    if (v50)
    {
      v51 = 3;
    }

    else
    {
      v51 = 2;
    }

    v99 = 797;
    v100 = 2048;
    v101 = v5;
    v102 = 2048;
    v103 = v6;
    _os_log_send_and_compose_impl(v51, &v95, &v104, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v96, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
LABEL_54:
    v95 = 0;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v104 = 0u;
    v52 = MEMORY[0x1E69E9C10];
    v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v96 = 136315906;
    v97 = "operator[]";
    v98 = 1024;
    if (v53)
    {
      v54 = 3;
    }

    else
    {
      v54 = 2;
    }

    v99 = 468;
    v100 = 2048;
    v101 = v4;
    v102 = 2048;
    v103 = v6;
    _os_log_send_and_compose_impl(v54, &v95, &v104, 80, &dword_1E1C61000, v52, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v96, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
LABEL_58:
    v95 = 0;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v104 = 0u;
    v55 = MEMORY[0x1E69E9C10];
    v24 = v23;
    v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v96 = 136315906;
    v97 = "operator[]";
    v98 = 1024;
    if (v56)
    {
      v57 = 3;
    }

    else
    {
      v57 = 2;
    }

    v99 = 468;
    v100 = 2048;
    v101 = v24;
    v102 = 2048;
    v103 = v4;
    _os_log_send_and_compose_impl(v57, &v95, &v104, 80, &dword_1E1C61000, v55, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v96, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
LABEL_62:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v18, v30);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v63, v72);
    __break(1u);
LABEL_63:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, v24);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v64, v73);
    __break(1u);
LABEL_64:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
LABEL_65:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v18, v32);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v65, v74);
    __break(1u);
LABEL_66:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v18, v33);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v66, v75);
    __break(1u);
LABEL_67:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v18, v34);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v67, v76);
    __break(1u);
LABEL_68:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v18, v35);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v68, v77);
    __break(1u);
LABEL_69:
    v95 = 0;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v104 = 0u;
    v10 = MEMORY[0x1E69E9C10];
    v58 = v43;
    v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v96 = 136315906;
    v97 = "operator[]";
    v98 = 1024;
    if (v59)
    {
      v60 = 3;
    }

    else
    {
      v60 = 2;
    }

    v99 = 858;
    v100 = 2048;
    v101 = v6;
    v102 = 2048;
    v103 = v58;
    _os_log_send_and_compose_impl(v60, &v95, &v104, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v96, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
    goto LABEL_73;
  }
}

_anonymous_namespace_ *re::DeformationManager::addDeformationView(_anonymous_namespace_ *result, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v21 = *a2;
  v22 = a2[1];
  v24 = a3[1];
  v25 = a3[2];
  v26 = a3[3];
  v27 = *(a3 + 32);
  v23 = *a3;
  v5 = *(a3 + 80);
  if (v5 == 1)
  {
    v17 = a3[6];
    v18 = a3[7];
    v19 = a3[8];
    v20 = a3[9];
  }

  v6 = *(a3 + 160);
  if (v6 == 1)
  {
    v13 = a3[11];
    v14 = a3[12];
    v15 = a3[13];
    v16 = a3[14];
  }

  v8 = *(a4 + 72);
  v7 = *(a4 + 80);
  if (v7 >= v8)
  {
    v9 = v7 + 1;
    if (v8 < v7 + 1)
    {
      if (*(a4 + 64))
      {
        v10 = 2 * v8;
        if (!v8)
        {
          v10 = 8;
        }

        if (v10 <= v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = v10;
        }

        result = re::DynamicArray<re::DeformationView>::setCapacity((a4 + 64), v11);
      }

      else
      {
        result = re::DynamicArray<re::DeformationView>::setCapacity((a4 + 64), v9);
        ++*(a4 + 88);
      }
    }

    v7 = *(a4 + 80);
  }

  v12 = *(a4 + 96) + 272 * v7;
  *v12 = v21;
  *(v12 + 16) = v22;
  *(v12 + 64) = v25;
  *(v12 + 80) = v26;
  *(v12 + 96) = v27;
  *(v12 + 32) = v23;
  *(v12 + 48) = v24;
  *(v12 + 112) = v5;
  if (v5)
  {
    *(v12 + 128) = v17;
    *(v12 + 144) = v18;
    *(v12 + 160) = v19;
    *(v12 + 176) = v20;
  }

  *(v12 + 192) = v6;
  if (v6)
  {
    *(v12 + 208) = v13;
    *(v12 + 224) = v14;
    *(v12 + 240) = v15;
    *(v12 + 256) = v16;
  }

  ++*(a4 + 80);
  ++*(a4 + 88);
  return result;
}

void re::DeformationManagerGPU::deform(re::ProfilerConfig *a1, void *a2, uint64_t a3, const re::mtl::CommandBuffer *a4, unint64_t a5, void *a6)
{
  v271 = *MEMORY[0x1E69E9840];
  v7 = a6[6];
  if (!v7)
  {
    return;
  }

  v10 = a1;
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
  if (isStatisticCollectionEnabled)
  {
    isStatisticCollectionEnabled = re::profilerThreadContext(isStatisticCollectionEnabled);
    v183 = isStatisticCollectionEnabled;
    if (*(isStatisticCollectionEnabled + 19))
    {
      isStatisticCollectionEnabled = mach_absolute_time();
      v182 = isStatisticCollectionEnabled;
    }
  }

  else
  {
    v183 = 0;
  }

  v212 = a6 + 1;
  v12 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
  if (v12)
  {
    v13 = re::profilerThreadContext(v12);
    v14 = *(v13 + 152);
    if (v14)
    {
      v15 = v14[936].u64[0];
      if (v15 >= v7)
      {
        v15 = v7;
      }

      v14[936].i64[0] = v15;
      v16 = v14[936].u64[1];
      if (v16 <= v7)
      {
        v16 = v7;
      }

      v14[936].i64[1] = v16;
      v17 = vdupq_n_s64(1uLL);
      v17.i64[0] = v7;
      v14[937] = vaddq_s64(v14[937], v17);
      *(v13 + 184) = 0;
    }
  }

  v18 = re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v220, 1004, v10, v7, a2[3] & 0xFFFFFFFFFFFFFFFLL, 0);
  v217 = 0;
  v218 = 0;
  v219 = 0;
  v19 = 0;
  v20 = 0;
  v21 = &v241;
  v22 = v218;
  v215 = v219;
  do
  {
    v23 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](v212, v20);
    re::DeformationVertexBufferState::makeFromMeshInstance(*(v10 + 4), *(v23 + 368), *(v23 + 392), &v241);
    if (v22 == v20)
    {
      goto LABEL_238;
    }

    i = v215 + v19;
    v24 = v241;
    v25 = v242;
    v26 = v243;
    *(i + 48) = v244;
    *(i + 16) = v25;
    *(i + 32) = v26;
    *i = v24;
    if ((v215 + v19) != &v241)
    {
      re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::copy((i + 56), &v244 + 8);
      re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::copy((i + 120), &v246);
      re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::copy((i + 184), &v247);
      re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::copy((i + 248), &v249 + 8);
    }

    re::DeformationVertexBufferState::~DeformationVertexBufferState(&v241);
    ++v20;
    v19 += 312;
  }

  while (v7 != v20);
  v216 = *a5;
  v27 = *(v10 + 3);
  v28 = (v27 + 144);
  if (!v27)
  {
    v28 = v10 + 16;
  }

  v238 = vorrq_s8(vandq_s8(*(*v28 + 24), vdupq_n_s64(0xFFFFFFFFFFFFFFFuLL)), vdupq_n_s64(*(*v28 + 16) << 60));
  v239 = v27 + 208;
  v29 = re::DeformationFencePool::setCurrentFrame(v10 + 880, v238.i64[1], v238.i64[0]);
  re::globalAllocators(v29);
  a5 = (*(*a2 + 32))(a2, 984, 8);
  bzero(a5, 0x3D0uLL);
  v31 = 0;
  *(a5 + 16) = 1;
  *(a5 + 72) = 1;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 24) = 0;
  *(a5 + 48) = 0;
  *(a5 + 56) = 0;
  *(a5 + 64) = 0;
  *(a5 + 88) = 0;
  *(a5 + 96) = 0;
  *(a5 + 80) = 0;
  *(a5 + 104) = 0;
  do
  {
    v32 = a5 + v31;
    *(v32 + 144) = 0;
    *(v32 + 112) = 0uLL;
    *(v32 + 128) = 0uLL;
    *(v32 + 148) = 0x7FFFFFFFLL;
    v31 += 48;
  }

  while (v31 != 864);
  *(a5 + 976) = 0;
  *(&v242 + 1) = re::globalAllocators(v30)[2];
  *&v241 = &unk_1F5D097C0;
  *&v243 = &v241;
  v193 = (*(*a2 + 16))(a2, a5, &v241);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v241);
  v196 = a2;
  v194 = v10;
  v211 = v22;
  v205 = a6[6];
  if (!v205)
  {
    goto LABEL_45;
  }

  a5 = 0;
  LODWORD(v20) = 1;
  do
  {
    v7 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](v212, a5);
    v34 = re::DataArray<re::DeformationStack>::get(v10 + 816, *(v7 + 320));
    if (a5 == v22)
    {
      goto LABEL_249;
    }

    v36 = (v215 + 312 * a5);
    v37 = *(v7 + 360);
    v230 = 0;
    v22 = *v34;
    if (!*v34)
    {
      goto LABEL_43;
    }

    v213 = v7;
    v206 = v34;
    v208 = a5;
    a5 = 0;
    i = 0;
    v38 = v34 + 48;
    v209 = v34 + 4;
    do
    {
      v21 = &v38[64 * a5];
      v39 = *(v21 + 8);
      {
        v44 = *(v21 + 16);
LABEL_36:
        i |= v44;
        re::Bitset<64>::toWordIndex(&v230, a5);
        v230 |= 1 << a5;
        goto LABEL_37;
      }

      v7 = *(v37 + 8);
      if (v7 <= a5)
      {
        goto LABEL_234;
      }

      v41 = *(v37 + 16) + 72 * a5;
      v7 = *(v41 + 56);
      if (*(v41 + 56))
      {
        v21 = 0;
        do
        {
          v42 = *(v37 + 8);
          if (v42 <= a5)
          {
            *&v270[0] = 0;
            v244 = 0u;
            v245 = 0u;
            v242 = 0u;
            v243 = 0u;
            v241 = 0u;
            v149 = MEMORY[0x1E69E9C10];
            v150 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v255[0]) = 136315906;
            *(v255 + 4) = "operator[]";
            WORD6(v255[0]) = 1024;
            if (v150)
            {
              v151 = 3;
            }

            else
            {
              v151 = 2;
            }

            *(v255 + 14) = 476;
            WORD1(v255[1]) = 2048;
            *(&v255[1] + 4) = a5;
            WORD6(v255[1]) = 2048;
            *(&v255[1] + 14) = v42;
            _os_log_send_and_compose_impl(v151, v270, &v241, 80, &dword_1E1C61000, v149, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v255, 38, v180, v181);
            _os_crash_msg();
            __break(1u);
            goto LABEL_232;
          }

          v43 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](*(v37 + 16) + 72 * a5 + 16, v21);
          re::DeformationVertexBufferState::setOutputBuffer(v36, *v43, 1, v43 + 3, v43 + 4);
          ++v21;
        }

        while (v7 != v21);
        re::DeformationVertexBufferState::resetVertexBufferChangedState(v36);
        LODWORD(v20) = 1;
      }

      else
      {
        v44 = *(v21 + 16);
        if (v44)
        {
          goto LABEL_36;
        }
      }

LABEL_37:
      ++a5;
    }

    while (a5 != v22);
    v10 = v194;
    a5 = v208;
    v7 = v213;
    if (v230)
    {
      re::DeformationPassBuilder::addDeformationStack(v193, v208, v230, v206);
      goto LABEL_44;
    }

LABEL_43:
    re::DeformationVertexBufferState::buildAttributeTable(v36, *(v7 + 376));
LABEL_44:
    ++a5;
    v22 = v211;
  }

  while (a5 != v205);
LABEL_45:
  if (!*a4)
  {
    goto LABEL_262;
  }

  re::DeformationCommandBuffer::DeformationCommandBuffer(v255, *(v10 + 3), a4, (v10 + 880));
  v46 = v193;
  v47 = *(v193 + 976);
  if (v47)
  {
    a5 = __clz(__rbit64(v47));
    v7 = 40;
    do
    {
      (*(**(v10 + 5 * a5 + 6) + 16))(*(v10 + 5 * a5 + 6), v10 + 8);
      v46 = v193;
      if (a5 == 63)
      {
        break;
      }

      v106 = (*(v193 + 976) & (-2 << a5)) == 0;
      a5 = __clz(__rbit64(*(v193 + 976) & (-2 << a5)));
    }

    while (!v106);
  }

  v237 = 0;
  v185 = *(v46 + 40);
  if (*(v46 + 40))
  {
    v48 = 0;
    v189 = 0;
    v186 = v46 + 80;
    v187 = 312 * v22;
    v184 = 1;
    v210 = 1;
    do
    {
      v49 = *(v46 + 96);
      if (v49 <= v48)
      {
        goto LABEL_256;
      }

      a5 = v48 >> 3;
      v7 = *(v46 + 64);
      if (v7 <= v48 >> 3)
      {
LABEL_257:
        v230 = 0;
        v244 = 0u;
        v245 = 0u;
        v242 = 0u;
        v243 = 0u;
        v241 = 0u;
        v164 = MEMORY[0x1E69E9C10];
        v165 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v270[0]) = 136315906;
        *(v270 + 4) = "operator[]";
        WORD6(v270[0]) = 1024;
        if (v165)
        {
          v166 = 3;
        }

        else
        {
          v166 = 2;
        }

        *(v270 + 14) = 866;
        WORD1(v270[1]) = 2048;
        *(&v270[1] + 4) = a5;
        WORD6(v270[1]) = 2048;
        *(&v270[1] + 14) = v7;
        _os_log_send_and_compose_impl(v166, &v230, &v241, 80, &dword_1E1C61000, v164, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v270, 38, v180, v181);
        _os_crash_msg();
        __break(1u);
LABEL_261:
        re::internal::assertLog(4, v52, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "first", 754);
        _os_crash("assertion failure: (m_size > 0) Array is empty");
        __break(1u);
LABEL_262:
        re::internal::assertLog(4, v33, "assertion failure: '%s' (%s:line %i) ", "commandBuffer.isValid()", "processDeformationPasses", 596);
        _os_crash("assertion failure: (commandBuffer.isValid()) ");
        __break(1u);
LABEL_263:
        re::internal::assertLog(4, v74, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
        _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
        __break(1u);
        goto LABEL_264;
      }

      v50 = v186;
      if ((*(v46 + 72) & 1) == 0)
      {
        v50 = *(v46 + 88);
      }

      v188 = v48;
      v21 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v46, *(*(v50 + 8 * a5) + (v48 & 7)));
      re::DeformationCommandBuffer::beginDeformationPass(v255);
      v230 = 0;
      v231 = 0;
      v232 = 1;
      v234 = 0;
      v235 = 0;
      v233 = 0;
      v236 = 0;
      v51 = re::BucketArray<re::DynamicArray<re::PostDeformationBlit>,8ul>::addUninitialized(&v230);
      *(v51 + 32) = 0;
      *(v51 + 8) = 0;
      *(v51 + 16) = 0;
      *v51 = 0;
      *(v51 + 24) = 0;
      v198 = *(v21 + 40);
      if (!v198)
      {
        v131 = 0;
        goto LABEL_181;
      }

      *&v190[8] = 0;
      v191 = 0;
      v204 = 0;
      v53 = 0;
      *v190 = v189 ^ 1u;
      v197 = v21 + 24;
      v195 = v21;
      do
      {
        v54 = *(v21 + 40);
        if (v54 <= v53)
        {
          goto LABEL_242;
        }

        a5 = v53 >> 6;
        v7 = *(v21 + 8);
        if (v7 <= v53 >> 6)
        {
LABEL_243:
          *&v225 = 0;
          v244 = 0u;
          v245 = 0u;
          v242 = 0u;
          v243 = 0u;
          v241 = 0u;
          v158 = MEMORY[0x1E69E9C10];
          v159 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v270[0]) = 136315906;
          *(v270 + 4) = "operator[]";
          WORD6(v270[0]) = 1024;
          if (v159)
          {
            v160 = 3;
          }

          else
          {
            v160 = 2;
          }

          *(v270 + 14) = 866;
          WORD1(v270[1]) = 2048;
          *(&v270[1] + 4) = a5;
          WORD6(v270[1]) = 2048;
          *(&v270[1] + 14) = v7;
          _os_log_send_and_compose_impl(v160, &v225, &v241, 80, &dword_1E1C61000, v158, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v270, 38, v180, v181);
          _os_crash_msg();
          __break(1u);
LABEL_247:
          re::internal::assertLog(4, v68, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
          _os_crash("assertion failure: (m_size > 0) Array is empty");
          __break(1u);
LABEL_248:
          re::internal::assertLog(4, v71, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
          _os_crash("assertion failure: (m_size > 0) Array is empty");
          __break(1u);
LABEL_249:
          re::internal::assertLog(6, v35, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v22, v22);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v170, v177);
          __break(1u);
LABEL_250:
          re::internal::assertLog(6, v141, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v21, v21);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v171, v178);
          __break(1u);
          goto LABEL_251;
        }

        v55 = v197;
        if ((*(v21 + 16) & 1) == 0)
        {
          v55 = *(v21 + 32);
        }

        v201 = v53;
        v56 = (*(v55 + 8 * a5) + ((v53 & 0x3F) << 6));
        v202 = v56[1] == 1;
        *&v225 = v56;
        *(&v225 + 1) = a6 + 1;
        v57 = a6[12];
        v58 = a6[10];
        *&v226 = &v238;
        *(&v226 + 1) = v57;
        v227 = v58;
        v228 = v215;
        v229 = v22;
        v207 = *(v194 + 5 * *v56 + 6);
        *v254 = 0uLL;
        *&v254[21] = 0;
        *&v254[16] = 0;
        v254[29] = 1;
        v214 = v56;
        i = *(v56 + 6);
        if (i)
        {
          v7 = 0;
          while (1)
          {
            v21 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v214 + 8, v7);
            v59 = *(v21 + 16);
            v60 = *(*v21 + 4 * v59 + 4);
            a5 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](v212, *(v21 + 8));
            v61 = *v21 + (v59 << 6);
            v62 = *(v61 + 48);
            v63 = *(v61 + 64);
            v243 = *(v61 + 80);
            v241 = v62;
            v242 = v63;
            v244 = 0uLL;
            v22 = v61 + 88;
            v64 = *(v61 + 88);
            if (v64)
            {
              re::FixedArray<re::Pair<re::DeformerType,unsigned long long,true>>::init<>(&v243 + 1, v64, *(v61 + 96));
              re::FixedArray<re::Pair<re::DeformerType,unsigned long long,true>>::copy(&v243 + 1, v22);
            }

            v65 = *(v21 + 8);
            v66 = v211;
            if (v211 <= v65)
            {
              break;
            }

            re::DeformationBufferAllocator::resetAllocationData(*(a5 + 360), &v238, v59, v67);
            if (*(&v243 + 1) && v244)
            {
              (*(**(&v243 + 1) + 40))();
            }

            if (i == ++v7)
            {
              goto LABEL_72;
            }
          }

LABEL_232:
          re::internal::assertLog(6, v64, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v65, v66);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v167, v174);
          __break(1u);
          goto LABEL_233;
        }

LABEL_72:
        v221[1] = 0;
        v222 = 0;
        v223 = 0;
        v224 = 0;
        v22 = v196;
        v221[0] = v196;
        re::DynamicArray<re::ecs2::HandleTable::HandleSlot>::setCapacity(v221, 0);
        ++v223;
        if (!v235)
        {
          goto LABEL_247;
        }

        a5 = *(v214 + 1);
        v69 = re::BucketArray<re::BufferSlice,8ul>::operator[](&v230, v235 - 1);
        v70 = (*(*v207 + 40))(v207, v196, a3, a5, &v225, v254, v69, v221);
        if (!v235)
        {
          goto LABEL_248;
        }

        v72 = v70;
        v73 = re::BucketArray<re::BufferSlice,8ul>::operator[](&v230, v235 - 1);
        if (*(v73 + 2))
        {
          v73 = re::BucketArray<re::DynamicArray<re::PostDeformationBlit>,8ul>::addUninitialized(&v230);
          *(v73 + 4) = 0;
          *(v73 + 1) = 0;
          *(v73 + 2) = 0;
          *v73 = 0;
          *(v73 + 6) = 0;
        }

        v75 = &v248;
        if (*(v214 + 1) == 1 && *v254)
        {
          re::DeformationCommandBuffer::setEncoderType(v255, 1);
          re::BufferInitializationOptions::initializeGPUVertexBuffers(v254, &v260, v214, v215, v211);
        }

        *&v241 = 0;
        DWORD2(v241) = 0;
        *&v242 = 0;
        DWORD2(v242) = 0;
        v248 = 0u;
        v249 = 0u;
        v250 = 0;
        v251 = 0x7FFFFFFFLL;
        if (!v222)
        {
          goto LABEL_127;
        }

        v76 = v224;
        v77 = (v224 + 16 * v222);
        do
        {
          v78 = *v76;
          *&v270[0] = *v76;
          if (HIDWORD(v249))
          {
            goto LABEL_82;
          }

          if (v242)
          {
            v79 = 24 * v242;
            v80 = 24 * v242;
            v73 = &v243 + 8;
            do
            {
              if (*(v73 - 1) == v78)
              {
                goto LABEL_105;
              }

              v73 += 24;
              v80 -= 24;
            }

            while (v80);
            if ((v242 & 0xFFFFFFF8) != 0)
            {
              if (v248)
              {
                goto LABEL_93;
              }

              v81 = v241;
              if (!v241)
              {
              }

              re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(&v248, v81, 16);
              if (v242)
              {
                v79 = 24 * v242;
LABEL_93:
                v82 = &v243;
                v83 = &v243 + v79;
                while (2)
                {
                  v84 = 0xBF58476D1CE4E5B9 * (*v82 ^ (*v82 >> 30));
                  v85 = (0x94D049BB133111EBLL * (v84 ^ (v84 >> 27))) ^ ((0x94D049BB133111EBLL * (v84 ^ (v84 >> 27))) >> 31);
                  if (v248)
                  {
                    v86 = v85 % DWORD2(v249);
                    v87 = *(*(&v248 + 1) + 4 * v86);
                    if (v87 != 0x7FFFFFFF)
                    {
                      while (*(v249 + 32 * v87 + 8) != *v82)
                      {
                        v87 = *(v249 + 32 * v87) & 0x7FFFFFFF;
                        if (v87 == 0x7FFFFFFF)
                        {
                          goto LABEL_100;
                        }
                      }

LABEL_101:
                      v82 += 24;
                      if (v82 == v83)
                      {
                        goto LABEL_102;
                      }

                      continue;
                    }
                  }

                  else
                  {
                    LODWORD(v86) = 0;
                  }

                  break;
                }

LABEL_100:
                v88 = re::HashTable<MTL::Event *,re::EventWait,re::Hash<MTL::Event *>,re::EqualTo<MTL::Event *>,false,false>::allocEntry(&v248, v86, v85);
                v88[1] = *v82;
                v88[2] = *(v82 + 1);
                *(v82 + 1) = 0;
                v88[3] = *(v82 + 2);
                ++HIDWORD(v251);
                goto LABEL_101;
              }

LABEL_102:
              re::DynamicInlineArray<re::KeyValuePair<MTL::Event *,re::EventWait>,8ul>::clear(&v242);
LABEL_82:
              v73 = re::HashTable<MTL::Event *,re::EventWait,re::Hash<MTL::Event *>,re::EqualTo<MTL::Event *>,false,false>::add(&v248, v270, v76);
              goto LABEL_105;
            }
          }

          v89 = v78;
          v90 = v242;
          if (v242 >= 8)
          {
            goto LABEL_263;
          }

          v91 = v76[1];
          v92 = &v243 + 3 * v242;
          *v92 = v78;
          v92[1] = v89;
          v73 = (v92 + 1);
          v92[2] = v91;
          *&v242 = v90 + 1;
          ++DWORD2(v242);
LABEL_105:
          v93 = v76[1];
          if (*(v73 + 1) < v93)
          {
            *(v73 + 1) = v93;
          }

          v76 += 2;
        }

        while (v76 != v77);
        v94 = HIDWORD(v249);
        if (!HIDWORD(v249))
        {
          i = &v243;
          v75 = &v243 + 24 * v242;
          goto LABEL_117;
        }

        v210 = v250;
        v20 = 0;
        if (v250)
        {
          v95 = v249;
          while (1)
          {
            v96 = *v95;
            v95 += 8;
            if (v96 < 0)
            {
              break;
            }

            if (v250 == ++v20)
            {
              LODWORD(v20) = v250;
              break;
            }
          }
        }

        else
        {
          v210 = 0;
        }

        for (i = &v248; ; i += 24)
        {
LABEL_117:
          while (v94)
          {
            if (v210 == v20)
            {
              goto LABEL_127;
            }

            v97 = *(i + 16) + 32 * v20;
            v98 = *(v97 + 16);
            v99 = *(v97 + 24);
            re::DeformationCommandBuffer::setEncoderType(v255, 0);
            v73 = [**&v255[1] encodeWaitForEvent:v98 value:v99];
            v100 = v20 + 1;
            if (*(i + 32) <= (v20 + 1))
            {
              LODWORD(v20) = v20 + 1;
            }

            else
            {
              LODWORD(v20) = *(i + 32);
            }

            while (v20 != v100)
            {
              v101 = v100;
              v102 = *(*(i + 16) + 32 * v100++);
              if (v102 < 0)
              {
                LODWORD(v20) = v101;
                goto LABEL_117;
              }
            }
          }

          if (i == v75)
          {
            break;
          }

          v103 = *(i + 8);
          v104 = *(i + 16);
          re::DeformationCommandBuffer::setEncoderType(v255, 0);
          v73 = [**&v255[1] encodeWaitForEvent:v103 value:v104];
        }

LABEL_127:
        v21 = v204 | v202;
        v105 = *(v214 + 1);
        if (*(v214 + 1))
        {
          v22 = v211;
          if (v105 == 1)
          {
            re::DeformationCommandBuffer::setEncoderType(v255, 2);
            (*(*v207 + 56))(v207, v72, &v261, &v225);
            goto LABEL_157;
          }

LABEL_264:
          re::internal::assertLog(5, v74, "assertion failure: '%s' (%s:line %i) Invalid Deformation Execution Mode: %u", "!Unreachable code", "processDeformationPasses", 792, v105);
          _os_crash("assertion failure: (!Unreachable code) Invalid Deformation Execution Mode: %u", v173);
          __break(1u);
        }

        v106 = ((v189 ^ 1) & (HIDWORD(v249) == 0)) == 1 && v242 == 0;
        if (!v106)
        {
          v107 = v191;
          if (v191)
          {
            goto LABEL_143;
          }

          re::globalAllocators(v73);
          a5 = (*(*v196 + 32))(v196, 24, 8);
          *(a5 + 8) = 0;
          *(a5 + 16) = 0;
          *a5 = 0;
          v7 = v211;
          re::FixedArray<re::DeformationVertexBufferState>::init<>(a5, v196, v211);
          v109 = re::globalAllocators(v108)[2];
          *&v270[0] = &unk_1F5D09818;
          *(&v270[1] + 1) = v109;
          *&v270[2] = v270;
          v110 = (*(*v196 + 16))(v196, a5, v270);
          v111 = re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v270);
          if (!*v110)
          {
          }

          if (v110[1] == v211)
          {
            v113 = 0;
            v192 = v110;
            v114 = v110[2];
            do
            {
              v115 = v114 + v113;
              v116 = v215 + v113;
              v117 = *(v215 + v113);
              v118 = *(v215 + v113 + 16);
              v119 = *(v215 + v113 + 32);
              *(v115 + 48) = *(v215 + v113 + 48);
              *(v115 + 16) = v118;
              *(v115 + 32) = v119;
              *v115 = v117;
              if (v215 != v114)
              {
                re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::copy((v115 + 56), v116 + 56);
                re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::copy((v115 + 120), v116 + 120);
                re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::copy((v115 + 184), v116 + 184);
                re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::copy((v115 + 248), v116 + 248);
              }

              v113 += 312;
            }

            while (v187 != v113);
            v120 = (*(*v196 + 32))(v196, 72, 8);
            *v120 = 0;
            *(v120 + 8) = 0;
            *(v120 + 16) = 1;
            *(v120 + 32) = 0;
            *(v120 + 40) = 0;
            *(v120 + 24) = 0;
            *(v120 + 48) = 0;
            re::BucketArray<re::internal::DeformationCallbackData,8ul>::init(v120, v196, 1uLL);
            *(v120 + 56) = 0;
            *(v120 + 64) = 0;
            *&v190[4] = v120;
            *(v120 + 64) = [*(*(v194 + 3) + 208) supportsBufferWithIOSurface];
            v107 = v192;
LABEL_143:
            *(v253 + 14) = *&v254[14];
            v253[0] = *v254;
            *&v252[18] = v226;
            *&v252[34] = v227;
            *&v252[2] = v225;
            v7 = v107[1];
            a5 = v107[2];
            v191 = v107;
            v121 = *&v190[4];
            v122 = *(*&v190[4] + 40);
            i = *(*&v190[4] + 8);
            if (v122 + 1 > 8 * i)
            {
              re::BucketArray<re::internal::DeformationCallbackData,8ul>::setBucketsCapacity(*&v190[4], (v122 + 8) >> 3);
              v121 = *&v190[4];
              i = *(*&v190[4] + 8);
            }

            v21 = v122 >> 3;
            v22 = v211;
            if (i > v122 >> 3)
            {
              if (*(v121 + 16))
              {
                v123 = v121 + 24;
              }

              else
              {
                v123 = *(v121 + 32);
              }

              v124 = *(v123 + 8 * v21);
              ++*(v121 + 40);
              ++*(v121 + 48);
              v125 = v124 + 104 * (v122 & 7);
              *(v125 + 16) = v253[0];
              *(v125 + 30) = *(v253 + 14);
              v126 = *&v252[16];
              *(v125 + 46) = *v252;
              *v125 = v207;
              *(v125 + 8) = v72;
              *(v125 + 62) = v126;
              *(v125 + 72) = *&v252[26];
              *(v125 + 88) = a5;
              *(v125 + 96) = v7;
              v21 = 1;
              goto LABEL_157;
            }

LABEL_251:
            v240 = 0;
            memset(v270, 0, sizeof(v270));
            v161 = MEMORY[0x1E69E9C10];
            v162 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v262 = 136315906;
            v263 = "operator[]";
            v264 = 1024;
            if (v162)
            {
              v163 = 3;
            }

            else
            {
              v163 = 2;
            }

            v265 = 858;
            v266 = 2048;
            v267 = v21;
            v268 = 2048;
            v269 = i;
            _os_log_send_and_compose_impl(v163, &v240, v270, 80, &dword_1E1C61000, v161, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v262, 38, v180, v181);
            _os_crash_msg();
            __break(1u);
          }

          re::internal::assertLog(4, v112, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
          _os_crash("assertion failure: (m_size == other.size()) Cannot copy from a Slice of a different size");
          __break(1u);
LABEL_256:
          re::internal::assertLog(6, v45, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, v48, v49);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v172, v179);
          __break(1u);
          goto LABEL_257;
        }

        if ([*(*(v194 + 3) + 208) supportsBufferWithIOSurface])
        {
          memset(v270, 0, 36);
          *(&v270[2] + 4) = 0x7FFFFFFFLL;
          v22 = v211;
          if (*v254)
          {
            re::BufferInitializationOptions::initializeCPUVertexBuffers(v254, v214, v215, v211);
          }

          (*(*v207 + 64))(v207, v72, &v225);
          re::DeformationVertexBufferState::LockedSurfaces::unlockAll(v270);
          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v270);
        }

        else
        {
          v22 = v211;
          if (*v254)
          {
            re::BufferInitializationOptions::initializeCPUVertexBuffers(v254, v214, v215, v211);
          }

          (*(*v207 + 64))(v207, v72, &v225);
        }

LABEL_157:
        v7 = *(v214 + 48);
        if (v7)
        {
          a5 = 0;
          while (1)
          {
            v128 = *(re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v214 + 8, a5) + 8);
            if (v22 <= v128)
            {
              break;
            }

            re::DeformationVertexBufferState::resetVertexBufferChangedState(v215 + 312 * v128);
            if (v7 == ++a5)
            {
              goto LABEL_161;
            }
          }

LABEL_233:
          re::internal::assertLog(6, v127, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v128, v22);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v168, v175);
          __break(1u);
LABEL_234:
          *&v270[0] = 0;
          v244 = 0u;
          v245 = 0u;
          v242 = 0u;
          v243 = 0u;
          v241 = 0u;
          v152 = MEMORY[0x1E69E9C10];
          v153 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v255[0]) = 136315906;
          *(v255 + 4) = "operator[]";
          WORD6(v255[0]) = 1024;
          if (v153)
          {
            v154 = 3;
          }

          else
          {
            v154 = 2;
          }

          *(v255 + 14) = 476;
          WORD1(v255[1]) = 2048;
          *(&v255[1] + 4) = a5;
          WORD6(v255[1]) = 2048;
          *(&v255[1] + 14) = v7;
          _os_log_send_and_compose_impl(v154, v270, &v241, 80, &dword_1E1C61000, v152, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v255, 38, v180, v181);
          _os_crash_msg();
          __break(1u);
LABEL_238:
          v230 = 0;
          v257 = 0u;
          v256 = 0u;
          memset(v255, 0, sizeof(v255));
          v155 = MEMORY[0x1E69E9C10];
          v156 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v270[0]) = 136315906;
          *(v270 + 4) = "operator[]";
          WORD6(v270[0]) = 1024;
          if (v156)
          {
            v157 = 3;
          }

          else
          {
            v157 = 2;
          }

          *(v270 + 14) = 468;
          WORD1(v270[1]) = 2048;
          *(&v270[1] + 4) = v22;
          WORD6(v270[1]) = 2048;
          *(&v270[1] + 14) = v22;
          _os_log_send_and_compose_impl(v157, &v230, v255, 80, &dword_1E1C61000, v155, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v270, 38, v180, v181);
          _os_crash_msg();
          __break(1u);
LABEL_242:
          re::internal::assertLog(6, v52, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, v53, v54);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v169, v176);
          __break(1u);
          goto LABEL_243;
        }

LABEL_161:
        v204 = v21;
        re::DeformationCommandBuffer::endDeformation(v255, v74);
        a5 = &v242;
        re::DynamicInlineArray<re::KeyValuePair<MTL::Event *,re::EventWait>,8ul>::clear(&v242);
        re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v248);
        *&v241 = 0;
        DWORD2(v241) = 0;
        re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v248);
        re::DynamicInlineArray<re::KeyValuePair<MTL::Event *,re::EventWait>,8ul>::clear(&v242);
        v129 = v221[0];
        v21 = v195;
        if (v221[0])
        {
          a5 = v224;
          if (v224)
          {
            if (v222)
            {
              v7 = 16 * v222;
              do
              {
                if (*a5)
                {

                  *a5 = 0;
                }

                a5 += 16;
                v7 -= 16;
              }

              while (v7);
              v129 = v221[0];
              a5 = v224;
            }

            (*(*v129 + 40))(v129, a5);
          }
        }

        v53 = v201 + 1;
      }

      while (v201 + 1 != v198);
      v130 = *&v190[4];
      if (*&v190[4])
      {
        v131 = v204;
        if (!v237)
        {
          *&v270[0] = [*(*(v194 + 3) + 208) newSharedEvent];
          NS::SharedPtr<MTL::Texture>::operator=(&v237, v270);
          if (*&v270[0])
          {
          }

          v130 = *&v190[4];
        }

        v7 = v184;
        *(v130 + 56) = v184 + 1;
        v132 = v130;
        a5 = [objc_msgSend(MEMORY[0x1E6974178] alloc)];
        *&v241 = MEMORY[0x1E69E9820];
        *(&v241 + 1) = 0x40000000;
        *&v242 = ___ZN2re21DeformationManagerGPU26enqueueCPUDeformationOnGPUERNS_24DeformationCommandBufferERN2NS9SharedPtrIN3MTL11SharedEventEEERyPNS_8internal23DeformMetalCallbackDataE_block_invoke;
        *(&v242 + 1) = &__block_descriptor_tmp_30;
        *&v243 = v132;
        [v237 notifyListener:a5 atValue:v184 block:&v241];
        re::DeformationCommandBuffer::encodeSharedEventForSynchronization(v255, &v237, v184, *(v132 + 56));
        if (a5)
        {
        }

        v184 += 2;
      }

      else
      {
        v131 = v204;
      }

LABEL_181:
      if (!v235)
      {
        goto LABEL_261;
      }

      if (*(re::BucketArray<re::BufferSlice,8ul>::operator[](&v230, 0) + 16))
      {
        re::DeformationCommandBuffer::encodePostDeformationBlits(v255, &v230);
      }

      re::DeformationCommandBuffer::endDeformationPass(v255, v133);
      v134 = v235;
      if (v235)
      {
        a5 = 0;
        do
        {
          v7 = re::BucketArray<re::BufferSlice,8ul>::operator[](&v230, a5);
          v135 = *v7;
          if (*v7)
          {
            i = *(v7 + 32);
            if (i)
            {
              v136 = *(v7 + 16);
              if (v136)
              {
                v137 = 48 * v136;
                do
                {
                  if (*i)
                  {

                    *i = 0;
                  }

                  i += 48;
                  v137 -= 48;
                }

                while (v137);
                v135 = *v7;
                i = *(v7 + 32);
              }

              (*(*v135 + 40))(v135, i);
            }

            *(v7 + 32) = 0;
            *(v7 + 8) = 0;
            *(v7 + 16) = 0;
            *v7 = 0;
            ++*(v7 + 24);
          }

          ++a5;
        }

        while (a5 != v134);
      }

      while (v231)
      {
        re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v230);
      }

      if (v230 && (v232 & 1) == 0)
      {
        (*(*v230 + 40))();
      }

      v189 |= v131;
      v48 = v188 + 1;
      v46 = v193;
    }

    while (v188 + 1 != v185);
  }

  re::DeformationCommandBuffer::finalizeFinalEncoder(v255, &v216);
  if (v237)
  {
  }

  re::BucketArray<unsigned long,8ul>::deinit(v258);
  if (v258[0])
  {
    v138 = v259;
    if ((v259 & 1) == 0)
    {
      (*(*v258[0] + 40))();
      v138 = v259;
    }

    v258[0] = 0;
    v258[1] = 0;
    v259 = (v138 | 1) + 2;
  }

  re::BucketArray<unsigned long,8ul>::deinit(&v255[2] + 8);
  if (*(&v255[2] + 1) && (BYTE8(v256) & 1) == 0)
  {
    (*(**(&v255[2] + 1) + 40))();
  }

  if (v216)
  {

    v216 = 0;
  }

  v7 = a6[6];
  if (v7)
  {
    v139 = 0;
    v21 = v218;
    a5 = v219;
    do
    {
      v140 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](v212, v139);
      if (v21 == v139)
      {
        goto LABEL_250;
      }

      re::DeformationVertexBufferState::buildAttributeTable(a5, *(v140 + 376));
      ++v139;
      a5 += 312;
    }

    while (v7 != v139);
  }

  re::FixedArray<re::DeformationVertexBufferState>::deinit(&v217);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v220, v142, v143);
  if (v183)
  {
    if (*(v183 + 19))
    {
      v144 = mach_absolute_time();
      v145 = *(v183 + 19);
      if (v145)
      {
        v146 = v145[928].u64[0];
        if (v146 >= v144 - v182)
        {
          v146 = v144 - v182;
        }

        v145[928].i64[0] = v146;
        v147 = v145[928].u64[1];
        if (v147 <= v144 - v182)
        {
          v147 = v144 - v182;
        }

        v145[928].i64[1] = v147;
        v148 = vdupq_n_s64(1uLL);
        v148.i64[0] = v144 - v182;
        v145[929] = vaddq_s64(v145[929], v148);
        *(v183 + 184) = 0;
      }
    }
  }
}

unint64_t re::anonymous namespace::calculateDeformerInputHash(re::DeformerFeatureFlags *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = 0xBF58476D1CE4E5B9 * (*(a2 + 40 * a1) ^ (*(a2 + 40 * a1) >> 30));
  v6 = ((a1 << 6) + (a1 >> 2) - 0x61C8864680B583E9 + ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31))) ^ a1;
  v7 = *(a3 + 8 * a1 + 24);
  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) >> 27));
  v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(a3 + a1)) ^ ((0xBF58476D1CE4E5B9 * *(a3 + a1)) >> 27));
  v10 = ((v6 << 6) + (v6 >> 2) + (((v9 ^ (v9 >> 31)) + ((v8 ^ (v8 >> 31)) << 6) + ((v8 ^ (v8 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v8 ^ (v8 >> 31)) - 0x61C8864680B583E9) ^ v6;
  v11 = *a5 & a4;
  if (v11)
  {
    v13 = __clz(__rbit64(v11));
    do
    {
      v19 = v13;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(a5, v13);
      v14 = a5[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(a5 + 7, &v19);
      v15 = *(v14 + 16);
      a1 = [*(v14 + 24) hash];
      v10 ^= (v10 << 6) - 0x61C8864680B583E9 + (v10 >> 2) + ((v15 - 0x61C8864680B583E9 + (a1 << 6) + (a1 >> 2)) ^ a1);
      if (v13 == 63)
      {
        break;
      }

      v16 = ((-2 << v13) & v11) == 0;
      v13 = __clz(__rbit64((-2 << v13) & v11));
    }

    while (!v16);
  }

  if (re::DeformerFeatureFlags::enableStitchableDeformation(a1))
  {
    return (v10 - 0x61C8864680B583E9 + (v17 << 6) + (v17 >> 2)) ^ v17;
  }

  return v10;
}

uint64_t *re::anonymous namespace::lockInputIOSurfacesForDeformationParameters(uint64_t *result, re::DeformationVertexBufferState::LockedSurfaces *a2)
{
  v2 = *result;
  v3 = *(*result + 48);
  if (v3)
  {
    v5 = result;
    v6 = 0;
    while (1)
    {
      v7 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v2 + 8, v6);
      v8 = *(v7 + 8);
      result = re::BucketArray<re::ActiveDeformation,8ul>::operator[](v5[1], v8);
      v10 = *(v7 + 16);
      v11 = result[42];
      if (v11 <= v10)
      {
        break;
      }

      v12 = v5[6];
      if (v12 <= v8)
      {
        goto LABEL_15;
      }

      v13 = (v5[5] + 312 * v8);
      v14 = *(result[41] + (v10 << 6) + 8) & *v13;
      if (v14)
      {
        v15 = __clz(__rbit64(v14));
        do
        {
          v22 = v15;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v13, v15);
          v16 = v13[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v13 + 7, &v22);
          result = re::DeformationVertexBufferState::LockedSurfaces::ensureIOSurfaceLocked(a2, *(v16 + 24));
          if (result)
          {
            *(v16 + 8) = result;
          }

          if (v15 == 63)
          {
            break;
          }

          v17 = ((-2 << v15) & v14) == 0;
          v15 = __clz(__rbit64((-2 << v15) & v14));
        }

        while (!v17);
      }

      if (++v6 == v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, *(v7 + 16), v11);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v20);
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v8, v12);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v21);
    __break(1u);
  }

  return result;
}

id ___ZN2re21DeformationManagerGPU26enqueueCPUDeformationOnGPUERNS_24DeformationCommandBufferERN2NS9SharedPtrIN3MTL11SharedEventEEERyPNS_8internal23DeformMetalCallbackDataE_block_invoke(uint64_t a1, id a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = *(v5 + 40);
      if (v8 <= i)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, i, v8);
        _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v13, v14);
        __break(1u);
LABEL_15:
        v17 = 0;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
        v11 = MEMORY[0x1E69E9C10];
        v18 = 136315906;
        v19 = "operator[]";
        v20 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v12 = 3;
        }

        else
        {
          v12 = 2;
        }

        v21 = 858;
        v22 = 2048;
        v23 = v2;
        v24 = 2048;
        v25 = v3;
        _os_log_send_and_compose_impl(v12, &v17, &v26, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v15, v16);
        _os_crash_msg();
        __break(1u);
      }

      v2 = i >> 3;
      v3 = *(v5 + 8);
      if (v3 <= i >> 3)
      {
        goto LABEL_15;
      }

      v9 = v5 + 24;
      if ((*(v5 + 16) & 1) == 0)
      {
        v9 = *(v5 + 32);
      }

      v2 = *(v9 + 8 * v2) + 104 * (i & 7);
      if (*(v2 + 16))
      {
        re::BufferInitializationOptions::initializeCPUVertexBuffers((v2 + 16), *(v2 + 48), *(v2 + 88), *(v2 + 96));
      }

      if (*(v5 + 64) == 1)
      {
        LODWORD(v28) = 0;
        v26 = 0u;
        v27 = 0u;
        *(&v28 + 4) = 0x7FFFFFFFLL;
        (*(**v2 + 64))(*v2, *(v2 + 8), v2 + 48);
        re::DeformationVertexBufferState::LockedSurfaces::unlockAll(&v26);
        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v26);
      }

      else
      {
        (*(**v2 + 64))(*v2, *(v2 + 8), v2 + 48);
      }
    }
  }

  return [a2 setSignaledValue_];
}

uint64_t re::DeformationManager::deformerType@<X0>(re::DeformationManager *this@<X0>, const re::StringID *a2@<X1>, char *a3@<X8>)
{
  v5 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 768, a2, (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31), v8);
  if (v9 == 0x7FFFFFFF)
  {
    v7 = 0;
  }

  else
  {
    a3[1] = *(*(this + 98) + 32 * v9 + 24);
    v7 = 1;
  }

  *a3 = v7;
  return result;
}

uint64_t re::DeformationManager::deformer(uint64_t a1, unsigned int a2)
{
  return *(a1 + 40 * a2 + 48);
}

{
  return *(a1 + 40 * a2 + 48);
}

unsigned __int8 *re::internal::Callable<re::DeformationManager::removeDeformationStack(re::DataArrayHandle<re::DeformationStack>)::$_0,void ()(void *)>::operator()(uint64_t a1, unint64_t **a2)
{
  v2 = *a2;
  v4 = **a2;
  v3 = (*a2)[1];
  result = re::DataArray<re::DeformationStack>::tryGet(v3, v4);
  if (result)
  {
    v6 = result;
    if (*result)
    {
      v7 = 0;
      v8 = 48;
      do
      {
        v9 = *(v2[2] + 40 * *&v6[4 * v7 + 4]);
        (*(*v9 + 32))(v9, *&v6[v8]);
        ++v7;
        v8 += 64;
      }

      while (v7 < *v6);
      v4 = *v2;
      v3 = v2[1];
    }

    return re::DataArray<re::DeformationStack>::destroy(v3, v4);
  }

  return result;
}

void *re::internal::Callable<re::DeformationManager::removeDeformationStack(re::DataArrayHandle<re::DeformationStack>)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D09710;
  return result;
}

void *re::internal::Callable<re::DeformationManager::removeDeformationStack(re::DataArrayHandle<re::DeformationStack>)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D09710;
  return result;
}

uint64_t re::DataArray<re::DeformationStack>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 1032 * a2;
  }

  else
  {
    return 0;
  }
}

_DWORD *re::DataArray<re::DeformationStack>::destroy(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v23 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 16;
  result = re::DataArray<re::DeformationStack>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (result)
  {
    v6 = result;
    for (i = 252; i != 192; i -= 6)
    {
      re::FixedArray<CoreIKTransform>::deinit(&v6[i]);
    }

    for (j = 166; j != 6; j -= 16)
    {
      result = re::FixedArray<CoreIKTransform>::deinit(&v6[j]);
    }

    v9 = *(a1 + 16);
    if (v9 <= HIWORD(v2))
    {
      v13 = 0;
      memset(v22, 0, sizeof(v22));
      v10 = MEMORY[0x1E69E9C10];
      v14 = 136315906;
      v15 = "operator[]";
      v16 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

      v17 = 789;
      v18 = 2048;
      v19 = HIWORD(v2);
      v20 = 2048;
      v21 = v9;
      _os_log_send_and_compose_impl(v11, &v13, v22, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *v6 = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }

  return result;
}

void *re::internal::Callable<re::DeformationManager::addDeformation(re::MeshDeformation &,re::ActiveDeformationData *)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D09768;
  return result;
}

void *re::internal::Callable<re::DeformationManager::addDeformation(re::MeshDeformation &,re::ActiveDeformationData *)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D09768;
  return result;
}

void *re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::copy(int8x16_t **a1, uint64_t a2)
{
  result = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::clear(a1);
  v15[0] = a2;
  v5 = *(a2 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a2;
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
        return result;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v6;
    v16 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        v12 = (*(v15[0] + 8) + 32 * v11);
        v13 = v12[1];
        v14[0] = *v12;
        v14[1] = v13;
        re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::internalAdd(a1, v14, (v14 + 8));
        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v15);
        v11 = v16;
      }

      while (v16 != -1);
    }
  }

  return result;
}

unsigned __int8 *re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::internalAdd(uint64_t *a1, _BYTE *a2, __int128 *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::resize(a1, 1);
    v7 = a1[2];
  }

  v8 = 0xBF58476D1CE4E5B9;
  v9 = 0x94D049BB133111EBLL;
  v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *a2) ^ ((0xBF58476D1CE4E5B9 * *a2) >> 27));
  v11 = v10 ^ (v10 >> 31);
  v12 = v7 >> 4;
  v13 = *a1;
  v14 = v11 % v12;
  while (1)
  {
    v15 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v13 + 16 * v14)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    if (v15 < 0x40)
    {
      break;
    }

    if (v14 + 1 == v12)
    {
      v14 = 0;
    }

    else
    {
      ++v14;
    }

    if (v14 == v11 % v12)
    {
      re::internal::assertLog(4, a2, -1.79399301e-307, 4.74803907e-38, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
      _os_crash("assertion failure: (blockIndex != h1(key) % blockCount()) Unexpected full hash-table");
      __break(1u);
      break;
    }
  }

  v16 = v13 + 16 * v14;
  v17 = *(v16 + v15);
  *(v16 + v15) = v11 & 0x7F;
  v18 = v15 + 16 * v14;
  v19 = a1[1] + 32 * v18;
  *v19 = *a2;
  v20 = *a3;
  *(v19 + 24) = *(a3 + 2);
  *(v19 + 8) = v20;
  if (v17 == 255)
  {
    v21 = -1;
  }

  else
  {
    v21 = 0;
  }

  v22.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v22.i64[1] = v21;
  *(a1 + 3) = vaddq_s64(*(a1 + 3), v22);
  v23 = (a1[1] + 32 * v18);
  v25 = *v23;
  result = v23 + 8;
  v26 = ((v25 * v8) ^ ((v25 * v8) >> 27)) * v9;
  a1[5] ^= (v26 >> 31) ^ v26;
  return result;
}

{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::resize(a1, 1);
    v7 = a1[2];
  }

  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *a2) ^ ((0xBF58476D1CE4E5B9 * *a2) >> 27));
  v9 = v8 ^ (v8 >> 31);
  v10 = v7 >> 4;
  v11 = v9 % (v7 >> 4);
  v12 = *a1;
  v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v13 >= 0x40)
  {
    do
    {
      if (v11 + 1 == v10)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v12 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v13 > 0x3F);
  }

  v14 = v12 + 16 * v11;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = v13 + 16 * v11;
  v17 = a1[1] + 32 * v16;
  *v17 = *a2;
  v18 = *a3;
  *(v17 + 24) = *(a3 + 2);
  *(v17 + 8) = v18;
  if (v15 == 255)
  {
    v19 = -1;
  }

  else
  {
    v19 = 0;
  }

  v20.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v20.i64[1] = v19;
  *(a1 + 3) = vaddq_s64(*(a1 + 3), v20);
  v21 = (a1[1] + 32 * v16);
  v23 = *v21;
  result = v21 + 8;
  v24 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v23) ^ ((0xBF58476D1CE4E5B9 * v23) >> 27));
  a1[5] ^= (v24 >> 31) ^ v24;
  return result;
}

double re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::resize(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + a2;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  return re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::doResize(a1, v3);
}

double re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::doResize(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  memset(v21, 0, sizeof(v21));
  re::HashBrown<re::ecs2::Scene *,std::vector<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::init(v21, v4, a2);
  v19[0] = a1;
  v5 = *(a1 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a1;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v19[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        goto LABEL_9;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v6;
    v20 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::internalAdd(v21, (*(v19[0] + 8) + 32 * v11), (*(v19[0] + 8) + 32 * v11 + 8));
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v19);
        v11 = v20;
      }

      while (v20 != -1);
      v5 = *(a1 + 16);
    }
  }

LABEL_9:
  v12 = *(&v21[3] + 1);
  *(&v21[3] + 1) = *(a1 + 56);
  v13 = v21[0];
  v14 = v21[1];
  v21[0] = *a1;
  *&v21[1] = v5;
  v15 = v21[2];
  v16 = *(a1 + 40);
  *(a1 + 48) = *&v21[3];
  *(a1 + 56) = v12;
  *(&v21[2] + 8) = v16;
  v17 = *(a1 + 24);
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  *(&v21[1] + 8) = v17;
  return re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v21);
}

void *re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::copy(int8x16_t **a1, uint64_t a2)
{
  result = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::clear(a1);
  v16[0] = a2;
  v5 = *(a2 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a2;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v16[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        return result;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v6;
    v17 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        v12 = *(v16[0] + 8) + 20 * v11;
        v13 = *(v12 + 16);
        v14 = *v12;
        v15 = v13;
        re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::internalAdd(a1, &v14, (&v14 + 4));
        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v16);
        v11 = v17;
      }

      while (v17 != -1);
    }
  }

  return result;
}

unsigned __int8 *re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::internalAdd(uint64_t *a1, _BYTE *a2, _OWORD *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::resize(a1, 1);
    v7 = a1[2];
  }

  v8 = 0xBF58476D1CE4E5B9;
  v9 = 0x94D049BB133111EBLL;
  v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *a2) ^ ((0xBF58476D1CE4E5B9 * *a2) >> 27));
  v11 = v10 ^ (v10 >> 31);
  v12 = v7 >> 4;
  v13 = *a1;
  v14 = v11 % v12;
  while (1)
  {
    v15 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v13 + 16 * v14)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    if (v15 < 0x40)
    {
      break;
    }

    if (v14 + 1 == v12)
    {
      v14 = 0;
    }

    else
    {
      ++v14;
    }

    if (v14 == v11 % v12)
    {
      re::internal::assertLog(4, a2, -1.79399301e-307, 4.74803907e-38, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
      _os_crash("assertion failure: (blockIndex != h1(key) % blockCount()) Unexpected full hash-table");
      __break(1u);
      break;
    }
  }

  v16 = v13 + 16 * v14;
  v17 = *(v16 + v15);
  *(v16 + v15) = v11 & 0x7F;
  v18 = a1[1] + 20 * (v15 + 16 * v14);
  *v18 = *a2;
  *(v18 + 4) = *a3;
  if (v17 == 255)
  {
    v19 = -1;
  }

  else
  {
    v19 = 0;
  }

  v20.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v20.i64[1] = v19;
  *(a1 + 3) = vaddq_s64(*(a1 + 3), v20);
  v21 = (a1[1] + 20 * (v15 + 16 * v14));
  v23 = *v21;
  result = v21 + 4;
  v24 = ((v23 * v8) ^ ((v23 * v8) >> 27)) * v9;
  a1[5] ^= (v24 >> 31) ^ v24;
  return result;
}

{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::resize(a1, 1);
    v7 = a1[2];
  }

  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *a2) ^ ((0xBF58476D1CE4E5B9 * *a2) >> 27));
  v9 = v8 ^ (v8 >> 31);
  v10 = v7 >> 4;
  v11 = v9 % (v7 >> 4);
  v12 = *a1;
  v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v13 >= 0x40)
  {
    do
    {
      if (v11 + 1 == v10)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v12 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v13 > 0x3F);
  }

  v14 = v12 + 16 * v11;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = 5 * (v13 + 16 * v11);
  v17 = a1[1] + 20 * (v13 + 16 * v11);
  *v17 = *a2;
  *(v17 + 4) = *a3;
  if (v15 == 255)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v19.i64[1] = v18;
  *(a1 + 3) = vaddq_s64(*(a1 + 3), v19);
  v20 = (a1[1] + 4 * v16);
  v22 = *v20;
  result = v20 + 4;
  v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v22) ^ ((0xBF58476D1CE4E5B9 * v22) >> 27));
  a1[5] ^= (v23 >> 31) ^ v23;
  return result;
}

double re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::resize(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + a2;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  return re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::doResize(a1, v3);
}

void *re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::init(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  result[7] = a2;
  v4 = 151 * a3;
  v5 = ((151 * a3) >> 7) + 15;
  v6 = v5 & 0x3FFFFFFFFFFFFF0;
  result[2] = v5 & 0x3FFFFFFFFFFFFF0;
  if ((v5 & 0x3FFFFFFFFFFFFF0) != 0)
  {
    v7 = v5 >> 4;
    result = (*(*a2 + 32))(a2, 21 * v6, 16);
    *v3 = result;
    if (v4 >= 0x80)
    {
      v8 = 0;
      *&v9 = -1;
      *(&v9 + 1) = -1;
      do
      {
        *(*v3 + 16 * v8++) = v9;
      }

      while (v7 != v8);
      result = *v3;
    }

    v3[1] = &result[2 * v7];
    v6 = v3[2];
  }

  else
  {
    *result = 0;
    result[1] = 0;
  }

  v3[5] = 0;
  v3[6] = 0;
  v3[3] = 0;
  v3[4] = v6;
  return result;
}

double re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::doResize(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  memset(v21, 0, sizeof(v21));
  re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::init(v21, v4, a2);
  v19[0] = a1;
  v5 = *(a1 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a1;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v19[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        goto LABEL_9;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v6;
    v20 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::internalAdd(v21, (*(v19[0] + 8) + 20 * v11), (*(v19[0] + 8) + 20 * v11 + 4));
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v19);
        v11 = v20;
      }

      while (v20 != -1);
      v5 = *(a1 + 16);
    }
  }

LABEL_9:
  v12 = *(&v21[3] + 1);
  *(&v21[3] + 1) = *(a1 + 56);
  v13 = v21[0];
  v14 = v21[1];
  v21[0] = *a1;
  *&v21[1] = v5;
  v15 = v21[2];
  v16 = *(a1 + 40);
  *(a1 + 48) = *&v21[3];
  *(a1 + 56) = v12;
  *(&v21[2] + 8) = v16;
  v17 = *(a1 + 24);
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  *(&v21[1] + 8) = v17;
  return re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v21);
}

void re::DeformationVertexBufferState::~DeformationVertexBufferState(re::DeformationVertexBufferState *this)
{
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 248);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 184);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 120);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 56);
}

uint64_t re::internal::Callable<re::DeformationManagerGPU::processDeformationPasses(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::mtl::CommandBuffer const&,NS::SharedPtr<MTL::Fence>,re::ActiveDeformationData *,re::MutableSlice<re::DeformationVertexBufferState>)::$_0,void ()(void *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  for (i = 928; i != 64; i -= 48)
  {
    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit((v2 + i));
  }

  v4 = *(v2 + 96);
  if (v4)
  {
    for (j = 0; j != v4; ++j)
    {
      re::BucketArray<unsigned char,8ul>::operator[](v2 + 56, j);
    }
  }

  while (*(v2 + 64))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket((v2 + 56));
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v2 + 56);
  *(v2 + 96) = 0;
  ++*(v2 + 104);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v2 + 56);
  v6 = *(v2 + 40);
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v2, v7);
      v9 = *(v8 + 40);
      if (v9)
      {
        break;
      }

LABEL_23:
      while (*(v8 + 8))
      {
        re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v8);
      }

      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v8);
      *(v8 + 40) = 0;
      ++*(v8 + 48);
      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v8);
      if (++v7 == v6)
      {
        goto LABEL_27;
      }
    }

    v10 = 0;
    while (1)
    {
      v11 = re::BucketArray<re::BatchedDeformationInstances,64ul>::operator[](v8, v10);
      v12 = *(v11 + 48);
      v13 = *(v11 + 16);
      if (v12)
      {
        break;
      }

      if (v13)
      {
        goto LABEL_19;
      }

LABEL_20:
      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v11 + 8);
      *(v11 + 48) = 0;
      ++*(v11 + 56);
      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v11 + 8);
      if (++v10 == v9)
      {
        goto LABEL_23;
      }
    }

    for (k = 0; k != v12; ++k)
    {
      if (v13 <= k >> 6)
      {
        v16 = k >> 6;
        v20 = 0;
        memset(v29, 0, sizeof(v29));
        v17 = MEMORY[0x1E69E9C10];
        v21 = 136315906;
        v22 = "operator[]";
        v23 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v18 = 3;
        }

        else
        {
          v18 = 2;
        }

        v24 = 858;
        v25 = 2048;
        v26 = v16;
        v27 = 2048;
        v28 = v13;
        _os_log_send_and_compose_impl(v18, &v20, v29, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
      }
    }

    do
    {
LABEL_19:
      re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket((v11 + 8));
    }

    while (*(v11 + 16));
    goto LABEL_20;
  }

LABEL_27:
  while (*(v2 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v2);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v2);
  *(v2 + 40) = 0;
  ++*(v2 + 48);

  return re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v2);
}

void *re::internal::Callable<re::DeformationManagerGPU::processDeformationPasses(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::mtl::CommandBuffer const&,NS::SharedPtr<MTL::Fence>,re::ActiveDeformationData *,re::MutableSlice<re::DeformationVertexBufferState>)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D097C0;
  return result;
}

void *re::internal::Callable<re::DeformationManagerGPU::processDeformationPasses(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::mtl::CommandBuffer const&,NS::SharedPtr<MTL::Fence>,re::ActiveDeformationData *,re::MutableSlice<re::DeformationVertexBufferState>)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D097C0;
  return result;
}

void *re::FixedArray<re::Pair<re::DeformerType,unsigned long long,true>>::copy(void *result, uint64_t a2)
{
  v4 = result[1];
  if (v4 == *(a2 + 8))
  {
    if (v4)
    {
      v5 = *(a2 + 16);
      v6 = result[2];

      return memmove(v6, v5, 16 * v4);
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

void *re::internal::Callable<re::DeformationManagerGPU::processDeformationPasses(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::mtl::CommandBuffer const&,NS::SharedPtr<MTL::Fence>,re::ActiveDeformationData *,re::MutableSlice<re::DeformationVertexBufferState>)::$_1,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D09818;
  return result;
}

void *re::internal::Callable<re::DeformationManagerGPU::processDeformationPasses(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::mtl::CommandBuffer const&,NS::SharedPtr<MTL::Fence>,re::ActiveDeformationData *,re::MutableSlice<re::DeformationVertexBufferState>)::$_1,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D09818;
  return result;
}

_anonymous_namespace_ *re::DataArray<re::DeformationStack>::allocBlock(void *a1)
{
  v3 = 1032 * *(a1 + 11);
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

void *re::DynamicArray<re::DeformationDescription>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::DeformationDescription>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 58)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 64, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v18, v20);
          __break(1u);
        }

        else
        {
          v2 = a2 << 6;
          result = (*(*result + 32))(result, a2 << 6, 8);
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
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v19, v21);
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
        v10 = &v8[8 * v9];
        v11 = v7;
        do
        {
          v12 = *(v8 + 1);
          v13 = v8[4];
          *v11 = *v8;
          *(v11 + 1) = v12;
          v11[4] = v13;
          v11[5] = 0;
          v11[6] = 0;
          v11[7] = 0;
          v15 = v8[5];
          v14 = v8 + 5;
          v11[5] = v15;
          *v14 = 0;
          v16 = v11[7];
          v17 = v14[2];
          v11[6] = v14[1];
          v11[7] = v17;
          v14[1] = 0;
          v14[2] = v16;
          re::FixedArray<CoreIKTransform>::deinit(v14);
          v11 += 8;
          v8 = v14 + 3;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void re::FixedArray<re::DeformationVertexBufferState>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >= 0xD20D20D20D20D3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 312, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v9, v10);
    __break(1u);
    goto LABEL_9;
  }

  v5 = 312 * a3;
  v6 = (*(*a2 + 32))(a2, 312 * a3, 8);
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
    bzero(v6, v5 - 312);
    v8 += v5 - 312;
  }

  *(v8 + 38) = 0;
  *(v8 + 17) = 0u;
  *(v8 + 18) = 0u;
  *(v8 + 15) = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 13) = 0u;
  *(v8 + 14) = 0u;
  *(v8 + 11) = 0u;
  *(v8 + 12) = 0u;
  *(v8 + 9) = 0u;
  *(v8 + 10) = 0u;
  *(v8 + 7) = 0u;
  *(v8 + 8) = 0u;
  *(v8 + 5) = 0u;
  *(v8 + 6) = 0u;
  *(v8 + 3) = 0u;
  *(v8 + 4) = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  *v8 = 0u;
}

void *re::FixedArray<re::DeformationVertexBufferState>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 312 * v2;
      do
      {
        re::DeformationVertexBufferState::~DeformationVertexBufferState(v4);
        v4 = (v6 + 312);
        v5 -= 312;
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

uint64_t re::BucketArray<re::DynamicArray<re::PostDeformationBlit>,8ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 8 * v3)
  {
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 3)
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
    v16 = v2 >> 3;
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

  v5 = *(v4 + 8 * (v2 >> 3));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 40 * (v2 & 7);
}

void re::DynamicInlineArray<re::KeyValuePair<MTL::Event *,re::EventWait>,8ul>::clear(uint64_t a1)
{
  if (*a1)
  {
    v2 = 24 * *a1;
    v3 = (a1 + 24);
    do
    {
      if (*v3)
      {

        *v3 = 0;
      }

      v3 += 3;
      v2 -= 24;
    }

    while (v2);
  }

  *a1 = 0;
  ++*(a1 + 8);
}

uint64_t re::HashTable<MTL::Event *,re::EventWait,re::Hash<MTL::Event *>,re::EqualTo<MTL::Event *>,false,false>::add(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(&v10, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 16;
  }

  v7 = re::HashTable<MTL::Event *,re::EventWait,re::Hash<MTL::Event *>,re::EqualTo<MTL::Event *>,false,false>::allocEntry(a1, v11, v10);
  *(v7 + 8) = *a2;
  *(v7 + 16) = *a3;
  v8 = v7 + 16;
  *(v8 + 8) = *(a3 + 8);
  ++*(a1 + 40);
  return v8;
}

uint64_t re::HashTable<MTL::Event *,re::EventWait,re::Hash<MTL::Event *>,re::EqualTo<MTL::Event *>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
                v18 = 0xBF58476D1CE4E5B9 * (*(v17 - 1) ^ (*(v17 - 1) >> 30));
                v19 = (0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31);
                v20 = re::HashTable<MTL::Event *,re::EventWait,re::Hash<MTL::Event *>,re::EqualTo<MTL::Event *>,false,false>::allocEntry(a1, v19 % *(a1 + 24), v19);
                v20[1] = *(v17 - 1);
                v21 = v17[1];
                v20[2] = *v17;
                *v17 = 0;
                v20[3] = v21;
              }

              v17 += 4;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v28);
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

_anonymous_namespace_ *re::BucketArray<re::internal::DeformationCallbackData,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::internal::DeformationCallbackData,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::internal::DeformationCallbackData,8ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 8 * a2)
    {
      v4 = *(result + 1);
      if (v4 > a2)
      {
        v5 = *(result + 4);
        do
        {
          v6 = (v3 + 24);
          if ((v5 & 1) == 0)
          {
            v6 = *(v3 + 4);
          }

          result = (*(**v3 + 40))(*v3, v6[v4 - 1]);
          v7 = *(v3 + 4);
          v4 = *(v3 + 1) - 1;
          *(v3 + 1) = v4;
          v5 = v7 + 2;
          *(v3 + 4) = v5;
        }

        while (v4 > a2);
      }

      if (v4 < a2)
      {
        v8 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 832, 0);
          v9 = result;
          if (*v3)
          {
            v10 = *(v3 + 1);
            v11 = *(v3 + 4);
            if ((v11 & 1) == 0)
            {
              v12 = *v8;
              v14 = v10 >= *v8;
              v13 = v10 + 1;
              v14 = !v14 || v12 >= v13;
              if (v14)
              {
                goto LABEL_24;
              }

              v15 = 2 * v12;
              goto LABEL_20;
            }

            v13 = v10 + 1;
            if (v13 >= 3)
            {
              v15 = 4;
LABEL_20:
              if (v15 <= v13)
              {
                v17 = v13;
              }

              else
              {
                v17 = v15;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v17);
              v11 = *(v3 + 4);
            }
          }

          else
          {
            v16 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v16 + 1);
            v11 = *(v3 + 4) + 2;
            *(v3 + 4) = v11;
          }

LABEL_24:
          v18 = (v3 + 24);
          if ((v11 & 1) == 0)
          {
            v18 = *(v3 + 4);
          }

          v19 = *(v3 + 1);
          v18[v19++] = v9;
          *(v3 + 1) = v19;
          *(v3 + 4) += 2;
        }

        while (v19 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

BOOL re::PSOToolManager::init(id *this, re::mtl *a2)
{
  re::mtl::makeDefaultDevice(&v28);
  v4 = this + 25;
  if (this + 25 != &v28)
  {
    v5 = v28;
    *&v28 = 0;
    v6 = *v4;
    *v4 = v5;
  }

  [this[25] allowLibrariesFromOtherPlatforms];
  re::mtl::Device::newLibraryWithURL(&v28, this + 25, a2);
  v7 = this + 26;
  if (this + 26 != &v28)
  {
    v8 = v28;
    *&v28 = 0;
    v9 = *v7;
    *v7 = v8;
  }

  if (*(this + 1160) == 1)
  {
    re::DynamicString::rfind(&v37, &v28, 47);
    if (v37 == 1)
    {
      re::DynamicString::rfind(v33, &v28, 47);
      if (BYTE8(v28))
      {
        v11 = *(&v28 + 1) >> 1;
      }

      else
      {
        v11 = BYTE8(v28) >> 1;
      }

      re::DynamicString::substr(&v34, &v28, v33[1] + 1, v11);
      re::DynamicString::operator=((this + 141), &v34);
      if (v34 && (v35 & 1) != 0)
      {
        (*(*v34 + 40))();
      }

      v12 = re::Hash<re::DynamicString>::operator()(&v34, this + 141);
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>((this + 86), v12, &v34, (this + 141));
      if (v36 == 0x7FFFFFFF)
      {
        v13 = this[142];
        v14 = (v13 & 1) != 0 ? v13 >> 1 : v13 >> 1;
        re::DynamicString::substr(&v34, (this + 141), 0, v14 - 9);
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace((this + 86), (this + 141), &v34);
        if (v34)
        {
          if (v35)
          {
            (*(*v34 + 40))();
          }
        }
      }
    }

    if (v28 && (BYTE8(v28) & 1) != 0)
    {
      (*(*v28 + 40))();
    }
  }

  v15 = *v7;
  if (v15)
  {
    re::MaterialManager::getDefaultVariations(&v28, 1, 1, 1, 1u);
    if (&v28 != this)
    {
      v16 = v29;
      v17 = *this;
      v18 = *(this + 1);
      *this = v28;
      *(this + 1) = v16;
      v20 = this[6];
      v19 = this[7];
      v21 = v32;
      this[6] = v31;
      this[7] = v21;
      v31 = v20;
      v32 = v19;
      v28 = v17;
      v29 = v18;
      v22 = *(this + 2);
      *(this + 2) = v30;
      v30 = v22;
    }

    re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::deinit(&v28);
    re::createMaterialSystemShaderMetadata(1, 1, 1, &v28);
    re::HashTable<re::StringID,re::ShaderFunctionMetadata,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=((this + 27), &v28);
    re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v28);
  }

  else
  {
    v23 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "error: could not create metallib from path ", 43);
    v24 = strlen(a2);
    v25 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v23, a2, v24);
    std::ios_base::getloc((v25 + *(*v25 - 24)));
    v26 = std::locale::use_facet(&v28, MEMORY[0x1E69E5318]);
    (v26->__vftable[2].~facet_0)(v26, 10);
    std::locale::~locale(&v28);
    std::ostream::put();
    std::ostream::flush();
  }

  return v15 != 0;
}

void *std::operator<<[abi:nn200100]<std::char_traits<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);

  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, __s, v4);
}

void *std::endl[abi:nn200100]<char,std::char_traits<char>>(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x1E69E5318]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

uint64_t re::PSOToolManager::addSearchPath(re::PSOToolManager *this, const char *a2)
{
  v4 = re::DynamicArray<re::DynamicString>::add((this + 160), &v6);
  result = v6;
  if (v6)
  {
    if (v7)
    {
      return (*(*v6 + 40))(v4);
    }
  }

  return result;
}

uint64_t re::PSOToolManager::readMaterialDefinitions(uint64_t this)
{
  v105 = &unk_1F5CB9778;
  v1 = *(this + 176);
  if (!v1)
  {
    return this;
  }

  v2 = this;
  v3 = *(this + 192);
  v55 = v3 + 32 * v1;
  do
  {
    v56 = v3;
    re::DynamicString::DynamicString(&v102, v3);
    if (v103)
    {
      v4 = *&v104[7];
    }

    else
    {
      v4 = v104;
    }

    __p[1] = 0;
    *&v67 = 0;
    __p[0] = 0;
    v5 = (v4 - 1);
    do
    {
      v6 = v5->__r_.__value_.__s.__data_[1];
      v5 = (v5 + 1);
    }

    while (v6);
    std::string::append[abi:nn200100]<char const*,0>(__p, v4, v5);
    MEMORY[0x1E6906330](&v100, __p, 0, 0);
    if (SBYTE7(v67) < 0)
    {
      operator delete(__p[0]);
    }

    ptr = v100;
    v8 = v101;
    if (v101)
    {
      atomic_fetch_add_explicit(&v101->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = v101;
      v99.__imp_.__ptr_ = ptr;
      v99.__imp_.__cntrl_ = v8;
      if (v101)
      {
        atomic_fetch_add_explicit(&v101->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
        goto LABEL_117;
      }
    }

    else
    {
      v99.__imp_.__ptr_ = v100;
      v99.__imp_.__cntrl_ = 0;
    }

    while (ptr)
    {
      v10 = std::__fs::filesystem::directory_iterator::__dereference(&v99);
      std::__fs::filesystem::path::filename[abi:nn200100](&v10->__p_, v62);
      if (v62[23] >= 0)
      {
        v12 = v62;
      }

      else
      {
        v12 = *v62;
      }

      v13 = *(v2 + 664);
      v14 = *(v2 + 680);
      if (v13)
      {
        v15 = 32 * v13;
        v16 = *(v2 + 680);
        while (!re::DynamicString::operator==(v16, __p))
        {
          v16 += 32;
          v15 -= 32;
          if (!v15)
          {
            v17 = 0;
            goto LABEL_25;
          }
        }
      }

      else
      {
        v16 = *(v2 + 680);
      }

      v17 = v16 != v14 + 32 * v13;
LABEL_25:
      if (__p[0])
      {
        if (__p[1])
        {
          (*(*__p[0] + 40))();
        }

        *__p = 0u;
        v67 = 0u;
      }

      if ((v62[23] & 0x80000000) != 0)
      {
        operator delete(*v62);
        if (v17)
        {
LABEL_31:
          v18 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "Excluding ", 10);
          if ((v10->__p_.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v10 = v10->__p_.__pn_.__r_.__value_.__r.__words[0];
          }

          v19 = strlen(v10);
          v20 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v18, v10, v19);
          std::ios_base::getloc((v20 + *(*v20 - 24)));
          v21 = std::locale::use_facet(__p, MEMORY[0x1E69E5318]);
          (v21->__vftable[2].~facet_0)(v21, 10);
          std::locale::~locale(__p);
          std::ostream::put();
          std::ostream::flush();
          goto LABEL_116;
        }
      }

      else if (v17)
      {
        goto LABEL_31;
      }

      std::__fs::filesystem::path::extension[abi:nn200100](__p, &v10->__p_);
      memset(v62, 0, 24);
      std::string::append[abi:nn200100]<char const*,0>(v62, ".rematerialdefinition", "");
      if (v62[23] >= 0)
      {
        v22.__data_ = v62;
      }

      else
      {
        v22.__data_ = *v62;
      }

      if (v62[23] >= 0)
      {
        v22.__size_ = v62[23];
      }

      else
      {
        v22.__size_ = *&v62[8];
      }

      v23 = std::__fs::filesystem::path::__compare(__p, v22);
      if ((v62[23] & 0x80000000) != 0)
      {
        operator delete(*v62);
      }

      if (SBYTE7(v67) < 0)
      {
        operator delete(__p[0]);
      }

      if (!v23)
      {
        re::MaterialDefinitionFile::MaterialDefinitionFile(__p);
        if ((v10->__p_.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = v10;
        }

        else
        {
          v27 = v10->__p_.__pn_.__r_.__value_.__r.__words[0];
        }

        re::compileMaterialDefinitionFile(__p, v27, &v105, v63);
        if ((v63[0] & 1) == 0 && v64)
        {
          if (BYTE8(v64))
          {
            (*(*v64 + 40))();
          }

          v65 = 0u;
          v64 = 0u;
        }

        std::__fs::filesystem::path::filename[abi:nn200100](&v10->__p_, v60);
        if (v61 >= 0)
        {
          v29 = v60;
        }

        else
        {
          v29 = v60[0];
        }

        v106.__locale_ = 0;
        v107 = 0;
        v108 = 0;
        v30 = re::Hash<re::DynamicString>::operator()(v109, v62);
        re::HashTable<re::DynamicString,re::MaterialDefinitionFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v2 + 264, v62, v30, &v106);
        if (HIDWORD(v107) == 0x7FFFFFFF)
        {
          v31 = re::HashTable<re::DynamicString,re::MaterialDefinitionFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v2 + 264, v107, v106.__locale_);
          *(v31 + 8) = *v62;
          *(v31 + 32) = *&v62[24];
          *(v31 + 16) = *&v62[8];
          memset(v62, 0, sizeof(v62));
          re::MaterialDefinitionFile::MaterialDefinitionFile((v31 + 40), __p);
          ++*(v2 + 304);
        }

        if (*v62)
        {
          if (v62[8])
          {
            (*(**v62 + 40))();
          }

          memset(v62, 0, sizeof(v62));
        }

        if (v61 < 0)
        {
          operator delete(v60[0]);
        }

        v32 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "Reading ", 8);
        std::__fs::filesystem::path::filename[abi:nn200100](&v10->__p_, v62);
        if (v62[23] >= 0)
        {
          v33 = v62;
        }

        else
        {
          v33 = *v62;
        }

        v34 = strlen(v33);
        v35 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v32, v33, v34);
        v36 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v35, " from ", 6);
        if ((v10->__p_.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v37 = v10;
        }

        else
        {
          v37 = v10->__p_.__pn_.__r_.__value_.__r.__words[0];
        }

        v38 = strlen(v37);
        v39 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v36, v37, v38);
        std::ios_base::getloc((v39 + *(*v39 - 24)));
        v40 = std::locale::use_facet(&v106, MEMORY[0x1E69E5318]);
        (v40->__vftable[2].~facet_0)(v40, 10);
        std::locale::~locale(&v106);
        std::ostream::put();
        std::ostream::flush();
        if ((v62[23] & 0x80000000) != 0)
        {
          operator delete(*v62);
        }

        re::MaterialDefinitionFile::~MaterialDefinitionFile(__p);
        goto LABEL_116;
      }

      std::__fs::filesystem::path::extension[abi:nn200100](__p, &v10->__p_);
      memset(v62, 0, 24);
      std::string::append[abi:nn200100]<char const*,0>(v62, ".rematerial", "");
      if (v62[23] >= 0)
      {
        v24.__data_ = v62;
      }

      else
      {
        v24.__data_ = *v62;
      }

      if (v62[23] >= 0)
      {
        v24.__size_ = v62[23];
      }

      else
      {
        v24.__size_ = *&v62[8];
      }

      v25 = std::__fs::filesystem::path::__compare(__p, v24);
      v26 = v25;
      if ((v62[23] & 0x80000000) != 0)
      {
        operator delete(*v62);
      }

      if (SBYTE7(v67) < 0)
      {
        operator delete(__p[0]);
        if (!v26)
        {
LABEL_86:
          *__p = 0u;
          v67 = 0u;
          re::DynamicString::setCapacity(__p, 0);
          memset(v68, 0, sizeof(v68));
          v69 = 0x7FFFFFFFLL;
          memset(v70, 0, sizeof(v70));
          v71 = 0;
          v72 = 0x7FFFFFFFLL;
          memset(v73, 0, sizeof(v73));
          v74 = 0;
          v75 = 0x7FFFFFFFLL;
          memset(v76, 0, sizeof(v76));
          v77 = 0;
          v78 = 0x7FFFFFFFLL;
          v80 = 0;
          memset(v79, 0, sizeof(v79));
          v81 = 0x7FFFFFFFLL;
          memset(v82, 0, sizeof(v82));
          v83 = 0;
          v84 = 0x7FFFFFFFLL;
          v85 = 0;
          v86 = 0;
          v87 = 0;
          v88 = 0;
          v89 = 0;
          v90 = 0;
          v91 = 0;
          v92 = 0;
          v93 = 0;
          v94 = 0;
          v97 = 0;
          v96 = 0;
          memset(v95, 0, sizeof(v95));
          v98 = 0;
          if ((v10->__p_.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v41 = v10;
          }

          else
          {
            v41 = v10->__p_.__pn_.__r_.__value_.__r.__words[0];
          }

          re::compileMaterialFile(__p, v41, &v105, v57);
          if ((v57[0] & 1) == 0 && v58)
          {
            if (BYTE8(v58))
            {
              (*(*v58 + 40))();
            }

            v59 = 0u;
            v58 = 0u;
          }

          std::__fs::filesystem::path::filename[abi:nn200100](&v10->__p_, v60);
          if (v61 >= 0)
          {
            v43 = v60;
          }

          else
          {
            v43 = v60[0];
          }

          v106.__locale_ = 0;
          v107 = 0;
          v108 = 0;
          v44 = re::Hash<re::DynamicString>::operator()(v109, v62);
          re::HashTable<re::DynamicString,re::MaterialFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v106, v2 + 312, v62, v44);
          if (HIDWORD(v107) == 0x7FFFFFFF)
          {
            v45 = re::HashTable<re::DynamicString,re::MaterialFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry((v2 + 312), v107, v106.__locale_);
            *(v45 + 8) = *v62;
            *(v45 + 32) = *&v62[24];
            *(v45 + 16) = *&v62[8];
            memset(v62, 0, sizeof(v62));
            re::MaterialFile::MaterialFile(v45 + 40, __p);
            ++*(v2 + 352);
          }

          if (*v62)
          {
            if (v62[8])
            {
              (*(**v62 + 40))();
            }

            memset(v62, 0, sizeof(v62));
          }

          if (v61 < 0)
          {
            operator delete(v60[0]);
          }

          v46 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "Reading ", 8);
          std::__fs::filesystem::path::filename[abi:nn200100](&v10->__p_, v62);
          if (v62[23] >= 0)
          {
            v47 = v62;
          }

          else
          {
            v47 = *v62;
          }

          v48 = strlen(v47);
          v49 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v46, v47, v48);
          v50 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v49, " from ", 6);
          if ((v10->__p_.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v51 = v10;
          }

          else
          {
            v51 = v10->__p_.__pn_.__r_.__value_.__r.__words[0];
          }

          v52 = strlen(v51);
          v53 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v50, v51, v52);
          std::ios_base::getloc((v53 + *(*v53 - 24)));
          v54 = std::locale::use_facet(&v106, MEMORY[0x1E69E5318]);
          (v54->__vftable[2].~facet_0)(v54, 10);
          std::locale::~locale(&v106);
          std::ostream::put();
          std::ostream::flush();
          if ((v62[23] & 0x80000000) != 0)
          {
            operator delete(*v62);
          }

          re::DynamicArray<re::FunctionLink>::deinit(v95);
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v82);
          re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v79);
          re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v76);
          re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v73);
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v70);
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v68[24]);
          re::AssetHandle::~AssetHandle(v68);
          if (__p[0] && (__p[1] & 1) != 0)
          {
            (*(*__p[0] + 40))();
          }
        }
      }

      else if (!v26)
      {
        goto LABEL_86;
      }

LABEL_116:
      std::__fs::filesystem::directory_iterator::__increment(&v99, 0);
LABEL_117:
      ptr = v99.__imp_.__ptr_;
    }

    if (v99.__imp_.__cntrl_)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v99.__imp_.__cntrl_);
    }

    if (v101)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v101);
    }

    this = v102;
    if (v102 && (v103 & 1) != 0)
    {
      this = (*(*v102 + 40))();
    }

    v3 = (v56 + 32);
  }

  while (v56 + 32 != v55);
  return this;
}

double std::__fs::filesystem::path::extension[abi:nn200100](uint64_t a1, std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__extension(this);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a1 = __dst;
  *(a1 + 16) = v6;
  return result;
}

uint64_t re::PSOToolManager::generateFunctionVariationsForTechnique(re::PSOToolManager *this, const char *a2, const char *a3)
{
  v117 = 0;
  v114[1] = 0;
  v115 = 0;
  v114[0] = 0;
  v116 = 0;
  if (*a2 == 42 && !a2[1])
  {
    v11 = *(this + 86);
    if (v11)
    {
      v12 = 0;
      v13 = *(this + 41);
      while ((*v13 & 0x80000000) == 0)
      {
        v13 += 116;
        if (v11 == ++v12)
        {
          LODWORD(v12) = *(this + 86);
          break;
        }
      }
    }

    else
    {
      LODWORD(v12) = 0;
    }

    while (v12 != v11)
    {
      re::DynamicString::DynamicString(v113, (*(this + 41) + 464 * v12 + 8));
      re::makeTruncatedAssetPath(v113, v91);
      v19.n128_f64[0] = re::DynamicArray<re::DynamicString>::add(v114, v91);
      if (v91[0].__locale_)
      {
        if (v91[1].__locale_)
        {
          (*(*v91[0].__locale_ + 40))(v19.n128_f64[0]);
        }

        v19 = 0uLL;
        *&v91[0].__locale_ = 0u;
        v92 = 0u;
      }

      locale = *&v113[0];
      if (*&v113[0])
      {
        if (BYTE8(v113[0]))
        {
          locale = (*(**&v113[0] + 40))(v19);
        }

        memset(v113, 0, sizeof(v113));
      }

      v20 = *(this + 86);
      if (v20 <= v12 + 1)
      {
        v20 = v12 + 1;
      }

      while (v20 - 1 != v12)
      {
        LODWORD(v12) = v12 + 1;
        if ((*(*(this + 41) + 464 * v12) & 0x80000000) != 0)
        {
          goto LABEL_82;
        }
      }

      LODWORD(v12) = v20;
LABEL_82:
      ;
    }

    v21 = *(this + 74);
    if (v21)
    {
      v22 = 0;
      v23 = *(this + 35);
      while ((*v23 & 0x80000000) == 0)
      {
        v23 += 196;
        if (v21 == ++v22)
        {
          LODWORD(v22) = *(this + 74);
          break;
        }
      }
    }

    else
    {
      LODWORD(v22) = 0;
    }

    while (v22 != v21)
    {
      re::DynamicString::DynamicString(v112, (*(this + 35) + 784 * v22 + 8));
      re::makeTruncatedAssetPath(v112, v91);
      v24.n128_f64[0] = re::DynamicArray<re::DynamicString>::add(v114, v91);
      if (v91[0].__locale_)
      {
        if (v91[1].__locale_)
        {
          (*(*v91[0].__locale_ + 40))(v24.n128_f64[0]);
        }

        v24 = 0uLL;
        *&v91[0].__locale_ = 0u;
        v92 = 0u;
      }

      locale = *&v112[0];
      if (*&v112[0])
      {
        if (BYTE8(v112[0]))
        {
          locale = (*(**&v112[0] + 40))(v24);
        }

        memset(v112, 0, sizeof(v112));
      }

      v25 = *(this + 74);
      if (v25 <= v22 + 1)
      {
        v25 = v22 + 1;
      }

      while (v25 - 1 != v22)
      {
        LODWORD(v22) = v22 + 1;
        if ((*(*(this + 35) + 784 * v22) & 0x80000000) != 0)
        {
          goto LABEL_104;
        }
      }

      LODWORD(v22) = v25;
LABEL_104:
      ;
    }
  }

  else
  {
    locale = strcmp(a2, "mxi*");
    if (locale)
    {
      re::makeTruncatedAssetPath(v109, v91);
      v7.n128_f64[0] = re::DynamicArray<re::DynamicString>::add(v114, v91);
      if (v91[0].__locale_)
      {
        if (v91[1].__locale_)
        {
          (*(*v91[0].__locale_ + 40))(v7.n128_f64[0]);
        }

        v7 = 0uLL;
        *&v91[0].__locale_ = 0u;
        v92 = 0u;
      }

      locale = *&v109[0];
      if (*&v109[0])
      {
        if (BYTE8(v109[0]))
        {
          locale = (*(**&v109[0] + 40))(v7);
        }

        memset(v109, 0, sizeof(v109));
      }
    }

    else
    {
      v8 = *(this + 86);
      if (v8)
      {
        v9 = 0;
        v10 = *(this + 41);
        while ((*v10 & 0x80000000) == 0)
        {
          v10 += 116;
          if (v8 == ++v9)
          {
            LODWORD(v9) = *(this + 86);
            break;
          }
        }
      }

      else
      {
        LODWORD(v9) = 0;
      }

      while (v9 != v8)
      {
        re::DynamicString::DynamicString(v111, (*(this + 41) + 464 * v9 + 8));
        re::makeTruncatedAssetPath(v111, v91);
        if (*&v111[0])
        {
          if (BYTE8(v111[0]))
          {
            (*(**&v111[0] + 40))();
          }

          memset(v111, 0, sizeof(v111));
        }

        re::DynamicString::find(v105, v91, "mxi", 3, 0);
        if (LOBYTE(v105[0]) == 1 || (re::DynamicString::find(&v88, v91, "MXI", 3, 0), v88 == 1))
        {
          re::DynamicArray<re::DynamicString>::add(v114, v91);
        }

        locale = v91[0].__locale_;
        if (v91[0].__locale_ && (v91[1].__locale_ & 1) != 0)
        {
          locale = (*(*v91[0].__locale_ + 40))();
        }

        v14 = *(this + 86);
        if (v14 <= v9 + 1)
        {
          v14 = v9 + 1;
        }

        while (v14 - 1 != v9)
        {
          LODWORD(v9) = v9 + 1;
          if ((*(*(this + 41) + 464 * v9) & 0x80000000) != 0)
          {
            goto LABEL_40;
          }
        }

        LODWORD(v9) = v14;
LABEL_40:
        ;
      }

      v15 = *(this + 74);
      if (v15)
      {
        v16 = 0;
        v17 = *(this + 35);
        while ((*v17 & 0x80000000) == 0)
        {
          v17 += 196;
          if (v15 == ++v16)
          {
            LODWORD(v16) = *(this + 74);
            break;
          }
        }
      }

      else
      {
        LODWORD(v16) = 0;
      }

      while (v16 != v15)
      {
        re::DynamicString::DynamicString(v110, (*(this + 35) + 784 * v16 + 8));
        re::makeTruncatedAssetPath(v110, v91);
        if (*&v110[0])
        {
          if (BYTE8(v110[0]))
          {
            (*(**&v110[0] + 40))();
          }

          memset(v110, 0, sizeof(v110));
        }

        re::DynamicString::find(v105, v91, "mxi", 3, 0);
        if (LOBYTE(v105[0]) == 1 || (re::DynamicString::find(&v88, v91, "MXI", 3, 0), v88 == 1))
        {
          re::DynamicArray<re::DynamicString>::add(v114, v91);
        }

        locale = v91[0].__locale_;
        if (v91[0].__locale_ && (v91[1].__locale_ & 1) != 0)
        {
          locale = (*(*v91[0].__locale_ + 40))();
        }

        v18 = *(this + 74);
        if (v18 <= v16 + 1)
        {
          v18 = v16 + 1;
        }

        while (v18 - 1 != v16)
        {
          LODWORD(v16) = v16 + 1;
          if ((*(*(this + 35) + 784 * v16) & 0x80000000) != 0)
          {
            goto LABEL_64;
          }
        }

        LODWORD(v16) = v18;
LABEL_64:
        ;
      }
    }
  }

  if (!v115)
  {
LABEL_220:
    re::DynamicArray<re::DynamicString>::deinit(v114);
    result = v118;
    if (v118)
    {
      if (v119)
      {
        return (*(*v118 + 40))();
      }
    }

    return result;
  }

  v26 = v117;
  v87 = v117 + 32 * v115;
  while (1)
  {
    v27 = *(this + 83);
    v28 = *(this + 85);
    if (v27)
    {
      v29 = 32 * v27;
      v30 = *(this + 85);
      while (1)
      {
        locale = re::DynamicString::operator==(v30, v26);
        if (locale)
        {
          break;
        }

        v30 += 32;
        v29 -= 32;
        if (!v29)
        {
          goto LABEL_114;
        }
      }
    }

    else
    {
      v30 = *(this + 85);
    }

    if (v30 != v28 + 32 * v27)
    {
      goto LABEL_219;
    }

LABEL_114:
    memset(v108, 0, sizeof(v108));
    re::DynamicString::setCapacity(v108, 0);
    v106 = 0;
    memset(v105, 0, sizeof(v105));
    v107 = 0x7FFFFFFFLL;
    v31 = re::Hash<re::DynamicString>::operator()(v91, v26);
    re::HashTable<re::DynamicString,re::MaterialFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v91, this + 312, v26, v31);
    if (HIDWORD(v91[1].__locale_) != 0x7FFFFFFF)
    {
      v34 = re::Hash<re::DynamicString>::operator()(&v88, v26);
      re::HashTable<re::DynamicString,re::MaterialFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v88, this + 312, v26, v34);
      re::MaterialFile::MaterialFile(v91, *(this + 41) + 464 * HIDWORD(v88) + 40);
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(v105, v102);
      re::AssetHandle::serializationString(v93, v104);
      re::makeTruncatedAssetPath(v104, &v88);
      re::DynamicString::operator=(v108, &v88);
      if (v88)
      {
        if (BYTE8(v88))
        {
          (*(*v88 + 40))();
        }

        v88 = 0u;
        v89 = 0u;
      }

      if (*&v104[0])
      {
        if (BYTE8(v104[0]))
        {
          (*(**&v104[0] + 40))();
        }

        memset(v104, 0, sizeof(v104));
      }

      re::DynamicArray<re::FunctionLink>::deinit(&v103);
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v102);
      re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v101);
      re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v100);
      re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v99);
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v98);
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v95);
      re::AssetHandle::~AssetHandle(v93);
      if (v91[0].__locale_ && (v91[1].__locale_ & 1) != 0)
      {
        (*(*v91[0].__locale_ + 40))();
      }

      goto LABEL_128;
    }

    v32 = re::Hash<re::DynamicString>::operator()(v91, v26);
    re::HashTable<re::DynamicString,re::MaterialDefinitionFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(this + 264, v26, v32, v91);
    if (HIDWORD(v91[1].__locale_) == 0x7FFFFFFF)
    {
      break;
    }

    re::DynamicString::operator=(v108, v26);
LABEL_128:
    v35 = *(this + 83);
    v36 = *(this + 85);
    if (v35)
    {
      v37 = 32 * v35;
      v38 = *(this + 85);
      while (!re::DynamicString::operator==(v38, v108))
      {
        v38 += 32;
        v37 -= 32;
        if (!v37)
        {
          goto LABEL_135;
        }
      }
    }

    else
    {
      v38 = *(this + 85);
    }

    if (v38 == v36 + 32 * v35)
    {
LABEL_135:
      v39 = re::Hash<re::DynamicString>::operator()(v91, v108);
      re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v91, this + 360, v108, v39);
      if (HIDWORD(v91[1].__locale_) == 0x7FFFFFFF)
      {
        v40 = re::Hash<re::DynamicString>::operator()(v91, v108);
        re::HashTable<re::DynamicString,re::MaterialDefinitionFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(this + 264, v108, v40, v91);
        re::MaterialDefinitionFile::MaterialDefinitionFile(v91, (*(this + 35) + 784 * HIDWORD(v91[1].__locale_) + 40));
        FlattenedMaterialFile = re::makeFlattenedMaterialFile(this + 264, v91);
        v88 = 0uLL;
        *&v89 = 0;
        v42 = re::Hash<re::DynamicString>::operator()(&v125, v108);
        re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v88, this + 360, v108, v42);
        if (HIDWORD(v88) == 0x7FFFFFFF)
        {
          v43 = re::HashTable<re::DynamicString,re::MaterialDefinitionFile *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(this + 360, DWORD2(v88), v88);
          re::DynamicString::DynamicString((v43 + 8), v108);
          *(v43 + 40) = FlattenedMaterialFile;
          ++*(this + 100);
        }

        re::MaterialDefinitionFile::~MaterialDefinitionFile(v91);
      }

      v44 = re::Hash<re::DynamicString>::operator()(v91, v108);
      re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v91, this + 360, v108, v44);
      v45 = *(*(this + 47) + 56 * HIDWORD(v91[1].__locale_) + 40);
      v90 = 0;
      *&v89 = 0;
      v88 = 0uLL;
      DWORD2(v89) = 0;
      if (v119)
      {
        v46 = v122;
      }

      else
      {
        v46 = &v120;
      }

      if (*v46 != 42)
      {
        goto LABEL_146;
      }

      v47 = v121;
      if (v119)
      {
        v47 = v122 + 1;
      }

      if (!*v47)
      {
        v75 = *(v45 + 400);
        if (v75)
        {
          v76 = *(v45 + 416);
          v77 = 664 * v75;
          do
          {
            re::MaterialTechniqueData::MaterialTechniqueData(v91, v76);
            re::DynamicArray<re::DynamicString>::add(&v88, v91);
            re::MaterialTechniqueData::~MaterialTechniqueData(v91);
            v76 = (v76 + 664);
            v77 -= 664;
          }

          while (v77);
        }
      }

      else
      {
LABEL_146:
        v48 = re::Hash<re::DynamicString>::operator()(v91, &v118);
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v45 + 464, v48, v91, &v118);
        if (HIDWORD(v91[1].__locale_) == 0x7FFFFFFF)
        {
          v49 = *(v45 + 400);
          if (v49)
          {
            v50 = *(v45 + 416);
            v51 = 664 * v49;
            while (1)
            {
              re::MaterialTechniqueData::MaterialTechniqueData(v91, v50);
              v52 = (v91[1].__locale_ & 1) != 0 ? v92 : &v91[1].__locale_ + 1;
              v53 = (v119 & 1) != 0 ? v122 : &v120;
              if (!strcmp(v52, v53))
              {
                break;
              }

              re::MaterialTechniqueData::~MaterialTechniqueData(v91);
              v50 = (v50 + 664);
              v51 -= 664;
              if (!v51)
              {
                goto LABEL_157;
              }
            }

            re::DynamicArray<re::DynamicString>::add(&v88, &v118);
            re::MaterialTechniqueData::~MaterialTechniqueData(v91);
          }

          else
          {
LABEL_157:
            v54 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "Cannot find technique mapping for ", 34);
            if (v119)
            {
              v55 = v122;
            }

            else
            {
              v55 = &v120;
            }

            v56 = strlen(v55);
            v57 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v54, v55, v56);
            v58 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v57, " in ", 4);
            if (*(v45 + 8))
            {
              v59 = *(v45 + 16);
            }

            else
            {
              v59 = (v45 + 9);
            }

            v78 = strlen(v59);
            v79 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v58, v59, v78);
            std::ios_base::getloc((v79 + *(*v79 - 24)));
            v80 = std::locale::use_facet(v91, MEMORY[0x1E69E5318]);
            (v80->__vftable[2].~facet_0)(v80, 10);
            std::locale::~locale(v91);
            std::ostream::put();
            std::ostream::flush();
          }
        }

        else
        {
          v60 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v45 + 464, &v118);
          re::DynamicString::DynamicString(&v125, v60);
          v61 = *(v45 + 440);
          if (v61)
          {
            v62 = *(v45 + 456);
            v63 = &v62[9 * v61];
            do
            {
              re::DynamicString::DynamicString(v91, v62);
              re::DynamicArray<re::DynamicString>::DynamicArray(v93, v62 + 4);
              if (v91[1].__locale_)
              {
                v64 = v92;
              }

              else
              {
                v64 = &v91[1].__locale_ + 1;
              }

              if (v126)
              {
                v65 = v128;
              }

              else
              {
                v65 = v127;
              }

              if (!strcmp(v64, v65) && v94)
              {
                v66 = v95[1];
                v67 = 32 * v94;
                do
                {
                  re::DynamicString::DynamicString(&v123, v66);
                  re::DynamicArray<re::DynamicString>::add(&v88, &v123);
                  if (v123 && (v124 & 1) != 0)
                  {
                    (*(*v123 + 40))();
                  }

                  v66 = (v66 + 32);
                  v67 -= 32;
                }

                while (v67);
              }

              re::MaterialTechniqueGroupData::deinit(&v91[0].__locale_);
              re::DynamicArray<re::DynamicString>::deinit(v93);
              if (v91[0].__locale_ && (v91[1].__locale_ & 1) != 0)
              {
                (*(*v91[0].__locale_ + 40))();
              }

              v62 += 9;
            }

            while (v62 != v63);
          }

          v68 = *(v45 + 664);
          if (v68)
          {
            v69 = *(v45 + 680);
            v70 = (v69 + 104 * v68);
            do
            {
              re::MaterialTechniqueQualityLevelSetData::MaterialTechniqueQualityLevelSetData(v91, v69);
              if (v91[1].__locale_)
              {
                v71 = v92;
              }

              else
              {
                v71 = &v91[1].__locale_ + 1;
              }

              if (v126)
              {
                v72 = v128;
              }

              else
              {
                v72 = v127;
              }

              if (!strcmp(v71, v72) && v96)
              {
                v73 = v97;
                v74 = 32 * v96;
                do
                {
                  re::DynamicString::DynamicString(&v123, v73);
                  re::DynamicArray<re::DynamicString>::add(&v88, &v123);
                  if (v123 && (v124 & 1) != 0)
                  {
                    (*(*v123 + 40))();
                  }

                  v73 = (v73 + 32);
                  v74 -= 32;
                }

                while (v74);
              }

              re::MaterialTechniqueQualityLevelSetData::~MaterialTechniqueQualityLevelSetData(&v91[0].__locale_);
              v69 = (v69 + 104);
            }

            while (v69 != v70);
          }

          if (!v89)
          {
            re::DynamicArray<re::DynamicString>::add(&v88, &v125);
          }

          if (v125 && (v126 & 1) != 0)
          {
            (*(*v125 + 40))();
          }
        }
      }

      if (v89)
      {
        v81 = v90;
        v82 = 32 * v89;
        do
        {
          re::DynamicString::DynamicString(v91, v81);
          re::PSOToolManager::generateVariantsForTechnique(this, v45, v91, v105);
          if (v91[0].__locale_ && (v91[1].__locale_ & 1) != 0)
          {
            (*(*v91[0].__locale_ + 40))();
          }

          v81 = (v81 + 32);
          v82 -= 32;
        }

        while (v82);
      }

      re::DynamicArray<re::DynamicString>::deinit(&v88);
    }

    v83 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v105);
    locale = *&v108[0];
    if (*&v108[0] && (BYTE8(v108[0]) & 1) != 0)
    {
      locale = (*(**&v108[0] + 40))(v83);
    }

LABEL_219:
    v26 += 32;
    if (v26 == v87)
    {
      goto LABEL_220;
    }
  }

  if (*(v26 + 8))
  {
    v85 = *(v26 + 16);
  }

  else
  {
    v85 = v26 + 9;
  }

  re::internal::assertLog(5, v33, "assertion failure: '%s' (%s:line %i) No material or material defintion for %s\n", "false", "generateFunctionVariationsForTechnique", 158, v85);
  result = _os_crash("assertion failure: (false) No material or material defintion for %s\n", v86);
  __break(1u);
  return result;
}

void re::PSOToolManager::generateVariantsForTechnique(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v315 = *MEMORY[0x1E69E9840];
  v8 = re::MaterialTechniqueData::MaterialTechniqueData(v243);
  v9 = *(a2 + 400);
  if (v9)
  {
    v10 = *(a2 + 416);
    v11 = 664 * v9;
    while (1)
    {
      v8 = re::DynamicString::operator==(v10, a3);
      if (v8)
      {
        break;
      }

      v10 += 664;
      v11 -= 664;
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    v8 = re::MaterialTechniqueData::operator=(v243, v10);
  }

LABEL_7:
  v241 = 0;
  memset(v240, 0, sizeof(v240));
  v242 = 0x7FFFFFFFLL;
  v12 = v263;
  if (v263)
  {
    v13 = 0;
    v14 = v262;
    while (1)
    {
      v15 = *v14;
      v14 += 20;
      if (v15 < 0)
      {
        break;
      }

      if (v263 == ++v13)
      {
        LODWORD(v13) = v263;
        break;
      }
    }
  }

  else
  {
    LODWORD(v13) = 0;
  }

  if (v13 != v263)
  {
    v16 = v262;
    do
    {
      v8 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(v240, &v16[20 * v13 + 2], &v16[20 * v13 + 10]);
      if (v263 <= v13 + 1)
      {
        v17 = v13 + 1;
      }

      else
      {
        v17 = v263;
      }

      v16 = v262;
      while (v17 - 1 != v13)
      {
        LODWORD(v13) = v13 + 1;
        if (v262[20 * v13] < 0)
        {
          goto LABEL_23;
        }
      }

      LODWORD(v13) = v17;
LABEL_23:
      ;
    }

    while (v13 != v12);
  }

  v18 = *(a4 + 32);
  if (v18)
  {
    v19 = 0;
    v20 = *(a4 + 16);
    while (1)
    {
      v21 = *v20;
      v20 += 20;
      if (v21 < 0)
      {
        break;
      }

      if (v18 == ++v19)
      {
        LODWORD(v19) = *(a4 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v19) = 0;
  }

  if (v19 != v18)
  {
    v22 = *(a4 + 16);
    do
    {
      v8 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(v240, (v22 + 80 * v19 + 8), (v22 + 80 * v19 + 40));
      if (*(a4 + 32) <= (v19 + 1))
      {
        v23 = v19 + 1;
      }

      else
      {
        v23 = *(a4 + 32);
      }

      v22 = *(a4 + 16);
      while (v23 - 1 != v19)
      {
        LODWORD(v19) = v19 + 1;
        if ((*(v22 + 80 * v19) & 0x80000000) != 0)
        {
          goto LABEL_40;
        }
      }

      LODWORD(v19) = v23;
LABEL_40:
      ;
    }

    while (v19 != v18);
  }

  if ((*(a1 + 1120) & 1) != 0 && *(a1 + 1124) == 1)
  {
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(v240, "EnableSurfaceShaderWithCustomParams", &v298);
    v24 = v298;
    if (v298 && (BYTE8(v298) & 1) != 0)
    {
      v24 = (*(*v298 + 40))();
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(v240, "EnableGeometryModifierWithCustomParams", &v298);
    v25 = v298;
    if (v298 && (BYTE8(v298) & 1) != 0)
    {
      v25 = (*(*v298 + 40))();
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(v240, "EnableSurfaceShaderPremultipliedOutput", &v298);
    v26 = v298;
    if (v298 && (BYTE8(v298) & 1) != 0)
    {
      v26 = (*(*v298 + 40))();
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(v240, "EnableSurfaceShaderVideo", &v298);
    v27 = v298;
    if (v298 && (BYTE8(v298) & 1) != 0)
    {
      v27 = (*(*v298 + 40))();
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(v240, "CAEdgeSpecularMode", &v298);
    v28 = v298;
    if (v298 && (BYTE8(v298) & 1) != 0)
    {
      v28 = (*(*v298 + 40))();
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(v240, "EnablePlatterFakeFresnel", &v298);
    v29 = v298;
    if (v298 && (BYTE8(v298) & 1) != 0)
    {
      v29 = (*(*v298 + 40))();
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(v240, "MatchUnlitColor", &v298);
    v30 = v298;
    if (v298 && (BYTE8(v298) & 1) != 0)
    {
      v30 = (*(*v298 + 40))();
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(v240, "EnableDitherFadeOverride", &v298);
    v31 = v298;
    if (v298 && (BYTE8(v298) & 1) != 0)
    {
      v31 = (*(*v298 + 40))();
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(v240, "SurfaceShaderAttributeSet", &v298);
    v32 = v298;
    if (v298 && (BYTE8(v298) & 1) != 0)
    {
      v32 = (*(*v298 + 40))();
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(v240, "EnableBarycentricCoordinates", &v298);
    v8 = v298;
    if (v298 && (BYTE8(v298) & 1) != 0)
    {
      v8 = (*(*v298 + 40))();
    }
  }

  memset(v239, 0, sizeof(v239));
  v237 = 0;
  v235 = 0u;
  v236 = 0u;
  v238 = 0x7FFFFFFFLL;
  if (v249)
  {
    v33 = v249 >> 1;
  }

  else
  {
    v33 = v249 >> 1;
  }

  if (v33)
  {
    v298 = 0uLL;
    memset(v299, 0, sizeof(v299));
    v285 = 0;
    v283 = 0uLL;
    v284 = 0uLL;
    v286 = 0x7FFFFFFFLL;
    re::PSOToolManager::gatherFunctionConstantsForShader(a1, v243, &v248, v240, v264, &v298, &v283);
    *&v280 = &v298;
    *(&v280 + 1) = 0;
    if (*&v299[0] >= 0x10uLL)
    {
      v34 = 0;
      v35 = v298;
      v36 = *&v299[0] >> 4;
      while (1)
      {
        v37 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v35), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
        *(&v280 + 1) = v37 ^ 0xFFFFLL;
        if (v37 != 0xFFFFLL)
        {
          break;
        }

        v34 -= 16;
        ++v35;
        if (!--v36)
        {
          goto LABEL_84;
        }
      }

      v38 = __clz(__rbit64(v37 ^ 0xFFFFLL));
      v39 = v38 - v34;
      *&v281 = v38 - v34;
      if (v38 + 1 != v34)
      {
        do
        {
          re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addOrReplace(v239, (*(v280 + 8) + 96 * v39), *(v280 + 8) + 96 * v39 + 32);
          re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v280);
          v39 = v281;
        }

        while (v281 != -1);
      }
    }

LABEL_84:
    v40 = v285;
    if (v285)
    {
      v41 = 0;
      v42 = v284;
      while (1)
      {
        v43 = *v42;
        v42 += 38;
        if (v43 < 0)
        {
          break;
        }

        if (v285 == ++v41)
        {
          LODWORD(v41) = v285;
          break;
        }
      }
    }

    else
    {
      LODWORD(v41) = 0;
    }

    if (v41 != v285)
    {
      v44 = v284;
      do
      {
        re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(&v235, (v44 + 152 * v41 + 8), v44 + 152 * v41 + 40);
        if (v285 <= v41 + 1)
        {
          v45 = v41 + 1;
        }

        else
        {
          v45 = v285;
        }

        v44 = v284;
        while (v45 - 1 != v41)
        {
          LODWORD(v41) = v41 + 1;
          if ((*(v284 + 152 * v41) & 0x80000000) != 0)
          {
            goto LABEL_100;
          }
        }

        LODWORD(v41) = v45;
LABEL_100:
        ;
      }

      while (v41 != v40);
    }

    re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v283);
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(&v298);
  }

  if (v253)
  {
    v46 = v253 >> 1;
  }

  else
  {
    v46 = v253 >> 1;
  }

  if (v46)
  {
    v298 = 0u;
    memset(v299, 0, sizeof(v299));
    v285 = 0;
    v283 = 0u;
    v284 = 0u;
    v286 = 0x7FFFFFFFLL;
    re::PSOToolManager::gatherFunctionConstantsForShader(a1, v243, &v252, v240, v264, &v298, &v283);
    *&v280 = &v298;
    *(&v280 + 1) = 0;
    if (*&v299[0] >= 0x10uLL)
    {
      v47 = 0;
      v48 = v298;
      v49 = *&v299[0] >> 4;
      while (1)
      {
        v50 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v48), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
        *(&v280 + 1) = v50 ^ 0xFFFFLL;
        if (v50 != 0xFFFFLL)
        {
          break;
        }

        v47 -= 16;
        ++v48;
        if (!--v49)
        {
          goto LABEL_113;
        }
      }

      v51 = __clz(__rbit64(v50 ^ 0xFFFFLL));
      v52 = v51 - v47;
      *&v281 = v51 - v47;
      if (v51 + 1 != v47)
      {
        do
        {
          re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addOrReplace(v239, (*(v280 + 8) + 96 * v52), *(v280 + 8) + 96 * v52 + 32);
          re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v280);
          v52 = v281;
        }

        while (v281 != -1);
      }
    }

LABEL_113:
    v53 = v285;
    if (v285)
    {
      v54 = 0;
      v55 = v284;
      while (1)
      {
        v56 = *v55;
        v55 += 38;
        if (v56 < 0)
        {
          break;
        }

        if (v285 == ++v54)
        {
          LODWORD(v54) = v285;
          break;
        }
      }
    }

    else
    {
      LODWORD(v54) = 0;
    }

    if (v54 != v285)
    {
      v57 = v284;
      do
      {
        re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(&v235, (v57 + 152 * v54 + 8), v57 + 152 * v54 + 40);
        if (v285 <= v54 + 1)
        {
          v58 = v54 + 1;
        }

        else
        {
          v58 = v285;
        }

        v57 = v284;
        while (v58 - 1 != v54)
        {
          LODWORD(v54) = v54 + 1;
          if ((*(v284 + 152 * v54) & 0x80000000) != 0)
          {
            goto LABEL_129;
          }
        }

        LODWORD(v54) = v58;
LABEL_129:
        ;
      }

      while (v54 != v53);
    }

    re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v283);
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(&v298);
  }

  v234 = 0;
  v231[1] = 0;
  v232 = 0;
  v231[0] = 0;
  v233 = 0;
  v229 = a1;
  if (*(a1 + 1120) == 1)
  {
    v59 = *(a1 + 1124);
    if (v59 == 1)
    {
      for (i = 0; i != 12; ++i)
      {
        v67 = realitykit_shader_api::textureFunctions[i];
        LOWORD(v299[1]) = 257;
        v68 = re::DynamicArray<re::PSOToolLinkedFunctionDescriptor>::add(v231, &v298);
        v8 = v298;
        if (v298 && (BYTE8(v298) & 1) != 0)
        {
          v8 = (*(*v298 + 40))(v68);
        }
      }

      LOWORD(v299[1]) = 257;
      v69 = re::DynamicArray<re::PSOToolLinkedFunctionDescriptor>::add(v231, &v298);
      v70 = v298;
      if (v298 && (BYTE8(v298) & 1) != 0)
      {
        v70 = (*(*v298 + 40))(v69);
      }

      LOWORD(v299[1]) = 257;
      v71 = re::DynamicArray<re::PSOToolLinkedFunctionDescriptor>::add(v231, &v298);
      v72 = v298;
      if (v298 && (BYTE8(v298) & 1) != 0)
      {
        v72 = (*(*v298 + 40))(v71);
      }

      for (j = 0; j != 9; ++j)
      {
        v74 = realitykit_shader_api::materialFunctions[j];
        LOWORD(v299[1]) = 257;
        v75 = re::DynamicArray<re::PSOToolLinkedFunctionDescriptor>::add(v231, &v298);
        v72 = v298;
        if (v298 && (BYTE8(v298) & 1) != 0)
        {
          v72 = (*(*v298 + 40))(v75);
        }
      }

      LOWORD(v299[1]) = 257;
      v76 = re::DynamicArray<re::PSOToolLinkedFunctionDescriptor>::add(v231, &v298);
      v77 = v298;
      if (v298 && (BYTE8(v298) & 1) != 0)
      {
        v77 = (*(*v298 + 40))(v76);
      }

      LOWORD(v299[1]) = 257;
      v78 = re::DynamicArray<re::PSOToolLinkedFunctionDescriptor>::add(v231, &v298);
      v8 = v298;
      if (v298 && (BYTE8(v298) & 1) != 0)
      {
        v8 = (*(*v298 + 40))(v78);
      }

      for (k = 0; k != 55; ++k)
      {
        v80 = realitykit_shader_api::surfaceFunctions[k];
        LOWORD(v299[1]) = 256;
        v81 = re::DynamicArray<re::PSOToolLinkedFunctionDescriptor>::add(v231, &v298);
        v8 = v298;
        if (v298 && (BYTE8(v298) & 1) != 0)
        {
          v8 = (*(*v298 + 40))(v81);
        }
      }

      for (m = 0; m != 74; ++m)
      {
        v83 = realitykit_shader_api::surface_privateFunctions[m];
        LOWORD(v299[1]) = 256;
        v84 = re::DynamicArray<re::PSOToolLinkedFunctionDescriptor>::add(v231, &v298);
        v8 = v298;
        if (v298 && (BYTE8(v298) & 1) != 0)
        {
          v8 = (*(*v298 + 40))(v84);
        }
      }

      for (n = 0; n != 48; ++n)
      {
        v86 = realitykit_shader_api::geometry_modifierFunctions[n];
        LOWORD(v299[1]) = 1;
        v87 = re::DynamicArray<re::PSOToolLinkedFunctionDescriptor>::add(v231, &v298);
        v8 = v298;
        if (v298 && (BYTE8(v298) & 1) != 0)
        {
          v8 = (*(*v298 + 40))(v87);
        }
      }

      for (ii = 0; ii != 57; ++ii)
      {
        v89 = realitykit_shader_api::geometry_modifier_privateFunctions[ii];
        LOWORD(v299[1]) = 1;
        v90 = re::DynamicArray<re::PSOToolLinkedFunctionDescriptor>::add(v231, &v298);
        v8 = v298;
        if (v298 && (BYTE8(v298) & 1) != 0)
        {
          v8 = (*(*v298 + 40))(v90);
        }
      }
    }

    else if (v59 == 2)
    {
      for (jj = 0; jj != 13; ++jj)
      {
        v61 = realitykit_shader_api::ui_geometry_modifier_privateFunctions[jj];
        LOWORD(v299[1]) = 1;
        v62 = re::DynamicArray<re::PSOToolLinkedFunctionDescriptor>::add(v231, &v298);
        v8 = v298;
        if (v298 && (BYTE8(v298) & 1) != 0)
        {
          v8 = (*(*v298 + 40))(v62);
        }
      }

      for (kk = 0; kk != 22; ++kk)
      {
        v64 = realitykit_shader_api::uisurface_privateFunctions[kk];
        LOWORD(v299[1]) = 256;
        v65 = re::DynamicArray<re::PSOToolLinkedFunctionDescriptor>::add(v231, &v298);
        v8 = v298;
        if (v298 && (BYTE8(v298) & 1) != 0)
        {
          v8 = (*(*v298 + 40))(v65);
        }
      }
    }

    if (v232)
    {
      v91 = v234;
      v92 = (v234 + 40 * v232);
      do
      {
        v298 = 0u;
        memset(v299, 0, sizeof(v299));
        v285 = 0;
        v283 = 0u;
        v284 = 0u;
        v286 = 0x7FFFFFFFLL;
        re::PSOToolManager::gatherFunctionConstantsForShader(a1, v243, v91, v240, v264, &v298, &v283);
        *&v280 = &v298;
        *(&v280 + 1) = 0;
        if (*&v299[0] >= 0x10uLL)
        {
          v93 = 0;
          v94 = v298;
          v95 = *&v299[0] >> 4;
          while (1)
          {
            v96 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v94), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
            *(&v280 + 1) = v96 ^ 0xFFFFLL;
            if (v96 != 0xFFFFLL)
            {
              break;
            }

            v93 -= 16;
            ++v94;
            if (!--v95)
            {
              goto LABEL_196;
            }
          }

          v97 = __clz(__rbit64(v96 ^ 0xFFFFLL));
          v98 = v97 - v93;
          *&v281 = v97 - v93;
          if (v97 + 1 != v93)
          {
            do
            {
              re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addOrReplace(v239, (*(v280 + 8) + 96 * v98), *(v280 + 8) + 96 * v98 + 32);
              re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v280);
              v98 = v281;
            }

            while (v281 != -1);
          }
        }

LABEL_196:
        v99 = v285;
        if (v285)
        {
          v100 = 0;
          v101 = v284;
          while (1)
          {
            v102 = *v101;
            v101 += 38;
            if (v102 < 0)
            {
              break;
            }

            if (v285 == ++v100)
            {
              LODWORD(v100) = v285;
              break;
            }
          }
        }

        else
        {
          LODWORD(v100) = 0;
        }

        if (v100 != v285)
        {
          v103 = v284;
          do
          {
            re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(&v235, (v103 + 152 * v100 + 8), v103 + 152 * v100 + 40);
            if (v285 <= v100 + 1)
            {
              v104 = v100 + 1;
            }

            else
            {
              v104 = v285;
            }

            v103 = v284;
            while (v104 - 1 != v100)
            {
              LODWORD(v100) = v100 + 1;
              if ((*(v284 + 152 * v100) & 0x80000000) != 0)
              {
                goto LABEL_212;
              }
            }

            LODWORD(v100) = v104;
LABEL_212:
            ;
          }

          while (v100 != v99);
        }

        re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v283);
        re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(&v298);
        v91 = (v91 + 40);
        a1 = v229;
      }

      while (v91 != v92);
    }
  }

  v297 = a2;
  v105 = v265;
  v296 = 0;
  v294 = 0;
  v293[1] = 0;
  v295 = 0;
  v106 = re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v293, v105);
  ++v295;
  if (v265)
  {
    v107 = v266;
    v108 = 32 * v265;
    do
    {
      re::DynamicString::DynamicString(&v298, v107);
      *&v283 = re::Hash<re::DynamicString>::operator()(&v283, &v298);
      re::DynamicArray<unsigned long>::add(v293, &v283);
      v106 = v298;
      if (v298 && (BYTE8(v298) & 1) != 0)
      {
        v106 = (*(*v298 + 40))();
      }

      v107 = (v107 + 32);
      v108 -= 32;
    }

    while (v108);
  }

  v109 = HIDWORD(v236);
  v292 = 0;
  v290 = 0;
  v289[0] = 0;
  v289[1] = 0;
  v291 = 0;
  re::DynamicArray<re::TechniqueFunctionConstant>::setCapacity(v289, v109);
  ++v291;
  v110 = v237;
  if (v237)
  {
    v111 = 0;
    v112 = v236;
    while (1)
    {
      v113 = *v112;
      v112 += 38;
      if (v113 < 0)
      {
        break;
      }

      if (v237 == ++v111)
      {
        LODWORD(v111) = v237;
        break;
      }
    }
  }

  else
  {
    LODWORD(v111) = 0;
  }

  if (v111 != v237)
  {
    v114 = v236;
    do
    {
      re::DynamicArray<re::TechniqueFunctionConstant>::add(v289, (v114 + 152 * v111 + 40));
      if (v237 <= v111 + 1)
      {
        v115 = v111 + 1;
      }

      else
      {
        v115 = v237;
      }

      v114 = v236;
      while (v115 - 1 != v111)
      {
        LODWORD(v111) = v111 + 1;
        if ((*(v236 + 152 * v111) & 0x80000000) != 0)
        {
          goto LABEL_236;
        }
      }

      LODWORD(v111) = v115;
LABEL_236:
      ;
    }

    while (v111 != v110);
  }

  re::FunctionConstantsEnumerator::createEnumerator(v239, v296, v294, v289, a1, v287);
  if (v267)
  {
    v116 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(&v283, &v268);
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(&v283, "EnableRuntimeFunctionConstants", &v298);
    if (v298 && (BYTE8(v298) & 1) != 0)
    {
      (*(*v298 + 40))();
    }

    re::StringID::StringID(&v280, &v248);
    v117 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v280 >> 31) ^ (v280 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v280 >> 31) ^ (v280 >> 1))) >> 27));
    v118 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 216, &v280, v117 ^ (v117 >> 31), &v298);
    if (HIDWORD(v298) == 0x7FFFFFFF)
    {
      if (v280)
      {
        if (v280)
        {
        }
      }

      v227 = 0;
      LOBYTE(v228) = 0;
    }

    else
    {
      v119 = *(a1 + 232) + 32 * HIDWORD(v298);
      if (v280)
      {
        if (v280)
        {
        }
      }

      v228 = *(v119 + 24);
      if (v228 == 1)
      {
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(&v283, "EnableManualVertexFetch", &v298);
        v118 = v298;
        if (v298)
        {
          if (BYTE8(v298))
          {
            v118 = (*(*v298 + 40))();
          }
        }
      }

      v227 = *(v119 + 25);
    }

    if (v294)
    {
      v120 = v296;
      v121 = &v296[v294];
      do
      {
        v271[0] = *v120;
        v122 = re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::find(v229, v271);
        re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::HashBrown(&v298, *(v229 + 8) + 72 * v122 + 8);
        v275 = &v298;
        v276 = 0;
        if (*&v299[0] >= 0x10uLL)
        {
          v123 = 0;
          v124 = v298;
          v125 = *&v299[0] >> 4;
          while (1)
          {
            v126 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v124), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
            v276 = v126 ^ 0xFFFFLL;
            if (v126 != 0xFFFFLL)
            {
              break;
            }

            v123 -= 16;
            ++v124;
            if (!--v125)
            {
              goto LABEL_272;
            }
          }

          v127 = __clz(__rbit64(v126 ^ 0xFFFFLL));
          v128 = v127 - v123;
          v277 = v127 - v123;
          if (v127 + 1 != v123)
          {
            do
            {
              v129 = (*(v275 + 1) + 96 * v128);
              v130 = std::to_string(&v272, v129[10]);
              if ((v272.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v131 = &v272;
              }

              else
              {
                v131 = v272.__r_.__value_.__r.__words[0];
              }

              re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(&v283, v129, &v280);
              if (v280)
              {
                if (BYTE8(v280))
                {
                  (*(*v280 + 40))();
                }

                v280 = 0u;
                v281 = 0u;
              }

              if (SHIBYTE(v272.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v272.__r_.__value_.__l.__data_);
              }

              re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v275);
              v128 = v277;
            }

            while (v277 != -1);
          }
        }

LABEL_272:
        re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(&v298);
        ++v120;
      }

      while (v120 != v121);
    }

    a1 = v229;
    *&v280 = v229;
    *(&v280 + 1) = v243;
    *&v281 = &v283;
    *(&v281 + 1) = v287;
    *&v282 = v289;
    *(&v282 + 1) = &v297;
    v132 = *(v229 + 1120);
    v298 = 0u;
    v299[0] = 0u;
    re::DynamicString::setCapacity(&v298, 0);
    v133 = re::PSOToolManager::enumerateFunctionConstantVariations(re::MaterialDefinitionFile const*,re::MaterialTechniqueData const&,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false> const&,re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,re::DynamicArray<re::PSOToolLinkedFunctionDescriptor> const&)::$_0::operator()(&v280, v247, v132, &v298);
    v134 = v298;
    if (v298 && (BYTE8(v298) & 1) != 0)
    {
      v134 = (*(*v298 + 40))();
    }

    v135 = *(v229 + 1120);
    v298 = 0u;
    v299[0] = 0u;
    re::DynamicString::setCapacity(&v298, 0);
    v136 = re::PSOToolManager::enumerateFunctionConstantVariations(re::MaterialDefinitionFile const*,re::MaterialTechniqueData const&,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false> const&,re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,re::DynamicArray<re::PSOToolLinkedFunctionDescriptor> const&)::$_0::operator()(&v280, v251, v135, &v298);
    v137 = v298;
    if (v298 && (BYTE8(v298) & 1) != 0)
    {
      v137 = (*(*v298 + 40))();
    }

    v279 = 0;
    v277 = 0;
    v275 = 0;
    v276 = 0;
    v278 = 0;
    v274 = 0;
    memset(&v272, 0, sizeof(v272));
    v273 = 0;
    if (*(v229 + 1120))
    {
      memset(v299, 0, 40);
      v298 = 0u;
      re::DynamicString::setCapacity(v299 + 1, 0);
      if (v232)
      {
        v138 = v234;
        v139 = 40 * v232;
        do
        {
          v140 = re::DynamicString::operator=((v299 + 8), v138);
          memset(v271, 0, sizeof(v271));
          re::DynamicString::setCapacity(v271, 0);
          v270 = re::PSOToolManager::enumerateFunctionConstantVariations(re::MaterialDefinitionFile const*,re::MaterialTechniqueData const&,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false> const&,re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,re::DynamicArray<re::PSOToolLinkedFunctionDescriptor> const&)::$_0::operator()(&v280, &v298, 1, v271);
          if (*(v138 + 32) == 1)
          {
            re::DynamicArray<unsigned long>::add(&v275, &v270);
          }

          if (*(v138 + 33) == 1)
          {
            re::DynamicArray<unsigned long>::add(&v272, &v270);
          }

          if (v271[0] && (v271[1] & 1) != 0)
          {
            (*(*v271[0] + 40))();
          }

          v138 = (v138 + 40);
          v139 -= 40;
        }

        while (v139);
      }

      if (*(&v299[0] + 1))
      {
        if (v299[1])
        {
          (*(**(&v299[0] + 1) + 40))();
        }

        memset(v299 + 8, 0, 32);
      }

      re::AssetHandle::~AssetHandle(&v298);
    }

    *&v298 = v133;
    *(&v298 + 1) = v136;
    v299[0] = v255;
    v299[1] = v256;
    v299[2] = v257;
    LODWORD(v300[0]) = v258;
    BYTE4(v300[0]) = v259;
    if (v259 == 1)
    {
      BYTE5(v300[0]) = v260;
    }

    re::DynamicArray<re::RenderAttachmentState>::DynamicArray(v300 + 8, v261);
    re::DynamicString::DynamicString(&v303, v243);
    v305 = v269;
    LOBYTE(v306) = v228;
    HIBYTE(v306) = v227 & 1;
    re::DynamicArray<unsigned long>::DynamicArray(&v307, &v275);
    re::DynamicArray<unsigned long>::DynamicArray(&v311 + 8, &v272);
    re::DynamicArray<re::PSOToolRenderDescriptor>::add(v229 + 856, &v298);
    if (*(&v311 + 1))
    {
      if (v314)
      {
        (*(**(&v311 + 1) + 40))();
      }

      v314 = 0;
      v312 = 0uLL;
      *(&v311 + 1) = 0;
      ++v313;
    }

    if (v307)
    {
      if (v311)
      {
        (*(*v307 + 40))();
      }

      *&v311 = 0;
      v308 = 0;
      v309 = 0;
      v307 = 0;
      ++v310;
    }

    if (v303)
    {
      if (BYTE8(v303))
      {
        (*(*v303 + 40))();
      }

      v303 = 0u;
      v304 = 0u;
    }

    if (*(&v300[0] + 1) && v302)
    {
      (*(**(&v300[0] + 1) + 40))();
    }

    if (v272.__r_.__value_.__r.__words[0] && v274)
    {
      (*(*v272.__r_.__value_.__l.__data_ + 40))();
    }

    if (v275 && v279)
    {
      (*(*v275 + 40))();
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v283);
  }

  v141 = v288;
  if (v288 <= *(a1 + 1080))
  {
    v230 = v288;
    if (*(v297 + 8))
    {
      v148 = *(v297 + 16);
    }

    else
    {
      v148 = (v297 + 9);
    }

    v157 = strlen(v148);
    v158 = MEMORY[0x1E69E5310];
    v159 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], v148, v157);
    v160 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v159, "_", 1);
    if (v244)
    {
      v161 = v246;
    }

    else
    {
      v161 = v245;
    }

    v162 = strlen(v161);
    v163 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v160, v161, v162);
    v164 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v163, "_", 1);
    if (v249)
    {
      v165 = v250;
    }

    else
    {
      v165 = &v249 + 1;
    }

    v166 = strlen(v165);
    v167 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v164, v165, v166);
    v168 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v167, "_", 1);
    if (v253)
    {
      v169 = v254;
    }

    else
    {
      v169 = &v253 + 1;
    }

    v170 = strlen(v169);
    v171 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v168, v169, v170);
    std::ios_base::getloc((v171 + *(*v171 - 24)));
    v172 = MEMORY[0x1E69E5318];
    v173 = std::locale::use_facet(&v298, MEMORY[0x1E69E5318]);
    (v173->__vftable[2].~facet_0)(v173, 10);
    std::locale::~locale(&v298);
    std::ostream::put();
    std::ostream::flush();
    v174 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v158, "    ", 4);
    v175 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v174, "constants:", 10);
    std::ios_base::getloc((v175 + *(*v175 - 24)));
    v176 = std::locale::use_facet(&v298, v172);
    (v176->__vftable[2].~facet_0)(v176, 10);
    std::locale::~locale(&v298);
    std::ostream::put();
    std::ostream::flush();
    if (v290)
    {
      v177 = v292;
      v178 = (v292 + 104 * v290);
      v179 = MEMORY[0x1E69E5310];
      v180 = MEMORY[0x1E69E5318];
      do
      {
        re::DynamicString::DynamicString(&v298, v177);
        v299[1] = *(v177 + 2);
        v181 = *(v177 + 3);
        v182 = *(v177 + 4);
        v183 = *(v177 + 5);
        v301 = *(v177 + 24);
        v300[0] = v182;
        v300[1] = v183;
        v299[2] = v181;
        v184 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v179, "      ", 6);
        if (BYTE8(v298))
        {
          v185 = *&v299[0];
        }

        else
        {
          v185 = &v298 + 9;
        }

        v186 = strlen(v185);
        v187 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v184, v185, v186);
        std::ios_base::getloc((v187 + *(*v187 - 24)));
        v188 = std::locale::use_facet(&v283, v180);
        (v188->__vftable[2].~facet_0)(v188, 10);
        std::locale::~locale(&v283);
        std::ostream::put();
        std::ostream::flush();
        if (v298 && (BYTE8(v298) & 1) != 0)
        {
          (*(*v298 + 40))();
        }

        v177 = (v177 + 104);
      }

      while (v177 != v178);
    }

    re::FunctionConstantsEnumerator::printDebugData(v287);
    v285 = 0;
    v283 = 0u;
    v284 = 0u;
    v286 = 0x7FFFFFFFLL;
    LODWORD(v282) = 0;
    v280 = 0u;
    v281 = 0u;
    *(&v282 + 4) = 0x7FFFFFFFLL;
    if (v230)
    {
      v189 = 0;
      v190 = 1;
      do
      {
        Permutation = re::FunctionConstantsEnumerator::createPermutation(v287, v189, v292, v290, &v275);
        v272.__r_.__value_.__r.__words[0] = 0;
        v271[0] = 0;
        if (v249)
        {
          v192 = v249 >> 1;
        }

        else
        {
          v192 = v249 >> 1;
        }

        if (v192)
        {
          v193 = v297;
          v194 = v279;
          v195 = v277;
          v298 = 0u;
          v299[0] = 0u;
          re::DynamicString::setCapacity(&v298, 0);
          Permutation = re::PSOToolManager::addFunctionConstantVariation(v229, v193, v243, v247, v194, v195, 0, &v298);
          v272.__r_.__value_.__r.__words[0] = Permutation;
          if (v298 && (BYTE8(v298) & 1) != 0)
          {
            (*(*v298 + 40))(v298, *&v299[0]);
            Permutation = v272.__r_.__value_.__r.__words[0];
          }

          if (Permutation)
          {
            Permutation = re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(&v283, &v272);
          }
        }

        if (v253)
        {
          v196 = v253 >> 1;
        }

        else
        {
          v196 = v253 >> 1;
        }

        if (v196)
        {
          v197 = v297;
          v198 = v279;
          v199 = v277;
          v298 = 0u;
          v299[0] = 0u;
          re::DynamicString::setCapacity(&v298, 0);
          v200 = re::PSOToolManager::addFunctionConstantVariation(v229, v197, v243, v251, v198, v199, 0, &v298);
          v271[0] = v200;
          if (v298 && (BYTE8(v298) & 1) != 0)
          {
            (*(*v298 + 40))(v298, *&v299[0]);
            v200 = v271[0];
          }

          if (v200)
          {
            re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(&v280, v271);
          }
        }

        if (v249)
        {
          v201 = v250;
        }

        else
        {
          v201 = &v249 + 1;
        }

        if (strcmp(v201, "realitykit::vsGeometryModifier") && v272.__r_.__value_.__r.__words[0] | v271[0])
        {
          *&v298 = v272.__r_.__value_.__r.__words[0];
          *(&v298 + 1) = v271[0];
          v299[0] = v255;
          v299[1] = v256;
          v299[2] = v257;
          LODWORD(v300[0]) = v258;
          BYTE4(v300[0]) = v259;
          if (v259 == 1)
          {
            BYTE5(v300[0]) = v260;
          }

          re::DynamicArray<re::RenderAttachmentState>::DynamicArray(v300 + 8, v261);
          re::DynamicString::DynamicString(&v303, v243);
          v305 = v269;
          v306 = 0;
          v308 = 0;
          v309 = 0;
          v307 = 0;
          v310 = 0;
          v314 = 0;
          v311 = 0u;
          v312 = 0u;
          v313 = 0;
          re::DynamicArray<re::PSOToolRenderDescriptor>::add(v229 + 856, &v298);
          if (*(&v311 + 1))
          {
            if (v314)
            {
              (*(**(&v311 + 1) + 40))();
            }

            v314 = 0;
            v312 = 0uLL;
            *(&v311 + 1) = 0;
            ++v313;
          }

          if (v307)
          {
            if (v311)
            {
              (*(*v307 + 40))();
            }

            *&v311 = 0;
            v308 = 0;
            v309 = 0;
            v307 = 0;
            ++v310;
          }

          if (v303)
          {
            if (BYTE8(v303))
            {
              (*(*v303 + 40))();
            }

            v303 = 0u;
            v304 = 0u;
          }

          if (*(&v300[0] + 1) && v302)
          {
            (*(**(&v300[0] + 1) + 40))();
          }
        }

        re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v275);
        v189 = v190;
      }

      while (v230 > v190++);
      v203 = (HIDWORD(v281) + HIDWORD(v284));
    }

    else
    {
      v203 = 0;
    }

    v204 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "Generated ", 10);
    v205 = MEMORY[0x1E69060D0](v204, v203);
    v206 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v205, " unique permutations for ", 25);
    if (v249)
    {
      v207 = v250;
    }

    else
    {
      v207 = &v249 + 1;
    }

    v208 = strlen(v207);
    v209 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v206, v207, v208);
    v210 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v209, " (", 2);
    v211 = MEMORY[0x1E69060E0](v210, HIDWORD(v284));
    v212 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v211, ")", 1);
    v213 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v212, " ", 1);
    if (v253)
    {
      v214 = v254;
    }

    else
    {
      v214 = &v253 + 1;
    }

    v215 = strlen(v214);
    v216 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v213, v214, v215);
    v217 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v216, " (", 2);
    v218 = MEMORY[0x1E69060E0](v217, HIDWORD(v281));
    v219 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v218, ")", 1);
    std::ios_base::getloc((v219 + *(*v219 - 24)));
    v220 = MEMORY[0x1E69E5318];
    v221 = std::locale::use_facet(&v298, MEMORY[0x1E69E5318]);
    (v221->__vftable[2].~facet_0)(v221, 10);
    std::locale::~locale(&v298);
    std::ostream::put();
    std::ostream::flush();
    std::ios_base::getloc((v219 + *(*v219 - 24)));
    v222 = std::locale::use_facet(&v298, v220);
    (v222->__vftable[2].~facet_0)(v222, 10);
    std::locale::~locale(&v298);
    std::ostream::put();
    std::ostream::flush();
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v280);
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v283);
  }

  else
  {
    v142 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "More than ", 10);
    v143 = MEMORY[0x1E69060F0](v142, *(a1 + 1080));
    v144 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v143, " permutations (", 15);
    v145 = MEMORY[0x1E69060F0](v144, v141);
    v146 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v145, ") to precompile for ", 20);
    if (*(v297 + 8))
    {
      v147 = *(v297 + 16);
    }

    else
    {
      v147 = (v297 + 9);
    }

    v149 = strlen(v147);
    v150 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v146, v147, v149);
    v151 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v150, "_", 1);
    if (v244)
    {
      v152 = v246;
    }

    else
    {
      v152 = v245;
    }

    v153 = strlen(v152);
    v154 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v151, v152, v153);
    v155 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v154, ", skipping.", 11);
    std::ios_base::getloc((v155 + *(*v155 - 24)));
    v156 = std::locale::use_facet(&v298, MEMORY[0x1E69E5318]);
    (v156->__vftable[2].~facet_0)(v156, 10);
    std::locale::~locale(&v298);
    std::ostream::put();
    std::ostream::flush();
  }

  re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit(v287);
  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v289);
  if (v293[0] && v296)
  {
    (*(*v293[0] + 40))();
  }

  v223 = v231[0];
  if (v231[0])
  {
    v224 = v234;
    if (v234)
    {
      if (v232)
      {
        v225 = 40 * v232;
        v226 = v234;
        do
        {
          re::DynamicString::deinit(v226);
          v226 = (v226 + 40);
          v225 -= 40;
        }

        while (v225);
      }

      (*(*v223 + 40))(v223, v224);
    }
  }

  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v235);
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(v239);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v240);
  re::MaterialTechniqueData::~MaterialTechniqueData(v243);
}

void re::PSOToolManager::gatherFunctionConstantsForShader(uint64_t a1, uint64_t a2, const re::DynamicString *a3, uint64_t a4, uint64_t a5, int8x16_t **a6, re::DynamicString *a7)
{
  v77 = *MEMORY[0x1E69E9840];
  v13 = re::Hash<re::DynamicString>::operator()(&v72, a3);
  re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v72, a1 + 64, a3, v13);
  if (HIDWORD(v73) == 0x7FFFFFFF)
  {
    if (*(a3 + 1))
    {
      v14 = *(a3 + 2);
    }

    else
    {
      v14 = (a3 + 9);
    }

    re::mtl::Library::makeFunction(&v72, (a1 + 208), v14);
    if (!v72)
    {
      v52 = std::operator<<[abi:nn200100]<std::char_traits<char>>(MEMORY[0x1E69E5300], "Failed to make function ");
      if (*(a3 + 1))
      {
        v53 = *(a3 + 2);
      }

      else
      {
        v53 = a3 + 9;
      }

      v54 = std::operator<<[abi:nn200100]<std::char_traits<char>>(v52, v53);
      std::endl[abi:nn200100]<char,std::char_traits<char>>(v54);
      re::internal::assertLog(4, v55, "assertion failure: '%s' (%s:line %i) ", "false", "gatherFunctionConstantsForShader", 260, a7);
      _os_crash("assertion failure: (false) ");
      __break(1u);
      return;
    }

    re::HashTable<re::DynamicString,NS::SharedPtr<MTL::Function>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(a1 + 64, a3, &v72);
    if (v72)
    {
    }
  }

  v15 = *re::HashTable<re::DynamicString,NS::SharedPtr<MTL::Function>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](a1 + 64, a3);
  v16 = v15;
  if (*(a2 + 404))
  {
    if (*(a2 + 8))
    {
      v17 = *(a2 + 16);
    }

    else
    {
      v17 = a2 + 9;
    }

    v70 = v15;
    re::parseVariationTable(v17, &v70, a5, &v72);
    if (v70)
    {

      v70 = 0;
    }

    if (v72)
    {
      if (&v73 != a6)
      {
        re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::copy(a6, &v73);
      }
    }

    else
    {
      v18 = MEMORY[0x1E69E5300];
      v19 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "Failed to parse function constants for ", 39);
      if (*(a2 + 8))
      {
        v20 = *(a2 + 16);
      }

      else
      {
        v20 = (a2 + 9);
      }

      v21 = strlen(v20);
      v22 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v19, v20, v21);
      std::ios_base::getloc((v22 + *(*v22 - 24)));
      v23 = MEMORY[0x1E69E5318];
      v24 = std::locale::use_facet(&v69, MEMORY[0x1E69E5318]);
      (v24->__vftable[2].~facet_0)(v24, 10);
      std::locale::~locale(&v69);
      std::ostream::put();
      std::ostream::flush();
      if (v74)
      {
        v25 = v76;
      }

      else
      {
        v25 = v75;
      }

      v26 = strlen(v25);
      v27 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v18, v25, v26);
      std::ios_base::getloc((v27 + *(*v27 - 24)));
      v28 = std::locale::use_facet(&v69, v23);
      (v28->__vftable[2].~facet_0)(v28, 10);
      std::locale::~locale(&v69);
      std::ostream::put();
      std::ostream::flush();
    }

    if (v72 == 1)
    {
      re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(&v73);
    }

    else if (v73 && (v74 & 1) != 0)
    {
      (*(*v73 + 40))();
    }
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(&v69, a4);
  v29 = *(a2 + 272);
  if (v29)
  {
    v30 = 32 * v29 - 32;
    v31 = (*(a2 + 288) + 1);
    do
    {
      v33 = *v31;
      v31 += 32;
      v32 = v33;
      if (v33)
      {
        break;
      }

      v34 = v30;
      v30 -= 32;
    }

    while (v34);
  }

  else
  {
    v32 = *(a2 + 201);
  }

  re::DynamicString::find(&v72, a2, "Selection", 9, 0);
  re::MaterialManager::addSupportConstantsToArray(1, 1, 1, v32 & 1, 0, 1, 1, v72, &v69);
  if (*(a2 + 8))
  {
    v35 = *(a2 + 16);
  }

  else
  {
    v35 = (a2 + 9);
  }

  v36 = [v16 functionConstantsDictionary];
  *&v65[0].__locale_ = 0u;
  v66 = 0u;
  v67 = 0;
  v68 = 0x7FFFFFFFLL;
  v37 = [v36 keyEnumerator];
  v38 = [v37 nextObject];
  if (v38)
  {
    v39 = v38;
    do
    {
      v72 = [v39 UTF8String];
      v71 = [v36 objectForKey_];
      re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::add(v65, &v72, &v71);
      if (v71)
      {
      }

      v39 = [v37 nextObject];
    }

    while (v39);
  }

  v63[0] = 0;
  v57[0] = 0;
  v40 = re::parseFunctionConstants(v35, v65, &v69, v63, v57, 0, 0, 0, &v72);
  if (v57[0] == 1 && v58)
  {
    if (v62)
    {
      (*(*v58 + 40))(v40);
    }

    v62 = 0;
    v59 = 0;
    v60 = 0;
    v58 = 0;
    ++v61;
  }

  if (v63[0] == 1)
  {
    re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v64);
  }

  re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v65);
  if (v72)
  {
    re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(a7, &v73);
  }

  else
  {
    v41 = MEMORY[0x1E69E5300];
    v42 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "Failed to parse function constants for ", 39);
    if (*(a2 + 8))
    {
      v43 = *(a2 + 16);
    }

    else
    {
      v43 = (a2 + 9);
    }

    v44 = strlen(v43);
    v45 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v42, v43, v44);
    std::ios_base::getloc((v45 + *(*v45 - 24)));
    v46 = MEMORY[0x1E69E5318];
    v47 = std::locale::use_facet(v65, MEMORY[0x1E69E5318]);
    (v47->__vftable[2].~facet_0)(v47, 10);
    std::locale::~locale(v65);
    std::ostream::put();
    std::ostream::flush();
    if (v74)
    {
      v48 = v76;
    }

    else
    {
      v48 = v75;
    }

    v49 = strlen(v48);
    v50 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v41, v48, v49);
    std::ios_base::getloc((v50 + *(*v50 - 24)));
    v51 = std::locale::use_facet(v65, v46);
    (v51->__vftable[2].~facet_0)(v51, 10);
    std::locale::~locale(v65);
    std::ostream::put();
    std::ostream::flush();
  }

  if (v72 == 1)
  {
    re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v73);
  }

  else if (v73 && (v74 & 1) != 0)
  {
    (*(*v73 + 40))();
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v69);
  if (v16)
  {
  }
}

id re::HashTable<re::DynamicString,NS::SharedPtr<MTL::Function>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(uint64_t a1, const re::DynamicString *a2, id *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v12, a2);
  result = re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v9, a1, a2, v6);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::DynamicString,NS::SharedPtr<MTL::Function>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v10, v9);
    re::DynamicString::DynamicString((v8 + 8), a2);
    result = *a3;
    *(v8 + 40) = result;
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,NS::SharedPtr<MTL::Function>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](uint64_t a1, void *a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v6, a1, a2, v4);
  return *(a1 + 16) + 56 * v7 + 40;
}

unint64_t re::PSOToolManager::enumerateFunctionConstantVariations(re::MaterialDefinitionFile const*,re::MaterialTechniqueData const&,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false> const&,re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,re::DynamicArray<re::PSOToolLinkedFunctionDescriptor> const&)::$_0::operator()(uint64_t *a1, uint64_t a2, uint64_t a3, re::DynamicString *a4)
{
  v5 = a3;
  v74 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v60 = 0;
  memset(v59, 0, sizeof(v59));
  v61 = 0x7FFFFFFFLL;
  v58 = 0;
  v55[1] = 0;
  v56 = 0;
  v55[0] = 0;
  v57 = 0;
  re::DynamicString::DynamicString(&v53, (a2 + 24));
  if (v54)
  {
    v10 = v54 >> 1;
  }

  else
  {
    v10 = v54 >> 1;
  }

  if (v10)
  {
    v38 = a4;
    v11 = [*re::HashTable<re::DynamicString NS:re::Hash<re::DynamicString> :re::EqualTo<re::DynamicString> SharedPtr<MTL:true :{false>::operator[](v8 + 64, &v53), sel_functionConstantsDictionary}Function>];
    memset(v50, 0, sizeof(v50));
    v51 = 0;
    v52 = 0x7FFFFFFFLL;
    v12 = [v11 keyEnumerator];
    v13 = [v12 nextObject];
    if (v13)
    {
      v14 = v13;
      do
      {
        v62 = [v14 UTF8String];
        v69 = [v11 objectForKey_];
        re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::add(v50, &v62, &v69);
        if (v69)
        {
        }

        v14 = [v12 nextObject];
      }

      while (v14);
    }

    v15 = a1[1];
    if (*(v15 + 8))
    {
      v16 = *(v15 + 16);
    }

    else
    {
      v16 = (v15 + 9);
    }

    v18 = a1[2];
    v48[0] = 0;
    v42[0] = 0;
    v19 = re::parseFunctionConstants(v16, v50, v18, v48, v42, 0, 0, 1, &v69);
    if (v42[0] == 1 && v43)
    {
      if (v47)
      {
        (*(*v43 + 40))(v19);
      }

      v47 = 0;
      v44 = 0;
      v45 = 0;
      v43 = 0;
      ++v46;
    }

    if (v48[0] == 1)
    {
      re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v49);
    }

    v20 = v73;
    if (v73)
    {
      v21 = 0;
      v22 = v72;
      while (1)
      {
        v23 = *v22;
        v22 += 38;
        if (v23 < 0)
        {
          break;
        }

        if (v73 == ++v21)
        {
          LODWORD(v21) = v73;
          break;
        }
      }
    }

    else
    {
      LODWORD(v21) = 0;
    }

    if (v21 != v73)
    {
      v24 = v72;
      do
      {
        v25 = &v24[38 * v21];
        re::DynamicString::DynamicString(&v62, (v25 + 10));
        v64 = *(v25 + 18);
        v26 = *(v25 + 22);
        v27 = *(v25 + 26);
        v28 = *(v25 + 30);
        v68 = v25[34];
        v66 = v27;
        v67 = v28;
        v65 = v26;
        if (!re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey(v59, &v62))
        {
          re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v59, &v62);
          v29 = re::DynamicArray<re::TechniqueFunctionConstant>::add(v55, &v62);
        }

        if (v62 && (v63 & 1) != 0)
        {
          (*(*v62 + 40))(v29);
        }

        if (v73 <= v21 + 1)
        {
          v30 = v21 + 1;
        }

        else
        {
          v30 = v73;
        }

        v24 = v72;
        while (v30 - 1 != v21)
        {
          LODWORD(v21) = v21 + 1;
          if (v72[38 * v21] < 0)
          {
            goto LABEL_42;
          }
        }

        LODWORD(v21) = v30;
LABEL_42:
        ;
      }

      while (v21 != v20);
    }

    re::FunctionConstantsEnumerator::createPermutation(a1[3], 0, *(a1[4] + 32), *(a1[4] + 16), v39);
    if (v40)
    {
      v31 = v41;
      v32 = (v41 + 104 * v40);
      do
      {
        re::DynamicString::DynamicString(&v62, v31);
        v64 = *(v31 + 2);
        v33 = *(v31 + 3);
        v34 = *(v31 + 4);
        v35 = *(v31 + 5);
        v68 = *(v31 + 24);
        v66 = v34;
        v67 = v35;
        v65 = v33;
        if (!re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey(v59, &v62))
        {
          re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v59, &v62);
          v36 = re::DynamicArray<re::TechniqueFunctionConstant>::add(v55, &v62);
        }

        if (v62 && (v63 & 1) != 0)
        {
          (*(*v62 + 40))(v36);
        }

        v31 = (v31 + 104);
      }

      while (v31 != v32);
    }

    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v39);
    v17 = re::PSOToolManager::addFunctionConstantVariation(v8, *a1[5], a1[1], a2, v58, v56, v5, v38);
    if (v69 == 1)
    {
      re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v70);
    }

    else if (v70 && (v71 & 1) != 0)
    {
      (*(*v70 + 40))();
    }

    v9.n128_f64[0] = re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v50);
  }

  else
  {
    v17 = 0;
  }

  if (v53 && (v54 & 1) != 0)
  {
    (*(*v53 + 40))(v9);
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v55);
  re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v59);
  return v17;
}

void re::DynamicArray<re::PSOToolRenderDescriptor>::add(uint64_t a1, uint64_t a2)
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

        re::DynamicArray<re::PSOToolRenderDescriptor>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::PSOToolRenderDescriptor>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  re::PSOToolRenderDescriptor::PSOToolRenderDescriptor(*(a1 + 32) + 232 * v5, a2);
  ++*(a1 + 16);
  ++*(a1 + 24);
}

unint64_t re::PSOToolManager::addFunctionConstantVariation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int a7, re::DynamicString *a8)
{
  v145 = *MEMORY[0x1E69E9840];
  re::DynamicString::DynamicString(&v118, (a4 + 24));
  v100 = a1;
  v11 = [*re::HashTable<re::DynamicString NS:re::Hash<re::DynamicString> :re::EqualTo<re::DynamicString> SharedPtr<MTL:true :{false>::operator[](a1 + 64, &v118), sel_functionConstantsDictionary}Function>];
  v114 = 0u;
  v115 = 0u;
  v116 = 0;
  v117 = 0x7FFFFFFFLL;
  v12 = [v11 keyEnumerator];
  v13 = [v12 nextObject];
  if (v13)
  {
    v14 = v13;
    do
    {
      *&v130 = [(_anonymous_namespace_ *)v14 UTF8String];
      v121 = [v11 objectForKey_];
      re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::add(&v114, &v130, &v121);
      if (v121)
      {
      }

      v13 = [v12 nextObject];
      v14 = v13;
    }

    while (v13);
  }

  v102[1] = 0;
  v104 = 0;
  v103 = 0;
  v105 = 0;
  memset(&v106[1], 0, 24);
  v15 = re::DynamicString::setCapacity(v106, 0);
  v108 = 0u;
  v107 = 0u;
  v16 = re::DynamicString::setCapacity(&v107, 0);
  v110 = 0u;
  v109 = 0u;
  v17 = re::DynamicString::setCapacity(&v109, 0);
  v112 = 0u;
  v111 = 0u;
  v18 = re::DynamicString::setCapacity(&v111, 0);
  re::DynamicArray<re::TechniqueFunctionConstant>::setCapacity(v102, a6);
  ++v104;
  if (a6)
  {
    v19 = a5 + 104 * a6;
    do
    {
      re::DynamicString::DynamicString(&v130, a5);
      *v132 = *(a5 + 32);
      v20 = *(a5 + 48);
      v21 = *(a5 + 64);
      v22 = *(a5 + 80);
      *&v132[64] = *(a5 + 96);
      *&v132[32] = v21;
      *&v132[48] = v22;
      *&v132[16] = v20;
      if (BYTE8(v130))
      {
        v23 = v131;
      }

      else
      {
        v23 = &v130 + 9;
      }

      v136 = v23;
      re::HashTable<char const*,NS::SharedPtr<MTL::FunctionConstant>,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::findEntry<char const*>(&v114, &v136, &v121);
      if (v122 != 0x7FFFFFFF)
      {
        v24 = re::DynamicArray<re::TechniqueFunctionConstant>::add(v102, &v130);
      }

      if (v130 && (BYTE8(v130) & 1) != 0)
      {
        (*(*v130 + 40))(v24);
      }

      a5 += 104;
    }

    while (a5 != v19);
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::DynamicArray(&v130, v102);
  re::DynamicString::DynamicString(&v132[8], v106);
  re::DynamicString::DynamicString(&v132[40], &v107);
  re::DynamicString::DynamicString(v133, &v109);
  re::DynamicString::DynamicString(v134, &v111);
  v135 = v113;
  re::DynamicArray<re::TechniqueFunctionConstant>::DynamicArray(&v121, v102);
  re::DynamicString::DynamicString(v125, v106);
  re::DynamicString::DynamicString(v126, &v107);
  re::DynamicString::DynamicString(v127, &v109);
  re::DynamicString::DynamicString(v128, &v111);
  v129 = v113;
  if (v131)
  {
    v25 = *v132;
    v26 = *v132 + 104 * v131;
    while (1)
    {
      re::DynamicString::DynamicString(&v136, v25);
      v140 = *(v25 + 32);
      v27 = *(v25 + 48);
      v28 = *(v25 + 64);
      v29 = *(v25 + 80);
      v144 = *(v25 + 96);
      v142 = v28;
      v143 = v29;
      v141 = v27;
      v31 = v137;
      v30 = v139;
      if (v137)
      {
        v32 = v139;
      }

      else
      {
        v32 = v138;
      }

      v33 = strcmp(v32, "EnableVRROnCapableDevice");
      if ((v31 & 1) != 0 && v136)
      {
        (*(*v136 + 40))(v136, v30);
      }

      if (!v33)
      {
        break;
      }

      v25 += 104;
      if (v25 == v26)
      {
        goto LABEL_27;
      }
    }

    if (v123)
    {
      v43 = v124;
      v44 = (v124 + 104 * v123);
      while (1)
      {
        re::DynamicString::DynamicString(&v136, v43);
        v140 = *(v43 + 2);
        v45 = *(v43 + 3);
        v46 = *(v43 + 4);
        v47 = *(v43 + 5);
        v144 = *(v43 + 24);
        v142 = v46;
        v143 = v47;
        v141 = v45;
        v48 = v137;
        v49 = v139;
        v50 = (v137 & 1) != 0 ? v139 : v138;
        if (!strcmp(v50, "EnableVRROnCapableDevice"))
        {
          break;
        }

        if ((v48 & 1) != 0 && v136)
        {
          (*(*v136 + 40))(v136, v49);
        }

        v43 = (v43 + 104);
        if (v43 == v44)
        {
          goto LABEL_95;
        }
      }

      v60 = *(&v140 + 4);
      if ((v48 & 1) != 0 && v136)
      {
        (*(*v136 + 40))(v136, v49);
      }

      if (v60)
      {
LABEL_27:
        if (v131)
        {
          v34 = *v132;
          v35 = *v132 + 104 * v131;
          while (1)
          {
            re::DynamicString::DynamicString(&v136, v34);
            v140 = *(v34 + 32);
            v36 = *(v34 + 48);
            v37 = *(v34 + 64);
            v38 = *(v34 + 80);
            v144 = *(v34 + 96);
            v142 = v37;
            v143 = v38;
            v141 = v36;
            v40 = v137;
            v39 = v139;
            if (v137)
            {
              v41 = v139;
            }

            else
            {
              v41 = v138;
            }

            v42 = strcmp(v41, "EnableSingleRMAS");
            if ((v40 & 1) != 0 && v136)
            {
              (*(*v136 + 40))(v136, v39);
            }

            if (!v42)
            {
              break;
            }

            v34 += 104;
            if (v34 == v35)
            {
              goto LABEL_95;
            }
          }

          if (v131)
          {
            v51 = *v132;
            v52 = *v132 + 104 * v131;
            while (1)
            {
              re::DynamicString::DynamicString(&v136, v51);
              v140 = *(v51 + 32);
              v53 = *(v51 + 48);
              v54 = *(v51 + 64);
              v55 = *(v51 + 80);
              v144 = *(v51 + 96);
              v142 = v54;
              v143 = v55;
              v141 = v53;
              v57 = v137;
              v56 = v139;
              if (v137)
              {
                v58 = v139;
              }

              else
              {
                v58 = v138;
              }

              v59 = strcmp(v58, "EnableSeparateRMAS");
              if ((v57 & 1) != 0 && v136)
              {
                (*(*v136 + 40))(v136, v56);
              }

              if (!v59)
              {
                break;
              }

              v51 += 104;
              if (v51 == v52)
              {
                goto LABEL_95;
              }
            }

            if (v123)
            {
              v61 = v124;
              v62 = (v124 + 104 * v123);
              while (1)
              {
                re::DynamicString::DynamicString(&v136, v61);
                v140 = *(v61 + 2);
                v63 = *(v61 + 3);
                v64 = *(v61 + 4);
                v65 = *(v61 + 5);
                v144 = *(v61 + 24);
                v142 = v64;
                v143 = v65;
                v141 = v63;
                v66 = v137;
                v67 = v139;
                v68 = (v137 & 1) != 0 ? v139 : v138;
                if (!strcmp(v68, "EnableSingleRMAS"))
                {
                  break;
                }

                if ((v66 & 1) != 0 && v136)
                {
                  (*(*v136 + 40))(v136, v67);
                }

                v61 = (v61 + 104);
                if (v61 == v62)
                {
                  goto LABEL_95;
                }
              }

              v69 = *(&v140 + 4);
              if ((v66 & 1) != 0 && v136)
              {
                (*(*v136 + 40))(v136, v67);
              }

              if (v69 && v123)
              {
                v70 = v124;
                v71 = (v124 + 104 * v123);
                while (1)
                {
                  re::DynamicString::DynamicString(&v136, v70);
                  v140 = *(v70 + 2);
                  v72 = *(v70 + 3);
                  v73 = *(v70 + 4);
                  v74 = *(v70 + 5);
                  v144 = *(v70 + 24);
                  v142 = v73;
                  v143 = v74;
                  v141 = v72;
                  v75 = (v137 & 1) == 0;
                  v76 = (v137 & 1) != 0 ? v139 : v138;
                  v77 = strcmp(v76, "EnableSeparateRMAS");
                  v78 = !v136 || v75;
                  if (!v77)
                  {
                    break;
                  }

                  if (!v78)
                  {
                    (*(*v136 + 40))();
                  }

                  v70 = (v70 + 104);
                  if (v70 == v71)
                  {
                    goto LABEL_95;
                  }
                }

                if (!v78)
                {
                  (*(*v136 + 40))();
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_95:
  if (v128[0])
  {
    if (v128[1])
    {
      (*(*v128[0] + 40))();
    }

    memset(v128, 0, sizeof(v128));
  }

  if (v127[0])
  {
    if (v127[1])
    {
      (*(*v127[0] + 40))();
    }

    memset(v127, 0, sizeof(v127));
  }

  if (v126[0])
  {
    if (v126[1])
    {
      (*(*v126[0] + 40))();
    }

    memset(v126, 0, sizeof(v126));
  }

  if (v125[0])
  {
    if (v125[1])
    {
      (*(*v125[0] + 40))();
    }

    memset(v125, 0, sizeof(v125));
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v121);
  if (v134[0])
  {
    if (v134[1])
    {
      (*(*v134[0] + 40))();
    }

    memset(v134, 0, sizeof(v134));
  }

  if (v133[0])
  {
    if (v133[1])
    {
      (*(*v133[0] + 40))();
    }

    memset(v133, 0, sizeof(v133));
  }

  if (*&v132[40])
  {
    if (v132[48])
    {
      (*(**&v132[40] + 40))();
    }

    memset(&v132[40], 0, 32);
  }

  if (*&v132[8])
  {
    if (v132[16])
    {
      (*(**&v132[8] + 40))();
    }

    memset(&v132[8], 0, 32);
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v130);
  re::DynamicString::operator=(v106, &v118);
  *&v130 = v105;
  *(&v130 + 1) = v103;
  if (v106[1])
  {
    v79 = v106[2];
  }

  else
  {
    v79 = &v106[1] + 1;
  }

  FunctionVariantHash = re::generateFunctionVariantHash(&v130, v79);
  v82 = FunctionVariantHash;
  v121 = FunctionVariantHash;
  if (!*(v100 + 408) || (v83 = *(*(v100 + 416) + 4 * (FunctionVariantHash % *(v100 + 432))), v83 == 0x7FFFFFFF))
  {
LABEL_135:
    if (*(a2 + 8))
    {
      v85 = *(a2 + 16);
    }

    else
    {
      v85 = a2 + 9;
    }

    if (*(a3 + 8))
    {
      v86 = *(a3 + 16);
    }

    else
    {
      v86 = a3 + 9;
    }

    if (v119)
    {
      v87 = *&v120[7];
    }

    else
    {
      v87 = v120;
    }

    re::DynamicString::format(&v130, "%s_%s_%s_%zu", v81, v85, v86, v87, FunctionVariantHash);
    re::DynamicString::operator=(&v107, &v130);
    if (v130 && (BYTE8(v130) & 1) != 0)
    {
      (*(*v130 + 40))();
    }

    re::AssetHandle::serializationString(a4, v101);
    re::makeTruncatedAssetPath(v101, &v130);
    re::DynamicString::operator=(&v109, &v130);
    if (v130)
    {
      if (BYTE8(v130))
      {
        (*(*v130 + 40))();
      }

      v130 = 0u;
      v131 = 0u;
    }

    if (*&v101[0])
    {
      if (BYTE8(v101[0]))
      {
        (*(**&v101[0] + 40))();
      }

      memset(v101, 0, sizeof(v101));
    }

    if (BYTE8(v109))
    {
      v88 = *(&v109 + 1) >> 1;
    }

    else
    {
      v88 = BYTE8(v109) >> 1;
    }

    if (!v88)
    {
      *&v130 = "default.metallib";
      *(&v130 + 1) = 16;
      re::DynamicString::operator=(&v109, &v130);
    }

    if (a7)
    {
      *&v130 = "default-corere.metallib";
      *(&v130 + 1) = 23;
      re::DynamicString::operator=(&v109, &v130);
    }

    v89 = *(a8 + 1);
    if (v89)
    {
      v90 = v89 >> 1;
    }

    else
    {
      v90 = v89 >> 1;
    }

    if (v90)
    {
      re::DynamicString::operator=(&v111, a8);
    }

    v91 = re::Hash<re::DynamicString>::operator()(&v130, &v109);
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v100 + 688, v91, &v130, &v109);
    if (HIDWORD(v130) == 0x7FFFFFFF)
    {
      v92 = (BYTE8(v109) & 1) != 0 ? *(&v109 + 1) >> 1 : BYTE8(v109) >> 1;
      re::DynamicString::substr(&v130, &v109, 0, v92 - 9);
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(v100 + 688, &v109, &v130);
      if (v130)
      {
        if (BYTE8(v130))
        {
          (*(*v130 + 40))();
        }
      }
    }

    LOBYTE(v113) = HIDWORD(v115) != 0;
    v130 = 0uLL;
    *&v131 = 0;
    re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(&v130, v100 + 408, v82, v82);
    if (HIDWORD(v130) == 0x7FFFFFFF)
    {
      re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addInternal<unsigned long const&,re::FunctionVariantDescriptor const&>(v100 + 408, v130, DWORD2(v130), &v121, v102);
    }
  }

  else
  {
    v84 = *(v100 + 424);
    while (*(v84 + 200 * v83 + 8) != FunctionVariantHash)
    {
      v83 = *(v84 + 200 * v83) & 0x7FFFFFFF;
      if (v83 == 0x7FFFFFFF)
      {
        goto LABEL_135;
      }
    }
  }

  if (v111)
  {
    if (BYTE8(v111))
    {
      (*(*v111 + 40))();
    }

    v112 = 0u;
    v111 = 0u;
  }

  if (v109)
  {
    if (BYTE8(v109))
    {
      (*(*v109 + 40))();
    }

    v110 = 0u;
    v109 = 0u;
  }

  if (v107)
  {
    if (BYTE8(v107))
    {
      (*(*v107 + 40))();
    }

    v108 = 0u;
    v107 = 0u;
  }

  if (v106[0])
  {
    if (v106[1])
    {
      (*(*v106[0] + 40))();
    }

    memset(v106, 0, sizeof(v106));
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v102);
  v93 = re::HashTable<unsigned long long,NS::SharedPtr<MTL::SamplerState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v114);
  if (v118 && (v119 & 1) != 0)
  {
    (*(*v118 + 40))(v93);
  }

  return v82;
}

uint64_t re::MaterialTechniqueData::operator=(uint64_t a1, uint64_t a2)
{
  v4 = re::DynamicString::operator=(a1, a2);
  re::DynamicString::operator=((v4 + 32), (a2 + 32));
  re::AssetHandle::operator=(a1 + 64, (a2 + 64));
  re::AssetHandle::operator=(a1 + 88, (a2 + 88));
  re::DynamicString::operator=((a1 + 112), (a2 + 112));
  re::AssetHandle::operator=(a1 + 144, (a2 + 144));
  re::DynamicString::operator=((a1 + 168), (a2 + 168));
  v5 = *(a2 + 200);
  v6 = *(a2 + 216);
  v7 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v7;
  *(a1 + 216) = v6;
  *(a1 + 200) = v5;
  if (*(a1 + 252))
  {
    if ((*(a2 + 252) & 1) == 0)
    {
      *(a1 + 252) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((*(a2 + 252) & 1) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 252) = 1;
  }

  *(a1 + 253) = *(a2 + 253);
LABEL_7:
  re::DynamicArray<re::RenderAttachmentState>::operator=(a1 + 256, (a2 + 256));
  re::DynamicString::operator=((a1 + 296), (a2 + 296));
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((a1 + 328), a2 + 328);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(a1 + 376, a2 + 376);
  re::DynamicArray<re::DynamicString>::operator=(a1 + 424, (a2 + 424));
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((a1 + 464), a2 + 464);
  re::DynamicArray<re::DynamicString>::operator=(a1 + 512, (a2 + 512));
  *(a1 + 552) = *(a2 + 552);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((a1 + 560), a2 + 560);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(a1 + 608, a2 + 608);
  *(a1 + 656) = *(a2 + 656);
  if (*(a1 + 657))
  {
    if ((*(a2 + 657) & 1) == 0)
    {
      *(a1 + 657) = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if ((*(a2 + 657) & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a1 + 657) = 1;
  }

  *(a1 + 658) = *(a2 + 658);
LABEL_13:
  if ((*(a1 + 659) & 1) == 0)
  {
    if ((*(a2 + 659) & 1) == 0)
    {
      return a1;
    }

    *(a1 + 659) = 1;
LABEL_18:
    *(a1 + 660) = *(a2 + 660);
    return a1;
  }

  if (*(a2 + 659))
  {
    goto LABEL_18;
  }

  *(a1 + 659) = 0;
  return a1;
}

uint64_t re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addOrReplace(uint64_t *a1, const re::DynamicString *a2, uint64_t a3)
{
  v6 = re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::find(a1, a2);
  if (v6 == -1)
  {

    return re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::internalAdd(a1, a2, a3);
  }

  else
  {
    v7 = a1[1] + 96 * v6;
    *(v7 + 32) = *a3;
    result = re::DynamicArray<unsigned long long>::operator=(v7 + 40, (a3 + 8));
    v9 = *(a3 + 56);
    *(v7 + 80) = *(a3 + 48);
    *(v7 + 88) = v9;
  }

  return result;
}

double re::DynamicArray<re::PSOToolLinkedFunctionDescriptor>::add(uint64_t a1, uint64_t a2)
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

        re::DynamicArray<re::PSOToolLinkedFunctionDescriptor>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::PSOToolLinkedFunctionDescriptor>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 40 * v5;
  result = 0.0;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 24) = *(a2 + 24);
  v13 = *(a2 + 8);
  *v11 = *a2;
  *a2 = 0;
  v14 = *(a2 + 16);
  *(a2 + 24) = 0;
  v16 = *(v11 + 8);
  v15 = *(v11 + 16);
  *(v11 + 8) = v13;
  *(v11 + 16) = v14;
  *(a2 + 8) = v16;
  *(a2 + 16) = v15;
  *(v11 + 32) = *(a2 + 32);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

uint64_t validateAlias(uint64_t result)
{
  v1 = *(result + 8);
  v2 = (v1 & 1) == 0;
  v3 = v1 >> 1;
  if ((v1 & 1) == 0)
  {
    v3 = v1 >> 1;
  }

  if (v3)
  {
    v4 = 0;
    do
    {
      if (v2)
      {
        v5 = *(result + 9 + v4);
        v6 = result + 9;
      }

      else
      {
        v6 = *(result + 16);
        v5 = *(v6 + v4);
      }

      if (v5 == 32)
      {
        *(v6 + v4) = 95;
        v1 = *(result + 8);
      }

      ++v4;
      v2 = (v1 & 1) == 0;
      v7 = v1 >> 1;
      if ((v1 & 1) == 0)
      {
        v7 = v1 >> 1;
      }
    }

    while (v7 > v4);
  }

  return result;
}

uint64_t generateJSONForFunctionVariant(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  v88 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 24);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 22) = 3;
  v77 = 0x150000000000;
  __dst = 0uLL;
  re::DynamicString::DynamicString(&v57, (a2 + 9));
  validateAlias(&v57);
  if (v58)
  {
    v9 = *&v59[7];
  }

  else
  {
    v9 = v59;
  }

  v10 = strlen(v9);
  v11 = v10;
  if (v10 > 0x15)
  {
    HIWORD(v77) = 3077;
    __dst.n128_u32[0] = v10;
    p_dst = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(v8, v10 + 1);
    __dst.n128_u64[1] = p_dst;
  }

  else
  {
    HIWORD(v77) = 7173;
    BYTE5(v77) = 21 - v10;
    p_dst = &__dst;
  }

  memcpy(p_dst, v9, v11);
  p_dst->n128_u8[v11] = 0;
  v63 = 0x405000000000000;
  *(&v62 + 1) = "label";
  *&v62 = 5;
  rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(a1, &v62, &__dst, v8);
  v13 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](a4, a2 + 13);
  if (*(v13 + 8))
  {
    v15 = *(v13 + 16);
  }

  else
  {
    v15 = v13 + 9;
  }

  if (a2[6])
  {
    v16 = a2[7];
  }

  else
  {
    v16 = a2 + 49;
  }

  re::DynamicString::format(&v54, "alias:%s#%s", v14, v15, v16);
  validateAlias(&v54);
  v75 = 0x150000000000;
  v74 = 0uLL;
  v51 = v55;
  if (v55)
  {
    v17 = *&v56[7];
  }

  else
  {
    v17 = v56;
  }

  v18 = strlen(v17);
  v19 = v18;
  if (v18 > 0x15)
  {
    HIWORD(v75) = 3077;
    v74.n128_u32[0] = v18;
    v20 = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(v8, v18 + 1);
    v74.n128_u64[1] = v20;
  }

  else
  {
    HIWORD(v75) = 7173;
    BYTE5(v75) = 21 - v18;
    v20 = &v74;
  }

  memcpy(v20, v17, v19);
  v20->n128_u8[v19] = 0;
  v63 = 0x405000000000000;
  *(&v62 + 1) = "function";
  *&v62 = 8;
  rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(a1, &v62, &v74, v8);
  v21 = a2[18];
  v22 = v21 >> 1;
  if ((v21 & 1) == 0)
  {
    v22 = v21 >> 1;
  }

  if (v22)
  {
    v70 = 0x150000000000;
    v69 = 0uLL;
    if (v21)
    {
      v23 = a2[19];
    }

    else
    {
      v23 = a2 + 145;
    }

    v24 = strlen(v23);
    v25 = v24;
    if (v24 > 0x15)
    {
      HIWORD(v70) = 3077;
      v69.n128_u32[0] = v24;
      v26 = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(v8, v24 + 1);
      v69.n128_u64[1] = v26;
    }

    else
    {
      HIWORD(v70) = 7173;
      BYTE5(v70) = 21 - v24;
      v26 = &v69;
    }

    memcpy(v26, v23, v25);
    v26->n128_u8[v25] = 0;
    v63 = 0x405000000000000;
    *(&v62 + 1) = "specialized_name";
    *&v62 = 16;
    rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(a1, &v62, &v69, v8);
  }

  v50 = a1;
  v73 = 0x4000000000000;
  v72 = 0uLL;
  re::DynamicArray<re::TechniqueFunctionConstant>::DynamicArray(&v69, a2);
  LOBYTE(v62) = a5;
  v27 = 126 - 2 * __clz(v70);
  if (v70)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,generateJSONForFunctionVariant(re::FunctionVariantDescriptor const&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator> &,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,BOOL)::$_0 &,re::TechniqueFunctionConstant *,false>(v71, v71 + 104 * v70, &v62, v28, 1);
  if (v70)
  {
    v29 = v71;
    v30 = (v71 + 104 * v70);
    while (1)
    {
      re::DynamicString::DynamicString(&v62, v29);
      v64 = *(v29 + 2);
      v31 = *(v29 + 3);
      v32 = *(v29 + 4);
      v33 = *(v29 + 5);
      v68 = *(v29 + 24);
      v66 = v32;
      v67 = v33;
      v65 = v31;
      v34 = *(a3 + 24);
      v61 = 0x3000000000000;
      v60 = 0uLL;
      v83 = 0x3000000000000;
      v82 = 0uLL;
      if (a5)
      {
        v35 = v30;
        v36 = v8;
        v81 = 0x150000000000;
        v80 = 0uLL;
        v37 = (BYTE8(v62) & 1) != 0 ? v63 : &v62 + 9;
        v38 = strlen(v37);
        v39 = v38;
        if (v38 > 0x15)
        {
          v80.n128_u32[0] = v38;
          v40 = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(v34, v38 + 1);
          v80.n128_u64[1] = v40;
          v41 = 3077;
        }

        else
        {
          BYTE5(v81) = 21 - v38;
          v40 = &v80;
          v41 = 7173;
        }

        HIWORD(v81) = v41;
        memcpy(v40, v37, v39);
        v40->n128_u8[v39] = 0;
        v87 = 0x405000000000000;
        v86.n128_u64[0] = 2;
        v86.n128_u64[1] = "id";
        rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(&v60, &v86, &v80, v34);
        v85 = 0x405000000000000;
        v86.n128_u64[0] = 7;
        v84.n128_u64[0] = 20;
        v84.n128_u64[1] = "FunctionConstantName";
        v87 = 0x405000000000000;
        v86.n128_u64[1] = "id_type";
        rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(&v60, &v86, &v84, v34);
        v30 = v35;
      }

      else
      {
        v36 = v8;
        v81 = 0x3000000000000;
        v80 = 0uLL;
        v79 = 0x1F6000000000000;
        v78 = WORD1(v64);
        v87 = 0x405000000000000;
        v86.n128_u64[0] = 4;
        v86.n128_u64[1] = "data";
        rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(&v80, &v86, &v78, v34);
        v87 = 0x405000000000000;
        v86.n128_u64[0] = 2;
        v86.n128_u64[1] = "id";
        rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(&v60, &v86, &v80, v34);
        v85 = 0x405000000000000;
        v86.n128_u64[0] = 7;
        v84.n128_u64[0] = 21;
        v84.n128_u64[1] = "FunctionConstantIndex";
        v87 = 0x405000000000000;
        v86.n128_u64[1] = "id_type";
        rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(&v60, &v86, &v84, v34);
      }

      v85 = 0x405000000000000;
      v86 = v64;
      v84.n128_u64[0] = 10;
      v84.n128_u64[1] = "value_type";
      v87 = 0x1F6000000000000;
      *&v43 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(&v60, &v84, &v86, v34).n128_u64[0];
      if (v64 > 0x20u)
      {
        break;
      }

      if (v64 != 3)
      {
        if (v64 != 29)
        {
          goto LABEL_72;
        }

        v85 = 0x405000000000000;
        v86 = SDWORD1(v64);
        v84.n128_u64[0] = 4;
        v84.n128_u64[1] = "data";
        v87 = 0;
        v44 = SDWORD1(v64) < 0;
        v45 = 182;
LABEL_54:
        if (!v44)
        {
          v45 = 502;
        }

        goto LABEL_56;
      }

      v85 = 0x405000000000000;
      v84.n128_u64[0] = 4;
      v84.n128_u64[1] = "data";
      v86.n128_u64[1] = 0;
      v87 = 0;
      v86.n128_f64[0] = *(&v64 + 1);
      v45 = 534;
LABEL_56:
      HIWORD(v87) = v45;
      rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(&v82, &v84, &v86, v34);
      v87 = 0x405000000000000;
      v86.n128_u64[0] = 5;
      v86.n128_u64[1] = "value";
      rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(&v60, &v86, &v82, v34);
      v8 = v36;
      rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::PushBack(&v72, &v60, v36);
      if (v62 && (BYTE8(v62) & 1) != 0)
      {
        (*(*v62 + 40))();
      }

      v29 = (v29 + 104);
      if (v29 == v30)
      {
        goto LABEL_60;
      }
    }

    if (v64 != 33)
    {
      if (v64 != 53)
      {
LABEL_72:
        re::internal::assertLog(5, v42, v43, "assertion failure: '%s' (%s:line %i) PSOToolManager serialization for function constant type %d not implemented yet.", "!Unreachable code", "generateJSONForFunctionConstant", 832, v64);
        _os_crash("assertion failure: (!Unreachable code) PSOToolManager serialization for function constant type %d not implemented yet.", v49);
        __break(1u);
      }

      v85 = 0x405000000000000;
      v86 = 0uLL;
      v84.n128_u64[0] = 4;
      v84.n128_u64[1] = "data";
      v87 = 0;
      if (BYTE4(v64))
      {
        v45 = 10;
      }

      else
      {
        v45 = 9;
      }

      goto LABEL_56;
    }

    v85 = 0x405000000000000;
    v86 = DWORD1(v64);
    v84.n128_u64[0] = 4;
    v84.n128_u64[1] = "data";
    v87 = 0;
    v44 = SDWORD1(v64) < 0;
    v45 = 470;
    goto LABEL_54;
  }

LABEL_60:
  v46 = a2[18];
  if (v46)
  {
    v47 = v46 >> 1;
  }

  else
  {
    v47 = v46 >> 1;
  }

  if (!v47)
  {
    v63 = 0x405000000000000;
    *(&v62 + 1) = "constant_values";
    *&v62 = 15;
    rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(v50, &v62, &v72, v8);
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v69);
  if (v54 && (v51 & 1) != 0)
  {
    (*(*v54 + 40))();
  }

  result = v57;
  if (v57)
  {
    if (v58)
    {
      return (*(*v57 + 40))();
    }
  }

  return result;
}

unsigned int *rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::PushBack(unsigned int *a1, __int128 *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1 >= v6)
  {
    if (v6)
    {
      v7 = v6 + ((v6 + 1) >> 1);
    }

    else
    {
      v7 = 16;
    }

    if (v6 < v7)
    {
      *(a1 + 1) = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Realloc(a3, *(a1 + 1), 24 * v6, 24 * v7);
      a1[1] = v7;
      v5 = *a1;
    }
  }

  v8 = *(a1 + 1);
  *a1 = v5 + 1;
  v9 = v8 + 24 * v5;
  v10 = *a2;
  *(v9 + 16) = *(a2 + 2);
  *v9 = v10;
  *(a2 + 11) = 0;
  return a1;
}

uint64_t generateJSONForComputeShader(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  v29 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 22) = 3;
  if (a5)
  {
    if (*(a2 + 8))
    {
      v10 = *(a2 + 16);
    }

    else
    {
      v10 = a2 + 9;
    }
  }

  else if (*(a7 + 8))
  {
    v10 = *(a7 + 16);
  }

  else
  {
    v10 = a7 + 9;
  }

  if (*(a3 + 8))
  {
    v11 = *(a3 + 16);
  }

  else
  {
    v11 = a3 + 9;
  }

  re::DynamicString::format(&v20, "alias:%s#%s", a2, v10, v11);
  validateAlias(&v20);
  v26 = 0x150000000000;
  __dst = 0uLL;
  v12 = v21;
  if (v21)
  {
    v13 = *&v22[7];
  }

  else
  {
    v13 = v22;
  }

  v14 = strlen(v13);
  v15 = v14;
  if (v14 > 0x15)
  {
    __dst.n128_u32[0] = v14;
    p_dst = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(a4, v14 + 1);
    __dst.n128_u64[1] = p_dst;
    v17 = 3077;
  }

  else
  {
    BYTE5(v26) = 21 - v14;
    p_dst = &__dst;
    v17 = 7173;
  }

  HIWORD(v26) = v17;
  memcpy(p_dst, v13, v15);
  p_dst->n128_u8[v15] = 0;
  v28 = 0x405000000000000;
  *(&v27 + 1) = "compute_function";
  *&v27 = 16;
  v18 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(a1, &v27, &__dst, a4);
  if (a6)
  {
    v24 = 0x1F6000000000000;
    v23 = 1uLL;
    v28 = 0x405000000000000;
    *(&v27 + 1) = "threadgroup_size_is_multiple_of_thread_execution_width";
    *&v27 = 54;
    v18 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(a1, &v27, &v23, a4);
  }

  result = v20;
  if (v20)
  {
    if (v12)
    {
      return (*(*v20 + 40))(v18);
    }
  }

  return result;
}

uint64_t generateJSONForTileShader(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8, uint64_t a9)
{
  v43 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 22) = 3;
  if (a5)
  {
    if (*(a2 + 8))
    {
      v13 = *(a2 + 16);
    }

    else
    {
      v13 = a2 + 9;
    }
  }

  else if (*(a9 + 8))
  {
    v13 = *(a9 + 16);
  }

  else
  {
    v13 = a9 + 9;
  }

  if (*(a3 + 8))
  {
    v14 = *(a3 + 16);
  }

  else
  {
    v14 = a3 + 9;
  }

  re::DynamicString::format(&v30, "alias:%s#%s", a2, v13, v14);
  validateAlias(&v30);
  v38 = 0x150000000000;
  __dst = 0uLL;
  v28 = v31;
  if (v31)
  {
    v15 = *&v32[7];
  }

  else
  {
    v15 = v32;
  }

  v16 = strlen(v15);
  v17 = v16;
  if (v16 > 0x15)
  {
    __dst.n128_u32[0] = v16;
    p_dst = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(a4, v16 + 1);
    __dst.n128_u64[1] = p_dst;
    v19 = 3077;
  }

  else
  {
    BYTE5(v38) = 21 - v16;
    p_dst = &__dst;
    v19 = 7173;
  }

  HIWORD(v38) = v19;
  memcpy(p_dst, v15, v17);
  p_dst->n128_u8[v17] = 0;
  v42 = 0x405000000000000;
  v41.n128_u64[0] = 13;
  v41.n128_u64[1] = "tile_function";
  rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(a1, &v41, &__dst, a4);
  if (a6)
  {
    v40 = 0x1F6000000000000;
    v39 = 1uLL;
    v42 = 0x405000000000000;
    v41.n128_u64[0] = 34;
    v41.n128_u64[1] = "threadgroup_size_matches_tile_size";
    rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(a1, &v41, &v39, a4);
  }

  v36 = 0x4000000000000;
  v35 = 0uLL;
  v20 = *(a7 + 16);
  if (v20)
  {
    v21 = *(a7 + 32);
    v22 = 4 * v20;
    do
    {
      v23 = *v21++;
      v34 = 0x3000000000000;
      v33 = 0uLL;
      v39.n128_u64[1] = "pixel_format";
      v40 = 0x405000000000000;
      v39.n128_u64[0] = 12;
      v42 = 0;
      v41 = v23;
      if (v23 < 0)
      {
        v24 = 182;
      }

      else
      {
        v24 = 502;
      }

      HIWORD(v42) = v24;
      rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(&v33, &v39, &v41, a4);
      rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::PushBack(&v35, &v33, a4);
      v22 -= 4;
    }

    while (v22);
  }

  if (a8 != 1)
  {
    v40 = 0x405000000000000;
    v39.n128_u64[0] = 19;
    v39.n128_u64[1] = "raster_sample_count";
    v42 = 0;
    v41 = a8;
    if (a8 < 0)
    {
      v25 = 182;
    }

    else
    {
      v25 = 502;
    }

    HIWORD(v42) = v25;
    rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(a1, &v39, &v41, a4);
  }

  v42 = 0x405000000000000;
  v41.n128_u64[0] = 17;
  v41.n128_u64[1] = "color_attachments";
  v26 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(a1, &v41, &v35, a4);
  result = v30;
  if (v30)
  {
    if (v28)
    {
      return (*(*v30 + 40))(v26);
    }
  }

  return result;
}

uint64_t re::PSOToolManager::setCustomMaterialWrappingDefinition(re::PSOToolManager *this, const re::DynamicString *a2)
{
  v45[5] = *MEMORY[0x1E69E9840];
  *(this + 1120) = 1;
  re::DynamicArray<re::DynamicString>::DynamicArray(v35, v36, 5uLL);
  for (i = 16; i != -4; i -= 4)
  {
    re::DynamicString::deinit(&v36[i]);
  }

  re::DynamicArray<re::DynamicString>::DynamicArray(v34, v36, 4uLL);
  for (j = 12; j != -4; j -= 4)
  {
    re::DynamicString::deinit(&v36[j]);
  }

  re::DynamicArray<re::DynamicString>::DynamicArray(v33, v36, 9uLL);
  for (k = 32; k != -4; k -= 4)
  {
    re::DynamicString::deinit(&v36[k]);
  }

  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v38 = 0x7FFFFFFFLL;
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(v36, "surfaceShader.rematerialdefinition", v34);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(v36, "surfaceShaderTransparent.rematerialdefinition", v34);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(v36, "surfaceShaderClearcoat.rematerialdefinition", v34);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(v36, "surfaceShaderClearcoatTransparent.rematerialdefinition", v34);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(v36, "surfaceShaderUnlit.rematerialdefinition", v35);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(v36, "surfaceShaderUnlitTransparent.rematerialdefinition", v35);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(v36, "CustomUICALayer.rematerialdefinition", v33);
  if (*(a2 + 1))
  {
    v24 = *(a2 + 2);
  }

  else
  {
    v24 = a2 + 9;
  }

  if (!strcmp(v24, "CustomUICALayer.rematerialdefinition"))
  {
    v25 = 2;
  }

  else
  {
    v25 = 1;
  }

  *(this + 281) = v25;
  v26 = re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v36, a2);
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = 32 * v27;
    v29 = (*(v26 + 32) + 16);
    do
    {
      if (*(a2 + 8))
      {
        v30 = *(a2 + 2);
      }

      else
      {
        v30 = a2 + 9;
      }

      if (*(v29 - 1))
      {
        v31 = *v29;
      }

      else
      {
        v31 = v29 - 7;
      }

      re::PSOToolManager::generateFunctionVariationsForTechnique(this, v30, v31);
      v29 += 4;
      v28 -= 32;
    }

    while (v28);
  }

  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v36);
  re::DynamicArray<re::DynamicString>::deinit(v33);
  re::DynamicArray<re::DynamicString>::deinit(v34);
  return re::DynamicArray<re::DynamicString>::deinit(v35);
}

uint64_t re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(uint64_t a1, char *a2, uint64_t *a3)
{
  v9 = 0;
  v10 = a2;
  v7 = 0;
  v8 = 0;
  v5 = re::Hash<re::DynamicString>::operator()(&v11, a2);
  re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v10, v5, &v7);
  if (HIDWORD(v8) == 0x7FFFFFFF)
  {
    return re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<char const*&,re::DynamicArray<re::DynamicString> const&>(a1, &v7, &v10, a3);
  }

  else
  {
    return *(a1 + 16) + 88 * HIDWORD(v8) + 40;
  }
}

uint64_t re::PSOToolManager::serializeToURL(re::PSOToolManager *this, std::string *__src)
{
  v20 = *MEMORY[0x1E69E9840];
  memset(&v12, 0, sizeof(v12));
  v3 = (__src - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:nn200100]<char const*,0>(&v12.__pn_, __src, v3);
  std::__fs::filesystem::__status(&v12, 0);
  locale_low = LOBYTE(v13.__locale_);
  if (SHIBYTE(v12.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__pn_.__r_.__value_.__l.__data_);
  }

  if (locale_low != 2)
  {
    v15 = 0u;
    v14 = 0u;
    v16 = 0;
    v17 = 1024;
    v18 = 0;
    v19 = 0;
    operator new();
  }

  v6 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "provided url ", 13);
  v7 = strlen(__src);
  v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, __src, v7);
  v9 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, " is a directory", 15);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v12, MEMORY[0x1E69E5318]);
  (v10->__vftable[2].~facet_0)(v10, 10);
  std::locale::~locale(&v12);
  std::ostream::put();
  return std::ostream::flush();
}

uint64_t re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, re::DynamicString *a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(&v12, a2);
  v5 = v4;
  v6 = *(a1 + 24);
  if (!v6)
  {
    LODWORD(v7) = 0;
    goto LABEL_8;
  }

  v7 = v4 % v6;
  v8 = *(*(a1 + 8) + 4 * (v4 % v6));
  if (v8 == 0x7FFFFFFF)
  {
LABEL_8:
    result = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addAsCopy(a1, v7, v5, a2, a2);
    goto LABEL_9;
  }

  v9 = *(a1 + 16);
  while (1)
  {
    v10 = v9 + 48 * v8;
    if (re::DynamicString::operator==(v10 + 16, a2))
    {
      break;
    }

    v8 = *(v9 + 48 * v8 + 8) & 0x7FFFFFFF;
    if (v8 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }

  result = re::DynamicString::operator=((v10 + 16), a2);
LABEL_9:
  ++*(a1 + 40);
  return result;
}

{
  v4 = re::Hash<re::DynamicString>::operator()(&v12, a2);
  v5 = v4;
  v6 = *(a1 + 24);
  if (!v6)
  {
    LODWORD(v7) = 0;
    goto LABEL_8;
  }

  v7 = v4 % v6;
  v8 = *(*(a1 + 8) + 4 * (v4 % v6));
  if (v8 == 0x7FFFFFFF)
  {
LABEL_8:
    result = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addAsMove(a1, v7, v5, a2, a2);
    goto LABEL_9;
  }

  v9 = *(a1 + 16);
  while (1)
  {
    v10 = v9 + 48 * v8;
    if (re::DynamicString::operator==(v10 + 16, a2))
    {
      break;
    }

    v8 = *(v9 + 48 * v8 + 8) & 0x7FFFFFFF;
    if (v8 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }

  result = re::DynamicString::operator=((v10 + 16), a2);
LABEL_9:
  ++*(a1 + 40);
  return result;
}

void re::PSOToolManager::serializeToURL(char const*)::$_0::operator()(uint64_t a1, re::DynamicString *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int a7)
{
  if (*(a3 + 28) | *(a4 + 28))
  {
    v12 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey(a1 + 112, a2);
    if ((v12 & 1) == 0)
    {
      v12 = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a1 + 112, a2);
    }

    v66 = 0;
    memset(&v67[1], 0, 24);
    v65 = 0u;
    re::DynamicString::setCapacity(v67, 0);
    re::DynamicString::operator=(v67, a2);
    re::MaterialTechniqueData::MaterialTechniqueData(v62);
    *&v39 = "pretendTechnique";
    *(&v39 + 1) = 16;
    re::DynamicString::operator=(v62, &v39);
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(v63, a3);
    re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(v64, a4);
    memset(v61, 0, sizeof(v61));
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    v60 = 0x7FFFFFFFLL;
    re::PSOToolManager::gatherFunctionConstantsForShader(a1, v62, v67, v63, v64, v61, &v57);
    v13 = HIDWORD(v58);
    v56 = 0;
    v53[1] = 0;
    v54 = 0;
    v55 = 0;
    re::DynamicArray<re::TechniqueFunctionConstant>::setCapacity(v53, v13);
    ++v55;
    v15 = v59;
    if (v59)
    {
      v16 = 0;
      v17 = v58;
      while (1)
      {
        v18 = *v17;
        v17 += 38;
        if (v18 < 0)
        {
          break;
        }

        if (v59 == ++v16)
        {
          LODWORD(v16) = v59;
          break;
        }
      }
    }

    else
    {
      LODWORD(v16) = 0;
    }

    if (v16 != v59)
    {
      v19 = v58;
      do
      {
        re::DynamicArray<re::TechniqueFunctionConstant>::add(v53, (v19 + 152 * v16 + 40));
        if (v59 <= v16 + 1)
        {
          v20 = v16 + 1;
        }

        else
        {
          v20 = v59;
        }

        v19 = v58;
        while (v20 - 1 != v16)
        {
          LODWORD(v16) = v16 + 1;
          if ((*(v58 + 152 * v16) & 0x80000000) != 0)
          {
            goto LABEL_20;
          }
        }

        LODWORD(v16) = v20;
LABEL_20:
        ;
      }

      while (v16 != v15);
    }

    memset(v41, 0, 32);
    v39 = 0u;
    v40 = 0u;
    re::FunctionConstantsEnumerator::createEnumerator(v61, 0, 0, v53, &v39, v51);
    re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::deinit(&v39);
    if (v52)
    {
      v21 = 0;
      v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a6 ^ (a6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a6 ^ (a6 >> 30))) >> 27));
      v33 = (v22 ^ (v22 >> 31)) - 0x61C8864680B583E9;
      do
      {
        re::FunctionConstantsEnumerator::createPermutation(v51, v21, v56, v54, v50);
        *&v39 = v50[4];
        *(&v39 + 1) = v50[2];
        if (*(a2 + 1))
        {
          v23 = *(a2 + 2);
        }

        else
        {
          v23 = a2 + 9;
        }

        FunctionVariantHash = re::generateFunctionVariantHash(&v39, v23);
        v25 = FunctionVariantHash;
        if (a7)
        {
          v25 = (v33 + (FunctionVariantHash << 6) + (FunctionVariantHash >> 2)) ^ FunctionVariantHash;
        }

        v49 = v25;
        if (!*a5 || (v26 = *(*(a5 + 8) + 4 * (v25 % *(a5 + 24))), v26 == 0x7FFFFFFF))
        {
LABEL_33:
          v39 = 0uLL;
          DWORD2(v40) = 0;
          *&v40 = 0;
          memset(v41, 0, sizeof(v41));
          v28 = re::DynamicString::setCapacity(&v41[8], 0);
          v43 = 0u;
          v42 = 0u;
          v29 = re::DynamicString::setCapacity(&v42, 0);
          v45 = 0u;
          v44 = 0u;
          v30 = re::DynamicString::setCapacity(&v44, 0);
          v47 = 0u;
          v46 = 0u;
          re::DynamicString::setCapacity(&v46, 0);
          re::DynamicString::operator=(&v41[8], a2);
          re::DynamicArray<re::TechniqueFunctionConstant>::operator=(&v39, v50);
          if (v41[16])
          {
            v32 = *&v41[24];
          }

          else
          {
            v32 = &v41[17];
          }

          re::DynamicString::format(&v36, "%s_%zu", v31, v32, v25);
          re::DynamicString::operator=(&v42, &v36);
          if (v36 && (v37 & 1) != 0)
          {
            (*(*v36 + 40))();
          }

          re::DynamicString::operator=(&v44, (a1 + 1128));
          v48 = a6;
          v36 = 0;
          v37 = 0;
          v38 = 0;
          re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(&v36, a5, v25, v25);
          if (HIDWORD(v37) == 0x7FFFFFFF)
          {
            re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addInternal<unsigned long const&,re::FunctionVariantDescriptor const&>(a5, v36, v37, &v49, &v39);
          }

          if (v46)
          {
            if (BYTE8(v46))
            {
              (*(*v46 + 40))();
            }

            v47 = 0u;
            v46 = 0u;
          }

          if (v44)
          {
            if (BYTE8(v44))
            {
              (*(*v44 + 40))();
            }

            v45 = 0u;
            v44 = 0u;
          }

          if (v42)
          {
            if (BYTE8(v42))
            {
              (*(*v42 + 40))();
            }

            v43 = 0u;
            v42 = 0u;
          }

          if (*&v41[8])
          {
            if (v41[16])
            {
              (*(**&v41[8] + 40))();
            }

            memset(&v41[8], 0, 32);
          }

          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v39);
        }

        else
        {
          v27 = *(a5 + 16);
          while (*(v27 + 200 * v26 + 8) != v25)
          {
            v26 = *(v27 + 200 * v26) & 0x7FFFFFFF;
            if (v26 == 0x7FFFFFFF)
            {
              goto LABEL_33;
            }
          }
        }

        re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v50);
        ++v21;
      }

      while (v52 > v21);
    }

    re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit(v51);
    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v53);
    re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v57);
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(v61);
    re::MaterialTechniqueData::~MaterialTechniqueData(v62);
    if (v67[0])
    {
      if (v67[1])
      {
        (*(*v67[0] + 40))();
      }

      memset(v67, 0, 32);
    }

    re::AssetHandle::~AssetHandle(&v65);
  }
}

BOOL rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Accept<rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>>(unsigned int *a1, uint64_t **a2)
{
  v66[3] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 11);
  v5 = v4 & 7;
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3u:
        rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::PrettyPrefix(a2);
        v11 = a2[4];
        if (a2[5] - v11 <= 15)
        {
          rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::Writer<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Level>(a2 + 1);
          v11 = a2[4];
        }

        a2[4] = v11 + 2;
        *v11 = 0;
        *(v11 + 8) = 0;
        std::ostream::put();
        if (*a1)
        {
          v12 = (*(a1 + 1) + 24);
          do
          {
            v13 = (*(v12 - 1) & 0x1000) != 0 ? (v12 - 6) : *(v12 - 2);
            v14 = (*(v12 - 1) & 0x1000) != 0 ? 21 - *(v12 - 3) : *(v12 - 6);
            rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::String(a2, v13, v14);
            if ((rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Accept<rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>>(v12, a2) & 1) == 0)
            {
              return 0;
            }

            v15 = v12 + 6;
            v12 += 12;
          }

          while (v15 != (*(a1 + 1) + 48 * *a1));
        }

        v16 = a2[4];
        v17 = *(v16 - 2);
        a2[4] = v16 - 2;
        if (v17)
        {
          std::ostream::put();
          rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteIndent(a2);
        }

        break;
      case 4u:
        rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::PrettyPrefix(a2);
        v19 = a2[4];
        if (a2[5] - v19 <= 15)
        {
          rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::Writer<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Level>(a2 + 1);
          v19 = a2[4];
        }

        a2[4] = v19 + 2;
        *v19 = 0;
        *(v19 + 8) = 1;
        std::ostream::put();
        if (*a1)
        {
          v20 = *(a1 + 1);
          while ((rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Accept<rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>>(v20, a2) & 1) != 0)
          {
            v20 += 6;
            if (v20 == (*(a1 + 1) + 24 * *a1))
            {
              goto LABEL_43;
            }
          }

          return 0;
        }

LABEL_43:
        v21 = a2[4];
        v22 = *(v21 - 2);
        a2[4] = v21 - 2;
        if (v22 && (*(a2 + 68) & 1) == 0)
        {
          std::ostream::put();
          rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteIndent(a2);
        }

        break;
      case 5u:
        if ((*(a1 + 11) & 0x1000) != 0)
        {
          v7 = a1;
        }

        else
        {
          v7 = *(a1 + 1);
        }

        if ((*(a1 + 11) & 0x1000) != 0)
        {
          v8 = 21 - *(a1 + 21);
        }

        else
        {
          v8 = *a1;
        }

        rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::String(a2, v7, v8);
        return 1;
      default:
        goto LABEL_31;
    }

    std::ostream::put();
    v10 = a2[3];
    v9 = a2[4];
    if (v9 != v10)
    {
LABEL_47:
      if (v9 == v10)
      {
        std::ostream::flush();
      }

      return 1;
    }

    std::ostream::flush();
LABEL_15:
    v10 = a2[3];
    v9 = a2[4];
    goto LABEL_47;
  }

  if ((v4 & 7) == 0)
  {
    rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::PrettyPrefix(a2);
    std::ostream::put();
    std::ostream::put();
    std::ostream::put();
    std::ostream::put();
    goto LABEL_15;
  }

  if (v5 == 1)
  {
    rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Bool(a2, 0);
    return 1;
  }

  if (v5 == 2)
  {
    v6 = 1;
    rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Bool(a2, 1);
    return v6;
  }

LABEL_31:
  if ((*(a1 + 11) & 0x200) == 0)
  {
    if ((v4 & 0x20) == 0)
    {
      if ((v4 & 0x40) != 0)
      {
        rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Uint(a2, *a1);
      }

      else
      {
        v18 = *a1;
        if ((v4 & 0x80) != 0)
        {
          rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Int64(a2, v18);
        }

        else
        {
          rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Uint64(a2, v18);
        }
      }

      return 1;
    }

    v28 = *a1;
    rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::PrettyPrefix(a2);
    if ((v28 & 0x80000000) != 0)
    {
      v30 = v66;
      v65 = 45;
      v28 = -v28;
    }

    else
    {
      v30 = &v65;
    }

    v50 = rapidjson::internal::u32toa(v28, v30, v29);
    if (&v65 != v50)
    {
      v51 = v50;
      v52 = &v65;
      do
      {
        ++v52;
        std::ostream::put();
      }

      while (v52 != v51);
    }

    goto LABEL_15;
  }

  v23 = *a1;
  rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::PrettyPrefix(a2);
  v24 = *&v23;
  v6 = (*&v23 & 0x7FF0000000000000) != 0x7FF0000000000000;
  if ((*&v23 & 0x7FF0000000000000) != 0x7FF0000000000000)
  {
    if (v23 == 0.0)
    {
      v25 = &v65;
      if ((*&v23 & 0x8000000000000000) != 0)
      {
        v25 = v66;
        v65 = 45;
      }

      *v25 = 11824;
      v25[2] = 48;
      v26 = v25 + 3;
    }

    else
    {
      v31 = *(a2 + 14);
      v32 = &v65;
      if (v23 < 0.0)
      {
        v32 = v66;
        v65 = 45;
        v24 = *&v23 ^ 0x8000000000000000;
      }

      v54 = 0;
      if (((v24 >> 52) & 0x7FF) != 0)
      {
        v33 = v24 & 0xFFFFFFFFFFFFFLL | 0x10000000000000;
      }

      else
      {
        v33 = v24 & 0xFFFFFFFFFFFFFLL;
      }

      if (((v24 >> 52) & 0x7FF) != 0)
      {
        v34 = ((v24 >> 52) & 0x7FF) - 1075;
      }

      else
      {
        v34 = -1074;
      }

      v63 = (2 * (v33 & 0x1FFFFFFFFFFFFFLL)) | 1;
      v64 = v34 - 1;
      v35 = rapidjson::internal::DiyFp::NormalizeBoundary(&v63);
      v37 = 2 * v33 - 1;
      if (v33 == 0x10000000000000)
      {
        v38 = -2;
      }

      else
      {
        v38 = -1;
      }

      if (v33 == 0x10000000000000)
      {
        v37 = 0x3FFFFFFFFFFFFFLL;
      }

      v61 = v35;
      v62 = v36;
      v63 = v37 << (v38 + v34 - v36);
      v64 = v36;
      v39 = (-61 - v36) * 0.301029996 + 347.0;
      v40 = v39;
      if (v39 > v39)
      {
        ++v40;
      }

      v41 = (v40 >> 3) + 1;
      v42 = rapidjson::internal::GetCachedPowerByIndex(unsigned long)::kCachedPowers_F[v41];
      v53 = 348 - 8 * v41;
      v43 = rapidjson::internal::GetCachedPowerByIndex(unsigned long)::kCachedPowers_E[v41];
      v59 = v42;
      v60 = v43;
      v44 = __clz(v33);
      v55 = v33 << v44;
      v56 = v34 - v44;
      v57 = rapidjson::internal::DiyFp::operator*(&v55, &v59);
      v58 = v45;
      v46 = rapidjson::internal::DiyFp::operator*(&v61, &v59);
      v56 = v47;
      v48 = rapidjson::internal::DiyFp::operator*(&v63, &v59);
      v55 = v46 - 1;
      rapidjson::internal::DigitGen(&v57, &v55, v46 - 1 + ~v48, v32, &v54, &v53);
      v26 = rapidjson::internal::Prettify(v32, v54, v53, v31);
    }

    if (&v65 != v26)
    {
      v49 = &v65;
      do
      {
        ++v49;
        std::ostream::put();
      }

      while (v49 != v26);
    }
  }

  if (a2[4] == a2[3])
  {
    std::ostream::flush();
  }

  return v6;
}