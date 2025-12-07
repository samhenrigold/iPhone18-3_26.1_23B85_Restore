_DWORD *RESkeletonDefinitionGetParentIndices(_DWORD *result, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 0;
    v6 = a3;
    do
    {
      result = re::BucketArray<unsigned int,32ul>::operator[]((v4 + 24), v5);
      *(a2 + 4 * v5++) = *result;
    }

    while (v6 != v5);
  }

  return result;
}

__n128 RESkeletonDefinitionSetLocalRestPoses(uint64_t a1, __int128 *a2, unsigned int a3)
{
  v6 = a3;
  re::BucketArray<RESRT,32ul>::resize(a1 + 208, a3);
  if (a3)
  {
    v8 = 0;
    do
    {
      v9 = re::BucketArray<re::ImportAssetTable::ImportedAsset,32ul>::operator[](a1 + 208, v8);
      v10 = a2[1];
      result = a2[2];
      v11 = *a2;
      a2 += 3;
      *v9 = v11;
      *(v9 + 16) = v10;
      *(v9 + 32) = result;
      ++v8;
    }

    while (v6 != v8);
  }

  return result;
}

uint64_t re::BucketArray<RESRT,32ul>::resize(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 40);
  if (v4 >= a2)
  {
    if (v4 > a2)
    {
      v5 = a2;
      do
      {
        result = re::BucketArray<re::ImportAssetTable::ImportedAsset,32ul>::operator[](v3, v5++);
      }

      while (v5 != *(v3 + 40));
      *(v3 + 40) = a2;
    }
  }

  else
  {
    if (a2 > 32 * *(result + 8))
    {
      result = re::BucketArray<RESRT,32ul>::setBucketsCapacity(result, (a2 + 31) >> 5);
      v4 = *(v3 + 40);
    }

    for (*(v3 + 40) = a2; v4 != *(v3 + 40); ++v4)
    {
      result = re::BucketArray<re::ImportAssetTable::ImportedAsset,32ul>::operator[](v3, v4);
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
    }
  }

  ++*(v3 + 48);
  return result;
}

__n128 RESkeletonDefinitionGetLocalRestPoses(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v5 = 0;
    v6 = a3;
    do
    {
      v7 = re::BucketArray<RESRT,32ul>::operator[](a1 + 208, v5);
      v9 = *(v7 + 16);
      result = *(v7 + 32);
      *a2 = *v7;
      *(a2 + 16) = v9;
      *(a2 + 32) = result;
      ++v5;
      a2 += 48;
    }

    while (v6 != v5);
  }

  return result;
}

unint64_t re::BucketArray<RESRT,32ul>::operator[](uint64_t a1, unint64_t a2)
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

  v2 = a2 >> 5;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 5)
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

  return *(v5 + 8 * v2) + 48 * (a2 & 0x1F);
}

__n128 RESkeletonDefinitionSetInverseBindPoses(uint64_t a1, __int128 *a2, unsigned int a3)
{
  v6 = a3;
  v7 = *(a1 + 192);
  if (v7 >= a3)
  {
    if (v7 > a3)
    {
      v10 = a3;
      do
      {
        re::BucketArray<simd_float4x4,32ul>::operator[](a1 + 152, v10++);
      }

      while (v10 != *(a1 + 192));
      *(a1 + 192) = v6;
    }
  }

  else
  {
    if (a3 > (32 * *(a1 + 160)))
    {
      re::BucketArray<simd_float4x4,32ul>::setBucketsCapacity((a1 + 152), (a3 + 31) >> 5);
      v7 = *(a1 + 192);
    }

    for (*(a1 + 192) = v6; v7 != *(a1 + 192); ++v7)
    {
      v9 = re::BucketArray<simd_float4x4,32ul>::operator[](a1 + 152, v7);
      result.n128_u64[0] = 0;
      *v9 = 0u;
      v9[1] = 0u;
      v9[2] = 0u;
      v9[3] = 0u;
    }
  }

  ++*(a1 + 200);
  if (a3)
  {
    v11 = 0;
    do
    {
      v12 = re::BucketArray<simd_float4x4,32ul>::operator[](a1 + 152, v11);
      result = a2[2];
      v13 = a2[3];
      v15 = *a2;
      v14 = a2[1];
      a2 += 4;
      *(v12 + 32) = result;
      *(v12 + 48) = v13;
      *v12 = v15;
      *(v12 + 16) = v14;
      ++v11;
    }

    while (v6 != v11);
  }

  return result;
}

unint64_t re::BucketArray<simd_float4x4,32ul>::operator[](uint64_t a1, unint64_t a2)
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

  v2 = a2 >> 5;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 5)
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

  return *(v5 + 8 * v2) + ((a2 & 0x1F) << 6);
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

  v2 = a2 >> 5;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 5)
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

  return *(v5 + 8 * v2) + ((a2 & 0x1F) << 6);
}

BOOL RESkeletonDefinitionValidate(void *a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v15 = 0x7FFFFFFFLL;
  v9 = v12;
  if (a2 && v12)
  {
    *a2 = CFRetain(v12);
  }

  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v13);
  return v9 == 0;
}

void anonymous namespace::SkeletonDefinition::validate(_anonymous_namespace_ *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2[3] <= 1uLL)
  {
    v11 = a2[4];
    if (v11)
    {
      if (!*v11)
      {

        return;
      }
    }
  }

  v12 = a2[10];
  if (HIDWORD(v12))
  {
    v46 = a2[4];
    v13 = @"Skeleton '%s' has way too many joints";
LABEL_21:
    v21 = a1;
    goto LABEL_22;
  }

  if (!v12)
  {
    v46 = a2[4];
    v13 = @"Expected skeleton '%s' to have at least one joint";
    goto LABEL_21;
  }

  v14 = 0;
  v51.i32[0] = 0;
  do
  {
    v15 = re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[]((a2 + 5), v14);
    v16 = *re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a3, v15, &v51);
    if (v16 != v51.i32[0])
    {
      v22 = a2[4];
      re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[]((a2 + 5), v51.u32[0]);
      return;
    }

    v14 = v16 + 1;
    v51.i32[0] = v16 + 1;
  }

  while (v16 + 1 < v12);
  v17 = a2[17];
  if (v17)
  {
    if (v17 == v12)
    {
      v18 = 0;
      while (1)
      {
        v19 = *re::BucketArray<unsigned int,32ul>::operator[]((a2 + 12), v18);
        if (v19 != -1 && v18 <= v19)
        {
          break;
        }

        if (v12 == ++v18)
        {
          goto LABEL_36;
        }
      }

      return;
    }

LABEL_39:
    v46 = a2[4];
    v13 = @"Expected all joint arrays for skeleton '%s' to have the same count";
    v21 = a1;
LABEL_22:
    return;
  }

  re::BucketArray<unsigned int,32ul>::resize(a2 + 12, v12);
  v23 = 0;
  do
  {
    *re::BucketArray<unsigned int,32ul>::operator[]((a2 + 12), v23) = -1;
    v24 = *(re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[]((a2 + 5), v23) + 8);
    v25 = strrchr(v24, 47);
    if (!v25)
    {
      goto LABEL_35;
    }

    v26 = v25 - v24;
    v50[0].i64[0] = 0;
    v50[0].i64[1] = &str_67;
    v27 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v50[0].i64[0] >> 31) ^ (v50[0].i64[0] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v50[0].i64[0] >> 31) ^ (v50[0].i64[0] >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a3, v50, v27 ^ (v27 >> 31), &v51);
    if (v51.i32[3] == 0x7FFFFFFF)
    {
LABEL_42:
      if (v50[0].i8[0])
      {
        if (v50[0].i8[0])
        {
        }
      }

      return;
    }

    v28 = *(*(a3 + 16) + 32 * v51.u32[3] + 24);
    if (v23 <= v28)
    {
      goto LABEL_42;
    }

    v29 = re::BucketArray<unsigned int,32ul>::operator[]((a2 + 12), v23);
    *v29 = v28;
    if (v50[0].i8[0])
    {
      if (v50[0].i8[0])
      {
      }
    }

LABEL_35:
    ++v23;
  }

  while (v12 != v23);
LABEL_36:
  if (a2[24] != v12)
  {
    goto LABEL_39;
  }

  v30 = a2[31];
  if (v30)
  {
    if (v30 != v12)
    {
      goto LABEL_39;
    }
  }

  else
  {
    re::BucketArray<RESRT,32ul>::resize((a2 + 26), v12);
    v32 = 0;
    do
    {
      v55 = *re::BucketArray<simd_float4x4,32ul>::operator[]((a2 + 19), v32);
      v49 = __invert_f4(v55);
      if (*re::BucketArray<unsigned int,32ul>::operator[]((a2 + 12), v32) == -1)
      {
        v51 = 0u;
        v50[0] = xmmword_1E30474D0;
        v53[0] = 0u;
        re::decomposeScaleRotationTranslation<float>(&v49, &v51, v50, v53);
        v47 = v51.i64[1];
        v40 = v51.i64[0];
        v41 = v50[0].i64[1];
        v42 = v50[0].i64[0];
        v43 = *(&v53[0] + 1);
        v44 = *&v53[0];
      }

      else
      {
        v33 = re::BucketArray<unsigned int,32ul>::operator[]((a2 + 12), v32);
        v34 = re::BucketArray<simd_float4x4,32ul>::operator[]((a2 + 19), *v33);
        v35 = 0;
        v36 = *v34;
        v37 = v34[1];
        v38 = v34[2];
        v39 = v34[3];
        v50[0] = v49.columns[0];
        v50[1] = v49.columns[1];
        v50[2] = v49.columns[2];
        v50[3] = v49.columns[3];
        do
        {
          *(&v51 + v35 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, COERCE_FLOAT(*&v50[v35])), v37, *v50[v35].i8, 1), v38, v50[v35], 2), v39, v50[v35], 3);
          ++v35;
        }

        while (v35 != 4);
        v50[0] = 0u;
        v52 = 0u;
        v53[0] = xmmword_1E30474D0;
        re::decomposeScaleRotationTranslation<float>(&v51, v50, v53, &v52);
        v47 = v50[0].i64[1];
        v40 = v50[0].i64[0];
        v41 = *(&v53[0] + 1);
        v42 = *&v53[0];
        v43 = *(&v52 + 1);
        v44 = v52;
      }

      v45 = re::BucketArray<re::ImportAssetTable::ImportedAsset,32ul>::operator[]((a2 + 26), v32);
      *v45 = v40;
      v45[1] = v47;
      v45[2] = v42;
      v45[3] = v41;
      ++v32;
      v45[4] = v44;
      v45[5] = v43;
    }

    while (v32 != v12);
  }

  *a1 = 0;
}

uint64_t RESkeletonDefinitionCreateGeomSkeletonV2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v76 = *MEMORY[0x1E69E9840];
  v50 = 0;
  v51 = &str_67;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  memset(v58, 0, sizeof(v58));
  v59 = 0;
  v60 = 0x7FFFFFFFLL;
  v10 = v61;
  if (!v61)
  {
    v13 = re::StringID::operator=(&v50, (a1 + 24));
    v10 = *(a1 + 80);
    if (v10)
    {
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v17 = re::BucketArray<re::StringID,32ul>::operator[](a1 + 40, v16);
        v18 = *(&v52 + 1);
        if (*(&v52 + 1) <= v16)
        {
          break;
        }

        v14 = re::StringID::operator=((v53 + v15), v17);
        ++v16;
        v15 += 16;
        if (v10 == v16)
        {
          goto LABEL_10;
        }
      }

      v62 = 0;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      *buf = 0u;
      v37 = MEMORY[0x1E69E9C10];
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

      v66 = 468;
      v67 = 2048;
      v68 = v16;
      v69 = 2048;
      v70 = v18;
      _os_log_send_and_compose_impl(v39, &v62, buf, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v63, 38, v50, v51);
      _os_crash_msg();
      __break(1u);
    }

    else
    {
LABEL_10:
      if (!v10)
      {
LABEL_14:
        if (!v10)
        {
LABEL_18:
          if (!v10)
          {
LABEL_22:
            v31 = re::globalAllocators(v30);
            v12 = (*(*v31[2] + 32))(v31[2], 184, 8);
            ArcSharedObject::ArcSharedObject(v12, 0);
            *v12 = &unk_1F5D2E9A8;
            *(v32 + 24) = 0u;
            *(v12 + 168) = 0u;
            *(v12 + 32) = &str_67;
            *(v12 + 56) = 0u;
            *(v12 + 72) = 0u;
            *(v12 + 104) = 0u;
            *(v12 + 120) = 0u;
            *(v12 + 152) = 0u;
            *(v12 + 168) = 0x7FFFFFFF00000000;
            *(v12 + 136) = 0u;
            *(v12 + 88) = 0u;
            *(v12 + 40) = 0u;
            re::StringID::operator=((v32 + 24), &v50);
            re::FixedArray<float>::operator=((v12 + 40), &v52);
            re::FixedArray<float>::operator=((v12 + 64), &v53 + 1);
            re::FixedArray<float>::operator=((v12 + 88), &v55);
            re::FixedArray<float>::operator=((v12 + 112), &v56 + 1);
            re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=(v12 + 136, v58);
            goto LABEL_23;
          }

          v25 = 0;
          v18 = 0;
          while (1)
          {
            v26 = re::BucketArray<RESRT,32ul>::operator[](a1 + 208, v18);
            v8 = *(&v55 + 1);
            if (*(&v55 + 1) <= v18)
            {
              goto LABEL_51;
            }

            v27 = (v56 + v25);
            v28 = *v26;
            v29 = v26[2];
            v27[1] = v26[1];
            v27[2] = v29;
            *v27 = v28;
            ++v18;
            v25 += 48;
            if (v10 == v18)
            {
              goto LABEL_22;
            }
          }
        }

        v8 = 0;
        v16 = 0;
        while (1)
        {
          v20 = re::BucketArray<simd_float4x4,32ul>::operator[](a1 + 152, v16);
          v18 = v57;
          if (v57 <= v16)
          {
            break;
          }

          v22 = *(v20 + 2);
          v21 = *(v20 + 3);
          v23 = *(v20 + 1);
          v24 = (*(&v57 + 1) + v8);
          *v24 = *v20;
          v24[1] = v23;
          v24[2] = v22;
          v24[3] = v21;
          ++v16;
          v8 += 64;
          if (v10 == v16)
          {
            goto LABEL_18;
          }
        }

LABEL_47:
        v62 = 0;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        *buf = 0u;
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

        v66 = 468;
        v67 = 2048;
        v68 = v16;
        v69 = 2048;
        v70 = v18;
        _os_log_send_and_compose_impl(v45, &v62, buf, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v63, 38, v50, v51);
        _os_crash_msg();
        __break(1u);
LABEL_51:
        v62 = 0;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        *buf = 0u;
        v46 = MEMORY[0x1E69E9C10];
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

        v66 = 468;
        v67 = 2048;
        v68 = v18;
        v69 = 2048;
        v70 = v8;
        _os_log_send_and_compose_impl(v48, &v62, buf, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v63, 38, v50, v51);
        _os_crash_msg();
        __break(1u);
        goto LABEL_55;
      }

      v16 = 0;
      while (1)
      {
        v19 = re::BucketArray<unsigned int,32ul>::operator[](a1 + 96, v16);
        v18 = v54;
        if (v54 <= v16)
        {
          break;
        }

        *(*(&v54 + 1) + 4 * v16++) = *v19;
        if (v10 == v16)
        {
          goto LABEL_14;
        }
      }
    }

    v62 = 0;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    *buf = 0u;
    v40 = MEMORY[0x1E69E9C10];
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

    v66 = 468;
    v67 = 2048;
    v68 = v16;
    v69 = 2048;
    v70 = v18;
    _os_log_send_and_compose_impl(v42, &v62, buf, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v63, 38, v50, v51);
    _os_crash_msg();
    __break(1u);
    goto LABEL_47;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_55:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v11 = CoreRELog::log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v36 = re::WrappedError::localizedDescription(&v61);
    *buf = 136315138;
    *&buf[4] = v36;
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Failed to create skeleton: %s", buf, 0xCu);
  }

  v12 = 0;
LABEL_23:
  v33.n128_f64[0] = re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v58);
  if (*(&v56 + 1))
  {
    if (v57)
    {
      (*(**(&v56 + 1) + 40))(v33.n128_f64[0]);
      v57 = 0uLL;
    }

    *(&v56 + 1) = 0;
  }

  if (v55)
  {
    if (*(&v55 + 1))
    {
      (*(*v55 + 40))(v33);
      *(&v55 + 1) = 0;
      *&v56 = 0;
    }

    *&v55 = 0;
  }

  if (*(&v53 + 1))
  {
    if (v54)
    {
      (*(**(&v53 + 1) + 40))(v33);
      v54 = 0uLL;
    }

    *(&v53 + 1) = 0;
  }

  v34 = re::FixedArray<re::StringID>::deinit(&v52);
  if (v50)
  {
    if (v50)
    {
    }
  }

  return v12;
}

unint64_t *RESkeletonDefinitionCreateMeshSkeletonDefinition(re *a1)
{
  re::make::shared::object<re::MeshSkeletonDefinition>(a1, &v12);
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v11 = 0x7FFFFFFFLL;
  if (createSkeleton<re::MeshSkeletonDefinition>(a1, v12, v9, v2, v3, v4, v5, v6))
  {
    v7 = v12;
    v12 = 0;
  }

  else
  {
    v7 = 0;
  }

  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
  if (v12)
  {
  }

  return v7;
}

BOOL createSkeleton<re::MeshSkeletonDefinition>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v59 = *MEMORY[0x1E69E9840];
  v10 = v44;
  if (!v44)
  {
    v12 = re::StringID::operator=(a2 + 3, (a1 + 24));
    v13 = *(a1 + 80);
    if (v13)
    {
      v15 = 0;
      while (1)
      {
        v16 = re::BucketArray<re::StringID,32ul>::operator[](a1 + 40, v15);
        v17 = a2[6];
        if (v17 <= v15)
        {
          break;
        }

        v14 = re::StringID::operator=((a2[7] + 16 * v15++), v16);
        if (v15 == v13)
        {
          goto LABEL_10;
        }
      }

      v45 = 0;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      *buf = 0u;
      v31 = MEMORY[0x1E69E9C10];
      v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v46 = 136315906;
      v47 = "operator[]";
      v48 = 1024;
      if (v32)
      {
        v33 = 3;
      }

      else
      {
        v33 = 2;
      }

      v49 = 468;
      v50 = 2048;
      v51 = v15;
      v52 = 2048;
      v53 = v17;
      _os_log_send_and_compose_impl(v33, &v45, buf, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v46, 38, v44);
      _os_crash_msg();
      __break(1u);
    }

    else
    {
LABEL_10:
      if (!v13)
      {
LABEL_14:
        if (!v13)
        {
LABEL_18:
          if (!v13)
          {
LABEL_22:
            goto LABEL_23;
          }

          v15 = 0;
          while (1)
          {
            v25 = re::BucketArray<RESRT,32ul>::operator[](a1 + 208, v15);
            v17 = a2[12];
            if (v17 <= v15)
            {
              goto LABEL_36;
            }

            v26 = (a2[13] + 48 * v15);
            v27 = *v25;
            v28 = v25[2];
            v26[1] = v25[1];
            v26[2] = v28;
            *v26 = v27;
            if (++v15 == v13)
            {
              goto LABEL_22;
            }
          }
        }

        v15 = 0;
        v20 = 32;
        while (1)
        {
          v19 = re::BucketArray<simd_float4x4,32ul>::operator[](a1 + 152, v15);
          v17 = a2[15];
          if (v17 <= v15)
          {
            break;
          }

          v22 = *(v19 + 2);
          v21 = *(v19 + 3);
          v23 = *(v19 + 1);
          v24 = (a2[16] + v20);
          *(v24 - 2) = *v19;
          *(v24 - 1) = v23;
          *v24 = v22;
          v24[1] = v21;
          ++v15;
          v20 += 64;
          if (v13 == v15)
          {
            goto LABEL_18;
          }
        }

LABEL_32:
        v45 = 0;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        *buf = 0u;
        v37 = MEMORY[0x1E69E9C10];
        v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v46 = 136315906;
        v47 = "operator[]";
        v48 = 1024;
        if (v38)
        {
          v39 = 3;
        }

        else
        {
          v39 = 2;
        }

        v49 = 468;
        v50 = 2048;
        v51 = v15;
        v52 = 2048;
        v53 = v17;
        _os_log_send_and_compose_impl(v39, &v45, buf, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v46, 38, v44);
        _os_crash_msg();
        __break(1u);
LABEL_36:
        v45 = 0;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        *buf = 0u;
        v40 = MEMORY[0x1E69E9C10];
        v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v46 = 136315906;
        v47 = "operator[]";
        v48 = 1024;
        if (v41)
        {
          v42 = 3;
        }

        else
        {
          v42 = 2;
        }

        v49 = 468;
        v50 = 2048;
        v51 = v15;
        v52 = 2048;
        v53 = v17;
        _os_log_send_and_compose_impl(v42, &v45, buf, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v46, 38, v44);
        _os_crash_msg();
        __break(1u);
        goto LABEL_40;
      }

      v15 = 0;
      while (1)
      {
        v18 = re::BucketArray<unsigned int,32ul>::operator[](a1 + 96, v15);
        v17 = a2[9];
        if (v17 <= v15)
        {
          break;
        }

        *(a2[10] + 4 * v15++) = *v18;
        if (v13 == v15)
        {
          goto LABEL_14;
        }
      }
    }

    v45 = 0;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    *buf = 0u;
    v34 = MEMORY[0x1E69E9C10];
    v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v46 = 136315906;
    v47 = "operator[]";
    v48 = 1024;
    if (v35)
    {
      v36 = 3;
    }

    else
    {
      v36 = 2;
    }

    v49 = 468;
    v50 = 2048;
    v51 = v15;
    v52 = 2048;
    v53 = v17;
    _os_log_send_and_compose_impl(v36, &v45, buf, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v46, 38, v44);
    _os_crash_msg();
    __break(1u);
    goto LABEL_32;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_40:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v11 = CoreRELog::log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v30 = re::WrappedError::localizedDescription(&v44);
    *buf = 136315138;
    *&buf[4] = v30;
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Failed to create skeleton: %s", buf, 0xCu);
  }

LABEL_23:
  return v10 == 0;
}

uint64_t RESkeletonDefinitionCreateSkeletonAsset(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  re::StringID::StringID(&v39, (a1 + 24));
  v5 = *(a1 + 40);
  v40[0] = 0;
  v40[1] = 0;
  v41 = 0;
  re::FixedArray<re::StringID>::init<>(v40, v5, *(a1 + 80));
  v6 = *(a1 + 80);
  if (v6)
  {
    v2 = 0;
    v7 = v41;
    do
    {
      v8 = re::BucketArray<re::StringID,32ul>::operator[](a1 + 40, v2);
      re::StringID::operator=(v7, v8);
      ++v2;
      v7 += 2;
    }

    while (v6 != v2);
  }

  v10 = a1 + 96;
  v9 = *(a1 + 96);
  v42 = 0;
  v43 = 0;
  v44 = 0;
  re::FixedArray<int>::init<>(&v42, v9, *(a1 + 136));
  v11 = *(a1 + 136);
  if (v11)
  {
    v2 = 0;
    v12 = v44;
    do
    {
      *(v12 + 4 * v2) = *re::BucketArray<unsigned int,32ul>::operator[](a1 + 96, v2);
      ++v2;
    }

    while (v11 != v2);
  }

  v45 = 0;
  v46 = 0;
  v47 = 0;
  v13 = re::FixedArray<re::GenericSRT<float>>::init<>(&v45, *(a1 + 208), *(a1 + 248));
  v15 = *(a1 + 248);
  if (v15)
  {
    v16 = 0;
    v17 = v47;
    do
    {
      v18 = *(a1 + 248);
      if (v18 <= v16)
      {
        re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, v16, v18);
        _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v35, v36);
        __break(1u);
LABEL_29:
        v48 = 0;
        v56 = 0u;
        v57 = 0u;
        v55 = 0u;
        memset(v54, 0, sizeof(v54));
        v32 = MEMORY[0x1E69E9C10];
        v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v49 = 136315906;
        *&v49[4] = "operator[]";
        v50 = 1024;
        if (v33)
        {
          v34 = 3;
        }

        else
        {
          v34 = 2;
        }

        v51 = 866;
        v52 = 2048;
        *v53 = v10;
        *&v53[8] = 2048;
        *&v53[10] = v2;
        _os_log_send_and_compose_impl(v34, &v48, v54, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v49, 38, v37, v38);
        _os_crash_msg();
        __break(1u);
      }

      v10 = v16 >> 5;
      v2 = *(a1 + 216);
      if (v2 <= v16 >> 5)
      {
        goto LABEL_29;
      }

      v19 = a1 + 232;
      if ((*(a1 + 224) & 1) == 0)
      {
        v19 = *(a1 + 240);
      }

      v20 = (*(v19 + 8 * v10) + 48 * (v16 & 0x1F));
      v21 = *v20;
      v22 = v20[2];
      v17[1] = v20[1];
      v17[2] = v22;
      *v17 = v21;
      v17 += 3;
      ++v16;
    }

    while (v15 != v16);
  }

  v23 = re::globalAllocators(v13);
  v24 = (*(*v23[2] + 32))(v23[2], 272, 8);
  re::SkeletonAsset::SkeletonAsset(v24, &v39);
  *v49 = &unk_1F5D2EA38;
  *&v53[4] = v49;
  *&v55 = v54 + 8;
  *&v54[0] = v25;
  *(&v54[0] + 1) = &unk_1F5D2EA38;
  std::__function::__value_func<void ()(re::SkeletonAsset *)>::~__value_func[abi:nn200100](v49);
  if (v45)
  {
    if (v46)
    {
      (*(*v45 + 40))();
      v46 = 0;
      v47 = 0;
    }

    v45 = 0;
  }

  if (v42)
  {
    if (v43)
    {
      (*(*v42 + 40))();
      v43 = 0;
      v44 = 0;
    }

    v42 = 0;
  }

  v26 = re::FixedArray<re::StringID>::deinit(v40);
  if (v39)
  {
    if (v39)
    {
    }
  }

  v27 = *&v54[0];
  v28 = re::SkeletonAsset::assetType(v26);
  (*(*a2 + 424))(&v39, a2, v27, v28, 0, 0, 0);
  v29 = v39;
  if (v39)
  {
    v30 = (v39 + 8);
    *&v54[0] = 0;
  }

  re::AssetHandle::~AssetHandle(&v39);
  std::unique_ptr<re::SkeletonAsset,std::function<void ()(re::SkeletonAsset*)>>::~unique_ptr[abi:nn200100](v54);
  return v29;
}

void anonymous namespace::makeError(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>, uint64_t a4)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AEC0];
  v7 = a2;
  v8 = [[v6 alloc] initWithFormat:v7 arguments:&a4];

  v9 = MEMORY[0x1E696ABC0];
  v12 = *MEMORY[0x1E696A578];
  v13[0] = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v11 = [v9 errorWithDomain:@"RESkeletonDefinitionErrorDomain" code:a1 userInfo:v10];
  *a3 = v11;
}

uint64_t *re::BucketArray<unsigned int,32ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 32 * a2)
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
        v5 = (*(**v3 + 32))(*v3, 128, 0);
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

uint64_t *re::BucketArray<unsigned int,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<unsigned int,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<RESRT,32ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 32 * a2)
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
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
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

LABEL_24:
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
  }

  return result;
}

void *re::BucketArray<RESRT,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<RESRT,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::StringID,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::StringID,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<simd_float4x4,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<simd_float4x4,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void anonymous namespace::SkeletonDefinition::~SkeletonDefinition(_anonymous_namespace_::SkeletonDefinition *this)
{
  *this = &unk_1F5D2E960;
  v2 = *(this + 31);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<re::ImportAssetTable::ImportedAsset,32ul>::operator[](this + 208, i);
    }
  }

  while (*(this + 27))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 26);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 208);
  *(this + 31) = 0;
  ++*(this + 64);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 208);
  v4 = *(this + 24);
  if (v4)
  {
    for (j = 0; j != v4; ++j)
    {
      re::BucketArray<simd_float4x4,32ul>::operator[](this + 152, j);
    }
  }

  while (*(this + 20))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 19);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 152);
  *(this + 24) = 0;
  ++*(this + 50);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 152);
  v6 = *(this + 17);
  if (v6)
  {
    for (k = 0; k != v6; ++k)
    {
      re::BucketArray<unsigned int,32ul>::operator[](this + 96, k);
    }
  }

  while (*(this + 13))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 12);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 96);
  *(this + 17) = 0;
  ++*(this + 36);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 96);
  v8 = *(this + 10);
  if (v8)
  {
    for (m = 0; m != v8; ++m)
    {
      v10 = re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](this + 40, m);
      re::StringID::destroyString(v10);
    }
  }

  while (*(this + 6))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 5);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 40);
  *(this + 10) = 0;
  ++*(this + 22);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 40);
  re::StringID::destroyString((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::BucketArray<re::StringID,32ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 32 * a2)
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
        v5 = (*(**v3 + 32))(*v3, 512, 0);
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

_anonymous_namespace_ *re::BucketArray<simd_float4x4,32ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 32 * a2)
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
          result = (*(**v3 + 32))(*v3, 2048, 0);
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
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
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

LABEL_24:
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
  }

  return result;
}

unint64_t re::BucketArray<re::StringID,32ul>::operator[](uint64_t a1, unint64_t a2)
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

  v2 = a2 >> 5;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 5)
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

  return *(v5 + 8 * v2) + 16 * (a2 & 0x1F);
}

_anonymous_namespace_ *anonymous namespace::SkeletonDefinition::clear(_anonymous_namespace_::SkeletonDefinition *this)
{
  v2 = *(this + 31);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<re::ImportAssetTable::ImportedAsset,32ul>::operator[](this + 208, i);
    }
  }

  *(this + 31) = 0;
  ++*(this + 64);
  v4 = *(this + 24);
  if (v4)
  {
    for (j = 0; j != v4; ++j)
    {
      re::BucketArray<simd_float4x4,32ul>::operator[](this + 152, j);
    }
  }

  *(this + 24) = 0;
  ++*(this + 50);
  v6 = *(this + 17);
  if (v6)
  {
    for (k = 0; k != v6; ++k)
    {
      re::BucketArray<unsigned int,32ul>::operator[](this + 96, k);
    }
  }

  *(this + 17) = 0;
  ++*(this + 36);
  v8 = *(this + 10);
  if (v8)
  {
    for (m = 0; m != v8; ++m)
    {
      v10 = re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](this + 40, m);
      re::StringID::destroyString(v10);
    }
  }

  *(this + 10) = 0;
  ++*(this + 22);
  v13[0] = 0;
  v13[1] = &str_67;
  result = re::StringID::operator=((this + 24), v13);
  if (v13[0])
  {

    return v12();
  }

  return result;
}

uint64_t *re::Shareable<re::GeomSkeleton>::~Shareable(uint64_t *a1)
{
  *a1 = &unk_1F5D2E9A8;
  v2 = a1 + 5;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 17);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 14);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 8);
  re::FixedArray<re::StringID>::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::Shareable<re::GeomSkeleton>::~Shareable(uint64_t *a1)
{
  *a1 = &unk_1F5D2E9A8;
  v2 = a1 + 5;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 17);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 14);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 8);
  re::FixedArray<re::StringID>::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::make::shared::object<re::MeshSkeletonDefinition>@<D0>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 136, 8);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0;
  ArcSharedObject::ArcSharedObject(v4, 0);
  *(v4 + 24) = 0;
  *v4 = &unk_1F5D2E9F0;
  *(v4 + 32) = &str_67;
  result = 0.0;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0u;
  *(v4 + 120) = 0u;
  *a2 = v4;
  return result;
}

void re::MeshSkeletonDefinition::~MeshSkeletonDefinition(re::MeshSkeletonDefinition *this)
{
  *this = &unk_1F5D2E9F0;
  v2 = (this + 24);
  re::FixedArray<CoreIKTransform>::deinit(this + 14);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  re::FixedArray<CoreIKTransform>::deinit(this + 8);
  re::FixedArray<re::StringID>::deinit(this + 5);
  re::StringID::destroyString(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2E9F0;
  v2 = (this + 24);
  re::FixedArray<CoreIKTransform>::deinit(this + 14);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  re::FixedArray<CoreIKTransform>::deinit(this + 8);
  re::FixedArray<re::StringID>::deinit(this + 5);
  re::StringID::destroyString(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<std::unique_ptr<re::SkeletonAsset,std::function<void ()(re::SkeletonAsset*)>> re::makeDefaultUniquePtr<re::SkeletonAsset,re::SkeletonAssetData>(re::SkeletonAssetData &&)::{lambda(re::SkeletonAsset*)#1},std::allocator<re::SkeletonAsset*>,void ()(re::SkeletonAssetData &&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *RECoordinateSpaceDefinitionComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::CoordinateSpaceDefinitionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

void *REColliderComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

uint64_t REColliderComponentSetShape(uint64_t a1, uint64_t a2)
{
  re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  re::AssetAPIHelper::assetHandleCreate(a2, &v7);
  v4 = *(a1 + 32);
  *(a1 + 32) = v7;
  v7 = v4;
  v5 = *(a1 + 48);
  *(a1 + 48) = v8;
  v8 = v5;
  re::AssetHandle::~AssetHandle(&v7);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REColliderComponentSetInteractionType(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  *(v3 + 60) = v2;

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REColliderComponentSetGroup(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  *(v3 + 64) = v2;

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REColliderComponentSetMask(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  *(v3 + 68) = v2;

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REColliderComponentGetCollisionObject(uint64_t a1, uint64_t a2)
{
  v4 = *(re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2) + 16);
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *(v4 + 32);
    }

    while (v4);
    v6 = *(v5 + 24);
    if (v6)
    {
      re::ecs2::PhysicsSystem::ensureSimulationUpdatedWithECS(v6, v3);
    }
  }

  return *(a1 + 96);
}

uint64_t REColliderComponentIsTrigger(uint64_t a1, uint64_t a2)
{
  v2 = *(re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2) + 96);
  result = (*(*v2 + 32))(v2);
  if (result)
  {
    return (v2[88] >> 1) & 1;
  }

  return result;
}

uint64_t re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    v3 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    if ((*(*a1 + 40))(a1, a2) == re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      return v2;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) component must not be null.", "component", "safeCast", 97);
    _os_crash("assertion failure: (component) component must not be null.");
    __break(1u);
  }

  (*(*v2 + 40))(v2);
  v5 = *(v3[67] + 4);
  v6 = (*(*v2 + 40))(v2);
  re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Component is wrong type. Expected type: %s, but got: %s", "&reinterpret_cast<Derived *>(component)->componentType() == &Derived::classComponentType()", "safeCast", 101, v5, *(v6 + 32));
  result = _os_crash("assertion failure: (&reinterpret_cast<Derived *>(component)->componentType() == &Derived::classComponentType()) Component is wrong type. Expected type: %s, but got: %s", v8, v9);
  __break(1u);
  return result;
}

void *REForceEffectComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::ForceEffectComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

uint64_t REForceEffectComponentGetForceEffectCount(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

uint64_t *REForceEffectComponentResizeForceEffects(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v4 = result;
    v5 = result[6];
    if (v5)
    {
      v7 = 0;
      v8 = 0;
      v9 = result[6];
      do
      {
        if (v9 <= v8)
        {
          v20 = 0;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v29 = 0u;
          v11 = MEMORY[0x1E69E9C10];
          v21 = 136315906;
          v22 = "operator[]";
          v23 = 1024;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v12 = 3;
          }

          else
          {
            v12 = 2;
          }

          v24 = 789;
          v25 = 2048;
          v26 = v8;
          v27 = 2048;
          v28 = v9;
          _os_log_send_and_compose_impl(v12, &v20, &v29, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
          _os_crash_msg();
          __break(1u);
LABEL_18:
          v20 = 0;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v29 = 0u;
          v13 = MEMORY[0x1E69E9C10];
          v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v21 = 136315906;
          v22 = "operator[]";
          v23 = 1024;
          if (v14)
          {
            v15 = 3;
          }

          else
          {
            v15 = 2;
          }

          v24 = 789;
          v25 = 2048;
          v26 = v8;
          v27 = 2048;
          v28 = v9;
          _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
          _os_crash_msg();
          __break(1u);
LABEL_22:
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
          v26 = v8;
          v27 = 2048;
          v28 = v9;
          _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
          _os_crash_msg();
          __break(1u);
        }

        re::EventBus::unsubscribe(a3, *(v4[8] + v7 + 232), *(v4[8] + v7 + 240));
        v9 = v4[6];
        if (v9 <= v8)
        {
          goto LABEL_18;
        }

        v10 = *(v4[8] + v7 + 248);
        if (v10)
        {
          CFRelease(v10);
          v9 = v4[6];
          if (v9 <= v8)
          {
            goto LABEL_22;
          }

          *(v4[8] + v7 + 248) = 0;
        }

        ++v8;
        v7 += 256;
      }

      while (v5 != v8);
    }

    re::DynamicArray<re::ecs2::ForceEffectDesc>::resize(v4 + 4, a2);

    return re::ecs2::Component::enqueueMarkDirty(v4);
  }

  return result;
}

uint64_t REForceEffectComponentSetForceEffectPosition(uint64_t result, unint64_t a2, __n128 a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v4 = *(result + 48);
    if (v4 <= a2)
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

      v13 = 789;
      v14 = 2048;
      v15 = a2;
      v16 = 2048;
      v17 = v4;
      _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
      _os_crash_msg();
      __break(1u);
    }

    v5 = *(result + 64);
    if (v5)
    {
      *(v5 + (a2 << 8)) = a3;

      return re::ecs2::Component::enqueueMarkDirty(result);
    }
  }

  return result;
}

__n128 REForceEffectComponentGetForceEffectPosition(uint64_t a1, unint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  result = 0uLL;
  if (a1)
  {
    v4 = *(a1 + 48);
    if (v4 <= a2)
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

      v13 = 789;
      v14 = 2048;
      v15 = a2;
      v16 = 2048;
      v17 = v4;
      _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
      _os_crash_msg();
      __break(1u);
    }

    v5 = *(a1 + 64);
    if (v5)
    {
      return *(v5 + (a2 << 8));
    }
  }

  return result;
}

uint64_t REForceEffectComponentSetForceEffectOrientation(uint64_t result, unint64_t a2, __n128 a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v4 = *(result + 48);
    if (v4 <= a2)
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

      v13 = 789;
      v14 = 2048;
      v15 = a2;
      v16 = 2048;
      v17 = v4;
      _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
      _os_crash_msg();
      __break(1u);
    }

    v5 = *(result + 64);
    if (v5)
    {
      *(v5 + (a2 << 8) + 16) = a3;

      return re::ecs2::Component::enqueueMarkDirty(result);
    }
  }

  return result;
}

__n128 REForceEffectComponentGetForceEffectOrientation(uint64_t a1, unint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  result = 0uLL;
  if (a1)
  {
    v4 = *(a1 + 48);
    if (v4 <= a2)
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

      v13 = 789;
      v14 = 2048;
      v15 = a2;
      v16 = 2048;
      v17 = v4;
      _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
      _os_crash_msg();
      __break(1u);
    }

    v5 = *(a1 + 64);
    if (v5)
    {
      return *(v5 + (a2 << 8) + 16);
    }
  }

  return result;
}

uint64_t REForceEffectComponentSetForceEffectStrengthScale(uint64_t result, unint64_t a2, float a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v4 = *(result + 48);
    if (v4 <= a2)
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

      v13 = 789;
      v14 = 2048;
      v15 = a2;
      v16 = 2048;
      v17 = v4;
      _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
      _os_crash_msg();
      __break(1u);
    }

    v5 = *(result + 64);
    if (v5)
    {
      *(v5 + (a2 << 8) + 32) = a3;

      return re::ecs2::Component::enqueueMarkDirty(result);
    }
  }

  return result;
}

float REForceEffectComponentGetForceEffectStrengthScale(uint64_t a1, unint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  result = 0.0;
  if (a1)
  {
    v4 = *(a1 + 48);
    if (v4 <= a2)
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

      v13 = 789;
      v14 = 2048;
      v15 = a2;
      v16 = 2048;
      v17 = v4;
      _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
      _os_crash_msg();
      __break(1u);
    }

    v5 = *(a1 + 64);
    if (v5)
    {
      return *(v5 + (a2 << 8) + 32);
    }
  }

  return result;
}

uint64_t REForceEffectComponentSetSimulationState(uint64_t result, char a2)
{
  if (result)
  {
    if ((*(result + 25) & 1) == 0)
    {
      *(result + 25) = 1;
    }

    *(result + 26) = a2;
  }

  return result;
}

uint64_t REForceEffectComponentHasSimulationState(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 25);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t REForceEffectComponentGetSimulationState(uint64_t result)
{
  if (result)
  {
    if (*(result + 25) == 1)
    {
      return *(result + 26);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t REForceEffectComponentRemoveSimulationState(uint64_t result)
{
  if (result)
  {
    if (*(result + 25) == 1)
    {
      *(result + 25) = 0;
    }
  }

  return result;
}

uint64_t REForceEffectComponentSetForceEffectMask(uint64_t result, unint64_t a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v4 = *(result + 48);
    if (v4 <= a2)
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

      v13 = 789;
      v14 = 2048;
      v15 = a2;
      v16 = 2048;
      v17 = v4;
      _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
      _os_crash_msg();
      __break(1u);
    }

    v5 = *(result + 64);
    if (v5)
    {
      *(v5 + (a2 << 8) + 36) = a3;

      return re::ecs2::Component::enqueueMarkDirty(result);
    }
  }

  return result;
}

uint64_t REForceEffectComponentGetForceEffectMask(uint64_t result, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = *(result + 48);
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

    v4 = *(result + 64);
    if (v4)
    {
      return *(v4 + (a2 << 8) + 36);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t REForceEffectComponentSetForceEffectInputs(uint64_t result, unint64_t a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v4 = *(result + 48);
    if (v4 <= a2)
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

      v13 = 789;
      v14 = 2048;
      v15 = a2;
      v16 = 2048;
      v17 = v4;
      _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
      _os_crash_msg();
      __break(1u);
    }

    v5 = *(result + 64);
    if (v5)
    {
      *(v5 + (a2 << 8) + 176) = a3;

      return re::ecs2::Component::enqueueMarkDirty(result);
    }
  }

  return result;
}

uint64_t REForceEffectComponentSetForceEffectForceMode(uint64_t result, unint64_t a2, char a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v4 = *(result + 48);
    if (v4 <= a2)
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

      v13 = 789;
      v14 = 2048;
      v15 = a2;
      v16 = 2048;
      v17 = v4;
      _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
      _os_crash_msg();
      __break(1u);
    }

    v5 = *(result + 64);
    if (v5)
    {
      *(v5 + (a2 << 8) + 40) = a3;

      return re::ecs2::Component::enqueueMarkDirty(result);
    }
  }

  return result;
}

uint64_t REForceEffectComponentGetForceEffectForceMode(uint64_t result, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = *(result + 48);
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

    v4 = *(result + 64);
    if (v4)
    {
      return *(v4 + (a2 << 8) + 40);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t REForceEffectComponentSetForceEffectEventKey(uint64_t result, unint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v4 = *(result + 48);
    if (v4 <= a2)
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

      v13 = 789;
      v14 = 2048;
      v15 = a2;
      v16 = 2048;
      v17 = v4;
      _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
      _os_crash_msg();
      __break(1u);
    }

    v5 = *(result + 64);
    if (v5)
    {
      *(v5 + (a2 << 8) + 184) = a3;

      return re::ecs2::Component::enqueueMarkDirty(result);
    }
  }

  return result;
}

uint64_t REForceEffectComponentGetForceEffectEventKey(uint64_t result, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = *(result + 48);
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

    v4 = *(result + 64);
    if (v4)
    {
      return *(v4 + (a2 << 8) + 184);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t REForceEffectComponentForceEffectHasTimedFalloff(uint64_t a1, unint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = *(a1 + 48);
    if (v3 <= a2)
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

      v13 = 789;
      v14 = 2048;
      v15 = a2;
      v16 = 2048;
      v17 = v3;
      _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
      _os_crash_msg();
      __break(1u);
    }

    v4 = *(a1 + 64);
    if (v4)
    {
      LOBYTE(v4) = *(v4 + (a2 << 8) + 64);
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t REForceEffectComponentForceEffectRemoveTimedFalloff(uint64_t result, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = *(result + 48);
    if (v3 <= a2)
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
      v17 = a2;
      v18 = 2048;
      v19 = v3;
      _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
      _os_crash_msg();
      __break(1u);
    }

    v4 = *(result + 64);
    if (v4)
    {
      v5 = v4 + (a2 << 8);
      v7 = *(v5 + 64);
      v6 = (v5 + 64);
      if (v7 == 1)
      {
        *v6 = 0;
      }

      return re::ecs2::Component::enqueueMarkDirty(result);
    }
  }

  return result;
}

uint64_t REForceEffectComponentSetForceEffectTimedFalloffDuration(uint64_t result, unint64_t a2, float a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v4 = *(result + 48);
    if (v4 <= a2)
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

      v20 = 789;
      v21 = 2048;
      v22 = a2;
      v23 = 2048;
      v24 = v4;
      _os_log_send_and_compose_impl(v14, &v16, v25, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
      _os_crash_msg();
      __break(1u);
    }

    v5 = *(result + 64);
    if (v5)
    {
      v6 = v5 + (a2 << 8);
      v9 = *(v6 + 64);
      v7 = v6 + 64;
      v8 = v9;
      LODWORD(v25[0]) = 1065353216;
      v10 = v25;
      if (v9)
      {
        v10 = (v7 + 16);
      }

      v11 = *v10;
      v12 = a3;
      if (v8)
      {
        *(v7 + 16) = v11;
      }

      else
      {
        *v7 = 1;
        *(v7 + 16) = v11;
      }

      *(v7 + 8) = v12;

      return re::ecs2::Component::enqueueMarkDirty(result);
    }
  }

  return result;
}

float REForceEffectComponentGetForceEffectTimedFalloffDuration(uint64_t a1, unint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  result = 0.0;
  if (a1)
  {
    v4 = *(a1 + 48);
    if (v4 <= a2)
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

      v16 = 789;
      v17 = 2048;
      v18 = a2;
      v19 = 2048;
      v20 = v4;
      _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
      _os_crash_msg();
      __break(1u);
    }

    v5 = *(a1 + 64);
    if (v5)
    {
      v6 = v5 + (a2 << 8);
      v8 = *(v6 + 64);
      v7 = v6 + 64;
      if (v8 == 1)
      {
        return *(v7 + 8);
      }
    }
  }

  return result;
}

uint64_t REForceEffectComponentSetForceEffectTimedFalloffRate(uint64_t result, unint64_t a2, float a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v4 = *(result + 48);
    if (v4 <= a2)
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
      v19 = a2;
      v20 = 2048;
      v21 = v4;
      _os_log_send_and_compose_impl(v11, &v13, v22, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
      _os_crash_msg();
      __break(1u);
    }

    v5 = *(result + 64);
    if (v5)
    {
      v6 = v5 + (a2 << 8);
      v8 = *(v6 + 64);
      v7 = v6 + 64;
      if (v8)
      {
        v9 = *(v7 + 8);
      }

      else
      {
        *v7 = 1;
        v9 = 1.0;
      }

      *(v7 + 8) = v9;
      *(v7 + 16) = a3;

      return re::ecs2::Component::enqueueMarkDirty(result);
    }
  }

  return result;
}

float REForceEffectComponentGetForceEffectTimedFalloffRate(uint64_t a1, unint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  result = 0.0;
  if (a1)
  {
    v4 = *(a1 + 48);
    if (v4 <= a2)
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

      v16 = 789;
      v17 = 2048;
      v18 = a2;
      v19 = 2048;
      v20 = v4;
      _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
      _os_crash_msg();
      __break(1u);
    }

    v5 = *(a1 + 64);
    if (v5)
    {
      v6 = v5 + (a2 << 8);
      v8 = *(v6 + 64);
      v7 = v6 + 64;
      if (v8 == 1)
      {
        return *(v7 + 16);
      }
    }
  }

  return result;
}

uint64_t REForceEffectComponentForceEffectHasSpatialFalloff(uint64_t a1, unint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = *(a1 + 48);
    if (v3 <= a2)
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

      v13 = 789;
      v14 = 2048;
      v15 = a2;
      v16 = 2048;
      v17 = v3;
      _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
      _os_crash_msg();
      __break(1u);
    }

    v4 = *(a1 + 64);
    if (v4)
    {
      LOBYTE(v4) = *(v4 + (a2 << 8) + 44);
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t REForceEffectComponentForceEffectRemoveSpatialFalloff(uint64_t result, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = *(result + 48);
    if (v3 <= a2)
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
      v17 = a2;
      v18 = 2048;
      v19 = v3;
      _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
      _os_crash_msg();
      __break(1u);
    }

    v4 = *(result + 64);
    if (v4)
    {
      v5 = v4 + (a2 << 8);
      v7 = *(v5 + 44);
      v6 = (v5 + 44);
      if (v7 == 1)
      {
        *v6 = 0;
      }

      return re::ecs2::Component::enqueueMarkDirty(result);
    }
  }

  return result;
}

uint64_t REForceEffectComponentSetForceEffectSpatialFalloffRate(uint64_t result, unint64_t a2, float a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v4 = *(result + 48);
    if (v4 <= a2)
    {
      v15 = 0;
      memset(v24, 0, sizeof(v24));
      v12 = MEMORY[0x1E69E9C10];
      v16 = 136315906;
      v17 = "operator[]";
      v18 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      v19 = 789;
      v20 = 2048;
      v21 = a2;
      v22 = 2048;
      v23 = v4;
      _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
      _os_crash_msg();
      __break(1u);
    }

    v5 = *(result + 64);
    if (v5)
    {
      v6 = v5 + (a2 << 8);
      v9 = *(v6 + 44);
      v7 = v6 + 44;
      v8 = v9;
      *&v24[0] = 1065353216;
      v10 = (v7 + 4);
      if (!v9)
      {
        v10 = v24;
      }

      v11 = *v10;
      if ((v8 & 1) == 0)
      {
        *v7 = 1;
      }

      *(v7 + 4) = v11;
      *(v7 + 12) = a3;

      return re::ecs2::Component::enqueueMarkDirty(result);
    }
  }

  return result;
}

float REForceEffectComponentGetForceEffectSpatialFalloffRate(uint64_t a1, unint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  result = 0.0;
  if (a1)
  {
    v4 = *(a1 + 48);
    if (v4 <= a2)
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

      v16 = 789;
      v17 = 2048;
      v18 = a2;
      v19 = 2048;
      v20 = v4;
      _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
      _os_crash_msg();
      __break(1u);
    }

    v5 = *(a1 + 64);
    if (v5)
    {
      v6 = v5 + (a2 << 8);
      v8 = *(v6 + 44);
      v7 = v6 + 44;
      if (v8 == 1)
      {
        return *(v7 + 12);
      }
    }
  }

  return result;
}

uint64_t REForceEffectComponentSetForceEffectSpatialFalloffOffset(uint64_t result, unint64_t a2, float a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v4 = *(result + 48);
    if (v4 <= a2)
    {
      v14 = 0;
      memset(v23, 0, sizeof(v23));
      v11 = MEMORY[0x1E69E9C10];
      v15 = 136315906;
      v16 = "operator[]";
      v17 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      v18 = 789;
      v19 = 2048;
      v20 = a2;
      v21 = 2048;
      v22 = v4;
      _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
      _os_crash_msg();
      __break(1u);
    }

    v5 = *(result + 64);
    if (v5)
    {
      v6 = v5 + (a2 << 8);
      v8 = *(v6 + 44);
      v7 = v6 + 44;
      if (v8)
      {
        v9 = *(v7 + 4);
        v10 = *(v7 + 12);
      }

      else
      {
        *v7 = 1;
        v10 = 1.0;
        v9 = 1.0;
      }

      *(v7 + 4) = v9;
      *(v7 + 8) = a3;
      *(v7 + 12) = v10;

      return re::ecs2::Component::enqueueMarkDirty(result);
    }
  }

  return result;
}

float REForceEffectComponentGetForceEffectSpatialFalloffOffset(uint64_t a1, unint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  result = 0.0;
  if (a1)
  {
    v4 = *(a1 + 48);
    if (v4 <= a2)
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

      v16 = 789;
      v17 = 2048;
      v18 = a2;
      v19 = 2048;
      v20 = v4;
      _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
      _os_crash_msg();
      __break(1u);
    }

    v5 = *(a1 + 64);
    if (v5)
    {
      v6 = v5 + (a2 << 8);
      v8 = *(v6 + 44);
      v7 = v6 + 44;
      if (v8 == 1)
      {
        return *(v7 + 8);
      }
    }
  }

  return result;
}

uint64_t REForceEffectComponentSetForceEffectBoundSphereRadius(uint64_t result, unint64_t a2, float a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v4 = *(result + 48);
    if (v4 <= a2)
    {
      v15 = 0;
      memset(v24, 0, sizeof(v24));
      v12 = MEMORY[0x1E69E9C10];
      v16 = 136315906;
      v17 = "operator[]";
      v18 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      v19 = 789;
      v20 = 2048;
      v21 = a2;
      v22 = 2048;
      v23 = v4;
      _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
      _os_crash_msg();
      __break(1u);
    }

    v5 = *(result + 64);
    if (v5)
    {
      v6 = v5 + (a2 << 8);
      v9 = *(v6 + 44);
      v7 = v6 + 44;
      v8 = v9;
      *&v24[0] = 0x3F80000000000000;
      v10 = (v7 + 8);
      if (!v9)
      {
        v10 = v24;
      }

      v11 = *v10;
      if ((v8 & 1) == 0)
      {
        *v7 = 1;
      }

      *(v7 + 4) = a3;
      *(v7 + 8) = v11;

      return re::ecs2::Component::enqueueMarkDirty(result);
    }
  }

  return result;
}

float REForceEffectComponentGetForceEffectBoundSphereRadius(uint64_t a1, unint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  result = 0.0;
  if (a1)
  {
    v4 = *(a1 + 48);
    if (v4 <= a2)
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

      v16 = 789;
      v17 = 2048;
      v18 = a2;
      v19 = 2048;
      v20 = v4;
      _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
      _os_crash_msg();
      __break(1u);
    }

    v5 = *(a1 + 64);
    if (v5)
    {
      v6 = v5 + (a2 << 8);
      v8 = *(v6 + 44);
      v7 = v6 + 44;
      if (v8 == 1)
      {
        return *(v7 + 4);
      }
    }
  }

  return result;
}

uint64_t REForceEffectComponentGetForceEffectUserData(uint64_t result, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = *(result + 48);
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

    v4 = *(result + 64);
    if (v4)
    {
      return *(v4 + (a2 << 8) + 224);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t REForceEffectComponentGetForceEffectUserDataSize(uint64_t result, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = *(result + 48);
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

    v4 = *(result + 64);
    if (v4)
    {
      return *(v4 + (a2 << 8) + 208);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t REForceEffectComponentResizeForceEffectUserData(uint64_t result, unint64_t a2, unint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v4 = result;
    v5 = *(result + 48);
    if (v5 <= a2)
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
      v16 = a2;
      v17 = 2048;
      v18 = v5;
      _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
      _os_crash_msg();
      __break(1u);
    }

    v6 = *(result + 64);
    if (v6)
    {
      re::DynamicArray<BOOL>::resize(v6 + (a2 << 8) + 192, a3);

      return re::ecs2::Component::enqueueMarkDirty(v4);
    }
  }

  return result;
}

uint64_t REForceEffectComponentGetForceEffectUserClass(uint64_t result, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = *(result + 48);
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

    v4 = *(result + 64);
    if (v4)
    {
      return *(v4 + (a2 << 8) + 248);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *REForceEffectComponentSetAndRetainForceEffectUserClass(void *this, unint64_t a2, void *cf)
{
  v24 = *MEMORY[0x1E69E9840];
  if (this)
  {
    v4 = this;
    v5 = this[6];
    if (v5 <= a2)
    {
      v14 = 0;
      memset(v23, 0, sizeof(v23));
      v11 = MEMORY[0x1E69E9C10];
      v15 = 136315906;
      v16 = "operator[]";
      v17 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      v18 = 789;
      v19 = 2048;
      v20 = a2;
      v21 = 2048;
      v22 = v5;
      _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
      _os_crash_msg();
      __break(1u);
    }

    v6 = this[8];
    if (v6)
    {
      v8 = v6 + (a2 << 8);
      v10 = *(v8 + 248);
      v9 = (v8 + 248);
      this = v10;
      if (v10 != cf)
      {
        if (this)
        {
          CFRelease(this);
        }

        if (cf)
        {
          CFRetain(cf);
          *v9 = cf;
        }

        return re::ecs2::Component::enqueueMarkDirty(v4);
      }
    }
  }

  return this;
}

uint64_t REForceEffectComponentSetForceEffectSubscription(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v6 = result;
    v7 = *(result + 48);
    if (v7 <= a2)
    {
      v15 = 0;
      memset(v24, 0, sizeof(v24));
      v12 = MEMORY[0x1E69E9C10];
      v16 = 136315906;
      v17 = "operator[]";
      v18 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      v19 = 789;
      v20 = 2048;
      v21 = a2;
      v22 = 2048;
      v23 = v7;
      _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
      _os_crash_msg();
      __break(1u);
    }

    v8 = *(result + 64);
    if (v8)
    {
      v11 = v8 + (a2 << 8);
      re::EventBus::unsubscribe(a3, *(v11 + 232), *(v11 + 240));
      *(v11 + 232) = a4;
      *(v11 + 240) = a5;

      return re::ecs2::Component::enqueueMarkDirty(v6);
    }
  }

  return result;
}

void RERegisterCustomSystem(int a1, int a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = a3;
  v12 = a4;
  v13 = re::ecs2::CustomSystemRegistry::instance(v12);
  v69[0] = a1;
  v69[1] = a2;
  v70 = _Block_copy(v11);
  v72 = 0;
  v73 = 0;
  v71 = _Block_copy(v12);
  v74 = 1;
  os_unfair_lock_lock(v13 + 1);
  re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::add(&v13[14], v69);
  os_unfair_lock_unlock(v13 + 1);
  if (a5 && a6)
  {
    v14 = (a5 + 4);
    do
    {
      v15 = *(v14 - 1);
      if (v15 == 1000000)
      {
        {
          re::introspect<re::ecs2::PhysicsSystem>(BOOL)::info = re::ecs2::introspect_PhysicsSystem(0, v20, v21, v22, v23, v24);
        }

        v16 = re::introspect<re::ecs2::PhysicsSystem>(BOOL)::info;
      }

      else
      {
        v17 = *v14;
        if (*v14 == 1000000)
        {
          *&v65 = 0;
          *(&v65 + 1) = 0xFFFFFFFFLL;
          v66 = v15;
          {
            re::introspect<re::ecs2::PhysicsSystem>(BOOL)::info = re::ecs2::introspect_PhysicsSystem(0, v25, v26, v27, v28, v29);
          }

          v18 = re::introspect<re::ecs2::PhysicsSystem>(BOOL)::info;
LABEL_11:
          v67 = v18[2];
          v68 = -1;
          goto LABEL_12;
        }

        if (v15 == 1000001)
        {
          {
            re::introspect<re::ecs2::NetworkSendSystem>(BOOL)::info = re::ecs2::introspect_NetworkSendSystem(0, v30, v31, v32, v33, v34);
          }

          v16 = re::introspect<re::ecs2::NetworkSendSystem>(BOOL)::info;
        }

        else
        {
          if (v17 == 1000001)
          {
            *&v65 = 0;
            *(&v65 + 1) = 0xFFFFFFFFLL;
            v66 = v15;
            {
              re::introspect<re::ecs2::NetworkSendSystem>(BOOL)::info = re::ecs2::introspect_NetworkSendSystem(0, v35, v36, v37, v38, v39);
            }

            v18 = re::introspect<re::ecs2::NetworkSendSystem>(BOOL)::info;
            goto LABEL_11;
          }

          if (v15 == 1000002)
          {
            {
              re::introspect<re::ecs2::NetworkReceiveSystem>(BOOL)::info = re::ecs2::introspect_NetworkReceiveSystem(0, v40, v41, v42, v43, v44);
            }

            v16 = re::introspect<re::ecs2::NetworkReceiveSystem>(BOOL)::info;
          }

          else
          {
            if (v17 == 1000002)
            {
              *&v65 = 0;
              *(&v65 + 1) = 0xFFFFFFFFLL;
              v66 = v15;
              {
                re::introspect<re::ecs2::NetworkReceiveSystem>(BOOL)::info = re::ecs2::introspect_NetworkReceiveSystem(0, v45, v46, v47, v48, v49);
              }

              v18 = re::introspect<re::ecs2::NetworkReceiveSystem>(BOOL)::info;
              goto LABEL_11;
            }

            if (v15 == 1000003)
            {
              {
                re::introspect<re::ecs2::AnimationUpdateSystem>(BOOL)::info = re::ecs2::introspect_AnimationUpdateSystem(0, v50, v51, v52, v53, v54);
              }

              v16 = re::introspect<re::ecs2::AnimationUpdateSystem>(BOOL)::info;
            }

            else
            {
              if (v17 == 1000003)
              {
                *&v65 = 0;
                *(&v65 + 1) = 0xFFFFFFFFLL;
                v66 = v15;
                {
                  re::introspect<re::ecs2::AnimationUpdateSystem>(BOOL)::info = re::ecs2::introspect_AnimationUpdateSystem(0, v55, v56, v57, v58, v59);
                }

                v18 = re::introspect<re::ecs2::AnimationUpdateSystem>(BOOL)::info;
                goto LABEL_11;
              }

              if (v15 != 1000004)
              {
                if (v17 == 1000004)
                {
                  *&v65 = 0;
                  *(&v65 + 1) = 0xFFFFFFFFLL;
                  v66 = v15;
                  v19 = re::introspect<re::ecs2::SkeletalPoseSystem>();
                  goto LABEL_38;
                }

                if (v15 == 1000005)
                {
                  v65 = *(re::introspect<re::ecs2::CustomDeformerSystem>() + 32);
                  v66 = -1;
                  *&v67 = 0;
                  *(&v67 + 1) = 0xFFFFFFFFLL;
                  v68 = *v14;
                }

                else if (v17 == 1000005)
                {
                  *&v65 = 0;
                  *(&v65 + 1) = 0xFFFFFFFFLL;
                  v66 = v15;
                  v19 = re::introspect<re::ecs2::CustomDeformerSystem>();
LABEL_38:
                  v67 = *(v19 + 32);
                  v68 = -1;
                }

                else
                {
                  *&v65 = 0;
                  *(&v65 + 1) = 0xFFFFFFFFLL;
                  v66 = v15;
                  *&v67 = 0;
                  *(&v67 + 1) = 0xFFFFFFFFLL;
                  v68 = v17;
                }

                re::ecs2::CustomSystemRegistry::add(v13, &v65);
                goto LABEL_13;
              }

              {
                re::introspect<re::ecs2::SkeletalPoseSystem>(BOOL)::info = re::ecs2::introspect_SkeletalPoseSystem(0, v60, v61, v62, v63, v64);
              }

              v16 = re::introspect<re::ecs2::SkeletalPoseSystem>(BOOL)::info;
            }
          }
        }
      }

      v65 = v16[2];
      v66 = -1;
      *&v67 = 0;
      *(&v67 + 1) = 0xFFFFFFFFLL;
      v68 = *v14;
LABEL_12:
      os_unfair_lock_lock(v13 + 1);
      re::DynamicArray<re::ecs2::CustomSystemRegistry::SystemDependency>::add(&v13[24], &v65);
      os_unfair_lock_unlock(v13 + 1);
LABEL_13:
      v14 += 2;
      --a6;
    }

    while (a6);
  }
}

uint64_t re::introspect<re::ecs2::SkeletalPoseSystem>()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<re::ecs2::SkeletalPoseSystem>(BOOL)::info = re::ecs2::introspect_SkeletalPoseSystem(0, v3, v4, v5, v6, v7);
      v0 = &unk_1EE187000;
    }
  }

  return v0[119];
}

uint64_t re::introspect<re::ecs2::CustomDeformerSystem>()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<re::ecs2::CustomDeformerSystem>(BOOL)::info = re::ecs2::introspect_CustomDeformerSystem(0, v3, v4, v5, v6, v7);
      v0 = &unk_1EE187000;
    }
  }

  return v0[107];
}

uint64_t REECSManagerVerifyDependency(uint64_t a1, re::DeformerFeatureFlags *a2, int a3, re::DeformerFeatureFlags *a4, int a5)
{
  v8 = a2;
  v58 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *&v57[0] = 0;
    result = _REECSManagerGetEngineSystemTypeIDs(a2, v57);
    if (!result)
    {
      return result;
    }

    v45 = **&v57[0];
    LODWORD(v40) = *(*&v57[0] + 8);
    HIDWORD(v40) = HIWORD(*(*&v57[0] + 8));
    v41 = *(*&v57[0] + 12);
  }

  else
  {
    v45 = 0;
    v41 = 0;
    v40 = 0xFFFF0000FFFFLL;
  }

  if (a5)
  {
    *&v57[0] = 0;
    result = _REECSManagerGetEngineSystemTypeIDs(a4, v57);
    if (!result)
    {
      return result;
    }

    v11 = **&v57[0];
    v42 = *(*&v57[0] + 8);
    v43 = HIWORD(*(*&v57[0] + 8));
    v44 = *(*&v57[0] + 12);
  }

  else
  {
    v11 = 0;
    v43 = 0xFFFF;
    v44 = 0;
    v42 = 0xFFFF;
  }

  v12 = a1 + 160;
  re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(v57, v12, 0);
  v13 = *&v57[0];
  v46 = *&v57[0];
  v47 = DWORD2(v57[0]);
  v14 = WORD4(v57[0]);
  v15 = HIWORD(DWORD2(v57[0]));
  v39 = v12;
  if (v12 == *&v57[0] && WORD4(v57[0]) == 0xFFFF && v15 == 0xFFFF)
  {
LABEL_51:
    v35 = 0;
    v26 = 0;
    return v35 & v26;
  }

  v18 = 0;
  while (1)
  {
    v19 = v15;
    v20 = *(v13 + 16);
    if (v20 <= v15)
    {
      v48 = 0;
      memset(v57, 0, sizeof(v57));
      v36 = MEMORY[0x1E69E9C10];
      v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v49 = 136315906;
      v50 = "operator[]";
      v51 = 1024;
      if (v37)
      {
        v38 = 3;
      }

      else
      {
        v38 = 2;
      }

      v52 = 797;
      v53 = 2048;
      v54 = v19;
      v55 = 2048;
      v56 = v20;
      _os_log_send_and_compose_impl(v38, &v48, v57, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v49, 38, v39, v40);
      _os_crash_msg();
      __break(1u);
    }

    v21 = *(*(v13 + 32) + 16 * v15) + 240 * v14;
    v22 = *(v21 + 144);
    if (v22)
    {
      break;
    }

LABEL_48:
    re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(&v46);
    v13 = v46;
    v14 = v47;
    v15 = HIWORD(v47);
    if (v46 == v39 && v47 == 0xFFFF && HIWORD(v47) == 0xFFFF)
    {
      goto LABEL_51;
    }
  }

  v23 = *(v21 + 160);
  v24 = 8 * v22;
  while (1)
  {
    v25 = *v23;
    v26 = v18 != 0;
    if (!v18)
    {
      if (a3)
      {
        v31 = (*(*v25 + 32))(*v23);
        if (v45 == *(v31 + 32))
        {
          v32 = *(v31 + 40);
          v33 = v40 == v32 && HIDWORD(v40) == WORD1(v32);
          if (v33 && ((v41 ^ HIDWORD(v32)) & 0xFFFFFF) == 0)
          {
LABEL_47:
            v18 = v25;
            goto LABEL_33;
          }
        }
      }

      else if (v25[7] == v8)
      {
        goto LABEL_47;
      }
    }

    if (a5)
    {
      break;
    }

    if (v25[7] == a4)
    {
      goto LABEL_52;
    }

LABEL_33:
    ++v23;
    v24 -= 8;
    if (!v24)
    {
      goto LABEL_48;
    }
  }

  v27 = (*(*v25 + 32))(v25);
  if (v11 != *(v27 + 32))
  {
    goto LABEL_33;
  }

  v28 = *(v27 + 40);
  v29 = v42 == v28 && v43 == WORD1(v28);
  if (!v29 || ((v44 ^ HIDWORD(v28)) & 0xFFFFFF) != 0)
  {
    goto LABEL_33;
  }

LABEL_52:
  v35 = 1;
  return v35 & v26;
}

uint64_t RECustomSystemGetSwiftSystemForScene(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  result = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(a1 + 272, &v3);
  if (result)
  {
    return *result;
  }

  return result;
}

void *REWorldRootComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

uint64_t RECreateWorldRoot(re *a1)
{
  re::make::shared::object<re::ecs2::SharedWorldRootToken>(a1, &v2);
  uuid_generate_random(out);
  result = v2;
  *(v2 + 24) = (*&out[8] + (*out << 6) + (*out >> 2) - 0x61C8864680B583E9) ^ *out;
  return result;
}

uint64_t RECreateWorldRootDefault(re *a1)
{
  re::make::shared::object<re::ecs2::SharedWorldRootToken>(a1, &v2);
  result = v2;
  *(v2 + 24) = 0;
  return result;
}

uint64_t REWorldRootComponentCopyWorldRoot(re *a1)
{
  re::make::shared::object<re::ecs2::SharedWorldRootToken>(a1, &v3);
  result = v3;
  *(v3 + 24) = *(a1 + 4);
  return result;
}

void *REAudioLibraryComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::AudioLibraryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

void REAudioLibraryComponentRegisterAsset(uint64_t a1, uint64_t a2, void *a3)
{
  re::AssetAPIHelper::assetHandleCreate(a2, v13);
  v5 = [a3 UTF8String];
  re::AssetHandle::AssetHandle(v9, v13);
  re::DynamicString::DynamicString(v8, &v10);
  re::ecs2::AudioLibraryComponent::registerAudioAsset(a1, v9, v8);
  if (*&v8[0])
  {
    if (BYTE8(v8[0]))
    {
      (*(**&v8[0] + 40))();
    }

    memset(v8, 0, sizeof(v8));
  }

  re::AssetHandle::~AssetHandle(v9);
  if (v10 && (v11 & 1) != 0)
  {
    (*(*v10 + 40))(v10, v12, v6, v7);
  }

  re::AssetHandle::~AssetHandle(v13);
}

uint64_t REAudioLibraryComponentUnregisterAsset(uint64_t a1, id a2)
{
  v4 = a2;
  v5 = [a2 UTF8String];
  re::DynamicString::DynamicString(v9, &v10);
  re::ecs2::AudioLibraryComponent::unregisterAudioAsset(a1, v9);
  if (*&v9[0])
  {
    if (BYTE8(v9[0]))
    {
      (*(**&v9[0] + 40))();
    }

    memset(v9, 0, sizeof(v9));
  }

  result = v10;
  if (v10)
  {
    if (v11)
    {
      return (*(*v10 + 40))(v10, v12, v6, v7);
    }
  }

  return result;
}

uint64_t REAudioLibraryComponentGetAssetForName(uint64_t a1, id a2)
{
  v4 = a2;
  v5 = [a2 UTF8String];
  re::ecs2::AudioLibraryComponent::getAsset(a1, v8, v9);
  if (*&v8[0])
  {
    if (BYTE8(v8[0]))
    {
      (*(**&v8[0] + 40))();
    }

    memset(v8, 0, sizeof(v8));
  }

  if (v10 != 1)
  {
    return 0;
  }

  v6 = v9[0];
  re::AssetHandle::~AssetHandle(v9);
  return v6;
}

uint64_t REAudioLibraryComponentCopyAssetNames(uint64_t a1)
{
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v24 = 0x7FFFFFFFLL;
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = *(a1 + 60) <= 3u ? 3 : *(a1 + 60);
    re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(&v21, v1, v3);
    v4 = *(a1 + 64);
    if (v4)
    {
      v5 = 0;
      for (i = 0; i < v4; ++i)
      {
        v7 = *(a1 + 48);
        if ((*(v7 + v5) & 0x80000000) != 0)
        {
          v8 = re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(&v21, *(v7 + v5 + 64) % DWORD2(v22), *(v7 + v5 + 64));
          re::DynamicString::DynamicString((v8 + 8), (*(a1 + 48) + v5 + 8));
          re::AssetHandle::AssetHandle((v8 + 40), (*(a1 + 48) + v5 + 40));
          v4 = *(a1 + 64);
        }

        v5 += 72;
      }
    }
  }

  v9 = [MEMORY[0x1E695DF70] array];
  if (v23)
  {
    v10 = 0;
    v11 = v22;
    while (1)
    {
      v12 = *v11;
      v11 += 18;
      if (v12 < 0)
      {
        break;
      }

      if (v23 == ++v10)
      {
        v10 = v23;
        break;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  if (v23 != v10)
  {
    v13 = v22;
    LODWORD(v14) = v10;
    do
    {
      v15 = v13 + 72 * v10;
      if (*(v15 + 16))
      {
        v16 = *(v15 + 24);
      }

      else
      {
        v16 = v15 + 17;
      }

      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v16];
      [v9 addObject:v17];

      if (v23 <= v14 + 1)
      {
        v18 = (v14 + 1);
      }

      else
      {
        v18 = v23;
      }

      v13 = v22;
      while (v18 - 1 != v14)
      {
        v14 = (v14 + 1);
        if ((*(v22 + 72 * v14) & 0x80000000) != 0)
        {
          v10 = v14;
          LODWORD(v18) = v14;
          goto LABEL_29;
        }
      }

      v10 = v18;
LABEL_29:
      LODWORD(v14) = v18;
    }

    while (v23 != v18);
  }

  v19 = [v9 copy];

  re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v21);
  return v19;
}

char *RENullTerminatedStringSet(_anonymous_namespace_ *a1, char *__s, uint64_t *a3)
{
  v3 = a3;
  if (!a3)
  {
  }

  v6 = strlen(__s);
  v7 = (*(*v3 + 32))(v3, v6, 0);
  *a1 = v7;

  return strcpy(v7, __s);
}

uint64_t REDynamicStringGetValue(uint64_t result)
{
  if (result)
  {
    if (*(result + 8))
    {
      return *(result + 16);
    }

    else
    {
      result += 9;
    }
  }

  return result;
}

uint64_t REDynamicStringGet(uint64_t result)
{
  if (result)
  {
    if (*(result + 8))
    {
      return *(result + 16);
    }

    else
    {
      result += 9;
    }
  }

  return result;
}

re::DynamicString *REDynamicStringSet(re::DynamicString *result, char *__s)
{
  if (result)
  {
    v2 = result;
    v3[0] = __s;
    v3[1] = strlen(__s);
    return re::DynamicString::operator=(v2, v3);
  }

  return result;
}

uint64_t REStringIDGet(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

void REStringIDSet(_anonymous_namespace_ *a1, const char *a2)
{
  if (a1)
  {
    v5 = 0;
    v6 = &str_67;
    v4 = re::StringID::operator=(a1, &v5);
    if (v5)
    {
      if (v5)
      {
      }
    }
  }
}

uint64_t REAssetHandleGet(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

void REAssetHandleSet(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    re::AssetAPIHelper::assetHandleCreate(a2, v3);
    re::AssetHandle::operator=(a1, v3);
    re::AssetHandle::~AssetHandle(v3);
  }
}

re::AssetHandle *REAssetHandleArrayClear(re::AssetHandle *result)
{
  if (result)
  {
    return re::DynamicArray<re::AssetHandle>::clear(result);
  }

  return result;
}

void REAssetHandleArrayAdd(_anonymous_namespace_ *a1, uint64_t a2)
{
  if (a1)
  {
    re::AssetAPIHelper::assetHandleCreate(a2, v3);
    re::DynamicArray<re::AssetHandle>::add(a1, v3);
    re::AssetHandle::~AssetHandle(v3);
  }
}

uint64_t REAssetHandleArrayGet(uint64_t result, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = *(result + 16);
    if (v3 <= a2)
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
      v13 = a2;
      v14 = 2048;
      v15 = v3;
      _os_log_send_and_compose_impl(v5, &v7, v16, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v8, 38, v6);
      _os_crash_msg();
      __break(1u);
    }

    return *(*(result + 32) + 24 * a2);
  }

  return result;
}

uint64_t REAssetHandleArrayCount(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

char *REEntityHandleGet(id *a1)
{
  if (!a1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(a1);
  if (!WeakRetained)
  {
    return 0;
  }

  v2 = WeakRetained - 8;

  return v2;
}

void REEntityHandleSet(id *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      re::ecs2::EntityHandle::EntityHandle(location, a2);
    }

    else
    {
      objc_initWeak(location, 0);
      location[1] = 0;
      location[2] = 0;
      re::ecs2::EntityHandle::reset(location);
    }

    re::ecs2::EntityHandle::operator=(a1, location);
    re::ecs2::EntityHandle::reset(location);
    objc_destroyWeak(location);
  }
}

uint64_t re::RENetLeaderElectionConsensus::create(re::RENetLeaderElectionConsensus *this, re::RENetLeaderElectionConsensus **a2)
{
  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 80, 8);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  v4[4] = 0u;
  RESyncCustomLeaderElectionCreate();
  RESyncCustomLeaderElectionDestroy();
  RESyncCustomLeaderElectionInit();
  RESyncCustomLeaderElectionDeinit();
  RESyncCustomLeaderElectionSetSession();
  RESyncCustomLeaderElectionProcessCapabilities();
  RESyncCustomLeaderElectionRunLoop();
  RESyncCustomLeaderElectionIsLeader();
  RESyncCustomLeaderElectionHandleMigration();
  RESyncCustomLeaderElectionAddPeer();
  RESyncCustomLeaderElectionRemovePeer();
  Custom = RESyncLeaderElectionCreateCustom();
  RESyncRelease();
  if (this)
  {
    *this = v4;
  }

  return Custom;
}

re *___ZN2re28RENetLeaderElectionConsensus6createEPPS0__block_invoke(re *result)
{
  v1 = *(result + 4);
  if (v1)
  {
    v2 = re::globalAllocators(result)[2];
    std::unique_ptr<re::RawNode>::reset[abi:nn200100]((v1 + 56), 0);
    v3.n128_f64[0] = re::Queue<re::Message>::deinit(v1);
    v4 = *(*v2 + 40);

    return v4(v2, v1, v3);
  }

  return result;
}

void ___ZN2re28RENetLeaderElectionConsensus6createEPPS0__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  *(v3 + 72) = RESyncNetSessionObserverCreate();
  v14 = MEMORY[0x1E69E9820];
  v15 = 0x40000000;
  v16 = ___ZN2re28RENetLeaderElectionConsensus5setupEy_block_invoke;
  v17 = &__block_descriptor_tmp_16_4;
  v18 = v3;
  RESyncNetSessionObserverOnReceiveData();
  RESyncNetSessionAddObserver();
  v7 = 0;
  v8 = a2;
  v9 = xmmword_1E311F640;
  v10 = 0;
  v11 = 0;
  v12 = xmmword_1E311F650;
  v13 = 0;
  v26[0] = a2;
  re::DynamicArray<re::ecs2::ComponentTypeBase const*>::DynamicArray(buf, v26, 1uLL);
  v25 = 0;
  v22 = 0;
  v23 = 0;
  *v21 = 0;
  v24 = 0;
  re::DynamicArray<char const*>::DynamicArray(v5, buf);
  re::DynamicArray<char const*>::DynamicArray(v6, v21);
  if (*v21 && v25)
  {
    (*(**v21 + 40))(*v21);
  }

  if (buf[0] && v20)
  {
    (*(*buf[0] + 40))();
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v4 = CoreRELog::log;
  if (os_log_type_enabled(CoreRELog::log, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 134217984;
    *(buf + 4) = a2;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "!! raft.nid = %llu", buf, 0xCu);
  }

  operator new();
}

double ___ZN2re28RENetLeaderElectionConsensus6createEPPS0__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  RESyncNetSessionRemoveObserver();
  RESyncRelease();
  if (*(v1 + 16))
  {
    v2 = 0;
    do
    {
      v3 = *(v1 + 40) + 384 * ((v2 + *(v1 + 24)) % *(v1 + 8));
      re::Snapshot::~Snapshot((v3 + 80));
      re::DynamicArray<unsigned long>::deinit(v3 + 40);
      re::DynamicArray<re::Entry>::deinit(v3);
      ++v2;
    }

    while (v2 < *(v1 + 16));
  }

  *(v1 + 16) = 0;
  ++*(v1 + 32);

  return re::Queue<re::Message>::deinit(v1);
}

uint64_t ___ZN2re28RENetLeaderElectionConsensus6createEPPS0__block_invoke_6(uint64_t a1)
{
  v115 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  while (*(v3 + 16))
  {
    v4 = *(v3 + 56);
    re::Message::Message(v31, *(v3 + 40) + 384 * *(v3 + 24));
    v5 = *(v3 + 40) + 384 * *(v3 + 24);
    re::Snapshot::~Snapshot((v5 + 80));
    re::DynamicArray<unsigned long>::deinit(v5 + 40);
    re::DynamicArray<re::Entry>::deinit(v5);
    v6 = *(v3 + 24);
    if ((v6 + 1) < *(v3 + 8))
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = 0;
    }

    --*(v3 + 16);
    *(v3 + 24) = v7;
    ++*(v3 + 32);
    re::Raft::step(v4, v31, v38);
    re::Snapshot::~Snapshot(&v37);
    if (v32)
    {
      if (v36)
      {
        (*(*v32 + 40))();
      }

      v36 = 0;
      v33 = 0;
      v34 = 0;
      v32 = 0;
      ++v35;
    }

    re::DynamicArray<re::Entry>::deinit(v31);
  }

  v8 = *(v3 + 48);
  if (v8 >= 3)
  {
    re::Raft::tick(*(v3 + 56));
    v8 = 0;
  }

  *(v3 + 48) = v8 + 1;
  v9 = *(v3 + 56);
  LOBYTE(v77) = 0;
  result = re::RawNode::hasReadySince(v9, &v77);
  if (!result)
  {
    return result;
  }

  if (!RESyncNetSessionLeader())
  {
    if (!*(v9 + 133))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (*(v9 + 133) != RESyncParticipantGetPeerID())
  {
LABEL_15:
    RESyncNetSessionSetLeader();
  }

LABEL_16:
  RESyncNetSessionSetCapabilitiesIsLeader();
  LOBYTE(v96[0]) = 0;
  re::Ready::Ready(&v77, v9, v9 + 1160, v9 + 147, v96);
  (*(**v9 + 80))((v74 + 2));
  if ((v74[0] & 0x10000) == 0 && v75)
  {
    if (BYTE8(v75))
    {
      (*(*v75 + 40))();
    }

    v76 = 0u;
    v75 = 0u;
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  memset(v96, 0, sizeof(v96));
  if (v84[2])
  {
    re::Snapshot::~Snapshot(v96);
LABEL_26:
    (*(**v9 + 96))(v74);
    goto LABEL_27;
  }

  v11 = re::SnapshotMetadata::operator==(v85, &v97 + 1);
  re::Snapshot::~Snapshot(v96);
  if (!v11)
  {
    goto LABEL_26;
  }

LABEL_27:
  v70[0] = v77;
  v70[1] = v78;
  v12 = v79;
  v71 = v79;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v13 = v81;
  v73 = v81;
  v81 = 0;
  ++v80;
  v72 = 1;
  if (v71)
  {
    v14 = 384 * v12;
    do
    {
      re::RENetLeaderElectionConsensus::sendMsg(v3, v13);
      v13 = (v13 + 384);
      v14 -= 384;
    }

    while (v14);
  }

  if ((v86 & 1) == 0)
  {
    goto LABEL_102;
  }

  v66[0] = v87;
  v66[1] = v88;
  v15 = v89;
  v67 = v89;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v16 = v91;
  v69 = v91;
  v91 = 0;
  ++v90;
  v68 = 1;
  if (!v67)
  {
    goto LABEL_101;
  }

  v30 = v16 + 104 * v15;
  v17 = (v16 + 80);
  v18 = 104 * v15;
  do
  {
    if (!*(v17 - 8) || *v17 != 1)
    {
      goto LABEL_97;
    }

    memset(v56, 0, sizeof(v56));
    v57 = 0;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    memset(v62, 0, 25);
    v63 = 0;
    v64 = 0;
    v62[4] = 0;
    v65 = 0;
    v19 = *(v17 - 8);
    v20 = *(v17 - 6);
    v39[0] = &unk_1F5D0CA98;
    v39[1] = v20;
    v39[2] = v20;
    v39[3] = v20 + v19;
    re::OPackReader::OPackReader(v96, v39);
    v95 = v96;
    v21 = re::ConsensusReader::read(&v95, v56);
    v22 = v21;
    if ((v21 & 1) == 0)
    {
      v1 = v94;
      v2 = v92;
      LOBYTE(v13) = v93;
    }

    if (v110)
    {
      if (v114)
      {
        (*(*v110 + 40))();
      }

      v114 = 0;
      v111 = 0;
      v112 = 0;
      v110 = 0;
      ++v113;
    }

    re::OPackReader::Buffer::~Buffer(&v109);
    re::zerocopy::BufferedReadStream::~BufferedReadStream((&v98 + 8));
    if ((v22 & 1) == 0 && v2)
    {
      if (v13)
      {
        (*(*v2 + 40))(v2, v1);
      }

      v1 = 0;
      LOBYTE(v13) = 0;
      v2 = 0;
    }

    if (LOBYTE(v62[3]) <= 1u)
    {
      if (LOBYTE(v62[3]))
      {
        if (LOBYTE(v62[3]) != 1)
        {
          goto LABEL_70;
        }

        re::Raft::removeNode(v9, v63, v50);
        if ((v50[0] & 1) != 0 || !v51)
        {
          goto LABEL_70;
        }

        if (v52)
        {
          (*(*v51 + 40))();
        }

        v23 = v50;
      }

      else
      {
        re::Raft::addVoterOrLearner(v9, v63, 0, v53);
        if ((v53[0] & 1) != 0 || !v54)
        {
          goto LABEL_70;
        }

        if (v55)
        {
          (*(*v54 + 40))();
        }

        v23 = v53;
      }

      goto LABEL_69;
    }

    if (LOBYTE(v62[3]) != 2)
    {
      if (LOBYTE(v62[3]) == 3)
      {
        re::Raft::beginMembershipChange(v9, v56, v46);
      }

      else if (LOBYTE(v62[3]) == 4)
      {
        re::Raft::finalizeMembershipChange(v9, v56, &v45);
      }

      goto LABEL_70;
    }

    re::Raft::addVoterOrLearner(v9, v63, 1, v47);
    if ((v47[0] & 1) == 0 && v48)
    {
      if (v49)
      {
        (*(*v48 + 40))();
      }

      v23 = v47;
LABEL_69:
      *(v23 + 40) = 0u;
      *(v23 + 24) = 0u;
    }

LABEL_70:
    re::ConfState::ConfState(v39, v9 + 744, v9 + 792);
    if (!v24)
    {
      goto LABEL_106;
    }

    LOBYTE(v96[0]) = 0;
    MemStorageCore::setConfState(v24 + 8, v39, v96);
    if (LOBYTE(v96[0]) == 1)
    {
      if (v98)
      {
        if (v100)
        {
          (*(*v98 + 40))();
        }

        *&v100 = 0;
        *&v99 = 0;
        v98 = 0uLL;
        ++DWORD2(v99);
      }

      if (v96[1] && *(&v97 + 1))
      {
        (*(*v96[1] + 40))();
      }
    }

    if (v40)
    {
      if (v44)
      {
        (*(*v40 + 40))();
      }

      v44 = 0;
      v41 = 0;
      v42 = 0;
      v40 = 0;
      ++v43;
    }

    if (v39[0] && v39[4])
    {
      (*(*v39[0] + 40))();
    }

    if (v61)
    {
      if (v62[2])
      {
        (*(*v61 + 40))();
      }

      v62[2] = 0;
      v62[0] = 0;
      v61 = 0uLL;
      ++LODWORD(v62[1]);
    }

    if (*(&v58 + 1))
    {
      if (*(&v60 + 1))
      {
        (*(**(&v58 + 1) + 40))();
      }

      *(&v60 + 1) = 0;
      v59 = 0uLL;
      *(&v58 + 1) = 0;
      LODWORD(v60) = v60 + 1;
    }

    if (v56[0] && v58)
    {
      (*(*v56[0] + 40))();
    }

LABEL_97:
    v17 += 104;
    v18 -= 104;
  }

  while (v18);
  v25 = *(v30 - 16);
  v26 = *v9;
  {
LABEL_106:
    __cxa_bad_cast();
  }

  v29[14] = v28;
LABEL_101:
  re::DynamicArray<re::Entry>::deinit(v66);
LABEL_102:
  re::RawNode::advance(v9, &v77);
  re::DynamicArray<re::Message>::deinit(v70);
  if (v86 == 1)
  {
    re::DynamicArray<re::Entry>::deinit(&v87);
  }

  re::Snapshot::~Snapshot(v84);
  re::DynamicArray<re::ReadState>::deinit(&v83);
  re::DynamicArray<re::Entry>::deinit(&v82);
  return re::DynamicArray<re::Message>::deinit(&v77);
}

uint64_t ___ZN2re28RENetLeaderElectionConsensus6createEPPS0__block_invoke_8(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 56) + 1064);
  if (v2 == a2)
  {
    RESyncNetSessionSetCapabilitiesIsLeader();
  }

  return v2;
}

void ___ZN2re28RENetLeaderElectionConsensus6createEPPS0__block_invoke_9(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    re::Raft::addVoterOrLearner(v2, a2, 0, v5);
    if ((v5[0] & 1) == 0 && v6)
    {
      if (BYTE8(v6))
      {
        (*(*v6 + 40))();
      }

      v7 = 0u;
      v6 = 0u;
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v4 = CoreRELog::log;
    if (os_log_type_enabled(CoreRELog::log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v9 = a2;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "REConsensus addNode: %llu", buf, 0xCu);
    }
  }
}

void ___ZN2re28RENetLeaderElectionConsensus6createEPPS0__block_invoke_13(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    re::Raft::removeNode(v2, a2, v5);
    if ((v5[0] & 1) == 0 && v6)
    {
      if (BYTE8(v6))
      {
        (*(*v6 + 40))();
      }

      v7 = 0u;
      v6 = 0u;
    }

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v4 = CoreRELog::log;
    if (os_log_type_enabled(CoreRELog::log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v9 = a2;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "REConsensus addNode: %llu", buf, 0xCu);
    }
  }
}

uint64_t ___ZN2re28RENetLeaderElectionConsensus5setupEy_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  RequiredSize = RESyncBitReaderGetRequiredSize();
  MEMORY[0x1EEE9AC00](RequiredSize);
  bzero(&v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], RequiredSize);
  RESyncBitReaderConstructNoAlloc();
  v29 = 0;
  MEMORY[0x1E6904890]();
  v28 = 0;
  RESyncBitReaderReadUInt32();
  v27 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v26 = 0;
  re::DynamicArray<BOOL>::resize(&v23, v28);
  RESyncBitReaderReadData();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  memset(v21, 0, 233);
  memset(&v21[30], 0, 64);
  v22 = 0;
  v31[0] = &unk_1F5D0CA98;
  v31[1] = v27;
  v31[2] = v27;
  v31[3] = v27 + v25;
  re::OPackReader::OPackReader(v32, v31);
  v30 = v32;
  re::ConsensusReader::read(&v30, v16);
  if (v35)
  {
    if (v39)
    {
      (*(*v35 + 40))(v35);
    }

    v39 = 0;
    v36 = 0;
    v37 = 0;
    v35 = 0;
    ++v38;
  }

  re::OPackReader::Buffer::~Buffer(&v34);
  re::zerocopy::BufferedReadStream::~BufferedReadStream(&v33);
  v25 = 0;
  v8 = ++v26;
  v9 = v23;
  if (v23)
  {
    if (v27)
    {
      v9 = (*(*v23 + 40))(v23);
      v8 = v26;
    }

    v27 = 0;
    v24 = 0;
    v25 = 0;
    v23 = 0;
    v26 = v8 + 1;
  }

  v10 = *(v5 + 16);
  v11 = v10 + 1;
  v12 = *(v5 + 8);
  if (v10 + 1 >= v12)
  {
    if (v12 < v11)
    {
      if (*v5)
      {
        v13 = 2 * v12;
        if (!v12)
        {
          v13 = 8;
        }

        if (v13 <= v11)
        {
          v14 = v11;
        }

        else
        {
          v14 = v13;
        }

        re::Queue<re::Message>::setCapacity(v5, v14);
        v10 = *(v5 + 16);
      }

      else
      {
        re::Queue<re::Message>::setCapacity(v5, v11);
        v10 = 0;
        *(v5 + 16) = 0;
        *(v5 + 24) = 0;
        *(v5 + 32) = 0;
      }
    }

    v12 = *(v5 + 8);
  }

  re::Message::Message((*(v5 + 40) + 384 * ((*(v5 + 24) + v10) % v12)), v16);
  ++*(v5 + 16);
  ++*(v5 + 32);
  RESyncBitReaderDestructNoDealloc();
  re::Snapshot::~Snapshot(&v21[1]);
  if (*(&v18 + 1))
  {
    if (v21[0])
    {
      (*(**(&v18 + 1) + 40))(*(&v18 + 1));
    }

    v21[0] = 0;
    v19 = 0uLL;
    *(&v18 + 1) = 0;
    ++v20;
  }

  re::DynamicArray<re::Entry>::deinit(v16);
  result = v23;
  if (v23)
  {
    if (v27)
    {
      return (*(*v23 + 40))(v23);
    }
  }

  return result;
}

double re::Queue<re::Message>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = a1[5];
    if (v3)
    {
      if (a1[2])
      {
        v4 = 0;
        do
        {
          v5 = a1[5] + 384 * ((v4 + a1[3]) % a1[1]);
          re::Snapshot::~Snapshot((v5 + 80));
          re::DynamicArray<unsigned long>::deinit(v5 + 40);
          re::DynamicArray<re::Entry>::deinit(v5);
          ++v4;
        }

        while (v4 != a1[2]);
        v2 = *a1;
        v3 = a1[5];
      }

      (*(*v2 + 40))(v2, v3);
    }

    a1[5] = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 8) = 0;
  }

  return result;
}

void re::RENetLeaderElectionConsensus::sendMsg(re::RENetLeaderElectionConsensus *this, const re::Message *a2)
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (RESyncNetSessionGetParticipantWithPeerID())
  {
    v9 = 0;
    v10 = 0;
    *buf = 0;
    v11 = 1;
    v15[0] = &unk_1F5D0C9F0;
    v15[1] = buf;
    v14 = v15;
    v12 = 0;
    v13 = &v14;
    v3 = re::ConsensusWriter::write(&v13, a2);
    MEMORY[0x1EEE9AC00](v3);
    RequiredSize = RESyncBitWriterGetRequiredSize();
    MEMORY[0x1EEE9AC00](RequiredSize);
    bzero(&buf[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], RequiredSize);
    v6 = RESyncBitWriterConstructNoAlloc();
    RESyncBitWriterWriteUInt64();
    RESyncBitWriterWriteUInt32();
    MEMORY[0x1E69049A0](v6, v12, v10);
    RESyncBitWriterData();
    RESyncBitWriterSize();
    RESyncNetSessionSendData();
    RESyncBitWriterDestructNoDealloc();
    if (*buf)
    {
      if (v12)
      {
        (*(**buf + 40))(*buf);
      }
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v7 = CoreRELog::log;
    if (os_log_type_enabled(CoreRELog::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "sendConsensusMessage: missing participant!", buf, 2u);
    }
  }
}

re::Raft *std::unique_ptr<re::RawNode>::reset[abi:nn200100](re::Raft **a1, re::Raft *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    re::Raft::~Raft(result);

    JUMPOUT(0x1E6906520);
  }

  return result;
}

void *re::Queue<re::Message>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    v6 = result + 2;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::Queue<re::Message>::setCapacity(v5, a2);
        *v6 = 0;
        v6[1] = 0;
        *(v6 + 4) = 0;
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x180uLL))
        {
          v2 = 384 * a2;
          result = (*(*result + 32))(result, 384 * a2, 8);
          if (result)
          {
            v8 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in Queue<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 440, 384, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in Queue<T>::setCapacity(). Element size = %zu, capacity = %zu", v12, v14);
          __break(1u);
        }

        re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Queue<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 444, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) Queue<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v13, v15);
        __break(1u);
        return result;
      }

      v8 = 0;
      if (!v3)
      {
LABEL_18:
        v5[5] = v8;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      if (v5[2])
      {
        v9 = 0;
        v10 = v5[3];
        do
        {
          v11 = v5[5] + 384 * ((v9 + v5[3]) % v5[1]);
          re::Message::Message(&v8[48 * v10], v11);
          re::Snapshot::~Snapshot((v11 + 80));
          re::DynamicArray<unsigned long>::deinit(v11 + 40);
          re::DynamicArray<re::Entry>::deinit(v11);
          if (v10 + 1 < a2)
          {
            ++v10;
          }

          else
          {
            v10 = 0;
          }

          ++v9;
        }

        while (v9 != v5[2]);
      }

      result = (*(**v5 + 40))(*v5, v5[5]);
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t REAnimationSceneAssetCreateWithTimeline(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::AssetAPIHelper::assetHandleCreate(a2, &v24);
  if (!v25 || (v5 = atomic_load((v25 + 896)), v5 != 2))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v8 = CoreRELog::log;
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    LOWORD(v21) = 0;
    v9 = "Reference animation scene asset is not loaded.";
    goto LABEL_17;
  }

  v6 = re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType();
  v7 = v25;
  if (v25)
  {
    v7 = *(v25 + 280);
  }

  if (v6 == v7)
  {
    v12 = re::globalAllocators(v6);
    v13 = (*(*v12[2] + 32))(v12[2], 112, 8);
    *(v13 + 32) = 0u;
    *(v13 + 48) = 0u;
    *(v13 + 64) = 0u;
    *v13 = 0u;
    *(v13 + 16) = 0u;
    *(v13 + 88) = 0;
    *(v13 + 80) = 0;
    *(v13 + 32) = &str_67;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    *(v13 + 40) = 0;
    *(v13 + 96) = 0;
    *(v13 + 104) = 0;
    v14 = re::AssetHandle::blockUntilLoaded<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>(&v24);
    re::AssetHandle::operator=(v13, v14);
    re::StringID::operator=((v13 + 24), (v14 + 24));
    re::DynamicArray<re::AnimationSceneEntityData>::operator=(v13 + 40, (v14 + 40));
    *(v13 + 80) = *(v14 + 80);
    re::AssetHandle::operator=(v13 + 88, (v14 + 88));
    re::AssetAPIHelper::assetHandleCreate(a3, &v21);
    v15 = v21;
    v16 = *(v13 + 8);
    v17 = *(v13 + 16);
    *(v13 + 8) = v22;
    v22 = v16;
    v18 = *v13;
    *v13 = v15;
    *(v13 + 16) = v23;
    v21 = v18;
    v23 = v17;
    re::AssetHandle::~AssetHandle(&v21);
    v19 = re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType();
    (*(*a1 + 424))(&v21, a1, v13, v19, 0, 0, 0);
    v10 = v21;
    v20 = (v21 + 8);
    re::AssetHandle::~AssetHandle(&v21);
    goto LABEL_14;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v8 = CoreRELog::log;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v21) = 0;
    v9 = "Asset reference is not a valid Animation Scene Asset.";
LABEL_17:
    _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, v9, &v21, 2u);
  }

LABEL_13:

  v10 = 0;
LABEL_14:
  re::AssetHandle::~AssetHandle(&v24);
  return v10;
}

uint64_t REAnimationSceneAssetGetRootTimeline(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v9);
  if (!v10 || (v1 = atomic_load((v10 + 896)), v1 != 2))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v4 = CoreRELog::log;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *v8 = 0;
    v5 = "Animation scene asset is not loaded.";
    goto LABEL_17;
  }

  v2 = re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType();
  v3 = v10;
  if (v10)
  {
    v3 = *(v10 + 280);
  }

  if (v2 == v3)
  {
    v6 = *re::AssetHandle::blockUntilLoaded<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>(&v9);
    goto LABEL_14;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v4 = CoreRELog::log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    v5 = "Asset reference is not a valid Animation Scene Asset.";
LABEL_17:
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, v5, v8, 2u);
  }

LABEL_13:

  v6 = 0;
LABEL_14:
  re::AssetHandle::~AssetHandle(&v9);
  return v6;
}

uint64_t REAnimationSceneAssetCreateWithTimelineAndEntityDefinition(re *a1, uint64_t a2, unint64_t a3)
{
  v3 = 0;
  if (a1 && a2 && a3)
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    v27 = 0x7FFFFFFFLL;
    v7 = re::globalAllocators(a1);
    v8 = (*(*v7[2] + 32))(v7[2], 112, 8);
    *(v8 + 32) = 0u;
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
    *v8 = 0u;
    *(v8 + 16) = 0u;
    *(v8 + 80) = 0;
    *(v8 + 88) = 0;
    *(v8 + 32) = &str_67;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    *(v8 + 40) = 0;
    *(v8 + 96) = 0;
    *(v8 + 104) = 0;
    re::StringID::operator=((v8 + 24), &v19);
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v8 + 40, v21);
    *(v8 + 80) = v22;
    v9 = *(v8 + 88);
    *(v8 + 88) = v23;
    v23 = v9;
    v10 = *(v8 + 104);
    *(v8 + 104) = v24;
    v24 = v10;
    re::AssetHandle::~AssetHandle(&v23);
    v11 = re::DynamicArray<re::AnimationSceneEntityData>::deinit(v21);
    if (v19)
    {
      if (v19)
      {
      }
    }

    re::AssetAPIHelper::assetHandleCreate(a2, &v19);
    v12 = v19;
    v13 = *(v8 + 8);
    v14 = *(v8 + 16);
    *(v8 + 8) = v20;
    v20 = v13;
    v15 = *v8;
    *v8 = v12;
    *(v8 + 16) = v21[0];
    v19 = v15;
    v21[0] = v14;
    re::AssetHandle::~AssetHandle(&v19);
    v16 = re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType();
    (*(*a1 + 424))(&v19, a1, v8, v16, 0, 0, 0);
    v3 = v19;
    v17 = (v19 + 8);
    re::AssetHandle::~AssetHandle(&v19);
  }

  return v3;
}

void anonymous namespace::REAnimationSceneEntityDefinitionImpl::makeAnimationSceneEntityData(re::StringID *a1, unint64_t a2, uint64_t a3)
{
  re::StringID::StringID(a1, (a2 + 24));
  *(a1 + 2) = 0;
  v6 = a1 + 16;
  *(v6 + 4) = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *(v6 + 6) = 0;
  v6[40] = *(a2 + 40);
  re::AssetHandle::AssetHandle((v6 + 48), (a2 + 48));
  v7 = *(a2 + 88);
  if (*(v6 + 1) < v7)
  {
    re::DynamicArray<re::AnimationSceneEntityData>::setCapacity(v6, v7);
  }

  v23[0] = a2;
  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v9 = v8 ^ (v8 >> 31);
  v10 = *(a3 + 24);
  if (v10)
  {
    v11 = v9 % v10;
    v12 = *(*(a3 + 8) + 4 * (v9 % v10));
    if (v12 != 0x7FFFFFFF)
    {
      v13 = *(a3 + 16);
      if (*(v13 + 24 * v12 + 16) == a2)
      {
        goto LABEL_11;
      }

      while (1)
      {
        LODWORD(v12) = *(v13 + 24 * v12 + 8) & 0x7FFFFFFF;
        if (v12 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v13 + 24 * v12 + 16) == a2)
        {
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    LODWORD(v11) = 0;
  }

  ++*(a3 + 40);
LABEL_11:
  v14 = *(a2 + 88);
  if (v14)
  {
    v15 = *(a2 + 104);
    v16 = &v15[v14];
    do
    {
      v17 = *v15;
      v18 = *(a3 + 24);
      if (!v18 || (v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) >> 27)), v20 = *(*(a3 + 8) + 4 * ((v19 ^ (v19 >> 31)) % v18)), v20 == 0x7FFFFFFF))
      {
LABEL_18:
        re::DynamicArray<re::AnimationSceneEntityData>::add(v6, v23);
        re::AssetHandle::~AssetHandle(&v25);
        v22 = re::DynamicArray<re::AnimationSceneEntityData>::deinit(&v24);
        if (v23[0])
        {
          if (v23[0])
          {
          }
        }
      }

      else
      {
        v21 = *(a3 + 16);
        while (*(v21 + 24 * v20 + 16) != v17)
        {
          LODWORD(v20) = *(v21 + 24 * v20 + 8) & 0x7FFFFFFF;
          if (v20 == 0x7FFFFFFF)
          {
            goto LABEL_18;
          }
        }
      }

      ++v15;
    }

    while (v15 != v16);
  }
}

uint64_t REAnimationSceneEntityDefinitionCreate(re *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 112, 8);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  ArcSharedObject::ArcSharedObject(v3, 0);
  *(v3 + 24) = 0;
  *v3 = &unk_1F5D2EAD8;
  *(v3 + 32) = &str_67;
  *(v3 + 40) = 0;
  *(v3 + 104) = 0;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0;
  v7 = 0;
  v8 = &str_67;
  v5 = re::StringID::operator=((v3 + 24), &v7);
  if (v7)
  {
    if (v7)
    {
    }
  }

  return v3;
}

uint64_t REAnimationSceneEntityDefinitionGetEntityName(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t REAnimationSceneEntityDefinitionSetHasTransformAnimations(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 40) = a2;
  }

  return result;
}

uint64_t REAnimationSceneEntityDefinitionGetHasTransformAnimations(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 40);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t REAnimationSceneEntityDefinitionGetChildCount(uint64_t result)
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

uint64_t REAnimationSceneEntityDefinitionAddChildDefinition(uint64_t a1, uint64_t a2)
{
  result = -1;
  if (a1 && a2)
  {
    v5 = (a2 + 8);
    v6 = *(a1 + 80);
    v7 = *(a1 + 88);
    v8 = v7 + 1;
    if (v7 >= v6 && v6 < v8)
    {
      if (*(a1 + 72))
      {
        v10 = 2 * v6;
        v11 = v6 == 0;
        v12 = 8;
        if (!v11)
        {
          v12 = v10;
        }

        if (v12 <= v8)
        {
          v13 = v8;
        }

        else
        {
          v13 = v12;
        }

        re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity((a1 + 72), v13);
      }

      else
      {
        re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity((a1 + 72), v8);
        ++*(a1 + 96);
      }
    }

    result = *(a1 + 88);
    *(*(a1 + 104) + 8 * result) = a2;
    *(a1 + 88) = result + 1;
    ++*(a1 + 96);
  }

  return result;
}

uint64_t REAnimationSceneEntityDefinitionGetChildAtIndex(uint64_t result, unint64_t a2)
{
  if (result)
  {
    if (*(result + 88) <= a2)
    {
      return 0;
    }

    else
    {
      return *(*(result + 104) + 8 * a2);
    }
  }

  return result;
}

BOOL REAnimationSceneEntityDefinitionSetSkeletalPoseDefinitionAsset(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      re::AssetAPIHelper::assetHandleCreate(a2, &v7);
      v3 = *(a1 + 48);
      *(a1 + 48) = v7;
      v7 = v3;
      v4 = *(a1 + 64);
      *(a1 + 64) = v8;
    }

    else
    {
      v5 = *(a1 + 48);
      v4 = *(a1 + 64);
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 48) = 0;
      v7 = v5;
    }

    v8 = v4;
    re::AssetHandle::~AssetHandle(&v7);
  }

  return a1 != 0;
}

uint64_t REAnimationSceneEntityDefinitionGetSkeletalPoseDefinitionAsset(uint64_t result)
{
  if (result)
  {
    if (*(result + 56))
    {
      return *(result + 48);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void re::HashSetBase<anonymous namespace::REAnimationSceneEntityDefinitionImpl const*,anonymous namespace::REAnimationSceneEntityDefinitionImpl const*,re::internal::ValueAsKey<anonymous namespace::REAnimationSceneEntityDefinitionImpl const*>,re::Hash<anonymous namespace::REAnimationSceneEntityDefinitionImpl const*>,re::EqualTo<anonymous namespace::REAnimationSceneEntityDefinitionImpl const*>,true,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, void *a4)
{
  v7 = *(a1 + 36);
  if (v7 == 0x7FFFFFFF)
  {
    v7 = *(a1 + 32);
    v8 = v7;
    if (v7 == *(a1 + 24))
    {
      v9 = *(a1 + 28);
      v10 = 2 * v9;
      v11 = *a1;
      if (*a1)
      {
        if (v10)
        {
          v12 = v7 == v10;
        }

        else
        {
          v12 = 1;
        }

        if (!v12 && (v9 & 0x80000000) == 0)
        {
          memset(v23, 0, 36);
          *&v23[36] = 0x7FFFFFFFLL;
          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(v23, v11, v10);
          v13 = *v23;
          *v23 = *a1;
          *a1 = v13;
          v14 = *&v23[16];
          v15 = *(a1 + 16);
          *&v23[16] = v15;
          *(a1 + 16) = v14;
          v17 = *&v23[24];
          *&v23[24] = *(a1 + 24);
          v16 = *&v23[32];
          *(a1 + 24) = v17;
          v18 = v16;
          if (v16)
          {
            v19 = (v15 + 16);
            do
            {
              if ((*(v19 - 1) & 0x80000000) != 0)
              {
              }

              v19 += 3;
              --v18;
            }

            while (v18);
          }
        }
      }

      else
      {
        if (v10)
        {
          v22 = v10;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v8 = *(a1 + 32);
    }

    *(a1 + 32) = v8 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 24 * v7 + 8);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 24 * v7 + 8);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  *(v20 + 24 * v7 + 8) = v21 | 0x80000000;
  *(*(a1 + 16) + 24 * v7 + 8) = *(*(a1 + 16) + 24 * v7 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 24 * v7) = a3;
  *(*(a1 + 16) + 24 * v7 + 16) = *a4;
  *(*(a1 + 8) + 4 * a2) = v7;
  ++*(a1 + 28);
}

uint64_t *re::HashSetBase<anonymous namespace::REAnimationSceneEntityDefinitionImpl const*,anonymous namespace::REAnimationSceneEntityDefinitionImpl const*,re::internal::ValueAsKey<anonymous namespace::REAnimationSceneEntityDefinitionImpl const*>,re::Hash<anonymous namespace::REAnimationSceneEntityDefinitionImpl const*>,re::EqualTo<anonymous namespace::REAnimationSceneEntityDefinitionImpl const*>,true,false>::~HashSetBase(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 8;
      do
      {
        v5 = a1[2];
        v6 = *(v5 + v4);
        if (v6 < 0)
        {
          *(v5 + v4) = v6 & 0x7FFFFFFF;
        }

        v4 += 24;
        --v3;
      }

      while (v3);
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return a1;
}

void anonymous namespace::REAnimationSceneEntityDefinitionImpl::~REAnimationSceneEntityDefinitionImpl(_anonymous_namespace_::REAnimationSceneEntityDefinitionImpl *this)
{
  *this = &unk_1F5D2EAD8;
  v3 = (this + 72);
  v2 = *(this + 9);
  if (v2)
  {
    v4 = *(this + 13);
    if (v4)
    {
      v5 = *(this + 11);
      if (v5)
      {
        v6 = 8 * v5;
        do
        {
          if (*v4)
          {

            *v4 = 0;
          }

          v4 += 8;
          v6 -= 8;
        }

        while (v6);
        v2 = *(this + 9);
        v4 = *(this + 13);
      }

      (*(*v2 + 40))(v2, v4);
    }

    *(this + 13) = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = 0;
    ++*(this + 24);
  }

  re::AssetHandle::~AssetHandle((this + 48));
  re::StringID::destroyString((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2EAD8;
  v3 = (this + 72);
  v2 = *(this + 9);
  if (v2)
  {
    v4 = *(this + 13);
    if (v4)
    {
      v5 = *(this + 11);
      if (v5)
      {
        v6 = 8 * v5;
        do
        {
          if (*v4)
          {

            *v4 = 0;
          }

          v4 += 8;
          v6 -= 8;
        }

        while (v6);
        v2 = *(this + 9);
        v4 = *(this + 13);
      }

      (*(*v2 + 40))(v2, v4);
    }

    *(this + 13) = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = 0;
    ++*(this + 24);
  }

  re::AssetHandle::~AssetHandle((this + 48));
  re::StringID::destroyString((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *REStatic3DTextComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::Static3DTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

uint64_t REStatic3DTextComponentSetText(float32x4_t *a1, const char *a2)
{
  if (!re::DynamicString::operator==(&a1[8], &v6))
  {
    re::DynamicString::operator=(&a1[8], &v6);
    v4.i64[0] = 0x7F0000007FLL;
    v4.i64[1] = 0x7F0000007FLL;
    a1[3] = vnegq_f32(v4);
    a1[4] = v4;
    a1[2].i8[12] = 1;
  }

  if (v6 && (v7 & 1) != 0)
  {
    (*(*v6 + 40))();
  }

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REStatic3DTextComponentSetFont(float32x4_t *a1, const char *a2)
{
  if (!re::DynamicString::operator==(&a1[6], &v6))
  {
    re::DynamicString::operator=(&a1[6], &v6);
    v4.i64[0] = 0x7F0000007FLL;
    v4.i64[1] = 0x7F0000007FLL;
    a1[3] = vnegq_f32(v4);
    a1[4] = v4;
    a1[2].i8[12] = 1;
  }

  if (v6 && (v7 & 1) != 0)
  {
    (*(*v6 + 40))();
  }

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REStatic3DTextComponentSetFontSize(uint64_t this, float a2)
{
  if (*(this + 32) != a2)
  {
    *(this + 32) = a2;
    v3.i64[0] = 0x7F0000007FLL;
    v3.i64[1] = 0x7F0000007FLL;
    *(this + 48) = vnegq_f32(v3);
    *(this + 64) = v3;
    *(this + 44) = 1;
  }

  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REStatic3DTextComponentSetTextFrameOrigin(uint64_t this, float32x2_t a2)
{
  v2 = vceq_f32(*(this + 80), a2);
  if ((vpmin_u32(v2, v2).u32[0] & 0x80000000) == 0)
  {
    *(this + 80) = a2;
    v3.i64[0] = 0x7F0000007FLL;
    v3.i64[1] = 0x7F0000007FLL;
    *(this + 48) = vnegq_f32(v3);
    *(this + 64) = v3;
    *(this + 44) = 1;
  }

  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REStatic3DTextComponentSetTextFrameSize(uint64_t this, float32x2_t a2)
{
  v2 = vceq_f32(*(this + 88), a2);
  if ((vpmin_u32(v2, v2).u32[0] & 0x80000000) == 0)
  {
    *(this + 88) = a2;
    v3.i64[0] = 0x7F0000007FLL;
    v3.i64[1] = 0x7F0000007FLL;
    *(this + 48) = vnegq_f32(v3);
    *(this + 64) = v3;
    *(this + 44) = 1;
  }

  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REStatic3DTextComponentSetTextAlignment(uint64_t this, int a2)
{
  if (*(this + 37) != a2)
  {
    *(this + 37) = a2;
    v2.i64[0] = 0x7F0000007FLL;
    v2.i64[1] = 0x7F0000007FLL;
    *(this + 48) = vnegq_f32(v2);
    *(this + 64) = v2;
    *(this + 44) = 1;
  }

  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REStatic3DTextComponentSetLineBreakMode(uint64_t this, int a2)
{
  if (*(this + 38) != a2)
  {
    *(this + 38) = a2;
    v2.i64[0] = 0x7F0000007FLL;
    v2.i64[1] = 0x7F0000007FLL;
    *(this + 48) = vnegq_f32(v2);
    *(this + 64) = v2;
    *(this + 44) = 1;
  }

  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REStatic3DTextComponentSetVerticalTextAlignment(uint64_t this, int a2)
{
  if (*(this + 39) != a2)
  {
    *(this + 39) = a2;
    v2.i64[0] = 0x7F0000007FLL;
    v2.i64[1] = 0x7F0000007FLL;
    *(this + 48) = vnegq_f32(v2);
    *(this + 64) = v2;
    *(this + 44) = 1;
  }

  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REStatic3DTextComponentSetSegmentDensity(uint64_t this, int a2)
{
  if (*(this + 36) != a2)
  {
    *(this + 36) = a2;
    v2.i64[0] = 0x7F0000007FLL;
    v2.i64[1] = 0x7F0000007FLL;
    *(this + 48) = vnegq_f32(v2);
    *(this + 64) = v2;
    *(this + 44) = 1;
  }

  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REStatic3DTextComponentSetExtrusionDepth(uint64_t this, float a2)
{
  if (*(this + 28) != a2)
  {
    *(this + 28) = a2;
    v3.i64[0] = 0x7F0000007FLL;
    v3.i64[1] = 0x7F0000007FLL;
    *(this + 48) = vnegq_f32(v3);
    *(this + 64) = v3;
    *(this + 44) = 1;
  }

  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REStatic3DTextComponentGetText(uint64_t a1)
{
  if (*(a1 + 136))
  {
    return *(a1 + 144);
  }

  else
  {
    return a1 + 137;
  }
}

uint64_t REStatic3DTextComponentGetFont(uint64_t a1)
{
  if (*(a1 + 104))
  {
    return *(a1 + 112);
  }

  else
  {
    return a1 + 105;
  }
}

BOOL REStatic3DTextComponentGetIsLoaded(uint64_t a1)
{
  if (*(a1 + 44))
  {
    return 0;
  }

  v1 = *(*(a1 + 16) + 192);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 40);
  if (!v2)
  {
    return 0;
  }

  v3 = atomic_load((v2 + 896));
  return v3 == 2;
}

uint64_t REStatic3DTextComponentSetGenerateRayTracingMetaData(uint64_t this, int a2)
{
  if (*(this + 40) != a2)
  {
    *(this + 40) = a2;
    v2.i64[0] = 0x7F0000007FLL;
    v2.i64[1] = 0x7F0000007FLL;
    *(this + 48) = vnegq_f32(v2);
    *(this + 64) = v2;
    *(this + 44) = 1;
  }

  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REStatic3DTextComponentSetGenerateInstancedGlyphs(uint64_t this, int a2)
{
  if (*(this + 41) != a2)
  {
    *(this + 41) = a2;
    *(this + 44) = 1;
  }

  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REStatic3DTextComponentSetGenerateSideStrips(uint64_t this, int a2)
{
  if (*(this + 42) != a2)
  {
    *(this + 42) = a2;
    *(this + 44) = 1;
  }

  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REStatic3DTextComponentSetGenerateBackFace(uint64_t this, int a2)
{
  if (*(this + 43) != a2)
  {
    *(this + 43) = a2;
    *(this + 44) = 1;
  }

  return re::ecs2::Component::enqueueMarkDirty(this);
}

double REStatic3DTextDefaultOptions@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x3E8000003F800000;
  *(a1 + 8) = 5;
  *(a1 + 38) = 1;
  *&result = 16778240;
  *(a1 + 32) = 16778240;
  *(a1 + 36) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

void REShadowManagerSetEntityAsMeshShadowReceiver(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 192);
  if (v2)
  {
    (*(*a1 + 72))(v5);
    if (*(v2 + 72))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::AssetHandle::operator=(*(v2 + 88) + v3, v5);
        ++v4;
        v3 += 24;
      }

      while (v4 < *(v2 + 72));
    }

    re::ecs2::Component::enqueueMarkDirty(v2);
    re::AssetHandle::~AssetHandle(v5);
  }
}

uint64_t REShadowManagerSetShadowResolution(uint64_t a1, int a2)
{
  result = (*(*a1 + 24))(a1);
  *(result + 4) = a2;
  return result;
}

uint64_t REShadowManagerSetShadowDecayRateFromReceiver(uint64_t a1, float a2)
{
  result = (*(*a1 + 24))(a1);
  *(result + 52) = a2;
  *(result + 144) = 1;
  return result;
}

uint64_t REShadowManagerSetShadowDecayRateWithinBounds(uint64_t a1, float a2)
{
  result = (*(*a1 + 24))(a1);
  *(result + 48) = a2;
  *(result + 144) = 1;
  return result;
}

uint64_t REShadowManagerSetShadowDecayRateBelowReceiver(uint64_t a1, float a2)
{
  result = (*(*a1 + 24))(a1);
  *(result + 56) = a2;
  *(result + 144) = 1;
  return result;
}

uint64_t REShadowManagerSetShadowIntensityScale(uint64_t a1, float a2)
{
  result = (*(*a1 + 24))(a1);
  *(result + 60) = a2;
  *(result + 144) = 1;
  return result;
}

uint64_t REShadowManagerSetShadowOpacityCurveFactor(uint64_t a1, float a2)
{
  result = (*(*a1 + 24))(a1);
  *(result + 64) = a2;
  *(result + 144) = 1;
  return result;
}

uint64_t REShadowManagerSetShadowBoundingRatio(uint64_t a1, float a2)
{
  result = (*(*a1 + 24))(a1);
  *(result + 24) = a2;
  return result;
}

uint64_t REShadowManagerSetShadowNormalThreshold(uint64_t a1, float a2)
{
  result = (*(*a1 + 24))(a1);
  *(result + 100) = a2;
  *(result + 144) = 1;
  return result;
}

uint64_t REShadowManagerSetNearFadeStart(uint64_t a1, float a2)
{
  result = (*(*a1 + 24))(a1);
  *(result + 72) = a2;
  *(result + 144) = 1;
  return result;
}

uint64_t REShadowManagerSetNearFadeEnd(uint64_t a1, float a2)
{
  result = (*(*a1 + 24))(a1);
  *(result + 76) = a2;
  *(result + 144) = 1;
  return result;
}

uint64_t REShadowManagerSetFalloffBias(uint64_t a1, float a2)
{
  result = (*(*a1 + 24))(a1);
  *(result + 84) = a2;
  *(result + 144) = 1;
  return result;
}

float32x4_t REShadowManagerSetLightDirection(uint64_t a1, float32x4_t a2)
{
  v2 = (*(*a1 + 24))(a1);
  v3 = vmulq_f32(a2, a2);
  *&v4 = v3.f32[2] + vaddv_f32(*v3.f32);
  *v3.f32 = vrsqrte_f32(v4);
  *v3.f32 = vmul_f32(*v3.f32, vrsqrts_f32(v4, vmul_f32(*v3.f32, *v3.f32)));
  result = vmulq_n_f32(a2, vmul_f32(*v3.f32, vrsqrts_f32(v4, vmul_f32(*v3.f32, *v3.f32))).f32[0]);
  v2[8] = result;
  v2[9].i8[0] = 1;
  return result;
}

uint64_t REShadowManagerSetDebugClearShadowTextureArray(uint64_t a1, char a2)
{
  result = (*(*a1 + 24))(a1);
  *(result + 41) = a2;
  return result;
}

uint64_t REShadowManagerSetShadowIsFadedAgainstReceivers(uint64_t a1, char a2)
{
  result = (*(*a1 + 24))(a1);
  *(result + 42) = a2;
  return result;
}

uint64_t REShadowManagerGetShadowIsFadedAgainstReceivers(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  (*(*a1 + 16))(v2);
  return v3;
}

float *REShadowManagerSetBlurSizeScale(uint64_t a1, float a2)
{
  result = (*(*a1 + 24))(a1);
  *result = a2;
  return result;
}

uint64_t REShadowManagerSetMaxMipDistance(uint64_t a1, float a2)
{
  result = (*(*a1 + 24))(a1);
  *(result + 92) = a2;
  return result;
}

uint64_t REShadowManagerSetNormalThresholdForFlatShadow(uint64_t a1, float a2)
{
  result = (*(*a1 + 24))(a1);
  *(result + 104) = a2;
  return result;
}

void REShadowManagerSetShadowClusterRootUpdateHandler(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __REShadowManagerSetShadowClusterRootUpdateHandler_block_invoke;
  v6[3] = &unk_1E8723138;
  v7 = v3;
  v4 = *(*a1 + 88);
  v5 = v3;
  v4(a1, v6);
}

void REShadowManagerSetShadowClusterRootUpdateHandlerWithDirection(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __REShadowManagerSetShadowClusterRootUpdateHandlerWithDirection_block_invoke;
  v6[3] = &unk_1E8723138;
  v7 = v3;
  v4 = *(*a1 + 88);
  v5 = v3;
  v4(a1, v6);
}

uint64_t __REShadowManagerSetShadowClusterRootUpdateHandlerWithDirection_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v5.n128_u64[0] = a4;
  v5.n128_u64[1] = a5;
  return (*(*(a1 + 32) + 16))(v5);
}

float REShadowCalculateShadowProxyThicknessInLocalCoordinate(float32x2_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v7 = a1;
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  return re::MeshShadowCasterParams::PlaneProxyParams::calcShadowProxyThicknessInLocalCoord(&v7, v6);
}

void *REDirectMaterialParametersArrayComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::DirectMaterialParametersArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

uint64_t REDirectParameterResourcesCreate(re *a1)
{
  re::make::shared::object<re::ecs2::DirectParameterResources>(a1, &v4);
  v1 = v4;
  if (v4)
  {
    v2 = (v4 + 8);
    if (v4)
    {
    }
  }

  return v1 + 8;
}

uint64_t REDirectParameterResourcesCopy(char *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  if (a1)
  {
    a1 = a1;
  }

  re::make::shared::object<re::ecs2::DirectParameterResources>(a1, &v6);
  re::DynamicArray<re::ecs2::DirectParameterTextureEntry>::operator=((v6 + 24), (v2 + 24));
  re::DynamicArray<re::ecs2::DirectParameterBufferEntry>::operator=(v6 + 64, v2 + 8);
  v3 = v6;
  if (v6)
  {
    v4 = (v6 + 8);
    if (v6)
    {
    }
  }

  if (v1)
  {
  }

  return v3 + 8;
}

void REDirectParameterResourcesSetTextureAssetAtOffset(char *a1, uint64_t a2, uint64_t a3)
{
  v52 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = a1 - 8;
  }

  else
  {
    v6 = 0;
  }

  if (a1)
  {
    v7 = a1;
  }

  v8 = *(v6 + 5);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    while (*(*(v6 + 7) + 24 + v9) != a2)
    {
      ++v10;
      v9 += 32;
      if (v8 == v10)
      {
        goto LABEL_10;
      }
    }

    re::AssetAPIHelper::assetHandleCreate(a3, &v36);
    v19 = *(v6 + 5);
    if (v37)
    {
      if (v19 <= v10)
      {
        v38 = 0;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v47 = 0u;
        v30 = MEMORY[0x1E69E9C10];
        v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v39 = 136315906;
        v40 = "operator[]";
        v41 = 1024;
        if (v31)
        {
          v32 = 3;
        }

        else
        {
          v32 = 2;
        }

        v42 = 789;
        v43 = 2048;
        v44 = v10;
        v45 = 2048;
        v46 = v19;
        _os_log_send_and_compose_impl(v32, &v38, &v47, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v39, 38, v36, v37);
        _os_crash_msg();
        __break(1u);
        goto LABEL_38;
      }

      re::AssetHandle::operator=(*(v6 + 7) + v9, &v36);
    }

    else
    {
      if (v19 <= v10)
      {
LABEL_38:
        v38 = 0;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v47 = 0u;
        v33 = MEMORY[0x1E69E9C10];
        v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v39 = 136315906;
        v40 = "removeAt";
        v41 = 1024;
        if (v34)
        {
          v35 = 3;
        }

        else
        {
          v35 = 2;
        }

        v42 = 931;
        v43 = 2048;
        v44 = v10;
        v45 = 2048;
        v46 = v19;
        _os_log_send_and_compose_impl(v35, &v38, &v47, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v39, 38, v36, v37);
        _os_crash_msg();
        __break(1u);
      }

      if (v19 - 1 > v10)
      {
        v20 = *(v6 + 7);
        v21 = v20 + 32 * v19;
        v22 = (v20 + v9);
        v23 = *(v21 - 24);
        v24 = *v22;
        *v22 = 0;
        *(v22 + 1) = v23;
        *v22 = *(v21 - 32);
        *(v21 - 32) = v24;
        v25 = *(v22 + 2);
        *(v22 + 2) = *(v21 - 16);
        *(v21 - 16) = v25;
        *(v22 + 3) = *(v21 - 8);
      }

      re::AssetHandle::~AssetHandle((*(v6 + 7) + 32 * v19 - 32));
      --*(v6 + 5);
      ++*(v6 + 12);
    }

    v26 = &v36;
  }

  else
  {
LABEL_10:
    re::AssetAPIHelper::assetHandleCreate(a3, &v47);
    *(&v48 + 1) = a2;
    v12 = *(v6 + 4);
    v13 = *(v6 + 5);
    if (v13 >= v12)
    {
      v14 = v13 + 1;
      if (v12 < v13 + 1)
      {
        if (*(v6 + 3))
        {
          v15 = 2 * v12;
          v16 = v12 == 0;
          v17 = 8;
          if (!v16)
          {
            v17 = v15;
          }

          if (v17 <= v14)
          {
            v18 = v14;
          }

          else
          {
            v18 = v17;
          }

          re::DynamicArray<re::ecs2::DirectParameterTextureEntry>::setCapacity(v6 + 3, v18);
        }

        else
        {
          re::DynamicArray<re::ecs2::DirectParameterTextureEntry>::setCapacity(v6 + 3, v14);
          ++*(v6 + 12);
        }
      }

      v13 = *(v6 + 5);
    }

    v27 = (*(v6 + 7) + 32 * v13);
    *v27 = 0;
    v27[1] = 0;
    v27[2] = 0;
    v27[1] = *(&v47 + 1);
    *(&v47 + 1) = 0;
    v28 = *v27;
    *v27 = 0;
    *v27 = v47;
    *&v47 = v28;
    v29 = v27[2];
    v27[2] = v48;
    *&v48 = v29;
    v27[3] = *(&v48 + 1);
    ++*(v6 + 5);
    ++*(v6 + 12);
    v26 = &v47;
  }

  re::AssetHandle::~AssetHandle(v26);
  if (a1)
  {
  }
}

uint64_t REDirectParameterResourcesGetTextureAssetAtOffset(char *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1 - 8;
  }

  else
  {
    v4 = 0;
  }

  if (a1)
  {
    v5 = a1;
  }

  v6 = *(v4 + 5);
  if (!v6)
  {
LABEL_10:
    v8 = 0;
    if (!a1)
    {
      return v8;
    }

LABEL_11:

    return v8;
  }

  v7 = *(v4 + 7);
  while (v7[3] != a2)
  {
    v7 += 4;
    if (!--v6)
    {
      goto LABEL_10;
    }
  }

  v8 = *v7;
  if (a1)
  {
    goto LABEL_11;
  }

  return v8;
}

void REDirectParameterResourcesSetBufferAtOffset(char *a1, _anonymous_namespace_ *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v28 = a3;
  if (a1)
  {
    v6 = a1 - 8;
  }

  else
  {
    v6 = 0;
  }

  if (a1)
  {
    v7 = a1;
  }

  v8 = *(v6 + 10);
  if (!v8)
  {
LABEL_10:
    v12 = v28;
    v13 = v12;
    v15 = *(v6 + 9);
    v14 = *(v6 + 10);
    if (v14 >= v15)
    {
      v16 = v14 + 1;
      if (v15 < v14 + 1)
      {
        if (*(v6 + 8))
        {
          v17 = 2 * v15;
          if (!v15)
          {
            v17 = 8;
          }

          if (v17 <= v16)
          {
            v18 = v16;
          }

          else
          {
            v18 = v17;
          }

          re::DynamicArray<re::ecs2::DirectParameterBufferEntry>::setCapacity(v6 + 8, v18);
        }

        else
        {
          re::DynamicArray<re::ecs2::DirectParameterBufferEntry>::setCapacity(v6 + 8, v16);
          ++*(v6 + 22);
        }
      }

      v14 = *(v6 + 10);
    }

    v23 = (*(v6 + 12) + 16 * v14);
    *v23 = v13;
    v23[1] = a2;
    v22 = v14 + 1;
    goto LABEL_29;
  }

  v9 = 0;
  v10 = *(v6 + 12);
  v11 = v10;
  while (*(v11 + 8) != a2)
  {
    ++v9;
    v11 += 16;
    if (v8 == v9)
    {
      goto LABEL_10;
    }
  }

  if (!v28)
  {
    if (v8 <= v9)
    {
      v29 = 0;
      memset(v38, 0, sizeof(v38));
      v24 = MEMORY[0x1E69E9C10];
      v25 = v8;
      v26 = v9;
      v30 = 136315906;
      v31 = "removeAt";
      v32 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v27 = 3;
      }

      else
      {
        v27 = 2;
      }

      v33 = 931;
      v34 = 2048;
      v35 = v26;
      v36 = 2048;
      v37 = v25;
      _os_log_send_and_compose_impl(v27, &v29, v38, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, 0);
      _os_crash_msg();
      __break(1u);
    }

    if (v8 - 1 > v9)
    {
      v19 = v10 + 16 * v8;
      v20 = *(v19 - 16);
      *(v19 - 16) = 0;
      v21 = *v11;
      *v11 = v20;

      *(v11 + 8) = *(v19 - 8);
      v8 = *(v6 + 10);
      v10 = *(v6 + 12);
    }

    v22 = *(v6 + 10) - 1;
LABEL_29:
    *(v6 + 10) = v22;
    ++*(v6 + 22);
    if (!a1)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  objc_storeStrong(v11, a3);
  if (a1)
  {
LABEL_30:
  }

LABEL_31:
}

id REDirectParameterResourcesGetBufferAtOffset(char *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1 - 8;
  }

  else
  {
    v4 = 0;
  }

  if (a1)
  {
    v5 = a1;
  }

  v6 = *(v4 + 10);
  if (!v6)
  {
LABEL_10:
    v8 = 0;
    if (!a1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v7 = (*(v4 + 12) + 8);
  while (*v7 != a2)
  {
    v7 += 2;
    if (!--v6)
    {
      goto LABEL_10;
    }
  }

  v8 = *(v7 - 1);
  if (a1)
  {
LABEL_11:
  }

LABEL_12:

  return v8;
}

void REDirectParameterResourcesSetColorAtOffset(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v32 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = a1 - 8;
  }

  else
  {
    v6 = 0;
  }

  if (a1)
  {
    a1 = a1;
  }

  v7 = *(v6 + 15);
  if (!v7)
  {
LABEL_10:
    v10 = *(v6 + 14);
    if (v7 >= v10)
    {
      v11 = v7 + 1;
      if (v10 < v11)
      {
        if (*(v6 + 13))
        {
          v12 = 2 * v10;
          v13 = v10 == 0;
          v14 = 8;
          if (!v13)
          {
            v14 = v12;
          }

          if (v14 <= v11)
          {
            v15 = v11;
          }

          else
          {
            v15 = v14;
          }

          re::DynamicArray<re::RigNodeConstraint>::setCapacity(v6 + 13, v15);
        }

        else
        {
          re::DynamicArray<re::RigNodeConstraint>::setCapacity(v6 + 13, v11);
          ++*(v6 + 32);
        }
      }

      v7 = *(v6 + 15);
    }

    v17 = (*(v6 + 17) + 16 * v7);
    *v17 = a3;
    v17[1] = a2;
    ++*(v6 + 15);
    goto LABEL_29;
  }

  v8 = 0;
  v9 = *(v6 + 17);
  while (*(v9 + 8) != a2)
  {
    ++v8;
    v9 += 16;
    if (v7 == v8)
    {
      goto LABEL_10;
    }
  }

  if (!a3)
  {
    if (v7 <= v8)
    {
      v22 = 0;
      memset(v31, 0, sizeof(v31));
      v18 = MEMORY[0x1E69E9C10];
      v19 = v8;
      v23 = 136315906;
      v24 = "removeAt";
      v25 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      v26 = 931;
      v27 = 2048;
      v28 = v19;
      v29 = 2048;
      v30 = v7;
      _os_log_send_and_compose_impl(v20, &v22, v31, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
      _os_crash_msg();
      __break(1u);
    }

    v16 = v7 - 1;
    if (v7 - 1 > v8)
    {
      *v9 = *(*(v6 + 17) + 16 * v7 - 16);
      v16 = *(v6 + 15) - 1;
    }

    *(v6 + 15) = v16;
LABEL_29:
    ++*(v6 + 32);
    if (!v5)
    {
      return;
    }

    goto LABEL_30;
  }

  *v9 = a3;
  if (!v5)
  {
    return;
  }

LABEL_30:
}

uint64_t REDirectParameterResourcesGetColorAtOffset(char *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1 - 8;
  }

  else
  {
    v4 = 0;
  }

  if (a1)
  {
    v5 = a1;
  }

  v6 = *(v4 + 15);
  if (!v6)
  {
LABEL_10:
    v8 = 0;
    if (!a1)
    {
      return v8;
    }

LABEL_11:

    return v8;
  }

  v7 = (*(v4 + 17) + 8);
  while (*v7 != a2)
  {
    v7 += 2;
    if (!--v6)
    {
      goto LABEL_10;
    }
  }

  v8 = *(v7 - 1);
  if (a1)
  {
    goto LABEL_11;
  }

  return v8;
}

uint64_t REDirectMaterialParametersArrayComponentGetResources(void *a1, uint64_t a2, unint64_t a3)
{
  re::ecs2::DirectMaterialParametersArrayComponent::getParameterResources(a1, a2, a3, &v5);
  if (!v5)
  {
    return 0;
  }

  v3 = v5 + 8;

  return v3;
}

void REDirectMaterialParametersArrayComponentSetResources(uint64_t a1, char a2, unint64_t a3, char *a4)
{
  if (a4)
  {
    v8 = a4 - 8;
    v9 = a4;
    v10 = a4;
  }

  else
  {
    v8 = 0;
  }

  v11 = v8;
  re::ecs2::DirectMaterialParametersArrayComponent::setParameterResources(a1, a2, a3, &v11);
  if (v11)
  {

    v11 = 0;
  }

  if (a4)
  {
  }
}

id REDirectMaterialParametersArrayComponentGetBuffer(re::ecs2::DirectMaterialParametersArrayComponent *a1, char a2, unint64_t a3)
{
  re::ecs2::DirectMaterialParametersArrayComponent::getParameterBuffer(a1, a2, a3, &v5);
  v3 = v5;
  v5 = 0;

  return v3;
}

void REDirectMaterialParametersArrayComponentEnsureBufferSize(re::ecs2::DirectMaterialParametersArrayComponent *a1, re::StringID *a2, char a3, unint64_t a4, void *a5)
{
  v9 = re::ServiceLocator::serviceOrNull<re::DirectResourceAssetTracker>(a2);

  re::ecs2::DirectMaterialParametersArrayComponent::ensureParameterBufferSize(a1, v9, a3, a4, a5);
}

void *REImageBasedReflectionRootComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

re::MaterialParameterBlock *RERenderManagerMaterialParameterBlockCreateWithAsset(uint64_t a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, v8);
  if (!v8[1])
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "RERenderManagerMaterialParameterBlockCreateWithAsset was called with a NULL material handle. This will crash in the future.", buf, 2u);
    }
  }

  *buf = a1;
  re::make::shared::object<re::MaterialParameterBlock,re::RenderManager *&>(buf, &v6);
  v4 = v6;
  re::AssetHandle::~AssetHandle(v8);
  return v4;
}

re::MaterialParameterBlock *REMaterialParameterBlockCreate(uint64_t a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, v8);
  if (!v8[1])
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "REMaterialParameterBlockCreate was called with a NULL material handle. This will crash in the future.", buf, 2u);
    }
  }

  *buf = a1;
  re::make::shared::object<re::MaterialParameterBlock,re::RenderManager *&>(buf, &v6);
  v4 = v6;
  re::AssetHandle::~AssetHandle(v8);
  return v4;
}

void *REMaterialParameterBlockCopyParams(uint64_t a1, re::Allocator *a2)
{
  v3 = *(re::RenderFrameBox::get((*(a1 + 112) + 328), 0xFFFFFFFFFFFFFFFuLL) + 392);

  return re::MaterialParameterBlock::copyCurrentStateAsMaterialParameterTable(a2, v3);
}

re::MaterialParameterBlock *REMaterialParameterBlockCreateCopy(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 1008, 8);

  return re::MaterialParameterBlock::MaterialParameterBlock(v3, a1);
}

void REMaterialParameterBlockClearParameter(re::MaterialParameterBlock *a1, const char *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    re::MaterialParameterBlock::removeParameter(a1, a2);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v2 = CoreRELog::log;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315138;
      v4 = "REMaterialParameterBlockClearParameter";
      _os_log_error_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", &v3, 0xCu);
    }
  }
}

void REMaterialParameterBlockSetBool(re::MaterialParameterBlock *a1, const char *a2, char a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    re::MaterialParameterBlock::setBool(v4, a1, a2, a3);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v6 = "REMaterialParameterBlockSetBool";
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", buf, 0xCu);
    }
  }
}

void REMaterialParameterBlockSetFloat(re::MaterialParameterBlock *a1, const char *a2, float a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    re::MaterialParameterBlock::setFloat(v4, a1, a2, a3);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v6 = "REMaterialParameterBlockSetFloat";
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", buf, 0xCu);
    }
  }
}

void REMaterialParameterBlockSetInt(re::MaterialParameterBlock *a1, const char *a2, int a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    re::MaterialParameterBlock::setInt(a1, a2, a3, &v4);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v6 = "REMaterialParameterBlockSetInt";
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", buf, 0xCu);
    }
  }
}

void REMaterialParameterBlockSetUInt(re::MaterialParameterBlock *a1, const char *a2, int a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    re::MaterialParameterBlock::setUint(v4, a1, a2, a3);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v6 = "REMaterialParameterBlockSetUInt";
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", buf, 0xCu);
    }
  }
}

double REMaterialParameterBlockSetFloat2(re::MaterialParameterBlock *a1, char *a2, double result)
{
  if (a1)
  {
    return re::MaterialParameterBlock::setVector2F(a1, a2, *&result, &v3);
  }

  return result;
}

void REMaterialParameterBlockSetInt2(re::MaterialParameterBlock *a1, char *a2, double a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    re::MaterialParameterBlock::setInt2(a1, a2, &v4, a3);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v6 = "REMaterialParameterBlockSetInt2";
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", buf, 0xCu);
    }
  }
}

void REMaterialParameterBlockSetUInt2(re::MaterialParameterBlock *a1, char *a2, double a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    re::MaterialParameterBlock::setUint2(a1, a2, &v4, a3);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v6 = "REMaterialParameterBlockSetUInt2";
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", buf, 0xCu);
    }
  }
}

void REMaterialParameterBlockSetFloat3(re::MaterialParameterBlock *a1, char *a2, __n128 a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    re::MaterialParameterBlock::setVector3F(a1, a2, a3.n128_i64[0], a3.n128_i64[1], &v4);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v6 = "REMaterialParameterBlockSetFloat3";
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", buf, 0xCu);
    }
  }
}

void REMaterialParameterBlockSetColor3(re::MaterialParameterBlock *a1, char *a2, uint64_t a3, __n128 a4)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    re::MaterialParameterBlock::setColorGamut3F(a1, a2, a4.n128_i64[0], a4.n128_u32[2] | (a3 << 32), &v5);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v4 = CoreRELog::log;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v7 = "REMaterialParameterBlockSetColor3";
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", buf, 0xCu);
    }
  }
}

void REMaterialParameterBlockSetInt3(re::MaterialParameterBlock *a1, char *a2, __n128 a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    re::MaterialParameterBlock::setInt3(a1, a2, &v4, a3);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v6 = "REMaterialParameterBlockSetInt3";
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", buf, 0xCu);
    }
  }
}

void REMaterialParameterBlockSetUInt3(re::MaterialParameterBlock *a1, char *a2, __n128 a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    re::MaterialParameterBlock::setUint3(a1, a2, &v4, a3);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v6 = "REMaterialParameterBlockSetUInt3";
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", buf, 0xCu);
    }
  }
}

void REMaterialParameterBlockSetFloat4(re::MaterialParameterBlock *a1, char *a2, __n128 a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    re::MaterialParameterBlock::setVector4F(a1, a2, a3.n128_i64[0], a3.n128_i64[1], &v4);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v6 = "REMaterialParameterBlockSetFloat4";
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", buf, 0xCu);
    }
  }
}

void REMaterialParameterBlockSetColor4(re::MaterialParameterBlock *a1, char *a2, char a3, __n128 a4)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *buf = a4;
    v7 = a3;
    re::MaterialParameterBlock::setColorGamut4F(a1, a2, buf, &v5);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v4 = CoreRELog::log;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "REMaterialParameterBlockSetColor4";
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", buf, 0xCu);
    }
  }
}

void REMaterialParameterBlockSetInt4(re::MaterialParameterBlock *a1, char *a2, __n128 a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    re::MaterialParameterBlock::setInt4(a1, a2, &v4, a3);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v6 = "REMaterialParameterBlockSetInt4";
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", buf, 0xCu);
    }
  }
}

void REMaterialParameterBlockSetUInt4(re::MaterialParameterBlock *a1, char *a2, __n128 a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    re::MaterialParameterBlock::setUint4(a1, a2, &v4, a3);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v6 = "REMaterialParameterBlockSetUInt4";
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", buf, 0xCu);
    }
  }
}

void REMaterialParameterBlockSetFloat2x2(re::MaterialParameterBlock *a1, char *a2, double a3, double a4)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    re::MaterialParameterBlock::setMatrix2x2F(a1, a2, *&a3, *&a4, &v5);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v4 = CoreRELog::log;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v7 = "REMaterialParameterBlockSetFloat2x2";
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", buf, 0xCu);
    }
  }
}

void REMaterialParameterBlockSetFloat3x3(re::MaterialParameterBlock *a1, char *a2, __n128 a3, __n128 a4, __n128 a5)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *buf = a3;
    v8 = a4;
    v9 = a5;
    re::MaterialParameterBlock::setMatrix3x3F(a1, a2, buf, &v6);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "REMaterialParameterBlockSetFloat3x3";
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", buf, 0xCu);
    }
  }
}

void REMaterialParameterBlockSetFloat4x4(re::MaterialParameterBlock *a1, char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *buf = a3;
    v9 = a4;
    v10 = a5;
    v11 = a6;
    re::MaterialParameterBlock::setMatrix4x4F(a1, a2, buf, &v7);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "REMaterialParameterBlockSetFloat4x4";
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", buf, 0xCu);
    }
  }
}

void REMaterialParameterBlockSetTextureFromAsset(re::MaterialParameterBlock *a1, const char *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    re::AssetAPIHelper::assetHandleCreate(a3, buf);
    v5 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(buf);
    if (v5)
    {
      re::MaterialParameterBlock::setTextureHandle(v7, a1, a2, (v5 + 8));
      v7[0] = 0;
    }

    re::AssetHandle::~AssetHandle(buf);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v9 = "REMaterialParameterBlockSetTextureFromAsset";
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", buf, 0xCu);
    }
  }
}

void REMaterialParameterBlockSetTextureBinding(_anonymous_namespace_ *a1, const char *a2, char *a3, char *a4)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    re::MaterialParameterBlock::setBinding(a1, a2, a3, a4, 2, &v5);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v4 = CoreRELog::log;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v7 = "REMaterialParameterBlockSetTextureBinding";
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", buf, 0xCu);
    }
  }
}

void REMaterialParameterBlockSetBufferBinding(_anonymous_namespace_ *a1, const char *a2, char *a3, char *a4)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    re::MaterialParameterBlock::setBinding(a1, a2, a3, a4, 3, &v5);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v4 = CoreRELog::log;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v7 = "REMaterialParameterBlockSetBufferBinding";
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", buf, 0xCu);
    }
  }
}

void REMaterialParameterBlockSetSamplerBinding(_anonymous_namespace_ *a1, const char *a2, char *a3, char *a4)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    re::MaterialParameterBlock::setBinding(a1, a2, a3, a4, 4, &v5);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v4 = CoreRELog::log;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v7 = "REMaterialParameterBlockSetSamplerBinding";
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", buf, 0xCu);
    }
  }
}

BOOL REMaterialParameterBlockGetBool(re::MaterialParameterBlock *a1, const char *a2, _BYTE *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "REMaterialParameterBlockGetBool";
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", &v7, 0xCu);
    }

    return 0;
  }

  re::MaterialParameterBlock::handle(&v7, a1, a2);
  if ((v9 & 7) == 0)
  {
    return 0;
  }

  result = re::MaterialParameterHandle::isParameterType(&v7, 2);
  if (result)
  {
    *a3 = *re::ShaderGraphMaterial::getConstant(a1, &v7);
    return 1;
  }

  return result;
}

BOOL REMaterialParameterBlockGetFloat(re::MaterialParameterBlock *a1, const char *a2, _DWORD *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "REMaterialParameterBlockGetFloat";
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", &v7, 0xCu);
    }

    return 0;
  }

  re::MaterialParameterBlock::handle(&v7, a1, a2);
  if ((v9 & 7) == 0)
  {
    return 0;
  }

  result = re::MaterialParameterHandle::isParameterType(&v7, 1);
  if (result)
  {
    *a3 = *re::ShaderGraphMaterial::getConstant(a1, &v7);
    return 1;
  }

  return result;
}

BOOL REMaterialParameterBlockGetInt(re::MaterialParameterBlock *a1, const char *a2, _DWORD *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "REMaterialParameterBlockGetInt";
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", &v7, 0xCu);
    }

    return 0;
  }

  re::MaterialParameterBlock::handle(&v7, a1, a2);
  if ((v9 & 7) == 0)
  {
    return 0;
  }

  result = re::MaterialParameterHandle::isParameterType(&v7, 3);
  if (result)
  {
    *a3 = *re::ShaderGraphMaterial::getConstant(a1, &v7);
    return 1;
  }

  return result;
}

BOOL REMaterialParameterBlockGetUInt(re::MaterialParameterBlock *a1, const char *a2, _DWORD *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "REMaterialParameterBlockGetUInt";
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", &v7, 0xCu);
    }

    return 0;
  }

  re::MaterialParameterBlock::handle(&v7, a1, a2);
  if ((v9 & 7) == 0)
  {
    return 0;
  }

  result = re::MaterialParameterHandle::isParameterType(&v7, 7);
  if (result)
  {
    *a3 = *re::ShaderGraphMaterial::getConstant(a1, &v7);
    return 1;
  }

  return result;
}

BOOL REMaterialParameterBlockGetFloat2(re::MaterialParameterBlock *a1, const char *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "REMaterialParameterBlockGetFloat2";
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", &v7, 0xCu);
    }

    return 0;
  }

  re::MaterialParameterBlock::handle(&v7, a1, a2);
  if ((v9 & 7) == 0)
  {
    return 0;
  }

  result = re::MaterialParameterHandle::isParameterType(&v7, 32);
  if (result)
  {
    *a3 = *re::ShaderGraphMaterial::getConstant(a1, &v7);
    return 1;
  }

  return result;
}

BOOL REMaterialParameterBlockGetInt2(re::MaterialParameterBlock *a1, const char *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "REMaterialParameterBlockGetInt2";
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", &v7, 0xCu);
    }

    return 0;
  }

  re::MaterialParameterBlock::handle(&v7, a1, a2);
  if ((v9 & 7) == 0)
  {
    return 0;
  }

  result = re::MaterialParameterHandle::isParameterType(&v7, 4);
  if (result)
  {
    *a3 = *re::ShaderGraphMaterial::getConstant(a1, &v7);
    return 1;
  }

  return result;
}

BOOL REMaterialParameterBlockGetUInt2(re::MaterialParameterBlock *a1, const char *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "REMaterialParameterBlockGetUInt2";
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", &v7, 0xCu);
    }

    return 0;
  }

  re::MaterialParameterBlock::handle(&v7, a1, a2);
  if ((v9 & 7) == 0)
  {
    return 0;
  }

  result = re::MaterialParameterHandle::isParameterType(&v7, 8);
  if (result)
  {
    *a3 = *re::ShaderGraphMaterial::getConstant(a1, &v7);
    return 1;
  }

  return result;
}

BOOL REMaterialParameterBlockGetFloat3(re::MaterialParameterBlock *a1, const char *a2, _OWORD *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "REMaterialParameterBlockGetFloat3";
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", &v7, 0xCu);
    }

    return 0;
  }

  re::MaterialParameterBlock::handle(&v7, a1, a2);
  if ((v9 & 7) == 0)
  {
    return 0;
  }

  result = re::MaterialParameterHandle::isParameterType(&v7, 33);
  if (result)
  {
    *a3 = *re::ShaderGraphMaterial::getConstant(a1, &v7);
    return 1;
  }

  return result;
}

BOOL REMaterialParameterBlockGetColor3(re::MaterialParameterBlock *a1, const char *a2, _OWORD *a3, _BYTE *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v11 = CoreRELog::log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "REMaterialParameterBlockGetColor3";
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", &v12, 0xCu);
    }

    return 0;
  }

  re::MaterialParameterBlock::handle(&v12, a1, a2);
  if ((v14 & 7) == 0)
  {
    return 0;
  }

  result = re::MaterialParameterHandle::isParameterType(&v12, 20);
  if (result)
  {
    *&v8 = re::MaterialParameterBlock::colorGamut3FValue(a1, &v12);
    DWORD2(v8) = v9;
    *a3 = v8;
    *a4 = v10;
    return 1;
  }

  return result;
}

BOOL REMaterialParameterBlockGetInt3(re::MaterialParameterBlock *a1, const char *a2, _OWORD *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "REMaterialParameterBlockGetInt3";
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", &v7, 0xCu);
    }

    return 0;
  }

  re::MaterialParameterBlock::handle(&v7, a1, a2);
  if ((v9 & 7) == 0)
  {
    return 0;
  }

  result = re::MaterialParameterHandle::isParameterType(&v7, 5);
  if (result)
  {
    *a3 = *re::ShaderGraphMaterial::getConstant(a1, &v7);
    return 1;
  }

  return result;
}

BOOL REMaterialParameterBlockGetUInt3(re::MaterialParameterBlock *a1, const char *a2, _OWORD *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "REMaterialParameterBlockGetUInt3";
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", &v7, 0xCu);
    }

    return 0;
  }

  re::MaterialParameterBlock::handle(&v7, a1, a2);
  if ((v9 & 7) == 0)
  {
    return 0;
  }

  result = re::MaterialParameterHandle::isParameterType(&v7, 9);
  if (result)
  {
    *a3 = *re::ShaderGraphMaterial::getConstant(a1, &v7);
    return 1;
  }

  return result;
}

BOOL REMaterialParameterBlockGetFloat4(re::MaterialParameterBlock *a1, const char *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v8 = CoreRELog::log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "REMaterialParameterBlockGetFloat4";
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", &v9, 0xCu);
    }

    return 0;
  }

  re::MaterialParameterBlock::handle(&v9, a1, a2);
  if ((v11 & 7) == 0)
  {
    return 0;
  }

  result = re::MaterialParameterHandle::isParameterType(&v9, 34);
  if (result)
  {
    Constant = re::ShaderGraphMaterial::getConstant(a1, &v9);
    v7 = Constant[1];
    *a3 = *Constant;
    a3[1] = v7;
    return 1;
  }

  return result;
}

BOOL REMaterialParameterBlockGetColor4(re::MaterialParameterBlock *a1, const char *a2, _OWORD *a3, _BYTE *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v8 = CoreRELog::log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v12 = "REMaterialParameterBlockGetColor4";
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", buf, 0xCu);
    }

    return 0;
  }

  re::MaterialParameterBlock::handle(buf, a1, a2);
  if ((v13 & 7) == 0)
  {
    return 0;
  }

  if (re::MaterialParameterHandle::isParameterType(buf, 20) || (result = re::MaterialParameterHandle::isParameterType(buf, 21)))
  {
    re::MaterialParameterBlock::colorGamut4FValue(a1, buf, &v9);
    *a3 = v9;
    *a4 = v10;
    return 1;
  }

  return result;
}

BOOL REMaterialParameterBlockGetInt4(re::MaterialParameterBlock *a1, const char *a2, _OWORD *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "REMaterialParameterBlockGetInt4";
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", &v7, 0xCu);
    }

    return 0;
  }

  re::MaterialParameterBlock::handle(&v7, a1, a2);
  if ((v9 & 7) == 0)
  {
    return 0;
  }

  result = re::MaterialParameterHandle::isParameterType(&v7, 6);
  if (result)
  {
    *a3 = *re::ShaderGraphMaterial::getConstant(a1, &v7);
    return 1;
  }

  return result;
}

BOOL REMaterialParameterBlockGetUInt4(re::MaterialParameterBlock *a1, const char *a2, _OWORD *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "REMaterialParameterBlockGetUInt4";
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", &v7, 0xCu);
    }

    return 0;
  }

  re::MaterialParameterBlock::handle(&v7, a1, a2);
  if ((v9 & 7) == 0)
  {
    return 0;
  }

  result = re::MaterialParameterHandle::isParameterType(&v7, 10);
  if (result)
  {
    *a3 = *re::ShaderGraphMaterial::getConstant(a1, &v7);
    return 1;
  }

  return result;
}

BOOL REMaterialParameterBlockGetFloat2x2(re::MaterialParameterBlock *a1, const char *a2, _OWORD *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "REMaterialParameterBlockGetFloat2x2";
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", &v7, 0xCu);
    }

    return 0;
  }

  re::MaterialParameterBlock::handle(&v7, a1, a2);
  if ((v9 & 7) == 0)
  {
    return 0;
  }

  result = re::MaterialParameterHandle::isParameterType(&v7, 48);
  if (result)
  {
    *a3 = *re::ShaderGraphMaterial::getConstant(a1, &v7);
    return 1;
  }

  return result;
}

BOOL REMaterialParameterBlockGetFloat3x3(re::MaterialParameterBlock *a1, const char *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v12 = CoreRELog::log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      v14 = "REMaterialParameterBlockGetFloat3x3";
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", &v13, 0xCu);
    }

    return 0;
  }

  re::MaterialParameterBlock::handle(&v13, a1, a2);
  if ((v15 & 7) == 0)
  {
    return 0;
  }

  result = re::MaterialParameterHandle::isParameterType(&v13, 49);
  if (result)
  {
    Constant = re::ShaderGraphMaterial::getConstant(a1, &v13);
    v7 = *(Constant + 8);
    v8 = *(Constant + 24);
    v9 = *(Constant + 16);
    v10 = *(Constant + 40);
    v11 = *(Constant + 32);
    *a3 = *Constant;
    *(a3 + 8) = v7;
    *(a3 + 16) = v9;
    *(a3 + 24) = v8;
    *(a3 + 32) = v11;
    *(a3 + 40) = v10;
    return 1;
  }

  return result;
}

BOOL REMaterialParameterBlockGetFloat4x4(re::MaterialParameterBlock *a1, const char *a2, _OWORD *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "REMaterialParameterBlockGetFloat4x4";
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", &v11, 0xCu);
    }

    return 0;
  }

  re::MaterialParameterBlock::handle(&v11, a1, a2);
  if ((v13 & 7) == 0)
  {
    return 0;
  }

  result = re::MaterialParameterHandle::isParameterType(&v11, 49);
  if (result)
  {
    Constant = re::ShaderGraphMaterial::getConstant(a1, &v11);
    v7 = Constant[1];
    v8 = Constant[2];
    v9 = Constant[3];
    *a3 = *Constant;
    a3[1] = v7;
    a3[2] = v8;
    a3[3] = v9;
    return 1;
  }

  return result;
}

void REMaterialParameterBlockSetTexture(re::MaterialParameterBlock *a1, const char *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    v10 = v5;
    v7 = v5;
    re::TextureManager::registerTexture(*(*(a1 + 121) + 56), &v10, buf);
    if (v10)
    {
    }

    re::MaterialParameterBlock::setTextureHandle(v9, a1, a2, buf);
    v9[0] = 0;
    re::TextureHandle::invalidate(buf);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v8 = CoreRELog::log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v12 = "REMaterialParameterBlockSetTexture";
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", buf, 0xCu);
    }
  }
}

void REMaterialParameterBlockSetBuffer(re::MaterialParameterBlock *a1, char *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    v7 = v5;
    v9[0] = v6;
    v10 = 0;
    v11 = 0;
    v12 = [v6 length];
    re::MaterialParameterBlock::setBuffer(a1, a2, v9, v13);
    v13[0] = 0;
    if (v10 != -1)
    {
      (off_1F5D2EB10[v10])(buf, v9);
    }

    v10 = -1;
    if (v6)
    {
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v8 = CoreRELog::log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = "REMaterialParameterBlockSetBuffer";
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", buf, 0xCu);
    }
  }
}

void REMaterialParameterBlockSetBufferOffsetSize(re::MaterialParameterBlock *a1, char *a2, id a3, int a4, int a5)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v10[0] = a3;
    v11 = 0;
    v12 = a4;
    v13 = a5;
    re::MaterialParameterBlock::setBuffer(a1, a2, v10, v14);
    v14[0] = 0;
    if (v11 != -1)
    {
      (off_1F5D2EB10[v11])(buf, v10);
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "REMaterialParameterBlockSetBufferOffsetSize";
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", buf, 0xCu);
    }
  }
}

void REMaterialParameterBlockSetSampler(re::MaterialParameterBlock *a1, char *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    v9 = v5;
    v7 = v5;
    re::MaterialParameterBlock::setSampler(a1, a2, &v9, v10);
    v10[0] = 0;
    if (v6)
    {
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v8 = CoreRELog::log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v12 = "REMaterialParameterBlockSetSampler";
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", buf, 0xCu);
    }
  }
}

uint64_t REMaterialParameterBlockSetDepthBiasState(uint64_t a1, float a2, float a3, float a4)
{
  v5[0] = 1;
  v6 = a2;
  v7 = a3;
  v8 = a4;
  return re::MaterialParameterBlock::setDepthBiasState(a1, v5);
}

uint64_t REMaterialParameterBlockGetDepthBiasState(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  result = *(a1 + 948);
  if (result == 1)
  {
    v6 = *(a1 + 956);
    v7 = *(a1 + 960);
    if (a2)
    {
      *a2 = *(a1 + 952);
    }

    if (a3)
    {
      *a3 = v6;
    }

    if (a4)
    {
      *a4 = v7;
    }
  }

  return result;
}

BOOL REMaterialParameterBlockBindTextureToSamplerWithDefaultArray(uint64_t *a1, char *a2, char *a3, void *a4)
{
  v7 = a4;
  v28 = v7;
  v8 = v7;
  re::MaterialSamplerData::fromDescriptor(&v28, v29);
  if (v7)
  {
  }

  if (a2)
  {
    v15 = *a2;
    if (*a2)
    {
      v16 = a2[1];
      if (v16)
      {
        v17 = a2 + 2;
        do
        {
          v15 = 31 * v15 + v16;
          v18 = *v17++;
          v16 = v18;
        }

        while (v18);
      }

      v15 &= ~0x8000000000000000;
    }
  }

  else
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v27 = v15;
  if (a3)
  {
    v19 = *a3;
    if (*a3)
    {
      v20 = a3[1];
      if (v20)
      {
        v21 = a3 + 2;
        do
        {
          v19 = 31 * v19 + v20;
          v22 = *v21++;
          v20 = v22;
        }

        while (v22);
      }

      v19 &= ~0x8000000000000000;
    }
  }

  else
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v26 = v19;
  v23 = re::MaterialSamplerData::hash(v29, v9, v10, v11, v12, v13, v14);
  v24 = re::MaterialParameterBlock::bindTextureToSampler(a1, &v27, &v26, v23);
  v26 = 0;
  v27 = 0;

  return v24;
}

BOOL REMaterialParameterBlockUnbindTextureFromSamplers(re::MaterialParameterBlock *a1, char *a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      v3 = a2[1];
      if (v3)
      {
        v4 = a2 + 2;
        do
        {
          v2 = 31 * v2 + v3;
          v5 = *v4++;
          v3 = v5;
        }

        while (v5);
      }

      v2 &= ~0x8000000000000000;
    }
  }

  else
  {
    v2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = v2;
  return re::MaterialParameterBlock::unbindTextureFromSamplers(a1, &v7);
}

id REMaterialParameterBlockGetTexture(re::MaterialParameterBlock *a1, const char *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v10 = "REMaterialParameterBlockGetTexture";
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", buf, 0xCu);
    }

    goto LABEL_12;
  }

  re::MaterialParameterBlock::handle(buf, a1, a2);
  if ((v11 & 7) == 0 || !re::MaterialParameterHandle::isParameterType(buf, 64))
  {
LABEL_12:
    v4 = 0;
    goto LABEL_13;
  }

  re::MaterialParameterBlock::textureHandleValue(a1, buf, v7);
  re::TextureHandle::metalTexture(&v8, v7);
  v3 = v8;
  v4 = v3;
  if (v3)
  {
  }

  re::TextureHandle::invalidate(v7);
LABEL_13:

  return v4;
}

id REMaterialParameterBlockGetBuffer(re::MaterialParameterBlock *a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    re::MaterialParameterBlock::handle(&v6, a1, a2);
    if ((v8 & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v6, 128))
    {
      v3 = *re::MaterialParameterBlock::bufferValue(a1, &v6);
      goto LABEL_11;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v4 = CoreRELog::log;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "REMaterialParameterBlockGetBuffer";
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", &v6, 0xCu);
    }
  }

  v3 = 0;
LABEL_11:

  return v3;
}

CFStringRef REMaterialParameterBlockCopyTextureBindingStructName(re::MaterialParameterBlock *a1, const char *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v9 = "REMaterialParameterBlockCopyTextureBindingStructName";
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", buf, 0xCu);
    }

    return 0;
  }

  re::MaterialParameterBlock::handle(buf, a1, a2);
  v3 = v10;
  if ((v10 & 7) == 0)
  {
    return 0;
  }

  isParameterType = re::MaterialParameterHandle::isParameterType(buf, 64);
  result = 0;
  if ((v3 & 0x10) != 0 && isParameterType)
  {
    re::MaterialParameterBlock::bindingValue(a1, buf, v7);
    return CFStringCreateWithCString(0, re::s_materialTableIDMappings[v7[16]], 0x8000100u);
  }

  return result;
}

CFStringRef REMaterialParameterBlockCopyTextureBindingMemberName(re::MaterialParameterBlock *a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v8 = CoreRELog::log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v11 = "REMaterialParameterBlockCopyTextureBindingMemberName";
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "nil REMaterialParameterBlockRef passed to %s", buf, 0xCu);
    }

    return 0;
  }

  re::MaterialParameterBlock::handle(buf, a1, a2);
  v3 = v12;
  if ((v12 & 7) == 0)
  {
    return 0;
  }

  isParameterType = re::MaterialParameterHandle::isParameterType(buf, 64);
  result = 0;
  if ((v3 & 0x10) != 0 && isParameterType)
  {
    re::MaterialParameterBlock::bindingValue(a1, buf, v9);
    v6 = &off_1E8723160;
    v7 = 96;
    while (v9[3] != (*(v6 - 1) & 0x7FFFFFFFFFFFFFFFLL))
    {
      v6 += 2;
      v7 -= 16;
      if (!v7)
      {
        return 0;
      }
    }

    return CFStringCreateWithCString(0, *v6, 0x8000100u);
  }

  return result;
}

_anonymous_namespace_ *REMaterialParameterBlockAddPassTechniqueMapping(re::MaterialParameterBlock *a1, char *__s, const char *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = strlen(__s);
  if (v6)
  {
    MurmurHash3_x64_128(__s, v6, 0, &v11);
    v7 = (v12 - 0x61C8864680B583E9 + (v11 << 6) + (v11 >> 2)) ^ v11;
  }

  else
  {
    v7 = 0;
  }

  v8 = strlen(a3);
  if (v8)
  {
    MurmurHash3_x64_128(a3, v8, 0, &v11);
    v9 = (v12 - 0x61C8864680B583E9 + (v11 << 6) + (v11 >> 2)) ^ v11;
  }

  else
  {
    v9 = 0;
  }

  if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
  }

  return re::MaterialParameterBlock::addPassTechniqueMapping(a1, v7, v9, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
}

BOOL REMaterialParameterBlockGetPassTechniqueMapping(re::MaterialParameterBlock *a1, char *__s, void *a3)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v6 = strlen(__s);
  if (v6)
  {
    MurmurHash3_x64_128(__s, v6, 0, v10);
    v7 = (v10[1] + (v10[0] << 6) + (v10[0] >> 2) - 0x61C8864680B583E9) ^ v10[0];
  }

  else
  {
    v7 = 0;
  }

  if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
  }

  PassTechniqueMapping = re::MaterialParameterBlock::tryGetPassTechniqueMapping(a1, v7, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
  if (PassTechniqueMapping)
  {
    *a3 = *PassTechniqueMapping;
  }

  return PassTechniqueMapping != 0;
}

_anonymous_namespace_ *REMaterialParameterBlockRemovePassTechniqueMapping(re::MaterialParameterBlock *a1, char *__s)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v4 = strlen(__s);
  if (v4)
  {
    MurmurHash3_x64_128(__s, v4, 0, v7);
    v5 = (v7[1] + (v7[0] << 6) + (v7[0] >> 2) - 0x61C8864680B583E9) ^ v7[0];
  }

  else
  {
    v5 = 0;
  }

  if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
  }

  return re::MaterialParameterBlock::removePassTechniqueMapping(a1, v5, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
}

void *REReferenceComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::ReferenceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

uint64_t REReferenceComponentGetEntityName(uint64_t a1)
{
  if (*(a1 + 40))
  {
    return *(a1 + 48);
  }

  else
  {
    return a1 + 41;
  }
}