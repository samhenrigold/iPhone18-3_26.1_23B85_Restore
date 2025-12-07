double re::AnimationClip<re::SkeletalPose>::totalDuration(uint64_t a1)
{
  if (dyld_program_sdk_at_least() && *(a1 + 164))
  {
    v2 = INFINITY;
  }

  else
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      v4 = 0.0;
      if (*(a1 + 88) == 1)
      {
        v4 = *(a1 + 96);
      }

      (*(*v3 + 40))(v3);
      if (*(a1 + 104) == 1)
      {
        v5 = *(a1 + 112);
      }

      v2 = v5 - v4;
    }

    else
    {
      v2 = 0.0;
    }
  }

  if (*(a1 + 144) == 1)
  {
    v2 = *(a1 + 152);
  }

  return *(a1 + 136) + v2 / fabsf(*(a1 + 160));
}

float re::AnimationClip<re::SkeletalPose>::timelineDesc@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = 0.0;
    if (*(a1 + 88) == 1)
    {
      v5 = *(a1 + 96);
    }

    (*(*v4 + 40))(v4);
    if (*(a1 + 104) == 1)
    {
      v7 = *(a1 + 112);
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v5 = 0.0;
    v7 = 0.0;
  }

  if (*(a1 + 144) != 1 || (v8 = *(a1 + 152), v8 == 0.0))
  {
    if (dyld_program_sdk_at_least() && *(a1 + 164))
    {
      v8 = INFINITY;
    }

    else
    {
      v9 = *(a1 + 80);
      if (v9)
      {
        v10 = 0.0;
        if (*(a1 + 88) == 1)
        {
          v10 = *(a1 + 96);
        }

        (*(*v9 + 40))(v9);
        if (*(a1 + 104) == 1)
        {
          v11 = *(a1 + 112);
        }

        v8 = v11 - v10;
      }

      else
      {
        v8 = 0.0;
      }
    }
  }

  v12 = v8;
  v13 = *(a1 + 136);
  *a2 = v13;
  *(a2 + 4) = v12;
  v14 = *(a1 + 160);
  if (*(a1 + 128))
  {
    v14 = -v14;
  }

  v15 = v5;
  *(a2 + 8) = v14;
  *(a2 + 12) = v15;
  result = v7;
  v17 = *(a1 + 120);
  *(a2 + 16) = result;
  *(a2 + 20) = v17;
  *(a2 + 24) = *(a1 + 164);
  *(a2 + 25) = *(a1 + 16);
  return result;
}

uint64_t re::AnimationClip<re::SkeletalPose>::createInstance(uint64_t a1, uint64_t a2, uint64_t a3, re::internal::TimelineTree *a4, uint64_t a5)
{
  if ((*(*a1 + 24))(a1, a2, a3) != 1)
  {
    return a1;
  }

  v9 = re::internal::TimelineTree::source(a4, a5 + 1);
  if (!(*(*v9 + 88))(v9))
  {
    return a1;
  }

  v10 = (*(*a2 + 32))(a2, 168, 8);
  *v10 = &unk_1F5CAD3A8;
  v11 = *(a1 + 16);
  *(v10 + 8) = *(a1 + 8);
  *(v10 + 16) = v11;
  re::StringID::StringID((v10 + 24), (a1 + 24));
  re::DynamicString::DynamicString((v10 + 40), (a1 + 40));
  *(v10 + 72) = *(a1 + 72);
  *v10 = &unk_1F5CB2168;
  *(v10 + 80) = *(a1 + 80);
  v12 = *(a1 + 88);
  *(v10 + 88) = v12;
  if (v12 == 1)
  {
    *(v10 + 96) = *(a1 + 96);
  }

  v13 = *(a1 + 104);
  *(v10 + 104) = v13;
  if (v13 == 1)
  {
    *(v10 + 112) = *(a1 + 112);
  }

  v14 = *(a1 + 120);
  *(v10 + 136) = *(a1 + 136);
  *(v10 + 120) = v14;
  v15 = *(a1 + 144);
  *(v10 + 144) = v15;
  if (v15 == 1)
  {
    *(v10 + 152) = *(a1 + 152);
  }

  v16 = *(a1 + 160);
  *(v10 + 164) = *(a1 + 164);
  *(v10 + 160) = v16;
  *(v10 + 80) = re::internal::TimelineTree::source(a4, a5 + 1);
  *(v10 + 165) = 1;
  return v10;
}

uint64_t *re::AnimationClip<re::SkeletalPose>::evaluateCore(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5, void *a6)
{
  v61[0] = a2;
  v61[1] = a3;
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    a1 = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v23);
    __break(1u);
LABEL_10:
    v13 = a1;
    v54[0] = 0;
    v54[1] = &str_67;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v47[0] = 0;
    v47[1] = &str_67;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    re::AnimationValueTraits<re::SkeletalPose>::init(v54, v7);
    re::AnimationValueTraits<re::SkeletalPose>::init(v47, v7);
    if (v35[0] == 1 && v36 == 1)
    {
      v16 = *(v13 + 80);
      v15.n128_u64[0] = 0;
      v17 = 0;
      if (v16)
      {
        if (*(v13 + 88) == 1)
        {
          v17 = *(v13 + 96);
        }

        (*(*v16 + 40))(v16, v15);
        if (*(v13 + 104) == 1)
        {
          v15.n128_u64[0] = *(v13 + 112);
        }
      }

      v37 = 0;
      v40 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v46 = 2;
      v35[0] = 3;
      v38 = 1;
      v39 = v17;
      v45 = 0;
      v41 = 1065353216;
      v25 = 0;
      v28 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v34 = 2;
      v24[0] = 3;
      v26 = 1;
      v27 = v15.n128_u64[0];
      v33 = 0;
      v29 = 1065353216;
      if (*(v13 + 128))
      {
        v18 = v47;
      }

      else
      {
        v18 = v54;
      }

      if (*(v13 + 128))
      {
        v19 = v54;
      }

      else
      {
        v19 = v47;
      }

      (*(*v8 + 112))(v8, v35, 1, v7, v6, v18);
      (*(*v8 + 112))(v8, v24, 1, v7, v6, v19);
      re::AnimationValueTraits<re::SkeletalPose>::invert(v54, v54);
      *&v20 = re::AnimationValueTraits<re::SkeletalPose>::combine(v54, v47, v54).u64[0];
      re::internal::assertLog(4, v21, v20, "assertion failure: '%s' (%s:line %i) Not yet implemented.", "!Unreachable code", "repeat", 308);
      _os_crash("assertion failure: (!Unreachable code) Not yet implemented.");
      __break(1u);
    }

    re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Not yet implemented. Cycle-offset computation currently does not yet support nested animations.", "internal::countTimelines(*source) == 1", "evaluateCore", 292);
    result = _os_crash("assertion failure: (internal::countTimelines(*source) == 1) Not yet implemented. Cycle-offset computation currently does not yet support nested animations.");
    __break(1u);
    return result;
  }

  v7 = a4;
  v8 = *(a1 + 80);
  if (v8)
  {
    v6 = a5;
    if (*(a1 + 164) != 2 || !vcvtms_s32_f32(*(a2 + 64)))
    {
      v10 = re::Slice<re::AnimationClock>::range(v61, 1uLL, a3);
      return (*(*v8 + 112))(v8, v10, v11, v7, v6, a6);
    }

    goto LABEL_10;
  }

  return re::AnimationValueTraits<re::SkeletalPose>::copy(a4, a6);
}

void *re::AnimationClip<float>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v2);
  return a1;
}

void re::AnimationClip<float>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void *re::AnimationClip<double>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v2);
  return a1;
}

void re::AnimationClip<double>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void *re::AnimationClip<re::Vector2<float>>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v2);
  return a1;
}

void re::AnimationClip<re::Vector2<float>>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void *re::AnimationClip<re::Vector3<float>>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v2);
  return a1;
}

void re::AnimationClip<re::Vector3<float>>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void *re::AnimationClip<re::Vector4<float>>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v2);
  return a1;
}

void re::AnimationClip<re::Vector4<float>>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void *re::AnimationClip<re::Quaternion<float>>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v2);
  return a1;
}

void re::AnimationClip<re::Quaternion<float>>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void *re::AnimationClip<re::GenericSRT<float>>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v2);
  return a1;
}

void re::AnimationClip<re::GenericSRT<float>>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void *re::AnimationClip<re::SkeletalPose>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v2);
  return a1;
}

void re::AnimationClip<re::SkeletalPose>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void *re::allocInfo_AudioAnimationState(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_21, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_21))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE190A30, "AudioAnimationState");
    __cxa_guard_release(&_MergedGlobals_21);
  }

  return &unk_1EE190A30;
}

void re::initInfo_AudioAnimationState(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v24[0] = 0x2D5905E6F33A1986;
  v24[1] = "AudioAnimationState";
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  *(this + 2) = v25;
  if ((atomic_load_explicit(&qword_1EE1909F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1909F0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_float(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "speed";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0x800000001;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE190A10 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_double(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "time";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 2;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE190A18 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "prepared";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0xC00000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE190A20 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_size_t(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "animationCounter";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x1000000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE190A28 = v22;
    __cxa_guard_release(&qword_1EE1909F0);
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE190A10;
  *(this + 9) = re::internal::defaultConstruct<re::AudioAnimationState>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AudioAnimationState>;
  *(this + 13) = re::internal::defaultConstructV2<re::AudioAnimationState>;
  *(this + 14) = re::internal::defaultDestructV2<re::AudioAnimationState>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v23 = v25;
}

void re::internal::defaultConstruct<re::AudioAnimationState>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 12) = 0;
  *(a3 + 16) = 0;
}

uint64_t re::internal::defaultConstructV2<re::AudioAnimationState>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t re::AudioAnimationTimeline::evaluateCore(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v8 = *(a2 + 24);
    v9 = v8;
    if (*(result + 80) <= v9)
    {
      v11 = *(result + 88);
      v12 = v11 <= v9;
      if (v11 <= v9)
      {
        v9 = 0.0;
      }

      *a6 = v9;
      *(a6 + 8) = *(a2 + 36);
      if (v12)
      {
        v10 = 0;
      }

      else
      {
        v10 = *(a2 + 40);
      }
    }

    else
    {
      v10 = 0;
      *a6 = 0;
      *(a6 + 8) = *(a2 + 36);
    }

    *(a6 + 16) = v10;
  }

  else
  {
    re::internal::assertLog(6, a2, a3, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v6, v7);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v14);
    __break(1u);
  }

  return result;
}

float32x2_t re::AudioAnimationTimeline::timelineDesc@<D0>(float64x2_t *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1065353216;
  *(a2 + 20) = 0;
  v2 = this[5];
  *(a2 + 24) = 0;
  v3 = vsubq_f64(vdupq_laneq_s64(v2, 1), v2).f64[0];
  *(a2 + 4) = v3;
  result = vcvt_f32_f64(v2);
  *(a2 + 12) = result;
  return result;
}

double re::AudioAnimationTimeline::makeCompositionChain(re::AudioAnimationTimeline *this, Allocator *a2)
{
  v2 = (*(a2->var0 + 4))(a2, 176, 8);
  result = 0.0;
  *(v2 + 40) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 168) = 0;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 144) = 0;
  *(v2 + 156) = 0;
  *(v2 + 80) = 0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *v2 = &unk_1F5CB23A0;
  return result;
}

uint64_t re::internal::AudioAnimationTimelineCompositionChain::update(re::internal::AudioAnimationTimelineCompositionChain *this)
{
  result = re::internal::AnimationCompositionChain<re::AudioAnimationState>::update(this);
  *(this + 156) = *(this + 168);
  return result;
}

uint64_t re::internal::AnimationCompositionChain<re::AudioAnimationState>::update(uint64_t result)
{
  v144 = *MEMORY[0x1E69E9840];
  v125 = *(result + 72);
  if (v125)
  {
    v6 = result;
    result = re::BindPoint::isAlive((result + 8));
    if (result)
    {
      v7 = re::BindPoint::supportsOverrideValue((v6 + 8));
      v132 = 0;
      v133 = 0;
      v134 = 0;
      v135 = 0;
      v136 = 0;
      v119 = v7;
      if (v7)
      {
        v7 = re::BindPoint::baseValueUntyped((v6 + 8));
        v8 = v7;
      }

      else
      {
        v136 = 1;
        v135 = 0;
        v8 = &v132;
      }

      if (*(v6 + 112) == 1)
      {
        *(v6 + 144) = *(v6 + 120);
        *(v6 + 160) = *(v6 + 136);
      }

      else
      {
        v9 = *v8;
        *(v6 + 160) = *(v8 + 16);
        *(v6 + 144) = v9;
      }

      v10 = re::animationLogObjects(v7);
      result = re::AnimationLogObjects::loggingEnabled(v10);
      if (result)
      {
LABEL_125:
        v2 = *re::animationLogObjects(result);
        result = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
        if (result)
        {
          v93 = re::BindPoint::overrideValueUntyped((v6 + 8));
          *buf = 134217984;
          *&buf[4] = v93;
          _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "ANIM: -------------- Target: %p -----------------\n", buf, 0xCu);
        }
      }

      v130 = 0u;
      v131 = 0u;
      if (*(v6 + 72))
      {
        v1 = 0;
        v5 = 0;
        v11 = 0;
        v122 = 0;
        v12 = *(*(v6 + 88) + 16);
        v121 = v6 + 144;
        v118 = v8;
        v127 = v8;
        v128 = 0;
        v129 = 0;
        v13 = 0.0;
        v14 = 0.0;
        v117 = 136315138;
        v120 = v119;
        while (1)
        {
          v8 = *(v6 + 72);
          if (v8 <= v5)
          {
            v126[0] = 0;
            v143 = 0u;
            memset(buf, 0, sizeof(buf));
            v79 = MEMORY[0x1E69E9C10];
            v80 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v137 = 136315906;
            *&v137[4] = "operator[]";
            *&v137[12] = 1024;
            if (v80)
            {
              v81 = 3;
            }

            else
            {
              v81 = 2;
            }

            *&v137[14] = 789;
            v138 = 2048;
            v139 = v5;
            v140 = 2048;
            v141 = v8;
            _os_log_send_and_compose_impl(v81, v126, buf, 80, &dword_1E1C61000, v79, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v137, 38, v109, v110);
            _os_crash_msg();
            __break(1u);
LABEL_108:
            v109 = "operator[]";
            v110 = 264;
            re::internal::assertLog(6, v22, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()");
            _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v107, v108);
            __break(1u);
LABEL_109:
            v126[0] = 0;
            v143 = 0u;
            memset(buf, 0, sizeof(buf));
            v82 = MEMORY[0x1E69E9C10];
            v83 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v137 = 136315906;
            *&v137[4] = "operator[]";
            *&v137[12] = 1024;
            if (v83)
            {
              v84 = 3;
            }

            else
            {
              v84 = 2;
            }

            *&v137[14] = 476;
            v138 = 2048;
            v139 = v4;
            v140 = 2048;
            v141 = v11;
            _os_log_send_and_compose_impl(v84, v126, buf, 80, &dword_1E1C61000, v82, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v137, 38, v109, v110);
            _os_crash_msg();
            __break(1u);
LABEL_113:
            v126[0] = 0;
            v143 = 0u;
            memset(buf, 0, sizeof(buf));
            v85 = MEMORY[0x1E69E9C10];
            v86 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v137 = 136315906;
            *&v137[4] = "operator[]";
            *&v137[12] = 1024;
            if (v86)
            {
              v87 = 3;
            }

            else
            {
              v87 = 2;
            }

            *&v137[14] = 789;
            v138 = 2048;
            v139 = v5;
            v140 = 2048;
            v141 = v11;
            _os_log_send_and_compose_impl(v87, v126, buf, 80, &dword_1E1C61000, v85, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v137, 38, v109, v110);
            _os_crash_msg();
            __break(1u);
LABEL_117:
            v126[0] = 0;
            v143 = 0u;
            memset(buf, 0, sizeof(buf));
            v88 = MEMORY[0x1E69E9C10];
            v89 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v137 = 136315906;
            *&v137[4] = "operator[]";
            *&v137[12] = 1024;
            if (v89)
            {
              v90 = 3;
            }

            else
            {
              v90 = 2;
            }

            *&v137[14] = 789;
            v138 = 2048;
            v139 = v5;
            v140 = 2048;
            v141 = v11;
            _os_log_send_and_compose_impl(v90, v126, buf, 80, &dword_1E1C61000, v88, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v137, 38, v109, v110);
            _os_crash_msg();
            __break(1u);
LABEL_121:
            v126[0] = 0;
            v143 = 0u;
            memset(buf, 0, sizeof(buf));
            v6 = MEMORY[0x1E69E9C10];
            v91 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v137 = 136315906;
            *&v137[4] = "operator[]";
            *&v137[12] = 1024;
            if (v91)
            {
              v92 = 3;
            }

            else
            {
              v92 = 2;
            }

            *&v137[14] = 789;
            v138 = 2048;
            v139 = v5;
            v140 = 2048;
            v141 = v11;
            _os_log_send_and_compose_impl(v92, v126, buf, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v137, 38, v109, v110);
            result = _os_crash_msg();
            __break(1u);
            goto LABEL_125;
          }

          v15 = *(v6 + 88) + v1;
          v8 = *(v15 + 16);
          if (((v12 != v8) & v11) == 1)
          {
            v11 = 0;
            v16 = (v14 + *(v6 + 152)) * 0.5;
            v17 = (v122 | *(v6 + 156)) & 1;
            *(v6 + 144) = (v13 + *(v6 + 144)) * 0.5;
            *(v6 + 152) = v16;
            *(v6 + 156) = v17;
            *(v6 + 160) = 0;
          }

          v3 = *v15;
          v18 = *(v15 + 8);
          v19 = re::animationLogObjects(result);
          v20 = re::AnimationLogObjects::loggingEnabled(v19);
          if (v20)
          {
            v49 = *re::animationLogObjects(v20);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              if (*(v3 + 48))
              {
                v50 = *(v3 + 56);
              }

              else
              {
                v50 = v3 + 49;
              }

              *buf = 134218754;
              *&buf[4] = v5;
              *&buf[12] = 2048;
              *&buf[14] = v3;
              *&buf[22] = 1024;
              *&buf[24] = v18;
              *&buf[28] = 2080;
              *&buf[30] = v50;
              _os_log_impl(&dword_1E1C61000, v49, OS_LOG_TYPE_DEFAULT, "ANIM: #%zu: %p(%d) %s\n", buf, 0x26u);
            }
          }

          ClocksOfSubtree = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v3, v18);
          if (!v22)
          {
            goto LABEL_108;
          }

          v23 = ClocksOfSubtree;
          v24 = v22;
          v4 = v18;
          result = re::internal::TimelineTree::source(v3, v18);
          v25 = result;
          if ((v23[16] & 1) == 0)
          {
            v28 = re::animationLogObjects(result);
            v29 = re::AnimationLogObjects::loggingEnabled(v28);
            if (v29)
            {
              log = *re::animationLogObjects(v29);
              if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
              {
                v124 = v8;
                v8 = v11;
                v51 = *(re::internal::TimelineTree::source(v3, v4) + 32);
                if (*v23 == 2)
                {
                  v4 = "Delayed";
                }

                else
                {
                  v4 = "Completed";
                }

                *v137 = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v3, 0);
                *&v137[8] = v52;
                v53 = re::Slice<re::AnimationClock>::operator[](v137, 0);
                if (*(v53 + 16))
                {
                  v54 = *(v53 + 24);
                }

                else
                {
                  v54 = 0;
                }

                *buf = 136315650;
                *&buf[4] = v51;
                v11 = v8;
                LODWORD(v8) = v124;
                *&buf[12] = 2080;
                *&buf[14] = v4;
                *&buf[22] = 2048;
                *&buf[24] = v54;
                _os_log_impl(&dword_1E1C61000, log, OS_LOG_TYPE_DEFAULT, "ANIM:         Name: %s skipped, %s. Root Time: %f\n", buf, 0x20u);
              }
            }

            result = (*(*v25 + 112))(v25, v23, v24, v121, &v127, v121);
            goto LABEL_65;
          }

          v123 = v8;
          v8 = v11;
          v11 = *(v3 + 208);
          if (v11 <= v4)
          {
            goto LABEL_109;
          }

          v26 = *(*(v3 + 216) + 4 * v4);
          v27 = fabsf(v26);
          if (v27 < 0.00001)
          {
            break;
          }

          v30 = re::animationLogObjects(result);
          v31 = re::AnimationLogObjects::loggingEnabled(v30);
          if (v31)
          {
            v55 = *re::animationLogObjects(v31);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              v114 = *(v25 + 32);
              v113 = re::BindPoint::valueUntyped((v6 + 8));
              loga = v55;
              if (v23[16] == 1)
              {
                v112 = *(v23 + 3);
              }

              else
              {
                v112 = 0;
              }

              v56 = re::internal::TimelineTree::source(v3, v4);
              v111 = (*(*v56 + 40))(v56);
              *v137 = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v3, 0);
              *&v137[8] = v57;
              v58 = re::Slice<re::AnimationClock>::operator[](v137, 0);
              if (*(v58 + 16))
              {
                v59 = *(v58 + 24);
              }

              else
              {
                v59 = 0;
              }

              v126[0] = re::internal::AnimationCompositionChain<float>::getClocksOfSubtree(v3, 0);
              v126[1] = v60;
              v61 = re::Slice<re::AnimationClock>::operator[](v126, 0);
              v62 = re::AnimationClock::clockStateToName(v61);
              v63 = *(v25 + 72);
              *buf = 136316674;
              *&buf[4] = v114;
              *&buf[12] = 2048;
              *&buf[14] = v113;
              *&buf[22] = 2048;
              *&buf[24] = v112;
              *&buf[32] = 2048;
              *&buf[34] = v111;
              *&buf[42] = 2048;
              *&buf[44] = v59;
              *&buf[52] = 2080;
              *&buf[54] = v62;
              *&buf[62] = 1024;
              LODWORD(v143) = v63;
              _os_log_impl(&dword_1E1C61000, loga, OS_LOG_TYPE_DEFAULT, "ANIM:         Name: %s, Target: %p, Clock %f / %f, Root Time: %f, ClockState: '%s', additive: %d\n", buf, 0x44u);
            }
          }

          if (v26 != 1.0 && fabsf(v26 + -1.0) >= (((v27 + 1.0) + 1.0) * 0.00001))
          {
            if ((BYTE8(v131) & 1) == 0)
            {
              BYTE8(v131) = 1;
            }

            v40 = (v6 + 144);
            if (v8)
            {
              v41 = (v14 + *(v6 + 152)) * 0.5;
              v42 = (v122 | *(v6 + 156)) & 1;
              *&v130 = (v13 + *(v6 + 144)) * 0.5;
              *(&v130 + 2) = v41;
              BYTE12(v130) = v42;
              *&v131 = 0;
              v40 = &v130;
            }

            v43 = v128;
            result = (*(*v25 + 112))(v25, v23, v24, v40, &v127, &v130);
            if (v128 != v43)
            {
              return (*(*v6 + 32))(v6);
            }

            if (*(v25 + 72))
            {
              v2 = *(v6 + 72);
              if (v2 <= v5)
              {
                goto LABEL_135;
              }

              if ((*(*(v6 + 88) + v1 + 20) & 4) != 0)
              {
                v44 = *(v6 + 144);
                v45 = *(v6 + 152);
                v46 = *(v6 + 156);
                *&v130 = (*&v130 + v44) * 0.5;
                *(&v130 + 2) = (*(&v130 + 2) + v45) * 0.5;
                BYTE12(v130) = (BYTE12(v130) | v46) & 1;
                *&v131 = 0;
                if (v8)
                {
                  v46 |= v122;
                  v45 = (v14 + v45) * 0.5;
                  v44 = (v13 + v44) * 0.5;
                }
              }

              else
              {
                v44 = *(v6 + 144);
                v45 = *(v6 + 152);
                v46 = *(v6 + 156);
                if (v8)
                {
                  v46 |= v122;
                  v45 = (v14 + v45) * 0.5;
                  v44 = (v13 + v44) * 0.5;
                }

                *&v130 = (v44 + *&v130) * 0.5;
                *(&v130 + 2) = (v45 + *(&v130 + 2)) * 0.5;
                BYTE12(v130) = (BYTE12(v130) | v46) & 1;
                *&v131 = 0;
              }
            }

            else
            {
              v44 = *(v6 + 144);
              v45 = *(v6 + 152);
              v46 = *(v6 + 156);
              if (v8)
              {
                v46 |= v122;
                v45 = (v14 + v45) * 0.5;
                v44 = (v13 + v44) * 0.5;
              }
            }

            v11 = 0;
            v47 = v46 | BYTE12(v130);
            v48 = (v26 * *(&v130 + 2)) + (v45 * (1.0 - v26));
            *(v6 + 144) = *&v130 * v26 + v44 * (1.0 - v26);
            *(v6 + 152) = v48;
            *(v6 + 156) = v47 & 1;
            *(v6 + 160) = 0;
            goto LABEL_64;
          }

          v11 = *(v6 + 72);
          if (v11 <= v5)
          {
            goto LABEL_113;
          }

          *(*(v6 + 88) + v1 + 20) &= ~4u;
          v11 = v8;
          if ((*(v25 + 72) & 1) == 0)
          {
            v129 = 1;
            result = (*(*v25 + 112))(v25, v23, v24, v121, &v127, v121);
            goto LABEL_64;
          }

          if ((BYTE8(v131) & 1) == 0)
          {
            BYTE8(v131) = 1;
          }

          v32 = (v6 + 144);
          if (v8)
          {
            v33 = (v14 + *(v6 + 152)) * 0.5;
            v34 = (v122 | *(v6 + 156)) & 1;
            *&v130 = (v13 + *(v6 + 144)) * 0.5;
            *(&v130 + 2) = v33;
            BYTE12(v130) = v34;
            *&v131 = 0;
            v32 = &v130;
          }

          result = (*(*v25 + 112))(v25, v23, v24, v32, &v127, &v130);
          if (v119)
          {
            v11 = *(v6 + 72);
            if (v11 <= v5)
            {
              goto LABEL_117;
            }

            LOBYTE(v11) = v8;
            if ((*(*(v6 + 88) + v1 + 20) & 1) != 0 && v23[32] == 1)
            {
              v68 = *&v130;
              v69 = *(&v130 + 2);
              v70 = -*(&v130 + 2);
              v71 = BYTE12(v130);
              *(v6 + 144) = -*&v130;
              *(v6 + 152) = v70;
              *(v6 + 156) = v71;
              *(v6 + 160) = 0;
              v72 = (*(v118 + 8) - v69) * 0.5;
              v73 = (v71 | *(v118 + 12)) & 1;
              *(v6 + 144) = (*v118 - v68) * 0.5;
              *(v6 + 152) = v72;
              *(v6 + 156) = v73;
              *(v6 + 160) = 0;
              v74 = re::animationLogObjects(result);
              v75 = re::AnimationLogObjects::loggingEnabled(v74);
              if (v75)
              {
                goto LABEL_139;
              }

              goto LABEL_99;
            }
          }

          if (v11)
          {
            v122 |= BYTE12(v130);
            v14 = (v14 + *(&v130 + 2)) * 0.5;
            v13 = (v13 + *&v130) * 0.5;
          }

          else
          {
            v13 = *&v130;
            v14 = *(&v130 + 2);
            v122 = BYTE12(v130);
          }

          v8 = v123;
          if (v120)
          {
            v11 = *(v6 + 72);
            if (v11 <= v5)
            {
              goto LABEL_121;
            }

            v120 = 0;
            v11 = 1;
            if ((*(*(v6 + 88) + v1 + 20) & 2) != 0 && *v23 == 5)
            {
              v35 = re::animationLogObjects(result);
              v36 = re::AnimationLogObjects::loggingEnabled(v35);
              if (v36)
              {
                v64 = *re::animationLogObjects(v36);
                if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                {
                  if (*(v3 + 48))
                  {
                    v65 = *(v3 + 56);
                  }

                  else
                  {
                    v65 = v3 + 49;
                  }

                  *buf = 136315138;
                  *&buf[4] = v65;
                  _os_log_impl(&dword_1E1C61000, v64, OS_LOG_TYPE_DEFAULT, "ANIM: Anim %s, updating base (last frame) value on last frame, from composition chain.\n", buf, 0xCu);
                  LODWORD(v8) = v123;
                }
              }

              v37 = (v14 + *(v6 + 152)) * 0.5;
              v38 = (v122 | *(v6 + 156)) & 1;
              *(v6 + 144) = (v13 + *(v6 + 144)) * 0.5;
              *(v6 + 152) = v37;
              *(v6 + 156) = v38;
              *(v6 + 160) = 0;
              result = re::BindPoint::baseValueUntyped((v6 + 8));
              if (result)
              {
                v39 = *v121;
                *(result + 16) = *(v6 + 160);
                *result = v39;
                result = re::BindPoint::markAsWritten(v6 + 8);
              }

              v2 = *(v6 + 72);
              if (v2 <= v5)
              {
                goto LABEL_131;
              }

              v11 = 0;
              *(*(v6 + 88) + v1 + 20) &= ~2u;
              v120 = 1;
              *v23 = 1;
            }
          }

          else
          {
            v120 = 0;
            v11 = 1;
          }

LABEL_65:
          ++v5;
          v1 += 24;
          v12 = v8;
          if (v125 == v5)
          {
            if (v11)
            {
              v66 = v122 | *(v6 + 156);
              v67 = (v14 + *(v6 + 152)) * 0.5;
              *(v6 + 144) = (v13 + *(v6 + 144)) * 0.5;
              *(v6 + 152) = v67;
              *(v6 + 156) = v66 & 1;
              *(v6 + 160) = 0;
            }

            return result;
          }
        }

        v11 = v8;
LABEL_64:
        LODWORD(v8) = v123;
        goto LABEL_65;
      }

      v127 = 0;
      v143 = 0uLL;
      memset(buf, 0, sizeof(buf));
      v94 = MEMORY[0x1E69E9C10];
      v95 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v137 = 136315906;
      *&v137[4] = "operator[]";
      *&v137[12] = 1024;
      if (v95)
      {
        v96 = 3;
      }

      else
      {
        v96 = 2;
      }

      *&v137[14] = 789;
      v138 = 2048;
      v139 = 0;
      v140 = 2048;
      v141 = 0;
      _os_log_send_and_compose_impl(v96, &v127, buf, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v137, 38, v109, v110);
      _os_crash_msg();
      __break(1u);
LABEL_131:
      v126[0] = 0;
      v143 = 0u;
      memset(buf, 0, sizeof(buf));
      v97 = MEMORY[0x1E69E9C10];
      v98 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v137 = 136315906;
      *&v137[4] = "operator[]";
      *&v137[12] = 1024;
      if (v98)
      {
        v99 = 3;
      }

      else
      {
        v99 = 2;
      }

      *&v137[14] = 789;
      v138 = 2048;
      v139 = v5;
      v140 = 2048;
      v141 = v2;
      _os_log_send_and_compose_impl(v99, v126, buf, 80, &dword_1E1C61000, v97, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v137, 38, v109, v110);
      _os_crash_msg();
      __break(1u);
LABEL_135:
      v126[0] = 0;
      v143 = 0u;
      memset(buf, 0, sizeof(buf));
      v6 = MEMORY[0x1E69E9C10];
      v100 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v137 = 136315906;
      *&v137[4] = "operator[]";
      *&v137[12] = 1024;
      if (v100)
      {
        v101 = 3;
      }

      else
      {
        v101 = 2;
      }

      *&v137[14] = 789;
      v138 = 2048;
      v139 = v5;
      v140 = 2048;
      v141 = v2;
      _os_log_send_and_compose_impl(v101, v126, buf, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v137, 38, v109, v110);
      v75 = _os_crash_msg();
      __break(1u);
LABEL_139:
      v102 = *re::animationLogObjects(v75);
      if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v3 + 48))
        {
          v103 = *(v3 + 56);
        }

        else
        {
          v103 = v3 + 49;
        }

        *buf = v117;
        *&buf[4] = v103;
        _os_log_impl(&dword_1E1C61000, v102, OS_LOG_TYPE_DEFAULT, "ANIM: Anim %s, updating base (first frame) value from composition chain.\n", buf, 0xCu);
      }

LABEL_99:
      v76 = re::BindPoint::baseValueUntyped((v6 + 8));
      if (v76)
      {
        v77 = *v121;
        *(v76 + 16) = *(v121 + 16);
        *v76 = v77;
        re::BindPoint::markAsWritten(v6 + 8);
      }

      v78 = *(v6 + 72);
      if (v78 <= v5)
      {
        v126[0] = 0;
        v143 = 0u;
        memset(buf, 0, sizeof(buf));
        v104 = MEMORY[0x1E69E9C10];
        v105 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v137 = 136315906;
        *&v137[4] = "operator[]";
        *&v137[12] = 1024;
        if (v105)
        {
          v106 = 3;
        }

        else
        {
          v106 = 2;
        }

        *&v137[14] = 789;
        v138 = 2048;
        v139 = v5;
        v140 = 2048;
        v141 = v78;
        _os_log_send_and_compose_impl(v106, v126, buf, 80, &dword_1E1C61000, v104, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v137, 38, v109, v110);
        _os_crash_msg();
        __break(1u);
      }

      *(*(v6 + 88) + v1 + 20) &= ~1u;
      return (*(*v6 + 32))(v6);
    }
  }

  return result;
}

uint64_t re::internal::AudioAnimationTimelineCompositionChain::cleanup(re::internal::AudioAnimationTimelineCompositionChain *this)
{
  *(this + 168) = 0;
  *(this + 18) = 0;
  *(this + 38) = 0;
  *(this + 156) = 0;
  *(this + 20) = 0;
  return (*(*this + 40))();
}

void re::AudioAnimationTimeline::~AudioAnimationTimeline(re::AudioAnimationTimeline *this)
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

uint64_t re::Animation<re::AudioAnimationState>::animationValueType()
{
  if ((atomic_load_explicit(&qword_1EE190A08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE190A08))
  {
    qword_1EE190A00 = re::internal::getOrCreateInfo("AudioAnimationState", re::allocInfo_AudioAnimationState, re::initInfo_AudioAnimationState, &unk_1EE1909F8, 0);
    __cxa_guard_release(&qword_1EE190A08);
  }

  return qword_1EE190A00;
}

void re::AudioAnimationTimeline::debugLogData(re *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = re::animationLogObjects(a1);
  if (re::AnimationLogObjects::loggingEnabled(v4))
  {
    re::DynamicString::DynamicString(v16, a2);
    re::Animation<re::AudioAnimationState>::debugLogData(a1, v16);
    v5 = *&v16[0];
    if (*&v16[0])
    {
      if (BYTE8(v16[0]))
      {
        v5 = (*(**&v16[0] + 40))();
      }

      memset(v16, 0, sizeof(v16));
    }

    v6 = re::animationLogObjects(v5);
    v7 = re::AnimationLogObjects::loggingEnabled(v6);
    if (v7)
    {
      v12 = *re::animationLogObjects(v7);
      v7 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        if (*(a2 + 8))
        {
          v13 = *(a2 + 16);
        }

        else
        {
          v13 = a2 + 9;
        }

        v15 = *(a1 + 10);
        *buf = 136315394;
        v18 = v13;
        v19 = 2048;
        v20 = v15;
        _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "ANIM: %sstartTime: %f\n", buf, 0x16u);
      }
    }

    v8 = re::animationLogObjects(v7);
    v9 = re::AnimationLogObjects::loggingEnabled(v8);
    if (v9)
    {
      v10 = *re::animationLogObjects(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 8))
        {
          v11 = *(a2 + 16);
        }

        else
        {
          v11 = a2 + 9;
        }

        v14 = *(a1 + 11);
        *buf = 136315394;
        v18 = v11;
        v19 = 2048;
        v20 = v14;
        _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "ANIM: %sendTime: %f\n", buf, 0x16u);
      }
    }
  }
}

_DWORD *re::AnimationImpl<re::AudioAnimationState>::evaluate(_DWORD *result, _BYTE *a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v8 = a2[16] != 1 || *a2 == 2;
    if (!v8 || (v9 = *a4, *(a6 + 16) = *(a4 + 2), *a6 = v9, result[2] == 49))
    {
      v10 = *(*result + 120);

      return v10();
    }
  }

  else
  {
    re::internal::assertLog(6, a2, a3, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v6, v7);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v11, v12);
    __break(1u);
  }

  return result;
}

void re::internal::AudioAnimationTimelineCompositionChain::~AudioAnimationTimelineCompositionChain(re::internal::AudioAnimationTimelineCompositionChain *this)
{
  re::internal::AnimationCompositionChain<re::AudioAnimationState>::~AnimationCompositionChain(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::AnimationCompositionChain<re::AudioAnimationState>::init(uint64_t a1, void *a2)
{
  v2 = a1;
  *(a1 + 8) = *a2;
  v3 = (a1 + 8);
  v4 = re::DynamicArray<re::BindPoint::BindPointData>::operator=(a1 + 16, a2 + 1);
  v2 += 56;
  re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v2, 0);
  ++*(v2 + 24);

  return re::BindPoint::baseValueUntyped(v3);
}

uint64_t re::internal::AnimationCompositionChain<re::AudioAnimationState>::deinit(uint64_t a1)
{
  v3 = *(a1 + 56);
  result = a1 + 56;
  if (v3)
  {
    if (*(a1 + 112) == 1)
    {
      *(a1 + 112) = 0;
    }

    return re::DynamicArray<unsigned long>::deinit(result);
  }

  return result;
}

uint64_t re::internal::AnimationCompositionChain<re::AudioAnimationState>::apply(uint64_t a1)
{
  v59 = *MEMORY[0x1E69E9840];
  result = re::BindPoint::isAlive((a1 + 8));
  if (!result)
  {
    return result;
  }

  if (!*(a1 + 72))
  {
    if (*(a1 + 104) == 1)
    {
      if (re::BindPoint::isOverridden((a1 + 8)))
      {
        v18 = re::BindPoint::overrideValueUntyped((a1 + 8));
        v19 = re::BindPoint::baseValueUntyped((a1 + 8));
        if (v19)
        {
          v20 = *v18;
          *(v19 + 16) = *(v18 + 16);
          *v19 = v20;
          re::BindPoint::markAsWritten(a1 + 8);
        }
      }
    }

    return re::BindPoint::setIsOverridden(a1 + 8, 0);
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
    return result;
  }

  v40 = 0;
  v41 = 0;
  v42 = 1;
  v43 = 0;
  v44 = 0;
  re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::resize(&v40, v3);
  v4 = 0;
  v5 = 0;
  v6 = *(a1 + 32);
  v7 = v41;
  do
  {
    if (v6 == v5)
    {
      v45 = 0;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
      v28 = MEMORY[0x1E69E9C10];
      v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v46 = 136315906;
      v47 = "operator[]";
      v48 = 1024;
      if (v29)
      {
        v30 = 3;
      }

      else
      {
        v30 = 2;
      }

      v49 = 797;
      v50 = 2048;
      v51 = v6;
      v52 = 2048;
      v53 = v6;
      _os_log_send_and_compose_impl(v30, &v45, &v54, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v46, 38, v40, v41);
      _os_crash_msg();
      __break(1u);
LABEL_48:
      v45 = 0;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
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

      v49 = 858;
      v50 = 2048;
      v51 = v7;
      v52 = 2048;
      v53 = v7;
      _os_log_send_and_compose_impl(v33, &v45, &v54, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v46, 38, v40, v41);
      _os_crash_msg();
      __break(1u);
      goto LABEL_52;
    }

    v8 = (*(a1 + 48) + v4);
    if (!*v8)
    {
      v8 = v8[2];
    }

    if (v7 == v5)
    {
      goto LABEL_48;
    }

    if (v42)
    {
      v9 = &v43;
    }

    else
    {
      v9 = v44;
    }

    v9[v5++] = v8;
    v4 += 32;
  }

  while (v3 != v5);
  if (!v7)
  {
LABEL_52:
    v45 = 0;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
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

    v49 = 858;
    v50 = 2048;
    v51 = 0;
    v52 = 2048;
    v53 = 0;
    _os_log_send_and_compose_impl(v36, &v45, &v54, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v46, 38, v40, v41);
    _os_crash_msg();
    __break(1u);
    goto LABEL_56;
  }

  if (v42)
  {
    v10 = &v43;
  }

  else
  {
    v10 = v44;
  }

  v11 = *v10;
  v12 = v3 - 1;
  v13 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v40, 1uLL, v12);
  v15 = (*(*v11 + 120))(v11, 0, v13, v14);
  if (v15)
  {
    v16 = v15;
    if (!re::BindPoint::isOverridden((a1 + 8)) || *v16 != *(a1 + 144) || *(v16 + 8) != *(a1 + 152) || *(v16 + 12) != *(a1 + 156))
    {
      re::BindPoint::willSet(a1 + 8);
      v17 = *(a1 + 144);
      *(v16 + 16) = *(a1 + 160);
      *v16 = v17;
      re::BindPoint::setIsOverridden(a1 + 8, 1);
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  if (!v41)
  {
LABEL_56:
    v45 = 0;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
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

    v49 = 858;
    v50 = 2048;
    v51 = 0;
    v52 = 2048;
    v53 = 0;
    _os_log_send_and_compose_impl(v39, &v45, &v54, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v46, 38, v40, v41);
    _os_crash_msg();
    __break(1u);
  }

  if (v42)
  {
    v21 = &v43;
  }

  else
  {
    v21 = v44;
  }

  v22 = *v21;
  v23 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v40, 1uLL, v12);
  v25 = (*(*v22 + 88))(v22, 0, v23, v24);
  if (v25)
  {
    v26 = v25;
    if (*v25 != *(a1 + 144) || *(v25 + 8) != *(a1 + 152) || *(v25 + 12) != *(a1 + 156))
    {
      re::BindPoint::willSet(a1 + 8);
      v27 = *(a1 + 144);
      *(v26 + 16) = *(a1 + 160);
      *v26 = v27;
LABEL_39:
      re::BindPoint::markAsWritten(a1 + 8);
    }
  }

LABEL_40:
  result = v40;
  if (v40)
  {
    if ((v42 & 1) == 0)
    {
      return (*(*v40 + 40))();
    }
  }

  return result;
}

uint64_t re::internal::AnimationCompositionChain<re::AudioAnimationState>::takeSnapshot(uint64_t result)
{
  v1 = result;
  if (*(result + 72))
  {
    if ((*(result + 112) & 1) == 0)
    {
      *(result + 112) = 1;
    }

    *(result + 120) = *(result + 144);
    v2 = *(result + 160);
    goto LABEL_14;
  }

  if (re::BindPoint::supportsOverrideValue((result + 8)))
  {
    if ((*(v1 + 112) & 1) == 0)
    {
      *(v1 + 112) = 1;
      *(v1 + 120) = 0;
      *(v1 + 128) = 0;
      *(v1 + 132) = 0;
      *(v1 + 136) = 0;
    }

    result = re::BindPoint::baseValueUntyped((v1 + 8));
LABEL_13:
    v2 = *(result + 16);
    *(v1 + 120) = *result;
LABEL_14:
    *(v1 + 136) = v2;
    return result;
  }

  result = re::BindPoint::isAlive((v1 + 8));
  if (result)
  {
    if ((*(v1 + 112) & 1) == 0)
    {
      *(v1 + 112) = 1;
      *(v1 + 120) = 0;
      *(v1 + 128) = 0;
      *(v1 + 132) = 0;
      *(v1 + 136) = 0;
    }

    result = re::BindPoint::valueUntyped((v1 + 8));
    goto LABEL_13;
  }

  if (*(v1 + 112))
  {
    *(v1 + 112) = 0;
  }

  return result;
}

void re::Animation<re::AudioAnimationState>::debugLogData(re *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = re::animationLogObjects(a1);
  if (re::AnimationLogObjects::loggingEnabled(v4))
  {
    re::DynamicString::DynamicString(v11, a2);
    re::Timeline::debugLogData(a1, v11);
    v5 = *&v11[0];
    if (*&v11[0])
    {
      if (BYTE8(v11[0]))
      {
        v5 = (*(**&v11[0] + 40))();
      }

      memset(v11, 0, sizeof(v11));
    }

    v6 = re::animationLogObjects(v5);
    v7 = re::AnimationLogObjects::loggingEnabled(v6);
    if (v7)
    {
      v8 = *re::animationLogObjects(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 8))
        {
          v9 = *(a2 + 16);
        }

        else
        {
          v9 = a2 + 9;
        }

        v10 = "false";
        if (*(a1 + 72))
        {
          v10 = "true";
        }

        *buf = 136315394;
        v13 = v9;
        v14 = 2080;
        v15 = v10;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "ANIM: %sisAdditive: %s\n", buf, 0x16u);
      }
    }
  }
}

uint64_t re::internal::AnimationCompositionChain<re::AudioAnimationState>::~AnimationCompositionChain(uint64_t a1)
{
  *a1 = &unk_1F5CB2428;
  v2 = a1 + 56;
  if (*(a1 + 56))
  {
    if (*(a1 + 112) == 1)
    {
      *(a1 + 112) = 0;
    }

    re::DynamicArray<unsigned long>::deinit(a1 + 56);
  }

  *a1 = &unk_1F5CAD030;
  re::DynamicArray<unsigned long>::deinit(v2);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(a1 + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(a1 + 16);
  return a1;
}

void re::internal::AnimationCompositionChain<re::AudioAnimationState>::~AnimationCompositionChain(uint64_t a1)
{
  re::internal::AnimationCompositionChain<re::AudioAnimationState>::~AnimationCompositionChain(a1);

  JUMPOUT(0x1E6906520);
}

void *re::allocInfo_AnimationService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_22, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_22))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE190AC8, "AnimationService");
    __cxa_guard_release(&_MergedGlobals_22);
  }

  return &unk_1EE190AC8;
}

void re::initInfo_AnimationService(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x1D19303ADC189562;
  v8[1] = "AnimationService";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_AnimationService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void *re::allocInfo_BlendParameterInputNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE190B60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE190B60))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE190DB8, "BlendParameterInputNode");
    __cxa_guard_release(&qword_1EE190B60);
  }

  return &unk_1EE190DB8;
}

void re::initInfo_BlendParameterInputNode(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0xA1A56AFCB4DA42A8;
  v16[1] = "BlendParameterInputNode";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE190B68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE190B68))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "name";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE190BE0 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_uint32_t(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "defaultValueIndex";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x1000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE190BE8 = v14;
    __cxa_guard_release(&qword_1EE190B68);
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE190BE0;
  *(this + 9) = re::internal::defaultConstruct<re::BlendParameterInputNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BlendParameterInputNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::BlendParameterInputNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::BlendParameterInputNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v15 = v17;
}

re::StringID *re::internal::defaultConstruct<re::BlendParameterInputNode>(re::StringID *a1, uint64_t a2, re::StringID *a3)
{
  result = re::StringID::invalid(a3);
  *(a3 + 4) = -1;
  return result;
}

re::StringID *re::internal::defaultConstructV2<re::BlendParameterInputNode>(re::StringID *a1)
{
  result = re::StringID::invalid(a1);
  *(a1 + 4) = -1;
  return result;
}

void *re::allocInfo_BlendValueInputNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE190B78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE190B78))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE190E48, "BlendValueInputNode");
    __cxa_guard_release(&qword_1EE190B78);
  }

  return &unk_1EE190E48;
}

void re::initInfo_BlendValueInputNode(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0x26A7E5732D4BEA18;
  v16[1] = "BlendValueInputNode";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE190B80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE190B80))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "name";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE190BF0 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_uint32_t(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "blendValueIndex";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x1000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE190BF8 = v14;
    __cxa_guard_release(&qword_1EE190B80);
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE190BF0;
  *(this + 9) = re::internal::defaultConstruct<re::BlendValueInputNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BlendValueInputNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::BlendValueInputNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::BlendValueInputNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v15 = v17;
}

re::StringID *re::internal::defaultConstruct<re::BlendValueInputNode>(re::StringID *a1, uint64_t a2, re::StringID *a3)
{
  result = re::StringID::invalid(a3);
  *(a3 + 4) = 0;
  return result;
}

re::StringID *re::internal::defaultConstructV2<re::BlendValueInputNode>(re::StringID *a1)
{
  result = re::StringID::invalid(a1);
  *(a1 + 4) = 0;
  return result;
}

void re::introspect_BlendType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE190B90, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE190B98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE190B98))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE190D20, "BlendType", 1, 1, 1, 1);
      qword_1EE190D20 = &unk_1F5D0C658;
      qword_1EE190D60 = &re::introspect_BlendType(BOOL)::enumTable;
      dword_1EE190D30 = 9;
      __cxa_guard_release(&qword_1EE190B98);
    }

    if (_MergedGlobals_23)
    {
      break;
    }

    _MergedGlobals_23 = 1;
    re::IntrospectionRegistry::add(&qword_1EE190D20, a2);
    v45 = 0x6BF759AE6616;
    v46 = "BlendType";
    v49 = 0x31CD534126;
    v50 = "uint8_t";
    v4 = v48[0];
    v5 = v48[1];
    if (v49)
    {
      if (v49)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE190D60;
      v49 = v4;
      v50 = v5;
      re::TypeBuilder::beginEnumType(v48, &v45, 1, 1, &v49);
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
            *&v47.var0 = 2 * v11;
            v47.var1 = v10;
            re::TypeBuilder::addEnumConstant(v48, v15, &v47);
            if (*&v47.var0)
            {
              if (*&v47.var0)
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
              *&v47.var0 = 2 * v20;
              v47.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v48, v24, &v47);
              if (*&v47.var0)
              {
                if (*&v47.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v48, v26);
      xmmword_1EE190D40 = v47;
      if (v45)
      {
        if (v45)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v46);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v44);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE190B90))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Unknown";
      qword_1EE190C20 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "Invert";
      qword_1EE190C28 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "Identity";
      qword_1EE190C30 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 3;
      *(v35 + 16) = "Repeat";
      qword_1EE190C38 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 4;
      *(v37 + 16) = "Interpolate";
      qword_1EE190C40 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 5;
      *(v39 + 16) = "AdditiveBlend";
      qword_1EE190C48 = v39;
      v40 = re::introspectionAllocator();
      v41 = (*(*v40 + 32))(v40, 24, 8);
      *v41 = 1;
      *(v41 + 8) = 6;
      *(v41 + 16) = "WeightedAdditiveBlend";
      qword_1EE190C50 = v41;
      v42 = re::introspectionAllocator();
      v43 = (*(*v42 + 32))(v42, 24, 8);
      *v43 = 1;
      *(v43 + 8) = 7;
      *(v43 + 16) = "BlendTypeCount";
      qword_1EE190C58 = v43;
      __cxa_guard_release(&qword_1EE190B90);
    }
  }
}

void *re::allocInfo_BlendNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE190BA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE190BA0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE190ED8, "BlendNode");
    __cxa_guard_release(&qword_1EE190BA0);
  }

  return &unk_1EE190ED8;
}

void re::initInfo_BlendNode(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v23[0] = 0x6BF759A8A3A6;
  v23[1] = "BlendNode";
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  *(this + 2) = v24;
  if ((atomic_load_explicit(&qword_1EE190BA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE190BA8))
  {
    v7 = re::introspectionAllocator();
    re::introspect_BlendType(v7, v8);
    v9 = (*(*v7 + 32))(v7, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "blendType";
    *(v9 + 16) = &qword_1EE190D20;
    *(v9 + 24) = 0;
    *(v9 + 32) = 1;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE190C00 = v9;
    v10 = re::introspectionAllocator();
    v12 = re::introspect_uint32_t(1, v11);
    v13 = (*(*v10 + 32))(v10, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "blendNodeParameterIndexStart";
    *(v13 + 16) = v12;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0x400000002;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE190C08 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_uint32_t(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "blendNodeOptionIndexStart";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x800000003;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE190C10 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_uint32_t(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "outputBlendValueIndex";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0xC00000004;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE190C18 = v21;
    __cxa_guard_release(&qword_1EE190BA8);
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE190C00;
  *(this + 9) = re::internal::defaultConstruct<re::BlendNode>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BlendNode>;
  *(this + 13) = re::internal::defaultConstructV2<re::BlendNode>;
  *(this + 14) = re::internal::defaultDestructV2<re::BlendNode>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v22 = v24;
}

void re::internal::defaultConstruct<re::BlendNode>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 4) = 0;
}

uint64_t re::internal::defaultConstructV2<re::BlendNode>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 4) = 0;
  return result;
}

void *re::allocInfo_BlendTreeDefinition(re *this)
{
  if ((atomic_load_explicit(&qword_1EE190BB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE190BB8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE190F68, "BlendTreeDefinition");
    __cxa_guard_release(&qword_1EE190BB8);
  }

  return &unk_1EE190F68;
}

void re::initInfo_BlendTreeDefinition(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v40[0] = 0x498A493E4355D444;
  v40[1] = "BlendTreeDefinition";
  if (v40[0])
  {
    if (v40[0])
    {
    }
  }

  *(this + 2) = v41;
  if ((atomic_load_explicit(&qword_1EE190BC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE190BC0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "defaultUInt32s";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE190D68 = v10;
    v11 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::BlendParameterInputNode>>::get(v11);
    v12 = (*(*v11 + 32))(v11, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "parameterInputUInt32Nodes";
    *(v12 + 16) = &qword_1EE190C60;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x2800000002;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE190D70 = v12;
    v13 = re::introspectionAllocator();
    v15 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v14);
    v16 = (*(*v13 + 32))(v13, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "defaultFloats";
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x5000000003;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE190D78 = v16;
    v17 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::BlendParameterInputNode>>::get(v17);
    v18 = (*(*v17 + 32))(v17, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "parameterInputFloatNodes";
    *(v18 + 16) = &qword_1EE190C60;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x7800000004;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE190D80 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_uint32_t(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "blendValueCount";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0xA000000005;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE190D88 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_uint32_t(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "blendOutputIndex";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0xA400000006;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE190D90 = v26;
    v27 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::BlendValueInputNode>>::get(v27);
    v28 = (*(*v27 + 32))(v27, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "blendValueInputNodes";
    *(v28 + 16) = &qword_1EE190CA0;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0xA800000007;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE190D98 = v28;
    v29 = re::introspectionAllocator();
    v31 = re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(1, v30);
    v32 = (*(*v29 + 32))(v29, 72, 8);
    *v32 = 1;
    *(v32 + 8) = "blendNodeParameters";
    *(v32 + 16) = v31;
    *(v32 + 24) = 0;
    *(v32 + 32) = 0xD000000008;
    *(v32 + 40) = 0;
    *(v32 + 48) = 0;
    *(v32 + 56) = 0;
    *(v32 + 64) = 0;
    qword_1EE190DA0 = v32;
    v33 = re::introspectionAllocator();
    v35 = re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(1, v34);
    v36 = (*(*v33 + 32))(v33, 72, 8);
    *v36 = 1;
    *(v36 + 8) = "blendNodeOptions";
    *(v36 + 16) = v35;
    *(v36 + 24) = 0;
    *(v36 + 32) = 0xF800000009;
    *(v36 + 40) = 0;
    *(v36 + 48) = 0;
    *(v36 + 56) = 0;
    *(v36 + 64) = 0;
    qword_1EE190DA8 = v36;
    v37 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::BlendNode>>::get(v37);
    v38 = (*(*v37 + 32))(v37, 72, 8);
    *v38 = 1;
    *(v38 + 8) = "blendNodes";
    *(v38 + 16) = &qword_1EE190CE0;
    *(v38 + 24) = 0;
    *(v38 + 32) = 0x1200000000ALL;
    *(v38 + 40) = 0;
    *(v38 + 48) = 0;
    *(v38 + 56) = 0;
    *(v38 + 64) = 0;
    qword_1EE190DB0 = v38;
    __cxa_guard_release(&qword_1EE190BC0);
  }

  *(this + 2) = 0x14800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 10;
  *(this + 8) = &qword_1EE190D68;
  *(this + 9) = re::internal::defaultConstruct<re::BlendTreeDefinition>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BlendTreeDefinition>;
  *(this + 13) = re::internal::defaultConstructV2<re::BlendTreeDefinition>;
  *(this + 14) = re::internal::defaultDestructV2<re::BlendTreeDefinition>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v39 = v41;
}

uint64_t *re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(BOOL)::info) = &unk_1F5CB2480;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_uint32_t(1, a2);
  if ((re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(BOOL)::info, 0);
    qword_1EE1867A0 = 0x2800000003;
    dword_1EE1867A8 = v8;
    word_1EE1867AC = 0;
    *&xmmword_1EE1867B0 = 0;
    *(&xmmword_1EE1867B0 + 1) = 0xFFFFFFFFLL;
    qword_1EE1867C0 = v7;
    unk_1EE1867C8 = 0;
    re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(BOOL)::info = &unk_1F5CB2480;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&v15, &re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(BOOL)::info);
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
    xmmword_1EE1867B0 = v14;
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

  return &re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(BOOL)::info;
}

void re::IntrospectionInfo<re::DynamicArray<re::BlendParameterInputNode>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE190BC8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE190BC8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE190C60);
      qword_1EE190C60 = &unk_1F5CB2518;
      __cxa_guard_release(&qword_1EE190BC8);
    }
  }

  if ((byte_1EE190B59 & 1) == 0)
  {
    v1 = qword_1EE190B70;
    if (qword_1EE190B70 || (v1 = re::allocInfo_BlendParameterInputNode(a1), qword_1EE190B70 = v1, re::initInfo_BlendParameterInputNode(v1, v2, v3, v4), (byte_1EE190B59 & 1) == 0))
    {
      byte_1EE190B59 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE190C60, 0);
      qword_1EE190C70 = 0x2800000003;
      dword_1EE190C78 = v5;
      word_1EE190C7C = 0;
      *&xmmword_1EE190C80 = 0;
      *(&xmmword_1EE190C80 + 1) = 0xFFFFFFFFLL;
      qword_1EE190C90 = v1;
      unk_1EE190C98 = 0;
      qword_1EE190C60 = &unk_1F5CB2518;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE190C60);
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
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendParameterInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendParameterInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendParameterInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendParameterInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendParameterInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendParameterInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendParameterInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendParameterInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE190C80 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::BlendValueInputNode>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE190BD0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE190BD0);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE190CA0);
      qword_1EE190CA0 = &unk_1F5CB25B0;
      __cxa_guard_release(&qword_1EE190BD0);
    }
  }

  if ((byte_1EE190B5A & 1) == 0)
  {
    v1 = qword_1EE190B88;
    if (qword_1EE190B88 || (v1 = re::allocInfo_BlendValueInputNode(a1), qword_1EE190B88 = v1, re::initInfo_BlendValueInputNode(v1, v2, v3, v4), (byte_1EE190B5A & 1) == 0))
    {
      byte_1EE190B5A = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE190CA0, 0);
      qword_1EE190CB0 = 0x2800000003;
      dword_1EE190CB8 = v5;
      word_1EE190CBC = 0;
      *&xmmword_1EE190CC0 = 0;
      *(&xmmword_1EE190CC0 + 1) = 0xFFFFFFFFLL;
      qword_1EE190CD0 = v1;
      unk_1EE190CD8 = 0;
      qword_1EE190CA0 = &unk_1F5CB25B0;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE190CA0);
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
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendValueInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendValueInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendValueInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendValueInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendValueInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendValueInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendValueInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendValueInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE190CC0 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::BlendNode>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE190BD8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE190BD8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE190CE0);
      qword_1EE190CE0 = &unk_1F5CB2648;
      __cxa_guard_release(&qword_1EE190BD8);
    }
  }

  if ((byte_1EE190B5B & 1) == 0)
  {
    v1 = qword_1EE190BB0;
    if (qword_1EE190BB0 || (v1 = re::allocInfo_BlendNode(a1), qword_1EE190BB0 = v1, re::initInfo_BlendNode(v1, v2, v3, v4), (byte_1EE190B5B & 1) == 0))
    {
      byte_1EE190B5B = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE190CE0, 0);
      qword_1EE190CF0 = 0x2800000003;
      dword_1EE190CF8 = v5;
      word_1EE190CFC = 0;
      *&xmmword_1EE190D00 = 0;
      *(&xmmword_1EE190D00 + 1) = 0xFFFFFFFFLL;
      qword_1EE190D10 = v1;
      unk_1EE190D18 = 0;
      qword_1EE190CE0 = &unk_1F5CB2648;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE190CE0);
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
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE190D00 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::BlendTreeDefinition>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 320) = 0;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 180) = 0u;
  *(a3 + 232) = 0;
  *(a3 + 216) = 0u;
  *(a3 + 200) = 0u;
  *(a3 + 272) = 0;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 312) = 0;
  *(a3 + 280) = 0u;
  *(a3 + 296) = 0u;
  return result;
}

uint64_t re::internal::defaultDestruct<re::BlendTreeDefinition>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a3 + 288);
  re::DynamicArray<unsigned long>::deinit(a3 + 248);
  re::DynamicArray<unsigned long>::deinit(a3 + 208);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a3 + 168);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a3 + 120);
  re::DynamicArray<unsigned long>::deinit(a3 + 80);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a3 + 40);

  return re::DynamicArray<unsigned long>::deinit(a3);
}

double re::internal::defaultConstructV2<re::BlendTreeDefinition>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 320) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 180) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 272) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 312) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::BlendTreeDefinition>(uint64_t a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 288);
  re::DynamicArray<unsigned long>::deinit(a1 + 248);
  re::DynamicArray<unsigned long>::deinit(a1 + 208);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a1 + 168);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a1 + 120);
  re::DynamicArray<unsigned long>::deinit(a1 + 80);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a1 + 40);

  return re::DynamicArray<unsigned long>::deinit(a1);
}

void re::TypeBuilderHelper::registerDynamicArray<unsigned int>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
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
    re::TypeBuilder::beginListType(v10, a2, 1, 0x28uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(a4, v10, a1);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionDynamicArray<unsigned int>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<unsigned int>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<unsigned int>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<unsigned int>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<int>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<unsigned int>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<int>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<float>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<unsigned int>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10 = 0;
  re::DynamicArray<int>::add(this, &v10);
  v8 = (*(this + 4) + 4 * *(this + 2) - 4);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<unsigned int>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 4 * a3;
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

  return *(a2 + 32) + 4 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<int>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<int>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<float>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
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

unint64_t re::TypeBuilderHelper::registerDynamicArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 4 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 4 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<unsigned int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::BlendParameterInputNode>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::BlendParameterInputNode>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::BlendParameterInputNode>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::BlendParameterInputNode>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::BlendParameterInputNode>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::BlendParameterInputNode>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::BlendParameterInputNode>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::BlendParameterInputNode>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::BlendParameterInputNode>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v8 = re::StringID::invalid(&v20);
  LODWORD(v22) = -1;
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

        v8 = re::DynamicArray<re::BlendParameterInputNode>::setCapacity(a4, v15);
      }

      else
      {
        v8 = re::DynamicArray<re::BlendParameterInputNode>::setCapacity(a4, v11);
        ++*(a4 + 24);
      }
    }

    v10 = *(a4 + 16);
  }

  v16 = *(a4 + 32) + 24 * v10;
  v17 = v20;
  *v16 = *v16 & 0xFFFFFFFFFFFFFFFELL | v20 & 1;
  *v16 = v20 & 0xFFFFFFFFFFFFFFFELL | v17 & 1;
  *(v16 + 8) = v21;
  v20 = 0;
  v21 = &str_67;
  *(v16 + 16) = v22;
  ++*(a4 + 16);
  ++*(a4 + 24);
  if (v20)
  {
    if (v20)
    {
    }
  }

  v18 = (*(a4 + 32) + 24 * *(a4 + 16) - 24);
  re::introspectionInitElement(a2, a3, a1[6], v18);
  return v18;
}

unint64_t re::IntrospectionDynamicArray<re::BlendParameterInputNode>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void *re::DynamicArray<re::BlendParameterInputNode>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::BlendParameterInputNode>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x18uLL))
        {
          v2 = 24 * a2;
          result = (*(*result + 32))(result, 24 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 24, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v13, v15);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v14, v16);
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
        v10 = &v8[3 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          *(v11 + 4) = *(v8 + 4);
          re::StringID::destroyString(v8);
          v8 += 3;
          v11 += 3;
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

void re::DynamicArray<re::BlendParameterInputNode>::resize(re::StringID *result, unint64_t a2)
{
  v4 = *(result + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 24 * a2;
    v9 = a2;
    do
    {
      re::StringID::destroyString((*(result + 4) + v8));
      ++v9;
      v8 += 24;
    }

    while (v9 < *(result + 2));
  }

  else
  {
    if (*(result + 1) < a2)
    {
      re::DynamicArray<re::BlendParameterInputNode>::setCapacity(result, a2);
      v4 = *(result + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 24 * v4;
      do
      {
        v7 = (*(result + 4) + v6);
        re::StringID::invalid(v7);
        *(v7 + 4) = -1;
        v6 += 24;
        --v5;
      }

      while (v5);
    }
  }

  *(result + 2) = a2;
  ++*(result + 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::BlendParameterInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::BlendParameterInputNode>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::BlendParameterInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 24 * v8;
      do
      {
        re::StringID::destroyString(v9);
        v9 = (v9 + 24);
        v10 -= 24;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::BlendParameterInputNode>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::BlendParameterInputNode>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 24 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 24;
        v14 -= 24;
      }

      while (v14);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendParameterInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendParameterInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendParameterInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendParameterInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::BlendValueInputNode>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::BlendValueInputNode>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::BlendValueInputNode>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::BlendValueInputNode>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::BlendParameterInputNode>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::BlendValueInputNode>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::BlendParameterInputNode>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::BlendValueInputNode>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::BlendValueInputNode>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v8 = re::StringID::invalid(&v20);
  LODWORD(v22) = 0;
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

        v8 = re::DynamicArray<re::BlendParameterInputNode>::setCapacity(a4, v15);
      }

      else
      {
        v8 = re::DynamicArray<re::BlendParameterInputNode>::setCapacity(a4, v11);
        ++*(a4 + 24);
      }
    }

    v10 = *(a4 + 16);
  }

  v16 = *(a4 + 32) + 24 * v10;
  v17 = v20;
  *v16 = *v16 & 0xFFFFFFFFFFFFFFFELL | v20 & 1;
  *v16 = v20 & 0xFFFFFFFFFFFFFFFELL | v17 & 1;
  *(v16 + 8) = v21;
  v20 = 0;
  v21 = &str_67;
  *(v16 + 16) = v22;
  ++*(a4 + 16);
  ++*(a4 + 24);
  if (v20)
  {
    if (v20)
    {
    }
  }

  v18 = (*(a4 + 32) + 24 * *(a4 + 16) - 24);
  re::introspectionInitElement(a2, a3, a1[6], v18);
  return v18;
}

unint64_t re::IntrospectionDynamicArray<re::BlendValueInputNode>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void re::DynamicArray<re::BlendValueInputNode>::resize(re::StringID *result, unint64_t a2)
{
  v4 = *(result + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 24 * a2;
    v9 = a2;
    do
    {
      re::StringID::destroyString((*(result + 4) + v8));
      ++v9;
      v8 += 24;
    }

    while (v9 < *(result + 2));
  }

  else
  {
    if (*(result + 1) < a2)
    {
      re::DynamicArray<re::BlendParameterInputNode>::setCapacity(result, a2);
      v4 = *(result + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 24 * v4;
      do
      {
        v7 = (*(result + 4) + v6);
        re::StringID::invalid(v7);
        *(v7 + 4) = 0;
        v6 += 24;
        --v5;
      }

      while (v5);
    }
  }

  *(result + 2) = a2;
  ++*(result + 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::BlendValueInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::BlendParameterInputNode>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::BlendValueInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 24 * v8;
      do
      {
        re::StringID::destroyString(v9);
        v9 = (v9 + 24);
        v10 -= 24;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::BlendParameterInputNode>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::BlendValueInputNode>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 24 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 24;
        v14 -= 24;
      }

      while (v14);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendValueInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendValueInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendValueInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendValueInputNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::BlendNode>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::BlendNode>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::BlendNode>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::BlendNode>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::BlendNode>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::BlendNode>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::BlendNode>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::BlendNode>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::BlendNode>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  v9 = *(a4 + 16);
  if (v9 >= v8)
  {
    v10 = v9 + 1;
    if (v8 < v9 + 1)
    {
      if (*a4)
      {
        v11 = 2 * v8;
        v12 = v8 == 0;
        v13 = 8;
        if (!v12)
        {
          v13 = v11;
        }

        if (v13 <= v10)
        {
          v14 = v10;
        }

        else
        {
          v14 = v13;
        }

        re::DynamicArray<re::BlendNode>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::BlendNode>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  v15 = (*(a4 + 32) + 16 * v9);
  *v15 = 0;
  v15[1] = 0;
  v16 = *(a4 + 16) + 1;
  *(a4 + 16) = v16;
  ++*(a4 + 24);
  v17 = (*(a4 + 32) + 16 * v16 - 16);
  re::introspectionInitElement(a2, a3, a1[6], v17);
  return v17;
}

unint64_t re::IntrospectionDynamicArray<re::BlendNode>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 16 * a3;
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

  return *(a2 + 32) + 16 * a3;
}

void *re::DynamicArray<re::BlendNode>::setCapacity(void *result, unint64_t a2)
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

        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 4);
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
            memcpy(v7, v5[4], 16 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::BlendNode>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::BlendNode>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::BlendNode>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4 && v5 >= 1)
    {
      v6 = v3[4] + 16 * v4;
      v7 = v5 + 1;
      do
      {
        *v6 = 0;
        *(v6 + 8) = 0;
        *(v6 + 4) = 0;
        v6 += 16;
        --v7;
      }

      while (v7 > 1);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::BlendNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::BlendNode>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::BlendNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::BlendNode>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::BlendNode>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 16 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 16;
        v11 -= 16;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 16 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 16 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendNode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t *re::IntrospectionInfo<re::FixedArray<int>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionFixedArrayBase::IntrospectionFixedArrayBase(&re::IntrospectionInfo<re::FixedArray<int>>::get(BOOL)::info) = &unk_1F5CB26E0;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::FixedArray<int>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::FixedArray<int>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::FixedArray<int>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::FixedArray<int>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_int(1, a2);
  if ((re::IntrospectionInfo<re::FixedArray<int>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::FixedArray<int>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::FixedArray<int>>::get(BOOL)::info, 0);
    qword_1EE186CF8 = 0x1800000004;
    dword_1EE186D00 = v8;
    word_1EE186D04 = 0;
    *&xmmword_1EE186D08 = 0;
    *(&xmmword_1EE186D08 + 1) = 0xFFFFFFFFLL;
    qword_1EE186D18 = v7;
    unk_1EE186D20 = 0;
    re::IntrospectionInfo<re::FixedArray<int>>::get(BOOL)::info = &unk_1F5CB26E0;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&v15, &re::IntrospectionInfo<re::FixedArray<int>>::get(BOOL)::info);
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
    xmmword_1EE186D08 = v14;
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

  return &re::IntrospectionInfo<re::FixedArray<int>>::get(BOOL)::info;
}

uint64_t *re::IntrospectionInfo<re::FixedArray<re::Vector3<float>>>::get(int a1, BOOL a2)
{
  {
    *re::IntrospectionFixedArrayBase::IntrospectionFixedArrayBase(&re::IntrospectionInfo<re::FixedArray<re::Vector3<float>>>::get(BOOL)::info) = &unk_1F5CB2778;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::FixedArray<re::Vector3<float>>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::FixedArray<re::Vector3<float>>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::FixedArray<re::Vector3<float>>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::FixedArray<re::Vector3<float>>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_Vector3F(1);
  if ((re::IntrospectionInfo<re::FixedArray<re::Vector3<float>>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::FixedArray<re::Vector3<float>>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::FixedArray<re::Vector3<float>>>::get(BOOL)::info, 0);
    qword_1EE186E60 = 0x1800000004;
    dword_1EE186E68 = v8;
    word_1EE186E6C = 0;
    *&xmmword_1EE186E70 = 0;
    *(&xmmword_1EE186E70 + 1) = 0xFFFFFFFFLL;
    qword_1EE186E80 = v7;
    unk_1EE186E88 = 0;
    re::IntrospectionInfo<re::FixedArray<re::Vector3<float>>>::get(BOOL)::info = &unk_1F5CB2778;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&v15, &re::IntrospectionInfo<re::FixedArray<re::Vector3<float>>>::get(BOOL)::info);
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
    xmmword_1EE186E70 = v14;
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

  return &re::IntrospectionInfo<re::FixedArray<re::Vector3<float>>>::get(BOOL)::info;
}

void *re::allocInfo_DynamicRegisterTable(re *this)
{
  if ((atomic_load_explicit(&qword_1EE191000, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191000))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1911A0, "DynamicRegisterTable");
    __cxa_guard_release(&qword_1EE191000);
  }

  return &unk_1EE1911A0;
}

void re::initInfo_DynamicRegisterTable(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v39[0] = 0x52D273DBBD26DA18;
  v39[1] = "DynamicRegisterTable";
  if (v39[0])
  {
    if (v39[0])
    {
    }
  }

  *(this + 2) = v40;
  if ((atomic_load_explicit(&qword_1EE191008, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191008))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicArray<int>>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "registerInt32s";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE191038 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "registerUInt32s";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x2800000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE191040 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "registerFloats";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x5000000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE191048 = v18;
    v19 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::Matrix3x3<float>>>::get(v19, v20);
    v21 = (*(*v19 + 32))(v19, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "registerMatrix3x3s";
    *(v21 + 16) = qword_1EE191078;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x7800000004;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE191050 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::IntrospectionInfo<re::DynamicArray<re::Matrix4x4<float>>>::get(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "registerMatrix4x4s";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0xA000000005;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE191058 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::IntrospectionInfo<re::DynamicArray<re::Quaternion<float>>>::get(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "registerQuaternions";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0xC800000006;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE191060 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::IntrospectionInfo<re::DynamicArray<re::Vector2<float>>>::get(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "registerVector2s";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0xF000000007;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE191068 = v33;
    v34 = re::introspectionAllocator();
    v36 = re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(1, v35);
    v37 = (*(*v34 + 32))(v34, 72, 8);
    *v37 = 1;
    *(v37 + 8) = "registerVector3s";
    *(v37 + 16) = v36;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0x11800000008;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    qword_1EE191070 = v37;
    __cxa_guard_release(&qword_1EE191008);
  }

  *(this + 2) = 0x14000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 8;
  *(this + 8) = &qword_1EE191038;
  *(this + 9) = re::internal::defaultConstruct<re::DynamicRegisterTable>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::DynamicRegisterTable>;
  *(this + 13) = re::internal::defaultConstructV2<re::DynamicRegisterTable>;
  *(this + 14) = re::internal::defaultDestructV2<re::DynamicRegisterTable>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v38 = v40;
}

uint64_t *re::IntrospectionInfo<re::DynamicArray<int>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&re::IntrospectionInfo<re::DynamicArray<int>>::get(BOOL)::info) = &unk_1F5CB2810;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::DynamicArray<int>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::DynamicArray<int>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::DynamicArray<int>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::DynamicArray<int>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_int(1, a2);
  if ((re::IntrospectionInfo<re::DynamicArray<int>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::DynamicArray<int>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<int>>::get(BOOL)::info, 0);
    qword_1EE1867E8 = 0x2800000003;
    dword_1EE1867F0 = v8;
    word_1EE1867F4 = 0;
    *&xmmword_1EE1867F8 = 0;
    *(&xmmword_1EE1867F8 + 1) = 0xFFFFFFFFLL;
    qword_1EE186808 = v7;
    unk_1EE186810 = 0;
    re::IntrospectionInfo<re::DynamicArray<int>>::get(BOOL)::info = &unk_1F5CB2810;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&v15, &re::IntrospectionInfo<re::DynamicArray<int>>::get(BOOL)::info);
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
    xmmword_1EE1867F8 = v14;
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

  return &re::IntrospectionInfo<re::DynamicArray<int>>::get(BOOL)::info;
}

void re::IntrospectionInfo<re::DynamicArray<re::Matrix3x3<float>>>::get(uint64_t a1, BOOL a2)
{
  if ((atomic_load_explicit(&qword_1EE191030, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191030))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(qword_1EE191078);
    qword_1EE191078[0] = &unk_1F5CB28A8;
    __cxa_guard_release(&qword_1EE191030);
  }

  if ((byte_1EE190FFA & 1) == 0)
  {
    v2 = re::introspect_Matrix3x3F(1);
    if ((byte_1EE190FFA & 1) == 0)
    {
      v3 = v2;
      byte_1EE190FFA = 1;
      v4 = *(v2 + 24);
      ArcSharedObject::ArcSharedObject(qword_1EE191078, 0);
      unk_1EE191088 = 0x2800000003;
      unk_1EE191090 = v4;
      word_1EE191094 = 0;
      *&xmmword_1EE191098 = 0;
      *(&xmmword_1EE191098 + 1) = 0xFFFFFFFFLL;
      unk_1EE1910A8 = v3;
      unk_1EE1910B0 = 0;
      qword_1EE191078[0] = &unk_1F5CB28A8;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&v14, qword_1EE191078);
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
        re::TypeBuilder::setConstructor(&v14, re::TypeBuilderHelper::registerDynamicArray<re::Matrix3x3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v14, re::TypeBuilderHelper::registerDynamicArray<re::Matrix3x3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v14, 1);
        re::TypeBuilder::setListAccessors(&v14, re::TypeBuilderHelper::registerDynamicArray<re::Matrix3x3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Matrix3x3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v14, re::TypeBuilderHelper::registerDynamicArray<re::Matrix3x3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v14, re::TypeBuilderHelper::registerDynamicArray<re::Matrix3x3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Matrix3x3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Matrix3x3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE191098 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

uint64_t *re::IntrospectionInfo<re::DynamicArray<re::Matrix4x4<float>>>::get(int a1, BOOL a2)
{
  {
    *re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&re::IntrospectionInfo<re::DynamicArray<re::Matrix4x4<float>>>::get(BOOL)::info) = &unk_1F5CB2940;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::DynamicArray<re::Matrix4x4<float>>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::Matrix4x4<float>>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::DynamicArray<re::Matrix4x4<float>>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::Matrix4x4<float>>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_Matrix4x4F(1);
  if ((re::IntrospectionInfo<re::DynamicArray<re::Matrix4x4<float>>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::DynamicArray<re::Matrix4x4<float>>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<re::Matrix4x4<float>>>::get(BOOL)::info, 0);
    qword_1EE186950 = 0x2800000003;
    dword_1EE186958 = v8;
    word_1EE18695C = 0;
    *&xmmword_1EE186960 = 0;
    *(&xmmword_1EE186960 + 1) = 0xFFFFFFFFLL;
    qword_1EE186970 = v7;
    unk_1EE186978 = 0;
    re::IntrospectionInfo<re::DynamicArray<re::Matrix4x4<float>>>::get(BOOL)::info = &unk_1F5CB2940;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&v15, &re::IntrospectionInfo<re::DynamicArray<re::Matrix4x4<float>>>::get(BOOL)::info);
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
    xmmword_1EE186960 = v14;
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

  return &re::IntrospectionInfo<re::DynamicArray<re::Matrix4x4<float>>>::get(BOOL)::info;
}

uint64_t *re::IntrospectionInfo<re::DynamicArray<re::Quaternion<float>>>::get(int a1, BOOL a2)
{
  {
    *re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&re::IntrospectionInfo<re::DynamicArray<re::Quaternion<float>>>::get(BOOL)::info) = &unk_1F5CB29D8;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::DynamicArray<re::Quaternion<float>>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::Quaternion<float>>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::DynamicArray<re::Quaternion<float>>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::Quaternion<float>>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_QuaternionF(1);
  if ((re::IntrospectionInfo<re::DynamicArray<re::Quaternion<float>>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::DynamicArray<re::Quaternion<float>>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<re::Quaternion<float>>>::get(BOOL)::info, 0);
    qword_1EE186C68 = 0x2800000003;
    dword_1EE186C70 = v8;
    word_1EE186C74 = 0;
    *&xmmword_1EE186C78 = 0;
    *(&xmmword_1EE186C78 + 1) = 0xFFFFFFFFLL;
    qword_1EE186C88 = v7;
    unk_1EE186C90 = 0;
    re::IntrospectionInfo<re::DynamicArray<re::Quaternion<float>>>::get(BOOL)::info = &unk_1F5CB29D8;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&v15, &re::IntrospectionInfo<re::DynamicArray<re::Quaternion<float>>>::get(BOOL)::info);
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
    xmmword_1EE186C78 = v14;
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

  return &re::IntrospectionInfo<re::DynamicArray<re::Quaternion<float>>>::get(BOOL)::info;
}

uint64_t *re::IntrospectionInfo<re::DynamicArray<re::Vector2<float>>>::get(int a1, BOOL a2)
{
  {
    *re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&re::IntrospectionInfo<re::DynamicArray<re::Vector2<float>>>::get(BOOL)::info) = &unk_1F5CB2A70;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::DynamicArray<re::Vector2<float>>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::Vector2<float>>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::DynamicArray<re::Vector2<float>>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::Vector2<float>>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_Vector2F(1);
  if ((re::IntrospectionInfo<re::DynamicArray<re::Vector2<float>>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::DynamicArray<re::Vector2<float>>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<re::Vector2<float>>>::get(BOOL)::info, 0);
    qword_1EE186A70 = 0x2800000003;
    dword_1EE186A78 = v8;
    word_1EE186A7C = 0;
    *&xmmword_1EE186A80 = 0;
    *(&xmmword_1EE186A80 + 1) = 0xFFFFFFFFLL;
    qword_1EE186A90 = v7;
    unk_1EE186A98 = 0;
    re::IntrospectionInfo<re::DynamicArray<re::Vector2<float>>>::get(BOOL)::info = &unk_1F5CB2A70;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&v15, &re::IntrospectionInfo<re::DynamicArray<re::Vector2<float>>>::get(BOOL)::info);
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
    xmmword_1EE186A80 = v14;
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

  return &re::IntrospectionInfo<re::DynamicArray<re::Vector2<float>>>::get(BOOL)::info;
}

uint64_t *re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(int a1, BOOL a2)
{
  {
    *re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(BOOL)::info) = &unk_1F5CB2B08;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_Vector3F(1);
  if ((re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(BOOL)::info, 0);
    qword_1EE186A28 = 0x2800000003;
    dword_1EE186A30 = v8;
    word_1EE186A34 = 0;
    *&xmmword_1EE186A38 = 0;
    *(&xmmword_1EE186A38 + 1) = 0xFFFFFFFFLL;
    qword_1EE186A48 = v7;
    unk_1EE186A50 = 0;
    re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(BOOL)::info = &unk_1F5CB2B08;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&v15, &re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(BOOL)::info);
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
    xmmword_1EE186A38 = v14;
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

  return &re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(BOOL)::info;
}

double re::internal::defaultConstruct<re::DynamicRegisterTable>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 312) = 0;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0;
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
  return result;
}

uint64_t re::internal::defaultDestruct<re::DynamicRegisterTable>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a3 + 280);
  re::DynamicArray<unsigned long>::deinit(a3 + 240);
  re::DynamicArray<unsigned long>::deinit(a3 + 200);
  re::DynamicArray<unsigned long>::deinit(a3 + 160);
  re::DynamicArray<unsigned long>::deinit(a3 + 120);
  re::DynamicArray<unsigned long>::deinit(a3 + 80);
  re::DynamicArray<unsigned long>::deinit(a3 + 40);

  return re::DynamicArray<unsigned long>::deinit(a3);
}

double re::internal::defaultConstructV2<re::DynamicRegisterTable>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 312) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 224) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::DynamicRegisterTable>(uint64_t a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 280);
  re::DynamicArray<unsigned long>::deinit(a1 + 240);
  re::DynamicArray<unsigned long>::deinit(a1 + 200);
  re::DynamicArray<unsigned long>::deinit(a1 + 160);
  re::DynamicArray<unsigned long>::deinit(a1 + 120);
  re::DynamicArray<unsigned long>::deinit(a1 + 80);
  re::DynamicArray<unsigned long>::deinit(a1 + 40);

  return re::DynamicArray<unsigned long>::deinit(a1);
}

uint64_t *re::introspect_EvaluationRegisterType(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE191010, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE191018, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191018))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1910B8, "EvaluationRegisterType", 1, 1, 1, 1);
      qword_1EE1910B8 = &unk_1F5D0C658;
      qword_1EE1910F8 = &re::introspect_EvaluationRegisterType(BOOL)::enumTable;
      dword_1EE1910C8 = 9;
      __cxa_guard_release(&qword_1EE191018);
    }

    if (v2)
    {
      if (_MergedGlobals_24)
      {
        return &qword_1EE1910B8;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v60);
      v3 = _MergedGlobals_24;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v60);
      if (v3)
      {
        return &qword_1EE1910B8;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (_MergedGlobals_24)
      {
        goto LABEL_46;
      }
    }

    _MergedGlobals_24 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1910B8, a2);
    v57 = 0x79BBFE2840B26BF2;
    v58 = "EvaluationRegisterType";
    v61 = 0x31CD534126;
    v62 = "uint8_t";
    v9 = v60[0];
    v10 = v60[1];
    if (v61)
    {
      if (v61)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v58);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v56);
    __break(1u);
LABEL_49:
    if (__cxa_guard_acquire(&qword_1EE191010))
    {
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 0;
      *(v35 + 16) = "EvaluationRegisterTypeInt32";
      qword_1EE191148 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 1;
      *(v37 + 16) = "EvaluationRegisterTypeUInt32";
      qword_1EE191150 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 2;
      *(v39 + 16) = "EvaluationRegisterTypeFloat";
      qword_1EE191158 = v39;
      v40 = re::introspectionAllocator();
      v41 = (*(*v40 + 32))(v40, 24, 8);
      *v41 = 1;
      *(v41 + 8) = 3;
      *(v41 + 16) = "EvaluationRegisterTypeMatrix3x3";
      qword_1EE191160 = v41;
      v42 = re::introspectionAllocator();
      v43 = (*(*v42 + 32))(v42, 24, 8);
      *v43 = 1;
      *(v43 + 8) = 4;
      *(v43 + 16) = "EvaluationRegisterTypeMatrix4x4";
      qword_1EE191168 = v43;
      v44 = re::introspectionAllocator();
      v45 = (*(*v44 + 32))(v44, 24, 8);
      *v45 = 1;
      *(v45 + 8) = 5;
      *(v45 + 16) = "EvaluationRegisterTypeQuaternion";
      qword_1EE191170 = v45;
      v46 = re::introspectionAllocator();
      v47 = (*(*v46 + 32))(v46, 24, 8);
      *v47 = 1;
      *(v47 + 8) = 6;
      *(v47 + 16) = "EvaluationRegisterTypeVector2";
      qword_1EE191178 = v47;
      v48 = re::introspectionAllocator();
      v49 = (*(*v48 + 32))(v48, 24, 8);
      *v49 = 1;
      *(v49 + 8) = 7;
      *(v49 + 16) = "EvaluationRegisterTypeVector3";
      qword_1EE191180 = v49;
      v50 = re::introspectionAllocator();
      v51 = (*(*v50 + 32))(v50, 24, 8);
      *v51 = 1;
      *(v51 + 8) = 8;
      *(v51 + 16) = "EvaluationRegisterTypeCount";
      qword_1EE191188 = v51;
      v52 = re::introspectionAllocator();
      v53 = (*(*v52 + 32))(v52, 24, 8);
      *v53 = 1;
      *(v53 + 8) = 255;
      *(v53 + 16) = "EvaluationRegisterTypeUnknown";
      qword_1EE191190 = v53;
      v54 = re::introspectionAllocator();
      v55 = (*(*v54 + 32))(v54, 24, 8);
      *v55 = 1;
      *(v55 + 8) = 254;
      *(v55 + 16) = "EvaluationRegisterTypeCallback";
      qword_1EE191198 = v55;
      __cxa_guard_release(&qword_1EE191010);
    }
  }

  v11 = qword_1EE1910F8;
  v61 = v9;
  v62 = v10;
  re::TypeBuilder::beginEnumType(v60, &v57, 1, 1, &v61);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v59.var0 = 2 * v16;
        v59.var1 = v15;
        re::TypeBuilder::addEnumConstant(v60, v20, &v59);
        if (*&v59.var0)
        {
          if (*&v59.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v59.var0 = 2 * v25;
          v59.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v60, v29, &v59);
          if (*&v59.var0)
          {
            if (*&v59.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v60, v31);
  xmmword_1EE1910D8 = v59;
  if (v57)
  {
    if (v57)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE1910B8;
}

uint64_t *re::introspect_EvaluationCommand(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE191020, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE191028, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191028))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE191100, "EvaluationCommand", 4, 4, 1, 1);
      qword_1EE191100 = &unk_1F5D0C658;
      qword_1EE191140 = &re::introspect_EvaluationCommand(BOOL)::enumTable;
      dword_1EE191110 = 9;
      __cxa_guard_release(&qword_1EE191028);
    }

    if (v2)
    {
      if (byte_1EE190FF9)
      {
        return &qword_1EE191100;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v154);
      v3 = byte_1EE190FF9;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v154);
      if (v3)
      {
        return &qword_1EE191100;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (byte_1EE190FF9)
      {
        goto LABEL_46;
      }
    }

    byte_1EE190FF9 = 1;
    re::IntrospectionRegistry::add(&qword_1EE191100, a2);
    v151 = 0x59C43F7855EEA89ELL;
    v152 = "EvaluationCommand";
    v155 = 0x607DD0F01DCLL;
    v156 = "uint32_t";
    v9 = v154[0];
    v10 = v154[1];
    if (v155)
    {
      if (v155)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v152);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v150);
    __break(1u);
LABEL_49:
    if (__cxa_guard_acquire(&qword_1EE191020))
    {
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 8;
      *(v35 + 16) = "AddVector3";
      qword_1EE191230 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 9;
      *(v37 + 16) = "AddVector2";
      qword_1EE191238 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 10;
      *(v39 + 16) = "ComponentLerpVector3";
      qword_1EE191240 = v39;
      v40 = re::introspectionAllocator();
      v41 = (*(*v40 + 32))(v40, 24, 8);
      *v41 = 1;
      *(v41 + 8) = 11;
      *(v41 + 16) = "LerpVector3";
      qword_1EE191248 = v41;
      v42 = re::introspectionAllocator();
      v43 = (*(*v42 + 32))(v42, 24, 8);
      *v43 = 1;
      *(v43 + 8) = 12;
      *(v43 + 16) = "SlerpQuaternion";
      qword_1EE191250 = v43;
      v44 = re::introspectionAllocator();
      v45 = (*(*v44 + 32))(v44, 24, 8);
      *v45 = 1;
      *(v45 + 8) = 13;
      *(v45 + 16) = "ConvertIntrinsicEulerToQuaternion";
      qword_1EE191258 = v45;
      v46 = re::introspectionAllocator();
      v47 = (*(*v46 + 32))(v46, 24, 8);
      *v47 = 1;
      *(v47 + 8) = 14;
      *(v47 + 16) = "ConvertQuaternionToIntrinsicEuler";
      qword_1EE191260 = v47;
      v48 = re::introspectionAllocator();
      v49 = (*(*v48 + 32))(v48, 24, 8);
      *v49 = 1;
      *(v49 + 8) = 15;
      *(v49 + 16) = "CrossVector3";
      qword_1EE191268 = v49;
      v50 = re::introspectionAllocator();
      v51 = (*(*v50 + 32))(v50, 24, 8);
      *v51 = 1;
      *(v51 + 8) = 16;
      *(v51 + 16) = "DivideQuaternion";
      qword_1EE191270 = v51;
      v52 = re::introspectionAllocator();
      v53 = (*(*v52 + 32))(v52, 24, 8);
      *v53 = 1;
      *(v53 + 8) = 18;
      *(v53 + 16) = "ConjugateQuaternion";
      qword_1EE191278 = v53;
      v54 = re::introspectionAllocator();
      v55 = (*(*v54 + 32))(v54, 24, 8);
      *v55 = 1;
      *(v55 + 8) = 19;
      *(v55 + 16) = "InvertMatrix3x3";
      qword_1EE191280 = v55;
      v56 = re::introspectionAllocator();
      v57 = (*(*v56 + 32))(v56, 24, 8);
      *v57 = 1;
      *(v57 + 8) = 20;
      *(v57 + 16) = "InvertMatrix4x4";
      qword_1EE191288 = v57;
      v58 = re::introspectionAllocator();
      v59 = (*(*v58 + 32))(v58, 24, 8);
      *v59 = 1;
      *(v59 + 8) = 21;
      *(v59 + 16) = "InvertQuaternion";
      qword_1EE191290 = v59;
      v60 = re::introspectionAllocator();
      v61 = (*(*v60 + 32))(v60, 24, 8);
      *v61 = 1;
      *(v61 + 8) = 22;
      *(v61 + 16) = "DotVector3";
      qword_1EE191298 = v61;
      v62 = re::introspectionAllocator();
      v63 = (*(*v62 + 32))(v62, 24, 8);
      *v63 = 1;
      *(v63 + 8) = 23;
      *(v63 + 16) = "DotVector2";
      qword_1EE1912A0 = v63;
      v64 = re::introspectionAllocator();
      v65 = (*(*v64 + 32))(v64, 24, 8);
      *v65 = 1;
      *(v65 + 8) = 24;
      *(v65 + 16) = "MultiplyQuaternion";
      qword_1EE1912A8 = v65;
      v66 = re::introspectionAllocator();
      v67 = (*(*v66 + 32))(v66, 24, 8);
      *v67 = 1;
      *(v67 + 8) = 25;
      *(v67 + 16) = "MultiplyVector3";
      qword_1EE1912B0 = v67;
      v68 = re::introspectionAllocator();
      v69 = (*(*v68 + 32))(v68, 24, 8);
      *v69 = 1;
      *(v69 + 8) = 27;
      *(v69 + 16) = "MultiplyMatrix3x3";
      qword_1EE1912B8 = v69;
      v70 = re::introspectionAllocator();
      v71 = (*(*v70 + 32))(v70, 24, 8);
      *v71 = 1;
      *(v71 + 8) = 28;
      *(v71 + 16) = "MultiplyMatrix4x4";
      qword_1EE1912C0 = v71;
      v72 = re::introspectionAllocator();
      v73 = (*(*v72 + 32))(v72, 24, 8);
      *v73 = 1;
      *(v73 + 8) = 29;
      *(v73 + 16) = "NormalizeVector3";
      qword_1EE1912C8 = v73;
      v74 = re::introspectionAllocator();
      v75 = (*(*v74 + 32))(v74, 24, 8);
      *v75 = 1;
      *(v75 + 8) = 30;
      *(v75 + 16) = "RotateQuaternionVector3";
      qword_1EE1912D0 = v75;
      v76 = re::introspectionAllocator();
      v77 = (*(*v76 + 32))(v76, 24, 8);
      *v77 = 1;
      *(v77 + 8) = 31;
      *(v77 + 16) = "SubtractVector3";
      qword_1EE1912D8 = v77;
      v78 = re::introspectionAllocator();
      v79 = (*(*v78 + 32))(v78, 24, 8);
      *v79 = 1;
      *(v79 + 8) = 32;
      *(v79 + 16) = "SubtractVector2";
      qword_1EE1912E0 = v79;
      v80 = re::introspectionAllocator();
      v81 = (*(*v80 + 32))(v80, 24, 8);
      *v81 = 1;
      *(v81 + 8) = 33;
      *(v81 + 16) = "TransposeMatrix3x3";
      qword_1EE1912E8 = v81;
      v82 = re::introspectionAllocator();
      v83 = (*(*v82 + 32))(v82, 24, 8);
      *v83 = 1;
      *(v83 + 8) = 34;
      *(v83 + 16) = "ExtractMinorMatrix4x4";
      qword_1EE1912F0 = v83;
      v84 = re::introspectionAllocator();
      v85 = (*(*v84 + 32))(v84, 24, 8);
      *v85 = 1;
      *(v85 + 8) = 35;
      *(v85 + 16) = "ExtractRotationMatrix3x3";
      qword_1EE1912F8 = v85;
      v86 = re::introspectionAllocator();
      v87 = (*(*v86 + 32))(v86, 24, 8);
      *v87 = 1;
      *(v87 + 8) = 36;
      *(v87 + 16) = "ExtractScaleMatrix3x3";
      qword_1EE191300 = v87;
      v88 = re::introspectionAllocator();
      v89 = (*(*v88 + 32))(v88, 24, 8);
      *v89 = 1;
      *(v89 + 8) = 37;
      *(v89 + 16) = "ExtractTranslationMatrix4x4";
      qword_1EE191308 = v89;
      v90 = re::introspectionAllocator();
      v91 = (*(*v90 + 32))(v90, 24, 8);
      *v91 = 1;
      *(v91 + 8) = 38;
      *(v91 + 16) = "MakeColumnsMatrix3x3";
      qword_1EE191310 = v91;
      v92 = re::introspectionAllocator();
      v93 = (*(*v92 + 32))(v92, 24, 8);
      *v93 = 1;
      *(v93 + 8) = 39;
      *(v93 + 16) = "MakeScaleRotationMatrix3x3";
      qword_1EE191318 = v93;
      v94 = re::introspectionAllocator();
      v95 = (*(*v94 + 32))(v94, 24, 8);
      *v95 = 1;
      *(v95 + 8) = 40;
      *(v95 + 16) = "MakeMinorTranslationMatrix4x4";
      qword_1EE191320 = v95;
      v96 = re::introspectionAllocator();
      v97 = (*(*v96 + 32))(v96, 24, 8);
      *v97 = 1;
      *(v97 + 8) = 41;
      *(v97 + 16) = "TransformDirectionMatrix3x3Vector3";
      qword_1EE191328 = v97;
      v98 = re::introspectionAllocator();
      v99 = (*(*v98 + 32))(v98, 24, 8);
      *v99 = 1;
      *(v99 + 8) = 42;
      *(v99 + 16) = "TransformDirectionMatrix4x4Vector3";
      qword_1EE191330 = v99;
      v100 = re::introspectionAllocator();
      v101 = (*(*v100 + 32))(v100, 24, 8);
      *v101 = 1;
      *(v101 + 8) = 43;
      *(v101 + 16) = "TransformPositionMatrix4x4Vector3";
      qword_1EE191338 = v101;
      v102 = re::introspectionAllocator();
      v103 = (*(*v102 + 32))(v102, 24, 8);
      *v103 = 1;
      *(v103 + 8) = 44;
      *(v103 + 16) = "DotQuaternion";
      qword_1EE191340 = v103;
      v104 = re::introspectionAllocator();
      v105 = (*(*v104 + 32))(v104, 24, 8);
      *v105 = 1;
      *(v105 + 8) = 45;
      *(v105 + 16) = "MakeAxisAngleQuaternion";
      qword_1EE191348 = v105;
      v106 = re::introspectionAllocator();
      v107 = (*(*v106 + 32))(v106, 24, 8);
      *v107 = 1;
      *(v107 + 8) = 46;
      *(v107 + 16) = "MakeVector3FloatQuaternion";
      qword_1EE191350 = v107;
      v108 = re::introspectionAllocator();
      v109 = (*(*v108 + 32))(v108, 24, 8);
      *v109 = 1;
      *(v109 + 8) = 47;
      *(v109 + 16) = "MakeVector3";
      qword_1EE191358 = v109;
      v110 = re::introspectionAllocator();
      v111 = (*(*v110 + 32))(v110, 24, 8);
      *v111 = 1;
      *(v111 + 8) = 48;
      *(v111 + 16) = "MakeVector2";
      qword_1EE191360 = v111;
      v112 = re::introspectionAllocator();
      v113 = (*(*v112 + 32))(v112, 24, 8);
      *v113 = 1;
      *(v113 + 8) = 49;
      *(v113 + 16) = "AddFloat";
      qword_1EE191368 = v113;
      v114 = re::introspectionAllocator();
      v115 = (*(*v114 + 32))(v114, 24, 8);
      *v115 = 1;
      *(v115 + 8) = 50;
      *(v115 + 16) = "SubtractFloat";
      qword_1EE191370 = v115;
      v116 = re::introspectionAllocator();
      v117 = (*(*v116 + 32))(v116, 24, 8);
      *v117 = 1;
      *(v117 + 8) = 51;
      *(v117 + 16) = "MultiplyFloat";
      qword_1EE191378 = v117;
      v118 = re::introspectionAllocator();
      v119 = (*(*v118 + 32))(v118, 24, 8);
      *v119 = 1;
      *(v119 + 8) = 52;
      *(v119 + 16) = "DivideFloat";
      qword_1EE191380 = v119;
      v120 = re::introspectionAllocator();
      v121 = (*(*v120 + 32))(v120, 24, 8);
      *v121 = 1;
      *(v121 + 8) = 53;
      *(v121 + 16) = "SinFloat";
      qword_1EE191388 = v121;
      v122 = re::introspectionAllocator();
      v123 = (*(*v122 + 32))(v122, 24, 8);
      *v123 = 1;
      *(v123 + 8) = 54;
      *(v123 + 16) = "CosFloat";
      qword_1EE191390 = v123;
      v124 = re::introspectionAllocator();
      v125 = (*(*v124 + 32))(v124, 24, 8);
      *v125 = 1;
      *(v125 + 8) = 55;
      *(v125 + 16) = "TanFloat";
      qword_1EE191398 = v125;
      v126 = re::introspectionAllocator();
      v127 = (*(*v126 + 32))(v126, 24, 8);
      *v127 = 1;
      *(v127 + 8) = 56;
      *(v127 + 16) = "AsinFloat";
      qword_1EE1913A0 = v127;
      v128 = re::introspectionAllocator();
      v129 = (*(*v128 + 32))(v128, 24, 8);
      *v129 = 1;
      *(v129 + 8) = 57;
      *(v129 + 16) = "AcosFloat";
      qword_1EE1913A8 = v129;
      v130 = re::introspectionAllocator();
      v131 = (*(*v130 + 32))(v130, 24, 8);
      *v131 = 1;
      *(v131 + 8) = 58;
      *(v131 + 16) = "AtanFloat";
      qword_1EE1913B0 = v131;
      v132 = re::introspectionAllocator();
      v133 = (*(*v132 + 32))(v132, 24, 8);
      *v133 = 1;
      *(v133 + 8) = 59;
      *(v133 + 16) = "Atan2Float";
      qword_1EE1913B8 = v133;
      v134 = re::introspectionAllocator();
      v135 = (*(*v134 + 32))(v134, 24, 8);
      *v135 = 1;
      *(v135 + 8) = 60;
      *(v135 + 16) = "SelectFloat";
      qword_1EE1913C0 = v135;
      v136 = re::introspectionAllocator();
      v137 = (*(*v136 + 32))(v136, 24, 8);
      *v137 = 1;
      *(v137 + 8) = 61;
      *(v137 + 16) = "GreaterFloat";
      qword_1EE1913C8 = v137;
      v138 = re::introspectionAllocator();
      v139 = (*(*v138 + 32))(v138, 24, 8);
      *v139 = 1;
      *(v139 + 8) = 62;
      *(v139 + 16) = "GreaterEqualFloat";
      qword_1EE1913D0 = v139;
      v140 = re::introspectionAllocator();
      v141 = (*(*v140 + 32))(v140, 24, 8);
      *v141 = 1;
      *(v141 + 8) = 63;
      *(v141 + 16) = "LessFloat";
      qword_1EE1913D8 = v141;
      v142 = re::introspectionAllocator();
      v143 = (*(*v142 + 32))(v142, 24, 8);
      *v143 = 1;
      *(v143 + 8) = 64;
      *(v143 + 16) = "LessEqualFloat";
      qword_1EE1913E0 = v143;
      v144 = re::introspectionAllocator();
      v145 = (*(*v144 + 32))(v144, 24, 8);
      *v145 = 1;
      *(v145 + 8) = 65;
      *(v145 + 16) = "Int32IsEqual";
      qword_1EE1913E8 = v145;
      v146 = re::introspectionAllocator();
      v147 = (*(*v146 + 32))(v146, 24, 8);
      *v147 = 1;
      *(v147 + 8) = 66;
      *(v147 + 16) = "UInt32IsEqual";
      qword_1EE1913F0 = v147;
      v148 = re::introspectionAllocator();
      v149 = (*(*v148 + 32))(v148, 24, 8);
      *v149 = 1;
      *(v149 + 8) = 67;
      *(v149 + 16) = "FloatAlmostEqual";
      qword_1EE1913F8 = v149;
      __cxa_guard_release(&qword_1EE191020);
    }
  }

  v11 = qword_1EE191140;
  v155 = v9;
  v156 = v10;
  re::TypeBuilder::beginEnumType(v154, &v151, 1, 1, &v155);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v153.var0 = 2 * v16;
        v153.var1 = v15;
        re::TypeBuilder::addEnumConstant(v154, v20, &v153);
        if (*&v153.var0)
        {
          if (*&v153.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v153.var0 = 2 * v25;
          v153.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v154, v29, &v153);
          if (*&v153.var0)
          {
            if (*&v153.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v154, v31);
  xmmword_1EE191120 = v153;
  if (v151)
  {
    if (v151)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE191100;
}

void re::TypeBuilderHelper::registerFixedArray<int>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
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
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerFixedArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerFixedArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerFixedArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerFixedArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerFixedArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerFixedArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(a4, v10, a1);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionFixedArray<int>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionFixedArray<int>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionFixedArray<int>::construct(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void re::IntrospectionFixedArray<int>::init(uint64_t a1, void *a2, re *a3, int a4, unint64_t a5)
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

unint64_t re::IntrospectionFixedArray<int>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void *re::TypeBuilderHelper::registerFixedArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = a3;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);

  return re::FixedArray<CoreIKTransform>::deinit(a1);
}

void re::TypeBuilderHelper::registerFixedArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t *a1, void *a2, re::Allocator *a3, unint64_t a4)
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

unint64_t re::TypeBuilderHelper::registerFixedArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerFixedArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1)
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

uint64_t re::TypeBuilderHelper::registerFixedArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::TypeBuilderHelper::registerFixedArray<re::Vector3<float>>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
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
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerFixedArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerFixedArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerFixedArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerFixedArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerFixedArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(a4, v10, a1);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionFixedArray<re::Vector3<float>>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionFixedArray<re::Vector3<float>>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionFixedArray<re::Vector3<float>>::construct(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void re::IntrospectionFixedArray<re::Vector3<float>>::init(uint64_t a1, void *a2, re *a3, int a4, unint64_t a5)
{
  v26 = *MEMORY[0x1E69E9840];
  re::FixedArray<re::Vector3<float>>::init<>(a2, a3, a5);
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
      v10 += 16;
    }

    while (a5 != v11);
  }
}

unint64_t re::IntrospectionFixedArray<re::Vector3<float>>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 16) + 16 * a3;
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

  return *(a2 + 16) + 16 * a3;
}

void *re::TypeBuilderHelper::registerFixedArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = a3;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);

  return re::FixedArray<CoreIKTransform>::deinit(a1);
}

void re::TypeBuilderHelper::registerFixedArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t *a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);
  re::FixedArray<re::Vector3<float>>::init<>(a1, a3, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = a1[1];
    if (v9)
    {
      v10 = a1[2];
      v11 = 16 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 16;
        v11 -= 16;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerFixedArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 16) + 16 * a2;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1)
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
    return *(v2 + 16) + 16 * v1;
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<int>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
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
    re::TypeBuilder::beginListType(v10, a2, 1, 0x28uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(a4, v10, a1);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionDynamicArray<int>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<int>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<int>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<int>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<int>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<int>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<int>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<float>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<int>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10 = 0;
  re::DynamicArray<int>::add(this, &v10);
  v8 = (*(this + 4) + 4 * *(this + 2) - 4);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<int>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 4 * a3;
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

  return *(a2 + 32) + 4 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<int>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<int>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<float>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
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

unint64_t re::TypeBuilderHelper::registerDynamicArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 4 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 4 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<int>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::Matrix3x3<float>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::Matrix3x3<float>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::Matrix3x3<float>>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::Matrix3x3<float>>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::Matrix3x3<float>>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::Matrix3x3<float>>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::Matrix3x3<float>>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::Matrix3x3<float>>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::Matrix3x3<float>>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v8 = *(this + 2);
  if (v8 >= *(this + 1))
  {
    re::DynamicArray<re::Matrix3x3<float>>::growCapacity(this, v8 + 1);
    v8 = *(this + 2);
  }

  v9 = (*(this + 4) + 48 * v8);
  v9[1] = 0u;
  v9[2] = 0u;
  *v9 = 0u;
  v10 = *(this + 2);
  *(this + 2) = v10 + 1;
  ++*(this + 6);
  v11 = (*(this + 4) + 48 * v10);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v11);
  return v11;
}

unint64_t re::IntrospectionDynamicArray<re::Matrix3x3<float>>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void re::DynamicArray<re::Matrix3x3<float>>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::Matrix3x3<float>>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    if (a2 > v4)
    {
      v5 = 48 * (a2 - v4);
      if (v5 >= 1)
      {
        bzero((*(a1 + 32) + 48 * v4), 48 * (v5 / 0x30 - (v5 > 0x2F)) + 48);
      }
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::Matrix3x3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::Matrix3x3<float>>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::Matrix3x3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::Matrix3x3<float>>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::Matrix3x3<float>>::resize(a1, a4);
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

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::Matrix3x3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Matrix3x3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Matrix3x3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Matrix3x3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::Matrix4x4<float>>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
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
    re::TypeBuilder::beginListType(v10, a2, 1, 0x28uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(a4, v10, a1);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionDynamicArray<re::Matrix4x4<float>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::Matrix4x4<float>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::Matrix4x4<float>>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::Matrix4x4<float>>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::Matrix4x4<float>>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::Matrix4x4<float>>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::Matrix4x4<float>>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::Matrix4x4<float>>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::Matrix4x4<float>>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  memset(v10, 0, sizeof(v10));
  re::DynamicArray<re::Matrix4x4<float>>::add(this, v10);
  v8 = (*(this + 4) + (*(this + 2) << 6) - 64);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<re::Matrix4x4<float>>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + (a3 << 6);
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

  return *(a2 + 32) + (a3 << 6);
}

void re::DynamicArray<re::Matrix4x4<float>>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::Matrix4x4<float>>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    if (a2 > v4 && a2 > v4)
    {
      bzero((*(a1 + 32) + (v4 << 6)), (a2 - v4) << 6);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::Matrix4x4<float>>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::Matrix4x4<float>>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::Matrix4x4<float>>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = v9 << 6;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 64;
        v11 -= 64;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + (a2 << 6);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + (v5 << 6);
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::Quaternion<float>>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
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
    re::TypeBuilder::beginListType(v10, a2, 1, 0x28uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::Quaternion<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::Quaternion<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<re::Quaternion<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Quaternion<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<re::Quaternion<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<re::Quaternion<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Quaternion<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Quaternion<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(a4, v10, a1);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionDynamicArray<re::Quaternion<float>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::Quaternion<float>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::Quaternion<float>>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::Quaternion<float>>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::Quaternion<float>>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::Quaternion<float>>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::Quaternion<float>>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::Quaternion<float>>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::Quaternion<float>>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10 = xmmword_1E30474D0;
  re::DynamicArray<re::Vector3<float>>::add(this, &v10);
  v8 = (*(this + 4) + 16 * *(this + 2) - 16);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<re::Quaternion<float>>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 16 * a3;
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

  return *(a2 + 32) + 16 * a3;
}

void re::DynamicArray<re::Quaternion<float>>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::Quaternion<float>>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    if (a2 > v4 && a2 > v4)
    {
      memset_pattern16((*(a1 + 32) + 16 * v4), &xmmword_1E30474D0, 16 * (a2 - v4));
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::Quaternion<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::Quaternion<float>>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::Quaternion<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::Quaternion<float>>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::Quaternion<float>>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 16 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 16;
        v11 -= 16;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::Quaternion<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 16 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Quaternion<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Quaternion<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 16 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Quaternion<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::Vector2<float>>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
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
    re::TypeBuilder::beginListType(v10, a2, 1, 0x28uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::Vector2<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::Vector2<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<re::Vector2<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Vector2<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<re::Vector2<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<re::Vector2<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Vector2<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Vector2<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(a4, v10, a1);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionDynamicArray<re::Vector2<float>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::Vector2<float>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::Vector2<float>>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::Vector2<float>>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::Vector2<float>>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<unsigned long>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::Vector2<float>>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10 = 0;
  re::DynamicArray<unsigned long>::add(this, &v10);
  v8 = (*(this + 4) + 8 * *(this + 2) - 8);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<re::Vector2<float>>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 8 * a3;
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

  return *(a2 + 32) + 8 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::Vector2<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::Vector2<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<unsigned long>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
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

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::Vector2<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 8 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Vector2<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Vector2<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 8 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Vector2<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::Vector3<float>>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
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
    re::TypeBuilder::beginListType(v10, a2, 1, 0x28uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(a4, v10, a1);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionDynamicArray<re::Vector3<float>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::Vector3<float>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::Vector3<float>>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::Vector3<float>>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::Quaternion<float>>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::Vector3<float>>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::Quaternion<float>>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::Vector3<float>>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::Vector3<float>>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10 = 0u;
  re::DynamicArray<re::Vector3<float>>::add(this, &v10);
  v8 = (*(this + 4) + 16 * *(this + 2) - 16);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<re::Vector3<float>>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 16 * a3;
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

  return *(a2 + 32) + 16 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::Quaternion<float>>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::Quaternion<float>>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::Vector3<float>>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 16 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 16;
        v11 -= 16;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 16 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 16 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::Vector3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::PackedData::reserve(re::PackedData *this, size_t size)
{
  if (*(this + 1) < size)
  {
    memptr[5] = v2;
    memptr[6] = v3;
    v4 = size;
    memptr[0] = 0;
    malloc_type_posix_memalign(memptr, 0x10uLL, size, 0xAE8B065EuLL);
    v6 = memptr[0];
    v7 = *(this + 1);
    if (v7)
    {
      memcpy(memptr[0], v7, *this);
      free(*(this + 1));
    }

    *(this + 1) = v6;
    *(this + 1) = v4;
  }
}

void *re::introspect_FillMode(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "FillNone";
    re::introspect_FillMode(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = "FillForwards";
    qword_1EE1C6BC0 = v12;
    v13 = re::introspectionAllocator();
    v14 = (*(*v13 + 32))(v13, 24, 8);
    *v14 = 1;
    *(v14 + 8) = 2;
    *(v14 + 16) = "FillBackwards";
    qword_1EE1C6BC8 = v14;
    v15 = re::introspectionAllocator();
    v16 = (*(*v15 + 32))(v15, 24, 8);
    *v16 = 1;
    *(v16 + 8) = 3;
    *(v16 + 16) = "FillBoth";
    qword_1EE1C6BD0 = v16;
  }

  {
    v17 = re::IntrospectionBasic::IntrospectionBasic(&re::introspect_FillMode(BOOL)::info, "FillMode", 1, 1, 1, 1);
    *v17 = &unk_1F5D0C658;
    *(v17 + 8) = &re::introspect_FillMode(BOOL)::enumTable;
    *(v17 + 4) = 9;
  }

  if (v2)
  {
    if (re::introspect_FillMode(BOOL)::isInitialized)
    {
      return &re::introspect_FillMode(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v19);
    v3 = re::introspect_FillMode(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v19);
    if (v3)
    {
      return &re::introspect_FillMode(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::introspect_FillMode(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::introspect_FillMode(BOOL)::info;
    }
  }

  re::introspect_FillMode(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_FillMode(BOOL)::info, a2);
  v18[0] = 0x3ADB0C51BCCLL;
  v18[1] = "FillMode";
  xmmword_1EE1C6B90 = v19;
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::introspect_FillMode(BOOL)::info;
}

void re::internal::registerEnumType<re::FillMode>(re::TypeRegistry *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  *&v36.var0 = 6104748;
  v36.var1 = "char";
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

void *re::introspect_LoopBehavior(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "Constant";
    re::introspect_LoopBehavior(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = "Repeat";
    qword_1EE1C6728 = v12;
    v13 = re::introspectionAllocator();
    v14 = (*(*v13 + 32))(v13, 24, 8);
    *v14 = 1;
    *(v14 + 8) = 2;
    *(v14 + 16) = "RepeatCumulative";
    qword_1EE1C6730 = v14;
    v15 = re::introspectionAllocator();
    v16 = (*(*v15 + 32))(v15, 24, 8);
    *v16 = 1;
    *(v16 + 8) = 3;
    *(v16 + 16) = "AutoReverse";
    qword_1EE1C6738 = v16;
  }

  {
    v17 = re::IntrospectionBasic::IntrospectionBasic(&re::introspect_LoopBehavior(BOOL)::info, "LoopBehavior", 1, 1, 1, 1);
    *v17 = &unk_1F5D0C658;
    *(v17 + 8) = &re::introspect_LoopBehavior(BOOL)::enumTable;
    *(v17 + 4) = 9;
  }

  if (v2)
  {
    if (re::introspect_LoopBehavior(BOOL)::isInitialized)
    {
      return &re::introspect_LoopBehavior(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v19);
    v3 = re::introspect_LoopBehavior(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v19);
    if (v3)
    {
      return &re::introspect_LoopBehavior(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::introspect_LoopBehavior(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::introspect_LoopBehavior(BOOL)::info;
    }
  }

  re::introspect_LoopBehavior(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_LoopBehavior(BOOL)::info, a2);
  v18[0] = 0x3834E1F9FF309A6CLL;
  v18[1] = "LoopBehavior";
  xmmword_1EE1C66F8 = v19;
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::introspect_LoopBehavior(BOOL)::info;
}

uint64_t *re::introspect_TimelineType(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE191408, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE191410, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191410))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE191418, "TimelineType", 4, 4, 1, 1);
      qword_1EE191418 = &unk_1F5D0C658;
      qword_1EE191458 = &re::introspect_TimelineType(BOOL)::enumTable;
      dword_1EE191428 = 9;
      __cxa_guard_release(&qword_1EE191410);
    }

    if (v2)
    {
      if (_MergedGlobals_25)
      {
        return &qword_1EE191418;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v140);
      v3 = _MergedGlobals_25;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v140);
      if (v3)
      {
        return &qword_1EE191418;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (_MergedGlobals_25)
      {
        goto LABEL_46;
      }
    }

    _MergedGlobals_25 = 1;
    re::IntrospectionRegistry::add(&qword_1EE191418, a2);
    v137 = 0x3DB5CF76C26C4676;
    v138 = "TimelineType";
    v141 = 208862;
    v142 = "int";
    v9 = v140[0];
    v10 = v140[1];
    if (v141)
    {
      if (v141)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v138);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v136);
    __break(1u);
LABEL_49:
    if (__cxa_guard_acquire(&qword_1EE191408))
    {
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 1;
      *(v35 + 16) = "TimelineClip";
      qword_1EE191460 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 2;
      *(v37 + 16) = "TimelineGroup";
      qword_1EE191468 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 3;
      *(v39 + 16) = "FloatAnimationClip";
      qword_1EE191470 = v39;
      v40 = re::introspectionAllocator();
      v41 = (*(*v40 + 32))(v40, 24, 8);
      *v41 = 1;
      *(v41 + 8) = 4;
      *(v41 + 16) = "DoubleAnimationClip";
      qword_1EE191478 = v41;
      v42 = re::introspectionAllocator();
      v43 = (*(*v42 + 32))(v42, 24, 8);
      *v43 = 1;
      *(v43 + 8) = 5;
      *(v43 + 16) = "Vector2FAnimationClip";
      qword_1EE191480 = v43;
      v44 = re::introspectionAllocator();
      v45 = (*(*v44 + 32))(v44, 24, 8);
      *v45 = 1;
      *(v45 + 8) = 6;
      *(v45 + 16) = "Vector3FAnimationClip";
      qword_1EE191488 = v45;
      v46 = re::introspectionAllocator();
      v47 = (*(*v46 + 32))(v46, 24, 8);
      *v47 = 1;
      *(v47 + 8) = 7;
      *(v47 + 16) = "Vector4FAnimationClip";
      qword_1EE191490 = v47;
      v48 = re::introspectionAllocator();
      v49 = (*(*v48 + 32))(v48, 24, 8);
      *v49 = 1;
      *(v49 + 8) = 8;
      *(v49 + 16) = "QuaternionFAnimationClip";
      qword_1EE191498 = v49;
      v50 = re::introspectionAllocator();
      v51 = (*(*v50 + 32))(v50, 24, 8);
      *v51 = 1;
      *(v51 + 8) = 9;
      *(v51 + 16) = "SRTAnimationClip";
      qword_1EE1914A0 = v51;
      v52 = re::introspectionAllocator();
      v53 = (*(*v52 + 32))(v52, 24, 8);
      *v53 = 1;
      *(v53 + 8) = 10;
      *(v53 + 16) = "SkeletalPoseAnimationClip";
      qword_1EE1914A8 = v53;
      v54 = re::introspectionAllocator();
      v55 = (*(*v54 + 32))(v54, 24, 8);
      *v55 = 1;
      *(v55 + 8) = 11;
      *(v55 + 16) = "FloatAnimation";
      qword_1EE1914B0 = v55;
      v56 = re::introspectionAllocator();
      v57 = (*(*v56 + 32))(v56, 24, 8);
      *v57 = 1;
      *(v57 + 8) = 12;
      *(v57 + 16) = "DoubleAnimation";
      qword_1EE1914B8 = v57;
      v58 = re::introspectionAllocator();
      v59 = (*(*v58 + 32))(v58, 24, 8);
      *v59 = 1;
      *(v59 + 8) = 13;
      *(v59 + 16) = "Vector2FAnimation";
      qword_1EE1914C0 = v59;
      v60 = re::introspectionAllocator();
      v61 = (*(*v60 + 32))(v60, 24, 8);
      *v61 = 1;
      *(v61 + 8) = 14;
      *(v61 + 16) = "Vector3FAnimation";
      qword_1EE1914C8 = v61;
      v62 = re::introspectionAllocator();
      v63 = (*(*v62 + 32))(v62, 24, 8);
      *v63 = 1;
      *(v63 + 8) = 15;
      *(v63 + 16) = "Vector4FAnimation";
      qword_1EE1914D0 = v63;
      v64 = re::introspectionAllocator();
      v65 = (*(*v64 + 32))(v64, 24, 8);
      *v65 = 1;
      *(v65 + 8) = 16;
      *(v65 + 16) = "QuaternionFAnimation";
      qword_1EE1914D8 = v65;
      v66 = re::introspectionAllocator();
      v67 = (*(*v66 + 32))(v66, 24, 8);
      *v67 = 1;
      *(v67 + 8) = 17;
      *(v67 + 16) = "SRTAnimation";
      qword_1EE1914E0 = v67;
      v68 = re::introspectionAllocator();
      v69 = (*(*v68 + 32))(v68, 24, 8);
      *v69 = 1;
      *(v69 + 8) = 18;
      *(v69 + 16) = "SkeletalPoseAnimation";
      qword_1EE1914E8 = v69;
      v70 = re::introspectionAllocator();
      v71 = (*(*v70 + 32))(v70, 24, 8);
      *v71 = 1;
      *(v71 + 8) = 19;
      *(v71 + 16) = "FloatKeyframeAnimation";
      qword_1EE1914F0 = v71;
      v72 = re::introspectionAllocator();
      v73 = (*(*v72 + 32))(v72, 24, 8);
      *v73 = 1;
      *(v73 + 8) = 20;
      *(v73 + 16) = "DoubleKeyframeAnimation";
      qword_1EE1914F8 = v73;
      v74 = re::introspectionAllocator();
      v75 = (*(*v74 + 32))(v74, 24, 8);
      *v75 = 1;
      *(v75 + 8) = 21;
      *(v75 + 16) = "Vector2FKeyframeAnimation";
      qword_1EE191500 = v75;
      v76 = re::introspectionAllocator();
      v77 = (*(*v76 + 32))(v76, 24, 8);
      *v77 = 1;
      *(v77 + 8) = 22;
      *(v77 + 16) = "Vector3FKeyframeAnimation";
      qword_1EE191508 = v77;
      v78 = re::introspectionAllocator();
      v79 = (*(*v78 + 32))(v78, 24, 8);
      *v79 = 1;
      *(v79 + 8) = 23;
      *(v79 + 16) = "Vector4FKeyframeAnimation";
      qword_1EE191510 = v79;
      v80 = re::introspectionAllocator();
      v81 = (*(*v80 + 32))(v80, 24, 8);
      *v81 = 1;
      *(v81 + 8) = 24;
      *(v81 + 16) = "QuaternionFKeyframeAnimation";
      qword_1EE191518 = v81;
      v82 = re::introspectionAllocator();
      v83 = (*(*v82 + 32))(v82, 24, 8);
      *v83 = 1;
      *(v83 + 8) = 25;
      *(v83 + 16) = "SRTKeyframeAnimation";
      qword_1EE191520 = v83;
      v84 = re::introspectionAllocator();
      v85 = (*(*v84 + 32))(v84, 24, 8);
      *v85 = 1;
      *(v85 + 8) = 26;
      *(v85 + 16) = "SkeletalPoseKeyframeAnimation";
      qword_1EE191528 = v85;
      v86 = re::introspectionAllocator();
      v87 = (*(*v86 + 32))(v86, 24, 8);
      *v87 = 1;
      *(v87 + 8) = 27;
      *(v87 + 16) = "FloatSampledAnimation";
      qword_1EE191530 = v87;
      v88 = re::introspectionAllocator();
      v89 = (*(*v88 + 32))(v88, 24, 8);
      *v89 = 1;
      *(v89 + 8) = 28;
      *(v89 + 16) = "DoubleSampledAnimation";
      qword_1EE191538 = v89;
      v90 = re::introspectionAllocator();
      v91 = (*(*v90 + 32))(v90, 24, 8);
      *v91 = 1;
      *(v91 + 8) = 29;
      *(v91 + 16) = "Vector2FSampledAnimation";
      qword_1EE191540 = v91;
      v92 = re::introspectionAllocator();
      v93 = (*(*v92 + 32))(v92, 24, 8);
      *v93 = 1;
      *(v93 + 8) = 30;
      *(v93 + 16) = "Vector3FSampledAnimation";
      qword_1EE191548 = v93;
      v94 = re::introspectionAllocator();
      v95 = (*(*v94 + 32))(v94, 24, 8);
      *v95 = 1;
      *(v95 + 8) = 31;
      *(v95 + 16) = "Vector4FSampledAnimation";
      qword_1EE191550 = v95;
      v96 = re::introspectionAllocator();
      v97 = (*(*v96 + 32))(v96, 24, 8);
      *v97 = 1;
      *(v97 + 8) = 32;
      *(v97 + 16) = "QuaternionFSampledAnimation";
      qword_1EE191558 = v97;
      v98 = re::introspectionAllocator();
      v99 = (*(*v98 + 32))(v98, 24, 8);
      *v99 = 1;
      *(v99 + 8) = 33;
      *(v99 + 16) = "SRTSampledAnimation";
      qword_1EE191560 = v99;
      v100 = re::introspectionAllocator();
      v101 = (*(*v100 + 32))(v100, 24, 8);
      *v101 = 1;
      *(v101 + 8) = 34;
      *(v101 + 16) = "SkeletalPoseSampledAnimation";
      qword_1EE191568 = v101;
      v102 = re::introspectionAllocator();
      v103 = (*(*v102 + 32))(v102, 24, 8);
      *v103 = 1;
      *(v103 + 8) = 35;
      *(v103 + 16) = "SkeletalAnimation";
      qword_1EE191570 = v103;
      v104 = re::introspectionAllocator();
      v105 = (*(*v104 + 32))(v104, 24, 8);
      *v105 = 1;
      *(v105 + 8) = 36;
      *(v105 + 16) = "TransformAnimation";
      qword_1EE191578 = v105;
      v106 = re::introspectionAllocator();
      v107 = (*(*v106 + 32))(v106, 24, 8);
      *v107 = 1;
      *(v107 + 8) = 37;
      *(v107 + 16) = "OrbitAnimation";
      qword_1EE191580 = v107;
      v108 = re::introspectionAllocator();
      v109 = (*(*v108 + 32))(v108, 24, 8);
      *v109 = 1;
      *(v109 + 8) = 38;
      *(v109 + 16) = "AudioAnimationTimeline";
      qword_1EE191588 = v109;
      v110 = re::introspectionAllocator();
      v111 = (*(*v110 + 32))(v110, 24, 8);
      *v111 = 1;
      *(v111 + 8) = 39;
      *(v111 + 16) = "FloatAnimationBlendTree";
      qword_1EE191590 = v111;
      v112 = re::introspectionAllocator();
      v113 = (*(*v112 + 32))(v112, 24, 8);
      *v113 = 1;
      *(v113 + 8) = 40;
      *(v113 + 16) = "DoubleAnimationBlendTree";
      qword_1EE191598 = v113;
      v114 = re::introspectionAllocator();
      v115 = (*(*v114 + 32))(v114, 24, 8);
      *v115 = 1;
      *(v115 + 8) = 41;
      *(v115 + 16) = "Vector2FAnimationBlendTree";
      qword_1EE1915A0 = v115;
      v116 = re::introspectionAllocator();
      v117 = (*(*v116 + 32))(v116, 24, 8);
      *v117 = 1;
      *(v117 + 8) = 42;
      *(v117 + 16) = "Vector3FAnimationBlendTree";
      qword_1EE1915A8 = v117;
      v118 = re::introspectionAllocator();
      v119 = (*(*v118 + 32))(v118, 24, 8);
      *v119 = 1;
      *(v119 + 8) = 43;
      *(v119 + 16) = "Vector4FAnimationBlendTree";
      qword_1EE1915B0 = v119;
      v120 = re::introspectionAllocator();
      v121 = (*(*v120 + 32))(v120, 24, 8);
      *v121 = 1;
      *(v121 + 8) = 44;
      *(v121 + 16) = "QuaternionFAnimationBlendTree";
      qword_1EE1915B8 = v121;
      v122 = re::introspectionAllocator();
      v123 = (*(*v122 + 32))(v122, 24, 8);
      *v123 = 1;
      *(v123 + 8) = 45;
      *(v123 + 16) = "SRTAnimationBlendTree";
      qword_1EE1915C0 = v123;
      v124 = re::introspectionAllocator();
      v125 = (*(*v124 + 32))(v124, 24, 8);
      *v125 = 1;
      *(v125 + 8) = 46;
      *(v125 + 16) = "SkeletalPoseAnimationBlendTree";
      qword_1EE1915C8 = v125;
      v126 = re::introspectionAllocator();
      v127 = (*(*v126 + 32))(v126, 24, 8);
      *v127 = 1;
      *(v127 + 8) = 48;
      *(v127 + 16) = "EventTimeline";
      qword_1EE1915D0 = v127;
      v128 = re::introspectionAllocator();
      v129 = (*(*v128 + 32))(v128, 24, 8);
      *v129 = 1;
      *(v129 + 8) = 50;
      *(v129 + 16) = "BlendShapeWeightsAnimation";
      qword_1EE1915D8 = v129;
      v130 = re::introspectionAllocator();
      v131 = (*(*v130 + 32))(v130, 24, 8);
      *v131 = 1;
      *(v131 + 8) = 59;
      *(v131 + 16) = "BlendShapeWeightsSampledAnimation";
      qword_1EE1915E0 = v131;
      v132 = re::introspectionAllocator();
      v133 = (*(*v132 + 32))(v132, 24, 8);
      *v133 = 1;
      *(v133 + 8) = 60;
      *(v133 + 16) = "BlendShapeWeightsAnimationClip";
      qword_1EE1915E8 = v133;
      v134 = re::introspectionAllocator();
      v135 = (*(*v134 + 32))(v134, 24, 8);
      *v135 = 1;
      *(v135 + 8) = 61;
      *(v135 + 16) = "BlendShapeWeightsKeyframeAnimation";
      qword_1EE1915F0 = v135;
      __cxa_guard_release(&qword_1EE191408);
    }
  }

  v11 = qword_1EE191458;
  v141 = v9;
  v142 = v10;
  re::TypeBuilder::beginEnumType(v140, &v137, 1, 1, &v141);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v139.var0 = 2 * v16;
        v139.var1 = v15;
        re::TypeBuilder::addEnumConstant(v140, v20, &v139);
        if (*&v139.var0)
        {
          if (*&v139.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
          if (v24)
          {
            v25 = *v24;
            if (*v24)
            {
              v26 = v24[1];
              if (v26)
              {
                v27 = (v24 + 2);
                do
                {
                  v25 = 31 * v25 + v26;
                  v28 = *v27++;
                  v26 = v28;
                }

                while (v28);
              }
            }
          }

          else
          {
            v25 = 0;
          }

          v29 = *(v23 + 8);
          *&v139.var0 = 2 * v25;
          v139.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v140, v29, &v139);
          if (*&v139.var0)
          {
            if (*&v139.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v140, v31);
  xmmword_1EE191438 = v139;
  if (v137)
  {
    if (v137)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE191418;
}

float re::calculateNodeSRT@<S0>(int32x4_t *a1@<X0>, float32x4_t *a2@<X8>)
{
  v4 = a1[5].u8[0];
  v20 = xmmword_1E30474D0;
  re::convertIntrinsicEulersToQuaternions<float>(a1[2].i64, 1, v4, &v20, 1);
  _Q1 = a1[1];
  _Q3 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), vnegq_f32(_Q1)), v20, vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL));
  v7 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), v20, _Q1, 3);
  _Q3.i32[0] = HIDWORD(v20);
  _Q2 = vmlaq_laneq_f32(v7, _Q1, v20, 3);
  __asm { FMLA            S0, S3, V1.S[3] }

  _Q1 = a1[3];
  v15 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL), vnegq_f32(_Q2)), _Q1, vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL));
  v16 = vmlaq_laneq_f32(vmlaq_n_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), _Q1, result), _Q2, _Q1, 3);
  __asm { FMLA            S2, S0, V1.S[3] }

  v16.i32[3] = _Q2.i32[0];
  v17 = a1[4].i64[1];
  v18 = a1->i64[0];
  v19 = a1->i64[1];
  a2->i64[0] = a1[4].i64[0];
  a2->i64[1] = v17;
  a2[1] = v16;
  a2[2].i64[0] = v18;
  a2[2].i64[1] = v19;
  return result;
}

_anonymous_namespace_ *re::DynamicArray<unsigned long>::copy(_anonymous_namespace_ *this, unint64_t a2, char *__src, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return this;
  }

  v5 = a2;
  v6 = this;
  v7 = *(this + 2);
  v8 = v7 + 1;
  if (v7 + 1 <= a2)
  {
    v21 = 0;
    memset(v27, 0, sizeof(v27));
    v14 = MEMORY[0x1E69E9C10];
    *v22 = 136315906;
    *&v22[4] = "copy";
    *&v22[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    *&v22[14] = 643;
    v23 = 2048;
    v24 = v5;
    v25 = 2048;
    v26 = v8;
    _os_log_send_and_compose_impl(v15, &v21, v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v22, 38, v18, v20);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, v5, v4, v21, *v22);
    _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", v16, v17, v19);
    __break(1u);
  }

  v4 = a4;
  v9 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_15;
  }

  if (v7 >= v9)
  {
    this = memmove((*(this + 4) + 8 * a2), __src, 8 * a4);
  }

  else
  {
    re::DynamicArray<unsigned long>::growCapacity(this, a2 + a4);
    v11 = *(v6 + 2);
    v12 = v11 - v5;
    v13 = &__src[8 * (v11 - v5)];
    if (v11 != v5)
    {
      memmove((*(v6 + 4) + 8 * v5), __src, 8 * v12);
      v5 = *(v6 + 2);
    }

    this = memcpy((*(v6 + 4) + 8 * v5), v13, 8 * (v4 - v12));
    *(v6 + 2) = v9;
  }

  ++*(v6 + 6);
  return this;
}

_anonymous_namespace_ *re::DynamicArray<float>::copy(_anonymous_namespace_ *this, unint64_t a2, char *__src, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return this;
  }

  v5 = a2;
  v6 = this;
  v7 = *(this + 2);
  v8 = v7 + 1;
  if (v7 + 1 <= a2)
  {
    v21 = 0;
    memset(v27, 0, sizeof(v27));
    v14 = MEMORY[0x1E69E9C10];
    *v22 = 136315906;
    *&v22[4] = "copy";
    *&v22[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    *&v22[14] = 643;
    v23 = 2048;
    v24 = v5;
    v25 = 2048;
    v26 = v8;
    _os_log_send_and_compose_impl(v15, &v21, v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v22, 38, v18, v20);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, v5, v4, v21, *v22);
    _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", v16, v17, v19);
    __break(1u);
  }

  v4 = a4;
  v9 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_15;
  }

  if (v7 >= v9)
  {
    this = memmove((*(this + 4) + 4 * a2), __src, 4 * a4);
  }

  else
  {
    re::DynamicArray<float>::growCapacity(this, a2 + a4);
    v11 = *(v6 + 2);
    v12 = v11 - v5;
    v13 = &__src[4 * (v11 - v5)];
    if (v11 != v5)
    {
      memmove((*(v6 + 4) + 4 * v5), __src, 4 * v12);
      v5 = *(v6 + 2);
    }

    this = memcpy((*(v6 + 4) + 4 * v5), v13, 4 * (v4 - v12));
    *(v6 + 2) = v9;
  }

  ++*(v6 + 6);
  return this;
}