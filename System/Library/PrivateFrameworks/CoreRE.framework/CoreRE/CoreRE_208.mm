void skinnedMeshTraverseNode(char *a1, void *a2, uint64_t a3, uint64_t a4, _anonymous_namespace_ *a5)
{
  v9 = a2;
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      processForMeshData(v21, v9, a3, a4, a5);
      if (v21[0] == 1)
      {
        v10 = [v9 name];
        v11 = v10;
        if (v10)
        {
          v10 = [v10 UTF8String];
          v12 = v10;
        }

        else
        {
          v12 = "(unnamed)";
        }

        v13 = re::DynamicArray<re::DynamicString>::add(a5, &v24);
        if (v24)
        {
          if (BYTE8(v24))
          {
            (*(*v24 + 40))(v13);
          }

          v24 = 0u;
          v25 = 0u;
        }
      }
    }

    else
    {
      v21[0] = 1;
    }
  }

  else
  {
    v21[0] = 0;
    *&v22 = 1024;
    *(&v22 + 1) = &re::AnimationErrorCategory(void)::instance;
    v23[0] = v24;
    v23[1] = v25;
  }

  if (v21[0] != 1)
  {
    *a1 = v21[0];
    *(a1 + 8) = v22;
    *(a1 + 3) = *&v23[0];
    *(a1 + 6) = *(&v23[1] + 1);
    *(a1 + 2) = *(v23 + 8);
    memset(v23, 0, sizeof(v23));
LABEL_24:
    if (*&v23[0] && (BYTE8(v23[0]) & 1) != 0)
    {
      (*(**&v23[0] + 40))();
    }

    goto LABEL_27;
  }

  v14 = [v9 children];
  v15 = [v14 count];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    while (1)
    {
      v18 = [v14 objects];
      v19 = [v18 objectAtIndexedSubscript:v17];

      skinnedMeshTraverseNode(a1, v19, a3, a4, a5);
      LODWORD(v18) = *a1;

      if (v18 != 1)
      {
        break;
      }

      if (v16 == ++v17)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_19:
    v20 = v21[0];
    *a1 = v21[0];
    if ((v20 & 1) == 0)
    {
      *(a1 + 8) = v22;
      *(a1 + 3) = *&v23[0];
      *(a1 + 6) = *(&v23[1] + 1);
      *(a1 + 2) = *(v23 + 8);
      memset(v23, 0, sizeof(v23));
    }
  }

  if ((v21[0] & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_27:
}

uint64_t re::isSkinnedMesh(re *this, const MDLMesh *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = this;
  v3 = v2;
  if (v2)
  {
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    v4 = [(re *)v2 components:0];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = *v10;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v4);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v5 = 1;
            goto LABEL_12;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void re::ModelIOSkinningData::~ModelIOSkinningData(re::ModelIOSkinningData *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 25);
  re::FixedArray<CoreIKTransform>::deinit(this + 22);
  re::FixedArray<CoreIKTransform>::deinit(this + 19);
  re::FixedArray<CoreIKTransform>::deinit(this + 16);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::DynamicString::deinit((this + 72));
}

void *re::types::Ok<re::SkeletalPoseSampledAnimationAssetData>::~Ok(void *a1)
{
  re::DynamicArray<re::StringID>::deinit((a1 + 19));
  re::AssetHandle::~AssetHandle((a1 + 16));
  *a1 = &unk_1F5CC08A8;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit((a1 + 11));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void *re::DynamicArray<re::ModelIOSkeleton>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ModelIOSkeleton>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xA8uLL))
        {
          v2 = 168 * a2;
          result = (*(*result + 32))(result, 168 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 168, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v22, v24);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v23, v25);
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
        v10 = &v8[21 * v9];
        v26 = v7;
        do
        {
          v11 = *v8;
          *v7 = *v7 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v7 = *v8 & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
          v7[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          LODWORD(v11) = *(v8 + 4);
          v7[4] = 0;
          v7[5] = 0;
          v7[3] = 0;
          v7[3] = v8[3];
          v8[3] = 0;
          v12 = v7[5];
          v13 = v8[5];
          v7[4] = v8[4];
          v7[5] = v13;
          v8[4] = 0;
          v8[5] = v12;
          v7[7] = 0;
          v7[8] = 0;
          v7[6] = 0;
          v7[6] = v8[6];
          v8[6] = 0;
          v14 = v7[8];
          v15 = v8[8];
          v7[7] = v8[7];
          v7[8] = v15;
          v8[7] = 0;
          v8[8] = v14;
          v7[9] = 0;
          v7[10] = 0;
          v7[11] = 0;
          v16 = v8[9];
          *(v7 + 4) = v11;
          v7[9] = v16;
          v8[9] = 0;
          v17 = v7[11];
          v18 = v8[11];
          v7[10] = v8[10];
          v7[11] = v18;
          v8[10] = 0;
          v8[11] = v17;
          v7[12] = 0;
          v7[13] = 0;
          v7[14] = 0;
          v7[12] = v8[12];
          v8[12] = 0;
          v19 = v7[14];
          v20 = v8[14];
          v7[13] = v8[13];
          v7[14] = v20;
          v8[13] = 0;
          v8[14] = v19;
          *(v7 + 15) = 0u;
          v21 = v7 + 15;
          *(v21 + 8) = 0;
          *(v21 + 1) = 0u;
          *(v21 + 36) = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v21, v8 + 15);
          re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v8 + 15);
          re::FixedArray<CoreIKTransform>::deinit(v8 + 12);
          re::FixedArray<re::StringID>::deinit(v8 + 9);
          re::FixedArray<CoreIKTransform>::deinit(v8 + 6);
          re::FixedArray<CoreIKTransform>::deinit(v8 + 3);
          re::StringID::destroyString(v8);
          v8 += 21;
          v7 = v21 + 6;
        }

        while (v8 != v10);
        v8 = v5[4];
        v7 = v26;
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void re::FixedArray<simd_double4x4>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 57)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 128, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v9, v10);
    __break(1u);
    goto LABEL_9;
  }

  v5 = a3 << 7;
  v6 = (*(*a2 + 32))(a2, a3 << 7, 16);
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
    bzero(v6, v5 - 128);
    v8 = (v8 + v5 - 128);
  }

  v8[6] = 0u;
  v8[7] = 0u;
  v8[4] = 0u;
  v8[5] = 0u;
  v8[2] = 0u;
  v8[3] = 0u;
  *v8 = 0u;
  v8[1] = 0u;
}

void *re::DynamicArray<re::ModelIOSkinningData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ModelIOSkinningData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xE0uLL))
        {
          v2 = 224 * a2;
          result = (*(*result + 32))(result, 224 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 224, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v34, v36);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v35, v37);
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
        v10 = &v8[28 * v9];
        v38 = v7;
        do
        {
          *v7 = *v8;
          v11 = *(v8 + 1);
          v12 = *(v8 + 2);
          v13 = *(v8 + 3);
          *(v7 + 16) = *(v8 + 16);
          *(v7 + 2) = v12;
          *(v7 + 3) = v13;
          *(v7 + 1) = v11;
          *(v7 + 9) = 0u;
          *(v7 + 11) = 0u;
          v14 = (v8 + 9);
          v7[9] = v8[9];
          v8[9] = 0;
          v7[12] = v8[12];
          v8[12] = 0;
          v16 = v7[10];
          v15 = v7[11];
          v17 = v8[11];
          v7[10] = v8[10];
          v7[11] = v17;
          v8[10] = v16;
          v8[11] = v15;
          v7[13] = 0;
          v7[14] = 0;
          v7[15] = 0;
          v18 = v8 + 13;
          v7[13] = v8[13];
          v8[13] = 0;
          v19 = v7[15];
          v20 = v8[15];
          v7[14] = v8[14];
          v7[15] = v20;
          v8[14] = 0;
          v8[15] = v19;
          v7[16] = 0;
          v7[17] = 0;
          v7[18] = 0;
          v21 = v8 + 16;
          v7[16] = v8[16];
          v8[16] = 0;
          v22 = v7[18];
          v23 = v8[18];
          v7[17] = v8[17];
          v7[18] = v23;
          v8[17] = 0;
          v8[18] = v22;
          v7[19] = 0;
          v7[20] = 0;
          v7[21] = 0;
          v24 = v8 + 19;
          v7[19] = v8[19];
          v8[19] = 0;
          v25 = v7[21];
          v26 = v8[21];
          v7[20] = v8[20];
          v7[21] = v26;
          v8[20] = 0;
          v8[21] = v25;
          v7[22] = 0;
          v7[23] = 0;
          v7[24] = 0;
          v27 = v8 + 22;
          v7[22] = v8[22];
          v8[22] = 0;
          v28 = v7[24];
          v29 = v8[24];
          v7[23] = v8[23];
          v7[24] = v29;
          v8[23] = 0;
          v8[24] = v28;
          v7[25] = 0;
          v7[26] = 0;
          v7[27] = 0;
          v31 = v8[25];
          v30 = v8 + 25;
          v7[25] = v31;
          *v30 = 0;
          v32 = v7[27];
          v33 = v30[2];
          v7[26] = v30[1];
          v7[27] = v33;
          v30[1] = 0;
          v30[2] = v32;
          re::FixedArray<CoreIKTransform>::deinit(v30);
          re::FixedArray<CoreIKTransform>::deinit(v27);
          re::FixedArray<CoreIKTransform>::deinit(v24);
          re::FixedArray<CoreIKTransform>::deinit(v21);
          re::FixedArray<CoreIKTransform>::deinit(v18);
          re::DynamicString::deinit(v14);
          v7 += 28;
          v8 = v30 + 3;
        }

        while (v8 != v10);
        v8 = v5[4];
        v7 = v38;
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void re::SkeletalPoseSampledAnimationAssetData::SkeletalPoseSampledAnimationAssetData(uint64_t a1, uint64_t a2)
{
  re::SampledAnimationAssetData<re::SkeletalPoseAssetData>::SampledAnimationAssetData(a1, a2);
  *v3 = &unk_1F5CC0838;
  *(v3 + 136) = 0;
  *(v3 + 144) = 0;
  *(v3 + 128) = 0;
  *(v3 + 136) = *(a2 + 136);
  *(a2 + 136) = 0;
  v4 = *(v3 + 128);
  *(v3 + 128) = 0;
  *(v3 + 128) = *(a2 + 128);
  *(a2 + 128) = v4;
  v5 = *(v3 + 144);
  *(v3 + 144) = *(a2 + 144);
  *(a2 + 144) = v5;
  *(v3 + 184) = 0;
  *(v3 + 160) = 0;
  *(v3 + 168) = 0;
  *(v3 + 152) = 0;
  *(v3 + 176) = 0;
  v6 = *(a2 + 160);
  *(v3 + 152) = *(a2 + 152);
  *(v3 + 160) = v6;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  v7 = *(v3 + 168);
  *(v3 + 168) = *(a2 + 168);
  *(a2 + 168) = v7;
  v8 = *(v3 + 184);
  *(v3 + 184) = *(a2 + 184);
  *(a2 + 184) = v8;
  ++*(a2 + 176);
  ++*(v3 + 176);
  LOWORD(v8) = *(a2 + 192);
  *(v3 + 194) = *(a2 + 194);
  *(v3 + 192) = v8;
}

void *re::DynamicArray<re::SkeletalPoseSampledAnimation>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SkeletalPoseSampledAnimation>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x78uLL))
        {
          v2 = 120 * a2;
          result = (*(*result + 32))(result, 120 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 120, a2);
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
        v10 = 0;
        v11 = 120 * v9;
        do
        {
          v12 = (v8 + v10);
          re::SampledAnimation<re::SkeletalPose>::SampledAnimation(&v7[v10 / 8], v8 + v10);
          *v13 = &unk_1F5CAF198;
          v14 = *(v8 + v10 + 112);
          *(v13 + 114) = *(v8 + v10 + 114);
          *(v13 + 112) = v14;
          *v12 = &unk_1F5CAEFA8;
          re::FixedArray<re::SkeletalPose>::deinit((v8 + v10 + 88));
          *v12 = &unk_1F5CAD3A8;
          re::DynamicString::deinit((v8 + v10 + 40));
          re::StringID::destroyString((v8 + v10 + 24));
          v10 += 120;
        }

        while (v11 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::internal::DataPayload::DataPayload(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(a1 + 24) = a2;
  *a1 = &unk_1F5D0BCD8;
  *(a1 + 32) = a7;
  *(a1 + 33) = a3;
  *(a1 + 40) = a4;
  *(a1 + 48) = a5;
  if (a8)
  {
    v17 = a8;
  }

  else
  {
    v17 = a2;
  }

  *(a1 + 56) = a6;
  *(a1 + 64) = v17;
  *(a1 + 96) = 0;
  if (a9)
  {
    *(a1 + 72) = &unk_1F5D0BD20;
    *(a1 + 80) = a9;
    *(a1 + 96) = a1 + 72;
  }

  return a1;
}

void re::internal::DataPayload::~DataPayload(re::internal::DataPayload *this)
{
  v8[3] = *MEMORY[0x1E69E9840];
  *this = &unk_1F5D0BCD8;
  v2 = *(this + 8);
  v3 = *(this + 12);
  v6[0] = v2;
  if (!v3)
  {
    std::__throw_bad_function_call[abi:nn200100]();
  }

  v4 = this + 72;
  (*(*v3 + 48))(v3, v6);
  v6[0] = &unk_1F5D0BD20;
  v6[1] = re::internal::DataPayload::defaultFreeFunction;
  v7 = v6;
  if ((this + 72) != v6)
  {
    v5 = *(this + 12);
    if (v5 == v4)
    {
      v7 = 0;
      v8[0] = &unk_1F5D0BD20;
      v8[1] = re::internal::DataPayload::defaultFreeFunction;
      (*(*v5 + 24))(v5, v6);
      (*(**(this + 12) + 32))(*(this + 12));
      *(this + 12) = 0;
      v7 = v6;
      (*(v8[0] + 24))(v8, this + 72);
      (*(v8[0] + 32))(v8);
    }

    else
    {
      *(this + 9) = &unk_1F5D0BD20;
      *(this + 10) = re::internal::DataPayload::defaultFreeFunction;
      v7 = v5;
    }

    *(this + 12) = v4;
  }

  std::__function::__value_func<void ()(void const*)>::~__value_func[abi:nn200100](v6);
  *(this + 3) = 0;
  *(this + 8) = 0;
  std::__function::__value_func<void ()(void const*)>::~__value_func[abi:nn200100](this + 72);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::internal::DataPayload::~DataPayload(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::GeomModelDescriptor::makeCFDataPayload(uint64_t *a1, uint64_t a2)
{
  v4 = *a2;
  CFRetain(*a2);
  v6 = *(a2 + 8);
  if (v6 > 6)
  {
    if (*(a2 + 8) > 9u)
    {
      if (v6 != 10)
      {
        if (v6 == 11)
        {
          goto LABEL_16;
        }

        result = 0;
        if (v6 == 255)
        {
LABEL_20:
          *a1 = result;
          return result;
        }

        goto LABEL_21;
      }
    }

    else
    {
      if (v6 == 7 || v6 == 8)
      {
        v7 = 7;
        goto LABEL_19;
      }

      if (v6 != 9)
      {
        goto LABEL_21;
      }
    }

    v7 = 15;
    goto LABEL_19;
  }

  if (*(a2 + 8) <= 3u)
  {
    v7 = v6 >= 2;
LABEL_19:
    BytePtr = CFDataGetBytePtr(v4);
    v10 = (&BytePtr[*(a2 + 24)] & v7 | (*(a2 + 24) + BytePtr + *(a2 + 32)) & v7) == 0;
    v11 = CFDataGetBytePtr(v4);
    v12 = re::globalAllocators(v11);
    v13 = (*(*v12[2] + 32))(v12[2], 104, 8);
    result = re::internal::DataPayload::DataPayload(v13, v11, *(a2 + 8), *(a2 + 16), *(a2 + 32), *(a2 + 24), v10, v4, re::internal::freeCoreFoundationData);
    goto LABEL_20;
  }

  if (v6 == 4 || v6 == 5 || v6 == 6)
  {
LABEL_16:
    v7 = 3;
    goto LABEL_19;
  }

LABEL_21:
  re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Unsupported type", "!Unreachable code", "alignOfGeomModelValueType", 110);
  result = _os_crash("assertion failure: (!Unreachable code) Unsupported type");
  __break(1u);
  return result;
}

_anonymous_namespace_ *re::GeomModelDescriptor::validateIndexType@<X0>(_anonymous_namespace_ *result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 < 6)
  {
    *a3 = 1;
  }

  else
  {
    v4 = v7;
    v5 = v8;
    v6 = v9;
    *a3 = 0;
    *(a3 + 8) = 100;
    *(a3 + 16) = re::AssetErrorCategory(void)::instance;
    *(a3 + 24) = v4;
    *(a3 + 40) = v5;
    *(a3 + 48) = v6;
  }

  return result;
}

__n128 re::GeomModelDescriptor::validateIfCoreAttribute@<Q0>(uint64_t a1@<X1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
{
  if (*(a1 + 8))
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = (a1 + 9);
  }

  v8 = strcmp(v7, "vertexPosition");
  if (!v8)
  {
    if ((a3 & 0xFFFFFFFD) != 9)
    {
      v15 = "Only float[3] supported for positions.";
      goto LABEL_35;
    }

    if (a2 != 1)
    {
      v15 = "Position must be at the vertex rate.";
      goto LABEL_35;
    }

LABEL_30:
    *a4 = 1;
    return result;
  }

  v10 = strcmp(v7, "vertexUV");
  if (!v10)
  {
    if (a3 != 8)
    {
      v15 = "Only float[2] supported for uvs.";
      goto LABEL_35;
    }

    if ((a2 & 0xFFFFFFFD) != 1)
    {
      v15 = "Uvs must be at either the vertex or face-varying rate.";
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  v11 = strcmp(v7, "vertexNormal");
  if (!v11)
  {
    if ((a3 & 0xFFFFFFFD) != 9)
    {
      v15 = "Only float[3] supported for normals.";
      goto LABEL_35;
    }

    if ((a2 - 4) <= 0xFFFFFFFC)
    {
      v15 = "Normals must be at the vertex, face, or face-varying rate.";
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  v12 = strcmp(v7, "vertexTangent");
  if (!v12)
  {
    if ((a3 & 0xFFFFFFFD) != 9)
    {
      v15 = "Only float[3] supported for tangents.";
      goto LABEL_35;
    }

    if ((a2 & 0xFFFFFFFD) != 1)
    {
      v15 = "Tangents must be at the vertex or face-varying rate.";
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  v13 = strcmp(v7, "vertexBitangent");
  if (!v13)
  {
    if ((a3 & 0xFFFFFFFD) != 9)
    {
      v15 = "Only float[3] supported for bitangents.";
      goto LABEL_35;
    }

    if ((a2 & 0xFFFFFFFD) != 1)
    {
      v15 = "Bitangents must be at the vertex or face-varying rate.";
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  v14 = strcmp(v7, "vertexColor");
  if (v14)
  {
    goto LABEL_30;
  }

  if (a3 != 10)
  {
    v15 = "Only float[4] supported for colors.";
    goto LABEL_35;
  }

  if (a2 != 4)
  {
    goto LABEL_30;
  }

  v15 = "Colors cannot be at the user-managed rate.";
LABEL_35:
  result = v18;
  v16 = v19;
  v17 = v20;
  *a4 = 0;
  *(a4 + 8) = 100;
  *(a4 + 16) = re::AssetErrorCategory(void)::instance;
  *(a4 + 24) = result;
  *(a4 + 40) = v16;
  *(a4 + 48) = v17;
  return result;
}

void re::GeomModelDescriptor::setSurfaceTopology(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (!*a3)
  {
    v15 = *v26;
    v16 = *&v26[16];
    v17 = v27;
    *a5 = 0;
    *(a5 + 8) = 100;
    *(a5 + 16) = re::AssetErrorCategory(void)::instance;
    *(a5 + 24) = v15;
    *(a5 + 40) = v16;
    *(a5 + 48) = v17;
    return;
  }

  v10 = re::GeomModelDescriptor::validateIndexType(a1, *(a3 + 8), v26);
  v11 = v26[0];
  if (v26[0])
  {
    if (!*a4)
    {
      v18 = "Null vertex indices per face buffer.";
LABEL_20:
      v19 = v22;
      v20 = v23;
      v21 = v24;
      *a5 = 0;
      *(a5 + 8) = 100;
      *(a5 + 16) = re::AssetErrorCategory(void)::instance;
      *(a5 + 24) = v19;
      *(a5 + 40) = v20;
      *(a5 + 48) = v21;
      goto LABEL_21;
    }

    re::GeomModelDescriptor::validateIndexType(v10, *(a4 + 8), &v22);
    v12 = re::Result<re::Unit,re::DetailedError>::operator=(v26, &v22);
    if ((v22 & 1) == 0)
    {
      v12 = v24;
      if (v24)
      {
        if (v25)
        {
          v12 = (*(*v24 + 40))();
        }
      }
    }

    v11 = v26[0];
    if (v26[0])
    {
      if (*(a3 + 32) && *(a4 + 32))
      {
        *(a1 + 2) = a2;
        *(a1 + 3) = *(a3 + 16);
        re::GeomModelDescriptor::makeCFDataPayload(&v22, a3);
        v13 = *(a1 + 4);
        *(a1 + 4) = v22;
        if (v13)
        {
        }

        re::GeomModelDescriptor::makeCFDataPayload(&v22, a4);
        v14 = *(a1 + 5);
        *(a1 + 5) = v22;
        if (v14)
        {
        }

        *a5 = 1;
        goto LABEL_21;
      }

      v18 = "Zero stride provided.";
      goto LABEL_20;
    }
  }

  *a5 = v11;
  *(a5 + 8) = *&v26[8];
  *(a5 + 24) = v27;
  *(a5 + 48) = v29;
  *(a5 + 32) = v28;
  v29 = 0;
  v27 = 0;
  v28 = 0uLL;
LABEL_21:
  if (v26[0] & 1) == 0 && v27 && (v28)
  {
    (*(*v27 + 40))();
  }
}

void re::GeomModelDescriptor::makeFromGeomMeshes(_anonymous_namespace_ *a1@<X0>, char *a2@<X8>)
{
  v5 = a1;
  __src[1] = *MEMORY[0x1E69E9840];
  v465 = 0;
  v7 = &v465;
  v466 = 0;
  v467 = 0u;
  memset(v468, 0, sizeof(v468));
  v469 = 0u;
  v470 = 0u;
  v471 = 0x7FFFFFFFLL;
  memset(v472, 0, sizeof(v472));
  v473 = 0;
  memset(v474, 0, sizeof(v474));
  v475 = 0x7FFFFFFFLL;
  *(&v476 + 1) = 0;
  v477 = 0uLL;
  v8 = re::DynamicString::setCapacity(&v476, 0);
  if (!*(v5 + 16))
  {
    re::Ok<re::GeomModelDescriptor,re::GeomModelDescriptor>(&v483, &v465);
    re::Result<re::GeomModelDescriptor,re::DetailedError>::Result(a2, &v483);
    if (v490)
    {
      if (BYTE8(v490))
      {
        (*(*v490 + 40))();
      }

      v491 = 0u;
      v490 = 0u;
    }

    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v489);
    re::DynamicArray<re::GeomModelDescriptor::AttributeData>::deinit(v488);
    v214.n128_f64[0] = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v486);
    if (*(&v485 + 1))
    {

      *(&v485 + 1) = 0;
    }

    if (v485)
    {

      *&v485 = 0;
    }

    if (v483.n128_u64[1])
    {
    }

    goto LABEL_461;
  }

  v9 = *(v5 + 32);
  v10 = *(v9 + 40);
  v464 = 0;
  v462[2] = 0;
  v462[1] = 0;
  v463 = 0;
  re::DynamicArray<int>::setCapacity(v462, v10);
  ++v463;
  v461 = 0;
  v12 = *(v9 + 40);
  if (v12)
  {
    v13 = 0;
    do
    {
      re::DynamicArray<int>::add(v462, &v461);
      ++v13;
      v12 = *(v9 + 40);
    }

    while (v13 < v12);
  }

  v14 = *(v5 + 16);
  if (v14 >= 2)
  {
    v12 = 1;
    while (1)
    {
      ++v461;
      if (v14 <= v12)
      {
        break;
      }

      v15 = -1;
      while (1)
      {
        v16 = (*(v5 + 32) + 736 * v12);
        if (++v15 >= *(v16 + 10))
        {
          break;
        }

        re::DynamicArray<int>::add(v462, &v461);
        v14 = *(v5 + 16);
        if (v14 <= v12)
        {
          goto LABEL_427;
        }
      }

      canAppendGeomMeshToGeomMesh = re::internal::canAppendGeomMeshToGeomMesh(v16, v9, v11);
      if ((canAppendGeomMeshToGeomMesh & 1) == 0)
      {
        v214 = v483;
        v215 = v484;
        *a2 = 0;
        *(a2 + 1) = 100;
        *(a2 + 2) = re::AssetErrorCategory(void)::instance;
        *(a2 + 24) = v214;
        *(a2 + 40) = v215;
        goto LABEL_458;
      }

      v2 = *(v5 + 16);
      if (v2 <= v12)
      {
        goto LABEL_476;
      }

      re::internal::appendGeomMeshToGeomMesh((*(v5 + 32) + 736 * v12), v9);
      v12 = (v12 + 1);
      v14 = *(v5 + 16);
      if (v14 <= v12)
      {
        v12 = *(v9 + 40);
        goto LABEL_16;
      }
    }

LABEL_427:
    v492[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v216 = MEMORY[0x1E69E9C10];
    v217 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(location[0]) = 136315906;
    *(location + 4) = "operator[]";
    WORD2(location[1]) = 1024;
    if (v217)
    {
      v218 = 3;
    }

    else
    {
      v218 = 2;
    }

    *(&location[1] + 6) = 789;
    WORD1(location[2]) = 2048;
    *(&location[2] + 4) = v12;
    WORD2(location[3]) = 2048;
    *(&location[3] + 6) = v14;
    _os_log_send_and_compose_impl(v218, v492, &v483, 80, &dword_1E1C61000, v216, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", location, 38, v434, v437);
    v211 = _os_crash_msg();
    __break(1u);
    goto LABEL_431;
  }

LABEL_16:
  v460 = 0;
  v457 = 0;
  memset(v458, 0, sizeof(v458));
  v459 = 0;
  v454[1] = 0;
  v455 = 0;
  v454[0] = 0;
  v456 = 0;
  if (v12)
  {
    v18 = 0;
    v5 = 0;
    v2 = v481;
    while (v12 > v5)
    {
      v19 = 0;
      v20 = *(v9 + 56) + v18;
      do
      {
        *&v481[v19] = *(v20 + v19);
        v19 += 4;
      }

      while (v19 != 16);
      if (v482 == -1)
      {
        v21 = 3;
      }

      else
      {
        v21 = 4;
      }

      v483.n128_u8[0] = v21;
      re::DynamicArray<unsigned char>::add(v458, &v483);
      re::DynamicArray<float>::copy(v454, v455, v481, v483.n128_u8[0]);
      ++v5;
      v12 = *(v9 + 40);
      v18 += 16;
      if (v5 >= v12)
      {
        goto LABEL_25;
      }
    }

    v492[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v220 = MEMORY[0x1E69E9C10];
    v221 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(location[0]) = 136315906;
    *(location + 4) = "operator[]";
    WORD2(location[1]) = 1024;
    if (v221)
    {
      v222 = 3;
    }

    else
    {
      v222 = 2;
    }

    *(&location[1] + 6) = 797;
    WORD1(location[2]) = 2048;
    *(&location[2] + 4) = v5;
    WORD2(location[3]) = 2048;
    *(&location[3] + 6) = v12;
    _os_log_send_and_compose_impl(v222, v492, &v483, 80, &dword_1E1C61000, v220, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", location, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_476:
    v492[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v223 = MEMORY[0x1E69E9C10];
    v224 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(location[0]) = 136315906;
    *(location + 4) = "operator[]";
    WORD2(location[1]) = 1024;
    if (v224)
    {
      v225 = 3;
    }

    else
    {
      v225 = 2;
    }

    *(&location[1] + 6) = 789;
    WORD1(location[2]) = 2048;
    *(&location[2] + 4) = v12;
    WORD2(location[3]) = 2048;
    *(&location[3] + 6) = v2;
    _os_log_send_and_compose_impl(v225, v492, &v483, 80, &dword_1E1C61000, v223, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", location, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_480:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v226 = MEMORY[0x1E69E9C10];
    v227 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v227)
    {
      v228 = 3;
    }

    else
    {
      v228 = 2;
    }

    LODWORD(v480[0]) = 797;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v2;
    HIWORD(v480[1]) = 2048;
    v480[2] = v9;
    _os_log_send_and_compose_impl(v228, __src, &v483, 80, &dword_1E1C61000, v226, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_484:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v229 = MEMORY[0x1E69E9C10];
    v230 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v495 = 136315906;
    *&v495[4] = "operator[]";
    *&v495[12] = 1024;
    if (v230)
    {
      v231 = 3;
    }

    else
    {
      v231 = 2;
    }

    *&v495[14] = 797;
    *&v495[18] = 2048;
    *&v495[20] = v2;
    *&v495[28] = 2048;
    *&v495[30] = v9;
    _os_log_send_and_compose_impl(v231, __src, &v483, 80, &dword_1E1C61000, v229, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v495, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_488:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v232 = MEMORY[0x1E69E9C10];
    v233 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v233)
    {
      v234 = 3;
    }

    else
    {
      v234 = 2;
    }

    LODWORD(v480[0]) = 797;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v2;
    HIWORD(v480[1]) = 2048;
    v480[2] = v9;
    _os_log_send_and_compose_impl(v234, __src, &v483, 80, &dword_1E1C61000, v232, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_492:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v235 = MEMORY[0x1E69E9C10];
    v236 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v236)
    {
      v237 = 3;
    }

    else
    {
      v237 = 2;
    }

    LODWORD(v480[0]) = 797;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v2;
    HIWORD(v480[1]) = 2048;
    v480[2] = v9;
    _os_log_send_and_compose_impl(v237, __src, &v483, 80, &dword_1E1C61000, v235, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_496:
    *v495 = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v238 = MEMORY[0x1E69E9C10];
    v239 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v239)
    {
      v240 = 3;
    }

    else
    {
      v240 = 2;
    }

    LODWORD(v480[0]) = 797;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v2;
    HIWORD(v480[1]) = 2048;
    v480[2] = v9;
    _os_log_send_and_compose_impl(v240, v495, &v483, 80, &dword_1E1C61000, v238, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_500:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v241 = MEMORY[0x1E69E9C10];
    v242 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v242)
    {
      v243 = 3;
    }

    else
    {
      v243 = 2;
    }

    LODWORD(v480[0]) = 797;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v2;
    HIWORD(v480[1]) = 2048;
    v480[2] = v9;
    _os_log_send_and_compose_impl(v243, __src, &v483, 80, &dword_1E1C61000, v241, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_504:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v244 = MEMORY[0x1E69E9C10];
    v245 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v245)
    {
      v246 = 3;
    }

    else
    {
      v246 = 2;
    }

    LODWORD(v480[0]) = 797;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v2;
    HIWORD(v480[1]) = 2048;
    v480[2] = v9;
    _os_log_send_and_compose_impl(v246, __src, &v483, 80, &dword_1E1C61000, v244, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_508:
    *v495 = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v247 = MEMORY[0x1E69E9C10];
    v248 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v248)
    {
      v249 = 3;
    }

    else
    {
      v249 = 2;
    }

    LODWORD(v480[0]) = 797;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v2;
    HIWORD(v480[1]) = 2048;
    v480[2] = v9;
    _os_log_send_and_compose_impl(v249, v495, &v483, 80, &dword_1E1C61000, v247, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_512:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v250 = MEMORY[0x1E69E9C10];
    v251 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v495 = 136315906;
    *&v495[4] = "operator[]";
    *&v495[12] = 1024;
    if (v251)
    {
      v252 = 3;
    }

    else
    {
      v252 = 2;
    }

    *&v495[14] = 797;
    *&v495[18] = 2048;
    *&v495[20] = v2;
    *&v495[28] = 2048;
    *&v495[30] = v9;
    _os_log_send_and_compose_impl(v252, __src, &v483, 80, &dword_1E1C61000, v250, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v495, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_516:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v253 = MEMORY[0x1E69E9C10];
    v254 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v254)
    {
      v255 = 3;
    }

    else
    {
      v255 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v4;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v255, __src, &v483, 80, &dword_1E1C61000, v253, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_520:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v256 = MEMORY[0x1E69E9C10];
    v257 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v495 = 136315906;
    *&v495[4] = "operator[]";
    *&v495[12] = 1024;
    if (v257)
    {
      v258 = 3;
    }

    else
    {
      v258 = 2;
    }

    *&v495[14] = 613;
    *&v495[18] = 2048;
    *&v495[20] = v4;
    *&v495[28] = 2048;
    *&v495[30] = v7;
    _os_log_send_and_compose_impl(v258, __src, &v483, 80, &dword_1E1C61000, v256, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v495, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_524:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v259 = MEMORY[0x1E69E9C10];
    v260 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v260)
    {
      v261 = 3;
    }

    else
    {
      v261 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v4;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v261, __src, &v483, 80, &dword_1E1C61000, v259, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_528:
    *v495 = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v262 = MEMORY[0x1E69E9C10];
    v263 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v263)
    {
      v264 = 3;
    }

    else
    {
      v264 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v4;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v264, v495, &v483, 80, &dword_1E1C61000, v262, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_532:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v265 = MEMORY[0x1E69E9C10];
    v266 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v266)
    {
      v267 = 3;
    }

    else
    {
      v267 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v4;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v267, __src, &v483, 80, &dword_1E1C61000, v265, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_536:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v268 = MEMORY[0x1E69E9C10];
    v269 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v269)
    {
      v270 = 3;
    }

    else
    {
      v270 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v4;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v270, __src, &v483, 80, &dword_1E1C61000, v268, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_540:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v271 = MEMORY[0x1E69E9C10];
    v272 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v272)
    {
      v273 = 3;
    }

    else
    {
      v273 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v4;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v273, __src, &v483, 80, &dword_1E1C61000, v271, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_544:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v274 = MEMORY[0x1E69E9C10];
    v275 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v495 = 136315906;
    *&v495[4] = "operator[]";
    *&v495[12] = 1024;
    if (v275)
    {
      v276 = 3;
    }

    else
    {
      v276 = 2;
    }

    *&v495[14] = 613;
    *&v495[18] = 2048;
    *&v495[20] = v4;
    *&v495[28] = 2048;
    *&v495[30] = v7;
    _os_log_send_and_compose_impl(v276, __src, &v483, 80, &dword_1E1C61000, v274, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v495, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_548:
    *v495 = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v277 = MEMORY[0x1E69E9C10];
    v278 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v278)
    {
      v279 = 3;
    }

    else
    {
      v279 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v4;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v279, v495, &v483, 80, &dword_1E1C61000, v277, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_552:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v280 = MEMORY[0x1E69E9C10];
    v281 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v495 = 136315906;
    *&v495[4] = "operator[]";
    *&v495[12] = 1024;
    if (v281)
    {
      v282 = 3;
    }

    else
    {
      v282 = 2;
    }

    *&v495[14] = 613;
    *&v495[18] = 2048;
    *&v495[20] = v3;
    *&v495[28] = 2048;
    *&v495[30] = v7;
    _os_log_send_and_compose_impl(v282, __src, &v483, 80, &dword_1E1C61000, v280, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v495, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_556:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v283 = MEMORY[0x1E69E9C10];
    v284 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v284)
    {
      v285 = 3;
    }

    else
    {
      v285 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v3;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v285, __src, &v483, 80, &dword_1E1C61000, v283, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_560:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v286 = MEMORY[0x1E69E9C10];
    v287 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v495 = 136315906;
    *&v495[4] = "operator[]";
    *&v495[12] = 1024;
    if (v287)
    {
      v288 = 3;
    }

    else
    {
      v288 = 2;
    }

    *&v495[14] = 613;
    *&v495[18] = 2048;
    *&v495[20] = v3;
    *&v495[28] = 2048;
    *&v495[30] = v7;
    _os_log_send_and_compose_impl(v288, __src, &v483, 80, &dword_1E1C61000, v286, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v495, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_564:
    *v495 = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v289 = MEMORY[0x1E69E9C10];
    v290 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v290)
    {
      v291 = 3;
    }

    else
    {
      v291 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v3;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v291, v495, &v483, 80, &dword_1E1C61000, v289, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_568:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v292 = MEMORY[0x1E69E9C10];
    v293 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v293)
    {
      v294 = 3;
    }

    else
    {
      v294 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v3;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v294, __src, &v483, 80, &dword_1E1C61000, v292, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_572:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v295 = MEMORY[0x1E69E9C10];
    v296 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v296)
    {
      v297 = 3;
    }

    else
    {
      v297 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v3;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v297, __src, &v483, 80, &dword_1E1C61000, v295, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_576:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v298 = MEMORY[0x1E69E9C10];
    v299 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v299)
    {
      v300 = 3;
    }

    else
    {
      v300 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v3;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v300, __src, &v483, 80, &dword_1E1C61000, v298, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_580:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v301 = MEMORY[0x1E69E9C10];
    v302 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v302)
    {
      v303 = 3;
    }

    else
    {
      v303 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v3;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v303, __src, &v483, 80, &dword_1E1C61000, v301, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_584:
    *v495 = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v304 = MEMORY[0x1E69E9C10];
    v305 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v305)
    {
      v306 = 3;
    }

    else
    {
      v306 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v3;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v306, v495, &v483, 80, &dword_1E1C61000, v304, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_588:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v307 = MEMORY[0x1E69E9C10];
    v308 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v495 = 136315906;
    *&v495[4] = "operator[]";
    *&v495[12] = 1024;
    if (v308)
    {
      v309 = 3;
    }

    else
    {
      v309 = 2;
    }

    *&v495[14] = 613;
    *&v495[18] = 2048;
    *&v495[20] = v9;
    *&v495[28] = 2048;
    *&v495[30] = v7;
    _os_log_send_and_compose_impl(v309, __src, &v483, 80, &dword_1E1C61000, v307, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v495, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_592:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v310 = MEMORY[0x1E69E9C10];
    v311 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v311)
    {
      v312 = 3;
    }

    else
    {
      v312 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v9;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v312, __src, &v483, 80, &dword_1E1C61000, v310, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_596:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v313 = MEMORY[0x1E69E9C10];
    v314 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v314)
    {
      v315 = 3;
    }

    else
    {
      v315 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v9;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v315, __src, &v483, 80, &dword_1E1C61000, v313, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_600:
    *v495 = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v316 = MEMORY[0x1E69E9C10];
    v317 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v317)
    {
      v318 = 3;
    }

    else
    {
      v318 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v9;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v318, v495, &v483, 80, &dword_1E1C61000, v316, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_604:
    *v495 = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v319 = MEMORY[0x1E69E9C10];
    v320 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v320)
    {
      v321 = 3;
    }

    else
    {
      v321 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v9;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v321, v495, &v483, 80, &dword_1E1C61000, v319, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_608:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v322 = MEMORY[0x1E69E9C10];
    v323 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v323)
    {
      v324 = 3;
    }

    else
    {
      v324 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v9;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v324, __src, &v483, 80, &dword_1E1C61000, v322, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_612:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v325 = MEMORY[0x1E69E9C10];
    v326 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v495 = 136315906;
    *&v495[4] = "operator[]";
    *&v495[12] = 1024;
    if (v326)
    {
      v327 = 3;
    }

    else
    {
      v327 = 2;
    }

    *&v495[14] = 613;
    *&v495[18] = 2048;
    *&v495[20] = v9;
    *&v495[28] = 2048;
    *&v495[30] = v7;
    _os_log_send_and_compose_impl(v327, __src, &v483, 80, &dword_1E1C61000, v325, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v495, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_616:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v328 = MEMORY[0x1E69E9C10];
    v329 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v329)
    {
      v330 = 3;
    }

    else
    {
      v330 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v9;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v330, __src, &v483, 80, &dword_1E1C61000, v328, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_620:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v331 = MEMORY[0x1E69E9C10];
    v332 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v332)
    {
      v333 = 3;
    }

    else
    {
      v333 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v9;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v333, __src, &v483, 80, &dword_1E1C61000, v331, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_624:
    *v495 = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v334 = MEMORY[0x1E69E9C10];
    v335 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v335)
    {
      v336 = 3;
    }

    else
    {
      v336 = 2;
    }

    LODWORD(v480[0]) = 797;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v2;
    HIWORD(v480[1]) = 2048;
    v480[2] = v9;
    _os_log_send_and_compose_impl(v336, v495, &v483, 80, &dword_1E1C61000, v334, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_628:
    *v495 = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v337 = MEMORY[0x1E69E9C10];
    v338 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v338)
    {
      v339 = 3;
    }

    else
    {
      v339 = 2;
    }

    LODWORD(v480[0]) = 797;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v2;
    HIWORD(v480[1]) = 2048;
    v480[2] = v9;
    _os_log_send_and_compose_impl(v339, v495, &v483, 80, &dword_1E1C61000, v337, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_632:
    *v495 = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v340 = MEMORY[0x1E69E9C10];
    v341 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v341)
    {
      v342 = 3;
    }

    else
    {
      v342 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v4;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v342, v495, &v483, 80, &dword_1E1C61000, v340, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_636:
    *v495 = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v343 = MEMORY[0x1E69E9C10];
    v344 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v344)
    {
      v345 = 3;
    }

    else
    {
      v345 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v4;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v345, v495, &v483, 80, &dword_1E1C61000, v343, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_640:
    *v495 = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v346 = MEMORY[0x1E69E9C10];
    v347 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v347)
    {
      v348 = 3;
    }

    else
    {
      v348 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v3;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v348, v495, &v483, 80, &dword_1E1C61000, v346, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_644:
    *v495 = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v349 = MEMORY[0x1E69E9C10];
    v350 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v350)
    {
      v351 = 3;
    }

    else
    {
      v351 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v3;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v351, v495, &v483, 80, &dword_1E1C61000, v349, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_648:
    *v495 = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v352 = MEMORY[0x1E69E9C10];
    v353 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v353)
    {
      v354 = 3;
    }

    else
    {
      v354 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v9;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v354, v495, &v483, 80, &dword_1E1C61000, v352, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_652:
    *v495 = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v355 = MEMORY[0x1E69E9C10];
    v356 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v356)
    {
      v357 = 3;
    }

    else
    {
      v357 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v9;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v357, v495, &v483, 80, &dword_1E1C61000, v355, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_656:
    *v495 = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v358 = MEMORY[0x1E69E9C10];
    v359 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "copy";
    v479 = 1024;
    if (v359)
    {
      v360 = 3;
    }

    else
    {
      v360 = 2;
    }

    LODWORD(v480[0]) = 643;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = -1;
    HIWORD(v480[1]) = 2048;
    v480[2] = 0;
    _os_log_send_and_compose_impl(v360, v495, &v483, 80, &dword_1E1C61000, v358, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_660:
    *v495 = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v361 = MEMORY[0x1E69E9C10];
    v362 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "copy";
    v479 = 1024;
    if (v362)
    {
      v363 = 3;
    }

    else
    {
      v363 = 2;
    }

    LODWORD(v480[0]) = 643;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = -1;
    HIWORD(v480[1]) = 2048;
    v480[2] = 0;
    _os_log_send_and_compose_impl(v363, v495, &v483, 80, &dword_1E1C61000, v361, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_664:
    re::internal::assertLog(7, v62, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v2, v2, v9);
    _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", v430, v432, v435);
    __break(1u);
LABEL_665:
    re::internal::assertLog(7, v79, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v3, v3, v2);
    _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", v431, v433, v436);
    __break(1u);
LABEL_666:
    *v495 = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v364 = MEMORY[0x1E69E9C10];
    v365 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v365)
    {
      v366 = 3;
    }

    else
    {
      v366 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v2;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v366, v495, &v483, 80, &dword_1E1C61000, v364, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_670:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v367 = MEMORY[0x1E69E9C10];
    v368 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v495 = 136315906;
    *&v495[4] = "operator[]";
    *&v495[12] = 1024;
    if (v368)
    {
      v369 = 3;
    }

    else
    {
      v369 = 2;
    }

    *&v495[14] = 613;
    *&v495[18] = 2048;
    *&v495[20] = v2;
    *&v495[28] = 2048;
    *&v495[30] = v7;
    _os_log_send_and_compose_impl(v369, __src, &v483, 80, &dword_1E1C61000, v367, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v495, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_674:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v370 = MEMORY[0x1E69E9C10];
    v371 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v371)
    {
      v372 = 3;
    }

    else
    {
      v372 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v2;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v372, __src, &v483, 80, &dword_1E1C61000, v370, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_678:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v373 = MEMORY[0x1E69E9C10];
    v374 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v495 = 136315906;
    *&v495[4] = "operator[]";
    *&v495[12] = 1024;
    if (v374)
    {
      v375 = 3;
    }

    else
    {
      v375 = 2;
    }

    *&v495[14] = 613;
    *&v495[18] = 2048;
    *&v495[20] = v2;
    *&v495[28] = 2048;
    *&v495[30] = v7;
    _os_log_send_and_compose_impl(v375, __src, &v483, 80, &dword_1E1C61000, v373, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v495, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_682:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v376 = MEMORY[0x1E69E9C10];
    v377 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v377)
    {
      v378 = 3;
    }

    else
    {
      v378 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v2;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v378, __src, &v483, 80, &dword_1E1C61000, v376, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_686:
    *v495 = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v379 = MEMORY[0x1E69E9C10];
    v380 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v380)
    {
      v381 = 3;
    }

    else
    {
      v381 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v2;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v381, v495, &v483, 80, &dword_1E1C61000, v379, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_690:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v382 = MEMORY[0x1E69E9C10];
    v383 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v383)
    {
      v384 = 3;
    }

    else
    {
      v384 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v2;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v384, __src, &v483, 80, &dword_1E1C61000, v382, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_694:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v385 = MEMORY[0x1E69E9C10];
    v386 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v386)
    {
      v387 = 3;
    }

    else
    {
      v387 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v2;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v387, __src, &v483, 80, &dword_1E1C61000, v385, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_698:
    __src[0] = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v388 = MEMORY[0x1E69E9C10];
    v389 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v389)
    {
      v390 = 3;
    }

    else
    {
      v390 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v2;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v390, __src, &v483, 80, &dword_1E1C61000, v388, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_702:
    *v495 = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v391 = MEMORY[0x1E69E9C10];
    v392 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v392)
    {
      v393 = 3;
    }

    else
    {
      v393 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v2;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v393, v495, &v483, 80, &dword_1E1C61000, v391, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_706:
    *v495 = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v394 = MEMORY[0x1E69E9C10];
    v395 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v478 = 136315906;
    *&v478[4] = "operator[]";
    v479 = 1024;
    if (v395)
    {
      v396 = 3;
    }

    else
    {
      v396 = 2;
    }

    LODWORD(v480[0]) = 613;
    WORD2(v480[0]) = 2048;
    *(v480 + 6) = v2;
    HIWORD(v480[1]) = 2048;
    v480[2] = v7;
    _os_log_send_and_compose_impl(v396, v495, &v483, 80, &dword_1E1C61000, v394, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v478, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_710:
    *v478 = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v397 = MEMORY[0x1E69E9C10];
    v398 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v492[0]) = 136315906;
    *(v492 + 4) = "operator[]";
    WORD2(v492[1]) = 1024;
    if (v398)
    {
      v399 = 3;
    }

    else
    {
      v399 = 2;
    }

    *(&v492[1] + 6) = 613;
    WORD1(v492[2]) = 2048;
    *(&v492[2] + 4) = 0;
    WORD2(v492[3]) = 2048;
    *(&v492[3] + 6) = 0;
    _os_log_send_and_compose_impl(v399, v478, &v483, 80, &dword_1E1C61000, v397, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v492, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_714:
    *v478 = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v400 = MEMORY[0x1E69E9C10];
    v401 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v492[0]) = 136315906;
    *(v492 + 4) = "operator[]";
    WORD2(v492[1]) = 1024;
    if (v401)
    {
      v402 = 3;
    }

    else
    {
      v402 = 2;
    }

    *(&v492[1] + 6) = 613;
    WORD1(v492[2]) = 2048;
    *(&v492[2] + 4) = 0;
    WORD2(v492[3]) = 2048;
    *(&v492[3] + 6) = 0;
    _os_log_send_and_compose_impl(v402, v478, &v483, 80, &dword_1E1C61000, v400, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v492, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_718:
    *v478 = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v403 = MEMORY[0x1E69E9C10];
    v404 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v492[0]) = 136315906;
    *(v492 + 4) = "operator[]";
    WORD2(v492[1]) = 1024;
    if (v404)
    {
      v405 = 3;
    }

    else
    {
      v405 = 2;
    }

    *(&v492[1] + 6) = 613;
    WORD1(v492[2]) = 2048;
    *(&v492[2] + 4) = 0;
    WORD2(v492[3]) = 2048;
    *(&v492[3] + 6) = 0;
    _os_log_send_and_compose_impl(v405, v478, &v483, 80, &dword_1E1C61000, v403, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v492, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_722:
    *v478 = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v406 = MEMORY[0x1E69E9C10];
    v407 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v492[0]) = 136315906;
    *(v492 + 4) = "operator[]";
    WORD2(v492[1]) = 1024;
    if (v407)
    {
      v408 = 3;
    }

    else
    {
      v408 = 2;
    }

    *(&v492[1] + 6) = 613;
    WORD1(v492[2]) = 2048;
    *(&v492[2] + 4) = 0;
    WORD2(v492[3]) = 2048;
    *(&v492[3] + 6) = 0;
    _os_log_send_and_compose_impl(v408, v478, &v483, 80, &dword_1E1C61000, v406, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v492, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_726:
    *v478 = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v409 = MEMORY[0x1E69E9C10];
    v410 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v492[0]) = 136315906;
    *(v492 + 4) = "operator[]";
    WORD2(v492[1]) = 1024;
    if (v410)
    {
      v411 = 3;
    }

    else
    {
      v411 = 2;
    }

    *(&v492[1] + 6) = 613;
    WORD1(v492[2]) = 2048;
    *(&v492[2] + 4) = 0;
    WORD2(v492[3]) = 2048;
    *(&v492[3] + 6) = 0;
    _os_log_send_and_compose_impl(v411, v478, &v483, 80, &dword_1E1C61000, v409, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v492, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_730:
    *v478 = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v412 = MEMORY[0x1E69E9C10];
    v413 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v492[0]) = 136315906;
    *(v492 + 4) = "operator[]";
    WORD2(v492[1]) = 1024;
    if (v413)
    {
      v414 = 3;
    }

    else
    {
      v414 = 2;
    }

    *(&v492[1] + 6) = 613;
    WORD1(v492[2]) = 2048;
    *(&v492[2] + 4) = 0;
    WORD2(v492[3]) = 2048;
    *(&v492[3] + 6) = 0;
    _os_log_send_and_compose_impl(v414, v478, &v483, 80, &dword_1E1C61000, v412, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v492, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_734:
    *v478 = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v415 = MEMORY[0x1E69E9C10];
    v416 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v492[0]) = 136315906;
    *(v492 + 4) = "operator[]";
    WORD2(v492[1]) = 1024;
    if (v416)
    {
      v417 = 3;
    }

    else
    {
      v417 = 2;
    }

    *(&v492[1] + 6) = 613;
    WORD1(v492[2]) = 2048;
    *(&v492[2] + 4) = 0;
    WORD2(v492[3]) = 2048;
    *(&v492[3] + 6) = 0;
    _os_log_send_and_compose_impl(v417, v478, &v483, 80, &dword_1E1C61000, v415, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v492, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_738:
    *v478 = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v418 = MEMORY[0x1E69E9C10];
    v419 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v492[0]) = 136315906;
    *(v492 + 4) = "operator[]";
    WORD2(v492[1]) = 1024;
    if (v419)
    {
      v420 = 3;
    }

    else
    {
      v420 = 2;
    }

    *(&v492[1] + 6) = 613;
    WORD1(v492[2]) = 2048;
    *(&v492[2] + 4) = 0;
    WORD2(v492[3]) = 2048;
    *(&v492[3] + 6) = 0;
    _os_log_send_and_compose_impl(v420, v478, &v483, 80, &dword_1E1C61000, v418, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v492, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_742:
    *v478 = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v421 = MEMORY[0x1E69E9C10];
    v422 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v492[0]) = 136315906;
    *(v492 + 4) = "operator[]";
    WORD2(v492[1]) = 1024;
    if (v422)
    {
      v423 = 3;
    }

    else
    {
      v423 = 2;
    }

    *(&v492[1] + 6) = 613;
    WORD1(v492[2]) = 2048;
    *(&v492[2] + 4) = 0;
    WORD2(v492[3]) = 2048;
    *(&v492[3] + 6) = 0;
    _os_log_send_and_compose_impl(v423, v478, &v483, 80, &dword_1E1C61000, v421, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v492, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_746:
    *v478 = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v424 = MEMORY[0x1E69E9C10];
    v425 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v492[0]) = 136315906;
    *(v492 + 4) = "operator[]";
    WORD2(v492[1]) = 1024;
    if (v425)
    {
      v426 = 3;
    }

    else
    {
      v426 = 2;
    }

    *(&v492[1] + 6) = 613;
    WORD1(v492[2]) = 2048;
    *(&v492[2] + 4) = 0;
    WORD2(v492[3]) = 2048;
    *(&v492[3] + 6) = 0;
    _os_log_send_and_compose_impl(v426, v478, &v483, 80, &dword_1E1C61000, v424, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v492, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_750:
    *v478 = 0;
    v486 = 0u;
    v487 = 0u;
    v484 = 0u;
    v485 = 0u;
    v483 = 0u;
    v427 = MEMORY[0x1E69E9C10];
    v428 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v492[0]) = 136315906;
    *(v492 + 4) = "operator[]";
    WORD2(v492[1]) = 1024;
    if (v428)
    {
      v429 = 3;
    }

    else
    {
      v429 = 2;
    }

    *(&v492[1] + 6) = 613;
    WORD1(v492[2]) = 2048;
    *(&v492[2] + 4) = 0;
    WORD2(v492[3]) = 2048;
    *(&v492[3] + 6) = 0;
    _os_log_send_and_compose_impl(v429, v478, &v483, 80, &dword_1E1C61000, v427, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v492, 38, v434, v437);
    _os_crash_msg();
    __break(1u);
LABEL_754:
    re::internal::assertLog(4, v188, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
LABEL_755:
    re::internal::assertLog(4, v45, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
LABEL_756:
    re::internal::assertLog(4, v95, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
LABEL_757:
    re::internal::assertLog(4, v126, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
LABEL_758:
    re::internal::assertLog(4, v156, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
LABEL_759:
    re::internal::assertLog(4, v112, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
LABEL_760:
    re::internal::assertLog(4, v28, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
LABEL_761:
    re::internal::assertLog(4, v172, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
LABEL_762:
    re::internal::assertLog(4, v142, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
LABEL_763:
    re::internal::assertLog(4, v79, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
LABEL_764:
    re::internal::assertLog(4, v62, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
  }

LABEL_25:
  re::makeNSDataFromGeomArray<unsigned char>(v453, v458);
  re::makeNSDataFromGeomArray<unsigned int>(v452, v454);
  re::GeomModelDescriptor::setSurfaceTopology(&v465, *(v9 + 16), v453, v452, v449);
  if ((v449[0] & 1) == 0 && v450)
  {
    if (BYTE8(v450))
    {
      (*(*v450 + 40))();
    }

    v451 = 0u;
    v450 = 0u;
  }

  v438 = a2;
  if (*(v9 + 640))
  {
    LODWORD(v5) = 0;
    v439 = v9;
    while (1)
    {
      v23 = re::internal::GeomAttributeManager::attributeByIndex((v9 + 64), v5);
      v24 = v23;
      v446 = 0;
      LOBYTE(v447) = -1;
      v448 = 0uLL;
      *(&v447 + 1) = 0;
      v25 = *(v23 + 17);
      if (*(v23 + 16) != 3)
      {
        break;
      }

      v26 = 0;
      if (*(v23 + 17) <= 4u)
      {
        if (*(v23 + 17) > 1u)
        {
          if (v25 != 2)
          {
            if (v25 != 3)
            {
              v44 = re::GeomAttribute::accessValues<int>(v23);
              v46 = *(v24 + 88);
              location[4] = 0;
              memset(location, 0, 28);
              if (v46)
              {
                v47 = v44;
                LODWORD(v7) = v45;
                v48 = 0;
                while (1)
                {
                  v483.n128_u32[0] = v48;
                  v49 = *(v24 + 204);
                  if (v49 == 2)
                  {
                    break;
                  }

                  if (v49 == 1)
                  {
                    if (*(v24 + 224) <= v48)
                    {
                      goto LABEL_81;
                    }

                    v50 = (*(v24 + 240) + 4 * v48);
                    goto LABEL_80;
                  }

                  if (*(v24 + 204))
                  {
                    goto LABEL_755;
                  }

                  if (v48 < *(v24 + 208))
                  {
                    v2 = v48;
LABEL_82:
                    v9 = *(v24 + 88);
                    if (v9 <= v2)
                    {
                      goto LABEL_480;
                    }

                    v53 = (*(v24 + 104) + 16 * v2);
                    v4 = *v53;
                    if (v4 >= v7)
                    {
                      goto LABEL_536;
                    }

                    v3 = v53[1];
                    v9 = v53[2];
                    v2 = v53[3];
                    *v495 = *(v47 + 4 * v4);
                    if (v3 >= v7)
                    {
                      goto LABEL_556;
                    }

                    *&v495[4] = *(v47 + 4 * v3);
                    if (v9 >= v7)
                    {
                      goto LABEL_620;
                    }

                    *&v495[8] = *(v47 + 4 * v9);
                    if (v2 == -1)
                    {
                      v52 = 3;
                      v9 = v439;
                    }

                    else
                    {
                      v9 = v439;
                      if (v2 >= v7)
                      {
                        goto LABEL_698;
                      }

                      *&v495[12] = *(v47 + 4 * v2);
                      v52 = 4;
                    }

                    goto LABEL_90;
                  }

LABEL_81:
                  v52 = 0;
LABEL_90:
                  re::DynamicArray<float>::copy(location, location[2], v495, v52);
                  if (++v48 == v46)
                  {
                    v54 = location[4];
                    v55 = (4 * location[2]);
                    goto LABEL_377;
                  }
                }

                v51 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v24 + 208), &v483);
                if (v51 == -1)
                {
                  goto LABEL_81;
                }

                v50 = (*(v24 + 216) + 8 * v51 + 4);
LABEL_80:
                v2 = *v50;
                if (v2 != -1)
                {
                  goto LABEL_82;
                }

                goto LABEL_81;
              }

              v55 = 0;
              v54 = 0;
LABEL_377:
              re::Data::makeDataWithBytes(&v483, v54, v55);
              v492[0] = 0;
              LOBYTE(v492[1]) = -1;
              memset(&v492[2], 0, 24);
              re::ObjCObject::operator=(v492, &v483);
              LOBYTE(v492[1]) = 6;
LABEL_380:
              v492[2] = location[2];
              v205 = xmmword_1E3068150;
              goto LABEL_389;
            }

            v111 = re::GeomAttribute::accessValues<int>(v23);
            v113 = *(v24 + 88);
            location[4] = 0;
            memset(location, 0, 28);
            if (!v113)
            {
LABEL_226:
              re::makeNSDataFromGeomArray<unsigned int>(v492, location);
              goto LABEL_278;
            }

            v114 = v111;
            LODWORD(v7) = v112;
            v115 = 0;
            while (2)
            {
              v483.n128_u32[0] = v115;
              v116 = *(v24 + 204);
              if (v116 == 2)
              {
                v118 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v24 + 208), &v483);
                if (v118 == -1)
                {
                  goto LABEL_216;
                }

                v117 = (*(v24 + 216) + 8 * v118 + 4);
              }

              else
              {
                if (v116 != 1)
                {
                  if (*(v24 + 204))
                  {
                    goto LABEL_759;
                  }

                  if (v115 < *(v24 + 208))
                  {
                    v2 = v115;
                    goto LABEL_217;
                  }

LABEL_216:
                  v119 = 0;
                  goto LABEL_225;
                }

                if (*(v24 + 224) <= v115)
                {
                  goto LABEL_216;
                }

                v117 = (*(v24 + 240) + 4 * v115);
              }

              v2 = *v117;
              if (v2 == -1)
              {
                goto LABEL_216;
              }

LABEL_217:
              v9 = *(v24 + 88);
              if (v9 <= v2)
              {
                goto LABEL_492;
              }

              v120 = (*(v24 + 104) + 16 * v2);
              v4 = *v120;
              if (v4 >= v7)
              {
                goto LABEL_524;
              }

              v3 = v120[1];
              v9 = v120[2];
              v2 = v120[3];
              *v495 = *(v114 + 4 * v4);
              if (v3 >= v7)
              {
                goto LABEL_576;
              }

              *&v495[4] = *(v114 + 4 * v3);
              if (v9 >= v7)
              {
                goto LABEL_592;
              }

              *&v495[8] = *(v114 + 4 * v9);
              if (v2 == -1)
              {
                v119 = 3;
                v9 = v439;
              }

              else
              {
                v9 = v439;
                if (v2 >= v7)
                {
                  goto LABEL_690;
                }

                *&v495[12] = *(v114 + 4 * v2);
                v119 = 4;
              }

LABEL_225:
              re::DynamicArray<float>::copy(location, location[2], v495, v119);
              if (++v115 == v113)
              {
                goto LABEL_226;
              }

              continue;
            }
          }

          v155 = re::GeomAttribute::accessValues<int>(v23);
          v157 = *(v24 + 88);
          location[4] = 0;
          memset(location, 0, 28);
          if (!v157)
          {
            v166 = 0;
            v165 = 0;
LABEL_379:
            re::Data::makeDataWithBytes(&v483, v165, v166);
            v492[0] = 0;
            LOBYTE(v492[1]) = -1;
            memset(&v492[2], 0, 24);
            re::ObjCObject::operator=(v492, &v483);
            LOBYTE(v492[1]) = 4;
            goto LABEL_380;
          }

          v158 = v155;
          LODWORD(v7) = v156;
          v159 = 0;
          while (2)
          {
            v483.n128_u32[0] = v159;
            v160 = *(v24 + 204);
            if (v160 == 2)
            {
              v162 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v24 + 208), &v483);
              if (v162 == -1)
              {
                goto LABEL_297;
              }

              v161 = (*(v24 + 216) + 8 * v162 + 4);
            }

            else
            {
              if (v160 != 1)
              {
                if (*(v24 + 204))
                {
                  goto LABEL_758;
                }

                if (v159 < *(v24 + 208))
                {
                  v2 = v159;
                  goto LABEL_298;
                }

LABEL_297:
                v163 = 0;
                goto LABEL_306;
              }

              if (*(v24 + 224) <= v159)
              {
                goto LABEL_297;
              }

              v161 = (*(v24 + 240) + 4 * v159);
            }

            v2 = *v161;
            if (v2 == -1)
            {
              goto LABEL_297;
            }

LABEL_298:
            v9 = *(v24 + 88);
            if (v9 <= v2)
            {
              goto LABEL_500;
            }

            v164 = (*(v24 + 104) + 16 * v2);
            v4 = *v164;
            if (v4 >= v7)
            {
              goto LABEL_516;
            }

            v3 = v164[1];
            v9 = v164[2];
            v2 = v164[3];
            *v495 = *(v158 + 4 * v4);
            if (v3 >= v7)
            {
              goto LABEL_580;
            }

            *&v495[4] = *(v158 + 4 * v3);
            if (v9 >= v7)
            {
              goto LABEL_616;
            }

            *&v495[8] = *(v158 + 4 * v9);
            if (v2 == -1)
            {
              v163 = 3;
              v9 = v439;
            }

            else
            {
              v9 = v439;
              if (v2 >= v7)
              {
                goto LABEL_682;
              }

              *&v495[12] = *(v158 + 4 * v2);
              v163 = 4;
            }

LABEL_306:
            re::DynamicArray<float>::copy(location, location[2], v495, v163);
            if (++v159 == v157)
            {
              v165 = location[4];
              v166 = (4 * location[2]);
              goto LABEL_379;
            }

            continue;
          }
        }

        if (*(v23 + 17))
        {
          v78 = re::GeomAttribute::accessValues<int>(v23);
          v80 = *(v24 + 88);
          location[4] = 0;
          memset(location, 0, 28);
          if (v80)
          {
            v81 = v78;
            LODWORD(v7) = v79;
            v82 = 0;
            while (1)
            {
              v483.n128_u32[0] = v82;
              v83 = *(v24 + 204);
              if (v83 == 2)
              {
                break;
              }

              if (v83 == 1)
              {
                if (*(v24 + 224) <= v82)
                {
                  goto LABEL_173;
                }

                v84 = (*(v24 + 240) + 4 * v82);
                goto LABEL_156;
              }

              if (*(v24 + 204))
              {
                goto LABEL_763;
              }

              if (v82 < *(v24 + 208))
              {
                v2 = v82;
LABEL_157:
                v9 = *(v24 + 88);
                if (v9 <= v2)
                {
                  goto LABEL_624;
                }

                v86 = (*(v24 + 104) + 16 * v2);
                v4 = *v86;
                if (v4 >= v7)
                {
                  goto LABEL_636;
                }

                v3 = v86[1];
                v9 = v86[2];
                v2 = v86[3];
                LOWORD(__src[0]) = *(v81 + 2 * v4);
                if (v3 >= v7)
                {
                  goto LABEL_640;
                }

                WORD1(__src[0]) = *(v81 + 2 * v3);
                if (v9 >= v7)
                {
                  goto LABEL_652;
                }

                WORD2(__src[0]) = *(v81 + 2 * v9);
                if (v2 == -1)
                {
                  v2 = 3;
                }

                else
                {
                  if (v2 >= v7)
                  {
                    goto LABEL_706;
                  }

                  HIWORD(__src[0]) = *(v81 + 2 * v2);
                  v2 = 4;
                }

                v3 = location[2];
                if (location[2] == -1)
                {
                  goto LABEL_656;
                }

                v87 = location[2] + v2;
                if (__CFADD__(location[2], v2))
                {
                  goto LABEL_665;
                }

                if (location[2] >= v87)
                {
                  memcpy(location[4] + 2 * location[2], __src, 2 * v2);
                }

                else
                {
                  re::DynamicArray<unsigned short>::growCapacity(location, location[2] + v2);
                  v4 = location[2] - v3;
                  if (location[2] != v3)
                  {
                    memcpy(location[4] + 2 * v3, __src, 2 * v4);
                    v3 = location[2];
                  }

                  memcpy(location[4] + 2 * v3, __src + 2 * v4, 2 * (v2 - v4));
                  location[2] = v87;
                }

                ++LODWORD(location[3]);
                v9 = v439;
              }

LABEL_173:
              if (++v82 == v80)
              {
                v88 = location[4];
                v89 = (2 * location[2]);
                goto LABEL_372;
              }
            }

            v85 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v24 + 208), &v483);
            if (v85 == -1)
            {
              goto LABEL_173;
            }

            v84 = (*(v24 + 216) + 8 * v85 + 4);
LABEL_156:
            v2 = *v84;
            if (v2 != -1)
            {
              goto LABEL_157;
            }

            goto LABEL_173;
          }

          v89 = 0;
          v88 = 0;
LABEL_372:
          re::Data::makeDataWithBytes(&v483, v88, v89);
          v492[0] = 0;
          LOBYTE(v492[1]) = -1;
          memset(&v492[2], 0, 24);
          re::ObjCObject::operator=(v492, &v483);
          LOBYTE(v492[1]) = 3;
LABEL_373:
          v492[2] = location[2];
          v205 = xmmword_1E3054780;
          goto LABEL_389;
        }

        v94 = re::GeomAttribute::accessValues<int>(v23);
        v96 = *(v24 + 88);
        location[4] = 0;
        memset(location, 0, 28);
        if (!v96)
        {
          v105 = 0;
          v104 = 0;
LABEL_370:
          re::Data::makeDataWithBytes(&v483, v104, v105);
          v492[0] = 0;
          LOBYTE(v492[1]) = -1;
          memset(&v492[2], 0, 24);
          re::ObjCObject::operator=(v492, &v483);
          LOBYTE(v492[1]) = 2;
          goto LABEL_373;
        }

        v97 = v94;
        LODWORD(v7) = v95;
        v98 = 0;
        while (2)
        {
          v483.n128_u32[0] = v98;
          v99 = *(v24 + 204);
          if (v99 == 2)
          {
            v101 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v24 + 208), &v483);
            if (v101 == -1)
            {
              goto LABEL_190;
            }

            v100 = (*(v24 + 216) + 8 * v101 + 4);
          }

          else
          {
            if (v99 != 1)
            {
              if (*(v24 + 204))
              {
                goto LABEL_756;
              }

              if (v98 < *(v24 + 208))
              {
                v2 = v98;
                goto LABEL_191;
              }

LABEL_190:
              v102 = 0;
              goto LABEL_199;
            }

            if (*(v24 + 224) <= v98)
            {
              goto LABEL_190;
            }

            v100 = (*(v24 + 240) + 4 * v98);
          }

          v2 = *v100;
          if (v2 == -1)
          {
            goto LABEL_190;
          }

LABEL_191:
          v9 = *(v24 + 88);
          if (v9 <= v2)
          {
            goto LABEL_496;
          }

          v103 = (*(v24 + 104) + 16 * v2);
          v4 = *v103;
          if (v4 >= v7)
          {
            goto LABEL_528;
          }

          v3 = v103[1];
          v9 = v103[2];
          v2 = v103[3];
          LOWORD(__src[0]) = *(v97 + 2 * v4);
          if (v3 >= v7)
          {
            goto LABEL_564;
          }

          WORD1(__src[0]) = *(v97 + 2 * v3);
          if (v9 >= v7)
          {
            goto LABEL_604;
          }

          WORD2(__src[0]) = *(v97 + 2 * v9);
          if (v2 == -1)
          {
            v102 = 3;
            v9 = v439;
          }

          else
          {
            v9 = v439;
            if (v2 >= v7)
            {
              goto LABEL_686;
            }

            HIWORD(__src[0]) = *(v97 + 2 * v2);
            v102 = 4;
          }

LABEL_199:
          re::DynamicArray<short>::copy(location, location[2], __src, v102);
          if (++v98 == v96)
          {
            v104 = location[4];
            v105 = (2 * location[2]);
            goto LABEL_370;
          }

          continue;
        }
      }

      if (*(v23 + 17) > 7u)
      {
        if (v25 != 8)
        {
          if (v25 != 9)
          {
            if (v25 != 10)
            {
              goto LABEL_400;
            }

            v61 = re::GeomAttribute::accessValues<int>(v23);
            v63 = *(v24 + 88);
            location[4] = 0;
            memset(location, 0, 28);
            if (!v63)
            {
              v73 = 0;
              v72 = 0;
LABEL_384:
              re::Data::makeDataWithBytes(&v483, v72, v73);
              v492[0] = 0;
              LOBYTE(v492[1]) = -1;
              memset(&v492[2], 0, 24);
              re::ObjCObject::operator=(v492, &v483);
              LOBYTE(v492[1]) = 0;
              v492[2] = location[2];
              *&v492[3] = xmmword_1E3049620;

              v207 = location[0];
              if (!location[0])
              {
                goto LABEL_392;
              }

LABEL_390:
              if (location[4])
              {
                (*(*v207 + 40))(v207);
              }

              goto LABEL_392;
            }

            v64 = v61;
            LODWORD(v7) = v62;
            v65 = 0;
            while (2)
            {
              v483.n128_u32[0] = v65;
              v66 = *(v24 + 204);
              if (v66 == 2)
              {
                v61 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v24 + 208), &v483);
                if (v61 == -1)
                {
                  goto LABEL_137;
                }

                v67 = (*(v24 + 216) + 8 * v61 + 4);
              }

              else
              {
                if (v66 != 1)
                {
                  if (*(v24 + 204))
                  {
                    goto LABEL_764;
                  }

                  if (v65 < *(v24 + 208))
                  {
                    v2 = v65;
                    goto LABEL_112;
                  }

                  goto LABEL_137;
                }

                if (*(v24 + 224) <= v65)
                {
                  goto LABEL_137;
                }

                v67 = (*(v24 + 240) + 4 * v65);
              }

              v2 = *v67;
              if (v2 != -1)
              {
LABEL_112:
                v9 = *(v24 + 88);
                if (v9 <= v2)
                {
                  goto LABEL_628;
                }

                v68 = (*(v24 + 104) + 16 * v2);
                v4 = *v68;
                if (v4 >= v7)
                {
                  goto LABEL_632;
                }

                v3 = v68[1];
                v9 = v68[2];
                v2 = v68[3];
                LOBYTE(__src[0]) = *(v64 + v4);
                if (v3 >= v7)
                {
                  goto LABEL_644;
                }

                BYTE1(__src[0]) = *(v64 + v3);
                if (v9 >= v7)
                {
                  goto LABEL_648;
                }

                BYTE2(__src[0]) = *(v64 + v9);
                if (v2 == -1)
                {
                  v9 = 3;
                }

                else
                {
                  if (v2 >= v7)
                  {
                    goto LABEL_702;
                  }

                  BYTE3(__src[0]) = *(v64 + v2);
                  v9 = 4;
                }

                v2 = location[2];
                if (location[2] == -1)
                {
                  goto LABEL_660;
                }

                v3 = location[2] + v9;
                if (__CFADD__(location[2], v9))
                {
                  goto LABEL_664;
                }

                if (location[2] >= v3)
                {
                  v61 = memcpy(location[4] + location[2], __src, v9);
                }

                else
                {
                  if (location[1] < v3)
                  {
                    if (location[0])
                    {
                      v69 = 8;
                      if (location[1])
                      {
                        v69 = 2 * location[1];
                      }

                      if (v69 <= v3)
                      {
                        v70 = location[2] + v9;
                      }

                      else
                      {
                        v70 = v69;
                      }

                      re::DynamicArray<BOOL>::setCapacity(location, v70);
                    }

                    else
                    {
                      re::DynamicArray<BOOL>::setCapacity(location, v2 + v9);
                      ++LODWORD(location[3]);
                    }
                  }

                  v71 = location[4];
                  v4 = location[2] - v2;
                  if (location[2] != v2)
                  {
                    memcpy(location[4] + v2, __src, location[2] - v2);
                    v2 = location[2];
                    v71 = location[4];
                  }

                  v61 = memcpy(&v71[v2], __src + v4, v9 - v4);
                  location[2] = v3;
                }

                ++LODWORD(location[3]);
                v9 = v439;
              }

LABEL_137:
              if (++v65 == v63)
              {
                v72 = location[4];
                v73 = location[2];
                goto LABEL_384;
              }

              continue;
            }
          }

          v141 = re::GeomAttribute::accessValues<int>(v23);
          v143 = *(v24 + 88);
          location[4] = 0;
          memset(location, 0, 28);
          if (v143)
          {
            v144 = v141;
            LODWORD(v7) = v142;
            v145 = 0;
            while (1)
            {
              v483.n128_u32[0] = v145;
              v146 = *(v24 + 204);
              if (v146 == 2)
              {
                break;
              }

              if (v146 == 1)
              {
                if (*(v24 + 224) <= v145)
                {
                  goto LABEL_267;
                }

                v147 = (*(v24 + 240) + 4 * v145);
                goto LABEL_266;
              }

              if (*(v24 + 204))
              {
                goto LABEL_762;
              }

              if (v145 >= *(v24 + 208))
              {
LABEL_267:
                v149 = 0;
                goto LABEL_276;
              }

              v2 = v145;
LABEL_268:
              v9 = *(v24 + 88);
              if (v9 <= v2)
              {
                goto LABEL_508;
              }

              v150 = (*(v24 + 104) + 16 * v2);
              v4 = *v150;
              if (v4 >= v7)
              {
                goto LABEL_548;
              }

              v3 = v150[1];
              v9 = v150[2];
              v2 = v150[3];
              LOBYTE(__src[0]) = *(v144 + v4);
              if (v3 >= v7)
              {
                goto LABEL_584;
              }

              BYTE1(__src[0]) = *(v144 + v3);
              if (v9 >= v7)
              {
                goto LABEL_600;
              }

              BYTE2(__src[0]) = *(v144 + v9);
              if (v2 == -1)
              {
                v149 = 3;
                v9 = v439;
              }

              else
              {
                v9 = v439;
                if (v2 >= v7)
                {
                  goto LABEL_666;
                }

                BYTE3(__src[0]) = *(v144 + v2);
                v149 = 4;
              }

LABEL_276:
              re::DynamicArray<REFrameAnalysisBottleneck>::copy(location, location[2], __src, v149);
              if (++v145 == v143)
              {
                goto LABEL_277;
              }
            }

            v148 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v24 + 208), &v483);
            if (v148 == -1)
            {
              goto LABEL_267;
            }

            v147 = (*(v24 + 216) + 8 * v148 + 4);
LABEL_266:
            v2 = *v147;
            if (v2 == -1)
            {
              goto LABEL_267;
            }

            goto LABEL_268;
          }

LABEL_277:
          re::makeNSDataFromGeomArray<unsigned char>(v492, location);
LABEL_278:
          if (location[0] && location[4])
          {
            (*(*location[0] + 40))();
          }

          v26 = v492[0];
          v492[0] = 0;
          v446 = v26;
          v447 = *&v492[1];
          v448 = *&v492[3];

          goto LABEL_400;
        }

        v187 = re::GeomAttribute::accessValues<int>(v23);
        v189 = *(v24 + 88);
        v494 = 0u;
        memset(location, 0, sizeof(location));
        v492[4] = 0;
        memset(v492, 0, 28);
        if (!v189)
        {
          v198 = 0;
          v197 = 0;
LABEL_394:
          re::Data::makeDataWithBytes(&v483, v197, v198);
          *v478 = 0;
          v478[8] = -1;
          memset(v480 + 2, 0, 24);
          re::ObjCObject::operator=(v478, &v483);
          v206 = 10;
LABEL_395:
          v478[8] = v206;
          *(v480 + 2) = v492[2];
          *(&v480[1] + 2) = xmmword_1E30B4E30;

          if (v492[0] && v492[4])
          {
            (*(*v492[0] + 40))();
          }

          v26 = *v478;
          *v478 = 0;
          v446 = v26;
          v208 = v478;
          goto LABEL_399;
        }

        v190 = v187;
        LODWORD(v7) = v188;
        v191 = 0;
        while (2)
        {
          v483.n128_u32[0] = v191;
          v192 = *(v24 + 204);
          if (v192 == 2)
          {
            v194 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v24 + 208), &v483);
            if (v194 == -1)
            {
              goto LABEL_349;
            }

            v193 = (*(v24 + 216) + 8 * v194 + 4);
          }

          else
          {
            if (v192 != 1)
            {
              if (*(v24 + 204))
              {
                goto LABEL_754;
              }

              if (v191 < *(v24 + 208))
              {
                v2 = v191;
                goto LABEL_350;
              }

LABEL_349:
              v195 = 0;
              goto LABEL_358;
            }

            if (*(v24 + 224) <= v191)
            {
              goto LABEL_349;
            }

            v193 = (*(v24 + 240) + 4 * v191);
          }

          v2 = *v193;
          if (v2 == -1)
          {
            goto LABEL_349;
          }

LABEL_350:
          v9 = *(v24 + 88);
          if (v9 <= v2)
          {
            goto LABEL_484;
          }

          v196 = (*(v24 + 104) + 16 * v2);
          v4 = *v196;
          if (v4 >= v7)
          {
            goto LABEL_520;
          }

          v3 = v196[1];
          v9 = v196[2];
          v2 = v196[3];
          *location = *(v190 + 16 * v4);
          if (v3 >= v7)
          {
            goto LABEL_560;
          }

          *&location[2] = *(v190 + 16 * v3);
          if (v9 >= v7)
          {
            goto LABEL_612;
          }

          *&location[4] = *(v190 + 16 * v9);
          if (v2 == -1)
          {
            v195 = 3;
            v9 = v439;
          }

          else
          {
            v9 = v439;
            if (v2 >= v7)
            {
              goto LABEL_670;
            }

            v494 = *(v190 + 16 * v2);
            v195 = 4;
          }

LABEL_358:
          re::DynamicArray<re::Vector4<float>>::copy(v492, v492[2], location, v195);
          if (++v191 == v189)
          {
            v197 = v492[4];
            v198 = (16 * v492[2]);
            goto LABEL_394;
          }

          continue;
        }
      }

      if (v25 != 5)
      {
        if (v25 != 6)
        {
          v27 = re::GeomAttribute::accessValues<int>(v23);
          v29 = *(v24 + 88);
          v494 = 0u;
          memset(location, 0, sizeof(location));
          v492[4] = 0;
          memset(v492, 0, 28);
          if (v29)
          {
            v30 = v27;
            LODWORD(v7) = v28;
            v31 = 0;
            while (1)
            {
              v483.n128_u32[0] = v31;
              v32 = *(v24 + 204);
              if (v32 == 2)
              {
                break;
              }

              if (v32 == 1)
              {
                if (*(v24 + 224) <= v31)
                {
                  goto LABEL_49;
                }

                v33 = (*(v24 + 240) + 4 * v31);
                goto LABEL_48;
              }

              if (*(v24 + 204))
              {
                goto LABEL_760;
              }

              if (v31 < *(v24 + 208))
              {
                v2 = v31;
LABEL_50:
                v9 = *(v24 + 88);
                if (v9 <= v2)
                {
                  goto LABEL_512;
                }

                v36 = (*(v24 + 104) + 16 * v2);
                v4 = *v36;
                if (v4 >= v7)
                {
                  goto LABEL_544;
                }

                v3 = v36[1];
                v9 = v36[2];
                v2 = v36[3];
                *location = *(v30 + 16 * v4);
                if (v3 >= v7)
                {
                  goto LABEL_552;
                }

                *&location[2] = *(v30 + 16 * v3);
                if (v9 >= v7)
                {
                  goto LABEL_588;
                }

                *&location[4] = *(v30 + 16 * v9);
                if (v2 == -1)
                {
                  v35 = 3;
                  v9 = v439;
                }

                else
                {
                  v9 = v439;
                  if (v2 >= v7)
                  {
                    goto LABEL_678;
                  }

                  v494 = *(v30 + 16 * v2);
                  v35 = 4;
                }

                goto LABEL_58;
              }

LABEL_49:
              v35 = 0;
LABEL_58:
              re::DynamicArray<re::Vector3<float>>::copy(v492, v492[2], location, v35);
              if (++v31 == v29)
              {
                v37 = v492[4];
                v38 = (16 * v492[2]);
                goto LABEL_382;
              }
            }

            v34 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v24 + 208), &v483);
            if (v34 == -1)
            {
              goto LABEL_49;
            }

            v33 = (*(v24 + 216) + 8 * v34 + 4);
LABEL_48:
            v2 = *v33;
            if (v2 != -1)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          }

          v38 = 0;
          v37 = 0;
LABEL_382:
          re::Data::makeDataWithBytes(&v483, v37, v38);
          *v478 = 0;
          v478[8] = -1;
          memset(v480 + 2, 0, 24);
          re::ObjCObject::operator=(v478, &v483);
          v206 = 9;
          goto LABEL_395;
        }

        v125 = re::GeomAttribute::accessValues<int>(v23);
        v127 = *(v24 + 88);
        memset(v495, 0, 32);
        location[4] = 0;
        memset(location, 0, 28);
        if (v127)
        {
          v128 = v125;
          LODWORD(v7) = v126;
          v129 = 0;
          while (1)
          {
            v483.n128_u32[0] = v129;
            v130 = *(v24 + 204);
            if (v130 == 2)
            {
              break;
            }

            if (v130 == 1)
            {
              if (*(v24 + 224) <= v129)
              {
                goto LABEL_242;
              }

              v131 = (*(v24 + 240) + 4 * v129);
              goto LABEL_241;
            }

            if (*(v24 + 204))
            {
              goto LABEL_757;
            }

            if (v129 < *(v24 + 208))
            {
              v2 = v129;
LABEL_243:
              v9 = *(v24 + 88);
              if (v9 <= v2)
              {
                goto LABEL_488;
              }

              v134 = (*(v24 + 104) + 16 * v2);
              v4 = *v134;
              if (v4 >= v7)
              {
                goto LABEL_532;
              }

              v3 = v134[1];
              v9 = v134[2];
              v2 = v134[3];
              *v495 = *(v128 + 8 * v4);
              if (v3 >= v7)
              {
                goto LABEL_568;
              }

              *&v495[8] = *(v128 + 8 * v3);
              if (v9 >= v7)
              {
                goto LABEL_596;
              }

              *&v495[16] = *(v128 + 8 * v9);
              if (v2 == -1)
              {
                v133 = 3;
                v9 = v439;
              }

              else
              {
                v9 = v439;
                if (v2 >= v7)
                {
                  goto LABEL_674;
                }

                *&v495[24] = *(v128 + 8 * v2);
                v133 = 4;
              }

              goto LABEL_251;
            }

LABEL_242:
            v133 = 0;
LABEL_251:
            re::DynamicArray<re::Vector2<float>>::copy(location, location[2], v495, v133);
            if (++v129 == v127)
            {
              v135 = location[4];
              v136 = (8 * location[2]);
              goto LABEL_375;
            }
          }

          v132 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v24 + 208), &v483);
          if (v132 == -1)
          {
            goto LABEL_242;
          }

          v131 = (*(v24 + 216) + 8 * v132 + 4);
LABEL_241:
          v2 = *v131;
          if (v2 != -1)
          {
            goto LABEL_243;
          }

          goto LABEL_242;
        }

        v136 = 0;
        v135 = 0;
LABEL_375:
        re::Data::makeDataWithBytes(&v483, v135, v136);
        v492[0] = 0;
        LOBYTE(v492[1]) = -1;
        memset(&v492[2], 0, 24);
        re::ObjCObject::operator=(v492, &v483);
        LOBYTE(v492[1]) = 8;
        goto LABEL_388;
      }

      v171 = re::GeomAttribute::accessValues<int>(v23);
      v173 = *(v24 + 88);
      location[4] = 0;
      memset(location, 0, 28);
      if (v173)
      {
        v174 = v171;
        LODWORD(v7) = v172;
        v175 = 0;
        while (1)
        {
          v483.n128_u32[0] = v175;
          v176 = *(v24 + 204);
          if (v176 == 2)
          {
            break;
          }

          if (v176 == 1)
          {
            if (*(v24 + 224) <= v175)
            {
              goto LABEL_323;
            }

            v177 = (*(v24 + 240) + 4 * v175);
            goto LABEL_322;
          }

          if (*(v24 + 204))
          {
            goto LABEL_761;
          }

          if (v175 < *(v24 + 208))
          {
            v2 = v175;
LABEL_324:
            v9 = *(v24 + 88);
            if (v9 <= v2)
            {
              goto LABEL_504;
            }

            v180 = (*(v24 + 104) + 16 * v2);
            v4 = *v180;
            if (v4 >= v7)
            {
              goto LABEL_540;
            }

            v3 = v180[1];
            v9 = v180[2];
            v2 = v180[3];
            *v495 = *(v174 + 8 * v4);
            if (v3 >= v7)
            {
              goto LABEL_572;
            }

            *&v495[8] = *(v174 + 8 * v3);
            if (v9 >= v7)
            {
              goto LABEL_608;
            }

            *&v495[16] = *(v174 + 8 * v9);
            if (v2 == -1)
            {
              v179 = 3;
              v9 = v439;
            }

            else
            {
              v9 = v439;
              if (v2 >= v7)
              {
                goto LABEL_694;
              }

              *&v495[24] = *(v174 + 8 * v2);
              v179 = 4;
            }

            goto LABEL_332;
          }

LABEL_323:
          v179 = 0;
LABEL_332:
          re::DynamicArray<double>::copy(location, location[2], v495, v179);
          if (++v175 == v173)
          {
            v181 = location[4];
            v182 = (8 * location[2]);
            goto LABEL_387;
          }
        }

        v178 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v24 + 208), &v483);
        if (v178 == -1)
        {
          goto LABEL_323;
        }

        v177 = (*(v24 + 216) + 8 * v178 + 4);
LABEL_322:
        v2 = *v177;
        if (v2 != -1)
        {
          goto LABEL_324;
        }

        goto LABEL_323;
      }

      v182 = 0;
      v181 = 0;
LABEL_387:
      re::Data::makeDataWithBytes(&v483, v181, v182);
      v492[0] = 0;
      LOBYTE(v492[1]) = -1;
      memset(&v492[2], 0, 24);
      re::ObjCObject::operator=(v492, &v483);
      LOBYTE(v492[1]) = 7;
LABEL_388:
      v492[2] = location[2];
      v205 = xmmword_1E30B5C10;
LABEL_389:
      *&v492[3] = v205;

      v207 = location[0];
      if (location[0])
      {
        goto LABEL_390;
      }

LABEL_392:
      v26 = v492[0];
      v492[0] = 0;
      v446 = v26;
      v208 = v492;
LABEL_399:
      v447 = *(v208 + 1);
      v448 = *(v208 + 3);

LABEL_400:
      v209 = *(v24 + 8);
      re::GeomModelDescriptor::setAttribute(&v465, &v483, *(v24 + 16), &v446, 0, v443);
      if ((v443[0] & 1) != 0 || !v444)
      {
        goto LABEL_406;
      }

      if (v445)
      {
        (*(*v444 + 40))();
      }

      v204 = v443;
LABEL_405:
      *(v204 + 5) = 0u;
      *(v204 + 3) = 0u;
LABEL_406:
      if (v483.n128_u64[0] && (v483.n128_u8[8] & 1) != 0)
      {
        (*(*v483.n128_u64[0] + 40))();
      }

      LODWORD(v5) = v5 + 1;
      if (v5 >= *(v9 + 640))
      {
        goto LABEL_410;
      }
    }

    v26 = 0;
    if (*(v23 + 17) <= 4u)
    {
      if (*(v23 + 17) <= 1u)
      {
        if (*(v23 + 17))
        {
          v90 = re::GeomAttribute::accessValues<int>(v23);
          if (!v91)
          {
            goto LABEL_734;
          }

          v92 = v90;
          v93 = (*(*v24 + 16))(v24);
          re::Data::makeDataWithBytes(&v483, v92, (2 * v93));
          location[0] = 0;
          LOBYTE(location[1]) = -1;
          v2 = location;
          memset(&location[2], 0, 24);
          re::ObjCObject::operator=(location, &v483);
          LOBYTE(location[1]) = 3;
        }

        else
        {
          v106 = re::GeomAttribute::accessValues<int>(v23);
          if (!v107)
          {
            goto LABEL_714;
          }

          v108 = v106;
          v109 = (*(*v24 + 16))(v24);
          re::Data::makeDataWithBytes(&v483, v108, (2 * v109));
          location[0] = 0;
          LOBYTE(location[1]) = -1;
          v2 = location;
          memset(&location[2], 0, 24);
          re::ObjCObject::operator=(location, &v483);
          LOBYTE(location[1]) = 2;
        }

        location[2] = (*(*v24 + 16))(v24);
        v110 = xmmword_1E3054780;
      }

      else
      {
        if (v25 == 2)
        {
          v167 = re::GeomAttribute::accessValues<int>(v23);
          if (!v168)
          {
            goto LABEL_750;
          }

          v169 = v167;
          v170 = (*(*v24 + 16))(v24);
          re::Data::makeDataWithBytes(&v483, v169, (4 * v170));
          location[0] = 0;
          LOBYTE(location[1]) = -1;
          v2 = location;
          memset(&location[2], 0, 24);
          re::ObjCObject::operator=(location, &v483);
          LOBYTE(location[1]) = 4;
        }

        else
        {
          if (v25 == 3)
          {
            v121 = re::GeomAttribute::accessValues<int>(v23);
            if (!v122)
            {
              goto LABEL_738;
            }

            v123 = v121;
            v124 = (*(*v24 + 16))(v24);
            re::Data::makeDataWithBytes(&v483, v123, (4 * v124));
            location[0] = 0;
            LOBYTE(location[1]) = -1;
            v2 = location;
            memset(&location[2], 0, 24);
            re::ObjCObject::operator=(location, &v483);
            v60 = 5;
          }

          else
          {
            v56 = re::GeomAttribute::accessValues<int>(v23);
            if (!v57)
            {
              goto LABEL_718;
            }

            v58 = v56;
            v59 = (*(*v24 + 16))(v24);
            re::Data::makeDataWithBytes(&v483, v58, (4 * v59));
            location[0] = 0;
            LOBYTE(location[1]) = -1;
            v2 = location;
            memset(&location[2], 0, 24);
            re::ObjCObject::operator=(location, &v483);
            v60 = 6;
          }

          LOBYTE(location[1]) = v60;
        }

        location[2] = (*(*v24 + 16))(v24);
        v110 = xmmword_1E3068150;
      }

      goto LABEL_363;
    }

    if (*(v23 + 17) > 7u)
    {
      switch(v25)
      {
        case 8:
          v199 = re::GeomAttribute::accessValues<int>(v23);
          if (!v200)
          {
            goto LABEL_746;
          }

          v201 = v199;
          v202 = (*(*v24 + 16))(v24);
          re::Data::makeDataWithBytes(&v483, v201, (16 * v202));
          location[0] = 0;
          LOBYTE(location[1]) = -1;
          v2 = location;
          memset(&location[2], 0, 24);
          re::ObjCObject::operator=(location, &v483);
          v43 = 10;
          goto LABEL_362;
        case 9:
          v151 = re::GeomAttribute::accessValues<int>(v23);
          if (!v152)
          {
            goto LABEL_730;
          }

          v153 = v151;
          v154 = (*(*v24 + 16))(v24);
          re::Data::makeDataWithBytes(&v483, v153, v154);
          location[0] = 0;
          LOBYTE(location[1]) = -1;
          v2 = location;
          memset(&location[2], 0, 24);
          re::ObjCObject::operator=(location, &v483);
          LOBYTE(location[1]) = 1;
          break;
        case 10:
          v74 = re::GeomAttribute::accessValues<int>(v23);
          if (!v75)
          {
            goto LABEL_710;
          }

          v76 = v74;
          v77 = (*(*v24 + 16))(v24);
          re::Data::makeDataWithBytes(&v483, v76, v77);
          location[0] = 0;
          LOBYTE(location[1]) = -1;
          v2 = location;
          memset(&location[2], 0, 24);
          re::ObjCObject::operator=(location, &v483);
          LOBYTE(location[1]) = 0;
          break;
        default:
          goto LABEL_364;
      }

      location[2] = (*(*v24 + 16))(v24);
      v110 = xmmword_1E3049620;
    }

    else
    {
      if (v25 == 5)
      {
        v183 = re::GeomAttribute::accessValues<int>(v23);
        if (!v184)
        {
          goto LABEL_726;
        }

        v185 = v183;
        v186 = (*(*v24 + 16))(v24);
        re::Data::makeDataWithBytes(&v483, v185, (8 * v186));
        location[0] = 0;
        LOBYTE(location[1]) = -1;
        v2 = location;
        memset(&location[2], 0, 24);
        re::ObjCObject::operator=(location, &v483);
        LOBYTE(location[1]) = 7;
      }

      else
      {
        if (v25 != 6)
        {
          v39 = re::GeomAttribute::accessValues<int>(v23);
          if (!v40)
          {
            goto LABEL_742;
          }

          v41 = v39;
          v42 = (*(*v24 + 16))(v24);
          re::Data::makeDataWithBytes(&v483, v41, (16 * v42));
          location[0] = 0;
          LOBYTE(location[1]) = -1;
          v2 = location;
          memset(&location[2], 0, 24);
          re::ObjCObject::operator=(location, &v483);
          v43 = 9;
LABEL_362:
          LOBYTE(location[1]) = v43;
          location[2] = (*(*v24 + 16))(v24);
          v110 = xmmword_1E30B4E30;
          goto LABEL_363;
        }

        v137 = re::GeomAttribute::accessValues<int>(v23);
        if (!v138)
        {
          goto LABEL_722;
        }

        v139 = v137;
        v140 = (*(*v24 + 16))(v24);
        re::Data::makeDataWithBytes(&v483, v139, (8 * v140));
        location[0] = 0;
        LOBYTE(location[1]) = -1;
        v2 = location;
        memset(&location[2], 0, 24);
        re::ObjCObject::operator=(location, &v483);
        LOBYTE(location[1]) = 8;
      }

      location[2] = (*(*v24 + 16))(v24);
      v110 = xmmword_1E30B5C10;
    }

LABEL_363:
    *&location[3] = v110;

    v26 = location[0];
    location[0] = 0;
    v446 = v26;
    v447 = *&location[1];
    v448 = *&location[3];

LABEL_364:
    v203 = *(v24 + 8);
    re::GeomModelDescriptor::setAttribute(&v465, &v483, *(v24 + 16), &v446, 0, v440);
    if ((v440[0] & 1) != 0 || !v441)
    {
      goto LABEL_406;
    }

    if (v442)
    {
      (*(*v441 + 40))();
    }

    v204 = v440;
    goto LABEL_405;
  }

LABEL_410:
  re::makeNSDataFromGeomArray<unsigned int>(location, v462);
  v211 = re::GeomModelDescriptor::validateIndexType(v210, LOBYTE(location[1]), &v483);
  if (location[0])
  {
    v14 = v438;
    if (!location[4])
    {
LABEL_431:
      v213 = 0;
      v22 = v492[2];
      v2 = v492[0];
      LOBYTE(v5) = v492[1];
      goto LABEL_432;
    }

    re::GeomModelDescriptor::makeCFDataPayload(v492, location);
    v212 = *(&v467 + 4);
    *(&v467 + 4) = v492[0];
    if (v212)
    {
    }

    v213 = 1;
  }

  else
  {
    v213 = 0;
    v22 = v492[2];
    v2 = v492[0];
    LOBYTE(v5) = v492[1];
    v14 = v438;
  }

LABEL_432:
  if (v483.n128_u8[0] & 1) == 0 && *(&v484 + 1) && (v485)
  {
    (*(**(&v484 + 1) + 40))();
  }

  if (v2)
  {
    v219 = v213;
  }

  else
  {
    v219 = 1;
  }

  if (v219 & 1) == 0 && (v5)
  {
    (*(*v2 + 40))(v2, v22);
  }

  re::Ok<re::GeomModelDescriptor,re::GeomModelDescriptor>(&v483, &v465);
  re::Result<re::GeomModelDescriptor,re::DetailedError>::Result(v14, &v483);
  if (v490)
  {
    if (BYTE8(v490))
    {
      (*(*v490 + 40))();
    }

    v491 = 0u;
    v490 = 0u;
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v489);
  re::DynamicArray<re::GeomModelDescriptor::AttributeData>::deinit(v488);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v486);
  if (*(&v485 + 1))
  {

    *(&v485 + 1) = 0;
  }

  if (v485)
  {

    *&v485 = 0;
  }

  if (v483.n128_u64[1])
  {
  }

  if (v454[0] && v457)
  {
    (*(*v454[0] + 40))();
  }

  if (v458[0] && v460)
  {
    (*(*v458[0] + 40))();
  }

LABEL_458:
  if (v462[0] && v464)
  {
    (*(*v462[0] + 40))();
  }

LABEL_461:
  if (v476)
  {
    if (BYTE8(v476))
    {
      (*(*v476 + 40))(v214);
    }

    v477 = 0u;
    v476 = 0u;
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v474[8]);
  re::DynamicArray<re::GeomModelDescriptor::AttributeData>::deinit(v472);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v468[7]);
  if (*&v468[5])
  {

    *&v468[5] = 0;
  }

  if (*&v468[3])
  {

    *&v468[3] = 0;
  }

  if (*(&v467 + 4))
  {
  }
}

re::DynamicString *re::Ok<re::GeomModelDescriptor,re::GeomModelDescriptor>(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a2 + 32) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 84) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a1 + 48), (a2 + 48));
  v5 = *(a2 + 96);
  *(v3 + 136) = 0u;
  v3 += 136;
  *(v3 - 40) = v5;
  *(a2 + 96) = 0;
  *(v3 - 32) = *(a2 + 104);
  *(a2 + 104) = 0u;
  *(v3 - 8) = *(a2 + 128);
  *(a2 + 128) = 0;
  ++*(a2 + 120);
  *(v3 - 16) = 1;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  *(v3 + 36) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v3, (a2 + 136));
  *(v3 + 48) = *(a2 + 184);
  *(a2 + 184) = 0;
  *(v3 + 72) = *(a2 + 208);
  *(a2 + 208) = 0;
  *(v3 + 56) = *(a2 + 192);
  *(a2 + 192) = 0u;

  return re::GeomModelDescriptor::reset(a2);
}

uint64_t re::Result<re::GeomModelDescriptor,re::DetailedError>::Result(uint64_t a1, uint64_t a2)
{
  *a1 = 1;
  *(a1 + 8) = *a2;
  *(a1 + 10) = *(a2 + 2);
  *(a1 + 12) = *(a2 + 4);
  v4 = *(a2 + 16);
  *(a1 + 16) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a1 + 24) = v4;
  v5 = *(a2 + 32);
  *(a1 + 32) = *(a2 + 24);
  *(a1 + 40) = v5;
  *(a2 + 32) = 0;
  *(a1 + 48) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 92) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a1 + 56), (a2 + 48));
  *(a1 + 136) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  v6 = *(a2 + 104);
  *(a1 + 104) = *(a2 + 96);
  *(a1 + 112) = v6;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  v7 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 112);
  *(a2 + 112) = v7;
  v8 = *(a1 + 136);
  *(a1 + 136) = *(a2 + 128);
  *(a2 + 128) = v8;
  ++*(a2 + 120);
  ++*(a1 + 128);
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 180) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a1 + 144), (a2 + 136));
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 216) = *(a2 + 208);
  v9 = *(a2 + 192);
  *(a1 + 192) = *(a2 + 184);
  *(a2 + 184) = 0;
  v10 = *(a2 + 200);
  *(a2 + 208) = 0;
  v12 = *(a1 + 200);
  v11 = *(a1 + 208);
  *(a1 + 200) = v9;
  *(a1 + 208) = v10;
  *(a2 + 192) = v12;
  *(a2 + 200) = v11;
  re::GeomModelDescriptor::reset(a2);
  return a1;
}

void re::makeNSDataFromGeomArray<unsigned char>(uint64_t a1, uint64_t a2)
{
  re::Data::makeDataWithBytes(&v4, *(a2 + 32), *(a2 + 16));
  *a1 = 0;
  *(a1 + 8) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  re::ObjCObject::operator=(a1, &v4);
  *(a1 + 8) = 1;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = xmmword_1E3049620;
}

void re::makeNSDataFromGeomArray<unsigned int>(uint64_t a1, uint64_t a2)
{
  re::Data::makeDataWithBytes(&v4, *(a2 + 32), (4 * *(a2 + 16)));
  *a1 = 0;
  *(a1 + 8) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  re::ObjCObject::operator=(a1, &v4);
  *(a1 + 8) = 5;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = xmmword_1E3068150;
}

re::DynamicString *re::GeomModelDescriptor::setAttribute@<X0>(void *a1@<X0>, const re::DynamicString *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v60 = *MEMORY[0x1E69E9840];
  if (*(a4 + 8) == 255)
  {
    v25 = v55;
    v26 = v56;
    *a6 = 0;
    *(a6 + 8) = 100;
    *(a6 + 16) = re::AssetErrorCategory(void)::instance;
    *(a6 + 24) = v25;
    *(a6 + 40) = v26;
    return result;
  }

  v12 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 17), a2);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = a2;
  }

  re::DynamicString::DynamicString(&v44, v13);
  re::GeomModelDescriptor::validateIfCoreAttribute(&v44, a3, *(a4 + 8), v39);
  if (v39[0] == 1)
  {
    v36 = 4;
    v37 = 0;
    v38 = 0;
    CFDataPayload = re::DynamicString::operator=(&v34, &v44);
    v36 = a3;
    if (*a4)
    {
      if (*(a4 + 32))
      {
        CFDataPayload = re::GeomModelDescriptor::makeCFDataPayload(&v55, a4);
        v16 = v37;
        v37 = v55;
        if (v16)
        {
        }

        if (!a5)
        {
LABEL_16:
          v18 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 6), &v44);
          if (v18)
          {
            v19 = *v18;
            v20 = a1[14];
            if (v20 <= *v18)
            {
              v46 = 0;
              v58 = 0u;
              v59 = 0u;
              v56 = 0u;
              v57 = 0u;
              v55 = 0u;
              v30 = MEMORY[0x1E69E9C10];
              v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v47 = 136315906;
              v48 = "operator[]";
              v49 = 1024;
              if (v31)
              {
                v32 = 3;
              }

              else
              {
                v32 = 2;
              }

              v50 = 789;
              v51 = 2048;
              v52 = v19;
              v53 = 2048;
              v54 = v20;
              _os_log_send_and_compose_impl(v32, &v46, &v55, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v33, v34);
              _os_crash_msg();
              __break(1u);
            }

            v21 = re::DynamicString::operator=((a1[16] + 56 * v19), &v34);
            *(v21 + 32) = v36;
            v22 = *(v21 + 5);
            *(v21 + 5) = v37;
            v37 = v22;
            v23 = *(v21 + 6);
            *(v21 + 6) = v38;
            v38 = v23;
          }

          else
          {
            *&v55 = a1[14];
            re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add((a1 + 6), &v44, &v55);
            re::DynamicArray<re::GeomModelDescriptor::AttributeData>::add((a1 + 12), &v34);
          }

          *a6 = 1;
LABEL_27:
          if (v38)
          {

            v38 = 0;
          }

          if (v37)
          {

            v37 = 0;
          }

          if (v34 && (v35 & 1) != 0)
          {
            (*(*v34 + 40))();
          }

          if (v39[0])
          {
            goto LABEL_38;
          }

          goto LABEL_35;
        }

        if (!*a5)
        {
          v27 = "Null indices value buffer.";
          goto LABEL_24;
        }

        if (*(a5 + 32))
        {
          re::GeomModelDescriptor::validateIndexType(CFDataPayload, *(a5 + 8), a6);
          if (*a6 != 1)
          {
            goto LABEL_27;
          }

          re::GeomModelDescriptor::makeCFDataPayload(&v55, a5);
          v17 = v38;
          v38 = v55;
          if (v17)
          {
          }

          goto LABEL_16;
        }
      }

      v27 = "Zero stride provided.";
    }

    else
    {
      v27 = "Null values buffer.";
    }

LABEL_24:
    v28 = v55;
    v29 = v56;
    *a6 = 0;
    *(a6 + 8) = 100;
    *(a6 + 16) = re::AssetErrorCategory(void)::instance;
    *(a6 + 24) = v28;
    *(a6 + 40) = v29;
    goto LABEL_27;
  }

  *a6 = v39[0];
  *(a6 + 8) = v40;
  *(a6 + 24) = v41;
  *(a6 + 48) = v43;
  *(a6 + 32) = v42;
  v43 = 0;
  v41 = 0;
  v42 = 0uLL;
LABEL_35:
  if (v41 && (v42 & 1) != 0)
  {
    (*(*v41 + 40))();
  }

LABEL_38:
  result = v44;
  if (v44)
  {
    if (v45)
    {
      return (*(*v44 + 40))();
    }
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(uint64_t a1, const re::DynamicString *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v13, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, v6, &v10, a2);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 56 * HIDWORD(v11) + 40;
  }

  v7 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v11, v10);
  re::DynamicString::DynamicString((v7 + 8), a2);
  *(v7 + 40) = *a3;
  v8 = v7 + 40;
  ++*(a1 + 40);
  return v8;
}

double re::DynamicArray<re::GeomModelDescriptor::AttributeData>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::GeomModelDescriptor::AttributeData>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 56 * v4;
  result = 0.0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 24) = *(a2 + 24);
  v7 = *(a2 + 8);
  *v5 = *a2;
  *a2 = 0;
  v8 = *(a2 + 16);
  *(a2 + 24) = 0;
  v10 = *(v5 + 8);
  v9 = *(v5 + 16);
  *(v5 + 8) = v7;
  *(v5 + 16) = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v9;
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(v5 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

__n128 re::GeomModelDescriptor::addAttributeAlias@<Q0>(re::GeomModelDescriptor *this@<X0>, const re::DynamicString *a2@<X1>, const re::DynamicString *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(this + 48, a2);
  if (v8)
  {
    v9 = v8;
    v10 = re::Hash<re::DynamicString>::operator()(&v19, a3);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(this + 48, v10, &v19, a3);
    if (v19.n128_u32[3] == 0x7FFFFFFF || (v11 = re::Hash<re::DynamicString>::operator()(&v19, a3), v12 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(this + 136, v11, &v19, a3), v19.n128_u32[3] != 0x7FFFFFFF))
    {
      if (*(a3 + 1))
      {
        v14 = *(a3 + 2);
      }

      else
      {
        v14 = a3 + 9;
      }

      v15 = strcmp(v14, "vertexPosition");
      if (v15)
      {
        v15 = strcmp(v14, "vertexUV");
        if (v15)
        {
          v15 = strcmp(v14, "vertexNormal");
          if (v15)
          {
            v15 = strcmp(v14, "vertexTangent");
            if (v15)
            {
              v15 = strcmp(v14, "vertexBitangent");
              if (v15)
              {
                v15 = strcmp(v14, "vertexColor");
                if (v15)
                {
                  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(this + 136, a3, a2);
                  v19.n128_u64[0] = *v9;
                  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(this + 48, a3, &v19);
                  *a4 = 1;
                  return result;
                }
              }
            }
          }
        }
      }

      v13 = "Alias with core attribute name";
    }

    else
    {
      v13 = "Alias with same name as existing attribute";
    }
  }

  else
  {
    v13 = "Alias for missing attribute";
  }

  result = v19;
  v17 = v20;
  v18 = v21;
  *a4 = 0;
  *(a4 + 8) = 100;
  *(a4 + 16) = re::AssetErrorCategory(void)::instance;
  *(a4 + 24) = result;
  *(a4 + 40) = v17;
  *(a4 + 48) = v18;
  return result;
}

uint64_t re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v13, a2);
  result = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, v6, &v10, a2);
  v8 = HIDWORD(v11);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    v9 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v11, v10);
    result = re::DynamicString::DynamicString((v9 + 8), a2);
    *(v9 + 40) = *a3;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    *(*(a1 + 16) + 56 * v8 + 40) = *a3;
  }

  return result;
}

uint64_t re::GeomModelDescriptor::removeAttributeAlias@<X0>(re::GeomModelDescriptor *this@<X0>, const re::DynamicString *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = re::Hash<re::DynamicString>::operator()(v8, a2);
  result = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(this + 136, v6, v8, a2);
  if (v9 != 0x7FFFFFFF)
  {
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(this + 136, a2);
    result = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(this + 48, a2);
  }

  *a3 = 1;
  return result;
}

__n128 re::GeomModelDescriptor::setMaterialAssignmentsPerFace@<Q0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14[0] = a2;
  v14[1] = a3;
  if (a3)
  {
    re::GeomModelDescriptor::makeSlicePayload<unsigned int>(v14, &v11);
    v7 = v11.n128_u64[0];
    v11.n128_u64[0] = 0;
    v8 = *(a1 + 1);
    *(a1 + 1) = v7;
    if (v8)
    {

      if (v11.n128_u64[0])
      {
      }
    }

    *a4 = 1;
  }

  else
  {
    result = v11;
    v9 = v12;
    v10 = v13;
    *a4 = 0;
    *(a4 + 8) = 100;
    *(a4 + 16) = re::AssetErrorCategory(void)::instance;
    *(a4 + 24) = result;
    *(a4 + 40) = v9;
    *(a4 + 48) = v10;
  }

  return result;
}

uint64_t re::GeomModelDescriptor::makeSlicePayload<unsigned int>@<X0>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = re::globalAllocators(a1);
  v6 = *(a1 + 1);
  if (!v6)
  {
    v9 = 0;
    v8 = 0;
    goto LABEL_6;
  }

  if (!(v6 >> 62) && 4 * v6 < 0xFFFFFFFFFFFFFFF0)
  {
    v7 = (*(*v4[2] + 32))(v4[2], (4 * v6 + 16) | 3, 0);
    v8 = ((v7 + 19) & 0xFFFFFFFFFFFFFFFCLL);
    *(v8 - 2) = v6;
    *(v8 - 1) = v7;
    bzero(v8, 4 * v6);
    v9 = 4 * *(a1 + 1);
LABEL_6:
    v18 = v8;
    memcpy(v8, *a1, v9);
    v10 = *(a1 + 1);
    v16 = 4;
    v17 = v10;
    v15 = 0;
    v14 = 1;
    return re::make::shared::object<re::internal::DataPayload,unsigned char *&,re::GeomModelValueType const&,unsigned long,unsigned long,int,BOOL,unsigned char *&,void (&)(void const*)>(&v18, re::ConvertToGeomModelValueType<unsigned int>::kValueType, &v17, &v16, &v15, &v14, &v18, re::GeomModelDescriptor::freeReNewedArrayData<unsigned int>, a2);
  }

  re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Size overflow in allocateArray. Element size = %zu, count = %zu", "!overflow", "allocateArray", 61, 4, v6);
  result = _os_crash("assertion failure: (!overflow) Size overflow in allocateArray. Element size = %zu, count = %zu", v12, v13);
  __break(1u);
  return result;
}

unint64_t *re::GeomModelDescriptor::deleteAttribute@<X0>(re::GeomModelDescriptor *this@<X0>, const re::DynamicString *a2@<X1>, _BYTE *a3@<X8>)
{
  v76 = *MEMORY[0x1E69E9840];
  result = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(this + 48, a2);
  if (!result)
  {
    *a3 = 1;
    return result;
  }

  v7 = result;
  v8 = &v71;
  v9 = *result;
  v10 = *(this + 14);
  if (v10 <= *result)
  {
LABEL_71:
    v60 = 0;
    v8[3] = 0u;
    v8[4] = 0u;
    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
    v44 = MEMORY[0x1E69E9C10];
    v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v63 = 136315906;
    v64 = "operator[]";
    v65 = 1024;
    if (v45)
    {
      v46 = 3;
    }

    else
    {
      v46 = 2;
    }

    v66 = 789;
    v67 = 2048;
    v68 = v9;
    v69 = 2048;
    v70 = v10;
    _os_log_send_and_compose_impl(v46, &v60, &v71, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v63, 38, v56, v57);
    _os_crash_msg();
    __break(1u);
    goto LABEL_75;
  }

  v58 = a3;
  re::DynamicString::DynamicString(&v60, (*(this + 16) + 56 * v9));
  v59 = *(this + 14);
  v9 = v59 - 1;
  v3 = *v7;
  if (v59 - 1 != *v7)
  {
    v10 = *(this + 14);
    if (!v59)
    {
LABEL_75:
      v62 = 0;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v71 = 0u;
      v47 = MEMORY[0x1E69E9C10];
      v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v63 = 136315906;
      v64 = "operator[]";
      v65 = 1024;
      if (v48)
      {
        v49 = 3;
      }

      else
      {
        v49 = 2;
      }

      v66 = 789;
      v67 = 2048;
      v68 = v9;
      v69 = 2048;
      v70 = 0;
      _os_log_send_and_compose_impl(v49, &v62, &v71, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v63, 38, v56, v58);
      _os_crash_msg();
      __break(1u);
      goto LABEL_79;
    }

    if (v59 <= v3)
    {
LABEL_79:
      v62 = 0;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v71 = 0u;
      v50 = MEMORY[0x1E69E9C10];
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

      v66 = 789;
      v67 = 2048;
      v68 = v3;
      v69 = 2048;
      v70 = v10;
      _os_log_send_and_compose_impl(v52, &v62, &v71, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v63, 38, v56, v58);
      _os_crash_msg();
      __break(1u);
LABEL_83:
      v62 = 0;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v71 = 0u;
      v53 = MEMORY[0x1E69E9C10];
      v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v63 = 136315906;
      v64 = "operator[]";
      v65 = 1024;
      if (v54)
      {
        v55 = 3;
      }

      else
      {
        v55 = 2;
      }

      v66 = 789;
      v67 = 2048;
      v68 = v10;
      v69 = 2048;
      v70 = v3;
      _os_log_send_and_compose_impl(v55, &v62, &v71, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v63, 38, v56, v58);
      _os_crash_msg();
      __break(1u);
    }

    v11 = *(this + 16);
    v12 = v11 + 56 * v9;
    v13 = v11 + 56 * v3;
    re::DynamicString::operator=(v13, v12);
    *(v13 + 32) = *(v12 + 32);
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v13 + 40), *(v12 + 40));
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v13 + 48), *(v12 + 48));
    v10 = *v7;
    v3 = *(this + 14);
    if (v3 <= *v7)
    {
      goto LABEL_83;
    }

    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(this + 48, (*(this + 16) + 56 * v10), v7);
    v10 = *(this + 42);
    if (v10)
    {
      v3 = 0;
      v14 = *(this + 19);
      while (1)
      {
        v15 = *v14;
        v14 += 20;
        if (v15 < 0)
        {
          break;
        }

        if (v10 == ++v3)
        {
          v3 = *(this + 42);
          break;
        }
      }
    }

    else
    {
      v3 = 0;
    }

    if (v3 != v10)
    {
      v16 = *(this + 42);
      while (1)
      {
        v17 = *v7;
        v18 = *(this + 14);
        if (v18 <= *v7)
        {
          break;
        }

        v19 = *(this + 19);
        if (re::DynamicString::operator==(v19 + 80 * v3 + 40, *(this + 16) + 56 * v17))
        {
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(this + 48, (v19 + 80 * v3 + 8), v7);
          v16 = *(this + 42);
        }

        if (v16 <= v3 + 1)
        {
          v20 = (v3 + 1);
        }

        else
        {
          v20 = v16;
        }

        while (v20 - 1 != v3)
        {
          v3 = (v3 + 1);
          if ((*(*(this + 19) + 80 * v3) & 0x80000000) != 0)
          {
            goto LABEL_26;
          }
        }

        v3 = v20;
LABEL_26:
        if (v3 == v10)
        {
          goto LABEL_27;
        }
      }

      v62 = 0;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v71 = 0u;
      v41 = MEMORY[0x1E69E9C10];
      v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v63 = 136315906;
      v64 = "operator[]";
      v65 = 1024;
      if (v42)
      {
        v43 = 3;
      }

      else
      {
        v43 = 2;
      }

      v66 = 789;
      v67 = 2048;
      v68 = v17;
      v69 = 2048;
      v70 = v18;
      _os_log_send_and_compose_impl(v43, &v62, &v71, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v63, 38, v56, v58);
      _os_crash_msg();
      __break(1u);
      goto LABEL_71;
    }
  }

LABEL_27:
  v21 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(this + 48, &v60);
  v22 = *(this + 14);
  if (v22 < v9)
  {
    if (*(this + 13) < v9)
    {
      v21 = re::DynamicArray<re::GeomModelDescriptor::AttributeData>::setCapacity(this + 12, v9);
      v22 = *(this + 14);
    }

    if (v22 < v9)
    {
      v23 = ~v22 + v59;
      v24 = 56 * v22;
      do
      {
        v25 = *(this + 16) + v24;
        *(v25 + 32) = 4;
        v24 += 56;
        *(v25 + 40) = 0;
        *(v25 + 48) = 0;
        --v23;
      }

      while (v23);
    }

LABEL_41:
    *(this + 14) = v9;
    ++*(this + 30);
    goto LABEL_42;
  }

  if (v22 > v9)
  {
    v26 = 56 * v59;
    v27 = v59 - 1;
    do
    {
      v28 = *(this + 16) + v26;
      v29 = *(v28 - 8);
      if (v29)
      {

        *(v28 - 8) = 0;
      }

      v30 = *(v28 - 16);
      if (v30)
      {

        *(v28 - 16) = 0;
      }

      re::DynamicString::deinit((v28 - 56));
      ++v27;
      v26 += 56;
    }

    while (v27 < *(this + 14));
    goto LABEL_41;
  }

LABEL_42:
  *&v73 = 0;
  *&v72 = 0;
  v71 = 0uLL;
  DWORD2(v72) = 0;
  v31 = *(this + 42);
  if (v31)
  {
    v32 = 0;
    v33 = *(this + 19);
    v34 = v58;
    while (1)
    {
      v35 = *v33;
      v33 += 20;
      if (v35 < 0)
      {
        break;
      }

      if (v31 == ++v32)
      {
        LODWORD(v32) = *(this + 42);
        break;
      }
    }
  }

  else
  {
    LODWORD(v32) = 0;
    v34 = v58;
  }

  if (v32 != v31)
  {
    v36 = *(this + 42);
    do
    {
      v37 = *(this + 19);
      if (re::DynamicString::operator==(v37 + 80 * v32 + 40, &v60))
      {
        re::DynamicArray<re::DynamicString>::add(&v71, (v37 + 80 * v32 + 8));
        v36 = *(this + 42);
      }

      if (v36 <= v32 + 1)
      {
        v38 = v32 + 1;
      }

      else
      {
        v38 = v36;
      }

      while (v38 - 1 != v32)
      {
        LODWORD(v32) = v32 + 1;
        if ((*(*(this + 19) + 80 * v32) & 0x80000000) != 0)
        {
          goto LABEL_59;
        }
      }

      LODWORD(v32) = v38;
LABEL_59:
      ;
    }

    while (v32 != v31);
    if (v72)
    {
      v39 = v73;
      v40 = 32 * v72;
      do
      {
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(this + 136, v39);
        re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(this + 48, v39);
        v39 += 4;
        v40 -= 32;
      }

      while (v40);
    }
  }

  *v34 = 1;
  re::DynamicArray<re::DynamicString>::deinit(&v71);
  result = v60;
  if (v60)
  {
    if (v61)
    {
      return (*(*v60 + 40))();
    }
  }

  return result;
}

uint64_t re::GeomModelDescriptor::emptyAttribute(re::GeomModelDescriptor *this)
{
  v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v3)
    {
      operator new();
    }
  }

  return *(v1 + 413);
}

re::DynamicString *re::GeomModelDescriptor::AttributeData::AttributeData(re::GeomModelDescriptor::AttributeData *this)
{
  *(this + 32) = 4;
  *(this + 5) = 0;
  *(this + 6) = 0;
  return result;
}

uint64_t std::__function::__func<void (*)(void const*),std::allocator<void (*)(void const*)>,void ()(void const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D0BD20;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void (*)(void const*),std::allocator<void (*)(void const*)>,void ()(void const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(void const*)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
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

_anonymous_namespace_ *re::DynamicArray<re::GeomModelDescriptor::AttributeData>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::GeomModelDescriptor::AttributeData>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::GeomModelDescriptor::AttributeData>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::GeomModelDescriptor::AttributeData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::GeomModelDescriptor::AttributeData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x38uLL))
        {
          v2 = 56 * a2;
          result = (*(*result + 32))(result, 56 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 56, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v17, v19);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v18, v20);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_18:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 56 * v9;
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = *(v8 + 24);
          v12 = *(v8 + 8);
          *v11 = *v8;
          *v8 = 0;
          v13 = *(v8 + 16);
          *(v8 + 24) = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          *(v8 + 8) = v15;
          *(v8 + 16) = v14;
          *(v11 + 32) = *(v8 + 32);
          v11[5] = *(v8 + 40);
          *(v8 + 40) = 0;
          v11[6] = *(v8 + 48);
          *(v8 + 48) = 0;
          v16 = *(v8 + 40);
          if (v16)
          {

            *(v8 + 40) = 0;
          }

          re::DynamicString::deinit(v8);
          v8 += 56;
          v11 += 7;
          v10 -= 56;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t *re::GeomModelDescriptor::freeReNewedArrayData<unsigned int>(re *a1)
{
  result = re::globalAllocators(a1);
  if (a1)
  {
    v3 = *(*result[2] + 40);

    return v3();
  }

  return result;
}

uint64_t re::make::shared::object<re::internal::DataPayload,unsigned char *&,re::GeomModelValueType const&,unsigned long,unsigned long,int,BOOL,unsigned char *&,void (&)(void const*)>@<X0>(re *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, int *a5@<X4>, char *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v18 = re::globalAllocators(a1);
  v19 = (*(*v18[2] + 32))(v18[2], 104, 8);
  result = re::internal::DataPayload::DataPayload(v19, *a1, *a2, *a3, *a4, *a5, *a6, *a7, a8);
  *a9 = result;
  return result;
}

void re::internal::createGeomMeshFromMDLSubmesh(uint64_t a1@<X8>, re::internal *this@<X0>, MDLMesh *a3@<X1>)
{
  v113 = *MEMORY[0x1E69E9840];
  v6 = this;
  v7 = a3;
  v75 = a1;
  re::GeomMesh::GeomMesh(a1, 0);
  v86 = 0;
  v83[1] = 0;
  v84 = 0;
  v83[0] = 0;
  v85 = 0;
  v9 = v84;
  if (!v84)
  {
LABEL_63:
    re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) ", "topologies.size() > 0", "createGeomMeshFromMDLSubmesh", 655, v71);
    _os_crash("assertion failure: (topologies.size() > 0) ");
    __break(1u);
LABEL_64:
    *v101 = 0;
    memset(v92, 0, 32);
    v90 = 0u;
    v91 = 0u;
    *v89 = 0u;
    v66 = MEMORY[0x1E69E9C10];
    v67 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v108) = 136315906;
    *(v3 + 52) = "operator[]";
    WORD6(v108) = 1024;
    if (v67)
    {
      v68 = 3;
    }

    else
    {
      v68 = 2;
    }

    *(v3 + 62) = 789;
    WORD1(v109) = 2048;
    *(v3 + 68) = a1;
    WORD6(v109) = 2048;
    *(v3 + 78) = v9;
    _os_log_send_and_compose_impl(v68, v101, v89, 80, &dword_1E1C61000, v66, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v108, 38, v69, v70);
    _os_crash_msg();
    __break(1u);
  }

  v3 = v101;
  v72 = [(re::internal *)v6 vertexDescriptor];
  v10 = [v72 attributeNamed:@"position"];
  v11 = [v10 bufferIndex];
  a1 = [(MDLMesh *)v7 faceIndexing];

  v71 = v10;
  if (a1)
  {
    v12 = [(MDLMesh *)v7 faceIndexing];
    v13 = [v12 objectAtIndexedSubscript:v11];
    v14 = [v13 unsignedIntValue];

    a1 = v14;
    if (v9 <= v14)
    {
      goto LABEL_64;
    }
  }

  v15 = v86 + 80 * a1;
  v16 = *(v15 + 16);
  v76 = v15;
  v17 = *(v15 + 56);
  v9 = v17;
  a1 = v89;
  re::GeomMeshBuilder::GeomMeshBuilder(v89, v75);
  LODWORD(v89[1]) = v16;
  v93 = v16;
  if (v94)
  {
    v18 = v95;
    v19 = 8 * v94;
    do
    {
      v20 = *v18++;
      (*(*v20 + 80))(v20, v93);
      v19 -= 8;
    }

    while (v19);
  }

  if (v91 > v17)
  {
    v21 = v100;
    if (v100)
    {
      v22 = 0;
      do
      {
        v23 = re::internal::GeomAttributeContainer::attributeByIndex(v99, v22);
        re::internal::accessFaceVaryingAttributeSubmesh(v23, v24);
        ++v22;
      }

      while (v21 != v22);
    }
  }

  re::DynamicArray<re::GeomCell4>::resize(&v90, v17);
  v96 = v17;
  if (v97)
  {
    v25 = v98;
    v26 = 8 * v97;
    do
    {
      v27 = *v25++;
      (*(*v27 + 80))(v27, v96);
      v26 -= 8;
    }

    while (v26);
  }

  v28 = v76;
  if (v17)
  {
    v29 = 0;
    while (1)
    {
      v30 = *(v28 + 56);
      if (v30 <= v29)
      {
        break;
      }

      v30 = v91;
      if (v91 <= v29)
      {
        goto LABEL_55;
      }

      v31 = *(*(v28 + 72) + 16 * v29);
      v32 = (*&v92[0] + 16 * v29);
      v33 = *v32;
      v34 = v32[3];
      if (v33 != -1 && v34 != -1)
      {
        v36 = v100;
        if (v100)
        {
          v77 = *(*(v28 + 72) + 16 * v29);
          v37 = 0;
          do
          {
            v38 = re::internal::GeomAttributeContainer::attributeByIndex(v99, v37);
            re::internal::accessFaceVaryingAttributeSubmesh(v38, v39);
            ++v37;
          }

          while (v36 != v37);
          v30 = v91;
          v28 = v76;
          v31 = v77;
        }
      }

      if (v30 <= v29)
      {
        goto LABEL_59;
      }

      *(*&v92[0] + 16 * v29++) = v31;
      if (v29 == v9)
      {
        goto LABEL_28;
      }
    }

    v87 = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v57 = MEMORY[0x1E69E9C10];
    v58 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v101 = 136315906;
    *&v101[4] = "operator[]";
    v102 = 1024;
    if (v58)
    {
      v59 = 3;
    }

    else
    {
      v59 = 2;
    }

    v103 = 797;
    v104 = 2048;
    v105 = v29;
    v106 = 2048;
    v107 = v30;
    _os_log_send_and_compose_impl(v59, &v87, &v108, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v101, 38, v69, v70);
    _os_crash_msg();
    __break(1u);
LABEL_55:
    v87 = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v60 = MEMORY[0x1E69E9C10];
    v61 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v101 = 136315906;
    *&v101[4] = "operator[]";
    v102 = 1024;
    if (v61)
    {
      v62 = 3;
    }

    else
    {
      v62 = 2;
    }

    v103 = 797;
    v104 = 2048;
    v105 = v29;
    v106 = 2048;
    v107 = v30;
    _os_log_send_and_compose_impl(v62, &v87, &v108, 80, &dword_1E1C61000, v60, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v101, 38, v69, v70);
    _os_crash_msg();
    __break(1u);
LABEL_59:
    v87 = 0;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v63 = MEMORY[0x1E69E9C10];
    v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v101 = 136315906;
    *&v101[4] = "operator[]";
    v102 = 1024;
    if (v64)
    {
      v65 = 3;
    }

    else
    {
      v65 = 2;
    }

    v103 = 789;
    v104 = 2048;
    v105 = v29;
    v106 = 2048;
    v107 = v30;
    _os_log_send_and_compose_impl(v65, &v87, &v108, 80, &dword_1E1C61000, v63, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v101, 38, v69, v70);
    _os_crash_msg();
    __break(1u);
    goto LABEL_63;
  }

LABEL_28:
  v40 = re::GeomMesh::operator=(v75, &v89[1]);
  re::GeomMesh::setName(v40, v89[0]);
  re::GeomMesh::freeName(v89);
  re::GeomMesh::freeName(v89);
  re::internal::GeomAttributeManager::~GeomAttributeManager((v92 + 8));
  if (v90 && *&v92[0])
  {
    (*(*v90 + 40))();
  }

  v41 = *MEMORY[0x1E6974B28];
  {
    *&v108 = re::GeomMesh::modifyVertexPositions(v75);
    DWORD2(v108) = v42;
  }

  v44 = *MEMORY[0x1E6974B18];
  v45 = v28;
  v46 = v6;
  v47 = *MEMORY[0x1E6974B30];
  v48 = v7;
  v49 = *MEMORY[0x1E6974AF0];
  v78 = *MEMORY[0x1E6974B38];
  v73 = v48;
  v74 = v46;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v50 = [v72 attributes];
  v51 = [v50 countByEnumeratingWithState:&v79 objects:v88 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v80;
    while (2)
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v80 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = *(*(&v79 + 1) + 8 * i);
        v56 = [v55 name];
        if (([v56 isEqualToString:v41] & 1) == 0 && (objc_msgSend(v56, "isEqualToString:", v44) & 1) == 0 && (objc_msgSend(v56, "isEqualToString:", v47) & 1) == 0 && (objc_msgSend(v56, "isEqualToString:", v49) & 1) == 0 && (objc_msgSend(v56, "isEqualToString:", v78) & 1) == 0)
        {
          if (!*[v56 UTF8String])
          {

            goto LABEL_50;
          }

          if (([v55 format] - 786437) >= 0xFFFFFFFFFFFFFFFDLL)
          {
          }
        }
      }

      v52 = [v50 countByEnumeratingWithState:&v79 objects:v88 count:16];
      if (v52)
      {
        continue;
      }

      break;
    }
  }

LABEL_50:
}

void re::internal::anonymous namespace::extractMDLAttributeTopologies(void *a1, uint64_t a2)
{
  v225 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = *(a2 + 16);
  *(a2 + 16) = 0;
  if (v5)
  {
    v6 = *(a2 + 32);
    v7 = 80 * v5;
    do
    {
      re::DynamicArray<unsigned long>::deinit(v6 + 40);
      re::DynamicArray<unsigned long>::deinit(v6);
      v6 += 80;
      v7 -= 80;
    }

    while (v7);
  }

  v194 = a2;
  ++*(a2 + 24);
  if (!v4)
  {
    goto LABEL_182;
  }

  v8 = [v4 indexBuffer];
  v9 = [v8 map];

  if (!v9)
  {
    goto LABEL_182;
  }

  v10 = [v4 indexBuffer];
  v11 = [v10 map];
  v12 = [v11 bytes];

  if (!v12)
  {
    goto LABEL_182;
  }

  v13 = [v4 geometryType];
  v14 = [v4 indexBuffer];
  v15 = [v14 length];
  [v4 indexBuffer];
  v17 = v16 = v4;
  v18 = [v17 map];
  v19 = [v18 bytes];
  v195 = v16;
  v20 = [v16 indexType];
  v22 = v20;
  v205 = v19;
  v206 = v20;
  if (v20 != 8)
  {
    if (v20 == 32)
    {
      v15 >>= 2;
    }

    else
    {
      if (v20 != 16)
      {
        goto LABEL_232;
      }

      v15 >>= 1;
    }
  }

  v204 = v15;

  v4 = v16;
  if (v13 != 2)
  {
    if (v13 == 5)
    {
      v44 = v16;
      v45 = [v44 topology];
      v46 = [v45 faceTopology];
      v189 = [v46 length];
      v184 = v46;
      v47 = [v46 map];
      v191 = [v47 bytes];

      v48 = [v44 faceIndexing];
      v185 = v45;
      v190 = [v45 faceCount];
      v183 = v48;
      v49 = [v48 count];
      v50 = v49;
      if (v49)
      {
        v51 = 0;
        v52 = 0;
        do
        {
          v53 = [v44 faceIndexing];
          v54 = [v53 objectAtIndexedSubscript:v52];
          v55 = [v54 intValue];

          if (v55 > v51)
          {
            v56 = [v44 faceIndexing];
            v57 = [v56 objectAtIndexedSubscript:v52];
            v51 = [v57 intValue];
          }

          ++v52;
        }

        while (v50 != v52);
        v28 = v51 + 1;
        v4 = v195;
      }

      else
      {
        v28 = 1;
      }

      v186 = v44;
      v188 = [v44 indexCount] / v28;
      v81 = v194;
      v82 = 0;
      v83 = v189;
      v193 = 0;
      if (v28 <= 1)
      {
        v84 = 1;
      }

      else
      {
        v84 = v28;
      }

      v187 = v84;
      v85 = v191;
      while (1)
      {
        v24 = *(v81 + 16);
        if (v24 <= v82)
        {
          goto LABEL_221;
        }

        v24 = *(v81 + 32) + 80 * v82;
        memset(v213, 0, 36);
        *&v213[36] = 0x7FFFFFFFLL;
        v196 = v82;
        v199 = v24;
        re::DynamicArray<re::GeomCell4>::resize((v24 + 40), v190);
        if (!v190)
        {
          goto LABEL_160;
        }

        v87 = 0;
        v88 = 0;
        do
        {
          if (v87 == v83)
          {
            goto LABEL_204;
          }

          v89 = *(v85 + v87);
          if (v89 <= 2)
          {
            v138 = *(v194 + 16);
            *(v194 + 16) = 0;
            if (v138)
            {
              v139 = *(v194 + 32);
              v140 = 80 * v138;
              do
              {
                re::DynamicArray<unsigned long>::deinit(v139 + 40);
                re::DynamicArray<unsigned long>::deinit(v139);
                v139 += 80;
                v140 -= 80;
              }

              while (v140);
            }

            goto LABEL_179;
          }

          v90 = (v196 + v88 * v28);
          v13 = v204;
          if (v204 <= v90)
          {
            goto LABEL_205;
          }

          v24 = v206;
          switch(v206)
          {
            case 0x20uLL:
              v91 = v205;
              v92 = *(v205 + 4 * v90);
              break;
            case 0x10uLL:
              v91 = v205;
              v92 = *(v205 + 2 * v90);
              break;
            case 8uLL:
              v91 = v205;
              v92 = *(v205 + v90);
              break;
            default:
              goto LABEL_231;
          }

          v211 = v92;
          v93 = (v28 + v28 * v88 + v196);
          if (v204 <= v93)
          {
            goto LABEL_206;
          }

          if (v206 == 32)
          {
            v2 = v87;
            v94 = *(v91 + 4 * v93);
          }

          else
          {
            v2 = v87;
            if (v206 == 16)
            {
              v94 = *(v91 + 2 * v93);
            }

            else
            {
              v94 = *(v91 + v93);
            }
          }

          v210 = v94;
          v87 = (v88 + 2);
          v95 = (v196 + v87 * v28);
          if (v204 <= v95)
          {
            goto LABEL_207;
          }

          v197 = v88;
          v198 = v89;
          v200 = v91;
          if (v206 == 32)
          {
            v96 = *(v91 + 4 * v95);
          }

          else if (v206 == 16)
          {
            v96 = *(v91 + 2 * v95);
          }

          else
          {
            v96 = *(v91 + v95);
          }

          v209 = v96;
          v97 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(v213, &v211);
          v98 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(v213, &v210);
          v99 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(v213, &v209);
          v203 = v97;
          if (!v97 || !v98 || (v100 = v99) == 0)
          {
            v141 = *(v194 + 16);
            *(v194 + 16) = 0;
            if (v141)
            {
              v142 = *(v194 + 32);
              v143 = 80 * v141;
              do
              {
                re::DynamicArray<unsigned long>::deinit(v142 + 40);
                re::DynamicArray<unsigned long>::deinit(v142);
                v142 += 80;
                v143 -= 80;
              }

              while (v143);
            }

            v144 = v194;
            goto LABEL_175;
          }

          v101 = v198;
          if (v198 == 4)
          {
            v106 = (v196 + (v197 + 3) * v28);
            if (v13 > v106)
            {
              if (v24 == 32)
              {
                v107 = *(v200 + 4 * v106);
                v87 = v2;
              }

              else
              {
                v87 = v2;
                if (v24 == 16)
                {
                  v107 = *(v200 + 2 * v106);
                }

                else
                {
                  v107 = *(v200 + v106);
                }
              }

              v208 = v107;
              v127 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(v213, &v208);
              if (v127)
              {
                v24 = v199[7];
                if (v24 > v87)
                {
                  v128 = (v199[9] + 16 * v87);
                  v129 = *v98;
                  v130 = *v100;
                  v131 = *v127;
                  *v128 = *v97;
                  v128[1] = v129;
                  v128[2] = v130;
                  v128[3] = v131;
                  v4 = v195;
                  v105 = v197;
                  v101 = v198;
                  goto LABEL_159;
                }

LABEL_217:
                v212 = 0;
                v163 = v87;
                v82 = v214;
                v223 = 0u;
                v224 = 0u;
                v222 = 0u;
                memset(buf, 0, sizeof(buf));
                v164 = MEMORY[0x1E69E9C10];
                v165 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v214 = 136315906;
                *&v214[4] = "operator[]";
                v215 = 1024;
                if (v165)
                {
                  v166 = 3;
                }

                else
                {
                  v166 = 2;
                }

                v216 = 789;
                v217 = 2048;
                v218 = v163;
                v219 = 2048;
                v220 = v24;
                _os_log_send_and_compose_impl(v166, &v212, buf, 80, &dword_1E1C61000, v164, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v214, 38, v181, v182);
                _os_crash_msg();
                __break(1u);
LABEL_221:
                *v214 = 0;
                v223 = 0u;
                v224 = 0u;
                v222 = 0u;
                memset(buf, 0, sizeof(buf));
                v167 = MEMORY[0x1E69E9C10];
                v168 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v213 = 136315906;
                *&v213[4] = "operator[]";
                *&v213[12] = 1024;
                if (v168)
                {
                  v169 = 3;
                }

                else
                {
                  v169 = 2;
                }

                *&v213[14] = 789;
                *&v213[18] = 2048;
                *&v213[20] = v82;
                *&v213[28] = 2048;
                *&v213[30] = v24;
                _os_log_send_and_compose_impl(v169, v214, buf, 80, &dword_1E1C61000, v167, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v213, 38, v181, v182);
                _os_crash_msg();
                __break(1u);
LABEL_225:
                *v214 = 0;
                v223 = 0u;
                v224 = 0u;
                v222 = 0u;
                memset(buf, 0, sizeof(buf));
                v170 = MEMORY[0x1E69E9C10];
                v171 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v213 = 136315906;
                *&v213[4] = "operator[]";
                *&v213[12] = 1024;
                if (v171)
                {
                  v172 = 3;
                }

                else
                {
                  v172 = 2;
                }

                *&v213[14] = 789;
                *&v213[18] = 2048;
                *&v213[20] = 0;
                *&v213[28] = 2048;
                *&v213[30] = 0;
                _os_log_send_and_compose_impl(v172, v214, buf, 80, &dword_1E1C61000, v170, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v213, 38, v181, v182);
                _os_crash_msg();
                __break(1u);
              }

              v144 = v194;
              v145 = *(v194 + 16);
              *(v194 + 16) = 0;
              if (!v145)
              {
LABEL_175:
                ++*(v144 + 24);
                v4 = v195;
                goto LABEL_180;
              }

              v146 = *(v194 + 32);
              v147 = 80 * v145;
              v4 = v195;
              do
              {
                re::DynamicArray<unsigned long>::deinit(v146 + 40);
                re::DynamicArray<unsigned long>::deinit(v146);
                v146 += 80;
                v147 -= 80;
              }

              while (v147);
LABEL_179:
              ++*(v194 + 24);
              goto LABEL_180;
            }

LABEL_216:
            re::internal::assertLog(4, v86, "assertion failure: '%s' (%s:line %i) ", "index < m_max_index", "operator[]", 79);
            _os_crash("assertion failure: (index < m_max_index) ");
            __break(1u);
            goto LABEL_217;
          }

          if (v198 == 3)
          {
            v24 = v199[7];
            v87 = v2;
            if (v24 > v2)
            {
              v102 = (v199[9] + 16 * v2);
              v103 = *v98;
              v104 = *v99;
              *v102 = *v97;
              v102[1] = v103;
              v105 = v197;
              v102[2] = v104;
              v102[3] = -1;
              v4 = v195;
              goto LABEL_159;
            }

LABEL_208:
            v212 = 0;
            v108 = v87;
            v87 = v214;
            v223 = 0u;
            v224 = 0u;
            v222 = 0u;
            memset(buf, 0, sizeof(buf));
            v157 = MEMORY[0x1E69E9C10];
            v158 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v214 = 136315906;
            *&v214[4] = "operator[]";
            v215 = 1024;
            if (v158)
            {
              v159 = 3;
            }

            else
            {
              v159 = 2;
            }

            v216 = 789;
            v217 = 2048;
            v218 = v108;
            v219 = 2048;
            v220 = v24;
            _os_log_send_and_compose_impl(v159, &v212, buf, 80, &dword_1E1C61000, v157, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v214, 38, v181, v182);
            _os_crash_msg();
            __break(1u);
LABEL_212:
            v212 = 0;
            v24 = v214;
            v223 = 0u;
            v224 = 0u;
            v222 = 0u;
            memset(buf, 0, sizeof(buf));
            v160 = MEMORY[0x1E69E9C10];
            v161 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v214 = 136315906;
            *&v214[4] = "operator[]";
            v215 = 1024;
            if (v161)
            {
              v162 = 3;
            }

            else
            {
              v162 = 2;
            }

            v216 = 789;
            v217 = 2048;
            v218 = v2;
            v219 = 2048;
            v220 = v108;
            _os_log_send_and_compose_impl(v162, &v212, buf, 80, &dword_1E1C61000, v160, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v214, 38, v181, v182);
            _os_crash_msg();
            __break(1u);
            goto LABEL_216;
          }

          v108 = v199[7];
          if (v108 <= v2)
          {
            goto LABEL_212;
          }

          v192 = v2;
          v109 = (v199[9] + 16 * v2);
          v110 = *v98;
          v111 = *v99;
          *v109 = *v97;
          v109[1] = v110;
          v109[2] = v111;
          v109[3] = -1;
          v112 = v198 + v108 - 3;
          re::DynamicArray<re::GeomCell4>::resize(v199 + 5, v112);
          if (v112 <= v108)
          {
            v126 = v193;
            if (v193 <= v198)
            {
              v126 = v198;
            }

            LODWORD(v193) = v126;
            v4 = v195;
            v85 = v191;
            v87 = v2;
            v101 = v198;
            goto LABEL_158;
          }

          v113 = 0;
          v108 = v108;
          v114 = 16 * v108;
          v115 = v196 + v28 * v87;
          v116 = v196 + v28 * (v197 + 3);
          while (1)
          {
            if (v13 <= v115)
            {
              re::internal::assertLog(4, v86, "assertion failure: '%s' (%s:line %i) ", "index < m_max_index", "operator[]", 79);
              _os_crash("assertion failure: (index < m_max_index) ");
              __break(1u);
LABEL_184:
              re::internal::assertLog(4, v86, "assertion failure: '%s' (%s:line %i) ", "index < m_max_index", "operator[]", 79);
              _os_crash("assertion failure: (index < m_max_index) ");
              __break(1u);
LABEL_185:
              v212 = 0;
              v223 = 0u;
              v224 = 0u;
              v222 = 0u;
              memset(buf, 0, sizeof(buf));
              v148 = MEMORY[0x1E69E9C10];
              v149 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v214 = 136315906;
              *&v214[4] = "operator[]";
              v215 = 1024;
              if (v149)
              {
                v150 = 3;
              }

              else
              {
                v150 = 2;
              }

              v216 = 789;
              v217 = 2048;
              v218 = v108;
              v219 = 2048;
              v220 = v113;
              _os_log_send_and_compose_impl(v150, &v212, buf, 80, &dword_1E1C61000, v148, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v214, 38, v181, v182);
              _os_crash_msg();
              __break(1u);
LABEL_189:
              re::internal::assertLog(4, v27, "assertion failure: '%s' (%s:line %i) ", "index < m_max_index", "operator[]", 79);
              _os_crash("assertion failure: (index < m_max_index) ");
              __break(1u);
LABEL_190:
              re::internal::assertLog(4, v34, "assertion failure: '%s' (%s:line %i) ", "index < m_max_index", "operator[]", 79);
              _os_crash("assertion failure: (index < m_max_index) ");
              __break(1u);
LABEL_191:
              re::internal::assertLog(4, v38, "assertion failure: '%s' (%s:line %i) ", "index < m_max_index", "operator[]", 79);
              _os_crash("assertion failure: (index < m_max_index) ");
              __break(1u);
LABEL_192:
              v212 = 0;
              v24 = v214;
              v223 = 0u;
              v224 = 0u;
              v222 = 0u;
              memset(buf, 0, sizeof(buf));
              v151 = MEMORY[0x1E69E9C10];
              v152 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v214 = 136315906;
              *&v214[4] = "operator[]";
              v215 = 1024;
              if (v152)
              {
                v153 = 3;
              }

              else
              {
                v153 = 2;
              }

              v216 = 789;
              v217 = 2048;
              v218 = v28;
              v219 = 2048;
              v220 = v13;
              _os_log_send_and_compose_impl(v153, &v212, buf, 80, &dword_1E1C61000, v151, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v214, 38, v181, v182);
              _os_crash_msg();
              __break(1u);
LABEL_196:
              re::internal::assertLog(4, v58, "assertion failure: '%s' (%s:line %i) ", "index < m_max_index", "operator[]", 79);
              _os_crash("assertion failure: (index < m_max_index) ");
              __break(1u);
LABEL_197:
              re::internal::assertLog(4, v64, "assertion failure: '%s' (%s:line %i) ", "index < m_max_index", "operator[]", 79);
              _os_crash("assertion failure: (index < m_max_index) ");
              __break(1u);
LABEL_198:
              re::internal::assertLog(4, v69, "assertion failure: '%s' (%s:line %i) ", "index < m_max_index", "operator[]", 79);
              _os_crash("assertion failure: (index < m_max_index) ");
              __break(1u);
LABEL_199:
              re::internal::assertLog(4, v73, "assertion failure: '%s' (%s:line %i) ", "index < m_max_index", "operator[]", 79);
              _os_crash("assertion failure: (index < m_max_index) ");
              __break(1u);
LABEL_200:
              v212 = 0;
              v87 = v214;
              v223 = 0u;
              v224 = 0u;
              v222 = 0u;
              memset(buf, 0, sizeof(buf));
              v154 = MEMORY[0x1E69E9C10];
              v155 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v214 = 136315906;
              *&v214[4] = "operator[]";
              v215 = 1024;
              if (v155)
              {
                v156 = 3;
              }

              else
              {
                v156 = 2;
              }

              v216 = 789;
              v217 = 2048;
              v218 = v28;
              v219 = 2048;
              v220 = v24;
              _os_log_send_and_compose_impl(v156, &v212, buf, 80, &dword_1E1C61000, v154, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v214, 38, v181, v182);
              _os_crash_msg();
              __break(1u);
LABEL_204:
              re::internal::assertLog(4, v86, "assertion failure: '%s' (%s:line %i) ", "index < m_max_index", "operator[]", 79);
              _os_crash("assertion failure: (index < m_max_index) ");
              __break(1u);
LABEL_205:
              re::internal::assertLog(4, v86, "assertion failure: '%s' (%s:line %i) ", "index < m_max_index", "operator[]", 79);
              _os_crash("assertion failure: (index < m_max_index) ");
              __break(1u);
LABEL_206:
              re::internal::assertLog(4, v86, "assertion failure: '%s' (%s:line %i) ", "index < m_max_index", "operator[]", 79);
              _os_crash("assertion failure: (index < m_max_index) ");
              __break(1u);
LABEL_207:
              re::internal::assertLog(4, v86, "assertion failure: '%s' (%s:line %i) ", "index < m_max_index", "operator[]", 79);
              _os_crash("assertion failure: (index < m_max_index) ");
              __break(1u);
              goto LABEL_208;
            }

            v2 = v28;
            v28 = v115;
            if (v24 == 32)
            {
              v117 = v200;
              v118 = *(v200 + 4 * v115);
            }

            else
            {
              v117 = v200;
              if (v24 == 16)
              {
                v118 = *(v200 + 2 * v115);
              }

              else
              {
                v118 = *(v200 + v115);
              }
            }

            v208 = v118;
            if (v13 <= v116)
            {
              goto LABEL_184;
            }

            if (v24 == 32)
            {
              v119 = *(v117 + 4 * v116);
            }

            else
            {
              v119 = v24 == 16 ? *(v117 + 2 * v116) : *(v117 + v116);
            }

            v207 = v119;
            v120 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(v213, &v208);
            v121 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(v213, &v207);
            if (!v120 || !v121)
            {
              break;
            }

            v113 = v199[7];
            if (v113 <= v108)
            {
              goto LABEL_185;
            }

            v122 = (v199[9] + v114);
            v123 = *v120;
            v124 = *v121;
            *v122 = *v203;
            v122[1] = v123;
            v113 = ++v108 >= v112;
            v122[2] = v124;
            v122[3] = -1;
            v114 += 16;
            v115 = v28 + v2;
            v28 = v2;
            v116 += v2;
            if (v112 == v108)
            {
              v125 = v193;
              v101 = v198;
              if (v193 <= v198)
              {
                v125 = v198;
              }

              LODWORD(v193) = v125;
              v4 = v195;
              v83 = v189;
              v85 = v191;
              v87 = v192;
              goto LABEL_158;
            }
          }

          v132 = *(v194 + 16);
          *(v194 + 16) = 0;
          if (!v132)
          {
            ++*(v194 + 24);
            v134 = v193;
            v101 = v198;
            if (v193 <= v198)
            {
              v134 = v198;
            }

            v4 = v195;
            v85 = v191;
            v87 = v192;
            if (v113)
            {
              goto LABEL_157;
            }

LABEL_180:
            re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v213);
LABEL_181:

LABEL_182:
            return;
          }

          v133 = *(v194 + 32);
          v24 = 80 * v132;
          v4 = v195;
          v85 = v191;
          v87 = v192;
          do
          {
            re::DynamicArray<unsigned long>::deinit(v133 + 40);
            re::DynamicArray<unsigned long>::deinit(v133);
            v133 += 80;
            v24 -= 80;
          }

          while (v24);
          ++*(v194 + 24);
          v134 = v193;
          v101 = v198;
          if (v193 <= v198)
          {
            v134 = v198;
          }

          if ((v113 & 1) == 0)
          {
            goto LABEL_180;
          }

LABEL_157:
          LODWORD(v193) = v134;
          v83 = v189;
          v28 = v2;
LABEL_158:
          ++HIDWORD(v193);
          v105 = v197;
LABEL_159:
          v88 = v105 + v101;
          ++v87;
        }

        while (v87 != v190);
LABEL_160:
        re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v213);
        v82 = v196 + 1;
        v81 = v194;
        if (v196 + 1 == v187)
        {
          if (HIDWORD(v193))
          {
            v136 = *re::pipelineLogObjects(v135);
            if (os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109890;
              *&buf[8] = 2080;
              *&buf[4] = HIDWORD(v193) / v28;
              if (HIDWORD(v193) / v28 == 1)
              {
                v137 = "";
              }

              else
              {
                v137 = "s";
              }

              *&buf[10] = v137;
              *&buf[18] = 1024;
              *&buf[20] = v193;
              *&buf[24] = 1024;
              *&buf[26] = v190;
              _os_log_debug_impl(&dword_1E1C61000, v136, OS_LOG_TYPE_DEBUG, "Mesh contains %d polygon%s with edge count greater than 4 (max edge count %d) out of total face count %d.  The nGons have been triangulated.", buf, 0x1Eu);
            }
          }

          goto LABEL_181;
        }
      }
    }

    if (v13 != 4)
    {
      goto LABEL_233;
    }
  }

  if (!*(a2 + 16))
  {
    goto LABEL_225;
  }

  v24 = *(a2 + 32);
  memset(v213, 0, 36);
  *&v213[36] = 0x7FFFFFFFLL;
  v25 = [v16 indexCount];
  v26 = v25;
  if (v13 != 2)
  {
    v202 = (v25 >> 2);
    re::DynamicArray<re::GeomCell4>::resize((v24 + 40), v202);
    if ((v26 & 0x3FFFFFFFCLL) != 0)
    {
      v59 = 0;
      v28 = 0;
      v60 = 0;
      while (v15 > v60)
      {
        v61 = v60;
        switch(v22)
        {
          case 32:
            v62 = *(v19 + 4 * v60);
            break;
          case 16:
            v62 = *(v19 + 2 * v60);
            break;
          case 8:
            v62 = *(v19 + v60);
            break;
          default:
            goto LABEL_230;
        }

        *buf = v62;
        v63 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](v213, buf);
        v65 = v61 + 1;
        if (v15 <= v65)
        {
          goto LABEL_197;
        }

        v66 = *v63;
        if (v22 == 32)
        {
          v67 = *(v19 + 4 * v65);
        }

        else if (v22 == 16)
        {
          v67 = *(v19 + 2 * v65);
        }

        else
        {
          v67 = *(v19 + v65);
        }

        *buf = v67;
        v68 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](v213, buf);
        v70 = v61 + 2;
        if (v15 <= v70)
        {
          goto LABEL_198;
        }

        v2 = *v68;
        if (v22 == 32)
        {
          v71 = *(v19 + 4 * v70);
        }

        else if (v22 == 16)
        {
          v71 = *(v19 + 2 * v70);
        }

        else
        {
          v71 = *(v19 + v70);
        }

        *buf = v71;
        v72 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](v213, buf);
        v74 = v61 + 3;
        if (v15 <= v74)
        {
          goto LABEL_199;
        }

        v75 = *v72;
        if (v22 == 32)
        {
          v76 = *(v19 + 4 * v74);
        }

        else if (v22 == 16)
        {
          v76 = *(v19 + 2 * v74);
        }

        else
        {
          v76 = *(v19 + v74);
        }

        *buf = v76;
        v77 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](v213, buf);
        v78 = v24;
        v24 = *(v24 + 56);
        if (v24 <= v28)
        {
          goto LABEL_200;
        }

        v79 = *v77;
        v80 = (*(v78 + 72) + v59);
        *v80 = v66;
        v80[1] = v2;
        v80[2] = v75;
        v80[3] = v79;
        ++v28;
        v60 = v61 + 4;
        v59 += 16;
        v24 = v78;
        if (v202 == v28)
        {
          goto LABEL_76;
        }
      }

      goto LABEL_196;
    }

LABEL_76:
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v213);
    v4 = v195;
    goto LABEL_182;
  }

  re::DynamicArray<re::GeomCell4>::resize((v24 + 40), (v25 / 3));
  v201 = (v26 / 3);
  if (!(v26 / 3))
  {
    goto LABEL_76;
  }

  v28 = 0;
  v29 = 2;
  v30 = 8;
  while (1)
  {
    v31 = v29 - 2;
    if (v15 <= v31)
    {
      goto LABEL_189;
    }

    if (v22 != 32)
    {
      break;
    }

    v32 = *(v19 + 4 * v31);
LABEL_26:
    *buf = v32;
    v33 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](v213, buf);
    v35 = v29 - 1;
    if (v15 <= v35)
    {
      goto LABEL_190;
    }

    v2 = *v33;
    if (v22 == 32)
    {
      v36 = *(v19 + 4 * v35);
    }

    else if (v22 == 16)
    {
      v36 = *(v19 + 2 * v35);
    }

    else
    {
      v36 = *(v19 + v35);
    }

    *buf = v36;
    v37 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](v213, buf);
    if (v15 <= v29)
    {
      goto LABEL_191;
    }

    v39 = *v37;
    if (v22 == 32)
    {
      v40 = *(v19 + 4 * v29);
    }

    else if (v22 == 16)
    {
      v40 = *(v19 + 2 * v29);
    }

    else
    {
      v40 = *(v19 + v29);
    }

    *buf = v40;
    v41 = re::HashTable<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::operator[](v213, buf);
    v13 = *(v24 + 56);
    if (v13 <= v28)
    {
      goto LABEL_192;
    }

    v42 = *v41;
    v43 = (*(v24 + 72) + v30);
    *(v43 - 2) = v2;
    *(v43 - 1) = v39;
    *v43 = v42;
    v43[1] = -1;
    ++v28;
    v30 += 16;
    v29 += 3;
    if (v201 == v28)
    {
      goto LABEL_76;
    }
  }

  if (v22 == 16)
  {
    v32 = *(v19 + 2 * v31);
    goto LABEL_26;
  }

  if (v22 == 8)
  {
    v32 = *(v19 + v31);
    goto LABEL_26;
  }

  re::internal::assertLog(4, v27, "assertion failure: '%s' (%s:line %i) Unsupported or invalid MDLIndexBitDepth detected.", "!Unreachable code", "operator[]", 93);
  _os_crash("assertion failure: (!Unreachable code) Unsupported or invalid MDLIndexBitDepth detected.");
  __break(1u);
  re::internal::assertLog(4, v173, "assertion failure: '%s' (%s:line %i) Unsupported or invalid MDLIndexBitDepth detected.", "!Unreachable code", "operator[]", 93);
  _os_crash("assertion failure: (!Unreachable code) Unsupported or invalid MDLIndexBitDepth detected.");
  __break(1u);
  re::internal::assertLog(4, v174, "assertion failure: '%s' (%s:line %i) Unsupported or invalid MDLIndexBitDepth detected.", "!Unreachable code", "operator[]", 93);
  _os_crash("assertion failure: (!Unreachable code) Unsupported or invalid MDLIndexBitDepth detected.");
  __break(1u);
LABEL_230:
  re::internal::assertLog(4, v58, "assertion failure: '%s' (%s:line %i) Unsupported or invalid MDLIndexBitDepth detected.", "!Unreachable code", "operator[]", 93);
  _os_crash("assertion failure: (!Unreachable code) Unsupported or invalid MDLIndexBitDepth detected.");
  __break(1u);
  re::internal::assertLog(4, v175, "assertion failure: '%s' (%s:line %i) Unsupported or invalid MDLIndexBitDepth detected.", "!Unreachable code", "operator[]", 93);
  _os_crash("assertion failure: (!Unreachable code) Unsupported or invalid MDLIndexBitDepth detected.");
  __break(1u);
  re::internal::assertLog(4, v176, "assertion failure: '%s' (%s:line %i) Unsupported or invalid MDLIndexBitDepth detected.", "!Unreachable code", "operator[]", 93);
  _os_crash("assertion failure: (!Unreachable code) Unsupported or invalid MDLIndexBitDepth detected.");
  __break(1u);
  re::internal::assertLog(4, v177, "assertion failure: '%s' (%s:line %i) Unsupported or invalid MDLIndexBitDepth detected.", "!Unreachable code", "operator[]", 93);
  _os_crash("assertion failure: (!Unreachable code) Unsupported or invalid MDLIndexBitDepth detected.");
  __break(1u);
LABEL_231:
  re::internal::assertLog(4, v86, "assertion failure: '%s' (%s:line %i) Unsupported or invalid MDLIndexBitDepth detected.", "!Unreachable code", "operator[]", 93);
  _os_crash("assertion failure: (!Unreachable code) Unsupported or invalid MDLIndexBitDepth detected.");
  __break(1u);
  re::internal::assertLog(4, v178, "assertion failure: '%s' (%s:line %i) Unsupported or invalid MDLIndexBitDepth detected.", "!Unreachable code", "operator[]", 93);
  _os_crash("assertion failure: (!Unreachable code) Unsupported or invalid MDLIndexBitDepth detected.");
  __break(1u);
  re::internal::assertLog(4, v179, "assertion failure: '%s' (%s:line %i) Unsupported or invalid MDLIndexBitDepth detected.", "!Unreachable code", "operator[]", 93);
  _os_crash("assertion failure: (!Unreachable code) Unsupported or invalid MDLIndexBitDepth detected.");
  __break(1u);
  re::internal::assertLog(4, v180, "assertion failure: '%s' (%s:line %i) Unsupported or invalid MDLIndexBitDepth detected.", "!Unreachable code", "operator[]", 93);
  _os_crash("assertion failure: (!Unreachable code) Unsupported or invalid MDLIndexBitDepth detected.");
  __break(1u);
LABEL_232:
  re::internal::assertLog(4, v21, "assertion failure: '%s' (%s:line %i) Unsupported or invalid MDLIndexBitDepth detected.", "!Unreachable code", "MDLIndexBuffer", 65);
  _os_crash("assertion failure: (!Unreachable code) Unsupported or invalid MDLIndexBitDepth detected.");
  __break(1u);
LABEL_233:
  re::internal::assertLog(4, v23, "assertion failure: '%s' (%s:line %i) Unsupported Geometry type", "!Unreachable code", "extractMDLAttributeTopologies", 475);
  _os_crash("assertion failure: (!Unreachable code) Unsupported Geometry type");
  __break(1u);
}

uint64_t re::internal::anonymous namespace::modelGetVertexAttributeBuffer(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = [v7 vertexDescriptor];
  v10 = [v9 attributeNamed:v8];

  if (v10)
  {
    *(a4 + 32) = [v10 bufferIndex];
    v11 = [v7 vertexAttributeDataForAttributeNamed:v8];
    if (v11)
    {
      if ([v10 format] == a3)
      {
        v12 = [v10 offset];
        v13 = [v10 bufferIndex];
        v14 = [v11 stride];
        if ((v12 & 3) != 0)
        {
          NSLog(&cfstr_Modelconverter_1.isa);
        }

        else
        {
          v17 = v14;
          if ((v14 & 3) == 0)
          {
            v18 = [v7 vertexBuffers];
            v19 = [v18 objectAtIndexedSubscript:v13];

            *(a4 + 8) = [v19 length];
            v20 = [v19 map];
            *a4 = [v20 bytes];

            *(a4 + 16) = v12 >> 2;
            *(a4 + 24) = v17 >> 2;

            v15 = 1;
            goto LABEL_9;
          }

          NSLog(&cfstr_Modelconverter_2.isa);
        }
      }

      else
      {
        NSLog(&cfstr_Modelconverter_0.isa);
      }
    }

    v15 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v15 = 0;
LABEL_10:

  return v15;
}

void *re::internal::anonymous namespace::copyVertex3FValues(void *result, uint64_t a2, uint64_t a3, __n128 a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *(a3 + 8);
  if (v4)
  {
    v5 = 0;
    v6 = *result + (result[1] & 0xFFFFFFFFFFFFFFFCLL) - 12;
    do
    {
      v7 = *(a2 + 16);
      if (v7 <= v5)
      {
        v15 = 0;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v24 = 0u;
        v9 = MEMORY[0x1E69E9C10];
        v16 = 136315906;
        v17 = "operator[]";
        v18 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v10 = 3;
        }

        else
        {
          v10 = 2;
        }

        v19 = 797;
        v20 = 2048;
        v21 = v5;
        v22 = 2048;
        v23 = v7;
        _os_log_send_and_compose_impl(v10, &v15, &v24, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
        _os_crash_msg();
        __break(1u);
LABEL_13:
        v15 = 0;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v24 = 0u;
        v11 = MEMORY[0x1E69E9C10];
        v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v16 = 136315906;
        v17 = "operator[]";
        v18 = 1024;
        if (v12)
        {
          v13 = 3;
        }

        else
        {
          v13 = 2;
        }

        v19 = 621;
        v20 = 2048;
        v21 = v5;
        v22 = 2048;
        v23 = v7;
        _os_log_send_and_compose_impl(v13, &v15, &v24, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
        _os_crash_msg();
        __break(1u);
      }

      v8 = *result + 4 * result[2] + 4 * result[3] * *(*(a2 + 32) + 4 * v5);
      if (v8 <= v6)
      {
        v7 = *(a3 + 8);
        if (v5 >= v7)
        {
          goto LABEL_13;
        }

        a4.n128_u64[0] = *v8;
        a4.n128_u32[2] = *(v8 + 8);
        *(*a3 + 16 * v5) = a4;
      }

      ++v5;
    }

    while (v4 != v5);
  }

  return result;
}

void re::internal::anonymous namespace::addAttributeIfItExistsToGeomMesh(void *a1, void *a2, void *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v99 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = [v13 vertexDescriptor];
  v17 = [v16 attributeNamed:v15];

  v18 = [v17 format];
  if (v18 > 786434)
  {
    if (v18 == 786436)
    {
      v20 = 0;
      v21 = 8;
      v77 = 1;
    }

    else
    {
      if (v18 != 786435)
      {
        goto LABEL_83;
      }

      v77 = 0;
      v21 = 7;
      v20 = 1;
    }

LABEL_9:
    {
      v76 = v20;
      v75 = v14;
      v22 = [v14 faceIndexing];
      v74 = v22;
      if (v22)
      {
        v23 = [v22 objectAtIndexedSubscript:v82];
        LODWORD(v24) = [v23 unsignedIntValue];

        v24 = v24;
      }

      else
      {
        v24 = 0;
      }

      v25 = *(a6 + 16);
      if (v25 <= v24)
      {
        goto LABEL_63;
      }

      v25 = *(a6 + 32) + 80 * v24;
      if (v25 == a5 || (v26 = *(v25 + 16), v26 == *(a5 + 16)) && !memcmp(*(v25 + 32), *(a5 + 32), 4 * v26) && re::DynamicArray<re::GeomCell4>::operator==(v25 + 40, a5 + 40))
      {
        v27 = re::GeomMesh::addAttribute(a7, a4, 1, v21);
      }

      else
      {
        *&v86[2] = 0;
        memset(v84, 0, sizeof(v84));
        re::DynamicArray<float>::resize(v84, *(a7 + 40));
        v28 = *(a7 + 40);
        if (*(a7 + 40))
        {
          v29 = 0;
          v30 = *&v84[16];
          v31 = *&v86[2];
          while (v30 != v29)
          {
            *(v31 + 4 * v29) = v29;
            if (v28 == ++v29)
            {
              goto LABEL_23;
            }
          }

          v83 = 0;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v94 = 0u;
          v48 = MEMORY[0x1E69E9C10];
          v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v87 = 136315906;
          *&v87[4] = "operator[]";
          v88 = 1024;
          if (v49)
          {
            v50 = 3;
          }

          else
          {
            v50 = 2;
          }

          v89 = 789;
          v90 = 2048;
          v91 = v30;
          v92 = 2048;
          v93 = v30;
          _os_log_send_and_compose_impl(v50, &v83, &v94, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v87, 38, v72, v73);
          _os_crash_msg();
          __break(1u);
          goto LABEL_55;
        }

LABEL_23:
        v27 = re::GeomMesh::addFaceVaryingAttribute(a7, a4, v21, *(v25 + 16), (v25 + 40), v84);
        if (*v84 && *&v86[2])
        {
          (*(**v84 + 40))();
        }
      }

      if (v77)
      {
        v32 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v27);
        v25 = *(a6 + 16);
        if (v25 <= v24)
        {
LABEL_67:
          *v87 = 0;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v94 = 0u;
          v60 = MEMORY[0x1E69E9C10];
          v61 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v84 = 136315906;
          *&v84[4] = "operator[]";
          *&v84[12] = 1024;
          if (v61)
          {
            v62 = 3;
          }

          else
          {
            v62 = 2;
          }

          *&v84[14] = 789;
          *&v84[18] = 2048;
          *&v84[20] = v24;
          v85 = 2048;
          *v86 = v25;
          _os_log_send_and_compose_impl(v62, v87, &v94, 80, &dword_1E1C61000, v60, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v84, 38, v72, v73);
          _os_crash_msg();
          __break(1u);
          goto LABEL_71;
        }

        if (v33)
        {
          v25 = 0;
          v34 = v78 + (v79 & 0xFFFFFFFFFFFFFFFCLL) - 16;
          v35 = *(a6 + 32) + 80 * v24;
          v36 = v81;
          v37 = v78 + 4 * v80;
          while (1)
          {
            v24 = *(v35 + 16);
            if (v24 <= v25)
            {
              break;
            }

            v38 = (v37 + 4 * v36 * *(*(v35 + 32) + 4 * v25));
            if (v38 <= v34)
            {
              *(v32 + 16 * v25) = *v38;
            }

            if (v33 == ++v25)
            {
              goto LABEL_49;
            }
          }

LABEL_55:
          *v87 = 0;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v94 = 0u;
          v51 = MEMORY[0x1E69E9C10];
          v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v84 = 136315906;
          *&v84[4] = "operator[]";
          *&v84[12] = 1024;
          if (v52)
          {
            v53 = 3;
          }

          else
          {
            v53 = 2;
          }

          *&v84[14] = 797;
          *&v84[18] = 2048;
          *&v84[20] = v25;
          v85 = 2048;
          *v86 = v24;
          _os_log_send_and_compose_impl(v53, v87, &v94, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v84, 38, v72, v73);
          _os_crash_msg();
          __break(1u);
LABEL_59:
          *v87 = 0;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v94 = 0u;
          v54 = MEMORY[0x1E69E9C10];
          v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v84 = 136315906;
          *&v84[4] = "operator[]";
          *&v84[12] = 1024;
          if (v55)
          {
            v56 = 3;
          }

          else
          {
            v56 = 2;
          }

          *&v84[14] = 797;
          *&v84[18] = 2048;
          *&v84[20] = v25;
          v85 = 2048;
          *v86 = v24;
          _os_log_send_and_compose_impl(v56, v87, &v94, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v84, 38, v72, v73);
          _os_crash_msg();
          __break(1u);
LABEL_63:
          *v87 = 0;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v94 = 0u;
          v57 = MEMORY[0x1E69E9C10];
          v58 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v84 = 136315906;
          *&v84[4] = "operator[]";
          *&v84[12] = 1024;
          if (v58)
          {
            v59 = 3;
          }

          else
          {
            v59 = 2;
          }

          *&v84[14] = 789;
          *&v84[18] = 2048;
          *&v84[20] = v24;
          v85 = 2048;
          *v86 = v25;
          _os_log_send_and_compose_impl(v59, v87, &v94, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v84, 38, v72, v73);
          _os_crash_msg();
          __break(1u);
          goto LABEL_67;
        }

        goto LABEL_49;
      }

      if (v76)
      {
        *v87 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v27);
        *&v87[8] = v40;
        v25 = *(a6 + 16);
        if (v25 <= v24)
        {
LABEL_71:
          v83 = 0;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v94 = 0u;
          v63 = MEMORY[0x1E69E9C10];
          v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v84 = 136315906;
          *&v84[4] = "operator[]";
          *&v84[12] = 1024;
          if (v64)
          {
            v65 = 3;
          }

          else
          {
            v65 = 2;
          }

          *&v84[14] = 789;
          *&v84[18] = 2048;
          *&v84[20] = v24;
          v85 = 2048;
          *v86 = v25;
          _os_log_send_and_compose_impl(v65, &v83, &v94, 80, &dword_1E1C61000, v63, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v84, 38, v72, v73);
          _os_crash_msg();
          __break(1u);
          goto LABEL_75;
        }

        goto LABEL_49;
      }

      if ((*(*v27 + 16))(v27))
      {
        if (!*(v27 + 5))
        {
          goto LABEL_79;
        }

        v41 = *(v27 + 7);
        v42 = (*(*v27 + 16))(v27);
        v25 = *(a6 + 16);
        if (v25 > v24)
        {
          if (v42)
          {
            v25 = 0;
            v43 = v78 + (v79 & 0xFFFFFFFFFFFFFFFCLL) - 8;
            v44 = *(a6 + 32) + 80 * v24;
            v45 = v81;
            v46 = v78 + 4 * v80;
            while (1)
            {
              v24 = *(v44 + 16);
              if (v24 <= v25)
              {
                goto LABEL_59;
              }

              v47 = (v46 + 4 * v45 * *(*(v44 + 32) + 4 * v25));
              if (v47 <= v43)
              {
                *(v41 + 8 * v25) = *v47;
              }

              if (v42 == ++v25)
              {
                goto LABEL_49;
              }
            }
          }

          goto LABEL_49;
        }
      }

      else
      {
        v25 = *(a6 + 16);
        if (v25 > v24)
        {
LABEL_49:

          v14 = v75;
          goto LABEL_50;
        }
      }

LABEL_75:
      *v87 = 0;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v94 = 0u;
      v66 = MEMORY[0x1E69E9C10];
      v67 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v84 = 136315906;
      *&v84[4] = "operator[]";
      *&v84[12] = 1024;
      if (v67)
      {
        v68 = 3;
      }

      else
      {
        v68 = 2;
      }

      *&v84[14] = 789;
      *&v84[18] = 2048;
      *&v84[20] = v24;
      v85 = 2048;
      *v86 = v25;
      _os_log_send_and_compose_impl(v68, v87, &v94, 80, &dword_1E1C61000, v66, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v84, 38, v72, v73);
      _os_crash_msg();
      __break(1u);
LABEL_79:
      *v87 = 0;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v94 = 0u;
      v69 = MEMORY[0x1E69E9C10];
      v70 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v84 = 136315906;
      *&v84[4] = "operator[]";
      *&v84[12] = 1024;
      if (v70)
      {
        v71 = 3;
      }

      else
      {
        v71 = 2;
      }

      *&v84[14] = 789;
      *&v84[18] = 2048;
      *&v84[20] = 0;
      v85 = 2048;
      *v86 = 0;
      _os_log_send_and_compose_impl(v71, v87, &v94, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v84, 38, v72, v73);
      _os_crash_msg();
      __break(1u);
    }

LABEL_50:

    return;
  }

  if (!v18)
  {
    goto LABEL_50;
  }

  if (v18 == 786434)
  {
    v77 = 0;
    v20 = 0;
    v21 = 6;
    goto LABEL_9;
  }

LABEL_83:
  re::internal::assertLog(4, v19, v18, "assertion failure: '%s' (%s:line %i) unsupported MDLVertexFormat", "!Unreachable code", "addAttributeIfItExistsToGeomMesh", 580);
  _os_crash("assertion failure: (!Unreachable code) unsupported MDLVertexFormat");
  __break(1u);
}

uint64_t *re::DynamicArray<re::internal::anonymous namespace::MDLAttrTopologyMap>::~DynamicArray(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = a1[4];
    if (v3)
    {
      v4 = a1[2];
      if (v4)
      {
        v5 = 80 * v4;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v3 + 40);
          re::DynamicArray<unsigned long>::deinit(v3);
          v3 += 80;
          v5 -= 80;
        }

        while (v5);
        v2 = *a1;
        v3 = a1[4];
      }

      (*(*v2 + 40))(v2, v3);
    }

    a1[4] = 0;
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    ++*(a1 + 6);
  }

  return a1;
}

void re::internal::attachBlendShapeDataIfItExistsToGeomMesh(re::internal *this, const MDLMesh *a2, re::GeomMesh *a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = this;
  v5 = [(re::internal *)v4 submeshes];
  if (v5)
  {
    v6 = v5;
    v7 = [(re::internal *)v4 submeshes];
    v8 = [v7 count];

    if (v8 == 1)
    {
      v9 = [(re::internal *)v4 componentConformingToProtocol:&unk_1F5D590E0];
      if (v9)
      {
        v10 = [(re::internal *)v4 submeshes];
        v11 = [v10 objectAtIndexedSubscript:0];

        v48 = 0;
        v45[1] = 0;
        v46 = 0;
        v45[0] = 0;
        v47 = 0;
        v38 = v46;
        if (v46)
        {
          v37 = [(re::internal *)v4 vertexDescriptor];
          v36 = [v37 attributeNamed:@"position"];
          v12 = [v36 bufferIndex];
          v13 = [v11 faceIndexing];

          if (v13)
          {
            v14 = [v11 faceIndexing];
            v15 = [v14 objectAtIndexedSubscript:v12];
            LODWORD(v16) = [v15 unsignedIntValue];

            v16 = v16;
          }

          else
          {
            v16 = 0;
          }

          v17 = [v9 targetShapes];
          v18 = [v17 count];

          if (v18)
          {
            v19 = 0;
            do
            {
              v20 = [v9 targetShapes];
              v21 = [v20 objectAtIndexedSubscript:v19];

              {
                v22 = [v21 name];
                v23 = [v22 UTF8String];

                v25 = "";
                if (v23)
                {
                  v25 = v23;
                }

                re::DynamicString::format(&v41, "%s|blendTargetPosDeltas", v24, v25);
                if (v42)
                {
                  v26 = *&v43[7];
                }

                else
                {
                  v26 = v43;
                }

                v27 = re::GeomMesh::addAttribute(a2, v26, 1, 7);
                v39 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v27);
                v40 = v29;
                if (v38 <= v16)
                {
                  v49 = 0;
                  memset(v58, 0, 80);
                  v32 = MEMORY[0x1E69E9C10];
                  v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v50 = 136315906;
                  v51 = "operator[]";
                  v52 = 1024;
                  if (v33)
                  {
                    v34 = 3;
                  }

                  else
                  {
                    v34 = 2;
                  }

                  v53 = 789;
                  v54 = 2048;
                  v55 = v16;
                  v56 = 2048;
                  v57 = v38;
                  _os_log_send_and_compose_impl(v34, &v49, v58, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v50, 38, v35, v36);
                  _os_crash_msg();
                  __break(1u);
                }

                if (v41 && (v42 & 1) != 0)
                {
                  (*(*v41 + 40))();
                }
              }

              ++v19;
              v30 = [v9 targetShapes];
              v31 = [v30 count];
            }

            while (v31 > v19);
          }
        }
      }
    }
  }
}

void re::internal::attachNewBlendShapeDataIfItExistsToGeomMesh(re::internal *this, MDLMesh *a2, const MDLObject *a3, uint64_t a4, re::GeomMesh *a5)
{
  v66 = *MEMORY[0x1E69E9840];
  v7 = this;
  v8 = a2;
  v9 = [(re::internal *)v7 submeshes];
  v48 = a3;
  v10 = [v9 objectAtIndexedSubscript:a3];

  v49 = v8;
  v11 = [(MDLMesh *)v8 children];
  v12 = [v11 count];

  memset(v50, 0, sizeof(v50));
  v51 = 0;
  v55 = 0;
  v52 = 0u;
  v53 = 0u;
  v54 = 0;
  v13 = v7;
  v14 = v10;
  v58 = 0;
  *&v57 = 0;
  v56 = 0uLL;
  DWORD2(v57) = 0;
  v15 = v57;
  if (v57)
  {
    v16 = [(re::internal *)v13 vertexDescriptor];
    v17 = [v16 attributeNamed:@"position"];
    v18 = [v17 bufferIndex];
    v19 = [v14 faceIndexing];

    if (v19)
    {
      v20 = v14;
      v21 = [v14 faceIndexing];
      v22 = [v21 objectAtIndexedSubscript:v18];
      v23 = [v22 unsignedIntValue];

      v24 = v23;
      if (v15 <= v23)
      {
        v59 = 0;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v61 = 0u;
        v40 = MEMORY[0x1E69E9C10];
        v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v60 = 136315906;
        *&v60[4] = "operator[]";
        *&v60[12] = 1024;
        if (v41)
        {
          v42 = 3;
        }

        else
        {
          v42 = 2;
        }

        *&v60[14] = 789;
        *&v60[18] = 2048;
        *&v60[20] = v23;
        *&v60[28] = 2048;
        *&v60[30] = v15;
        _os_log_send_and_compose_impl(v42, &v59, &v61, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v60, 38, v43, v44);
        _os_crash_msg();
        __break(1u);
      }

      v14 = v20;
    }

    else
    {
      v24 = 0;
    }

    v25 = (v58 + 80 * v24);
    re::DynamicArray<re::RigComponentConstraint>::operator=(v50, v25);
    re::DynamicArray<re::GeomCell4>::operator=(&v52 + 1, v25 + 5);
  }

  v45 = v14;

  v46 = v13;
  if (v12)
  {
    v26 = 0;
    v27 = *MEMORY[0x1E6974B28];
    do
    {
      v28 = [(MDLMesh *)v49 children];
      v29 = [v28 objectAtIndexedSubscript:v26];

      v30 = [v29 submeshes];
      v31 = [v30 objectAtIndexedSubscript:v48];

      *&v63 = 0;
      *&v62 = 0;
      v61 = 0uLL;
      DWORD2(v62) = 0;
      if (v62)
      {
        v32 = [v29 vertexDescriptor];
        v33 = [v32 attributeNamed:@"offsets"];
        [v33 bufferIndex];
        v34 = [v31 faceIndexing];

        if (v34)
        {
          v35 = [v31 faceIndexing];
          v36 = [v35 objectAtIndexedSubscript:0];
          [v36 unsignedIntValue];
        }

        v37 = [v29 name];
        v38 = [v37 UTF8String];
        re::DynamicString::operator+(&v56, v60, "|blendTargetPosDeltas");
        if (BYTE8(v56))
        {
          v39 = v57;
        }

        else
        {
          v39 = &v56 + 9;
        }

        if (v56)
        {
          if (BYTE8(v56))
          {
            (*(*v56 + 40))();
          }

          v56 = 0u;
          v57 = 0u;
        }

        if (*v60)
        {
          if (v60[8])
          {
            (*(**v60 + 40))();
          }

          memset(v60, 0, 32);
        }
      }

      ++v26;
    }

    while (v12 != v26);
  }

  if (*(&v52 + 1))
  {
    if (v55)
    {
      (*(**(&v52 + 1) + 40))();
    }

    v55 = 0;
    v53 = 0uLL;
    *(&v52 + 1) = 0;
    ++v54;
  }

  if (v50[0] && v52)
  {
    (*(*v50[0] + 40))();
  }
}

void re::internal::attachSkinningDataToMesh(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = &v105;
  v110 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = re::GeomMesh::addAttribute(a6, "skeletonPath", 0, 1);
  if (!*(v13 + 5))
  {
LABEL_82:
    *v98 = 0;
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
    *(v10 + 32) = 0u;
    v105 = 0u;
    v106 = 0u;
    v75 = MEMORY[0x1E69E9C10];
    v76 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v95 = 136315906;
    *&v95[4] = "operator[]";
    *&v95[12] = 1024;
    if (v76)
    {
      v77 = 3;
    }

    else
    {
      v77 = 2;
    }

    *&v95[14] = 789;
    *&v95[18] = 2048;
    *&v95[20] = 0;
    v96 = 2048;
    *v97 = 0;
    _os_log_send_and_compose_impl(v77, v98, &v105, 80, &dword_1E1C61000, v75, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v95, 38, v90, v91);
    _os_crash_msg();
    __break(1u);
    goto LABEL_86;
  }

  **(v13 + 7) = 0;
  v6 = re::GeomMesh::addAttribute(a6, "skinnedAnimationGeometryBindTransform", 4, 8);
  (*(*v6 + 24))(v6, 4);
  v14 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v6);
  LOBYTE(v6) = v15;
  if (!v15)
  {
LABEL_86:
    *v98 = 0;
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
    *(v10 + 32) = 0u;
    v105 = 0u;
    v106 = 0u;
    v78 = MEMORY[0x1E69E9C10];
    v79 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v95 = 136315906;
    *&v95[4] = "operator[]";
    *&v95[12] = 1024;
    if (v79)
    {
      v80 = 3;
    }

    else
    {
      v80 = 2;
    }

    *&v95[14] = 621;
    *&v95[18] = 2048;
    *&v95[20] = 0;
    v96 = 2048;
    *v97 = 0;
    _os_log_send_and_compose_impl(v80, v98, &v105, 80, &dword_1E1C61000, v78, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v95, 38, v90, v91);
    _os_crash_msg();
    __break(1u);
    goto LABEL_90;
  }

  *v14 = *a5;
  if (v15 == 1)
  {
LABEL_90:
    *v98 = 0;
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
    *(v10 + 32) = 0u;
    v105 = 0u;
    v106 = 0u;
    v81 = MEMORY[0x1E69E9C10];
    v82 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v95 = 136315906;
    *&v95[4] = "operator[]";
    *&v95[12] = 1024;
    if (v82)
    {
      v83 = 3;
    }

    else
    {
      v83 = 2;
    }

    *&v95[14] = 621;
    *&v95[18] = 2048;
    *&v95[20] = 1;
    v96 = 2048;
    *v97 = 1;
    _os_log_send_and_compose_impl(v83, v98, &v105, 80, &dword_1E1C61000, v81, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v95, 38, v90, v91);
    _os_crash_msg();
    __break(1u);
    goto LABEL_94;
  }

  v14[1] = *(a5 + 16);
  if (v15 <= 2)
  {
LABEL_94:
    *v98 = 0;
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
    *(v10 + 32) = 0u;
    v105 = 0u;
    v106 = 0u;
    v84 = MEMORY[0x1E69E9C10];
    v85 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v95 = 136315906;
    *&v95[4] = "operator[]";
    *&v95[12] = 1024;
    if (v85)
    {
      v86 = 3;
    }

    else
    {
      v86 = 2;
    }

    *&v95[14] = 621;
    *&v95[18] = 2048;
    *&v95[20] = 2;
    v96 = 2048;
    *v97 = v6 & 3;
    _os_log_send_and_compose_impl(v86, v98, &v105, 80, &dword_1E1C61000, v84, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v95, 38, v90, v91);
    _os_crash_msg();
    __break(1u);
    goto LABEL_98;
  }

  v14[2] = *(a5 + 32);
  if (v15 == 3)
  {
LABEL_98:
    *v98 = 0;
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
    *(v10 + 32) = 0u;
    v105 = 0u;
    v106 = 0u;
    v87 = MEMORY[0x1E69E9C10];
    v88 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v95 = 136315906;
    *&v95[4] = "operator[]";
    *&v95[12] = 1024;
    if (v88)
    {
      v89 = 3;
    }

    else
    {
      v89 = 2;
    }

    *&v95[14] = 621;
    *&v95[18] = 2048;
    *&v95[20] = 3;
    v96 = 2048;
    *v97 = 3;
    _os_log_send_and_compose_impl(v89, v98, &v105, 80, &dword_1E1C61000, v87, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v95, 38, v90, v91);
    _os_crash_msg();
    __break(1u);
LABEL_102:
    re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) ", "topologies.size() > 0", "attachSkinningDataToMesh", 971);
    _os_crash("assertion failure: (topologies.size() > 0) ");
    __break(1u);
  }

  v14[3] = *(a5 + 48);
  v6 = *(a6 + 16);
  *&v97[2] = 0;
  memset(v95, 0, sizeof(v95));
  if (!*&v95[16])
  {
    goto LABEL_102;
  }

  v92 = v12;
  v93 = v11;
  v17 = re::GeomMesh::addAttribute(a6, "skinnedAnimationWeights", 4, 4);
  v18 = re::GeomMesh::addAttribute(a6, "skinnedAnimationJointIndices", 4, 2);
  v19 = re::GeomMesh::addAttribute(a6, "skinnedAnimationInfluenceEndIndices", 4, 2);
  (*(*v19 + 24))(v19, v6);
  v20 = *&v97[2];
  v21 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v19);
  if (v6)
  {
    v23 = 0;
    LODWORD(v24) = 0;
    v25 = *(v20 + 16);
    v26 = v22;
    while (v25 != v23)
    {
      v10 = *(*(v20 + 32) + 4 * v23);
      if (v10)
      {
        v12 = *(a5 + 160);
        if (v12 <= v10)
        {
          goto LABEL_66;
        }

        v27 = *(*(a5 + 168) + 4 * v10) - *(*(a5 + 168) + 4 * (v10 - 1));
      }

      else
      {
        if (!*(a5 + 160))
        {
          goto LABEL_78;
        }

        v27 = **(a5 + 168);
      }

      if (v22 == v23)
      {
        goto LABEL_62;
      }

      v24 = (v27 + v24);
      *(v21 + 4 * v23) = v24;
      v23 = (v23 + 1);
      if (v6 == v23)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_58;
  }

  v24 = 0;
LABEL_19:
  (*(*v18 + 24))(v18, v24);
  (*(*v17 + 24))(v17, v24);
  v12 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v17);
  v10 = v28;
  v29 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v18);
  if (v6)
  {
    v31 = v12;
    v32 = v30;
    v33 = v10;
    v34 = 0;
    v35 = 0;
    v25 = *(v20 + 16);
    while (1)
    {
      if (v34 == v25)
      {
        goto LABEL_70;
      }

      v10 = *(*(v20 + 32) + 4 * v34);
      v12 = *(a5 + 160);
      if (v12 <= v10)
      {
        goto LABEL_74;
      }

      v36 = *(a5 + 168);
      v37 = v10 ? *(v36 + 4 * (v10 - 1)) : 0;
      v38 = *(v36 + 4 * v10);
      v39 = v38 - v37;
      if (v38 != v37)
      {
        break;
      }

LABEL_40:
      v34 = (v34 + 1);
      if (v34 == v6)
      {
        goto LABEL_41;
      }
    }

    v40 = 0;
    v26 = *(a5 + 112);
    v41 = v35;
    if (v35 <= v33)
    {
      v10 = v33;
    }

    else
    {
      v10 = v35;
    }

    v42 = v29 + 4 * v35;
    if (v35 <= v32)
    {
      v43 = v32;
    }

    else
    {
      v43 = v35;
    }

    v44 = v31 + 4 * v35;
    while (1)
    {
      v12 = (v37 + v40);
      if (v26 <= v12)
      {
        break;
      }

      if (!(v41 - v10 + v40))
      {
        goto LABEL_46;
      }

      *(v44 + 4 * v40) = *(*(a5 + 120) + 4 * v12);
      v17 = *(a5 + 136);
      if (v17 <= v12)
      {
        goto LABEL_50;
      }

      if (!(v41 - v43 + v40))
      {
        goto LABEL_54;
      }

      *(v42 + 4 * v40++) = *(*(a5 + 144) + 4 * v12);
      if (v39 == v40)
      {
        v35 = v41 + v40;
        goto LABEL_40;
      }
    }

    v94 = 0;
    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    v105 = 0u;
    v106 = 0u;
    v45 = MEMORY[0x1E69E9C10];
    v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v98 = 136315906;
    *&v98[4] = "operator[]";
    v99 = 1024;
    if (v46)
    {
      v47 = 3;
    }

    else
    {
      v47 = 2;
    }

    v100 = 476;
    v101 = 2048;
    v102 = v12;
    v103 = 2048;
    v104 = v26;
    _os_log_send_and_compose_impl(v47, &v94, &v105, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v98, 38, v90, v91);
    _os_crash_msg();
    __break(1u);
LABEL_46:
    v94 = 0;
    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    v105 = 0u;
    v106 = 0u;
    v48 = MEMORY[0x1E69E9C10];
    v12 = v33;
    v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v98 = 136315906;
    *&v98[4] = "operator[]";
    v99 = 1024;
    if (v49)
    {
      v50 = 3;
    }

    else
    {
      v50 = 2;
    }

    v100 = 621;
    v101 = 2048;
    v102 = v10;
    v103 = 2048;
    v104 = v12;
    _os_log_send_and_compose_impl(v50, &v94, &v105, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v98, 38, v90, v91);
    _os_crash_msg();
    __break(1u);
LABEL_50:
    v94 = 0;
    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    v105 = 0u;
    v106 = 0u;
    v51 = MEMORY[0x1E69E9C10];
    v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v98 = 136315906;
    *&v98[4] = "operator[]";
    v99 = 1024;
    if (v52)
    {
      v53 = 3;
    }

    else
    {
      v53 = 2;
    }

    v100 = 476;
    v101 = 2048;
    v102 = v12;
    v103 = 2048;
    v104 = v17;
    _os_log_send_and_compose_impl(v53, &v94, &v105, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v98, 38, v90, v91);
    _os_crash_msg();
    __break(1u);
LABEL_54:
    v94 = 0;
    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    v105 = 0u;
    v106 = 0u;
    v54 = MEMORY[0x1E69E9C10];
    v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v98 = 136315906;
    *&v98[4] = "operator[]";
    v99 = 1024;
    if (v55)
    {
      v56 = 3;
    }

    else
    {
      v56 = 2;
    }

    v100 = 621;
    v101 = 2048;
    v102 = v43;
    v103 = 2048;
    v104 = v32;
    _os_log_send_and_compose_impl(v56, &v94, &v105, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v98, 38, v90, v91);
    _os_crash_msg();
    __break(1u);
LABEL_58:
    v94 = 0;
    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    v105 = 0u;
    v106 = 0u;
    v57 = MEMORY[0x1E69E9C10];
    v58 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v98 = 136315906;
    *&v98[4] = "operator[]";
    v99 = 1024;
    if (v58)
    {
      v59 = 3;
    }

    else
    {
      v59 = 2;
    }

    v100 = 789;
    v101 = 2048;
    v102 = v25;
    v103 = 2048;
    v104 = v25;
    _os_log_send_and_compose_impl(v59, &v94, &v105, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v98, 38, v90, v91);
    _os_crash_msg();
    __break(1u);
LABEL_62:
    v94 = 0;
    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    v105 = 0u;
    v106 = 0u;
    v60 = MEMORY[0x1E69E9C10];
    v61 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v98 = 136315906;
    *&v98[4] = "operator[]";
    v99 = 1024;
    if (v61)
    {
      v62 = 3;
    }

    else
    {
      v62 = 2;
    }

    v100 = 621;
    v101 = 2048;
    v102 = v26;
    v103 = 2048;
    v104 = v26;
    _os_log_send_and_compose_impl(v62, &v94, &v105, 80, &dword_1E1C61000, v60, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v98, 38, v90, v91);
    _os_crash_msg();
    __break(1u);
LABEL_66:
    v94 = 0;
    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    v105 = 0u;
    v106 = 0u;
    v63 = MEMORY[0x1E69E9C10];
    v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v98 = 136315906;
    *&v98[4] = "operator[]";
    v99 = 1024;
    if (v64)
    {
      v65 = 3;
    }

    else
    {
      v65 = 2;
    }

    v100 = 476;
    v101 = 2048;
    v102 = v10;
    v103 = 2048;
    v104 = v12;
    _os_log_send_and_compose_impl(v65, &v94, &v105, 80, &dword_1E1C61000, v63, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v98, 38, v90, v91);
    _os_crash_msg();
    __break(1u);
LABEL_70:
    v94 = 0;
    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    v105 = 0u;
    v106 = 0u;
    v66 = MEMORY[0x1E69E9C10];
    v67 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v98 = 136315906;
    *&v98[4] = "operator[]";
    v99 = 1024;
    if (v67)
    {
      v68 = 3;
    }

    else
    {
      v68 = 2;
    }

    v100 = 789;
    v101 = 2048;
    v102 = v25;
    v103 = 2048;
    v104 = v25;
    _os_log_send_and_compose_impl(v68, &v94, &v105, 80, &dword_1E1C61000, v66, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v98, 38, v90, v91);
    _os_crash_msg();
    __break(1u);
LABEL_74:
    v94 = 0;
    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    v105 = 0u;
    v106 = 0u;
    v69 = MEMORY[0x1E69E9C10];
    v70 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v98 = 136315906;
    *&v98[4] = "operator[]";
    v99 = 1024;
    if (v70)
    {
      v71 = 3;
    }

    else
    {
      v71 = 2;
    }

    v100 = 476;
    v101 = 2048;
    v102 = v10;
    v103 = 2048;
    v104 = v12;
    _os_log_send_and_compose_impl(v71, &v94, &v105, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v98, 38, v90, v91);
    _os_crash_msg();
    __break(1u);
LABEL_78:
    v94 = 0;
    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    v105 = 0u;
    v106 = 0u;
    v72 = MEMORY[0x1E69E9C10];
    v73 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v98 = 136315906;
    *&v98[4] = "operator[]";
    v99 = 1024;
    if (v73)
    {
      v74 = 3;
    }

    else
    {
      v74 = 2;
    }

    v100 = 476;
    v101 = 2048;
    v102 = 0;
    v103 = 2048;
    v104 = 0;
    _os_log_send_and_compose_impl(v74, &v94, &v105, 80, &dword_1E1C61000, v72, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v98, 38, v90, v91);
    _os_crash_msg();
    __break(1u);
    goto LABEL_82;
  }

LABEL_41:
}