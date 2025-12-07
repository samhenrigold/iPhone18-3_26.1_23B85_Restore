double re::HashTable<unsigned long,re::DrawTable,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(uint64_t *a1)
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
          re::DrawTable::~DrawTable((v6 + v4 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 344;
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

_BYTE *re::InlineFunction<40ul,void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::operator=(_BYTE *a1, _BYTE *a2)
{
  if (a1 != a2)
  {
    if ((a1[40] & 1) == 0)
    {
      (**a1)(a1);
      a1[40] = 1;
    }

    if ((a2[40] & 1) == 0)
    {
      (*(*a2 + 32))(a2, a1);
      if ((a2[40] & 1) == 0)
      {
        (**a2)(a2);
        a2[40] = 1;
      }

      a1[40] = 0;
    }
  }

  return a1;
}

{
  if (a1 != a2)
  {
    if ((a1[40] & 1) == 0)
    {
      (**a1)(a1);
      a1[40] = 1;
    }

    if ((a2[40] & 1) == 0)
    {
      (*(*a2 + 24))(a2, a1);
      a1[40] = 0;
    }
  }

  return a1;
}

uint64_t re::BucketArray<re::DrawCall,128ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > v3 << 7)
  {
    re::BucketArray<re::DrawCall,128ul>::setBucketsCapacity(a1, (v2 + 128) >> 7);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 7)
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
    v16 = v2 >> 7;
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

  v5 = *(v4 + 8 * (v2 >> 7));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 224 * (v2 & 0x7F);
}

unsigned __int8 *re::DeformationPassBuilder::addDeformationStack(unsigned __int8 *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v120 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
    v5 = result;
    v6 = __clz(__rbit64(a3));
    v104 = a4 + 4;
    v100 = a4 + 48;
    v101 = result + 976;
    v7 = result + 112;
    v99 = a4 + 792;
    v94 = result + 80;
    v95 = result + 24;
    v97 = a4 + 688;
    while (1)
    {
      v8 = *(v104 + 4 * v6);
      v9 = 1 << v8;
      v10 = re::Bitset<64>::toWordIndex(v101, v8);
      *&v101[8 * v10] |= v9;
      *&v115 = v4;
      v12 = v5[96];
      v13 = 0;
      if (v6)
      {
        v14 = (v97 + 10 * v6);
        v15 = v6;
        do
        {
          v17 = *v14++;
          v16 = v17;
          if (v17 == 255)
          {
            break;
          }

          re::Bitset<64>::toWordIndex(&v115, v16);
          if ((v115 >> v16))
          {
            if (v13 <= (*(&v106[1] + v16 + 6) + 1))
            {
              v13 = (*(&v106[1] + v16 + 6) + 1);
            }

            else
            {
              v13 = v13;
            }
          }

          --v15;
        }

        while (v15);
      }

      v105 = v6;
      v18 = v100 + (v6 << 6);
      v19 = *(v18 + 48);
      if (v19)
      {
        v20 = *(v18 + 56);
        v21 = &v20[16 * v19];
        do
        {
          v22 = re::HashTable<unsigned long long,re::DataArrayHandle<re::TransformCache>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(&v7[48 * *v20], *(v20 + 1));
          if (v22)
          {
            v11 = *v22;
            if (v11 == 255)
            {
              v23 = 0;
            }

            else
            {
              v23 = *(re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v5, v11) + 56) + 1;
            }

            if (v13 <= v23)
            {
              v13 = v23;
            }

            else
            {
              v13 = v13;
            }
          }

          v20 += 16;
        }

        while (v20 != v21);
      }

      v24 = v99 + 24 * v105;
      v25 = *(v24 + 8);
      if (v25)
      {
        v26 = *(v24 + 16);
        v27 = &v26[16 * v25];
        do
        {
          v28 = re::HashTable<unsigned long long,re::DataArrayHandle<re::TransformCache>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(&v7[48 * *v26], *(v26 + 1));
          if (v28)
          {
            v11 = *(v28 + 1);
            if (v11 == 255)
            {
              v29 = 255;
            }

            else
            {
              v29 = *(re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v5, v11) + 56);
            }

            if (v12 >= v29)
            {
              v12 = v29;
            }

            else
            {
              v12 = v12;
            }
          }

          v26 += 16;
        }

        while (v26 != v27);
      }

      if (v12 <= v13)
      {
LABEL_41:
        if (v13 == v12)
        {
          v40 = *(v5 + 5);
          v41 = *(v5 + 1);
          if (v40 + 1 > 8 * v41)
          {
            re::BucketArray<re::DeformationPassBuilder::DeformationInstanceBucket,8ul>::setBucketsCapacity(v5, (v40 + 8) >> 3);
            v41 = *(v5 + 1);
          }

          v42 = v40 >> 3;
          if (v41 <= v40 >> 3)
          {
            goto LABEL_97;
          }

          v43 = v95;
          if ((v5[16] & 1) == 0)
          {
            v43 = *(v5 + 4);
          }

          v44 = *&v43[8 * v42];
          ++*(v5 + 5);
          ++*(v5 + 12);
          v45 = v44 + ((v40 & 7) << 6);
          *(v45 + 16) = 0u;
          *(v45 + 32) = 0u;
          *(v45 + 40) = 0;
          *(v45 + 48) = 0;
          *v45 = 0u;
          *(v45 + 16) = 1;
          *(v45 + 24) = 0;
          *(v45 + 32) = 0;
          *(v45 + 48) = 0;
          *(v45 + 56) = -1;
          v41 = v13;
          v46 = *(v5 + 12);
          if (v46 < v13)
          {
            goto LABEL_101;
          }

          v47 = v5[40];
          v12 = *(v5 + 8);
          if (v46 + 1 > 8 * v12)
          {
            re::BucketArray<unsigned char,8ul>::setBucketsCapacity((v5 + 56), (v46 + 8) >> 3);
            v12 = *(v5 + 8);
          }

          v40 = v13 >> 3;
          if (v12 <= v40)
          {
            goto LABEL_102;
          }

          v48 = *(v5 + 12);
          v42 = v48 >> 3;
          if (v5[72])
          {
            v49 = v94;
            if (v12 <= v42)
            {
              goto LABEL_106;
            }
          }

          else
          {
            if (v12 <= v42)
            {
              goto LABEL_106;
            }

            v49 = *(v5 + 11);
          }

          v96 = v47;
          v51 = (*&v49[8 * v40] + (v13 & 7));
          v52 = (*&v49[8 * v42] + (*(v5 + 12) & 7));
          if (v51 != v52)
          {
            *v52 = *re::BucketArray<unsigned char,8ul>::operator[]((v5 + 56), v48 - 1);
            for (i = *(v5 + 12) - 1; v13 != i; --i)
            {
              v54 = *re::BucketArray<unsigned char,8ul>::operator[]((v5 + 56), i - 1);
              *re::BucketArray<unsigned char,8ul>::operator[]((v5 + 56), i) = v54;
            }
          }

          *v51 = v96 - 1;
          ++*(v5 + 12);
          ++*(v5 + 26);
          if (*(v5 + 5) > v13)
          {
            v55 = v13;
            v56 = v13;
            do
            {
              v57 = re::BucketArray<unsigned char,8ul>::operator[]((v5 + 56), v55);
              *(re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v5, *v57) + 56) = v56++;
              v55 = v56;
            }

            while (*(v5 + 5) > v56);
          }
        }

        else
        {
          v41 = v13;
        }

        v58 = re::BucketArray<unsigned char,8ul>::operator[]((v5 + 56), v41);
        v59 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v5, *v58);
        v42 = v59;
        v40 = *(v59 + 5);
        v60 = *(v59 + 1);
        if (v40 + 1 > v60 << 6)
        {
          re::BucketArray<re::BatchedDeformationInstances,64ul>::setBucketsCapacity(v59, (v40 + 64) >> 6);
          v60 = *(v42 + 8);
        }

        v12 = v40 >> 6;
        if (v60 <= v40 >> 6)
        {
          v106[0] = 0;
          v119 = 0u;
          v117 = 0u;
          v118 = 0u;
          v115 = 0u;
          v116 = 0u;
          v77 = MEMORY[0x1E69E9C10];
          v78 = v60;
          v79 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v107 = 136315906;
          v108 = "operator[]";
          v109 = 1024;
          if (v79)
          {
            v80 = 3;
          }

          else
          {
            v80 = 2;
          }

          v110 = 858;
          v111 = 2048;
          v112 = v40 >> 6;
          v113 = 2048;
          v114 = v78;
          _os_log_send_and_compose_impl(v80, v106, &v115, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v92, v93);
          _os_crash_msg();
          __break(1u);
LABEL_97:
          v106[0] = 0;
          v119 = 0u;
          v117 = 0u;
          v118 = 0u;
          v115 = 0u;
          v116 = 0u;
          v81 = MEMORY[0x1E69E9C10];
          v82 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v107 = 136315906;
          v108 = "operator[]";
          v109 = 1024;
          if (v82)
          {
            v83 = 3;
          }

          else
          {
            v83 = 2;
          }

          v110 = 858;
          v111 = 2048;
          v112 = v42;
          v113 = 2048;
          v114 = v41;
          _os_log_send_and_compose_impl(v83, v106, &v115, 80, &dword_1E1C61000, v81, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v92, v93);
          _os_crash_msg();
          __break(1u);
LABEL_101:
          re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index <= m_size", "insert", 809, v41, v46);
          _os_crash("assertion failure: (index <= m_size) Index out of range. index = %zu, size = %zu", v90, v91);
          __break(1u);
LABEL_102:
          v106[0] = 0;
          v119 = 0u;
          v117 = 0u;
          v118 = 0u;
          v115 = 0u;
          v116 = 0u;
          v84 = MEMORY[0x1E69E9C10];
          v85 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v107 = 136315906;
          v108 = "operator[]";
          v109 = 1024;
          if (v85)
          {
            v86 = 3;
          }

          else
          {
            v86 = 2;
          }

          v110 = 858;
          v111 = 2048;
          v112 = v40;
          v113 = 2048;
          v114 = v12;
          _os_log_send_and_compose_impl(v86, v106, &v115, 80, &dword_1E1C61000, v84, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v92, v93);
          _os_crash_msg();
          __break(1u);
LABEL_106:
          v106[0] = 0;
          v119 = 0u;
          v117 = 0u;
          v118 = 0u;
          v115 = 0u;
          v116 = 0u;
          v87 = MEMORY[0x1E69E9C10];
          v88 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v107 = 136315906;
          v108 = "operator[]";
          v109 = 1024;
          if (v88)
          {
            v89 = 3;
          }

          else
          {
            v89 = 2;
          }

          v110 = 858;
          v111 = 2048;
          v112 = v42;
          v113 = 2048;
          v114 = v12;
          _os_log_send_and_compose_impl(v89, v106, &v115, 80, &dword_1E1C61000, v87, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v92, v93);
          _os_crash_msg();
          __break(1u);
        }

        v61 = *(v42 + 32);
        if (*(v42 + 16))
        {
          v61 = v42 + 24;
        }

        v62 = *(v61 + 8 * v12);
        ++*(v42 + 40);
        ++*(v42 + 48);
        v63 = v62 + ((v40 & 0x3F) << 6);
        *(v63 + 24) = 0u;
        *(v63 + 40) = 0u;
        *(v63 + 48) = 0;
        *(v63 + 56) = 0;
        *(v63 + 8) = 0u;
        *(v63 + 24) = 1;
        *(v63 + 32) = 0;
        *(v63 + 40) = 0;
        *(v63 + 56) = 0;
        v64 = *(v18 + 24);
        *v63 = *(v104 + 4 * v105);
        *(v63 + 1) = v64;
        v65 = re::BucketArray<re::DeformationInstanceIndex,64ul>::addUninitialized(v63 + 8);
        *v65 = a4;
        *(v65 + 8) = a2;
        *(v65 + 16) = v105;
      }

      else
      {
        v30 = v13;
        while (1)
        {
          v31 = re::BucketArray<unsigned char,8ul>::operator[]((v5 + 56), v30);
          v32 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v5, *v31);
          v33 = *(v32 + 40);
          if (v33)
          {
            break;
          }

LABEL_40:
          if (v12 == ++v30)
          {
            goto LABEL_41;
          }
        }

        v34 = v32;
        v35 = 0;
        while (1)
        {
          v36 = re::BucketArray<re::BatchedDeformationInstances,64ul>::operator[](v34, v35);
          v37 = *(v104 + 4 * v105);
          v38 = *(v18 + 24);
          if (*v36 == v37 && v36[1] == v38)
          {
            break;
          }

          if (v33 == ++v35)
          {
            goto LABEL_40;
          }
        }

        if (!*(v36 + 6))
        {
          *v36 = v37;
          v36[1] = v38;
        }

        v50 = re::BucketArray<re::DeformationInstanceIndex,64ul>::addUninitialized((v36 + 8));
        *v50 = a4;
        *(v50 + 8) = a2;
        *(v50 + 16) = v105;
        v41 = v30;
        LOBYTE(v13) = v30;
      }

      result = re::BucketArray<unsigned char,8ul>::operator[]((v5 + 56), v41);
      v66 = *result;
      v67 = *(v18 + 32);
      if (v67 != -1)
      {
        v68 = &v7[48 * *(v104 + 4 * v105)];
        result = re::HashTable<unsigned long long,re::DataArrayHandle<re::TransformCache>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v68, v67);
        if (result)
        {
          v69 = *result;
          if (v69 <= v66)
          {
            v70 = v66;
          }

          else
          {
            v70 = *result;
          }

          if (v69 == 255)
          {
            v71 = v66;
          }

          else
          {
            v71 = v70;
          }

          *result = v71;
        }

        else
        {
          LOBYTE(v115) = v66;
          BYTE1(v115) = -1;
          result = re::HashTable<unsigned long long,re::DeformationPassBuilder::DeformationFence,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v68, (v18 + 32), &v115);
        }
      }

      v72 = *(v18 + 48);
      if (v72)
      {
        v73 = 16 * v72;
        v74 = (*(v18 + 56) + 8);
        do
        {
          v75 = &v7[48 * *(v74 - 8)];
          result = re::HashTable<unsigned long long,re::DataArrayHandle<re::TransformCache>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v75, *v74);
          if (result)
          {
            v76 = result[1];
            if (v76 >= v66)
            {
              LOBYTE(v76) = v66;
            }

            result[1] = v76;
          }

          else
          {
            LOBYTE(v115) = -1;
            BYTE1(v115) = v66;
            result = re::HashTable<unsigned long long,re::DeformationPassBuilder::DeformationFence,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v75, v74, &v115);
          }

          v74 += 2;
          v73 -= 16;
        }

        while (v73);
      }

      *(&v106[1] + v105 + 6) = v13;
      v4 = a3;
      if (v105 == 63 || ((-2 << v105) & a3) == 0)
      {
        return result;
      }

      v6 = __clz(__rbit64((-2 << v105) & a3));
    }
  }

  return result;
}

unint64_t re::BucketArray<unsigned char,8ul>::operator[](uint64_t a1, unint64_t a2)
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

  return *(v5 + 8 * v2) + (a2 & 7);
}

uint64_t re::HashTable<unsigned long long,re::DeformationPassBuilder::DeformationFence,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, uint64_t *a2, _WORD *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v8, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long long,re::DeformationPassBuilder::DeformationFence,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v9, v8);
    *(result + 8) = *a2;
    *(result + 16) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::BucketArray<re::DeformationInstanceIndex,64ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > v3 << 6)
  {
    re::BucketArray<re::DeformationInstanceIndex,64ul>::setBucketsCapacity(a1, (v2 + 64) >> 6);
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
  return v5 + 24 * (v2 & 0x3F);
}

_anonymous_namespace_ *re::BucketArray<re::DeformationInstanceIndex,64ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < a2 << 6)
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
          result = (*(**v3 + 32))(*v3, 1536, 0);
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
    result = re::BucketArray<re::DeformationInstanceIndex,64ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

unint64_t re::BucketArray<re::BatchedDeformationInstances,64ul>::operator[](uint64_t a1, unint64_t a2)
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

  v2 = a2 >> 6;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 6)
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

  return *(v5 + 8 * v2) + ((a2 & 0x3F) << 6);
}

_anonymous_namespace_ *re::BucketArray<re::BatchedDeformationInstances,64ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < a2 << 6)
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
          result = (*(**v3 + 32))(*v3, 4096, 0);
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
    result = re::BucketArray<re::BatchedDeformationInstances,64ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

_anonymous_namespace_ *re::BucketArray<re::DeformationPassBuilder::DeformationInstanceBucket,8ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 512, 0);
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
    result = re::BucketArray<re::DeformationPassBuilder::DeformationInstanceBucket,8ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

_anonymous_namespace_ *re::BucketArray<unsigned char,8ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 8, 0);
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
    result = re::BucketArray<unsigned char,8ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::DeformationPassBuilder::DeformationFence,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = *(a1 + 16);
          *&v26[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v14 = *&v26[32];
          *(a1 + 24) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = v13 + 16;
            do
            {
              if ((*(v18 - 16) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long long,re::DeformationPassBuilder::DeformationFence,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v18 + 8) % *(a1 + 24), *(v18 + 8));
                *(v19 + 8) = *(v18 - 8);
                *(v19 + 16) = *v18;
              }

              ++v17;
              v18 += 32;
            }

            while (v17 < v16);
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v26);
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 32 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v23 + 24) = a3;
  *(v24 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v20 + 32 * v5;
}

void re::dispatchMaterialPipelineDataCompilation(unint64_t *a1)
{
  v76 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v1 = a1[1];
  v52 = a1[2];
  v3 = re::internal::enableSignposts(0, 0);
  if (v3)
  {
    v3 = kdebug_trace();
  }

  v4 = *v1;
  v5 = **v1;
  re::make::shared::object<re::FunctionReflectionCache>(v3, &v67);
  if (*(v4 + 40) == 1)
  {
    v6 = (v4 + 6);
  }

  else
  {
    v6 = *v4 + 8;
  }

  re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::FixedArray(v65, v6);
  v66 = *(v6 + 24);
  WeakRetained = objc_loadWeakRetained((v5 + 2736));
  v8 = WeakRetained - 8;
  if (!WeakRetained)
  {
    v8 = 0;
  }

  v51 = v8;
  v9 = v4[1];
  if (v9)
  {
    v10 = (v9 + 8);
  }

  if (*(v9 + 192) == 1)
  {
    re::completeLinkedFunctions(v9 + 248, v9 + 200, (v9 + 192));
  }

  v63 = 0;
  memset(v62, 0, sizeof(v62));
  v64 = 0x7FFFFFFFLL;
  v61 = 0;
  v60 = 0;
  memset(v59, 0, sizeof(v59));
  if (*(v1 + 16) == 1)
  {
    v11 = *(v5 + 2776);
    if (v11)
    {
      v12 = 0;
      v13 = *(v5 + 2760);
      while (1)
      {
        v14 = *v13;
        v13 += 38;
        if (v14 < 0)
        {
          break;
        }

        if (v11 == ++v12)
        {
          LODWORD(v12) = *(v5 + 2776);
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
      v15 = *(v5 + 2760) + 152 * v12;
      re::DynamicString::DynamicString(&v68, (v15 + 40));
      *v70 = *(v15 + 72);
      v16 = *(v15 + 88);
      v17 = *(v15 + 104);
      v18 = *(v15 + 120);
      LODWORD(v72) = *(v15 + 136);
      *v71 = v17;
      *&v71[16] = v18;
      *&v70[16] = v16;
      if (!re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey(v62, &v68))
      {
        re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v62, &v68);
        v19 = re::DynamicArray<re::TechniqueFunctionConstant>::add(v59, &v68);
      }

      if (v68 && (BYTE8(v68) & 1) != 0)
      {
        (*(*v68 + 40))(v19);
      }

      v20 = *(v5 + 2776);
      if (v20 <= v12 + 1)
      {
        v20 = v12 + 1;
      }

      while (v20 - 1 != v12)
      {
        LODWORD(v12) = v12 + 1;
        if ((*(*(v5 + 2760) + 152 * v12) & 0x80000000) != 0)
        {
          goto LABEL_31;
        }
      }

      LODWORD(v12) = v20;
LABEL_31:
      ;
    }

    v21 = *(v9 + 232);
    if (v21)
    {
      v22 = 0;
      v23 = *(v9 + 216);
      while (1)
      {
        v24 = *v23;
        v23 += 38;
        if (v24 < 0)
        {
          break;
        }

        if (v21 == ++v22)
        {
          LODWORD(v22) = *(v9 + 232);
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
      v25 = *(v9 + 216) + 152 * v22;
      re::DynamicString::DynamicString(&v68, (v25 + 40));
      *v70 = *(v25 + 72);
      v26 = *(v25 + 88);
      v27 = *(v25 + 104);
      v28 = *(v25 + 120);
      LODWORD(v72) = *(v25 + 136);
      *v71 = v27;
      *&v71[16] = v28;
      *&v70[16] = v26;
      if (!re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey(v62, &v68))
      {
        re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v62, &v68);
        v29 = re::DynamicArray<re::TechniqueFunctionConstant>::add(v59, &v68);
      }

      if (v68 && (BYTE8(v68) & 1) != 0)
      {
        (*(*v68 + 40))(v29);
      }

      v30 = *(v9 + 232);
      if (v30 <= v22 + 1)
      {
        v30 = v22 + 1;
      }

      while (v30 - 1 != v22)
      {
        LODWORD(v22) = v22 + 1;
        if ((*(*(v9 + 216) + 152 * v22) & 0x80000000) != 0)
        {
          goto LABEL_50;
        }
      }

      LODWORD(v22) = v30;
LABEL_50:
      ;
    }

    v31 = v4[3];
    if (v31)
    {
      v32 = v4[4];
      v33 = v32 + 104 * v31;
      do
      {
        re::DynamicString::DynamicString(&v68, v32);
        *v70 = *(v32 + 32);
        v34 = *(v32 + 48);
        v35 = *(v32 + 64);
        v36 = *(v32 + 80);
        LODWORD(v72) = *(v32 + 96);
        *v71 = v35;
        *&v71[16] = v36;
        *&v70[16] = v34;
        if (!re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey(v62, &v68))
        {
          re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v62, &v68);
          v37 = re::DynamicArray<re::TechniqueFunctionConstant>::add(v59, &v68);
        }

        if (v68 && (BYTE8(v68) & 1) != 0)
        {
          (*(*v68 + 40))(v37);
        }

        v32 += 104;
      }

      while (v32 != v33);
    }
  }

  if (*(v1 + 16) == 1)
  {
    re::DynamicArray<re::TechniqueFunctionConstant>::DynamicArray(v56, v59);
  }

  else
  {
    re::FunctionConstantsEnumerator::createPermutation(v65, v2, v4[4], v4[3], v56);
  }

  if ((*(v1 + 16) & 1) == 0)
  {
    re::MaterialBuilder::addOrReplaceFunctionConstants(v58, v57, v9 + 200, &v68);
    re::DynamicArray<re::TechniqueFunctionConstant>::operator=(v56, &v68);
    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v68);
  }

  *&v68 = v58;
  *(&v68 + 1) = v57;
  re::MaterialBuilder::addFunctionsToReflectionCache(v5, &v68, v67);
  v38 = dispatch_group_create();

  v67[2] = mach_absolute_time();
  dispatch_group_enter(v38);
  v39 = *(v9 + 1440);
  v40 = v67;
  v41 = v38;
  v55 = v41;
  re::FunctionReflectionCache::scheduleAllFunctionBuildTasks(v40, v52, &v55, *(v1 + 16), v39, v42);

  v43 = *(v52 + 48);
  v44 = *(v1 + 16);
  v45 = v41;
  v54 = v45;
  re::StringID::invalid(&v53);
  *&v68 = v1;
  *(&v68 + 1) = v67;
  if (v67)
  {
    v46 = v67 + 1;
  }

  *&v69 = v43;
  *(&v69 + 1) = v5;
  re::DynamicArray<re::TechniqueFunctionConstant>::DynamicArray(v70, v56);
  *&v71[8] = v39;
  *&v71[16] = v9 + 248;
  *&v71[24] = v52;
  *&v72 = v51;
  if (WeakRetained)
  {
    v47 = WeakRetained;
  }

  *(&v72 + 1) = v9;
  v74 = re::globalAllocators((v9 + 8))[2];
  v48 = (*(*v74 + 32))(v74, 120, 0);
  *v48 = &unk_1F5D04420;
  *(v48 + 8) = v68;
  *(v48 + 24) = v69;
  *(v48 + 64) = 0;
  *(v48 + 40) = *v70;
  *(&v68 + 1) = 0;
  *v70 = 0;
  *(v48 + 48) = *&v70[8];
  *(v48 + 56) = 0;
  *(v48 + 56) = *&v70[16];
  *&v70[8] = 0u;
  *(v48 + 72) = *v71;
  *v71 = 0;
  ++*&v70[24];
  *(v48 + 64) = 1;
  v49 = *&v71[8];
  *(v48 + 96) = *&v71[24];
  *(v48 + 80) = v49;
  *(v48 + 104) = v72;
  v72 = 0u;
  v75 = v48;
  re::ShaderManager::scheduleGroupNotifyOnCompilationQueue(v43, v44, v39, &v54, 3, &v53, v73);
  re::FunctionBase<24ul,void ()(void)>::destroyCallable(v73);
  if (*(&v72 + 1))
  {

    *(&v72 + 1) = 0;
  }

  if (v72)
  {

    *&v72 = 0;
  }

  v50 = re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v70);
  if (*(&v68 + 1))
  {
  }

  if (*&v53.var0)
  {
    if (*&v53.var0)
    {
    }
  }

  *&v53.var0 = 0;
  v53.var1 = &str_67;

  dispatch_group_leave(v45);
  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v56);
  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v59);
  re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v62);

  if (WeakRetained)
  {
  }

  re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit(v65);
  if (v67)
  {
  }
}

void *re::internal::Callable<re::dispatchMaterialPipelineDataCompilation(re::MaterialPipelineDataContext const&)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D04420;
  v2 = a1[14];
  if (v2)
  {

    a1[14] = 0;
  }

  v3 = a1[13];
  if (v3)
  {

    a1[13] = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit((a1 + 5));
  v4 = a1[2];
  if (v4)
  {

    a1[2] = 0;
  }

  return a1;
}

void re::internal::Callable<re::dispatchMaterialPipelineDataCompilation(re::MaterialPipelineDataContext const&)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D04420;
  v2 = a1[14];
  if (v2)
  {

    a1[14] = 0;
  }

  v3 = a1[13];
  if (v3)
  {

    a1[13] = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit((a1 + 5));
  v4 = a1[2];
  if (v4)
  {

    a1[2] = 0;
  }

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<re::dispatchMaterialPipelineDataCompilation(re::MaterialPipelineDataContext const&)::$_0,void ()(void)>::operator()(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = dispatch_group_create();

  dispatch_group_enter(v2);
  v3 = *(a1 + 16);
  v4 = *(a1 + 96);
  v5 = v2;
  v28 = v5;
  re::FunctionReflectionCache::scheduleReflectionTasksForBuiltFunctions(v3, v4, &v28, *(*(a1 + 8) + 16), *(a1 + 80));

  v6 = *(a1 + 24);
  v7 = *(*(a1 + 8) + 16);
  v8 = *(a1 + 80);
  v9 = v5;
  v27 = v9;
  re::StringID::invalid(&v26);
  v10 = *(a1 + 16);
  *v19 = *(a1 + 8);
  *&v19[8] = v10;
  if (v10)
  {
    v11 = (v10 + 8);
  }

  v12 = re::DynamicArray<re::TechniqueFunctionConstant>::DynamicArray(&v19[16], (a1 + 40));
  v13 = *(a1 + 104);
  *&v23 = *(a1 + 32);
  *(&v23 + 1) = v13;
  if (v13)
  {
    v12 = (v13 + 8);
  }

  v24 = *(a1 + 88);
  v14 = *(a1 + 112);
  v25 = v14;
  if (v14)
  {
    v12 = (v14 + 8);
  }

  v30 = re::globalAllocators(v12)[2];
  v15 = (*(*v30 + 32))(v30, 104, 0);
  *v15 = &unk_1F5D04478;
  *(v15 + 8) = *v19;
  *(v15 + 48) = 0;
  v16 = *&v19[16];
  v17 = v20;
  *&v19[8] = 0u;
  *(v15 + 24) = v16;
  *(v15 + 32) = __PAIR128__(*(&v20 + 1), v17);
  v20 = 0u;
  *(v15 + 56) = v22;
  ++v21;
  *(v15 + 48) = 1;
  *(v15 + 64) = v23;
  v22 = 0;
  *(&v23 + 1) = 0;
  *(v15 + 80) = v24;
  *(v15 + 96) = v25;
  v25 = 0;
  v31 = v15;
  re::ShaderManager::scheduleGroupNotifyOnCompilationQueue(v6, v7, v8, &v27, 7, &v26, v29);
  re::FunctionBase<24ul,void ()(void)>::destroyCallable(v29);
  if (v25)
  {

    v25 = 0;
  }

  if (*(&v23 + 1))
  {

    *(&v23 + 1) = 0;
  }

  v18 = re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v19[16]);
  if (*&v19[8])
  {
  }

  if (*&v26.var0)
  {
    if (*&v26.var0)
    {
    }
  }

  *&v26.var0 = 0;
  v26.var1 = &str_67;

  dispatch_group_leave(v9);
}

uint64_t re::internal::Callable<re::dispatchMaterialPipelineDataCompilation(re::MaterialPipelineDataContext const&)::$_0,void ()(void)>::cloneInto(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = &unk_1F5D04420;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (v4)
  {
    v6 = (v4 + 8);
  }

  *(a2 + 24) = *(a1 + 24);
  re::DynamicArray<re::TechniqueFunctionConstant>::DynamicArray(a2 + 40, (a1 + 40));
  v7 = *(a1 + 80);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 80) = v7;
  v8 = *(a1 + 104);
  *(a2 + 104) = v8;
  if (v8)
  {
    v9 = (v8 + 8);
  }

  v10 = *(a1 + 112);
  *(a2 + 112) = v10;
  if (v10)
  {
    v11 = (v10 + 8);
  }

  return a2;
}

uint64_t re::internal::Callable<re::dispatchMaterialPipelineDataCompilation(re::MaterialPipelineDataContext const&)::$_0,void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D04420;
  *(a2 + 8) = *(a1 + 8);
  *(a1 + 16) = 0;
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 72) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  *(a2 + 64) = 0;
  v2 = *(a1 + 48);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = v2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v3 = *(a2 + 56);
  *(a2 + 56) = *(a1 + 56);
  *(a1 + 56) = v3;
  v4 = *(a2 + 72);
  *(a2 + 72) = *(a1 + 72);
  *(a1 + 72) = v4;
  ++*(a1 + 64);
  ++*(a2 + 64);
  v5 = *(a1 + 80);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 80) = v5;
  *(a2 + 104) = *(a1 + 104);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  return a2;
}

void *re::internal::Callable<re::dispatchMaterialPipelineDataCompilation(re::MaterialPipelineDataContext const&)::$_0::operator() const(void)::{lambda(void)#1},void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D04478;
  v2 = a1[12];
  if (v2)
  {

    a1[12] = 0;
  }

  v3 = a1[9];
  if (v3)
  {

    a1[9] = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit((a1 + 3));
  v4 = a1[2];
  if (v4)
  {

    a1[2] = 0;
  }

  return a1;
}

void re::internal::Callable<re::dispatchMaterialPipelineDataCompilation(re::MaterialPipelineDataContext const&)::$_0::operator() const(void)::{lambda(void)#1},void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D04478;
  v2 = a1[12];
  if (v2)
  {

    a1[12] = 0;
  }

  v3 = a1[9];
  if (v3)
  {

    a1[9] = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit((a1 + 3));
  v4 = a1[2];
  if (v4)
  {

    a1[2] = 0;
  }

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::dispatchMaterialPipelineDataCompilation(re::MaterialPipelineDataContext const&)::$_0::operator() const(void)::{lambda(void)#1},void ()(void)>::cloneInto(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = &unk_1F5D04478;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (v4)
  {
    v6 = (v4 + 8);
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::DynamicArray(a2 + 24, (a1 + 24));
  v7 = *(a1 + 72);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = v7;
  if (v7)
  {
    v8 = (v7 + 8);
  }

  *(a2 + 80) = *(a1 + 80);
  v9 = *(a1 + 96);
  *(a2 + 96) = v9;
  if (v9)
  {
    v10 = (v9 + 8);
  }

  return a2;
}

uint64_t re::internal::Callable<re::dispatchMaterialPipelineDataCompilation(re::MaterialPipelineDataContext const&)::$_0::operator() const(void)::{lambda(void)#1},void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D04478;
  *(a2 + 8) = *(a1 + 8);
  *(a1 + 16) = 0;
  *(a2 + 56) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  *(a2 + 48) = 0;
  v2 = *(a1 + 32);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v3 = *(a2 + 40);
  *(a2 + 40) = *(a1 + 40);
  *(a1 + 40) = v3;
  v4 = *(a2 + 56);
  *(a2 + 56) = *(a1 + 56);
  *(a1 + 56) = v4;
  ++*(a1 + 48);
  ++*(a2 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a1 + 72) = 0;
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 96) = *(a1 + 96);
  *(a1 + 96) = 0;
  return a2;
}

_anonymous_namespace_ *re::setVertexAmplificationCount(_anonymous_namespace_ *this, int a2, int a3, int a4, uint64_t a5, const re::mtl::RenderCommandEncoder *a6)
{
  if (a3 != 2 || !a2 || !this)
  {
    return this;
  }

  if (!v8)
  {
    re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    this = _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return this;
  }

  v10 = v8;
  v8[1] = 0x100000001;
  *v8 = 0;
  if ((~a4 & 3) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if ((a4 & 2) != 0)
      {
        (*(*(a5 + 8) + 144))(**(a5 + 8), sel_setVertexAmplificationCount_viewMappings_, 1, v8 + 1);
      }

      goto LABEL_13;
    }

    v15 = *(a5 + 8);
    v12 = *v15;
    v13 = v15[18];
    v14 = 1;
  }

  else
  {
    v11 = *(a5 + 8);
    v12 = *v11;
    v13 = v11[18];
    v14 = 2;
  }

  v13(v12, sel_setVertexAmplificationCount_viewMappings_, v14, v10);
LABEL_13:
}

void **re::VertexCacheDeformer::init(void **result, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  if ((result[9] & 1) == 0)
  {
    *(result + 72) = 1;
    v2 = *(a2 + 16);
    if (v2)
    {
      if (*(v2 + 26))
      {
        v3 = 0;
        v10 = result;
        v4 = result + 5;
        do
        {
          memset(v39, 0, sizeof(v39));
          v5 = re::DynamicString::setCapacity(v39, 0);
          memset(v44, 0, sizeof(v44));
          v43 = 0u;
          v42 = 0u;
          v40 = 33;
          v41 = v3;
          v28[0] = 0;
          v31 = 0;
          memset(v34, 0, sizeof(v34));
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v38 = 1;
          re::DynamicArray<re::TechniqueFunctionConstant>::add(v34, v39);
          MetalFunction = re::getOrCreateMetalFunction(v2, &v26, v28, v6);
          v8 = NS::SharedPtr<MTL::Buffer>::operator=(v4 - 4, MetalFunction);
          v13 = 0;
          v16 = 0;
          memset(v19, 0, sizeof(v19));
          v20 = 0;
          v24 = 0;
          v25 = 0;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          re::DynamicArray<re::TechniqueFunctionConstant>::add(v19, v39);
          ComputePipelineState = re::getOrCreateComputePipelineState(v2, &v11);
          NS::SharedPtr<MTL::Buffer>::operator=(v4, ComputePipelineState);
          if (v24)
          {

            v24 = 0;
          }

          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v19);
          if (v16 == 1 && v17)
          {
            if (BYTE8(v17))
            {
              (*(*v17 + 40))();
            }

            v17 = 0u;
            v18 = 0u;
          }

          if (v13 == 1 && v14)
          {
            if (BYTE8(v14))
            {
              (*(*v14 + 40))();
            }

            v15 = 0u;
            v14 = 0u;
          }

          if (v11 && (v12 & 1) != 0)
          {
            (*(*v11 + 40))();
          }

          if (v26 && (v27 & 1) != 0)
          {
            (*(*v26 + 40))();
          }

          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v34);
          if (v31 == 1 && v32)
          {
            if (BYTE8(v32))
            {
              (*(*v32 + 40))();
            }

            v32 = 0u;
            v33 = 0u;
          }

          if (v28[0] == 1 && v29 && (v30 & 1) != 0)
          {
            (*(*v29 + 40))();
          }

          result = *&v39[0];
          if (*&v39[0])
          {
            if (BYTE8(v39[0]))
            {
              result = (*(**&v39[0] + 40))();
            }
          }

          ++v3;
          ++v4;
        }

        while (v3 != 4);
        *(v10 + 73) = 1;
      }
    }
  }

  return result;
}

re::DeformerFeatureFlags *re::VertexCacheDeformer::addDeformationInstance@<X0>(re::DeformerFeatureFlags *result@<X0>, _BYTE *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  *a4 = 0xFFFFFFFFLL;
  *(a4 + 8) = vdupq_n_s64(2uLL);
  v7 = *a3;
  if (v7 == 255)
  {
    v8 = *(a3 + 2);
    if (v8 && *(v8 + 208))
    {
      if (v5 && (result = re::DeformerFeatureFlags::enableStitchableDeformation(result), !result))
      {
        LOBYTE(v7) = 1;
      }

      else
      {
        LOBYTE(v7) = v6;
      }
    }

    else
    {
      LOBYTE(v7) = 3;
    }
  }

  *(a4 + 24) = v7;
  *(a4 + 32) = -1;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  return result;
}

_anonymous_namespace_ *re::VertexCacheDeformer::allocateBuffers(uint64_t a1, NSObject *a2, re::PerFrameAllocatorGPU **a3, unsigned int a4, uint64_t *a5)
{
  v8 = a2;
  v76 = *MEMORY[0x1E69E9840];
  v60 = *a5;
  v9 = *(*a5 + 48);
  v10 = (*(a2->isa + 4))(a2, 56, 8);
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 1;
  *(v10 + 24) = 0;
  v54 = v10 + 24;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 48) = 0;
  v56 = v10;
  re::BucketArray<re::Pair<unsigned long,re::BufferView,true>,8ul>::init(v10, v8, 1uLL);
  v59 = v9;
  if (v9)
  {
    v11 = 0;
    while (1)
    {
      v12 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v60 + 8, v11);
      v14 = *(v12 + 8);
      v15 = a5[6];
      if (v15 <= v14)
      {
        break;
      }

      v16 = v12;
      v17 = a5[5];
      v18 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](a5[1], v14);
      v6 = *(*(v18 + 44) + 144);
      if (v6)
      {
        v9 = v18;
        if (*(v6 + 80) != 0.0)
        {
          v19 = re::DeformerFeatureFlags::enableStitchableDeformation(v18);
          if (v19)
          {
            v20 = *re::graphicsLogObjects(v19);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
            }
          }
        }

        v21 = (v17 + 312 * v14);
        buf[0] = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, 1u);
        v22 = *(v21[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v21 + 7, buf) + 20);
        buf[0] = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, 1u);
        v23 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v21 + 15, buf);
        v5 = v22 / *(v21[16] + 20 * v23 + 4);
        v25 = *(v6 + 84);
        v8 = *(v6 + 36);
        if (v26 == v5)
        {
          if (*(v6 + 80) >= 0.5)
          {
            v27 = 1.0;
          }

          else
          {
            v27 = 0.0;
          }

          if (*(a1 + 73))
          {
            v28 = *(v6 + 80);
          }

          else
          {
            v28 = v27;
          }

          *(&v61 + 2) = 16842753;
          LOWORD(v61) = (re::sizeFromVertexFormat(v29, v24) + 3) & 0x1FC;
          BYTE4(v62) = v29;
          LODWORD(v62) = 0;
          if (v28 != 0.0)
          {
            v30 = fabsf(v28) + 1.0;
            if (vabds_f32(0.0, v28) >= (v30 * 0.00001))
            {
              if (v28 == 1.0 || vabds_f32(1.0, v28) < ((v30 + 1.0) * 0.00001))
              {
                v6 += 40;
              }

              else
              {
                re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(buf, a3, 8uLL, 4uLL);
                v31 = *&buf[8];
                v32 = *&buf[16];
                v33 = *buf + *&buf[8];
                *v33 = v5;
                *(v33 + 4) = v28;
                v34 = v56;
                v35 = *(v56 + 5);
                v6 = *(v56 + 1);
                if (v35 + 1 > 8 * v6)
                {
                  v53 = v31;
                  v36 = v32;
                  re::BucketArray<re::Pair<unsigned long,re::BufferView,true>,8ul>::setBucketsCapacity(v56, (v35 + 8) >> 3);
                  v32 = v36;
                  v31 = v53;
                  v34 = v56;
                  v6 = *(v56 + 1);
                }

                v5 = v35 >> 3;
                if (v6 <= v35 >> 3)
                {
                  goto LABEL_35;
                }

                v37 = v54;
                if ((*(v34 + 16) & 1) == 0)
                {
                  v37 = *(v34 + 4);
                }

                v38 = *(v37 + 8 * v5);
                ++*(v34 + 5);
                ++*(v34 + 12);
                v39 = v38 + 32 * (v35 & 7);
                *v39 = v14;
                *(v39 + 8) = v32;
                *(v39 + 16) = 0;
                *(v39 + 24) = v31;
                v40 = re::DeformationBufferAllocator::alloc(*(v9 + 45), a5[2], 1, v61, v62, *(v16 + 16), v8);
                v41 = *(v9 + 45);
                v8 = *(v16 + 16);
                v9 = *(v41 + 8);
                if (v9 <= v8)
                {
                  goto LABEL_39;
                }

                v6 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](*(v41 + 16) + 72 * *(v16 + 16) + 16, v40) + 24;
              }
            }
          }

          re::DeformationVertexBufferState::setOutputBuffer(v21, 1, a4, v6, &v61);
        }

        else
        {
          v8 = *re::graphicsLogObjects(v23);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            *&buf[4] = v26;
            *&buf[12] = 2048;
            *&buf[14] = v5;
            _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "Vertex cache size (%zu) does not match target vertex buffer size (%zu)", buf, 0x16u);
          }
        }
      }

      if (v59 == ++v11)
      {
        return v56;
      }
    }

    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, *(v12 + 8), v15);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v49, v50);
    __break(1u);
LABEL_35:
    v63 = 0;
    v75 = 0u;
    v73 = 0u;
    v74 = 0u;
    memset(buf, 0, sizeof(buf));
    v43 = MEMORY[0x1E69E9C10];
    v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v64 = 136315906;
    v65 = "operator[]";
    v66 = 1024;
    if (v44)
    {
      v45 = 3;
    }

    else
    {
      v45 = 2;
    }

    v67 = 858;
    v68 = 2048;
    v69 = v5;
    v70 = 2048;
    v71 = v6;
    _os_log_send_and_compose_impl(v45, &v63, buf, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v64, 38, v51, v52);
    _os_crash_msg();
    __break(1u);
LABEL_39:
    v63 = 0;
    v75 = 0u;
    v73 = 0u;
    v74 = 0u;
    memset(buf, 0, sizeof(buf));
    v46 = MEMORY[0x1E69E9C10];
    v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v64 = 136315906;
    v65 = "operator[]";
    v66 = 1024;
    if (v47)
    {
      v48 = 3;
    }

    else
    {
      v48 = 2;
    }

    v67 = 476;
    v68 = 2048;
    v69 = v8;
    v70 = 2048;
    v71 = v9;
    _os_log_send_and_compose_impl(v48, &v63, buf, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v64, 38, v51, v52);
    _os_crash_msg();
    __break(1u);
  }

  return v56;
}

uint64_t re::DeformationVertexBufferState::setOutputBuffer(uint64_t a1, uint64_t a2, uint64_t a3, id *this, uint64_t a5)
{
  re::BufferSlice::buffer(this, a2);
  v10 = [*this contents];
  v11 = this[4];
  re::BufferSlice::buffer(this, v12);
  v13 = *this;
  v15[0] = v10;
  v15[1] = v11;
  v15[2] = v13;
  return re::DeformationVertexBufferState::setOutputBuffer(a1, a2, a3, v15, a5);
}

void re::VertexCacheDeformer::stitchedFunctionParameters(uint64_t a1, uint64_t a2, re::PerFrameAllocatorGPU **a3, uint64_t *a4, void *a5)
{
  v48 = *MEMORY[0x1E69E9840];
  v43 = *a4;
  v5 = *(*a4 + 48);
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    v40 = a1 + 8;
    v37 = *(*a4 + 48);
    while (1)
    {
      v9 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v43 + 8, v8);
      v10 = *(v9 + 8);
      v11 = a4[6];
      if (v11 <= v10)
      {
        break;
      }

      v12 = (a4[5] + 312 * v10);
      v13 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](a4[1], v10);
      if ((*v12 & 2) != 0)
      {
        v14 = v13;
        v15 = re::DeformationVertexBufferState::inputVertexCount(v12, 1);
        v16 = *(*(v14 + 352) + 144);
        v17 = *(v16 + 84);
        if (v18 == v15)
        {
          v19 = (v40 + 8 * v17);
          if (*v19)
          {
            v20 = *(v16 + 80);
            re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(buf, a3, 8uLL, 4uLL);
            v22 = *&buf[8];
            v23 = *&buf[16];
            v24 = (*buf + *&buf[8]);
            *v24 = 0;
            v24[1] = v20;
            v25 = a5[1];
            if (v25 <= v8)
            {
              goto LABEL_18;
            }

            v41 = v23;
            v42 = v22;
            v26 = (*a5 + v7);
            *v26 = v19;
            if (v26[2] <= 3uLL)
            {
              re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::setCapacity(v26 + 1, 4uLL);
            }

            *buf = 1;
            *&buf[8] = 0u;
            v47 = 0u;
            re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v26 + 1), buf);
            *buf = 2;
            *&buf[8] = 0;
            *&buf[16] = 0;
            *&v47 = *(v16 + 32);
            v27 = *(v16 + 24);
            if (v27 == -1)
            {
              goto LABEL_19;
            }

            v45 = &v44;
            *&buf[8] = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_10BufferViewC1ERKNS6_11BufferSliceEmmE3__0ZNS9_C1ESC_mmE3__1EEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v27])(&v45, v16);
            *&buf[16] = v28;
            *(&v47 + 1) = 1;
            re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v26 + 1), buf);
            *buf = 2;
            *&buf[8] = 0;
            *&buf[16] = 0;
            *&v47 = *(v16 + 72);
            v29 = *(v16 + 64);
            if (v29 == -1)
            {
              goto LABEL_19;
            }

            v45 = &v44;
            *&buf[8] = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_10BufferViewC1ERKNS6_11BufferSliceEmmE3__0ZNS9_C1ESC_mmE3__1EEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v29])(&v45, v16 + 40);
            *&buf[16] = v30;
            *(&v47 + 1) = 1;
            re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v26 + 1), buf);
            *buf = 3;
            *&buf[8] = v41;
            *&buf[16] = 0;
            v47 = v42;
            re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v26 + 1), buf);
            v5 = v37;
          }
        }

        else
        {
          v31 = v15;
          v32 = *re::graphicsLogObjects(v15);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            *&buf[4] = v18;
            *&buf[12] = 2048;
            *&buf[14] = v31;
            _os_log_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_DEFAULT, "Vertex cache size (%zu) does not match target vertex buffer size (%zu)", buf, 0x16u);
          }
        }
      }

      ++v8;
      v7 += 48;
      if (v5 == v8)
      {
        return;
      }
    }

    re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, *(v9 + 8), v11);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v33, v35);
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, v21, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v25);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v34, v36);
    __break(1u);
LABEL_19:
    std::__throw_bad_variant_access[abi:nn200100]();
  }
}

uint64_t re::DeformationVertexBufferState::inputVertexCount(void *a1, uint64_t a2)
{
  v2 = a2;
  v6 = a2;
  re::DeformationVertexBufferState::ensureVertexBufferInitialized(a1, a2);
  v4 = *(a1[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(a1 + 7, &v6) + 20);
  v7 = v2;
  re::DeformationVertexBufferState::ensureVertexBufferInitialized(a1, v2);
  return v4 / *(a1[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(a1 + 15, &v7) + 4);
}

uint64_t re::VertexCacheDeformer::deformGPU(unint64_t a1, uint64_t a2, void **this, uint64_t *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  re::mtl::ComputeCommandEncoder::pushDebugGroup(this, "Apply Vertex Cache Deformer");
  v34 = *(a2 + 40);
  if (v34)
  {
    v9 = 0;
    v33 = a1 + 40;
    while (1)
    {
      v10 = *(a2 + 40);
      if (v10 <= v9)
      {
        break;
      }

      a1 = v9 >> 3;
      v4 = *(a2 + 8);
      if (v4 <= v9 >> 3)
      {
        goto LABEL_11;
      }

      v11 = a2 + 24;
      if ((*(a2 + 16) & 1) == 0)
      {
        v11 = *(a2 + 32);
      }

      v12 = *(v11 + 8 * a1) + 32 * (v9 & 7);
      v13 = *v12;
      v14 = a4[6];
      if (v14 <= *v12)
      {
        goto LABEL_15;
      }

      a1 = a4[5] + 312 * v13;
      v15 = *(*(re::BucketArray<re::ActiveDeformation,8ul>::operator[](a4[1], v13) + 352) + 144);
      LOBYTE(v40[0]) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(a1, 1u);
      v16 = *(*(a1 + 64) + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((a1 + 56), v40) + 20);
      LOBYTE(v40[0]) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(a1, 1u);
      v17 = v16 / *(*(a1 + 128) + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((a1 + 120), v40) + 4);
      v18 = *(v15 + 84);
      v4 = [*(v33 + 8 * v18) maxTotalThreadsPerThreadgroup];
      [*this setComputePipelineState:*(v33 + 8 * v18)];
      re::BufferSlice::buffer(v15, v19);
      [*this setBuffer:*v15 offset:*(v15 + 32) atIndex:0];
      re::BufferSlice::buffer(v15 + 40, v20);
      [*this setBuffer:*(v15 + 40) offset:*(v15 + 72) atIndex:1];
      LOBYTE(v40[0]) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(a1, 1u);
      v21 = *(*(a1 + 192) + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((a1 + 184), v40) + 24);
      LOBYTE(v40[0]) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(a1, 1u);
      [*this setBuffer:v21 offset:*(*(a1 + 192) + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find((a1 + 184), v40) + 16), 2}];
      [*this setBuffer:*(v12 + 8) offset:*(v12 + 24) atIndex:3];
      v22 = *this;
      *&v40[0] = (v17 + v4 - 1) / v4;
      *(v40 + 8) = vdupq_n_s64(1uLL);
      *v37 = v4;
      *&v37[8] = *(v40 + 8);
      [v22 dispatchThreadgroups:v40 threadsPerThreadgroup:v37];
      if (v34 == ++v9)
      {
        return [*this popDebugGroup];
      }
    }

    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, v9, v10);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v27, v29);
    __break(1u);
LABEL_11:
    v36 = 0;
    memset(v40, 0, sizeof(v40));
    v24 = MEMORY[0x1E69E9C10];
    v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v37 = 136315906;
    *&v37[4] = "operator[]";
    *&v37[12] = 1024;
    if (v25)
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    *&v37[14] = 858;
    *&v37[18] = 2048;
    *&v37[20] = a1;
    v38 = 2048;
    v39 = v4;
    _os_log_send_and_compose_impl(v26, &v36, v40, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v37, 38, v31, v32);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v13, v14);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v28, v30);
    __break(1u);
  }

  return [*this popDebugGroup];
}

void re::VertexCacheDeformer::~VertexCacheDeformer(re::VertexCacheDeformer *this)
{
  re::VertexCacheDeformer::~VertexCacheDeformer(this);

  JUMPOUT(0x1E6906520);
}

{
  for (i = 64; i != 32; i -= 8)
  {
    v3 = *(this + i);
    if (v3)
    {

      *(this + i) = 0;
    }
  }

  do
  {
    v4 = *(this + i);
    if (v4)
    {

      *(this + i) = 0;
    }

    i -= 8;
  }

  while (i);
}

void re::VertexCacheDeformer::deformCPU(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected CPU deform call for Vertex Cache Deformer.", "!Unreachable code", "deformCPU", 88);
  _os_crash("assertion failure: (!Unreachable code) Unexpected CPU deform call for Vertex Cache Deformer.");
  __break(1u);
}

uint64_t re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(void *a1, unsigned __int8 *a2)
{
  if (!a1[7])
  {
    return -1;
  }

  v2 = a1[2];
  if (v2 < 0x10 || !a1[3])
  {
    return -1;
  }

  v3 = v2 >> 4;
  v4 = *a2;
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v4) ^ ((0xBF58476D1CE4E5B9 * v4) >> 27));
  v6 = v5 ^ (v5 >> 31);
  v7 = v6 % v3;
  v8 = vdupq_n_s8(v6 & 0x7F);
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  v10 = v6 % v3;
  while (1)
  {
    v11 = *(*a1 + 16 * v10);
    v12 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v8, v11), xmmword_1E304FAD0)))), 0x3830282018100800);
    v13 = __clz(__rbit64(v12));
    if (v13 <= 0x3F)
    {
      break;
    }

LABEL_10:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v11, v9), xmmword_1E304FAD0)))), 0x3830282018100800))
    {
      return -1;
    }

    if (v10 + 1 == v3)
    {
      v10 = 0;
    }

    else
    {
      ++v10;
    }

    v15 = -1;
    if (v10 == v7)
    {
      return v15;
    }
  }

  v14 = 16 * v10;
  while (1)
  {
    v15 = v13 + v14;
    if (v4 == *(a1[1] + 32 * (v13 + v14)))
    {
      return v15;
    }

    if (v13 <= 0x3E)
    {
      v13 = __clz(__rbit64((-2 << v13) & v12));
      if (v13 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_10;
  }
}

uint64_t re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(void *a1, unsigned __int8 *a2)
{
  if (!a1[7])
  {
    return -1;
  }

  v2 = a1[2];
  if (v2 < 0x10 || !a1[3])
  {
    return -1;
  }

  v3 = v2 >> 4;
  v4 = *a2;
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v4) ^ ((0xBF58476D1CE4E5B9 * v4) >> 27));
  v6 = v5 ^ (v5 >> 31);
  v7 = v6 % v3;
  v8 = vdupq_n_s8(v6 & 0x7F);
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  v10 = v6 % v3;
  while (1)
  {
    v11 = *(*a1 + 16 * v10);
    v12 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v8, v11), xmmword_1E304FAD0)))), 0x3830282018100800);
    v13 = __clz(__rbit64(v12));
    if (v13 <= 0x3F)
    {
      break;
    }

LABEL_10:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v11, v9), xmmword_1E304FAD0)))), 0x3830282018100800))
    {
      return -1;
    }

    if (v10 + 1 == v3)
    {
      v10 = 0;
    }

    else
    {
      ++v10;
    }

    v15 = -1;
    if (v10 == v7)
    {
      return v15;
    }
  }

  v14 = 16 * v10;
  while (1)
  {
    v15 = v13 + v14;
    if (v4 == *(a1[1] + 20 * (v13 + v14)))
    {
      return v15;
    }

    if (v13 <= 0x3E)
    {
      v13 = __clz(__rbit64((-2 << v13) & v12));
      if (v13 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_10;
  }
}

uint64_t re::DeformationVertexBufferState::setOutputBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  v19 = a2;
  re::DeformationVertexBufferState::ensureVertexBufferInitialized(a1, a2);
  v8 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v7 + 248), &v19);
  *(v7 + 32) |= !re::VertexBufferFormat::operator==((*(v7 + 256) + 20 * v8 + 4), a5);
  v9 = *(v7 + 192) + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v7 + 184), &v19);
  v10 = *(a4 + 16);
  *(v9 + 8) = *a4;
  *(v9 + 24) = v10;
  v11 = *(v7 + 256) + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v7 + 248), &v19);
  v12 = *(a5 + 5);
  *(v11 + 4) = *a5;
  *(v11 + 9) = v12;
  v13 = 1 << v19;
  v14 = re::Bitset<64>::toWordIndex(v7 + 8, v19);
  *(v7 + 8 + 8 * v14) |= v13;
  v15 = 1 << v19;
  v16 = re::Bitset<64>::toWordIndex(v7 + 16, v19);
  *(v7 + 16 + 8 * v16) |= v15;
  v7 += 24;
  v17 = 1 << v19;
  result = re::Bitset<64>::toWordIndex(v7, v19);
  *(v7 + 8 * result) |= v17;
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::Pair<unsigned long,re::BufferView,true>,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::Pair<unsigned long,re::BufferView,true>,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::Pair<unsigned long,re::BufferView,true>,8ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 256, 0);
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

re *re::RenderGraphStats::registerNewFrame(re *this, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = *this + 1;
  *this = v5;
  if (v5 >> 3 >= 0x2A3)
  {
    v6 = this;
    this = *(this + 1);
    v7 = *(v6 + 2);
    v8 = *(v6 + 3);
    if (!(this | v7))
    {
      if (!v8)
      {
        if (!*(v6 + 4))
        {
LABEL_8:
          *v6 = 0;
          *(v6 + 1) = 0;
          *(v6 + 4) = 0;
          return this;
        }

        v8 = 0;
      }

      v7 = 0;
    }

    this = re::REAnalyticsEventRenderGraphCacheState(this, v7, v8, *(v6 + 4));
    goto LABEL_8;
  }

  return this;
}

uint64_t re::RenderFrameWorkloadPatchCamera::trackLocalEyePose(uint64_t a1, __int128 *a2, int a3, re::DynamicString *a4)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v5 = a3 == 2;
  v7 = *a2;
  v8 = a2[1];
  re::DynamicString::DynamicString(&v9, a4);
  v12[0] = 1;
  v13 = v7;
  v14 = v8;
  v15 = 0;
  v16[0] = v9;
  v16[3] = v11;
  *&v16[1] = v10;
  v11 = 0;
  v9 = 0;
  v10 = 0uLL;
  re::Optional<re::RenderFrameWorkloadPatchCamera::TrackedEyePoseInfo>::operator=(a1 + 96 * v5 + 192, v12);
  if (v12[0] == 1 && v16[0])
  {
    if (v16[1])
    {
      (*(*v16[0] + 40))();
    }

    memset(v16, 0, 32);
  }

  result = v9;
  if (v9)
  {
    if (v10)
    {
      return (*(*v9 + 40))();
    }
  }

  return result;
}

uint64_t re::Optional<re::RenderFrameWorkloadPatchCamera::TrackedEyePoseInfo>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*a2)
    {
      v3 = *(a2 + 16);
      v4 = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 16) = v3;
      *(a1 + 32) = v4;
      re::DynamicString::operator=((a1 + 56), (a2 + 56));
    }

    else
    {
      re::DynamicString::deinit((a1 + 56));
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    v5 = *(a2 + 16);
    v6 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 16) = v5;
    *(a1 + 32) = v6;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 80) = *(a2 + 80);
    v7 = *(a2 + 64);
    *(a1 + 56) = *(a2 + 56);
    *(a2 + 56) = 0;
    v8 = *(a2 + 72);
    *(a2 + 80) = 0;
    v10 = *(a1 + 64);
    v9 = *(a1 + 72);
    *(a1 + 64) = v7;
    *(a1 + 72) = v8;
    *(a2 + 64) = v10;
    *(a2 + 72) = v9;
  }

  return a1;
}

uint64_t re::RenderFrameWorkloadPatchCamera::trackWorldEyePose(uint64_t a1, __int128 *a2, int a3, re::DynamicString *a4)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v5 = a3 == 2;
  v7 = *a2;
  v8 = a2[1];
  re::DynamicString::DynamicString(&v9, a4);
  v12[0] = 1;
  v13 = v7;
  v14 = v8;
  v15 = 1;
  v16[0] = v9;
  v16[3] = v11;
  *&v16[1] = v10;
  v11 = 0;
  v9 = 0;
  v10 = 0uLL;
  re::Optional<re::RenderFrameWorkloadPatchCamera::TrackedEyePoseInfo>::operator=(a1 + 96 * v5 + 192, v12);
  if (v12[0] == 1 && v16[0])
  {
    if (v16[1])
    {
      (*(*v16[0] + 40))();
    }

    memset(v16, 0, 32);
  }

  result = v9;
  if (v9)
  {
    if (v10)
    {
      return (*(*v9 + 40))();
    }
  }

  return result;
}

void re::RenderFrameWorkloadPatchCamera::applyPostEncode(re::RenderFrameWorkloadPatchCamera *this, const re::RenderFrame *a2)
{
  re::RenderFrameWorkloadPatchCamera::patchPostEncodeTransforms(this, a2, "Camera", this + 32, 0);
  re::RenderFrameWorkloadPatchCamera::patchPostEncodeTransforms(this, a2, "MXI", this + 32, "_MXIOffscreen_0");
  re::RenderFrameWorkloadPatchCamera::patchPostEncodeTransforms(this, a2, "MXI", this + 32, "_MXIOffscreen_1");
  re::RenderFrameWorkloadPatchCamera::patchPostEncodeTransforms(this, a2, "MXI", this + 32, "_MXIOffscreen_2");
  re::RenderFrameWorkloadPatchCamera::patchPostEncodeTransforms(this, a2, "MXI", this + 32, "_MXIOffscreen_3");
  re::RenderFrameWorkloadPatchCamera::patchPostEncodeTransforms(this, a2, "MXI", this + 32, "_MXIOffscreen_4");
  re::RenderFrameWorkloadPatchCamera::patchPostEncodeTransforms(this, a2, "MXI", this + 32, "_MXIOffscreen_5");
  re::RenderFrameWorkloadPatchCamera::patchPostEncodeTransforms(this, a2, "MXI", this + 32, "_MXIOffscreen_6");

  re::RenderFrameWorkloadPatchCamera::patchPostEncodeTransforms(this, a2, "MXI", this + 32, "_MXIOffscreen_7");
}

void re::RenderFrameWorkloadPatchCamera::patchPostEncodeTransforms(re::LateLatch *a1, uint64_t a2, const char *a3, _BYTE *a4, const char *a5)
{
  v102 = *MEMORY[0x1E69E9840];
  if (*a4 == 1 && re::LateLatch::shouldApplyHeadPoseLateLatching(a1))
  {
    v93 = 0u;
    *buf = xmmword_1E30474D0;
    v101 = 0u;
    re::decomposeScaleRotationTranslation<float>((a4 + 16), &v93, buf, &v101);
    v84 = v101;
    v85 = *buf;
    v10 = strlen(a3);
    v80 = a2;
    if (v10)
    {
      v10 = MurmurHash3_x64_128(a3, v10, 0, &v93);
      v11 = (v93.i64[1] - 0x61C8864680B583E9 + (v93.i64[0] << 6) + (v93.i64[0] >> 2)) ^ v93.i64[0];
    }

    else
    {
      v11 = 0;
    }

    v12 = 0;
    v13 = 0;
    *v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v14 = a1 + 192;
    v95 = 0u;
    v96 = 0u;
    v88 = &buf[9];
    v89 = v11;
    v87 = (v11 >> 2) + (v11 << 6);
    v82 = vnegq_f32(v85);
    v83 = vextq_s8(vuzp1q_s32(v85, v85), v85, 0xCuLL);
    _S8 = v85.i32[3];
    v16 = (&v90 + 8);
    v17 = &v93;
    v18 = 1;
    v93 = 0u;
    v94 = 0u;
    v81 = vdupq_laneq_s32(v85, 3);
    do
    {
      v19 = v18;
      v20 = &v14[96 * v13];
      if (v20->i8[0] == 1)
      {
        *buf = 0u;
        v92 = 0u;
        re::DynamicString::setCapacity(buf, 0);
        re::DynamicString::operator=(buf, &v20[3].u32[2]);
        if (a5)
        {
          v21 = strlen(a5);
          re::DynamicString::append(buf, a5, v21);
        }

        if (buf[8])
        {
          v22 = v92;
        }

        else
        {
          v22 = &buf[9];
        }

        v23 = strlen(v22);
        v25 = 0x9E3779B97F4A7C17;
        if (v23)
        {
          MurmurHash3_x64_128(v22, v23, 0, &v101);
          v25 = ((*(&v101 + 1) - 0x61C8864680B583E9 + (v101 << 6) + (v101 >> 2)) ^ v101) - 0x61C8864680B583E9;
        }

        *v16 = (v87 + v25) ^ v89;
        if (v20[3].i8[0] == 1)
        {
          v32 = v20[1];
          v38 = v20[2];
        }

        else
        {
          if (v20[3].i8[0])
          {
            re::internal::assertLog(4, v24, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "worldEyePose", 207);
            _os_crash("assertion failure: (!Unreachable code) ");
            __break(1u);
          }

          v26 = v20[1];
          _Q2 = v20[2];
          v28 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), v82), v26, v83);
          v29 = vaddq_f32(v28, v28);
          v30 = vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL);
          _Q3 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL), v82), v30, v83);
          v32 = vaddq_f32(v84, vaddq_f32(vaddq_f32(v26, vmulq_laneq_f32(v30, v85, 3)), vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL)));
          v33 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL), v82), _Q2, v83);
          v38 = vmlaq_laneq_f32(vmlaq_f32(vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL), _Q2, v81), v85, _Q2, 3);
          __asm { FMLA            S3, S8, V2.S[3] }

          v38.i32[3] = _Q3.i32[0];
        }

        v39 = vnegq_f32(v38);
        v40 = vnegq_f32(v32);
        v41 = vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL);
        v42 = vmlsq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL), v38), v41, v32);
        v43 = vaddq_f32(v42, v42);
        v44 = vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL);
        v45 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL), v38), v44, v41);
        v46 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v44, v38, 3), v32), vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL));
        *v44.i32 = *v39.i32 + *v39.i32;
        v47 = (*v39.i32 + *v39.i32) * *v39.i32;
        v48 = vmuls_lane_f32(*&v39.i32[1] + *&v39.i32[1], *v39.i8, 1);
        v49 = vmuls_lane_f32(*&v39.i32[2] + *&v39.i32[2], v39, 2);
        v50 = vmuls_lane_f32(*v39.i32 + *v39.i32, *v39.i8, 1);
        v51 = vmuls_lane_f32(*v39.i32 + *v39.i32, v39, 2);
        *v39.i32 = vmuls_lane_f32(*&v39.i32[1] + *&v39.i32[1], v39, 2);
        *v44.i32 = vmuls_lane_f32(*v44.i32, v38, 3);
        v41.f32[0] = vmuls_lane_f32(*&v39.i32[1] + *&v39.i32[1], v38, 3);
        v52 = vmuls_lane_f32(*&v39.i32[2] + *&v39.i32[2], v38, 3);
        HIDWORD(v53) = 0;
        *&v53 = 1.0 - (v48 + v49);
        *(&v53 + 1) = v50 + v52;
        *(&v53 + 2) = v51 - v41.f32[0];
        *v45.i32 = 1.0 - (v47 + v49);
        HIDWORD(v54) = 0;
        *&v54 = v50 - v52;
        DWORD1(v54) = v45.i32[0];
        *(&v54 + 2) = *v39.i32 + *v44.i32;
        v41.i32[3] = 0;
        v41.f32[0] = v51 + v41.f32[0];
        v41.f32[1] = *v39.i32 - *v44.i32;
        v41.f32[2] = 1.0 - (v47 + v48);
        v46.i32[3] = 1.0;
        *v17 = v53;
        v17[1] = v54;
        v17[2] = v41;
        v17[3] = v46;
        v10 = *buf;
        if (*buf && (buf[8] & 1) != 0)
        {
          v10 = (*(**buf + 40))();
        }

        ++v12;
      }

      v18 = 0;
      v16 = &v90;
      v17 = &v97;
      v13 = 1;
    }

    while ((v19 & 1) != 0);
    if (v12)
    {
      v55 = *(a2 + 672);
      if (v55)
      {
        v56 = 0;
        v57 = *(a2 + 656);
        while ((*v57 & 0x80000000) == 0)
        {
          v57 += 576;
          if (v55 == ++v56)
          {
            LODWORD(v56) = *(a2 + 672);
            break;
          }
        }
      }

      else
      {
        LODWORD(v56) = 0;
      }

      if (v56 != v55)
      {
        v59 = *(&v90 + 1);
        v60 = *(a2 + 656);
        do
        {
          if (*(v60 + 2304 * v56 + 8) == v59)
          {
            v61 = (v60 + 2304 * v56);
            re::VFXLateLatch::patchTrackedVFXDrawCalls(&v61[114].n128_i8[8], v61 + 120, &v93, 2);
            re::VisualDepthLateLatch::patchCameraMatrix(&v61[117], &v93, v12);
            *buf = &v93;
            *&buf[8] = 2;
            re::ViewConstantsLateLatch::patchTrackedViewConstantsBuffers(v61[16].n128_u64, &v61[120], buf, v12, v62, v63, v64, v65, v75, v76, v77, v78, v79, v80, v81.i64[0], v81.i64[1], v82.i64[0], v82.i64[1], v83.i64[0], v83.i64[1], v84, *(&v84 + 1), v85.i64[0], v85.i64[1], v86, v87, v88, v89, v90, *buf, v92, *&v93, v94, v95, v96, v97, v98, *(&v98 + 1), v99[0], v99[1], v100, *(&v100 + 1), v101, *(&v101 + 1), v102, v103, v104, v105, v106, v107, v108, v109, v110);
            re::InstanceConstantsLateLatch::patchTrackedInstanceConstantsBuffers(&v61[112], *(*(a2 + 8) + 184), *(a2 + 384) & 0xFFFFFFFFFFFFFFFLL, &v61[120]);
            LODWORD(v55) = *(a2 + 672);
            v60 = *(a2 + 656);
          }

          if (v55 <= v56 + 1)
          {
            v66 = v56 + 1;
          }

          else
          {
            v66 = v55;
          }

          while (v66 - 1 != v56)
          {
            LODWORD(v56) = v56 + 1;
            if ((*(v60 + 2304 * v56) & 0x80000000) != 0)
            {
              goto LABEL_44;
            }
          }

          LODWORD(v56) = v66;
LABEL_44:
          ;
        }

        while (v56 != v55);
      }

      if ((*(a2 + 704) & 1) == 0 && (atomic_exchange(re::RenderFrameWorkloadPatchCamera::patchPostEncodeTransforms(re::RenderFrame const&,char const*,re::Optional<re::Matrix4x4<float>> const&,char const*)::__FILE____LINE___logged, 1u) & 1) == 0)
      {
        v67 = *re::graphicsLogObjects(v10);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          v68 = *(a2 + 696);
          *buf = 134217984;
          *&buf[4] = v68;
          _os_log_impl(&dword_1E1C61000, v67, OS_LOG_TYPE_DEFAULT, "Patch Functions Overflowed the inline space and triggered an alloc. Size: %zu", buf, 0xCu);
        }
      }

      v69 = *(a2 + 696);
      if (v69)
      {
        v70 = 0;
        for (i = 0; i < v69; ++i)
        {
          if (*(a2 + 704))
          {
            v73 = *(a2 + 712 + v70);
            v74 = *(&v90 + 1);
            v72 = a2 + 712;
          }

          else
          {
            v72 = *(a2 + 720);
            v73 = *(v72 + v70);
            v74 = *(&v90 + 1);
          }

          if (v73 == v74)
          {
            (*(*(v72 + v70 + 8) + 16))(v72 + v70 + 8, &v93, &v97);
            v69 = *(a2 + 696);
          }

          v70 += 512;
        }
      }
    }

    else
    {
      v58 = *re::graphicsLogObjects(v10);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "patchPostEncodeTransforms";
        _os_log_error_impl(&dword_1E1C61000, v58, OS_LOG_TYPE_ERROR, "%s: Expecting at least one viewport", buf, 0xCu);
      }
    }
  }
}

void re::RenderFrameWorkloadPatchCamera::~RenderFrameWorkloadPatchCamera(re::RenderFrameWorkloadPatchCamera *this)
{
  for (i = 0; i != -192; i -= 96)
  {
    if (*(this + i + 288) == 1)
    {
      re::DynamicString::deinit((this + i + 344));
    }
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  v2 = 0;
  while (1)
  {
    if (*(this + v2 + 288) == 1)
    {
      re::DynamicString::deinit((this + v2 + 344));
    }

    v2 -= 96;
    if (v2 == -192)
    {
      *this = &unk_1F5CCF868;
      objc_destructInstance(this + 8);

      JUMPOUT(0x1E6906520);
    }
  }
}

re::ContactDeformerModelBuilder *re::ContactDeformerModelBuilder::ContactDeformerModelBuilder(re::ContactDeformerModelBuilder *this, re::Allocator *a2, const re::mtl::Device *a3, uint64_t a4, unint64_t a5, DeformationModelData *a6)
{
  *this = a3;
  *(this + 1) = a6;
  *(this + 2) = 0;
  v10 = re::DeformationModelData::create<re::ContactDeformer,re::ContactDeformerModel>(a6, a2);
  re::FixedArray<re::FixedArray<re::ContactDeformerModel::ContactDeformerTarget>>::init<>(v10 + 3, a2, a5);
  re::FixedArray<re::StringID>::init<>(v10, a2, a5);
  re::FixedArray<unsigned short>::init<unsigned short const&>(v10 + 6, a2, a4, &re::ContactDeformerModel::kInvalidIndex);
  return this;
}

uint64_t re::DeformationModelData::create<re::ContactDeformer,re::ContactDeformerModel>(uint64_t a1, uint64_t a2)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 32))(a2, 88, 8);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = &str_67;
  v6[0] = &unk_1F5D04678;
  v6[1] = a2;
  v6[3] = v6;
  v7 = v4;
  v8[3] = v8;
  v8[0] = &unk_1F5D04678;
  v8[1] = a2;
  std::unique_ptr<void,std::function<void ()(void *)>>::operator=[abi:nn200100]((a1 + 560), &v7);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v7);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v6);
  return *(a1 + 560);
}

void re::FixedArray<re::FixedArray<re::ContactDeformerModel::ContactDeformerTarget>>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >= 0xAAAAAAAAAAAAAABLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 24, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v9, v10);
    __break(1u);
    goto LABEL_9;
  }

  v5 = 24 * a3;
  v6 = (*(*a2 + 32))(a2, 24 * a3, 8);
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
    bzero(v6, v5 - 24);
    v8 = (v8 + v5 - 24);
  }

  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
}

uint64_t *re::FixedArray<unsigned short>::init<unsigned short const&>(uint64_t *result, uint64_t a2, uint64_t a3, __int16 *a4)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 < 0)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 2, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v10, v11);
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  result = (*(*a2 + 32))(a2, 2 * a3, 2);
  v6[2] = result;
  if (!result)
  {
LABEL_10:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return result;
  }

  v8 = a3 - 1;
  if (a3 != 1)
  {
    v9 = *a4;
    do
    {
      *result = v9;
      result = (result + 2);
      --v8;
    }

    while (v8);
  }

  *result = *a4;
  return result;
}

unint64_t *re::ContactDeformerModelBuilder::initTargetsForMeshPart(re::ContactDeformerModelBuilder *this, unint64_t a2, unint64_t a3, unint64_t a4, const re::StringID *a5)
{
  v6 = a2;
  v44 = *MEMORY[0x1E69E9840];
  v7 = *(*(this + 1) + 560);
  v8 = v7[7];
  if (v8 <= a2)
  {
    v30 = 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    v31 = 136315906;
    v32 = "operator[]";
    v33 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v34 = 468;
    v35 = 2048;
    v36 = v6;
    v37 = 2048;
    v38 = v8;
    _os_log_send_and_compose_impl(v19, &v30, &v39, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v31, 38, v28, v29);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v9 = a3;
  *(v7[8] + 2 * a2) = a3;
  v6 = v7[4];
  if (v6 <= a3)
  {
LABEL_17:
    v30 = 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v20 = MEMORY[0x1E69E9C10];
    v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v31 = 136315906;
    v32 = "operator[]";
    v33 = 1024;
    if (v21)
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    v34 = 468;
    v35 = 2048;
    v36 = v9;
    v37 = 2048;
    v38 = v6;
    _os_log_send_and_compose_impl(v22, &v30, &v39, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v31, 38, v28, v29);
    _os_crash_msg();
    __break(1u);
    goto LABEL_21;
  }

  v5 = a4;
  v11 = (v7[5] + 24 * a3);
  v11[1] = v5;
  if (v5)
  {
    if (v5 >> 60)
    {
LABEL_25:
      re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, v5);
      _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v26, v27);
      __break(1u);
LABEL_26:
      re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
    }

    v13 = 16 * v5;
    v11[2] = v14;
    if (!v14)
    {
      goto LABEL_26;
    }

    v16 = v14;
    if (v5 != 1)
    {
      bzero(v14, v13 - 16);
      v16 = (v16 + v13 - 16);
    }

    *v16 = 0;
    v16[1] = 0;
  }

  v5 = v7[1];
  if (v5 <= v9)
  {
LABEL_21:
    v30 = 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v23 = MEMORY[0x1E69E9C10];
    v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v31 = 136315906;
    v32 = "operator[]";
    v33 = 1024;
    if (v24)
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    v34 = 468;
    v35 = 2048;
    v36 = v9;
    v37 = 2048;
    v38 = v5;
    _os_log_send_and_compose_impl(v25, &v30, &v39, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v31, 38, v28, v29);
    _os_crash_msg();
    __break(1u);
    goto LABEL_25;
  }

  v17 = (v7[2] + 16 * v9);

  return re::StringID::operator=(v17, a5);
}

void re::ContactDeformerModelBuilder::addContactTarget(_anonymous_namespace_ *a1, unint64_t a2, void *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 2);
  v6 = *(*(a1 + 1) + 560);
  *(a1 + 2) = v5 + 1;
  v38 = *a3;
  v39 = 0;
  if (!a3[2])
  {
    goto LABEL_21;
  }

  v7 = a3;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v10 = 0;
  LODWORD(v11) = 1.0;
  LODWORD(v12) = 998277249;
  do
  {
    v13 = v7[2];
    if (v13 <= v10)
    {
      re::internal::assertLog(6, v9, v11, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v10, v13);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v29, v30);
      __break(1u);
LABEL_27:
      v40 = 0;
      v50 = 0u;
      v51 = 0u;
      memset(v49, 0, sizeof(v49));
      *v48 = 0u;
      a2 = MEMORY[0x1E69E9C10];
      v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v41 = 136315906;
      *&v41[4] = "operator[]";
      v42 = 1024;
      if (v22)
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      v43 = 468;
      v44 = 2048;
      v45 = v10;
      v46 = 2048;
      v47 = v3;
      _os_log_send_and_compose_impl(v23, &v40, v48, 80, &dword_1E1C61000, a2, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v41, 38, v31, v32);
      _os_crash_msg();
      __break(1u);
LABEL_31:
      v35 = 0;
      v50 = 0u;
      v51 = 0u;
      memset(v49, 0, sizeof(v49));
      *v48 = 0u;
      v20 = MEMORY[0x1E69E9C10];
      v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v41 = 136315906;
      *&v41[4] = "operator[]";
      v42 = 1024;
      if (v24)
      {
        v25 = 3;
      }

      else
      {
        v25 = 2;
      }

      v43 = 468;
      v44 = 2048;
      v45 = a2;
      v46 = 2048;
      v47 = v7;
      _os_log_send_and_compose_impl(v25, &v35, v48, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v41, 38, v31, v32);
      _os_crash_msg();
      __break(1u);
LABEL_35:
      v35 = 0;
      v50 = 0u;
      v51 = 0u;
      memset(v49, 0, sizeof(v49));
      *v48 = 0u;
      v26 = MEMORY[0x1E69E9C10];
      v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v41 = 136315906;
      *&v41[4] = "operator[]";
      v42 = 1024;
      if (v27)
      {
        v28 = 3;
      }

      else
      {
        v28 = 2;
      }

      v43 = 468;
      v44 = 2048;
      v45 = v5;
      v46 = 2048;
      v47 = v20;
      _os_log_send_and_compose_impl(v28, &v35, v48, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v41, 38, v31, v32);
      _os_crash_msg();
      __break(1u);
    }

    v14 = *(v7[1] + 4 * v10);
    if (v14 >= 1.0)
    {
      LOBYTE(v15) = -1;
    }

    else if (v14 <= 0.0)
    {
      LOBYTE(v15) = 0;
    }

    else
    {
      v15 = (v14 / 0.0039216);
    }

    v3 = v36;
    if (v36 <= v10)
    {
      goto LABEL_27;
    }

    *(v37 + v10++) = v15;
  }

  while (v10 != 64800);
  v16 = **a1;
  v40 = 0;
  *v41 = v16;
  v33 = 0;
  v34 = 10;
  v48[0] = 2;
  TextureCompressionType = re::mtl::getTextureCompressionType(v41, &v33, &v34, &v40, v48);
  v18 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  [v18 setUsage_];
  if (([v18 respondsToSelector_] & 1) != 0 || objc_msgSend(v18, sel_methodSignatureForSelector_, sel_setCompressionType_))
  {
    [v18 setCompressionType_];
  }

  [v18 setStorageMode_];
  [v18 setWidth_];
  [v18 setHeight_];
  [v18 setPixelFormat_];
  re::mtl::Device::makeTexture(v48, v18, *a1);
  NS::SharedPtr<MTL::Texture>::operator=(&v39, v48);
  if (v48[0])
  {
  }

  v48[0] = 0;
  v48[1] = 0;
  *&v49[0] = 0;
  *(v49 + 8) = xmmword_1E30A36F0;
  *(&v49[1] + 1) = 1;
  [v39 replaceRegion:v48 mipmapLevel:0 withBytes:v37 bytesPerRow:360];
  if (v18)
  {
  }

  if (v35 && v36)
  {
    (*(*v35 + 40))();
  }

LABEL_21:
  v7 = *(v6 + 32);
  if (v7 <= a2)
  {
    goto LABEL_31;
  }

  v19 = *(v6 + 40) + 24 * a2;
  v20 = *(v19 + 8);
  if (v20 <= v5)
  {
    goto LABEL_35;
  }

  v21 = *(v19 + 16) + 16 * v5;
  *v21 = v38;
  NS::SharedPtr<MTL::Buffer>::operator=((v21 + 8), &v39);
  if (v39)
  {
  }
}

uint64_t re::ContactDeformer::addDeformationInstance@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2)
  {
    v4 = 0;
  }

  else if (*(result + 32) == 1)
  {
    v4 = *(result + 33);
  }

  else
  {
    v4 = 1;
  }

  *a4 = 0xFFFFFFFFLL;
  *(a4 + 8) = xmmword_1E30A3700;
  LODWORD(v5) = *a3;
  if (v5 == 255)
  {
    v5 = *(a3 + 2);
    if (v5)
    {
      LOBYTE(v5) = (*(v5 + 208) != 0) & v4;
    }
  }

  *(a4 + 24) = v5;
  *(a4 + 32) = -1;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  return result;
}

uint64_t re::ContactDeformer::init(uint64_t result, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if ((*(result + 32) & 1) == 0)
  {
    v2 = result;
    *(result + 32) = 1;
    v3 = *(a2 + 16);
    if (v3)
    {
      if (*(v3 + 208))
      {
        *(result + 8) = *(v3 + 32);
        if (*(v3 + 313) == 1)
        {
          v4 = 0;
          v5 = 1;
          v26 = 1;
          v25 = 0;
          v6 = &v26;
          do
          {
            v7 = v5;
            v12 = 0;
            v15 = 0;
            memset(v18, 0, sizeof(v18));
            v19 = 0;
            v23 = 0;
            v24 = 0;
            v20 = 0;
            v21 = 0;
            v22 = 0;
            memset(v27, 0, sizeof(v27));
            re::DynamicString::setCapacity(v27, 0);
            v32 = 0u;
            v31 = 0u;
            v30 = 0u;
            v29 = 0u;
            LOBYTE(v29) = *v6;
            v28 = 53;
            re::DynamicArray<re::TechniqueFunctionConstant>::add(v18, v27);
            ComputePipelineState = re::getOrCreateComputePipelineState(v3, &v10);
            NS::SharedPtr<MTL::Buffer>::operator=((v2 + 16 + 8 * v4), ComputePipelineState);
            if (*&v27[0] && (BYTE8(v27[0]) & 1) != 0)
            {
              (*(**&v27[0] + 40))();
            }

            if (v23)
            {

              v23 = 0;
            }

            re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v18);
            if (v15 == 1 && v16)
            {
              if (BYTE8(v16))
              {
                (*(*v16 + 40))();
              }

              v16 = 0u;
              v17 = 0u;
            }

            if (v12 == 1 && v13)
            {
              if (BYTE8(v13))
              {
                (*(*v13 + 40))();
              }

              v14 = 0u;
              v13 = 0u;
            }

            result = v10;
            if (v10)
            {
              if (v11)
              {
                result = (*(*v10 + 40))();
              }
            }

            v5 = 0;
            v6 = &v25;
            v4 = 1;
          }

          while ((v7 & 1) != 0);
          *(v2 + 33) = 1;
        }
      }
    }
  }

  return result;
}

uint64_t re::ContactDeformer::allocateBuffers(re *a1, size_t a2, unint64_t a3, size_t a4, uint64_t *a5, uint64_t a6)
{
  v7 = a5;
  v163 = *MEMORY[0x1E69E9840];
  v129 = *a5;
  v11 = *(*a5 + 48);
  re::globalAllocators(a1);
  v12 = (*(*a2 + 32))(a2, 24, 8);
  v14 = v12;
  v12[1] = v11;
  v12[2] = 0;
  v136 = a2;
  *v12 = a2;
  if (v11)
  {
    if (v11 >= 0x276276276276277)
    {
LABEL_110:
      re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 104, v11);
      _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v114, v119);
      __break(1u);
      goto LABEL_111;
    }

    v6 = 104 * v11;
    v12 = (*(*a2 + 32))(a2, 104 * v11, 8);
    v14[2] = v12;
    if (!v12)
    {
LABEL_111:
      re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
LABEL_112:
      re::internal::assertLog(5, v65, "assertion failure: '%s' (%s:line %i) Invalid deformation execution mode: %u.", "!Unreachable code", "allocateBuffers", 272, a4);
      _os_crash("assertion failure: (!Unreachable code) Invalid deformation execution mode: %u.", v115);
      __break(1u);
    }

    a2 = v12;
    if (v11 != 1)
    {
      v6 -= 104;
      bzero(v12, v6);
      a2 += v6;
    }

    *(a2 + 96) = 0;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  v16 = re::globalAllocators(v12)[2];
  *&v158 = &unk_1F5D04620;
  *(&v159 + 1) = v16;
  *&v160 = &v158;
  v130 = (*(*v136 + 16))(v136, v14, &v158);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v158);
  if (v11)
  {
    v17 = 0;
    v126 = v7;
    v127 = a4;
    v139 = a3;
    v125 = v11;
    while (1)
    {
      v18 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v129 + 8, v17);
      v20 = *(v18 + 8);
      v21 = v7[6];
      if (v21 <= v20)
      {
        goto LABEL_78;
      }

      v132 = v18;
      v22 = v7[5];
      v23 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](v7[1], v20);
      a2 = *(*(v23 + 344) + 560);
      a4 = *(v23 + 392);
      v6 = *(a2 + 56);
      if (v6 <= a4)
      {
        goto LABEL_79;
      }

      v135 = v17;
      v24 = *(a1 + 1);
      v6 = WORD1(*(*(v23 + 368) + 16));
      v17 = *(v24 + 24);
      if (v17 <= v6)
      {
        goto LABEL_83;
      }

      v25 = *(*(v24 + 40) + 16 * WORD1(*(*(v23 + 368) + 16))) + 864 * *(*(v23 + 368) + 16);
      v6 = *(v25 + 56);
      if (v6 <= a4)
      {
        goto LABEL_87;
      }

      v26 = (v22 + 312 * v20);
      v11 = *(*(a2 + 64) + 2 * a4);
      v147 = *(v25 + 64);
      LOBYTE(v158) = 1;
      v27 = v23;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v26, 1u);
      v28 = *(v26[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v26 + 7, &v158) + 20);
      LOBYTE(v158) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v26, 1u);
      v134 = v26;
      v30 = *(v26[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v26 + 15, &v158) + 4);
      v131 = v27;
      v31 = *(v27 + 352);
      v32 = *(v31 + 136);
      if (v32)
      {
        v33 = re::BufferSlice::contents(*(v31 + 136));
        v137 = *(v32 + 36) >> 6;
        v138 = v33;
      }

      else
      {
        v137 = 0;
        v138 = 0;
      }

      v17 = v135;
      v6 = *(a2 + 32);
      if (v6 <= v11)
      {
        goto LABEL_91;
      }

      v6 = *(v130 + 8);
      if (v6 <= v135)
      {
        goto LABEL_95;
      }

      a3 = *(*(a2 + 40) + 24 * v11 + 8);
      v34 = *(v130 + 16) + 104 * v135;
      *(v34 + 96) = a3;
      *v34 = v136;
      *(v34 + 8) = a3;
      if (a3)
      {
        if (a3 >= 0xAAAAAAAAAAAAAABLL)
        {
          goto LABEL_103;
        }

        v35 = (*(*v136 + 32))(v136, 24 * a3, 8);
        *(v34 + 16) = v35;
        if (!v35)
        {
          goto LABEL_104;
        }

        v37 = v35;
        if (a3 != 1)
        {
          bzero(v35, 24 * a3 - 24);
          v37 += 3 * a3 - 3;
        }

        *v37 = 0;
        v37[1] = 0;
        v37[2] = 0;
      }

      v6 = v147 + 544 * a4;
      a4 = v28 / v30;
      re::FixedArray<NS::SharedPtr<MTL::Texture>>::init<>((v34 + 72), v136, a3);
      v38 = v6;
      do
      {
        v39 = v38;
        v38 = *v38;
      }

      while (v38 && !v39[8]);
      v17 = *(a2 + 8);
      if (v17 <= v11)
      {
        goto LABEL_99;
      }

      *&v158 = *(*(a2 + 16) + 16 * v11) >> 1;
      v40 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v39 + 5, &v158);
      v133 = 12 * a4;
      v41 = v40 == -1 ? 0 : (v39[6] + 16 * v40 + 8);
      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v158, v139, 4 * a4, 4uLL);
      v42 = v158;
      v44 = DWORD2(v158);
      v43 = HIDWORD(v158);
      v45 = v159;
      *(v34 + 24) = v158;
      *(v34 + 32) = v44;
      *(v34 + 36) = v43;
      *(v34 + 40) = v45;
      if (v41)
      {
        v46 = re::AttributeTable::buffers(v6);
        v48 = *v41;
        if (v47 <= v48)
        {
          goto LABEL_105;
        }

        v49 = re::BufferView::contents((v46 + 24 * *v41));
        memcpy((v42 + v44), v49, 4 * a4);
      }

      else if (v43 >= 4)
      {
        bzero((v42 + v44), v43 & 0xFFFFFFFC);
      }

      if (a3)
      {
        break;
      }

LABEL_47:
      a3 = v139;
      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v158, v139, v133, 4uLL);
      v66 = v159;
      v67 = *(&v158 + 1);
      *(v34 + 48) = v158;
      *(v34 + 56) = v67;
      *(v34 + 64) = v66;
      a4 = v127;
      if (v127)
      {
        v11 = v125;
        v7 = v126;
        v68 = v135;
        if (v127 != 1)
        {
          goto LABEL_112;
        }

        v124 = v124 & 0xFFFFFF0000000000 | 0x1E00000000;
        v69 = re::DeformationBufferAllocator::alloc(*(v131 + 360), v126[2], 1, v123 & 0xFFFF000000000000 | 0x1010001000CLL, v124, *(v132 + 16), v133);
        v70 = *(v131 + 360);
        a2 = *(v132 + 16);
        v6 = *(v70 + 8);
        if (v6 <= a2)
        {
          goto LABEL_106;
        }

        v123 = v123 & 0xFFFF000000000000 | 0x1010001000CLL;
        v71 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](*(v70 + 16) + 72 * *(v132 + 16) + 16, v69);
        WORD2(v158) = 257;
        LODWORD(v158) = 65548;
        BYTE12(v158) = 30;
        DWORD2(v158) = 0;
        re::DeformationVertexBufferState::setOutputBuffer(v134, 1, 1, (v71 + 24), &v158);
      }

      else
      {
        re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v158, v139, v133, 0x10uLL);
        LOWORD(v151) = 257;
        v150 = 65548;
        LOBYTE(v152) = 30;
        HIDWORD(v151) = 0;
        re::DeformationVertexBufferState::setOutputBuffer(v134, 1, 0, &v158, &v150);
        v11 = v125;
        v7 = v126;
        v68 = v135;
      }

      v17 = v68 + 1;
      if (v17 == v11)
      {
        goto LABEL_53;
      }
    }

    v17 = 0;
    v50 = 0;
    v51 = 0;
    v6 = 0;
    while (1)
    {
      v52 = *(a2 + 32);
      if (v52 <= v11)
      {
        break;
      }

      v53 = *(a2 + 40) + 24 * v11;
      v52 = *(v53 + 8);
      if (v52 <= v6)
      {
        goto LABEL_58;
      }

      v54 = (*(v53 + 16) + v51);
      v55 = *v54;
      v56 = (v138 + (v55 << 6));
      v57 = v137 > v55;
      v58 = MEMORY[0x1E69E9B18];
      if (v57)
      {
        v58 = v56;
      }

      v164 = *v58;
      v146 = v164.columns[1];
      v148 = v58->columns[0];
      v144 = v164.columns[3];
      v145 = v164.columns[2];
      v59 = v54[1];
      v165 = __invert_f4(*v58);
      v142 = v165.columns[1];
      v143 = v165.columns[0];
      v140 = v165.columns[3];
      v141 = v165.columns[2];
      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v158, v139, 0xA0uLL, 0x10uLL);
      v60 = v158;
      v61 = v159;
      v62 = (v158 + DWORD2(v158));
      v62->i32[0] = v59;
      v62[1] = v148;
      v62[2] = v146;
      v62[3] = v145;
      v62[4] = v144;
      v62[5] = v143;
      v62[6] = v142;
      v62[7] = v141;
      v62[8] = v140;
      v62[9].i32[0] = a4;
      v52 = *(v34 + 8);
      if (v52 <= v6)
      {
        goto LABEL_62;
      }

      v63 = *(v34 + 16) + v17;
      *v63 = v60;
      *(v63 + 16) = v61;
      v52 = *(a2 + 32);
      if (v52 <= v11)
      {
        goto LABEL_66;
      }

      v64 = *(a2 + 40) + 24 * v11;
      v52 = *(v64 + 8);
      if (v52 <= v6)
      {
        goto LABEL_70;
      }

      v52 = *(v34 + 80);
      if (v52 <= v6)
      {
        goto LABEL_74;
      }

      NS::SharedPtr<MTL::Buffer>::operator=((*(v34 + 88) + v50), (*(v64 + 16) + v51 + 8));
      ++v6;
      v51 += 16;
      v50 += 8;
      v17 += 24;
      if (a3 == v6)
      {
        goto LABEL_47;
      }
    }

    v149 = 0;
    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
    v158 = 0u;
    v73 = MEMORY[0x1E69E9C10];
    v74 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v150 = 136315906;
    v151 = "operator[]";
    v152 = 1024;
    if (v74)
    {
      v75 = 3;
    }

    else
    {
      v75 = 2;
    }

    v153 = 476;
    v154 = 2048;
    v155 = v11;
    v156 = 2048;
    v157 = v52;
    _os_log_send_and_compose_impl(v75, &v149, &v158, 80, &dword_1E1C61000, v73, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v150, 38, v120, v121);
    _os_crash_msg();
    __break(1u);
LABEL_58:
    v149 = 0;
    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
    v158 = 0u;
    v76 = MEMORY[0x1E69E9C10];
    v77 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v150 = 136315906;
    v151 = "operator[]";
    v152 = 1024;
    if (v77)
    {
      v78 = 3;
    }

    else
    {
      v78 = 2;
    }

    v153 = 476;
    v154 = 2048;
    v155 = v6;
    v156 = 2048;
    v157 = v52;
    _os_log_send_and_compose_impl(v78, &v149, &v158, 80, &dword_1E1C61000, v76, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v150, 38, v120, v121);
    _os_crash_msg();
    __break(1u);
LABEL_62:
    v149 = 0;
    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
    v158 = 0u;
    v79 = MEMORY[0x1E69E9C10];
    v80 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v150 = 136315906;
    v151 = "operator[]";
    v152 = 1024;
    if (v80)
    {
      v81 = 3;
    }

    else
    {
      v81 = 2;
    }

    v153 = 468;
    v154 = 2048;
    v155 = v6;
    v156 = 2048;
    v157 = v52;
    _os_log_send_and_compose_impl(v81, &v149, &v158, 80, &dword_1E1C61000, v79, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v150, 38, v120, v121);
    _os_crash_msg();
    __break(1u);
LABEL_66:
    v149 = 0;
    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
    v158 = 0u;
    v82 = MEMORY[0x1E69E9C10];
    v83 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v150 = 136315906;
    v151 = "operator[]";
    v152 = 1024;
    if (v83)
    {
      v84 = 3;
    }

    else
    {
      v84 = 2;
    }

    v153 = 476;
    v154 = 2048;
    v155 = v11;
    v156 = 2048;
    v157 = v52;
    _os_log_send_and_compose_impl(v84, &v149, &v158, 80, &dword_1E1C61000, v82, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v150, 38, v120, v121);
    _os_crash_msg();
    __break(1u);
LABEL_70:
    v149 = 0;
    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
    v158 = 0u;
    v85 = MEMORY[0x1E69E9C10];
    v86 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v150 = 136315906;
    v151 = "operator[]";
    v152 = 1024;
    if (v86)
    {
      v87 = 3;
    }

    else
    {
      v87 = 2;
    }

    v153 = 476;
    v154 = 2048;
    v155 = v6;
    v156 = 2048;
    v157 = v52;
    _os_log_send_and_compose_impl(v87, &v149, &v158, 80, &dword_1E1C61000, v85, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v150, 38, v120, v121);
    _os_crash_msg();
    __break(1u);
LABEL_74:
    v149 = 0;
    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
    v158 = 0u;
    v20 = MEMORY[0x1E69E9C10];
    v88 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v150 = 136315906;
    v151 = "operator[]";
    v152 = 1024;
    if (v88)
    {
      v89 = 3;
    }

    else
    {
      v89 = 2;
    }

    v153 = 468;
    v154 = 2048;
    v155 = v6;
    v156 = 2048;
    v157 = v52;
    _os_log_send_and_compose_impl(v89, &v149, &v158, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v150, 38, v120, v121);
    _os_crash_msg();
    __break(1u);
LABEL_78:
    re::internal::assertLog(6, v19, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v20, v21);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v111, v116);
    __break(1u);
LABEL_79:
    v149 = 0;
    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
    v158 = 0u;
    v90 = MEMORY[0x1E69E9C10];
    v91 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v150 = 136315906;
    v151 = "operator[]";
    v152 = 1024;
    if (v91)
    {
      v92 = 3;
    }

    else
    {
      v92 = 2;
    }

    v153 = 476;
    v154 = 2048;
    v155 = a4;
    v156 = 2048;
    v157 = v6;
    _os_log_send_and_compose_impl(v92, &v149, &v158, 80, &dword_1E1C61000, v90, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v150, 38, v120, v121);
    _os_crash_msg();
    __break(1u);
LABEL_83:
    v149 = 0;
    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
    v158 = 0u;
    v93 = MEMORY[0x1E69E9C10];
    v94 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v150 = 136315906;
    v151 = "operator[]";
    v152 = 1024;
    if (v94)
    {
      v95 = 3;
    }

    else
    {
      v95 = 2;
    }

    v153 = 797;
    v154 = 2048;
    v155 = v6;
    v156 = 2048;
    v157 = v17;
    _os_log_send_and_compose_impl(v95, &v149, &v158, 80, &dword_1E1C61000, v93, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v150, 38, v120, v121);
    _os_crash_msg();
    __break(1u);
LABEL_87:
    v149 = 0;
    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
    v158 = 0u;
    v96 = MEMORY[0x1E69E9C10];
    v97 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v150 = 136315906;
    v151 = "operator[]";
    v152 = 1024;
    if (v97)
    {
      v98 = 3;
    }

    else
    {
      v98 = 2;
    }

    v153 = 476;
    v154 = 2048;
    v155 = a4;
    v156 = 2048;
    v157 = v6;
    _os_log_send_and_compose_impl(v98, &v149, &v158, 80, &dword_1E1C61000, v96, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v150, 38, v120, v121);
    _os_crash_msg();
    __break(1u);
LABEL_91:
    v149 = 0;
    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
    v158 = 0u;
    v99 = MEMORY[0x1E69E9C10];
    v100 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v150 = 136315906;
    v151 = "operator[]";
    v152 = 1024;
    if (v100)
    {
      v101 = 3;
    }

    else
    {
      v101 = 2;
    }

    v153 = 476;
    v154 = 2048;
    v155 = v11;
    v156 = 2048;
    v157 = v6;
    _os_log_send_and_compose_impl(v101, &v149, &v158, 80, &dword_1E1C61000, v99, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v150, 38, v120, v121);
    _os_crash_msg();
    __break(1u);
LABEL_95:
    v149 = 0;
    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
    v158 = 0u;
    v102 = MEMORY[0x1E69E9C10];
    v103 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v150 = 136315906;
    v151 = "operator[]";
    v152 = 1024;
    if (v103)
    {
      v104 = 3;
    }

    else
    {
      v104 = 2;
    }

    v153 = 468;
    v154 = 2048;
    v155 = v17;
    v156 = 2048;
    v157 = v6;
    _os_log_send_and_compose_impl(v104, &v149, &v158, 80, &dword_1E1C61000, v102, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v150, 38, v120, v121);
    _os_crash_msg();
    __break(1u);
LABEL_99:
    v149 = 0;
    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
    v158 = 0u;
    v105 = MEMORY[0x1E69E9C10];
    v106 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v150 = 136315906;
    v151 = "operator[]";
    v152 = 1024;
    if (v106)
    {
      v107 = 3;
    }

    else
    {
      v107 = 2;
    }

    v153 = 476;
    v154 = 2048;
    v155 = v11;
    v156 = 2048;
    v157 = v17;
    _os_log_send_and_compose_impl(v107, &v149, &v158, 80, &dword_1E1C61000, v105, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v150, 38, v120, v121);
    _os_crash_msg();
    __break(1u);
LABEL_103:
    re::internal::assertLog(6, v29, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 24, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v112, v117);
    __break(1u);
LABEL_104:
    re::internal::assertLog(4, v36, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
LABEL_105:
    re::internal::assertLog(6, v47, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v48, v47);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v113, v118);
    __break(1u);
LABEL_106:
    v149 = 0;
    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
    v158 = 0u;
    v108 = MEMORY[0x1E69E9C10];
    v109 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v150 = 136315906;
    v151 = "operator[]";
    v152 = 1024;
    if (v109)
    {
      v110 = 3;
    }

    else
    {
      v110 = 2;
    }

    v153 = 476;
    v154 = 2048;
    v155 = a2;
    v156 = 2048;
    v157 = v6;
    _os_log_send_and_compose_impl(v110, &v149, &v158, 80, &dword_1E1C61000, v108, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v150, 38, v120, v121);
    _os_crash_msg();
    __break(1u);
    goto LABEL_110;
  }

LABEL_53:
  *a6 |= 2uLL;
  *(a6 + 9) = 1;
  return v130;
}

void re::FixedArray<NS::SharedPtr<MTL::Texture>>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
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

uint64_t re::ContactDeformer::deformGPU(uint64_t a1, uint64_t a2, void **this, void *a4)
{
  v59 = *MEMORY[0x1E69E9840];
  re::mtl::ComputeCommandEncoder::pushDebugGroup(this, "Perform Contact");
  v47 = *a4;
  v46 = *(*a4 + 48);
  if (v46)
  {
    v8 = 0;
    v44 = a2;
    v45 = a4;
    while (1)
    {
      v9 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v47 + 8, v8);
      v11 = *(a2 + 8);
      if (v11 <= v8)
      {
        goto LABEL_36;
      }

      v12 = *(v9 + 8);
      v13 = a4[6];
      if (v13 <= v12)
      {
        goto LABEL_40;
      }

      v48 = v8;
      v14 = *(a2 + 16) + 104 * v8;
      v15 = (a4[5] + 312 * v12);
      LOBYTE(v55[0]) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v15, 1u);
      v16 = *(v15[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v15 + 7, v55) + 20);
      LOBYTE(v55[0]) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v15, 1u);
      v17 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v15 + 15, v55);
      if (*(v14 + 96))
      {
        break;
      }

LABEL_22:
      v8 = v48 + 1;
      a4 = v45;
      a2 = v44;
      if (v48 + 1 == v46)
      {
        return [*this popDebugGroup];
      }
    }

    v8 = 0;
    v18 = 0;
    v50 = v16 / *(v15[16] + 20 * v17 + 4) - 1;
    while (1)
    {
      v19 = *(v14 + 80);
      if (v19 <= v18)
      {
        break;
      }

      v20 = *(*(v14 + 88) + 8 * v18);
      if (v20)
      {
        v21 = 16;
      }

      else
      {
        v21 = 24;
      }

      v22 = [*(a1 + v21) maxTotalThreadsPerThreadgroup];
      [*this setComputePipelineState:*(a1 + v21)];
      if (v18)
      {
        v23 = *(v14 + 64);
        v24 = (v14 + 56);
      }

      else
      {
        LOBYTE(v55[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v15, 1u);
        v23 = *(v15[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v15 + 7, v55) + 24);
        LOBYTE(v55[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v15, 1u);
        v24 = (v15[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v15 + 7, v55) + 16);
      }

      [*this setBuffer:v23 offset:*v24 atIndex:1];
      if (v18 == *(v14 + 96) - 1)
      {
        LOBYTE(v55[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v15, 1u);
        v25 = *(v15[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v15 + 23, v55) + 24);
        LOBYTE(v55[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v15, 1u);
        v26 = (v15[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v15 + 23, v55) + 16);
      }

      else
      {
        v25 = *(v14 + 64);
        v26 = (v14 + 56);
      }

      [*this setBuffer:v25 offset:*v26 atIndex:0];
      [*this setBuffer:*(v14 + 40) offset:*(v14 + 32) atIndex:2];
      v4 = *(v14 + 8);
      if (v4 <= v18)
      {
        goto LABEL_28;
      }

      [*this setBuffer:*(*(v14 + 16) + v8 + 16) offset:*(*(v14 + 16) + v8 + 8) atIndex:3];
      if (v20)
      {
        v4 = *(v14 + 80);
        if (v4 <= v18)
        {
          goto LABEL_32;
        }

        [*this setTexture:*(*(v14 + 88) + 8 * v18) atIndex:0];
      }

      v27 = *this;
      *&v55[0] = (v50 + v22) / v22;
      *(v55 + 8) = vdupq_n_s64(1uLL);
      *v52 = v22;
      *&v52[8] = *(v55 + 8);
      [v27 dispatchThreadgroups:v55 threadsPerThreadgroup:v52];
      ++v18;
      v8 += 24;
      if (v18 >= *(v14 + 96))
      {
        goto LABEL_22;
      }
    }

    v51 = 0;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    memset(v55, 0, sizeof(v55));
    v29 = MEMORY[0x1E69E9C10];
    v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v52 = 136315906;
    *&v52[4] = "operator[]";
    *&v52[12] = 1024;
    if (v30)
    {
      v31 = 3;
    }

    else
    {
      v31 = 2;
    }

    *&v52[14] = 476;
    *&v52[18] = 2048;
    *&v52[20] = v18;
    v53 = 2048;
    v54 = v19;
    _os_log_send_and_compose_impl(v31, &v51, v55, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v52, 38, v42, v43);
    _os_crash_msg();
    __break(1u);
LABEL_28:
    v51 = 0;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    memset(v55, 0, sizeof(v55));
    v32 = MEMORY[0x1E69E9C10];
    v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v52 = 136315906;
    *&v52[4] = "operator[]";
    *&v52[12] = 1024;
    if (v33)
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    *&v52[14] = 476;
    *&v52[18] = 2048;
    *&v52[20] = v18;
    v53 = 2048;
    v54 = v4;
    _os_log_send_and_compose_impl(v34, &v51, v55, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v52, 38, v42, v43);
    _os_crash_msg();
    __break(1u);
LABEL_32:
    v51 = 0;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    memset(v55, 0, sizeof(v55));
    v11 = MEMORY[0x1E69E9C10];
    v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v52 = 136315906;
    *&v52[4] = "operator[]";
    *&v52[12] = 1024;
    if (v35)
    {
      v36 = 3;
    }

    else
    {
      v36 = 2;
    }

    *&v52[14] = 476;
    *&v52[18] = 2048;
    *&v52[20] = v18;
    v53 = 2048;
    v54 = v4;
    _os_log_send_and_compose_impl(v36, &v51, v55, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v52, 38, v42, v43);
    _os_crash_msg();
    __break(1u);
LABEL_36:
    v51 = 0;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    memset(v55, 0, sizeof(v55));
    v37 = MEMORY[0x1E69E9C10];
    v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v52 = 136315906;
    *&v52[4] = "operator[]";
    *&v52[12] = 1024;
    if (v38)
    {
      v39 = 3;
    }

    else
    {
      v39 = 2;
    }

    *&v52[14] = 468;
    *&v52[18] = 2048;
    *&v52[20] = v8;
    v53 = 2048;
    v54 = v11;
    _os_log_send_and_compose_impl(v39, &v51, v55, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v52, 38, v42, v43);
    _os_crash_msg();
    __break(1u);
LABEL_40:
    re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v12, v13);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v40, v41);
    __break(1u);
  }

  return [*this popDebugGroup];
}

void re::ContactDeformer::deformCPU(uint64_t a1, uint64_t a2, void *a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  v4 = *(*a3 + 48);
  if (v4)
  {
    v7 = 0;
    while (1)
    {
      v8 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v3 + 8, v7);
      v10 = *(a2 + 8);
      if (v10 <= v7)
      {
        goto LABEL_21;
      }

      v11 = *(v8 + 8);
      v12 = a3[6];
      if (v12 <= v11)
      {
        goto LABEL_25;
      }

      v13 = *(a2 + 16) + 104 * v7;
      v14 = a3[5] + 312 * v11;
      LOBYTE(v56) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v14, 1u);
      v15 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v14 + 184), &v56);
      v17 = *(v13 + 96);
      if (v17)
      {
        break;
      }

LABEL_14:
      if (++v7 == v4)
      {
        return;
      }
    }

    v18 = 0;
    v19 = *(v14 + 192) + 32 * v15;
    v20 = *(v19 + 20);
    v21 = (*(v13 + 24) + *(v13 + 32));
    v10 = *(v13 + 8);
    v22 = *(v19 + 8) + *(v19 + 16) + 8;
    while (1)
    {
      if (v18 == v10)
      {
        goto LABEL_17;
      }

      v23 = (*(*(v13 + 16) + 24 * v18) + *(*(v13 + 16) + 24 * v18 + 8));
      v24 = v23[9].u32[0];
      v25 = v21;
      v26 = v20 / 0xCuLL;
      v27 = v22;
      if (v24)
      {
        break;
      }

LABEL_13:
      if (++v18 == v17)
      {
        goto LABEL_14;
      }
    }

    while (v26)
    {
      v28 = vaddq_f32(v23[8], vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v23[5], *(v27 - 2)), v23[6], *(v27 - 1)), v23[7], *v27));
      v29 = vmulq_f32(v28, v28);
      v29.f32[0] = v29.f32[2] + vaddv_f32(*v29.f32);
      v30 = sqrtf(v29.f32[0]);
      v31 = v29.i32[0];
      *v29.f32 = vrsqrte_f32(v29.u32[0]);
      *v29.f32 = vmul_f32(*v29.f32, vrsqrts_f32(v31, vmul_f32(*v29.f32, *v29.f32)));
      v32 = vmulq_n_f32(v28, vmul_f32(*v29.f32, vrsqrts_f32(v31, vmul_f32(*v29.f32, *v29.f32))).f32[0]);
      v33 = *v25++;
      v34 = (v23->f32[0] + v33) - v30;
      if (v34 < 0.0)
      {
        v34 = 0.0;
      }

      v35 = vaddq_f32(v28, vmulq_n_f32(v32, v34));
      v36 = vaddq_f32(v23[4], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23[1], v35.f32[0]), v23[2], *v35.f32, 1), v23[3], v35, 2));
      *(v27 - 1) = v36.i64[0];
      *v27 = v36.f32[2];
      v27 += 3;
      --v26;
      if (!--v24)
      {
        goto LABEL_13;
      }
    }

    re::internal::assertLog(6, v16, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v20 / 0xCuLL, v20 / 0xCuLL);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v41, v43);
    __break(1u);
LABEL_17:
    v47 = 0;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    v7 = MEMORY[0x1E69E9C10];
    v48 = 136315906;
    v49 = "operator[]";
    v50 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v37 = 3;
    }

    else
    {
      v37 = 2;
    }

    v51 = 476;
    v52 = 2048;
    v53 = v10;
    v54 = 2048;
    v55 = v10;
    _os_log_send_and_compose_impl(v37, &v47, &v56, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v48, 38, v45, v46);
    _os_crash_msg();
    __break(1u);
LABEL_21:
    v47 = 0;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    v38 = MEMORY[0x1E69E9C10];
    v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v48 = 136315906;
    v49 = "operator[]";
    v50 = 1024;
    if (v39)
    {
      v40 = 3;
    }

    else
    {
      v40 = 2;
    }

    v51 = 468;
    v52 = 2048;
    v53 = v7;
    v54 = 2048;
    v55 = v10;
    _os_log_send_and_compose_impl(v40, &v47, &v56, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v48, 38, v45, v46);
    _os_crash_msg();
    __break(1u);
LABEL_25:
    re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v11, v12);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v42, v44);
    __break(1u);
  }
}

void re::ContactDeformerModelUtil::heightMapForTarget(uint64_t *__return_ptr a1@<X8>, re::ContactDeformerModelUtil *this@<X0>, const DeformationModelData *a3@<X1>, unint64_t a4@<X2>)
{
  v39 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = *(this + 70);
  if (v5)
  {
    if (*(v5 + 32) > a3)
    {
      v6 = *(v5 + 40) + 24 * a3;
      if (*(v6 + 8) > a4)
      {
        v7 = *(*(v6 + 16) + 16 * a4 + 8);
        if (v7)
        {
          v8 = v7;
          if (([v7 width] == 360 || objc_msgSend(v8, sel_height) == 180) && objc_msgSend(v8, sel_pixelFormat) == 10)
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            v35 = 0uLL;
            *&v36[0] = 0;
            *(v36 + 8) = xmmword_1E30A36F0;
            *(&v36[1] + 1) = 1;
            [v8 getBytes:v25 bytesPerRow:360 fromRegion:&v35 mipmapLevel:0];
            v11 = 0;
            v13 = v24;
            v12 = v25;
            v15 = a1[1];
            v14 = a1[2];
            v16.n128_u32[0] = 998277249;
            do
            {
              if (v13 == v11)
              {
                v26 = 0;
                v37 = 0u;
                v38 = 0u;
                memset(v36, 0, sizeof(v36));
                v35 = 0u;
                v17 = MEMORY[0x1E69E9C10];
                v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v27 = 136315906;
                v28 = "operator[]";
                v29 = 1024;
                if (v18)
                {
                  v19 = 3;
                }

                else
                {
                  v19 = 2;
                }

                v30 = 468;
                v31 = 2048;
                v32 = v13;
                v33 = 2048;
                v34 = v13;
                _os_log_send_and_compose_impl(v19, &v26, &v35, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v23, v24);
                _os_crash_msg();
                __break(1u);
LABEL_20:
                v26 = 0;
                v37 = 0u;
                v38 = 0u;
                memset(v36, 0, sizeof(v36));
                v35 = 0u;
                v20 = MEMORY[0x1E69E9C10];
                v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v27 = 136315906;
                v28 = "operator[]";
                v29 = 1024;
                if (v21)
                {
                  v22 = 3;
                }

                else
                {
                  v22 = 2;
                }

                v30 = 468;
                v31 = 2048;
                v32 = v15;
                v33 = 2048;
                v34 = v15;
                _os_log_send_and_compose_impl(v22, &v26, &v35, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v23, v24);
                _os_crash_msg();
                __break(1u);
              }

              if (v15 == v11)
              {
                goto LABEL_20;
              }

              LOBYTE(v10) = *(v12 + v11);
              v10 = LODWORD(v10) * 0.0039216;
              *(v14 + 4 * v11++) = v10;
            }

            while (v11 != 64800);
            if (v23)
            {
              (*(*v23 + 40))(v23, v16);
            }
          }
        }
      }
    }
  }
}

re::StringID *re::ContactDeformerModelUtil::offsetBufferName@<X0>(re::StringID *__return_ptr a1@<X8>, re::ContactDeformerModelUtil *this@<X0>, const DeformationModelData *a3@<X1>)
{
  v3 = *(this + 70);
  if (v3 && *(v3 + 8) > a3)
  {
    return re::StringID::StringID(a1, (*(v3 + 16) + 16 * a3));
  }

  else
  {
    return re::StringID::invalid(a1);
  }
}

size_t re::ContactDeformerModelUtil::computeContactModelSizeExcludingMetalBuffers(re::ContactDeformerModelUtil *this, const DeformationModelData *a2)
{
  v2 = *(this + 70);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 8);
  v4 = 16 * v3 + 88;
  if (v3)
  {
    v5 = (*(v2 + 16) + 8);
    do
    {
      if (*(v5 - 1))
      {
        v6 = strlen(*v5) + 1;
      }

      else
      {
        v6 = 0;
      }

      v4 += v6;
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  v7 = *(v2 + 32);
  v8 = v4 + 24 * v7;
  if (v7)
  {
    v9 = (*(v2 + 40) + 8);
    do
    {
      v10 = *v9;
      v9 += 3;
      v8 += 16 * v10;
      --v7;
    }

    while (v7);
  }

  v11 = v8 + 2 * *(v2 + 56);
  if (*(v2 + 72))
  {
    v12 = strlen(*(v2 + 80)) + 1;
  }

  else
  {
    v12 = 0;
  }

  return v11 + v12;
}

void re::ContactDeformer::~ContactDeformer(re::ContactDeformer *this)
{
  for (i = 24; i != 8; i -= 8)
  {
    v3 = *(this + i);
    if (v3)
    {

      *(this + i) = 0;
    }
  }
}

{
  v2 = 24;
  while (1)
  {
    v3 = *(this + v2);
    if (v3)
    {

      *(this + v2) = 0;
    }

    v2 -= 8;
    if (v2 == 8)
    {

      JUMPOUT(0x1E6906520);
    }
  }
}

void re::internal::Callable<re::ContactDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::operator()(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (**a2)
  {
    v3 = v2[1];
    if (v3)
    {
      v4 = 104 * v3;
      v5 = (v2[2] + 72);
      do
      {
        re::FixedArray<NS::SharedPtr<MTL::ArgumentEncoder>>::deinit(v5);
        v6 = *(v5 - 9);
        if (v6)
        {
          if (*(v5 - 8))
          {
            (*(*v6 + 40))(v6, *(v5 - 7));
            *(v5 - 8) = 0;
            *(v5 - 7) = 0;
          }

          *(v5 - 9) = 0;
        }

        v5 += 13;
        v4 -= 104;
      }

      while (v4);
      (*(**v2 + 40))(*v2, v2[2]);
      v2[1] = 0;
      v2[2] = 0;
    }

    *v2 = 0;
  }
}

void *re::internal::Callable<re::ContactDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D04620;
  return result;
}

void *re::internal::Callable<re::ContactDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D04620;
  return result;
}

uint64_t *std::unique_ptr<void,std::function<void ()(void *)>>::operator=[abi:nn200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    std::function<void ()(void *)>::operator()((a1 + 1), v5);
  }

  std::__function::__value_func<void ()(void *)>::operator=[abi:nn200100]((a1 + 1), (a2 + 1));
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_15ContactDeformerENS2_20ContactDeformerModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE7__cloneEPNS0_6__baseISI_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D04678;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_15ContactDeformerENS2_20ContactDeformerModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISF_EEFvSE_EEclEOSE_(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    re::StringID::destroyString((v2 + 72));
    re::FixedArray<CoreIKTransform>::deinit((v2 + 48));
    if (*(v2 + 24))
    {
      v4 = *(v2 + 32);
      if (v4)
      {
        v5 = *(v2 + 40);
        v6 = &v5[3 * v4];
        do
        {
          if (*v5)
          {
            v7 = v5[1];
            if (v7)
            {
              v8 = 16 * v7;
              v9 = (v5[2] + 8);
              do
              {
                if (*v9)
                {

                  *v9 = 0;
                }

                v9 += 2;
                v8 -= 16;
              }

              while (v8);
              (*(**v5 + 40))(*v5, v5[2]);
              v5[1] = 0;
              v5[2] = 0;
            }

            *v5 = 0;
          }

          v5 += 3;
        }

        while (v5 != v6);
        (*(**(v2 + 24) + 40))(*(v2 + 24), *(v2 + 40));
        *(v2 + 32) = 0;
        *(v2 + 40) = 0;
      }

      *(v2 + 24) = 0;
    }

    re::FixedArray<re::StringID>::deinit(v2);
    v10 = *(*v3 + 40);

    return v10(v3, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_15ContactDeformerENS2_20ContactDeformerModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(void *)>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(void *)>::operator=[abi:nn200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(void *)>::operator=[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

re::RenderGraphResourceDescriptions *re::RenderGraphResourceDescriptions::RenderGraphResourceDescriptions(re::RenderGraphResourceDescriptions *this)
{
  *(this + 8) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 0;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 188) = 0u;
  *(this + 204) = 0x7FFFFFFFLL;
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 60) = 0;
  *(this + 27) = 0;
  *(this + 36) = 0;
  *(this + 70) = 0;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  v2 = re::globalAllocators(this);
  v3 = (*(*v2[2] + 32))(v2[2], 136, 8);
  v4 = re::Allocator::Allocator(v3, "RenderGraphResourceDescriptions", 1);
  *v4 = &unk_1F5D046F8;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0u;
  *(v4 + 30) = 0;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 68) = 0u;
  *(v4 + 124) = 0x7FFFFFFFLL;
  *this = v4;
  *(v3 + 5) = 0;
  *(v3 + 6) = 1024;
  *(v3 + 3) = 0;
  *(v3 + 4) = 0;
  *(v3 + 8) = 0;
  *(v3 + 9) = 0;
  return this;
}

void re::RenderGraphResourceDescriptions::~RenderGraphResourceDescriptions(re::RenderGraphResourceDescriptions *this)
{
  re::RenderGraphResourceDescriptions::deinit(this);
  re::DynamicArray<unsigned long>::deinit(this + 256);
  re::DynamicArray<unsigned long>::deinit(this + 216);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 21);
  re::DynamicArray<unsigned long>::deinit(this + 128);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  re::DynamicArray<unsigned long>::deinit(this + 48);
  re::DynamicArray<re::RenderGraphResource>::deinit(this + 8);
}

re::GrowableLinearAllocator *re::RenderGraphResourceDescriptions::deinit(re::RenderGraphResourceDescriptions *this)
{
  re::DynamicArray<unsigned long>::deinit(this + 88);
  re::DynamicArray<unsigned long>::deinit(this + 48);
  re::DynamicArray<re::RenderGraphResource>::deinit(this + 8);
  re::DynamicArray<unsigned long>::deinit(this + 128);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 21);
  re::DynamicArray<unsigned long>::deinit(this + 216);
  re::DynamicArray<unsigned long>::deinit(this + 256);
  result = *this;
  if (*this)
  {
    re::GrowableLinearAllocator::deinit(result);
    result = re::internal::destroyPersistent<re::GrowableLinearAllocator>("deinit", 36, *this);
    *this = 0;
  }

  return result;
}

uint64_t re::DynamicArray<re::RenderGraphResource>::deinit(uint64_t a1)
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
        v5 = (v3 + 8);
        v6 = 48 * v4;
        do
        {
          re::StringID::destroyString(v5);
          v5 = (v5 + 48);
          v6 -= 48;
        }

        while (v6);
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

double re::GrowableLinearAllocator::deinit(re::GrowableLinearAllocator *this)
{
  if (*(this + 6))
  {
    v2 = *(this + 8);
    if (v2)
    {
      do
      {
        v3 = *(v2 + 8);
        (*(**(this + 7) + 40))(*(this + 7));
        v2 = v3;
      }

      while (v3);
    }

    *(this + 9) = 0;
    result = 0.0;
    *(this + 56) = 0u;
    *(this + 40) = 0u;
    *(this + 24) = 0u;
  }

  return result;
}

re *re::internal::destroyPersistent<re::GrowableLinearAllocator>(re *result, uint64_t a2, uint64_t *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::GrowableLinearAllocator::deinit(a3);
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(a3 + 11);
    re::Allocator::~Allocator(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void re::RenderGraphResourceDescriptions::clear(re::RenderGraphResourceDescriptions *this)
{
  *(this + 13) = 0;
  ++*(this + 28);
  *(this + 8) = 0;
  ++*(this + 18);
  re::DynamicArray<re::RenderGraphResource>::clear(this + 8);
  *(this + 18) = 0;
  ++*(this + 38);
  re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(this + 168);
  *(this + 29) = 0;
  ++*(this + 60);
  *(this + 34) = 0;
  ++*(this + 70);
  v2 = *this;
  if (*this)
  {
    v3 = v2[8];
    if (v3)
    {
      v2[3] = v3;
      v2[4] = v3 + 16;
      v2[5] = v3 + 16;
      v2[9] = 0;
    }
  }
}

void re::DynamicArray<re::RenderGraphResource>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = (*(a1 + 32) + 8);
    v4 = 48 * v2;
    do
    {
      re::StringID::destroyString(v3);
      v3 = (v3 + 48);
      v4 -= 48;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

void re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_17, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 10;
        --v3;
      }

      while (v3);
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

uint64_t re::RenderGraphResourceDescriptions::swap(re::RenderGraphResourceDescriptions *this, re::RenderGraphResourceDescriptions *a2)
{
  v4 = *this;
  v5 = a2 + 8;
  *this = *a2;
  *a2 = v4;
  v6 = (a2 + 48);
  v8 = *(this + 1);
  v7 = (this + 8);
  *v11 = v8;
  *v7 = 0;
  *&v11[8] = *(this + 1);
  *(this + 1) = 0u;
  *(&v12 + 1) = *(this + 5);
  *(this + 5) = 0;
  ++*(this + 8);
  LODWORD(v12) = 1;
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v7, a2 + 1);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v5, v11);
  re::DynamicArray<re::RenderGraphResource>::deinit(v11);
  *v11 = *(this + 6);
  *(this + 6) = 0;
  *&v11[8] = *(this + 56);
  *(this + 56) = 0u;
  *(&v12 + 1) = *(this + 10);
  *(this + 10) = 0;
  ++*(this + 18);
  LODWORD(v12) = 1;
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(this + 48, v6);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v6, v11);
  if (*v11 && *(&v12 + 1))
  {
    (*(**v11 + 40))();
  }

  *v11 = *(this + 11);
  *&v11[8] = *(this + 6);
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(&v12 + 1) = *(this + 15);
  *(this + 15) = 0;
  ++*(this + 28);
  LODWORD(v12) = 1;
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(this + 88, a2 + 11);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a2 + 88, v11);
  if (*v11 && *(&v12 + 1))
  {
    (*(**v11 + 40))();
  }

  *v11 = *(this + 16);
  *&v11[8] = *(this + 136);
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(&v12 + 1) = *(this + 20);
  *(this + 20) = 0;
  ++*(this + 38);
  LODWORD(v12) = 1;
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(this + 128, a2 + 16);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a2 + 128, v11);
  if (*v11 && *(&v12 + 1))
  {
    (*(**v11 + 40))();
  }

  *v11 = *(this + 168);
  *(this + 168) = 0u;
  *&v11[16] = *(this + 23);
  *(this + 23) = 0;
  v12 = *(this + 12);
  *(this + 12) = xmmword_1E3058120;
  v13 = 1;
  re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(this + 168, a2 + 21);
  re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(a2 + 168, v11);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v11);
  *v11 = *(this + 27);
  *(this + 27) = 0;
  *&v11[8] = *(this + 14);
  *(this + 14) = 0u;
  *(&v12 + 1) = *(this + 31);
  *(this + 31) = 0;
  ++*(this + 60);
  LODWORD(v12) = 1;
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(this + 216, a2 + 27);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a2 + 216, v11);
  if (*v11 && *(&v12 + 1))
  {
    (*(**v11 + 40))();
  }

  *v11 = *(this + 32);
  v9 = *(this + 264);
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *&v11[8] = v9;
  *(&v12 + 1) = *(this + 36);
  *(this + 36) = 0;
  ++*(this + 70);
  LODWORD(v12) = 1;
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(this + 256, a2 + 32);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a2 + 256, v11);
  result = *v11;
  if (*v11)
  {
    if (*(&v12 + 1))
    {
      return (*(**v11 + 40))();
    }
  }

  return result;
}

void *re::RenderGraphResourceDescriptions::resolveResourceSources(void *this)
{
  v2 = this;
  v70 = *MEMORY[0x1E69E9840];
  v3 = this[8];
  v4 = this[29];
  if (v4 >= v3)
  {
    if (v4 <= v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (this[28] < v3)
    {
      this = re::DynamicArray<re::RenderGraphTargetHandle>::setCapacity(this + 27, v3);
      v4 = v2[29];
    }

    v5 = v3 - v4;
    if (v3 > v4)
    {
      v6 = 16 * v4;
      do
      {
        v7 = (v2[31] + v6);
        *v7 = 0;
        v7[1] = -1;
        v6 += 16;
        --v5;
      }

      while (v5);
    }
  }

  v2[29] = v3;
  ++*(v2 + 60);
LABEL_10:
  v8 = v2[13];
  v9 = v2[34];
  if (v9 >= v8)
  {
    if (v9 <= v8)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v2[33] < v8)
    {
      this = re::DynamicArray<re::RenderGraphTargetHandle>::setCapacity(v2 + 32, v2[13]);
      v9 = v2[34];
    }

    v10 = v8 - v9;
    if (v8 > v9)
    {
      v11 = 16 * v9;
      do
      {
        v12 = (v2[36] + v11);
        *v12 = 0;
        v12[1] = -1;
        v11 += 16;
        --v10;
      }

      while (v10);
    }
  }

  v2[34] = v8;
  ++*(v2 + 70);
  v9 = v8;
LABEL_19:
  v13 = v2[3];
  if (v13)
  {
    v14 = v2[5];
    v15 = (v14 + 24);
    v16 = v2[3];
    while (1)
    {
      v17 = *(v15 - 6);
      if (v17 == 1)
      {
        break;
      }

      if (!v17)
      {
        v18 = *v15;
        v19 = HIDWORD(*v15);
        v20 = v2[8];
        if (v20 <= v19)
        {
          goto LABEL_54;
        }

        v21 = (v2[10] + 112 * v19);
        v20 = v21[19];
        if (*v21 != 4 || v20 == -1)
        {
          v20 = v2[29];
          if (v20 <= v19)
          {
            goto LABEL_58;
          }

          v23 = *(v15 - 2);
        }

        else
        {
          if (v13 <= v20)
          {
            goto LABEL_70;
          }

          v1 = v2[29];
          if (v1 <= v19)
          {
            goto LABEL_78;
          }

          v27 = v14 + 48 * v20;
          v18 = *(v27 + 24);
          v23 = *(v27 + 8);
        }

        v28 = v23 >> 1;
        v29 = v2[31];
LABEL_47:
        v31 = (v29 + 16 * v19);
        *v31 = v28;
        v31[1] = v18;
      }

      v15 += 6;
      if (!--v16)
      {
        return this;
      }
    }

    v18 = *v15;
    v19 = HIDWORD(*v15);
    v20 = v2[13];
    if (v20 <= v19)
    {
      v56 = 0;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v65 = 0u;
      v32 = MEMORY[0x1E69E9C10];
      v57 = 136315906;
      v58 = "operator[]";
      v59 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v33 = 3;
      }

      else
      {
        v33 = 2;
      }

      v60 = 789;
      v61 = 2048;
      v62 = v19;
      v63 = 2048;
      v64 = v20;
      _os_log_send_and_compose_impl(v33, &v56, &v65, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v57, 38, v55);
      _os_crash_msg();
      __break(1u);
LABEL_54:
      v56 = 0;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v65 = 0u;
      v34 = MEMORY[0x1E69E9C10];
      v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v57 = 136315906;
      v58 = "operator[]";
      v59 = 1024;
      if (v35)
      {
        v36 = 3;
      }

      else
      {
        v36 = 2;
      }

      v60 = 789;
      v61 = 2048;
      v62 = v19;
      v63 = 2048;
      v64 = v20;
      _os_log_send_and_compose_impl(v36, &v56, &v65, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v57, 38, v55);
      _os_crash_msg();
      __break(1u);
LABEL_58:
      v56 = 0;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v65 = 0u;
      v37 = MEMORY[0x1E69E9C10];
      v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v57 = 136315906;
      v58 = "operator[]";
      v59 = 1024;
      if (v38)
      {
        v39 = 3;
      }

      else
      {
        v39 = 2;
      }

      v60 = 789;
      v61 = 2048;
      v62 = v19;
      v63 = 2048;
      v64 = v20;
      _os_log_send_and_compose_impl(v39, &v56, &v65, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v57, 38, v55);
      _os_crash_msg();
      __break(1u);
LABEL_62:
      v56 = 0;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v65 = 0u;
      v40 = MEMORY[0x1E69E9C10];
      v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v57 = 136315906;
      v58 = "operator[]";
      v59 = 1024;
      if (v41)
      {
        v42 = 3;
      }

      else
      {
        v42 = 2;
      }

      v60 = 789;
      v61 = 2048;
      v62 = v19;
      v63 = 2048;
      v64 = v9;
      _os_log_send_and_compose_impl(v42, &v56, &v65, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v57, 38, v55);
      _os_crash_msg();
      __break(1u);
LABEL_66:
      v56 = 0;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v65 = 0u;
      v43 = MEMORY[0x1E69E9C10];
      v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v57 = 136315906;
      v58 = "operator[]";
      v59 = 1024;
      if (v44)
      {
        v45 = 3;
      }

      else
      {
        v45 = 2;
      }

      v60 = 789;
      v61 = 2048;
      v62 = v20;
      v63 = 2048;
      v64 = v13;
      _os_log_send_and_compose_impl(v45, &v56, &v65, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v57, 38, v55);
      _os_crash_msg();
      __break(1u);
LABEL_70:
      v56 = 0;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v65 = 0u;
      v46 = MEMORY[0x1E69E9C10];
      v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v57 = 136315906;
      v58 = "operator[]";
      v59 = 1024;
      if (v47)
      {
        v48 = 3;
      }

      else
      {
        v48 = 2;
      }

      v60 = 789;
      v61 = 2048;
      v62 = v20;
      v63 = 2048;
      v64 = v13;
      _os_log_send_and_compose_impl(v48, &v56, &v65, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v57, 38, v55);
      _os_crash_msg();
      __break(1u);
LABEL_74:
      v56 = 0;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v65 = 0u;
      v49 = MEMORY[0x1E69E9C10];
      v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v57 = 136315906;
      v58 = "operator[]";
      v59 = 1024;
      if (v50)
      {
        v51 = 3;
      }

      else
      {
        v51 = 2;
      }

      v60 = 789;
      v61 = 2048;
      v62 = v19;
      v63 = 2048;
      v64 = v9;
      _os_log_send_and_compose_impl(v51, &v56, &v65, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v57, 38, v55);
      _os_crash_msg();
      __break(1u);
LABEL_78:
      v56 = 0;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v65 = 0u;
      v52 = MEMORY[0x1E69E9C10];
      v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v57 = 136315906;
      v58 = "operator[]";
      v59 = 1024;
      if (v53)
      {
        v54 = 3;
      }

      else
      {
        v54 = 2;
      }

      v60 = 789;
      v61 = 2048;
      v62 = v19;
      v63 = 2048;
      v64 = v1;
      _os_log_send_and_compose_impl(v54, &v56, &v65, 80, &dword_1E1C61000, v52, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v57, 38, v55);
      _os_crash_msg();
      __break(1u);
    }

    v24 = (v2[15] + 48 * v19);
    v20 = v24[7];
    if (*v24 != 4 || v20 == -1)
    {
      if (v9 <= v19)
      {
        goto LABEL_62;
      }

      v26 = *(v15 - 2);
    }

    else
    {
      if (v13 <= v20)
      {
        goto LABEL_66;
      }

      if (v9 <= v19)
      {
        goto LABEL_74;
      }

      v30 = v14 + 48 * v20;
      v18 = *(v30 + 24);
      v26 = *(v30 + 8);
    }

    v28 = v26 >> 1;
    v29 = v2[36];
    goto LABEL_47;
  }

  return this;
}

unint64_t re::DynamicArray<re::RenderGraphTargetDescription>::operator[](uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
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

    v12 = 789;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 112 * a2;
}

{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
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

  return *(a1 + 32) + 112 * a2;
}

unint64_t re::DynamicArray<re::RenderGraphBufferDescription>::operator[](uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
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

    v12 = 789;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 48 * a2;
}

{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
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

  return *(a1 + 32) + 48 * a2;
}

void re::RenderGraphResourceDescriptions::addTarget(re::GrowableLinearAllocator **this@<X0>, const re::RenderGraphTargetDescription *a2@<X1>, const char *__s@<X2>, void *a4@<X8>)
{
  v25 = -1;
  v26 = -1;
  v24 = -1;
  v21 = 0;
  v8 = strlen(__s);
  v9 = re::GrowableLinearAllocator::alloc(*this, v8 + 1, 0);
  memcpy(v9, __s, v8);
  v9[v8] = 0;
  v10 = *v9;
  if (*v9)
  {
    v11 = v9[1];
    if (v11)
    {
      v12 = v9 + 2;
      do
      {
        v10 = 31 * v10 + v11;
        v13 = *v12++;
        v11 = v13;
      }

      while (v13);
    }
  }

  v22 = 2 * v10;
  v23 = v9;
  re::DynamicArray<re::RenderGraphResource>::add((this + 1), &v21);
  re::DynamicArray<re::RenderGraphTargetDescription>::add((this + 6), a2);
  v15 = this[3];
  v16 = v15 - 1;
  v17 = this[5] + 48 * v15;
  v18 = *(this + 16) - 1;
  *(v17 - 6) = v16;
  *(v17 - 5) = v18;
  if (*(a2 + 40) == 1)
  {
    v19 = this[10] + 112 * this[8];
    *(v19 - 11) |= 1u;
  }

  v20 = this[5] + 48 * this[3];
  *a4 = *(v20 - 5) >> 1;
  a4[1] = *(v20 - 3);
  if (v22)
  {
    if (v22)
    {
    }
  }
}

__n128 re::DynamicArray<re::RenderGraphResource>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RenderGraphResource>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 48 * v4;
  *v5 = *a2;
  re::StringID::StringID((v5 + 8), (a2 + 8));
  result = *(a2 + 24);
  *(v5 + 40) = *(a2 + 40);
  *(v5 + 24) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

__n128 re::DynamicArray<re::RenderGraphTargetDescription>::add(_anonymous_namespace_ *this, __int128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RenderGraphTargetDescription>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 112 * v4;
  v6 = *a2;
  v7 = a2[2];
  *(v5 + 16) = a2[1];
  *(v5 + 32) = v7;
  *v5 = v6;
  result = a2[3];
  v9 = a2[4];
  v10 = a2[6];
  *(v5 + 80) = a2[5];
  *(v5 + 96) = v10;
  *(v5 + 48) = result;
  *(v5 + 64) = v9;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::RenderGraphResourceDescriptions::targetDescription(re *a1, uint64_t *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = *(a2 + 3);
  if (v3 < v4)
  {
    v7 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a2 + 2);
      v9 = *(a2 + 3);
      v11 = *a2;
      *buf = 67109632;
      *&buf[4] = v9;
      *&buf[8] = 1024;
      *&buf[10] = v10;
      *&buf[14] = 2048;
      *&v30 = v11;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "TargetIndex: %u ResourceIndex: %u NameHash: %llu", buf, 0x18u);
    }

    if (!*(a1 + 8))
    {
      v3 = 0;
      v4 = *(a2 + 3);
      goto LABEL_18;
    }

    v12 = 0;
    *&v8 = 136315138;
    v19 = v8;
    do
    {
      v13 = re::DynamicArray<re::RenderGraphTargetDescription>::operator[](a1 + 48, v12);
      v14 = *re::graphicsLogObjects(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        re::RenderGraphTargetDescription::valuesToString(v13, buf);
        v15 = (buf[8] & 1) != 0 ? v30 : &buf[9];
        *v21 = v19;
        v22 = v15;
        _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "%s", v21, 0xCu);
        if (*buf)
        {
          if (buf[8])
          {
            (*(**buf + 40))();
          }
        }
      }

      ++v12;
      v3 = *(a1 + 8);
    }

    while (v3 > v12);
    v4 = *(a2 + 3);
  }

  if (v3 > v4)
  {
    return *(a1 + 10) + 112 * v4;
  }

LABEL_18:
  v20 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  *buf = 0u;
  v16 = MEMORY[0x1E69E9C10];
  v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v21 = 136315906;
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
  v26 = v4;
  v27 = 2048;
  v28 = v3;
  _os_log_send_and_compose_impl(v18, &v20, buf, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v21, 38, v19, *(&v19 + 1));
  result = _os_crash_msg();
  __break(1u);
  return result;
}

{
  v34 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = *(a2 + 3);
  if (v3 < v4)
  {
    v7 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a2 + 2);
      v9 = *(a2 + 3);
      v11 = *a2;
      *buf = 67109632;
      *&buf[4] = v9;
      *&buf[8] = 1024;
      *&buf[10] = v10;
      *&buf[14] = 2048;
      *&v30 = v11;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "TargetIndex: %u ResourceIndex: %u NameHash: %llu", buf, 0x18u);
    }

    if (!*(a1 + 8))
    {
      v3 = 0;
      v4 = *(a2 + 3);
      goto LABEL_18;
    }

    v12 = 0;
    *&v8 = 136315138;
    v19 = v8;
    do
    {
      v13 = re::DynamicArray<re::RenderGraphTargetDescription>::operator[](a1 + 48, v12);
      v14 = *re::graphicsLogObjects(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        re::RenderGraphTargetDescription::valuesToString(v13, buf);
        v15 = (buf[8] & 1) != 0 ? v30 : &buf[9];
        *v21 = v19;
        v22 = v15;
        _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "%s", v21, 0xCu);
        if (*buf)
        {
          if (buf[8])
          {
            (*(**buf + 40))();
          }
        }
      }

      ++v12;
      v3 = *(a1 + 8);
    }

    while (v3 > v12);
    v4 = *(a2 + 3);
  }

  if (v3 > v4)
  {
    return *(a1 + 10) + 112 * v4;
  }

LABEL_18:
  v20 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  *buf = 0u;
  v16 = MEMORY[0x1E69E9C10];
  v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v21 = 136315906;
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
  v26 = v4;
  v27 = 2048;
  v28 = v3;
  _os_log_send_and_compose_impl(v18, &v20, buf, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v21, 38, v19, *(&v19 + 1));
  result = _os_crash_msg();
  __break(1u);
  return result;
}

double re::RenderGraphResourceDescriptions::targetDescriptionSource@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 12);
  v4 = *(a1 + 232);
  if (v4 <= v3)
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

    v14 = 797;
    v15 = 2048;
    v16 = v3;
    v17 = 2048;
    v18 = v4;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  v5 = *(a1 + 248) + 16 * v3;
  *a3 = *v5;
  result = *(v5 + 8);
  *(a3 + 8) = result;
  return result;
}

void re::RenderGraphResourceDescriptions::addBuffer(re::GrowableLinearAllocator **this@<X0>, const re::RenderGraphBufferDescription *a2@<X1>, const char *__s@<X2>, void *a4@<X8>)
{
  v24 = -1;
  v25 = -1;
  v23 = -1;
  v20 = 1;
  v8 = strlen(__s);
  v9 = re::GrowableLinearAllocator::alloc(*this, v8 + 1, 0);
  memcpy(v9, __s, v8);
  v9[v8] = 0;
  v10 = *v9;
  if (*v9)
  {
    v11 = v9[1];
    if (v11)
    {
      v12 = v9 + 2;
      do
      {
        v10 = 31 * v10 + v11;
        v13 = *v12++;
        v11 = v13;
      }

      while (v13);
    }
  }

  v21 = 2 * v10;
  v22 = v9;
  re::DynamicArray<re::RenderGraphResource>::add((this + 1), &v20);
  re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::add((this + 11), a2);
  v15 = this[3];
  v16 = v15 - 1;
  v17 = this[5] + 48 * v15;
  v18 = *(this + 26) - 1;
  *(v17 - 6) = v16;
  *(v17 - 5) = v18;
  v19 = this[5] + 48 * this[3];
  *a4 = *(v19 - 5) >> 1;
  a4[1] = *(v19 - 3);
  if (v21)
  {
    if (v21)
    {
    }
  }
}

uint64_t re::RenderGraphResourceDescriptions::bufferDescription(re *a1, uint64_t *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 13);
  v4 = *(a2 + 3);
  if (v3 < v4)
  {
    v7 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a2 + 2);
      v9 = *(a2 + 3);
      v11 = *a2;
      *buf = 67109632;
      *&buf[4] = v9;
      *&buf[8] = 1024;
      *&buf[10] = v10;
      *&buf[14] = 2048;
      *&v30 = v11;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "BufferIndex: %u ResourceIndex: %u NameHash: %llu", buf, 0x18u);
    }

    if (!*(a1 + 13))
    {
      v3 = 0;
      v4 = *(a2 + 3);
      goto LABEL_18;
    }

    v12 = 0;
    *&v8 = 136315138;
    v19 = v8;
    do
    {
      v13 = re::DynamicArray<re::RenderGraphBufferDescription>::operator[](a1 + 88, v12);
      v14 = *re::graphicsLogObjects(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        re::RenderGraphBufferDescription::valuesToString(buf, v13);
        v15 = (buf[8] & 1) != 0 ? v30 : &buf[9];
        *v21 = v19;
        v22 = v15;
        _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "%s", v21, 0xCu);
        if (*buf)
        {
          if (buf[8])
          {
            (*(**buf + 40))();
          }
        }
      }

      ++v12;
      v3 = *(a1 + 13);
    }

    while (v3 > v12);
    v4 = *(a2 + 3);
  }

  if (v3 > v4)
  {
    return *(a1 + 15) + 48 * v4;
  }

LABEL_18:
  v20 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  *buf = 0u;
  v16 = MEMORY[0x1E69E9C10];
  v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v21 = 136315906;
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
  v26 = v4;
  v27 = 2048;
  v28 = v3;
  _os_log_send_and_compose_impl(v18, &v20, buf, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v21, 38, v19, *(&v19 + 1));
  result = _os_crash_msg();
  __break(1u);
  return result;
}

{
  v34 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 13);
  v4 = *(a2 + 3);
  if (v3 < v4)
  {
    v7 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a2 + 2);
      v9 = *(a2 + 3);
      v11 = *a2;
      *buf = 67109632;
      *&buf[4] = v9;
      *&buf[8] = 1024;
      *&buf[10] = v10;
      *&buf[14] = 2048;
      *&v30 = v11;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "BufferIndex: %u ResourceIndex: %u NameHash: %llu", buf, 0x18u);
    }

    if (!*(a1 + 13))
    {
      v3 = 0;
      v4 = *(a2 + 3);
      goto LABEL_18;
    }

    v12 = 0;
    *&v8 = 136315138;
    v19 = v8;
    do
    {
      v13 = re::DynamicArray<re::RenderGraphBufferDescription>::operator[](a1 + 88, v12);
      v14 = *re::graphicsLogObjects(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        re::RenderGraphBufferDescription::valuesToString(buf, v13);
        v15 = (buf[8] & 1) != 0 ? v30 : &buf[9];
        *v21 = v19;
        v22 = v15;
        _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "%s", v21, 0xCu);
        if (*buf)
        {
          if (buf[8])
          {
            (*(**buf + 40))();
          }
        }
      }

      ++v12;
      v3 = *(a1 + 13);
    }

    while (v3 > v12);
    v4 = *(a2 + 3);
  }

  if (v3 > v4)
  {
    return *(a1 + 15) + 48 * v4;
  }

LABEL_18:
  v20 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  *buf = 0u;
  v16 = MEMORY[0x1E69E9C10];
  v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v21 = 136315906;
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
  v26 = v4;
  v27 = 2048;
  v28 = v3;
  _os_log_send_and_compose_impl(v18, &v20, buf, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v21, 38, v19, *(&v19 + 1));
  result = _os_crash_msg();
  __break(1u);
  return result;
}

double re::RenderGraphResourceDescriptions::bufferDescriptionSource@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 12);
  v4 = *(a1 + 272);
  if (v4 <= v3)
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

    v14 = 797;
    v15 = 2048;
    v16 = v3;
    v17 = 2048;
    v18 = v4;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  v5 = *(a1 + 288) + 16 * v3;
  *a3 = *v5;
  result = *(v5 + 8);
  *(a3 + 8) = result;
  return result;
}

void *re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, unint64_t *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return (*(a1 + 16) + 40 * HIDWORD(v11) + 16);
  }

  v7 = re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v11, v10);
  v8 = *a2;
  *(v7 + 16) = 0;
  result = (v7 + 16);
  *(result - 1) = v8;
  result[1] = -1;
  *result = *a3;
  result[1] = a3[1];
  ++*(a1 + 40);
  return result;
}

void re::RenderGraphResourceDescriptions::specify(unint64_t *a1, uint64_t a2, uint64_t a3, int a4, _anonymous_namespace_ *a5)
{
  v93 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 12);
  v7 = a1[8];
  if (v7 <= v6)
  {
    v87[0] = 0;
    v91 = 0u;
    v92 = 0u;
    memset(v90, 0, sizeof(v90));
    v89 = 0u;
    v70 = MEMORY[0x1E69E9C10];
    *v88 = 136315906;
    *&v88[4] = "operator[]";
    *&v88[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v71 = 3;
    }

    else
    {
      v71 = 2;
    }

    *&v88[14] = 789;
    *&v88[18] = 2048;
    *&v88[20] = v6;
    *&v88[28] = 2048;
    *&v88[30] = v7;
    _os_log_send_and_compose_impl(v71, v87, &v89, 80, &dword_1E1C61000, v70, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v88, 38, v84, v85);
    _os_crash_msg();
    __break(1u);
    goto LABEL_118;
  }

  v5 = *(a3 + 12);
  if (v7 <= v5)
  {
LABEL_118:
    v87[0] = 0;
    v91 = 0u;
    v92 = 0u;
    memset(v90, 0, sizeof(v90));
    v89 = 0u;
    v72 = MEMORY[0x1E69E9C10];
    v73 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v88 = 136315906;
    *&v88[4] = "operator[]";
    *&v88[12] = 1024;
    if (v73)
    {
      v74 = 3;
    }

    else
    {
      v74 = 2;
    }

    *&v88[14] = 789;
    *&v88[18] = 2048;
    *&v88[20] = v5;
    *&v88[28] = 2048;
    *&v88[30] = v7;
    _os_log_send_and_compose_impl(v74, v87, &v89, 80, &dword_1E1C61000, v72, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v88, 38, v84, v85);
    _os_crash_msg();
    __break(1u);
    goto LABEL_122;
  }

  if (a4)
  {
    v12 = a1[10];
    v13 = v12 + 112 * v6;
    v14 = v12 + 112 * v5;
    v15 = *v13 == 3 || *v13 == *v14;
    if (!v15 || (v16 = *(v13 + 4)) != 0 && ((v17 = *(v14 + 4)) != 0 ? (v18 = v16 == v17) : (v18 = 1), !v18) || (v19 = *(v13 + 12), v19 != -1) && ((v20 = *(v14 + 12), v20 != -1) ? (v21 = v19 == v20) : (v21 = 1), !v21) || (v22 = *(v13 + 16), v22 != -1) && ((v23 = *(v14 + 16), v23 != -1) ? (v24 = v22 == v23) : (v24 = 1), !v24) || (v25 = *(v13 + 20), v25 != -1) && ((v26 = *(v14 + 20), v26 != -1) ? (v27 = v25 == v26) : (v27 = 1), !v27) || (v28 = *(v13 + 24), v28 != -1) && ((v29 = *(v14 + 24), v29 != -1) ? (v30 = v28 == v29) : (v30 = 1), !v30) || (v31 = *(v13 + 88), v31 != -1) && ((v32 = *(v14 + 88), v32 != -1) ? (v33 = v31 == v32) : (v33 = 1), !v33) || ((v34 = *(v13 + 8), v35 = *(v14 + 8), v34 != v35) ? (v36 = (v35 | v34) >= 2) : (v36 = 0), v36 && (v34 > 8 || (((1 << v34) & 0x11C) != 0 ? (v37 = v35 > 8) : (v37 = 1), !v37 ? (v38 = ((1 << v35) & 0x11C) == 0) : (v38 = 1), v38))) && ((v35 - 5) | (v34 - 5)) >= 2)
    {
      v7 = *(a3 + 8);
      v6 = a1[3];
      if (v6 <= v7)
      {
LABEL_126:
        v87[0] = 0;
        v91 = 0u;
        v92 = 0u;
        memset(v90, 0, sizeof(v90));
        v89 = 0u;
        v78 = MEMORY[0x1E69E9C10];
        v79 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v88 = 136315906;
        *&v88[4] = "operator[]";
        *&v88[12] = 1024;
        if (v79)
        {
          v80 = 3;
        }

        else
        {
          v80 = 2;
        }

        *&v88[14] = 789;
        *&v88[18] = 2048;
        *&v88[20] = v7;
        *&v88[28] = 2048;
        *&v88[30] = v6;
        _os_log_send_and_compose_impl(v80, v87, &v89, 80, &dword_1E1C61000, v78, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v88, 38, v84, v85);
        _os_crash_msg();
        __break(1u);
LABEL_130:
        v86[0] = 0;
        v91 = 0u;
        v92 = 0u;
        memset(v90, 0, sizeof(v90));
        v89 = 0u;
        v81 = MEMORY[0x1E69E9C10];
        v82 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v88 = 136315906;
        *&v88[4] = "operator[]";
        *&v88[12] = 1024;
        if (v82)
        {
          v83 = 3;
        }

        else
        {
          v83 = 2;
        }

        *&v88[14] = 789;
        *&v88[18] = 2048;
        *&v88[20] = v7;
        *&v88[28] = 2048;
        *&v88[30] = v6;
        _os_log_send_and_compose_impl(v83, v86, &v89, 80, &dword_1E1C61000, v81, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v88, 38, v84, v85);
        _os_crash_msg();
        __break(1u);
      }

      re::StringID::StringID(v87, (a1[5] + 48 * v7 + 8));
      v7 = *(a2 + 8);
      v6 = a1[3];
      if (v6 <= v7)
      {
        goto LABEL_130;
      }

      v39 = v87[1];
      re::StringID::StringID(v86, (a1[5] + 48 * v7 + 8));
      v40 = v86[1];
      v41 = *a1;
      v90[0] = 0uLL;
      v89 = v41;
      re::DynamicString::setCapacity(&v89, 0x200uLL);
      v43 = *(v14 + 4);
      if (v43)
      {
        v44 = *(v13 + 4);
        if (v44)
        {
          if (v43 != v44)
          {
            Name = MTLPixelFormatGetName();
            v46 = MTLPixelFormatGetName();
            re::DynamicString::appendf(&v89, "--- %s: %s (current) vs. %s\n", "format", Name, v46);
          }
        }
      }

      v47 = *(v14 + 8);
      if (v47 != *(v13 + 8))
      {
        TextureTypeName = re::mtl::getTextureTypeName(v47);
        v49 = re::mtl::getTextureTypeName(*(v13 + 8));
        re::DynamicString::appendf(&v89, "--- %s: %s (current) vs. %s\n", "textureType", TextureTypeName, v49);
      }

      v50 = *(v14 + 12);
      if (v50 != -1)
      {
        v51 = *(v13 + 12);
        if (v51 != -1 && v50 != v51)
        {
          re::DynamicString::appendf(&v89, "--- %s: %u (current) vs. %u\n", "width", *(v14 + 12), v51);
        }
      }

      v52 = *(v14 + 16);
      if (v52 != -1)
      {
        v53 = *(v13 + 16);
        if (v53 != -1 && v52 != v53)
        {
          re::DynamicString::appendf(&v89, "--- %s: %u (current) vs. %u\n", "height", *(v14 + 16), v53);
        }
      }

      v54 = *(v14 + 20);
      if (v54 != -1)
      {
        v55 = *(v13 + 20);
        if (v55 != -1 && v54 != v55)
        {
          re::DynamicString::appendf(&v89, "--- %s: %u (current) vs. %u\n", "sampleCount", *(v14 + 20), v55);
        }
      }

      v56 = *(v14 + 24);
      if (v56 != -1)
      {
        v57 = *(v13 + 24);
        if (v57 != -1 && v56 != v57)
        {
          re::DynamicString::appendf(&v89, "--- %s: %u (current) vs. %u\n", "arrayLength", *(v14 + 24), v57);
        }
      }

      v58 = *(v14 + 28);
      if (v58 != -1)
      {
        v59 = *(v13 + 28);
        if (v59 != -1 && v58 != v59)
        {
          re::DynamicString::appendf(&v89, "--- %s: %u (current) vs. %u\n", "mipLevelCount", *(v14 + 28), v59);
        }
      }

      v60 = *(v14 + 32);
      if (v60 != -1)
      {
        v61 = *(v13 + 32);
        if (v61 != -1 && v60 != v61)
        {
          re::DynamicString::appendf(&v89, "--- %s: %u (current) vs. %u\n", "tonemapInPlace", *(v14 + 32), v61);
        }
      }

      v62 = *(v14 + 88);
      if (v62 != -1)
      {
        v63 = *(v13 + 88);
        if (v63 != -1 && v62 != v63)
        {
          re::DynamicString::appendf(&v89, "--- %s: %llu (current) vs. %llu\n", "protectionOptions", *(v14 + 88), v63);
        }
      }

      v65 = v89.n128_u8[8];
      v64 = *&v90[0];
      if (v89.n128_u64[0] && (v89.n128_u8[8] & 1) != 0)
      {
        (*(*v89.n128_u64[0] + 40))();
      }

      v66 = &v89.n128_i8[9];
      if (v65)
      {
        v66 = v64;
      }

      re::DynamicString::format(v88, "Specify called on target (%s) which has already been specified; the following properties from other target (%s) did not match:\n%s", v42, v39, v40, v66);
      v89.n128_u64[0] = 2000;
      v89.n128_u64[1] = &re::GraphicsErrorCategory(void)::instance;
      *&v90[0] = *v88;
      *(&v90[1] + 1) = *&v88[24];
      *(v90 + 8) = *&v88[8];
      v67 = re::DynamicArray<re::DetailedError>::add(a5, &v89);
      v68 = *&v90[0];
      if (*&v90[0])
      {
        if (BYTE8(v90[0]))
        {
          v68 = (*(**&v90[0] + 40))(v67);
        }

        memset(v90, 0, sizeof(v90));
      }

      if (v86[0])
      {
        if (v86[0])
        {
        }
      }

      if (v87[0])
      {
        if (v87[0])
        {
        }
      }

      v6 = *(a2 + 12);
      v7 = a1[8];
    }
  }

  if (v7 <= v6)
  {
LABEL_122:
    v87[0] = 0;
    v91 = 0u;
    v92 = 0u;
    memset(v90, 0, sizeof(v90));
    v89 = 0u;
    v75 = MEMORY[0x1E69E9C10];
    v76 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v88 = 136315906;
    *&v88[4] = "operator[]";
    *&v88[12] = 1024;
    if (v76)
    {
      v77 = 3;
    }

    else
    {
      v77 = 2;
    }

    *&v88[14] = 789;
    *&v88[18] = 2048;
    *&v88[20] = v6;
    *&v88[28] = 2048;
    *&v88[30] = v7;
    _os_log_send_and_compose_impl(v77, v87, &v89, 80, &dword_1E1C61000, v75, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v88, 38, v84, v85);
    _os_crash_msg();
    __break(1u);
    goto LABEL_126;
  }

  v69 = (a1[10] + 112 * v6);
  *v69 = 4;
  v69[19] = *(a3 + 8);
}

re::StringID *re::RenderGraphResourceDescriptions::resourceFromIndex@<X0>(uint64_t *__return_ptr a1@<X8>, re::StringID *this@<X0>, unsigned int a3@<W1>)
{
  if (*(this + 3) <= a3)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = &str_67;
    a1[3] = -1;
    a1[4] = -1;
    a1[5] = -1;
  }

  else
  {
    v4 = *(this + 5) + 48 * a3;
    *a1 = *v4;
    this = re::StringID::StringID((a1 + 1), (v4 + 8));
    v5 = *(v4 + 24);
    a1[5] = *(v4 + 40);
    *(a1 + 3) = v5;
  }

  return this;
}

uint64_t re::GrowableLinearAllocator::alloc(re::GrowableLinearAllocator *this, uint64_t a2, unint64_t a3)
{
  if (a3 <= 8)
  {
    v5 = 8;
  }

  else
  {
    v5 = a3;
  }

  v6 = v5 + a2;
  v7 = *(this + 4);
  if (v7)
  {
    v7 = **(this + 3) + v7 - *(this + 5);
  }

  if (v7 >= v6)
  {
    v9 = *(this + 5);
  }

  else
  {
    v8 = *(this + 3);
    if (v8)
    {
      while (1)
      {
        v8 = v8[1];
        if (!v8)
        {
          break;
        }

        *(this + 3) = v8;
        if (*v8 >= v6)
        {
          v9 = v8 + 2;
          *(this + 4) = v8 + 2;
          goto LABEL_18;
        }
      }
    }

    if (v6 + 16 > *(this + 6))
    {
      v10 = (v6 + 15) | ((v6 + 15) >> 1) | (((v6 + 15) | ((v6 + 15) >> 1)) >> 2);
      v11 = v10 | (v10 >> 4) | ((v10 | (v10 >> 4)) >> 8);
      *(this + 6) = (v11 | (v11 >> 16) | ((v11 | (v11 >> 16)) >> 32)) + 1;
    }

    v12 = (*(**(this + 7) + 32))(*(this + 7));
    v13 = *(this + 6);
    *v12 = v13 - 16;
    v12[1] = 0;
    v14 = *(this + 3);
    if (v14)
    {
      v15 = (v14 + 8);
    }

    else
    {
      v15 = (this + 64);
    }

    *v15 = v12;
    v9 = v12 + 2;
    *(this + 3) = v12;
    *(this + 4) = v12 + 2;
    *(this + 6) = 2 * v13;
  }

LABEL_18:
  result = (v9 + v5 - 1) & -v5;
  *(this + 5) = result + a2;
  *(this + 9) += a2;
  return result;
}

void re::GrowableLinearAllocator::~GrowableLinearAllocator(re::GrowableLinearAllocator *this)
{
  re::GrowableLinearAllocator::deinit(this);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 11);

  re::Allocator::~Allocator(this);
}

{
  re::GrowableLinearAllocator::deinit(this);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 11);
  re::Allocator::~Allocator(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::GrowableLinearAllocator::statistics(re::GrowableLinearAllocator *this)
{
  result = *(this + 9);
  v3 = *(this + 8);
  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = *v3;
      v3 = v3[1];
      v4 += v5 + 16;
    }

    while (v3);
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    v5 = *a2;
    if (*a1)
    {
      v6 = v4 == v5;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      *a1 = v5;
      *a2 = v4;
      v7 = *(a1 + 8);
      *(a1 + 8) = a2[1];
      a2[1] = v7;
      v8 = *(a1 + 16);
      *(a1 + 16) = a2[2];
      a2[2] = v8;
      LODWORD(v8) = *(a1 + 24);
      *(a1 + 24) = *(a2 + 6);
      *(a2 + 6) = v8;
      LODWORD(v8) = *(a1 + 28);
      *(a1 + 28) = *(a2 + 7);
      *(a2 + 7) = v8;
      LODWORD(v8) = *(a1 + 32);
      *(a1 + 32) = *(a2 + 8);
      *(a2 + 8) = v8;
      LODWORD(v8) = *(a1 + 36);
      *(a1 + 36) = *(a2 + 9);
      *(a2 + 9) = v8;
LABEL_12:
      ++*(a1 + 40);
      return a1;
    }

    re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1);
    if (*a2)
    {
      v9 = *(a2 + 7);
      if (*(a1 + 24) < v9)
      {
        re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, v9);
      }

      re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, a2);
      goto LABEL_12;
    }
  }

  return a1;
}

void re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1)
  {
    if (v2 && *(a1 + 6) != v2 && *(a1 + 7) <= v2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v9, v4, v2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = a1[2];
      a1[2] = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 3);
      *(a1 + 3) = v7;
      ++*&v9[40];
      re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, v9);
      re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (v2)
    {
      v8 = v2;
    }

    else
    {
      v8 = 3;
    }
  }
}

void *re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(void *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    do
    {
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 32) % *(v4 + 6), *(v7 + v5 + 32));
        v7 = *(a2 + 16);
        result[1] = *(v7 + v5 + 8);
        result[2] = 0;
        result[3] = -1;
        result[2] = *(v7 + v5 + 16);
        result[3] = *(v7 + v5 + 24);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 40;
    }

    while (v6 < v2);
  }

  return result;
}

void re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_17, 4 * v10);
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

uint64_t re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 40 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 32) = a3;
  ++*(a1 + 28);
  return v7 + 40 * v5;
}

_anonymous_namespace_ *re::DynamicArray<re::RenderGraphResource>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::RenderGraphResource>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RenderGraphResource>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::RenderGraphResource>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RenderGraphResource>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x30uLL))
        {
          v2 = 48 * a2;
          result = (*(*result + 32))(result, 48 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 48, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v15, v17);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v16, v18);
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
        v10 = v8 + 48 * v9;
        v11 = v7 + 1;
        v12 = v8 + 8;
        do
        {
          *(v11 - 2) = *(v12 - 8);
          re::StringID::StringID(v11, v12);
          v13 = *(v12 + 16);
          v11[4] = *(v12 + 32);
          *(v11 + 1) = v13;
          re::StringID::destroyString(v12);
          v11 += 6;
          v14 = v12 + 40;
          v12 += 48;
        }

        while (v14 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::RenderGraphTargetDescription>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::RenderGraphTargetDescription>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RenderGraphTargetDescription>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::RenderGraphTargetDescription>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (is_mul_ok(a2, 0x70uLL))
        {
          v2 = 112 * a2;
          result = (*(*result + 32))(result, 112 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 112 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 112, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::RenderGraphTargetDescription>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t re::addVFXSceneDrawsToTechniqueBuckets(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((*(a1 + 1011) & 1) == 0)
  {
    v5 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v6 = "VFX simulation did not run, can't draw VFXScene";
      goto LABEL_15;
    }

    return 0;
  }

  if (*(a1 + 1010) == 1)
  {
    v5 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v6 = "Should not arrive here when VFXScene culled by clipping";
LABEL_15:
      _os_log_debug_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEBUG, v6, buf, 2u);
      return 0;
    }

    return 0;
  }

  if (*(a1 + 744) != -2)
  {
    v20 = *(*(a2 + 8) + 72);
    *buf = *(a1 + 744);
    v21 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v20 + 56, buf);
    if (v21)
    {
      v22 = *(v21 + 16);
      v23 = v22;
      v24 = *(a1 + 752);
      *buf = 0;
      v30 = buf;
      v31 = 0x2020000000;
      v32 = 0;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = ___ZN2re34addVFXSceneDrawsToTechniqueBucketsERKNS_8VFXSceneERKNS_18RenderGraphContextERNS_11MeshVisitorEj_block_invoke;
      v27[3] = &unk_1E871F348;
      v27[4] = buf;
      v27[5] = a2;
      v27[6] = v20;
      v27[7] = a1;
      v28 = a4;
      v27[8] = a3;
      v25 = v24;
      v26 = v22;
      [v26 enumerateDrawCallsForNode:v25 usingBlock:v27];
      v7 = *(v30 + 24);

      _Block_object_dispose(buf, 8);
      return v7;
    }

    return 0;
  }

  v12 = *(*(a2 + 8) + 72);
  v13 = *(a1 + 752);
  v14 = re::getVFXREForEachDrawCallFct(v13);
  v15 = [(re *)v13 transientDrawCall];

  if (!v15)
  {
    v17 = objc_alloc_init(re::getVFXREDrawCallClass(v16));
    [(re *)v13 setTransientDrawCall:v17];
  }

  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v18 = [(re *)v13 opaqueECS];
  v19 = [(re *)v13 transientDrawCall];
  *buf = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = ___ZN2re12_GLOBAL__N_140addVFXLegacySceneDrawsToTechniqueBucketsERKNS_8VFXSceneERKNS_18RenderGraphContextERNS_11MeshVisitorEj_block_invoke;
  v32 = &unk_1E871F3C0;
  v33 = &v39;
  v34 = a2;
  v35 = v12;
  v36 = a1;
  v38 = a4;
  v37 = a3;
  v14(v18, v19, buf);

  v7 = v40[3];
  _Block_object_dispose(&v39, 8);

  return v7;
}

void ___ZN2re34addVFXSceneDrawsToTechniqueBucketsERKNS_8VFXSceneERKNS_18RenderGraphContextERNS_11MeshVisitorEj_block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  re::globalAllocators(v3);
  v4 = *(**(a1 + 40) + 32);
  v5 = (*(*v4 + 32))(v4, 544, 16);
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 176) = 0u;
  *(v5 + 192) = 0u;
  *(v5 + 208) = 0u;
  *(v5 + 224) = 0u;
  *(v5 + 240) = 0u;
  *(v5 + 256) = 0u;
  *(v5 + 272) = 0u;
  *(v5 + 200) = 1;
  *(v5 + 216) = 0;
  *(v5 + 224) = 0;
  *(v5 + 208) = 0;
  *(v5 + 232) = 0;
  *(v5 + 248) = 0;
  *(v5 + 256) = 0;
  *(v5 + 240) = 0;
  *(v5 + 264) = 0;
  *(v5 + 272) = 0u;
  *(v5 + 288) = 0u;
  *(v5 + 288) = 0u;
  *(v5 + 304) = 0u;
  *(v5 + 304) = 0;
  *(v5 + 320) = 0;
  *(v5 + 328) = 0;
  *(v5 + 336) = 0;
  *(v5 + 344) = 0;
  *(v5 + 352) = xmmword_1E3047670;
  *(v5 + 368) = xmmword_1E3047680;
  *(v5 + 384) = xmmword_1E30476A0;
  *(v5 + 400) = xmmword_1E30474D0;
  v6.i64[0] = 0x7F0000007FLL;
  v6.i64[1] = 0x7F0000007FLL;
  *(v5 + 416) = vnegq_f32(v6);
  *(v5 + 432) = v6;
  *(v5 + 456) = 0;
  *(v5 + 448) = 0;
  *(v5 + 458) = 0;
  *(v5 + 488) = 0;
  *(v5 + 496) = &str_67;
  *(v5 + 512) = 0;
  *(v5 + 520) = 3;
  *(v5 + 524) = 0x180197E00000001;
  *(v5 + 460) = -1;
  *(v5 + 468) = -1;
  *(v5 + 473) = -1;
  v7 = re::globalAllocators(v5)[2];
  v23[0] = &unk_1F5D047C0;
  v26 = v7;
  v27 = v23;
  v8 = (*(*v4 + 16))(v4, v5, v23);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v23);
  re::StringID::destroyString((v8 + 488));
  *(v8 + 488) = 0x8B87378FFD0D002ALL;
  *(v8 + 496) = "VFX Particles";
  [(re *)v3 boundingBoxMin];
  v20 = v9;
  [(re *)v3 boundingBoxMax];
  *(v8 + 416) = v20;
  *(v8 + 432) = v10;
  *(v8 + 520) = [(re *)v3 primitiveType];
  *(v8 + 458) = [(re *)v3 materialType];
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 24);
  *(v11 + 24) = v12 + 1;
  v13 = [(re *)v3 encodeHandler];
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v21[0] = v13;
  v21[1] = v14;
  v22 = 0;
  v16 = *(a1 + 72);
  v17 = *(v15 + 592);
  if (!v17)
  {
    v17 = *(v15 + 512);
  }

  v23[0] = *(v15 + 512);
  v23[1] = v17;
  v24 = v16;
  v25 = 0;
  v26 = v12;
  LODWORD(v27) = 0;
  v28 = 0;
  v29 = v8;
  v30 = v15 + 128;
  v31 = v8 + 416;
  v32 = *(v8 + 458);
  v33 = v15 + 504;
  v34 = 0;
  v35 = *(v15 + 440);
  v36 = *(v15 + 448);
  v37 = v21;
  v38 = 0;
  v18 = *(a1 + 64);
  v19 = *(*v18 + 16);

  v19(v18, v23);
}

void re::bucketVFXMeshPart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 72);
  if (v5)
  {
    if ((atomic_load_explicit(&qword_1EE1B8818, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8818))
    {
      _MergedGlobals_438 = re::hashString("FadeOpaque", v41);
      __cxa_guard_release(&qword_1EE1B8818);
    }

    v9 = *(a2 + 224);
    v46 = *(a5 + 16);
    v45 = *(a5 + 8);
    v49 = _Block_copy(*a5);
    v48 = *(*(a5 + 8) + 200);

    v42 = *(*(a1 + 24) + 458);
    v10 = re::MaterialParameterTable::passTechniqueHashTable(v5, v9, 1);
    v51 = *(v10 + 8);
    if (v51)
    {
      v11 = 0;
      v12 = v10[2];
      while (1)
      {
        v13 = *v12;
        v12 += 6;
        if (v13 < 0)
        {
          break;
        }

        if (v51 == ++v11)
        {
          LODWORD(v11) = *(v10 + 8);
          break;
        }
      }
    }

    else
    {
      LODWORD(v11) = 0;
    }

    if (v11 != v51)
    {
      v15 = v10[2];
      v43 = v10;
      v44 = a4;
      do
      {
        v68 = *(v15 + 24 * v11 + 8);
        v16 = v68 == _MergedGlobals_438;
        v17 = objc_alloc_init(VFXREDrawCallContextImpl);
        *(a1 + 224) = 1;
        *(a1 + 227) = 0;
        *(a1 + 225) = !isDepthOnly;
        v19 = v68;
        v20 = *(a5 + 16);
        if ((atomic_load_explicit(&qword_1EE1B8858, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8858))
        {
          qword_1EE1B8850 = re::hashString("Opaque", v40);
          __cxa_guard_release(&qword_1EE1B8858);
        }

        {
          v21 = 1;
        }

        else
        {
          v21 = v20 ^ 1;
          if (v42 != 1)
          {
            v21 = 0;
          }
        }

        *(a1 + 226) = v21;
        v22 = *(a3 + 32);
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = ___ZN2re17bucketVFXMeshPartERNS_19MeshPartDrawContextEPKNS_28MaterialParameterTableLayersERKNS_12FrameContextERNS_9HashTableImNS_12MeshPassInfoENS_17PrecalculatedHashENS_7EqualToImEELb0ELb0EEEPvb_block_invoke;
        v60[3] = &unk_1E871F370;
        v65 = v46;
        v64 = v45;
        v23 = v17;
        v61 = v23;
        v66 = v16;
        v67 = isDepthOnly;
        v62 = v48;
        v63 = v49;
        re::DrawCallHandler::registerHandler(a1 + 224, v22, v60);
        if (!*v44 || (v24 = *(*(v44 + 8) + 4 * (v68 % *(v44 + 24))), v24 == 0x7FFFFFFF))
        {
LABEL_26:
          *buf = 0;
          v53 = 0;
          v54 = 1;
          v56 = 0;
          v57 = 0;
          v55 = 0;
          v58 = 0;
          re::BucketArray<re::MeshPartDrawContext,128ul>::init(buf, v22, 1uLL);
          v59 = 0;
          v26 = re::HashTable<unsigned long,re::MeshPassInfo,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::add(v44, &v68, buf);
          re::BucketArray<re::MeshPartDrawContext,128ul>::deinit(buf);
          if (*buf && (v54 & 1) == 0)
          {
            (*(**buf + 40))();
          }
        }

        else
        {
          v25 = *(v44 + 16);
          while (*(v25 + 80 * v24 + 8) != v68)
          {
            v24 = *(v25 + 80 * v24) & 0x7FFFFFFF;
            if (v24 == 0x7FFFFFFF)
            {
              goto LABEL_26;
            }
          }

          v26 = v25 + 80 * v24 + 16;
        }

        *(a1 + 64) = 0;
        *(a1 + 60) = -1;
        *(a1 + 66) = 0;
        v27 = re::BucketArray<re::MeshPartDrawContext,128ul>::addUninitialized(v26);
        v29 = *(a1 + 16);
        v28 = *(a1 + 32);
        *v27 = *a1;
        v27[1] = v29;
        v27[2] = v28;
        v30 = *(a1 + 96);
        v32 = *(a1 + 48);
        v31 = *(a1 + 64);
        v27[5] = *(a1 + 80);
        v27[6] = v30;
        v27[3] = v32;
        v27[4] = v31;
        v33 = *(a1 + 160);
        v35 = *(a1 + 112);
        v34 = *(a1 + 128);
        v27[9] = *(a1 + 144);
        v27[10] = v33;
        v27[7] = v35;
        v27[8] = v34;
        v36 = *(a1 + 224);
        v38 = *(a1 + 176);
        v37 = *(a1 + 192);
        v27[13] = *(a1 + 208);
        v27[14] = v36;
        v27[11] = v38;
        v27[12] = v37;

        if (*(v43 + 8) <= (v11 + 1))
        {
          v39 = v11 + 1;
        }

        else
        {
          v39 = *(v43 + 8);
        }

        v15 = v43[2];
        while (v39 - 1 != v11)
        {
          LODWORD(v11) = v11 + 1;
          if ((*(v15 + 24 * v11) & 0x80000000) != 0)
          {
            goto LABEL_38;
          }
        }

        LODWORD(v11) = v39;
LABEL_38:
        ;
      }

      while (v11 != v51);
    }
  }

  else
  {
    v14 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEBUG, "Missing MaterialParameterTable, can't render VFX", buf, 2u);
    }
  }
}

BOOL re::anonymous namespace::isDepthOnly(re::_anonymous_namespace_ *this)
{
  if ((atomic_load_explicit(&qword_1EE1B8828, memory_order_acquire) & 1) == 0)
  {
    v9 = this;
    v4 = __cxa_guard_acquire(&qword_1EE1B8828);
    this = v9;
    if (v4)
    {
      qword_1EE1B8820 = re::hashString("FadeDepthPrepass", v3);
      __cxa_guard_release(&qword_1EE1B8828);
      this = v9;
    }
  }

  if ((atomic_load_explicit(&qword_1EE1B8838, memory_order_acquire) & 1) == 0)
  {
    v10 = this;
    v6 = __cxa_guard_acquire(&qword_1EE1B8838);
    this = v10;
    if (v6)
    {
      qword_1EE1B8830 = re::hashString("VFXDepthWrite", v5);
      __cxa_guard_release(&qword_1EE1B8838);
      this = v10;
    }
  }

  if ((atomic_load_explicit(&qword_1EE1B8848, memory_order_acquire) & 1) == 0)
  {
    v11 = this;
    v8 = __cxa_guard_acquire(&qword_1EE1B8848);
    this = v11;
    if (v8)
    {
      qword_1EE1B8840 = re::hashString("VFXFadeOpaqueDepthWrite", v7);
      __cxa_guard_release(&qword_1EE1B8848);
      this = v11;
    }
  }

  return qword_1EE1B8820 == this || qword_1EE1B8830 == this || qword_1EE1B8840 == this;
}

void ___ZN2re17bucketVFXMeshPartERNS_19MeshPartDrawContextEPKNS_28MaterialParameterTableLayersERKNS_12FrameContextERNS_9HashTableImNS_12MeshPassInfoENS_17PrecalculatedHashENS_7EqualToImEELb0ELb0EEEPvb_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ((*(a1 + 64) & 1) != 0 || *(*(a1 + 56) + 248) == 1)
  {
    [*(a1 + 32) set_textureTable:*a3];
    [*(a1 + 32) set_bufferTable:*(a3 + 8)];
    [*(a1 + 32) set_samplerTable:*(a3 + 16)];
    [*(a1 + 32) set_constantTable:*(a3 + 24)];
    [*(a1 + 32) set_viewports:*(a3 + 32)];
    [*(a1 + 32) set_renderTargetInfo:*(a3 + 40)];
    [*(a1 + 32) set_patchHandler:*(a3 + 56)];
    [*(a1 + 32) set_stateOverride:*(a3 + 88)];
    [*(a1 + 32) set_isDrawingBlur:*(a3 + 89)];
    v7 = *(a3 + 64);
    v8 = *(a3 + 80);
    [*(a1 + 32) set_stencilInfo:&v7];
    LODWORD(v6) = *(a3 + 84);
    [*(a1 + 32) set_fadeOpacity:v6];
    [*(a1 + 32) set_isFadeOpaque:*(a1 + 65)];
    [*(a1 + 32) set_dynamicFunctionConstants:*(a3 + 48)];
    [*(a1 + 32) set_isDepthOnly:*(a1 + 66)];
    [*(a1 + 32) set_meshStats:*(a3 + 96)];
    [*(a1 + 40) setEncoder:v5 state:*(a3 + 104)];
    (*(*(a1 + 48) + 16))();
  }
}

uint64_t re::HashTable<unsigned long,re::MeshPassInfo,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::add(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, *a2, &v7);
  if (HIDWORD(v8) == 0x7FFFFFFF)
  {
    return re::HashTable<unsigned long,re::MeshPassInfo,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addInternal<unsigned long const&,re::MeshPassInfo>(a1, &v7, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 80 * HIDWORD(v8) + 16;
  }
}

void ___ZN2re12_GLOBAL__N_140addVFXLegacySceneDrawsToTechniqueBucketsERKNS_8VFXSceneERKNS_18RenderGraphContextERNS_11MeshVisitorEj_block_invoke(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 hasCustomHandler])
  {
    [v3 boundingBoxMin];
    v22 = v4;
    v5 = [v3 boundingBoxMax];
    v21 = v6;
    re::globalAllocators(v5);
    v7 = *(**(a1 + 40) + 32);
    v8 = (*(*v7 + 32))(v7, 544, 16);
    *v8 = 0u;
    *(v8 + 16) = 0u;
    *(v8 + 32) = 0u;
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
    *(v8 + 80) = 0u;
    *(v8 + 96) = 0u;
    *(v8 + 112) = 0u;
    *(v8 + 128) = 0u;
    *(v8 + 144) = 0u;
    *(v8 + 160) = 0u;
    *(v8 + 176) = 0u;
    *(v8 + 192) = 0u;
    *(v8 + 208) = 0u;
    *(v8 + 224) = 0u;
    *(v8 + 240) = 0u;
    *(v8 + 256) = 0u;
    *(v8 + 272) = 0u;
    *(v8 + 200) = 1;
    *(v8 + 216) = 0;
    *(v8 + 224) = 0;
    *(v8 + 208) = 0;
    *(v8 + 232) = 0;
    *(v8 + 248) = 0;
    *(v8 + 256) = 0;
    *(v8 + 240) = 0;
    *(v8 + 264) = 0;
    *(v8 + 272) = 0u;
    *(v8 + 288) = 0u;
    *(v8 + 288) = 0u;
    *(v8 + 304) = 0u;
    *(v8 + 304) = 0;
    *(v8 + 320) = 0;
    *(v8 + 328) = 0;
    *(v8 + 336) = 0;
    *(v8 + 344) = 0;
    *(v8 + 352) = xmmword_1E3047670;
    *(v8 + 368) = xmmword_1E3047680;
    *(v8 + 384) = xmmword_1E30476A0;
    *(v8 + 400) = xmmword_1E30474D0;
    v9.i64[0] = 0x7F0000007FLL;
    v9.i64[1] = 0x7F0000007FLL;
    *(v8 + 416) = vnegq_f32(v9);
    *(v8 + 432) = v9;
    *(v8 + 456) = 0;
    *(v8 + 448) = 0;
    *(v8 + 458) = 0;
    *(v8 + 488) = 0;
    *(v8 + 496) = &str_67;
    *(v8 + 512) = 0;
    *(v8 + 520) = 3;
    *(v8 + 524) = 0x180197E00000001;
    *(v8 + 460) = -1;
    *(v8 + 468) = -1;
    *(v8 + 473) = -1;
    v10 = re::globalAllocators(v8)[2];
    v27[0] = &unk_1F5D04768;
    v30 = v10;
    v31 = v27;
    v11 = (*(*v7 + 16))(v7, v8, v27);
    re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v27);
    re::StringID::destroyString((v11 + 488));
    *(v11 + 488) = 0x8B87378FFD0D002ALL;
    *(v11 + 496) = "VFX Particles";
    *(v11 + 416) = v22;
    *(v11 + 432) = v21;
    *(v11 + 520) = [v3 primitiveType];
    *(v11 + 458) = [v3 materialType];
    v12 = *(*(a1 + 32) + 8);
    v13 = *(v12 + 24);
    *(v12 + 24) = v13 + 1;
    v14 = [v3 customHandler];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZN2re12_GLOBAL__N_140addVFXLegacySceneDrawsToTechniqueBucketsERKNS_8VFXSceneERKNS_18RenderGraphContextERNS_11MeshVisitorEj_block_invoke_2;
    aBlock[3] = &unk_1E871F398;
    v24 = v14;
    v15 = v14;
    v16 = _Block_copy(aBlock);
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    v25[0] = v16;
    v25[1] = v17;
    v26 = 1;
    v19 = *(a1 + 72);
    v20 = *(v18 + 592);
    if (!v20)
    {
      v20 = *(v18 + 512);
    }

    v27[0] = *(v18 + 512);
    v27[1] = v20;
    v28 = v19;
    v29 = 0;
    v30 = v13;
    LODWORD(v31) = 0;
    v32 = 0;
    v33 = v11;
    v34 = v18 + 128;
    v35 = v11 + 416;
    v36 = *(v11 + 458);
    v37 = v18 + 504;
    v38 = 0;
    v39 = *(v18 + 440);
    v40 = *(v18 + 448);
    v41 = v25;
    v42 = 0;
    (*(**(a1 + 64) + 16))(*(a1 + 64), v27);
  }
}

void _ZNK2re8internal8CallableIZZNS_12_GLOBAL__N_140addVFXLegacySceneDrawsToTechniqueBucketsERKNS_8VFXSceneERKNS_18RenderGraphContextERNS_11MeshVisitorEjEUb_E3__0FvPvEJEEclEOSC_(uint64_t a1, re::AttributeTable **a2)
{
  v2 = *a2;
  re::StringID::destroyString((*a2 + 488));
  re::FixedArray<re::StringID>::deinit(v2 + 41);

  re::AttributeTable::~AttributeTable(v2);
}

void *_ZNK2re8internal8CallableIZZNS_12_GLOBAL__N_140addVFXLegacySceneDrawsToTechniqueBucketsERKNS_8VFXSceneERKNS_18RenderGraphContextERNS_11MeshVisitorEjEUb_E3__0FvPvEJEE9cloneIntoESC_(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D04768;
  return result;
}

void *_ZN2re8internal8CallableIZZNS_12_GLOBAL__N_140addVFXLegacySceneDrawsToTechniqueBucketsERKNS_8VFXSceneERKNS_18RenderGraphContextERNS_11MeshVisitorEjEUb_E3__0FvPvEJEE8moveIntoESC_(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D04768;
  return result;
}

void _ZNK2re8internal8CallableIZZNS_34addVFXSceneDrawsToTechniqueBucketsERKNS_8VFXSceneERKNS_18RenderGraphContextERNS_11MeshVisitorEjEUb0_E3__1FvPvEJEEclEOSB_(uint64_t a1, re::AttributeTable **a2)
{
  v2 = *a2;
  re::StringID::destroyString((*a2 + 488));
  re::FixedArray<re::StringID>::deinit(v2 + 41);

  re::AttributeTable::~AttributeTable(v2);
}

void *_ZNK2re8internal8CallableIZZNS_34addVFXSceneDrawsToTechniqueBucketsERKNS_8VFXSceneERKNS_18RenderGraphContextERNS_11MeshVisitorEjEUb0_E3__1FvPvEJEE9cloneIntoESB_(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D047C0;
  return result;
}

void *_ZN2re8internal8CallableIZZNS_34addVFXSceneDrawsToTechniqueBucketsERKNS_8VFXSceneERKNS_18RenderGraphContextERNS_11MeshVisitorEjEUb0_E3__1FvPvEJEE8moveIntoESB_(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D047C0;
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::MeshPartDrawContext,128ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::MeshPartDrawContext,128ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::MeshPartDrawContext,128ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < a2 << 7)
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
        v5 = (*(**v3 + 32))(*v3, 30720, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t re::BucketArray<re::MeshPartDrawContext,128ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](a1, i);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

unint64_t re::BucketArray<re::MeshPartDrawContext,128ul>::operator[](uint64_t a1, unint64_t a2)
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

  v2 = a2 >> 7;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 7)
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

  return *(v5 + 8 * v2) + 240 * (a2 & 0x7F);
}

{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, a2, v4);
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

    v17 = 866;
    v18 = 2048;
    v19 = v2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v8, &v13, v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2 >> 7;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 7)
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

  return *(v5 + 8 * v2) + 240 * (a2 & 0x7F);
}

uint64_t re::HashTable<unsigned long,re::MeshPassInfo,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addInternal<unsigned long const&,re::MeshPassInfo>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = re::HashTable<unsigned long,re::MeshPassInfo,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  *(v7 + 16) = 0;
  v9 = v7 + 16;
  *(v7 + 8) = v8;
  *(v7 + 24) = 0;
  *(v7 + 32) = 1;
  *(v7 + 64) = 0;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 40) = 0;
  re::BucketArray<RESubscriptionHandle,8ul>::swap(v7 + 16, a4);
  *(v9 + 56) = *(a4 + 56);
  ++*(a1 + 40);
  return v9;
}

uint64_t re::HashTable<unsigned long,re::MeshPassInfo,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<unsigned long,re::MeshPassInfo,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 80 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 80 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 80 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 80 * v4;
}

void re::HashTable<unsigned long,re::MeshPassInfo,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v9, v4, a2);
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
      re::HashTable<unsigned long,re::MeshPassInfo,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::move(a1, v9);
      re::HashTable<unsigned long,re::MeshPassInfo,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(v9);
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

uint64_t re::HashTable<unsigned long,re::MeshPassInfo,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::move(uint64_t result, uint64_t a2)
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
        v8 = re::HashTable<unsigned long,re::MeshPassInfo,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(v4, *(v7 + v5 + 8) % *(v4 + 24), *(v7 + v5 + 8));
        v9 = *(a2 + 16) + v5;
        v10 = *(v9 + 8);
        *(v8 + 16) = 0;
        v11 = v8 + 16;
        *(v8 + 8) = v10;
        *(v8 + 24) = 0;
        *(v8 + 32) = 1;
        *(v8 + 64) = 0;
        *(v8 + 48) = 0;
        *(v8 + 56) = 0;
        *(v8 + 40) = 0;
        result = re::BucketArray<RESubscriptionHandle,8ul>::swap(v8 + 16, v9 + 16);
        *(v11 + 56) = *(v9 + 72);
        v2 = *(a2 + 32);
      }

      v5 += 80;
    }
  }

  return result;
}

double re::HashTable<unsigned long,re::MeshPassInfo,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(uint64_t *a1)
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
          v8 = v6 + v4 + 16;
          re::BucketArray<re::MeshPartDrawContext,128ul>::deinit(v8);
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v8);
          v3 = *(a1 + 8);
        }

        v4 += 80;
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

uint64_t re::BucketArray<re::MeshPartDrawContext,128ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > v3 << 7)
  {
    re::BucketArray<re::MeshPartDrawContext,128ul>::setBucketsCapacity(a1, (v2 + 128) >> 7);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 7)
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
    v16 = v2 >> 7;
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

  v5 = *(v4 + 8 * (v2 >> 7));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 240 * (v2 & 0x7F);
}

__n128 re::CameraStreamContext::init(re::CameraStreamContext *this)
{
  v2 = MEMORY[0x1E69E9B18];
  v50 = 0x11844F475DLL;
  v3 = *(MEMORY[0x1E69E9B18] + 16);
  v25 = *MEMORY[0x1E69E9B18];
  v26 = v3;
  v4 = *(MEMORY[0x1E69E9B18] + 48);
  v27 = *(MEMORY[0x1E69E9B18] + 32);
  v28 = v4;
  v29 = v25;
  v30 = v3;
  v31 = v27;
  v32 = v4;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v5 = MEMORY[0x1E69E9B10];
  v7 = *(MEMORY[0x1E69E9B10] + 16);
  v6 = *(MEMORY[0x1E69E9B10] + 32);
  v33 = *MEMORY[0x1E69E9B10];
  v34 = v7;
  v35 = v6;
  v36 = 0u;
  *v37 = 0u;
  v38 = 0u;
  re::SmallHashTable<re::WeakStringID,re::CameraStreamParams,4ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::add(this + 16, &v50, &v25);
  if (v37[1])
  {
  }

  if (v36 && *(&v36 + 1))
  {
    (*(*v36 + 40))();
  }

  v50 = 0x21F05F00586;
  v8 = v2[1];
  v25 = *v2;
  v26 = v8;
  v9 = v2[3];
  v27 = v2[2];
  v28 = v9;
  v29 = v25;
  v30 = v8;
  v31 = v27;
  v32 = v9;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v11 = v5[1];
  v10 = v5[2];
  v33 = *v5;
  v34 = v11;
  v35 = v10;
  v36 = 0u;
  *v37 = 0u;
  v38 = 0u;
  re::SmallHashTable<re::WeakStringID,re::CameraStreamParams,4ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::add(this + 16, &v50, &v25);
  if (v37[1])
  {
  }

  if (v36 && *(&v36 + 1))
  {
    (*(*v36 + 40))();
  }

  v13 = *(this + 435);
  if (!v13)
  {
    v14 = (this + 48);
    v15 = *(this + 4);
    LODWORD(v16) = 416;
    v18 = (this + 416 * v15 + 48);
    goto LABEL_20;
  }

  v14 = (this + 1712);
  v15 = *(this + 436);
  if (v15)
  {
    v16 = 0;
    v17 = *(this + 216);
    while ((*v17 & 0x80000000) == 0)
    {
      v17 += 104;
      if (v15 == ++v16)
      {
        LODWORD(v16) = *(this + 436);
        break;
      }
    }
  }

  else
  {
    LODWORD(v16) = 0;
  }

  v18 = (this + 1712);
  while (1)
  {
LABEL_20:
    while (v13)
    {
      if (v15 == v16)
      {
        return result;
      }

      v19 = v14[1].n128_u64[0] + 416 * v16;
      result = *(v19 + 176);
      v20 = *(v19 + 144);
      DWORD1(v20) = *(v19 + 164);
      *(v19 + 224) = result.n128_u64[0];
      *(v19 + 232) = v20;
      v21 = v16 + 1;
      if (v14[2].n128_u32[0] <= (v16 + 1))
      {
        LODWORD(v16) = v16 + 1;
      }

      else
      {
        LODWORD(v16) = v14[2].n128_u32[0];
      }

      while (v16 != v21)
      {
        v22 = v21;
        v23 = *(v14[1].n128_u64[0] + 416 * v21++);
        if (v23 < 0)
        {
          LODWORD(v16) = v22;
          goto LABEL_20;
        }
      }
    }

    if (v14 == v18)
    {
      return result;
    }

    result = v14[11];
    v24 = v14[9];
    v24.n128_u32[1] = v14[10].n128_u32[1];
    v14[14].n128_u64[0] = result.n128_u64[0];
    v14[14].n128_u64[1] = v24.n128_u64[0];
    v14 += 26;
  }
}

id re::CameraStreamManager::context@<X0>(re::CameraStreamManager *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F5D04818;
  re::SmallHashTable<re::WeakStringID,re::CameraStreamParams,4ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::SmallHashTable(a2 + 16, this + 32);
  *(a2 + 1776) = *(this + 112);
  *(a2 + 1792) = *(this + 113);
  *(a2 + 1808) = *(this + 114);
  *(a2 + 1824) = *(this + 460);
  *(a2 + 1760) = *(this + 111);
  *(a2 + 1832) = *(this + 231);
  result = *(this + 232);
  *(a2 + 1840) = result;
  return result;
}

uint64_t re::SmallHashTable<re::WeakStringID,re::CameraStreamParams,4ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::add(uint64_t result, uint64_t *a2, __int128 *a3)
{
  v5 = result;
  v95 = *MEMORY[0x1E69E9840];
  if (!*(result + 1724))
  {
    v8 = (result + 16);
    v7 = *(result + 16);
    v9 = *a2;
    if (!v7)
    {
LABEL_21:
      v36 = a3[6];
      v91 = a3[7];
      v37 = a3[9];
      v92 = a3[8];
      v93 = v37;
      v94 = a3[10];
      v38 = a3[2];
      v87 = a3[3];
      v39 = a3[5];
      v88 = a3[4];
      v89 = v39;
      v90 = v36;
      v40 = a3[1];
      v84 = *a3;
      v85 = v40;
      v86 = v38;
      v41 = a3[22];
      v42 = a3[23];
      v43 = a3[20];
      v80 = a3[21];
      v81 = v41;
      v44 = a3[24];
      v82 = v42;
      v83 = v44;
      v45 = a3[18];
      v46 = a3[19];
      v47 = a3[16];
      v76 = a3[17];
      v77 = v45;
      v78 = v46;
      v79 = v43;
      v48 = a3[12];
      v49 = a3[14];
      v50 = a3[15];
      v72 = a3[13];
      v73 = v49;
      v51 = *(a3 + 22);
      v52 = *(a3 + 23);
      a3[11] = 0uLL;
      a3[12] = 0uLL;
      v74 = v50;
      v75 = v47;
      if (*v8 >= 4uLL)
      {
        re::internal::assertLog(4, a2, *&v48, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
        result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
        __break(1u);
      }

      else
      {
        v53 = v91;
        v54 = result + 416 * *v8;
        v55 = v93;
        *(v54 + 176) = v92;
        *(v54 + 192) = v55;
        *(v54 + 208) = v94;
        v56 = v87;
        v57 = v89;
        *(v54 + 112) = v88;
        *(v54 + 128) = v57;
        *(v54 + 144) = v90;
        *(v54 + 160) = v53;
        v58 = v85;
        *(v54 + 48) = v84;
        *(v54 + 64) = v58;
        *(v54 + 80) = v86;
        *(v54 + 96) = v56;
        v59 = v80;
        v60 = v82;
        v61 = v83;
        *(v54 + 400) = v81;
        *(v54 + 416) = v60;
        *(v54 + 432) = v61;
        v62 = v76;
        v63 = v78;
        v64 = v79;
        *(v54 + 336) = v77;
        *(v54 + 352) = v63;
        *(v54 + 368) = v64;
        *(v54 + 384) = v59;
        v65 = v72;
        v66 = v73;
        *(v54 + 240) = v48;
        *(v54 + 256) = v65;
        v67 = v74;
        v68 = v75;
        *(v54 + 272) = v66;
        *(v54 + 288) = v67;
        *(v54 + 32) = v9;
        *(v54 + 224) = v51;
        *(v54 + 232) = v52;
        *(v54 + 304) = v68;
        *(v54 + 320) = v62;
        v69 = *(result + 16);
        ++*(result + 24);
        *(result + 16) = v69 + 1;
        if (v69 == -1)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, -1, 0);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v70, v71);
          __break(1u);
        }
      }

      return result;
    }

    v10 = 416 * v7;
    v11 = 32;
    v12 = 416 * v7;
    do
    {
      if (*(result + v11) == v9)
      {
        return result;
      }

      v11 += 416;
      v12 -= 416;
    }

    while (v12);
    if ((v7 & 0xFFFFFFFC) == 0)
    {
      goto LABEL_21;
    }

    v6 = result + 1696;
    if (!*(result + 1696))
    {
      v13 = *result;
      if (!*result)
      {
      }

      re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(v5 + 1696, v13, 8);
      if (!*v8)
      {
        goto LABEL_20;
      }

      v10 = 416 * *v8;
    }

    v14 = v5 + 224;
    do
    {
      v72 = 0uLL;
      v15 = *(v14 - 192);
      *&v73 = 0;
      v16 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) >> 27));
      re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::findEntry<re::WeakStringID>(v5 + 1696, (v14 - 192), v16 ^ (v16 >> 31), &v72);
      if (HIDWORD(v72) == 0x7FFFFFFF)
      {
        v17 = re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(v5 + 1696, DWORD2(v72), v72);
        *(v17 + 8) = *(v14 - 192);
        v19 = *(v14 - 32);
        v18 = *(v14 - 16);
        v20 = *(v14 - 48);
        *(v17 + 128) = *(v14 - 64);
        *(v17 + 144) = v20;
        *(v17 + 160) = v19;
        *(v17 + 176) = v18;
        v22 = *(v14 - 96);
        v21 = *(v14 - 80);
        v23 = *(v14 - 112);
        *(v17 + 64) = *(v14 - 128);
        *(v17 + 80) = v23;
        *(v17 + 96) = v22;
        *(v17 + 112) = v21;
        v25 = *(v14 - 160);
        v24 = *(v14 - 144);
        *(v17 + 16) = *(v14 - 176);
        *(v17 + 32) = v25;
        *(v17 + 48) = v24;
        *(v17 + 200) = 0;
        *(v17 + 208) = 0;
        *(v17 + 192) = 0;
        *(v17 + 192) = *v14;
        *v14 = 0;
        *(v17 + 200) = *(v14 + 8);
        *(v14 + 8) = 0;
        v26 = *(v17 + 208);
        *(v17 + 208) = *(v14 + 16);
        *(v14 + 16) = v26;
        *(v17 + 216) = *(v14 + 24);
        *(v14 + 24) = 0;
        v27 = *(v14 + 144);
        v29 = *(v14 + 96);
        v28 = *(v14 + 112);
        *(v17 + 320) = *(v14 + 128);
        *(v17 + 336) = v27;
        *(v17 + 288) = v29;
        *(v17 + 304) = v28;
        v30 = *(v14 + 160);
        v31 = *(v14 + 176);
        v32 = *(v14 + 208);
        *(v17 + 384) = *(v14 + 192);
        *(v17 + 400) = v32;
        *(v17 + 352) = v30;
        *(v17 + 368) = v31;
        v33 = *(v14 + 32);
        v34 = *(v14 + 48);
        v35 = *(v14 + 80);
        *(v17 + 256) = *(v14 + 64);
        *(v17 + 272) = v35;
        *(v17 + 224) = v33;
        *(v17 + 240) = v34;
        ++*(v5 + 1736);
      }

      v14 += 416;
      v10 -= 416;
    }

    while (v10);
LABEL_20:
    re::DynamicInlineArray<re::KeyValuePair<re::WeakStringID,re::CameraStreamParams>,4ul>::clear((v5 + 16));
    goto LABEL_3;
  }

  v6 = result + 1696;
LABEL_3:

  return re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::addNew(v6, a2, a3);
}