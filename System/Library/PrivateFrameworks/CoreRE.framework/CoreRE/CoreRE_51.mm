double re::internal::defaultConstruct<re::SRTAnimationBlendTreeAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::TimelineAssetData::TimelineAssetData(a3, 45);
  *(v3 + 72) = 0;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 80) = 0;
  *(v3 + 104) = 0;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  *(v3 + 168) = 0;
  *(v3 + 192) = 0;
  result = 0.0;
  *(v3 + 200) = 0u;
  *(v3 + 216) = 0u;
  *(v3 + 232) = 0;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0;
  *(v3 + 280) = 0;
  *(v3 + 272) = 0;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *v3 = &unk_1F5CC0E80;
  return result;
}

void re::internal::defaultDestruct<re::SRTAnimationBlendTreeAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CC0EF0;
  v4 = (a3 + 5);
  re::DynamicArray<re::AssetHandle>::deinit((a3 + 31));
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit((a3 + 26));
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit((a3 + 21));
  re::DynamicArray<re::RigGraphConnection>::deinit(a3 + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit((a3 + 10));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit(v4);

  re::StringID::destroyString((a3 + 3));
}

double re::internal::defaultConstructV2<re::SRTAnimationBlendTreeAssetData>(uint64_t a1)
{
  v1 = re::TimelineAssetData::TimelineAssetData(a1, 45);
  *(v1 + 72) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 80) = 0;
  *(v1 + 104) = 0;
  *(v1 + 152) = 0;
  *(v1 + 160) = 0;
  *(v1 + 176) = 0;
  *(v1 + 184) = 0;
  *(v1 + 168) = 0;
  *(v1 + 192) = 0;
  result = 0.0;
  *(v1 + 200) = 0u;
  *(v1 + 216) = 0u;
  *(v1 + 232) = 0;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0;
  *(v1 + 280) = 0;
  *(v1 + 272) = 0;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 0u;
  *v1 = &unk_1F5CC0E80;
  return result;
}

void re::internal::defaultDestructV2<re::SRTAnimationBlendTreeAssetData>(void *a1)
{
  *a1 = &unk_1F5CC0EF0;
  v2 = (a1 + 5);
  re::DynamicArray<re::AssetHandle>::deinit((a1 + 31));
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit((a1 + 26));
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 21));
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit((a1 + 10));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_SkeletalPoseAnimationBlendTreeAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE195110, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195110))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18A770, "SkeletalPoseAnimationBlendTreeAssetData");
    __cxa_guard_release(&qword_1EE195110);
  }

  return &unk_1EE18A770;
}

void re::initInfo_SkeletalPoseAnimationBlendTreeAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v31[0] = 0x11A6898F504228ALL;
  v31[1] = "SkeletalPoseAnimationBlendTreeAssetData";
  if (v31[0])
  {
    if (v31[0])
    {
    }
  }

  *(this + 2) = v32;
  if ((atomic_load_explicit(&qword_1EE195118, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195118))
  {
    v7 = re::introspectionAllocator();
    v8 = v7;
    v9 = qword_1EE194C68;
    if (!qword_1EE194C68)
    {
      v9 = re::allocInfo_TimelineAssetData(v7);
      qword_1EE194C68 = v9;
      re::initInfo_TimelineAssetData(v9, v10, v11, v12);
    }

    v13 = (*(*v8 + 32))(v8, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "TimelineAssetData";
    *(v13 + 16) = v9;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 40) = 3;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE1953F8 = v13;
    v14 = re::introspectionAllocator();
    v20 = re::introspect_AnimationBlendTreeDefinition(1, v15, v16, v17, v18, v19);
    v21 = (*(*v14 + 32))(v14, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "m_blendTreeDefinition";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x5000000001;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE195400 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::IntrospectionInfo<re::DynamicArray<re::AssetHandle>>::get(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "m_clips";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0xF800000002;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE195408 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::introspect_BOOL(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "isAdditive";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x4800000003;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE195410 = v29;
    __cxa_guard_release(&qword_1EE195118);
  }

  *(this + 2) = 0x12000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1953F8;
  *(this + 9) = re::internal::defaultConstruct<re::SkeletalPoseAnimationBlendTreeAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SkeletalPoseAnimationBlendTreeAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::SkeletalPoseAnimationBlendTreeAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::SkeletalPoseAnimationBlendTreeAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v30 = v32;
}

double re::internal::defaultConstruct<re::SkeletalPoseAnimationBlendTreeAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::TimelineAssetData::TimelineAssetData(a3, 46);
  *(v3 + 72) = 0;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 80) = 0;
  *(v3 + 104) = 0;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  *(v3 + 168) = 0;
  *(v3 + 192) = 0;
  result = 0.0;
  *(v3 + 200) = 0u;
  *(v3 + 216) = 0u;
  *(v3 + 232) = 0;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0;
  *(v3 + 280) = 0;
  *(v3 + 272) = 0;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *v3 = &unk_1F5CC0F30;
  return result;
}

void re::internal::defaultDestruct<re::SkeletalPoseAnimationBlendTreeAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CC0FB8;
  v4 = (a3 + 5);
  re::DynamicArray<re::AssetHandle>::deinit((a3 + 31));
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit((a3 + 26));
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit((a3 + 21));
  re::DynamicArray<re::RigGraphConnection>::deinit(a3 + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit((a3 + 10));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit(v4);

  re::StringID::destroyString((a3 + 3));
}

double re::internal::defaultConstructV2<re::SkeletalPoseAnimationBlendTreeAssetData>(uint64_t a1)
{
  v1 = re::TimelineAssetData::TimelineAssetData(a1, 46);
  *(v1 + 72) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 80) = 0;
  *(v1 + 104) = 0;
  *(v1 + 152) = 0;
  *(v1 + 160) = 0;
  *(v1 + 176) = 0;
  *(v1 + 184) = 0;
  *(v1 + 168) = 0;
  *(v1 + 192) = 0;
  result = 0.0;
  *(v1 + 200) = 0u;
  *(v1 + 216) = 0u;
  *(v1 + 232) = 0;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0;
  *(v1 + 280) = 0;
  *(v1 + 272) = 0;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 0u;
  *v1 = &unk_1F5CC0F30;
  return result;
}

void re::internal::defaultDestructV2<re::SkeletalPoseAnimationBlendTreeAssetData>(void *a1)
{
  *a1 = &unk_1F5CC0FB8;
  v2 = (a1 + 5);
  re::DynamicArray<re::AssetHandle>::deinit((a1 + 31));
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit((a1 + 26));
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 21));
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 15);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit((a1 + 10));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);

  re::StringID::destroyString((a1 + 3));
}

void re::introspect_REAnimatableValueType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE195128, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE195130, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195130))
    {
      v46 = re::IntrospectionBasic::IntrospectionBasic(&unk_1EE18C430, "REAnimatableValueType", 1, 1, 1, 1);
      *v46 = &unk_1F5D0C658;
      *(v46 + 8) = &re::introspect_REAnimatableValueType(BOOL)::enumTable;
      *(v46 + 4) = 9;
      __cxa_guard_release(&qword_1EE195130);
    }

    if (byte_1EE194C41)
    {
      break;
    }

    byte_1EE194C41 = 1;
    re::IntrospectionRegistry::add(&unk_1EE18C430, a2);
    v48 = 0x2B6E2394F1C7DEB4;
    v49 = "REAnimatableValueType";
    v52 = 6104748;
    v53 = "char";
    v4 = v51[0];
    v5 = v51[1];
    if (v52)
    {
      if (v52)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE18C470;
      v52 = v4;
      v53 = v5;
      re::TypeBuilder::beginEnumType(v51, &v48, 1, 1, &v52);
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
            *&v50.var0 = 2 * v11;
            v50.var1 = v10;
            re::TypeBuilder::addEnumConstant(v51, v15, &v50);
            if (*&v50.var0)
            {
              if (*&v50.var0)
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
              *&v50.var0 = 2 * v20;
              v50.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v51, v24, &v50);
              if (*&v50.var0)
              {
                if (*&v50.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v51, v26);
      xmmword_1EE18C450 = v50;
      if (v48)
      {
        if (v48)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v49);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v47);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE195128))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = -1;
      *(v29 + 16) = "REAnimatableValueTypeInvalid";
      _MergedGlobals_366 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 0;
      *(v31 + 16) = "REAnimatableValueTypeFloat";
      qword_1EE18C3F0 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 1;
      *(v33 + 16) = "REAnimatableValueTypeDouble";
      qword_1EE18C3F8 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 2;
      *(v35 + 16) = "REAnimatableValueTypeVector2F";
      qword_1EE18C400 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 3;
      *(v37 + 16) = "REAnimatableValueTypeVector3F";
      qword_1EE18C408 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 4;
      *(v39 + 16) = "REAnimatableValueTypeVector4F";
      qword_1EE18C410 = v39;
      v40 = re::introspectionAllocator();
      v41 = (*(*v40 + 32))(v40, 24, 8);
      *v41 = 1;
      *(v41 + 8) = 5;
      *(v41 + 16) = "REAnimatableValueTypeQuaternionF";
      qword_1EE18C418 = v41;
      v42 = re::introspectionAllocator();
      v43 = (*(*v42 + 32))(v42, 24, 8);
      *v43 = 1;
      *(v43 + 8) = 6;
      *(v43 + 16) = "REAnimatableValueTypeSRT";
      qword_1EE18C420 = v43;
      v44 = re::introspectionAllocator();
      v45 = (*(*v44 + 32))(v44, 24, 8);
      *v45 = 1;
      *(v45 + 8) = 7;
      *(v45 + 16) = "REAnimatableValueTypeSkeletalPose";
      qword_1EE18C428 = v45;
      __cxa_guard_release(&qword_1EE195128);
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE195248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195248))
  {
    *re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE18C518) = &unk_1F5CC0FF8;
    __cxa_guard_release(&qword_1EE195248);
  }

  if ((byte_1EE194C4C & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v3 = v2;
    v4 = qword_1EE1951D8;
    if (!qword_1EE1951D8)
    {
      v4 = re::allocInfo_TimelineEventParameterDescription(v2);
      qword_1EE1951D8 = v4;
      re::initInfo_TimelineEventParameterDescription(v4, v5, v6, v7);
    }

    if ((byte_1EE194C4C & 1) == 0)
    {
      byte_1EE194C4C = 1;
      v8 = *(v4 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE18C518, 0);
      qword_1EE18C528 = 0x3000000007;
      dword_1EE18C530 = v8;
      word_1EE18C534 = 0;
      *&xmmword_1EE18C538 = 0;
      *(&xmmword_1EE18C538 + 1) = 0xFFFFFFFFLL;
      qword_1EE18C548 = v3;
      unk_1EE18C550 = 0;
      qword_1EE18C558 = v4;
      unk_1EE18C560 = 0;
      qword_1EE18C518 = &unk_1F5CC0FF8;
      re::IntrospectionRegistry::add(v9, v10);
      re::getPrettyTypeName(&v25, &qword_1EE18C518);
      if (BYTE8(v25))
      {
        v11 = v26;
      }

      else
      {
        v11 = &v25 + 9;
      }

      if (v25 && (BYTE8(v25) & 1) != 0)
      {
        (*(*v25 + 40))();
      }

      v12 = *(v3 + 32);
      v20 = *(v4 + 2);
      v21 = v12;
      if (v32)
      {
        v19 = v32;
      }

      else
      {
        *&v25 = 0x449AD97C4B77BED4;
        *(&v25 + 1) = "_CompareFunc";
        if (v25)
        {
          if (v25)
          {
          }
        }

        if (!v31)
        {
          v27[0] = 0x449AD97C4B77BED4;
          v27[1] = "_CompareFunc";
          v31 = v25;
          if (v27[0])
          {
            if (v27[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v30, &v25 + 8);
        if (!v31 || (v16 = *v30[2], *&v25 = *(&v31 + 1), *(&v25 + 1) = v16, LODWORD(v26) = -1, (v17 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v30[0] + 768, &v25)) == 0) || !*v17)
        {
          v28 = v31;
          v29 = v21;
        }

        re::StackScratchAllocator::StackScratchAllocator(v27);
        re::TypeBuilder::TypeBuilder(&v25, v27);
        v23 = v20;
        v24 = v21;
        re::TypeBuilder::beginDictionaryType(&v25, &v22, 1, 0x30uLL, 8uLL, &v24, &v23);
        re::TypeBuilder::setConstructor(&v25, re::TypeBuilderHelper::registerHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v25, re::TypeBuilderHelper::registerHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v25, re::TypeBuilderHelper::registerHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v25, re::TypeBuilderHelper::registerHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v25, v18);
        re::StackScratchAllocator::~StackScratchAllocator(v27);
      }

      xmmword_1EE18C538 = v19;
      if (v22)
      {
        if (v22)
        {
        }
      }
    }
  }
}

uint64_t *re::IntrospectionInfo<re::FixedArray<unsigned char>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionFixedArrayBase::IntrospectionFixedArrayBase(&re::IntrospectionInfo<re::FixedArray<unsigned char>>::get(BOOL)::info) = &unk_1F5CC1098;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::FixedArray<unsigned char>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::FixedArray<unsigned char>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::FixedArray<unsigned char>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::FixedArray<unsigned char>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_uint8_t(1, a2);
  if ((re::IntrospectionInfo<re::FixedArray<unsigned char>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::FixedArray<unsigned char>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::FixedArray<unsigned char>>::get(BOOL)::info, 0);
    qword_1EE186D40 = 0x1800000004;
    dword_1EE186D48 = v8;
    word_1EE186D4C = 0;
    *&xmmword_1EE186D50 = 0;
    *(&xmmword_1EE186D50 + 1) = 0xFFFFFFFFLL;
    qword_1EE186D60 = v7;
    unk_1EE186D68 = 0;
    re::IntrospectionInfo<re::FixedArray<unsigned char>>::get(BOOL)::info = &unk_1F5CC1098;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&v15, &re::IntrospectionInfo<re::FixedArray<unsigned char>>::get(BOOL)::info);
    if (BYTE8(v15))
    {
      v11 = v16;
    }

    else
    {
      v11 = &v15 + 9;
    }

    if (v15 && (BYTE8(v15) & 1) != 0)
    {
      (*(*v15 + 40))();
    }

    v15 = *(v7 + 32);
    xmmword_1EE186D50 = v14;
    if (v17)
    {
      if (v17)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v12 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v12);
  }

  return &re::IntrospectionInfo<re::FixedArray<unsigned char>>::get(BOOL)::info;
}

void *re::allocInfo_TimelineEventData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE195140, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195140))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18A800, "TimelineEventData");
    __cxa_guard_release(&qword_1EE195140);
  }

  return &unk_1EE18A800;
}

void re::initInfo_TimelineEventData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v69[0] = 0x113B17C5EE537C06;
  v69[1] = "TimelineEventData";
  if (v69[0])
  {
    if (v69[0])
    {
    }
  }

  *(this + 2) = v70;
  if ((atomic_load_explicit(&qword_1EE195138, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195138))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "m_eventType";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE18C938 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "m_times";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x1000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE18C940 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "m_durations";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x3800000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE18C948 = v18;
    v19 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v19, v20);
    v21 = (*(*v19 + 32))(v19, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "m_typeMap";
    *(v21 + 16) = &qword_1EE18C518;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x8800000004;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE18C950 = v21;
    v22 = re::introspectionAllocator();
    v23 = v22;
    v24 = qword_1EE195160;
    if (!qword_1EE195160)
    {
      v24 = re::allocInfo_EventParameterFloatArray(v22);
      qword_1EE195160 = v24;
      re::initInfo_EventParameterFloatArray(v24, v25, v26, v27);
    }

    v28 = (*(*v23 + 32))(v23, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "m_floatData";
    *(v28 + 16) = v24;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0xB800000005;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE18C958 = v28;
    v29 = re::introspectionAllocator();
    v30 = v29;
    v31 = qword_1EE195178;
    if (!qword_1EE195178)
    {
      v31 = re::allocInfo_EventParameterIntArray(v29);
      qword_1EE195178 = v31;
      re::initInfo_EventParameterIntArray(v31, v32, v33, v34);
    }

    v35 = (*(*v30 + 32))(v30, 72, 8);
    *v35 = 1;
    *(v35 + 8) = "m_intData";
    *(v35 + 16) = v31;
    *(v35 + 24) = 0;
    *(v35 + 32) = 0xE800000006;
    *(v35 + 40) = 0;
    *(v35 + 48) = 0;
    *(v35 + 56) = 0;
    *(v35 + 64) = 0;
    qword_1EE18C960 = v35;
    v36 = re::introspectionAllocator();
    v37 = v36;
    v38 = qword_1EE195190;
    if (!qword_1EE195190)
    {
      v38 = re::allocInfo_EventParameterStringArray(v36);
      qword_1EE195190 = v38;
      re::initInfo_EventParameterStringArray(v38, v39, v40, v41);
    }

    v42 = (*(*v37 + 32))(v37, 72, 8);
    *v42 = 1;
    *(v42 + 8) = "m_stringData";
    *(v42 + 16) = v38;
    *(v42 + 24) = 0;
    *(v42 + 32) = 0x11800000007;
    *(v42 + 40) = 0;
    *(v42 + 48) = 0;
    *(v42 + 56) = 0;
    *(v42 + 64) = 0;
    qword_1EE18C968 = v42;
    v43 = re::introspectionAllocator();
    v44 = v43;
    v45 = qword_1EE1951A8;
    if (!qword_1EE1951A8)
    {
      v45 = re::allocInfo_EventParameterVector4Array(v43);
      qword_1EE1951A8 = v45;
      re::initInfo_EventParameterVector4Array(v45, v46, v47, v48);
    }

    v49 = (*(*v44 + 32))(v44, 72, 8);
    *v49 = 1;
    *(v49 + 8) = "m_vector4Data";
    *(v49 + 16) = v45;
    *(v49 + 24) = 0;
    *(v49 + 32) = 0x14800000008;
    *(v49 + 40) = 0;
    *(v49 + 48) = 0;
    *(v49 + 56) = 0;
    *(v49 + 64) = 0;
    qword_1EE18C970 = v49;
    v50 = re::introspectionAllocator();
    re::introspect_REAnimatableValueType(v50, v51);
    v52 = (*(*v50 + 32))(v50, 72, 8);
    *v52 = 1;
    *(v52 + 8) = "m_animatedType";
    *(v52 + 16) = &unk_1EE18C430;
    *(v52 + 24) = 0;
    *(v52 + 32) = 0x1D800000009;
    *(v52 + 40) = 0;
    *(v52 + 48) = 0;
    *(v52 + 56) = 0;
    *(v52 + 64) = 0;
    qword_1EE18C978 = v52;
    v53 = re::introspectionAllocator();
    v54 = v53;
    v55 = qword_1EE1951C0;
    if (!qword_1EE1951C0)
    {
      v55 = re::allocInfo_EventParameterDataArray(v53);
      qword_1EE1951C0 = v55;
      re::initInfo_EventParameterDataArray(v55, v56, v57, v58);
    }

    v59 = (*(*v54 + 32))(v54, 72, 8);
    *v59 = 1;
    *(v59 + 8) = "m_userData";
    *(v59 + 16) = v55;
    *(v59 + 24) = 0;
    *(v59 + 32) = 0x1780000000ALL;
    *(v59 + 40) = 0;
    *(v59 + 48) = 0;
    *(v59 + 56) = 0;
    *(v59 + 64) = 0;
    qword_1EE18C980 = v59;
    v60 = re::introspectionAllocator();
    v62 = re::introspect_BOOL(1, v61);
    v63 = (*(*v60 + 32))(v60, 72, 8);
    *v63 = 1;
    *(v63 + 8) = "m_reversible";
    *(v63 + 16) = v62;
    *(v63 + 24) = 0;
    *(v63 + 32) = 0x2000000000BLL;
    *(v63 + 40) = 0;
    *(v63 + 48) = 0;
    *(v63 + 56) = 0;
    *(v63 + 64) = 0;
    qword_1EE18C988 = v63;
    v64 = re::introspectionAllocator();
    v66 = re::IntrospectionInfo<re::FixedArray<unsigned char>>::get(1, v65);
    v67 = (*(*v64 + 32))(v64, 72, 8);
    *v67 = 1;
    *(v67 + 8) = "m_constantParameters";
    *(v67 + 16) = v66;
    *(v67 + 24) = 0;
    *(v67 + 32) = 0x1E00000000CLL;
    *(v67 + 40) = 0;
    *(v67 + 48) = 0;
    *(v67 + 56) = 0;
    *(v67 + 64) = 0;
    qword_1EE18C990 = v67;
    __cxa_guard_release(&qword_1EE195138);
  }

  *(this + 2) = 0x23000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 12;
  *(this + 8) = &qword_1EE18C938;
  *(this + 9) = re::internal::defaultConstruct<re::TimelineEventData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::TimelineEventData>;
  *(this + 13) = re::internal::defaultConstructV2<re::TimelineEventData>;
  *(this + 14) = re::internal::defaultDestructV2<re::TimelineEventData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v68 = v70;
}

double re::internal::defaultConstruct<re::TimelineEventData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 16) = 0;
  *(a3 + 40) = 0;
  *(a3 + 24) = 0u;
  result = 0.0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 156) = 0u;
  *(a3 + 172) = 0x7FFFFFFFLL;
  *(a3 + 184) = 0u;
  *(a3 + 200) = 0u;
  *(a3 + 216) = 0;
  *(a3 + 464) = 0;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 252) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 300) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 348) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 396) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 444) = 0u;
  *(a3 + 472) = -1;
  *(a3 + 480) = 0u;
  *(a3 + 496) = 0u;
  *(a3 + 512) = 1;
  *(a3 + 552) = 0;
  *(a3 + 536) = 0;
  *(a3 + 544) = 0;
  *(a3 + 520) = 0u;
  return result;
}

void re::internal::defaultDestruct<re::TimelineEventData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a3 + 520);

  re::FixedArray<CoreIKTransform>::deinit((a3 + 480));
  re::DynamicArray<re::ObjCObject>::deinit(a3 + 432);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(a3 + 384);
  re::DynamicArray<unsigned long>::deinit(a3 + 336);
  re::DynamicArray<re::StringID>::deinit(a3 + 288);
  re::DynamicArray<unsigned long>::deinit(a3 + 240);
  re::DynamicArray<unsigned long>::deinit(a3 + 192);
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((a3 + 136));
  re::DynamicArray<unsigned long>::deinit(a3 + 96);
  re::DynamicArray<unsigned long>::deinit(a3 + 56);
  re::DynamicArray<unsigned long>::deinit(a3 + 16);

  re::StringID::destroyString(a3);
}

double re::internal::defaultConstructV2<re::TimelineEventData>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = &str_67;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0u;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 156) = 0u;
  *(a1 + 172) = 0x7FFFFFFFLL;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 464) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 252) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 300) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 348) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 396) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 444) = 0u;
  *(a1 + 472) = -1;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 1;
  *(a1 + 552) = 0;
  *(a1 + 536) = 0;
  *(a1 + 544) = 0;
  *(a1 + 520) = 0u;
  return result;
}

void re::internal::defaultDestructV2<re::TimelineEventData>(uint64_t a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 520);

  re::FixedArray<CoreIKTransform>::deinit((a1 + 480));
  re::DynamicArray<re::ObjCObject>::deinit(a1 + 432);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(a1 + 384);
  re::DynamicArray<unsigned long>::deinit(a1 + 336);
  re::DynamicArray<re::StringID>::deinit(a1 + 288);
  re::DynamicArray<unsigned long>::deinit(a1 + 240);
  re::DynamicArray<unsigned long>::deinit(a1 + 192);
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((a1 + 136));
  re::DynamicArray<unsigned long>::deinit(a1 + 96);
  re::DynamicArray<unsigned long>::deinit(a1 + 56);
  re::DynamicArray<unsigned long>::deinit(a1 + 16);

  re::StringID::destroyString(a1);
}

void *re::allocInfo_EventParameterFloatArray(re *this)
{
  if ((atomic_load_explicit(&qword_1EE195150, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195150))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18A890, "EventParameterFloatArray");
    __cxa_guard_release(&qword_1EE195150);
  }

  return &unk_1EE18A890;
}

void re::initInfo_EventParameterFloatArray(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0x784085696EA0F218;
  v16[1] = "EventParameterFloatArray";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE195158, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195158))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_size_t(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "numParamsPerEvent";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE195288 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "parameters";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x800000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE195290 = v14;
    __cxa_guard_release(&qword_1EE195158);
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE195288;
  *(this + 9) = re::internal::defaultConstruct<re::EventParameterFloatArray>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::EventParameterFloatArray>;
  *(this + 13) = re::internal::defaultConstructV2<re::EventParameterFloatArray>;
  *(this + 14) = re::internal::defaultDestructV2<re::EventParameterFloatArray>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v15 = v17;
}

double re::internal::defaultConstruct<re::EventParameterFloatArray>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 40) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::EventParameterFloatArray>(uint64_t a1)
{
  *(a1 + 40) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  return result;
}

void *re::allocInfo_EventParameterIntArray(re *this)
{
  if ((atomic_load_explicit(&qword_1EE195168, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195168))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18A920, "EventParameterIntArray");
    __cxa_guard_release(&qword_1EE195168);
  }

  return &unk_1EE18A920;
}

void re::initInfo_EventParameterIntArray(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0xF60099BB89454E32;
  v16[1] = "EventParameterIntArray";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE195170, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195170))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_size_t(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "numParamsPerEvent";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE195298 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::DynamicArray<int>>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "parameters";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x800000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1952A0 = v14;
    __cxa_guard_release(&qword_1EE195170);
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE195298;
  *(this + 9) = re::internal::defaultConstruct<re::EventParameterIntArray>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::EventParameterIntArray>;
  *(this + 13) = re::internal::defaultConstructV2<re::EventParameterIntArray>;
  *(this + 14) = re::internal::defaultDestructV2<re::EventParameterIntArray>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v15 = v17;
}

double re::internal::defaultConstruct<re::EventParameterIntArray>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 40) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::EventParameterIntArray>(uint64_t a1)
{
  *(a1 + 40) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  return result;
}

void *re::allocInfo_EventParameterStringArray(re *this)
{
  if ((atomic_load_explicit(&qword_1EE195180, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195180))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18A9B0, "EventParameterStringArray");
    __cxa_guard_release(&qword_1EE195180);
  }

  return &unk_1EE18A9B0;
}

void re::initInfo_EventParameterStringArray(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0x901D6332C27CF5F2;
  v16[1] = "EventParameterStringArray";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE195188, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195188))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_size_t(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "numParamsPerEvent";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1952A8 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "parameters";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x800000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1952B0 = v14;
    __cxa_guard_release(&qword_1EE195188);
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1952A8;
  *(this + 9) = re::internal::defaultConstruct<re::EventParameterStringArray>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::EventParameterStringArray>;
  *(this + 13) = re::internal::defaultConstructV2<re::EventParameterStringArray>;
  *(this + 14) = re::internal::defaultDestructV2<re::EventParameterStringArray>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v15 = v17;
}

double re::internal::defaultConstruct<re::EventParameterStringArray>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 40) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::EventParameterStringArray>(uint64_t a1)
{
  *(a1 + 40) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  return result;
}

void *re::allocInfo_EventParameterVector4Array(re *this)
{
  if ((atomic_load_explicit(&qword_1EE195198, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195198))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18AA40, "EventParameterVector4Array");
    __cxa_guard_release(&qword_1EE195198);
  }

  return &unk_1EE18AA40;
}

void re::initInfo_EventParameterVector4Array(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0x755284B38F8DEAEELL;
  v16[1] = "EventParameterVector4Array";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1951A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1951A0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_size_t(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "numParamsPerEvent";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1952B8 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::DynamicArray<re::Vector4<float>>>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "parameters";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x800000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1952C0 = v14;
    __cxa_guard_release(&qword_1EE1951A0);
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1952B8;
  *(this + 9) = re::internal::defaultConstruct<re::EventParameterVector4Array>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::EventParameterVector4Array>;
  *(this + 13) = re::internal::defaultConstructV2<re::EventParameterVector4Array>;
  *(this + 14) = re::internal::defaultDestructV2<re::EventParameterVector4Array>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v15 = v17;
}

double re::internal::defaultConstruct<re::EventParameterVector4Array>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 40) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::EventParameterVector4Array>(uint64_t a1)
{
  *(a1 + 40) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  return result;
}

void *re::allocInfo_EventParameterDataArray(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1951B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1951B0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18AAD0, "EventParameterDataArray");
    __cxa_guard_release(&qword_1EE1951B0);
  }

  return &unk_1EE18AAD0;
}

void re::initInfo_EventParameterDataArray(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v15[0] = 0xCA12954DAFAB3680;
  v15[1] = "EventParameterDataArray";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE1951B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1951B8))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_size_t(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "numParamsPerEvent";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1952C8 = v10;
    v11 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::FixedArray<unsigned char>>>::get(v11, v12);
    v13 = (*(*v11 + 32))(v11, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "parameters";
    *(v13 + 16) = &qword_1EE195BD8;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0x800000002;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE1952D0 = v13;
    __cxa_guard_release(&qword_1EE1951B8);
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1952C8;
  *(this + 9) = re::internal::defaultConstruct<re::EventParameterDataArray>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::EventParameterDataArray>;
  *(this + 13) = re::internal::defaultConstructV2<re::EventParameterDataArray>;
  *(this + 14) = re::internal::defaultDestructV2<re::EventParameterDataArray>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v14 = v16;
}

void re::IntrospectionInfo<re::DynamicArray<re::FixedArray<unsigned char>>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE195250, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195250))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE195BD8);
    qword_1EE195BD8 = &unk_1F5CC1130;
    __cxa_guard_release(&qword_1EE195250);
  }

  if ((byte_1EE194C4D & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::FixedArray<unsigned char>>::get(1, a2);
    if ((byte_1EE194C4D & 1) == 0)
    {
      v3 = v2;
      byte_1EE194C4D = 1;
      v4 = *(v2 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE195BD8, 0);
      qword_1EE195BE8 = 0x2800000003;
      dword_1EE195BF0 = v4;
      word_1EE195BF4 = 0;
      *&xmmword_1EE195BF8 = 0;
      *(&xmmword_1EE195BF8 + 1) = 0xFFFFFFFFLL;
      qword_1EE195C08 = v3;
      qword_1EE195C10 = 0;
      qword_1EE195BD8 = &unk_1F5CC1130;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&v14, &qword_1EE195BD8);
      if (v15)
      {
        v7 = *&v16[7];
      }

      else
      {
        v7 = v16;
      }

      if (v14 && (v15 & 1) != 0)
      {
        (*(*v14 + 40))();
      }

      v11 = *(v3 + 32);
      if (v18)
      {
        v10 = v18;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v17);
        re::TypeBuilder::TypeBuilder(&v14, v17);
        v13 = v11;
        re::TypeBuilder::beginListType(&v14, &v12, 1, 0x28uLL, 8uLL, &v13);
        re::TypeBuilder::setConstructor(&v14, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v14, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v14, 1);
        re::TypeBuilder::setListAccessors(&v14, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v14, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v14, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::FixedArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE195BF8 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::EventParameterDataArray>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 40) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::EventParameterDataArray>(uint64_t a1)
{
  *(a1 + 40) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  return result;
}

void *re::allocInfo_TimelineEventParameterDescription(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1951C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1951C8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18AB60, "TimelineEventParameterDescription");
    __cxa_guard_release(&qword_1EE1951C8);
  }

  return &unk_1EE18AB60;
}

void re::initInfo_TimelineEventParameterDescription(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0xC66E9C766DEB81D8;
  v16[1] = "TimelineEventParameterDescription";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1951D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1951D0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_size_t(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "index";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1952D8 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_size_t(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "type";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x800000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1952E0 = v14;
    __cxa_guard_release(&qword_1EE1951D0);
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1952D8;
  *(this + 9) = re::internal::defaultConstruct<re::TimelineEventParameterDescription>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::TimelineEventParameterDescription>;
  *(this + 13) = re::internal::defaultConstructV2<re::TimelineEventParameterDescription>;
  *(this + 14) = re::internal::defaultDestructV2<re::TimelineEventParameterDescription>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void *re::allocInfo_EventTimelineAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1951E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1951E0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18ABF0, "EventTimelineAssetData");
    __cxa_guard_release(&qword_1EE1951E0);
  }

  return &unk_1EE18ABF0;
}

void re::initInfo_EventTimelineAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v26[0] = 0x7F4FDB2050CD383ELL;
  v26[1] = "EventTimelineAssetData";
  if (v26[0])
  {
    if (v26[0])
    {
    }
  }

  *(this + 2) = v27;
  if ((atomic_load_explicit(&qword_1EE1951E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1951E8))
  {
    v7 = re::introspectionAllocator();
    v8 = v7;
    v9 = qword_1EE194C68;
    if (!qword_1EE194C68)
    {
      v9 = re::allocInfo_TimelineAssetData(v7);
      qword_1EE194C68 = v9;
      re::initInfo_TimelineAssetData(v9, v10, v11, v12);
    }

    v13 = (*(*v8 + 32))(v8, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "TimelineAssetData";
    *(v13 + 16) = v9;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 40) = 3;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE195300 = v13;
    v14 = re::introspectionAllocator();
    v15 = v14;
    v16 = qword_1EE195148;
    if (!qword_1EE195148)
    {
      v16 = re::allocInfo_TimelineEventData(v14);
      qword_1EE195148 = v16;
      re::initInfo_TimelineEventData(v16, v17, v18, v19);
    }

    v20 = (*(*v15 + 32))(v15, 72, 8);
    *v20 = 1;
    *(v20 + 8) = "m_eventData";
    *(v20 + 16) = v16;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0x5000000001;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    qword_1EE195308 = v20;
    v21 = re::introspectionAllocator();
    v23 = re::introspect_BOOL(1, v22);
    v24 = (*(*v21 + 32))(v21, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "isAdditive";
    *(v24 + 16) = v23;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x4800000002;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE195310 = v24;
    __cxa_guard_release(&qword_1EE1951E8);
  }

  *(this + 2) = 0x28000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE195300;
  *(this + 9) = re::internal::defaultConstruct<re::EventTimelineAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::EventTimelineAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::EventTimelineAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::EventTimelineAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v25 = v27;
}

uint64_t re::internal::convertToAssetData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v212 = *MEMORY[0x1E69E9840];
  switch(*(a1 + 8))
  {
    case 1:
      v5 = (*(*a3 + 32))(a3, 176, 8);
      v116 = re::TimelineAssetData::TimelineAssetData(v5, 1);
      *v116 = &unk_1F5CBE660;
      *(v116 + 112) = 0;
      *(v116 + 128) = 0;
      *(v116 + 136) = 0;
      *(v116 + 144) = 0;
      *(v116 + 152) = 0;
      *(v116 + 80) = 0;
      *(v116 + 88) = 0;
      *(v116 + 72) = 0;
      *(v116 + 96) = 0;
      *(v116 + 168) = 1065353216;
      *(v116 + 172) = 0;
      *(v116 + 12) = *(a1 + 12);
      *(v116 + 16) = *(a1 + 16);
      re::StringID::operator=((v116 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      v117 = *(v5 + 72);
      *(v5 + 72) = v208[0];
      v208[0] = v117;
      v118 = *(v5 + 88);
      *(v5 + 88) = *&v208[1];
      *&v208[1] = v118;
      re::AssetHandle::~AssetHandle(v208);
      if (*(v5 + 96))
      {
        if ((*(a1 + 80) & 1) == 0)
        {
          *(v5 + 96) = 0;
          goto LABEL_284;
        }
      }

      else
      {
        if ((*(a1 + 80) & 1) == 0)
        {
          goto LABEL_284;
        }

        *(v5 + 96) = 1;
      }

      *(v5 + 104) = *(a1 + 88);
LABEL_284:
      if (*(v5 + 112))
      {
        if ((*(a1 + 96) & 1) == 0)
        {
          *(v5 + 112) = 0;
          goto LABEL_290;
        }
      }

      else
      {
        if ((*(a1 + 96) & 1) == 0)
        {
          goto LABEL_290;
        }

        *(v5 + 112) = 1;
      }

      *(v5 + 120) = *(a1 + 104);
LABEL_290:
      *(v5 + 128) = *(a1 + 112);
      *(v5 + 136) = *(a1 + 120);
      *(v5 + 144) = *(a1 + 128);
      if (*(v5 + 152))
      {
        if ((*(a1 + 136) & 1) == 0)
        {
          *(v5 + 152) = 0;
          goto LABEL_296;
        }
      }

      else
      {
        if ((*(a1 + 136) & 1) == 0)
        {
          goto LABEL_296;
        }

        *(v5 + 152) = 1;
      }

      *(v5 + 160) = *(a1 + 144);
LABEL_296:
      *(v5 + 168) = *(a1 + 152);
      *(v5 + 172) = *(a1 + 156);
      return v5;
    case 2:
      v5 = (*(*a3 + 32))(a3, 112, 8);
      v109 = re::TimelineAssetData::TimelineAssetData(v5, 2);
      *v109 = &unk_1F5CBE6B8;
      *(v109 + 72) = 0;
      v110 = (v109 + 72);
      *(v109 + 104) = 0;
      *(v109 + 80) = 0;
      *(v109 + 88) = 0;
      *(v109 + 96) = 0;
      *(v109 + 12) = *(a1 + 12);
      *(v109 + 16) = *(a1 + 16);
      re::StringID::operator=((v109 + 24), (a1 + 24));
      v111 = re::DynamicString::operator=((v5 + 40), (a1 + 40));
      v112 = *(a1 + 80);
      re::DynamicArray<re::AssetHandle>::setCapacity(v110, v112);
      ++*(v5 + 96);
      if (*(a1 + 80))
      {
        v113 = 0;
        do
        {
          re::DynamicArray<re::AssetHandle>::add(v110, v208);
          re::AssetHandle::~AssetHandle(v208);
          ++v113;
        }

        while (v113 < *(a1 + 80));
      }

      return v5;
    case 3:
      v5 = (*(*a3 + 32))(a3, 184, 8);
      v6 = re::TimelineAssetData::TimelineAssetData(v5, 3);
      *(v6 + 72) = 0;
      *(v6 + 120) = 0;
      *(v6 + 136) = 0;
      *(v6 + 144) = 0;
      *(v6 + 152) = 0;
      *(v6 + 160) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(v6 + 80) = 0;
      *(v6 + 104) = 0;
      *(v6 + 176) = 1065353216;
      *(v6 + 180) = 0;
      v7 = &unk_1F5CBE790;
      goto LABEL_167;
    case 4:
    case 6:
      v5 = (*(*a3 + 32))(a3, 184, 8);
      v6 = re::TimelineAssetData::TimelineAssetData(v5, 4);
      *(v6 + 72) = 0;
      *(v6 + 120) = 0;
      *(v6 + 136) = 0;
      *(v6 + 144) = 0;
      *(v6 + 152) = 0;
      *(v6 + 160) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(v6 + 80) = 0;
      *(v6 + 104) = 0;
      *(v6 + 176) = 1065353216;
      *(v6 + 180) = 0;
      v7 = &unk_1F5CBE880;
      goto LABEL_167;
    case 5:
      v5 = (*(*a3 + 32))(a3, 184, 8);
      v6 = re::TimelineAssetData::TimelineAssetData(v5, 5);
      *(v6 + 72) = 0;
      *(v6 + 120) = 0;
      *(v6 + 136) = 0;
      *(v6 + 144) = 0;
      *(v6 + 152) = 0;
      *(v6 + 160) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(v6 + 80) = 0;
      *(v6 + 104) = 0;
      *(v6 + 176) = 1065353216;
      *(v6 + 180) = 0;
      v7 = &unk_1F5CBE988;
      goto LABEL_167;
    case 7:
      v5 = (*(*a3 + 32))(a3, 184, 8);
      v6 = re::TimelineAssetData::TimelineAssetData(v5, 7);
      *(v6 + 72) = 0;
      *(v6 + 120) = 0;
      *(v6 + 136) = 0;
      *(v6 + 144) = 0;
      *(v6 + 152) = 0;
      *(v6 + 160) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(v6 + 80) = 0;
      *(v6 + 104) = 0;
      *(v6 + 176) = 1065353216;
      *(v6 + 180) = 0;
      v7 = &unk_1F5CBEB98;
      goto LABEL_167;
    case 8:
      v5 = (*(*a3 + 32))(a3, 184, 8);
      v6 = re::TimelineAssetData::TimelineAssetData(v5, 8);
      *(v6 + 72) = 0;
      *(v6 + 120) = 0;
      *(v6 + 136) = 0;
      *(v6 + 144) = 0;
      *(v6 + 152) = 0;
      *(v6 + 160) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(v6 + 80) = 0;
      *(v6 + 104) = 0;
      *(v6 + 176) = 1065353216;
      *(v6 + 180) = 0;
      v7 = &unk_1F5CBECA0;
      goto LABEL_167;
    case 9:
      v5 = (*(*a3 + 32))(a3, 184, 8);
      v6 = re::TimelineAssetData::TimelineAssetData(v5, 9);
      *(v6 + 72) = 0;
      *(v6 + 120) = 0;
      *(v6 + 136) = 0;
      *(v6 + 144) = 0;
      *(v6 + 152) = 0;
      *(v6 + 160) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(v6 + 80) = 0;
      *(v6 + 104) = 0;
      *(v6 + 176) = 1065353216;
      *(v6 + 180) = 0;
      v7 = &unk_1F5CBEDA8;
      goto LABEL_167;
    case 0xA:
      v5 = (*(*a3 + 32))(a3, 184, 8);
      v6 = re::TimelineAssetData::TimelineAssetData(v5, 10);
      *(v6 + 72) = 0;
      *(v6 + 120) = 0;
      *(v6 + 136) = 0;
      *(v6 + 144) = 0;
      *(v6 + 152) = 0;
      *(v6 + 160) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(v6 + 80) = 0;
      *(v6 + 104) = 0;
      *(v6 + 176) = 1065353216;
      *(v6 + 180) = 0;
      v7 = &unk_1F5CBEEB0;
      goto LABEL_167;
    case 0xB:
      v5 = (*(*a3 + 32))(a3, 120, 8);
      v72 = re::TimelineAssetData::TimelineAssetData(v5, 11);
      *(v72 + 72) = 0;
      *(v72 + 80) = 0x3FF0000000000000;
      *(v72 + 88) = 0;
      *(v72 + 96) = 0;
      *(v72 + 104) = 0;
      *(v72 + 112) = 0;
      *v72 = &unk_1F5CC3530;
      *(v72 + 12) = *(a1 + 12);
      *(v72 + 16) = *(a1 + 16);
      re::StringID::operator=((v72 + 24), (a1 + 24));
      v73 = re::DynamicString::operator=((v5 + 40), (a1 + 40));
      if (*(v5 + 88))
      {
        if ((*(a1 + 88) & 1) == 0)
        {
          *(v5 + 88) = 0;
          goto LABEL_250;
        }
      }

      else
      {
        if ((*(a1 + 88) & 1) == 0)
        {
          goto LABEL_250;
        }

        *(v5 + 88) = 1;
      }

      *(v5 + 92) = *(a1 + 92);
LABEL_250:
      if (*(v5 + 96))
      {
        if ((*(a1 + 96) & 1) == 0)
        {
          *(v5 + 96) = 0;
          goto LABEL_256;
        }
      }

      else
      {
        if ((*(a1 + 96) & 1) == 0)
        {
          goto LABEL_256;
        }

        *(v5 + 96) = 1;
      }

      *(v5 + 100) = *(a1 + 100);
LABEL_256:
      if (*(v5 + 104))
      {
        if ((*(a1 + 104) & 1) == 0)
        {
          *(v5 + 104) = 0;
          goto LABEL_262;
        }
      }

      else
      {
        if ((*(a1 + 104) & 1) == 0)
        {
          goto LABEL_262;
        }

        *(v5 + 104) = 1;
      }

      *(v5 + 108) = *(a1 + 108);
LABEL_262:
      *(v5 + 72) = *(a1 + 72);
      *(v5 + 80) = *(a1 + 80);
      v166 = *(a1 + 112);
      if (v166)
      {
      }

      else
      {
        v167 = 0;
      }

      *(v5 + 112) = v167;
      return v5;
    case 0xC:
      v5 = (*(*a3 + 32))(a3, 144, 8);
      v53 = re::TimelineAssetData::TimelineAssetData(v5, 12);
      *(v53 + 72) = 0;
      *(v53 + 80) = 0x3FF0000000000000;
      *(v53 + 88) = 0;
      *(v53 + 104) = 0;
      *(v53 + 120) = 0;
      *(v53 + 136) = 0;
      *v53 = &unk_1F5CBF140;
      *(v53 + 12) = *(a1 + 12);
      *(v53 + 16) = *(a1 + 16);
      re::StringID::operator=((v53 + 24), (a1 + 24));
      v54 = re::DynamicString::operator=((v5 + 40), (a1 + 40));
      if (*(v5 + 88))
      {
        if ((*(a1 + 88) & 1) == 0)
        {
          *(v5 + 88) = 0;
          goto LABEL_216;
        }
      }

      else
      {
        if ((*(a1 + 88) & 1) == 0)
        {
          goto LABEL_216;
        }

        *(v5 + 88) = 1;
      }

      *(v5 + 96) = *(a1 + 96);
LABEL_216:
      if (*(v5 + 104))
      {
        if ((*(a1 + 104) & 1) == 0)
        {
          *(v5 + 104) = 0;
          goto LABEL_222;
        }
      }

      else
      {
        if ((*(a1 + 104) & 1) == 0)
        {
          goto LABEL_222;
        }

        *(v5 + 104) = 1;
      }

      *(v5 + 112) = *(a1 + 112);
LABEL_222:
      if (*(v5 + 120))
      {
        if ((*(a1 + 120) & 1) == 0)
        {
          goto LABEL_239;
        }
      }

      else
      {
        if ((*(a1 + 120) & 1) == 0)
        {
          goto LABEL_243;
        }

        *(v5 + 120) = 1;
      }

      *(v5 + 128) = *(a1 + 128);
      goto LABEL_243;
    case 0xD:
      v5 = (*(*a3 + 32))(a3, 144, 8);
      v71 = re::TimelineAssetData::TimelineAssetData(v5, 13);
      *(v71 + 72) = 0;
      *(v71 + 80) = 0x3FF0000000000000;
      *(v71 + 88) = 0;
      *(v71 + 104) = 0;
      *(v71 + 120) = 0;
      *(v71 + 136) = 0;
      *v71 = &unk_1F5CBF270;
      *(v71 + 12) = *(a1 + 12);
      *(v71 + 16) = *(a1 + 16);
      re::StringID::operator=((v71 + 24), (a1 + 24));
      v54 = re::DynamicString::operator=((v5 + 40), (a1 + 40));
      if (*(v5 + 88))
      {
        if ((*(a1 + 88) & 1) == 0)
        {
          *(v5 + 88) = 0;
          goto LABEL_231;
        }
      }

      else
      {
        if ((*(a1 + 88) & 1) == 0)
        {
          goto LABEL_231;
        }

        *(v5 + 88) = 1;
      }

      *(v5 + 96) = *(a1 + 96);
LABEL_231:
      if (*(v5 + 104))
      {
        if ((*(a1 + 104) & 1) == 0)
        {
          *(v5 + 104) = 0;
          goto LABEL_237;
        }
      }

      else
      {
        if ((*(a1 + 104) & 1) == 0)
        {
          goto LABEL_237;
        }

        *(v5 + 104) = 1;
      }

      *(v5 + 112) = *(a1 + 112);
LABEL_237:
      if (*(v5 + 120))
      {
        if ((*(a1 + 120) & 1) == 0)
        {
LABEL_239:
          *(v5 + 120) = 0;
          goto LABEL_243;
        }
      }

      else
      {
        if ((*(a1 + 120) & 1) == 0)
        {
          goto LABEL_243;
        }

        *(v5 + 120) = 1;
      }

      *(v5 + 128) = *(a1 + 128);
LABEL_243:
      *(v5 + 72) = *(a1 + 72);
      *(v5 + 80) = *(a1 + 80);
      v164 = *(a1 + 136);
      if (v164)
      {
      }

      else
      {
        v165 = 0;
      }

      *(v5 + 136) = v165;
      return v5;
    case 0xE:
      v5 = (*(*a3 + 32))(a3, 208, 16);
      v74 = re::TimelineAssetData::TimelineAssetData(v5, 14);
      *(v74 + 72) = 0;
      *(v74 + 80) = 0x3FF0000000000000;
      *(v74 + 96) = 0;
      *(v74 + 128) = 0;
      *(v74 + 160) = 0;
      *(v74 + 192) = 0;
      v75 = &unk_1F5CBF3A0;
      goto LABEL_117;
    case 0xF:
      v5 = (*(*a3 + 32))(a3, 208, 16);
      v74 = re::TimelineAssetData::TimelineAssetData(v5, 15);
      *(v74 + 72) = 0;
      *(v74 + 80) = 0x3FF0000000000000;
      *(v74 + 96) = 0;
      *(v74 + 128) = 0;
      *(v74 + 160) = 0;
      *(v74 + 192) = 0;
      v75 = &unk_1F5CBF4D0;
      goto LABEL_117;
    case 0x10:
      v5 = (*(*a3 + 32))(a3, 208, 16);
      v74 = re::TimelineAssetData::TimelineAssetData(v5, 16);
      *(v74 + 72) = 0;
      *(v74 + 80) = 0x3FF0000000000000;
      *(v74 + 96) = 0;
      *(v74 + 128) = 0;
      *(v74 + 160) = 0;
      *(v74 + 192) = 0;
      v75 = &unk_1F5CBF600;
LABEL_117:
      *v74 = v75;
      *(v74 + 12) = *(a1 + 12);
      *(v74 + 16) = *(a1 + 16);
      re::StringID::operator=((v74 + 24), (a1 + 24));
      v94 = re::DynamicString::operator=((v5 + 40), (a1 + 40));
      if (*(v5 + 96))
      {
        if ((*(a1 + 96) & 1) == 0)
        {
          *(v5 + 96) = 0;
          goto LABEL_123;
        }
      }

      else
      {
        if ((*(a1 + 96) & 1) == 0)
        {
          goto LABEL_123;
        }

        *(v5 + 96) = 1;
      }

      *(v5 + 112) = *(a1 + 112);
LABEL_123:
      if (*(v5 + 128))
      {
        if ((*(a1 + 128) & 1) == 0)
        {
          *(v5 + 128) = 0;
          goto LABEL_129;
        }
      }

      else
      {
        if ((*(a1 + 128) & 1) == 0)
        {
          goto LABEL_129;
        }

        *(v5 + 128) = 1;
      }

      *(v5 + 144) = *(a1 + 144);
LABEL_129:
      if (*(v5 + 160))
      {
        if ((*(a1 + 160) & 1) == 0)
        {
          *(v5 + 160) = 0;
          goto LABEL_135;
        }
      }

      else
      {
        if ((*(a1 + 160) & 1) == 0)
        {
          goto LABEL_135;
        }

        *(v5 + 160) = 1;
      }

      *(v5 + 176) = *(a1 + 176);
LABEL_135:
      *(v5 + 72) = *(a1 + 72);
      *(v5 + 80) = *(a1 + 80);
      v95 = *(a1 + 192);
      if (v95)
      {
      }

      else
      {
        v96 = 0;
      }

      *(v5 + 192) = v96;
      return v5;
    case 0x11:
      v5 = (*(*a3 + 32))(a3, 304, 16);
      v92 = re::TimelineAssetData::TimelineAssetData(v5, 17);
      *(v92 + 72) = 0;
      *(v92 + 80) = 0x3FF0000000000000;
      *(v92 + 96) = 0;
      *(v92 + 160) = 0;
      *(v92 + 224) = 0;
      *(v92 + 288) = 0;
      *v92 = &unk_1F5CBF730;
      *(v92 + 12) = *(a1 + 12);
      *(v92 + 16) = *(a1 + 16);
      re::StringID::operator=((v92 + 24), (a1 + 24));
      v93 = re::DynamicString::operator=((v5 + 40), (a1 + 40));
      if (*(v5 + 96))
      {
        if ((*(a1 + 96) & 1) == 0)
        {
          *(v5 + 96) = 0;
          goto LABEL_267;
        }
      }

      else
      {
        if ((*(a1 + 96) & 1) == 0)
        {
          goto LABEL_267;
        }

        *(v5 + 96) = 1;
      }

      v168 = *(a1 + 112);
      v169 = *(a1 + 144);
      *(v5 + 128) = *(a1 + 128);
      *(v5 + 144) = v169;
      *(v5 + 112) = v168;
LABEL_267:
      if (*(v5 + 160))
      {
        if ((*(a1 + 160) & 1) == 0)
        {
          *(v5 + 160) = 0;
          goto LABEL_273;
        }
      }

      else
      {
        if ((*(a1 + 160) & 1) == 0)
        {
          goto LABEL_273;
        }

        *(v5 + 160) = 1;
      }

      v170 = *(a1 + 176);
      v171 = *(a1 + 208);
      *(v5 + 192) = *(a1 + 192);
      *(v5 + 208) = v171;
      *(v5 + 176) = v170;
LABEL_273:
      if (*(v5 + 224))
      {
        if ((*(a1 + 224) & 1) == 0)
        {
          *(v5 + 224) = 0;
          goto LABEL_279;
        }
      }

      else
      {
        if ((*(a1 + 224) & 1) == 0)
        {
          goto LABEL_279;
        }

        *(v5 + 224) = 1;
      }

      v172 = *(a1 + 240);
      v173 = *(a1 + 272);
      *(v5 + 256) = *(a1 + 256);
      *(v5 + 272) = v173;
      *(v5 + 240) = v172;
LABEL_279:
      *(v5 + 72) = *(a1 + 72);
      *(v5 + 80) = *(a1 + 80);
      v174 = *(a1 + 288);
      if (v174)
      {
      }

      else
      {
        v175 = 0;
      }

      *(v5 + 288) = v175;
      return v5;
    case 0x12:
      v5 = (*(*a3 + 32))(a3, 336, 8);
      v80 = re::TimelineAssetData::TimelineAssetData(v5, 18);
      *(v80 + 72) = 0;
      *(v80 + 80) = 0x3FF0000000000000;
      *(v80 + 88) = 0;
      v81 = v80 + 88;
      *(v80 + 120) = 0;
      v82 = v80 + 120;
      *(v80 + 152) = 0;
      v83 = v80 + 152;
      *(v80 + 184) = 0;
      *v80 = &unk_1F5CBF8F8;
      *(v80 + 328) = 0;
      *(v80 + 280) = 0;
      *(v80 + 248) = 0u;
      *(v80 + 264) = 0u;
      *(v80 + 288) = 0u;
      *(v80 + 304) = 0u;
      *(v80 + 320) = 0;
      *(v80 + 192) = 0u;
      *(v80 + 208) = 0u;
      *(v80 + 224) = 0u;
      *(v80 + 240) = 0;
      *(v80 + 12) = *(a1 + 12);
      *(v80 + 16) = *(a1 + 16);
      re::StringID::operator=((v80 + 24), (a1 + 24));
      v19 = re::DynamicString::operator=((v5 + 40), (a1 + 40));
      if (*(a1 + 88) == 1)
      {
        v84 = *(*(a1 + 176) + 216);
        *&v208[0] = *(*(a1 + 176) + 224);
        *(&v208[0] + 1) = v84;
        re::DynamicArray<re::StringID>::operator=((v5 + 216), v208);
        re::FixedArray<re::GenericSRT<float>>::FixedArray(v205, (a1 + 112));
        LOBYTE(v208[0]) = 1;
        *(v208 + 8) = *v205;
        v85 = *&v205[16];
        memset(v205, 0, 24);
        *(&v208[1] + 1) = v85;
        re::Optional<re::SkeletalPoseAssetData>::operator=(v81, v208);
        if (LOBYTE(v208[0]) == 1 && *(&v208[0] + 1))
        {
          if (*&v208[1])
          {
            (*(**(&v208[0] + 1) + 40))();
            v208[1] = 0uLL;
          }

          *(&v208[0] + 1) = 0;
        }

        v19 = *v205;
        if (*v205 && *&v205[8])
        {
          v19 = (*(**v205 + 40))();
        }
      }

      if (*(a1 + 184) == 1)
      {
        v86 = *(*(a1 + 272) + 216);
        *&v208[0] = *(*(a1 + 272) + 224);
        *(&v208[0] + 1) = v86;
        re::DynamicArray<re::StringID>::operator=((v5 + 256), v208);
        re::FixedArray<re::GenericSRT<float>>::FixedArray(v205, (a1 + 208));
        LOBYTE(v208[0]) = 1;
        *(v208 + 8) = *v205;
        v87 = *&v205[16];
        memset(v205, 0, 24);
        *(&v208[1] + 1) = v87;
        re::Optional<re::SkeletalPoseAssetData>::operator=(v82, v208);
        if (LOBYTE(v208[0]) == 1 && *(&v208[0] + 1))
        {
          if (*&v208[1])
          {
            (*(**(&v208[0] + 1) + 40))();
            v208[1] = 0uLL;
          }

          *(&v208[0] + 1) = 0;
        }

        v19 = *v205;
        if (*v205 && *&v205[8])
        {
          v19 = (*(**v205 + 40))();
        }
      }

      if (*(a1 + 280) == 1)
      {
        v88 = *(*(a1 + 368) + 216);
        *&v208[0] = *(*(a1 + 368) + 224);
        *(&v208[0] + 1) = v88;
        re::DynamicArray<re::StringID>::operator=((v5 + 296), v208);
        re::FixedArray<re::GenericSRT<float>>::FixedArray(v205, (a1 + 304));
        LOBYTE(v208[0]) = 1;
        *(v208 + 8) = *v205;
        v89 = *&v205[16];
        memset(v205, 0, 24);
        *(&v208[1] + 1) = v89;
        re::Optional<re::SkeletalPoseAssetData>::operator=(v83, v208);
        if (LOBYTE(v208[0]) == 1 && *(&v208[0] + 1))
        {
          if (*&v208[1])
          {
            (*(**(&v208[0] + 1) + 40))();
            v208[1] = 0uLL;
          }

          *(&v208[0] + 1) = 0;
        }

        v19 = *v205;
        if (*v205 && *&v205[8])
        {
          v19 = (*(**v205 + 40))();
        }
      }

      *(v5 + 72) = *(a1 + 72);
      *(v5 + 80) = *(a1 + 80);
      v26 = *(a1 + 376);
      if (!v26)
      {
        goto LABEL_109;
      }

      goto LABEL_35;
    case 0x13:
      v5 = (*(*a3 + 32))(a3, 160, 8);
      v123 = re::TimelineAssetData::TimelineAssetData(v5, 19);
      *(v123 + 72) = 256;
      *(v123 + 88) = 0;
      *(v123 + 96) = 0;
      *(v123 + 104) = 0;
      *(v123 + 80) = 0;
      v41 = (v123 + 80);
      *(v123 + 152) = 0;
      *(v123 + 112) = 0u;
      *(v123 + 128) = 0u;
      *(v123 + 144) = 0;
      *v123 = &unk_1F5CBFAD8;
      *(v123 + 12) = *(a1 + 12);
      *(v123 + 16) = *(a1 + 16);
      re::StringID::operator=((v123 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      v124 = *(a1 + 112);
      *&v208[0] = *(a1 + 120);
      *(&v208[0] + 1) = v124;
      re::DynamicArray<float>::operator=((v5 + 120), v208);
      goto LABEL_163;
    case 0x14:
      v5 = (*(*a3 + 32))(a3, 160, 8);
      v69 = re::TimelineAssetData::TimelineAssetData(v5, 20);
      *(v69 + 72) = 256;
      *(v69 + 88) = 0;
      *(v69 + 96) = 0;
      *(v69 + 104) = 0;
      *(v69 + 80) = 0;
      v41 = (v69 + 80);
      *(v69 + 152) = 0;
      *(v69 + 112) = 0u;
      *(v69 + 128) = 0u;
      *(v69 + 144) = 0;
      *v69 = &unk_1F5CBFC20;
      *(v69 + 12) = *(a1 + 12);
      *(v69 + 16) = *(a1 + 16);
      re::StringID::operator=((v69 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      v70 = *(a1 + 112);
      *&v208[0] = *(a1 + 120);
      *(&v208[0] + 1) = v70;
      re::DynamicArray<double>::operator=((v5 + 120), v208);
      goto LABEL_163;
    case 0x15:
      v5 = (*(*a3 + 32))(a3, 160, 8);
      v55 = re::TimelineAssetData::TimelineAssetData(v5, 21);
      *(v55 + 72) = 256;
      *(v55 + 88) = 0;
      *(v55 + 96) = 0;
      *(v55 + 104) = 0;
      *(v55 + 80) = 0;
      v41 = (v55 + 80);
      *(v55 + 152) = 0;
      *(v55 + 112) = 0u;
      *(v55 + 128) = 0u;
      *(v55 + 144) = 0;
      *v55 = &unk_1F5CBFCD0;
      *(v55 + 12) = *(a1 + 12);
      *(v55 + 16) = *(a1 + 16);
      re::StringID::operator=((v55 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      v56 = *(a1 + 112);
      *&v208[0] = *(a1 + 120);
      *(&v208[0] + 1) = v56;
      re::DynamicArray<re::Vector2<float>>::operator=((v5 + 120), v208);
      goto LABEL_163;
    case 0x16:
      v5 = (*(*a3 + 32))(a3, 160, 8);
      v90 = re::TimelineAssetData::TimelineAssetData(v5, 22);
      *(v90 + 72) = 256;
      *(v90 + 88) = 0;
      *(v90 + 96) = 0;
      *(v90 + 104) = 0;
      *(v90 + 80) = 0;
      v41 = (v90 + 80);
      *(v90 + 152) = 0;
      *(v90 + 112) = 0u;
      *(v90 + 128) = 0u;
      *(v90 + 144) = 0;
      *v90 = &unk_1F5CBFD80;
      *(v90 + 12) = *(a1 + 12);
      *(v90 + 16) = *(a1 + 16);
      re::StringID::operator=((v90 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      v91 = *(a1 + 112);
      *&v208[0] = *(a1 + 120);
      *(&v208[0] + 1) = v91;
      re::DynamicArray<re::Vector3<float>>::operator=((v5 + 120), v208);
      goto LABEL_163;
    case 0x17:
      v5 = (*(*a3 + 32))(a3, 160, 8);
      v127 = re::TimelineAssetData::TimelineAssetData(v5, 23);
      *(v127 + 72) = 256;
      *(v127 + 88) = 0;
      *(v127 + 96) = 0;
      *(v127 + 104) = 0;
      *(v127 + 80) = 0;
      v41 = (v127 + 80);
      *(v127 + 152) = 0;
      *(v127 + 112) = 0u;
      *(v127 + 128) = 0u;
      *(v127 + 144) = 0;
      *v127 = &unk_1F5CBFE30;
      *(v127 + 12) = *(a1 + 12);
      *(v127 + 16) = *(a1 + 16);
      re::StringID::operator=((v127 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      v128 = *(a1 + 112);
      *&v208[0] = *(a1 + 120);
      *(&v208[0] + 1) = v128;
      re::DynamicArray<re::Vector4<float>>::operator=((v5 + 120), v208);
      goto LABEL_163;
    case 0x18:
      v5 = (*(*a3 + 32))(a3, 160, 8);
      v40 = re::TimelineAssetData::TimelineAssetData(v5, 24);
      *(v40 + 72) = 256;
      *(v40 + 88) = 0;
      *(v40 + 96) = 0;
      *(v40 + 104) = 0;
      *(v40 + 80) = 0;
      v41 = (v40 + 80);
      *(v40 + 152) = 0;
      *(v40 + 112) = 0u;
      *(v40 + 128) = 0u;
      *(v40 + 144) = 0;
      *v40 = &unk_1F5CBFEE0;
      *(v40 + 12) = *(a1 + 12);
      *(v40 + 16) = *(a1 + 16);
      re::StringID::operator=((v40 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      v42 = *(a1 + 112);
      *&v208[0] = *(a1 + 120);
      *(&v208[0] + 1) = v42;
      re::DynamicArray<re::Quaternion<float>>::operator=((v5 + 120), v208);
      goto LABEL_163;
    case 0x19:
      v5 = (*(*a3 + 32))(a3, 160, 8);
      v125 = re::TimelineAssetData::TimelineAssetData(v5, 25);
      *(v125 + 72) = 256;
      *(v125 + 88) = 0;
      *(v125 + 96) = 0;
      *(v125 + 104) = 0;
      *(v125 + 80) = 0;
      v41 = (v125 + 80);
      *(v125 + 152) = 0;
      *(v125 + 112) = 0u;
      *(v125 + 128) = 0u;
      *(v125 + 144) = 0;
      *v125 = &unk_1F5CC0028;
      *(v125 + 12) = *(a1 + 12);
      *(v125 + 16) = *(a1 + 16);
      re::StringID::operator=((v125 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      v126 = *(a1 + 112);
      *&v208[0] = *(a1 + 120);
      *(&v208[0] + 1) = v126;
      re::DynamicArray<re::GenericSRT<float>>::operator=((v5 + 120), v208);
LABEL_163:
      *(v5 + 72) = *(a1 + 72);
      v129 = *(a1 + 88);
      *&v208[0] = *(a1 + 96);
      *(&v208[0] + 1) = v129;
      re::DynamicArray<float>::operator=(v41, v208);
      return v5;
    case 0x1A:
      v135 = (*(*a3 + 32))(a3, 224, 8);
      v136 = re::TimelineAssetData::TimelineAssetData(v135, 26);
      *(v136 + 72) = 256;
      *(v136 + 80) = 0;
      v137 = (v136 + 80);
      *(v136 + 88) = 0;
      *(v136 + 96) = 0;
      *(v136 + 104) = 0;
      *(v136 + 152) = 0;
      *(v136 + 112) = 0u;
      *(v136 + 128) = 0u;
      *(v136 + 144) = 0;
      *v136 = &unk_1F5CC0170;
      *(v136 + 216) = 0;
      *(v136 + 160) = 0u;
      *(v136 + 176) = 0u;
      *(v136 + 192) = 0u;
      *(v136 + 208) = 0;
      *(v136 + 12) = *(a1 + 12);
      *(v136 + 16) = *(a1 + 16);
      re::StringID::operator=((v136 + 24), (a1 + 24));
      re::DynamicString::operator=((v135 + 40), (a1 + 40));
      if (!*(a1 + 112))
      {
        goto LABEL_212;
      }

      v138 = *(*(*(a1 + 120) + 80) + 216);
      *&v208[0] = *(*(*(a1 + 120) + 80) + 224);
      *(&v208[0] + 1) = v138;
      re::DynamicArray<re::StringID>::operator=((v135 + 184), v208);
      re::DynamicArray<re::SkeletalPoseAssetData>::resize((v135 + 120), *(a1 + 112));
      if (!*(a1 + 112))
      {
        goto LABEL_212;
      }

      v139 = 0;
      v68 = 0;
      v140 = 16;
      while (1)
      {
        v65 = *(v135 + 136);
        if (v65 <= v68)
        {
          goto LABEL_347;
        }

        re::FixedArray<re::GenericSRT<float>>::operator=((*(v135 + 152) + v139), (*(a1 + 120) + v140));
        ++v68;
        v140 += 88;
        v139 += 24;
        if (v68 >= *(a1 + 112))
        {
          goto LABEL_212;
        }
      }

    case 0x1B:
      v5 = (*(*a3 + 32))(a3, 128, 8);
      v97 = re::TimelineAssetData::TimelineAssetData(v5, 27);
      *(v97 + 72) = 256;
      *(v97 + 76) = 1023969417;
      *(v97 + 120) = 0;
      *(v97 + 80) = 0u;
      *(v97 + 96) = 0u;
      *(v97 + 112) = 0;
      *v97 = &unk_1F5CC0368;
      *(v97 + 12) = *(a1 + 12);
      *(v97 + 16) = *(a1 + 16);
      re::StringID::operator=((v97 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      v98 = *(a1 + 96);
      *&v208[0] = *(a1 + 104);
      *(&v208[0] + 1) = v98;
      re::DynamicArray<float>::operator=((v5 + 88), v208);
      goto LABEL_165;
    case 0x1C:
      v5 = (*(*a3 + 32))(a3, 128, 8);
      v130 = re::TimelineAssetData::TimelineAssetData(v5, 28);
      *(v130 + 72) = 256;
      *(v130 + 76) = 1023969417;
      *(v130 + 120) = 0;
      *(v130 + 80) = 0u;
      *(v130 + 96) = 0u;
      *(v130 + 112) = 0;
      *v130 = &unk_1F5CC0418;
      *(v130 + 12) = *(a1 + 12);
      *(v130 + 16) = *(a1 + 16);
      re::StringID::operator=((v130 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      v131 = *(a1 + 96);
      *&v208[0] = *(a1 + 104);
      *(&v208[0] + 1) = v131;
      re::DynamicArray<double>::operator=((v5 + 88), v208);
      goto LABEL_165;
    case 0x1D:
      v5 = (*(*a3 + 32))(a3, 128, 8);
      v114 = re::TimelineAssetData::TimelineAssetData(v5, 29);
      *(v114 + 72) = 256;
      *(v114 + 76) = 1023969417;
      *(v114 + 120) = 0;
      *(v114 + 80) = 0u;
      *(v114 + 96) = 0u;
      *(v114 + 112) = 0;
      *v114 = &unk_1F5CC04C8;
      *(v114 + 12) = *(a1 + 12);
      *(v114 + 16) = *(a1 + 16);
      re::StringID::operator=((v114 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      v115 = *(a1 + 96);
      *&v208[0] = *(a1 + 104);
      *(&v208[0] + 1) = v115;
      re::DynamicArray<re::Vector2<float>>::operator=((v5 + 88), v208);
      goto LABEL_165;
    case 0x1E:
      v5 = (*(*a3 + 32))(a3, 128, 8);
      v119 = re::TimelineAssetData::TimelineAssetData(v5, 30);
      *(v119 + 72) = 256;
      *(v119 + 76) = 1023969417;
      *(v119 + 120) = 0;
      *(v119 + 80) = 0u;
      *(v119 + 96) = 0u;
      *(v119 + 112) = 0;
      *v119 = &unk_1F5CC0578;
      *(v119 + 12) = *(a1 + 12);
      *(v119 + 16) = *(a1 + 16);
      re::StringID::operator=((v119 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      v120 = *(a1 + 96);
      *&v208[0] = *(a1 + 104);
      *(&v208[0] + 1) = v120;
      re::DynamicArray<re::Vector3<float>>::operator=((v5 + 88), v208);
      goto LABEL_165;
    case 0x1F:
      v5 = (*(*a3 + 32))(a3, 128, 8);
      v105 = re::TimelineAssetData::TimelineAssetData(v5, 31);
      *(v105 + 72) = 256;
      *(v105 + 76) = 1023969417;
      *(v105 + 120) = 0;
      *(v105 + 80) = 0u;
      *(v105 + 96) = 0u;
      *(v105 + 112) = 0;
      *v105 = &unk_1F5CC0628;
      *(v105 + 12) = *(a1 + 12);
      *(v105 + 16) = *(a1 + 16);
      re::StringID::operator=((v105 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      v106 = *(a1 + 96);
      *&v208[0] = *(a1 + 104);
      *(&v208[0] + 1) = v106;
      re::DynamicArray<re::Vector4<float>>::operator=((v5 + 88), v208);
      goto LABEL_165;
    case 0x20:
      v5 = (*(*a3 + 32))(a3, 128, 8);
      v107 = re::TimelineAssetData::TimelineAssetData(v5, 32);
      *(v107 + 72) = 256;
      *(v107 + 76) = 1023969417;
      *(v107 + 120) = 0;
      *(v107 + 80) = 0u;
      *(v107 + 96) = 0u;
      *(v107 + 112) = 0;
      *v107 = &unk_1F5CC06D8;
      *(v107 + 12) = *(a1 + 12);
      *(v107 + 16) = *(a1 + 16);
      re::StringID::operator=((v107 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      v108 = *(a1 + 96);
      *&v208[0] = *(a1 + 104);
      *(&v208[0] + 1) = v108;
      re::DynamicArray<re::Quaternion<float>>::operator=((v5 + 88), v208);
      goto LABEL_165;
    case 0x21:
      v5 = (*(*a3 + 32))(a3, 128, 8);
      v121 = re::TimelineAssetData::TimelineAssetData(v5, 33);
      *(v121 + 72) = 256;
      *(v121 + 76) = 1023969417;
      *(v121 + 120) = 0;
      *(v121 + 80) = 0u;
      *(v121 + 96) = 0u;
      *(v121 + 112) = 0;
      *v121 = &unk_1F5CC0788;
      *(v121 + 12) = *(a1 + 12);
      *(v121 + 16) = *(a1 + 16);
      re::StringID::operator=((v121 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      v122 = *(a1 + 96);
      *&v208[0] = *(a1 + 104);
      *(&v208[0] + 1) = v122;
      re::DynamicArray<re::GenericSRT<float>>::operator=((v5 + 88), v208);
      goto LABEL_165;
    case 0x22:
      v5 = (*(*a3 + 32))(a3, 200, 8);
      v63 = re::TimelineAssetData::TimelineAssetData(v5, 34);
      *(v63 + 72) = 256;
      *(v63 + 76) = 1023969417;
      *(v63 + 120) = 0;
      *(v63 + 80) = 0u;
      *(v63 + 96) = 0u;
      *(v63 + 112) = 0;
      *v63 = &unk_1F5CC0838;
      *(v63 + 184) = 0;
      *(v63 + 128) = 0u;
      *(v63 + 144) = 0u;
      *(v63 + 160) = 0u;
      *(v63 + 176) = 0;
      *(v63 + 192) = 257;
      *(v63 + 194) = 1;
      *(v63 + 12) = *(a1 + 12);
      *(v63 + 16) = *(a1 + 16);
      re::StringID::operator=((v63 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      if (!*(a1 + 96))
      {
        goto LABEL_65;
      }

      v64 = *(*(*(a1 + 104) + 80) + 216);
      *&v208[0] = *(*(*(a1 + 104) + 80) + 224);
      *(&v208[0] + 1) = v64;
      re::DynamicArray<re::StringID>::operator=((v5 + 152), v208);
      re::DynamicArray<re::SkeletalPoseAssetData>::resize((v5 + 88), *(a1 + 96));
      if (!*(a1 + 96))
      {
        goto LABEL_65;
      }

      v65 = 0;
      v66 = 0;
      v67 = 16;
      do
      {
        v68 = *(v5 + 104);
        if (v68 <= v66)
        {
          v204 = 0;
          v210 = 0u;
          v211 = 0u;
          v209 = 0u;
          memset(v208, 0, sizeof(v208));
          v191 = MEMORY[0x1E69E9C10];
          *v205 = 136315906;
          *&v205[4] = "operator[]";
          *&v205[12] = 1024;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v192 = 3;
          }

          else
          {
            v192 = 2;
          }

          *&v205[14] = 789;
          *&v205[18] = 2048;
          *&v205[20] = v66;
          v206 = 2048;
          v207 = v68;
          _os_log_send_and_compose_impl(v192, &v204, v208, 80, &dword_1E1C61000, v191, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v205, 38, v202, v203);
          _os_crash_msg();
          __break(1u);
LABEL_343:
          v204 = 0;
          v210 = 0u;
          v211 = 0u;
          v209 = 0u;
          memset(v208, 0, sizeof(v208));
          v193 = MEMORY[0x1E69E9C10];
          v194 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v205 = 136315906;
          *&v205[4] = "operator[]";
          *&v205[12] = 1024;
          if (v194)
          {
            v195 = 3;
          }

          else
          {
            v195 = 2;
          }

          *&v205[14] = 789;
          *&v205[18] = 2048;
          *&v205[20] = v66;
          v206 = 2048;
          v207 = v68;
          _os_log_send_and_compose_impl(v195, &v204, v208, 80, &dword_1E1C61000, v193, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v205, 38, v202, v203);
          _os_crash_msg();
          __break(1u);
LABEL_347:
          v204 = 0;
          v210 = 0u;
          v211 = 0u;
          v209 = 0u;
          memset(v208, 0, sizeof(v208));
          v196 = MEMORY[0x1E69E9C10];
          v197 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v205 = 136315906;
          *&v205[4] = "operator[]";
          *&v205[12] = 1024;
          if (v197)
          {
            v198 = 3;
          }

          else
          {
            v198 = 2;
          }

          *&v205[14] = 789;
          *&v205[18] = 2048;
          *&v205[20] = v68;
          v206 = 2048;
          v207 = v65;
          _os_log_send_and_compose_impl(v198, &v204, v208, 80, &dword_1E1C61000, v196, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v205, 38, v202, v203);
          _os_crash_msg();
          __break(1u);
LABEL_351:
          v204 = 0;
          v210 = 0u;
          v211 = 0u;
          v209 = 0u;
          memset(v208, 0, sizeof(v208));
          v199 = MEMORY[0x1E69E9C10];
          v200 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v205 = 136315906;
          *&v205[4] = "operator[]";
          *&v205[12] = 1024;
          if (v200)
          {
            v201 = 3;
          }

          else
          {
            v201 = 2;
          }

          *&v205[14] = 789;
          *&v205[18] = 2048;
          *&v205[20] = v68;
          v206 = 2048;
          v207 = v65;
          _os_log_send_and_compose_impl(v201, &v204, v208, 80, &dword_1E1C61000, v199, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v205, 38, v202, v203);
          _os_crash_msg();
          __break(1u);
        }

        re::FixedArray<re::GenericSRT<float>>::operator=((*(v5 + 120) + v65), (*(a1 + 104) + v67));
        ++v66;
        v67 += 88;
        v65 += 24;
      }

      while (v66 < *(a1 + 96));
LABEL_65:
      *(v5 + 72) = *(a1 + 72);
      *(v5 + 76) = *(a1 + 76);
      *(v5 + 84) = *(a1 + 84);
      *(v5 + 192) = *(a1 + 112);
      *(v5 + 193) = *(a1 + 113);
      return v5;
    case 0x25:
      v5 = (*(*a3 + 32))(a3, 160, 16);
      v44 = re::TimelineAssetData::TimelineAssetData(v5, 37);
      *(v44 + 72) = 0;
      *v44 = &unk_1F5CC0998;
      *(v44 + 76) = 1065353216;
      *(v44 + 80) = xmmword_1E3047680;
      *(v44 + 96) = 0x3F8000003F800000;
      *(v44 + 104) = 1065353216;
      *(v44 + 112) = 0;
      *(v44 + 120) = 0x3F80000000000000;
      *(v44 + 128) = 0;
      *(v44 + 136) = 0;
      *(v44 + 144) = 1;
      *(v44 + 148) = 1065353216;
      *(v44 + 12) = *(a1 + 12);
      *(v44 + 16) = *(a1 + 16);
      re::StringID::operator=((v44 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      *(v5 + 72) = *(a1 + 72);
      *(v5 + 76) = *(a1 + 76);
      *(v5 + 80) = *(a1 + 96);
      v45 = *(a1 + 128);
      v46 = *(a1 + 160);
      *(v5 + 112) = *(a1 + 144);
      *(v5 + 128) = v46;
      *(v5 + 96) = v45;
      return v5;
    case 0x26:
      v5 = (*(*a3 + 32))(a3, 96, 8);
      v43 = re::TimelineAssetData::TimelineAssetData(v5, 38);
      *(v43 + 72) = 0;
      *v43 = &unk_1F5CC09F0;
      *(v43 + 80) = 0;
      *(v43 + 88) = 0;
      *(v43 + 12) = *(a1 + 12);
      *(v43 + 16) = *(a1 + 16);
      re::StringID::operator=((v43 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      *(v5 + 80) = *(a1 + 80);
      return v5;
    case 0x27:
      v5 = (*(*a3 + 32))(a3, 288, 8);
      v47 = re::TimelineAssetData::TimelineAssetData(v5, 39);
      *(v47 + 72) = 0;
      *(v47 + 88) = 0;
      *(v47 + 96) = 0;
      *(v47 + 104) = 0;
      *(v47 + 80) = 0;
      v48 = v47 + 80;
      *(v47 + 152) = 0;
      *(v47 + 160) = 0;
      *(v47 + 176) = 0;
      *(v47 + 184) = 0;
      *(v47 + 192) = 0;
      *(v47 + 168) = 0;
      v49 = v47 + 168;
      *(v47 + 200) = 0u;
      *(v47 + 216) = 0u;
      *(v47 + 232) = 0;
      *(v47 + 112) = 0u;
      *(v47 + 128) = 0u;
      *(v47 + 144) = 0;
      *(v47 + 280) = 0;
      *(v47 + 272) = 0;
      *(v47 + 240) = 0u;
      *(v47 + 256) = 0u;
      *v47 = &unk_1F5CC0A60;
      *(v47 + 12) = *(a1 + 12);
      *(v47 + 16) = *(a1 + 16);
      re::StringID::operator=((v47 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      re::DynamicArray<re::AnimationBlendTreeNodeDescription>::operator=(v48, (a1 + 456));
      re::DynamicArray<re::RigGraphConnection>::operator=(v5 + 120, (a1 + 496));
      *(v5 + 160) = *(a1 + 536);
      re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v49, (a1 + 544));
      v50 = re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v5 + 208, (a1 + 584));
      v51 = *(a1 + 312);
      re::DynamicArray<re::AssetHandle>::setCapacity((v5 + 248), v51);
      ++*(v5 + 272);
      *(v5 + 72) = *(a1 + 72);
      if (*(a1 + 312))
      {
        v52 = 0;
        do
        {
          re::DynamicArray<re::AssetHandle>::add((v5 + 248), v208);
          re::AssetHandle::~AssetHandle(v208);
          ++v52;
        }

        while (v52 < *(a1 + 312));
      }

      return v5;
    case 0x28:
      v5 = (*(*a3 + 32))(a3, 288, 8);
      v57 = re::TimelineAssetData::TimelineAssetData(v5, 40);
      *(v57 + 72) = 0;
      *(v57 + 88) = 0;
      *(v57 + 96) = 0;
      *(v57 + 104) = 0;
      *(v57 + 80) = 0;
      v58 = v57 + 80;
      *(v57 + 152) = 0;
      *(v57 + 160) = 0;
      *(v57 + 176) = 0;
      *(v57 + 184) = 0;
      *(v57 + 192) = 0;
      *(v57 + 168) = 0;
      v59 = v57 + 168;
      *(v57 + 200) = 0u;
      *(v57 + 216) = 0u;
      *(v57 + 232) = 0;
      *(v57 + 112) = 0u;
      *(v57 + 128) = 0u;
      *(v57 + 144) = 0;
      *(v57 + 280) = 0;
      *(v57 + 272) = 0;
      *(v57 + 240) = 0u;
      *(v57 + 256) = 0u;
      *v57 = &unk_1F5CC0B10;
      *(v57 + 12) = *(a1 + 12);
      *(v57 + 16) = *(a1 + 16);
      re::StringID::operator=((v57 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      re::DynamicArray<re::AnimationBlendTreeNodeDescription>::operator=(v58, (a1 + 456));
      re::DynamicArray<re::RigGraphConnection>::operator=(v5 + 120, (a1 + 496));
      *(v5 + 160) = *(a1 + 536);
      re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v59, (a1 + 544));
      v60 = re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v5 + 208, (a1 + 584));
      v61 = *(a1 + 312);
      re::DynamicArray<re::AssetHandle>::setCapacity((v5 + 248), v61);
      ++*(v5 + 272);
      *(v5 + 72) = *(a1 + 72);
      if (*(a1 + 312))
      {
        v62 = 0;
        do
        {
          re::DynamicArray<re::AssetHandle>::add((v5 + 248), v208);
          re::AssetHandle::~AssetHandle(v208);
          ++v62;
        }

        while (v62 < *(a1 + 312));
      }

      return v5;
    case 0x29:
      v5 = (*(*a3 + 32))(a3, 288, 8);
      v34 = re::TimelineAssetData::TimelineAssetData(v5, 41);
      *(v34 + 72) = 0;
      *(v34 + 88) = 0;
      *(v34 + 96) = 0;
      *(v34 + 104) = 0;
      *(v34 + 80) = 0;
      v35 = v34 + 80;
      *(v34 + 152) = 0;
      *(v34 + 160) = 0;
      *(v34 + 176) = 0;
      *(v34 + 184) = 0;
      *(v34 + 192) = 0;
      *(v34 + 168) = 0;
      v36 = v34 + 168;
      *(v34 + 200) = 0u;
      *(v34 + 216) = 0u;
      *(v34 + 232) = 0;
      *(v34 + 112) = 0u;
      *(v34 + 128) = 0u;
      *(v34 + 144) = 0;
      *(v34 + 280) = 0;
      *(v34 + 272) = 0;
      *(v34 + 240) = 0u;
      *(v34 + 256) = 0u;
      *v34 = &unk_1F5CC0BC0;
      *(v34 + 12) = *(a1 + 12);
      *(v34 + 16) = *(a1 + 16);
      re::StringID::operator=((v34 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      re::DynamicArray<re::AnimationBlendTreeNodeDescription>::operator=(v35, (a1 + 456));
      re::DynamicArray<re::RigGraphConnection>::operator=(v5 + 120, (a1 + 496));
      *(v5 + 160) = *(a1 + 536);
      re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v36, (a1 + 544));
      v37 = re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v5 + 208, (a1 + 584));
      v38 = *(a1 + 312);
      re::DynamicArray<re::AssetHandle>::setCapacity((v5 + 248), v38);
      ++*(v5 + 272);
      *(v5 + 72) = *(a1 + 72);
      if (*(a1 + 312))
      {
        v39 = 0;
        do
        {
          re::DynamicArray<re::AssetHandle>::add((v5 + 248), v208);
          re::AssetHandle::~AssetHandle(v208);
          ++v39;
        }

        while (v39 < *(a1 + 312));
      }

      return v5;
    case 0x2A:
      v5 = (*(*a3 + 32))(a3, 288, 8);
      v8 = re::TimelineAssetData::TimelineAssetData(v5, 42);
      *(v8 + 72) = 0;
      *(v8 + 88) = 0;
      *(v8 + 96) = 0;
      *(v8 + 104) = 0;
      *(v8 + 80) = 0;
      v9 = v8 + 80;
      *(v8 + 152) = 0;
      *(v8 + 160) = 0;
      *(v8 + 176) = 0;
      *(v8 + 184) = 0;
      *(v8 + 192) = 0;
      *(v8 + 168) = 0;
      v10 = v8 + 168;
      *(v8 + 200) = 0u;
      *(v8 + 216) = 0u;
      *(v8 + 232) = 0;
      *(v8 + 112) = 0u;
      *(v8 + 128) = 0u;
      *(v8 + 144) = 0;
      *(v8 + 280) = 0;
      *(v8 + 272) = 0;
      *(v8 + 240) = 0u;
      *(v8 + 256) = 0u;
      *v8 = &unk_1F5CC0C70;
      *(v8 + 12) = *(a1 + 12);
      *(v8 + 16) = *(a1 + 16);
      re::StringID::operator=((v8 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      re::DynamicArray<re::AnimationBlendTreeNodeDescription>::operator=(v9, (a1 + 456));
      re::DynamicArray<re::RigGraphConnection>::operator=(v5 + 120, (a1 + 496));
      *(v5 + 160) = *(a1 + 536);
      re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v10, (a1 + 544));
      v11 = re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v5 + 208, (a1 + 584));
      v12 = *(a1 + 312);
      re::DynamicArray<re::AssetHandle>::setCapacity((v5 + 248), v12);
      ++*(v5 + 272);
      *(v5 + 72) = *(a1 + 72);
      if (*(a1 + 312))
      {
        v13 = 0;
        do
        {
          re::DynamicArray<re::AssetHandle>::add((v5 + 248), v208);
          re::AssetHandle::~AssetHandle(v208);
          ++v13;
        }

        while (v13 < *(a1 + 312));
      }

      return v5;
    case 0x2B:
      v5 = (*(*a3 + 32))(a3, 288, 8);
      v141 = re::TimelineAssetData::TimelineAssetData(v5, 43);
      *(v141 + 72) = 0;
      *(v141 + 88) = 0;
      *(v141 + 96) = 0;
      *(v141 + 104) = 0;
      *(v141 + 80) = 0;
      v142 = v141 + 80;
      *(v141 + 152) = 0;
      *(v141 + 160) = 0;
      *(v141 + 176) = 0;
      *(v141 + 184) = 0;
      *(v141 + 192) = 0;
      *(v141 + 168) = 0;
      v143 = v141 + 168;
      *(v141 + 200) = 0u;
      *(v141 + 216) = 0u;
      *(v141 + 232) = 0;
      *(v141 + 112) = 0u;
      *(v141 + 128) = 0u;
      *(v141 + 144) = 0;
      *(v141 + 280) = 0;
      *(v141 + 272) = 0;
      *(v141 + 240) = 0u;
      *(v141 + 256) = 0u;
      *v141 = &unk_1F5CC0D20;
      *(v141 + 12) = *(a1 + 12);
      *(v141 + 16) = *(a1 + 16);
      re::StringID::operator=((v141 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      re::DynamicArray<re::AnimationBlendTreeNodeDescription>::operator=(v142, (a1 + 456));
      re::DynamicArray<re::RigGraphConnection>::operator=(v5 + 120, (a1 + 496));
      *(v5 + 160) = *(a1 + 536);
      re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v143, (a1 + 544));
      v144 = re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v5 + 208, (a1 + 584));
      v145 = *(a1 + 312);
      re::DynamicArray<re::AssetHandle>::setCapacity((v5 + 248), v145);
      ++*(v5 + 272);
      *(v5 + 72) = *(a1 + 72);
      if (*(a1 + 312))
      {
        v146 = 0;
        do
        {
          re::DynamicArray<re::AssetHandle>::add((v5 + 248), v208);
          re::AssetHandle::~AssetHandle(v208);
          ++v146;
        }

        while (v146 < *(a1 + 312));
      }

      return v5;
    case 0x2C:
      v5 = (*(*a3 + 32))(a3, 288, 8);
      v152 = re::TimelineAssetData::TimelineAssetData(v5, 44);
      *(v152 + 72) = 0;
      *(v152 + 88) = 0;
      *(v152 + 96) = 0;
      *(v152 + 104) = 0;
      *(v152 + 80) = 0;
      v153 = v152 + 80;
      *(v152 + 152) = 0;
      *(v152 + 160) = 0;
      *(v152 + 176) = 0;
      *(v152 + 184) = 0;
      *(v152 + 192) = 0;
      *(v152 + 168) = 0;
      v154 = v152 + 168;
      *(v152 + 200) = 0u;
      *(v152 + 216) = 0u;
      *(v152 + 232) = 0;
      *(v152 + 112) = 0u;
      *(v152 + 128) = 0u;
      *(v152 + 144) = 0;
      *(v152 + 280) = 0;
      *(v152 + 272) = 0;
      *(v152 + 240) = 0u;
      *(v152 + 256) = 0u;
      *v152 = &unk_1F5CC0DD0;
      *(v152 + 12) = *(a1 + 12);
      *(v152 + 16) = *(a1 + 16);
      re::StringID::operator=((v152 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      re::DynamicArray<re::AnimationBlendTreeNodeDescription>::operator=(v153, (a1 + 456));
      re::DynamicArray<re::RigGraphConnection>::operator=(v5 + 120, (a1 + 496));
      *(v5 + 160) = *(a1 + 536);
      re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v154, (a1 + 544));
      v155 = re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v5 + 208, (a1 + 584));
      v156 = *(a1 + 312);
      re::DynamicArray<re::AssetHandle>::setCapacity((v5 + 248), v156);
      ++*(v5 + 272);
      *(v5 + 72) = *(a1 + 72);
      if (*(a1 + 312))
      {
        v157 = 0;
        do
        {
          re::DynamicArray<re::AssetHandle>::add((v5 + 248), v208);
          re::AssetHandle::~AssetHandle(v208);
          ++v157;
        }

        while (v157 < *(a1 + 312));
      }

      return v5;
    case 0x2D:
      v5 = (*(*a3 + 32))(a3, 288, 8);
      v28 = re::TimelineAssetData::TimelineAssetData(v5, 45);
      *(v28 + 72) = 0;
      *(v28 + 88) = 0;
      *(v28 + 96) = 0;
      *(v28 + 104) = 0;
      *(v28 + 80) = 0;
      v29 = v28 + 80;
      *(v28 + 152) = 0;
      *(v28 + 160) = 0;
      *(v28 + 176) = 0;
      *(v28 + 184) = 0;
      *(v28 + 192) = 0;
      *(v28 + 168) = 0;
      v30 = v28 + 168;
      *(v28 + 200) = 0u;
      *(v28 + 216) = 0u;
      *(v28 + 232) = 0;
      *(v28 + 112) = 0u;
      *(v28 + 128) = 0u;
      *(v28 + 144) = 0;
      *(v28 + 280) = 0;
      *(v28 + 272) = 0;
      *(v28 + 240) = 0u;
      *(v28 + 256) = 0u;
      *v28 = &unk_1F5CC0E80;
      *(v28 + 12) = *(a1 + 12);
      *(v28 + 16) = *(a1 + 16);
      re::StringID::operator=((v28 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      re::DynamicArray<re::AnimationBlendTreeNodeDescription>::operator=(v29, (a1 + 456));
      re::DynamicArray<re::RigGraphConnection>::operator=(v5 + 120, (a1 + 496));
      *(v5 + 160) = *(a1 + 536);
      re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v30, (a1 + 544));
      v31 = re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v5 + 208, (a1 + 584));
      v32 = *(a1 + 312);
      re::DynamicArray<re::AssetHandle>::setCapacity((v5 + 248), v32);
      ++*(v5 + 272);
      *(v5 + 72) = *(a1 + 72);
      if (*(a1 + 312))
      {
        v33 = 0;
        do
        {
          re::DynamicArray<re::AssetHandle>::add((v5 + 248), v208);
          re::AssetHandle::~AssetHandle(v208);
          ++v33;
        }

        while (v33 < *(a1 + 312));
      }

      return v5;
    case 0x2E:
      v5 = (*(*a3 + 32))(a3, 288, 8);
      v99 = re::TimelineAssetData::TimelineAssetData(v5, 46);
      *(v99 + 72) = 0;
      *(v99 + 88) = 0;
      *(v99 + 96) = 0;
      *(v99 + 104) = 0;
      *(v99 + 80) = 0;
      v100 = v99 + 80;
      *(v99 + 152) = 0;
      *(v99 + 160) = 0;
      *(v99 + 176) = 0;
      *(v99 + 184) = 0;
      *(v99 + 192) = 0;
      *(v99 + 168) = 0;
      v101 = v99 + 168;
      *(v99 + 200) = 0u;
      *(v99 + 216) = 0u;
      *(v99 + 232) = 0;
      *(v99 + 112) = 0u;
      *(v99 + 128) = 0u;
      *(v99 + 144) = 0;
      *(v99 + 280) = 0;
      *(v99 + 272) = 0;
      *(v99 + 240) = 0u;
      *(v99 + 256) = 0u;
      *v99 = &unk_1F5CC0F30;
      *(v99 + 12) = *(a1 + 12);
      *(v99 + 16) = *(a1 + 16);
      re::StringID::operator=((v99 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      re::DynamicArray<re::AnimationBlendTreeNodeDescription>::operator=(v100, (a1 + 456));
      re::DynamicArray<re::RigGraphConnection>::operator=(v5 + 120, (a1 + 496));
      *(v5 + 160) = *(a1 + 536);
      re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v101, (a1 + 544));
      v102 = re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v5 + 208, (a1 + 584));
      v103 = *(a1 + 312);
      re::DynamicArray<re::AssetHandle>::setCapacity((v5 + 248), v103);
      ++*(v5 + 272);
      *(v5 + 72) = *(a1 + 72);
      if (*(a1 + 312))
      {
        v104 = 0;
        do
        {
          re::DynamicArray<re::AssetHandle>::add((v5 + 248), v208);
          re::AssetHandle::~AssetHandle(v208);
          ++v104;
        }

        while (v104 < *(a1 + 312));
      }

      return v5;
    case 0x30:
      v5 = (*(*a3 + 32))(a3, 640, 8);
      re::EventTimelineAssetData::EventTimelineAssetData(v5);
      v147 = *(a1 + 80);
      v148 = v147 + 24;
      v150 = v149 + 80;
      re::StringID::operator=((v149 + 80), (v147 + 24));
      re::DynamicArray<float>::operator=(v5 + 96, (v147 + 40));
      re::DynamicArray<float>::operator=(v5 + 136, (v147 + 80));
      re::DynamicArray<float>::operator=(v5 + 176, (v147 + 120));
      if (v150 != v147 + 24)
      {
        if (*(v5 + 216))
        {
          re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(v5 + 216);
          if (*(v147 + 160))
          {
            v151 = *(v147 + 188);
            if (*(v5 + 240) < v151)
            {
              re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(v5 + 216, v151);
            }

            re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy((v5 + 216), v147 + 160);
            ++*(v5 + 256);
          }
        }

        else
        {
          v176 = *(v147 + 160);
          if (v176)
          {
            if (*(v147 + 188) <= 3u)
            {
              v177 = 3;
            }

            else
            {
              v177 = *(v147 + 188);
            }

            re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v5 + 216, v176, v177);
            re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy((v5 + 216), v147 + 160);
          }
        }
      }

      *(v5 + 264) = *(v147 + 208);
      re::DynamicArray<float>::operator=(v5 + 272, (v147 + 216));
      *(v5 + 312) = *(v147 + 256);
      re::DynamicArray<float>::operator=(v5 + 320, (v147 + 264));
      *(v5 + 360) = *(v147 + 304);
      re::DynamicArray<re::StringID>::operator=(v5 + 368, (v147 + 312));
      *(v5 + 408) = *(v147 + 352);
      if (v150 == v148)
      {
        *(v5 + 456) = *(v147 + 400);
        *(v5 + 504) = *(v147 + 448);
      }

      else
      {
        v178 = *(v147 + 360);
        if (*(v5 + 416))
        {
          if (v178)
          {
            re::DynamicArray<re::Vector4<float>>::copy((v5 + 416), v147 + 360);
          }

          else
          {
            *(v5 + 432) = 0;
          }

          ++*(v5 + 440);
        }

        else if (v178)
        {
          v179 = *(v147 + 376);
          *(v5 + 416) = v178;
          re::DynamicArray<re::Vector4<float>>::setCapacity((v5 + 416), v179);
          ++*(v5 + 440);
          re::DynamicArray<re::Vector4<float>>::copy((v5 + 416), v147 + 360);
        }

        *(v5 + 456) = *(v147 + 400);
        v180 = *(v147 + 408);
        if (*(v5 + 464))
        {
          v181 = (v5 + 464);
          if (v180)
          {
            re::DynamicArray<re::FixedArray<unsigned char>>::copy(v181, v147 + 408);
            ++*(v5 + 488);
          }

          else
          {
            re::DynamicArray<re::FixedArray<unsigned long>>::clear(v181);
          }
        }

        else if (v180)
        {
          v182 = *(v147 + 424);
          *(v5 + 464) = v180;
          re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity((v5 + 464), v182);
          ++*(v5 + 488);
          re::DynamicArray<re::FixedArray<unsigned char>>::copy((v5 + 464), v147 + 408);
        }

        *(v5 + 504) = *(v147 + 448);
        v183 = *(v147 + 456);
        if (*(v5 + 512))
        {
          if (v183)
          {
            re::DynamicArray<re::ObjCObject>::copy((v5 + 512), v147 + 456);
          }

          else
          {
            v185 = *(v5 + 528);
            *(v5 + 528) = 0;
            if (v185)
            {
              v186 = *(v5 + 544);
              v187 = 8 * v185;
              do
              {
                v188 = *v186++;

                v187 -= 8;
              }

              while (v187);
            }
          }

          ++*(v5 + 536);
        }

        else if (v183)
        {
          v184 = *(v147 + 472);
          *(v5 + 512) = v183;
          re::DynamicArray<re::ObjCObject>::setCapacity((v5 + 512), v184);
          ++*(v5 + 536);
          re::DynamicArray<re::ObjCObject>::copy((v5 + 512), v147 + 456);
        }
      }

      *(v5 + 552) = *(v147 + 496);
      re::FixedArray<unsigned char>::operator=((v5 + 560), (v147 + 504));
      re::ObjCObject::operator=((v5 + 584), (v147 + 528));
      *(v5 + 592) = *(v147 + 536);
      if (v150 != v148)
      {
        v189 = *(v147 + 544);
        if (*(v5 + 600))
        {
          if (v189)
          {
            re::DynamicArray<char const*>::copy((v5 + 600), v147 + 544);
          }

          else
          {
            *(v5 + 616) = 0;
          }

          ++*(v5 + 624);
        }

        else if (v189)
        {
          v190 = *(v147 + 560);
          *(v5 + 600) = v189;
          re::DynamicArray<float *>::setCapacity((v5 + 600), v190);
          ++*(v5 + 624);
          re::DynamicArray<char const*>::copy((v5 + 600), v147 + 544);
        }
      }

      *(v5 + 12) = *(a1 + 12);
      *(v5 + 16) = *(a1 + 16);
      re::StringID::operator=((v5 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      *(v5 + 72) = *(a1 + 72);
      return v5;
    case 0x32:
      v5 = (*(*a3 + 32))(a3, 312, 8);
      v14 = re::TimelineAssetData::TimelineAssetData(v5, 50);
      *(v14 + 72) = 0;
      *(v14 + 88) = 0;
      v15 = v14 + 88;
      *(v14 + 120) = 0;
      v16 = v14 + 120;
      *(v14 + 152) = 0;
      v17 = v14 + 152;
      *(v14 + 80) = 0x3FF0000000000000;
      *(v14 + 184) = 0;
      *(v14 + 192) = 0;
      v18 = (v14 + 192);
      *v14 = &unk_1F5CBFA28;
      *(v14 + 200) = 0;
      *(v14 + 208) = 0;
      *(v14 + 216) = 0;
      *(v14 + 304) = 0;
      *(v14 + 224) = 0u;
      *(v14 + 240) = 0u;
      *(v14 + 256) = 0;
      *(v14 + 264) = 0u;
      *(v14 + 280) = 0u;
      *(v14 + 296) = 0;
      *(v14 + 12) = *(a1 + 12);
      *(v14 + 16) = *(a1 + 16);
      re::StringID::operator=((v14 + 24), (a1 + 24));
      v19 = re::DynamicString::operator=((v5 + 40), (a1 + 40));
      if (*(a1 + 88) == 1)
      {
        v20 = *(*(a1 + 120) + 32);
        *&v208[0] = *(*(a1 + 120) + 40);
        *(&v208[0] + 1) = v20;
        re::DynamicArray<re::StringID>::operator=(v18, v208);
        re::FixedArray<float>::FixedArray(v205, (a1 + 96));
        LOBYTE(v208[0]) = 1;
        *(v208 + 8) = *v205;
        v21 = *&v205[16];
        memset(v205, 0, 24);
        *(&v208[1] + 1) = v21;
        re::Optional<re::SkeletalPoseAssetData>::operator=(v15, v208);
        if (LOBYTE(v208[0]) == 1 && *(&v208[0] + 1))
        {
          if (*&v208[1])
          {
            (*(**(&v208[0] + 1) + 40))();
            v208[1] = 0uLL;
          }

          *(&v208[0] + 1) = 0;
        }

        v19 = *v205;
        if (*v205 && *&v205[8])
        {
          v19 = (*(**v205 + 40))();
        }
      }

      if (*(a1 + 128) == 1)
      {
        v22 = *(*(a1 + 160) + 32);
        *&v208[0] = *(*(a1 + 160) + 40);
        *(&v208[0] + 1) = v22;
        re::DynamicArray<re::StringID>::operator=((v5 + 232), v208);
        re::FixedArray<float>::FixedArray(v205, (a1 + 136));
        LOBYTE(v208[0]) = 1;
        *(v208 + 8) = *v205;
        v23 = *&v205[16];
        memset(v205, 0, 24);
        *(&v208[1] + 1) = v23;
        re::Optional<re::SkeletalPoseAssetData>::operator=(v16, v208);
        if (LOBYTE(v208[0]) == 1 && *(&v208[0] + 1))
        {
          if (*&v208[1])
          {
            (*(**(&v208[0] + 1) + 40))();
            v208[1] = 0uLL;
          }

          *(&v208[0] + 1) = 0;
        }

        v19 = *v205;
        if (*v205 && *&v205[8])
        {
          v19 = (*(**v205 + 40))();
        }
      }

      if (*(a1 + 168) == 1)
      {
        v24 = *(*(a1 + 200) + 32);
        *&v208[0] = *(*(a1 + 200) + 40);
        *(&v208[0] + 1) = v24;
        re::DynamicArray<re::StringID>::operator=((v5 + 272), v208);
        re::FixedArray<float>::FixedArray(v205, (a1 + 176));
        LOBYTE(v208[0]) = 1;
        *(v208 + 8) = *v205;
        v25 = *&v205[16];
        memset(v205, 0, 24);
        *(&v208[1] + 1) = v25;
        re::Optional<re::SkeletalPoseAssetData>::operator=(v17, v208);
        if (LOBYTE(v208[0]) == 1 && *(&v208[0] + 1))
        {
          if (*&v208[1])
          {
            (*(**(&v208[0] + 1) + 40))();
            v208[1] = 0uLL;
          }

          *(&v208[0] + 1) = 0;
        }

        v19 = *v205;
        if (*v205 && *&v205[8])
        {
          v19 = (*(**v205 + 40))();
        }
      }

      *(v5 + 72) = *(a1 + 72);
      *(v5 + 80) = *(a1 + 80);
      v26 = *(a1 + 208);
      if (v26)
      {
LABEL_35:
      }

      else
      {
LABEL_109:
        v27 = 0;
      }

      *(v5 + 184) = v27;
      return v5;
    case 0x3B:
      v5 = (*(*a3 + 32))(a3, 168, 8);
      v76 = re::TimelineAssetData::TimelineAssetData(v5, 59);
      *(v76 + 72) = 256;
      *(v76 + 76) = 1023969417;
      *(v76 + 120) = 0;
      *(v76 + 128) = 0;
      v77 = (v76 + 128);
      *(v76 + 80) = 0u;
      *(v76 + 96) = 0u;
      *(v76 + 112) = 0;
      *v76 = &unk_1F5CC08E8;
      *(v76 + 160) = 0;
      *(v76 + 136) = 0;
      *(v76 + 144) = 0;
      *(v76 + 152) = 0;
      *(v76 + 12) = *(a1 + 12);
      *(v76 + 16) = *(a1 + 16);
      re::StringID::operator=((v76 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      if (!*(a1 + 96))
      {
        goto LABEL_165;
      }

      v78 = *(*(*(a1 + 104) + 24) + 32);
      *&v208[0] = *(*(*(a1 + 104) + 24) + 40);
      *(&v208[0] + 1) = v78;
      re::DynamicArray<re::StringID>::operator=(v77, v208);
      re::DynamicArray<re::SkeletalPoseAssetData>::resize((v5 + 88), *(a1 + 96));
      if (!*(a1 + 96))
      {
        goto LABEL_165;
      }

      v65 = 0;
      v79 = 0;
      v66 = 0;
      while (1)
      {
        v68 = *(v5 + 104);
        if (v68 <= v66)
        {
          break;
        }

        re::FixedArray<float>::operator=((*(v5 + 120) + v65), (*(a1 + 104) + v79));
        ++v66;
        v79 += 32;
        v65 += 24;
        if (v66 >= *(a1 + 96))
        {
LABEL_165:
          *(v5 + 72) = *(a1 + 72);
          *(v5 + 76) = *(a1 + 76);
          *(v5 + 84) = *(a1 + 84);
          return v5;
        }
      }

      goto LABEL_343;
    case 0x3C:
      v5 = (*(*a3 + 32))(a3, 184, 8);
      v6 = re::TimelineAssetData::TimelineAssetData(v5, 60);
      *(v6 + 72) = 0;
      *(v6 + 120) = 0;
      *(v6 + 136) = 0;
      *(v6 + 144) = 0;
      *(v6 + 152) = 0;
      *(v6 + 160) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(v6 + 80) = 0;
      *(v6 + 104) = 0;
      *(v6 + 176) = 1065353216;
      *(v6 + 180) = 0;
      v7 = &unk_1F5CBEFB8;
LABEL_167:
      *v6 = v7;
      *(v6 + 12) = *(a1 + 12);
      *(v6 + 16) = *(a1 + 16);
      re::StringID::operator=((v6 + 24), (a1 + 24));
      re::DynamicString::operator=((v5 + 40), (a1 + 40));
      *(v5 + 72) = *(a1 + 72);
      v132 = *(v5 + 80);
      *(v5 + 80) = v208[0];
      v208[0] = v132;
      v133 = *(v5 + 96);
      *(v5 + 96) = *&v208[1];
      *&v208[1] = v133;
      re::AssetHandle::~AssetHandle(v208);
      if (*(v5 + 104))
      {
        if ((*(a1 + 88) & 1) == 0)
        {
          *(v5 + 104) = 0;
          goto LABEL_173;
        }
      }

      else
      {
        if ((*(a1 + 88) & 1) == 0)
        {
          goto LABEL_173;
        }

        *(v5 + 104) = 1;
      }

      *(v5 + 112) = *(a1 + 96);
LABEL_173:
      if (*(v5 + 120))
      {
        if ((*(a1 + 104) & 1) == 0)
        {
          *(v5 + 120) = 0;
          goto LABEL_179;
        }
      }

      else
      {
        if ((*(a1 + 104) & 1) == 0)
        {
          goto LABEL_179;
        }

        *(v5 + 120) = 1;
      }

      *(v5 + 128) = *(a1 + 112);
LABEL_179:
      *(v5 + 136) = *(a1 + 120);
      *(v5 + 144) = *(a1 + 128);
      *(v5 + 152) = *(a1 + 136);
      if (*(v5 + 160))
      {
        if ((*(a1 + 144) & 1) == 0)
        {
          *(v5 + 160) = 0;
          goto LABEL_185;
        }
      }

      else
      {
        if ((*(a1 + 144) & 1) == 0)
        {
          goto LABEL_185;
        }

        *(v5 + 160) = 1;
      }

      *(v5 + 168) = *(a1 + 152);
LABEL_185:
      *(v5 + 176) = *(a1 + 160);
      *(v5 + 180) = *(a1 + 164);
      return v5;
    case 0x3D:
      v135 = (*(*a3 + 32))(a3, 200, 8);
      v158 = re::TimelineAssetData::TimelineAssetData(v135, 61);
      *(v158 + 72) = 256;
      *(v158 + 80) = 0;
      v137 = (v158 + 80);
      *(v158 + 104) = 0;
      *(v158 + 88) = 0;
      *(v158 + 96) = 0;
      *(v158 + 152) = 0;
      *(v158 + 160) = 0;
      v159 = (v158 + 160);
      *(v158 + 112) = 0u;
      *(v158 + 128) = 0u;
      *(v158 + 144) = 0;
      *v158 = &unk_1F5CC02B8;
      *(v158 + 192) = 0;
      *(v158 + 168) = 0;
      *(v158 + 176) = 0;
      *(v158 + 184) = 0;
      *(v158 + 12) = *(a1 + 12);
      *(v158 + 16) = *(a1 + 16);
      re::StringID::operator=((v158 + 24), (a1 + 24));
      re::DynamicString::operator=((v135 + 40), (a1 + 40));
      if (!*(a1 + 112))
      {
        goto LABEL_212;
      }

      v160 = *(*(*(a1 + 120) + 24) + 32);
      *&v208[0] = *(*(*(a1 + 120) + 24) + 40);
      *(&v208[0] + 1) = v160;
      re::DynamicArray<re::StringID>::operator=(v159, v208);
      re::DynamicArray<re::SkeletalPoseAssetData>::resize((v135 + 120), *(a1 + 112));
      if (!*(a1 + 112))
      {
        goto LABEL_212;
      }

      v161 = 0;
      v162 = 0;
      v68 = 0;
      while (1)
      {
        v65 = *(v135 + 136);
        if (v65 <= v68)
        {
          break;
        }

        re::FixedArray<float>::operator=((*(v135 + 152) + v161), (*(a1 + 120) + v162));
        ++v68;
        v162 += 32;
        v161 += 24;
        if (v68 >= *(a1 + 112))
        {
LABEL_212:
          *(v135 + 72) = *(a1 + 72);
          v163 = *(a1 + 88);
          *&v208[0] = *(a1 + 96);
          *(&v208[0] + 1) = v163;
          re::DynamicArray<float>::operator=(v137, v208);
          return 0;
        }
      }

      goto LABEL_351;
    default:
      re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Unexpected timeline type.", "!Unreachable code", "convertToAssetData", 1704);
      result = _os_crash("assertion failure: (!Unreachable code) Unexpected timeline type.");
      __break(1u);
      return result;
  }
}

uint64_t re::internal::convertToTimeline(re::internal *this, const re::TimelineAssetData *a2, re::Allocator *a3)
{
  if (this)
  {
    switch(*(this + 2))
    {
      case 1:
        v4 = re::Allocator::create<re::TimelineClip>(a2);
        return v4;
      case 2:
        v4 = re::Allocator::create<re::TimelineGroup>(a2);
        return v4;
      case 3:
        v4 = re::Allocator::create<re::FloatAnimationClip>(a2);
        return v4;
      case 4:
        v4 = re::Allocator::create<re::DoubleAnimationClip>(a2);
        return v4;
      case 5:
        v4 = re::Allocator::create<re::Vector2FAnimationClip>(a2);
        return v4;
      case 6:
        v4 = re::Allocator::create<re::Vector3FAnimationClip>(a2);
        return v4;
      case 7:
        v4 = re::Allocator::create<re::Vector4FAnimationClip>(a2);
        return v4;
      case 8:
        v4 = re::Allocator::create<re::QuaternionFAnimationClip>(a2);
        return v4;
      case 9:
        v4 = re::Allocator::create<re::SRTAnimationClip>(a2);
        return v4;
      case 0xA:
        v4 = re::Allocator::create<re::SkeletalPoseAnimationClip>(a2);
        return v4;
      case 0xB:
        v4 = re::Allocator::create<re::FloatAnimation>(a2);
        return v4;
      case 0xC:
        v4 = re::Allocator::create<re::DoubleAnimation>(a2);
        return v4;
      case 0xD:
        v4 = re::Allocator::create<re::Vector2FAnimation>(a2);
        return v4;
      case 0xE:
        v4 = re::Allocator::create<re::Vector3FAnimation>(a2);
        return v4;
      case 0xF:
        v4 = re::Allocator::create<re::Vector4FAnimation>(a2);
        return v4;
      case 0x10:
        v4 = re::Allocator::create<re::QuaternionFAnimation>(a2);
        return v4;
      case 0x11:
        v4 = re::Allocator::create<re::SRTAnimation>(a2);
        return v4;
      case 0x12:
        v4 = re::Allocator::create<re::SkeletalPoseAnimation>(a2);
        return v4;
      case 0x13:
        re::Allocator::create<re::FloatKeyframeAnimation>(a2);
        v4 = v23;
        return v4;
      case 0x14:
        re::Allocator::create<re::DoubleKeyframeAnimation>(a2);
        v4 = v13;
        return v4;
      case 0x15:
        re::Allocator::create<re::Vector2FKeyframeAnimation>(a2);
        v4 = v11;
        return v4;
      case 0x16:
        re::Allocator::create<re::Vector3FKeyframeAnimation>(a2);
        v4 = v15;
        return v4;
      case 0x17:
        re::Allocator::create<re::Vector4FKeyframeAnimation>(a2);
        v4 = v25;
        return v4;
      case 0x18:
        re::Allocator::create<re::QuaternionFKeyframeAnimation>(a2);
        v4 = v7;
        return v4;
      case 0x19:
        re::Allocator::create<re::SRTKeyframeAnimation>(a2);
        v4 = v24;
        return v4;
      case 0x1A:
        re::Allocator::create<re::SkeletalPoseKeyframeAnimation>(a2);
        v4 = v27;
        return v4;
      case 0x1B:
        re::Allocator::create<re::FloatSampledAnimation>(a2);
        v4 = v16;
        return v4;
      case 0x1C:
        re::Allocator::create<re::DoubleSampledAnimation>(a2);
        v4 = v26;
        return v4;
      case 0x1D:
        re::Allocator::create<re::Vector2FSampledAnimation>(a2);
        v4 = v20;
        return v4;
      case 0x1E:
        re::Allocator::create<re::Vector3FSampledAnimation>(a2);
        v4 = v21;
        return v4;
      case 0x1F:
        re::Allocator::create<re::Vector4FSampledAnimation>(a2);
        v4 = v17;
        return v4;
      case 0x20:
        re::Allocator::create<re::QuaternionFSampledAnimation>(a2);
        v4 = v18;
        return v4;
      case 0x21:
        re::Allocator::create<re::SRTSampledAnimation>(a2);
        v4 = v22;
        return v4;
      case 0x22:
        re::Allocator::create<re::SkeletalPoseSampledAnimation>(a2);
        v4 = v12;
        *(v4 + 112) = *(this + 192);
        *(v4 + 113) = *(this + 193);
        return v4;
      case 0x25:
        re::Allocator::create<re::OrbitAnimation>(a2);
        v4 = v8;
        *(v4 + 72) = *(this + 72);
        *(v4 + 76) = *(this + 19);
        *(v4 + 96) = *(this + 5);
        v9 = *(this + 6);
        v10 = *(this + 8);
        *(v4 + 144) = *(this + 7);
        *(v4 + 160) = v10;
        *(v4 + 128) = v9;
        *(v4 + 84) = *(this + 72);
        *(v4 + 80) = *(this + 37);
        return v4;
      case 0x26:
        v4 = re::Allocator::create<re::AudioAnimationTimeline>(a2);
        return v4;
      case 0x27:

        result = createAnimationBlendTreeFromAssetData<float>(this, a2);
        break;
      case 0x28:

        result = createAnimationBlendTreeFromAssetData<double>(this, a2);
        break;
      case 0x29:

        result = createAnimationBlendTreeFromAssetData<re::Vector2<float>>(this, a2);
        break;
      case 0x2A:

        result = createAnimationBlendTreeFromAssetData<re::Vector3<float>>(this, a2);
        break;
      case 0x2B:

        result = createAnimationBlendTreeFromAssetData<re::Vector4<float>>(this, a2);
        break;
      case 0x2C:

        result = createAnimationBlendTreeFromAssetData<re::Quaternion<float>>(this, a2);
        break;
      case 0x2D:

        result = createAnimationBlendTreeFromAssetData<re::GenericSRT<float>>(this, a2);
        break;
      case 0x2E:

        result = createAnimationBlendTreeFromAssetData<re::SkeletalPose>(this, a2);
        break;
      case 0x30:
        v4 = re::Allocator::create<re::EventTimeline>(a2);
        *(v4 + 72) = *(this + 72);
        return v4;
      case 0x32:
        v4 = re::Allocator::create<re::BlendShapeWeightsAnimation>(a2);
        return v4;
      case 0x3B:
        re::Allocator::create<re::BlendShapeWeightsSampledAnimation>(a2);
        v4 = v14;
        return v4;
      case 0x3C:
        v4 = re::Allocator::create<re::BlendShapeWeightsAnimationClip>(a2);
        return v4;
      case 0x3D:
        re::Allocator::create<re::BlendShapeWeightsKeyframeAnimation>(a2);
        v4 = v28;
        return v4;
      default:
        re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Unexpected timeline type.", "!Unreachable code", "convertToTimeline", 2074);
        result = _os_crash("assertion failure: (!Unreachable code) Unexpected timeline type.");
        __break(1u);
        break;
    }
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t re::Allocator::create<re::TimelineClip>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 160, 8);
  result = re::Timeline::Timeline(v1, 1);
  *result = &unk_1F5CB06F0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 96) = 0;
  *(result + 112) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 152) = 1065353216;
  *(result + 156) = 0;
  return result;
}

float anonymous namespace::convertTimelineClip(_anonymous_namespace_ *this, const re::TimelineAssetData *a2, re::Timeline *a3)
{
  *(a2 + 3) = *(this + 3);
  *(a2 + 16) = *(this + 16);
  re::StringID::operator=(a2 + 3, this + 3);
  re::DynamicString::operator=((a2 + 40), (this + 40));
  *(a2 + 9) = 0;
  if (*(a2 + 80))
  {
    if ((*(this + 96) & 1) == 0)
    {
      *(a2 + 80) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((*(this + 96) & 1) == 0)
    {
      goto LABEL_7;
    }

    *(a2 + 80) = 1;
  }

  *(a2 + 11) = *(this + 13);
LABEL_7:
  if (*(a2 + 96))
  {
    if ((*(this + 112) & 1) == 0)
    {
      *(a2 + 96) = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if ((*(this + 112) & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a2 + 96) = 1;
  }

  *(a2 + 13) = *(this + 15);
LABEL_13:
  *(a2 + 14) = *(this + 16);
  *(a2 + 120) = *(this + 136);
  *(a2 + 16) = *(this + 18);
  if ((*(a2 + 136) & 1) == 0)
  {
    if ((*(this + 152) & 1) == 0)
    {
      goto LABEL_19;
    }

    *(a2 + 136) = 1;
LABEL_18:
    *(a2 + 18) = *(this + 20);
    goto LABEL_19;
  }

  if (*(this + 152))
  {
    goto LABEL_18;
  }

  *(a2 + 136) = 0;
LABEL_19:
  result = *(this + 42);
  *(a2 + 38) = result;
  *(a2 + 156) = *(this + 172);
  return result;
}

void *re::Allocator::create<re::TimelineGroup>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 96, 8);
  result = re::Timeline::Timeline(v1, 2);
  *result = &unk_1F5CB0968;
  result[10] = 0;
  result[11] = 0;
  result[9] = 0;
  return result;
}

void anonymous namespace::convertTimelineGroup(_anonymous_namespace_ *this, const re::TimelineAssetData *a2, re::Timeline *a3)
{
  *(a2 + 3) = *(this + 3);
  *(a2 + 16) = *(this + 16);
  re::StringID::operator=(a2 + 3, this + 3);
  v5 = re::DynamicString::operator=((a2 + 40), (this + 40));
  v6 = *(this + 11);
  v7 = *(a2 + 10);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      *(*(a2 + 11) + 8 * i) = 0;
    }
  }
}

uint64_t re::Allocator::create<re::FloatAnimationClip>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 168, 8);
  result = re::Timeline::Timeline(v1, 3);
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 104) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 160) = 1065353216;
  *(result + 164) = 0;
  *result = &unk_1F5CC1220;
  return result;
}

float anonymous namespace::convertAnimationClip<re::FloatAnimationClipAssetData,re::FloatAnimationClip>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  *(a2 + 80) = 0;
  *(a2 + 72) = *(a1 + 72);
  if (*(a2 + 88))
  {
    if ((*(a1 + 104) & 1) == 0)
    {
      *(a2 + 88) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((*(a1 + 104) & 1) == 0)
    {
      goto LABEL_7;
    }

    *(a2 + 88) = 1;
  }

  *(a2 + 96) = *(a1 + 112);
LABEL_7:
  if (*(a2 + 104))
  {
    if ((*(a1 + 120) & 1) == 0)
    {
      *(a2 + 104) = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if ((*(a1 + 120) & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a2 + 104) = 1;
  }

  *(a2 + 112) = *(a1 + 128);
LABEL_13:
  *(a2 + 120) = *(a1 + 136);
  *(a2 + 128) = *(a1 + 144);
  *(a2 + 136) = *(a1 + 152);
  if ((*(a2 + 144) & 1) == 0)
  {
    if ((*(a1 + 160) & 1) == 0)
    {
      goto LABEL_19;
    }

    *(a2 + 144) = 1;
LABEL_18:
    *(a2 + 152) = *(a1 + 168);
    goto LABEL_19;
  }

  if (*(a1 + 160))
  {
    goto LABEL_18;
  }

  *(a2 + 144) = 0;
LABEL_19:
  result = *(a1 + 176);
  *(a2 + 160) = result;
  *(a2 + 164) = *(a1 + 180);
  return result;
}

uint64_t re::Allocator::create<re::DoubleAnimationClip>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 168, 8);
  result = re::Timeline::Timeline(v1, 4);
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 104) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 160) = 1065353216;
  *(result + 164) = 0;
  *result = &unk_1F5CC12D0;
  return result;
}

uint64_t re::Allocator::create<re::Vector2FAnimationClip>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 168, 8);
  result = re::Timeline::Timeline(v1, 5);
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 104) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 160) = 1065353216;
  *(result + 164) = 0;
  *result = &unk_1F5CC1380;
  return result;
}

uint64_t re::Allocator::create<re::Vector3FAnimationClip>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 168, 8);
  result = re::Timeline::Timeline(v1, 6);
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 104) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 160) = 1065353216;
  *(result + 164) = 0;
  *result = &unk_1F5CC1430;
  return result;
}

uint64_t re::Allocator::create<re::Vector4FAnimationClip>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 168, 8);
  result = re::Timeline::Timeline(v1, 7);
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 104) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 160) = 1065353216;
  *(result + 164) = 0;
  *result = &unk_1F5CC14E0;
  return result;
}

uint64_t re::Allocator::create<re::QuaternionFAnimationClip>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 168, 8);
  result = re::Timeline::Timeline(v1, 8);
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 104) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 160) = 1065353216;
  *(result + 164) = 0;
  *result = &unk_1F5CC1590;
  return result;
}

uint64_t re::Allocator::create<re::SRTAnimationClip>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 168, 8);
  result = re::Timeline::Timeline(v1, 9);
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 104) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 160) = 1065353216;
  *(result + 164) = 0;
  *result = &unk_1F5CC1640;
  return result;
}

uint64_t re::Allocator::create<re::SkeletalPoseAnimationClip>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 168, 8);
  result = re::Timeline::Timeline(v1, 10);
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 104) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 160) = 1065353216;
  *(result + 164) = 0;
  *result = &unk_1F5CC16F0;
  return result;
}

uint64_t re::Allocator::create<re::FloatAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 120, 8);
  result = re::Timeline::Timeline(v1, 11);
  *(result + 72) = 0;
  *(result + 80) = 0x3FF0000000000000;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *result = &unk_1F5CADEB8;
  return result;
}

uint64_t anonymous namespace::convertFromToByAnimation<re::FloatAnimationAssetData,re::FloatAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  v4 = re::DynamicString::operator=((a2 + 40), (a1 + 40));
  if (*(a2 + 88))
  {
    if ((*(a1 + 88) & 1) == 0)
    {
      *(a2 + 88) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((*(a1 + 88) & 1) == 0)
    {
      goto LABEL_7;
    }

    *(a2 + 88) = 1;
  }

  *(a2 + 92) = *(a1 + 92);
LABEL_7:
  if (*(a2 + 96))
  {
    if ((*(a1 + 96) & 1) == 0)
    {
      *(a2 + 96) = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if ((*(a1 + 96) & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a2 + 96) = 1;
  }

  *(a2 + 100) = *(a1 + 100);
LABEL_13:
  if (*(a2 + 104))
  {
    if ((*(a1 + 104) & 1) == 0)
    {
      *(a2 + 104) = 0;
      goto LABEL_19;
    }
  }

  else
  {
    if ((*(a1 + 104) & 1) == 0)
    {
      goto LABEL_19;
    }

    *(a2 + 104) = 1;
  }

  *(a2 + 108) = *(a1 + 108);
LABEL_19:
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  v5 = *(a1 + 112);
  if (v5)
  {
  }

  else
  {
    result = 0;
  }

  *(a2 + 112) = result;
  return result;
}

uint64_t re::Allocator::create<re::DoubleAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 144, 8);
  result = re::Timeline::Timeline(v1, 12);
  *(result + 72) = 0;
  *(result + 80) = 0x3FF0000000000000;
  *(result + 88) = 0;
  *(result + 104) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *result = &unk_1F5CC17A0;
  return result;
}

uint64_t anonymous namespace::convertFromToByAnimation<re::DoubleAnimationAssetData,re::DoubleAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  v4 = re::DynamicString::operator=((a2 + 40), (a1 + 40));
  if (*(a2 + 88))
  {
    if ((*(a1 + 88) & 1) == 0)
    {
      *(a2 + 88) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((*(a1 + 88) & 1) == 0)
    {
      goto LABEL_7;
    }

    *(a2 + 88) = 1;
  }

  *(a2 + 96) = *(a1 + 96);
LABEL_7:
  if (*(a2 + 104))
  {
    if ((*(a1 + 104) & 1) == 0)
    {
      *(a2 + 104) = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if ((*(a1 + 104) & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a2 + 104) = 1;
  }

  *(a2 + 112) = *(a1 + 112);
LABEL_13:
  if (*(a2 + 120))
  {
    if ((*(a1 + 120) & 1) == 0)
    {
      *(a2 + 120) = 0;
      goto LABEL_19;
    }
  }

  else
  {
    if ((*(a1 + 120) & 1) == 0)
    {
      goto LABEL_19;
    }

    *(a2 + 120) = 1;
  }

  *(a2 + 128) = *(a1 + 128);
LABEL_19:
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  v5 = *(a1 + 136);
  if (v5)
  {
  }

  else
  {
    result = 0;
  }

  *(a2 + 136) = result;
  return result;
}

uint64_t re::Allocator::create<re::Vector2FAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 144, 8);
  result = re::Timeline::Timeline(v1, 13);
  *(result + 72) = 0;
  *(result + 80) = 0x3FF0000000000000;
  *(result + 88) = 0;
  *(result + 104) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *result = &unk_1F5CC1850;
  return result;
}

uint64_t anonymous namespace::convertFromToByAnimation<re::Vector2FAnimationAssetData,re::Vector2FAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  v4 = re::DynamicString::operator=((a2 + 40), (a1 + 40));
  if (*(a2 + 88))
  {
    if ((*(a1 + 88) & 1) == 0)
    {
      *(a2 + 88) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((*(a1 + 88) & 1) == 0)
    {
      goto LABEL_7;
    }

    *(a2 + 88) = 1;
  }

  *(a2 + 96) = *(a1 + 96);
LABEL_7:
  if (*(a2 + 104))
  {
    if ((*(a1 + 104) & 1) == 0)
    {
      *(a2 + 104) = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if ((*(a1 + 104) & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a2 + 104) = 1;
  }

  *(a2 + 112) = *(a1 + 112);
LABEL_13:
  if (*(a2 + 120))
  {
    if ((*(a1 + 120) & 1) == 0)
    {
      *(a2 + 120) = 0;
      goto LABEL_19;
    }
  }

  else
  {
    if ((*(a1 + 120) & 1) == 0)
    {
      goto LABEL_19;
    }

    *(a2 + 120) = 1;
  }

  *(a2 + 128) = *(a1 + 128);
LABEL_19:
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  v5 = *(a1 + 136);
  if (v5)
  {
  }

  else
  {
    result = 0;
  }

  *(a2 + 136) = result;
  return result;
}

uint64_t re::Allocator::create<re::Vector3FAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 208, 16);
  result = re::Timeline::Timeline(v1, 14);
  *(result + 72) = 0;
  *(result + 80) = 0x3FF0000000000000;
  *(result + 96) = 0;
  *(result + 128) = 0;
  *(result + 160) = 0;
  *(result + 192) = 0;
  *result = &unk_1F5CC1900;
  return result;
}

uint64_t anonymous namespace::convertFromToByAnimation<re::Vector3FAnimationAssetData,re::Vector3FAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  v4 = re::DynamicString::operator=((a2 + 40), (a1 + 40));
  if (*(a2 + 96))
  {
    if ((*(a1 + 96) & 1) == 0)
    {
      *(a2 + 96) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((*(a1 + 96) & 1) == 0)
    {
      goto LABEL_7;
    }

    *(a2 + 96) = 1;
  }

  *(a2 + 112) = *(a1 + 112);
LABEL_7:
  if (*(a2 + 128))
  {
    if ((*(a1 + 128) & 1) == 0)
    {
      *(a2 + 128) = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if ((*(a1 + 128) & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a2 + 128) = 1;
  }

  *(a2 + 144) = *(a1 + 144);
LABEL_13:
  if (*(a2 + 160))
  {
    if ((*(a1 + 160) & 1) == 0)
    {
      *(a2 + 160) = 0;
      goto LABEL_19;
    }
  }

  else
  {
    if ((*(a1 + 160) & 1) == 0)
    {
      goto LABEL_19;
    }

    *(a2 + 160) = 1;
  }

  *(a2 + 176) = *(a1 + 176);
LABEL_19:
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  v5 = *(a1 + 192);
  if (v5)
  {
  }

  else
  {
    result = 0;
  }

  *(a2 + 192) = result;
  return result;
}

uint64_t re::Allocator::create<re::Vector4FAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 208, 16);
  result = re::Timeline::Timeline(v1, 15);
  *(result + 72) = 0;
  *(result + 80) = 0x3FF0000000000000;
  *(result + 96) = 0;
  *(result + 128) = 0;
  *(result + 160) = 0;
  *(result + 192) = 0;
  *result = &unk_1F5CC19B0;
  return result;
}

uint64_t re::Allocator::create<re::QuaternionFAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 208, 16);
  result = re::Timeline::Timeline(v1, 16);
  *(result + 72) = 0;
  *(result + 80) = 0x3FF0000000000000;
  *(result + 96) = 0;
  *(result + 128) = 0;
  *(result + 160) = 0;
  *(result + 192) = 0;
  *result = &unk_1F5CC1A60;
  return result;
}

uint64_t re::Allocator::create<re::SRTAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 304, 16);
  result = re::Timeline::Timeline(v1, 17);
  *(result + 72) = 0;
  *(result + 80) = 0x3FF0000000000000;
  *(result + 96) = 0;
  *(result + 160) = 0;
  *(result + 224) = 0;
  *(result + 288) = 0;
  *result = &unk_1F5CC1B10;
  return result;
}

uint64_t anonymous namespace::convertFromToByAnimation<re::SRTAnimationAssetData,re::SRTAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  v4 = re::DynamicString::operator=((a2 + 40), (a1 + 40));
  if (*(a2 + 96))
  {
    if ((*(a1 + 96) & 1) == 0)
    {
      *(a2 + 96) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((*(a1 + 96) & 1) == 0)
    {
      goto LABEL_7;
    }

    *(a2 + 96) = 1;
  }

  v5 = *(a1 + 112);
  v6 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v6;
  *(a2 + 112) = v5;
LABEL_7:
  if (*(a2 + 160))
  {
    if ((*(a1 + 160) & 1) == 0)
    {
      *(a2 + 160) = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if ((*(a1 + 160) & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a2 + 160) = 1;
  }

  v7 = *(a1 + 176);
  v8 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v8;
  *(a2 + 176) = v7;
LABEL_13:
  if (*(a2 + 224))
  {
    if ((*(a1 + 224) & 1) == 0)
    {
      *(a2 + 224) = 0;
      goto LABEL_19;
    }
  }

  else
  {
    if ((*(a1 + 224) & 1) == 0)
    {
      goto LABEL_19;
    }

    *(a2 + 224) = 1;
  }

  v9 = *(a1 + 240);
  v10 = *(a1 + 272);
  *(a2 + 256) = *(a1 + 256);
  *(a2 + 272) = v10;
  *(a2 + 240) = v9;
LABEL_19:
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  v11 = *(a1 + 288);
  if (v11)
  {
  }

  else
  {
    result = 0;
  }

  *(a2 + 288) = result;
  return result;
}

uint64_t re::Allocator::create<re::SkeletalPoseAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 384, 8);
  result = re::Timeline::Timeline(v1, 18);
  *(result + 72) = 0;
  *(result + 80) = 0x3FF0000000000000;
  *(result + 88) = 0;
  *(result + 184) = 0;
  *(result + 280) = 0;
  *(result + 376) = 0;
  *result = &unk_1F5CC1BC0;
  return result;
}

uint64_t anonymous namespace::convertFromToByAnimation<re::SkeletalPoseAnimationAssetData,re::SkeletalPoseAnimation>(uint64_t a1, uint64_t a2)
{
  v52 = *MEMORY[0x1E69E9840];
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  v4 = re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v37 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v5 = re::DynamicArray<re::SharedPtr<re::SkeletalPoseJointDefinition>>::setCapacity(&v33, 3uLL);
  ++v36;
  if (*(a1 + 88) == 1)
  {
    re::make::shared::object<re::SkeletalPoseJointDefinition,re::DynamicArray<re::StringID> const&,decltype(nullptr)>(&v47, a1 + 216);
    v6 = re::DynamicArray<re::SharedPtr<re::SkeletalPoseJointDefinition>>::add(&v33, &v47);
    if (v47)
    {
    }

    re::Optional<re::SkeletalPose>::Optional(&v47, &v39);
    re::Optional<re::SkeletalPose>::operator=(a2 + 88, &v47);
    if (v47 == 1)
    {
      re::SkeletalPose::~SkeletalPose((&v47 + 8));
    }

    re::SkeletalPose::~SkeletalPose(&v39);
    v5 = re::FixedArray<re::GenericSRT<float>>::operator=((a2 + 112), (a1 + 96));
  }

  if (*(a1 + 120) == 1)
  {
    v7 = v35;
    if (!v35)
    {
      goto LABEL_19;
    }

    v8 = 0;
    v9 = v37;
    v10 = *(a1 + 272);
    while (1)
    {
      v11 = v9[v8];
      if (*(v11 + 216) == v10)
      {
        if (!v10)
        {
LABEL_18:
          if (v8 >= v7)
          {
LABEL_19:
            re::make::shared::object<re::SkeletalPoseJointDefinition,re::DynamicArray<re::StringID> const&,decltype(nullptr)>(&v47, a1 + 256);
            v5 = re::DynamicArray<re::SharedPtr<re::SkeletalPoseJointDefinition>>::add(&v33, &v47);
            if (v47)
            {
            }

            v7 = v35;
            v8 = v35 - 1;
          }

          if (v7 > v8)
          {
            re::Optional<re::SkeletalPose>::Optional(&v47, &v39);
            re::Optional<re::SkeletalPose>::operator=(a2 + 184, &v47);
            if (v47 == 1)
            {
              re::SkeletalPose::~SkeletalPose((&v47 + 8));
            }

            re::SkeletalPose::~SkeletalPose(&v39);
            v5 = re::FixedArray<re::GenericSRT<float>>::operator=((a2 + 208), (a1 + 128));
            break;
          }

          v38 = 0;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v47 = 0u;
          v27 = MEMORY[0x1E69E9C10];
          v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v39 = 136315906;
          v40 = "operator[]";
          v41 = 1024;
          if (v28)
          {
            v29 = 3;
          }

          else
          {
            v29 = 2;
          }

          v42 = 789;
          v43 = 2048;
          v44 = v8;
          v45 = 2048;
          v46 = v7;
          _os_log_send_and_compose_impl(v29, &v38, &v47, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v39, 38, v33, v34);
          _os_crash_msg();
          __break(1u);
LABEL_61:
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
          v44 = v8;
          v45 = 2048;
          v46 = v7;
          _os_log_send_and_compose_impl(v32, &v38, &v47, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v39, 38, v33, v34);
          _os_crash_msg();
          __break(1u);
        }

        v12 = *(v11 + 224);
        v13 = *(a1 + 288);
        v14 = 16 * v10;
        while (1)
        {
          v5 = re::StringID::operator==(v12, v13);
          if (!v5)
          {
            break;
          }

          v12 += 2;
          v13 += 2;
          v14 -= 16;
          if (!v14)
          {
            goto LABEL_18;
          }
        }
      }

      if (++v8 == v7)
      {
        goto LABEL_19;
      }
    }
  }

  if (*(a1 + 152) != 1)
  {
    goto LABEL_45;
  }

  v7 = v35;
  if (!v35)
  {
    goto LABEL_38;
  }

  v8 = 0;
  v15 = v37;
  v16 = *(a1 + 312);
  while (1)
  {
    v17 = v15[v8];
    if (*(v17 + 216) == v16)
    {
      break;
    }

LABEL_35:
    if (++v8 == v7)
    {
      goto LABEL_38;
    }
  }

  if (v16)
  {
    v18 = *(v17 + 224);
    v19 = *(a1 + 328);
    v20 = 16 * v16;
    do
    {
      v5 = re::StringID::operator==(v18, v19);
      if (!v5)
      {
        goto LABEL_35;
      }

      v18 += 2;
      v19 += 2;
      v20 -= 16;
    }

    while (v20);
  }

  if (v8 >= v7)
  {
LABEL_38:
    re::make::shared::object<re::SkeletalPoseJointDefinition,re::DynamicArray<re::StringID> const&,decltype(nullptr)>(&v47, a1 + 296);
    v5 = re::DynamicArray<re::SharedPtr<re::SkeletalPoseJointDefinition>>::add(&v33, &v47);
    if (v47)
    {
    }

    v7 = v35;
    v8 = v35 - 1;
  }

  if (v7 <= v8)
  {
    goto LABEL_61;
  }

  re::Optional<re::SkeletalPose>::Optional(&v47, &v39);
  re::Optional<re::SkeletalPose>::operator=(a2 + 280, &v47);
  if (v47 == 1)
  {
    re::SkeletalPose::~SkeletalPose((&v47 + 8));
  }

  re::SkeletalPose::~SkeletalPose(&v39);
  v5 = re::FixedArray<re::GenericSRT<float>>::operator=((a2 + 304), (a1 + 160));
LABEL_45:
  v21 = v33;
  if (v33)
  {
    v22 = v37;
    if (v37)
    {
      if (v35)
      {
        v23 = 8 * v35;
        v24 = v37;
        do
        {
          if (*v24)
          {

            *v24 = 0;
          }

          ++v24;
          v23 -= 8;
        }

        while (v23);
      }

      v5 = (*(*v21 + 40))(v21, v22);
    }
  }

  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  v25 = *(a1 + 184);
  if (v25)
  {
  }

  else
  {
    result = 0;
  }

  *(a2 + 376) = result;
  return result;
}

double re::Allocator::create<re::FloatKeyframeAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 128, 8);
  v2 = re::Timeline::Timeline(v1, 19);
  *(v2 + 72) = 256;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *v2 = &unk_1F5CC1C70;
  return result;
}

_anonymous_namespace_ *anonymous namespace::convertKeyframeAnimation<re::FloatKeyframeAnimationAssetData,re::FloatKeyframeAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = *(a1 + 136);
  v7 = *(a1 + 152);
  v8 = v4;
  re::FixedArray<int>::operator=((a2 + 104), &v7);
  *(a2 + 72) = *(a1 + 72);
  v5 = *(a1 + 96);
  v7 = *(a1 + 112);
  v8 = v5;
  return re::FixedArray<int>::operator=((a2 + 80), &v7);
}

double re::Allocator::create<re::DoubleKeyframeAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 128, 8);
  v2 = re::Timeline::Timeline(v1, 20);
  *(v2 + 72) = 256;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *v2 = &unk_1F5CC1D20;
  return result;
}

_anonymous_namespace_ *anonymous namespace::convertKeyframeAnimation<re::DoubleKeyframeAnimationAssetData,re::DoubleKeyframeAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = *(a1 + 136);
  v7 = *(a1 + 152);
  v8 = v4;
  re::FixedArray<double>::operator=((a2 + 104), &v7);
  *(a2 + 72) = *(a1 + 72);
  v5 = *(a1 + 96);
  v7 = *(a1 + 112);
  v8 = v5;
  return re::FixedArray<int>::operator=((a2 + 80), &v7);
}

double re::Allocator::create<re::Vector2FKeyframeAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 128, 8);
  v2 = re::Timeline::Timeline(v1, 21);
  *(v2 + 72) = 256;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *v2 = &unk_1F5CC1DD0;
  return result;
}

_anonymous_namespace_ *anonymous namespace::convertKeyframeAnimation<re::Vector2FKeyframeAnimationAssetData,re::Vector2FKeyframeAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = *(a1 + 136);
  v7 = *(a1 + 152);
  v8 = v4;
  re::FixedArray<re::Vector2<float>>::operator=((a2 + 104), &v7);
  *(a2 + 72) = *(a1 + 72);
  v5 = *(a1 + 96);
  v7 = *(a1 + 112);
  v8 = v5;
  return re::FixedArray<int>::operator=((a2 + 80), &v7);
}

double re::Allocator::create<re::Vector3FKeyframeAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 128, 8);
  v2 = re::Timeline::Timeline(v1, 22);
  *(v2 + 72) = 256;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *v2 = &unk_1F5CC1E80;
  return result;
}

_anonymous_namespace_ *anonymous namespace::convertKeyframeAnimation<re::Vector3FKeyframeAnimationAssetData,re::Vector3FKeyframeAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = *(a1 + 136);
  v7 = *(a1 + 152);
  v8 = v4;
  re::FixedArray<re::Vector3<float>>::operator=((a2 + 104), &v7);
  *(a2 + 72) = *(a1 + 72);
  v5 = *(a1 + 96);
  v7 = *(a1 + 112);
  v8 = v5;
  return re::FixedArray<int>::operator=((a2 + 80), &v7);
}

double re::Allocator::create<re::Vector4FKeyframeAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 128, 8);
  v2 = re::Timeline::Timeline(v1, 23);
  *(v2 + 72) = 256;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *v2 = &unk_1F5CC1F30;
  return result;
}

_anonymous_namespace_ *anonymous namespace::convertKeyframeAnimation<re::Vector4FKeyframeAnimationAssetData,re::Vector4FKeyframeAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = *(a1 + 136);
  v7 = *(a1 + 152);
  v8 = v4;
  re::FixedArray<re::Vector4<float>>::operator=((a2 + 104), &v7);
  *(a2 + 72) = *(a1 + 72);
  v5 = *(a1 + 96);
  v7 = *(a1 + 112);
  v8 = v5;
  return re::FixedArray<int>::operator=((a2 + 80), &v7);
}

double re::Allocator::create<re::QuaternionFKeyframeAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 128, 8);
  v2 = re::Timeline::Timeline(v1, 24);
  *(v2 + 72) = 256;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *v2 = &unk_1F5CC1FE0;
  return result;
}

_anonymous_namespace_ *anonymous namespace::convertKeyframeAnimation<re::QuaternionFKeyframeAnimationAssetData,re::QuaternionFKeyframeAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = *(a1 + 136);
  v7 = *(a1 + 152);
  v8 = v4;
  re::FixedArray<re::Quaternion<float>>::operator=((a2 + 104), &v7);
  *(a2 + 72) = *(a1 + 72);
  v5 = *(a1 + 96);
  v7 = *(a1 + 112);
  v8 = v5;
  return re::FixedArray<int>::operator=((a2 + 80), &v7);
}

double re::Allocator::create<re::SRTKeyframeAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 128, 8);
  v2 = re::Timeline::Timeline(v1, 25);
  *(v2 + 72) = 256;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *v2 = &unk_1F5CC2090;
  return result;
}

_anonymous_namespace_ *anonymous namespace::convertKeyframeAnimation<re::SRTKeyframeAnimationAssetData,re::SRTKeyframeAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = *(a1 + 136);
  v7 = *(a1 + 152);
  v8 = v4;
  re::FixedArray<re::GenericSRT<float>>::operator=((a2 + 104), &v7);
  *(a2 + 72) = *(a1 + 72);
  v5 = *(a1 + 96);
  v7 = *(a1 + 112);
  v8 = v5;
  return re::FixedArray<int>::operator=((a2 + 80), &v7);
}

double re::Allocator::create<re::SkeletalPoseKeyframeAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 128, 8);
  v2 = re::Timeline::Timeline(v1, 26);
  *(v2 + 72) = 256;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *v2 = &unk_1F5CC2140;
  return result;
}

_anonymous_namespace_ *anonymous namespace::convertKeyframeAnimation<re::SkeletalPoseKeyframeAnimationAssetData,re::SkeletalPoseKeyframeAnimation>(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = re::make::shared::object<re::SkeletalPoseJointDefinition,re::DynamicArray<re::StringID> const&,decltype(nullptr)>(&v21, a1 + 184);
  v5 = *(a1 + 136);
  if (*(a1 + 136))
  {
    v6 = 0;
    v7 = 0;
    v8 = 16;
    while (1)
    {
      v9 = *(a2 + 112);
      if (v9 <= v7)
      {
        break;
      }

      re::SkeletalPose::init((*(a2 + 120) + v8 - 16), &v21);
      v9 = *(a1 + 136);
      if (v9 <= v7)
      {
        goto LABEL_14;
      }

      v9 = *(a2 + 112);
      if (v9 <= v7)
      {
        goto LABEL_18;
      }

      re::FixedArray<re::GenericSRT<float>>::operator=((*(a2 + 120) + v8), (*(a1 + 152) + v6));
      ++v7;
      v6 += 24;
      v8 += 88;
      if (v7 >= *(a1 + 136))
      {
        goto LABEL_7;
      }
    }

    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v12 = MEMORY[0x1E69E9C10];
    v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (v13)
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v26 = 468;
    v27 = 2048;
    v28 = v7;
    v29 = 2048;
    v30 = v9;
    _os_log_send_and_compose_impl(v14, &v22, &v31, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
LABEL_14:
    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (v16)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v26 = 797;
    v27 = 2048;
    v28 = v7;
    v29 = 2048;
    v30 = v9;
    _os_log_send_and_compose_impl(v17, &v22, &v31, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
LABEL_18:
    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v26 = 468;
    v27 = 2048;
    v28 = v7;
    v29 = 2048;
    v30 = v9;
    _os_log_send_and_compose_impl(v20, &v22, &v31, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
  }

LABEL_7:
  if (v21)
  {
  }

  *(a2 + 72) = *(a1 + 72);
  v10 = *(a1 + 96);
  *&v31 = *(a1 + 112);
  *(&v31 + 1) = v10;
  return re::FixedArray<int>::operator=((a2 + 80), &v31);
}

double re::Allocator::create<re::FloatSampledAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 112, 8);
  v2 = re::Timeline::Timeline(v1, 27);
  *(v2 + 72) = 256;
  *(v2 + 76) = 1023969417;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *v2 = &unk_1F5CC21F0;
  return result;
}

float anonymous namespace::convertSampledAnimation<re::FloatSampledAnimationAssetData,re::FloatSampledAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = *(a1 + 104);
  v6[0] = *(a1 + 120);
  v6[1] = v4;
  re::FixedArray<int>::operator=((a2 + 88), v6);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 76) = *(a1 + 76);
  result = *(a1 + 84);
  *(a2 + 84) = result;
  return result;
}

double re::Allocator::create<re::DoubleSampledAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 112, 8);
  v2 = re::Timeline::Timeline(v1, 28);
  *(v2 + 72) = 256;
  *(v2 + 76) = 1023969417;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *v2 = &unk_1F5CC22A0;
  return result;
}

float anonymous namespace::convertSampledAnimation<re::DoubleSampledAnimationAssetData,re::DoubleSampledAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = *(a1 + 104);
  v6[0] = *(a1 + 120);
  v6[1] = v4;
  re::FixedArray<double>::operator=((a2 + 88), v6);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 76) = *(a1 + 76);
  result = *(a1 + 84);
  *(a2 + 84) = result;
  return result;
}

double re::Allocator::create<re::Vector2FSampledAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 112, 8);
  v2 = re::Timeline::Timeline(v1, 29);
  *(v2 + 72) = 256;
  *(v2 + 76) = 1023969417;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *v2 = &unk_1F5CC2350;
  return result;
}

float anonymous namespace::convertSampledAnimation<re::Vector2FSampledAnimationAssetData,re::Vector2FSampledAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = *(a1 + 104);
  v6[0] = *(a1 + 120);
  v6[1] = v4;
  re::FixedArray<re::Vector2<float>>::operator=((a2 + 88), v6);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 76) = *(a1 + 76);
  result = *(a1 + 84);
  *(a2 + 84) = result;
  return result;
}

double re::Allocator::create<re::Vector3FSampledAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 112, 8);
  v2 = re::Timeline::Timeline(v1, 30);
  *(v2 + 72) = 256;
  *(v2 + 76) = 1023969417;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *v2 = &unk_1F5CC2400;
  return result;
}

float anonymous namespace::convertSampledAnimation<re::Vector3FSampledAnimationAssetData,re::Vector3FSampledAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = *(a1 + 104);
  v6[0] = *(a1 + 120);
  v6[1] = v4;
  re::FixedArray<re::Vector3<float>>::operator=((a2 + 88), v6);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 76) = *(a1 + 76);
  result = *(a1 + 84);
  *(a2 + 84) = result;
  return result;
}

double re::Allocator::create<re::Vector4FSampledAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 112, 8);
  v2 = re::Timeline::Timeline(v1, 31);
  *(v2 + 72) = 256;
  *(v2 + 76) = 1023969417;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *v2 = &unk_1F5CC24B0;
  return result;
}

float anonymous namespace::convertSampledAnimation<re::Vector4FSampledAnimationAssetData,re::Vector4FSampledAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = *(a1 + 104);
  v6[0] = *(a1 + 120);
  v6[1] = v4;
  re::FixedArray<re::Vector4<float>>::operator=((a2 + 88), v6);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 76) = *(a1 + 76);
  result = *(a1 + 84);
  *(a2 + 84) = result;
  return result;
}

double re::Allocator::create<re::QuaternionFSampledAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 112, 8);
  v2 = re::Timeline::Timeline(v1, 32);
  *(v2 + 72) = 256;
  *(v2 + 76) = 1023969417;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *v2 = &unk_1F5CC2560;
  return result;
}

float anonymous namespace::convertSampledAnimation<re::QuaternionFSampledAnimationAssetData,re::QuaternionFSampledAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = *(a1 + 104);
  v6[0] = *(a1 + 120);
  v6[1] = v4;
  re::FixedArray<re::Quaternion<float>>::operator=((a2 + 88), v6);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 76) = *(a1 + 76);
  result = *(a1 + 84);
  *(a2 + 84) = result;
  return result;
}

double re::Allocator::create<re::SRTSampledAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 112, 8);
  v2 = re::Timeline::Timeline(v1, 33);
  *(v2 + 72) = 256;
  *(v2 + 76) = 1023969417;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *v2 = &unk_1F5CC2610;
  return result;
}

float anonymous namespace::convertSampledAnimation<re::SRTSampledAnimationAssetData,re::SRTSampledAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = *(a1 + 104);
  v6[0] = *(a1 + 120);
  v6[1] = v4;
  re::FixedArray<re::GenericSRT<float>>::operator=((a2 + 88), v6);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 76) = *(a1 + 76);
  result = *(a1 + 84);
  *(a2 + 84) = result;
  return result;
}

double re::Allocator::create<re::SkeletalPoseSampledAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 120, 8);
  v2 = re::Timeline::Timeline(v1, 34);
  *(v2 + 72) = 256;
  *(v2 + 76) = 1023969417;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *v2 = &unk_1F5CAF198;
  *(v2 + 112) = 257;
  *(v2 + 114) = 1;
  return result;
}

float anonymous namespace::convertSampledAnimation<re::SkeletalPoseSampledAnimationAssetData,re::SkeletalPoseSampledAnimation>(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));
  re::DynamicString::operator=((a2 + 40), (a1 + 40));
  v4 = re::make::shared::object<re::SkeletalPoseJointDefinition,re::DynamicArray<re::StringID> const&,decltype(nullptr)>(&v20, a1 + 152);
  v5 = *(a1 + 104);
  if (*(a1 + 104))
  {
    v6 = 0;
    v7 = 0;
    v8 = 16;
    while (1)
    {
      v9 = *(a2 + 96);
      if (v9 <= v7)
      {
        break;
      }

      re::SkeletalPose::init((*(a2 + 104) + v8 - 16), &v20);
      v9 = *(a1 + 104);
      if (v9 <= v7)
      {
        goto LABEL_14;
      }

      v9 = *(a2 + 96);
      if (v9 <= v7)
      {
        goto LABEL_18;
      }

      re::FixedArray<re::GenericSRT<float>>::operator=((*(a2 + 104) + v8), (*(a1 + 120) + v6));
      ++v7;
      v6 += 24;
      v8 += 88;
      if (v7 >= *(a1 + 104))
      {
        goto LABEL_7;
      }
    }

    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v11 = MEMORY[0x1E69E9C10];
    v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v12)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v25 = 468;
    v26 = 2048;
    v27 = v7;
    v28 = 2048;
    v29 = v9;
    _os_log_send_and_compose_impl(v13, &v21, &v30, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
LABEL_14:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v15)
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v25 = 797;
    v26 = 2048;
    v27 = v7;
    v28 = 2048;
    v29 = v9;
    _os_log_send_and_compose_impl(v16, &v21, &v30, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
LABEL_18:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v25 = 468;
    v26 = 2048;
    v27 = v7;
    v28 = 2048;
    v29 = v9;
    _os_log_send_and_compose_impl(v19, &v21, &v30, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
  }

LABEL_7:
  if (v20)
  {
  }

  *(a2 + 72) = *(a1 + 72);
  *(a2 + 76) = *(a1 + 76);
  result = *(a1 + 84);
  *(a2 + 84) = result;
  return result;
}

double re::Allocator::create<re::OrbitAnimation>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 224, 16);

  return re::OrbitAnimation::OrbitAnimation(v1);
}

re::DynamicString *anonymous namespace::convertTimeline<re::OrbitAnimationAssetData,re::OrbitAnimation>(uint64_t a1, uint64_t a2)
{
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  re::StringID::operator=((a2 + 24), (a1 + 24));

  return re::DynamicString::operator=((a2 + 40), (a1 + 40));
}

uint64_t re::Allocator::create<re::AudioAnimationTimeline>(uint64_t a1)
{
  v1 = (*(*a1 + 32))(a1, 96, 8);
  result = re::Timeline::Timeline(v1, 38);
  *(result + 72) = 0;
  *result = &unk_1F5CB22C0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  return result;
}

__n128 anonymous namespace::convertAudioAnimationTimeline<re::AnimationStateTimelineAssetData,re::AudioAnimationTimeline>(__n128 *a1, __n128 *a2)
{
  a2->n128_u32[3] = a1->n128_u32[3];
  a2[1].n128_u8[0] = a1[1].n128_u8[0];
  re::StringID::operator=(&a2[1].n128_u64[1], &a1[1].n128_i64[1]);
  re::DynamicString::operator=(&a2[2].n128_i8[8], &a1[2].n128_i8[8]);
  result = a1[5];
  a2[5] = result;
  return result;
}

uint64_t createAnimationBlendTreeFromAssetData<float>(unint64_t a1, void *a2)
{
  v5 = v137;
  v169 = *MEMORY[0x1E69E9840];
  v100 = 0;
  v99 = 0;
  v98 = 0u;
  memset(v101, 0, sizeof(v101));
  v102 = 0x7FFFFFFFLL;
  re::StringID::invalid(v103);
  memset(v104, 0, sizeof(v104));
  v105 = 0;
  memset(v106, 0, sizeof(v106));
  memset(v108, 0, sizeof(v108));
  v107 = 0;
  v109 = 0;
  memset(v110, 0, sizeof(v110));
  v111 = 0;
  memset(v112, 0, sizeof(v112));
  v113 = 0;
  v116 = 0;
  memset(v115, 0, sizeof(v115));
  memset(v114, 0, sizeof(v114));
  v117 = 0x7FFFFFFFLL;
  v118 = 0;
  memset(v120, 0, sizeof(v120));
  v121 = 0;
  v122 = 0x7FFFFFFFLL;
  v127 = 0;
  v124 = 0;
  v125 = 0;
  v126 = 0;
  v123 = 0;
  v137[1] = 0;
  v137[0] = 0;
  v138 = 1;
  v141 = 0;
  v139 = 0;
  v140 = 0;
  v142 = 0;
  memset(v143, 0, sizeof(v143));
  re::RigEnvironment::init(v137, a2);
  v96 = a1;
  re::AnimationBlendTreeBuilder<float>::init(&v97, a1 + 80, a2);
  v134 = 0;
  v6 = v99;
  v99 = 0;
  if (v6)
  {
    v7 = 80 * v6;
    a2 = (*v101 + 64);
    do
    {
      re::StringID::destroyString(a2);
      re::StringID::destroyString((a2 - 2));
      re::DynamicArray<unsigned long>::deinit((a2 - 7));
      a2 += 10;
      v7 -= 80;
    }

    while (v7);
  }

  ++v100;
  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(&v101[8]);
  v135 = 0;
  v10 = v119;
  if (v119[2])
  {
    a1 = -1;
    v11 = 1;
    v12 = &str_67;
    v2 = 8;
    while (1)
    {
      v13 = v99;
      if (v99 >= *(&v98 + 1))
      {
        v14 = v99 + 1;
        if (*(&v98 + 1) < v99 + 1)
        {
          if (v98)
          {
            if (*(&v98 + 1))
            {
              v15 = 2 * *(&v98 + 1);
            }

            else
            {
              v15 = 8;
            }

            if (v15 <= v14)
            {
              v16 = v99 + 1;
            }

            else
            {
              v16 = v15;
            }

            re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(&v98, v16);
          }

          else
          {
            re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(&v98, v14);
            ++v100;
          }
        }

        v13 = v99;
      }

      v17 = *v101 + 80 * v13;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 16) = 0;
      *(v17 + 24) = 0;
      *v17 = -1;
      *(v17 + 8) = 0;
      *(v17 + 32) = 1;
      *(v17 + 56) = &str_67;
      *(v17 + 64) = 0;
      *(v17 + 72) = &str_67;
      v99 = (v99 + 1);
      ++v100;
      a2 = v135;
      v18 = v119[2];
      if (v18 <= v135)
      {
        break;
      }

      v8 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(&v101[8], (v119[4] + 88 * v135), &v135);
      ++v135;
      v10 = v119;
      if (v135 >= v119[2])
      {
        goto LABEL_20;
      }
    }

    v131[0] = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v47 = MEMORY[0x1E69E9C10];
    v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v48)
    {
      v49 = 3;
    }

    else
    {
      v49 = 2;
    }

    *&v152[14] = 797;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v18;
    _os_log_send_and_compose_impl(v49, v131, &v144, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_119:
    v131[0] = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v50 = MEMORY[0x1E69E9C10];
    v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v51)
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    *&v152[14] = 797;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v52, v131, &v144, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_123:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v53 = MEMORY[0x1E69E9C10];
    v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v54)
    {
      v55 = 3;
    }

    else
    {
      v55 = 2;
    }

    *&v152[14] = 797;
    *&v152[18] = 2048;
    *&v152[20] = v12;
    v153 = 2048;
    *v154 = v18;
    _os_log_send_and_compose_impl(v55, &v136, &v144, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_127:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v56 = MEMORY[0x1E69E9C10];
    v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v57)
    {
      v58 = 3;
    }

    else
    {
      v58 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = v11;
    v153 = 2048;
    *v154 = v18;
    _os_log_send_and_compose_impl(v58, &v136, &v144, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_131:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v59 = MEMORY[0x1E69E9C10];
    v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v60)
    {
      v61 = 3;
    }

    else
    {
      v61 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = v18;
    v153 = 2048;
    *v154 = v11;
    _os_log_send_and_compose_impl(v61, &v136, &v144, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_135:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v62 = MEMORY[0x1E69E9C10];
    v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v63)
    {
      v64 = 3;
    }

    else
    {
      v64 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = v18;
    v153 = 2048;
    *v154 = v11;
    _os_log_send_and_compose_impl(v64, &v136, &v144, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_139:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v65 = MEMORY[0x1E69E9C10];
    v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v66)
    {
      v67 = 3;
    }

    else
    {
      v67 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = v11;
    v153 = 2048;
    *v154 = v18;
    _os_log_send_and_compose_impl(v67, &v136, &v144, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_143:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v68 = MEMORY[0x1E69E9C10];
    v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v69)
    {
      v70 = 3;
    }

    else
    {
      v70 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v70, v131, &v144, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_147:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v71 = MEMORY[0x1E69E9C10];
    v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v72)
    {
      v73 = 3;
    }

    else
    {
      v73 = 2;
    }

    *&v152[14] = 797;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v73, v131, &v144, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_151:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v74 = MEMORY[0x1E69E9C10];
    v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v75)
    {
      v76 = 3;
    }

    else
    {
      v76 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v76, v131, &v144, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_155:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v77 = MEMORY[0x1E69E9C10];
    v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v78)
    {
      v79 = 3;
    }

    else
    {
      v79 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v79, v131, &v144, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_159:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v80 = MEMORY[0x1E69E9C10];
    v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v81)
    {
      v82 = 3;
    }

    else
    {
      v82 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v82, v131, &v144, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
    goto LABEL_163;
  }

LABEL_20:
  if (v10[7])
  {
    v19 = 0;
    v12 = 0;
    while (1)
    {
      v5 = v10[9];
      v11 = &v5[v19];
      re::StringID::StringID(v131, &v5[v19 + 4]);
      v18 = v119[7];
      if (v18 <= v12)
      {
        goto LABEL_123;
      }

      re::StringID::StringID(&v135, (v119[9] + v19 * 8 + 112));
      v2 = 0x94D049BB133111EBLL;
      v20 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v11 + 80) >> 31) ^ (*(v11 + 80) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v11 + 80) >> 31) ^ (*(v11 + 80) >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v101[8], (v11 + 80), v20 ^ (v20 >> 31), &v144);
      v21 = HIDWORD(v144);
      v22 = *&v101[24];
      v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v5[v19] >> 31) ^ (v5[v19] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v5[v19] >> 31) ^ (v5[v19] >> 1))) >> 27));
      a1 = 0x7FFFFFFFLL;
      v24 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v101[8], &v5[v19], v23 ^ (v23 >> 31), &v144);
      if (HIDWORD(v144) == 0x7FFFFFFF || v21 == 0x7FFFFFFF)
      {
        break;
      }

      a2 = (v22 + 32 * v21);
      v11 = a2[3];
      v18 = v99;
      if (v99 <= v11)
      {
        goto LABEL_127;
      }

      v5 = (*&v101[24] + 32 * HIDWORD(v144));
      re::DynamicArray<unsigned long>::add((*v101 + 80 * v11 + 8), v5 + 3);
      v18 = v5[3];
      v11 = v99;
      if (v99 <= v18)
      {
        goto LABEL_131;
      }

      v25 = *v101;
      *(*v101 + 80 * v18) = a2[3];
      v18 = v5[3];
      if (v11 <= v18)
      {
        goto LABEL_135;
      }

      re::StringID::operator=((v25 + 80 * v18 + 48), &v135);
      v11 = v5[3];
      v18 = v99;
      if (v99 <= v11)
      {
        goto LABEL_139;
      }

      v26 = re::StringID::operator=((*v101 + 80 * v11 + 64), v131);
      if (v135)
      {
        if (v135)
        {
        }
      }

      if (v131[0])
      {
        if (v131[0])
        {
        }
      }

      ++v12;
      v10 = v119;
      v19 += 20;
      if (v12 >= v119[7])
      {
        goto LABEL_43;
      }
    }

    if (v135)
    {
      if (v135)
      {
      }
    }

    if (v131[0])
    {
      if (v131[0])
      {
      }
    }
  }

LABEL_43:
  v5 = v137;
  if (!v99)
  {
LABEL_83:
    re::DynamicString::format(&v144, "A root node without a parent was not found.", v9);
    goto LABEL_100;
  }

  a1 = 0;
  v12 = 0;
  v27 = 0;
  a2 = 0;
  v18 = -1;
  v28 = 32;
  v11 = re::AnimationBlendTreeNodeDescription::kClip;
  while (1)
  {
    v2 = v119[2];
    if (v2 <= a2)
    {
      goto LABEL_119;
    }

    isBlend = re::AnimationBlendTreeNodeDescription::isBlend((v119[4] + v28 - 32));
    if (isBlend)
    {
      v2 = v99;
      if (v99 <= a2)
      {
        goto LABEL_143;
      }

      if (*(*v101 + a1) == -1)
      {
        v30 = v18 == -1;
        v18 = a2;
        if (!v30)
        {
          goto LABEL_95;
        }
      }

      v31 = *(*v101 + a1 + 24);
      if (v31 <= 1)
      {
        v41 = "A blend node was found, with missing inputs.";
        goto LABEL_99;
      }

      if (v31 != 2)
      {
        if (v118 == 1)
        {
          goto LABEL_85;
        }

        v27 = 1;
      }

      goto LABEL_72;
    }

    v2 = v119[2];
    if (v2 <= a2)
    {
      goto LABEL_147;
    }

    v32 = (v119[4] + v28);
    if (re::StringID::operator==(&v32[-1], re::AnimationBlendTreeNodeDescription::kClip))
    {
      v33 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v120, v32, &v134);
      ++v134;
      v2 = v99;
      if (v99 <= a2)
      {
        goto LABEL_151;
      }

      if (*(*v101 + a1) >= v99)
      {
        v41 = "A clip node was found, with no parent blend operation.";
        goto LABEL_99;
      }

      if (*(*v101 + a1 + 24))
      {
        v41 = "All clip nodes should be leaf nodes, but one found with child.";
        goto LABEL_99;
      }

      goto LABEL_72;
    }

    isBlend = re::StringID::operator==(&v32[-1], re::AnimationBlendTreeNodeDescription::kInput);
    if (!isBlend)
    {
      v2 = v99;
      if (v99 <= a2)
      {
        goto LABEL_159;
      }

      if (*(*v101 + a1) == -1)
      {
        v30 = v18 == -1;
        v18 = a2;
        if (!v30)
        {
LABEL_95:
          v41 = "Multiple roots found.";
          goto LABEL_99;
        }
      }

      v118 = 1;
      if (v27)
      {
LABEL_85:
        v41 = "A blend node was found with too many inputs. Blend nodes that use a rig must have exactly 2 inputs.";
        goto LABEL_99;
      }

      v27 = 0;
      goto LABEL_72;
    }

    v2 = v99;
    if (v99 <= a2)
    {
      goto LABEL_155;
    }

    if (*(*v101 + a1) >= v99)
    {
      v41 = "An external sample or input was found, with no parent blend operation.";
      goto LABEL_99;
    }

    if (*(*v101 + a1 + 24))
    {
      break;
    }

    ++v12;
LABEL_72:
    a2 = (a2 + 1);
    a1 += 80;
    v28 += 88;
    if (a2 >= v2)
    {
      if (v18 != -1)
      {
        a1 = v119[2];
        if (a1 > v18)
        {
          v34 = v119[4];
          v35 = (*(*v97 + 32))(v97, 624, 8);
          v36 = re::Timeline::Timeline(v35, 39);
          *(v36 + 72) = 0;
          *(v36 + 80) = 0;
          v37 = v36 + 80;
          *(v36 + 88) = 0u;
          *(v36 + 104) = 0;
          *(v36 + 112) = 0u;
          *(v36 + 128) = 0u;
          *(v36 + 144) = 0;
          *(v36 + 152) = 0u;
          *(v36 + 168) = 0u;
          *(v36 + 184) = 0;
          *(v36 + 192) = 0u;
          *(v36 + 208) = 0u;
          *(v36 + 224) = 0;
          *(v36 + 232) = 0u;
          *(v36 + 248) = 0u;
          *(v36 + 264) = 0;
          *(v36 + 528) = 0;
          *(v36 + 536) = 0;
          *(v36 + 568) = 0;
          *(v36 + 560) = 0;
          *(v36 + 544) = 0u;
          *(v36 + 616) = 0;
          *(v36 + 576) = 0u;
          *(v36 + 592) = 0u;
          *(v36 + 608) = 0;
          *(v36 + 488) = 0u;
          *(v36 + 504) = 0u;
          *(v36 + 520) = 0;
          *(v36 + 272) = 0u;
          *(v36 + 288) = 0u;
          *(v36 + 304) = 0u;
          *(v36 + 320) = 0u;
          *(v36 + 336) = 0u;
          *(v36 + 352) = 0u;
          *(v36 + 368) = 0u;
          *(v36 + 384) = 0u;
          *(v36 + 400) = 0;
          *(v36 + 440) = 0;
          *(v36 + 408) = 0u;
          *(v36 + 424) = 0u;
          *(v36 + 480) = 0;
          *(v36 + 448) = 0u;
          *(v36 + 464) = 0u;
          *v36 = &unk_1F5CC26C0;
          re::FixedArray<unsigned long>::init<>((v36 + 304), v97, v134);
          re::FixedArray<unsigned long>::init<>((v35 + 328), v97, v134 + 1);
          re::FixedArray<unsigned long>::init<>((v35 + 352), v97, v134);
          *(v35 + 416) = v97;
          re::DynamicArray<re::StringID>::setCapacity((v35 + 416), v12);
          ++*(v35 + 440);
          v135 = 0;
          v136 = 0;
          if (v118 == 1)
          {
            re::RigGraphDefinitionBuilder::init(&v114[1], v97, v103, v137);
            re::AnimationBlendTreeBuilder<float>::buildRig(v131, &v97, v35, v18, &v135);
            if (LOBYTE(v131[0]) != 1)
            {
              v42 = v133;
              v43 = v131[3];
              v44 = v132;
              goto LABEL_101;
            }

            re::RigGraphDefinitionBuilder::promoteParameter(&v114[1], *(v34 + 88 * v18 + 8), "output", "output", "", 0, v128);
            if ((v128[0] & 1) == 0 && v129)
            {
              if (BYTE8(v129))
              {
                (*(*v129 + 40))();
              }

              v130 = 0u;
              v129 = 0u;
            }

            v155 = 0;
            *&v154[2] = 0;
            v156 = 1;
            v159 = 0;
            v157 = 0;
            v158 = 0;
            v160 = 0;
            v163 = 0;
            v161 = 0;
            v162 = 0;
            v168 = 0;
            v165 = 0u;
            v166 = 0u;
            v164 = 0;
            v167 = 0;
            *&v152[16] = v137;
            v152[24] = 0;
            *v152 = v97;
            *&v152[8] = 0;
            re::RigGraphCompilation::init(&v154[2], v97);
            re::RigGraphSystem::buildFromDefinition(v97, v103, &v144);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v37, &v144);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v35 + 120, &v146 + 1);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v35 + 160, v149);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v35 + 200, v150);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v35 + 240, v151);
            re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(v151);
            re::DynamicArray<re::StringID>::deinit(v150);
            re::DynamicArray<re::RigGraphNodeChild>::deinit(v149);
            re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v146 + 8);
            re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v144);
            re::RigGraphCompilation::~RigGraphCompilation(&v154[2]);
          }

          else
          {
            re::DynamicArray<re::StringID>::resize((v35 + 416), v12);
            re::FixedArray<re::AnimationBlendTreeNode>::init<>((v35 + 280), v97, v99);
            *(v35 + 376) = v97;
            re::DynamicArray<re::StringID>::setCapacity((v35 + 376), 0);
            ++*(v35 + 400);
            re::DynamicArray<re::StringID>::resize((v35 + 376), v99);
            if (!*(v35 + 288))
            {
LABEL_167:
              v131[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              v86 = MEMORY[0x1E69E9C10];
              v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v152 = 136315906;
              *&v152[4] = "operator[]";
              *&v152[12] = 1024;
              if (v87)
              {
                v88 = 3;
              }

              else
              {
                v88 = 2;
              }

              *&v152[14] = 468;
              *&v152[18] = 2048;
              *&v152[20] = 0;
              v153 = 2048;
              *v154 = 0;
              _os_log_send_and_compose_impl(v88, v131, &v144, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
              _os_crash_msg();
              __break(1u);
              goto LABEL_171;
            }

            v38 = *(v35 + 296);
            *v38 = 1065353216;
            a1 = v99;
            if (v99 <= v18)
            {
LABEL_171:
              v131[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              v89 = MEMORY[0x1E69E9C10];
              v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v152 = 136315906;
              *&v152[4] = "operator[]";
              *&v152[12] = 1024;
              if (v90)
              {
                v91 = 3;
              }

              else
              {
                v91 = 2;
              }

              *&v152[14] = 789;
              *&v152[18] = 2048;
              *&v152[20] = v18;
              v153 = 2048;
              *v154 = a1;
              _os_log_send_and_compose_impl(v91, v131, &v144, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
              _os_crash_msg();
              __break(1u);
LABEL_175:
              v131[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              v92 = MEMORY[0x1E69E9C10];
              v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v152 = 136315906;
              *&v152[4] = "operator[]";
              *&v152[12] = 1024;
              if (v93)
              {
                v94 = 3;
              }

              else
              {
                v94 = 2;
              }

              *&v152[14] = 797;
              *&v152[18] = 2048;
              *&v152[20] = v18;
              v153 = 2048;
              *v154 = a1;
              _os_log_send_and_compose_impl(v94, v131, &v144, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
              _os_crash_msg();
              __break(1u);
            }

            *(v38 + 6) = *(*v101 + 80 * v18 + 24);
            a1 = v119[2];
            if (a1 <= v18)
            {
              goto LABEL_175;
            }

            *(v38 + 7) = re::StringID::operator==((v119[4] + 88 * v18 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive);
            *(v38 + 4) = 1;
            re::AnimationBlendTreeBuilder<float>::addChildren(&v97, v35, v18, 1, &v135, &v136);
          }

          if (v125)
          {
            for (i = 0; i < v125; ++i)
            {
              re::AnimationBlendTree<float>::addClip(v35, i, *(v127 + 8 * i));
            }
          }

          v40 = v119;
          re::DynamicArray<re::AnimationBlendTreeNodeDescription>::operator=(v35 + 456, v119);
          re::DynamicArray<re::RigGraphConnection>::operator=(v35 + 496, v40 + 5);
          *(v35 + 536) = *(v40 + 20);
          re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v35 + 544, v40 + 11);
          re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v35 + 584, v40 + 16);
          *(v35 + 12) = *(v96 + 12);
          *(v35 + 16) = *(v96 + 16);
          re::StringID::operator=((v35 + 24), (v96 + 24));
          re::DynamicString::operator=((v35 + 40), (v96 + 40));
          *(v35 + 72) = *(v96 + 72);
          goto LABEL_104;
        }

LABEL_163:
        v131[0] = 0;
        *(v5 + 21) = 0u;
        *(v5 + 19) = 0u;
        *(v5 + 17) = 0u;
        *(v5 + 15) = 0u;
        *(v5 + 13) = 0u;
        v83 = MEMORY[0x1E69E9C10];
        v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v152 = 136315906;
        *&v152[4] = "operator[]";
        *&v152[12] = 1024;
        if (v84)
        {
          v85 = 3;
        }

        else
        {
          v85 = 2;
        }

        *&v152[14] = 797;
        *&v152[18] = 2048;
        *&v152[20] = v18;
        v153 = 2048;
        *v154 = a1;
        _os_log_send_and_compose_impl(v85, v131, &v144, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
        _os_crash_msg();
        __break(1u);
        goto LABEL_167;
      }

      goto LABEL_83;
    }
  }

  v41 = "All external input nodes should be leaf nodes, but one found with child.";
LABEL_99:
LABEL_100:
  v42 = v145;
  v43 = v144;
  v44 = BYTE8(v144);
LABEL_101:
  v35 = 0;
  if (v43 && (v44 & 1) != 0)
  {
    (*(*v43 + 40))(v43, v42);
    v35 = 0;
  }

LABEL_104:
  re::BindNode::deinit(&v143[8]);
  re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit(v137);
  if (v137[0] && (v138 & 1) == 0)
  {
    (*(*v137[0] + 40))();
  }

  if (v123)
  {
    if (v127)
    {
      (*(*v123 + 40))();
    }

    v127 = 0;
    v124 = 0;
    v125 = 0;
    v123 = 0;
    ++v126;
  }

  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v120);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v115);
  re::DynamicArray<re::RigGraphInputValue>::deinit(&v112[8]);
  re::DynamicArray<re::RigGraphConnection>::deinit(&v110[1]);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v108[8]);
  re::DynamicArray<re::RigGraphParameterProxy>::deinit(v106 + 8);
  v45 = re::DynamicArray<re::RigGraphParameterProxy>::deinit(v104);
  if (v103[0])
  {
    if (v103[0])
    {
    }
  }

  v103[0] = 0;
  v103[1] = &str_67;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v101[8]);
  re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::deinit(&v98);
  return v35;
}

uint64_t createAnimationBlendTreeFromAssetData<double>(unint64_t a1, void *a2)
{
  v5 = v137;
  v169 = *MEMORY[0x1E69E9840];
  v100 = 0;
  v99 = 0;
  v98 = 0u;
  memset(v101, 0, sizeof(v101));
  v102 = 0x7FFFFFFFLL;
  re::StringID::invalid(v103);
  memset(v104, 0, sizeof(v104));
  v105 = 0;
  memset(v106, 0, sizeof(v106));
  memset(v108, 0, sizeof(v108));
  v107 = 0;
  v109 = 0;
  memset(v110, 0, sizeof(v110));
  v111 = 0;
  memset(v112, 0, sizeof(v112));
  v113 = 0;
  v116 = 0;
  memset(v115, 0, sizeof(v115));
  memset(v114, 0, sizeof(v114));
  v117 = 0x7FFFFFFFLL;
  v118 = 0;
  memset(v120, 0, sizeof(v120));
  v121 = 0;
  v122 = 0x7FFFFFFFLL;
  v127 = 0;
  v124 = 0;
  v125 = 0;
  v126 = 0;
  v123 = 0;
  v137[1] = 0;
  v137[0] = 0;
  v138 = 1;
  v141 = 0;
  v139 = 0;
  v140 = 0;
  v142 = 0;
  memset(v143, 0, sizeof(v143));
  re::RigEnvironment::init(v137, a2);
  v96 = a1;
  re::AnimationBlendTreeBuilder<float>::init(&v97, a1 + 80, a2);
  v134 = 0;
  v6 = v99;
  v99 = 0;
  if (v6)
  {
    v7 = 80 * v6;
    a2 = (*v101 + 64);
    do
    {
      re::StringID::destroyString(a2);
      re::StringID::destroyString((a2 - 2));
      re::DynamicArray<unsigned long>::deinit((a2 - 7));
      a2 += 10;
      v7 -= 80;
    }

    while (v7);
  }

  ++v100;
  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(&v101[8]);
  v135 = 0;
  v10 = v119;
  if (v119[2])
  {
    a1 = -1;
    v11 = 1;
    v12 = &str_67;
    v2 = 8;
    while (1)
    {
      v13 = v99;
      if (v99 >= *(&v98 + 1))
      {
        v14 = v99 + 1;
        if (*(&v98 + 1) < v99 + 1)
        {
          if (v98)
          {
            if (*(&v98 + 1))
            {
              v15 = 2 * *(&v98 + 1);
            }

            else
            {
              v15 = 8;
            }

            if (v15 <= v14)
            {
              v16 = v99 + 1;
            }

            else
            {
              v16 = v15;
            }

            re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(&v98, v16);
          }

          else
          {
            re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(&v98, v14);
            ++v100;
          }
        }

        v13 = v99;
      }

      v17 = *v101 + 80 * v13;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 16) = 0;
      *(v17 + 24) = 0;
      *v17 = -1;
      *(v17 + 8) = 0;
      *(v17 + 32) = 1;
      *(v17 + 56) = &str_67;
      *(v17 + 64) = 0;
      *(v17 + 72) = &str_67;
      v99 = (v99 + 1);
      ++v100;
      a2 = v135;
      v18 = v119[2];
      if (v18 <= v135)
      {
        break;
      }

      v8 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(&v101[8], (v119[4] + 88 * v135), &v135);
      ++v135;
      v10 = v119;
      if (v135 >= v119[2])
      {
        goto LABEL_20;
      }
    }

    v131[0] = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v47 = MEMORY[0x1E69E9C10];
    v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v48)
    {
      v49 = 3;
    }

    else
    {
      v49 = 2;
    }

    *&v152[14] = 797;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v18;
    _os_log_send_and_compose_impl(v49, v131, &v144, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_119:
    v131[0] = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v50 = MEMORY[0x1E69E9C10];
    v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v51)
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    *&v152[14] = 797;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v52, v131, &v144, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_123:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v53 = MEMORY[0x1E69E9C10];
    v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v54)
    {
      v55 = 3;
    }

    else
    {
      v55 = 2;
    }

    *&v152[14] = 797;
    *&v152[18] = 2048;
    *&v152[20] = v12;
    v153 = 2048;
    *v154 = v18;
    _os_log_send_and_compose_impl(v55, &v136, &v144, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_127:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v56 = MEMORY[0x1E69E9C10];
    v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v57)
    {
      v58 = 3;
    }

    else
    {
      v58 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = v11;
    v153 = 2048;
    *v154 = v18;
    _os_log_send_and_compose_impl(v58, &v136, &v144, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_131:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v59 = MEMORY[0x1E69E9C10];
    v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v60)
    {
      v61 = 3;
    }

    else
    {
      v61 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = v18;
    v153 = 2048;
    *v154 = v11;
    _os_log_send_and_compose_impl(v61, &v136, &v144, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_135:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v62 = MEMORY[0x1E69E9C10];
    v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v63)
    {
      v64 = 3;
    }

    else
    {
      v64 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = v18;
    v153 = 2048;
    *v154 = v11;
    _os_log_send_and_compose_impl(v64, &v136, &v144, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_139:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v65 = MEMORY[0x1E69E9C10];
    v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v66)
    {
      v67 = 3;
    }

    else
    {
      v67 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = v11;
    v153 = 2048;
    *v154 = v18;
    _os_log_send_and_compose_impl(v67, &v136, &v144, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_143:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v68 = MEMORY[0x1E69E9C10];
    v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v69)
    {
      v70 = 3;
    }

    else
    {
      v70 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v70, v131, &v144, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_147:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v71 = MEMORY[0x1E69E9C10];
    v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v72)
    {
      v73 = 3;
    }

    else
    {
      v73 = 2;
    }

    *&v152[14] = 797;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v73, v131, &v144, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_151:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v74 = MEMORY[0x1E69E9C10];
    v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v75)
    {
      v76 = 3;
    }

    else
    {
      v76 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v76, v131, &v144, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_155:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v77 = MEMORY[0x1E69E9C10];
    v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v78)
    {
      v79 = 3;
    }

    else
    {
      v79 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v79, v131, &v144, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_159:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v80 = MEMORY[0x1E69E9C10];
    v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v81)
    {
      v82 = 3;
    }

    else
    {
      v82 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v82, v131, &v144, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
    goto LABEL_163;
  }

LABEL_20:
  if (v10[7])
  {
    v19 = 0;
    v12 = 0;
    while (1)
    {
      v5 = v10[9];
      v11 = &v5[v19];
      re::StringID::StringID(v131, &v5[v19 + 4]);
      v18 = v119[7];
      if (v18 <= v12)
      {
        goto LABEL_123;
      }

      re::StringID::StringID(&v135, (v119[9] + v19 * 8 + 112));
      v2 = 0x94D049BB133111EBLL;
      v20 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v11 + 80) >> 31) ^ (*(v11 + 80) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v11 + 80) >> 31) ^ (*(v11 + 80) >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v101[8], (v11 + 80), v20 ^ (v20 >> 31), &v144);
      v21 = HIDWORD(v144);
      v22 = *&v101[24];
      v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v5[v19] >> 31) ^ (v5[v19] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v5[v19] >> 31) ^ (v5[v19] >> 1))) >> 27));
      a1 = 0x7FFFFFFFLL;
      v24 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v101[8], &v5[v19], v23 ^ (v23 >> 31), &v144);
      if (HIDWORD(v144) == 0x7FFFFFFF || v21 == 0x7FFFFFFF)
      {
        break;
      }

      a2 = (v22 + 32 * v21);
      v11 = a2[3];
      v18 = v99;
      if (v99 <= v11)
      {
        goto LABEL_127;
      }

      v5 = (*&v101[24] + 32 * HIDWORD(v144));
      re::DynamicArray<unsigned long>::add((*v101 + 80 * v11 + 8), v5 + 3);
      v18 = v5[3];
      v11 = v99;
      if (v99 <= v18)
      {
        goto LABEL_131;
      }

      v25 = *v101;
      *(*v101 + 80 * v18) = a2[3];
      v18 = v5[3];
      if (v11 <= v18)
      {
        goto LABEL_135;
      }

      re::StringID::operator=((v25 + 80 * v18 + 48), &v135);
      v11 = v5[3];
      v18 = v99;
      if (v99 <= v11)
      {
        goto LABEL_139;
      }

      v26 = re::StringID::operator=((*v101 + 80 * v11 + 64), v131);
      if (v135)
      {
        if (v135)
        {
        }
      }

      if (v131[0])
      {
        if (v131[0])
        {
        }
      }

      ++v12;
      v10 = v119;
      v19 += 20;
      if (v12 >= v119[7])
      {
        goto LABEL_43;
      }
    }

    if (v135)
    {
      if (v135)
      {
      }
    }

    if (v131[0])
    {
      if (v131[0])
      {
      }
    }
  }

LABEL_43:
  v5 = v137;
  if (!v99)
  {
LABEL_83:
    re::DynamicString::format(&v144, "A root node without a parent was not found.", v9);
    goto LABEL_100;
  }

  a1 = 0;
  v12 = 0;
  v27 = 0;
  a2 = 0;
  v18 = -1;
  v28 = 32;
  v11 = re::AnimationBlendTreeNodeDescription::kClip;
  while (1)
  {
    v2 = v119[2];
    if (v2 <= a2)
    {
      goto LABEL_119;
    }

    isBlend = re::AnimationBlendTreeNodeDescription::isBlend((v119[4] + v28 - 32));
    if (isBlend)
    {
      v2 = v99;
      if (v99 <= a2)
      {
        goto LABEL_143;
      }

      if (*(*v101 + a1) == -1)
      {
        v30 = v18 == -1;
        v18 = a2;
        if (!v30)
        {
          goto LABEL_95;
        }
      }

      v31 = *(*v101 + a1 + 24);
      if (v31 <= 1)
      {
        v41 = "A blend node was found, with missing inputs.";
        goto LABEL_99;
      }

      if (v31 != 2)
      {
        if (v118 == 1)
        {
          goto LABEL_85;
        }

        v27 = 1;
      }

      goto LABEL_72;
    }

    v2 = v119[2];
    if (v2 <= a2)
    {
      goto LABEL_147;
    }

    v32 = (v119[4] + v28);
    if (re::StringID::operator==(&v32[-1], re::AnimationBlendTreeNodeDescription::kClip))
    {
      v33 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v120, v32, &v134);
      ++v134;
      v2 = v99;
      if (v99 <= a2)
      {
        goto LABEL_151;
      }

      if (*(*v101 + a1) >= v99)
      {
        v41 = "A clip node was found, with no parent blend operation.";
        goto LABEL_99;
      }

      if (*(*v101 + a1 + 24))
      {
        v41 = "All clip nodes should be leaf nodes, but one found with child.";
        goto LABEL_99;
      }

      goto LABEL_72;
    }

    isBlend = re::StringID::operator==(&v32[-1], re::AnimationBlendTreeNodeDescription::kInput);
    if (!isBlend)
    {
      v2 = v99;
      if (v99 <= a2)
      {
        goto LABEL_159;
      }

      if (*(*v101 + a1) == -1)
      {
        v30 = v18 == -1;
        v18 = a2;
        if (!v30)
        {
LABEL_95:
          v41 = "Multiple roots found.";
          goto LABEL_99;
        }
      }

      v118 = 1;
      if (v27)
      {
LABEL_85:
        v41 = "A blend node was found with too many inputs. Blend nodes that use a rig must have exactly 2 inputs.";
        goto LABEL_99;
      }

      v27 = 0;
      goto LABEL_72;
    }

    v2 = v99;
    if (v99 <= a2)
    {
      goto LABEL_155;
    }

    if (*(*v101 + a1) >= v99)
    {
      v41 = "An external sample or input was found, with no parent blend operation.";
      goto LABEL_99;
    }

    if (*(*v101 + a1 + 24))
    {
      break;
    }

    ++v12;
LABEL_72:
    a2 = (a2 + 1);
    a1 += 80;
    v28 += 88;
    if (a2 >= v2)
    {
      if (v18 != -1)
      {
        a1 = v119[2];
        if (a1 > v18)
        {
          v34 = v119[4];
          v35 = (*(*v97 + 32))(v97, 624, 8);
          v36 = re::Timeline::Timeline(v35, 40);
          *(v36 + 72) = 0;
          *(v36 + 80) = 0;
          v37 = v36 + 80;
          *(v36 + 88) = 0u;
          *(v36 + 104) = 0;
          *(v36 + 112) = 0u;
          *(v36 + 128) = 0u;
          *(v36 + 144) = 0;
          *(v36 + 152) = 0u;
          *(v36 + 168) = 0u;
          *(v36 + 184) = 0;
          *(v36 + 192) = 0u;
          *(v36 + 208) = 0u;
          *(v36 + 224) = 0;
          *(v36 + 232) = 0u;
          *(v36 + 248) = 0u;
          *(v36 + 264) = 0;
          *(v36 + 528) = 0;
          *(v36 + 536) = 0;
          *(v36 + 568) = 0;
          *(v36 + 560) = 0;
          *(v36 + 544) = 0u;
          *(v36 + 616) = 0;
          *(v36 + 576) = 0u;
          *(v36 + 592) = 0u;
          *(v36 + 608) = 0;
          *(v36 + 488) = 0u;
          *(v36 + 504) = 0u;
          *(v36 + 520) = 0;
          *(v36 + 272) = 0u;
          *(v36 + 288) = 0u;
          *(v36 + 304) = 0u;
          *(v36 + 320) = 0u;
          *(v36 + 336) = 0u;
          *(v36 + 352) = 0u;
          *(v36 + 368) = 0u;
          *(v36 + 384) = 0u;
          *(v36 + 400) = 0;
          *(v36 + 440) = 0;
          *(v36 + 408) = 0u;
          *(v36 + 424) = 0u;
          *(v36 + 480) = 0;
          *(v36 + 448) = 0u;
          *(v36 + 464) = 0u;
          *v36 = &unk_1F5CC2820;
          re::FixedArray<unsigned long>::init<>((v36 + 304), v97, v134);
          re::FixedArray<unsigned long>::init<>((v35 + 328), v97, v134 + 1);
          re::FixedArray<unsigned long>::init<>((v35 + 352), v97, v134);
          *(v35 + 416) = v97;
          re::DynamicArray<re::StringID>::setCapacity((v35 + 416), v12);
          ++*(v35 + 440);
          v135 = 0;
          v136 = 0;
          if (v118 == 1)
          {
            re::RigGraphDefinitionBuilder::init(&v114[1], v97, v103, v137);
            re::AnimationBlendTreeBuilder<double>::buildRig(v131, &v97, v35, v18, &v135);
            if (LOBYTE(v131[0]) != 1)
            {
              v42 = v133;
              v43 = v131[3];
              v44 = v132;
              goto LABEL_101;
            }

            re::RigGraphDefinitionBuilder::promoteParameter(&v114[1], *(v34 + 88 * v18 + 8), "output", "output", "", 0, v128);
            if ((v128[0] & 1) == 0 && v129)
            {
              if (BYTE8(v129))
              {
                (*(*v129 + 40))();
              }

              v130 = 0u;
              v129 = 0u;
            }

            v155 = 0;
            *&v154[2] = 0;
            v156 = 1;
            v159 = 0;
            v157 = 0;
            v158 = 0;
            v160 = 0;
            v163 = 0;
            v161 = 0;
            v162 = 0;
            v168 = 0;
            v165 = 0u;
            v166 = 0u;
            v164 = 0;
            v167 = 0;
            *&v152[16] = v137;
            v152[24] = 0;
            *v152 = v97;
            *&v152[8] = 0;
            re::RigGraphCompilation::init(&v154[2], v97);
            re::RigGraphSystem::buildFromDefinition(v97, v103, &v144);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v37, &v144);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v35 + 120, &v146 + 1);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v35 + 160, v149);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v35 + 200, v150);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v35 + 240, v151);
            re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(v151);
            re::DynamicArray<re::StringID>::deinit(v150);
            re::DynamicArray<re::RigGraphNodeChild>::deinit(v149);
            re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v146 + 8);
            re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v144);
            re::RigGraphCompilation::~RigGraphCompilation(&v154[2]);
          }

          else
          {
            re::DynamicArray<re::StringID>::resize((v35 + 416), v12);
            re::FixedArray<re::AnimationBlendTreeNode>::init<>((v35 + 280), v97, v99);
            *(v35 + 376) = v97;
            re::DynamicArray<re::StringID>::setCapacity((v35 + 376), 0);
            ++*(v35 + 400);
            re::DynamicArray<re::StringID>::resize((v35 + 376), v99);
            if (!*(v35 + 288))
            {
LABEL_167:
              v131[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              v86 = MEMORY[0x1E69E9C10];
              v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v152 = 136315906;
              *&v152[4] = "operator[]";
              *&v152[12] = 1024;
              if (v87)
              {
                v88 = 3;
              }

              else
              {
                v88 = 2;
              }

              *&v152[14] = 468;
              *&v152[18] = 2048;
              *&v152[20] = 0;
              v153 = 2048;
              *v154 = 0;
              _os_log_send_and_compose_impl(v88, v131, &v144, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
              _os_crash_msg();
              __break(1u);
              goto LABEL_171;
            }

            v38 = *(v35 + 296);
            *v38 = 1065353216;
            a1 = v99;
            if (v99 <= v18)
            {
LABEL_171:
              v131[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              v89 = MEMORY[0x1E69E9C10];
              v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v152 = 136315906;
              *&v152[4] = "operator[]";
              *&v152[12] = 1024;
              if (v90)
              {
                v91 = 3;
              }

              else
              {
                v91 = 2;
              }

              *&v152[14] = 789;
              *&v152[18] = 2048;
              *&v152[20] = v18;
              v153 = 2048;
              *v154 = a1;
              _os_log_send_and_compose_impl(v91, v131, &v144, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
              _os_crash_msg();
              __break(1u);
LABEL_175:
              v131[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              v92 = MEMORY[0x1E69E9C10];
              v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v152 = 136315906;
              *&v152[4] = "operator[]";
              *&v152[12] = 1024;
              if (v93)
              {
                v94 = 3;
              }

              else
              {
                v94 = 2;
              }

              *&v152[14] = 797;
              *&v152[18] = 2048;
              *&v152[20] = v18;
              v153 = 2048;
              *v154 = a1;
              _os_log_send_and_compose_impl(v94, v131, &v144, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
              _os_crash_msg();
              __break(1u);
            }

            *(v38 + 6) = *(*v101 + 80 * v18 + 24);
            a1 = v119[2];
            if (a1 <= v18)
            {
              goto LABEL_175;
            }

            *(v38 + 7) = re::StringID::operator==((v119[4] + 88 * v18 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive);
            *(v38 + 4) = 1;
            re::AnimationBlendTreeBuilder<float>::addChildren(&v97, v35, v18, 1, &v135, &v136);
          }

          if (v125)
          {
            for (i = 0; i < v125; ++i)
            {
              re::AnimationBlendTree<float>::addClip(v35, i, *(v127 + 8 * i));
            }
          }

          v40 = v119;
          re::DynamicArray<re::AnimationBlendTreeNodeDescription>::operator=(v35 + 456, v119);
          re::DynamicArray<re::RigGraphConnection>::operator=(v35 + 496, v40 + 5);
          *(v35 + 536) = *(v40 + 20);
          re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v35 + 544, v40 + 11);
          re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v35 + 584, v40 + 16);
          *(v35 + 12) = *(v96 + 12);
          *(v35 + 16) = *(v96 + 16);
          re::StringID::operator=((v35 + 24), (v96 + 24));
          re::DynamicString::operator=((v35 + 40), (v96 + 40));
          *(v35 + 72) = *(v96 + 72);
          goto LABEL_104;
        }

LABEL_163:
        v131[0] = 0;
        *(v5 + 21) = 0u;
        *(v5 + 19) = 0u;
        *(v5 + 17) = 0u;
        *(v5 + 15) = 0u;
        *(v5 + 13) = 0u;
        v83 = MEMORY[0x1E69E9C10];
        v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v152 = 136315906;
        *&v152[4] = "operator[]";
        *&v152[12] = 1024;
        if (v84)
        {
          v85 = 3;
        }

        else
        {
          v85 = 2;
        }

        *&v152[14] = 797;
        *&v152[18] = 2048;
        *&v152[20] = v18;
        v153 = 2048;
        *v154 = a1;
        _os_log_send_and_compose_impl(v85, v131, &v144, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
        _os_crash_msg();
        __break(1u);
        goto LABEL_167;
      }

      goto LABEL_83;
    }
  }

  v41 = "All external input nodes should be leaf nodes, but one found with child.";
LABEL_99:
LABEL_100:
  v42 = v145;
  v43 = v144;
  v44 = BYTE8(v144);
LABEL_101:
  v35 = 0;
  if (v43 && (v44 & 1) != 0)
  {
    (*(*v43 + 40))(v43, v42);
    v35 = 0;
  }

LABEL_104:
  re::BindNode::deinit(&v143[8]);
  re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit(v137);
  if (v137[0] && (v138 & 1) == 0)
  {
    (*(*v137[0] + 40))();
  }

  if (v123)
  {
    if (v127)
    {
      (*(*v123 + 40))();
    }

    v127 = 0;
    v124 = 0;
    v125 = 0;
    v123 = 0;
    ++v126;
  }

  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v120);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v115);
  re::DynamicArray<re::RigGraphInputValue>::deinit(&v112[8]);
  re::DynamicArray<re::RigGraphConnection>::deinit(&v110[1]);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v108[8]);
  re::DynamicArray<re::RigGraphParameterProxy>::deinit(v106 + 8);
  v45 = re::DynamicArray<re::RigGraphParameterProxy>::deinit(v104);
  if (v103[0])
  {
    if (v103[0])
    {
    }
  }

  v103[0] = 0;
  v103[1] = &str_67;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v101[8]);
  re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::deinit(&v98);
  return v35;
}

uint64_t createAnimationBlendTreeFromAssetData<re::Vector2<float>>(unint64_t a1, void *a2)
{
  v5 = v137;
  v169 = *MEMORY[0x1E69E9840];
  v100 = 0;
  v99 = 0;
  v98 = 0u;
  memset(v101, 0, sizeof(v101));
  v102 = 0x7FFFFFFFLL;
  re::StringID::invalid(v103);
  memset(v104, 0, sizeof(v104));
  v105 = 0;
  memset(v106, 0, sizeof(v106));
  memset(v108, 0, sizeof(v108));
  v107 = 0;
  v109 = 0;
  memset(v110, 0, sizeof(v110));
  v111 = 0;
  memset(v112, 0, sizeof(v112));
  v113 = 0;
  v116 = 0;
  memset(v115, 0, sizeof(v115));
  memset(v114, 0, sizeof(v114));
  v117 = 0x7FFFFFFFLL;
  v118 = 0;
  memset(v120, 0, sizeof(v120));
  v121 = 0;
  v122 = 0x7FFFFFFFLL;
  v127 = 0;
  v124 = 0;
  v125 = 0;
  v126 = 0;
  v123 = 0;
  v137[1] = 0;
  v137[0] = 0;
  v138 = 1;
  v141 = 0;
  v139 = 0;
  v140 = 0;
  v142 = 0;
  memset(v143, 0, sizeof(v143));
  re::RigEnvironment::init(v137, a2);
  v96 = a1;
  re::AnimationBlendTreeBuilder<float>::init(&v97, a1 + 80, a2);
  v134 = 0;
  v6 = v99;
  v99 = 0;
  if (v6)
  {
    v7 = 80 * v6;
    a2 = (*v101 + 64);
    do
    {
      re::StringID::destroyString(a2);
      re::StringID::destroyString((a2 - 2));
      re::DynamicArray<unsigned long>::deinit((a2 - 7));
      a2 += 10;
      v7 -= 80;
    }

    while (v7);
  }

  ++v100;
  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(&v101[8]);
  v135 = 0;
  v10 = v119;
  if (v119[2])
  {
    a1 = -1;
    v11 = 1;
    v12 = &str_67;
    v2 = 8;
    while (1)
    {
      v13 = v99;
      if (v99 >= *(&v98 + 1))
      {
        v14 = v99 + 1;
        if (*(&v98 + 1) < v99 + 1)
        {
          if (v98)
          {
            if (*(&v98 + 1))
            {
              v15 = 2 * *(&v98 + 1);
            }

            else
            {
              v15 = 8;
            }

            if (v15 <= v14)
            {
              v16 = v99 + 1;
            }

            else
            {
              v16 = v15;
            }

            re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(&v98, v16);
          }

          else
          {
            re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(&v98, v14);
            ++v100;
          }
        }

        v13 = v99;
      }

      v17 = *v101 + 80 * v13;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 16) = 0;
      *(v17 + 24) = 0;
      *v17 = -1;
      *(v17 + 8) = 0;
      *(v17 + 32) = 1;
      *(v17 + 56) = &str_67;
      *(v17 + 64) = 0;
      *(v17 + 72) = &str_67;
      v99 = (v99 + 1);
      ++v100;
      a2 = v135;
      v18 = v119[2];
      if (v18 <= v135)
      {
        break;
      }

      v8 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(&v101[8], (v119[4] + 88 * v135), &v135);
      ++v135;
      v10 = v119;
      if (v135 >= v119[2])
      {
        goto LABEL_20;
      }
    }

    v131[0] = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v47 = MEMORY[0x1E69E9C10];
    v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v48)
    {
      v49 = 3;
    }

    else
    {
      v49 = 2;
    }

    *&v152[14] = 797;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v18;
    _os_log_send_and_compose_impl(v49, v131, &v144, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_119:
    v131[0] = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v50 = MEMORY[0x1E69E9C10];
    v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v51)
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    *&v152[14] = 797;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v52, v131, &v144, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_123:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v53 = MEMORY[0x1E69E9C10];
    v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v54)
    {
      v55 = 3;
    }

    else
    {
      v55 = 2;
    }

    *&v152[14] = 797;
    *&v152[18] = 2048;
    *&v152[20] = v12;
    v153 = 2048;
    *v154 = v18;
    _os_log_send_and_compose_impl(v55, &v136, &v144, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_127:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v56 = MEMORY[0x1E69E9C10];
    v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v57)
    {
      v58 = 3;
    }

    else
    {
      v58 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = v11;
    v153 = 2048;
    *v154 = v18;
    _os_log_send_and_compose_impl(v58, &v136, &v144, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_131:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v59 = MEMORY[0x1E69E9C10];
    v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v60)
    {
      v61 = 3;
    }

    else
    {
      v61 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = v18;
    v153 = 2048;
    *v154 = v11;
    _os_log_send_and_compose_impl(v61, &v136, &v144, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_135:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v62 = MEMORY[0x1E69E9C10];
    v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v63)
    {
      v64 = 3;
    }

    else
    {
      v64 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = v18;
    v153 = 2048;
    *v154 = v11;
    _os_log_send_and_compose_impl(v64, &v136, &v144, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_139:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v65 = MEMORY[0x1E69E9C10];
    v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v66)
    {
      v67 = 3;
    }

    else
    {
      v67 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = v11;
    v153 = 2048;
    *v154 = v18;
    _os_log_send_and_compose_impl(v67, &v136, &v144, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_143:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v68 = MEMORY[0x1E69E9C10];
    v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v69)
    {
      v70 = 3;
    }

    else
    {
      v70 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v70, v131, &v144, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_147:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v71 = MEMORY[0x1E69E9C10];
    v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v72)
    {
      v73 = 3;
    }

    else
    {
      v73 = 2;
    }

    *&v152[14] = 797;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v73, v131, &v144, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_151:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v74 = MEMORY[0x1E69E9C10];
    v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v75)
    {
      v76 = 3;
    }

    else
    {
      v76 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v76, v131, &v144, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_155:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v77 = MEMORY[0x1E69E9C10];
    v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v78)
    {
      v79 = 3;
    }

    else
    {
      v79 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v79, v131, &v144, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_159:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v80 = MEMORY[0x1E69E9C10];
    v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v81)
    {
      v82 = 3;
    }

    else
    {
      v82 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v82, v131, &v144, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
    goto LABEL_163;
  }

LABEL_20:
  if (v10[7])
  {
    v19 = 0;
    v12 = 0;
    while (1)
    {
      v5 = v10[9];
      v11 = &v5[v19];
      re::StringID::StringID(v131, &v5[v19 + 4]);
      v18 = v119[7];
      if (v18 <= v12)
      {
        goto LABEL_123;
      }

      re::StringID::StringID(&v135, (v119[9] + v19 * 8 + 112));
      v2 = 0x94D049BB133111EBLL;
      v20 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v11 + 80) >> 31) ^ (*(v11 + 80) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v11 + 80) >> 31) ^ (*(v11 + 80) >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v101[8], (v11 + 80), v20 ^ (v20 >> 31), &v144);
      v21 = HIDWORD(v144);
      v22 = *&v101[24];
      v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v5[v19] >> 31) ^ (v5[v19] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v5[v19] >> 31) ^ (v5[v19] >> 1))) >> 27));
      a1 = 0x7FFFFFFFLL;
      v24 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v101[8], &v5[v19], v23 ^ (v23 >> 31), &v144);
      if (HIDWORD(v144) == 0x7FFFFFFF || v21 == 0x7FFFFFFF)
      {
        break;
      }

      a2 = (v22 + 32 * v21);
      v11 = a2[3];
      v18 = v99;
      if (v99 <= v11)
      {
        goto LABEL_127;
      }

      v5 = (*&v101[24] + 32 * HIDWORD(v144));
      re::DynamicArray<unsigned long>::add((*v101 + 80 * v11 + 8), v5 + 3);
      v18 = v5[3];
      v11 = v99;
      if (v99 <= v18)
      {
        goto LABEL_131;
      }

      v25 = *v101;
      *(*v101 + 80 * v18) = a2[3];
      v18 = v5[3];
      if (v11 <= v18)
      {
        goto LABEL_135;
      }

      re::StringID::operator=((v25 + 80 * v18 + 48), &v135);
      v11 = v5[3];
      v18 = v99;
      if (v99 <= v11)
      {
        goto LABEL_139;
      }

      v26 = re::StringID::operator=((*v101 + 80 * v11 + 64), v131);
      if (v135)
      {
        if (v135)
        {
        }
      }

      if (v131[0])
      {
        if (v131[0])
        {
        }
      }

      ++v12;
      v10 = v119;
      v19 += 20;
      if (v12 >= v119[7])
      {
        goto LABEL_43;
      }
    }

    if (v135)
    {
      if (v135)
      {
      }
    }

    if (v131[0])
    {
      if (v131[0])
      {
      }
    }
  }

LABEL_43:
  v5 = v137;
  if (!v99)
  {
LABEL_83:
    re::DynamicString::format(&v144, "A root node without a parent was not found.", v9);
    goto LABEL_100;
  }

  a1 = 0;
  v12 = 0;
  v27 = 0;
  a2 = 0;
  v18 = -1;
  v28 = 32;
  v11 = re::AnimationBlendTreeNodeDescription::kClip;
  while (1)
  {
    v2 = v119[2];
    if (v2 <= a2)
    {
      goto LABEL_119;
    }

    isBlend = re::AnimationBlendTreeNodeDescription::isBlend((v119[4] + v28 - 32));
    if (isBlend)
    {
      v2 = v99;
      if (v99 <= a2)
      {
        goto LABEL_143;
      }

      if (*(*v101 + a1) == -1)
      {
        v30 = v18 == -1;
        v18 = a2;
        if (!v30)
        {
          goto LABEL_95;
        }
      }

      v31 = *(*v101 + a1 + 24);
      if (v31 <= 1)
      {
        v41 = "A blend node was found, with missing inputs.";
        goto LABEL_99;
      }

      if (v31 != 2)
      {
        if (v118 == 1)
        {
          goto LABEL_85;
        }

        v27 = 1;
      }

      goto LABEL_72;
    }

    v2 = v119[2];
    if (v2 <= a2)
    {
      goto LABEL_147;
    }

    v32 = (v119[4] + v28);
    if (re::StringID::operator==(&v32[-1], re::AnimationBlendTreeNodeDescription::kClip))
    {
      v33 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v120, v32, &v134);
      ++v134;
      v2 = v99;
      if (v99 <= a2)
      {
        goto LABEL_151;
      }

      if (*(*v101 + a1) >= v99)
      {
        v41 = "A clip node was found, with no parent blend operation.";
        goto LABEL_99;
      }

      if (*(*v101 + a1 + 24))
      {
        v41 = "All clip nodes should be leaf nodes, but one found with child.";
        goto LABEL_99;
      }

      goto LABEL_72;
    }

    isBlend = re::StringID::operator==(&v32[-1], re::AnimationBlendTreeNodeDescription::kInput);
    if (!isBlend)
    {
      v2 = v99;
      if (v99 <= a2)
      {
        goto LABEL_159;
      }

      if (*(*v101 + a1) == -1)
      {
        v30 = v18 == -1;
        v18 = a2;
        if (!v30)
        {
LABEL_95:
          v41 = "Multiple roots found.";
          goto LABEL_99;
        }
      }

      v118 = 1;
      if (v27)
      {
LABEL_85:
        v41 = "A blend node was found with too many inputs. Blend nodes that use a rig must have exactly 2 inputs.";
        goto LABEL_99;
      }

      v27 = 0;
      goto LABEL_72;
    }

    v2 = v99;
    if (v99 <= a2)
    {
      goto LABEL_155;
    }

    if (*(*v101 + a1) >= v99)
    {
      v41 = "An external sample or input was found, with no parent blend operation.";
      goto LABEL_99;
    }

    if (*(*v101 + a1 + 24))
    {
      break;
    }

    ++v12;
LABEL_72:
    a2 = (a2 + 1);
    a1 += 80;
    v28 += 88;
    if (a2 >= v2)
    {
      if (v18 != -1)
      {
        a1 = v119[2];
        if (a1 > v18)
        {
          v34 = v119[4];
          v35 = (*(*v97 + 32))(v97, 624, 8);
          v36 = re::Timeline::Timeline(v35, 41);
          *(v36 + 72) = 0;
          *(v36 + 80) = 0;
          v37 = v36 + 80;
          *(v36 + 88) = 0u;
          *(v36 + 104) = 0;
          *(v36 + 112) = 0u;
          *(v36 + 128) = 0u;
          *(v36 + 144) = 0;
          *(v36 + 152) = 0u;
          *(v36 + 168) = 0u;
          *(v36 + 184) = 0;
          *(v36 + 192) = 0u;
          *(v36 + 208) = 0u;
          *(v36 + 224) = 0;
          *(v36 + 232) = 0u;
          *(v36 + 248) = 0u;
          *(v36 + 264) = 0;
          *(v36 + 528) = 0;
          *(v36 + 536) = 0;
          *(v36 + 568) = 0;
          *(v36 + 560) = 0;
          *(v36 + 544) = 0u;
          *(v36 + 616) = 0;
          *(v36 + 576) = 0u;
          *(v36 + 592) = 0u;
          *(v36 + 608) = 0;
          *(v36 + 488) = 0u;
          *(v36 + 504) = 0u;
          *(v36 + 520) = 0;
          *(v36 + 272) = 0u;
          *(v36 + 288) = 0u;
          *(v36 + 304) = 0u;
          *(v36 + 320) = 0u;
          *(v36 + 336) = 0u;
          *(v36 + 352) = 0u;
          *(v36 + 368) = 0u;
          *(v36 + 384) = 0u;
          *(v36 + 400) = 0;
          *(v36 + 440) = 0;
          *(v36 + 408) = 0u;
          *(v36 + 424) = 0u;
          *(v36 + 480) = 0;
          *(v36 + 448) = 0u;
          *(v36 + 464) = 0u;
          *v36 = &unk_1F5CC2980;
          re::FixedArray<unsigned long>::init<>((v36 + 304), v97, v134);
          re::FixedArray<unsigned long>::init<>((v35 + 328), v97, v134 + 1);
          re::FixedArray<unsigned long>::init<>((v35 + 352), v97, v134);
          *(v35 + 416) = v97;
          re::DynamicArray<re::StringID>::setCapacity((v35 + 416), v12);
          ++*(v35 + 440);
          v135 = 0;
          v136 = 0;
          if (v118 == 1)
          {
            re::RigGraphDefinitionBuilder::init(&v114[1], v97, v103, v137);
            re::AnimationBlendTreeBuilder<re::Vector2<float>>::buildRig(v131, &v97, v35, v18, &v135);
            if (LOBYTE(v131[0]) != 1)
            {
              v42 = v133;
              v43 = v131[3];
              v44 = v132;
              goto LABEL_101;
            }

            re::RigGraphDefinitionBuilder::promoteParameter(&v114[1], *(v34 + 88 * v18 + 8), "output", "output", "", 0, v128);
            if ((v128[0] & 1) == 0 && v129)
            {
              if (BYTE8(v129))
              {
                (*(*v129 + 40))();
              }

              v130 = 0u;
              v129 = 0u;
            }

            v155 = 0;
            *&v154[2] = 0;
            v156 = 1;
            v159 = 0;
            v157 = 0;
            v158 = 0;
            v160 = 0;
            v163 = 0;
            v161 = 0;
            v162 = 0;
            v168 = 0;
            v165 = 0u;
            v166 = 0u;
            v164 = 0;
            v167 = 0;
            *&v152[16] = v137;
            v152[24] = 0;
            *v152 = v97;
            *&v152[8] = 0;
            re::RigGraphCompilation::init(&v154[2], v97);
            re::RigGraphSystem::buildFromDefinition(v97, v103, &v144);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v37, &v144);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v35 + 120, &v146 + 1);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v35 + 160, v149);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v35 + 200, v150);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v35 + 240, v151);
            re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(v151);
            re::DynamicArray<re::StringID>::deinit(v150);
            re::DynamicArray<re::RigGraphNodeChild>::deinit(v149);
            re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v146 + 8);
            re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v144);
            re::RigGraphCompilation::~RigGraphCompilation(&v154[2]);
          }

          else
          {
            re::DynamicArray<re::StringID>::resize((v35 + 416), v12);
            re::FixedArray<re::AnimationBlendTreeNode>::init<>((v35 + 280), v97, v99);
            *(v35 + 376) = v97;
            re::DynamicArray<re::StringID>::setCapacity((v35 + 376), 0);
            ++*(v35 + 400);
            re::DynamicArray<re::StringID>::resize((v35 + 376), v99);
            if (!*(v35 + 288))
            {
LABEL_167:
              v131[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              v86 = MEMORY[0x1E69E9C10];
              v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v152 = 136315906;
              *&v152[4] = "operator[]";
              *&v152[12] = 1024;
              if (v87)
              {
                v88 = 3;
              }

              else
              {
                v88 = 2;
              }

              *&v152[14] = 468;
              *&v152[18] = 2048;
              *&v152[20] = 0;
              v153 = 2048;
              *v154 = 0;
              _os_log_send_and_compose_impl(v88, v131, &v144, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
              _os_crash_msg();
              __break(1u);
              goto LABEL_171;
            }

            v38 = *(v35 + 296);
            *v38 = 1065353216;
            a1 = v99;
            if (v99 <= v18)
            {
LABEL_171:
              v131[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              v89 = MEMORY[0x1E69E9C10];
              v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v152 = 136315906;
              *&v152[4] = "operator[]";
              *&v152[12] = 1024;
              if (v90)
              {
                v91 = 3;
              }

              else
              {
                v91 = 2;
              }

              *&v152[14] = 789;
              *&v152[18] = 2048;
              *&v152[20] = v18;
              v153 = 2048;
              *v154 = a1;
              _os_log_send_and_compose_impl(v91, v131, &v144, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
              _os_crash_msg();
              __break(1u);
LABEL_175:
              v131[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              v92 = MEMORY[0x1E69E9C10];
              v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v152 = 136315906;
              *&v152[4] = "operator[]";
              *&v152[12] = 1024;
              if (v93)
              {
                v94 = 3;
              }

              else
              {
                v94 = 2;
              }

              *&v152[14] = 797;
              *&v152[18] = 2048;
              *&v152[20] = v18;
              v153 = 2048;
              *v154 = a1;
              _os_log_send_and_compose_impl(v94, v131, &v144, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
              _os_crash_msg();
              __break(1u);
            }

            *(v38 + 6) = *(*v101 + 80 * v18 + 24);
            a1 = v119[2];
            if (a1 <= v18)
            {
              goto LABEL_175;
            }

            *(v38 + 7) = re::StringID::operator==((v119[4] + 88 * v18 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive);
            *(v38 + 4) = 1;
            re::AnimationBlendTreeBuilder<float>::addChildren(&v97, v35, v18, 1, &v135, &v136);
          }

          if (v125)
          {
            for (i = 0; i < v125; ++i)
            {
              re::AnimationBlendTree<float>::addClip(v35, i, *(v127 + 8 * i));
            }
          }

          v40 = v119;
          re::DynamicArray<re::AnimationBlendTreeNodeDescription>::operator=(v35 + 456, v119);
          re::DynamicArray<re::RigGraphConnection>::operator=(v35 + 496, v40 + 5);
          *(v35 + 536) = *(v40 + 20);
          re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v35 + 544, v40 + 11);
          re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v35 + 584, v40 + 16);
          *(v35 + 12) = *(v96 + 12);
          *(v35 + 16) = *(v96 + 16);
          re::StringID::operator=((v35 + 24), (v96 + 24));
          re::DynamicString::operator=((v35 + 40), (v96 + 40));
          *(v35 + 72) = *(v96 + 72);
          goto LABEL_104;
        }

LABEL_163:
        v131[0] = 0;
        *(v5 + 21) = 0u;
        *(v5 + 19) = 0u;
        *(v5 + 17) = 0u;
        *(v5 + 15) = 0u;
        *(v5 + 13) = 0u;
        v83 = MEMORY[0x1E69E9C10];
        v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v152 = 136315906;
        *&v152[4] = "operator[]";
        *&v152[12] = 1024;
        if (v84)
        {
          v85 = 3;
        }

        else
        {
          v85 = 2;
        }

        *&v152[14] = 797;
        *&v152[18] = 2048;
        *&v152[20] = v18;
        v153 = 2048;
        *v154 = a1;
        _os_log_send_and_compose_impl(v85, v131, &v144, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
        _os_crash_msg();
        __break(1u);
        goto LABEL_167;
      }

      goto LABEL_83;
    }
  }

  v41 = "All external input nodes should be leaf nodes, but one found with child.";
LABEL_99:
LABEL_100:
  v42 = v145;
  v43 = v144;
  v44 = BYTE8(v144);
LABEL_101:
  v35 = 0;
  if (v43 && (v44 & 1) != 0)
  {
    (*(*v43 + 40))(v43, v42);
    v35 = 0;
  }

LABEL_104:
  re::BindNode::deinit(&v143[8]);
  re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit(v137);
  if (v137[0] && (v138 & 1) == 0)
  {
    (*(*v137[0] + 40))();
  }

  if (v123)
  {
    if (v127)
    {
      (*(*v123 + 40))();
    }

    v127 = 0;
    v124 = 0;
    v125 = 0;
    v123 = 0;
    ++v126;
  }

  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v120);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v115);
  re::DynamicArray<re::RigGraphInputValue>::deinit(&v112[8]);
  re::DynamicArray<re::RigGraphConnection>::deinit(&v110[1]);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v108[8]);
  re::DynamicArray<re::RigGraphParameterProxy>::deinit(v106 + 8);
  v45 = re::DynamicArray<re::RigGraphParameterProxy>::deinit(v104);
  if (v103[0])
  {
    if (v103[0])
    {
    }
  }

  v103[0] = 0;
  v103[1] = &str_67;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v101[8]);
  re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::deinit(&v98);
  return v35;
}

uint64_t createAnimationBlendTreeFromAssetData<re::Vector3<float>>(unint64_t a1, void *a2)
{
  v5 = v137;
  v169 = *MEMORY[0x1E69E9840];
  v100 = 0;
  v99 = 0;
  v98 = 0u;
  memset(v101, 0, sizeof(v101));
  v102 = 0x7FFFFFFFLL;
  re::StringID::invalid(v103);
  memset(v104, 0, sizeof(v104));
  v105 = 0;
  memset(v106, 0, sizeof(v106));
  memset(v108, 0, sizeof(v108));
  v107 = 0;
  v109 = 0;
  memset(v110, 0, sizeof(v110));
  v111 = 0;
  memset(v112, 0, sizeof(v112));
  v113 = 0;
  v116 = 0;
  memset(v115, 0, sizeof(v115));
  memset(v114, 0, sizeof(v114));
  v117 = 0x7FFFFFFFLL;
  v118 = 0;
  memset(v120, 0, sizeof(v120));
  v121 = 0;
  v122 = 0x7FFFFFFFLL;
  v127 = 0;
  v124 = 0;
  v125 = 0;
  v126 = 0;
  v123 = 0;
  v137[1] = 0;
  v137[0] = 0;
  v138 = 1;
  v141 = 0;
  v139 = 0;
  v140 = 0;
  v142 = 0;
  memset(v143, 0, sizeof(v143));
  re::RigEnvironment::init(v137, a2);
  v96 = a1;
  re::AnimationBlendTreeBuilder<float>::init(&v97, a1 + 80, a2);
  v134 = 0;
  v6 = v99;
  v99 = 0;
  if (v6)
  {
    v7 = 80 * v6;
    a2 = (*v101 + 64);
    do
    {
      re::StringID::destroyString(a2);
      re::StringID::destroyString((a2 - 2));
      re::DynamicArray<unsigned long>::deinit((a2 - 7));
      a2 += 10;
      v7 -= 80;
    }

    while (v7);
  }

  ++v100;
  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(&v101[8]);
  v135 = 0;
  v10 = v119;
  if (v119[2])
  {
    a1 = -1;
    v11 = 1;
    v12 = &str_67;
    v2 = 8;
    while (1)
    {
      v13 = v99;
      if (v99 >= *(&v98 + 1))
      {
        v14 = v99 + 1;
        if (*(&v98 + 1) < v99 + 1)
        {
          if (v98)
          {
            if (*(&v98 + 1))
            {
              v15 = 2 * *(&v98 + 1);
            }

            else
            {
              v15 = 8;
            }

            if (v15 <= v14)
            {
              v16 = v99 + 1;
            }

            else
            {
              v16 = v15;
            }

            re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(&v98, v16);
          }

          else
          {
            re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::setCapacity(&v98, v14);
            ++v100;
          }
        }

        v13 = v99;
      }

      v17 = *v101 + 80 * v13;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 16) = 0;
      *(v17 + 24) = 0;
      *v17 = -1;
      *(v17 + 8) = 0;
      *(v17 + 32) = 1;
      *(v17 + 56) = &str_67;
      *(v17 + 64) = 0;
      *(v17 + 72) = &str_67;
      v99 = (v99 + 1);
      ++v100;
      a2 = v135;
      v18 = v119[2];
      if (v18 <= v135)
      {
        break;
      }

      v8 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(&v101[8], (v119[4] + 88 * v135), &v135);
      ++v135;
      v10 = v119;
      if (v135 >= v119[2])
      {
        goto LABEL_20;
      }
    }

    v131[0] = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v47 = MEMORY[0x1E69E9C10];
    v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v48)
    {
      v49 = 3;
    }

    else
    {
      v49 = 2;
    }

    *&v152[14] = 797;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v18;
    _os_log_send_and_compose_impl(v49, v131, &v144, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_119:
    v131[0] = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v50 = MEMORY[0x1E69E9C10];
    v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v51)
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    *&v152[14] = 797;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v52, v131, &v144, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_123:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v53 = MEMORY[0x1E69E9C10];
    v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v54)
    {
      v55 = 3;
    }

    else
    {
      v55 = 2;
    }

    *&v152[14] = 797;
    *&v152[18] = 2048;
    *&v152[20] = v12;
    v153 = 2048;
    *v154 = v18;
    _os_log_send_and_compose_impl(v55, &v136, &v144, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_127:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v56 = MEMORY[0x1E69E9C10];
    v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v57)
    {
      v58 = 3;
    }

    else
    {
      v58 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = v11;
    v153 = 2048;
    *v154 = v18;
    _os_log_send_and_compose_impl(v58, &v136, &v144, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_131:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v59 = MEMORY[0x1E69E9C10];
    v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v60)
    {
      v61 = 3;
    }

    else
    {
      v61 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = v18;
    v153 = 2048;
    *v154 = v11;
    _os_log_send_and_compose_impl(v61, &v136, &v144, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_135:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v62 = MEMORY[0x1E69E9C10];
    v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v63)
    {
      v64 = 3;
    }

    else
    {
      v64 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = v18;
    v153 = 2048;
    *v154 = v11;
    _os_log_send_and_compose_impl(v64, &v136, &v144, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_139:
    v136 = 0;
    v148 = 0u;
    v147 = 0u;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v65 = MEMORY[0x1E69E9C10];
    v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v66)
    {
      v67 = 3;
    }

    else
    {
      v67 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = v11;
    v153 = 2048;
    *v154 = v18;
    _os_log_send_and_compose_impl(v67, &v136, &v144, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_143:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v68 = MEMORY[0x1E69E9C10];
    v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v69)
    {
      v70 = 3;
    }

    else
    {
      v70 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v70, v131, &v144, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_147:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v71 = MEMORY[0x1E69E9C10];
    v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v72)
    {
      v73 = 3;
    }

    else
    {
      v73 = 2;
    }

    *&v152[14] = 797;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v73, v131, &v144, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_151:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v74 = MEMORY[0x1E69E9C10];
    v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v75)
    {
      v76 = 3;
    }

    else
    {
      v76 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v76, v131, &v144, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_155:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v77 = MEMORY[0x1E69E9C10];
    v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v78)
    {
      v79 = 3;
    }

    else
    {
      v79 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v79, v131, &v144, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_159:
    v131[0] = 0;
    *(v5 + 21) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 13) = 0u;
    v80 = MEMORY[0x1E69E9C10];
    v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v152 = 136315906;
    *&v152[4] = "operator[]";
    *&v152[12] = 1024;
    if (v81)
    {
      v82 = 3;
    }

    else
    {
      v82 = 2;
    }

    *&v152[14] = 789;
    *&v152[18] = 2048;
    *&v152[20] = a2;
    v153 = 2048;
    *v154 = v2;
    _os_log_send_and_compose_impl(v82, v131, &v144, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
    goto LABEL_163;
  }

LABEL_20:
  if (v10[7])
  {
    v19 = 0;
    v12 = 0;
    while (1)
    {
      v5 = v10[9];
      v11 = &v5[v19];
      re::StringID::StringID(v131, &v5[v19 + 4]);
      v18 = v119[7];
      if (v18 <= v12)
      {
        goto LABEL_123;
      }

      re::StringID::StringID(&v135, (v119[9] + v19 * 8 + 112));
      v2 = 0x94D049BB133111EBLL;
      v20 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v11 + 80) >> 31) ^ (*(v11 + 80) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v11 + 80) >> 31) ^ (*(v11 + 80) >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v101[8], (v11 + 80), v20 ^ (v20 >> 31), &v144);
      v21 = HIDWORD(v144);
      v22 = *&v101[24];
      v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v5[v19] >> 31) ^ (v5[v19] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v5[v19] >> 31) ^ (v5[v19] >> 1))) >> 27));
      a1 = 0x7FFFFFFFLL;
      v24 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v101[8], &v5[v19], v23 ^ (v23 >> 31), &v144);
      if (HIDWORD(v144) == 0x7FFFFFFF || v21 == 0x7FFFFFFF)
      {
        break;
      }

      a2 = (v22 + 32 * v21);
      v11 = a2[3];
      v18 = v99;
      if (v99 <= v11)
      {
        goto LABEL_127;
      }

      v5 = (*&v101[24] + 32 * HIDWORD(v144));
      re::DynamicArray<unsigned long>::add((*v101 + 80 * v11 + 8), v5 + 3);
      v18 = v5[3];
      v11 = v99;
      if (v99 <= v18)
      {
        goto LABEL_131;
      }

      v25 = *v101;
      *(*v101 + 80 * v18) = a2[3];
      v18 = v5[3];
      if (v11 <= v18)
      {
        goto LABEL_135;
      }

      re::StringID::operator=((v25 + 80 * v18 + 48), &v135);
      v11 = v5[3];
      v18 = v99;
      if (v99 <= v11)
      {
        goto LABEL_139;
      }

      v26 = re::StringID::operator=((*v101 + 80 * v11 + 64), v131);
      if (v135)
      {
        if (v135)
        {
        }
      }

      if (v131[0])
      {
        if (v131[0])
        {
        }
      }

      ++v12;
      v10 = v119;
      v19 += 20;
      if (v12 >= v119[7])
      {
        goto LABEL_43;
      }
    }

    if (v135)
    {
      if (v135)
      {
      }
    }

    if (v131[0])
    {
      if (v131[0])
      {
      }
    }
  }

LABEL_43:
  v5 = v137;
  if (!v99)
  {
LABEL_83:
    re::DynamicString::format(&v144, "A root node without a parent was not found.", v9);
    goto LABEL_100;
  }

  a1 = 0;
  v12 = 0;
  v27 = 0;
  a2 = 0;
  v18 = -1;
  v28 = 32;
  v11 = re::AnimationBlendTreeNodeDescription::kClip;
  while (1)
  {
    v2 = v119[2];
    if (v2 <= a2)
    {
      goto LABEL_119;
    }

    isBlend = re::AnimationBlendTreeNodeDescription::isBlend((v119[4] + v28 - 32));
    if (isBlend)
    {
      v2 = v99;
      if (v99 <= a2)
      {
        goto LABEL_143;
      }

      if (*(*v101 + a1) == -1)
      {
        v30 = v18 == -1;
        v18 = a2;
        if (!v30)
        {
          goto LABEL_95;
        }
      }

      v31 = *(*v101 + a1 + 24);
      if (v31 <= 1)
      {
        v41 = "A blend node was found, with missing inputs.";
        goto LABEL_99;
      }

      if (v31 != 2)
      {
        if (v118 == 1)
        {
          goto LABEL_85;
        }

        v27 = 1;
      }

      goto LABEL_72;
    }

    v2 = v119[2];
    if (v2 <= a2)
    {
      goto LABEL_147;
    }

    v32 = (v119[4] + v28);
    if (re::StringID::operator==(&v32[-1], re::AnimationBlendTreeNodeDescription::kClip))
    {
      v33 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v120, v32, &v134);
      ++v134;
      v2 = v99;
      if (v99 <= a2)
      {
        goto LABEL_151;
      }

      if (*(*v101 + a1) >= v99)
      {
        v41 = "A clip node was found, with no parent blend operation.";
        goto LABEL_99;
      }

      if (*(*v101 + a1 + 24))
      {
        v41 = "All clip nodes should be leaf nodes, but one found with child.";
        goto LABEL_99;
      }

      goto LABEL_72;
    }

    isBlend = re::StringID::operator==(&v32[-1], re::AnimationBlendTreeNodeDescription::kInput);
    if (!isBlend)
    {
      v2 = v99;
      if (v99 <= a2)
      {
        goto LABEL_159;
      }

      if (*(*v101 + a1) == -1)
      {
        v30 = v18 == -1;
        v18 = a2;
        if (!v30)
        {
LABEL_95:
          v41 = "Multiple roots found.";
          goto LABEL_99;
        }
      }

      v118 = 1;
      if (v27)
      {
LABEL_85:
        v41 = "A blend node was found with too many inputs. Blend nodes that use a rig must have exactly 2 inputs.";
        goto LABEL_99;
      }

      v27 = 0;
      goto LABEL_72;
    }

    v2 = v99;
    if (v99 <= a2)
    {
      goto LABEL_155;
    }

    if (*(*v101 + a1) >= v99)
    {
      v41 = "An external sample or input was found, with no parent blend operation.";
      goto LABEL_99;
    }

    if (*(*v101 + a1 + 24))
    {
      break;
    }

    ++v12;
LABEL_72:
    a2 = (a2 + 1);
    a1 += 80;
    v28 += 88;
    if (a2 >= v2)
    {
      if (v18 != -1)
      {
        a1 = v119[2];
        if (a1 > v18)
        {
          v34 = v119[4];
          v35 = (*(*v97 + 32))(v97, 624, 8);
          v36 = re::Timeline::Timeline(v35, 42);
          *(v36 + 72) = 0;
          *(v36 + 80) = 0;
          v37 = v36 + 80;
          *(v36 + 88) = 0u;
          *(v36 + 104) = 0;
          *(v36 + 112) = 0u;
          *(v36 + 128) = 0u;
          *(v36 + 144) = 0;
          *(v36 + 152) = 0u;
          *(v36 + 168) = 0u;
          *(v36 + 184) = 0;
          *(v36 + 192) = 0u;
          *(v36 + 208) = 0u;
          *(v36 + 224) = 0;
          *(v36 + 232) = 0u;
          *(v36 + 248) = 0u;
          *(v36 + 264) = 0;
          *(v36 + 528) = 0;
          *(v36 + 536) = 0;
          *(v36 + 568) = 0;
          *(v36 + 560) = 0;
          *(v36 + 544) = 0u;
          *(v36 + 616) = 0;
          *(v36 + 576) = 0u;
          *(v36 + 592) = 0u;
          *(v36 + 608) = 0;
          *(v36 + 488) = 0u;
          *(v36 + 504) = 0u;
          *(v36 + 520) = 0;
          *(v36 + 272) = 0u;
          *(v36 + 288) = 0u;
          *(v36 + 304) = 0u;
          *(v36 + 320) = 0u;
          *(v36 + 336) = 0u;
          *(v36 + 352) = 0u;
          *(v36 + 368) = 0u;
          *(v36 + 384) = 0u;
          *(v36 + 400) = 0;
          *(v36 + 440) = 0;
          *(v36 + 408) = 0u;
          *(v36 + 424) = 0u;
          *(v36 + 480) = 0;
          *(v36 + 448) = 0u;
          *(v36 + 464) = 0u;
          *v36 = &unk_1F5CC2AE0;
          re::FixedArray<unsigned long>::init<>((v36 + 304), v97, v134);
          re::FixedArray<unsigned long>::init<>((v35 + 328), v97, v134 + 1);
          re::FixedArray<unsigned long>::init<>((v35 + 352), v97, v134);
          *(v35 + 416) = v97;
          re::DynamicArray<re::StringID>::setCapacity((v35 + 416), v12);
          ++*(v35 + 440);
          v135 = 0;
          v136 = 0;
          if (v118 == 1)
          {
            re::RigGraphDefinitionBuilder::init(&v114[1], v97, v103, v137);
            re::AnimationBlendTreeBuilder<re::Vector3<float>>::buildRig(v131, &v97, v35, v18, &v135);
            if (LOBYTE(v131[0]) != 1)
            {
              v42 = v133;
              v43 = v131[3];
              v44 = v132;
              goto LABEL_101;
            }

            re::RigGraphDefinitionBuilder::promoteParameter(&v114[1], *(v34 + 88 * v18 + 8), "output", "output", "", 0, v128);
            if ((v128[0] & 1) == 0 && v129)
            {
              if (BYTE8(v129))
              {
                (*(*v129 + 40))();
              }

              v130 = 0u;
              v129 = 0u;
            }

            v155 = 0;
            *&v154[2] = 0;
            v156 = 1;
            v159 = 0;
            v157 = 0;
            v158 = 0;
            v160 = 0;
            v163 = 0;
            v161 = 0;
            v162 = 0;
            v168 = 0;
            v165 = 0u;
            v166 = 0u;
            v164 = 0;
            v167 = 0;
            *&v152[16] = v137;
            v152[24] = 0;
            *v152 = v97;
            *&v152[8] = 0;
            re::RigGraphCompilation::init(&v154[2], v97);
            re::RigGraphSystem::buildFromDefinition(v97, v103, &v144);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v37, &v144);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v35 + 120, &v146 + 1);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v35 + 160, v149);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v35 + 200, v150);
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v35 + 240, v151);
            re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(v151);
            re::DynamicArray<re::StringID>::deinit(v150);
            re::DynamicArray<re::RigGraphNodeChild>::deinit(v149);
            re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v146 + 8);
            re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v144);
            re::RigGraphCompilation::~RigGraphCompilation(&v154[2]);
          }

          else
          {
            re::DynamicArray<re::StringID>::resize((v35 + 416), v12);
            re::FixedArray<re::AnimationBlendTreeNode>::init<>((v35 + 280), v97, v99);
            *(v35 + 376) = v97;
            re::DynamicArray<re::StringID>::setCapacity((v35 + 376), 0);
            ++*(v35 + 400);
            re::DynamicArray<re::StringID>::resize((v35 + 376), v99);
            if (!*(v35 + 288))
            {
LABEL_167:
              v131[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              v86 = MEMORY[0x1E69E9C10];
              v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v152 = 136315906;
              *&v152[4] = "operator[]";
              *&v152[12] = 1024;
              if (v87)
              {
                v88 = 3;
              }

              else
              {
                v88 = 2;
              }

              *&v152[14] = 468;
              *&v152[18] = 2048;
              *&v152[20] = 0;
              v153 = 2048;
              *v154 = 0;
              _os_log_send_and_compose_impl(v88, v131, &v144, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
              _os_crash_msg();
              __break(1u);
              goto LABEL_171;
            }

            v38 = *(v35 + 296);
            *v38 = 1065353216;
            a1 = v99;
            if (v99 <= v18)
            {
LABEL_171:
              v131[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              v89 = MEMORY[0x1E69E9C10];
              v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v152 = 136315906;
              *&v152[4] = "operator[]";
              *&v152[12] = 1024;
              if (v90)
              {
                v91 = 3;
              }

              else
              {
                v91 = 2;
              }

              *&v152[14] = 789;
              *&v152[18] = 2048;
              *&v152[20] = v18;
              v153 = 2048;
              *v154 = a1;
              _os_log_send_and_compose_impl(v91, v131, &v144, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
              _os_crash_msg();
              __break(1u);
LABEL_175:
              v131[0] = 0;
              *(v5 + 21) = 0u;
              *(v5 + 19) = 0u;
              *(v5 + 17) = 0u;
              *(v5 + 15) = 0u;
              *(v5 + 13) = 0u;
              v92 = MEMORY[0x1E69E9C10];
              v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v152 = 136315906;
              *&v152[4] = "operator[]";
              *&v152[12] = 1024;
              if (v93)
              {
                v94 = 3;
              }

              else
              {
                v94 = 2;
              }

              *&v152[14] = 797;
              *&v152[18] = 2048;
              *&v152[20] = v18;
              v153 = 2048;
              *v154 = a1;
              _os_log_send_and_compose_impl(v94, v131, &v144, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
              _os_crash_msg();
              __break(1u);
            }

            *(v38 + 6) = *(*v101 + 80 * v18 + 24);
            a1 = v119[2];
            if (a1 <= v18)
            {
              goto LABEL_175;
            }

            *(v38 + 7) = re::StringID::operator==((v119[4] + 88 * v18 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive);
            *(v38 + 4) = 1;
            re::AnimationBlendTreeBuilder<float>::addChildren(&v97, v35, v18, 1, &v135, &v136);
          }

          if (v125)
          {
            for (i = 0; i < v125; ++i)
            {
              re::AnimationBlendTree<float>::addClip(v35, i, *(v127 + 8 * i));
            }
          }

          v40 = v119;
          re::DynamicArray<re::AnimationBlendTreeNodeDescription>::operator=(v35 + 456, v119);
          re::DynamicArray<re::RigGraphConnection>::operator=(v35 + 496, v40 + 5);
          *(v35 + 536) = *(v40 + 20);
          re::DynamicArray<re::BlendSpaceAxisDefinition>::operator=(v35 + 544, v40 + 11);
          re::DynamicArray<re::BlendSpaceSampleDefinition>::operator=(v35 + 584, v40 + 16);
          *(v35 + 12) = *(v96 + 12);
          *(v35 + 16) = *(v96 + 16);
          re::StringID::operator=((v35 + 24), (v96 + 24));
          re::DynamicString::operator=((v35 + 40), (v96 + 40));
          *(v35 + 72) = *(v96 + 72);
          goto LABEL_104;
        }

LABEL_163:
        v131[0] = 0;
        *(v5 + 21) = 0u;
        *(v5 + 19) = 0u;
        *(v5 + 17) = 0u;
        *(v5 + 15) = 0u;
        *(v5 + 13) = 0u;
        v83 = MEMORY[0x1E69E9C10];
        v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v152 = 136315906;
        *&v152[4] = "operator[]";
        *&v152[12] = 1024;
        if (v84)
        {
          v85 = 3;
        }

        else
        {
          v85 = 2;
        }

        *&v152[14] = 797;
        *&v152[18] = 2048;
        *&v152[20] = v18;
        v153 = 2048;
        *v154 = a1;
        _os_log_send_and_compose_impl(v85, v131, &v144, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v152, 38, v95, v96);
        _os_crash_msg();
        __break(1u);
        goto LABEL_167;
      }

      goto LABEL_83;
    }
  }

  v41 = "All external input nodes should be leaf nodes, but one found with child.";
LABEL_99:
LABEL_100:
  v42 = v145;
  v43 = v144;
  v44 = BYTE8(v144);
LABEL_101:
  v35 = 0;
  if (v43 && (v44 & 1) != 0)
  {
    (*(*v43 + 40))(v43, v42);
    v35 = 0;
  }

LABEL_104:
  re::BindNode::deinit(&v143[8]);
  re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit(v137);
  if (v137[0] && (v138 & 1) == 0)
  {
    (*(*v137[0] + 40))();
  }

  if (v123)
  {
    if (v127)
    {
      (*(*v123 + 40))();
    }

    v127 = 0;
    v124 = 0;
    v125 = 0;
    v123 = 0;
    ++v126;
  }

  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v120);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v115);
  re::DynamicArray<re::RigGraphInputValue>::deinit(&v112[8]);
  re::DynamicArray<re::RigGraphConnection>::deinit(&v110[1]);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v108[8]);
  re::DynamicArray<re::RigGraphParameterProxy>::deinit(v106 + 8);
  v45 = re::DynamicArray<re::RigGraphParameterProxy>::deinit(v104);
  if (v103[0])
  {
    if (v103[0])
    {
    }
  }

  v103[0] = 0;
  v103[1] = &str_67;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v101[8]);
  re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::deinit(&v98);
  return v35;
}