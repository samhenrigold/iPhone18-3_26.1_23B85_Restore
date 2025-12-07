uint64_t re::meshAssetDataUpgrade<(re::MeshAssetDataVersion)0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = *MEMORY[0x1E69E9840];
  re::DynamicArray<re::MeshAssetModel>::operator=(a3, a2);
  re::DynamicArray<re::MeshAssetInstance>::operator=(a3 + 40, (a2 + 40));
  re::DynamicArray<re::MeshAssetSkeleton>::operator=(a3 + 80, (a2 + 80));
  re::DynamicArray<float>::operator=(a3 + 120, (a2 + 120));
  *(a3 + 160) = *(a2 + 160);
  re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::operator=(a3 + 168, (a2 + 168));
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = *(a3 + 32);
    v8 = v7 + (v6 << 9);
    v32 = v8;
    do
    {
      v9 = *(a3 + 96);
      v10 = *(v7 + 248);
      if (v10)
      {
        if (v9 == -1)
        {
          v33 = 0;
          memset(v42, 0, sizeof(v42));
          v25 = MEMORY[0x1E69E9C10];
          v34 = 136315906;
          v35 = "copy";
          v36 = 1024;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v26 = 3;
          }

          else
          {
            v26 = 2;
          }

          v37 = 643;
          v38 = 2048;
          v39 = -1;
          v40 = 2048;
          v41 = 0;
          _os_log_send_and_compose_impl(v26, &v33, v42, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v29, v31);
          _os_crash_msg();
          __break(1u);
LABEL_25:
          re::internal::assertLog(7, v5, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v9, v9, v10);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", v27, v28, v30);
          __break(1u);
        }

        v11 = v9 + v10;
        if (__CFADD__(v9, v10))
        {
          goto LABEL_25;
        }

        v12 = *(v7 + 264);
        if (v9 >= v11)
        {
          std::__copy_impl::operator()[abi:nn200100]<re::MeshAssetSkeleton const*,re::MeshAssetSkeleton const*,re::MeshAssetSkeleton*>(*(v7 + 264), &v12[14 * v10], *(a3 + 112) + 112 * v9);
        }

        else
        {
          re::DynamicArray<re::MeshAssetSkeleton>::growCapacity((a3 + 80), v9 + v10);
          v13 = *(a3 + 96);
          v14 = &v12[14 * (v13 - v9)];
          std::__copy_impl::operator()[abi:nn200100]<re::MeshAssetSkeleton const*,re::MeshAssetSkeleton const*,re::MeshAssetSkeleton*>(v12, v14, *(a3 + 112) + 112 * v9);
          if (v13 - v9 != v10)
          {
            v15 = 0;
            v16 = *(a3 + 112) + 112 * *(a3 + 96);
            v17 = 112 * v9 + 112 * v10 - 112 * v13;
            do
            {
              re::StringID::StringID((v16 + v15), &v14[v15 / 8]);
              re::FixedArray<re::StringID>::FixedArray((v16 + v15 + 16), &v14[v15 / 8 + 2]);
              re::FixedArray<unsigned int>::FixedArray((v16 + v15 + 40), &v14[v15 / 8 + 5]);
              re::FixedArray<re::GenericSRT<float>>::FixedArray((v16 + v15 + 64), &v14[v15 / 8 + 8]);
              re::FixedArray<re::Matrix4x4<float>>::FixedArray((v16 + v15 + 88), &v14[v15 / 8 + 11]);
              v15 += 112;
            }

            while (v17 != v15);
          }

          *(a3 + 96) = v11;
          v8 = v32;
        }

        ++*(a3 + 104);
      }

      v18 = *(v7 + 168);
      if (v18)
      {
        v19 = *(v7 + 184);
        v20 = 144 * v18;
        do
        {
          *v19 += v9;
          v19 += 36;
          v20 -= 144;
        }

        while (v20);
      }

      v7 += 512;
    }

    while (v7 != v8);
    v21 = *(a3 + 16);
    if (v21)
    {
      v22 = v21 << 9;
      v23 = *(a3 + 32) + 232;
      do
      {
        re::DynamicArray<re::MeshAssetSkeleton>::operator=(v23, (a3 + 80));
        v23 += 512;
        v22 -= 512;
      }

      while (v22);
    }
  }

  return 1;
}

uint64_t re::meshAssetDataUpgrade<(re::MeshAssetDataVersion)1>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = *MEMORY[0x1E69E9840];
  re::DynamicArray<re::MeshAssetModel>::operator=(a3, a2);
  re::DynamicArray<re::MeshAssetInstance>::operator=(a3 + 40, (a2 + 40));
  re::DynamicArray<re::MeshAssetSkeleton>::operator=(a3 + 80, (a2 + 80));
  re::DynamicArray<float>::operator=(a3 + 120, (a2 + 120));
  *(a3 + 160) = *(a2 + 160);
  v5 = re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::operator=(a3 + 168, (a2 + 168));
  v26 = 0;
  v27 = 0;
  v6 = 1;
  v28 = 1;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v32 = 0;
  v7 = *(a3 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = *(a3 + 32);
    v10 = v9 + (v7 << 9);
    do
    {
      v11 = *(v9 + 208);
      if (v11)
      {
        v12 = v11 << 8;
        v13 = (*(v9 + 224) + 56);
        do
        {
          v14 = *v13;
          if (v14 == 0xFFFF)
          {
            v15 = v31;
            v16 = v27;
            if (v31 + 1 > 32 * v27)
            {
              re::BucketArray<unsigned short *,32ul>::setBucketsCapacity(&v26, (v31 + 32) >> 5);
              v16 = v27;
            }

            if (v16 <= v15 >> 5)
            {
              v33 = 0;
              memset(v42, 0, sizeof(v42));
              v23 = MEMORY[0x1E69E9C10];
              v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v34 = 136315906;
              v35 = "operator[]";
              v36 = 1024;
              if (v24)
              {
                v25 = 3;
              }

              else
              {
                v25 = 2;
              }

              v37 = 858;
              v38 = 2048;
              v39 = v15 >> 5;
              v40 = 2048;
              v41 = v16;
              _os_log_send_and_compose_impl(v25, &v33, v42, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v26, v27);
              _os_crash_msg();
              __break(1u);
            }

            v17 = v30;
            if (v28)
            {
              v17 = &v29;
            }

            v18 = v17[v15 >> 5];
            ++v31;
            ++v32;
            *(v18 + 8 * (v15 & 0x1F)) = v13;
          }

          else if (v14 > v8)
          {
            v8 = *v13;
          }

          v13 += 128;
          v12 -= 256;
        }

        while (v12);
      }

      v9 += 512;
    }

    while (v9 != v10);
    v6 = v8 + 1;
  }

  v19 = v31;
  if (v31)
  {
    v20 = 0;
    do
    {
      **re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](&v26, v20++) = v6;
    }

    while (v19 != v20);
    v21 = 0;
    do
    {
      re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](&v26, v21++);
    }

    while (v19 != v21);
  }

  while (v27)
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v26);
  }

  if (v26 && (v28 & 1) == 0)
  {
    (*(*v26 + 40))();
  }

  return 1;
}

BOOL re::meshAssetDataUpgrade<(re::MeshAssetDataVersion)2>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v72 = *MEMORY[0x1E69E9840];
  re::DynamicArray<re::MeshAssetModel>::operator=(a3, a2);
  re::DynamicArray<re::MeshAssetInstance>::operator=(a3 + 40, (a2 + 40));
  re::DynamicArray<re::MeshAssetSkeleton>::operator=(a3 + 80, (a2 + 80));
  re::DynamicArray<float>::operator=(a3 + 120, (a2 + 120));
  *(a3 + 160) = *(a2 + 160);
  v7 = re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::operator=(a3 + 168, (a2 + 168));
  v8 = *(a3 + 16);
  if (!v8)
  {
    return 1;
  }

  v9 = *(a3 + 32);
  v55 = &v9[64 * v8];
  while (1)
  {
    v10 = *(v9 + 52);
    if (*(v9 + 52))
    {
      break;
    }

LABEL_27:
    v9 += 64;
    if (v9 == v55)
    {
      v24 = *(a3 + 16);
      if (v24)
      {
        v25 = *(a3 + 32);
        v26 = &v25[32 * v24];
        while (1)
        {
          if (v25[10].i64[1])
          {
            v27 = v25[13].u32[0];
            if (v25[13].i32[0])
            {
              v28 = 0;
              v29.i64[0] = 0x7F0000007FLL;
              v29.i64[1] = 0x7F0000007FLL;
              v30 = vnegq_f32(v29);
              v12 = 80;
              v31 = 96;
              while (1)
              {
                v32 = v25[13].u64[0];
                if (v32 <= v28)
                {
                  break;
                }

                v32 = v25[10].u64[1];
                if (v32 <= v28)
                {
                  goto LABEL_56;
                }

                v57 = v30;
                v59 = v29;
                re::AABB::transform(v25[14].i64[0] + v31, (v25[11].i64[1] + v12), buf);
                v34 = v57;
                v33 = v59;
                v34.i32[3] = 0;
                v35 = buf[0];
                v36 = buf[1];
                v35.i32[3] = 0;
                v33.i32[3] = 0;
                v36.i32[3] = 0;
                v30 = vminnmq_f32(v34, v35);
                v29 = vmaxnmq_f32(v33, v36);
                ++v28;
                v31 += 256;
                v12 += 144;
                if (v27 == v28)
                {
                  goto LABEL_38;
                }
              }

              v60 = 0;
              v70 = 0u;
              v71 = 0u;
              memset(buf, 0, sizeof(buf));
              v46 = MEMORY[0x1E69E9C10];
              v61 = 136315906;
              v62 = "operator[]";
              v63 = 1024;
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v47 = 3;
              }

              else
              {
                v47 = 2;
              }

              v64 = 789;
              v65 = 2048;
              v66 = v28;
              v67 = 2048;
              v68 = v32;
              _os_log_send_and_compose_impl(v47, &v60, buf, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v54, v55);
              _os_crash_msg();
              __break(1u);
LABEL_56:
              v60 = 0;
              v70 = 0u;
              v71 = 0u;
              memset(buf, 0, sizeof(buf));
              v48 = MEMORY[0x1E69E9C10];
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

              v64 = 789;
              v65 = 2048;
              v66 = v28;
              v67 = 2048;
              v68 = v32;
              _os_log_send_and_compose_impl(v50, &v60, buf, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v54, v55);
              _os_crash_msg();
              __break(1u);
LABEL_60:
              v60 = 0;
              v70 = 0u;
              v71 = 0u;
              memset(buf, 0, sizeof(buf));
              v51 = MEMORY[0x1E69E9C10];
              v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v61 = 136315906;
              v62 = "operator[]";
              v63 = 1024;
              if (v52)
              {
                v53 = 3;
              }

              else
              {
                v53 = 2;
              }

              v64 = 789;
              v65 = 2048;
              v66 = v12;
              v67 = 2048;
              v68 = v3;
              _os_log_send_and_compose_impl(v53, &v60, buf, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v54, v55);
              _os_crash_msg();
              __break(1u);
            }

            v29.i64[0] = 0x7F0000007FLL;
            v29.i64[1] = 0x7F0000007FLL;
            v30 = vnegq_f32(v29);
LABEL_38:
            v25[1] = v30;
            v25[2] = v29;
          }

          v25 += 32;
          if (v25 == v26)
          {
            return 1;
          }
        }
      }

      return 1;
    }
  }

  v11 = 0;
  while (1)
  {
    v12 = v9[26];
    if (v12 <= v11)
    {
      goto LABEL_47;
    }

    v4 = (v9[28] + (v11 << 8));
    v56 = v4[7];
    v58 = v4[6];
    v13 = vcgtq_f32(v58, v56);
    v13.i32[3] = v13.i32[2];
    if ((vmaxvq_u32(v13) & 0x80000000) != 0)
    {
      v3 = v4[1].u64[0];
      if (v3)
      {
        v12 = 0;
        v14 = 8;
        while (v3 != v12)
        {
          v15 = (v4[2].i64[0] + v14);
          if (*v15)
          {
            v16 = v15[1];
          }

          else
          {
            v16 = v15 + 1;
          }

          v7 = strcmp(v16, "vertexPosition");
          if (!v7)
          {
            v12 = v12;
            goto LABEL_20;
          }

          ++v12;
          v14 += 80;
          if (v3 == v12)
          {
            goto LABEL_7;
          }
        }

        v60 = 0;
        v70 = 0u;
        v71 = 0u;
        memset(buf, 0, sizeof(buf));
        v39 = MEMORY[0x1E69E9C10];
        v61 = 136315906;
        v62 = "operator[]";
        v63 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v40 = 3;
        }

        else
        {
          v40 = 2;
        }

        v64 = 789;
        v65 = 2048;
        v66 = v3;
        v67 = 2048;
        v68 = v3;
        _os_log_send_and_compose_impl(v40, &v60, buf, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v54, v55);
        _os_crash_msg();
        __break(1u);
LABEL_47:
        v60 = 0;
        v70 = 0u;
        v71 = 0u;
        memset(buf, 0, sizeof(buf));
        v38 = MEMORY[0x1E69E9C10];
        v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v61 = 136315906;
        v62 = "operator[]";
        v63 = 1024;
        if (v41)
        {
          v42 = 3;
        }

        else
        {
          v42 = 2;
        }

        v64 = 789;
        v65 = 2048;
        v66 = v11;
        v67 = 2048;
        v68 = v12;
        _os_log_send_and_compose_impl(v42, &v60, buf, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v54, v55);
        _os_crash_msg();
        __break(1u);
        goto LABEL_51;
      }

      v12 = 0;
LABEL_20:
      if (v12 != v3)
      {
        break;
      }
    }

LABEL_7:
    if (++v11 == v10)
    {
      goto LABEL_27;
    }
  }

  if (v3 <= v12)
  {
    goto LABEL_60;
  }

  v17 = v4[2].i64[0] + 80 * v12;
  v12 = *(v17 + 48);
  v18 = v4[3].u32[0];
  if (v18 <= v12 / 0xC)
  {
    if (v18)
    {
      v19 = *(v17 + 64);
      v20 = v19 + 12 * v18;
      do
      {
        v21.i64[0] = *v19;
        v23 = v56;
        v22 = v58;
        v22.i32[3] = 0;
        v21.i64[1] = *(v19 + 8);
        v23.i32[3] = 0;
        v56 = vmaxnmq_f32(v23, v21);
        v58 = vminnmq_f32(v22, v21);
        v4[6] = v58;
        v4[7] = v56;
        v19 += 12;
      }

      while (v19 != v20);
    }

    goto LABEL_7;
  }

  v38 = *re::assetTypesLogObjects(v7);
  result = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
  if (!result)
  {
    return result;
  }

LABEL_51:
  v43 = v9[1];
  v44 = v4[5].i64[0];
  v45 = v4[3].i32[0];
  buf[0].i32[0] = 136315906;
  *(buf[0].i64 + 4) = v43;
  buf[0].i16[6] = 2080;
  *(&buf[0].i64[1] + 6) = v44;
  buf[1].i16[3] = 1024;
  buf[1].i32[2] = v45;
  buf[1].i16[6] = 2048;
  *(&buf[1].i64[1] + 6) = v12;
  _os_log_error_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_ERROR, "Invalid vertex count in MeshAssetModel. Model: %s, Part: %s, Vertex Count: %u, Data Size: %lu", buf, 0x26u);
  return 0;
}

double re::internal::defaultConstruct<re::MeshAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0;
  *(a3 + 200) = 0;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  *(a3 + 168) = 0;
  *(a3 + 192) = 0;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  *(a3 + 144) = 0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  return result;
}

uint64_t re::internal::defaultDestruct<re::MeshAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(a3 + 168);
  re::DynamicArray<unsigned long>::deinit(a3 + 120);
  re::DynamicArray<re::MeshAssetSkeleton>::deinit(a3 + 80);
  re::DynamicArray<re::MeshAssetInstance>::deinit(a3 + 40);

  return re::DynamicArray<re::MeshAssetModel>::deinit(a3);
}

double re::internal::defaultConstructV2<re::MeshAssetData>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 200) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  *(a1 + 192) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 144) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::MeshAssetData>(uint64_t a1)
{
  re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(a1 + 168);
  re::DynamicArray<unsigned long>::deinit(a1 + 120);
  re::DynamicArray<re::MeshAssetSkeleton>::deinit(a1 + 80);
  re::DynamicArray<re::MeshAssetInstance>::deinit(a1 + 40);

  return re::DynamicArray<re::MeshAssetModel>::deinit(a1);
}

void *re::IntrospectionDynamicArray<re::MeshAssetBuffer>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshAssetBuffer>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshAssetBuffer>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshAssetBuffer>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshAssetBuffer>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshAssetBuffer>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::MeshAssetBuffer>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshAssetBuffer>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::MeshAssetBuffer>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshAssetBuffer>::addElement(re::Allocator **a1, re *a2, int a3, _anonymous_namespace_ *a4)
{
  v16 = 0;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  re::DynamicString::setCapacity(&v11, 0);
  *(&v15 + 1) = 0;
  v14 = 0uLL;
  *(&v13 + 1) = 0;
  LODWORD(v15) = 0;
  LOWORD(v16) = 256;
  v8.n128_f64[0] = re::DynamicArray<re::MeshAssetBuffer>::add(a4, &v11);
  if (*(&v13 + 1))
  {
    if (*(&v15 + 1))
    {
      (*(**(&v13 + 1) + 40))(v8.n128_f64[0]);
    }

    *(&v15 + 1) = 0;
    v14 = 0uLL;
    *(&v13 + 1) = 0;
    LODWORD(v15) = v15 + 1;
  }

  if (v11 && (v12 & 1) != 0)
  {
    (*(*v11 + 40))(v8);
  }

  v9 = (*(a4 + 4) + 80 * *(a4 + 2) - 80);
  re::introspectionInitElement(a2, a3, a1[6], v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::MeshAssetBuffer>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
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

    v13 = 789;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 80 * a3;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
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

    v13 = 797;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 80 * a3;
}

void re::DynamicArray<re::MeshAssetBuffer>::resize(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 80 * a2;
    v9 = a2;
    do
    {
      v10 = (*(v3 + 4) + v8);
      re::DynamicArray<unsigned long>::deinit(v10 + 32);
      re::DynamicString::deinit(v10);
      ++v9;
      v8 += 80;
    }

    while (v9 < *(v3 + 2));
  }

  else
  {
    if (*(result + 1) < a2)
    {
      result = re::DynamicArray<re::MeshAssetBuffer>::setCapacity(result, a2);
      v4 = *(v3 + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 80 * v4;
      do
      {
        v7 = *(v3 + 4) + v6;
        *v7 = 0u;
        *(v7 + 16) = 0u;
        result = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 64) = 0;
        *(v7 + 40) = 0;
        *(v7 + 48) = 0;
        *(v7 + 32) = 0;
        *(v7 + 56) = 0;
        v6 += 80;
        *(v7 + 72) = 256;
        --v5;
      }

      while (v5);
    }
  }

  *(v3 + 2) = a2;
  ++*(v3 + 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBuffer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshAssetBuffer>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBuffer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::MeshAssetBuffer>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::MeshAssetBuffer>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshAssetBuffer>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::MeshAssetBuffer>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 80 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 80;
        v11 -= 80;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBuffer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 80 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBuffer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBuffer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 80 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->array->version()) DynamicArray elements may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBuffer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, re **a3@<X2>, __int128 *a4@<X3>, uint64_t *a5@<X8>)
{
  re::TypeRegistry::typeID(&v26, a1, a2);
  if (v26)
  {
    *a5 = v26;
  }

  else
  {
    *&v19 = 0x449AD97C4B77BED4;
    *(&v19 + 1) = "_CompareFunc";
    v10 = re::TypeRegistry::typeID(&v25, a1, &v19);
    if (v19)
    {
      if (v19)
      {
      }
    }

    if (!v25)
    {
      v21[0] = 0x449AD97C4B77BED4;
      v21[1] = "_CompareFunc";
      re::TypeRegistry::declareType(&v19, v21, a1, 8, 1u, 0);
      v25 = v19;
      if (v21[0])
      {
        if (v21[0])
        {
        }
      }
    }

    re::TypeRegistry::typeInfo(a1, a3, &v19);
    re::TypeInfo::TypeInfo(v24, &v19 + 8);
    if (!v25 || (v12 = *v24[2], *&v19 = *(&v25 + 1), *(&v19 + 1) = v12, v20 = -1, (v13 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v24[0] + 768, &v19)) == 0) || !*v13)
    {
      v14 = *a3;
      v22 = v25;
      v23 = v14;
      re::TypeRegistry::addAttribute(a1, &v23, 0xFFFFFFFFLL, &v22, re::internal::less<re::DynamicString>, 0);
    }

    re::StackScratchAllocator::StackScratchAllocator(v21);
    re::TypeBuilder::TypeBuilder(&v19, v21);
    v15 = *a3;
    v17 = *a4;
    v18 = v15;
    re::TypeBuilder::beginDictionaryType(&v19, a2, 1, 0x30uLL, 8uLL, &v18, &v17);
    re::TypeBuilder::setConstructor(&v19, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(&v19, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setDictionaryAccessors(&v19, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
    re::TypeBuilder::setDictionaryIterator(&v19, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(a5, &v19, a1);
    re::TypeBuilder::~TypeBuilder(&v19, v16);
    re::StackScratchAllocator::~StackScratchAllocator(v21);
  }
}

void *re::IntrospectionHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4, const re::DynamicString *a5)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  re::DynamicString::setCapacity(&v12, 0);
  v10 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a4, a5, &v12);
  if (v12 && (v13 & 1) != 0)
  {
    (*(*v12 + 40))();
  }

  re::introspectionInitElement(a2, a3, a1[8], v10);
  return v10;
}

uint64_t re::IntrospectionHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 20;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 80 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 40);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 80 * v6) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v6) = v11;
LABEL_16:
    ;
  }

  while (v6 != v5);
  return result;
}

re::DynamicString *re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, re::DynamicString *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v12, a2);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, v6, &v9, a2);
  v7 = HIDWORD(v10);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    return re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::DynamicString>(a1, &v9, a2, a3);
  }

  ++*(a1 + 40);
  return re::DynamicString::operator=((*(a1 + 16) + 80 * v7 + 40), a3);
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

  return re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

    re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(a1, a3, 3);
  }
}

re::DynamicString *re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, const re::DynamicString *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 80 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 20;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 80 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 80 * *(a1 + 32) + 40;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

void *re::IntrospectionFixedArray<re::SkinningInfluence>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionFixedArray<re::SkinningInfluence>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionFixedArray<re::SkinningInfluence>::construct(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void re::IntrospectionFixedArray<re::SkinningInfluence>::init(uint64_t a1, void *a2, re *a3, int a4, unint64_t a5)
{
  v26 = *MEMORY[0x1E69E9840];
  re::FixedArray<re::SkinningInfluence>::init<>(a2, a3, a5);
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
      v10 += 8;
    }

    while (a5 != v11);
  }
}

unint64_t re::IntrospectionFixedArray<re::SkinningInfluence>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 16) + 8 * a3;
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

  return *(a2 + 16) + 8 * a3;
}

void *re::TypeBuilderHelper::registerFixedArray<re::SkinningInfluence>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = a3;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::SkinningInfluence>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);

  return re::FixedArray<CoreIKTransform>::deinit(a1);
}

void re::TypeBuilderHelper::registerFixedArray<re::SkinningInfluence>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t *a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);
  re::FixedArray<re::SkinningInfluence>::init<>(a1, a3, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = a1[1];
    if (v9)
    {
      v10 = a1[2];
      v11 = 8 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 8;
        v11 -= 8;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerFixedArray<re::SkinningInfluence>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 16) + 8 * a2;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::SkinningInfluence>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::SkinningInfluence>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1)
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
    return *(v2 + 16) + 8 * v1;
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::SkinningInfluence>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionFixedArray<re::MeshAssetContactDeformerTarget>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionFixedArray<re::MeshAssetContactDeformerTarget>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionFixedArray<re::MeshAssetContactDeformerTarget>::construct(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void re::IntrospectionFixedArray<re::MeshAssetContactDeformerTarget>::init(uint64_t a1, void *a2, re *a3, int a4, unint64_t a5)
{
  v26 = *MEMORY[0x1E69E9840];
  re::FixedArray<re::MeshAssetContactDeformerTarget>::init<>(a2, a3, a5);
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
      v10 += 32;
    }

    while (a5 != v11);
  }
}

unint64_t re::IntrospectionFixedArray<re::MeshAssetContactDeformerTarget>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 16) + 32 * a3;
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

  return *(a2 + 16) + 32 * a3;
}

void *re::TypeBuilderHelper::registerFixedArray<re::MeshAssetContactDeformerTarget>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = a3;
  return result;
}

void *re::TypeBuilderHelper::registerFixedArray<re::MeshAssetContactDeformerTarget>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(void *a1)
{
  re::FixedArray<re::MeshAssetContactDeformerTarget>::deinit(a1);

  return re::FixedArray<re::MeshAssetContactDeformerTarget>::deinit(a1);
}

void re::TypeBuilderHelper::registerFixedArray<re::MeshAssetContactDeformerTarget>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(void *a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  re::FixedArray<re::MeshAssetContactDeformerTarget>::deinit(a1);
  re::FixedArray<re::MeshAssetContactDeformerTarget>::init<>(a1, a3, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = a1[1];
    if (v9)
    {
      v10 = a1[2];
      v11 = 32 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 32;
        v11 -= 32;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerFixedArray<re::MeshAssetContactDeformerTarget>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 16) + 32 * a2;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::MeshAssetContactDeformerTarget>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::MeshAssetContactDeformerTarget>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1)
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
    return *(v2 + 16) + 32 * v1;
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::MeshAssetContactDeformerTarget>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MeshAssetSkeleton>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshAssetSkeleton>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshAssetSkeleton>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshAssetSkeleton>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshAssetSkeleton>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshAssetSkeleton>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::MeshAssetSkeleton>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshAssetSkeleton>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::MeshAssetSkeleton>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshAssetSkeleton>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11[0] = 0;
  v11[1] = &str_67;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  re::DynamicArray<re::MeshAssetSkeleton>::add(this, v11);
  if (*(&v16 + 1))
  {
    if (v17)
    {
      (*(**(&v16 + 1) + 40))();
      v17 = 0uLL;
    }

    *(&v16 + 1) = 0;
  }

  if (v15)
  {
    if (*(&v15 + 1))
    {
      (*(*v15 + 40))();
      *(&v15 + 1) = 0;
      *&v16 = 0;
    }

    *&v15 = 0;
  }

  if (*(&v13 + 1))
  {
    if (v14)
    {
      (*(**(&v13 + 1) + 40))();
      v14 = 0uLL;
    }

    *(&v13 + 1) = 0;
  }

  v8 = re::FixedArray<re::StringID>::deinit(&v12);
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  v9 = (*(this + 4) + 112 * *(this + 2) - 112);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::MeshAssetSkeleton>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
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

    v13 = 789;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 112 * a3;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
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

    v13 = 797;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 112 * a3;
}

_anonymous_namespace_ *re::DynamicArray<re::MeshAssetSkeleton>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::MeshAssetSkeleton>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = (*(v3 + 4) + 112 * v4);
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  v5[1] = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = 0;
  v7 = a2[3];
  v5[2] = a2[2];
  v5[3] = v7;
  a2[2] = 0;
  a2[3] = 0;
  v8 = v5[4];
  v5[4] = a2[4];
  a2[4] = v8;
  v5[5] = 0;
  v5[6] = 0;
  v5[7] = 0;
  v9 = a2[6];
  v5[5] = a2[5];
  v5[6] = v9;
  a2[5] = 0;
  a2[6] = 0;
  v10 = v5[7];
  v5[7] = a2[7];
  a2[7] = v10;
  v5[8] = 0;
  v5[9] = 0;
  v5[10] = 0;
  v11 = a2[9];
  v5[8] = a2[8];
  v5[9] = v11;
  a2[8] = 0;
  a2[9] = 0;
  v12 = v5[10];
  v5[10] = a2[10];
  a2[10] = v12;
  v5[11] = 0;
  v5[12] = 0;
  v5[13] = 0;
  v13 = a2[12];
  v5[11] = a2[11];
  v5[12] = v13;
  a2[11] = 0;
  a2[12] = 0;
  v14 = v5[13];
  v5[13] = a2[13];
  a2[13] = v14;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkeleton>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshAssetSkeleton>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkeleton>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::MeshAssetSkeleton>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::MeshAssetSkeleton>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshAssetSkeleton>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::MeshAssetSkeleton>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 112 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 112;
        v11 -= 112;
      }

      while (v11);
    }
  }
}

void re::DynamicArray<re::MeshAssetSkeleton>::clear(uint64_t result)
{
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 112 * v2;
    do
    {
      re::FixedArray<CoreIKTransform>::deinit(v3 + 11);
      re::FixedArray<CoreIKTransform>::deinit(v3 + 8);
      re::FixedArray<CoreIKTransform>::deinit(v3 + 5);
      re::FixedArray<re::StringID>::deinit(v3 + 2);
      re::StringID::destroyString(v3);
      v3 += 14;
      v4 -= 112;
    }

    while (v4);
  }

  ++*(result + 24);
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkeleton>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkeleton>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkeleton>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 112 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->array->version()) DynamicArray elements may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkeleton>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MeshAssetBlendShapeData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshAssetBlendShapeData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshAssetBlendShapeData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshAssetBlendShapeData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshAssetBlendShapeData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::MeshAssetBlendShapeData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshAssetBlendShapeData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::MeshAssetBlendShapeData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshAssetBlendShapeData>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11[0] = 0;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v11[1] = &str_67;
  re::DynamicArray<re::MeshAssetBlendShapeData>::add(this, v11);
  v8 = re::FixedArray<re::BlendShapeDefinition>::deinit(v12);
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  v9 = (*(this + 4) + 56 * *(this + 2) - 56);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::MeshAssetBlendShapeData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
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

    v13 = 789;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 56 * a3;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
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

    v13 = 797;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 56 * a3;
}

_anonymous_namespace_ *re::DynamicArray<re::MeshAssetBlendShapeData>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::MeshAssetBlendShapeData>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = *(v3 + 4) + 56 * v4;
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 8) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  v7 = a2[3];
  *(v5 + 16) = a2[2];
  *(v5 + 24) = v7;
  a2[2] = 0;
  a2[3] = 0;
  v8 = *(v5 + 32);
  *(v5 + 32) = a2[4];
  a2[4] = v8;
  *(v5 + 40) = a2[5];
  *(v5 + 48) = *(a2 + 24);
  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::MeshAssetBlendShapeData>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::MeshAssetBlendShapeData>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::MeshAssetBlendShapeData>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBlendShapeData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshAssetBlendShapeData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBlendShapeData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::MeshAssetBlendShapeData>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshAssetBlendShapeData>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::MeshAssetBlendShapeData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 56 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 56;
        v11 -= 56;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBlendShapeData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 56 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBlendShapeData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBlendShapeData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 56 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->array->version()) DynamicArray elements may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBlendShapeData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MeshAssetSkinningData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshAssetSkinningData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshAssetSkinningData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshAssetSkinningData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshAssetSkinningData>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshAssetSkinningData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::MeshAssetSkinningData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshAssetSkinningData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::MeshAssetSkinningData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshAssetSkinningData>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11 = 0xFFFFFFFFLL;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  v8 = re::DynamicArray<re::MeshAssetSkinningData>::add(this, &v11);
  if (v15)
  {
    if (*(&v15 + 1))
    {
      (*(*v15 + 40))(v8);
      *(&v15 + 1) = 0;
      *&v16 = 0;
    }

    *&v15 = 0;
  }

  if (*(&v13 + 1))
  {
    if (v14)
    {
      (*(**(&v13 + 1) + 40))(v8);
      v14 = 0uLL;
    }

    *(&v13 + 1) = 0;
  }

  if (v12 && *(&v12 + 1))
  {
    (*(*v12 + 40))(v8);
  }

  v9 = (*(this + 4) + 144 * *(this + 2) - 144);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::MeshAssetSkinningData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
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

    v13 = 789;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 144 * a3;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
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

    v13 = 797;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 144 * a3;
}

void *re::DynamicArray<re::MeshAssetSkinningData>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 144 * a2 + 56;
    v9 = a2;
    do
    {
      v10 = (v3[4] + v8);
      re::FixedArray<CoreIKTransform>::deinit(v10);
      re::FixedArray<CoreIKTransform>::deinit(v10 - 3);
      result = re::FixedArray<CoreIKTransform>::deinit(v10 - 6);
      ++v9;
      v8 += 144;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::MeshAssetSkinningData>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 144 * v4;
      do
      {
        v7 = v3[4] + v6;
        *v7 = -1;
        *(v7 + 8) = 0uLL;
        *(v7 + 24) = 0uLL;
        *(v7 + 40) = 0uLL;
        *(v7 + 56) = 0uLL;
        *(v7 + 72) = 0uLL;
        *(v7 + 88) = 0uLL;
        *(v7 + 104) = 0uLL;
        *(v7 + 120) = 0uLL;
        *(v7 + 136) = 0;
        v6 += 144;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkinningData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshAssetSkinningData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkinningData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::MeshAssetSkinningData>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::MeshAssetSkinningData>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshAssetSkinningData>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::MeshAssetSkinningData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 144 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 144;
        v11 -= 144;
      }

      while (v11);
    }
  }
}

uint64_t re::DynamicArray<re::MeshAssetSkinningData>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = 144 * v2;
    v4 = (*(result + 32) + 56);
    do
    {
      re::FixedArray<CoreIKTransform>::deinit(v4);
      re::FixedArray<CoreIKTransform>::deinit(v4 - 3);
      result = re::FixedArray<CoreIKTransform>::deinit(v4 - 6);
      v4 += 18;
      v3 -= 144;
    }

    while (v3);
  }

  ++*(v1 + 24);
  return result;
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkinningData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 144 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkinningData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkinningData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 144 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->array->version()) DynamicArray elements may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkinningData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MeshAssetPart>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshAssetPart>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshAssetPart>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshAssetPart>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshAssetPart>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshAssetPart>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::MeshAssetPart>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshAssetPart>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::MeshAssetPart>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshAssetPart>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0uLL;
  v17 = 0;
  v26 = 0u;
  memset(v24, 0, sizeof(v24));
  memset(v12, 0, sizeof(v12));
  BYTE12(v13) = 1;
  DWORD1(v14) = 1;
  WORD4(v14) = -1;
  v16 = &str_67;
  v8.i64[0] = 0x7F0000007FLL;
  v8.i64[1] = 0x7F0000007FLL;
  v18 = vnegq_f32(v8);
  v19 = v8;
  v25 = 0x7FFFFFFF00000000;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  re::DynamicArray<re::MeshAssetPart>::add(this, v12);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v24[8]);
  if (BYTE8(v15))
  {
    if (BYTE8(v15))
    {
    }
  }

  *(&v15 + 1) = 0;
  v16 = &str_67;
  re::DynamicArray<re::MeshAssetBuffer>::deinit(v12);
  v10 = (*(this + 4) + (*(this + 2) << 8) - 256);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v10);
  return v10;
}

unint64_t re::IntrospectionDynamicArray<re::MeshAssetPart>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
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

    v13 = 789;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 8);
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
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

    v13 = 797;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 8);
}

void *re::DynamicArray<re::MeshAssetPart>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v10 = a2 << 8;
    v11 = a2;
    do
    {
      v12 = v3[4] + v10;
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v12 + 200));
      re::StringID::destroyString((v12 + 72));
      result = re::DynamicArray<re::MeshAssetBuffer>::deinit(v12);
      ++v11;
      v10 += 256;
    }

    while (v11 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::MeshAssetPart>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = (v4 << 8) | 0x80;
      v7.i64[0] = 0x7F0000007FLL;
      v7.i64[1] = 0x7F0000007FLL;
      v8 = vnegq_f32(v7);
      do
      {
        v9 = v3[4] + v6;
        *(v9 - 96) = 0;
        *(v9 - 120) = 0;
        *(v9 - 112) = 0;
        *(v9 - 128) = 0;
        *(v9 - 104) = 0;
        *(v9 - 88) = 0;
        *(v9 - 84) = 1;
        *(v9 - 80) = 0x100000000;
        *(v9 - 72) = -1;
        *(v9 - 68) = 0;
        *(v9 - 56) = 0;
        *(v9 - 48) = &str_67;
        *(v9 - 32) = v8;
        *(v9 - 16) = v7;
        *(v9 + 66) = 0;
        *(v9 + 68) = 0;
        *v9 = 0uLL;
        *(v9 + 16) = 0uLL;
        *(v9 + 32) = 0uLL;
        *(v9 + 48) = 0uLL;
        *(v9 + 64) = 0;
        *(v9 + 104) = 0uLL;
        *(v9 + 88) = 0uLL;
        *(v9 + 72) = 0uLL;
        v6 += 256;
        *(v9 + 108) = 0x7FFFFFFF;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetPart>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshAssetPart>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetPart>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::MeshAssetPart>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::MeshAssetPart>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshAssetPart>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::MeshAssetPart>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = v9 << 8;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 256;
        v11 -= 256;
      }

      while (v11);
    }
  }
}

uint64_t re::DynamicArray<re::MeshAssetPart>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = v2 << 8;
    do
    {
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v3 + 200));
      re::StringID::destroyString((v3 + 72));
      result = re::DynamicArray<re::MeshAssetBuffer>::deinit(v3);
      v3 += 256;
      v4 -= 256;
    }

    while (v4);
  }

  ++*(v1 + 24);
  return result;
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetPart>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + (a2 << 8);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetPart>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetPart>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + (v5 << 8);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->array->version()) DynamicArray elements may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetPart>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MeshLodLevelInfo>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshLodLevelInfo>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshLodLevelInfo>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshLodLevelInfo>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshLodLevelInfo>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshLodLevelInfo>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::MeshLodLevelInfo>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshLodLevelInfo>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::MeshLodLevelInfo>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshLodLevelInfo>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  re::DynamicArray<re::MeshLodLevelInfo>::add(this, v10);
  if (*(&v10[0] + 1) && *(&v11 + 1))
  {
    (*(**(&v10[0] + 1) + 40))();
  }

  v8 = (*(this + 4) + 48 * *(this + 2) - 48);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<re::MeshLodLevelInfo>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
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

    v13 = 789;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 48 * a3;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
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

    v13 = 797;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 48 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshLodLevelInfo>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshLodLevelInfo>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshLodLevelInfo>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::MeshLodLevelInfo>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::MeshLodLevelInfo>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshLodLevelInfo>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::MeshLodLevelInfo>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 48 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 48;
        v11 -= 48;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshLodLevelInfo>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshLodLevelInfo>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshLodLevelInfo>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 48 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->array->version()) DynamicArray elements may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshLodLevelInfo>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MeshAssetContactDeformerData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshAssetContactDeformerData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshAssetContactDeformerData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshAssetContactDeformerData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshAssetContactDeformerData>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshAssetContactDeformerData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::MeshAssetContactDeformerData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshAssetContactDeformerData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::MeshAssetContactDeformerData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshAssetContactDeformerData>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11[0] = 0;
  memset(v12, 0, sizeof(v12));
  v11[1] = &str_67;
  re::DynamicArray<re::MeshAssetContactDeformerData>::add(this, v11);
  v8 = re::FixedArray<re::MeshAssetContactDeformerTarget>::deinit(v12);
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  v9 = (*(this + 4) + 48 * *(this + 2) - 48);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::MeshAssetContactDeformerData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
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

    v13 = 789;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 48 * a3;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
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

    v13 = 797;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 48 * a3;
}

_anonymous_namespace_ *re::DynamicArray<re::MeshAssetContactDeformerData>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::MeshAssetContactDeformerData>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = *(v3 + 4) + 48 * v4;
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 8) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  v7 = a2[3];
  *(v5 + 16) = a2[2];
  *(v5 + 24) = v7;
  a2[2] = 0;
  a2[3] = 0;
  v8 = *(v5 + 32);
  *(v5 + 32) = a2[4];
  a2[4] = v8;
  *(v5 + 40) = *(a2 + 20);
  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::MeshAssetContactDeformerData>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::MeshAssetContactDeformerData>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::MeshAssetContactDeformerData>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetContactDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshAssetContactDeformerData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetContactDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::MeshAssetContactDeformerData>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::MeshAssetContactDeformerData>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshAssetContactDeformerData>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::MeshAssetContactDeformerData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 48 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 48;
        v11 -= 48;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetContactDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetContactDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetContactDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 48 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->array->version()) DynamicArray elements may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetContactDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MeshAssetSmoothDeformerData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshAssetSmoothDeformerData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshAssetSmoothDeformerData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshAssetSmoothDeformerData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshAssetSmoothDeformerData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::MeshAssetSmoothDeformerData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshAssetSmoothDeformerData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::MeshAssetSmoothDeformerData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshAssetSmoothDeformerData>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11[0] = 0;
  v11[1] = &str_67;
  v11[2] = 0;
  v8 = re::DynamicArray<re::MeshAssetSmoothDeformerData>::add(this, v11);
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  v9 = (*(this + 4) + 24 * *(this + 2) - 24);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::MeshAssetSmoothDeformerData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
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

    v13 = 789;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 24 * a3;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
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

    v13 = 797;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 24 * a3;
}

_anonymous_namespace_ *re::DynamicArray<re::MeshAssetSmoothDeformerData>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::MeshAssetSmoothDeformerData>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = *(v3 + 4) + 24 * v4;
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 8) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  *(v5 + 16) = *(a2 + 8);
  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::MeshAssetSmoothDeformerData>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::MeshAssetSmoothDeformerData>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::MeshAssetSmoothDeformerData>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSmoothDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshAssetSmoothDeformerData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSmoothDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::MeshAssetSmoothDeformerData>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshAssetSmoothDeformerData>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::MeshAssetSmoothDeformerData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 24 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 24;
        v11 -= 24;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSmoothDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 24 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSmoothDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSmoothDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 24 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->array->version()) DynamicArray elements may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSmoothDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MeshAssetWrapDeformerData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshAssetWrapDeformerData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshAssetWrapDeformerData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshAssetWrapDeformerData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshAssetWrapDeformerData>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshAssetWrapDeformerData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::MeshAssetWrapDeformerData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshAssetWrapDeformerData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::MeshAssetWrapDeformerData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshAssetWrapDeformerData>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11[0] = 0;
  v12 = 0;
  v17 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  v11[1] = &str_67;
  v13 = &str_67;
  v18 = 0uLL;
  re::DynamicArray<re::MeshAssetWrapDeformerData>::add(this, v11);
  if (v17)
  {
    if (*(&v17 + 1))
    {
      (*(*v17 + 40))();
      *(&v17 + 1) = 0;
      *&v18 = 0;
    }

    *&v17 = 0;
  }

  if (*(&v15 + 1))
  {
    if (v16)
    {
      (*(**(&v15 + 1) + 40))();
      v16 = 0uLL;
    }

    *(&v15 + 1) = 0;
  }

  v8 = v14;
  if (v14)
  {
    if (*(&v14 + 1))
    {
      v8 = (*(*v14 + 40))();
      *(&v14 + 1) = 0;
      *&v15 = 0;
    }

    *&v14 = 0;
  }

  if (v12)
  {
    if (v12)
    {
    }
  }

  v12 = 0;
  v13 = &str_67;
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  v9 = (*(this + 4) + 112 * *(this + 2) - 112);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::MeshAssetWrapDeformerData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
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

    v13 = 789;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 112 * a3;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
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

    v13 = 797;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 112 * a3;
}

_anonymous_namespace_ *re::DynamicArray<re::MeshAssetWrapDeformerData>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::MeshAssetWrapDeformerData>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = *(v3 + 4) + 112 * v4;
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 8) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v7 = a2[2];
  *(v5 + 16) = *(v5 + 16) & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  *(v5 + 16) = a2[2] & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  *(v5 + 24) = a2[3];
  a2[2] = 0;
  a2[3] = &str_67;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  v8 = a2[5];
  *(v5 + 32) = a2[4];
  *(v5 + 40) = v8;
  a2[4] = 0;
  a2[5] = 0;
  v9 = *(v5 + 48);
  *(v5 + 48) = a2[6];
  a2[6] = v9;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  v10 = a2[8];
  *(v5 + 56) = a2[7];
  *(v5 + 64) = v10;
  a2[7] = 0;
  a2[8] = 0;
  v11 = *(v5 + 72);
  *(v5 + 72) = a2[9];
  a2[9] = v11;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  *(v5 + 96) = 0;
  v12 = a2[11];
  *(v5 + 80) = a2[10];
  *(v5 + 88) = v12;
  a2[10] = 0;
  a2[11] = 0;
  v13 = *(v5 + 96);
  *(v5 + 96) = a2[12];
  a2[12] = v13;
  *(v5 + 104) = *(a2 + 52);
  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::MeshAssetWrapDeformerData>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::MeshAssetWrapDeformerData>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::MeshAssetWrapDeformerData>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetWrapDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshAssetWrapDeformerData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetWrapDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::MeshAssetWrapDeformerData>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::MeshAssetWrapDeformerData>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshAssetWrapDeformerData>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::MeshAssetWrapDeformerData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 112 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 112;
        v11 -= 112;
      }

      while (v11);
    }
  }
}

void re::DynamicArray<re::MeshAssetWrapDeformerData>::clear(uint64_t result)
{
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 112 * v2;
    do
    {
      re::FixedArray<CoreIKTransform>::deinit(v3 + 10);
      re::FixedArray<CoreIKTransform>::deinit(v3 + 7);
      re::FixedArray<CoreIKTransform>::deinit(v3 + 4);
      re::StringID::destroyString((v3 + 2));
      re::StringID::destroyString(v3);
      v3 += 14;
      v4 -= 112;
    }

    while (v4);
  }

  ++*(result + 24);
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetWrapDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetWrapDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetWrapDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 112 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->array->version()) DynamicArray elements may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetWrapDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MeshAssetOffsetsDeformerData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshAssetOffsetsDeformerData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshAssetOffsetsDeformerData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshAssetOffsetsDeformerData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshAssetSmoothDeformerData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::MeshAssetOffsetsDeformerData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshAssetSmoothDeformerData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::MeshAssetSmoothDeformerData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshAssetOffsetsDeformerData>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11[0] = 0;
  v11[1] = &str_67;
  v11[2] = 0;
  v8 = re::DynamicArray<re::MeshAssetSmoothDeformerData>::add(this, v11);
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  v9 = (*(this + 4) + 24 * *(this + 2) - 24);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::MeshAssetOffsetsDeformerData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
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

    v13 = 789;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 24 * a3;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
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

    v13 = 797;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 24 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetOffsetsDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshAssetSmoothDeformerData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetOffsetsDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::MeshAssetSmoothDeformerData>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshAssetSmoothDeformerData>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::MeshAssetSmoothDeformerData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 24 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 24;
        v11 -= 24;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetOffsetsDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 24 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetOffsetsDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetOffsetsDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 24 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->array->version()) DynamicArray elements may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetOffsetsDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::DynamicArray<unsigned int>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::DynamicArray<unsigned int>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::DynamicArray<unsigned int>>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::DynamicArray<unsigned int>>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::DynamicArray<unsigned int>>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::DynamicArray<float>>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::DynamicArray<unsigned int>>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v12 = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  re::DynamicArray<re::DynamicArray<unsigned int>>::add(this, v10);
  if (v10[0] && v12)
  {
    (*(*v10[0] + 40))();
  }

  v8 = (*(this + 4) + 40 * *(this + 2) - 40);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<re::DynamicArray<unsigned int>>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
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

    v13 = 789;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 40 * a3;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
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

    v13 = 797;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 40 * a3;
}

_anonymous_namespace_ *re::DynamicArray<re::DynamicArray<unsigned int>>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::DynamicArray<unsigned int>>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = *(v3 + 4) + 40 * v4;
  *(v5 + 32) = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *v5 = 0;
  *(v5 + 24) = 0;
  v6 = *(a2 + 8);
  *v5 = *a2;
  *(v5 + 8) = v6;
  *a2 = 0;
  *(a2 + 8) = 0;
  v7 = *(v5 + 16);
  *(v5 + 16) = *(a2 + 16);
  *(a2 + 16) = v7;
  v8 = *(v5 + 32);
  *(v5 + 32) = *(a2 + 32);
  *(a2 + 32) = v8;
  ++*(a2 + 24);
  ++*(v5 + 24);
  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::DynamicArray<unsigned int>>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned int>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned int>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::DynamicArray<unsigned int>>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::DynamicArray<float>>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 40 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 40;
        v11 -= 40;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned int>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 40 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned int>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned int>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 40 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->array->version()) DynamicArray elements may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned int>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::DynamicArray<unsigned char>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::DynamicArray<unsigned char>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::DynamicArray<unsigned char>>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::DynamicArray<unsigned char>>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::DynamicArray<unsigned char>>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::DynamicArray<float>>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::DynamicArray<unsigned char>>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v12 = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  re::DynamicArray<re::DynamicArray<unsigned int>>::add(this, v10);
  if (v10[0] && v12)
  {
    (*(*v10[0] + 40))();
  }

  v8 = (*(this + 4) + 40 * *(this + 2) - 40);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<re::DynamicArray<unsigned char>>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
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

    v13 = 789;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 40 * a3;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
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

    v13 = 797;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 40 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::DynamicArray<unsigned int>>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::DynamicArray<float>>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 40 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 40;
        v11 -= 40;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 40 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 40 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->array->version()) DynamicArray elements may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MeshAsssetModelVVMTableOfContents>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshAsssetModelVVMTableOfContents>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshAsssetModelVVMTableOfContents>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshAsssetModelVVMTableOfContents>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::MeshAsssetModelVVMTableOfContents>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshAsssetModelVVMTableOfContents>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v8 = 0uLL;
  v24 = 0u;
  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  v20 = 0u;
  v21 = 0u;
  memset(v19, 0, sizeof(v19));
  v9 = *(a4 + 8);
  v10 = *(a4 + 16);
  if (v10 >= v9)
  {
    v11 = v10 + 1;
    if (v9 < v10 + 1)
    {
      if (*a4)
      {
        v12 = 2 * v9;
        v13 = v9 == 0;
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

        re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::setCapacity(a4, v15);
      }

      else
      {
        re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::setCapacity(a4, v11);
        ++*(a4 + 24);
      }

      v8 = 0uLL;
    }

    v10 = *(a4 + 16);
  }

  v16 = *(a4 + 32) + 208 * v10;
  *v16 = 0;
  *(v16 + 8) = v8;
  *(v16 + 24) = 0;
  *(v16 + 40) = 0;
  *(v16 + 32) = 1;
  *(v16 + 48) = v8;
  *(v16 + 64) = 0;
  *(v16 + 80) = 0;
  *(v16 + 72) = 1;
  *(v16 + 88) = v8;
  *(v19 + 8) = v8;
  *(v16 + 104) = 0;
  *(&v19[1] + 1) = 0;
  *(v16 + 120) = 0;
  *(&v20 + 1) = 0;
  LODWORD(v20) = 1;
  *(v16 + 112) = 1;
  *(v16 + 128) = v8;
  v21 = v8;
  *(v16 + 144) = 0;
  *&v22 = 0;
  *(v16 + 160) = 0;
  *&v23[0] = 0;
  DWORD2(v22) = 1;
  *(v16 + 152) = 1;
  *(v16 + 168) = v8;
  *(v23 + 8) = v8;
  *(v16 + 184) = *(&v23[1] + 1);
  *(&v23[1] + 1) = 0;
  *(v16 + 200) = *(&v24 + 1);
  *(&v24 + 1) = 0;
  LODWORD(v24) = v24 + 1;
  *(v16 + 192) = 1;
  ++*(a4 + 16);
  ++*(a4 + 24);
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v23 + 8);
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(&v21);
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v19 + 8);
  v17 = (*(a4 + 32) + 208 * *(a4 + 16) - 208);
  re::introspectionInitElement(a2, a3, a1[6], v17);
  return v17;
}

unint64_t re::IntrospectionDynamicArray<re::MeshAsssetModelVVMTableOfContents>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
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

    v13 = 789;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 208 * a3;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
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

    v13 = 797;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 208 * a3;
}

void *re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 208 * a2 + 168;
    v9 = a2;
    do
    {
      v10 = v3[4] + v8;
      re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v10);
      re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v10 - 40);
      re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v10 - 80);
      re::DynamicArray<unsigned long>::deinit(v10 - 120);
      result = re::DynamicArray<unsigned long>::deinit(v10 - 160);
      ++v9;
      v8 += 208;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 208 * v4 + 200;
      do
      {
        v7 = (v3[4] + v6);
        *(v7 - 50) = 0;
        *(v7 - 23) = 0;
        *(v7 - 22) = 0;
        *(v7 - 24) = 0;
        *(v7 - 42) = 0;
        *v7 = 0;
        *(v7 - 10) = 0uLL;
        *(v7 - 9) = 0uLL;
        *(v7 - 32) = 0;
        *(v7 - 15) = 0uLL;
        *(v7 - 13) = 0uLL;
        *(v7 - 22) = 0;
        *(v7 - 5) = 0uLL;
        *(v7 - 4) = 0uLL;
        *(v7 - 12) = 0;
        *(v7 - 5) = 0uLL;
        *(v7 - 3) = 0uLL;
        v6 += 208;
        *(v7 - 2) = 0;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshAsssetModelVVMTableOfContents>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshAsssetModelVVMTableOfContents>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 208 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 208;
        v11 -= 208;
      }

      while (v11);
    }
  }
}

uint64_t re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = 208 * v2;
    v4 = *(result + 32) + 168;
    do
    {
      re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v4);
      re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v4 - 40);
      re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v4 - 80);
      re::DynamicArray<unsigned long>::deinit(v4 - 120);
      result = re::DynamicArray<unsigned long>::deinit(v4 - 160);
      v4 += 208;
      v3 -= 208;
    }

    while (v3);
  }

  ++*(v1 + 24);
  return result;
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAsssetModelVVMTableOfContents>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 208 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAsssetModelVVMTableOfContents>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAsssetModelVVMTableOfContents>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 208 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->array->version()) DynamicArray elements may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAsssetModelVVMTableOfContents>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MeshAssetModel>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshAssetModel>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshAssetModel>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshAssetModel>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshAssetModel>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshAssetModel>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::MeshAssetModel>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshAssetModel>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::MeshAssetModel>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshAssetModel>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v23 = 0;
  v13[0] = 0;
  v13[1] = &str_67;
  v8.i64[0] = 0x7F0000007FLL;
  v8.i64[1] = 0x7F0000007FLL;
  v14 = vnegq_f32(v8);
  v15 = v8;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  memset(v22, 0, sizeof(v22));
  memset(v24, 0, sizeof(v24));
  v9 = *(this + 2);
  if (v9 >= *(this + 1))
  {
    re::DynamicArray<re::MeshAssetModel>::growCapacity(this, v9 + 1);
    v9 = *(this + 2);
  }

  re::MeshAssetModel::MeshAssetModel(*(this + 4) + (v9 << 9), v13);
  ++*(this + 2);
  ++*(this + 6);
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(&v24[36]);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v24[31]);
  re::DynamicArray<re::MeshAssetWrapDeformerData>::deinit(&v24[26]);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v24[21]);
  re::DynamicArray<re::MeshAssetContactDeformerData>::deinit(&v24[16]);
  re::DynamicArray<re::MeshLodLevelInfo>::deinit(&v24[11]);
  re::DynamicArray<re::MeshAssetSkeleton>::deinit(&v24[6]);
  re::DynamicArray<re::MeshAssetPart>::deinit(&v24[1]);
  re::DynamicArray<re::MeshAssetSkinningData>::deinit(v22 + 8);
  v10 = re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(v20);
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  v11 = (*(this + 4) + (*(this + 2) << 9) - 512);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v11);
  return v11;
}

unint64_t re::IntrospectionDynamicArray<re::MeshAssetModel>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
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

    v13 = 789;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 9);
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
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

    v13 = 797;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 9);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetModel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshAssetModel>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetModel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    re::ObjectHelper::destroy<re::MeshAssetModel>(*(a1 + 32), (*(a1 + 32) + (v8 << 9)));
  }

  else
  {
    re::DynamicArray<re::MeshAssetModel>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshAssetModel>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::MeshAssetModel>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v14);
    re::TypeInfo::TypeInfo(v13, &v15);
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = v10 << 9;
      do
      {
        re::TypeInfo::destruct(v13, v11, a3, 0);
        re::TypeInfo::construct(v13, v11, a3, 0);
        v11 += 512;
        v12 -= 512;
      }

      while (v12);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetModel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + (a2 << 9);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetModel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetModel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + (v5 << 9);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->array->version()) DynamicArray elements may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetModel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MeshAssetInstance>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshAssetInstance>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshAssetInstance>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshAssetInstance>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshAssetInstance>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshAssetInstance>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::MeshAssetInstance>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshAssetInstance>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::MeshAssetInstance>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshAssetInstance>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v11[0].n128_u64[0] = 0;
  memset(&v11[1], 0, 80);
  v11[0].n128_u64[1] = &str_67;
  re::DynamicArray<re::MeshAssetInstance>::add(this, v11);
  if (v11[0].n128_u8[0])
  {
    if (v11[0].n128_u8[0])
    {
    }
  }

  v9 = (*(this + 4) + 96 * *(this + 2) - 96);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::MeshAssetInstance>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
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

    v13 = 789;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 96 * a3;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
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

    v13 = 797;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 96 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetInstance>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshAssetInstance>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetInstance>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::MeshAssetInstance>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::MeshAssetInstance>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshAssetInstance>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::MeshAssetInstance>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 96 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 96;
        v11 -= 96;
      }

      while (v11);
    }
  }
}

void re::DynamicArray<re::MeshAssetInstance>::clear(uint64_t result)
{
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 96 * v2;
    do
    {
      re::StringID::destroyString(v3);
      v3 = (v3 + 96);
      v4 -= 96;
    }

    while (v4);
  }

  ++*(result + 24);
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetInstance>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 96 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetInstance>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetInstance>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 96 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->array->version()) DynamicArray elements may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetInstance>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t re::DynamicArray<re::MeshAssetModel>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::MeshAssetModel>::copy(a1, a2);
      }

      else
      {
        v6 = *(a1 + 16);
        *(a1 + 16) = 0;
        re::ObjectHelper::destroy<re::MeshAssetModel>(*(a1 + 32), (*(a1 + 32) + (v6 << 9)));
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::MeshAssetModel>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::MeshAssetModel>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::MeshAssetInstance>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::MeshAssetInstance>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::MeshAssetInstance>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::MeshAssetInstance>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::MeshAssetInstance>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t *std::__copy_impl::operator()[abi:nn200100]<re::MeshAssetSkeleton const*,re::MeshAssetSkeleton const*,re::MeshAssetSkeleton*>(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      re::StringID::operator=((a3 + v6 * 8), &v5[v6]);
      re::FixedArray<re::StringID>::operator=((a3 + v6 * 8 + 16), &v5[v6 + 2]);
      re::FixedArray<unsigned int>::operator=((a3 + v6 * 8 + 40), &v5[v6 + 5]);
      re::FixedArray<re::GenericSRT<float>>::operator=((a3 + v6 * 8 + 64), &v5[v6 + 8]);
      result = re::FixedArray<re::Matrix4x4<float>>::operator=((a3 + v6 * 8 + 88), &v5[v6 + 11]);
      v6 += 14;
    }

    while (&v5[v6] != a2);
  }

  return result;
}

_anonymous_namespace_ *re::BucketArray<unsigned short *,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<unsigned short *,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<unsigned short *,32ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
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

uint64_t *re::VideoFileAsset::assetType(re::VideoFileAsset *this)
{
  {
    re::VideoFileAsset::assetType(void)::type = "VideoFile";
    qword_1EE1C70C8 = 0;
    re::AssetType::generateCompiledExtension(&re::VideoFileAsset::assetType(void)::type);
  }

  return &re::VideoFileAsset::assetType(void)::type;
}

re::VideoFileAsset *re::VideoFileAsset::VideoFileAsset(re::VideoFileAsset *this)
{
  *this = &unk_1F5CC75C8;
  *(this + 8) = 0u;
  v2 = (this + 8);
  *(this + 24) = 0u;
  v3 = re::DynamicString::setCapacity(v2, 0);
  v4 = re::globalAllocators(v3);
  v5 = (*(*v4[2] + 32))(v4[2], 32, 8);
  *v5 = 0u;
  v5[1] = 0u;
  *(this + 5) = v5;
  return this;
}

void re::VideoFileAsset::~VideoFileAsset(re::VideoFileAsset *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = re::globalAllocators(this);
    v4 = v3[2];
    v5 = *(v2 + 24);
    if (v5)
    {
      v6 = re::globalAllocators(v3)[2];
      (**v5)(v5);
      (*(*v6 + 40))(v6, v5);
      *(v2 + 24) = 0;
    }

    v7 = *v2;
    *v2 = 0;

    if (*(v2 + 16) == 1)
    {
      v8 = *(v2 + 8);
      if (v8)
      {
        v9 = [v8 fileSystemRepresentation];
        remove(v9, v10);
      }
    }

    v11 = *(v2 + 8);
    *(v2 + 8) = 0;

    (*(*v4 + 40))(v4, v2);
  }

  re::DynamicString::deinit((this + 8));
}

{
  re::VideoFileAsset::~VideoFileAsset(this);

  JUMPOUT(0x1E6906520);
}

re::DynamicString *re::VideoFileAssetCompiler::getCurrentCompiledAssetInfo@<X0>(re::VideoFileAssetCompiler *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = re::DynamicString::setCapacity((a2 + 8), 0);
  *a2 = 0x100000001;
  re::VideoFileAsset::assetType(v3);
  v5[0] = re::VideoFileAsset::assetType(void)::type;
  v5[1] = strlen(re::VideoFileAsset::assetType(void)::type);
  return re::DynamicString::operator=((a2 + 8), v5);
}

uint64_t re::VideoFileAssetCompiler::assetIntrospectionType(re::VideoFileAssetCompiler *this)
{
  if ((atomic_load_explicit(&qword_1EE198CB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE198CB0))
  {
    qword_1EE198CA8 = re::internal::getOrCreateInfo("VideoFileAsset", re::allocInfo_VideoFileAsset, re::initInfo_VideoFileAsset, &unk_1EE198CA0, 0);
    __cxa_guard_release(&qword_1EE198CB0);
  }

  return qword_1EE198CA8;
}

_anonymous_namespace_ *re::VideoFileAssetCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  v2 = 0;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  do
  {
    result = re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
    ++v2;
  }

  while (v2 != 5);
  return result;
}

void re::VideoFileAssetCompiler::compile(char *__s@<X1>, uint64_t a2@<X8>)
{
  v4 = strrchr(__s, 46) + 1;
  if (!strcasecmp(v4, "mp4"))
  {
    v6 = MEMORY[0x1E69874B8];
  }

  else if (!strcasecmp(v4, "m4v"))
  {
    v6 = MEMORY[0x1E6987480];
  }

  else if (!strcasecmp(v4, "3gp"))
  {
    v6 = MEMORY[0x1E6987448];
  }

  else
  {
    if (strcasecmp(v4, "mov") && strcasecmp(v4, "qt"))
    {
      goto LABEL_12;
    }

    v6 = MEMORY[0x1E69874C0];
  }

  v7 = *v6;
  if (v7)
  {
    v19 = v7;
    v8 = re::globalAllocators(v7);
    v9 = (*(*v8[2] + 32))(v8[2], 48, 8);
    re::VideoFileAsset::VideoFileAsset(v9);
    *&v20 = [(re *)v19 UTF8String];
    *(&v20 + 1) = strlen(v20);
    re::DynamicString::operator=((v9 + 1), &v20);
    v10 = MEMORY[0x1E695DFF8];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:__s];
    v12 = [v10 fileURLWithPath:v11];
    v13 = v9[5];
    v14 = *(v13 + 8);
    *(v13 + 8) = v12;

    *a2 = 1;
    *(a2 + 8) = v9;
    v15 = v19;
    goto LABEL_13;
  }

LABEL_12:
  re::DynamicString::format(&v20, "Unsupported video file extension: %s", v5, v4);
  v15 = 0;
  v16 = v20;
  v17 = v21;
  v18 = v22;
  *a2 = 0;
  *(a2 + 8) = 100;
  *(a2 + 16) = re::AssetErrorCategory(void)::instance;
  *(a2 + 24) = v16;
  *(a2 + 40) = v17;
  *(a2 + 48) = v18;
LABEL_13:
}

re *re::internal::destroyPersistent<re::VideoFileAsset>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    re::VideoFileAsset::~VideoFileAsset(v1);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

uint64_t re::VideoFileAssetLoader::introspectionType(re::VideoFileAssetLoader *this)
{
  if ((atomic_load_explicit(&qword_1EE198CB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE198CB0))
  {
    qword_1EE198CA8 = re::internal::getOrCreateInfo("VideoFileAsset", re::allocInfo_VideoFileAsset, re::initInfo_VideoFileAsset, &unk_1EE198CA0, 0);
    __cxa_guard_release(&qword_1EE198CB0);
  }

  return qword_1EE198CA8;
}

uint64_t re::VideoFileAssetLoader::createRuntimeData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  (*(*a3 + 112))(v34, a3);
  if ((v34[0] & 1) == 0)
  {
    if (!*(*(a2 + 40) + 24))
    {
      goto LABEL_6;
    }

    return 1;
  }

  v5 = (*(*a3 + 72))(a3);
  *(*(a2 + 40) + 24) = v5;
  if (v5)
  {
    return 1;
  }

LABEL_6:
  if (*(a2 + 16))
  {
    v6 = *(a2 + 24);
  }

  else
  {
    v6 = a2 + 17;
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
  if ([v7 isEqualToString:*MEMORY[0x1E69874B8]])
  {
    v8 = "mp4";
    goto LABEL_17;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E6987480]])
  {
    v8 = "m4v";
    goto LABEL_17;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E6987448]])
  {
    v8 = "3gp";
    goto LABEL_17;
  }

  if ([v7 isEqualToString:*MEMORY[0x1E69874C0]])
  {
    v8 = "mov";
LABEL_17:

    v9 = NSTemporaryDirectory();
    v10 = [v9 stringByAppendingPathComponent:@"re_video"];

    v7 = v10;
    v11 = [v10 UTF8String];
    re::DynamicString::format(&v30, "%sXXXXXX.%s", v12, v11, v8);
    if (v31)
    {
      v13 = v33;
    }

    else
    {
      v13 = v32;
    }

    v14 = mkstemps(v13, 4);
    v15 = v14;
    if (v14)
    {
      memset(__nbyte, 0, sizeof(__nbyte));
      do
      {
        if (!(*(*a3 + 16))(a3, &__nbyte[1], __nbyte))
        {
          v21 = MEMORY[0x1E695DFF8];
          if (v31)
          {
            v22 = v33;
          }

          else
          {
            v22 = v32;
          }

          v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v22];
          v24 = [v21 fileURLWithPath:v23];
          v25 = *(a2 + 40);
          v26 = *(v25 + 8);
          *(v25 + 8) = v24;

          *(*(a2 + 40) + 16) = 1;
          close(v15);
          if (v30 && (v31 & 1) != 0)
          {
            (*(*v30 + 40))();
          }

          return 1;
        }

        v16 = __nbyte[0];
        v17 = write(v15, *&__nbyte[1], __nbyte[0]);
      }

      while (v17 == v16);
      v18 = *re::assetTypesLogObjects(v17);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      v28 = 0;
      v19 = "Failed to write VideoFileAsset temporary file content";
      v20 = &v28;
    }

    else
    {
      v18 = *re::assetTypesLogObjects(v14);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      LOWORD(__nbyte[1]) = 0;
      v19 = "Unable to create VideoFileAsset temporary file";
      v20 = &__nbyte[1];
    }

    _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, v19, v20, 2u);
LABEL_27:
    if (v30)
    {
      if (v31)
      {
        (*(*v30 + 40))();
      }
    }

    goto LABEL_39;
  }

LABEL_39:
  return 0;
}

void sub_1E209CB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a14)
  {
    if (a15)
    {
      (*(*a14 + 40))();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t re::VideoFileAssetLoader::registerAsset(re *a1, uint64_t a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 40);
  if (*v2)
  {
    return 0;
  }

  v6 = v2[3];
  if (!v6)
  {
    goto LABEL_18;
  }

  (*(*v6 + 112))(v23, v6);
  v7 = MEMORY[0x1E695DFF8];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v23[1]];
  v9 = [v7 fileURLWithPath:v8];

  if (*(a2 + 16))
  {
    v10 = *(a2 + 24);
  }

  else
  {
    v10 = a2 + 17;
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];
  if ([v11 isEqualToString:*MEMORY[0x1E69874B8]])
  {
    v12 = "video/mp4";
LABEL_16:

    v24 = *MEMORY[0x1E6987BA8];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
    v25[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];

    v15 = objc_alloc(MEMORY[0x1E6988168]);
    v16 = [v15 initWithFileURL:v9 offset:v23[2] length:(*(*v6 + 64))(v6) options:v14];
    v17 = *(a2 + 40);
    v11 = *v17;
    *v17 = v16;
    goto LABEL_17;
  }

  if ([v11 isEqualToString:*MEMORY[0x1E6987480]])
  {
    v12 = "video/x-m4v";
    goto LABEL_16;
  }

  if ([v11 isEqualToString:*MEMORY[0x1E6987448]])
  {
    v12 = "video/3gpp";
    goto LABEL_16;
  }

  if ([v11 isEqualToString:*MEMORY[0x1E69874C0]])
  {
    v12 = "video/quicktime";
    goto LABEL_16;
  }

  v14 = v11;
LABEL_17:

  v2 = *(a2 + 40);
  if (*v2)
  {
    return 0;
  }

LABEL_18:
  v18 = v2[1];
  if (v18)
  {
    v19 = [MEMORY[0x1E6988168] URLAssetWithURL:v18 options:0];
    v20 = *(a2 + 40);
    v21 = *v20;
    *v20 = v19;

    if (**(a2 + 40))
    {
      return 0;
    }
  }

  v22 = *re::assetTypesLogObjects(a1);
  if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    return 2;
  }

  LOWORD(v23[0]) = 0;
  v3 = 2;
  _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "VideoFileAsset has no associated file", v23, 2u);
  return v3;
}

BOOL re::VideoFileAssetLoader::isSupportedSourceExtension(re::VideoFileAssetLoader *this, const char *a2)
{
  v3 = 0;
  do
  {
    if (!v4)
    {
      break;
    }
  }

  while (v3++ != 4);
  return v4 == 0;
}

BOOL re::VideoFileAssetLoader::serializeAssetBlob(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(a3 + 40);
  v5 = *(v4 + 24);
  if (v5)
  {
    v13 = &unk_1F5D0AE00;
    v14 = v5;
    v15 = 0;
    LODWORD(v16) = 0;
    v17 = 0;
    v18 = (*(*v5 + 40))(v5);
    v19 = 0;
    v6 = re::AssetHelper::readerToWriterStream(&v13, a2);
    if (v16)
    {
      (*(*v14 + 24))(v14);
    }
  }

  else
  {
    v7 = *(v4 + 8);
    if (v7)
    {
      re::FileStreamReader::open(&v13, [v7 fileSystemRepresentation]);
      if (v13)
      {
        v6 = re::AssetHelper::readerToWriterStream(&v14, a2);
      }

      else
      {
        v10 = *re::assetTypesLogObjects(v8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          if (v17)
          {
            v12 = v18;
          }

          else
          {
            v12 = &v17 + 1;
          }

          *buf = 136315138;
          v21 = v12;
          _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Failed to write VideoFileAsset: %s", buf, 0xCu);
        }

        v6 = 0;
      }

      if (v13 == 1)
      {
        if (v15 && v17 == 1)
        {
          fclose(v15);
        }
      }

      else if (v16 && (v17 & 1) != 0)
      {
        (*(*v16 + 40))();
      }
    }

    else
    {
      v9 = *re::assetTypesLogObjects(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v13) = 0;
        _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Writing empty VideoFileAsset", &v13, 2u);
      }

      return 0;
    }
  }

  return v6;
}

uint64_t re::Result<re::FileStreamReader,re::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 16);
    if (v2 && *(a1 + 32) == 1)
    {
      fclose(v2);
      *(a1 + 16) = 0;
      *(a1 + 32) = 0;
    }
  }

  else
  {
    re::DynamicString::deinit((a1 + 24));
  }

  return a1;
}

void *re::VideoFileAssetLoader::allocateSampleAsset(re::VideoFileAssetLoader *this)
{
  v1 = dispatch_group_create();
  dispatch_group_enter(v1);
  v2 = MEMORY[0x1E696AEC0];
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];
  v5 = [v2 stringWithFormat:@"re_videosample%@.mp4", v4];

  v6 = MEMORY[0x1E695DFF8];
  v7 = NSTemporaryDirectory();
  v8 = [v7 stringByAppendingPathComponent:v5];
  v9 = [v6 fileURLWithPath:v8];

  v10 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2re20VideoFileAssetLoader19allocateSampleAssetEv_block_invoke;
  block[3] = &unk_1E871B268;
  v11 = v9;
  v23 = v11;
  v12 = v1;
  v24 = v12;
  dispatch_group_async(v12, v10, block);

  v13 = dispatch_group_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  v14 = re::globalAllocators(v13);
  v15 = (*(*v14[2] + 32))(v14[2], 48, 8);
  re::VideoFileAsset::VideoFileAsset(v15);
  v16 = [*MEMORY[0x1E69874B8] UTF8String];
  v17 = strlen(v16);
  v25[0] = v16;
  v25[1] = v17;
  re::DynamicString::operator=((v15 + 1), v25);
  objc_storeStrong((v15[5] + 8), v9);
  *(v15[5] + 16) = 1;
  v18 = [MEMORY[0x1E6988168] URLAssetWithURL:v11 options:0];
  v19 = v15[5];
  v20 = *v19;
  *v19 = v18;

  return v15;
}

void ___ZN2re20VideoFileAssetLoader19allocateSampleAssetEv_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x1E69874B8];
  v21 = 0;
  v4 = [MEMORY[0x1E6987ED8] assetWriterWithURL:v2 fileType:v3 error:&v21];
  v15 = v21;
  v5 = MEMORY[0x1E695DF20];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:16];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:16];
  v16 = [v5 dictionaryWithObjectsAndKeys:{*MEMORY[0x1E6987CE8], *MEMORY[0x1E6987CB0], v6, *MEMORY[0x1E6987E08], v7, *MEMORY[0x1E6987D70], 0}];

  v8 = [MEMORY[0x1E6987EE0] assetWriterInputWithMediaType:*MEMORY[0x1E6987608] outputSettings:v16];
  v9 = [MEMORY[0x1E6987F08] assetWriterInputPixelBufferAdaptorWithAssetWriterInput:v8 sourcePixelBufferAttributes:0];
  [v4 addInput:v8];
  [v4 startWriting];
  __b[0] = *MEMORY[0x1E6960CC0];
  *&__b[1] = *(MEMORY[0x1E6960CC0] + 16);
  [v4 startSessionAtSourceTime:__b];
  v10 = 0;
  v11 = *MEMORY[0x1E695E480];
  do
  {
    do
    {
      v12 = [v9 assetWriterInput];
      v13 = [v12 isReadyForMoreMediaData];
    }

    while ((v13 & 1) == 0);
    memset(__b, 25 * v10, sizeof(__b));
    texture = 0;
    CVPixelBufferCreateWithBytes(v11, 0x10uLL, 0x10uLL, 0x18u, __b, 0x30uLL, 0, 0, 0, &texture);
    v14 = texture;
    CMTimeMake(&v19, v10, 10);
    [v9 appendPixelBuffer:v14 withPresentationTime:&v19];
    CVPixelBufferRelease(texture);
    ++v10;
  }

  while (v10 != 10);
  [v8 markAsFinished];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = ___ZN2re20VideoFileAssetLoader19allocateSampleAssetEv_block_invoke_2;
  v17[3] = &unk_1E871B240;
  v18 = *(a1 + 40);
  [v4 finishWritingWithCompletionHandler:v17];
}

void *re::allocInfo_VideoFileAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE198C98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE198C98))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE198CB8, "VideoFileAsset");
    __cxa_guard_release(&qword_1EE198C98);
  }

  return &unk_1EE198CB8;
}

void re::initInfo_VideoFileAsset(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v12[0] = 0xEC9982C10E198972;
  v12[1] = "VideoFileAsset";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE198C90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE198C90))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicString>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "avFileType";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0x800000001;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    _MergedGlobals_88 = v10;
    __cxa_guard_release(&qword_1EE198C90);
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &_MergedGlobals_88;
  *(this + 9) = re::internal::defaultConstruct<re::VideoFileAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::VideoFileAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::VideoFileAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::VideoFileAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v11 = v13;
}

uint64_t re::SkeletalPoseRigMappingData::rebuildMappingData<re::MeshAsset>(_anonymous_namespace_ *a1, unint64_t a2, uint64_t a3, re::MeshAsset *a4, unint64_t a5, uint64_t a6)
{
  v9 = a1;
  v211 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
  }

  v9[1] = -1;
  re::FixedArray<CoreIKTransform>::deinit(v9 + 2);
  re::FixedArray<CoreIKTransform>::deinit(v9 + 5);
  re::FixedArray<CoreIKTransform>::deinit(v9 + 8);
  re::FixedArray<CoreIKTransform>::deinit(v9 + 11);
  re::FixedArray<CoreIKTransform>::deinit(v9 + 14);
  re::FixedArray<CoreIKTransform>::deinit(v9 + 17);
  re::FixedArray<CoreIKTransform>::deinit(v9 + 20);
  re::FixedArray<CoreIKTransform>::deinit(v9 + 23);
  re::FixedArray<CoreIKTransform>::deinit(v9 + 26);
  v10 = re::FixedArray<CoreIKTransform>::deinit(v9 + 29);
  v13 = *(a5 + 264);
  v171 = a6;
  if (v13)
  {
    if (v13 >= 0x2E8BA2E8BA2E8BBLL)
    {
LABEL_241:
      re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 88, v13);
      _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v165, v167);
      __break(1u);
      goto LABEL_242;
    }

    if (!v11)
    {
LABEL_242:
      re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
      goto LABEL_243;
    }

    v15 = v11;
    v16 = v13 - 1;
    if (v13 != 1)
    {
      v15 = v11;
      do
      {
        *v15 = 0;
        *(v15 + 1) = 0;
        *(v15 + 6) = 0;
        *(v15 + 2) = 0;
        *(v15 + 9) = 0;
        *(v15 + 2) = 0uLL;
        *(v15 + 3) = 0uLL;
        *(v15 + 16) = 0;
        *(v15 + 20) = -1;
        v15 = (v15 + 88);
        --v16;
      }

      while (v16);
    }

    v178 = v11;
    *v15 = 0;
    *(v15 + 1) = 0;
    *(v15 + 6) = 0;
    *(v15 + 2) = 0;
    *(v15 + 9) = 0;
    *(v15 + 2) = 0u;
    *(v15 + 3) = 0u;
    *(v15 + 16) = 0;
    *(v15 + 20) = -1;
  }

  else
  {
    v178 = 0;
  }

  isSkinningAssignLoggingEnabled = re::DeformerFeatureFlags::isSkinningAssignLoggingEnabled(v11);
  v193 = isSkinningAssignLoggingEnabled;
  v18 = *(a2 + 296);
  v181 = v9;
  v190 = a5;
  if (v18)
  {
    v19 = 0;
    v183 = *(a2 + 296);
    v185 = a2;
    do
    {
      v20 = *(a2 + 296);
      if (v20 <= v19)
      {
        goto LABEL_185;
      }

      v21 = *(a2 + 312) + (v19 << 6);
      if (*(v21 + 56) == 1)
      {
        if (!v193 || *(a2 + 176) > *(v21 + 60))
        {
          goto LABEL_22;
        }

        v45 = *re::assetsLogObjects(isSkinningAssignLoggingEnabled);
        isSkinningAssignLoggingEnabled = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
        if (isSkinningAssignLoggingEnabled)
        {
          v46 = *(v21 + 60);
          buf[0].n128_u32[0] = 67109120;
          buf[0].n128_u32[1] = v46;
          v24 = v45;
          v25 = "[DeformerLogging] Skeletal mesh pose has an invalid model space pose index: %u.";
          goto LABEL_53;
        }
      }

      else
      {
        if (*(v21 + 56))
        {
          if (!v193)
          {
            goto LABEL_50;
          }

          v43 = *re::assetsLogObjects(isSkinningAssignLoggingEnabled);
          isSkinningAssignLoggingEnabled = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
          if (!isSkinningAssignLoggingEnabled)
          {
            goto LABEL_50;
          }

          v44 = *(v21 + 56);
          buf[0].n128_u32[0] = 67109120;
          buf[0].n128_u32[1] = v44;
          v24 = v43;
          v25 = "[DeformerLogging] Skeletal mesh pose has an invalid skeletal pose type: %u.";
          goto LABEL_53;
        }

        if (!v193 || *(a2 + 136) > *(v21 + 60))
        {
LABEL_22:
          v187 = *(a2 + 312) + (v19 << 6);
          re::MeshNameMap::meshInstancePartsForIdentifier(buf, a5, v21);
          *v203 = a4;
          *&v203[8] = a5;
          *&v203[16] = buf[0].n128_u64[0];
          *&v205[9] = v197;
          *&v205[13] = 0;
          re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::operator=<24ul>(&v203[24], &buf[0].n128_i64[1]);
          re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&buf[0].n128_i64[1]);
          *v206 = v203;
          *&v206[8] = 0;
          v26 = *&v203[16];
          if (!*&v203[16])
          {
LABEL_45:
            isSkinningAssignLoggingEnabled = re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&v203[24]);
            v9 = v181;
            a5 = v190;
            v18 = v183;
            a2 = v185;
            goto LABEL_50;
          }

          v27 = 0;
          v28 = v203;
          while (2)
          {
            buf[0].n128_u64[0] = v27;
            v29 = (*(**(v28 + 7) + 16))(*(v28 + 7), buf);
            buf[0].n128_u64[0] = *&v206[8];
            v18 = (*(**(*v206 + 56) + 16))(*(*v206 + 56), buf);
            v30 = re::MeshIdentifierIteration<re::MeshAsset,re::MeshInstanceAndPartIndex>::MeshIdentifierIterator::meshModel(v206);
            v31 = v30;
            a2 = WORD2(v18);
            v32 = v30[28];
            if (v32 && *(v32 + 8) > WORD2(v18))
            {
              if (*(a3 + 24) > v29)
              {
                v33 = *(a3 + 32) + 24 * v29;
                if (*(v33 + 8) > WORD2(v18))
                {
                  a5 = *(*(v33 + 16) + 4 * WORD2(v18));
                  if (a5 != -1)
                  {
                    a2 = HIDWORD(v18);
                    started = re::MeshNameMap::meshPartStartIndexForInstance(v190, v29);
                    v20 = re::MeshNameMap::skinnedPartIndexForPartInstance(v190, started + WORD2(v18));
                    if (v13 <= v20)
                    {
                      goto LABEL_233;
                    }

                    v36 = (v178 + 88 * v20);
                    *(v36 + 20) = a5;
                    if (*(v187 + 56) != 1)
                    {
                      if (*(v187 + 56))
                      {
                        goto LABEL_245;
                      }

                      v36 = (v36 + 40);
                    }

                    re::DynamicArray<int>::add(v36, (v187 + 60));
LABEL_43:
                    v28 = *v206;
                    v27 = ++*&v206[8];
                    if (*v206 == v203 && v27 == v26)
                    {
                      goto LABEL_45;
                    }

                    continue;
                  }
                }
              }

              if (!v193)
              {
                goto LABEL_43;
              }

              v20 = *re::assetsLogObjects(v30);
              if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                goto LABEL_43;
              }

              a5 = v31[7];
              if (a5 <= WORD2(v18))
              {
                goto LABEL_221;
              }

              v41 = v31[1];
              v42 = *(v31[8] + 544 * WORD2(v18) + 496);
              buf[0].n128_u32[0] = 136315394;
              *(buf[0].n128_u64 + 4) = v41;
              buf[0].n128_u16[6] = 2080;
              *(&buf[0].n128_u64[1] + 6) = v42;
              v39 = v20;
              v40 = "[DeformerLogging] Mesh Model[%s] Part[%s] has no assigned rig.";
            }

            else
            {
              if (!v193)
              {
                goto LABEL_43;
              }

              v20 = *re::assetsLogObjects(v30);
              if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                goto LABEL_43;
              }

              a5 = v31[7];
              if (a5 <= WORD2(v18))
              {
                goto LABEL_181;
              }

              v37 = v31[1];
              v38 = *(v31[8] + 544 * WORD2(v18) + 496);
              buf[0].n128_u32[0] = 136315394;
              *(buf[0].n128_u64 + 4) = v37;
              buf[0].n128_u16[6] = 2080;
              *(&buf[0].n128_u64[1] + 6) = v38;
              v39 = v20;
              v40 = "[DeformerLogging] Mesh Model[%s] Part[%s] not skinned.";
            }

            break;
          }

          _os_log_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_INFO, v40, buf, 0x16u);
          goto LABEL_43;
        }

        v22 = *re::assetsLogObjects(isSkinningAssignLoggingEnabled);
        isSkinningAssignLoggingEnabled = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
        if (isSkinningAssignLoggingEnabled)
        {
          v23 = *(v21 + 60);
          buf[0].n128_u32[0] = 67109120;
          buf[0].n128_u32[1] = v23;
          v24 = v22;
          v25 = "[DeformerLogging] Skeletal mesh pose has an invalid local space pose index: %u.";
LABEL_53:
          _os_log_error_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_ERROR, v25, buf, 8u);
        }
      }

LABEL_50:
      ++v19;
    }

    while (v19 != v18);
  }

  v47 = *(a5 + 216);
  v172 = *(a5 + 264);
  *&v205[1] = 0;
  memset(v203, 0, sizeof(v203));
  *(v202 + 2) = 0;
  memset(v200, 0, sizeof(v200));
  v174 = v47;
  v176 = v13;
  if (v47)
  {
    v184 = 0;
    v186 = 0;
    v48 = 0;
    v173 = 0;
    v49 = v178;
    v19 = *(a4 + 156);
    v180 = v19;
    while (1)
    {
      v179 = re::MeshNameMap::modelIndex(a5, v48);
      v50 = re::MeshAssetBaseInfo::meshModel<re::MeshAsset>(a4, v179);
      v51 = re::MeshNameMap::meshPartStartIndexForInstance(a5, v48);
      v188 = v51;
      v52 = v50[28];
      v175 = v48;
      if (v52)
      {
        v53 = *(v52 + 8);
        if (v53 > v50[7])
        {
          if (v193)
          {
            v54 = *re::assetsLogObjects(v51);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              v55 = v50[1];
              buf[0].n128_u32[0] = 136315138;
              *(buf[0].n128_u64 + 4) = v55;
              _os_log_error_impl(&dword_1E1C61000, v54, OS_LOG_TYPE_ERROR, "[DeformerLogging] Mesh Model[%s] has unexpected skinned part count", buf, 0xCu);
            }
          }

          goto LABEL_117;
        }

        if (v53)
        {
          break;
        }
      }

LABEL_117:
      v48 = v175 + 1;
      if (v175 + 1 == v174)
      {
        a2 = *&v203[16];
        goto LABEL_120;
      }
    }

    v18 = 0;
    v192 = *(v52 + 8);
    v182 = v50;
    while (1)
    {
      v56 = v50[28];
      if (v56 && *(v56 + 8) > v18)
      {
        a2 = *(*(v56 + 16) + 88 * v18 + 4);
      }

      else
      {
        a2 = 0xFFFFFFFFLL;
      }

      if (v19 > a2)
      {
        break;
      }

      if (v193)
      {
        v20 = *re::assetsLogObjects(v51);
        v51 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
        if (v51)
        {
          a2 = v50[7];
          if (a2 <= v18)
          {
            goto LABEL_189;
          }

          v68 = v50[1];
          v69 = *(v50[8] + 544 * v18 + 496);
          buf[0].n128_u32[0] = 136315394;
          *(buf[0].n128_u64 + 4) = v68;
          buf[0].n128_u16[6] = 2080;
          *(&buf[0].n128_u64[1] + 6) = v69;
          _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_INFO, "[DeformerLogging] Mesh Model[%s] Part[%s] has no skeleton.", buf, 0x16u);
        }

        goto LABEL_113;
      }

LABEL_114:
      if (++v18 == v53)
      {
        goto LABEL_117;
      }
    }

    v57 = re::MeshNameMap::skinnedPartIndexForPartInstance(a5, v188 + v18);
    __src = v57;
    v20 = v57;
    if (v13 <= v57)
    {
      goto LABEL_177;
    }

    v58 = v49 + 88 * v57;
    v59 = *(v58 + 80);
    if (v59 == -1)
    {
      v50 = v182;
      v70 = v182[28];
      if (v70 && *(v70 + 32) > a2)
      {
        re::ReadOnlyCPUAccessibleBufferSliceContent::make(buf, (*(v70 + 40) + 40 * a2));
        if (buf[0].n128_u8[0])
        {
          v71 = buf[1].n128_u64[0] >> 6;
        }

        else
        {
          v71 = 0;
        }

        v72 = v173;
        if (v173 <= v71)
        {
          v72 = v71;
        }

        v173 = v72;
        *v206 = __src;
        *&v206[8] = v71;
        v73 = re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(v200, v206);
        a5 = v190;
        v19 = v180;
        if (buf[0].n128_u8[0] == 1)
        {
          re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(&buf[0].n128_i8[8]);
        }

        else
        {
          v51 = buf[1].n128_i64[1];
          if (buf[1].n128_u64[1] && (v197 & 1) != 0)
          {
            v51 = (*(*buf[1].n128_u64[1] + 40))(v73);
          }
        }

        goto LABEL_113;
      }

      buf[0].n128_u32[0] = v57;
      buf[0].n128_u64[1] = 0;
      re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(v200, buf);
      a5 = v190;
    }

    else
    {
      v189 = *&v205[1];
      v60 = *&v203[16];
      if (*&v203[16])
      {
        v61 = *(v58 + 16);
        v62 = (*&v205[1] + 16);
        v63 = *&v203[16] << 6;
        while (1)
        {
          v64 = *(v62 - 2);
          if (*(v64 + 16) == v61)
          {
            v57 = memcmp(*(v64 + 32), *(v58 + 32), 4 * v61);
            if (!v57)
            {
              v65 = *(v64 + 56);
              if (v65 == *(v58 + 56))
              {
                v57 = memcmp(*(v64 + 72), *(v58 + 72), 4 * v65);
                if (!v57 && *(v64 + 80) == v59 && *(v62 - 2) == a2)
                {
                  break;
                }
              }
            }
          }

          v62 = (v62 + 64);
          v63 -= 64;
          if (!v63)
          {
            goto LABEL_79;
          }
        }

        v51 = re::DynamicArray<int>::add(v62, &__src);
        v13 = v176;
        v49 = v178;
        v19 = v180;
        v9 = v181;
        a5 = v190;
        v50 = v182;
        goto LABEL_113;
      }

LABEL_79:
      buf[0].n128_u64[0] = v58;
      buf[0].n128_u32[2] = a2;
      *&v198 = 0;
      *&v197 = 0;
      buf[1] = 0uLL;
      DWORD2(v197) = 0;
      re::DynamicArray<int>::setCapacity(buf[1].n128_u64, 1uLL);
      ++DWORD2(v197);
      v66 = re::DynamicArray<float>::copy(&buf[1], 0, &__src, 1);
      DWORD2(v198) = v179;
      if (v60 >= *&v203[8])
      {
        v9 = v181;
        v50 = v182;
        a5 = v190;
        if (*&v203[8] < v60 + 1)
        {
          if (*v203)
          {
            v74 = 8;
            if (*&v203[8])
            {
              v74 = 2 * *&v203[8];
            }

            if (v74 <= v60 + 1)
            {
              v75 = v60 + 1;
            }

            else
            {
              v75 = v74;
            }

            re::DynamicArray<void re::SkeletalPoseRigMappingData::rebuildMappingData<re::MeshAsset>(re::SkeletalPoseDefinitionAsset const&,re::RigRuntimeData const&,re::MeshAsset const&,re::MeshNameMap const&,unsigned long)::UniqueSkinningRigPose>::setCapacity(v203, v75);
          }

          else
          {
            re::DynamicArray<void re::SkeletalPoseRigMappingData::rebuildMappingData<re::MeshAsset>(re::SkeletalPoseDefinitionAsset const&,re::RigRuntimeData const&,re::MeshAsset const&,re::MeshNameMap const&,unsigned long)::UniqueSkinningRigPose>::setCapacity(v203, v60 + 1);
            ++*&v203[24];
          }
        }

        v60 = *&v203[16];
        v67 = *&v205[1];
      }

      else
      {
        v9 = v181;
        v50 = v182;
        a5 = v190;
        v67 = v189;
      }

      v76 = v67 + (v60 << 6);
      v77 = buf[0].n128_u64[0];
      *(v76 + 8) = buf[0].n128_u32[2];
      *v76 = v77;
      *(v76 + 48) = 0;
      *(v76 + 24) = 0;
      *(v76 + 32) = 0;
      *(v76 + 16) = 0;
      *(v76 + 40) = 0;
      *(v76 + 16) = buf[1].n128_u64[0];
      buf[1].n128_u64[0] = 0;
      *(v76 + 24) = buf[1].n128_u64[1];
      buf[1].n128_u64[1] = 0;
      v78 = *(v76 + 32);
      *(v76 + 32) = v197;
      *&v197 = v78;
      v79 = *(v76 + 48);
      *(v76 + 48) = v198;
      *&v198 = v79;
      ++DWORD2(v197);
      ++*(v76 + 40);
      *(v76 + 56) = DWORD2(v198);
      *&v203[16] = v60 + 1;
      ++*&v203[24];
      v51 = buf[1].n128_i64[0];
      if (buf[1].n128_u64[0] && v79)
      {
        v51 = (*(*buf[1].n128_u64[0] + 40))();
      }

      v184 += *(v58 + 56);
      v186 += *(v58 + 16);
      v13 = v176;
      v49 = v178;
    }

    v19 = v180;
LABEL_113:
    v53 = v192;
    goto LABEL_114;
  }

  a2 = 0;
  v173 = 0;
  v184 = 0;
  v186 = 0;
LABEL_120:
  re::FixedArray<int>::init<>(v9 + 26, *v9, a2 + 1);
  a5 = v172;
  re::FixedArray<unsigned int>::init<unsigned int const&>(v9 + 2, *v9, v172, &re::SkeletalPoseRigMappingData::kInvalidPoseRigMapIndex);
  v81 = *v9;
  v9[29] = *v9;
  v9[30] = v172;
  if (v172)
  {
    if (v172 >> 61)
    {
LABEL_243:
      re::internal::assertLog(6, v80, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, a5);
      _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v166, v168);
      __break(1u);
      goto LABEL_244;
    }

    v82 = (*(*v81 + 32))(v81, 8 * v172, 4);
    v9[31] = v82;
    if (!v82)
    {
LABEL_244:
      re::internal::assertLog(4, v83, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
LABEL_245:
      re::internal::assertLog(4, v35, "assertion failure: '%s' (%s:line %i) Unexpected skeletal pose type.", "!Unreachable code", "rebuildMappingData", 280);
      _os_crash("assertion failure: (!Unreachable code) Unexpected skeletal pose type.");
      __break(1u);
    }

    v84 = v82;
    if (v172 != 1)
    {
      bzero(v82, 8 * v172 - 8);
      v84 += v172 - 1;
    }

    *v84 = 0;
  }

  if (a2)
  {
    v20 = 0;
    v18 = 0;
    v85 = *&v205[1];
    while (1)
    {
      if (v20 == a2)
      {
        goto LABEL_225;
      }

      v86 = v85 + (v20 << 6);
      v87 = re::MeshAsset::skeletonAtIndex(a4, *(v86 + 8));
      a5 = v9[27];
      if (a5 <= v20)
      {
        goto LABEL_229;
      }

      v88 = *(v87 + 24);
      *(v9[28] + 4 * v20) = v18;
      v89 = *(v86 + 32);
      if (v89)
      {
        break;
      }

LABEL_135:
      v18 = (v18 + v88);
      if (++v20 == a2)
      {
        goto LABEL_138;
      }
    }

    v90 = *(v86 + 48);
    v91 = 4 * v89;
    while (1)
    {
      v19 = *v90;
      a5 = v9[3];
      if (a5 <= v19)
      {
        break;
      }

      *(v9[4] + 4 * v19) = v20;
      a5 = v9[30];
      if (a5 <= v19)
      {
        goto LABEL_173;
      }

      *(v9[31] + 8 * v19) = v18 | (v88 << 32);
      ++v90;
      v91 -= 4;
      if (!v91)
      {
        goto LABEL_135;
      }
    }

    v195 = 0;
    v198 = 0u;
    v199 = 0u;
    v197 = 0u;
    memset(buf, 0, sizeof(buf));
    v111 = MEMORY[0x1E69E9C10];
    v112 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v206 = 136315906;
    *&v206[4] = "operator[]";
    *&v206[12] = 1024;
    if (v112)
    {
      v113 = 3;
    }

    else
    {
      v113 = 2;
    }

    *&v206[14] = 468;
    v207 = 2048;
    v208 = v19;
    v209 = 2048;
    v210 = a5;
    _os_log_send_and_compose_impl(v113, &v195, buf, 80, &dword_1E1C61000, v111, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v206, 38, v169, v170);
    _os_crash_msg();
    __break(1u);
LABEL_173:
    v195 = 0;
    v198 = 0u;
    v199 = 0u;
    v197 = 0u;
    memset(buf, 0, sizeof(buf));
    v114 = MEMORY[0x1E69E9C10];
    v115 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v206 = 136315906;
    *&v206[4] = "operator[]";
    *&v206[12] = 1024;
    if (v115)
    {
      v116 = 3;
    }

    else
    {
      v116 = 2;
    }

    *&v206[14] = 468;
    v207 = 2048;
    v208 = v19;
    v209 = 2048;
    v210 = a5;
    _os_log_send_and_compose_impl(v116, &v195, buf, 80, &dword_1E1C61000, v114, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v206, 38, v169, v170);
    _os_crash_msg();
    __break(1u);
LABEL_177:
    v195 = 0;
    v198 = 0u;
    v199 = 0u;
    v197 = 0u;
    memset(buf, 0, sizeof(buf));
    v117 = MEMORY[0x1E69E9C10];
    v118 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v206 = 136315906;
    *&v206[4] = "operator[]";
    *&v206[12] = 1024;
    if (v118)
    {
      v119 = 3;
    }

    else
    {
      v119 = 2;
    }

    *&v206[14] = 468;
    v207 = 2048;
    v208 = v20;
    v209 = 2048;
    v210 = v13;
    _os_log_send_and_compose_impl(v119, &v195, buf, 80, &dword_1E1C61000, v117, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v206, 38, v169, v170);
    _os_crash_msg();
    __break(1u);
LABEL_181:
    v195 = 0;
    v198 = 0u;
    v199 = 0u;
    v197 = 0u;
    memset(buf, 0, sizeof(buf));
    v120 = MEMORY[0x1E69E9C10];
    v121 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v200 = 136315906;
    *&v200[4] = "operator[]";
    *&v200[12] = 1024;
    if (v121)
    {
      v122 = 3;
    }

    else
    {
      v122 = 2;
    }

    *&v200[14] = 476;
    *&v200[18] = 2048;
    *&v200[20] = a2;
    v201 = 2048;
    v202[0] = a5;
    _os_log_send_and_compose_impl(v122, &v195, buf, 80, &dword_1E1C61000, v120, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v200, 38, v169, v170);
    _os_crash_msg();
    __break(1u);
LABEL_185:
    *v200 = 0;
    v198 = 0u;
    v199 = 0u;
    v197 = 0u;
    memset(buf, 0, sizeof(buf));
    v123 = MEMORY[0x1E69E9C10];
    v124 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v203 = 136315906;
    *&v203[4] = "operator[]";
    *&v203[12] = 1024;
    if (v124)
    {
      v125 = 3;
    }

    else
    {
      v125 = 2;
    }

    *&v203[14] = 797;
    *&v203[18] = 2048;
    *&v203[20] = v19;
    v204 = 2048;
    *v205 = v20;
    _os_log_send_and_compose_impl(v125, v200, buf, 80, &dword_1E1C61000, v123, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v203, 38, v169, v170);
    _os_crash_msg();
    __break(1u);
LABEL_189:
    v195 = 0;
    v198 = 0u;
    v199 = 0u;
    v197 = 0u;
    memset(buf, 0, sizeof(buf));
    v126 = MEMORY[0x1E69E9C10];
    v127 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v206 = 136315906;
    *&v206[4] = "operator[]";
    *&v206[12] = 1024;
    if (v127)
    {
      v128 = 3;
    }

    else
    {
      v128 = 2;
    }

    *&v206[14] = 476;
    v207 = 2048;
    v208 = v18;
    v209 = 2048;
    v210 = a2;
    _os_log_send_and_compose_impl(v128, &v195, buf, 80, &dword_1E1C61000, v126, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v206, 38, v169, v170);
    _os_crash_msg();
    __break(1u);
    goto LABEL_193;
  }

  LODWORD(v18) = 0;
LABEL_138:
  v9[32] = v173 + v18;
  v20 = v9[27];
  if (v20 <= a2)
  {
LABEL_237:
    v195 = 0;
    v198 = 0u;
    v199 = 0u;
    v197 = 0u;
    memset(buf, 0, sizeof(buf));
    v162 = MEMORY[0x1E69E9C10];
    v163 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v206 = 136315906;
    *&v206[4] = "operator[]";
    *&v206[12] = 1024;
    if (v163)
    {
      v164 = 3;
    }

    else
    {
      v164 = 2;
    }

    *&v206[14] = 468;
    v207 = 2048;
    v208 = a2;
    v209 = 2048;
    v210 = v20;
    _os_log_send_and_compose_impl(v164, &v195, buf, 80, &dword_1E1C61000, v162, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v206, 38, v169, v170);
    _os_crash_msg();
    __break(1u);
    goto LABEL_241;
  }

  *(v9[28] + 4 * a2) = v18;
  re::FixedArray<int>::init<>(v9 + 5, *v9, v184);
  re::FixedArray<int>::init<>(v9 + 8, *v9, v186);
  re::FixedArray<int>::init<>(v9 + 11, *v9, a2);
  re::FixedArray<re::Slice<unsigned int>>::init<>(v9 + 14, *v9, a2);
  re::FixedArray<re::Slice<unsigned int>>::init<>(v9 + 17, *v9, a2);
  re::FixedArray<int>::init<>(v9 + 20, *v9, a2);
  re::FixedArray<int>::init<>(v9 + 23, *v9, a2);
  if (a2)
  {
    v20 = 0;
    v92 = 0;
    v93 = *&v205[1];
    v13 = 8;
    while (a2 != v20)
    {
      v94 = *v93;
      re::FixedArray<unsigned int>::copy(v181 + 5, v92, *(*v93 + 72), *(*v93 + 56));
      re::FixedArray<unsigned int>::copy(v181 + 8, 0, *(v94 + 32), *(v94 + 16));
      a5 = v181[12];
      if (a5 <= v20)
      {
        goto LABEL_201;
      }

      *(v181[13] + 4 * v20) = *(v94 + 80);
      v95 = re::FixedArray<unsigned int>::slice((v181 + 5), v92, *(v94 + 56));
      a5 = v181[15];
      if (a5 <= v20)
      {
        goto LABEL_205;
      }

      v97 = (v181[16] + v13);
      *(v97 - 1) = v95;
      *v97 = v96;
      v98 = re::FixedArray<unsigned int>::slice((v181 + 8), 0, *(v94 + 16));
      a5 = v181[18];
      if (a5 <= v20)
      {
        goto LABEL_209;
      }

      v100 = (v181[19] + v13);
      *(v100 - 1) = v98;
      *v100 = v99;
      a5 = v181[21];
      if (a5 <= v20)
      {
        goto LABEL_213;
      }

      *(v181[22] + 4 * v20) = v93[2];
      a5 = v181[24];
      if (a5 <= v20)
      {
        goto LABEL_217;
      }

      *(v181[25] + 4 * v20) = v93[14];
      v92 += *(v94 + 56);
      ++v20;
      v13 += 16;
      v93 += 16;
      if (a2 == v20)
      {
        goto LABEL_148;
      }
    }

LABEL_197:
    v195 = 0;
    v198 = 0u;
    v199 = 0u;
    v197 = 0u;
    memset(buf, 0, sizeof(buf));
    v132 = MEMORY[0x1E69E9C10];
    v133 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v206 = 136315906;
    *&v206[4] = "operator[]";
    *&v206[12] = 1024;
    if (v133)
    {
      v134 = 3;
    }

    else
    {
      v134 = 2;
    }

    *&v206[14] = 789;
    v207 = 2048;
    v208 = a2;
    v209 = 2048;
    v210 = a2;
    _os_log_send_and_compose_impl(v134, &v195, buf, 80, &dword_1E1C61000, v132, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v206, 38, v169, v170);
    _os_crash_msg();
    __break(1u);
LABEL_201:
    v195 = 0;
    v198 = 0u;
    v199 = 0u;
    v197 = 0u;
    memset(buf, 0, sizeof(buf));
    v135 = MEMORY[0x1E69E9C10];
    v136 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v206 = 136315906;
    *&v206[4] = "operator[]";
    *&v206[12] = 1024;
    if (v136)
    {
      v137 = 3;
    }

    else
    {
      v137 = 2;
    }

    *&v206[14] = 468;
    v207 = 2048;
    v208 = v20;
    v209 = 2048;
    v210 = a5;
    _os_log_send_and_compose_impl(v137, &v195, buf, 80, &dword_1E1C61000, v135, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v206, 38, v169, v170);
    _os_crash_msg();
    __break(1u);
LABEL_205:
    v195 = 0;
    v198 = 0u;
    v199 = 0u;
    v197 = 0u;
    memset(buf, 0, sizeof(buf));
    v138 = MEMORY[0x1E69E9C10];
    v139 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v206 = 136315906;
    *&v206[4] = "operator[]";
    *&v206[12] = 1024;
    if (v139)
    {
      v140 = 3;
    }

    else
    {
      v140 = 2;
    }

    *&v206[14] = 468;
    v207 = 2048;
    v208 = v20;
    v209 = 2048;
    v210 = a5;
    _os_log_send_and_compose_impl(v140, &v195, buf, 80, &dword_1E1C61000, v138, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v206, 38, v169, v170);
    _os_crash_msg();
    __break(1u);
LABEL_209:
    v195 = 0;
    v198 = 0u;
    v199 = 0u;
    v197 = 0u;
    memset(buf, 0, sizeof(buf));
    v141 = MEMORY[0x1E69E9C10];
    v142 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v206 = 136315906;
    *&v206[4] = "operator[]";
    *&v206[12] = 1024;
    if (v142)
    {
      v143 = 3;
    }

    else
    {
      v143 = 2;
    }

    *&v206[14] = 468;
    v207 = 2048;
    v208 = v20;
    v209 = 2048;
    v210 = a5;
    _os_log_send_and_compose_impl(v143, &v195, buf, 80, &dword_1E1C61000, v141, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v206, 38, v169, v170);
    _os_crash_msg();
    __break(1u);
LABEL_213:
    v195 = 0;
    v198 = 0u;
    v199 = 0u;
    v197 = 0u;
    memset(buf, 0, sizeof(buf));
    v144 = MEMORY[0x1E69E9C10];
    v145 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v206 = 136315906;
    *&v206[4] = "operator[]";
    *&v206[12] = 1024;
    if (v145)
    {
      v146 = 3;
    }

    else
    {
      v146 = 2;
    }

    *&v206[14] = 468;
    v207 = 2048;
    v208 = v20;
    v209 = 2048;
    v210 = a5;
    _os_log_send_and_compose_impl(v146, &v195, buf, 80, &dword_1E1C61000, v144, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v206, 38, v169, v170);
    _os_crash_msg();
    __break(1u);
LABEL_217:
    v195 = 0;
    v198 = 0u;
    v199 = 0u;
    v197 = 0u;
    memset(buf, 0, sizeof(buf));
    v147 = MEMORY[0x1E69E9C10];
    v148 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v206 = 136315906;
    *&v206[4] = "operator[]";
    *&v206[12] = 1024;
    if (v148)
    {
      v149 = 3;
    }

    else
    {
      v149 = 2;
    }

    *&v206[14] = 468;
    v207 = 2048;
    v208 = v20;
    v209 = 2048;
    v210 = a5;
    _os_log_send_and_compose_impl(v149, &v195, buf, 80, &dword_1E1C61000, v147, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v206, 38, v169, v170);
    _os_crash_msg();
    __break(1u);
LABEL_221:
    v195 = 0;
    v198 = 0u;
    v199 = 0u;
    v197 = 0u;
    memset(buf, 0, sizeof(buf));
    v150 = MEMORY[0x1E69E9C10];
    v151 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v200 = 136315906;
    *&v200[4] = "operator[]";
    *&v200[12] = 1024;
    if (v151)
    {
      v152 = 3;
    }

    else
    {
      v152 = 2;
    }

    *&v200[14] = 476;
    *&v200[18] = 2048;
    *&v200[20] = a2;
    v201 = 2048;
    v202[0] = a5;
    _os_log_send_and_compose_impl(v152, &v195, buf, 80, &dword_1E1C61000, v150, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v200, 38, v169, v170);
    _os_crash_msg();
    __break(1u);
LABEL_225:
    v195 = 0;
    v198 = 0u;
    v199 = 0u;
    v197 = 0u;
    memset(buf, 0, sizeof(buf));
    v153 = MEMORY[0x1E69E9C10];
    v154 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v206 = 136315906;
    *&v206[4] = "operator[]";
    *&v206[12] = 1024;
    if (v154)
    {
      v155 = 3;
    }

    else
    {
      v155 = 2;
    }

    *&v206[14] = 789;
    v207 = 2048;
    v208 = a2;
    v209 = 2048;
    v210 = a2;
    _os_log_send_and_compose_impl(v155, &v195, buf, 80, &dword_1E1C61000, v153, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v206, 38, v169, v170);
    _os_crash_msg();
    __break(1u);
LABEL_229:
    v195 = 0;
    v198 = 0u;
    v199 = 0u;
    v197 = 0u;
    memset(buf, 0, sizeof(buf));
    v156 = MEMORY[0x1E69E9C10];
    v157 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v206 = 136315906;
    *&v206[4] = "operator[]";
    *&v206[12] = 1024;
    if (v157)
    {
      v158 = 3;
    }

    else
    {
      v158 = 2;
    }

    *&v206[14] = 468;
    v207 = 2048;
    v208 = v20;
    v209 = 2048;
    v210 = a5;
    _os_log_send_and_compose_impl(v158, &v195, buf, 80, &dword_1E1C61000, v156, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v206, 38, v169, v170);
    _os_crash_msg();
    __break(1u);
LABEL_233:
    v195 = 0;
    v198 = 0u;
    v199 = 0u;
    v197 = 0u;
    memset(buf, 0, sizeof(buf));
    v159 = MEMORY[0x1E69E9C10];
    v160 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v200 = 136315906;
    *&v200[4] = "operator[]";
    *&v200[12] = 1024;
    if (v160)
    {
      v161 = 3;
    }

    else
    {
      v161 = 2;
    }

    *&v200[14] = 468;
    *&v200[18] = 2048;
    *&v200[20] = v20;
    v201 = 2048;
    v202[0] = v13;
    _os_log_send_and_compose_impl(v161, &v195, buf, 80, &dword_1E1C61000, v159, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v200, 38, v169, v170);
    _os_crash_msg();
    __break(1u);
    goto LABEL_237;
  }

LABEL_148:
  v101 = *(v202 + 2);
  v102 = v178;
  if (*&v200[16])
  {
    v103 = *(v202 + 2);
    v104 = *(v202 + 2) + 16 * *&v200[16];
    while (1)
    {
      v20 = *v103;
      a5 = v181[30];
      if (a5 <= v20)
      {
        break;
      }

      *(v181[31] + 8 * v20) = v18 | (*(v103 + 1) << 32);
      v103 += 4;
      if (v103 == v104)
      {
        goto LABEL_152;
      }
    }

LABEL_193:
    v195 = 0;
    v198 = 0u;
    v199 = 0u;
    v197 = 0u;
    memset(buf, 0, sizeof(buf));
    v129 = MEMORY[0x1E69E9C10];
    v130 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v206 = 136315906;
    *&v206[4] = "operator[]";
    *&v206[12] = 1024;
    if (v130)
    {
      v131 = 3;
    }

    else
    {
      v131 = 2;
    }

    *&v206[14] = 468;
    v207 = 2048;
    v208 = v20;
    v209 = 2048;
    v210 = a5;
    _os_log_send_and_compose_impl(v131, &v195, buf, 80, &dword_1E1C61000, v129, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v206, 38, v169, v170);
    _os_crash_msg();
    __break(1u);
    goto LABEL_197;
  }

LABEL_152:
  v181[1] = v171;
  if (*v200)
  {
    v105 = v101 == 0;
  }

  else
  {
    v105 = 1;
  }

  if (!v105)
  {
    (*(**v200 + 40))();
  }

  result = *v203;
  if (*v203)
  {
    v107 = *&v205[1];
    if (*&v205[1])
    {
      if (a2)
      {
        v108 = a2 << 6;
        v109 = *&v205[1] + 16;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v109);
          v109 += 64;
          v108 -= 64;
        }

        while (v108);
        result = *v203;
        v107 = *&v205[1];
        v102 = v178;
      }

      result = (*(*result + 40))(result, v107);
    }
  }

  if (v176)
  {
    v110 = 88 * v176;
    do
    {
      re::DynamicArray<unsigned long>::deinit(v102 + 40);
      re::DynamicArray<unsigned long>::deinit(v102);
      v102 += 88;
      v110 -= 88;
    }

    while (v110);
  }

  return result;
}

void re::FixedArray<re::Slice<unsigned int>>::init<>(void *a1, uint64_t a2, unint64_t a3)
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

unint64_t re::FixedArray<unsigned int>::slice(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = v4 + 1;
  if (v4 + 1 <= a2)
  {
    v17 = 0;
    memset(v23, 0, sizeof(v23));
    v7 = MEMORY[0x1E69E9C10];
    *v18 = 136315906;
    *&v18[4] = "slice";
    *&v18[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    *&v18[14] = 502;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v5;
    _os_log_send_and_compose_impl(v8, &v17, v23, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v18, 38, v13, v16);
    _os_crash_msg();
    __break(1u);
    goto LABEL_9;
  }

  if (__CFADD__(a2, a3))
  {
LABEL_9:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::slice(size_t,size_t). index, %zu, count = %zu, array size = %zu", "!overflow", "slice", 508, a2, a3, v4, v17, *v18);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::slice(size_t,size_t). index, %zu, count = %zu, array size = %zu", v9, v11, v14);
    __break(1u);
LABEL_10:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Invalid count. index = %zu, count = %zu, array size = %zu", "endIndexExclusive <= m_size", "slice", 512, a2, a3, v4);
    _os_crash("assertion failure: (endIndexExclusive <= m_size) Invalid count. index = %zu, count = %zu, array size = %zu", v10, v12, v15);
    __break(1u);
  }

  if (a2 + a3 > v4)
  {
    goto LABEL_10;
  }

  return *(a1 + 16) + 4 * a2;
}

uint64_t re::SkeletalPoseRigMappingData::poseRigMapIndex(re::SkeletalPoseRigMappingData *this, const re::MeshNameMap *a2, unsigned int a3, int a4)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(a2 + 54) <= a3)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = re::MeshNameMap::meshPartStartIndexForInstance(a2, a3) + a4;
  if (v7 >= re::MeshNameMap::meshPartStartIndexForInstance(a2, a3 + 1))
  {
    return 0xFFFFFFFFLL;
  }

  result = re::MeshNameMap::skinnedPartIndexForPartInstance(a2, v7);
  if (result != -1)
  {
    v9 = result;
    v10 = *(this + 3);
    if (v10 <= result)
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

      v18 = 476;
      v19 = 2048;
      v20 = v9;
      v21 = 2048;
      v22 = v10;
      _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
      _os_crash_msg();
      __break(1u);
    }

    return *(*(this + 4) + 4 * result);
  }

  return result;
}

uint64_t re::SkeletalPoseRigMappingData::poseRigMapJointTransformCount(re::SkeletalPoseRigMappingData *this, unsigned int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = a2 + 1;
  v3 = *(this + 27);
  if (v3 <= v2)
  {
    return 0;
  }

  v4 = a2;
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

    v13 = 476;
    v14 = 2048;
    v15 = v4;
    v16 = 2048;
    v17 = v3;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return (*(*(this + 28) + 4 * v2) - *(*(this + 28) + 4 * a2));
}

unint64_t re::SkeletalPoseRigMappingData::poseRigMapAbsoluteJointTransforms(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = (a2 + 1);
  v4 = *(a1 + 216);
  if (v4 > v3)
  {
    v5 = a2;
    if (v4 <= a2)
    {
      v18 = 0;
      memset(v27, 0, sizeof(v27));
      v10 = MEMORY[0x1E69E9C10];
      v19 = 136315906;
      v20 = "operator[]";
      v21 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

      v22 = 476;
      v23 = 2048;
      v24 = v5;
      v25 = 2048;
      v26 = v4;
      _os_log_send_and_compose_impl(v11, &v18, v27, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v16, v17);
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      v6 = *(a1 + 224);
      v7 = *(v6 + 4 * a2);
      v8 = a3[1];
      if (v8 >= v7)
      {
        if (v8 >= *(v6 + 4 * v3))
        {
          return *a3 + (v7 << 6);
        }

LABEL_13:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. toExclusive = %zu, size = %zu", "toExclusive <= size()", "range", 249, v7, v8);
        _os_crash("assertion failure: (toExclusive <= size()) Index out of range. toExclusive = %zu, size = %zu", v13, v15);
        __break(1u);
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. fromInclusive = %zu, size = %zu", "fromInclusive <= size()", "range", 248, v7, v8);
    _os_crash("assertion failure: (fromInclusive <= size()) Index out of range. fromInclusive = %zu, size = %zu", v12, v14);
    __break(1u);
    goto LABEL_13;
  }

  return 0;
}

uint64_t re::SkeletalPoseRigMappingData::jointTransformStartAndEndIndex(re::SkeletalPoseRigMappingData *this, unsigned int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = *(this + 30);
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
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 31) + 8 * a2;
}

void *re::DynamicArray<void re::SkeletalPoseRigMappingData::rebuildMappingData<re::MeshAsset>(re::SkeletalPoseDefinitionAsset const&,re::RigRuntimeData const&,re::MeshAsset const&,re::MeshNameMap const&,unsigned long)::UniqueSkinningRigPose>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<void re::SkeletalPoseRigMappingData::rebuildMappingData<re::MeshAsset>(re::SkeletalPoseDefinitionAsset const&,re::RigRuntimeData const&,re::MeshAsset const&,re::MeshNameMap const&,unsigned long)::UniqueSkinningRigPose>::setCapacity(v5, a2);
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
        v10 = v8 + (v9 << 6);
        v11 = v7;
        do
        {
          v12 = *v8;
          *(v11 + 2) = *(v8 + 8);
          *v11 = v12;
          v11[6] = 0;
          v11[3] = 0;
          v11[4] = 0;
          v11[2] = 0;
          *(v11 + 10) = 0;
          v13 = *(v8 + 16);
          v14 = *(v8 + 24);
          v15 = v8 + 16;
          v11[2] = v13;
          v11[3] = v14;
          *v15 = 0;
          *(v15 + 8) = 0;
          v16 = v11[4];
          v11[4] = *(v15 + 16);
          *(v15 + 16) = v16;
          v17 = v11[6];
          v11[6] = *(v15 + 32);
          *(v15 + 32) = v17;
          ++*(v15 + 24);
          ++*(v11 + 10);
          *(v11 + 14) = *(v15 + 40);
          re::DynamicArray<unsigned long>::deinit(v15);
          v11 += 8;
          v8 = v15 + 48;
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

void *re::FixedArray<unsigned int>::copy(void *result, uint64_t a2, const void *a3, uint64_t a4)
{
  if (__CFADD__(a2, a4))
  {
    re::internal::assertLog(7, a2, a3, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 362, result[1], a2, a4);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::copy(). size = %zu, pos = %zu, count = %zu", v5, v6, v7);
    __break(1u);
    goto LABEL_9;
  }

  if ((a2 + a4) > result[1])
  {
LABEL_9:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Too much data to copy.", "requiredSize <= m_size", "copy", 363);
    result = _os_crash("assertion failure: (requiredSize <= m_size) Too much data to copy.");
    __break(1u);
    return result;
  }

  if (a4)
  {
    v4 = (result[2] + 4 * a2);

    return memmove(v4, a3, 4 * a4);
  }

  return result;
}

BOOL re::AudioAssetLoadStrategy_Base::createRuntimeData(uint64_t a1, re::AudioFileAsset *a2, uint64_t a3, uint64_t a4, AudioSceneService *a5)
{
  v9 = *(*(a2 + 1) + 16);
  if (v9)
  {

LABEL_4:
    re::AudioFileAsset::completeLoad(a2, a5);
    return 1;
  }

  v10 = *(*(a2 + 1) + 200);

  if (v10)
  {
    goto LABEL_4;
  }

  if (a3)
  {
    if ((*(*a1 + 48))(a1, a3, a2))
    {
      goto LABEL_4;
    }

    return 0;
  }

  if ((*(*(*(a2 + 1) + 48) + 64))())
  {
    if ((*(*a1 + 56))(a1, *(a2 + 1) + 48, a2))
    {
      goto LABEL_4;
    }

    return 0;
  }

  v12 = re::AudioFileAsset::sharableFileBuffer(a2);

  if (v12)
  {
    goto LABEL_4;
  }

  v13 = re::AudioFileAsset::audioFile(a2);

  if (v13)
  {
    goto LABEL_4;
  }

  v15 = *re::audioLogObjects(v14);
  result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *v16 = 0;
    _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileAssetLoader/Base] Failed to create runtime data with audio file.", v16, 2u);
    return 0;
  }

  return result;
}

BOOL re::AudioAssetLoadStrategy_Base::createRuntimeDataWithAudioFile(re::AudioAssetLoadStrategy_Base *this, id **a2)
{
  v2 = *a2[1];
  v3 = v2 != 0;

  return v3;
}

void re::AudioAssetLoadStrategy_Base::resourceDidUpdate(uint64_t a1, uint64_t a2, id *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  v7[0] = 0;
  v7[32] = 0;
  re::AudioAssetLoadStrategy_Base::resourceDidUpdate(v6, a2, &v6, v4, v5, v7);
}

void re::AudioAssetLoadStrategy_Base::resourceDidUpdate(int a1, uint64_t a2, id *this, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v114 = *MEMORY[0x1E69E9840];
  re::AudioPayload::dynamicCast(this, &v104);
  if (v104)
  {
    v9 = v104;
    *(a2 + 60) = [v9 inputMode];

    v10 = v104;
    [v10 referenceLevel];
    *(a2 + 56) = v11;

    v12 = v104;
    *(a2 + 104) = [v12 loopCount];

    v13 = v104;
    *(a2 + 108) = [v13 streaming];

    v14 = v104;
    *(a2 + 112) = [v14 normalizationMode];

    v15 = v104;
    *(a2 + 116) = [v15 calibrationMode];

    v16 = v104;
    [v16 calibrationLevel];
    *(a2 + 120) = v17;

    v18 = v104;
    [v18 targetLUFS];
    *(a2 + 128) = v19;

    v20 = [v104 mixGroupName];
    LOBYTE(v18) = v20 == 0;

    if ((v18 & 1) == 0)
    {
      v21 = v104;
      v22 = [v21 mixGroupName];
      v23 = v22;
      v24 = [v22 UTF8String];
      buf[0] = 1;
      *&v106[4] = *&v103[0];
      *&v106[28] = *(&v103[1] + 1);
      *&v106[12] = *(v103 + 8);
      memset(v103, 0, sizeof(v103));
      re::Optional<re::DynamicString>::operator=(a2 + 64, buf);
      if (buf[0] == 1 && *&v106[4])
      {
        if (v106[12])
        {
          (*(**&v106[4] + 40))();
        }

        memset(&v106[4], 0, 32);
      }

      if (*&v103[0])
      {
        if (BYTE8(v103[0]))
        {
          (*(**&v103[0] + 40))();
        }

        memset(v103, 0, sizeof(v103));
      }
    }

    v25 = [v104 pcmBuffer];
    v26 = v25 == 0;

    if (v26)
    {
      v44 = [v104 filePath];
      v45 = v44 == 0;

      if (v45)
      {
        v64 = [v104 fileBuffer];
        v65 = v64 == 0;

        if (v65)
        {
          v34 = *re::audioLogObjects(v66);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_DEFAULT, "[CoreRE] [AudioFileAssetLoader/Base] Cannot update asset from payload that contains neither buffer nor file path.", buf, 2u);
          }

          goto LABEL_72;
        }

        v67 = v104;
        v68 = [v67 fileBuffer];
        objc_storeStrong((*(a2 + 8) + 208), v68);

        v69 = v104;
        v70 = [v69 bufferSize];
        *(*(a2 + 8) + 40) = [v70 unsignedLongLongValue];

        v71 = v104;
        v72 = [v71 length];
        *(a2 + 144) = [v72 longLongValue];

        v73 = v104;
        v74 = [v73 format];
        objc_storeStrong((*(a2 + 8) + 8), v74);

        v34 = *re::audioLogObjects(v75);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v102 = *(*(a2 + 8) + 208);
          v76 = *(*(a2 + 8) + 40);
          v77 = re::AudioFileAsset::audioFormat(a2);
          v78 = *(a2 + 144);
          v79 = *(a2 + 60);
          v80 = *(a2 + 56);
          v81 = *(a2 + 104);
          v82 = (a2 + 80);
          if (!*(a2 + 64))
          {
            v82 = v103 + 8;
          }

          if (*v82)
          {
            if (*(a2 + 64))
            {
              v90 = (a2 + 88);
            }

            else
            {
              v90 = &v103[1];
            }

            v83 = *v90;
          }

          else if (*(a2 + 64))
          {
            v83 = (a2 + 81);
          }

          else
          {
            v83 = v103 + 9;
          }

          v91 = *(a2 + 108);
          v92 = *(a2 + 112);
          v93 = *(a2 + 116);
          v94 = *(a2 + 120);
          v95 = *(a2 + 128);
          *buf = 138415362;
          *v106 = v102;
          *&v106[8] = 2048;
          *&v106[10] = v76;
          *&v106[18] = 2112;
          *&v106[20] = v77;
          *&v106[28] = 2048;
          *&v106[30] = v78;
          *&v106[38] = 1024;
          *&v106[40] = v79;
          *&v106[44] = 2048;
          *v107 = v80;
          *&v107[8] = 1024;
          *&v107[10] = v81;
          *v108 = 2080;
          *&v108[2] = v83;
          *&v108[10] = 1024;
          *&v108[12] = v91;
          *&v108[16] = 1024;
          *v109 = v92;
          *&v109[4] = 1024;
          *&v109[6] = v93;
          v110 = 2048;
          v111 = v94;
          v112 = 2048;
          v113 = v95;
          _os_log_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_DEFAULT, "[CoreRE] [AudioFileAssetLoader/Base] Recovered file buffer asset with buffer=%@, bufferSize=%zu, format=%@, length=%llu, inputMode=%d, referenceLevel=%0.2f, loopCount=%d, mixGroupName=%s, streaming=%d, normalizationMode=%d, calibrationMode=%d, calibrationLevel=%0.2f, targetLUFS=%0.2f from audio payload update.", buf, 0x70u);
          if (*&v103[0] && (BYTE8(v103[0]) & 1) != 0)
          {
            (*(**&v103[0] + 40))();
          }
        }
      }

      else
      {
        v46 = v104;
        v47 = [v46 filePath];
        v48 = v47;
        v49 = re::AudioFileAsset::prepareToLoadFrom(a2, [v47 UTF8String], 0);

        if (!v49)
        {
          v51 = *re::audioLogObjects(v50);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            v97 = v104;
            v98 = [v97 filePath];
            v99 = v98;
            v100 = [v98 UTF8String];
            *buf = 136315138;
            *v106 = v100;
            _os_log_error_impl(&dword_1E1C61000, v51, OS_LOG_TYPE_ERROR, "Failed to load audio file at '%s'", buf, 0xCu);
          }
        }

        v34 = *re::audioLogObjects(v50);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v52 = *(*(a2 + 8) + 32);
          v53 = *(a2 + 60);
          v54 = *(a2 + 56);
          v55 = *(a2 + 104);
          v56 = (a2 + 80);
          if (!*(a2 + 64))
          {
            v56 = v103 + 8;
          }

          if (*v56)
          {
            if (*(a2 + 64))
            {
              v84 = (a2 + 88);
            }

            else
            {
              v84 = &v103[1];
            }

            v57 = *v84;
          }

          else if (*(a2 + 64))
          {
            v57 = (a2 + 81);
          }

          else
          {
            v57 = v103 + 9;
          }

          v85 = *(a2 + 108);
          v86 = *(a2 + 112);
          v87 = *(a2 + 116);
          v88 = *(a2 + 120);
          v89 = *(a2 + 128);
          *buf = 138414594;
          *v106 = v52;
          *&v106[8] = 1024;
          *&v106[10] = v53;
          *&v106[14] = 2048;
          *&v106[16] = v54;
          *&v106[24] = 1024;
          *&v106[26] = v55;
          *&v106[30] = 2080;
          *&v106[32] = v57;
          *&v106[40] = 1024;
          *&v106[42] = v85;
          *v107 = 1024;
          *&v107[2] = v86;
          *&v107[6] = 1024;
          *&v107[8] = v87;
          *&v107[12] = 2048;
          *v108 = v88;
          *&v108[8] = 2048;
          *&v108[10] = v89;
          _os_log_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_DEFAULT, "[CoreRE] [AudioFileAssetLoader/Base] Recovered file asset with path=%@, inputMode=%d, referenceLevel=%0.2f, loopCount=%d, mixGroupName=%s, streaming=%d, normalizationMode=%d, calibrationMode=%d, calibrationLevel=%0.2f, targetLUFS=%0.2f from audio payload update.", buf, 0x52u);
          if (*&v103[0] && (BYTE8(v103[0]) & 1) != 0)
          {
            (*(**&v103[0] + 40))();
          }
        }
      }
    }

    else
    {
      v27 = v104;
      v28 = [v27 pcmBuffer];
      objc_storeStrong((*(a2 + 8) + 200), v28);

      v29 = v104;
      v30 = [v29 format];
      objc_storeStrong((*(a2 + 8) + 8), v30);

      v31 = v104;
      v32 = [v31 length];
      *(a2 + 144) = [v32 longLongValue];

      v34 = *re::audioLogObjects(v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = *(*(a2 + 8) + 200);
        v36 = re::AudioFileAsset::audioFormat(a2);
        v37 = *(a2 + 144);
        v38 = *(a2 + 60);
        v39 = *(a2 + 56);
        v40 = *(a2 + 104);
        v41 = (a2 + 80);
        if (!*(a2 + 64))
        {
          v41 = v103 + 8;
        }

        if (*v41)
        {
          if (*(a2 + 64))
          {
            v58 = (a2 + 88);
          }

          else
          {
            v58 = &v103[1];
          }

          v42 = *v58;
        }

        else if (*(a2 + 64))
        {
          v42 = (a2 + 81);
        }

        else
        {
          v42 = v103 + 9;
        }

        v59 = *(a2 + 108);
        v60 = *(a2 + 112);
        v61 = *(a2 + 116);
        v62 = *(a2 + 120);
        v63 = *(a2 + 128);
        *buf = 138415106;
        *v106 = v35;
        *&v106[8] = 2112;
        *&v106[10] = v36;
        *&v106[18] = 2048;
        *&v106[20] = v37;
        *&v106[28] = 1024;
        *&v106[30] = v38;
        *&v106[34] = 2048;
        *&v106[36] = v39;
        *&v106[44] = 1024;
        *v107 = v40;
        *&v107[4] = 2080;
        *&v107[6] = v42;
        *v108 = 1024;
        *&v108[2] = v59;
        *&v108[6] = 1024;
        *&v108[8] = v60;
        *&v108[12] = 1024;
        *&v108[14] = v61;
        *v109 = 2048;
        *&v109[2] = v62;
        v110 = 2048;
        v111 = v63;
        _os_log_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_DEFAULT, "[CoreRE] [AudioFileAssetLoader/Base] Recovered pcm buffer asset with buffer=%@, format=%@, length=%llu, inputMode=%d, referenceLevel=%0.2f, loopCount=%d, mixGroupName=%s, streaming=%d, normalizationMode=%d, calibrationMode=%d, calibrationLevel=%0.2f, targetLUFS=%0.2f from audio payload update.", buf, 0x66u);
        if (*&v103[0] && (BYTE8(v103[0]) & 1) != 0)
        {
          (*(**&v103[0] + 40))();
        }
      }
    }

LABEL_72:
    if (*(a6 + 32) == 1)
    {
      v96 = *(a6 + 24);
      if (!v96)
      {
        v101 = std::__throw_bad_function_call[abi:nn200100]();

        _Unwind_Resume(v101);
      }

      (*(*v96 + 48))(v96);
    }

    re::AudioFileAsset::markAsIncompleteLoad(a2);
    goto LABEL_76;
  }

  v43 = *re::audioLogObjects(v8);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v43, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileAssetLoader/Base] Cannot update shared AudioFileAsset with bad arguments.", buf, 2u);
  }

LABEL_76:
}