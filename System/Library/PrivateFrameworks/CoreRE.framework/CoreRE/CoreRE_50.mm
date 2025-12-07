uint64_t re::internal::defaultConstruct<re::FloatAnimationClipAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::TimelineAssetData::TimelineAssetData(a3, 3);
  *(result + 72) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  *(result + 176) = 1065353216;
  *(result + 180) = 0;
  *result = &unk_1F5CBE790;
  return result;
}

void re::internal::defaultDestruct<re::FloatAnimationClipAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CBE800;
  v4 = (a3 + 5);
  re::AssetHandle::~AssetHandle((a3 + 10));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit(v4);

  re::StringID::destroyString((a3 + 3));
}

uint64_t re::internal::defaultConstructV2<re::FloatAnimationClipAssetData>(uint64_t a1)
{
  result = re::TimelineAssetData::TimelineAssetData(a1, 3);
  *(result + 72) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  *(result + 176) = 1065353216;
  *(result + 180) = 0;
  *result = &unk_1F5CBE790;
  return result;
}

void re::internal::defaultDestructV2<re::FloatAnimationClipAssetData>(void *a1)
{
  *a1 = &unk_1F5CBE800;
  v2 = (a1 + 5);
  re::AssetHandle::~AssetHandle((a1 + 10));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_DoubleAnimationClipAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194CF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194CF0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18CCF8, "DoubleAnimationClipAssetData");
    __cxa_guard_release(&qword_1EE194CF0);
  }

  return &unk_1EE18CCF8;
}

void re::initInfo_DoubleAnimationClipAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v55[0] = 0x85C7595DE59F22EELL;
  v55[1] = "DoubleAnimationClipAssetData";
  if (v55[0])
  {
    if (v55[0])
    {
    }
  }

  *(this + 2) = v56;
  if ((atomic_load_explicit(&qword_1EE194CF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194CF8))
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
    qword_1EE18C5C0 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE18C5C8 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_AssetHandle(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "clipSource";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x5000000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE18C5D0 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::IntrospectionInfo<re::Optional<double>>::get(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "clipStart";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x6800000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE18C5D8 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::IntrospectionInfo<re::Optional<double>>::get(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "clipEnd";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x7800000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE18C5E0 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::introspect_double(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "clipOffset";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x8800000005;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE18C5E8 = v33;
    v34 = re::introspectionAllocator();
    v36 = re::introspect_BOOL(1, v35);
    v37 = (*(*v34 + 32))(v34, 72, 8);
    *v37 = 1;
    *(v37 + 8) = "clipReversed";
    *(v37 + 16) = v36;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0x9000000006;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    qword_1EE18C5F0 = v37;
    v38 = re::introspectionAllocator();
    v40 = re::introspect_double(1, v39);
    v41 = (*(*v38 + 32))(v38, 72, 8);
    *v41 = 1;
    *(v41 + 8) = "delay";
    *(v41 + 16) = v40;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0x9800000007;
    *(v41 + 40) = 0;
    *(v41 + 48) = 0;
    *(v41 + 56) = 0;
    *(v41 + 64) = 0;
    qword_1EE18C5F8 = v41;
    v42 = re::introspectionAllocator();
    v44 = re::IntrospectionInfo<re::Optional<double>>::get(1, v43);
    v45 = (*(*v42 + 32))(v42, 72, 8);
    *v45 = 1;
    *(v45 + 8) = "duration";
    *(v45 + 16) = v44;
    *(v45 + 24) = 0;
    *(v45 + 32) = 0xA000000008;
    *(v45 + 40) = 0;
    *(v45 + 48) = 0;
    *(v45 + 56) = 0;
    *(v45 + 64) = 0;
    qword_1EE18C600 = v45;
    v46 = re::introspectionAllocator();
    v48 = re::introspect_float(1, v47);
    v49 = (*(*v46 + 32))(v46, 72, 8);
    *v49 = 1;
    *(v49 + 8) = "speed";
    *(v49 + 16) = v48;
    *(v49 + 24) = 0;
    *(v49 + 32) = 0xB000000009;
    *(v49 + 40) = 0;
    *(v49 + 48) = 0;
    *(v49 + 56) = 0;
    *(v49 + 64) = 0;
    qword_1EE18C608 = v49;
    v50 = re::introspectionAllocator();
    v52 = re::introspect_LoopBehavior(1, v51);
    v53 = (*(*v50 + 32))(v50, 72, 8);
    *v53 = 1;
    *(v53 + 8) = "loopBehavior";
    *(v53 + 16) = v52;
    *(v53 + 24) = 0;
    *(v53 + 32) = 0xB40000000ALL;
    *(v53 + 40) = 0;
    *(v53 + 48) = 0;
    *(v53 + 56) = 0;
    *(v53 + 64) = 0;
    qword_1EE18C610 = v53;
    __cxa_guard_release(&qword_1EE194CF8);
  }

  *(this + 2) = 0xB800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 11;
  *(this + 8) = &qword_1EE18C5C0;
  *(this + 9) = re::internal::defaultConstruct<re::DoubleAnimationClipAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::DoubleAnimationClipAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::DoubleAnimationClipAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::DoubleAnimationClipAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v54 = v56;
}

uint64_t re::internal::defaultConstruct<re::DoubleAnimationClipAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::TimelineAssetData::TimelineAssetData(a3, 4);
  *(result + 72) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  *(result + 176) = 1065353216;
  *(result + 180) = 0;
  *result = &unk_1F5CBE880;
  return result;
}

void re::internal::defaultDestruct<re::DoubleAnimationClipAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CBE908;
  v4 = (a3 + 5);
  re::AssetHandle::~AssetHandle((a3 + 10));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit(v4);

  re::StringID::destroyString((a3 + 3));
}

uint64_t re::internal::defaultConstructV2<re::DoubleAnimationClipAssetData>(uint64_t a1)
{
  result = re::TimelineAssetData::TimelineAssetData(a1, 4);
  *(result + 72) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  *(result + 176) = 1065353216;
  *(result + 180) = 0;
  *result = &unk_1F5CBE880;
  return result;
}

void re::internal::defaultDestructV2<re::DoubleAnimationClipAssetData>(void *a1)
{
  *a1 = &unk_1F5CBE908;
  v2 = (a1 + 5);
  re::AssetHandle::~AssetHandle((a1 + 10));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_Vector2FAnimationClipAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194D08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194D08))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18CD88, "Vector2FAnimationClipAssetData");
    __cxa_guard_release(&qword_1EE194D08);
  }

  return &unk_1EE18CD88;
}

void re::initInfo_Vector2FAnimationClipAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v55[0] = 0xF3DCDF9C9990FFALL;
  v55[1] = "Vector2FAnimationClipAssetData";
  if (v55[0])
  {
    if (v55[0])
    {
    }
  }

  *(this + 2) = v56;
  if ((atomic_load_explicit(&qword_1EE194D10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194D10))
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
    qword_1EE18C618 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE18C620 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_AssetHandle(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "clipSource";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x5000000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE18C628 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::IntrospectionInfo<re::Optional<double>>::get(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "clipStart";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x6800000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE18C630 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::IntrospectionInfo<re::Optional<double>>::get(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "clipEnd";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x7800000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE18C638 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::introspect_double(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "clipOffset";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x8800000005;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE18C640 = v33;
    v34 = re::introspectionAllocator();
    v36 = re::introspect_BOOL(1, v35);
    v37 = (*(*v34 + 32))(v34, 72, 8);
    *v37 = 1;
    *(v37 + 8) = "clipReversed";
    *(v37 + 16) = v36;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0x9000000006;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    qword_1EE18C648 = v37;
    v38 = re::introspectionAllocator();
    v40 = re::introspect_double(1, v39);
    v41 = (*(*v38 + 32))(v38, 72, 8);
    *v41 = 1;
    *(v41 + 8) = "delay";
    *(v41 + 16) = v40;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0x9800000007;
    *(v41 + 40) = 0;
    *(v41 + 48) = 0;
    *(v41 + 56) = 0;
    *(v41 + 64) = 0;
    qword_1EE18C650 = v41;
    v42 = re::introspectionAllocator();
    v44 = re::IntrospectionInfo<re::Optional<double>>::get(1, v43);
    v45 = (*(*v42 + 32))(v42, 72, 8);
    *v45 = 1;
    *(v45 + 8) = "duration";
    *(v45 + 16) = v44;
    *(v45 + 24) = 0;
    *(v45 + 32) = 0xA000000008;
    *(v45 + 40) = 0;
    *(v45 + 48) = 0;
    *(v45 + 56) = 0;
    *(v45 + 64) = 0;
    qword_1EE18C658 = v45;
    v46 = re::introspectionAllocator();
    v48 = re::introspect_float(1, v47);
    v49 = (*(*v46 + 32))(v46, 72, 8);
    *v49 = 1;
    *(v49 + 8) = "speed";
    *(v49 + 16) = v48;
    *(v49 + 24) = 0;
    *(v49 + 32) = 0xB000000009;
    *(v49 + 40) = 0;
    *(v49 + 48) = 0;
    *(v49 + 56) = 0;
    *(v49 + 64) = 0;
    qword_1EE18C660 = v49;
    v50 = re::introspectionAllocator();
    v52 = re::introspect_LoopBehavior(1, v51);
    v53 = (*(*v50 + 32))(v50, 72, 8);
    *v53 = 1;
    *(v53 + 8) = "loopBehavior";
    *(v53 + 16) = v52;
    *(v53 + 24) = 0;
    *(v53 + 32) = 0xB40000000ALL;
    *(v53 + 40) = 0;
    *(v53 + 48) = 0;
    *(v53 + 56) = 0;
    *(v53 + 64) = 0;
    qword_1EE18C668 = v53;
    __cxa_guard_release(&qword_1EE194D10);
  }

  *(this + 2) = 0xB800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 11;
  *(this + 8) = &qword_1EE18C618;
  *(this + 9) = re::internal::defaultConstruct<re::Vector2FAnimationClipAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Vector2FAnimationClipAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::Vector2FAnimationClipAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::Vector2FAnimationClipAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v54 = v56;
}

uint64_t re::internal::defaultConstruct<re::Vector2FAnimationClipAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::TimelineAssetData::TimelineAssetData(a3, 5);
  *(result + 72) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  *(result + 176) = 1065353216;
  *(result + 180) = 0;
  *result = &unk_1F5CBE988;
  return result;
}

void re::internal::defaultDestruct<re::Vector2FAnimationClipAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CBEA10;
  v4 = (a3 + 5);
  re::AssetHandle::~AssetHandle((a3 + 10));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit(v4);

  re::StringID::destroyString((a3 + 3));
}

uint64_t re::internal::defaultConstructV2<re::Vector2FAnimationClipAssetData>(uint64_t a1)
{
  result = re::TimelineAssetData::TimelineAssetData(a1, 5);
  *(result + 72) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  *(result + 176) = 1065353216;
  *(result + 180) = 0;
  *result = &unk_1F5CBE988;
  return result;
}

void re::internal::defaultDestructV2<re::Vector2FAnimationClipAssetData>(void *a1)
{
  *a1 = &unk_1F5CBEA10;
  v2 = (a1 + 5);
  re::AssetHandle::~AssetHandle((a1 + 10));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_Vector3FAnimationClipAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194D20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194D20))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18CE18, "Vector3FAnimationClipAssetData");
    __cxa_guard_release(&qword_1EE194D20);
  }

  return &unk_1EE18CE18;
}

void re::initInfo_Vector3FAnimationClipAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v55[0] = 0x447BD129C19C2DB8;
  v55[1] = "Vector3FAnimationClipAssetData";
  if (v55[0])
  {
    if (v55[0])
    {
    }
  }

  *(this + 2) = v56;
  if ((atomic_load_explicit(&qword_1EE194D28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194D28))
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
    qword_1EE18C670 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE18C678 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_AssetHandle(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "clipSource";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x5000000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE18C680 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::IntrospectionInfo<re::Optional<double>>::get(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "clipStart";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x6800000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE18C688 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::IntrospectionInfo<re::Optional<double>>::get(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "clipEnd";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x7800000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE18C690 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::introspect_double(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "clipOffset";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x8800000005;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE18C698 = v33;
    v34 = re::introspectionAllocator();
    v36 = re::introspect_BOOL(1, v35);
    v37 = (*(*v34 + 32))(v34, 72, 8);
    *v37 = 1;
    *(v37 + 8) = "clipReversed";
    *(v37 + 16) = v36;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0x9000000006;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    qword_1EE18C6A0 = v37;
    v38 = re::introspectionAllocator();
    v40 = re::introspect_double(1, v39);
    v41 = (*(*v38 + 32))(v38, 72, 8);
    *v41 = 1;
    *(v41 + 8) = "delay";
    *(v41 + 16) = v40;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0x9800000007;
    *(v41 + 40) = 0;
    *(v41 + 48) = 0;
    *(v41 + 56) = 0;
    *(v41 + 64) = 0;
    qword_1EE18C6A8 = v41;
    v42 = re::introspectionAllocator();
    v44 = re::IntrospectionInfo<re::Optional<double>>::get(1, v43);
    v45 = (*(*v42 + 32))(v42, 72, 8);
    *v45 = 1;
    *(v45 + 8) = "duration";
    *(v45 + 16) = v44;
    *(v45 + 24) = 0;
    *(v45 + 32) = 0xA000000008;
    *(v45 + 40) = 0;
    *(v45 + 48) = 0;
    *(v45 + 56) = 0;
    *(v45 + 64) = 0;
    qword_1EE18C6B0 = v45;
    v46 = re::introspectionAllocator();
    v48 = re::introspect_float(1, v47);
    v49 = (*(*v46 + 32))(v46, 72, 8);
    *v49 = 1;
    *(v49 + 8) = "speed";
    *(v49 + 16) = v48;
    *(v49 + 24) = 0;
    *(v49 + 32) = 0xB000000009;
    *(v49 + 40) = 0;
    *(v49 + 48) = 0;
    *(v49 + 56) = 0;
    *(v49 + 64) = 0;
    qword_1EE18C6B8 = v49;
    v50 = re::introspectionAllocator();
    v52 = re::introspect_LoopBehavior(1, v51);
    v53 = (*(*v50 + 32))(v50, 72, 8);
    *v53 = 1;
    *(v53 + 8) = "loopBehavior";
    *(v53 + 16) = v52;
    *(v53 + 24) = 0;
    *(v53 + 32) = 0xB40000000ALL;
    *(v53 + 40) = 0;
    *(v53 + 48) = 0;
    *(v53 + 56) = 0;
    *(v53 + 64) = 0;
    qword_1EE18C6C0 = v53;
    __cxa_guard_release(&qword_1EE194D28);
  }

  *(this + 2) = 0xB800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 11;
  *(this + 8) = &qword_1EE18C670;
  *(this + 9) = re::internal::defaultConstruct<re::Vector3FAnimationClipAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Vector3FAnimationClipAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::Vector3FAnimationClipAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::Vector3FAnimationClipAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v54 = v56;
}

uint64_t re::internal::defaultConstruct<re::Vector3FAnimationClipAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::TimelineAssetData::TimelineAssetData(a3, 6);
  *(result + 72) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  *(result + 176) = 1065353216;
  *(result + 180) = 0;
  *result = &unk_1F5CBEA90;
  return result;
}

void re::internal::defaultDestruct<re::Vector3FAnimationClipAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CBEB18;
  v4 = (a3 + 5);
  re::AssetHandle::~AssetHandle((a3 + 10));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit(v4);

  re::StringID::destroyString((a3 + 3));
}

uint64_t re::internal::defaultConstructV2<re::Vector3FAnimationClipAssetData>(uint64_t a1)
{
  result = re::TimelineAssetData::TimelineAssetData(a1, 6);
  *(result + 72) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  *(result + 176) = 1065353216;
  *(result + 180) = 0;
  *result = &unk_1F5CBEA90;
  return result;
}

void re::internal::defaultDestructV2<re::Vector3FAnimationClipAssetData>(void *a1)
{
  *a1 = &unk_1F5CBEB18;
  v2 = (a1 + 5);
  re::AssetHandle::~AssetHandle((a1 + 10));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_Vector4FAnimationClipAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194D38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194D38))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18CEA8, "Vector4FAnimationClipAssetData");
    __cxa_guard_release(&qword_1EE194D38);
  }

  return &unk_1EE18CEA8;
}

void re::initInfo_Vector4FAnimationClipAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v55[0] = 0x79B9D459B99F4B76;
  v55[1] = "Vector4FAnimationClipAssetData";
  if (v55[0])
  {
    if (v55[0])
    {
    }
  }

  *(this + 2) = v56;
  if ((atomic_load_explicit(&qword_1EE194D40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194D40))
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
    qword_1EE18C6C8 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE18C6D0 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_AssetHandle(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "clipSource";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x5000000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE18C6D8 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::IntrospectionInfo<re::Optional<double>>::get(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "clipStart";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x6800000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE18C6E0 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::IntrospectionInfo<re::Optional<double>>::get(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "clipEnd";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x7800000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE18C6E8 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::introspect_double(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "clipOffset";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x8800000005;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE18C6F0 = v33;
    v34 = re::introspectionAllocator();
    v36 = re::introspect_BOOL(1, v35);
    v37 = (*(*v34 + 32))(v34, 72, 8);
    *v37 = 1;
    *(v37 + 8) = "clipReversed";
    *(v37 + 16) = v36;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0x9000000006;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    qword_1EE18C6F8 = v37;
    v38 = re::introspectionAllocator();
    v40 = re::introspect_double(1, v39);
    v41 = (*(*v38 + 32))(v38, 72, 8);
    *v41 = 1;
    *(v41 + 8) = "delay";
    *(v41 + 16) = v40;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0x9800000007;
    *(v41 + 40) = 0;
    *(v41 + 48) = 0;
    *(v41 + 56) = 0;
    *(v41 + 64) = 0;
    qword_1EE18C700 = v41;
    v42 = re::introspectionAllocator();
    v44 = re::IntrospectionInfo<re::Optional<double>>::get(1, v43);
    v45 = (*(*v42 + 32))(v42, 72, 8);
    *v45 = 1;
    *(v45 + 8) = "duration";
    *(v45 + 16) = v44;
    *(v45 + 24) = 0;
    *(v45 + 32) = 0xA000000008;
    *(v45 + 40) = 0;
    *(v45 + 48) = 0;
    *(v45 + 56) = 0;
    *(v45 + 64) = 0;
    qword_1EE18C708 = v45;
    v46 = re::introspectionAllocator();
    v48 = re::introspect_float(1, v47);
    v49 = (*(*v46 + 32))(v46, 72, 8);
    *v49 = 1;
    *(v49 + 8) = "speed";
    *(v49 + 16) = v48;
    *(v49 + 24) = 0;
    *(v49 + 32) = 0xB000000009;
    *(v49 + 40) = 0;
    *(v49 + 48) = 0;
    *(v49 + 56) = 0;
    *(v49 + 64) = 0;
    qword_1EE18C710 = v49;
    v50 = re::introspectionAllocator();
    v52 = re::introspect_LoopBehavior(1, v51);
    v53 = (*(*v50 + 32))(v50, 72, 8);
    *v53 = 1;
    *(v53 + 8) = "loopBehavior";
    *(v53 + 16) = v52;
    *(v53 + 24) = 0;
    *(v53 + 32) = 0xB40000000ALL;
    *(v53 + 40) = 0;
    *(v53 + 48) = 0;
    *(v53 + 56) = 0;
    *(v53 + 64) = 0;
    qword_1EE18C718 = v53;
    __cxa_guard_release(&qword_1EE194D40);
  }

  *(this + 2) = 0xB800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 11;
  *(this + 8) = &qword_1EE18C6C8;
  *(this + 9) = re::internal::defaultConstruct<re::Vector4FAnimationClipAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Vector4FAnimationClipAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::Vector4FAnimationClipAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::Vector4FAnimationClipAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v54 = v56;
}

uint64_t re::internal::defaultConstruct<re::Vector4FAnimationClipAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::TimelineAssetData::TimelineAssetData(a3, 7);
  *(result + 72) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  *(result + 176) = 1065353216;
  *(result + 180) = 0;
  *result = &unk_1F5CBEB98;
  return result;
}

void re::internal::defaultDestruct<re::Vector4FAnimationClipAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CBEC20;
  v4 = (a3 + 5);
  re::AssetHandle::~AssetHandle((a3 + 10));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit(v4);

  re::StringID::destroyString((a3 + 3));
}

uint64_t re::internal::defaultConstructV2<re::Vector4FAnimationClipAssetData>(uint64_t a1)
{
  result = re::TimelineAssetData::TimelineAssetData(a1, 7);
  *(result + 72) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  *(result + 176) = 1065353216;
  *(result + 180) = 0;
  *result = &unk_1F5CBEB98;
  return result;
}

void re::internal::defaultDestructV2<re::Vector4FAnimationClipAssetData>(void *a1)
{
  *a1 = &unk_1F5CBEC20;
  v2 = (a1 + 5);
  re::AssetHandle::~AssetHandle((a1 + 10));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_QuaternionFAnimationClipAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194D50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194D50))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18CF38, "QuaternionFAnimationClipAssetData");
    __cxa_guard_release(&qword_1EE194D50);
  }

  return &unk_1EE18CF38;
}

void re::initInfo_QuaternionFAnimationClipAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v55[0] = 0xAA4CD8A06333BE1CLL;
  v55[1] = "QuaternionFAnimationClipAssetData";
  if (v55[0])
  {
    if (v55[0])
    {
    }
  }

  *(this + 2) = v56;
  if ((atomic_load_explicit(&qword_1EE194D58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194D58))
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
    qword_1EE18C720 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE18C728 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_AssetHandle(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "clipSource";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x5000000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE18C730 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::IntrospectionInfo<re::Optional<double>>::get(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "clipStart";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x6800000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE18C738 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::IntrospectionInfo<re::Optional<double>>::get(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "clipEnd";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x7800000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE18C740 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::introspect_double(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "clipOffset";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x8800000005;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE18C748 = v33;
    v34 = re::introspectionAllocator();
    v36 = re::introspect_BOOL(1, v35);
    v37 = (*(*v34 + 32))(v34, 72, 8);
    *v37 = 1;
    *(v37 + 8) = "clipReversed";
    *(v37 + 16) = v36;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0x9000000006;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    qword_1EE18C750 = v37;
    v38 = re::introspectionAllocator();
    v40 = re::introspect_double(1, v39);
    v41 = (*(*v38 + 32))(v38, 72, 8);
    *v41 = 1;
    *(v41 + 8) = "delay";
    *(v41 + 16) = v40;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0x9800000007;
    *(v41 + 40) = 0;
    *(v41 + 48) = 0;
    *(v41 + 56) = 0;
    *(v41 + 64) = 0;
    qword_1EE18C758 = v41;
    v42 = re::introspectionAllocator();
    v44 = re::IntrospectionInfo<re::Optional<double>>::get(1, v43);
    v45 = (*(*v42 + 32))(v42, 72, 8);
    *v45 = 1;
    *(v45 + 8) = "duration";
    *(v45 + 16) = v44;
    *(v45 + 24) = 0;
    *(v45 + 32) = 0xA000000008;
    *(v45 + 40) = 0;
    *(v45 + 48) = 0;
    *(v45 + 56) = 0;
    *(v45 + 64) = 0;
    qword_1EE18C760 = v45;
    v46 = re::introspectionAllocator();
    v48 = re::introspect_float(1, v47);
    v49 = (*(*v46 + 32))(v46, 72, 8);
    *v49 = 1;
    *(v49 + 8) = "speed";
    *(v49 + 16) = v48;
    *(v49 + 24) = 0;
    *(v49 + 32) = 0xB000000009;
    *(v49 + 40) = 0;
    *(v49 + 48) = 0;
    *(v49 + 56) = 0;
    *(v49 + 64) = 0;
    qword_1EE18C768 = v49;
    v50 = re::introspectionAllocator();
    v52 = re::introspect_LoopBehavior(1, v51);
    v53 = (*(*v50 + 32))(v50, 72, 8);
    *v53 = 1;
    *(v53 + 8) = "loopBehavior";
    *(v53 + 16) = v52;
    *(v53 + 24) = 0;
    *(v53 + 32) = 0xB40000000ALL;
    *(v53 + 40) = 0;
    *(v53 + 48) = 0;
    *(v53 + 56) = 0;
    *(v53 + 64) = 0;
    qword_1EE18C770 = v53;
    __cxa_guard_release(&qword_1EE194D58);
  }

  *(this + 2) = 0xB800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 11;
  *(this + 8) = &qword_1EE18C720;
  *(this + 9) = re::internal::defaultConstruct<re::QuaternionFAnimationClipAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::QuaternionFAnimationClipAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::QuaternionFAnimationClipAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::QuaternionFAnimationClipAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v54 = v56;
}

uint64_t re::internal::defaultConstruct<re::QuaternionFAnimationClipAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::TimelineAssetData::TimelineAssetData(a3, 8);
  *(result + 72) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  *(result + 176) = 1065353216;
  *(result + 180) = 0;
  *result = &unk_1F5CBECA0;
  return result;
}

void re::internal::defaultDestruct<re::QuaternionFAnimationClipAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CBED28;
  v4 = (a3 + 5);
  re::AssetHandle::~AssetHandle((a3 + 10));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit(v4);

  re::StringID::destroyString((a3 + 3));
}

uint64_t re::internal::defaultConstructV2<re::QuaternionFAnimationClipAssetData>(uint64_t a1)
{
  result = re::TimelineAssetData::TimelineAssetData(a1, 8);
  *(result + 72) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  *(result + 176) = 1065353216;
  *(result + 180) = 0;
  *result = &unk_1F5CBECA0;
  return result;
}

void re::internal::defaultDestructV2<re::QuaternionFAnimationClipAssetData>(void *a1)
{
  *a1 = &unk_1F5CBED28;
  v2 = (a1 + 5);
  re::AssetHandle::~AssetHandle((a1 + 10));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_SRTAnimationClipAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194D68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194D68))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18CFC8, "SRTAnimationClipAssetData");
    __cxa_guard_release(&qword_1EE194D68);
  }

  return &unk_1EE18CFC8;
}

void re::initInfo_SRTAnimationClipAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v55[0] = 0xD82E923A091050B6;
  v55[1] = "SRTAnimationClipAssetData";
  if (v55[0])
  {
    if (v55[0])
    {
    }
  }

  *(this + 2) = v56;
  if ((atomic_load_explicit(&qword_1EE194D70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194D70))
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
    qword_1EE18C778 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE18C780 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_AssetHandle(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "clipSource";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x5000000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE18C788 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::IntrospectionInfo<re::Optional<double>>::get(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "clipStart";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x6800000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE18C790 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::IntrospectionInfo<re::Optional<double>>::get(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "clipEnd";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x7800000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE18C798 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::introspect_double(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "clipOffset";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x8800000005;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE18C7A0 = v33;
    v34 = re::introspectionAllocator();
    v36 = re::introspect_BOOL(1, v35);
    v37 = (*(*v34 + 32))(v34, 72, 8);
    *v37 = 1;
    *(v37 + 8) = "clipReversed";
    *(v37 + 16) = v36;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0x9000000006;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    qword_1EE18C7A8 = v37;
    v38 = re::introspectionAllocator();
    v40 = re::introspect_double(1, v39);
    v41 = (*(*v38 + 32))(v38, 72, 8);
    *v41 = 1;
    *(v41 + 8) = "delay";
    *(v41 + 16) = v40;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0x9800000007;
    *(v41 + 40) = 0;
    *(v41 + 48) = 0;
    *(v41 + 56) = 0;
    *(v41 + 64) = 0;
    qword_1EE18C7B0 = v41;
    v42 = re::introspectionAllocator();
    v44 = re::IntrospectionInfo<re::Optional<double>>::get(1, v43);
    v45 = (*(*v42 + 32))(v42, 72, 8);
    *v45 = 1;
    *(v45 + 8) = "duration";
    *(v45 + 16) = v44;
    *(v45 + 24) = 0;
    *(v45 + 32) = 0xA000000008;
    *(v45 + 40) = 0;
    *(v45 + 48) = 0;
    *(v45 + 56) = 0;
    *(v45 + 64) = 0;
    qword_1EE18C7B8 = v45;
    v46 = re::introspectionAllocator();
    v48 = re::introspect_float(1, v47);
    v49 = (*(*v46 + 32))(v46, 72, 8);
    *v49 = 1;
    *(v49 + 8) = "speed";
    *(v49 + 16) = v48;
    *(v49 + 24) = 0;
    *(v49 + 32) = 0xB000000009;
    *(v49 + 40) = 0;
    *(v49 + 48) = 0;
    *(v49 + 56) = 0;
    *(v49 + 64) = 0;
    qword_1EE18C7C0 = v49;
    v50 = re::introspectionAllocator();
    v52 = re::introspect_LoopBehavior(1, v51);
    v53 = (*(*v50 + 32))(v50, 72, 8);
    *v53 = 1;
    *(v53 + 8) = "loopBehavior";
    *(v53 + 16) = v52;
    *(v53 + 24) = 0;
    *(v53 + 32) = 0xB40000000ALL;
    *(v53 + 40) = 0;
    *(v53 + 48) = 0;
    *(v53 + 56) = 0;
    *(v53 + 64) = 0;
    qword_1EE18C7C8 = v53;
    __cxa_guard_release(&qword_1EE194D70);
  }

  *(this + 2) = 0xB800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 11;
  *(this + 8) = &qword_1EE18C778;
  *(this + 9) = re::internal::defaultConstruct<re::SRTAnimationClipAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SRTAnimationClipAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::SRTAnimationClipAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::SRTAnimationClipAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v54 = v56;
}

uint64_t re::internal::defaultConstruct<re::SRTAnimationClipAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::TimelineAssetData::TimelineAssetData(a3, 9);
  *(result + 72) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  *(result + 176) = 1065353216;
  *(result + 180) = 0;
  *result = &unk_1F5CBEDA8;
  return result;
}

void re::internal::defaultDestruct<re::SRTAnimationClipAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CBEE30;
  v4 = (a3 + 5);
  re::AssetHandle::~AssetHandle((a3 + 10));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit(v4);

  re::StringID::destroyString((a3 + 3));
}

uint64_t re::internal::defaultConstructV2<re::SRTAnimationClipAssetData>(uint64_t a1)
{
  result = re::TimelineAssetData::TimelineAssetData(a1, 9);
  *(result + 72) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  *(result + 176) = 1065353216;
  *(result + 180) = 0;
  *result = &unk_1F5CBEDA8;
  return result;
}

void re::internal::defaultDestructV2<re::SRTAnimationClipAssetData>(void *a1)
{
  *a1 = &unk_1F5CBEE30;
  v2 = (a1 + 5);
  re::AssetHandle::~AssetHandle((a1 + 10));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_SkeletalPoseAnimationClipAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194D80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194D80))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18D058, "SkeletalPoseAnimationClipAssetData");
    __cxa_guard_release(&qword_1EE194D80);
  }

  return &unk_1EE18D058;
}

void re::initInfo_SkeletalPoseAnimationClipAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v55[0] = 0xE138794DB1523760;
  v55[1] = "SkeletalPoseAnimationClipAssetData";
  if (v55[0])
  {
    if (v55[0])
    {
    }
  }

  *(this + 2) = v56;
  if ((atomic_load_explicit(&qword_1EE194D88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194D88))
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
    qword_1EE18C7D0 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE18C7D8 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_AssetHandle(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "clipSource";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x5000000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE18C7E0 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::IntrospectionInfo<re::Optional<double>>::get(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "clipStart";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x6800000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE18C7E8 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::IntrospectionInfo<re::Optional<double>>::get(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "clipEnd";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x7800000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE18C7F0 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::introspect_double(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "clipOffset";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x8800000005;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE18C7F8 = v33;
    v34 = re::introspectionAllocator();
    v36 = re::introspect_BOOL(1, v35);
    v37 = (*(*v34 + 32))(v34, 72, 8);
    *v37 = 1;
    *(v37 + 8) = "clipReversed";
    *(v37 + 16) = v36;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0x9000000006;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    qword_1EE18C800 = v37;
    v38 = re::introspectionAllocator();
    v40 = re::introspect_double(1, v39);
    v41 = (*(*v38 + 32))(v38, 72, 8);
    *v41 = 1;
    *(v41 + 8) = "delay";
    *(v41 + 16) = v40;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0x9800000007;
    *(v41 + 40) = 0;
    *(v41 + 48) = 0;
    *(v41 + 56) = 0;
    *(v41 + 64) = 0;
    qword_1EE18C808 = v41;
    v42 = re::introspectionAllocator();
    v44 = re::IntrospectionInfo<re::Optional<double>>::get(1, v43);
    v45 = (*(*v42 + 32))(v42, 72, 8);
    *v45 = 1;
    *(v45 + 8) = "duration";
    *(v45 + 16) = v44;
    *(v45 + 24) = 0;
    *(v45 + 32) = 0xA000000008;
    *(v45 + 40) = 0;
    *(v45 + 48) = 0;
    *(v45 + 56) = 0;
    *(v45 + 64) = 0;
    qword_1EE18C810 = v45;
    v46 = re::introspectionAllocator();
    v48 = re::introspect_float(1, v47);
    v49 = (*(*v46 + 32))(v46, 72, 8);
    *v49 = 1;
    *(v49 + 8) = "speed";
    *(v49 + 16) = v48;
    *(v49 + 24) = 0;
    *(v49 + 32) = 0xB000000009;
    *(v49 + 40) = 0;
    *(v49 + 48) = 0;
    *(v49 + 56) = 0;
    *(v49 + 64) = 0;
    qword_1EE18C818 = v49;
    v50 = re::introspectionAllocator();
    v52 = re::introspect_LoopBehavior(1, v51);
    v53 = (*(*v50 + 32))(v50, 72, 8);
    *v53 = 1;
    *(v53 + 8) = "loopBehavior";
    *(v53 + 16) = v52;
    *(v53 + 24) = 0;
    *(v53 + 32) = 0xB40000000ALL;
    *(v53 + 40) = 0;
    *(v53 + 48) = 0;
    *(v53 + 56) = 0;
    *(v53 + 64) = 0;
    qword_1EE18C820 = v53;
    __cxa_guard_release(&qword_1EE194D88);
  }

  *(this + 2) = 0xB800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 11;
  *(this + 8) = &qword_1EE18C7D0;
  *(this + 9) = re::internal::defaultConstruct<re::SkeletalPoseAnimationClipAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SkeletalPoseAnimationClipAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::SkeletalPoseAnimationClipAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::SkeletalPoseAnimationClipAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v54 = v56;
}

uint64_t re::internal::defaultConstruct<re::SkeletalPoseAnimationClipAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::TimelineAssetData::TimelineAssetData(a3, 10);
  *(result + 72) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  *(result + 176) = 1065353216;
  *(result + 180) = 0;
  *result = &unk_1F5CBEEB0;
  return result;
}

void re::internal::defaultDestruct<re::SkeletalPoseAnimationClipAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CBEF38;
  v4 = (a3 + 5);
  re::AssetHandle::~AssetHandle((a3 + 10));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit(v4);

  re::StringID::destroyString((a3 + 3));
}

uint64_t re::internal::defaultConstructV2<re::SkeletalPoseAnimationClipAssetData>(uint64_t a1)
{
  result = re::TimelineAssetData::TimelineAssetData(a1, 10);
  *(result + 72) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  *(result + 176) = 1065353216;
  *(result + 180) = 0;
  *result = &unk_1F5CBEEB0;
  return result;
}

void re::internal::defaultDestructV2<re::SkeletalPoseAnimationClipAssetData>(void *a1)
{
  *a1 = &unk_1F5CBEF38;
  v2 = (a1 + 5);
  re::AssetHandle::~AssetHandle((a1 + 10));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_BlendShapeWeightsAnimationClipAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194D98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194D98))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18D0E8, "BlendShapeWeightsAnimationClipAssetData");
    __cxa_guard_release(&qword_1EE194D98);
  }

  return &unk_1EE18D0E8;
}

void re::initInfo_BlendShapeWeightsAnimationClipAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v55[0] = 0xC1495BD0AAB385E2;
  v55[1] = "BlendShapeWeightsAnimationClipAssetData";
  if (v55[0])
  {
    if (v55[0])
    {
    }
  }

  *(this + 2) = v56;
  if ((atomic_load_explicit(&qword_1EE194DA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194DA0))
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
    qword_1EE18C828 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE18C830 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_AssetHandle(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "clipSource";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x5000000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE18C838 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::IntrospectionInfo<re::Optional<double>>::get(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "clipStart";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x6800000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE18C840 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::IntrospectionInfo<re::Optional<double>>::get(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "clipEnd";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x7800000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE18C848 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::introspect_double(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "clipOffset";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x8800000005;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE18C850 = v33;
    v34 = re::introspectionAllocator();
    v36 = re::introspect_BOOL(1, v35);
    v37 = (*(*v34 + 32))(v34, 72, 8);
    *v37 = 1;
    *(v37 + 8) = "clipReversed";
    *(v37 + 16) = v36;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0x9000000006;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    qword_1EE18C858 = v37;
    v38 = re::introspectionAllocator();
    v40 = re::introspect_double(1, v39);
    v41 = (*(*v38 + 32))(v38, 72, 8);
    *v41 = 1;
    *(v41 + 8) = "delay";
    *(v41 + 16) = v40;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0x9800000007;
    *(v41 + 40) = 0;
    *(v41 + 48) = 0;
    *(v41 + 56) = 0;
    *(v41 + 64) = 0;
    qword_1EE18C860 = v41;
    v42 = re::introspectionAllocator();
    v44 = re::IntrospectionInfo<re::Optional<double>>::get(1, v43);
    v45 = (*(*v42 + 32))(v42, 72, 8);
    *v45 = 1;
    *(v45 + 8) = "duration";
    *(v45 + 16) = v44;
    *(v45 + 24) = 0;
    *(v45 + 32) = 0xA000000008;
    *(v45 + 40) = 0;
    *(v45 + 48) = 0;
    *(v45 + 56) = 0;
    *(v45 + 64) = 0;
    qword_1EE18C868 = v45;
    v46 = re::introspectionAllocator();
    v48 = re::introspect_float(1, v47);
    v49 = (*(*v46 + 32))(v46, 72, 8);
    *v49 = 1;
    *(v49 + 8) = "speed";
    *(v49 + 16) = v48;
    *(v49 + 24) = 0;
    *(v49 + 32) = 0xB000000009;
    *(v49 + 40) = 0;
    *(v49 + 48) = 0;
    *(v49 + 56) = 0;
    *(v49 + 64) = 0;
    qword_1EE18C870 = v49;
    v50 = re::introspectionAllocator();
    v52 = re::introspect_LoopBehavior(1, v51);
    v53 = (*(*v50 + 32))(v50, 72, 8);
    *v53 = 1;
    *(v53 + 8) = "loopBehavior";
    *(v53 + 16) = v52;
    *(v53 + 24) = 0;
    *(v53 + 32) = 0xB40000000ALL;
    *(v53 + 40) = 0;
    *(v53 + 48) = 0;
    *(v53 + 56) = 0;
    *(v53 + 64) = 0;
    qword_1EE18C878 = v53;
    __cxa_guard_release(&qword_1EE194DA0);
  }

  *(this + 2) = 0xB800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 11;
  *(this + 8) = &qword_1EE18C828;
  *(this + 9) = re::internal::defaultConstruct<re::BlendShapeWeightsAnimationClipAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BlendShapeWeightsAnimationClipAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::BlendShapeWeightsAnimationClipAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::BlendShapeWeightsAnimationClipAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v54 = v56;
}

uint64_t re::internal::defaultConstruct<re::BlendShapeWeightsAnimationClipAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::TimelineAssetData::TimelineAssetData(a3, 60);
  *(result + 72) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  *(result + 176) = 1065353216;
  *(result + 180) = 0;
  *result = &unk_1F5CBEFB8;
  return result;
}

void re::internal::defaultDestruct<re::BlendShapeWeightsAnimationClipAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CBF040;
  v4 = (a3 + 5);
  re::AssetHandle::~AssetHandle((a3 + 10));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit(v4);

  re::StringID::destroyString((a3 + 3));
}

uint64_t re::internal::defaultConstructV2<re::BlendShapeWeightsAnimationClipAssetData>(uint64_t a1)
{
  result = re::TimelineAssetData::TimelineAssetData(a1, 60);
  *(result + 72) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  *(result + 176) = 1065353216;
  *(result + 180) = 0;
  *result = &unk_1F5CBEFB8;
  return result;
}

void re::internal::defaultDestructV2<re::BlendShapeWeightsAnimationClipAssetData>(void *a1)
{
  *a1 = &unk_1F5CBF040;
  v2 = (a1 + 5);
  re::AssetHandle::~AssetHandle((a1 + 10));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_FloatAnimationAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194DB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194DB0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18D178, "FloatAnimationAssetData");
    __cxa_guard_release(&qword_1EE194DB0);
  }

  return &unk_1EE18D178;
}

void re::initInfo_FloatAnimationAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v42[0] = 0x3AD6F4DDD7D2CDE4;
  v42[1] = "FloatAnimationAssetData";
  if (v42[0])
  {
    if (v42[0])
    {
    }
  }

  *(this + 2) = v43;
  if ((atomic_load_explicit(&qword_1EE194DB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194DB8))
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
    qword_1EE195590 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE195598 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_double(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "duration";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x5000000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1955A0 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::IntrospectionInfo<re::Optional<float>>::get(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "from";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x5800000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1955A8 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::IntrospectionInfo<re::Optional<float>>::get(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "to";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x6000000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE1955B0 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::IntrospectionInfo<re::Optional<float>>::get(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "by";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x6800000005;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE1955B8 = v33;
    v34 = re::introspectionAllocator();
    re::IntrospectionInfo<re::EasingFunction *>::get(v34, v35, v36, v37, v38, v39);
    v40 = (*(*v34 + 32))(v34, 72, 8);
    *v40 = 1;
    *(v40 + 8) = "easingFunction";
    *(v40 + 16) = &qword_1EE195958;
    *(v40 + 24) = 0;
    *(v40 + 32) = 0x7000000006;
    *(v40 + 40) = 0;
    *(v40 + 48) = 0;
    *(v40 + 56) = 0;
    *(v40 + 64) = 0;
    qword_1EE1955C0 = v40;
    __cxa_guard_release(&qword_1EE194DB8);
  }

  *(this + 2) = 0x7800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE195590;
  *(this + 9) = re::internal::defaultConstruct<re::FloatAnimationAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::FloatAnimationAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::FloatAnimationAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::FloatAnimationAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v41 = v43;
}

uint64_t *re::IntrospectionInfo<re::Optional<float>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionOptionalBase::IntrospectionOptionalBase(&re::IntrospectionInfo<re::Optional<float>>::get(BOOL)::info) = &unk_1F5CBF0C0;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::Optional<float>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::Optional<float>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::Optional<float>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::Optional<float>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_float(1, a2);
  if ((re::IntrospectionInfo<re::Optional<float>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::Optional<float>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::Optional<float>>::get(BOOL)::info, 0);
    qword_1EE186498 = 0x80000000DLL;
    dword_1EE1864A0 = v8;
    word_1EE1864A4 = 0;
    *&xmmword_1EE1864A8 = 0;
    *(&xmmword_1EE1864A8 + 1) = 0xFFFFFFFFLL;
    qword_1EE1864B8 = v7;
    unk_1EE1864C0 = 0;
    re::IntrospectionInfo<re::Optional<float>>::get(BOOL)::info = &unk_1F5CBF0C0;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&v15, &re::IntrospectionInfo<re::Optional<float>>::get(BOOL)::info);
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
    xmmword_1EE1864A8 = v14;
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

  return &re::IntrospectionInfo<re::Optional<float>>::get(BOOL)::info;
}

void re::IntrospectionInfo<re::EasingFunction *>::get(uint64_t a1, BOOL a2, uint64_t a3, uint64_t a4, uint64_t a5, BOOL a6)
{
  if ((atomic_load_explicit(&qword_1EE1951F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1951F8))
  {
    re::IntrospectionPointer::IntrospectionPointer(&qword_1EE195958);
    __cxa_guard_release(&qword_1EE1951F8);
  }

  if ((byte_1EE194C42 & 1) == 0)
  {
    byte_1EE194C42 = 1;
    v6 = re::introspect_EasingFunction(1, a2, a3, a4, a5, a6);
    ArcSharedObject::ArcSharedObject(&qword_1EE195958, 0);
    qword_1EE195968 = 0x800000001;
    dword_1EE195970 = 8;
    word_1EE195974 = 0;
    *&xmmword_1EE195978 = 0;
    *(&xmmword_1EE195978 + 1) = 0xFFFFFFFFLL;
    qword_1EE195958 = &unk_1F5CBD2C0;
    qword_1EE195988 = v6;
    qword_1EE195990 = 0;
    re::IntrospectionRegistry::add(v7, v8);
    re::getPrettyTypeName(&v13, &qword_1EE195958);
    if (BYTE8(v13))
    {
      v9 = v14;
    }

    else
    {
      v9 = &v13 + 9;
    }

    if (v13 && (BYTE8(v13) & 1) != 0)
    {
      (*(*v13 + 40))();
    }

    if (v15 >> 1 == 94623636 && (__s1 == "char*" || !strcmp(__s1, "char*")))
    {
      v11 = v13;
    }

    else
    {
      v13 = *(v6 + 32);
      v11 = v12;
    }

    xmmword_1EE195978 = v11;
    if (v15)
    {
      if (v15)
      {
      }
    }
  }
}

uint64_t re::internal::defaultConstruct<re::FloatAnimationAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::TimelineAssetData::TimelineAssetData(a3, 11);
  *(result + 72) = 0;
  *(result + 80) = 0x3FF0000000000000;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *result = &unk_1F5CC3530;
  return result;
}

uint64_t re::internal::defaultConstructV2<re::FloatAnimationAssetData>(uint64_t a1)
{
  result = re::TimelineAssetData::TimelineAssetData(a1, 11);
  *(result + 72) = 0;
  *(result + 80) = 0x3FF0000000000000;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *result = &unk_1F5CC3530;
  return result;
}

void *re::allocInfo_DoubleAnimationAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194DC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194DC8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18D208, "DoubleAnimationAssetData");
    __cxa_guard_release(&qword_1EE194DC8);
  }

  return &unk_1EE18D208;
}

void re::initInfo_DoubleAnimationAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v42[0] = 0xC8A4BF5B7858F2CELL;
  v42[1] = "DoubleAnimationAssetData";
  if (v42[0])
  {
    if (v42[0])
    {
    }
  }

  *(this + 2) = v43;
  if ((atomic_load_explicit(&qword_1EE194DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194DD0))
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
    qword_1EE1955C8 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1955D0 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_double(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "duration";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x5000000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1955D8 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::IntrospectionInfo<re::Optional<double>>::get(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "from";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x5800000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1955E0 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::IntrospectionInfo<re::Optional<double>>::get(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "to";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x6800000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE1955E8 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::IntrospectionInfo<re::Optional<double>>::get(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "by";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x7800000005;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE1955F0 = v33;
    v34 = re::introspectionAllocator();
    re::IntrospectionInfo<re::EasingFunction *>::get(v34, v35, v36, v37, v38, v39);
    v40 = (*(*v34 + 32))(v34, 72, 8);
    *v40 = 1;
    *(v40 + 8) = "easingFunction";
    *(v40 + 16) = &qword_1EE195958;
    *(v40 + 24) = 0;
    *(v40 + 32) = 0x8800000006;
    *(v40 + 40) = 0;
    *(v40 + 48) = 0;
    *(v40 + 56) = 0;
    *(v40 + 64) = 0;
    qword_1EE1955F8 = v40;
    __cxa_guard_release(&qword_1EE194DD0);
  }

  *(this + 2) = 0x9000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1955C8;
  *(this + 9) = re::internal::defaultConstruct<re::DoubleAnimationAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::DoubleAnimationAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::DoubleAnimationAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::DoubleAnimationAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v41 = v43;
}

uint64_t re::internal::defaultConstruct<re::DoubleAnimationAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::TimelineAssetData::TimelineAssetData(a3, 12);
  *(result + 72) = 0;
  *(result + 80) = 0x3FF0000000000000;
  *(result + 88) = 0;
  *(result + 104) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *result = &unk_1F5CBF140;
  return result;
}

uint64_t re::internal::defaultConstructV2<re::DoubleAnimationAssetData>(uint64_t a1)
{
  result = re::TimelineAssetData::TimelineAssetData(a1, 12);
  *(result + 72) = 0;
  *(result + 80) = 0x3FF0000000000000;
  *(result + 88) = 0;
  *(result + 104) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *result = &unk_1F5CBF140;
  return result;
}

void *re::allocInfo_Vector2FAnimationAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194DE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194DE0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18D298, "Vector2FAnimationAssetData");
    __cxa_guard_release(&qword_1EE194DE0);
  }

  return &unk_1EE18D298;
}

void re::initInfo_Vector2FAnimationAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v39[0] = 0x2550EAB3730B45DALL;
  v39[1] = "Vector2FAnimationAssetData";
  if (v39[0])
  {
    if (v39[0])
    {
    }
  }

  *(this + 2) = v40;
  if ((atomic_load_explicit(&qword_1EE194DE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194DE8))
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
    qword_1EE195600 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE195608 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_double(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "duration";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x5000000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE195610 = v21;
    v22 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::Vector2<float>>>::get(v22, v23);
    v24 = (*(*v22 + 32))(v22, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "from";
    *(v24 + 16) = &qword_1EE195998;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x5800000003;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE195618 = v24;
    v25 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::Vector2<float>>>::get(v25, v26);
    v27 = (*(*v25 + 32))(v25, 72, 8);
    *v27 = 1;
    *(v27 + 8) = "to";
    *(v27 + 16) = &qword_1EE195998;
    *(v27 + 24) = 0;
    *(v27 + 32) = 0x6800000004;
    *(v27 + 40) = 0;
    *(v27 + 48) = 0;
    *(v27 + 56) = 0;
    *(v27 + 64) = 0;
    qword_1EE195620 = v27;
    v28 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::Vector2<float>>>::get(v28, v29);
    v30 = (*(*v28 + 32))(v28, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "by";
    *(v30 + 16) = &qword_1EE195998;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x7800000005;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE195628 = v30;
    v31 = re::introspectionAllocator();
    re::IntrospectionInfo<re::EasingFunction *>::get(v31, v32, v33, v34, v35, v36);
    v37 = (*(*v31 + 32))(v31, 72, 8);
    *v37 = 1;
    *(v37 + 8) = "easingFunction";
    *(v37 + 16) = &qword_1EE195958;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0x8800000006;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    qword_1EE195630 = v37;
    __cxa_guard_release(&qword_1EE194DE8);
  }

  *(this + 2) = 0x9000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE195600;
  *(this + 9) = re::internal::defaultConstruct<re::Vector2FAnimationAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Vector2FAnimationAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::Vector2FAnimationAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::Vector2FAnimationAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v38 = v40;
}

void re::IntrospectionInfo<re::Optional<re::Vector2<float>>>::get(uint64_t a1, BOOL a2)
{
  if ((atomic_load_explicit(&qword_1EE195200, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195200))
  {
    re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE195998);
    qword_1EE195998 = &unk_1F5CBF1F0;
    __cxa_guard_release(&qword_1EE195200);
  }

  if ((byte_1EE194C43 & 1) == 0)
  {
    v2 = re::introspect_Vector2F(1);
    if ((byte_1EE194C43 & 1) == 0)
    {
      v3 = v2;
      byte_1EE194C43 = 1;
      v4 = *(v2 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE195998, 0);
      qword_1EE1959A8 = 0x100000000DLL;
      dword_1EE1959B0 = v4;
      word_1EE1959B4 = 0;
      *&xmmword_1EE1959B8 = 0;
      *(&xmmword_1EE1959B8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1959C8 = v3;
      qword_1EE1959D0 = 0;
      qword_1EE195998 = &unk_1F5CBF1F0;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&v14, &qword_1EE195998);
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
        re::TypeBuilder::beginOptionalType(&v14, &v12, 0x10uLL, 8uLL, &v13);
        re::TypeBuilder::setOptionalAccessors(&v14, re::TypeBuilderHelper::registerOptional<re::Vector2<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::Vector2<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE1959B8 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

uint64_t re::internal::defaultConstruct<re::Vector2FAnimationAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::TimelineAssetData::TimelineAssetData(a3, 13);
  *(result + 72) = 0;
  *(result + 80) = 0x3FF0000000000000;
  *(result + 88) = 0;
  *(result + 104) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *result = &unk_1F5CBF270;
  return result;
}

uint64_t re::internal::defaultConstructV2<re::Vector2FAnimationAssetData>(uint64_t a1)
{
  result = re::TimelineAssetData::TimelineAssetData(a1, 13);
  *(result + 72) = 0;
  *(result + 80) = 0x3FF0000000000000;
  *(result + 88) = 0;
  *(result + 104) = 0;
  *(result + 120) = 0;
  *(result + 136) = 0;
  *result = &unk_1F5CBF270;
  return result;
}

void *re::allocInfo_Vector3FAnimationAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194DF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194DF8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18D328, "Vector3FAnimationAssetData");
    __cxa_guard_release(&qword_1EE194DF8);
  }

  return &unk_1EE18D328;
}

void re::initInfo_Vector3FAnimationAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v42[0] = 0xF47507A9424EF298;
  v42[1] = "Vector3FAnimationAssetData";
  if (v42[0])
  {
    if (v42[0])
    {
    }
  }

  *(this + 2) = v43;
  if ((atomic_load_explicit(&qword_1EE194E00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194E00))
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
    qword_1EE195638 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE195640 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_double(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "duration";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x5000000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE195648 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::IntrospectionInfo<re::Optional<re::Vector3<float>>>::get(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "from";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x6000000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE195650 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::IntrospectionInfo<re::Optional<re::Vector3<float>>>::get(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "to";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x8000000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE195658 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::IntrospectionInfo<re::Optional<re::Vector3<float>>>::get(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "by";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0xA000000005;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE195660 = v33;
    v34 = re::introspectionAllocator();
    re::IntrospectionInfo<re::EasingFunction *>::get(v34, v35, v36, v37, v38, v39);
    v40 = (*(*v34 + 32))(v34, 72, 8);
    *v40 = 1;
    *(v40 + 8) = "easingFunction";
    *(v40 + 16) = &qword_1EE195958;
    *(v40 + 24) = 0;
    *(v40 + 32) = 0xC000000006;
    *(v40 + 40) = 0;
    *(v40 + 48) = 0;
    *(v40 + 56) = 0;
    *(v40 + 64) = 0;
    qword_1EE195668 = v40;
    __cxa_guard_release(&qword_1EE194E00);
  }

  *(this + 2) = 0xD000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE195638;
  *(this + 9) = re::internal::defaultConstruct<re::Vector3FAnimationAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Vector3FAnimationAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::Vector3FAnimationAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::Vector3FAnimationAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v41 = v43;
}

uint64_t *re::IntrospectionInfo<re::Optional<re::Vector3<float>>>::get(int a1, BOOL a2)
{
  {
    *re::IntrospectionOptionalBase::IntrospectionOptionalBase(&re::IntrospectionInfo<re::Optional<re::Vector3<float>>>::get(BOOL)::info) = &unk_1F5CBF320;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::Optional<re::Vector3<float>>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::Optional<re::Vector3<float>>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::Optional<re::Vector3<float>>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::Optional<re::Vector3<float>>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_Vector3F(1);
  if ((re::IntrospectionInfo<re::Optional<re::Vector3<float>>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::Optional<re::Vector3<float>>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::Optional<re::Vector3<float>>>::get(BOOL)::info, 0);
    qword_1EE186600 = 0x200000000DLL;
    dword_1EE186608 = v8;
    word_1EE18660C = 0;
    *&xmmword_1EE186610 = 0;
    *(&xmmword_1EE186610 + 1) = 0xFFFFFFFFLL;
    qword_1EE186620 = v7;
    unk_1EE186628 = 0;
    re::IntrospectionInfo<re::Optional<re::Vector3<float>>>::get(BOOL)::info = &unk_1F5CBF320;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&v15, &re::IntrospectionInfo<re::Optional<re::Vector3<float>>>::get(BOOL)::info);
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
    xmmword_1EE186610 = v14;
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

  return &re::IntrospectionInfo<re::Optional<re::Vector3<float>>>::get(BOOL)::info;
}

uint64_t re::internal::defaultConstruct<re::Vector3FAnimationAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::TimelineAssetData::TimelineAssetData(a3, 14);
  *(result + 72) = 0;
  *(result + 80) = 0x3FF0000000000000;
  *(result + 96) = 0;
  *(result + 128) = 0;
  *(result + 160) = 0;
  *(result + 192) = 0;
  *result = &unk_1F5CBF3A0;
  return result;
}

uint64_t re::internal::defaultConstructV2<re::Vector3FAnimationAssetData>(uint64_t a1)
{
  result = re::TimelineAssetData::TimelineAssetData(a1, 14);
  *(result + 72) = 0;
  *(result + 80) = 0x3FF0000000000000;
  *(result + 96) = 0;
  *(result + 128) = 0;
  *(result + 160) = 0;
  *(result + 192) = 0;
  *result = &unk_1F5CBF3A0;
  return result;
}

void *re::allocInfo_Vector4FAnimationAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194E10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194E10))
  {
    re::IntrospectionStructure::IntrospectionStructure(&_MergedGlobals_367, "Vector4FAnimationAssetData");
    __cxa_guard_release(&qword_1EE194E10);
  }

  return &_MergedGlobals_367;
}

void re::initInfo_Vector4FAnimationAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v39[0] = 0xC399249F11929F56;
  v39[1] = "Vector4FAnimationAssetData";
  if (v39[0])
  {
    if (v39[0])
    {
    }
  }

  *(this + 2) = v40;
  if ((atomic_load_explicit(&qword_1EE194E18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194E18))
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
    qword_1EE195670 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE195678 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_double(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "duration";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x5000000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE195680 = v21;
    v22 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::Vector4<float>>>::get(v22, v23);
    v24 = (*(*v22 + 32))(v22, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "from";
    *(v24 + 16) = &qword_1EE1959D8;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x6000000003;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE195688 = v24;
    v25 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::Vector4<float>>>::get(v25, v26);
    v27 = (*(*v25 + 32))(v25, 72, 8);
    *v27 = 1;
    *(v27 + 8) = "to";
    *(v27 + 16) = &qword_1EE1959D8;
    *(v27 + 24) = 0;
    *(v27 + 32) = 0x8000000004;
    *(v27 + 40) = 0;
    *(v27 + 48) = 0;
    *(v27 + 56) = 0;
    *(v27 + 64) = 0;
    qword_1EE195690 = v27;
    v28 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::Vector4<float>>>::get(v28, v29);
    v30 = (*(*v28 + 32))(v28, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "by";
    *(v30 + 16) = &qword_1EE1959D8;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0xA000000005;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE195698 = v30;
    v31 = re::introspectionAllocator();
    re::IntrospectionInfo<re::EasingFunction *>::get(v31, v32, v33, v34, v35, v36);
    v37 = (*(*v31 + 32))(v31, 72, 8);
    *v37 = 1;
    *(v37 + 8) = "easingFunction";
    *(v37 + 16) = &qword_1EE195958;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0xC000000006;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    qword_1EE1956A0 = v37;
    __cxa_guard_release(&qword_1EE194E18);
  }

  *(this + 2) = 0xD000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE195670;
  *(this + 9) = re::internal::defaultConstruct<re::Vector4FAnimationAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Vector4FAnimationAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::Vector4FAnimationAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::Vector4FAnimationAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v38 = v40;
}

void re::IntrospectionInfo<re::Optional<re::Vector4<float>>>::get(uint64_t a1, BOOL a2)
{
  if ((atomic_load_explicit(&qword_1EE195208, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195208))
  {
    re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE1959D8);
    qword_1EE1959D8 = &unk_1F5CBF450;
    __cxa_guard_release(&qword_1EE195208);
  }

  if ((byte_1EE194C44 & 1) == 0)
  {
    v2 = re::introspect_Vector4F(1);
    if ((byte_1EE194C44 & 1) == 0)
    {
      v3 = v2;
      byte_1EE194C44 = 1;
      v4 = *(v2 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1959D8, 0);
      qword_1EE1959E8 = 0x200000000DLL;
      dword_1EE1959F0 = v4;
      word_1EE1959F4 = 0;
      *&xmmword_1EE1959F8 = 0;
      *(&xmmword_1EE1959F8 + 1) = 0xFFFFFFFFLL;
      qword_1EE195A08 = v3;
      qword_1EE195A10 = 0;
      qword_1EE1959D8 = &unk_1F5CBF450;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&v14, &qword_1EE1959D8);
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
        re::TypeBuilder::beginOptionalType(&v14, &v12, 0x20uLL, 0x10uLL, &v13);
        re::TypeBuilder::setOptionalAccessors(&v14, re::TypeBuilderHelper::registerOptional<re::Vector4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::Vector4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE1959F8 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

uint64_t re::internal::defaultConstruct<re::Vector4FAnimationAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::TimelineAssetData::TimelineAssetData(a3, 15);
  *(result + 72) = 0;
  *(result + 80) = 0x3FF0000000000000;
  *(result + 96) = 0;
  *(result + 128) = 0;
  *(result + 160) = 0;
  *(result + 192) = 0;
  *result = &unk_1F5CBF4D0;
  return result;
}

uint64_t re::internal::defaultConstructV2<re::Vector4FAnimationAssetData>(uint64_t a1)
{
  result = re::TimelineAssetData::TimelineAssetData(a1, 15);
  *(result + 72) = 0;
  *(result + 80) = 0x3FF0000000000000;
  *(result + 96) = 0;
  *(result + 128) = 0;
  *(result + 160) = 0;
  *(result + 192) = 0;
  *result = &unk_1F5CBF4D0;
  return result;
}

void *re::allocInfo_QuaternionFAnimationAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194E28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194E28))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18B4B8, "QuaternionFAnimationAssetData");
    __cxa_guard_release(&qword_1EE194E28);
  }

  return &unk_1EE18B4B8;
}

void re::initInfo_QuaternionFAnimationAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v39[0] = 0x744531879CE654FCLL;
  v39[1] = "QuaternionFAnimationAssetData";
  if (v39[0])
  {
    if (v39[0])
    {
    }
  }

  *(this + 2) = v40;
  if ((atomic_load_explicit(&qword_1EE194E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194E30))
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
    qword_1EE1956A8 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1956B0 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_double(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "duration";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x5000000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1956B8 = v21;
    v22 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::Quaternion<float>>>::get(v22, v23);
    v24 = (*(*v22 + 32))(v22, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "from";
    *(v24 + 16) = &qword_1EE195A18;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x6000000003;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE1956C0 = v24;
    v25 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::Quaternion<float>>>::get(v25, v26);
    v27 = (*(*v25 + 32))(v25, 72, 8);
    *v27 = 1;
    *(v27 + 8) = "to";
    *(v27 + 16) = &qword_1EE195A18;
    *(v27 + 24) = 0;
    *(v27 + 32) = 0x8000000004;
    *(v27 + 40) = 0;
    *(v27 + 48) = 0;
    *(v27 + 56) = 0;
    *(v27 + 64) = 0;
    qword_1EE1956C8 = v27;
    v28 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::Quaternion<float>>>::get(v28, v29);
    v30 = (*(*v28 + 32))(v28, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "by";
    *(v30 + 16) = &qword_1EE195A18;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0xA000000005;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1956D0 = v30;
    v31 = re::introspectionAllocator();
    re::IntrospectionInfo<re::EasingFunction *>::get(v31, v32, v33, v34, v35, v36);
    v37 = (*(*v31 + 32))(v31, 72, 8);
    *v37 = 1;
    *(v37 + 8) = "easingFunction";
    *(v37 + 16) = &qword_1EE195958;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0xC000000006;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    qword_1EE1956D8 = v37;
    __cxa_guard_release(&qword_1EE194E30);
  }

  *(this + 2) = 0xD000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1956A8;
  *(this + 9) = re::internal::defaultConstruct<re::QuaternionFAnimationAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::QuaternionFAnimationAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::QuaternionFAnimationAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::QuaternionFAnimationAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v38 = v40;
}

void re::IntrospectionInfo<re::Optional<re::Quaternion<float>>>::get(uint64_t a1, BOOL a2)
{
  if ((atomic_load_explicit(&qword_1EE195210, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195210))
  {
    re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE195A18);
    qword_1EE195A18 = &unk_1F5CBF580;
    __cxa_guard_release(&qword_1EE195210);
  }

  if ((byte_1EE194C45 & 1) == 0)
  {
    v2 = re::introspect_QuaternionF(1);
    if ((byte_1EE194C45 & 1) == 0)
    {
      v3 = v2;
      byte_1EE194C45 = 1;
      v4 = *(v2 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE195A18, 0);
      qword_1EE195A28 = 0x200000000DLL;
      dword_1EE195A30 = v4;
      word_1EE195A34 = 0;
      *&xmmword_1EE195A38 = 0;
      *(&xmmword_1EE195A38 + 1) = 0xFFFFFFFFLL;
      qword_1EE195A48 = v3;
      qword_1EE195A50 = 0;
      qword_1EE195A18 = &unk_1F5CBF580;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&v14, &qword_1EE195A18);
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
        re::TypeBuilder::beginOptionalType(&v14, &v12, 0x20uLL, 0x10uLL, &v13);
        re::TypeBuilder::setOptionalAccessors(&v14, re::TypeBuilderHelper::registerOptional<re::Quaternion<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::Quaternion<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE195A38 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

uint64_t re::internal::defaultConstruct<re::QuaternionFAnimationAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::TimelineAssetData::TimelineAssetData(a3, 16);
  *(result + 72) = 0;
  *(result + 80) = 0x3FF0000000000000;
  *(result + 96) = 0;
  *(result + 128) = 0;
  *(result + 160) = 0;
  *(result + 192) = 0;
  *result = &unk_1F5CBF600;
  return result;
}

uint64_t re::internal::defaultConstructV2<re::QuaternionFAnimationAssetData>(uint64_t a1)
{
  result = re::TimelineAssetData::TimelineAssetData(a1, 16);
  *(result + 72) = 0;
  *(result + 80) = 0x3FF0000000000000;
  *(result + 96) = 0;
  *(result + 128) = 0;
  *(result + 160) = 0;
  *(result + 192) = 0;
  *result = &unk_1F5CBF600;
  return result;
}

void *re::allocInfo_SRTAnimationAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194E40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194E40))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18B548, "SRTAnimationAssetData");
    __cxa_guard_release(&qword_1EE194E40);
  }

  return &unk_1EE18B548;
}

void re::initInfo_SRTAnimationAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v39[0] = 0xCD25914272D84496;
  v39[1] = "SRTAnimationAssetData";
  if (v39[0])
  {
    if (v39[0])
    {
    }
  }

  *(this + 2) = v40;
  if ((atomic_load_explicit(&qword_1EE194E48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194E48))
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
    qword_1EE1956E0 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1956E8 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_double(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "duration";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x5000000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1956F0 = v21;
    v22 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::GenericSRT<float>>>::get(v22, v23);
    v24 = (*(*v22 + 32))(v22, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "from";
    *(v24 + 16) = &qword_1EE195A58;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x6000000003;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE1956F8 = v24;
    v25 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::GenericSRT<float>>>::get(v25, v26);
    v27 = (*(*v25 + 32))(v25, 72, 8);
    *v27 = 1;
    *(v27 + 8) = "to";
    *(v27 + 16) = &qword_1EE195A58;
    *(v27 + 24) = 0;
    *(v27 + 32) = 0xA000000004;
    *(v27 + 40) = 0;
    *(v27 + 48) = 0;
    *(v27 + 56) = 0;
    *(v27 + 64) = 0;
    qword_1EE195700 = v27;
    v28 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::GenericSRT<float>>>::get(v28, v29);
    v30 = (*(*v28 + 32))(v28, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "by";
    *(v30 + 16) = &qword_1EE195A58;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0xE000000005;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE195708 = v30;
    v31 = re::introspectionAllocator();
    re::IntrospectionInfo<re::EasingFunction *>::get(v31, v32, v33, v34, v35, v36);
    v37 = (*(*v31 + 32))(v31, 72, 8);
    *v37 = 1;
    *(v37 + 8) = "easingFunction";
    *(v37 + 16) = &qword_1EE195958;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0x12000000006;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    qword_1EE195710 = v37;
    __cxa_guard_release(&qword_1EE194E48);
  }

  *(this + 2) = 0x13000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1956E0;
  *(this + 9) = re::internal::defaultConstruct<re::SRTAnimationAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SRTAnimationAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::SRTAnimationAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::SRTAnimationAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v38 = v40;
}

void re::IntrospectionInfo<re::Optional<re::GenericSRT<float>>>::get(uint64_t a1, BOOL a2)
{
  if ((atomic_load_explicit(&qword_1EE195218, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195218))
  {
    re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE195A58);
    qword_1EE195A58 = &unk_1F5CBF6B0;
    __cxa_guard_release(&qword_1EE195218);
  }

  if ((byte_1EE194C46 & 1) == 0)
  {
    v2 = re::introspect_SRT(1);
    if ((byte_1EE194C46 & 1) == 0)
    {
      v3 = v2;
      byte_1EE194C46 = 1;
      v4 = *(v2 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE195A58, 0);
      qword_1EE195A68 = 0x400000000DLL;
      dword_1EE195A70 = v4;
      word_1EE195A74 = 0;
      *&xmmword_1EE195A78 = 0;
      *(&xmmword_1EE195A78 + 1) = 0xFFFFFFFFLL;
      qword_1EE195A88 = v3;
      qword_1EE195A90 = 0;
      qword_1EE195A58 = &unk_1F5CBF6B0;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&v14, &qword_1EE195A58);
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
        re::TypeBuilder::beginOptionalType(&v14, &v12, 0x40uLL, 0x10uLL, &v13);
        re::TypeBuilder::setOptionalAccessors(&v14, re::TypeBuilderHelper::registerOptional<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE195A78 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

uint64_t re::internal::defaultConstruct<re::SRTAnimationAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::TimelineAssetData::TimelineAssetData(a3, 17);
  *(result + 72) = 0;
  *(result + 80) = 0x3FF0000000000000;
  *(result + 96) = 0;
  *(result + 160) = 0;
  *(result + 224) = 0;
  *(result + 288) = 0;
  *result = &unk_1F5CBF730;
  return result;
}

uint64_t re::internal::defaultConstructV2<re::SRTAnimationAssetData>(uint64_t a1)
{
  result = re::TimelineAssetData::TimelineAssetData(a1, 17);
  *(result + 72) = 0;
  *(result + 80) = 0x3FF0000000000000;
  *(result + 96) = 0;
  *(result + 160) = 0;
  *(result + 224) = 0;
  *(result + 288) = 0;
  *result = &unk_1F5CBF730;
  return result;
}

void *re::allocInfo_SkeletalPoseAnimationAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194E58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194E58))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18B5D8, "SkeletalPoseAnimationAssetData");
    __cxa_guard_release(&qword_1EE194E58);
  }

  return &unk_1EE18B5D8;
}

void re::initInfo_SkeletalPoseAnimationAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v52[0] = 0x8BC7078C7E9C1040;
  v52[1] = "SkeletalPoseAnimationAssetData";
  if (v52[0])
  {
    if (v52[0])
    {
    }
  }

  *(this + 2) = v53;
  if ((atomic_load_explicit(&qword_1EE194E60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194E60))
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
    qword_1EE18C880 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE18C888 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_double(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "duration";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x5000000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE18C890 = v21;
    v22 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::SkeletalPoseAssetData>>::get(v22);
    v23 = (*(*v22 + 32))(v22, 72, 8);
    *v23 = 1;
    *(v23 + 8) = "from";
    *(v23 + 16) = &qword_1EE195A98;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0x5800000003;
    *(v23 + 40) = 0;
    *(v23 + 48) = 0;
    *(v23 + 56) = 0;
    *(v23 + 64) = 0;
    qword_1EE18C898 = v23;
    v24 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::SkeletalPoseAssetData>>::get(v24);
    v25 = (*(*v24 + 32))(v24, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "to";
    *(v25 + 16) = &qword_1EE195A98;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x7800000004;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE18C8A0 = v25;
    v26 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::SkeletalPoseAssetData>>::get(v26);
    v27 = (*(*v26 + 32))(v26, 72, 8);
    *v27 = 1;
    *(v27 + 8) = "by";
    *(v27 + 16) = &qword_1EE195A98;
    *(v27 + 24) = 0;
    *(v27 + 32) = 0x9800000005;
    *(v27 + 40) = 0;
    *(v27 + 48) = 0;
    *(v27 + 56) = 0;
    *(v27 + 64) = 0;
    qword_1EE18C8A8 = v27;
    v28 = re::introspectionAllocator();
    re::IntrospectionInfo<re::EasingFunction *>::get(v28, v29, v30, v31, v32, v33);
    v34 = (*(*v28 + 32))(v28, 72, 8);
    *v34 = 1;
    *(v34 + 8) = "easingFunction";
    *(v34 + 16) = &qword_1EE195958;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0xB800000006;
    *(v34 + 40) = 0;
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;
    *(v34 + 64) = 0;
    qword_1EE18C8B0 = v34;
    v35 = re::introspectionAllocator();
    v37 = re::introspect_AssetHandle(1, v36);
    v38 = (*(*v35 + 32))(v35, 72, 8);
    *v38 = 1;
    *(v38 + 8) = "skeleton";
    *(v38 + 16) = v37;
    *(v38 + 24) = 0;
    *(v38 + 32) = 0xC000000007;
    *(v38 + 40) = 0;
    *(v38 + 48) = 0;
    *(v38 + 56) = 0;
    *(v38 + 64) = 0;
    qword_1EE18C8B8 = v38;
    v39 = re::introspectionAllocator();
    v41 = re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(1, v40);
    v42 = (*(*v39 + 32))(v39, 72, 8);
    *v42 = 1;
    *(v42 + 8) = "fromJointNames";
    *(v42 + 16) = v41;
    *(v42 + 24) = 0;
    *(v42 + 32) = 0xD800000008;
    *(v42 + 40) = 0;
    *(v42 + 48) = 0;
    *(v42 + 56) = 0;
    *(v42 + 64) = 0;
    qword_1EE18C8C0 = v42;
    v43 = re::introspectionAllocator();
    v45 = re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(1, v44);
    v46 = (*(*v43 + 32))(v43, 72, 8);
    *v46 = 1;
    *(v46 + 8) = "toJointNames";
    *(v46 + 16) = v45;
    *(v46 + 24) = 0;
    *(v46 + 32) = 0x10000000009;
    *(v46 + 40) = 0;
    *(v46 + 48) = 0;
    *(v46 + 56) = 0;
    *(v46 + 64) = 0;
    qword_1EE18C8C8 = v46;
    v47 = re::introspectionAllocator();
    v49 = re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(1, v48);
    v50 = (*(*v47 + 32))(v47, 72, 8);
    *v50 = 1;
    *(v50 + 8) = "byJointNames";
    *(v50 + 16) = v49;
    *(v50 + 24) = 0;
    *(v50 + 32) = 0x1280000000ALL;
    *(v50 + 40) = 0;
    *(v50 + 48) = 0;
    *(v50 + 56) = 0;
    *(v50 + 64) = 0;
    qword_1EE18C8D0 = v50;
    __cxa_guard_release(&qword_1EE194E60);
  }

  *(this + 2) = 0x15000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 11;
  *(this + 8) = &qword_1EE18C880;
  *(this + 9) = re::internal::defaultConstruct<re::SkeletalPoseAnimationAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SkeletalPoseAnimationAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::SkeletalPoseAnimationAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::SkeletalPoseAnimationAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v51 = v53;
}

void re::IntrospectionInfo<re::Optional<re::SkeletalPoseAssetData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE195220, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE195220);
    if (a1)
    {
      re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE195A98);
      qword_1EE195A98 = &unk_1F5CBF7E0;
      __cxa_guard_release(&qword_1EE195220);
    }
  }

  if ((byte_1EE194C47 & 1) == 0)
  {
    v1 = qword_1EE194C98;
    if (qword_1EE194C98 || (v1 = re::allocInfo_SkeletalPoseAssetData(a1), qword_1EE194C98 = v1, re::initInfo_SkeletalPoseAssetData(v1, v2, v3, v4), (byte_1EE194C47 & 1) == 0))
    {
      byte_1EE194C47 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE195A98, 0);
      qword_1EE195AA8 = 0x200000000DLL;
      dword_1EE195AB0 = v5;
      word_1EE195AB4 = 0;
      *&xmmword_1EE195AB8 = 0;
      *(&xmmword_1EE195AB8 + 1) = 0xFFFFFFFFLL;
      qword_1EE195AC8 = v1;
      qword_1EE195AD0 = 0;
      qword_1EE195A98 = &unk_1F5CBF7E0;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE195A98);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginOptionalType(&v15, &v13, 0x20uLL, 8uLL, &v14);
        re::TypeBuilder::setOptionalAccessors(&v15, re::TypeBuilderHelper::registerOptional<re::SkeletalPoseAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::SkeletalPoseAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE195AB8 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

uint64_t *re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(BOOL)::info) = &unk_1F5CBF860;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::IntrospectionInfo<re::StringID>::get(1, a2);
  if ((re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(BOOL)::info, 0);
    qword_1EE186998 = 0x2800000003;
    dword_1EE1869A0 = v8;
    word_1EE1869A4 = 0;
    *&xmmword_1EE1869A8 = 0;
    *(&xmmword_1EE1869A8 + 1) = 0xFFFFFFFFLL;
    qword_1EE1869B8 = v7;
    unk_1EE1869C0 = 0;
    re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(BOOL)::info = &unk_1F5CBF860;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&v15, &re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(BOOL)::info);
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
    xmmword_1EE1869A8 = v14;
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

  return &re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(BOOL)::info;
}

double re::internal::defaultConstruct<re::SkeletalPoseAnimationAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::TimelineAssetData::TimelineAssetData(a3, 18);
  *(v3 + 72) = 0;
  *(v3 + 80) = 0x3FF0000000000000;
  *(v3 + 88) = 0;
  *(v3 + 120) = 0;
  *(v3 + 152) = 0;
  *(v3 + 184) = 0;
  *v3 = &unk_1F5CBF8F8;
  *(v3 + 328) = 0;
  *(v3 + 280) = 0;
  result = 0.0;
  *(v3 + 248) = 0u;
  *(v3 + 264) = 0u;
  *(v3 + 288) = 0u;
  *(v3 + 304) = 0u;
  *(v3 + 320) = 0;
  *(v3 + 192) = 0u;
  *(v3 + 208) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0;
  return result;
}

uint64_t re::internal::defaultDestruct<re::SkeletalPoseAnimationAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::StringID>::deinit(a3 + 296);
  re::DynamicArray<re::StringID>::deinit(a3 + 256);
  re::DynamicArray<re::StringID>::deinit(a3 + 216);
  re::AssetHandle::~AssetHandle((a3 + 192));

  return re::FromToByAnimationAssetData<re::SkeletalPoseAssetData>::~FromToByAnimationAssetData(a3);
}

double re::internal::defaultConstructV2<re::SkeletalPoseAnimationAssetData>(uint64_t a1)
{
  v1 = re::TimelineAssetData::TimelineAssetData(a1, 18);
  *(v1 + 72) = 0;
  *(v1 + 80) = 0x3FF0000000000000;
  *(v1 + 88) = 0;
  *(v1 + 120) = 0;
  *(v1 + 152) = 0;
  *(v1 + 184) = 0;
  *v1 = &unk_1F5CBF8F8;
  *(v1 + 328) = 0;
  *(v1 + 280) = 0;
  result = 0.0;
  *(v1 + 248) = 0u;
  *(v1 + 264) = 0u;
  *(v1 + 288) = 0u;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::SkeletalPoseAnimationAssetData>(uint64_t a1)
{
  re::DynamicArray<re::StringID>::deinit(a1 + 296);
  re::DynamicArray<re::StringID>::deinit(a1 + 256);
  re::DynamicArray<re::StringID>::deinit(a1 + 216);
  re::AssetHandle::~AssetHandle((a1 + 192));

  return re::FromToByAnimationAssetData<re::SkeletalPoseAssetData>::~FromToByAnimationAssetData(a1);
}

void *re::allocInfo_BlendShapeWeightsAnimationAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194E70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194E70))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18B668, "BlendShapeWeightsAnimationAssetData");
    __cxa_guard_release(&qword_1EE194E70);
  }

  return &unk_1EE18B668;
}

void re::initInfo_BlendShapeWeightsAnimationAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v48[0] = 0x25CA19AF0A5CEFC2;
  v48[1] = "BlendShapeWeightsAnimationAssetData";
  if (v48[0])
  {
    if (v48[0])
    {
    }
  }

  *(this + 2) = v49;
  if ((atomic_load_explicit(&qword_1EE194E78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194E78))
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
    qword_1EE18C4C8 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE18C4D0 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_double(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "duration";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x5000000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE18C4D8 = v21;
    v22 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::BlendShapeWeightsAssetData>>::get(v22);
    v23 = (*(*v22 + 32))(v22, 72, 8);
    *v23 = 1;
    *(v23 + 8) = "from";
    *(v23 + 16) = &qword_1EE195AD8;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0x5800000003;
    *(v23 + 40) = 0;
    *(v23 + 48) = 0;
    *(v23 + 56) = 0;
    *(v23 + 64) = 0;
    qword_1EE18C4E0 = v23;
    v24 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::BlendShapeWeightsAssetData>>::get(v24);
    v25 = (*(*v24 + 32))(v24, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "to";
    *(v25 + 16) = &qword_1EE195AD8;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x7800000004;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE18C4E8 = v25;
    v26 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::BlendShapeWeightsAssetData>>::get(v26);
    v27 = (*(*v26 + 32))(v26, 72, 8);
    *v27 = 1;
    *(v27 + 8) = "by";
    *(v27 + 16) = &qword_1EE195AD8;
    *(v27 + 24) = 0;
    *(v27 + 32) = 0x9800000005;
    *(v27 + 40) = 0;
    *(v27 + 48) = 0;
    *(v27 + 56) = 0;
    *(v27 + 64) = 0;
    qword_1EE18C4F0 = v27;
    v28 = re::introspectionAllocator();
    re::IntrospectionInfo<re::EasingFunction *>::get(v28, v29, v30, v31, v32, v33);
    v34 = (*(*v28 + 32))(v28, 72, 8);
    *v34 = 1;
    *(v34 + 8) = "easingFunction";
    *(v34 + 16) = &qword_1EE195958;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0xB800000006;
    *(v34 + 40) = 0;
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;
    *(v34 + 64) = 0;
    qword_1EE18C4F8 = v34;
    v35 = re::introspectionAllocator();
    v37 = re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(1, v36);
    v38 = (*(*v35 + 32))(v35, 72, 8);
    *v38 = 1;
    *(v38 + 8) = "fromWeightNames";
    *(v38 + 16) = v37;
    *(v38 + 24) = 0;
    *(v38 + 32) = 0xC000000007;
    *(v38 + 40) = 0;
    *(v38 + 48) = 0;
    *(v38 + 56) = 0;
    *(v38 + 64) = 0;
    qword_1EE18C500 = v38;
    v39 = re::introspectionAllocator();
    v41 = re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(1, v40);
    v42 = (*(*v39 + 32))(v39, 72, 8);
    *v42 = 1;
    *(v42 + 8) = "toWeightNames";
    *(v42 + 16) = v41;
    *(v42 + 24) = 0;
    *(v42 + 32) = 0xE800000008;
    *(v42 + 40) = 0;
    *(v42 + 48) = 0;
    *(v42 + 56) = 0;
    *(v42 + 64) = 0;
    qword_1EE18C508 = v42;
    v43 = re::introspectionAllocator();
    v45 = re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(1, v44);
    v46 = (*(*v43 + 32))(v43, 72, 8);
    *v46 = 1;
    *(v46 + 8) = "byWeightNames";
    *(v46 + 16) = v45;
    *(v46 + 24) = 0;
    *(v46 + 32) = 0x11000000009;
    *(v46 + 40) = 0;
    *(v46 + 48) = 0;
    *(v46 + 56) = 0;
    *(v46 + 64) = 0;
    qword_1EE18C510 = v46;
    __cxa_guard_release(&qword_1EE194E78);
  }

  *(this + 2) = 0x13800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 10;
  *(this + 8) = &qword_1EE18C4C8;
  *(this + 9) = re::internal::defaultConstruct<re::BlendShapeWeightsAnimationAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BlendShapeWeightsAnimationAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::BlendShapeWeightsAnimationAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::BlendShapeWeightsAnimationAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v47 = v49;
}

void re::IntrospectionInfo<re::Optional<re::BlendShapeWeightsAssetData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE195228, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE195228);
    if (a1)
    {
      re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE195AD8);
      qword_1EE195AD8 = &unk_1F5CBF9A8;
      __cxa_guard_release(&qword_1EE195228);
    }
  }

  if ((byte_1EE194C48 & 1) == 0)
  {
    v1 = qword_1EE194CB8;
    if (qword_1EE194CB8 || (v1 = re::allocInfo_BlendShapeWeightsAssetData(a1), qword_1EE194CB8 = v1, re::initInfo_BlendShapeWeightsAssetData(v1, v2, v3, v4), (byte_1EE194C48 & 1) == 0))
    {
      byte_1EE194C48 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE195AD8, 0);
      qword_1EE195AE8 = 0x200000000DLL;
      dword_1EE195AF0 = v5;
      word_1EE195AF4 = 0;
      *&xmmword_1EE195AF8 = 0;
      *(&xmmword_1EE195AF8 + 1) = 0xFFFFFFFFLL;
      qword_1EE195B08 = v1;
      qword_1EE195B10 = 0;
      qword_1EE195AD8 = &unk_1F5CBF9A8;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE195AD8);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginOptionalType(&v15, &v13, 0x20uLL, 8uLL, &v14);
        re::TypeBuilder::setOptionalAccessors(&v15, re::TypeBuilderHelper::registerOptional<re::BlendShapeWeightsAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::BlendShapeWeightsAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE195AF8 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::BlendShapeWeightsAnimationAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::TimelineAssetData::TimelineAssetData(a3, 50);
  *(v3 + 72) = 0;
  *(v3 + 80) = 0x3FF0000000000000;
  *(v3 + 88) = 0;
  *(v3 + 120) = 0;
  *(v3 + 152) = 0;
  *(v3 + 184) = 0;
  *(v3 + 192) = 0;
  *v3 = &unk_1F5CBFA28;
  *(v3 + 200) = 0;
  *(v3 + 208) = 0;
  *(v3 + 216) = 0;
  *(v3 + 304) = 0;
  result = 0.0;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0;
  *(v3 + 264) = 0u;
  *(v3 + 280) = 0u;
  *(v3 + 296) = 0;
  return result;
}

uint64_t re::internal::defaultDestruct<re::BlendShapeWeightsAnimationAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::StringID>::deinit(a3 + 272);
  re::DynamicArray<re::StringID>::deinit(a3 + 232);
  re::DynamicArray<re::StringID>::deinit(a3 + 192);

  return re::FromToByAnimationAssetData<re::BlendShapeWeightsAssetData>::~FromToByAnimationAssetData(a3);
}

double re::internal::defaultConstructV2<re::BlendShapeWeightsAnimationAssetData>(uint64_t a1)
{
  v1 = re::TimelineAssetData::TimelineAssetData(a1, 50);
  *(v1 + 72) = 0;
  *(v1 + 80) = 0x3FF0000000000000;
  *(v1 + 88) = 0;
  *(v1 + 120) = 0;
  *(v1 + 152) = 0;
  *(v1 + 184) = 0;
  *(v1 + 192) = 0;
  *v1 = &unk_1F5CBFA28;
  *(v1 + 200) = 0;
  *(v1 + 208) = 0;
  *(v1 + 216) = 0;
  *(v1 + 304) = 0;
  result = 0.0;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 0;
  *(v1 + 264) = 0u;
  *(v1 + 280) = 0u;
  *(v1 + 296) = 0;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::BlendShapeWeightsAnimationAssetData>(uint64_t a1)
{
  re::DynamicArray<re::StringID>::deinit(a1 + 272);
  re::DynamicArray<re::StringID>::deinit(a1 + 232);
  re::DynamicArray<re::StringID>::deinit(a1 + 192);

  return re::FromToByAnimationAssetData<re::BlendShapeWeightsAssetData>::~FromToByAnimationAssetData(a1);
}

void *re::allocInfo_FloatKeyframeAnimationAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194E88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194E88))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18B6F8, "FloatKeyframeAnimationAssetData");
    __cxa_guard_release(&qword_1EE194E88);
  }

  return &unk_1EE18B6F8;
}

void re::initInfo_FloatKeyframeAnimationAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v31[0] = 0xC4EF9F04D0096C00;
  v31[1] = "FloatKeyframeAnimationAssetData";
  if (v31[0])
  {
    if (v31[0])
    {
    }
  }

  *(this + 2) = v32;
  if ((atomic_load_explicit(&qword_1EE194E90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194E90))
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
    qword_1EE195418 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE195420 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_BOOL(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "enableInterpolation";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x4900000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE195428 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "times";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x5000000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE195430 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "values";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x7800000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE195438 = v29;
    __cxa_guard_release(&qword_1EE194E90);
  }

  *(this + 2) = 0xA000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE195418;
  *(this + 9) = re::internal::defaultConstruct<re::FloatKeyframeAnimationAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::FloatKeyframeAnimationAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::FloatKeyframeAnimationAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::FloatKeyframeAnimationAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v30 = v32;
}

double re::internal::defaultConstruct<re::FloatKeyframeAnimationAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::TimelineAssetData::TimelineAssetData(a3, 19);
  *(v3 + 72) = 256;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 80) = 0;
  *(v3 + 104) = 0;
  *(v3 + 152) = 0;
  result = 0.0;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0;
  *v3 = &unk_1F5CBFAD8;
  return result;
}

void re::internal::defaultDestruct<re::FloatKeyframeAnimationAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CBFB48;
  v4 = (a3 + 5);
  re::DynamicArray<unsigned long>::deinit((a3 + 15));
  re::DynamicArray<unsigned long>::deinit((a3 + 10));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit(v4);

  re::StringID::destroyString((a3 + 3));
}

double re::internal::defaultConstructV2<re::FloatKeyframeAnimationAssetData>(uint64_t a1)
{
  v1 = re::TimelineAssetData::TimelineAssetData(a1, 19);
  *(v1 + 72) = 256;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 80) = 0;
  *(v1 + 104) = 0;
  *(v1 + 152) = 0;
  result = 0.0;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0;
  *v1 = &unk_1F5CBFAD8;
  return result;
}

void re::internal::defaultDestructV2<re::FloatKeyframeAnimationAssetData>(void *a1)
{
  *a1 = &unk_1F5CBFB48;
  v2 = (a1 + 5);
  re::DynamicArray<unsigned long>::deinit((a1 + 15));
  re::DynamicArray<unsigned long>::deinit((a1 + 10));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_DoubleKeyframeAnimationAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194EA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194EA0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18B788, "DoubleKeyframeAnimationAssetData");
    __cxa_guard_release(&qword_1EE194EA0);
  }

  return &unk_1EE18B788;
}

void re::initInfo_DoubleKeyframeAnimationAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v31[0] = 0x1F76A011B0B906EALL;
  v31[1] = "DoubleKeyframeAnimationAssetData";
  if (v31[0])
  {
    if (v31[0])
    {
    }
  }

  *(this + 2) = v32;
  if ((atomic_load_explicit(&qword_1EE194EA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194EA8))
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
    qword_1EE195440 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE195448 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_BOOL(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "enableInterpolation";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x4900000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE195450 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "times";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x5000000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE195458 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::IntrospectionInfo<re::DynamicArray<double>>::get(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "values";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x7800000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE195460 = v29;
    __cxa_guard_release(&qword_1EE194EA8);
  }

  *(this + 2) = 0xA000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE195440;
  *(this + 9) = re::internal::defaultConstruct<re::DoubleKeyframeAnimationAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::DoubleKeyframeAnimationAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::DoubleKeyframeAnimationAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::DoubleKeyframeAnimationAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v30 = v32;
}

uint64_t *re::IntrospectionInfo<re::DynamicArray<double>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&re::IntrospectionInfo<re::DynamicArray<double>>::get(BOOL)::info) = &unk_1F5CBFB88;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::DynamicArray<double>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::DynamicArray<double>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::DynamicArray<double>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::DynamicArray<double>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_double(1, a2);
  if ((re::IntrospectionInfo<re::DynamicArray<double>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::DynamicArray<double>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<double>>::get(BOOL)::info, 0);
    qword_1EE1868C0 = 0x2800000003;
    dword_1EE1868C8 = v8;
    word_1EE1868CC = 0;
    *&xmmword_1EE1868D0 = 0;
    *(&xmmword_1EE1868D0 + 1) = 0xFFFFFFFFLL;
    qword_1EE1868E0 = v7;
    unk_1EE1868E8 = 0;
    re::IntrospectionInfo<re::DynamicArray<double>>::get(BOOL)::info = &unk_1F5CBFB88;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&v15, &re::IntrospectionInfo<re::DynamicArray<double>>::get(BOOL)::info);
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
    xmmword_1EE1868D0 = v14;
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

  return &re::IntrospectionInfo<re::DynamicArray<double>>::get(BOOL)::info;
}

double re::internal::defaultConstruct<re::DoubleKeyframeAnimationAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::TimelineAssetData::TimelineAssetData(a3, 20);
  *(v3 + 72) = 256;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 80) = 0;
  *(v3 + 104) = 0;
  *(v3 + 152) = 0;
  result = 0.0;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0;
  *v3 = &unk_1F5CBFC20;
  return result;
}

void re::internal::defaultDestruct<re::DoubleKeyframeAnimationAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CBFC90;
  v4 = (a3 + 5);
  re::DynamicArray<unsigned long>::deinit((a3 + 15));
  re::DynamicArray<unsigned long>::deinit((a3 + 10));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit(v4);

  re::StringID::destroyString((a3 + 3));
}

double re::internal::defaultConstructV2<re::DoubleKeyframeAnimationAssetData>(uint64_t a1)
{
  v1 = re::TimelineAssetData::TimelineAssetData(a1, 20);
  *(v1 + 72) = 256;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 80) = 0;
  *(v1 + 104) = 0;
  *(v1 + 152) = 0;
  result = 0.0;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0;
  *v1 = &unk_1F5CBFC20;
  return result;
}

void re::internal::defaultDestructV2<re::DoubleKeyframeAnimationAssetData>(void *a1)
{
  *a1 = &unk_1F5CBFC90;
  v2 = (a1 + 5);
  re::DynamicArray<unsigned long>::deinit((a1 + 15));
  re::DynamicArray<unsigned long>::deinit((a1 + 10));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_Vector2FKeyframeAnimationAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194EB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194EB8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18B818, "Vector2FKeyframeAnimationAssetData");
    __cxa_guard_release(&qword_1EE194EB8);
  }

  return &unk_1EE18B818;
}

void re::initInfo_Vector2FKeyframeAnimationAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v31[0] = 0x6927DBC5FC9D8DF6;
  v31[1] = "Vector2FKeyframeAnimationAssetData";
  if (v31[0])
  {
    if (v31[0])
    {
    }
  }

  *(this + 2) = v32;
  if ((atomic_load_explicit(&qword_1EE194EC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194EC0))
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
    qword_1EE195468 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE195470 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_BOOL(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "enableInterpolation";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x4900000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE195478 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "times";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x5000000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE195480 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::IntrospectionInfo<re::DynamicArray<re::Vector2<float>>>::get(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "values";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x7800000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE195488 = v29;
    __cxa_guard_release(&qword_1EE194EC0);
  }

  *(this + 2) = 0xA000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE195468;
  *(this + 9) = re::internal::defaultConstruct<re::Vector2FKeyframeAnimationAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Vector2FKeyframeAnimationAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::Vector2FKeyframeAnimationAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::Vector2FKeyframeAnimationAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v30 = v32;
}

double re::internal::defaultConstruct<re::Vector2FKeyframeAnimationAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::TimelineAssetData::TimelineAssetData(a3, 21);
  *(v3 + 72) = 256;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 80) = 0;
  *(v3 + 104) = 0;
  *(v3 + 152) = 0;
  result = 0.0;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0;
  *v3 = &unk_1F5CBFCD0;
  return result;
}

void re::internal::defaultDestruct<re::Vector2FKeyframeAnimationAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CBFD40;
  v4 = (a3 + 5);
  re::DynamicArray<unsigned long>::deinit((a3 + 15));
  re::DynamicArray<unsigned long>::deinit((a3 + 10));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit(v4);

  re::StringID::destroyString((a3 + 3));
}

double re::internal::defaultConstructV2<re::Vector2FKeyframeAnimationAssetData>(uint64_t a1)
{
  v1 = re::TimelineAssetData::TimelineAssetData(a1, 21);
  *(v1 + 72) = 256;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 80) = 0;
  *(v1 + 104) = 0;
  *(v1 + 152) = 0;
  result = 0.0;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0;
  *v1 = &unk_1F5CBFCD0;
  return result;
}

void re::internal::defaultDestructV2<re::Vector2FKeyframeAnimationAssetData>(void *a1)
{
  *a1 = &unk_1F5CBFD40;
  v2 = (a1 + 5);
  re::DynamicArray<unsigned long>::deinit((a1 + 15));
  re::DynamicArray<unsigned long>::deinit((a1 + 10));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_Vector3FKeyframeAnimationAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194ED0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194ED0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18B8A8, "Vector3FKeyframeAnimationAssetData");
    __cxa_guard_release(&qword_1EE194ED0);
  }

  return &unk_1EE18B8A8;
}

void re::initInfo_Vector3FKeyframeAnimationAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v31[0] = 0xFC505665DE3F9CB4;
  v31[1] = "Vector3FKeyframeAnimationAssetData";
  if (v31[0])
  {
    if (v31[0])
    {
    }
  }

  *(this + 2) = v32;
  if ((atomic_load_explicit(&qword_1EE194ED8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194ED8))
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
    qword_1EE195490 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE195498 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_BOOL(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "enableInterpolation";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x4900000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1954A0 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "times";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x5000000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1954A8 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "values";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x7800000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE1954B0 = v29;
    __cxa_guard_release(&qword_1EE194ED8);
  }

  *(this + 2) = 0xA000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE195490;
  *(this + 9) = re::internal::defaultConstruct<re::Vector3FKeyframeAnimationAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Vector3FKeyframeAnimationAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::Vector3FKeyframeAnimationAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::Vector3FKeyframeAnimationAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v30 = v32;
}

double re::internal::defaultConstruct<re::Vector3FKeyframeAnimationAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::TimelineAssetData::TimelineAssetData(a3, 22);
  *(v3 + 72) = 256;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 80) = 0;
  *(v3 + 104) = 0;
  *(v3 + 152) = 0;
  result = 0.0;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0;
  *v3 = &unk_1F5CBFD80;
  return result;
}

void re::internal::defaultDestruct<re::Vector3FKeyframeAnimationAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CBFDF0;
  v4 = (a3 + 5);
  re::DynamicArray<unsigned long>::deinit((a3 + 15));
  re::DynamicArray<unsigned long>::deinit((a3 + 10));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit(v4);

  re::StringID::destroyString((a3 + 3));
}

double re::internal::defaultConstructV2<re::Vector3FKeyframeAnimationAssetData>(uint64_t a1)
{
  v1 = re::TimelineAssetData::TimelineAssetData(a1, 22);
  *(v1 + 72) = 256;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 80) = 0;
  *(v1 + 104) = 0;
  *(v1 + 152) = 0;
  result = 0.0;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0;
  *v1 = &unk_1F5CBFD80;
  return result;
}

void re::internal::defaultDestructV2<re::Vector3FKeyframeAnimationAssetData>(void *a1)
{
  *a1 = &unk_1F5CBFDF0;
  v2 = (a1 + 5);
  re::DynamicArray<unsigned long>::deinit((a1 + 15));
  re::DynamicArray<unsigned long>::deinit((a1 + 10));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_Vector4FKeyframeAnimationAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194EE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194EE8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18B938, "Vector4FKeyframeAnimationAssetData");
    __cxa_guard_release(&qword_1EE194EE8);
  }

  return &unk_1EE18B938;
}

void re::initInfo_Vector4FKeyframeAnimationAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v31[0] = 0x8F78D105BFE1AB72;
  v31[1] = "Vector4FKeyframeAnimationAssetData";
  if (v31[0])
  {
    if (v31[0])
    {
    }
  }

  *(this + 2) = v32;
  if ((atomic_load_explicit(&qword_1EE194EF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194EF0))
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
    qword_1EE1954B8 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1954C0 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_BOOL(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "enableInterpolation";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x4900000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1954C8 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "times";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x5000000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1954D0 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::IntrospectionInfo<re::DynamicArray<re::Vector4<float>>>::get(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "values";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x7800000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE1954D8 = v29;
    __cxa_guard_release(&qword_1EE194EF0);
  }

  *(this + 2) = 0xA000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1954B8;
  *(this + 9) = re::internal::defaultConstruct<re::Vector4FKeyframeAnimationAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Vector4FKeyframeAnimationAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::Vector4FKeyframeAnimationAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::Vector4FKeyframeAnimationAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v30 = v32;
}

double re::internal::defaultConstruct<re::Vector4FKeyframeAnimationAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::TimelineAssetData::TimelineAssetData(a3, 23);
  *(v3 + 72) = 256;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 80) = 0;
  *(v3 + 104) = 0;
  *(v3 + 152) = 0;
  result = 0.0;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0;
  *v3 = &unk_1F5CBFE30;
  return result;
}

void re::internal::defaultDestruct<re::Vector4FKeyframeAnimationAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CBFEA0;
  v4 = (a3 + 5);
  re::DynamicArray<unsigned long>::deinit((a3 + 15));
  re::DynamicArray<unsigned long>::deinit((a3 + 10));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit(v4);

  re::StringID::destroyString((a3 + 3));
}

double re::internal::defaultConstructV2<re::Vector4FKeyframeAnimationAssetData>(uint64_t a1)
{
  v1 = re::TimelineAssetData::TimelineAssetData(a1, 23);
  *(v1 + 72) = 256;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 80) = 0;
  *(v1 + 104) = 0;
  *(v1 + 152) = 0;
  result = 0.0;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0;
  *v1 = &unk_1F5CBFE30;
  return result;
}

void re::internal::defaultDestructV2<re::Vector4FKeyframeAnimationAssetData>(void *a1)
{
  *a1 = &unk_1F5CBFEA0;
  v2 = (a1 + 5);
  re::DynamicArray<unsigned long>::deinit((a1 + 15));
  re::DynamicArray<unsigned long>::deinit((a1 + 10));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_QuaternionFKeyframeAnimationAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194F00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194F00))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18B9C8, "QuaternionFKeyframeAnimationAssetData");
    __cxa_guard_release(&qword_1EE194F00);
  }

  return &unk_1EE18B9C8;
}

void re::initInfo_QuaternionFKeyframeAnimationAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v31[0] = 0x7ACD97FBCF105B18;
  v31[1] = "QuaternionFKeyframeAnimationAssetData";
  if (v31[0])
  {
    if (v31[0])
    {
    }
  }

  *(this + 2) = v32;
  if ((atomic_load_explicit(&qword_1EE194F08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194F08))
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
    qword_1EE1954E0 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1954E8 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_BOOL(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "enableInterpolation";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x4900000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1954F0 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "times";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x5000000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1954F8 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::IntrospectionInfo<re::DynamicArray<re::Quaternion<float>>>::get(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "values";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x7800000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE195500 = v29;
    __cxa_guard_release(&qword_1EE194F08);
  }

  *(this + 2) = 0xA000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1954E0;
  *(this + 9) = re::internal::defaultConstruct<re::QuaternionFKeyframeAnimationAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::QuaternionFKeyframeAnimationAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::QuaternionFKeyframeAnimationAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::QuaternionFKeyframeAnimationAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v30 = v32;
}

double re::internal::defaultConstruct<re::QuaternionFKeyframeAnimationAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::TimelineAssetData::TimelineAssetData(a3, 24);
  *(v3 + 72) = 256;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 80) = 0;
  *(v3 + 104) = 0;
  *(v3 + 152) = 0;
  result = 0.0;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0;
  *v3 = &unk_1F5CBFEE0;
  return result;
}

void re::internal::defaultDestruct<re::QuaternionFKeyframeAnimationAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CBFF50;
  v4 = (a3 + 5);
  re::DynamicArray<unsigned long>::deinit((a3 + 15));
  re::DynamicArray<unsigned long>::deinit((a3 + 10));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit(v4);

  re::StringID::destroyString((a3 + 3));
}

double re::internal::defaultConstructV2<re::QuaternionFKeyframeAnimationAssetData>(uint64_t a1)
{
  v1 = re::TimelineAssetData::TimelineAssetData(a1, 24);
  *(v1 + 72) = 256;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 80) = 0;
  *(v1 + 104) = 0;
  *(v1 + 152) = 0;
  result = 0.0;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0;
  *v1 = &unk_1F5CBFEE0;
  return result;
}

void re::internal::defaultDestructV2<re::QuaternionFKeyframeAnimationAssetData>(void *a1)
{
  *a1 = &unk_1F5CBFF50;
  v2 = (a1 + 5);
  re::DynamicArray<unsigned long>::deinit((a1 + 15));
  re::DynamicArray<unsigned long>::deinit((a1 + 10));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_SRTKeyframeAnimationAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194F18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194F18))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18BA58, "SRTKeyframeAnimationAssetData");
    __cxa_guard_release(&qword_1EE194F18);
  }

  return &unk_1EE18BA58;
}

void re::initInfo_SRTKeyframeAnimationAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v30[0] = 0x79FFE5F38CE10B2;
  v30[1] = "SRTKeyframeAnimationAssetData";
  if (v30[0])
  {
    if (v30[0])
    {
    }
  }

  *(this + 2) = v31;
  if ((atomic_load_explicit(&qword_1EE194F20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194F20))
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
    qword_1EE195508 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE195510 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_BOOL(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "enableInterpolation";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x4900000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE195518 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "times";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x5000000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE195520 = v25;
    v26 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::GenericSRT<float>>>::get(v26, v27);
    v28 = (*(*v26 + 32))(v26, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "values";
    *(v28 + 16) = &qword_1EE195B18;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0x7800000004;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE195528 = v28;
    __cxa_guard_release(&qword_1EE194F20);
  }

  *(this + 2) = 0xA000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE195508;
  *(this + 9) = re::internal::defaultConstruct<re::SRTKeyframeAnimationAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SRTKeyframeAnimationAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::SRTKeyframeAnimationAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::SRTKeyframeAnimationAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v29 = v31;
}

void re::IntrospectionInfo<re::DynamicArray<re::GenericSRT<float>>>::get(uint64_t a1, BOOL a2)
{
  if ((atomic_load_explicit(&qword_1EE195230, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195230))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE195B18);
    qword_1EE195B18 = &unk_1F5CBFF90;
    __cxa_guard_release(&qword_1EE195230);
  }

  if ((byte_1EE194C49 & 1) == 0)
  {
    v2 = re::introspect_SRT(1);
    if ((byte_1EE194C49 & 1) == 0)
    {
      v3 = v2;
      byte_1EE194C49 = 1;
      v4 = *(v2 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE195B18, 0);
      qword_1EE195B28 = 0x2800000003;
      dword_1EE195B30 = v4;
      word_1EE195B34 = 0;
      *&xmmword_1EE195B38 = 0;
      *(&xmmword_1EE195B38 + 1) = 0xFFFFFFFFLL;
      qword_1EE195B48 = v3;
      qword_1EE195B50 = 0;
      qword_1EE195B18 = &unk_1F5CBFF90;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&v14, &qword_1EE195B18);
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
        re::TypeBuilder::setConstructor(&v14, re::TypeBuilderHelper::registerDynamicArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v14, re::TypeBuilderHelper::registerDynamicArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v14, 1);
        re::TypeBuilder::setListAccessors(&v14, re::TypeBuilderHelper::registerDynamicArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v14, re::TypeBuilderHelper::registerDynamicArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v14, re::TypeBuilderHelper::registerDynamicArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::GenericSRT<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE195B38 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::SRTKeyframeAnimationAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::TimelineAssetData::TimelineAssetData(a3, 25);
  *(v3 + 72) = 256;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 80) = 0;
  *(v3 + 104) = 0;
  *(v3 + 152) = 0;
  result = 0.0;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0;
  *v3 = &unk_1F5CC0028;
  return result;
}

void re::internal::defaultDestruct<re::SRTKeyframeAnimationAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CC0098;
  v4 = (a3 + 5);
  re::DynamicArray<unsigned long>::deinit((a3 + 15));
  re::DynamicArray<unsigned long>::deinit((a3 + 10));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit(v4);

  re::StringID::destroyString((a3 + 3));
}

double re::internal::defaultConstructV2<re::SRTKeyframeAnimationAssetData>(uint64_t a1)
{
  v1 = re::TimelineAssetData::TimelineAssetData(a1, 25);
  *(v1 + 72) = 256;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 80) = 0;
  *(v1 + 104) = 0;
  *(v1 + 152) = 0;
  result = 0.0;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0;
  *v1 = &unk_1F5CC0028;
  return result;
}

void re::internal::defaultDestructV2<re::SRTKeyframeAnimationAssetData>(void *a1)
{
  *a1 = &unk_1F5CC0098;
  v2 = (a1 + 5);
  re::DynamicArray<unsigned long>::deinit((a1 + 15));
  re::DynamicArray<unsigned long>::deinit((a1 + 10));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_SkeletalPoseKeyframeAnimationAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194F30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194F30))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18BAE8, "SkeletalPoseKeyframeAnimationAssetData");
    __cxa_guard_release(&qword_1EE194F30);
  }

  return &unk_1EE18BAE8;
}

void re::initInfo_SkeletalPoseKeyframeAnimationAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v37[0] = 0x1C7366FF8B08925CLL;
  v37[1] = "SkeletalPoseKeyframeAnimationAssetData";
  if (v37[0])
  {
    if (v37[0])
    {
    }
  }

  *(this + 2) = v38;
  if ((atomic_load_explicit(&qword_1EE194F38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194F38))
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
    qword_1EE195718 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE195720 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_BOOL(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "enableInterpolation";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x4900000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE195728 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "times";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x5000000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE195730 = v25;
    v26 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::SkeletalPoseAssetData>>::get(v26);
    v27 = (*(*v26 + 32))(v26, 72, 8);
    *v27 = 1;
    *(v27 + 8) = "values";
    *(v27 + 16) = &qword_1EE195B58;
    *(v27 + 24) = 0;
    *(v27 + 32) = 0x7800000004;
    *(v27 + 40) = 0;
    *(v27 + 48) = 0;
    *(v27 + 56) = 0;
    *(v27 + 64) = 0;
    qword_1EE195738 = v27;
    v28 = re::introspectionAllocator();
    v30 = re::introspect_AssetHandle(1, v29);
    v31 = (*(*v28 + 32))(v28, 72, 8);
    *v31 = 1;
    *(v31 + 8) = "skeleton";
    *(v31 + 16) = v30;
    *(v31 + 24) = 0;
    *(v31 + 32) = 0xA000000005;
    *(v31 + 40) = 0;
    *(v31 + 48) = 0;
    *(v31 + 56) = 0;
    *(v31 + 64) = 0;
    qword_1EE195740 = v31;
    v32 = re::introspectionAllocator();
    v34 = re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(1, v33);
    v35 = (*(*v32 + 32))(v32, 72, 8);
    *v35 = 1;
    *(v35 + 8) = "jointNames";
    *(v35 + 16) = v34;
    *(v35 + 24) = 0;
    *(v35 + 32) = 0xB800000006;
    *(v35 + 40) = 0;
    *(v35 + 48) = 0;
    *(v35 + 56) = 0;
    *(v35 + 64) = 0;
    qword_1EE195748 = v35;
    __cxa_guard_release(&qword_1EE194F38);
  }

  *(this + 2) = 0xE000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE195718;
  *(this + 9) = re::internal::defaultConstruct<re::SkeletalPoseKeyframeAnimationAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SkeletalPoseKeyframeAnimationAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::SkeletalPoseKeyframeAnimationAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::SkeletalPoseKeyframeAnimationAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v36 = v38;
}

void re::IntrospectionInfo<re::DynamicArray<re::SkeletalPoseAssetData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE195238, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE195238);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE195B58);
      qword_1EE195B58 = &unk_1F5CC00D8;
      __cxa_guard_release(&qword_1EE195238);
    }
  }

  if ((byte_1EE194C4A & 1) == 0)
  {
    v1 = qword_1EE194C98;
    if (qword_1EE194C98 || (v1 = re::allocInfo_SkeletalPoseAssetData(a1), qword_1EE194C98 = v1, re::initInfo_SkeletalPoseAssetData(v1, v2, v3, v4), (byte_1EE194C4A & 1) == 0))
    {
      byte_1EE194C4A = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE195B58, 0);
      qword_1EE195B68 = 0x2800000003;
      dword_1EE195B70 = v5;
      word_1EE195B74 = 0;
      *&xmmword_1EE195B78 = 0;
      *(&xmmword_1EE195B78 + 1) = 0xFFFFFFFFLL;
      qword_1EE195B88 = v1;
      qword_1EE195B90 = 0;
      qword_1EE195B58 = &unk_1F5CC00D8;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE195B58);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPoseAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPoseAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPoseAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPoseAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPoseAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPoseAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPoseAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::SkeletalPoseAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE195B78 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::SkeletalPoseKeyframeAnimationAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::TimelineAssetData::TimelineAssetData(a3, 26);
  *(v3 + 72) = 256;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 80) = 0;
  *(v3 + 104) = 0;
  *(v3 + 152) = 0;
  result = 0.0;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0;
  *v3 = &unk_1F5CC0170;
  *(v3 + 216) = 0;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0u;
  *(v3 + 208) = 0;
  return result;
}

void re::internal::defaultDestruct<re::SkeletalPoseKeyframeAnimationAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  re::DynamicArray<re::StringID>::deinit((a3 + 23));
  re::AssetHandle::~AssetHandle((a3 + 20));
  *a3 = &unk_1F5CC01E0;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit((a3 + 15));
  re::DynamicArray<unsigned long>::deinit((a3 + 10));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit((a3 + 5));

  re::StringID::destroyString((a3 + 3));
}

double re::internal::defaultConstructV2<re::SkeletalPoseKeyframeAnimationAssetData>(uint64_t a1)
{
  v1 = re::TimelineAssetData::TimelineAssetData(a1, 26);
  *(v1 + 72) = 256;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 80) = 0;
  *(v1 + 104) = 0;
  *(v1 + 152) = 0;
  result = 0.0;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0;
  *v1 = &unk_1F5CC0170;
  *(v1 + 216) = 0;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::SkeletalPoseKeyframeAnimationAssetData>(void *a1)
{
  re::DynamicArray<re::StringID>::deinit((a1 + 23));
  re::AssetHandle::~AssetHandle((a1 + 20));
  *a1 = &unk_1F5CC01E0;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit((a1 + 15));
  re::DynamicArray<unsigned long>::deinit((a1 + 10));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit((a1 + 5));

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_BlendShapeWeightsKeyframeAnimationAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194F48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194F48))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18BB78, "BlendShapeWeightsKeyframeAnimationAssetData");
    __cxa_guard_release(&qword_1EE194F48);
  }

  return &unk_1EE18BB78;
}

void re::initInfo_BlendShapeWeightsKeyframeAnimationAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v33[0] = 0xEC78F2B93E3ACFDELL;
  v33[1] = "BlendShapeWeightsKeyframeAnimationAssetData";
  if (v33[0])
  {
    if (v33[0])
    {
    }
  }

  *(this + 2) = v34;
  if ((atomic_load_explicit(&qword_1EE194F50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194F50))
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
    qword_1EE195560 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE195568 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_BOOL(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "enableInterpolation";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x4900000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE195570 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "times";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x5000000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE195578 = v25;
    v26 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::BlendShapeWeightsAssetData>>::get(v26);
    v27 = (*(*v26 + 32))(v26, 72, 8);
    *v27 = 1;
    *(v27 + 8) = "values";
    *(v27 + 16) = &qword_1EE195B98;
    *(v27 + 24) = 0;
    *(v27 + 32) = 0x7800000004;
    *(v27 + 40) = 0;
    *(v27 + 48) = 0;
    *(v27 + 56) = 0;
    *(v27 + 64) = 0;
    qword_1EE195580 = v27;
    v28 = re::introspectionAllocator();
    v30 = re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(1, v29);
    v31 = (*(*v28 + 32))(v28, 72, 8);
    *v31 = 1;
    *(v31 + 8) = "weightNames";
    *(v31 + 16) = v30;
    *(v31 + 24) = 0;
    *(v31 + 32) = 0xA000000005;
    *(v31 + 40) = 0;
    *(v31 + 48) = 0;
    *(v31 + 56) = 0;
    *(v31 + 64) = 0;
    qword_1EE195588 = v31;
    __cxa_guard_release(&qword_1EE194F50);
  }

  *(this + 2) = 0xC800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE195560;
  *(this + 9) = re::internal::defaultConstruct<re::BlendShapeWeightsKeyframeAnimationAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BlendShapeWeightsKeyframeAnimationAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::BlendShapeWeightsKeyframeAnimationAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::BlendShapeWeightsKeyframeAnimationAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v32 = v34;
}

void re::IntrospectionInfo<re::DynamicArray<re::BlendShapeWeightsAssetData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE195240, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE195240);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE195B98);
      qword_1EE195B98 = &unk_1F5CC0220;
      __cxa_guard_release(&qword_1EE195240);
    }
  }

  if ((byte_1EE194C4B & 1) == 0)
  {
    v1 = qword_1EE194CB8;
    if (qword_1EE194CB8 || (v1 = re::allocInfo_BlendShapeWeightsAssetData(a1), qword_1EE194CB8 = v1, re::initInfo_BlendShapeWeightsAssetData(v1, v2, v3, v4), (byte_1EE194C4B & 1) == 0))
    {
      byte_1EE194C4B = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE195B98, 0);
      qword_1EE195BA8 = 0x2800000003;
      dword_1EE195BB0 = v5;
      word_1EE195BB4 = 0;
      *&xmmword_1EE195BB8 = 0;
      *(&xmmword_1EE195BB8 + 1) = 0xFFFFFFFFLL;
      qword_1EE195BC8 = v1;
      qword_1EE195BD0 = 0;
      qword_1EE195B98 = &unk_1F5CC0220;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE195B98);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE195BB8 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::BlendShapeWeightsKeyframeAnimationAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::TimelineAssetData::TimelineAssetData(a3, 61);
  *(v3 + 72) = 256;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 80) = 0;
  *(v3 + 104) = 0;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
  result = 0.0;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0;
  *v3 = &unk_1F5CC02B8;
  *(v3 + 192) = 0;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  return result;
}

void re::internal::defaultDestruct<re::BlendShapeWeightsKeyframeAnimationAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  re::DynamicArray<re::StringID>::deinit((a3 + 20));
  *a3 = &unk_1F5CC0328;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit((a3 + 15));
  re::DynamicArray<unsigned long>::deinit((a3 + 10));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit((a3 + 5));

  re::StringID::destroyString((a3 + 3));
}

double re::internal::defaultConstructV2<re::BlendShapeWeightsKeyframeAnimationAssetData>(uint64_t a1)
{
  v1 = re::TimelineAssetData::TimelineAssetData(a1, 61);
  *(v1 + 72) = 256;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 80) = 0;
  *(v1 + 104) = 0;
  *(v1 + 152) = 0;
  *(v1 + 160) = 0;
  result = 0.0;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0;
  *v1 = &unk_1F5CC02B8;
  *(v1 + 192) = 0;
  *(v1 + 168) = 0;
  *(v1 + 176) = 0;
  *(v1 + 184) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::BlendShapeWeightsKeyframeAnimationAssetData>(void *a1)
{
  re::DynamicArray<re::StringID>::deinit((a1 + 20));
  *a1 = &unk_1F5CC0328;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit((a1 + 15));
  re::DynamicArray<unsigned long>::deinit((a1 + 10));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit((a1 + 5));

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_FloatSampledAnimationAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194F60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194F60))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18BC08, "FloatSampledAnimationAssetData");
    __cxa_guard_release(&qword_1EE194F60);
  }

  return &unk_1EE18BC08;
}

void re::initInfo_FloatSampledAnimationAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v39[0] = 0x9D1CC4B9BF4754A8;
  v39[1] = "FloatSampledAnimationAssetData";
  if (v39[0])
  {
    if (v39[0])
    {
    }
  }

  *(this + 2) = v40;
  if ((atomic_load_explicit(&qword_1EE194F68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194F68))
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
    qword_1EE195750 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE195758 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_BOOL(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "enableInterpolation";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x4900000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE195760 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::introspect_float(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "frameInterval";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x4C00000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE195768 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::introspect_float(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "startTime";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x5000000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE195770 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::introspect_float(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "endTime";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x5400000005;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE195778 = v33;
    v34 = re::introspectionAllocator();
    v36 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v35);
    v37 = (*(*v34 + 32))(v34, 72, 8);
    *v37 = 1;
    *(v37 + 8) = "values";
    *(v37 + 16) = v36;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0x5800000006;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    qword_1EE195780 = v37;
    __cxa_guard_release(&qword_1EE194F68);
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE195750;
  *(this + 9) = re::internal::defaultConstruct<re::FloatSampledAnimationAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::FloatSampledAnimationAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::FloatSampledAnimationAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::FloatSampledAnimationAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v38 = v40;
}

double re::internal::defaultConstruct<re::FloatSampledAnimationAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::TimelineAssetData::TimelineAssetData(a3, 27);
  *(v3 + 72) = 256;
  *(v3 + 76) = 1023969417;
  *(v3 + 120) = 0;
  result = 0.0;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0;
  *v3 = &unk_1F5CC0368;
  return result;
}

void re::internal::defaultDestruct<re::FloatSampledAnimationAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CC03D8;
  v4 = (a3 + 5);
  re::DynamicArray<unsigned long>::deinit((a3 + 11));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit(v4);

  re::StringID::destroyString((a3 + 3));
}

double re::internal::defaultConstructV2<re::FloatSampledAnimationAssetData>(uint64_t a1)
{
  v1 = re::TimelineAssetData::TimelineAssetData(a1, 27);
  *(v1 + 72) = 256;
  *(v1 + 76) = 1023969417;
  *(v1 + 120) = 0;
  result = 0.0;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0;
  *v1 = &unk_1F5CC0368;
  return result;
}

void re::internal::defaultDestructV2<re::FloatSampledAnimationAssetData>(void *a1)
{
  *a1 = &unk_1F5CC03D8;
  v2 = (a1 + 5);
  re::DynamicArray<unsigned long>::deinit((a1 + 11));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_DoubleSampledAnimationAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194F78))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18BC98, "DoubleSampledAnimationAssetData");
    __cxa_guard_release(&qword_1EE194F78);
  }

  return &unk_1EE18BC98;
}

void re::initInfo_DoubleSampledAnimationAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v39[0] = 0xC952ABFC3A23B47ELL;
  v39[1] = "DoubleSampledAnimationAssetData";
  if (v39[0])
  {
    if (v39[0])
    {
    }
  }

  *(this + 2) = v40;
  if ((atomic_load_explicit(&qword_1EE194F80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194F80))
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
    qword_1EE195788 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE195790 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_BOOL(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "enableInterpolation";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x4900000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE195798 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::introspect_float(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "frameInterval";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x4C00000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1957A0 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::introspect_float(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "startTime";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x5000000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE1957A8 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::introspect_float(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "endTime";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x5400000005;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE1957B0 = v33;
    v34 = re::introspectionAllocator();
    v36 = re::IntrospectionInfo<re::DynamicArray<double>>::get(1, v35);
    v37 = (*(*v34 + 32))(v34, 72, 8);
    *v37 = 1;
    *(v37 + 8) = "values";
    *(v37 + 16) = v36;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0x5800000006;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    qword_1EE1957B8 = v37;
    __cxa_guard_release(&qword_1EE194F80);
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE195788;
  *(this + 9) = re::internal::defaultConstruct<re::DoubleSampledAnimationAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::DoubleSampledAnimationAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::DoubleSampledAnimationAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::DoubleSampledAnimationAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v38 = v40;
}

double re::internal::defaultConstruct<re::DoubleSampledAnimationAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::TimelineAssetData::TimelineAssetData(a3, 28);
  *(v3 + 72) = 256;
  *(v3 + 76) = 1023969417;
  *(v3 + 120) = 0;
  result = 0.0;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0;
  *v3 = &unk_1F5CC0418;
  return result;
}

void re::internal::defaultDestruct<re::DoubleSampledAnimationAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CC0488;
  v4 = (a3 + 5);
  re::DynamicArray<unsigned long>::deinit((a3 + 11));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit(v4);

  re::StringID::destroyString((a3 + 3));
}

double re::internal::defaultConstructV2<re::DoubleSampledAnimationAssetData>(uint64_t a1)
{
  v1 = re::TimelineAssetData::TimelineAssetData(a1, 28);
  *(v1 + 72) = 256;
  *(v1 + 76) = 1023969417;
  *(v1 + 120) = 0;
  result = 0.0;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0;
  *v1 = &unk_1F5CC0418;
  return result;
}

void re::internal::defaultDestructV2<re::DoubleSampledAnimationAssetData>(void *a1)
{
  *a1 = &unk_1F5CC0488;
  v2 = (a1 + 5);
  re::DynamicArray<unsigned long>::deinit((a1 + 11));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_Vector2FSampledAnimationAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194F90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194F90))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18BD28, "Vector2FSampledAnimationAssetData");
    __cxa_guard_release(&qword_1EE194F90);
  }

  return &unk_1EE18BD28;
}

void re::initInfo_Vector2FSampledAnimationAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v39[0] = 0x791E9523134C1BF2;
  v39[1] = "Vector2FSampledAnimationAssetData";
  if (v39[0])
  {
    if (v39[0])
    {
    }
  }

  *(this + 2) = v40;
  if ((atomic_load_explicit(&qword_1EE194F98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194F98))
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
    qword_1EE1957C0 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1957C8 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_BOOL(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "enableInterpolation";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x4900000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1957D0 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::introspect_float(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "frameInterval";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x4C00000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1957D8 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::introspect_float(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "startTime";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x5000000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE1957E0 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::introspect_float(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "endTime";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x5400000005;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE1957E8 = v33;
    v34 = re::introspectionAllocator();
    v36 = re::IntrospectionInfo<re::DynamicArray<re::Vector2<float>>>::get(1, v35);
    v37 = (*(*v34 + 32))(v34, 72, 8);
    *v37 = 1;
    *(v37 + 8) = "values";
    *(v37 + 16) = v36;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0x5800000006;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    qword_1EE1957F0 = v37;
    __cxa_guard_release(&qword_1EE194F98);
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1957C0;
  *(this + 9) = re::internal::defaultConstruct<re::Vector2FSampledAnimationAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Vector2FSampledAnimationAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::Vector2FSampledAnimationAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::Vector2FSampledAnimationAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v38 = v40;
}

double re::internal::defaultConstruct<re::Vector2FSampledAnimationAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::TimelineAssetData::TimelineAssetData(a3, 29);
  *(v3 + 72) = 256;
  *(v3 + 76) = 1023969417;
  *(v3 + 120) = 0;
  result = 0.0;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0;
  *v3 = &unk_1F5CC04C8;
  return result;
}

void re::internal::defaultDestruct<re::Vector2FSampledAnimationAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CC0538;
  v4 = (a3 + 5);
  re::DynamicArray<unsigned long>::deinit((a3 + 11));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit(v4);

  re::StringID::destroyString((a3 + 3));
}

double re::internal::defaultConstructV2<re::Vector2FSampledAnimationAssetData>(uint64_t a1)
{
  v1 = re::TimelineAssetData::TimelineAssetData(a1, 29);
  *(v1 + 72) = 256;
  *(v1 + 76) = 1023969417;
  *(v1 + 120) = 0;
  result = 0.0;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0;
  *v1 = &unk_1F5CC04C8;
  return result;
}

void re::internal::defaultDestructV2<re::Vector2FSampledAnimationAssetData>(void *a1)
{
  *a1 = &unk_1F5CC0538;
  v2 = (a1 + 5);
  re::DynamicArray<unsigned long>::deinit((a1 + 11));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_Vector3FSampledAnimationAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194FA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194FA8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18BDB8, "Vector3FSampledAnimationAssetData");
    __cxa_guard_release(&qword_1EE194FA8);
  }

  return &unk_1EE18BDB8;
}

void re::initInfo_Vector3FSampledAnimationAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v39[0] = 0x5493805185EE3D74;
  v39[1] = "Vector3FSampledAnimationAssetData";
  if (v39[0])
  {
    if (v39[0])
    {
    }
  }

  *(this + 2) = v40;
  if ((atomic_load_explicit(&qword_1EE194FB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194FB0))
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
    qword_1EE1957F8 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE195800 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_BOOL(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "enableInterpolation";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x4900000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE195808 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::introspect_float(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "frameInterval";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x4C00000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE195810 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::introspect_float(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "startTime";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x5000000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE195818 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::introspect_float(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "endTime";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x5400000005;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE195820 = v33;
    v34 = re::introspectionAllocator();
    v36 = re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(1, v35);
    v37 = (*(*v34 + 32))(v34, 72, 8);
    *v37 = 1;
    *(v37 + 8) = "values";
    *(v37 + 16) = v36;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0x5800000006;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    qword_1EE195828 = v37;
    __cxa_guard_release(&qword_1EE194FB0);
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1957F8;
  *(this + 9) = re::internal::defaultConstruct<re::Vector3FSampledAnimationAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Vector3FSampledAnimationAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::Vector3FSampledAnimationAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::Vector3FSampledAnimationAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v38 = v40;
}

double re::internal::defaultConstruct<re::Vector3FSampledAnimationAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::TimelineAssetData::TimelineAssetData(a3, 30);
  *(v3 + 72) = 256;
  *(v3 + 76) = 1023969417;
  *(v3 + 120) = 0;
  result = 0.0;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0;
  *v3 = &unk_1F5CC0578;
  return result;
}

void re::internal::defaultDestruct<re::Vector3FSampledAnimationAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CC05E8;
  v4 = (a3 + 5);
  re::DynamicArray<unsigned long>::deinit((a3 + 11));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit(v4);

  re::StringID::destroyString((a3 + 3));
}

double re::internal::defaultConstructV2<re::Vector3FSampledAnimationAssetData>(uint64_t a1)
{
  v1 = re::TimelineAssetData::TimelineAssetData(a1, 30);
  *(v1 + 72) = 256;
  *(v1 + 76) = 1023969417;
  *(v1 + 120) = 0;
  result = 0.0;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0;
  *v1 = &unk_1F5CC0578;
  return result;
}

void re::internal::defaultDestructV2<re::Vector3FSampledAnimationAssetData>(void *a1)
{
  *a1 = &unk_1F5CC05E8;
  v2 = (a1 + 5);
  re::DynamicArray<unsigned long>::deinit((a1 + 11));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_Vector4FSampledAnimationAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194FC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194FC0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18BE48, "Vector4FSampledAnimationAssetData");
    __cxa_guard_release(&qword_1EE194FC0);
  }

  return &unk_1EE18BE48;
}

void re::initInfo_Vector4FSampledAnimationAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v39[0] = 0x30086B7FF8905EF6;
  v39[1] = "Vector4FSampledAnimationAssetData";
  if (v39[0])
  {
    if (v39[0])
    {
    }
  }

  *(this + 2) = v40;
  if ((atomic_load_explicit(&qword_1EE194FC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194FC8))
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
    qword_1EE195830 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE195838 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_BOOL(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "enableInterpolation";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x4900000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE195840 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::introspect_float(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "frameInterval";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x4C00000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE195848 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::introspect_float(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "startTime";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x5000000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE195850 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::introspect_float(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "endTime";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x5400000005;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE195858 = v33;
    v34 = re::introspectionAllocator();
    v36 = re::IntrospectionInfo<re::DynamicArray<re::Vector4<float>>>::get(1, v35);
    v37 = (*(*v34 + 32))(v34, 72, 8);
    *v37 = 1;
    *(v37 + 8) = "values";
    *(v37 + 16) = v36;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0x5800000006;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    qword_1EE195860 = v37;
    __cxa_guard_release(&qword_1EE194FC8);
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE195830;
  *(this + 9) = re::internal::defaultConstruct<re::Vector4FSampledAnimationAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Vector4FSampledAnimationAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::Vector4FSampledAnimationAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::Vector4FSampledAnimationAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v38 = v40;
}

double re::internal::defaultConstruct<re::Vector4FSampledAnimationAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::TimelineAssetData::TimelineAssetData(a3, 31);
  *(v3 + 72) = 256;
  *(v3 + 76) = 1023969417;
  *(v3 + 120) = 0;
  result = 0.0;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0;
  *v3 = &unk_1F5CC0628;
  return result;
}

void re::internal::defaultDestruct<re::Vector4FSampledAnimationAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CC0698;
  v4 = (a3 + 5);
  re::DynamicArray<unsigned long>::deinit((a3 + 11));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit(v4);

  re::StringID::destroyString((a3 + 3));
}

double re::internal::defaultConstructV2<re::Vector4FSampledAnimationAssetData>(uint64_t a1)
{
  v1 = re::TimelineAssetData::TimelineAssetData(a1, 31);
  *(v1 + 72) = 256;
  *(v1 + 76) = 1023969417;
  *(v1 + 120) = 0;
  result = 0.0;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0;
  *v1 = &unk_1F5CC0628;
  return result;
}

void re::internal::defaultDestructV2<re::Vector4FSampledAnimationAssetData>(void *a1)
{
  *a1 = &unk_1F5CC0698;
  v2 = (a1 + 5);
  re::DynamicArray<unsigned long>::deinit((a1 + 11));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_QuaternionFSampledAnimationAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194FD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194FD8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18BED8, "QuaternionFSampledAnimationAssetData");
    __cxa_guard_release(&qword_1EE194FD8);
  }

  return &unk_1EE18BED8;
}

void re::initInfo_QuaternionFSampledAnimationAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v39[0] = 0xD48706902A9A2290;
  v39[1] = "QuaternionFSampledAnimationAssetData";
  if (v39[0])
  {
    if (v39[0])
    {
    }
  }

  *(this + 2) = v40;
  if ((atomic_load_explicit(&qword_1EE194FE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194FE0))
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
    qword_1EE195868 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE195870 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_BOOL(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "enableInterpolation";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x4900000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE195878 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::introspect_float(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "frameInterval";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x4C00000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE195880 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::introspect_float(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "startTime";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x5000000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE195888 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::introspect_float(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "endTime";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x5400000005;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE195890 = v33;
    v34 = re::introspectionAllocator();
    v36 = re::IntrospectionInfo<re::DynamicArray<re::Quaternion<float>>>::get(1, v35);
    v37 = (*(*v34 + 32))(v34, 72, 8);
    *v37 = 1;
    *(v37 + 8) = "values";
    *(v37 + 16) = v36;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0x5800000006;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    qword_1EE195898 = v37;
    __cxa_guard_release(&qword_1EE194FE0);
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE195868;
  *(this + 9) = re::internal::defaultConstruct<re::QuaternionFSampledAnimationAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::QuaternionFSampledAnimationAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::QuaternionFSampledAnimationAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::QuaternionFSampledAnimationAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v38 = v40;
}

double re::internal::defaultConstruct<re::QuaternionFSampledAnimationAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::TimelineAssetData::TimelineAssetData(a3, 32);
  *(v3 + 72) = 256;
  *(v3 + 76) = 1023969417;
  *(v3 + 120) = 0;
  result = 0.0;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0;
  *v3 = &unk_1F5CC06D8;
  return result;
}

void re::internal::defaultDestruct<re::QuaternionFSampledAnimationAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CC0748;
  v4 = (a3 + 5);
  re::DynamicArray<unsigned long>::deinit((a3 + 11));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit(v4);

  re::StringID::destroyString((a3 + 3));
}

double re::internal::defaultConstructV2<re::QuaternionFSampledAnimationAssetData>(uint64_t a1)
{
  v1 = re::TimelineAssetData::TimelineAssetData(a1, 32);
  *(v1 + 72) = 256;
  *(v1 + 76) = 1023969417;
  *(v1 + 120) = 0;
  result = 0.0;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0;
  *v1 = &unk_1F5CC06D8;
  return result;
}

void re::internal::defaultDestructV2<re::QuaternionFSampledAnimationAssetData>(void *a1)
{
  *a1 = &unk_1F5CC0748;
  v2 = (a1 + 5);
  re::DynamicArray<unsigned long>::deinit((a1 + 11));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_SRTSampledAnimationAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194FF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194FF0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18BF68, "SRTSampledAnimationAssetData");
    __cxa_guard_release(&qword_1EE194FF0);
  }

  return &unk_1EE18BF68;
}

void re::initInfo_SRTSampledAnimationAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v38[0] = 0x236485BCA9E251B6;
  v38[1] = "SRTSampledAnimationAssetData";
  if (v38[0])
  {
    if (v38[0])
    {
    }
  }

  *(this + 2) = v39;
  if ((atomic_load_explicit(&qword_1EE194FF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194FF8))
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
    qword_1EE1958A0 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1958A8 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_BOOL(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "enableInterpolation";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x4900000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1958B0 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::introspect_float(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "frameInterval";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x4C00000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1958B8 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::introspect_float(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "startTime";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x5000000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE1958C0 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::introspect_float(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "endTime";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x5400000005;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE1958C8 = v33;
    v34 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::GenericSRT<float>>>::get(v34, v35);
    v36 = (*(*v34 + 32))(v34, 72, 8);
    *v36 = 1;
    *(v36 + 8) = "values";
    *(v36 + 16) = &qword_1EE195B18;
    *(v36 + 24) = 0;
    *(v36 + 32) = 0x5800000006;
    *(v36 + 40) = 0;
    *(v36 + 48) = 0;
    *(v36 + 56) = 0;
    *(v36 + 64) = 0;
    qword_1EE1958D0 = v36;
    __cxa_guard_release(&qword_1EE194FF8);
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1958A0;
  *(this + 9) = re::internal::defaultConstruct<re::SRTSampledAnimationAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SRTSampledAnimationAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::SRTSampledAnimationAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::SRTSampledAnimationAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v37 = v39;
}

double re::internal::defaultConstruct<re::SRTSampledAnimationAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::TimelineAssetData::TimelineAssetData(a3, 33);
  *(v3 + 72) = 256;
  *(v3 + 76) = 1023969417;
  *(v3 + 120) = 0;
  result = 0.0;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0;
  *v3 = &unk_1F5CC0788;
  return result;
}

void re::internal::defaultDestruct<re::SRTSampledAnimationAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CC07F8;
  v4 = (a3 + 5);
  re::DynamicArray<unsigned long>::deinit((a3 + 11));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit(v4);

  re::StringID::destroyString((a3 + 3));
}

double re::internal::defaultConstructV2<re::SRTSampledAnimationAssetData>(uint64_t a1)
{
  v1 = re::TimelineAssetData::TimelineAssetData(a1, 33);
  *(v1 + 72) = 256;
  *(v1 + 76) = 1023969417;
  *(v1 + 120) = 0;
  result = 0.0;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0;
  *v1 = &unk_1F5CC0788;
  return result;
}

void re::internal::defaultDestructV2<re::SRTSampledAnimationAssetData>(void *a1)
{
  *a1 = &unk_1F5CC07F8;
  v2 = (a1 + 5);
  re::DynamicArray<unsigned long>::deinit((a1 + 11));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit(v2);

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_SkeletalPoseSampledAnimationAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE195008, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195008))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18BFF8, "SkeletalPoseSampledAnimationAssetData");
    __cxa_guard_release(&qword_1EE195008);
  }

  return &unk_1EE18BFF8;
}

void re::initInfo_SkeletalPoseSampledAnimationAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v57[0] = 0xFAC62E45F6DBF2CCLL;
  v57[1] = "SkeletalPoseSampledAnimationAssetData";
  if (v57[0])
  {
    if (v57[0])
    {
    }
  }

  *(this + 2) = v58;
  if ((atomic_load_explicit(&qword_1EE195010, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195010))
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
    qword_1EE18C8D8 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE18C8E0 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_BOOL(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "enableInterpolation";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x4900000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE18C8E8 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::introspect_float(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "frameInterval";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x4C00000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE18C8F0 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::introspect_float(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "startTime";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x5000000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE18C8F8 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::introspect_float(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "endTime";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x5400000005;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE18C900 = v33;
    v34 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::SkeletalPoseAssetData>>::get(v34);
    v35 = (*(*v34 + 32))(v34, 72, 8);
    *v35 = 1;
    *(v35 + 8) = "values";
    *(v35 + 16) = &qword_1EE195B58;
    *(v35 + 24) = 0;
    *(v35 + 32) = 0x5800000006;
    *(v35 + 40) = 0;
    *(v35 + 48) = 0;
    *(v35 + 56) = 0;
    *(v35 + 64) = 0;
    qword_1EE18C908 = v35;
    v36 = re::introspectionAllocator();
    v38 = re::introspect_AssetHandle(1, v37);
    v39 = (*(*v36 + 32))(v36, 72, 8);
    *v39 = 1;
    *(v39 + 8) = "skeleton";
    *(v39 + 16) = v38;
    *(v39 + 24) = 0;
    *(v39 + 32) = 0x8000000007;
    *(v39 + 40) = 0;
    *(v39 + 48) = 0;
    *(v39 + 56) = 0;
    *(v39 + 64) = 0;
    qword_1EE18C910 = v39;
    v40 = re::introspectionAllocator();
    v42 = re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(1, v41);
    v43 = (*(*v40 + 32))(v40, 72, 8);
    *v43 = 1;
    *(v43 + 8) = "jointNames";
    *(v43 + 16) = v42;
    *(v43 + 24) = 0;
    *(v43 + 32) = 0x9800000008;
    *(v43 + 40) = 0;
    *(v43 + 48) = 0;
    *(v43 + 56) = 0;
    *(v43 + 64) = 0;
    qword_1EE18C918 = v43;
    v44 = re::introspectionAllocator();
    v46 = re::introspect_BOOL(1, v45);
    v47 = (*(*v44 + 32))(v44, 72, 8);
    *v47 = 1;
    *(v47 + 8) = "scaleChannelMask";
    *(v47 + 16) = v46;
    *(v47 + 24) = 0;
    *(v47 + 32) = 0xC000000009;
    *(v47 + 40) = 0;
    *(v47 + 48) = 0;
    *(v47 + 56) = 0;
    *(v47 + 64) = 0;
    qword_1EE18C920 = v47;
    v48 = re::introspectionAllocator();
    v50 = re::introspect_BOOL(1, v49);
    v51 = (*(*v48 + 32))(v48, 72, 8);
    *v51 = 1;
    *(v51 + 8) = "rotationChannelMask";
    *(v51 + 16) = v50;
    *(v51 + 24) = 0;
    *(v51 + 32) = 0xC10000000ALL;
    *(v51 + 40) = 0;
    *(v51 + 48) = 0;
    *(v51 + 56) = 0;
    *(v51 + 64) = 0;
    qword_1EE18C928 = v51;
    v52 = re::introspectionAllocator();
    v54 = re::introspect_BOOL(1, v53);
    v55 = (*(*v52 + 32))(v52, 72, 8);
    *v55 = 1;
    *(v55 + 8) = "translationChannelMask";
    *(v55 + 16) = v54;
    *(v55 + 24) = 0;
    *(v55 + 32) = 0xC20000000BLL;
    *(v55 + 40) = 0;
    *(v55 + 48) = 0;
    *(v55 + 56) = 0;
    *(v55 + 64) = 0;
    qword_1EE18C930 = v55;
    __cxa_guard_release(&qword_1EE195010);
  }

  *(this + 2) = 0xC800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 12;
  *(this + 8) = &qword_1EE18C8D8;
  *(this + 9) = re::internal::defaultConstruct<re::SkeletalPoseSampledAnimationAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SkeletalPoseSampledAnimationAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::SkeletalPoseSampledAnimationAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::SkeletalPoseSampledAnimationAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v56 = v58;
}

double re::internal::defaultConstruct<re::SkeletalPoseSampledAnimationAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::TimelineAssetData::TimelineAssetData(a3, 34);
  *(v3 + 72) = 256;
  *(v3 + 76) = 1023969417;
  *(v3 + 120) = 0;
  result = 0.0;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0;
  *v3 = &unk_1F5CC0838;
  *(v3 + 184) = 0;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0;
  *(v3 + 192) = 257;
  *(v3 + 194) = 1;
  return result;
}

void re::internal::defaultDestruct<re::SkeletalPoseSampledAnimationAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  re::DynamicArray<re::StringID>::deinit((a3 + 19));
  re::AssetHandle::~AssetHandle((a3 + 16));
  *a3 = &unk_1F5CC08A8;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit((a3 + 11));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit((a3 + 5));

  re::StringID::destroyString((a3 + 3));
}

double re::internal::defaultConstructV2<re::SkeletalPoseSampledAnimationAssetData>(uint64_t a1)
{
  v1 = re::TimelineAssetData::TimelineAssetData(a1, 34);
  *(v1 + 72) = 256;
  *(v1 + 76) = 1023969417;
  *(v1 + 120) = 0;
  result = 0.0;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0;
  *v1 = &unk_1F5CC0838;
  *(v1 + 184) = 0;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0;
  *(v1 + 192) = 257;
  *(v1 + 194) = 1;
  return result;
}

void re::internal::defaultDestructV2<re::SkeletalPoseSampledAnimationAssetData>(void *a1)
{
  re::DynamicArray<re::StringID>::deinit((a1 + 19));
  re::AssetHandle::~AssetHandle((a1 + 16));
  *a1 = &unk_1F5CC08A8;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit((a1 + 11));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit((a1 + 5));

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_BlendShapeWeightsSampledAnimationAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE195020, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195020))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18C088, "BlendShapeWeightsSampledAnimationAssetData");
    __cxa_guard_release(&qword_1EE195020);
  }

  return &unk_1EE18C088;
}

void re::initInfo_BlendShapeWeightsSampledAnimationAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v41[0] = 0xC7AD95E0998AFD0ALL;
  v41[1] = "BlendShapeWeightsSampledAnimationAssetData";
  if (v41[0])
  {
    if (v41[0])
    {
    }
  }

  *(this + 2) = v42;
  if ((atomic_load_explicit(&qword_1EE195028, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195028))
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
    qword_1EE1958D8 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1958E0 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_BOOL(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "enableInterpolation";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x4900000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1958E8 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::introspect_float(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "frameInterval";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x4C00000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1958F0 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::introspect_float(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "startTime";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x5000000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE1958F8 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::introspect_float(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "endTime";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x5400000005;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE195900 = v33;
    v34 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::BlendShapeWeightsAssetData>>::get(v34);
    v35 = (*(*v34 + 32))(v34, 72, 8);
    *v35 = 1;
    *(v35 + 8) = "values";
    *(v35 + 16) = &qword_1EE195B98;
    *(v35 + 24) = 0;
    *(v35 + 32) = 0x5800000006;
    *(v35 + 40) = 0;
    *(v35 + 48) = 0;
    *(v35 + 56) = 0;
    *(v35 + 64) = 0;
    qword_1EE195908 = v35;
    v36 = re::introspectionAllocator();
    v38 = re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(1, v37);
    v39 = (*(*v36 + 32))(v36, 72, 8);
    *v39 = 1;
    *(v39 + 8) = "weightNames";
    *(v39 + 16) = v38;
    *(v39 + 24) = 0;
    *(v39 + 32) = 0x8000000007;
    *(v39 + 40) = 0;
    *(v39 + 48) = 0;
    *(v39 + 56) = 0;
    *(v39 + 64) = 0;
    qword_1EE195910 = v39;
    __cxa_guard_release(&qword_1EE195028);
  }

  *(this + 2) = 0xA800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 8;
  *(this + 8) = &qword_1EE1958D8;
  *(this + 9) = re::internal::defaultConstruct<re::BlendShapeWeightsSampledAnimationAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BlendShapeWeightsSampledAnimationAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::BlendShapeWeightsSampledAnimationAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::BlendShapeWeightsSampledAnimationAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v40 = v42;
}

double re::internal::defaultConstruct<re::BlendShapeWeightsSampledAnimationAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::TimelineAssetData::TimelineAssetData(a3, 59);
  *(v3 + 72) = 256;
  *(v3 + 76) = 1023969417;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  result = 0.0;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0;
  *v3 = &unk_1F5CC08E8;
  *(v3 + 160) = 0;
  *(v3 + 136) = 0;
  *(v3 + 144) = 0;
  *(v3 + 152) = 0;
  return result;
}

void re::internal::defaultDestruct<re::BlendShapeWeightsSampledAnimationAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  re::DynamicArray<re::StringID>::deinit((a3 + 16));
  *a3 = &unk_1F5CC0958;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit((a3 + 11));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit((a3 + 5));

  re::StringID::destroyString((a3 + 3));
}

double re::internal::defaultConstructV2<re::BlendShapeWeightsSampledAnimationAssetData>(uint64_t a1)
{
  v1 = re::TimelineAssetData::TimelineAssetData(a1, 59);
  *(v1 + 72) = 256;
  *(v1 + 76) = 1023969417;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  result = 0.0;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0;
  *v1 = &unk_1F5CC08E8;
  *(v1 + 160) = 0;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  *(v1 + 152) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::BlendShapeWeightsSampledAnimationAssetData>(void *a1)
{
  re::DynamicArray<re::StringID>::deinit((a1 + 16));
  *a1 = &unk_1F5CC0958;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit((a1 + 11));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit((a1 + 5));

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_OrbitAnimationAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE195038, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195038))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18C118, "OrbitAnimationAssetData");
    __cxa_guard_release(&qword_1EE195038);
  }

  return &unk_1EE18C118;
}

void re::initInfo_OrbitAnimationAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v41[0] = 0x3D39B8489028CAC0;
  v41[1] = "OrbitAnimationAssetData";
  if (v41[0])
  {
    if (v41[0])
    {
    }
  }

  *(this + 2) = v42;
  if ((atomic_load_explicit(&qword_1EE195040, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195040))
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
    qword_1EE195918 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE195920 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_float(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "duration";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x4C00000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE195928 = v21;
    v22 = re::introspectionAllocator();
    v23 = re::introspect_Vector3F(1);
    v24 = (*(*v22 + 32))(v22, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "axis";
    *(v24 + 16) = v23;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x5000000003;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE195930 = v24;
    v25 = re::introspectionAllocator();
    v26 = re::introspect_SRT(1);
    v27 = (*(*v25 + 32))(v25, 72, 8);
    *v27 = 1;
    *(v27 + 8) = "startTransform";
    *(v27 + 16) = v26;
    *(v27 + 24) = 0;
    *(v27 + 32) = 0x6000000004;
    *(v27 + 40) = 0;
    *(v27 + 48) = 0;
    *(v27 + 56) = 0;
    *(v27 + 64) = 0;
    qword_1EE195938 = v27;
    v28 = re::introspectionAllocator();
    v30 = re::introspect_BOOL(1, v29);
    v31 = (*(*v28 + 32))(v28, 72, 8);
    *v31 = 1;
    *(v31 + 8) = "spinClockwise";
    *(v31 + 16) = v30;
    *(v31 + 24) = 0;
    *(v31 + 32) = 0x9000000005;
    *(v31 + 40) = 0;
    *(v31 + 48) = 0;
    *(v31 + 56) = 0;
    *(v31 + 64) = 0;
    qword_1EE195940 = v31;
    v32 = re::introspectionAllocator();
    v34 = re::introspect_BOOL(1, v33);
    v35 = (*(*v32 + 32))(v32, 72, 8);
    *v35 = 1;
    *(v35 + 8) = "orientToPath";
    *(v35 + 16) = v34;
    *(v35 + 24) = 0;
    *(v35 + 32) = 0x9100000006;
    *(v35 + 40) = 0;
    *(v35 + 48) = 0;
    *(v35 + 56) = 0;
    *(v35 + 64) = 0;
    qword_1EE195948 = v35;
    v36 = re::introspectionAllocator();
    v38 = re::introspect_float(1, v37);
    v39 = (*(*v36 + 32))(v36, 72, 8);
    *v39 = 1;
    *(v39 + 8) = "rotations";
    *(v39 + 16) = v38;
    *(v39 + 24) = 0;
    *(v39 + 32) = 0x9400000007;
    *(v39 + 40) = 0;
    *(v39 + 48) = 0;
    *(v39 + 56) = 0;
    *(v39 + 64) = 0;
    qword_1EE195950 = v39;
    __cxa_guard_release(&qword_1EE195040);
  }

  *(this + 2) = 0xA000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 8;
  *(this + 8) = &qword_1EE195918;
  *(this + 9) = re::internal::defaultConstruct<re::OrbitAnimationAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::OrbitAnimationAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::OrbitAnimationAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::OrbitAnimationAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v40 = v42;
}

double re::internal::defaultConstruct<re::OrbitAnimationAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::TimelineAssetData::TimelineAssetData(a3, 37);
  *(v3 + 72) = 0;
  *v3 = &unk_1F5CC0998;
  *(v3 + 76) = 1065353216;
  result = 0.0078125;
  *(v3 + 80) = xmmword_1E3047680;
  *(v3 + 96) = 0x3F8000003F800000;
  *(v3 + 104) = 1065353216;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0x3F80000000000000;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 144) = 1;
  *(v3 + 148) = 1065353216;
  return result;
}

void re::internal::defaultDestruct<re::OrbitAnimationAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CC3608;
  v3 = (a3 + 3);
  re::DynamicString::deinit((a3 + 5));

  re::StringID::destroyString(v3);
}

double re::internal::defaultConstructV2<re::OrbitAnimationAssetData>(uint64_t a1)
{
  v1 = re::TimelineAssetData::TimelineAssetData(a1, 37);
  *(v1 + 72) = 0;
  *v1 = &unk_1F5CC0998;
  *(v1 + 76) = 1065353216;
  result = 0.0078125;
  *(v1 + 80) = xmmword_1E3047680;
  *(v1 + 96) = 0x3F8000003F800000;
  *(v1 + 104) = 1065353216;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0x3F80000000000000;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  *(v1 + 144) = 1;
  *(v1 + 148) = 1065353216;
  return result;
}

void re::internal::defaultDestructV2<re::OrbitAnimationAssetData>(void *a1)
{
  *a1 = &unk_1F5CC3608;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));

  re::StringID::destroyString(v1);
}

void *re::allocInfo_AnimationStateTimelineAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE195050, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195050))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18C1A8, "AnimationStateTimelineAssetData");
    __cxa_guard_release(&qword_1EE195050);
  }

  return &unk_1EE18C1A8;
}

void re::initInfo_AnimationStateTimelineAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v23[0] = 0xDC48FE4832FCDED8;
  v23[1] = "AnimationStateTimelineAssetData";
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  *(this + 2) = v24;
  if ((atomic_load_explicit(&qword_1EE195058, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195058))
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
    qword_1EE1952E8 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_double(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "startTime";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x5000000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1952F0 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_double(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "endTime";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x5800000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1952F8 = v21;
    __cxa_guard_release(&qword_1EE195058);
  }

  *(this + 2) = 0x6000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1952E8;
  *(this + 9) = re::internal::defaultConstruct<re::AnimationStateTimelineAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AnimationStateTimelineAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::AnimationStateTimelineAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::AnimationStateTimelineAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v22 = v24;
}

uint64_t re::internal::defaultConstruct<re::AnimationStateTimelineAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::TimelineAssetData::TimelineAssetData(a3, 38);
  *(result + 72) = 0;
  *result = &unk_1F5CC09F0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  return result;
}

uint64_t re::internal::defaultConstructV2<re::AnimationStateTimelineAssetData>(uint64_t a1)
{
  result = re::TimelineAssetData::TimelineAssetData(a1, 38);
  *(result + 72) = 0;
  *result = &unk_1F5CC09F0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  return result;
}

void *re::allocInfo_FloatAnimationBlendTreeAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE195068, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195068))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18C238, "FloatAnimationBlendTreeAssetData");
    __cxa_guard_release(&qword_1EE195068);
  }

  return &unk_1EE18C238;
}

void re::initInfo_FloatAnimationBlendTreeAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v31[0] = 0x6825313C501E7D66;
  v31[1] = "FloatAnimationBlendTreeAssetData";
  if (v31[0])
  {
    if (v31[0])
    {
    }
  }

  *(this + 2) = v32;
  if ((atomic_load_explicit(&qword_1EE195070, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195070))
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
    qword_1EE195318 = v13;
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
    qword_1EE195320 = v21;
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
    qword_1EE195328 = v25;
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
    qword_1EE195330 = v29;
    __cxa_guard_release(&qword_1EE195070);
  }

  *(this + 2) = 0x12000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE195318;
  *(this + 9) = re::internal::defaultConstruct<re::FloatAnimationBlendTreeAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::FloatAnimationBlendTreeAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::FloatAnimationBlendTreeAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::FloatAnimationBlendTreeAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v30 = v32;
}

double re::internal::defaultConstruct<re::FloatAnimationBlendTreeAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::TimelineAssetData::TimelineAssetData(a3, 39);
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
  *v3 = &unk_1F5CC0A60;
  return result;
}

void re::internal::defaultDestruct<re::FloatAnimationBlendTreeAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CC0AD0;
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

double re::internal::defaultConstructV2<re::FloatAnimationBlendTreeAssetData>(uint64_t a1)
{
  v1 = re::TimelineAssetData::TimelineAssetData(a1, 39);
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
  *v1 = &unk_1F5CC0A60;
  return result;
}

void re::internal::defaultDestructV2<re::FloatAnimationBlendTreeAssetData>(void *a1)
{
  *a1 = &unk_1F5CC0AD0;
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

void *re::allocInfo_DoubleAnimationBlendTreeAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE195080, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195080))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18C2C8, "DoubleAnimationBlendTreeAssetData");
    __cxa_guard_release(&qword_1EE195080);
  }

  return &unk_1EE18C2C8;
}

void re::initInfo_DoubleAnimationBlendTreeAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v31[0] = 0x5E7E51CB85623FBCLL;
  v31[1] = "DoubleAnimationBlendTreeAssetData";
  if (v31[0])
  {
    if (v31[0])
    {
    }
  }

  *(this + 2) = v32;
  if ((atomic_load_explicit(&qword_1EE195088, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195088))
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
    qword_1EE195338 = v13;
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
    qword_1EE195340 = v21;
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
    qword_1EE195348 = v25;
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
    qword_1EE195350 = v29;
    __cxa_guard_release(&qword_1EE195088);
  }

  *(this + 2) = 0x12000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE195338;
  *(this + 9) = re::internal::defaultConstruct<re::DoubleAnimationBlendTreeAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::DoubleAnimationBlendTreeAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::DoubleAnimationBlendTreeAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::DoubleAnimationBlendTreeAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v30 = v32;
}

double re::internal::defaultConstruct<re::DoubleAnimationBlendTreeAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::TimelineAssetData::TimelineAssetData(a3, 40);
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
  *v3 = &unk_1F5CC0B10;
  return result;
}

void re::internal::defaultDestruct<re::DoubleAnimationBlendTreeAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CC0B80;
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

double re::internal::defaultConstructV2<re::DoubleAnimationBlendTreeAssetData>(uint64_t a1)
{
  v1 = re::TimelineAssetData::TimelineAssetData(a1, 40);
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
  *v1 = &unk_1F5CC0B10;
  return result;
}

void re::internal::defaultDestructV2<re::DoubleAnimationBlendTreeAssetData>(void *a1)
{
  *a1 = &unk_1F5CC0B80;
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

void *re::allocInfo_Vector2FAnimationBlendTreeAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE195098, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195098))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18C358, "Vector2FAnimationBlendTreeAssetData");
    __cxa_guard_release(&qword_1EE195098);
  }

  return &unk_1EE18C358;
}

void re::initInfo_Vector2FAnimationBlendTreeAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v31[0] = 0x4AF48CA0B60E9A30;
  v31[1] = "Vector2FAnimationBlendTreeAssetData";
  if (v31[0])
  {
    if (v31[0])
    {
    }
  }

  *(this + 2) = v32;
  if ((atomic_load_explicit(&qword_1EE1950A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1950A0))
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
    qword_1EE195358 = v13;
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
    qword_1EE195360 = v21;
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
    qword_1EE195368 = v25;
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
    qword_1EE195370 = v29;
    __cxa_guard_release(&qword_1EE1950A0);
  }

  *(this + 2) = 0x12000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE195358;
  *(this + 9) = re::internal::defaultConstruct<re::Vector2FAnimationBlendTreeAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Vector2FAnimationBlendTreeAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::Vector2FAnimationBlendTreeAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::Vector2FAnimationBlendTreeAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v30 = v32;
}

double re::internal::defaultConstruct<re::Vector2FAnimationBlendTreeAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::TimelineAssetData::TimelineAssetData(a3, 41);
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
  *v3 = &unk_1F5CC0BC0;
  return result;
}

void re::internal::defaultDestruct<re::Vector2FAnimationBlendTreeAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CC0C30;
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

double re::internal::defaultConstructV2<re::Vector2FAnimationBlendTreeAssetData>(uint64_t a1)
{
  v1 = re::TimelineAssetData::TimelineAssetData(a1, 41);
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
  *v1 = &unk_1F5CC0BC0;
  return result;
}

void re::internal::defaultDestructV2<re::Vector2FAnimationBlendTreeAssetData>(void *a1)
{
  *a1 = &unk_1F5CC0C30;
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

void *re::allocInfo_Vector3FAnimationBlendTreeAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1950B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1950B0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&_MergedGlobals_368, "Vector3FAnimationBlendTreeAssetData");
    __cxa_guard_release(&qword_1EE1950B0);
  }

  return &_MergedGlobals_368;
}

void re::initInfo_Vector3FAnimationBlendTreeAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v31[0] = 0x1CDB65FD08AE6332;
  v31[1] = "Vector3FAnimationBlendTreeAssetData";
  if (v31[0])
  {
    if (v31[0])
    {
    }
  }

  *(this + 2) = v32;
  if ((atomic_load_explicit(&qword_1EE1950B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1950B8))
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
    qword_1EE195378 = v13;
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
    qword_1EE195380 = v21;
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
    qword_1EE195388 = v25;
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
    qword_1EE195390 = v29;
    __cxa_guard_release(&qword_1EE1950B8);
  }

  *(this + 2) = 0x12000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE195378;
  *(this + 9) = re::internal::defaultConstruct<re::Vector3FAnimationBlendTreeAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Vector3FAnimationBlendTreeAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::Vector3FAnimationBlendTreeAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::Vector3FAnimationBlendTreeAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v30 = v32;
}

double re::internal::defaultConstruct<re::Vector3FAnimationBlendTreeAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::TimelineAssetData::TimelineAssetData(a3, 42);
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
  *v3 = &unk_1F5CC0C70;
  return result;
}

void re::internal::defaultDestruct<re::Vector3FAnimationBlendTreeAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CC0CE0;
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

double re::internal::defaultConstructV2<re::Vector3FAnimationBlendTreeAssetData>(uint64_t a1)
{
  v1 = re::TimelineAssetData::TimelineAssetData(a1, 42);
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
  *v1 = &unk_1F5CC0C70;
  return result;
}

void re::internal::defaultDestructV2<re::Vector3FAnimationBlendTreeAssetData>(void *a1)
{
  *a1 = &unk_1F5CC0CE0;
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

void *re::allocInfo_Vector4FAnimationBlendTreeAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1950C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1950C8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18A5C0, "Vector4FAnimationBlendTreeAssetData");
    __cxa_guard_release(&qword_1EE1950C8);
  }

  return &unk_1EE18A5C0;
}

void re::initInfo_Vector4FAnimationBlendTreeAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v31[0] = 0xEEC23F595B4E2C34;
  v31[1] = "Vector4FAnimationBlendTreeAssetData";
  if (v31[0])
  {
    if (v31[0])
    {
    }
  }

  *(this + 2) = v32;
  if ((atomic_load_explicit(&qword_1EE1950D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1950D0))
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
    qword_1EE195398 = v13;
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
    qword_1EE1953A0 = v21;
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
    qword_1EE1953A8 = v25;
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
    qword_1EE1953B0 = v29;
    __cxa_guard_release(&qword_1EE1950D0);
  }

  *(this + 2) = 0x12000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE195398;
  *(this + 9) = re::internal::defaultConstruct<re::Vector4FAnimationBlendTreeAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Vector4FAnimationBlendTreeAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::Vector4FAnimationBlendTreeAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::Vector4FAnimationBlendTreeAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v30 = v32;
}

double re::internal::defaultConstruct<re::Vector4FAnimationBlendTreeAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::TimelineAssetData::TimelineAssetData(a3, 43);
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
  *v3 = &unk_1F5CC0D20;
  return result;
}

void re::internal::defaultDestruct<re::Vector4FAnimationBlendTreeAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CC0D90;
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

double re::internal::defaultConstructV2<re::Vector4FAnimationBlendTreeAssetData>(uint64_t a1)
{
  v1 = re::TimelineAssetData::TimelineAssetData(a1, 43);
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
  *v1 = &unk_1F5CC0D20;
  return result;
}

void re::internal::defaultDestructV2<re::Vector4FAnimationBlendTreeAssetData>(void *a1)
{
  *a1 = &unk_1F5CC0D90;
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

void *re::allocInfo_QuaternionFAnimationBlendTreeAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1950E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1950E0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18A650, "QuaternionFAnimationBlendTreeAssetData");
    __cxa_guard_release(&qword_1EE1950E0);
  }

  return &unk_1EE18A650;
}

void re::initInfo_QuaternionFAnimationBlendTreeAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v31[0] = 0x6E06572531F5714ELL;
  v31[1] = "QuaternionFAnimationBlendTreeAssetData";
  if (v31[0])
  {
    if (v31[0])
    {
    }
  }

  *(this + 2) = v32;
  if ((atomic_load_explicit(&qword_1EE1950E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1950E8))
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
    qword_1EE1953B8 = v13;
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
    qword_1EE1953C0 = v21;
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
    qword_1EE1953C8 = v25;
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
    qword_1EE1953D0 = v29;
    __cxa_guard_release(&qword_1EE1950E8);
  }

  *(this + 2) = 0x12000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1953B8;
  *(this + 9) = re::internal::defaultConstruct<re::QuaternionFAnimationBlendTreeAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::QuaternionFAnimationBlendTreeAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::QuaternionFAnimationBlendTreeAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::QuaternionFAnimationBlendTreeAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v30 = v32;
}

double re::internal::defaultConstruct<re::QuaternionFAnimationBlendTreeAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::TimelineAssetData::TimelineAssetData(a3, 44);
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
  *v3 = &unk_1F5CC0DD0;
  return result;
}

void re::internal::defaultDestruct<re::QuaternionFAnimationBlendTreeAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = &unk_1F5CC0E40;
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

double re::internal::defaultConstructV2<re::QuaternionFAnimationBlendTreeAssetData>(uint64_t a1)
{
  v1 = re::TimelineAssetData::TimelineAssetData(a1, 44);
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
  *v1 = &unk_1F5CC0DD0;
  return result;
}

void re::internal::defaultDestructV2<re::QuaternionFAnimationBlendTreeAssetData>(void *a1)
{
  *a1 = &unk_1F5CC0E40;
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

void *re::allocInfo_SRTAnimationBlendTreeAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1950F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1950F8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18A6E0, "SRTAnimationBlendTreeAssetData");
    __cxa_guard_release(&qword_1EE1950F8);
  }

  return &unk_1EE18A6E0;
}

void re::initInfo_SRTAnimationBlendTreeAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v31[0] = 0x7B80BD2EFFEE6EF4;
  v31[1] = "SRTAnimationBlendTreeAssetData";
  if (v31[0])
  {
    if (v31[0])
    {
    }
  }

  *(this + 2) = v32;
  if ((atomic_load_explicit(&qword_1EE195100, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195100))
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
    qword_1EE1953D8 = v13;
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
    qword_1EE1953E0 = v21;
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
    qword_1EE1953E8 = v25;
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
    qword_1EE1953F0 = v29;
    __cxa_guard_release(&qword_1EE195100);
  }

  *(this + 2) = 0x12000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1953D8;
  *(this + 9) = re::internal::defaultConstruct<re::SRTAnimationBlendTreeAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SRTAnimationBlendTreeAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::SRTAnimationBlendTreeAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::SRTAnimationBlendTreeAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v30 = v32;
}