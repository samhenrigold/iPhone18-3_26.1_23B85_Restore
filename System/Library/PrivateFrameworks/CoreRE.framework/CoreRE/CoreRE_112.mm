_anonymous_namespace_ *re::ecs2::LightSystem::willAddSystemToECSService(re::ecs2::LightSystem *this)
{
  re::ecs2::RenderingSubsystem::willAddSystemToECSService(this);
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::ecs2::LightService>(v2);
  *(this + 37) = result;
  return result;
}

double re::ecs2::LightSystem::willRemoveSystemFromECSService(re::ecs2::LightSystem *this)
{
  result = 0.0;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 14) = 0u;
  return result;
}

uint64_t re::ecs2::LightSystem::willAddSceneToECSService(re::ecs2::LightSystem *this, re::EventBus **a2)
{
  v374 = *MEMORY[0x1E69E9840];
  v335 = a2;
  v4 = *(this + 37);
  if (v4)
  {
    (*(*v4 + 80))(v4, a2);
  }

  v336 = a2;
  v5 = *(this + 79);
  v6 = *(this + 160);
  if (v5 >= 0xB)
  {
    if (v6)
    {
      v7 = (this + 648);
    }

    else
    {
      v7 = *(this + 82);
    }

    v9 = 8 * v5;
    while (!*v7)
    {
      ++v7;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_18;
  }

  if (v6)
  {
    v8 = (this + 648);
    if (!v5)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v8 = *(this + 82);
    if (!v5)
    {
      goto LABEL_19;
    }
  }

  v10 = 0;
  v11 = 8 * v5;
  do
  {
    v12 = *v8++;
    v10 |= v12;
    v11 -= 8;
  }

  while (v11);
  if (v10)
  {
LABEL_18:
    *&v356 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 624, 0);
    v13 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 504, v356);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::init(v13, this + 504, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 70, &v336, &v356);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 624, v356);
    v14 = v356;
    goto LABEL_51;
  }

LABEL_19:
  v360 = 0u;
  v363 = 0u;
  v356 = 0u;
  *&v357 = 0;
  v358 = 0u;
  v359 = 0u;
  *(&v357 + 1) = -1;
  *&v360 = 0;
  DWORD2(v360) = 1;
  v361 = 0;
  v362 = 0;
  v15 = *(this + 68);
  *&v363 = 0;
  v16 = *(this + 64);
  DWORD2(v363) = 0;
  if (v15 + 1 > 4 * v16)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>,4ul>::setBucketsCapacity(this + 63, (v15 + 4) >> 2);
    v16 = *(this + 64);
  }

  v17 = v15 >> 2;
  if (v16 <= v15 >> 2)
  {
    v337 = 0;
    v372 = 0u;
    v373 = 0u;
    v370 = 0u;
    v371 = 0u;
    v369 = 0u;
    v313 = MEMORY[0x1E69E9C10];
    *v364 = 136315906;
    *&v364[4] = "operator[]";
    *&v364[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v314 = 3;
    }

    else
    {
      v314 = 2;
    }

    *&v364[14] = 858;
    v365 = 2048;
    v366 = v15 >> 2;
    v367 = 2048;
    v368 = v16;
    _os_log_send_and_compose_impl(v314, &v337, &v369, 80, &dword_1E1C61000, v313, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v364, 38, v333, v334);
    _os_crash_msg();
    __break(1u);
    goto LABEL_369;
  }

  if (*(this + 520))
  {
    v18 = this + 528;
  }

  else
  {
    v18 = *(this + 67);
  }

  v19 = *&v18[8 * v17];
  ++*(this + 68);
  ++*(this + 138);
  v20 = v19 + 112 * (v15 & 3);
  v21 = v356;
  v22 = v357;
  v23 = v358;
  *(v20 + 48) = v359;
  *(v20 + 16) = v22;
  *(v20 + 32) = v23;
  *v20 = v21;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v20 + 56, &v359 + 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v356);
  v25 = *(this + 68);
  if (!v25)
  {
LABEL_369:
    re::internal::assertLog(4, v24, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
LABEL_370:
    v337 = 0;
    v372 = 0u;
    v373 = 0u;
    v370 = 0u;
    v371 = 0u;
    v369 = 0u;
    v315 = MEMORY[0x1E69E9C10];
    v316 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v364 = 136315906;
    *&v364[4] = "operator[]";
    *&v364[12] = 1024;
    if (v316)
    {
      v317 = 3;
    }

    else
    {
      v317 = 2;
    }

    *&v364[14] = 858;
    v365 = 2048;
    v366 = v17;
    v367 = 2048;
    v368 = v16;
    _os_log_send_and_compose_impl(v317, &v337, &v369, 80, &dword_1E1C61000, v315, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v364, 38, v333, v334);
    _os_crash_msg();
    __break(1u);
    goto LABEL_374;
  }

  v26 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 504, v25 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::init(v26, this + 504, v336);
  *&v369 = *(this + 68) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 70, &v336, &v369);
  v27 = *(this + 68);
  v28 = *(this + 83);
  if ((v27 & 0x3F) != 0)
  {
    v29 = (v27 >> 6) + 1;
  }

  else
  {
    v29 = v27 >> 6;
  }

  *(this + 83) = v27;
  *&v356 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 624), v29, &v356);
  if (v27 && v28 > v27)
  {
    v30 = 63;
    v31 = *(this + 83) & 0x3FLL;
    if (v31 && v31 != 63)
    {
      v30 = ~(-1 << v31);
    }

    if (*(this + 640))
    {
      v32 = this + 648;
    }

    else
    {
      v32 = *(this + 82);
    }

    *&v32[8 * *(this + 79) - 8] &= v30;
  }

  v33 = *(this + 68);
  v34 = *(this + 89);
  if ((v33 & 0x3F) != 0)
  {
    v35 = (v33 >> 6) + 1;
  }

  else
  {
    v35 = v33 >> 6;
  }

  *(this + 89) = v33;
  *&v356 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 672), v35, &v356);
  if (v33 && v34 > v33)
  {
    v36 = 63;
    v37 = *(this + 89) & 0x3FLL;
    if (v37 && v37 != 63)
    {
      v36 = ~(-1 << v37);
    }

    if (*(this + 688))
    {
      v38 = this + 696;
    }

    else
    {
      v38 = *(this + 88);
    }

    *&v38[8 * *(this + 85) - 8] &= v36;
  }

  v14 = v369;
LABEL_51:
  re::DynamicBitset<unsigned long long,64ul>::setBit(this + 672, v14);
  if (*(this + 736) == 1)
  {
    v39 = *(this + 90);
    v40 = *(v336 + 47);
    LOWORD(v356) = 257;
    DWORD1(v356) = 1023969417;
    BYTE8(v356) = 0;
    re::ecs2::System::setTaskOptions(v39, v40, &v356);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 504);
  }

  v336 = a2;
  v41 = *(this + 134);
  v42 = *(this + 270);
  if (v41 >= 0xB)
  {
    if (v42)
    {
      v43 = (this + 1088);
    }

    else
    {
      v43 = *(this + 137);
    }

    v45 = 8 * v41;
    while (!*v43)
    {
      ++v43;
      v45 -= 8;
      if (!v45)
      {
        goto LABEL_69;
      }
    }

    goto LABEL_68;
  }

  if (v42)
  {
    v44 = (this + 1088);
    if (!v41)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v44 = *(this + 137);
    if (!v41)
    {
      goto LABEL_69;
    }
  }

  v46 = 0;
  v47 = 8 * v41;
  do
  {
    v48 = *v44++;
    v46 |= v48;
    v47 -= 8;
  }

  while (v47);
  if (v46)
  {
LABEL_68:
    *&v356 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 1064, 0);
    v49 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 944, v356);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::init(v49, this + 944, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 125, &v336, &v356);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 1064, v356);
    v50 = v356;
    goto LABEL_101;
  }

LABEL_69:
  v360 = 0u;
  v363 = 0u;
  v356 = 0u;
  *&v357 = 0;
  v358 = 0u;
  v359 = 0u;
  *(&v357 + 1) = -1;
  *&v360 = 0;
  DWORD2(v360) = 1;
  v361 = 0;
  v362 = 0;
  v51 = *(this + 123);
  *&v363 = 0;
  v16 = *(this + 119);
  DWORD2(v363) = 0;
  if (v51 + 1 > 4 * v16)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>,4ul>::setBucketsCapacity(this + 118, (v51 + 4) >> 2);
    v16 = *(this + 119);
  }

  v17 = v51 >> 2;
  if (v16 <= v51 >> 2)
  {
    goto LABEL_370;
  }

  if (*(this + 960))
  {
    v52 = this + 968;
  }

  else
  {
    v52 = *(this + 122);
  }

  v53 = *&v52[8 * v17];
  ++*(this + 123);
  ++*(this + 248);
  v54 = v53 + 112 * (v51 & 3);
  v55 = v356;
  v56 = v357;
  v57 = v358;
  *(v54 + 48) = v359;
  *(v54 + 16) = v56;
  *(v54 + 32) = v57;
  *v54 = v55;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v54 + 56, &v359 + 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v356);
  v59 = *(this + 123);
  if (!v59)
  {
LABEL_374:
    re::internal::assertLog(4, v58, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
LABEL_375:
    v337 = 0;
    v372 = 0u;
    v373 = 0u;
    v370 = 0u;
    v371 = 0u;
    v369 = 0u;
    v318 = MEMORY[0x1E69E9C10];
    v319 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v364 = 136315906;
    *&v364[4] = "operator[]";
    *&v364[12] = 1024;
    if (v319)
    {
      v320 = 3;
    }

    else
    {
      v320 = 2;
    }

    *&v364[14] = 858;
    v365 = 2048;
    v366 = v17;
    v367 = 2048;
    v368 = v16;
    _os_log_send_and_compose_impl(v320, &v337, &v369, 80, &dword_1E1C61000, v318, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v364, 38, v333, v334);
    _os_crash_msg();
    __break(1u);
    goto LABEL_379;
  }

  v60 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 944, v59 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::init(v60, this + 944, v336);
  *&v369 = *(this + 123) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 125, &v336, &v369);
  v61 = *(this + 123);
  v62 = *(this + 138);
  if ((v61 & 0x3F) != 0)
  {
    v63 = (v61 >> 6) + 1;
  }

  else
  {
    v63 = v61 >> 6;
  }

  *(this + 138) = v61;
  *&v356 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 1064), v63, &v356);
  if (v61 && v62 > v61)
  {
    v64 = 63;
    v65 = *(this + 138) & 0x3FLL;
    if (v65 && v65 != 63)
    {
      v64 = ~(-1 << v65);
    }

    if (*(this + 1080))
    {
      v66 = this + 1088;
    }

    else
    {
      v66 = *(this + 137);
    }

    *&v66[8 * *(this + 134) - 8] &= v64;
  }

  v67 = *(this + 123);
  v68 = *(this + 144);
  if ((v67 & 0x3F) != 0)
  {
    v69 = (v67 >> 6) + 1;
  }

  else
  {
    v69 = v67 >> 6;
  }

  *(this + 144) = v67;
  *&v356 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 1112), v69, &v356);
  if (v67 && v68 > v67)
  {
    v70 = 63;
    v71 = *(this + 144) & 0x3FLL;
    if (v71 && v71 != 63)
    {
      v70 = ~(-1 << v71);
    }

    if (*(this + 1128))
    {
      v72 = this + 1136;
    }

    else
    {
      v72 = *(this + 143);
    }

    *&v72[8 * *(this + 140) - 8] &= v70;
  }

  v50 = v369;
LABEL_101:
  re::DynamicBitset<unsigned long long,64ul>::setBit(this + 1112, v50);
  if (*(this + 1176) == 1)
  {
    v73 = *(this + 145);
    v74 = *(v336 + 47);
    LOWORD(v356) = 257;
    DWORD1(v356) = 1023969417;
    BYTE8(v356) = 0;
    re::ecs2::System::setTaskOptions(v73, v74, &v356);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 944);
  }

  v336 = a2;
  v75 = *(this + 189);
  v76 = *(this + 380);
  if (v75 >= 0xB)
  {
    if (v76)
    {
      v77 = (this + 1528);
    }

    else
    {
      v77 = *(this + 192);
    }

    v79 = 8 * v75;
    while (!*v77)
    {
      ++v77;
      v79 -= 8;
      if (!v79)
      {
        goto LABEL_119;
      }
    }

    goto LABEL_118;
  }

  if (v76)
  {
    v78 = (this + 1528);
    if (!v75)
    {
      goto LABEL_119;
    }
  }

  else
  {
    v78 = *(this + 192);
    if (!v75)
    {
      goto LABEL_119;
    }
  }

  v80 = 0;
  v81 = 8 * v75;
  do
  {
    v82 = *v78++;
    v80 |= v82;
    v81 -= 8;
  }

  while (v81);
  if (v80)
  {
LABEL_118:
    *&v356 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 1504, 0);
    v83 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 1384, v356);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::init(v83, this + 1384, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 180, &v336, &v356);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 1504, v356);
    v84 = v356;
    goto LABEL_151;
  }

LABEL_119:
  v360 = 0u;
  v363 = 0u;
  v356 = 0u;
  *&v357 = 0;
  v358 = 0u;
  v359 = 0u;
  *(&v357 + 1) = -1;
  *&v360 = 0;
  DWORD2(v360) = 1;
  v361 = 0;
  v362 = 0;
  v85 = *(this + 178);
  *&v363 = 0;
  v16 = *(this + 174);
  DWORD2(v363) = 0;
  if (v85 + 1 > 4 * v16)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>,4ul>::setBucketsCapacity(this + 173, (v85 + 4) >> 2);
    v16 = *(this + 174);
  }

  v17 = v85 >> 2;
  if (v16 <= v85 >> 2)
  {
    goto LABEL_375;
  }

  if (*(this + 1400))
  {
    v86 = this + 1408;
  }

  else
  {
    v86 = *(this + 177);
  }

  v87 = *&v86[8 * v17];
  ++*(this + 178);
  ++*(this + 358);
  v88 = v87 + 112 * (v85 & 3);
  v89 = v356;
  v90 = v357;
  v91 = v358;
  *(v88 + 48) = v359;
  *(v88 + 16) = v90;
  *(v88 + 32) = v91;
  *v88 = v89;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v88 + 56, &v359 + 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v356);
  v93 = *(this + 178);
  if (!v93)
  {
LABEL_379:
    re::internal::assertLog(4, v92, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
LABEL_380:
    v337 = 0;
    v372 = 0u;
    v373 = 0u;
    v370 = 0u;
    v371 = 0u;
    v369 = 0u;
    v321 = MEMORY[0x1E69E9C10];
    v322 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v364 = 136315906;
    *&v364[4] = "operator[]";
    *&v364[12] = 1024;
    if (v322)
    {
      v323 = 3;
    }

    else
    {
      v323 = 2;
    }

    *&v364[14] = 858;
    v365 = 2048;
    v366 = v17;
    v367 = 2048;
    v368 = v16;
    _os_log_send_and_compose_impl(v323, &v337, &v369, 80, &dword_1E1C61000, v321, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v364, 38, v333, v334);
    _os_crash_msg();
    __break(1u);
    goto LABEL_384;
  }

  v94 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 1384, v93 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::init(v94, this + 1384, v336);
  *&v369 = *(this + 178) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 180, &v336, &v369);
  v95 = *(this + 178);
  v96 = *(this + 193);
  if ((v95 & 0x3F) != 0)
  {
    v97 = (v95 >> 6) + 1;
  }

  else
  {
    v97 = v95 >> 6;
  }

  *(this + 193) = v95;
  *&v356 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 1504), v97, &v356);
  if (v95 && v96 > v95)
  {
    v98 = 63;
    v99 = *(this + 193) & 0x3FLL;
    if (v99 && v99 != 63)
    {
      v98 = ~(-1 << v99);
    }

    if (*(this + 1520))
    {
      v100 = this + 1528;
    }

    else
    {
      v100 = *(this + 192);
    }

    *&v100[8 * *(this + 189) - 8] &= v98;
  }

  v101 = *(this + 178);
  v102 = *(this + 199);
  if ((v101 & 0x3F) != 0)
  {
    v103 = (v101 >> 6) + 1;
  }

  else
  {
    v103 = v101 >> 6;
  }

  *(this + 199) = v101;
  *&v356 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 1552), v103, &v356);
  if (v101 && v102 > v101)
  {
    v104 = 63;
    v105 = *(this + 199) & 0x3FLL;
    if (v105 && v105 != 63)
    {
      v104 = ~(-1 << v105);
    }

    if (*(this + 1568))
    {
      v106 = this + 1576;
    }

    else
    {
      v106 = *(this + 198);
    }

    *&v106[8 * *(this + 195) - 8] &= v104;
  }

  v84 = v369;
LABEL_151:
  re::DynamicBitset<unsigned long long,64ul>::setBit(this + 1552, v84);
  if (*(this + 1616) == 1)
  {
    v107 = *(this + 200);
    v108 = *(v336 + 47);
    LOWORD(v356) = 257;
    DWORD1(v356) = 1023969417;
    BYTE8(v356) = 0;
    re::ecs2::System::setTaskOptions(v107, v108, &v356);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 1384);
  }

  v336 = a2;
  v109 = *(this + 244);
  v110 = *(this + 490);
  if (v109 >= 0xB)
  {
    if (v110)
    {
      v111 = (this + 1968);
    }

    else
    {
      v111 = *(this + 247);
    }

    v113 = 8 * v109;
    while (!*v111)
    {
      ++v111;
      v113 -= 8;
      if (!v113)
      {
        goto LABEL_169;
      }
    }

    goto LABEL_168;
  }

  if (v110)
  {
    v112 = (this + 1968);
    if (!v109)
    {
      goto LABEL_169;
    }
  }

  else
  {
    v112 = *(this + 247);
    if (!v109)
    {
      goto LABEL_169;
    }
  }

  v114 = 0;
  v115 = 8 * v109;
  do
  {
    v116 = *v112++;
    v114 |= v116;
    v115 -= 8;
  }

  while (v115);
  if (v114)
  {
LABEL_168:
    *&v356 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 1944, 0);
    v117 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 1824, v356);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::init(v117, this + 1824, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 235, &v336, &v356);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 1944, v356);
    v118 = v356;
    goto LABEL_201;
  }

LABEL_169:
  v360 = 0u;
  v363 = 0u;
  v356 = 0u;
  *&v357 = 0;
  v358 = 0u;
  v359 = 0u;
  *(&v357 + 1) = -1;
  *&v360 = 0;
  DWORD2(v360) = 1;
  v361 = 0;
  v362 = 0;
  v119 = *(this + 233);
  *&v363 = 0;
  v16 = *(this + 229);
  DWORD2(v363) = 0;
  if (v119 + 1 > 4 * v16)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>,4ul>::setBucketsCapacity(this + 228, (v119 + 4) >> 2);
    v16 = *(this + 229);
  }

  v17 = v119 >> 2;
  if (v16 <= v119 >> 2)
  {
    goto LABEL_380;
  }

  if (*(this + 1840))
  {
    v120 = this + 1848;
  }

  else
  {
    v120 = *(this + 232);
  }

  v121 = *&v120[8 * v17];
  ++*(this + 233);
  ++*(this + 468);
  v122 = v121 + 112 * (v119 & 3);
  v123 = v356;
  v124 = v357;
  v125 = v358;
  *(v122 + 48) = v359;
  *(v122 + 16) = v124;
  *(v122 + 32) = v125;
  *v122 = v123;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v122 + 56, &v359 + 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v356);
  v127 = *(this + 233);
  if (!v127)
  {
LABEL_384:
    re::internal::assertLog(4, v126, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
LABEL_385:
    v337 = 0;
    v372 = 0u;
    v373 = 0u;
    v370 = 0u;
    v371 = 0u;
    v369 = 0u;
    v324 = MEMORY[0x1E69E9C10];
    v325 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v364 = 136315906;
    *&v364[4] = "operator[]";
    *&v364[12] = 1024;
    if (v325)
    {
      v326 = 3;
    }

    else
    {
      v326 = 2;
    }

    *&v364[14] = 858;
    v365 = 2048;
    v366 = v17;
    v367 = 2048;
    v368 = v16;
    _os_log_send_and_compose_impl(v326, &v337, &v369, 80, &dword_1E1C61000, v324, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v364, 38, v333, v334);
    _os_crash_msg();
    __break(1u);
    goto LABEL_389;
  }

  v128 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 1824, v127 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::init(v128, this + 1824, v336);
  *&v369 = *(this + 233) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 235, &v336, &v369);
  v129 = *(this + 233);
  v130 = *(this + 248);
  if ((v129 & 0x3F) != 0)
  {
    v131 = (v129 >> 6) + 1;
  }

  else
  {
    v131 = v129 >> 6;
  }

  *(this + 248) = v129;
  *&v356 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 1944), v131, &v356);
  if (v129 && v130 > v129)
  {
    v132 = 63;
    v133 = *(this + 248) & 0x3FLL;
    if (v133 && v133 != 63)
    {
      v132 = ~(-1 << v133);
    }

    if (*(this + 1960))
    {
      v134 = this + 1968;
    }

    else
    {
      v134 = *(this + 247);
    }

    *&v134[8 * *(this + 244) - 8] &= v132;
  }

  v135 = *(this + 233);
  v136 = *(this + 254);
  if ((v135 & 0x3F) != 0)
  {
    v137 = (v135 >> 6) + 1;
  }

  else
  {
    v137 = v135 >> 6;
  }

  *(this + 254) = v135;
  *&v356 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 1992), v137, &v356);
  if (v135 && v136 > v135)
  {
    v138 = 63;
    v139 = *(this + 254) & 0x3FLL;
    if (v139 && v139 != 63)
    {
      v138 = ~(-1 << v139);
    }

    if (*(this + 2008))
    {
      v140 = this + 2016;
    }

    else
    {
      v140 = *(this + 253);
    }

    *&v140[8 * *(this + 250) - 8] &= v138;
  }

  v118 = v369;
LABEL_201:
  re::DynamicBitset<unsigned long long,64ul>::setBit(this + 1992, v118);
  if (*(this + 2056) == 1)
  {
    v141 = *(this + 255);
    v142 = *(v336 + 47);
    LOWORD(v356) = 257;
    DWORD1(v356) = 1023969417;
    BYTE8(v356) = 0;
    re::ecs2::System::setTaskOptions(v141, v142, &v356);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 1824);
  }

  v336 = a2;
  v143 = *(this + 299);
  v144 = *(this + 600);
  if (v143 >= 0xB)
  {
    if (v144)
    {
      v145 = (this + 2408);
    }

    else
    {
      v145 = *(this + 302);
    }

    v147 = 8 * v143;
    while (!*v145)
    {
      ++v145;
      v147 -= 8;
      if (!v147)
      {
        goto LABEL_219;
      }
    }

    goto LABEL_218;
  }

  if (v144)
  {
    v146 = (this + 2408);
    if (!v143)
    {
      goto LABEL_219;
    }
  }

  else
  {
    v146 = *(this + 302);
    if (!v143)
    {
      goto LABEL_219;
    }
  }

  v148 = 0;
  v149 = 8 * v143;
  do
  {
    v150 = *v146++;
    v148 |= v150;
    v149 -= 8;
  }

  while (v149);
  if (v148)
  {
LABEL_218:
    *&v356 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 2384, 0);
    v151 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 2264, v356);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::init(v151, this + 2264, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 290, &v336, &v356);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 2384, v356);
    v152 = v356;
    goto LABEL_251;
  }

LABEL_219:
  v360 = 0u;
  v363 = 0u;
  v356 = 0u;
  *&v357 = 0;
  v358 = 0u;
  v359 = 0u;
  *(&v357 + 1) = -1;
  *&v360 = 0;
  DWORD2(v360) = 1;
  v361 = 0;
  v362 = 0;
  v153 = *(this + 288);
  *&v363 = 0;
  v16 = *(this + 284);
  DWORD2(v363) = 0;
  if (v153 + 1 > 4 * v16)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>,4ul>::setBucketsCapacity(this + 283, (v153 + 4) >> 2);
    v16 = *(this + 284);
  }

  v17 = v153 >> 2;
  if (v16 <= v153 >> 2)
  {
    goto LABEL_385;
  }

  if (*(this + 2280))
  {
    v154 = this + 2288;
  }

  else
  {
    v154 = *(this + 287);
  }

  v155 = *&v154[8 * v17];
  ++*(this + 288);
  ++*(this + 578);
  v156 = v155 + 112 * (v153 & 3);
  v157 = v356;
  v158 = v357;
  v159 = v358;
  *(v156 + 48) = v359;
  *(v156 + 16) = v158;
  *(v156 + 32) = v159;
  *v156 = v157;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v156 + 56, &v359 + 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v356);
  v161 = *(this + 288);
  if (!v161)
  {
LABEL_389:
    re::internal::assertLog(4, v160, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
LABEL_390:
    v337 = 0;
    v372 = 0u;
    v373 = 0u;
    v370 = 0u;
    v371 = 0u;
    v369 = 0u;
    v327 = MEMORY[0x1E69E9C10];
    v328 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v364 = 136315906;
    *&v364[4] = "operator[]";
    *&v364[12] = 1024;
    if (v328)
    {
      v329 = 3;
    }

    else
    {
      v329 = 2;
    }

    *&v364[14] = 858;
    v365 = 2048;
    v366 = v17;
    v367 = 2048;
    v368 = v16;
    _os_log_send_and_compose_impl(v329, &v337, &v369, 80, &dword_1E1C61000, v327, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v364, 38, v333, v334);
    _os_crash_msg();
    __break(1u);
    goto LABEL_394;
  }

  v162 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 2264, v161 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::init(v162, this + 2264, v336);
  *&v369 = *(this + 288) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 290, &v336, &v369);
  v163 = *(this + 288);
  v164 = *(this + 303);
  if ((v163 & 0x3F) != 0)
  {
    v165 = (v163 >> 6) + 1;
  }

  else
  {
    v165 = v163 >> 6;
  }

  *(this + 303) = v163;
  *&v356 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 2384), v165, &v356);
  if (v163 && v164 > v163)
  {
    v166 = 63;
    v167 = *(this + 303) & 0x3FLL;
    if (v167 && v167 != 63)
    {
      v166 = ~(-1 << v167);
    }

    if (*(this + 2400))
    {
      v168 = this + 2408;
    }

    else
    {
      v168 = *(this + 302);
    }

    *&v168[8 * *(this + 299) - 8] &= v166;
  }

  v169 = *(this + 288);
  v170 = *(this + 309);
  if ((v169 & 0x3F) != 0)
  {
    v171 = (v169 >> 6) + 1;
  }

  else
  {
    v171 = v169 >> 6;
  }

  *(this + 309) = v169;
  *&v356 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 2432), v171, &v356);
  if (v169 && v170 > v169)
  {
    v172 = 63;
    v173 = *(this + 309) & 0x3FLL;
    if (v173 && v173 != 63)
    {
      v172 = ~(-1 << v173);
    }

    if (*(this + 2448))
    {
      v174 = this + 2456;
    }

    else
    {
      v174 = *(this + 308);
    }

    *&v174[8 * *(this + 305) - 8] &= v172;
  }

  v152 = v369;
LABEL_251:
  re::DynamicBitset<unsigned long long,64ul>::setBit(this + 2432, v152);
  if (*(this + 2496) == 1)
  {
    v175 = *(this + 310);
    v176 = *(v336 + 47);
    LOWORD(v356) = 257;
    DWORD1(v356) = 1023969417;
    BYTE8(v356) = 0;
    re::ecs2::System::setTaskOptions(v175, v176, &v356);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 2264);
  }

  v336 = a2;
  v177 = *(this + 354);
  v178 = *(this + 710);
  if (v177 >= 0xB)
  {
    if (v178)
    {
      v179 = (this + 2848);
    }

    else
    {
      v179 = *(this + 357);
    }

    v181 = 8 * v177;
    while (!*v179)
    {
      ++v179;
      v181 -= 8;
      if (!v181)
      {
        goto LABEL_269;
      }
    }

    goto LABEL_268;
  }

  if (v178)
  {
    v180 = (this + 2848);
    if (!v177)
    {
      goto LABEL_269;
    }
  }

  else
  {
    v180 = *(this + 357);
    if (!v177)
    {
      goto LABEL_269;
    }
  }

  v182 = 0;
  v183 = 8 * v177;
  do
  {
    v184 = *v180++;
    v182 |= v184;
    v183 -= 8;
  }

  while (v183);
  if (v182)
  {
LABEL_268:
    *&v356 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 2824, 0);
    v185 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 2704, v356);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::init(v185, this + 2704, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 345, &v336, &v356);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 2824, v356);
    v186 = v356;
    goto LABEL_301;
  }

LABEL_269:
  v360 = 0u;
  v363 = 0u;
  v356 = 0u;
  *&v357 = 0;
  v358 = 0u;
  v359 = 0u;
  *(&v357 + 1) = -1;
  *&v360 = 0;
  DWORD2(v360) = 1;
  v361 = 0;
  v362 = 0;
  v187 = *(this + 343);
  *&v363 = 0;
  v16 = *(this + 339);
  DWORD2(v363) = 0;
  if (v187 + 1 > 4 * v16)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>,4ul>::setBucketsCapacity(this + 338, (v187 + 4) >> 2);
    v16 = *(this + 339);
  }

  v17 = v187 >> 2;
  if (v16 <= v187 >> 2)
  {
    goto LABEL_390;
  }

  if (*(this + 2720))
  {
    v188 = this + 2728;
  }

  else
  {
    v188 = *(this + 342);
  }

  v189 = *&v188[8 * v17];
  ++*(this + 343);
  ++*(this + 688);
  v190 = v189 + 112 * (v187 & 3);
  v191 = v356;
  v192 = v357;
  v193 = v358;
  *(v190 + 48) = v359;
  *(v190 + 16) = v192;
  *(v190 + 32) = v193;
  *v190 = v191;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v190 + 56, &v359 + 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v356);
  v195 = *(this + 343);
  if (!v195)
  {
LABEL_394:
    re::internal::assertLog(4, v194, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
LABEL_395:
    v337 = 0;
    v372 = 0u;
    v373 = 0u;
    v370 = 0u;
    v371 = 0u;
    v369 = 0u;
    v330 = MEMORY[0x1E69E9C10];
    v331 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v364 = 136315906;
    *&v364[4] = "operator[]";
    *&v364[12] = 1024;
    if (v331)
    {
      v332 = 3;
    }

    else
    {
      v332 = 2;
    }

    *&v364[14] = 858;
    v365 = 2048;
    v366 = v17;
    v367 = 2048;
    v368 = v16;
    _os_log_send_and_compose_impl(v332, &v337, &v369, 80, &dword_1E1C61000, v330, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v364, 38, v333, v334);
    _os_crash_msg();
    __break(1u);
LABEL_399:
    re::internal::assertLog(4, v228, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  v196 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 2704, v195 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::init(v196, this + 2704, v336);
  *&v369 = *(this + 343) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 345, &v336, &v369);
  v197 = *(this + 343);
  v198 = *(this + 358);
  if ((v197 & 0x3F) != 0)
  {
    v199 = (v197 >> 6) + 1;
  }

  else
  {
    v199 = v197 >> 6;
  }

  *(this + 358) = v197;
  *&v356 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 2824), v199, &v356);
  if (v197 && v198 > v197)
  {
    v200 = 63;
    v201 = *(this + 358) & 0x3FLL;
    if (v201 && v201 != 63)
    {
      v200 = ~(-1 << v201);
    }

    if (*(this + 2840))
    {
      v202 = this + 2848;
    }

    else
    {
      v202 = *(this + 357);
    }

    *&v202[8 * *(this + 354) - 8] &= v200;
  }

  v203 = *(this + 343);
  v204 = *(this + 364);
  if ((v203 & 0x3F) != 0)
  {
    v205 = (v203 >> 6) + 1;
  }

  else
  {
    v205 = v203 >> 6;
  }

  *(this + 364) = v203;
  *&v356 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 2872), v205, &v356);
  if (v203 && v204 > v203)
  {
    v206 = 63;
    v207 = *(this + 364) & 0x3FLL;
    if (v207 && v207 != 63)
    {
      v206 = ~(-1 << v207);
    }

    if (*(this + 2888))
    {
      v208 = this + 2896;
    }

    else
    {
      v208 = *(this + 363);
    }

    *&v208[8 * *(this + 360) - 8] &= v206;
  }

  v186 = v369;
LABEL_301:
  re::DynamicBitset<unsigned long long,64ul>::setBit(this + 2872, v186);
  if (*(this + 2936) == 1)
  {
    v209 = *(this + 365);
    v210 = *(v336 + 47);
    LOWORD(v356) = 257;
    DWORD1(v356) = 1023969417;
    BYTE8(v356) = 0;
    re::ecs2::System::setTaskOptions(v209, v210, &v356);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 2704);
  }

  v336 = a2;
  v211 = *(this + 409);
  v212 = *(this + 820);
  if (v211 >= 0xB)
  {
    if (v212)
    {
      v213 = (this + 3288);
    }

    else
    {
      v213 = *(this + 412);
    }

    v215 = 8 * v211;
    while (!*v213)
    {
      ++v213;
      v215 -= 8;
      if (!v215)
      {
        goto LABEL_319;
      }
    }

    goto LABEL_318;
  }

  if (v212)
  {
    v214 = (this + 3288);
    if (!v211)
    {
      goto LABEL_319;
    }
  }

  else
  {
    v214 = *(this + 412);
    if (!v211)
    {
      goto LABEL_319;
    }
  }

  v216 = 0;
  v217 = 8 * v211;
  do
  {
    v218 = *v214++;
    v216 |= v218;
    v217 -= 8;
  }

  while (v217);
  if (v216)
  {
LABEL_318:
    *&v356 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 3264, 0);
    v219 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 3144, v356);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::init(v219, this + 3144, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 400, &v336, &v356);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 3264, v356);
    v220 = v356;
    goto LABEL_351;
  }

LABEL_319:
  v360 = 0u;
  v363 = 0u;
  v356 = 0u;
  *&v357 = 0;
  v358 = 0u;
  v359 = 0u;
  *(&v357 + 1) = -1;
  *&v360 = 0;
  DWORD2(v360) = 1;
  v361 = 0;
  v362 = 0;
  v221 = *(this + 398);
  *&v363 = 0;
  v16 = *(this + 394);
  DWORD2(v363) = 0;
  if (v221 + 1 > 4 * v16)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>,4ul>::setBucketsCapacity(this + 393, (v221 + 4) >> 2);
    v16 = *(this + 394);
  }

  v17 = v221 >> 2;
  if (v16 <= v221 >> 2)
  {
    goto LABEL_395;
  }

  if (*(this + 3160))
  {
    v222 = this + 3168;
  }

  else
  {
    v222 = *(this + 397);
  }

  v223 = *&v222[8 * v17];
  ++*(this + 398);
  ++*(this + 798);
  v224 = v223 + 112 * (v221 & 3);
  v225 = v356;
  v226 = v357;
  v227 = v358;
  *(v224 + 48) = v359;
  *(v224 + 16) = v226;
  *(v224 + 32) = v227;
  *v224 = v225;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v224 + 56, &v359 + 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v356);
  v229 = *(this + 398);
  if (!v229)
  {
    goto LABEL_399;
  }

  v230 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 3144, v229 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::init(v230, this + 3144, v336);
  *&v369 = *(this + 398) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 400, &v336, &v369);
  v231 = *(this + 398);
  v232 = *(this + 413);
  if ((v231 & 0x3F) != 0)
  {
    v233 = (v231 >> 6) + 1;
  }

  else
  {
    v233 = v231 >> 6;
  }

  *(this + 413) = v231;
  *&v356 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 3264), v233, &v356);
  if (v231 && v232 > v231)
  {
    v234 = 63;
    v235 = *(this + 413) & 0x3FLL;
    if (v235 && v235 != 63)
    {
      v234 = ~(-1 << v235);
    }

    if (*(this + 3280))
    {
      v236 = this + 3288;
    }

    else
    {
      v236 = *(this + 412);
    }

    *&v236[8 * *(this + 409) - 8] &= v234;
  }

  v237 = *(this + 398);
  v238 = *(this + 419);
  if ((v237 & 0x3F) != 0)
  {
    v239 = (v237 >> 6) + 1;
  }

  else
  {
    v239 = v237 >> 6;
  }

  *(this + 419) = v237;
  *&v356 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 3312), v239, &v356);
  if (v237 && v238 > v237)
  {
    v240 = 63;
    v241 = *(this + 419) & 0x3FLL;
    if (v241 && v241 != 63)
    {
      v240 = ~(-1 << v241);
    }

    if (*(this + 3328))
    {
      v242 = this + 3336;
    }

    else
    {
      v242 = *(this + 418);
    }

    *&v242[8 * *(this + 415) - 8] &= v240;
  }

  v220 = v369;
LABEL_351:
  v243 = re::DynamicBitset<unsigned long long,64ul>::setBit(this + 3312, v220);
  if (*(this + 3376) == 1)
  {
    v244 = *(this + 420);
    v245 = *(v336 + 47);
    LOWORD(v356) = 257;
    DWORD1(v356) = 1023969417;
    BYTE8(v356) = 0;
    re::ecs2::System::setTaskOptions(v244, v245, &v356);
    v243 = re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 3144);
  }

  v337 = a2;
  v246 = a2[36];
  if (v246)
  {
    v247 = re::globalAllocators(v243)[2];
    *(&v357 + 1) = v247;
    v248 = (*(*v247 + 32))(v247, 32, 0);
    *v248 = &unk_1F5CEEEA8;
    v248[1] = this + 304;
    v248[2] = re::ecs2::BaseLightComponentStateImpl<re::ecs2::LightComponent,re::ecs2::LightComponentStateImpl>::handleSceneEntityWillRemove;
    v248[3] = 0;
    *&v358 = v248;
    *(&v370 + 1) = v247;
    *&v371 = 0;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator=<24ul>(&v369, &v356);
    *v364 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(v246, &v369, 0, 0);
    *&v364[8] = v249;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(&v369);
    re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addNew(this + 360, &v337, v364);
    v243 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(&v356);
    v250 = a2[36];
    v337 = a2;
    if (v250)
    {
      v251 = re::globalAllocators(v243)[2];
      *(&v357 + 1) = v251;
      v252 = (*(*v251 + 32))(v251, 32, 0);
      *v252 = &unk_1F5CEEF00;
      v252[1] = this + 744;
      v252[2] = re::ecs2::BaseLightComponentStateImpl<re::ecs2::PointLightComponent,re::ecs2::PointLightComponentStateImpl>::handleSceneEntityWillRemove;
      v252[3] = 0;
      *&v358 = v252;
      *(&v370 + 1) = v251;
      *&v371 = 0;
      re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator=<24ul>(&v369, &v356);
      *v364 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(v250, &v369, 0, 0);
      *&v364[8] = v253;
      re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(&v369);
      re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addNew(this + 800, &v337, v364);
      v243 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(&v356);
      v254 = a2[36];
      v337 = a2;
      if (v254)
      {
        v255 = re::globalAllocators(v243)[2];
        *(&v357 + 1) = v255;
        v256 = (*(*v255 + 32))(v255, 32, 0);
        *v256 = &unk_1F5CEEF58;
        v256[1] = this + 1184;
        v256[2] = re::ecs2::BaseLightComponentStateImpl<re::ecs2::SpotLightComponent,re::ecs2::SpotLightComponentStateImpl>::handleSceneEntityWillRemove;
        v256[3] = 0;
        *&v358 = v256;
        *(&v370 + 1) = v255;
        *&v371 = 0;
        re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator=<24ul>(&v369, &v356);
        *v364 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(v254, &v369, 0, 0);
        *&v364[8] = v257;
        re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(&v369);
        re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addNew(this + 1240, &v337, v364);
        v243 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(&v356);
        v258 = a2[36];
        v337 = a2;
        if (v258)
        {
          v259 = re::globalAllocators(v243)[2];
          *(&v357 + 1) = v259;
          v260 = (*(*v259 + 32))(v259, 32, 0);
          *v260 = &unk_1F5CEEFB0;
          v260[1] = this + 1624;
          v260[2] = re::ecs2::BaseLightComponentStateImpl<re::ecs2::DirectionalLightComponent,re::ecs2::DirectionalLightComponentStateImpl>::handleSceneEntityWillRemove;
          v260[3] = 0;
          *&v358 = v260;
          *(&v370 + 1) = v259;
          *&v371 = 0;
          re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator=<24ul>(&v369, &v356);
          *v364 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(v258, &v369, 0, 0);
          *&v364[8] = v261;
          re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(&v369);
          re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addNew(this + 1680, &v337, v364);
          v243 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(&v356);
          v262 = a2[36];
          v337 = a2;
          if (v262)
          {
            v263 = re::globalAllocators(v243)[2];
            *(&v357 + 1) = v263;
            v264 = (*(*v263 + 32))(v263, 32, 0);
            *v264 = &unk_1F5CEF008;
            v264[1] = this + 2064;
            v264[2] = re::ecs2::BaseLightComponentStateImpl<re::ecs2::AmbientLightComponent,re::ecs2::AmbientLightComponentStateImpl>::handleSceneEntityWillRemove;
            v264[3] = 0;
            *&v358 = v264;
            *(&v370 + 1) = v263;
            *&v371 = 0;
            re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator=<24ul>(&v369, &v356);
            *v364 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(v262, &v369, 0, 0);
            *&v364[8] = v265;
            re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(&v369);
            re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addNew(this + 2120, &v337, v364);
            v243 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(&v356);
            v266 = a2[36];
            v337 = a2;
            if (v266)
            {
              v267 = re::globalAllocators(v243)[2];
              *(&v357 + 1) = v267;
              v268 = (*(*v267 + 32))(v267, 32, 0);
              *v268 = &unk_1F5CEF060;
              v268[1] = this + 2504;
              v268[2] = re::ecs2::BaseLightComponentStateImpl<re::ecs2::RectAreaLightComponent,re::ecs2::RectAreaLightComponentStateImpl>::handleSceneEntityWillRemove;
              v268[3] = 0;
              *&v358 = v268;
              *(&v370 + 1) = v267;
              *&v371 = 0;
              re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator=<24ul>(&v369, &v356);
              *v364 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(v266, &v369, 0, 0);
              *&v364[8] = v269;
              re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(&v369);
              re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addNew(this + 2560, &v337, v364);
              v243 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(&v356);
              v270 = a2[36];
              v337 = a2;
              if (v270)
              {
                v271 = re::globalAllocators(v243)[2];
                *(&v357 + 1) = v271;
                v272 = (*(*v271 + 32))(v271, 32, 0);
                *v272 = &unk_1F5CEF0B8;
                v272[1] = this + 2944;
                v272[2] = re::ecs2::BaseLightComponentStateImpl<re::ecs2::FrustumLightComponent,re::ecs2::FrustumLightComponentStateImpl>::handleSceneEntityWillRemove;
                v272[3] = 0;
                *&v358 = v272;
                *(&v370 + 1) = v271;
                *&v371 = 0;
                re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator=<24ul>(&v369, &v356);
                *v364 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(v270, &v369, 0, 0);
                *&v364[8] = v273;
                re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(&v369);
                re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addNew(this + 3000, &v337, v364);
                v243 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(&v356);
              }
            }
          }
        }
      }
    }
  }

  v274 = *(this + 36);
  *(this + 62) = v274;
  *(this + 117) = v274;
  *(this + 172) = v274;
  *(this + 227) = v274;
  *(this + 282) = v274;
  *(this + 337) = v274;
  *(this + 392) = v274;
  v356 = 0uLL;
  LODWORD(v357) = 1;
  v358 = 0uLL;
  *(&v357 + 1) = 0;
  LODWORD(v359) = 0;
  v276 = a2[36];
  v354 = re::globalAllocators(v275)[2];
  v277 = (*(*v354 + 32))(v354, 32, 0);
  *v277 = &unk_1F5CEE298;
  v277[1] = this;
  v277[2] = re::ecs2::LightSystem::componentDidAactivateEventHandler;
  v277[3] = 0;
  v355 = v277;
  v278 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v276, v353, re::ecs2::ComponentImpl<re::ecs2::PointLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
  v280 = v279;
  v281 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v356);
  *v281 = v278;
  v281[1] = v280;
  v282 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v353);
  v351 = re::globalAllocators(v282)[2];
  v283 = (*(*v351 + 32))(v351, 32, 0);
  *v283 = &unk_1F5CEE2F0;
  v283[1] = this;
  v283[2] = re::ecs2::LightSystem::componentWillDeactivateEventHandler;
  v283[3] = 0;
  v352 = v283;
  v284 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v276, v350, re::ecs2::ComponentImpl<re::ecs2::PointLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
  v286 = v285;
  v287 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v356);
  *v287 = v284;
  v287[1] = v286;
  v288 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v350);
  v348 = re::globalAllocators(v288)[2];
  v289 = (*(*v348 + 32))(v348, 32, 0);
  *v289 = &unk_1F5CEE298;
  v289[1] = this;
  v289[2] = re::ecs2::LightSystem::componentDidAactivateEventHandler;
  v289[3] = 0;
  v349 = v289;
  v290 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v276, v347, re::ecs2::ComponentImpl<re::ecs2::DirectionalLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
  v292 = v291;
  v293 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v356);
  *v293 = v290;
  v293[1] = v292;
  v294 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v347);
  v345 = re::globalAllocators(v294)[2];
  v295 = (*(*v345 + 32))(v345, 32, 0);
  *v295 = &unk_1F5CEE2F0;
  v295[1] = this;
  v295[2] = re::ecs2::LightSystem::componentWillDeactivateEventHandler;
  v295[3] = 0;
  v346 = v295;
  v296 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v276, v344, re::ecs2::ComponentImpl<re::ecs2::DirectionalLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
  v298 = v297;
  v299 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v356);
  *v299 = v296;
  v299[1] = v298;
  v300 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v344);
  v342 = re::globalAllocators(v300)[2];
  v301 = (*(*v342 + 32))(v342, 32, 0);
  *v301 = &unk_1F5CEE298;
  v301[1] = this;
  v301[2] = re::ecs2::LightSystem::componentDidAactivateEventHandler;
  v301[3] = 0;
  v343 = v301;
  v302 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v276, v341, re::ecs2::ComponentImpl<re::ecs2::SpotLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
  v304 = v303;
  v305 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v356);
  *v305 = v302;
  v305[1] = v304;
  v306 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v341);
  v339 = re::globalAllocators(v306)[2];
  v307 = (*(*v339 + 32))(v339, 32, 0);
  *v307 = &unk_1F5CEE2F0;
  v307[1] = this;
  v307[2] = re::ecs2::LightSystem::componentWillDeactivateEventHandler;
  v307[3] = 0;
  v340 = v307;
  v308 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v276, v338, re::ecs2::ComponentImpl<re::ecs2::SpotLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
  v310 = v309;
  v311 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v356);
  *v311 = v308;
  v311[1] = v310;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v338);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::add(this + 3384, &v335, &v356);
  re::BucketArray<RESubscriptionHandle,8ul>::deinit(&v356);
  result = v356;
  if (v356)
  {
    if ((v357 & 1) == 0)
    {
      return (*(*v356 + 40))();
    }
  }

  return result;
}

uint64_t re::ecs2::LightSystem::componentDidAactivateEventHandler(uint64_t a1, re::ecs2::ComponentTypeBase *a2, re::ecs2::LightSystem **a3)
{
  v3 = re::ecs2::LightSystem::lightComponentFromShadowMapComponentType(a3[1], a2, a3);
  if (v3)
  {
    re::ecs2::Component::markDirty(v3);
  }

  return 0;
}

uint64_t re::ecs2::LightSystem::componentWillDeactivateEventHandler(uint64_t a1, re::ecs2::ComponentTypeBase *a2, re::ecs2::LightSystem **a3)
{
  v3 = re::ecs2::LightSystem::lightComponentFromShadowMapComponentType(a3[1], a2, a3);
  if (v3)
  {
    re::ecs2::Component::markDirty(v3);
  }

  return 0;
}

uint64_t re::ecs2::LightSystem::willRemoveSceneFromECSService(re::ecs2::LightSystem *this, re::ecs2::Scene *a2)
{
  v107 = a2;
  v3 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 3384, &v107);
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + 40);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v7 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](v4, i);
        if (*(v107 + 36))
        {
          re::EventBus::unsubscribe(*(v107 + 36), *v7, v7[1]);
        }
      }
    }
  }

  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::remove(this + 3384, &v107);
  v108 = v107;
  v8 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 70, &v108);
  if (v8 != -1)
  {
    v9 = *(this + 71) + 16 * v8;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 624, *(v9 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 672, *(v9 + 8));
    v10 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 504, *(v9 + 8));
    if (*v10)
    {
      v11 = v10;
      *v10 = 0;
      v12 = v10 + 1;
      v13 = *(v10[1] + 288);
      if (v13)
      {
        v14 = v10[12];
        if (v14)
        {
          for (j = 0; j != v14; ++j)
          {
            v16 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v11 + 7), j);
            re::EventBus::unsubscribe(v13, *v16, v16[1]);
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v11 + 7));
      v17 = 0;
      v18 = v11 + 3;
      do
      {
        v19 = v11[2];
        if (*v19)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v19, v18[v17]);
        }

        v18[v17++] = -1;
      }

      while (v17 != 4);
      *v12 = 0;
      v12[1] = 0;
    }

    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 560, &v108);
  }

  v108 = v107;
  v20 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 125, &v108);
  if (v20 != -1)
  {
    v21 = *(this + 126) + 16 * v20;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 1064, *(v21 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 1112, *(v21 + 8));
    v22 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 944, *(v21 + 8));
    if (*v22)
    {
      v23 = v22;
      *v22 = 0;
      v24 = v22 + 1;
      v25 = *(v22[1] + 288);
      if (v25)
      {
        v26 = v22[12];
        if (v26)
        {
          for (k = 0; k != v26; ++k)
          {
            v28 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v23 + 7), k);
            re::EventBus::unsubscribe(v25, *v28, v28[1]);
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v23 + 7));
      v29 = 0;
      v30 = v23 + 3;
      do
      {
        v31 = v23[2];
        if (*v31)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v31, v30[v29]);
        }

        v30[v29++] = -1;
      }

      while (v29 != 4);
      *v24 = 0;
      v24[1] = 0;
    }

    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 1000, &v108);
  }

  v108 = v107;
  v32 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 180, &v108);
  if (v32 != -1)
  {
    v33 = *(this + 181) + 16 * v32;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 1504, *(v33 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 1552, *(v33 + 8));
    v34 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 1384, *(v33 + 8));
    if (*v34)
    {
      v35 = v34;
      *v34 = 0;
      v36 = v34 + 1;
      v37 = *(v34[1] + 288);
      if (v37)
      {
        v38 = v34[12];
        if (v38)
        {
          for (m = 0; m != v38; ++m)
          {
            v40 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v35 + 7), m);
            re::EventBus::unsubscribe(v37, *v40, v40[1]);
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v35 + 7));
      v41 = 0;
      v42 = v35 + 3;
      do
      {
        v43 = v35[2];
        if (*v43)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v43, v42[v41]);
        }

        v42[v41++] = -1;
      }

      while (v41 != 4);
      *v36 = 0;
      v36[1] = 0;
    }

    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 1440, &v108);
  }

  v108 = v107;
  v44 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 235, &v108);
  if (v44 != -1)
  {
    v45 = *(this + 236) + 16 * v44;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 1944, *(v45 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 1992, *(v45 + 8));
    v46 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 1824, *(v45 + 8));
    if (*v46)
    {
      v47 = v46;
      *v46 = 0;
      v48 = v46 + 1;
      v49 = *(v46[1] + 288);
      if (v49)
      {
        v50 = v46[12];
        if (v50)
        {
          for (n = 0; n != v50; ++n)
          {
            v52 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v47 + 7), n);
            re::EventBus::unsubscribe(v49, *v52, v52[1]);
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v47 + 7));
      v53 = 0;
      v54 = v47 + 3;
      do
      {
        v55 = v47[2];
        if (*v55)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v55, v54[v53]);
        }

        v54[v53++] = -1;
      }

      while (v53 != 4);
      *v48 = 0;
      v48[1] = 0;
    }

    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 1880, &v108);
  }

  v108 = v107;
  v56 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 290, &v108);
  if (v56 != -1)
  {
    v57 = *(this + 291) + 16 * v56;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 2384, *(v57 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 2432, *(v57 + 8));
    v58 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 2264, *(v57 + 8));
    if (*v58)
    {
      v59 = v58;
      *v58 = 0;
      v60 = v58 + 1;
      v61 = *(v58[1] + 288);
      if (v61)
      {
        v62 = v58[12];
        if (v62)
        {
          for (ii = 0; ii != v62; ++ii)
          {
            v64 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v59 + 7), ii);
            re::EventBus::unsubscribe(v61, *v64, v64[1]);
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v59 + 7));
      v65 = 0;
      v66 = v59 + 3;
      do
      {
        v67 = v59[2];
        if (*v67)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v67, v66[v65]);
        }

        v66[v65++] = -1;
      }

      while (v65 != 4);
      *v60 = 0;
      v60[1] = 0;
    }

    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 2320, &v108);
  }

  v108 = v107;
  v68 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 345, &v108);
  if (v68 != -1)
  {
    v69 = *(this + 346) + 16 * v68;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 2824, *(v69 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 2872, *(v69 + 8));
    v70 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 2704, *(v69 + 8));
    if (*v70)
    {
      v71 = v70;
      *v70 = 0;
      v72 = v70 + 1;
      v73 = *(v70[1] + 288);
      if (v73)
      {
        v74 = v70[12];
        if (v74)
        {
          for (jj = 0; jj != v74; ++jj)
          {
            v76 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v71 + 7), jj);
            re::EventBus::unsubscribe(v73, *v76, v76[1]);
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v71 + 7));
      v77 = 0;
      v78 = v71 + 3;
      do
      {
        v79 = v71[2];
        if (*v79)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v79, v78[v77]);
        }

        v78[v77++] = -1;
      }

      while (v77 != 4);
      *v72 = 0;
      v72[1] = 0;
    }

    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 2760, &v108);
  }

  v108 = v107;
  v80 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 400, &v108);
  if (v80 != -1)
  {
    v81 = *(this + 401) + 16 * v80;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 3264, *(v81 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 3312, *(v81 + 8));
    v82 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 3144, *(v81 + 8));
    if (*v82)
    {
      v83 = v82;
      *v82 = 0;
      v84 = v82 + 1;
      v85 = *(v82[1] + 288);
      if (v85)
      {
        v86 = v82[12];
        if (v86)
        {
          for (kk = 0; kk != v86; ++kk)
          {
            v88 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v83 + 7), kk);
            re::EventBus::unsubscribe(v85, *v88, v88[1]);
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v83 + 7));
      v89 = 0;
      v90 = v83 + 3;
      do
      {
        v91 = v83[2];
        if (*v91)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v91, v90[v89]);
        }

        v90[v89++] = -1;
      }

      while (v89 != 4);
      *v84 = 0;
      v84[1] = 0;
    }

    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 3200, &v108);
  }

  v108 = v107;
  v92 = *(v107 + 36);
  if (v92)
  {
    v93 = re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(this + 360, &v108);
    if (v93)
    {
      re::EventBus::unsubscribe(v92, *v93, v93[1]);
    }
  }

  re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 360, &v108);
  re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 312, v108);
  v108 = v107;
  v94 = *(v107 + 36);
  if (v94)
  {
    v95 = re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(this + 800, &v108);
    if (v95)
    {
      re::EventBus::unsubscribe(v94, *v95, v95[1]);
    }
  }

  re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 800, &v108);
  re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 752, v108);
  v108 = v107;
  v96 = *(v107 + 36);
  if (v96)
  {
    v97 = re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(this + 1240, &v108);
    if (v97)
    {
      re::EventBus::unsubscribe(v96, *v97, v97[1]);
    }
  }

  re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 1240, &v108);
  re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 1192, v108);
  v108 = v107;
  v98 = *(v107 + 36);
  if (v98)
  {
    v99 = re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(this + 1680, &v108);
    if (v99)
    {
      re::EventBus::unsubscribe(v98, *v99, v99[1]);
    }
  }

  re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 1680, &v108);
  re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 1632, v108);
  v108 = v107;
  v100 = *(v107 + 36);
  if (v100)
  {
    v101 = re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(this + 2120, &v108);
    if (v101)
    {
      re::EventBus::unsubscribe(v100, *v101, v101[1]);
    }
  }

  re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 2120, &v108);
  re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 2072, v108);
  v108 = v107;
  v102 = *(v107 + 36);
  if (v102)
  {
    v103 = re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(this + 2560, &v108);
    if (v103)
    {
      re::EventBus::unsubscribe(v102, *v103, v103[1]);
    }
  }

  re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 2560, &v108);
  re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 2512, v108);
  v108 = v107;
  v104 = *(v107 + 36);
  if (v104)
  {
    v105 = re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(this + 3000, &v108);
    if (v105)
    {
      re::EventBus::unsubscribe(v104, *v105, v105[1]);
    }
  }

  re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 3000, &v108);
  re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 2952, v108);
  result = *(this + 37);
  if (result)
  {
    return (*(*result + 88))(result, v107);
  }

  return result;
}

uint64_t re::ecs2::LightSystem::lightComponentFromShadowMapComponentType(re::ecs2::LightSystem *this, re::ecs2::ComponentTypeBase *a2, re::ecs2::Entity *a3)
{
  if (re::ecs2::ComponentImpl<re::ecs2::PointLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType == this)
  {
    v4 = &re::ecs2::ComponentImpl<re::ecs2::PointLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  }

  else if (re::ecs2::ComponentImpl<re::ecs2::DirectionalLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType == this)
  {
    v4 = &re::ecs2::ComponentImpl<re::ecs2::DirectionalLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  }

  else
  {
    if (re::ecs2::ComponentImpl<re::ecs2::SpotLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType != this)
    {
      return 0;
    }

    v4 = &re::ecs2::ComponentImpl<re::ecs2::SpotLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  }

  return re::ecs2::EntityComponentCollection::get((a2 + 48), *v4);
}

void *re::ecs2::allocInfo_LightSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A6B00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A6B00))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A6B08, "LightSystem");
    __cxa_guard_release(&qword_1EE1A6B00);
  }

  return &unk_1EE1A6B08;
}

void re::ecs2::initInfo_LightSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x1CEFB079BB7258ALL;
  v8[1] = "LightSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0xD6800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_LightSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::LightSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::LightSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::LightSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::LightSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::LightSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::LightSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::ecs2::LightSystem::~LightSystem(re::ecs2::LightSystem *this)
{
  re::ecs2::LightSystem::~LightSystem(this);

  JUMPOUT(0x1E6906520);
}

{
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 423);
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(this + 3144);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 3200);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 3264);
  *(this + 413) = 0;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 3312);
  *(this + 421) = 0;
  *(this + 3352) = 0u;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 3312);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 3264);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 3200);
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(this + 3144);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 3144);
  *(this + 368) = &unk_1F5CEE348;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 3048);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 375);
  re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 369);
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(this + 2704);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 2760);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2824);
  *(this + 358) = 0;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2872);
  *(this + 366) = 0;
  *(this + 182) = 0u;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2872);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2824);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 2760);
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(this + 2704);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2704);
  *(this + 313) = &unk_1F5CEE388;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2608);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 320);
  re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 314);
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(this + 2264);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 2320);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2384);
  *(this + 303) = 0;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2432);
  *(this + 311) = 0;
  *(this + 2472) = 0u;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2432);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2384);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 2320);
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(this + 2264);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2264);
  *(this + 258) = &unk_1F5CEE3C8;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 2168);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 265);
  re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 259);
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(this + 1824);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 1880);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1944);
  *(this + 248) = 0;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1992);
  *(this + 256) = 0;
  *(this + 127) = 0u;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1992);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1944);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 1880);
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(this + 1824);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1824);
  *(this + 203) = &unk_1F5CEE408;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1728);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 210);
  re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 204);
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(this + 1384);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 1440);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1504);
  *(this + 193) = 0;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1552);
  *(this + 201) = 0;
  *(this + 1592) = 0u;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1552);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1504);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 1440);
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(this + 1384);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1384);
  *(this + 148) = &unk_1F5CEE448;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1288);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 155);
  re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 149);
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(this + 944);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 1000);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1064);
  *(this + 138) = 0;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1112);
  *(this + 146) = 0;
  *(this + 72) = 0u;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1112);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1064);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 1000);
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(this + 944);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 944);
  *(this + 93) = &unk_1F5CEE488;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 848);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 100);
  re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 94);
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(this + 504);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 560);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 624);
  *(this + 83) = 0;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 672);
  *(this + 91) = 0;
  *(this + 712) = 0u;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 672);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 624);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 560);
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(this + 504);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 504);
  *(this + 38) = &unk_1F5CEE4C8;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 408);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 45);
  re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 39);

  re::ecs2::System::~System(this);
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::PointLightComponent,re::ecs2::PointLightComponentStateImpl>::dependsOnComponents(uint64_t a1)
{
  v1 = a1 + 128;
  if ((*(a1 + 120) & 1) == 0)
  {
    return *(a1 + 136);
  }

  return v1;
}

void re::ecs2::BaseLightComponentStateImpl<re::ecs2::PointLightComponent,re::ecs2::PointLightComponentStateImpl>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = 0;
  v43 = *MEMORY[0x1E69E9840];
  v26 = 769;
  v9 = a2 + 24;
  v10 = 1;
  do
  {
    v10 &= *(re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](*(a2 + 16) + 8, *(v9 + 8 * *(&v26 + v8++))) + 40) == 0;
  }

  while (v8 != 2);
  if (v10)
  {
    return;
  }

  if (re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType != a4)
  {
    v11 = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::PointLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (!v11)
    {
      return;
    }

    v12 = v11;
    if (!*(v11 + 240) || re::ecs2::ComponentImpl<re::ecs2::PointLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType != a4)
    {
      return;
    }

    v13 = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::PointLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    re::DynamicString::DynamicString(location, (v12 + 48));
    v14 = *(v12 + 128);
    v31 = *(v12 + 112);
    v32 = v14;
    v33[0] = *(v12 + 144);
    *(v33 + 12) = *(v12 + 156);
    v15 = *(v12 + 96);
    v29 = *(v12 + 80);
    v30 = v15;
    v16 = *(v12 + 208);
    v17 = *(v12 + 224);
    v39 = *(v12 + 256);
    v36 = v16;
    v37 = v17;
    v38 = *(v12 + 240);
    v18 = *(v12 + 192);
    v34 = *(v12 + 176);
    v35 = v18;
    v40 = *(v12 + 260);
    if (v40 == 1)
    {
      v41 = *(v12 + 261);
    }

    v42 = *(v12 + 262);
    re::DynamicString::operator=((v12 + 48), location);
    v19 = v30;
    *(v12 + 80) = v29;
    *(v12 + 96) = v19;
    *(v12 + 156) = *(v33 + 12);
    v20 = v33[0];
    *(v12 + 128) = v32;
    *(v12 + 144) = v20;
    *(v12 + 112) = v31;
    v21 = v35;
    *(v12 + 176) = v34;
    *(v12 + 192) = v21;
    *(v12 + 256) = v39;
    v22 = v38;
    *(v12 + 224) = v37;
    *(v12 + 240) = v22;
    *(v12 + 208) = v36;
    if (*(v12 + 260))
    {
      if ((v40 & 1) == 0)
      {
        *(v12 + 260) = 0;
        goto LABEL_21;
      }
    }

    else
    {
      if ((v40 & 1) == 0)
      {
        goto LABEL_21;
      }

      *(v12 + 260) = 1;
    }

    *(v12 + 261) = v41;
LABEL_21:
    *(v12 + 262) = v42;
    if (location[0])
    {
      if (location[1])
      {
        (*(*location[0] + 40))();
      }
    }

    return;
  }

  v25 = *(a2 + 8);
  v28 = 0u;
  v29 = 0u;
  *location = 0u;
  DWORD1(v29) = 0x7FFFFFFF;
  v23 = re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(a1 + 8, &v25, location);
  re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::deinit(location);
  if (a3)
  {
    v24 = (a3 + 8);
  }

  else
  {
    v24 = 0;
  }

  objc_initWeak(location, v24);
  re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::add(v23, location);
  objc_destroyWeak(location);
}

BOOL re::ecs2::BaseLightComponentStateImpl<re::ecs2::PointLightComponent,re::ecs2::PointLightComponentStateImpl>::processDirtyComponents(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = *MEMORY[0x1E69E9840];
  v10 = *(a6 + 16);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v36, a5, 0);
  v30 = a4;
  v31 = *&v36[0];
  v32 = DWORD2(v36[0]);
  if (*&v36[0] != a5 || DWORD2(v36[0]) != 0xFFFFFFFFLL)
  {
    while (1)
    {
      v12 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v31);
      if (*re::ecs2::RenderOptions::forEntity(v10, *(*v12 + 16)) == 1)
      {
        break;
      }

      v27 = 1;
LABEL_26:
      v28 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v31);
      re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::setComponentState(a3, v30, v28, v27);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v31);
      if (v31 == a5 && v32 == 0xFFFF && HIWORD(v32) == 0xFFFF)
      {
        return *(a5 + 40) != 0;
      }
    }

    v13 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v31);
    v14 = *v13;
    v15 = *(*v13 + 16);
    memset(v36, 0, sizeof(v36));
    re::DynamicString::setCapacity(v36, 0);
    v40 = 0u;
    memset(v41, 0, 20);
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    *&v41[20] = 0x412000003C23D70ALL;
    v48 = 0;
    v45 = 0u;
    memset(v46, 0, sizeof(v46));
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    *v46 = v15[39];
    re::DynamicString::format(&v33, "%s_%llu", v16, v15[37], *v46);
    re::DynamicString::operator=(v36, &v33);
    if (v33 && (v34 & 1) != 0)
    {
      (*(*v33 + 40))();
    }

    v17 = *(v14 + 280);
    v18 = *(v14 + 288);
    v33 = *(v14 + 272);
    v35 = v18;
    v34 = v17;
    *&v19 = re::ColorGamut3F::as(&v33, *(a6 + 28), 1);
    DWORD2(v19) = v20;
    *v41 = v19;
    *&v41[16] = *(v14 + 28);
    *&v46[8] = *(v14 + 32);
    *&v41[20] = 1008981770;
    *&v41[24] = *&v46[8];
    v21 = re::ecs2::EntityComponentCollection::get((v15 + 6), re::ecs2::ComponentImpl<re::ecs2::PointLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v22 = re::ecs2::EntityComponentCollection::get((v15 + 6), re::ecs2::ComponentImpl<re::ecs2::ShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    LOBYTE(v48) = re::ecs2::EntityComponentCollection::get((v15 + 6), re::ecs2::ComponentImpl<re::ecs2::FilterMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) != 0;
    if (HIBYTE(v48) == 1 && *(a6 + 24) == 1)
    {
      HIBYTE(v48) = *(a6 + 25);
    }

    if (v48 == 1 && *(a6 + 26) == 1)
    {
      LOBYTE(v48) = *(a6 + 27);
    }

    re::DynamicString::operator=((v14 + 48), v36);
    v23 = v38;
    *(v14 + 80) = v37;
    *(v14 + 96) = v23;
    *(v14 + 156) = *&v41[12];
    v24 = *v41;
    *(v14 + 128) = v40;
    *(v14 + 144) = v24;
    *(v14 + 112) = v39;
    *(v14 + 256) = *&v46[16];
    v25 = *v46;
    *(v14 + 224) = v45;
    *(v14 + 240) = v25;
    v26 = v44;
    *(v14 + 192) = v43;
    *(v14 + 208) = v26;
    *(v14 + 176) = v42;
    if (*(v14 + 260))
    {
      if ((v46[20] & 1) == 0)
      {
        *(v14 + 260) = 0;
        goto LABEL_22;
      }
    }

    else
    {
      if ((v46[20] & 1) == 0)
      {
        goto LABEL_22;
      }

      *(v14 + 260) = 1;
    }

    *(v14 + 261) = v47;
LABEL_22:
    *(v14 + 262) = v48;
    if (*&v36[0] && (BYTE8(v36[0]) & 1) != 0)
    {
      (*(**&v36[0] + 40))();
    }

    v27 = 3;
    goto LABEL_26;
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::PointLightComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v17, a5, 0);
  v8 = v17;
  v9 = v18;
  v10 = v18;
  v17 = a4;
  v18 = v8;
  v19 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = v17;
      v13 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v18);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v12, v13, *(a3 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v18);
    }

    while (v18 != a5 || v19 != 0xFFFF || HIWORD(v19) != 0xFFFF);
  }

  return 0;
}

BOOL re::ecs2::BaseLightComponentStateImpl<re::ecs2::PointLightComponent,re::ecs2::PointLightComponentStateImpl>::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6)
{
  v63 = *MEMORY[0x1E69E9840];
  v10 = *a6;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(buf, a5, 0);
  v54 = *buf;
  v55 = *&buf[8];
  if (*buf != a5 || *&buf[8] != 0xFFFFFFFFLL)
  {
    v52 = vdupq_n_s32(0x38D1B717u);
    do
    {
      v12 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v54);
      v13 = *v12;
      v14 = *(*v12 + 16);
      re::TransformService::worldMatrix(*(a1 + 192), v14, 0, buf);
      v15 = v60;
      *(v13 + 80) = *buf;
      *(v13 + 96) = v15;
      v16 = v62;
      *(v13 + 112) = v61;
      *(v13 + 128) = v16;
      if (v56[0] == 1)
      {
        v22 = v57;
        v23 = *(v13 + 36);
        *(v13 + 248) = v57 * *(v13 + 32);
        *(v13 + 160) = *(v13 + 28) * powf(v22, v23);
      }

      v24 = 0;
      v20.i64[0] = *(v13 + 80);
      v18.i64[0] = *(v13 + 96);
      v19.i64[0] = *(v13 + 112);
      v25 = vzip1q_s32(v20, v19);
      v20.i32[2] = *(v13 + 88);
      v19.i32[2] = *(v13 + 120);
      v21.i32[0] = *(v13 + 104);
      v26 = vzip1q_s32(v25, v18);
      v18.i32[2] = v21.i32[0];
      v58[0] = v26;
      v58[1] = vzip2q_s32(v25, vdupq_lane_s32(*v18.f32, 1));
      v58[2] = vzip1q_s32(vzip2q_s32(v20, v19), v21);
      do
      {
        *&buf[v24 * 16] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, COERCE_FLOAT(v58[v24])), v18, *&v58[v24], 1), v19, v58[v24], 2);
        ++v24;
      }

      while (v24 != 3);
      v27.i32[3] = v61.i32[3];
      v28 = vcgeq_f32(v52, vabdq_f32(xmmword_1E30476A0, v61));
      v29 = vandq_s8(vandq_s8(vcgeq_f32(v52, vabdq_f32(xmmword_1E3047680, v60)), vcgeq_f32(v52, vabdq_f32(xmmword_1E3047670, *buf))), v28);
      v29.i32[3] = v29.i32[2];
      if ((vminvq_u32(v29) & 0x80000000) == 0)
      {
        if ((atomic_exchange(&re::ecs2::PointLightComponentStateImpl::processUpdatingComponent(re::ecs2::PointLightComponent *,void *,re::ecs2::WorldRootProvider const&)::__FILE____LINE___logged, 1u) & 1) == 0)
        {
          v30 = *re::ecsComponentsLogObjects(v17);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_DEFAULT, "Light transform is not orthogonal, forced to orthogonalize it.", buf, 2u);
          }
        }

        v29.i64[0] = *(v13 + 80);
        v27.i64[0] = *(v13 + 96);
        v28.i64[0] = *(v13 + 112);
        v29.i32[2] = *(v13 + 88);
        v27.i32[2] = *(v13 + 104);
        v28.i32[2] = *(v13 + 120);
        v31 = vmulq_f32(v29, v29);
        *&v32 = v31.f32[2] + vaddv_f32(*v31.f32);
        *v31.f32 = vrsqrte_f32(v32);
        *v31.f32 = vmul_f32(*v31.f32, vrsqrts_f32(v32, vmul_f32(*v31.f32, *v31.f32)));
        v33 = vmulq_n_f32(v29, vmul_f32(*v31.f32, vrsqrts_f32(v32, vmul_f32(*v31.f32, *v31.f32))).f32[0]);
        v34 = vmulq_f32(v27, v33);
        v35 = vmulq_f32(v33, v33);
        v36 = vmulq_f32(v28, v33);
        *v35.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v36, v36, 8uLL), *&vextq_s8(v35, v35, 8uLL)), vadd_f32(vzip1_s32(*v36.i8, *v35.i8), vzip2_s32(*v36.i8, *v35.i8)));
        v37 = vsubq_f32(v27, vmulq_n_f32(v33, (v34.f32[2] + vaddv_f32(*v34.f32)) / *&v35.i32[1]));
        v38 = vmulq_f32(v37, v37);
        *&v39 = v38.f32[2] + vaddv_f32(*v38.f32);
        *v38.f32 = vrsqrte_f32(v39);
        *v38.f32 = vmul_f32(*v38.f32, vrsqrts_f32(v39, vmul_f32(*v38.f32, *v38.f32)));
        v40 = vmulq_n_f32(v37, vmul_f32(*v38.f32, vrsqrts_f32(v39, vmul_f32(*v38.f32, *v38.f32))).f32[0]);
        v41 = vsubq_f32(v28, vmulq_n_f32(v33, *v35.i32 / *&v35.i32[1]));
        v42 = vmulq_f32(v28, v40);
        v43 = vmulq_f32(v40, v40);
        *v42.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v42, v42, 8uLL), *&vextq_s8(v43, v43, 8uLL)), vadd_f32(vzip1_s32(*v42.i8, *v43.i8), vzip2_s32(*v42.i8, *v43.i8)));
        v44 = vsubq_f32(v41, vmulq_n_f32(v40, vdiv_f32(*v42.i8, vdup_lane_s32(*v42.i8, 1)).f32[0]));
        v45 = vmulq_f32(v44, v44);
        *v43.i32 = v45.f32[2] + vaddv_f32(*v45.f32);
        *v45.f32 = vrsqrte_f32(v43.u32[0]);
        *v45.f32 = vmul_f32(*v45.f32, vrsqrts_f32(v43.u32[0], vmul_f32(*v45.f32, *v45.f32)));
        *(v13 + 80) = v33.i64[0];
        *(v13 + 88) = v33.i32[2];
        *(v13 + 96) = v40.i64[0];
        *(v13 + 104) = v40.i32[2];
        v46 = vmulq_n_f32(v44, vmul_f32(*v45.f32, vrsqrts_f32(v43.u32[0], vmul_f32(*v45.f32, *v45.f32))).f32[0]);
        *(v13 + 112) = v46.i64[0];
        *(v13 + 120) = v46.i32[2];
      }

      v47 = re::ecs2::ComponentStatePayload::lightArraysForEntity(a6, v14, v10);
      if (v47)
      {
        v48 = v47;
        re::DynamicArray<re::PointLightInfo>::add((v47 + 21), (v13 + 48));
        if (*(v13 + 263) == 1)
        {
          v49 = re::DynamicArray<re::DynamicLightShadowInfo>::add((v48 + 31), buf);
          if (*buf)
          {
            if (buf[8])
            {
              (*(**buf + 40))(v49);
            }
          }
        }
      }

      v50 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v54);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), a4, v50, *(a3 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v54);
    }

    while (v54 != a5 || v55 != 0xFFFF || HIWORD(v55) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::SpotLightComponent,re::ecs2::SpotLightComponentStateImpl>::dependsOnComponents(uint64_t a1)
{
  v1 = a1 + 128;
  if ((*(a1 + 120) & 1) == 0)
  {
    return *(a1 + 136);
  }

  return v1;
}

void re::ecs2::BaseLightComponentStateImpl<re::ecs2::SpotLightComponent,re::ecs2::SpotLightComponentStateImpl>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = 0;
  v26 = 769;
  v9 = a2 + 24;
  v10 = 1;
  do
  {
    v10 &= *(re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](*(a2 + 16) + 8, *(v9 + 8 * *(&v26 + v8++))) + 40) == 0;
  }

  while (v8 != 2);
  if (v10)
  {
    return;
  }

  if (re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType == a4)
  {
    v25 = *(a2 + 8);
    v28 = 0u;
    v29 = 0u;
    *location = 0u;
    DWORD1(v29) = 0x7FFFFFFF;
    v23 = re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(a1 + 8, &v25, location);
    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::deinit(location);
    if (a3)
    {
      v24 = (a3 + 8);
    }

    else
    {
      v24 = 0;
    }

    objc_initWeak(location, v24);
    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::add(v23, location);
    objc_destroyWeak(location);
    return;
  }

  v11 = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::SpotLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (!v11)
  {
    return;
  }

  v12 = v11;
  if (!*(v11 + 240) || re::ecs2::ComponentImpl<re::ecs2::SpotLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType != a4)
  {
    return;
  }

  v13 = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::SpotLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  re::DynamicString::DynamicString(location, (v12 + 48));
  v14 = *(v12 + 128);
  v31 = *(v12 + 112);
  v32 = v14;
  v33[0] = *(v12 + 144);
  *(v33 + 12) = *(v12 + 156);
  v15 = *(v12 + 96);
  v29 = *(v12 + 80);
  v30 = v15;
  v16 = *(v12 + 208);
  v17 = *(v12 + 224);
  *&v38[12] = *(v12 + 252);
  v36 = v16;
  v37 = v17;
  *v38 = *(v12 + 240);
  v18 = *(v12 + 192);
  v34 = *(v12 + 176);
  v35 = v18;
  v39 = *(v12 + 268);
  if (v39 == 1)
  {
    v40 = *(v12 + 269);
  }

  v41 = *(v12 + 270);
  v42 = *(v12 + 272);
  v43 = *(v12 + 280);
  re::DynamicString::operator=((v12 + 48), location);
  v19 = v30;
  *(v12 + 80) = v29;
  *(v12 + 96) = v19;
  *(v12 + 156) = *(v33 + 12);
  v20 = v33[0];
  *(v12 + 128) = v32;
  *(v12 + 144) = v20;
  *(v12 + 112) = v31;
  v21 = v35;
  *(v12 + 176) = v34;
  *(v12 + 192) = v21;
  *(v12 + 252) = *&v38[12];
  v22 = *v38;
  *(v12 + 224) = v37;
  *(v12 + 240) = v22;
  *(v12 + 208) = v36;
  if ((*(v12 + 268) & 1) == 0)
  {
    if ((v39 & 1) == 0)
    {
      goto LABEL_21;
    }

    *(v12 + 268) = 1;
LABEL_20:
    *(v12 + 269) = v40;
    goto LABEL_21;
  }

  if (v39)
  {
    goto LABEL_20;
  }

  *(v12 + 268) = 0;
LABEL_21:
  *(v12 + 270) = v41;
  *(v12 + 272) = v42;
  NS::SharedPtr<MTL::Buffer>::operator=((v12 + 280), &v43);
  if (v43)
  {

    v43 = 0;
  }

  if (location[0])
  {
    if (location[1])
    {
      (*(*location[0] + 40))();
    }
  }
}

BOOL re::ecs2::BaseLightComponentStateImpl<re::ecs2::SpotLightComponent,re::ecs2::SpotLightComponentStateImpl>::processDirtyComponents(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a5;
  v9 = *(a6 + 16);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v40, a5, 0);
  v34 = a4;
  v35 = *&v40[0];
  v36 = DWORD2(v40[0]);
  if (*&v40[0] != v6 || DWORD2(v40[0]) != 0xFFFFFFFFLL)
  {
    do
    {
      v11 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v35);
      if (*re::ecs2::RenderOptions::forEntity(v9, *(*v11 + 16)) == 1)
      {
        v12 = v6;
        v13 = v9;
        v14 = a3;
        v15 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v35);
        v16 = *v15;
        v17 = *(*v15 + 16);
        memset(v40, 0, sizeof(v40));
        re::DynamicString::setCapacity(v40, 0);
        v44 = 0u;
        memset(v45, 0, 20);
        v42 = 0u;
        v43 = 0u;
        v41 = 0u;
        *&v45[20] = 0x412000003C23D70ALL;
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v49 = 0u;
        memset(v50, 0, sizeof(v50));
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        *v50 = v17[39];
        re::DynamicString::format(&v37, "%s_%llu", v18, v17[37], *v50);
        re::DynamicString::operator=(v40, &v37);
        if (v37 && (v38 & 1) != 0)
        {
          (*(*v37 + 40))();
        }

        v19 = *(v16 + 296);
        v20 = *(v16 + 304);
        v37 = *(v16 + 288);
        v39 = v20;
        v38 = v19;
        *&v21 = re::ColorGamut3F::as(&v37, *(a6 + 28), 1);
        DWORD2(v21) = v22;
        *v45 = v21;
        *&v45[16] = *(v16 + 28);
        v23 = *(v16 + 32);
        *&v50[8] = vextq_s8(v23, v23, 8uLL);
        *&v45[20] = 1008981770;
        *&v45[24] = v23.i32[2];
        LOBYTE(v52) = 0;
        v24 = re::ecs2::EntityComponentCollection::get((v17 + 6), re::ecs2::ComponentImpl<re::ecs2::SpotLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        v25 = re::ecs2::EntityComponentCollection::get((v17 + 6), re::ecs2::ComponentImpl<re::ecs2::ShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        HIBYTE(v52) = re::ecs2::EntityComponentCollection::get((v17 + 6), re::ecs2::ComponentImpl<re::ecs2::FilterMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) != 0;
        if (v53 == 1 && *(a6 + 24) == 1)
        {
          v53 = *(a6 + 25);
        }

        a3 = v14;
        if (HIBYTE(v52) == 1 && *(a6 + 26) == 1)
        {
          HIBYTE(v52) = *(a6 + 27);
        }

        re::DynamicString::operator=((v16 + 48), v40);
        v26 = v42;
        *(v16 + 80) = v41;
        *(v16 + 96) = v26;
        *(v16 + 156) = *&v45[12];
        v27 = *v45;
        *(v16 + 128) = v44;
        *(v16 + 144) = v27;
        *(v16 + 112) = v43;
        *(v16 + 252) = *&v50[12];
        v28 = *v50;
        *(v16 + 224) = v49;
        *(v16 + 240) = v28;
        v29 = v48;
        *(v16 + 192) = v47;
        *(v16 + 208) = v29;
        *(v16 + 176) = v46;
        v9 = v13;
        v6 = v12;
        if (*(v16 + 268))
        {
          if (v50[28])
          {
            *(v16 + 269) = v51;
          }

          else
          {
            *(v16 + 268) = 0;
          }
        }

        else if (v50[28])
        {
          *(v16 + 268) = 1;
          *(v16 + 269) = v51;
        }

        *(v16 + 270) = v52;
        *(v16 + 272) = v53;
        NS::SharedPtr<MTL::Buffer>::operator=((v16 + 280), &v54);
        if (v54)
        {

          v54 = 0;
        }

        if (*&v40[0] && (BYTE8(v40[0]) & 1) != 0)
        {
          (*(**&v40[0] + 40))();
        }

        v30 = 3;
      }

      else
      {
        v30 = 1;
      }

      v31 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v35);
      re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::setComponentState(a3, v34, v31, v30);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v35);
    }

    while (v35 != v6 || v36 != 0xFFFF || HIWORD(v36) != 0xFFFF);
  }

  return *(v6 + 40) != 0;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::SpotLightComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v17, a5, 0);
  v8 = v17;
  v9 = v18;
  v10 = v18;
  v17 = a4;
  v18 = v8;
  v19 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = v17;
      v13 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v18);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v12, v13, *(a3 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v18);
    }

    while (v18 != a5 || v19 != 0xFFFF || HIWORD(v19) != 0xFFFF);
  }

  return 0;
}

BOOL re::ecs2::BaseLightComponentStateImpl<re::ecs2::SpotLightComponent,re::ecs2::SpotLightComponentStateImpl>::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6)
{
  v76 = *MEMORY[0x1E69E9840];
  v62 = *a6;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(buf, a5, 0);
  v64 = *buf;
  v65 = *&buf[8];
  if (*buf != a5 || *&buf[8] != 0xFFFFFFFFLL)
  {
    v61 = vdupq_n_s32(0x38D1B717u);
    do
    {
      v11 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v64);
      v12 = *v11;
      v13 = *(*v11 + 16);
      re::TransformService::worldMatrix(*(a1 + 192), v13, 0, buf);
      v14 = v73;
      *(v12 + 80) = *buf;
      *(v12 + 96) = v14;
      v15 = v75;
      *(v12 + 112) = v74;
      *(v12 + 128) = v15;
      if (v70[0] == 1)
      {
        v21 = v71;
        v22 = *(v12 + 44);
        *(v12 + 248) = v71 * *(v12 + 40);
        *(v12 + 160) = *(v12 + 28) * powf(v21, v22);
        v23 = v21 * *(v12 + 164);
        v24 = v21 * *(v12 + 168);
        v25 = tanf(*(v12 + 256) * 0.5);
        v26 = 1.0 / v25;
        if (v24 == INFINITY)
        {
          v27 = -v23;
          DWORD1(v28) = 0;
          *(&v28 + 1) = 0;
          *&v28 = 1.0 / v25;
          v29.i32[0] = 0;
          v29.i64[1] = 0;
          v29.f32[1] = v26;
          v30 = xmmword_1E3085330;
        }

        else
        {
          DWORD1(v28) = 0;
          *(&v28 + 1) = 0;
          *&v28 = 1.0 / v25;
          v29.i32[0] = 0;
          v29.i64[1] = 0;
          v29.f32[1] = v26;
          v27 = (v23 * v24) / (v23 - v24);
          *&v30 = 0;
          *(&v30 + 2) = v24 / (v23 - v24);
          HIDWORD(v30) = -1.0;
        }

        *&v31 = 0;
        *(&v31 + 1) = LODWORD(v27);
        *buf = v28;
        v73 = v29;
        v74 = v30;
        v75 = v31;
        re::Projection::makeReverseDepth(buf, &v66);
        v32 = v67;
        *(v12 + 176) = v66;
        *(v12 + 192) = v32;
        v17.i64[1] = v68.i64[1];
        v18 = v69;
        *(v12 + 208) = v68;
        *(v12 + 224) = v18;
      }

      v33 = 0;
      v19.i64[0] = *(v12 + 80);
      v17.i64[0] = *(v12 + 96);
      v18.i64[0] = *(v12 + 112);
      v34 = vzip1q_s32(v19, v18);
      v19.i32[2] = *(v12 + 88);
      v18.i32[2] = *(v12 + 120);
      v20.i32[0] = *(v12 + 104);
      v35 = vzip1q_s32(v34, v17);
      v17.i32[2] = v20.i32[0];
      v66 = v35;
      v67 = vzip2q_s32(v34, vdupq_lane_s32(*v17.f32, 1));
      v68 = vzip1q_s32(vzip2q_s32(v19, v18), v20);
      do
      {
        *&buf[v33] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, COERCE_FLOAT(*(&v66 + v33))), v17, *&v66.i8[v33], 1), v18, *(&v66 + v33), 2);
        v33 += 16;
      }

      while (v33 != 48);
      v36.i32[3] = HIDWORD(v74);
      v37 = vcgeq_f32(v61, vabdq_f32(xmmword_1E30476A0, v74));
      v38 = vandq_s8(vandq_s8(vcgeq_f32(v61, vabdq_f32(xmmword_1E3047680, v73)), vcgeq_f32(v61, vabdq_f32(xmmword_1E3047670, *buf))), v37);
      v38.i32[3] = v38.i32[2];
      if ((vminvq_u32(v38) & 0x80000000) == 0)
      {
        if ((atomic_exchange(&re::ecs2::SpotLightComponentStateImpl::processUpdatingComponent(re::ecs2::SpotLightComponent *,void *,re::ecs2::WorldRootProvider const&)::__FILE____LINE___logged, 1u) & 1) == 0)
        {
          v39 = *re::ecsComponentsLogObjects(v16);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_DEFAULT, "Light transform is not orthogonal, forced to orthogonalize it.", buf, 2u);
          }
        }

        v38.i64[0] = *(v12 + 80);
        v36.i64[0] = *(v12 + 96);
        v37.i64[0] = *(v12 + 112);
        v38.i32[2] = *(v12 + 88);
        v36.i32[2] = *(v12 + 104);
        v37.i32[2] = *(v12 + 120);
        v40 = vmulq_f32(v38, v38);
        *&v41 = v40.f32[2] + vaddv_f32(*v40.f32);
        *v40.f32 = vrsqrte_f32(v41);
        *v40.f32 = vmul_f32(*v40.f32, vrsqrts_f32(v41, vmul_f32(*v40.f32, *v40.f32)));
        v42 = vmulq_n_f32(v38, vmul_f32(*v40.f32, vrsqrts_f32(v41, vmul_f32(*v40.f32, *v40.f32))).f32[0]);
        v43 = vmulq_f32(v36, v42);
        v44 = vmulq_f32(v42, v42);
        v45 = vmulq_f32(v37, v42);
        *v44.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v45, v45, 8uLL), *&vextq_s8(v44, v44, 8uLL)), vadd_f32(vzip1_s32(*v45.i8, *v44.i8), vzip2_s32(*v45.i8, *v44.i8)));
        v46 = vsubq_f32(v36, vmulq_n_f32(v42, (v43.f32[2] + vaddv_f32(*v43.f32)) / *&v44.i32[1]));
        v47 = vmulq_f32(v46, v46);
        *&v48 = v47.f32[2] + vaddv_f32(*v47.f32);
        *v47.f32 = vrsqrte_f32(v48);
        *v47.f32 = vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32)));
        v49 = vmulq_n_f32(v46, vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32))).f32[0]);
        v50 = vsubq_f32(v37, vmulq_n_f32(v42, *v44.i32 / *&v44.i32[1]));
        v51 = vmulq_f32(v37, v49);
        v52 = vmulq_f32(v49, v49);
        *v51.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v51, v51, 8uLL), *&vextq_s8(v52, v52, 8uLL)), vadd_f32(vzip1_s32(*v51.i8, *v52.i8), vzip2_s32(*v51.i8, *v52.i8)));
        v53 = vsubq_f32(v50, vmulq_n_f32(v49, vdiv_f32(*v51.i8, vdup_lane_s32(*v51.i8, 1)).f32[0]));
        v54 = vmulq_f32(v53, v53);
        *v52.i32 = v54.f32[2] + vaddv_f32(*v54.f32);
        *v54.f32 = vrsqrte_f32(v52.u32[0]);
        *v54.f32 = vmul_f32(*v54.f32, vrsqrts_f32(v52.u32[0], vmul_f32(*v54.f32, *v54.f32)));
        *(v12 + 80) = v42.i64[0];
        *(v12 + 88) = v42.i32[2];
        *(v12 + 96) = v49.i64[0];
        *(v12 + 104) = v49.i32[2];
        v55 = vmulq_n_f32(v53, vmul_f32(*v54.f32, vrsqrts_f32(v52.u32[0], vmul_f32(*v54.f32, *v54.f32))).f32[0]);
        *(v12 + 112) = v55.i64[0];
        *(v12 + 120) = v55.i32[2];
      }

      v56 = re::ecs2::ComponentStatePayload::lightArraysForEntity(a6, v13, v62);
      if (v56)
      {
        v57 = v56;
        re::DynamicArray<re::SpotLightInfo>::add((v56 + 16), (v12 + 48));
        if (*(v12 + 272) == 1)
        {
          v58 = re::DynamicArray<re::DynamicLightShadowInfo>::add((v57 + 31), buf);
          if (*buf)
          {
            if (buf[8])
            {
              (*(**buf + 40))(v58);
            }
          }
        }
      }

      v59 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v64);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), a4, v59, *(a3 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v64);
    }

    while (v64 != a5 || v65 != 0xFFFF || HIWORD(v65) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::DirectionalLightComponent,re::ecs2::DirectionalLightComponentStateImpl>::dependsOnComponents(uint64_t a1)
{
  v1 = a1 + 128;
  if ((*(a1 + 120) & 1) == 0)
  {
    return *(a1 + 136);
  }

  return v1;
}

void re::ecs2::BaseLightComponentStateImpl<re::ecs2::DirectionalLightComponent,re::ecs2::DirectionalLightComponentStateImpl>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = 0;
  v39 = *MEMORY[0x1E69E9840];
  v26 = 769;
  v9 = a2 + 24;
  v10 = 1;
  do
  {
    v10 &= *(re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](*(a2 + 16) + 8, *(v9 + 8 * *(&v26 + v8++))) + 40) == 0;
  }

  while (v8 != 2);
  if (v10)
  {
    return;
  }

  if (re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType != a4)
  {
    v11 = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::DirectionalLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (!v11 || re::ecs2::ComponentImpl<re::ecs2::DirectionalLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType != a4)
    {
      return;
    }

    v12 = v11;
    v13 = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::DirectionalLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (*(v12 + 32) == 1)
    {
      re::DynamicString::DynamicString(location, (v12 + 208));
      v14 = *(v12 + 288);
      v31 = *(v12 + 272);
      v32 = v14;
      *v33 = *(v12 + 304);
      *&v33[12] = *(v12 + 316);
      v15 = *(v12 + 256);
      v29 = *(v12 + 240);
      v30 = v15;
      v35 = *(v12 + 340);
      if (v35 == 1)
      {
        v36 = *(v12 + 341);
      }

      LOWORD(v37) = *(v12 + 342);
      v34 = vrev64_s32(*(v13 + 28));
      if (v35)
      {
        if ((*(v13 + 36) & 1) == 0)
        {
          v35 = 0;
          goto LABEL_26;
        }
      }

      else
      {
        if ((*(v13 + 36) & 1) == 0)
        {
          goto LABEL_26;
        }

        v35 = 1;
      }

      v36 = *(v13 + 37);
LABEL_26:
      *&v33[20] = *(v13 + 40);
      *(&v37 + 2) = *(v13 + 48);
      LOBYTE(v37) = *(v13 + 38);
      BYTE6(v37) = *(v13 + 52);
      re::DynamicString::operator=((v12 + 208), location);
      v20 = v30;
      *(v12 + 240) = v29;
      *(v12 + 256) = v20;
      *(v12 + 316) = *&v33[12];
      v21 = *v33;
      *(v12 + 288) = v32;
      *(v12 + 304) = v21;
      *(v12 + 272) = v31;
      *(v12 + 332) = v34;
      if (*(v12 + 340))
      {
        if ((v35 & 1) == 0)
        {
          *(v12 + 340) = 0;
LABEL_38:
          *(v12 + 342) = v37;
          *(v12 + 345) = *(&v37 + 3);
          goto LABEL_43;
        }
      }

      else
      {
        if ((v35 & 1) == 0)
        {
          goto LABEL_38;
        }

        *(v12 + 340) = 1;
      }

      *(v12 + 341) = v36;
      goto LABEL_38;
    }

    re::DynamicString::DynamicString(location, (v12 + 48));
    v18 = *(v12 + 128);
    v31 = *(v12 + 112);
    v32 = v18;
    *v33 = *(v12 + 144);
    *&v33[12] = *(v12 + 156);
    v19 = *(v12 + 96);
    v29 = *(v12 + 80);
    v30 = v19;
    v35 = *(v12 + 180);
    if (v35 == 1)
    {
      v36 = *(v12 + 181);
    }

    v37 = *(v12 + 182);
    v38 = *(v12 + 198);
    v34 = vrev64_s32(*(v13 + 28));
    if (v35)
    {
      if ((*(v13 + 36) & 1) == 0)
      {
        v35 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      if ((*(v13 + 36) & 1) == 0)
      {
        goto LABEL_32;
      }

      v35 = 1;
    }

    v36 = *(v13 + 37);
LABEL_32:
    *&v33[20] = *(v13 + 40);
    *(&v37 + 6) = *(v13 + 48);
    BYTE2(v37) = *(v13 + 38);
    BYTE3(v37) = *(v13 + 52);
    re::DynamicString::operator=((v12 + 48), location);
    v22 = *&v33[12];
    v23 = v32;
    *(v12 + 112) = v31;
    *(v12 + 128) = v23;
    *(v12 + 144) = *v33;
    *(v12 + 156) = v22;
    v24 = v30;
    *(v12 + 80) = v29;
    *(v12 + 96) = v24;
    *(v12 + 172) = v34;
    if (*(v12 + 180))
    {
      if ((v35 & 1) == 0)
      {
        *(v12 + 180) = 0;
LABEL_42:
        *(v12 + 182) = v37;
        *(v12 + 198) = v38;
LABEL_43:
        if (location[0])
        {
          if (location[1])
          {
            (*(*location[0] + 40))();
          }
        }

        return;
      }
    }

    else
    {
      if ((v35 & 1) == 0)
      {
        goto LABEL_42;
      }

      *(v12 + 180) = 1;
    }

    *(v12 + 181) = v36;
    goto LABEL_42;
  }

  v25 = *(a2 + 8);
  v28 = 0u;
  v29 = 0u;
  *location = 0u;
  DWORD1(v29) = 0x7FFFFFFF;
  v16 = re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(a1 + 8, &v25, location);
  re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::deinit(location);
  if (a3)
  {
    v17 = (a3 + 8);
  }

  else
  {
    v17 = 0;
  }

  objc_initWeak(location, v17);
  re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::add(v16, location);
  objc_destroyWeak(location);
}

BOOL re::ecs2::BaseLightComponentStateImpl<re::ecs2::DirectionalLightComponent,re::ecs2::DirectionalLightComponentStateImpl>::processDirtyComponents(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = *MEMORY[0x1E69E9840];
  v9 = *(a6 + 16);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v45, a5, 0);
  v39 = a4;
  v40 = v45;
  v41 = DWORD2(v45);
  if (v45 != a5 || DWORD2(v45) != 0xFFFFFFFFLL)
  {
    while (1)
    {
      v11 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v40);
      if (*re::ecs2::RenderOptions::forEntity(v9, *(*v11 + 16)) == 1)
      {
        break;
      }

      v23 = 1;
LABEL_60:
      v36 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v40);
      re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::setComponentState(a3, v39, v36, v23);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v40);
      if (v40 == a5 && v41 == 0xFFFF && HIWORD(v41) == 0xFFFF)
      {
        return *(a5 + 40) != 0;
      }
    }

    v12 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v40);
    v13 = *v12;
    v14 = *(*v12 + 16);
    v15 = re::ecs2::EntityComponentCollection::get((v14 + 6), re::ecs2::ComponentImpl<re::ecs2::DirectionalLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v16 = re::ecs2::EntityComponentCollection::get((v14 + 6), re::ecs2::ComponentImpl<re::ecs2::ShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v17 = v16;
    if (*(v13 + 32) == 1)
    {
      v45 = 0uLL;
      v46 = 0uLL;
      re::DynamicString::setCapacity(&v45, 0);
      v50 = 0u;
      memset(v51, 0, 20);
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      *&v51[20] = 0x412000003C23D70ALL;
      v52 = 0;
      v53 = 0;
      v55[0] = 1;
      *&v55[2] = 1065353216;
      v55[6] = 1;
      re::DynamicString::format(&v42, "%s_%llu", v18, v14[37], v14[39]);
      re::DynamicString::operator=(&v45, &v42);
      if (v42 && (v43 & 1) != 0)
      {
        (*(*v42 + 40))();
      }

      v19 = *(v13 + 360);
      v20 = *(v13 + 368);
      v42 = *(v13 + 352);
      v44 = v20;
      v43 = v19;
      *&v21 = re::ColorGamut3F::as(&v42, *(a6 + 28), 1);
      DWORD2(v21) = v22;
      *v51 = v21;
      *&v51[16] = *(v13 + 28);
      if (!(v17 | v15))
      {
        v52 = 0;
        goto LABEL_36;
      }

      if (!v15)
      {
        v29 = 0x40A000003F800000;
        if (v17)
        {
          v29 = *(v17 + 28);
        }

        v52 = vrev64_s32(v29);
LABEL_36:
        re::DynamicString::operator=((v13 + 208), &v45);
        v31 = v50;
        *(v13 + 272) = v49;
        *(v13 + 288) = v31;
        *(v13 + 304) = *v51;
        *(v13 + 316) = *&v51[12];
        v32 = v48;
        *(v13 + 240) = v47;
        *(v13 + 256) = v32;
        *(v13 + 332) = v52;
        if (*(v13 + 340))
        {
          if ((v53 & 1) == 0)
          {
            *(v13 + 340) = 0;
LABEL_42:
            *(v13 + 342) = *v55;
            *(v13 + 345) = *&v55[3];
            goto LABEL_56;
          }
        }

        else
        {
          if ((v53 & 1) == 0)
          {
            goto LABEL_42;
          }

          *(v13 + 340) = 1;
        }

        *(v13 + 341) = v54;
        goto LABEL_42;
      }

      v52 = vrev64_s32(*(v15 + 28));
      if (v53)
      {
        if ((*(v15 + 36) & 1) == 0)
        {
          v53 = 0;
LABEL_35:
          *&v51[20] = *(v15 + 40);
          v55[0] = *(v15 + 38);
          *&v55[2] = *(v15 + 48);
          v55[6] = *(v15 + 52);
          goto LABEL_36;
        }
      }

      else
      {
        if ((*(v15 + 36) & 1) == 0)
        {
          goto LABEL_35;
        }

        v53 = 1;
      }

      v54 = *(v15 + 37);
      goto LABEL_35;
    }

    v45 = 0uLL;
    v46 = 0uLL;
    re::DynamicString::setCapacity(&v45, 0);
    v50 = 0u;
    memset(v51, 0, 20);
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    *&v51[20] = 0x412000003C23D70ALL;
    v52 = 0;
    v53 = 0;
    *v55 = 16842752;
    *&v55[6] = 1065353216;
    *&v55[10] = 0;
    re::DynamicString::format(&v42, "%s_%llu", v24, v14[37], v14[39]);
    re::DynamicString::operator=(&v45, &v42);
    if (v42 && (v43 & 1) != 0)
    {
      (*(*v42 + 40))();
    }

    v25 = *(v13 + 360);
    v26 = *(v13 + 368);
    v42 = *(v13 + 352);
    v44 = v26;
    v43 = v25;
    *&v27 = re::ColorGamut3F::as(&v42, *(a6 + 28), 1);
    DWORD2(v27) = v28;
    *v51 = v27;
    *&v51[16] = *(v13 + 28);
    v55[0] = (v17 | v15) != 0;
    if (!(v17 | v15))
    {
      v52 = 0;
      goto LABEL_49;
    }

    if (!v15)
    {
      v30 = 0x40A000003F800000;
      if (v17)
      {
        v30 = *(v17 + 28);
      }

      v52 = vrev64_s32(v30);
      goto LABEL_47;
    }

    v52 = vrev64_s32(*(v15 + 28));
    if (v53)
    {
      if ((*(v15 + 36) & 1) == 0)
      {
        v53 = 0;
LABEL_46:
        *&v51[20] = *(v15 + 40);
        v55[2] = *(v15 + 38);
        *&v55[6] = *(v15 + 48);
        v55[3] = *(v15 + 52);
LABEL_47:
        if (*(a6 + 24))
        {
          v55[0] = *(a6 + 25);
        }

LABEL_49:
        *&v55[10] = v14[39];
        re::DynamicString::operator=((v13 + 48), &v45);
        v33 = *&v51[12];
        v34 = v50;
        *(v13 + 112) = v49;
        *(v13 + 128) = v34;
        *(v13 + 144) = *v51;
        *(v13 + 156) = v33;
        v35 = v48;
        *(v13 + 80) = v47;
        *(v13 + 96) = v35;
        *(v13 + 172) = v52;
        if (*(v13 + 180))
        {
          if ((v53 & 1) == 0)
          {
            *(v13 + 180) = 0;
LABEL_55:
            *(v13 + 182) = *v55;
            *(v13 + 198) = *&v55[16];
LABEL_56:
            if (v45 && (BYTE8(v45) & 1) != 0)
            {
              (*(*v45 + 40))();
            }

            v23 = 3;
            goto LABEL_60;
          }
        }

        else
        {
          if ((v53 & 1) == 0)
          {
            goto LABEL_55;
          }

          *(v13 + 180) = 1;
        }

        *(v13 + 181) = v54;
        goto LABEL_55;
      }
    }

    else
    {
      if ((*(v15 + 36) & 1) == 0)
      {
        goto LABEL_46;
      }

      v53 = 1;
    }

    v54 = *(v15 + 37);
    goto LABEL_46;
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::DirectionalLightComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v17, a5, 0);
  v8 = v17;
  v9 = v18;
  v10 = v18;
  v17 = a4;
  v18 = v8;
  v19 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = v17;
      v13 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v18);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v12, v13, *(a3 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v18);
    }

    while (v18 != a5 || v19 != 0xFFFF || HIWORD(v19) != 0xFFFF);
  }

  return 0;
}

BOOL re::ecs2::BaseLightComponentStateImpl<re::ecs2::DirectionalLightComponent,re::ecs2::DirectionalLightComponentStateImpl>::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6)
{
  v102 = *MEMORY[0x1E69E9840];
  v10 = *a6;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(buf, a5, 0);
  v93 = *buf;
  v94 = *&buf[8];
  v11 = *buf == a5 && *&buf[8] == 0xFFFFFFFFLL;
  if (!v11)
  {
    v91 = vdupq_n_s32(0x38D1B717u);
    do
    {
      v12 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v93);
      v13 = *v12;
      v14 = *(*v12 + 16);
      v15 = re::ecs2::ComponentStatePayload::lightArraysForEntity(a6, v14, v10);
      if (v15)
      {
        v16 = v15;
        if (*(v13 + 32) == 1)
        {
          re::TransformService::worldMatrix(*(a1 + 192), v14, 0, buf);
          v18 = 0;
          v19 = v99;
          *(v13 + 240) = *buf;
          *(v13 + 256) = v19;
          v25.i64[1] = v100.i64[1];
          v22 = v101;
          *(v13 + 272) = v100;
          *(v13 + 288) = v22;
          v21.i64[0] = *(v13 + 240);
          v25.i64[0] = *(v13 + 256);
          v22.i64[0] = *(v13 + 272);
          v20 = vzip1q_s32(v21, v22);
          v21.i32[2] = *(v13 + 248);
          v22.i32[2] = *(v13 + 280);
          v23.i32[0] = *(v13 + 264);
          v24 = vzip1q_s32(v20, v25);
          v25.i32[2] = v23.i32[0];
          v95 = v24;
          v96 = vzip2q_s32(v20, vdupq_lane_s32(*v25.f32, 1));
          v97 = vzip1q_s32(vzip2q_s32(v21, v22), v23);
          do
          {
            *&buf[v18] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(*(&v95 + v18))), v25, *&v95.i8[v18], 1), v22, *(&v95 + v18), 2);
            v18 += 16;
          }

          while (v18 != 48);
          v26.i32[3] = v100.i32[3];
          v27 = vcgeq_f32(v91, vabdq_f32(xmmword_1E30476A0, v100));
          v28 = vandq_s8(vandq_s8(vcgeq_f32(v91, vabdq_f32(xmmword_1E3047680, v99)), vcgeq_f32(v91, vabdq_f32(xmmword_1E3047670, *buf))), v27);
          v28.i32[3] = v28.i32[2];
          if ((vminvq_u32(v28) & 0x80000000) == 0)
          {
            if ((atomic_exchange(&_MergedGlobals_237, 1u) & 1) == 0)
            {
              v29 = *re::ecsComponentsLogObjects(v17);
              v17 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
              if (v17)
              {
                *buf = 0;
                _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEFAULT, "Light transform is not orthogonal, forced to orthogonalize it.", buf, 2u);
              }
            }

            v28.i64[0] = *(v13 + 240);
            v26.i64[0] = *(v13 + 256);
            v27.i64[0] = *(v13 + 272);
            v28.i32[2] = *(v13 + 248);
            v26.i32[2] = *(v13 + 264);
            v27.i32[2] = *(v13 + 280);
            v30 = vmulq_f32(v28, v28);
            *&v31 = v30.f32[2] + vaddv_f32(*v30.f32);
            *v30.f32 = vrsqrte_f32(v31);
            *v30.f32 = vmul_f32(*v30.f32, vrsqrts_f32(v31, vmul_f32(*v30.f32, *v30.f32)));
            v32 = vmulq_n_f32(v28, vmul_f32(*v30.f32, vrsqrts_f32(v31, vmul_f32(*v30.f32, *v30.f32))).f32[0]);
            v33 = vmulq_f32(v26, v32);
            v34 = vmulq_f32(v32, v32);
            v35 = vmulq_f32(v27, v32);
            *v34.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v35, v35, 8uLL), *&vextq_s8(v34, v34, 8uLL)), vadd_f32(vzip1_s32(*v35.i8, *v34.i8), vzip2_s32(*v35.i8, *v34.i8)));
            v36 = vsubq_f32(v26, vmulq_n_f32(v32, (v33.f32[2] + vaddv_f32(*v33.f32)) / *&v34.i32[1]));
            v37 = vmulq_f32(v36, v36);
            *&v38 = v37.f32[2] + vaddv_f32(*v37.f32);
            *v37.f32 = vrsqrte_f32(v38);
            *v37.f32 = vmul_f32(*v37.f32, vrsqrts_f32(v38, vmul_f32(*v37.f32, *v37.f32)));
            v39 = vmulq_n_f32(v36, vmul_f32(*v37.f32, vrsqrts_f32(v38, vmul_f32(*v37.f32, *v37.f32))).f32[0]);
            v40 = vsubq_f32(v27, vmulq_n_f32(v32, *v34.i32 / *&v34.i32[1]));
            v41 = vmulq_f32(v27, v39);
            v42 = vmulq_f32(v39, v39);
            *v41.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v41, v41, 8uLL), *&vextq_s8(v42, v42, 8uLL)), vadd_f32(vzip1_s32(*v41.i8, *v42.i8), vzip2_s32(*v41.i8, *v42.i8)));
            v43 = vsubq_f32(v40, vmulq_n_f32(v39, vdiv_f32(*v41.i8, vdup_lane_s32(*v41.i8, 1)).f32[0]));
            v44 = vmulq_f32(v43, v43);
            *v42.i32 = v44.f32[2] + vaddv_f32(*v44.f32);
            *v44.f32 = vrsqrte_f32(v42.u32[0]);
            *v44.f32 = vmul_f32(*v44.f32, vrsqrts_f32(v42.u32[0], vmul_f32(*v44.f32, *v44.f32)));
            *(v13 + 240) = v32.i64[0];
            *(v13 + 248) = v32.i32[2];
            *(v13 + 256) = v39.i64[0];
            *(v13 + 264) = v39.i32[2];
            v45 = vmulq_n_f32(v43, vmul_f32(*v44.f32, vrsqrts_f32(v42.u32[0], vmul_f32(*v44.f32, *v44.f32))).f32[0]);
            *(v13 + 272) = v45.i64[0];
            *(v13 + 280) = v45.i32[2];
          }

          v46 = *(v16 + 12);
          v47 = *(v16 + 13);
          if (v47 >= v46)
          {
            v48 = v47 + 1;
            if (v46 < v47 + 1)
            {
              if (*(v16 + 11))
              {
                v49 = 2 * v46;
                v11 = v46 == 0;
                v50 = 8;
                if (!v11)
                {
                  v50 = v49;
                }

                if (v50 <= v48)
                {
                  v51 = v48;
                }

                else
                {
                  v51 = v50;
                }

                re::DynamicArray<re::RealWorldProxyLightInfo>::setCapacity(v16 + 11, v51);
              }

              else
              {
                re::DynamicArray<re::RealWorldProxyLightInfo>::setCapacity(v16 + 11, v48);
                ++*(v16 + 28);
              }
            }

            v47 = *(v16 + 13);
          }

          v82 = re::DynamicString::DynamicString((*(v16 + 15) + 144 * v47), (v13 + 208));
          v83 = *(v13 + 256);
          *(v82 + 2) = *(v13 + 240);
          *(v82 + 3) = v83;
          v84 = *(v13 + 272);
          v85 = *(v13 + 288);
          v86 = *(v13 + 304);
          *(v82 + 108) = *(v13 + 316);
          *(v82 + 5) = v85;
          *(v82 + 6) = v86;
          *(v82 + 4) = v84;
          *(v82 + 124) = *(v13 + 332);
          v87 = *(v13 + 340);
          *(v82 + 132) = v87;
          if (v87 == 1)
          {
            *(v82 + 133) = *(v13 + 341);
          }

          v88 = *(v13 + 342);
          *(v82 + 137) = *(v13 + 345);
          *(v82 + 134) = v88;
          ++*(v16 + 13);
          ++*(v16 + 28);
        }

        else
        {
          re::TransformService::worldMatrix(*(a1 + 192), v14, 0, buf);
          v53 = 0;
          v54 = v99;
          *(v13 + 80) = *buf;
          *(v13 + 96) = v54;
          v60.i64[1] = v100.i64[1];
          v57 = v101;
          *(v13 + 112) = v100;
          *(v13 + 128) = v57;
          v56.i64[0] = *(v13 + 80);
          v60.i64[0] = *(v13 + 96);
          v57.i64[0] = *(v13 + 112);
          v55 = vzip1q_s32(v56, v57);
          v56.i32[2] = *(v13 + 88);
          v57.i32[2] = *(v13 + 120);
          v58.i32[0] = *(v13 + 104);
          v59 = vzip1q_s32(v55, v60);
          v60.i32[2] = v58.i32[0];
          v95 = v59;
          v96 = vzip2q_s32(v55, vdupq_lane_s32(*v60.f32, 1));
          v97 = vzip1q_s32(vzip2q_s32(v56, v57), v58);
          do
          {
            *&buf[v53] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, COERCE_FLOAT(*(&v95 + v53))), v60, *&v95.i8[v53], 1), v57, *(&v95 + v53), 2);
            v53 += 16;
          }

          while (v53 != 48);
          v61.i32[3] = v100.i32[3];
          v62 = vcgeq_f32(v91, vabdq_f32(xmmword_1E30476A0, v100));
          v63 = vandq_s8(vandq_s8(vcgeq_f32(v91, vabdq_f32(xmmword_1E3047680, v99)), vcgeq_f32(v91, vabdq_f32(xmmword_1E3047670, *buf))), v62);
          v63.i32[3] = v63.i32[2];
          if ((vminvq_u32(v63) & 0x80000000) == 0)
          {
            if ((atomic_exchange(byte_1EE1A6AF9, 1u) & 1) == 0)
            {
              v64 = *re::ecsComponentsLogObjects(v52);
              if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1E1C61000, v64, OS_LOG_TYPE_DEFAULT, "Light transform is not orthogonal, forced to orthogonalize it.", buf, 2u);
              }
            }

            v63.i64[0] = *(v13 + 80);
            v61.i64[0] = *(v13 + 96);
            v62.i64[0] = *(v13 + 112);
            v63.i32[2] = *(v13 + 88);
            v61.i32[2] = *(v13 + 104);
            v62.i32[2] = *(v13 + 120);
            v65 = vmulq_f32(v63, v63);
            *&v66 = v65.f32[2] + vaddv_f32(*v65.f32);
            *v65.f32 = vrsqrte_f32(v66);
            *v65.f32 = vmul_f32(*v65.f32, vrsqrts_f32(v66, vmul_f32(*v65.f32, *v65.f32)));
            v67 = vmulq_n_f32(v63, vmul_f32(*v65.f32, vrsqrts_f32(v66, vmul_f32(*v65.f32, *v65.f32))).f32[0]);
            v68 = vmulq_f32(v61, v67);
            v69 = vmulq_f32(v67, v67);
            v70 = vmulq_f32(v62, v67);
            *v69.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v70, v70, 8uLL), *&vextq_s8(v69, v69, 8uLL)), vadd_f32(vzip1_s32(*v70.i8, *v69.i8), vzip2_s32(*v70.i8, *v69.i8)));
            v71 = vsubq_f32(v61, vmulq_n_f32(v67, (v68.f32[2] + vaddv_f32(*v68.f32)) / *&v69.i32[1]));
            v72 = vmulq_f32(v71, v71);
            *&v73 = v72.f32[2] + vaddv_f32(*v72.f32);
            *v72.f32 = vrsqrte_f32(v73);
            *v72.f32 = vmul_f32(*v72.f32, vrsqrts_f32(v73, vmul_f32(*v72.f32, *v72.f32)));
            v74 = vmulq_n_f32(v71, vmul_f32(*v72.f32, vrsqrts_f32(v73, vmul_f32(*v72.f32, *v72.f32))).f32[0]);
            v75 = vsubq_f32(v62, vmulq_n_f32(v67, *v69.i32 / *&v69.i32[1]));
            v76 = vmulq_f32(v62, v74);
            v77 = vmulq_f32(v74, v74);
            *v76.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v76, v76, 8uLL), *&vextq_s8(v77, v77, 8uLL)), vadd_f32(vzip1_s32(*v76.i8, *v77.i8), vzip2_s32(*v76.i8, *v77.i8)));
            v78 = vsubq_f32(v75, vmulq_n_f32(v74, vdiv_f32(*v76.i8, vdup_lane_s32(*v76.i8, 1)).f32[0]));
            v79 = vmulq_f32(v78, v78);
            *v77.i32 = v79.f32[2] + vaddv_f32(*v79.f32);
            *v79.f32 = vrsqrte_f32(v77.u32[0]);
            *v79.f32 = vmul_f32(*v79.f32, vrsqrts_f32(v77.u32[0], vmul_f32(*v79.f32, *v79.f32)));
            *(v13 + 80) = v67.i64[0];
            *(v13 + 88) = v67.i32[2];
            *(v13 + 96) = v74.i64[0];
            *(v13 + 104) = v74.i32[2];
            v80 = vmulq_n_f32(v78, vmul_f32(*v79.f32, vrsqrts_f32(v77.u32[0], vmul_f32(*v79.f32, *v79.f32))).f32[0]);
            *(v13 + 112) = v80.i64[0];
            *(v13 + 120) = v80.i32[2];
          }

          re::DynamicArray<re::DirectionalLightInfo>::add((v16 + 24), (v13 + 48));
          if (*(v13 + 182) == 1)
          {
            v81 = re::DynamicArray<re::DynamicLightShadowInfo>::add((v16 + 124), buf);
            if (*buf)
            {
              if (buf[8])
              {
                (*(**buf + 40))(v81);
              }
            }
          }
        }
      }

      v89 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v93);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), a4, v89, *(a3 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v93);
    }

    while (v93 != a5 || v94 != 0xFFFF || HIWORD(v94) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::FrustumLightComponent,re::ecs2::FrustumLightComponentStateImpl>::dependsOnComponents(uint64_t a1)
{
  v1 = a1 + 128;
  if ((*(a1 + 120) & 1) == 0)
  {
    return *(a1 + 136);
  }

  return v1;
}

void re::ecs2::BaseLightComponentStateImpl<re::ecs2::FrustumLightComponent,re::ecs2::FrustumLightComponentStateImpl>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = 0;
  v17 = 769;
  v9 = a2 + 24;
  v10 = 1;
  do
  {
    v10 &= *(re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](*(a2 + 16) + 8, *(v9 + 8 * *(&v17 + v8++))) + 40) == 0;
  }

  while (v8 != 2);
  if (re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType == a4)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0)
  {
    v16 = *(a2 + 8);
    v15 = 0u;
    memset(v14, 0, sizeof(v14));
    DWORD1(v15) = 0x7FFFFFFF;
    v12 = re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(a1 + 8, &v16, v14);
    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::deinit(v14);
    if (a3)
    {
      v13 = (a3 + 8);
    }

    else
    {
      v13 = 0;
    }

    objc_initWeak(v14, v13);
    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::add(v12, v14);
    objc_destroyWeak(v14);
  }
}

BOOL re::ecs2::BaseLightComponentStateImpl<re::ecs2::FrustumLightComponent,re::ecs2::FrustumLightComponentStateImpl>::processDirtyComponents(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a6 + 16);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v47, a5, 0);
  v44 = *&v47[0];
  v45 = DWORD2(v47[0]);
  if (*&v47[0] != a5 || DWORD2(v47[0]) != 0xFFFFFFFFLL)
  {
    while (1)
    {
      v11 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v44);
      if (*re::ecs2::RenderOptions::forEntity(v9, *(*v11 + 16)) == 1)
      {
        break;
      }

      v31 = 1;
LABEL_28:
      v41 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v44);
      re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::setComponentState(a3, a4, v41, v31);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v44);
      if (v44 == a5 && v45 == 0xFFFF && HIWORD(v45) == 0xFFFF)
      {
        return *(a5 + 40) != 0;
      }
    }

    v12 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v44);
    v13 = *v12;
    v14 = *(*v12 + 16);
    v15 = *(*v12 + 48);
    v16 = *(*v12 + 52);
    v17 = tanf(*(*v12 + 32) * 0.5);
    memset(v47, 0, sizeof(v47));
    re::DynamicString::setCapacity(v47, 0);
    v51 = 0u;
    memset(v52, 0, 20);
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    *&v52[20] = 0x412000003C23D70ALL;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v56 = 0u;
    memset(v57, 0, sizeof(v57));
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    *v57 = v14[39];
    re::DynamicString::format(&v62, "%s_%llu", v19, v14[37], *v57);
    re::DynamicString::operator=(v47, &v62);
    if (v62 && (BYTE8(v62) & 1) != 0)
    {
      (*(*v62 + 40))(v62, v63);
    }

    v20 = v15 / v16;
    v21 = *(v13 + 312);
    v22 = *(v13 + 320);
    *&v62 = *(v13 + 304);
    BYTE12(v62) = v22;
    DWORD2(v62) = v21;
    *&v23 = re::ColorGamut3F::as(&v62, *(a6 + 28), 1);
    DWORD2(v23) = v24;
    *v52 = v23;
    *&v52[16] = *(v13 + 28);
    *&v57[8] = *(v13 + 40);
    *&v52[20] = (v16 * 0.5) / v17;
    LOBYTE(v59) = 1;
    v25 = re::ecs2::EntityComponentCollection::get((v14 + 6), re::ecs2::ComponentImpl<re::ecs2::ShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v26 = re::ecs2::EntityComponentCollection::get((v14 + 6), re::ecs2::ComponentImpl<re::ecs2::FilterMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v60 = v25 != 0;
    HIBYTE(v59) = v26 != 0;
    if (v25)
    {
      *&v57[24] = *(v25 + 28);
      v27 = *&v52[20];
      v28 = *&v52[20] + *(v13 + 40);
      v29 = 1.0 / tanf(*(v13 + 32) * 0.5);
      v30 = v29 / v20;
      if (v28 != INFINITY)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *&v57[24] = 0;
      v27 = *&v52[20];
      v28 = *&v52[20] + *(v13 + 40);
      v29 = 1.0 / tanf(*(v13 + 32) * 0.5);
      v30 = v29 / v20;
      if (v28 != INFINITY)
      {
LABEL_15:
        DWORD1(v33) = 0;
        *(&v33 + 1) = 0;
        *&v33 = v29 / v20;
        LODWORD(v34) = 0;
        *(&v34 + 1) = 0;
        *(&v34 + 1) = v29;
        v32 = (v27 * v28) / (v27 - v28);
        *&v35 = 0;
        *(&v35 + 2) = v28 / (v27 - v28);
        HIDWORD(v35) = -1.0;
LABEL_16:
        *&v36 = 0;
        *(&v36 + 1) = LODWORD(v32);
        v62 = v33;
        v63 = v34;
        v64 = v35;
        v65 = v36;
        re::Projection::makeReverseDepth(&v62, v46);
        v53 = v46[0];
        v54 = v46[1];
        v55 = v46[2];
        v56 = v46[3];
        re::DynamicString::operator=((v13 + 64), v47);
        v37 = v49;
        *(v13 + 96) = v48;
        *(v13 + 112) = v37;
        *(v13 + 172) = *&v52[12];
        v38 = *v52;
        *(v13 + 144) = v51;
        *(v13 + 160) = v38;
        *(v13 + 128) = v50;
        *(v13 + 268) = *&v57[12];
        v39 = *v57;
        *(v13 + 240) = v56;
        *(v13 + 256) = v39;
        v40 = v55;
        *(v13 + 208) = v54;
        *(v13 + 224) = v40;
        *(v13 + 192) = v53;
        if (*(v13 + 284))
        {
          if ((v57[28] & 1) == 0)
          {
            *(v13 + 284) = 0;
LABEL_22:
            *(v13 + 286) = v59;
            *(v13 + 288) = v60;
            NS::SharedPtr<MTL::Buffer>::operator=((v13 + 296), &v61);
            if (v61)
            {

              v61 = 0;
            }

            if (*&v47[0] && (BYTE8(v47[0]) & 1) != 0)
            {
              (*(**&v47[0] + 40))();
            }

            v31 = 3;
            goto LABEL_28;
          }
        }

        else
        {
          if ((v57[28] & 1) == 0)
          {
            goto LABEL_22;
          }

          *(v13 + 284) = 1;
        }

        *(v13 + 285) = v58;
        goto LABEL_22;
      }
    }

    v32 = -v27;
    v33 = LODWORD(v30);
    LODWORD(v34) = 0;
    *(&v34 + 1) = 0;
    *(&v34 + 1) = v29;
    v35 = xmmword_1E3085330;
    goto LABEL_16;
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::FrustumLightComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v17, a5, 0);
  v8 = v17;
  v9 = v18;
  v10 = v18;
  v17 = a4;
  v18 = v8;
  v19 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = v17;
      v13 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v18);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v12, v13, *(a3 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v18);
    }

    while (v18 != a5 || v19 != 0xFFFF || HIWORD(v19) != 0xFFFF);
  }

  return 0;
}

BOOL re::ecs2::BaseLightComponentStateImpl<re::ecs2::FrustumLightComponent,re::ecs2::FrustumLightComponentStateImpl>::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6)
{
  v10 = *a6;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&buf, a5, 0);
  v53 = buf.i64[0];
  v54 = buf.i32[2];
  if (buf.i64[0] != a5 || buf.u32[2] != 0xFFFFFFFFLL)
  {
    v51 = vdupq_n_s32(0x38D1B717u);
    do
    {
      v12 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v53);
      v13 = *v12;
      v14 = *(*v12 + 16);
      re::TransformService::worldMatrix(*(a1 + 192), v14, 0, v55);
      v16 = 0;
      *&v17 = 0;
      DWORD2(v17) = *(v13 + 180);
      HIDWORD(v17) = 1.0;
      v18 = v55[0];
      v19 = v55[1];
      v20 = v55[2];
      v21 = v55[3];
      v56 = xmmword_1E3047670;
      v57 = xmmword_1E3047680;
      v58 = xmmword_1E30476A0;
      v59 = v17;
      do
      {
        *(&buf + v16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*(&v56 + v16))), v19, *&v56.i8[v16], 1), v20, *(&v56 + v16), 2), v21, *(&v56 + v16), 3);
        v16 += 16;
      }

      while (v16 != 64);
      v22 = 0;
      v23 = buf;
      v24 = v61;
      v25 = v62;
      v26 = v63;
      *(v13 + 96) = buf;
      *(v13 + 112) = v24;
      *(v13 + 128) = v25;
      *(v13 + 144) = v26;
      v27 = vzip1q_s32(v23, v25);
      v56 = vzip1q_s32(v27, v24);
      v57 = vzip2q_s32(v27, vdupq_lane_s32(*v24.f32, 1));
      v58 = vzip1q_s32(vzip2q_s32(v23, v25), vdupq_laneq_s32(v24, 2));
      do
      {
        *(&buf + v22) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23, COERCE_FLOAT(*(&v56 + v22))), v24, *&v56.i8[v22], 1), v25, *(&v56 + v22), 2);
        v22 += 16;
      }

      while (v22 != 48);
      v28.i32[3] = v62.i32[3];
      v29 = vcgeq_f32(v51, vabdq_f32(xmmword_1E30476A0, v62));
      v30 = vandq_s8(vandq_s8(vcgeq_f32(v51, vabdq_f32(xmmword_1E3047680, v61)), vcgeq_f32(v51, vabdq_f32(xmmword_1E3047670, buf))), v29);
      v30.i32[3] = v30.i32[2];
      if ((vminvq_u32(v30) & 0x80000000) == 0)
      {
        if ((atomic_exchange(re::ecs2::FrustumLightComponentStateImpl::processUpdatingComponent(re::ecs2::FrustumLightComponent *,void *,re::ecs2::WorldRootProvider const&)::__FILE____LINE___logged, 1u) & 1) == 0)
        {
          v31 = *re::ecsComponentsLogObjects(v15);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            buf.i16[0] = 0;
            _os_log_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_DEFAULT, "Light transform is not orthogonal, forced to orthogonalize it.", &buf, 2u);
          }
        }

        v30.i64[0] = *(v13 + 96);
        v28.i64[0] = *(v13 + 112);
        v29.i64[0] = *(v13 + 128);
        v30.i32[2] = *(v13 + 104);
        v28.i32[2] = *(v13 + 120);
        v29.i32[2] = *(v13 + 136);
        v32 = vmulq_f32(v30, v30);
        *&v33 = v32.f32[2] + vaddv_f32(*v32.f32);
        *v32.f32 = vrsqrte_f32(v33);
        *v32.f32 = vmul_f32(*v32.f32, vrsqrts_f32(v33, vmul_f32(*v32.f32, *v32.f32)));
        v34 = vmulq_n_f32(v30, vmul_f32(*v32.f32, vrsqrts_f32(v33, vmul_f32(*v32.f32, *v32.f32))).f32[0]);
        v35 = vmulq_f32(v28, v34);
        v36 = vmulq_f32(v34, v34);
        v37 = vmulq_f32(v29, v34);
        *v36.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v37, v37, 8uLL), *&vextq_s8(v36, v36, 8uLL)), vadd_f32(vzip1_s32(*v37.i8, *v36.i8), vzip2_s32(*v37.i8, *v36.i8)));
        v38 = vsubq_f32(v28, vmulq_n_f32(v34, (v35.f32[2] + vaddv_f32(*v35.f32)) / *&v36.i32[1]));
        v39 = vmulq_f32(v38, v38);
        *&v40 = v39.f32[2] + vaddv_f32(*v39.f32);
        *v39.f32 = vrsqrte_f32(v40);
        *v39.f32 = vmul_f32(*v39.f32, vrsqrts_f32(v40, vmul_f32(*v39.f32, *v39.f32)));
        v41 = vmulq_n_f32(v38, vmul_f32(*v39.f32, vrsqrts_f32(v40, vmul_f32(*v39.f32, *v39.f32))).f32[0]);
        v42 = vsubq_f32(v29, vmulq_n_f32(v34, *v36.i32 / *&v36.i32[1]));
        v43 = vmulq_f32(v29, v41);
        v44 = vmulq_f32(v41, v41);
        *v43.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v43, v43, 8uLL), *&vextq_s8(v44, v44, 8uLL)), vadd_f32(vzip1_s32(*v43.i8, *v44.i8), vzip2_s32(*v43.i8, *v44.i8)));
        v45 = vsubq_f32(v42, vmulq_n_f32(v41, vdiv_f32(*v43.i8, vdup_lane_s32(*v43.i8, 1)).f32[0]));
        v46 = vmulq_f32(v45, v45);
        *v44.i32 = v46.f32[2] + vaddv_f32(*v46.f32);
        *v46.f32 = vrsqrte_f32(v44.u32[0]);
        *v46.f32 = vmul_f32(*v46.f32, vrsqrts_f32(v44.u32[0], vmul_f32(*v46.f32, *v46.f32)));
        *(v13 + 96) = v34.i64[0];
        *(v13 + 104) = v34.i32[2];
        *(v13 + 112) = v41.i64[0];
        *(v13 + 120) = v41.i32[2];
        v47 = vmulq_n_f32(v45, vmul_f32(*v46.f32, vrsqrts_f32(v44.u32[0], vmul_f32(*v46.f32, *v46.f32))).f32[0]);
        *(v13 + 128) = v47.i64[0];
        *(v13 + 136) = v47.i32[2];
      }

      v48 = re::ecs2::ComponentStatePayload::lightArraysForEntity(a6, v14, v10);
      if (v48)
      {
        re::DynamicArray<re::SpotLightInfo>::add((v48 + 64), (v13 + 64));
      }

      v49 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v53);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), a4, v49, *(a3 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v53);
    }

    while (v53 != a5 || v54 != 0xFFFF || HIWORD(v54) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::HashTable<re::LightGroupInWorldRoot,re::LightInfoArrays,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::findEntry<re::LightGroupInWorldRoot>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = *a2;
  v6 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_16;
  }

  v5 = a5 % *(a2 + 24);
  v7 = *(*(a2 + 8) + 4 * v5);
  if (v7 == 0x7FFFFFFF)
  {
    goto LABEL_16;
  }

  v8 = *(a2 + 16);
  v9 = v8 + 320 * v7;
  v11 = *(v9 + 8);
  v10 = *(v9 + 16);
  if (v11 == a3 && v10 == a4)
  {
    v6 = *(*(a2 + 8) + 4 * v5);
LABEL_16:
    v7 = 0x7FFFFFFF;
    goto LABEL_17;
  }

  v13 = *(v8 + 320 * v7) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v13 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v14 = v13;
      v15 = v8 + 320 * v13;
      v17 = *(v15 + 8);
      v16 = *(v15 + 16);
      if (v17 == a3 && v16 == a4)
      {
        break;
      }

      v13 = *(v8 + 320 * v14) & 0x7FFFFFFF;
      v7 = v14;
      if (v13 == 0x7FFFFFFF)
      {
        v7 = v14;
        goto LABEL_17;
      }
    }

    v6 = v14;
  }

LABEL_17:
  *result = a5;
  *(result + 8) = v5;
  *(result + 12) = v6;
  *(result + 16) = v7;
  return result;
}

uint64_t re::HashTable<re::LightGroupInWorldRoot,re::LightInfoArrays,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::addNew(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  re::HashTable<re::LightGroupInWorldRoot,re::LightInfoArrays,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::findEntry<re::LightGroupInWorldRoot>(&v9, a1, *a2, *(a2 + 8), *(a2 + 16));
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 320 * HIDWORD(v10) + 32;
  }

  v6 = re::HashTable<re::LightGroupInWorldRoot,re::LightInfoArrays,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::allocEntry(a1, v10, v9);
  v7 = *(a2 + 16);
  *(v6 + 8) = *a2;
  *(v6 + 24) = v7;
  result = re::LightInfoArrays::LightInfoArrays(v6 + 32, a3);
  ++*(a1 + 40);
  return result;
}

void *re::DynamicInlineArray<re::KeyValuePair<re::LightGroupInWorldRoot,re::LightInfoArrays>,16ul>::clear(void *result)
{
  v1 = result;
  if (*result)
  {
    v2 = 0;
    v3 = 312 * *result;
    do
    {
      re::DynamicArray<re::DynamicLightShadowInfo>::deinit(&v1[v2 / 8 + 36]);
      re::DynamicArray<re::RectAreaLightInfo>::deinit(&v1[v2 / 8 + 31]);
      re::DynamicArray<re::DynamicLightShadowInfo>::deinit(&v1[v2 / 8 + 26]);
      re::DynamicArray<re::SpotLightInfo>::deinit(&v1[v2 / 8 + 21]);
      re::DynamicArray<re::RectAreaLightInfo>::deinit(&v1[v2 / 8 + 16]);
      re::DynamicArray<re::DirectionalLightInfo>::deinit(&v1[v2 / 8 + 11]);
      result = re::DynamicArray<unsigned long>::deinit(&v1[v2 / 8 + 6]);
      v2 += 312;
    }

    while (v3 != v2);
  }

  *v1 = 0;
  ++*(v1 + 2);
  return result;
}

uint64_t re::HashTable<re::LightGroupInWorldRoot,re::LightInfoArrays,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v26, v9, v8);
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
            v17 = v13 + 32;
            do
            {
              if ((*(v17 - 32) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::LightGroupInWorldRoot,re::LightInfoArrays,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::allocEntry(a1, *(v17 - 8) % *(a1 + 24), *(v17 - 8));
                v19 = *(v17 - 8);
                *(v18 + 8) = *(v17 - 24);
                *(v18 + 24) = v19;
                re::LightInfoArrays::LightInfoArrays(v18 + 32, v17);
              }

              v17 += 320;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::LightGroupInWorldRoot,re::LightInfoArrays,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::deinit(v26);
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
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 320 * v4);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 320 * v4);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = 320 * v4;
  *(v20 + v23) = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *(v20 + v23) = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v20 + 320 * v4;
}

double re::HashTable<re::LightGroupInWorldRoot,re::LightInfoArrays,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::deinit(uint64_t *a1)
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
          v8 = v6 + v4;
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          v9 = v6 + v4 + 40;
          re::DynamicArray<re::DynamicLightShadowInfo>::deinit(v6 + v4 + 280);
          re::DynamicArray<re::RectAreaLightInfo>::deinit(v8 + 240);
          re::DynamicArray<re::DynamicLightShadowInfo>::deinit(v8 + 200);
          re::DynamicArray<re::SpotLightInfo>::deinit(v8 + 160);
          re::DynamicArray<re::RectAreaLightInfo>::deinit(v8 + 120);
          re::DynamicArray<re::DirectionalLightInfo>::deinit(v8 + 80);
          re::DynamicArray<unsigned long>::deinit(v9);
          v3 = *(a1 + 8);
        }

        v4 += 320;
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

uint64_t re::LightInfoArrays::LightInfoArrays(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 40) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 8) = 0;
  *(result + 32) = 0;
  v2 = *(a2 + 16);
  *(result + 8) = *(a2 + 8);
  *(result + 16) = v2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *(result + 24);
  *(result + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  v4 = *(result + 40);
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = v4;
  ++*(a2 + 32);
  ++*(result + 32);
  *(result + 80) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  *(result + 72) = 0;
  v5 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v5;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v6 = *(result + 64);
  *(result + 64) = *(a2 + 64);
  *(a2 + 64) = v6;
  v7 = *(result + 80);
  *(result + 80) = *(a2 + 80);
  *(a2 + 80) = v7;
  ++*(a2 + 72);
  ++*(result + 72);
  *(result + 120) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 88) = 0;
  *(result + 112) = 0;
  v8 = *(a2 + 96);
  *(result + 88) = *(a2 + 88);
  *(result + 96) = v8;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  v9 = *(result + 104);
  *(result + 104) = *(a2 + 104);
  *(a2 + 104) = v9;
  v10 = *(result + 120);
  *(result + 120) = *(a2 + 120);
  *(a2 + 120) = v10;
  ++*(a2 + 112);
  ++*(result + 112);
  *(result + 160) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 128) = 0;
  *(result + 152) = 0;
  v11 = *(a2 + 136);
  *(result + 128) = *(a2 + 128);
  *(result + 136) = v11;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  v12 = *(result + 144);
  *(result + 144) = *(a2 + 144);
  *(a2 + 144) = v12;
  v13 = *(result + 160);
  *(result + 160) = *(a2 + 160);
  *(a2 + 160) = v13;
  ++*(a2 + 152);
  ++*(result + 152);
  *(result + 200) = 0;
  *(result + 176) = 0;
  *(result + 184) = 0;
  *(result + 168) = 0;
  *(result + 192) = 0;
  v14 = *(a2 + 176);
  *(result + 168) = *(a2 + 168);
  *(result + 176) = v14;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  v15 = *(result + 184);
  *(result + 184) = *(a2 + 184);
  *(a2 + 184) = v15;
  v16 = *(result + 200);
  *(result + 200) = *(a2 + 200);
  *(a2 + 200) = v16;
  ++*(a2 + 192);
  ++*(result + 192);
  *(result + 240) = 0;
  *(result + 216) = 0;
  *(result + 224) = 0;
  *(result + 208) = 0;
  *(result + 232) = 0;
  v17 = *(a2 + 216);
  *(result + 208) = *(a2 + 208);
  *(result + 216) = v17;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  v18 = *(result + 224);
  *(result + 224) = *(a2 + 224);
  *(a2 + 224) = v18;
  v19 = *(result + 240);
  *(result + 240) = *(a2 + 240);
  *(a2 + 240) = v19;
  ++*(a2 + 232);
  ++*(result + 232);
  *(result + 280) = 0;
  *(result + 256) = 0;
  *(result + 264) = 0;
  *(result + 248) = 0;
  *(result + 272) = 0;
  v20 = *(a2 + 256);
  *(result + 248) = *(a2 + 248);
  *(result + 256) = v20;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  v21 = *(result + 264);
  *(result + 264) = *(a2 + 264);
  *(a2 + 264) = v21;
  v22 = *(result + 280);
  *(result + 280) = *(a2 + 280);
  *(a2 + 280) = v22;
  ++*(a2 + 272);
  ++*(result + 272);
  return result;
}

uint64_t *re::DynamicArray<re::AmbientLightInfo>::operator=(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6 || v4 == v5)
    {
      v8 = result[1];
      v9 = a2[1];
      *result = v5;
      result[1] = v9;
      *a2 = v4;
      a2[1] = v8;
      v10 = result[2];
      result[2] = a2[2];
      a2[2] = v10;
      v11 = result[4];
      result[4] = a2[4];
      a2[4] = v11;
      ++*(a2 + 6);
      ++*(result + 6);
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503, v2, v3);
      result = _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
      __break(1u);
    }
  }

  return result;
}

void *re::DynamicArray<re::DirectionalLightInfo>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::DirectionalLightInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xA0uLL))
        {
          v2 = 160 * a2;
          result = (*(*result + 32))(result, 160 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 160, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v21, v23);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v22, v24);
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
        v10 = v8 + 160 * v9;
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
          v16 = *(v8 + 64);
          v17 = *(v8 + 80);
          v18 = *(v8 + 96);
          *(v11 + 108) = *(v8 + 108);
          *(v11 + 5) = v17;
          *(v11 + 6) = v18;
          *(v11 + 4) = v16;
          v19 = *(v8 + 48);
          *(v11 + 2) = *(v8 + 32);
          *(v11 + 3) = v19;
          *(v11 + 124) = *(v8 + 124);
          LODWORD(v13) = *(v8 + 132);
          *(v11 + 132) = v13;
          if (v13 == 1)
          {
            *(v11 + 133) = *(v8 + 133);
          }

          v20 = *(v8 + 134);
          *(v11 + 75) = *(v8 + 150);
          *(v11 + 134) = v20;
          re::DynamicString::deinit(v8);
          v8 += 160;
          v11 += 20;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

void *re::DynamicArray<re::RealWorldProxyLightInfo>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RealWorldProxyLightInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x90uLL))
        {
          v2 = 144 * a2;
          result = (*(*result + 32))(result, 144 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 144, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v21, v23);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v22, v24);
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
        v10 = v8 + 144 * v9;
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
          v16 = *(v8 + 64);
          v17 = *(v8 + 80);
          v18 = *(v8 + 96);
          *(v11 + 108) = *(v8 + 108);
          *(v11 + 5) = v17;
          *(v11 + 6) = v18;
          *(v11 + 4) = v16;
          v19 = *(v8 + 48);
          *(v11 + 2) = *(v8 + 32);
          *(v11 + 3) = v19;
          *(v11 + 124) = *(v8 + 124);
          LODWORD(v13) = *(v8 + 132);
          *(v11 + 132) = v13;
          if (v13 == 1)
          {
            *(v11 + 133) = *(v8 + 133);
          }

          v20 = *(v8 + 134);
          *(v11 + 137) = *(v8 + 137);
          *(v11 + 134) = v20;
          re::DynamicString::deinit(v8);
          v8 += 144;
          v11 += 18;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

void *re::DynamicArray<re::SpotLightInfo>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SpotLightInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xF0uLL))
        {
          v2 = 240 * a2;
          result = (*(*result + 32))(result, 240 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 240, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v25, v27);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v26, v28);
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
        v10 = v8 + 240 * v9;
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
          v16 = *(v8 + 64);
          v17 = *(v8 + 80);
          v18 = *(v8 + 96);
          *(v11 + 108) = *(v8 + 108);
          *(v11 + 5) = v17;
          *(v11 + 6) = v18;
          *(v11 + 4) = v16;
          v19 = *(v8 + 48);
          *(v11 + 2) = *(v8 + 32);
          *(v11 + 3) = v19;
          v21 = *(v8 + 176);
          v20 = *(v8 + 192);
          v22 = *(v8 + 160);
          *(v11 + 204) = *(v8 + 204);
          *(v11 + 11) = v21;
          *(v11 + 12) = v20;
          *(v11 + 10) = v22;
          v23 = *(v8 + 144);
          *(v11 + 8) = *(v8 + 128);
          *(v11 + 9) = v23;
          LODWORD(v13) = *(v8 + 220);
          *(v11 + 220) = v13;
          if (v13 == 1)
          {
            *(v11 + 221) = *(v8 + 221);
          }

          v24 = *(v8 + 222);
          *(v11 + 224) = *(v8 + 224);
          *(v11 + 111) = v24;
          v11[29] = *(v8 + 232);
          *(v8 + 232) = 0;
          re::DynamicString::deinit(v8);
          v8 += 240;
          v11 += 30;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

void *re::DynamicArray<re::PointLightInfo>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::PointLightInfo>::setCapacity(v5, a2);
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
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 224, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v24, v26);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v25, v27);
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
        v10 = v8 + 224 * v9;
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
          v16 = *(v8 + 64);
          v17 = *(v8 + 80);
          v18 = *(v8 + 96);
          *(v11 + 108) = *(v8 + 108);
          *(v11 + 5) = v17;
          *(v11 + 6) = v18;
          *(v11 + 4) = v16;
          v19 = *(v8 + 48);
          *(v11 + 2) = *(v8 + 32);
          *(v11 + 3) = v19;
          v21 = *(v8 + 176);
          v20 = *(v8 + 192);
          v22 = *(v8 + 160);
          *(v11 + 52) = *(v8 + 208);
          *(v11 + 11) = v21;
          *(v11 + 12) = v20;
          *(v11 + 10) = v22;
          v23 = *(v8 + 144);
          *(v11 + 8) = *(v8 + 128);
          *(v11 + 9) = v23;
          LODWORD(v13) = *(v8 + 212);
          *(v11 + 212) = v13;
          if (v13 == 1)
          {
            *(v11 + 213) = *(v8 + 213);
          }

          *(v11 + 107) = *(v8 + 214);
          re::DynamicString::deinit(v8);
          v8 += 224;
          v11 += 28;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

void *re::DynamicArray<re::RectAreaLightInfo>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RectAreaLightInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x90uLL))
        {
          v2 = 144 * a2;
          result = (*(*result + 32))(result, 144 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 144, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v21, v23);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v22, v24);
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
        v10 = v8 + 144 * v9;
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
          v16 = *(v8 + 64);
          v17 = *(v8 + 80);
          v18 = *(v8 + 96);
          *(v11 + 108) = *(v8 + 108);
          *(v11 + 5) = v17;
          *(v11 + 6) = v18;
          *(v11 + 4) = v16;
          v19 = *(v8 + 48);
          *(v11 + 2) = *(v8 + 32);
          *(v11 + 3) = v19;
          v20 = *(v8 + 128);
          *(v11 + 136) = *(v8 + 136);
          v11[16] = v20;
          re::DynamicString::deinit(v8);
          v8 += 144;
          v11 += 18;
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

void *re::DynamicArray<re::DynamicLightShadowInfo>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::DynamicLightShadowInfo>::setCapacity(v5, a2);
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
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 224, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v24, v26);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v25, v27);
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
        v10 = v8 + 224 * v9;
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
          v16 = *(v8 + 112);
          v18 = *(v8 + 64);
          v17 = *(v8 + 80);
          *(v11 + 6) = *(v8 + 96);
          *(v11 + 7) = v16;
          *(v11 + 4) = v18;
          *(v11 + 5) = v17;
          v19 = *(v8 + 128);
          v20 = *(v8 + 144);
          v21 = *(v8 + 160);
          *(v11 + 172) = *(v8 + 172);
          *(v11 + 9) = v20;
          *(v11 + 10) = v21;
          *(v11 + 8) = v19;
          v22 = *(v8 + 48);
          *(v11 + 2) = *(v8 + 32);
          *(v11 + 3) = v22;
          LODWORD(v13) = *(v8 + 188);
          *(v11 + 188) = v13;
          if (v13 == 1)
          {
            *(v11 + 189) = *(v8 + 189);
          }

          v23 = *(v8 + 192);
          *(v11 + 52) = *(v8 + 208);
          *(v11 + 12) = v23;
          re::DynamicString::deinit(v8);
          v8 += 224;
          v11 += 28;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::DynamicLightShadowInfo>::deinit(uint64_t a1)
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
        v5 = 224 * v4;
        do
        {
          re::DynamicString::deinit(v3);
          v3 = (v3 + 224);
          v5 -= 224;
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

uint64_t re::DynamicArray<re::RectAreaLightInfo>::deinit(uint64_t a1)
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
        v5 = 144 * v4;
        do
        {
          re::DynamicString::deinit(v3);
          v3 = (v3 + 144);
          v5 -= 144;
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

uint64_t re::DynamicArray<re::SpotLightInfo>::deinit(uint64_t a1)
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
        v5 = 240 * v4;
        do
        {
          v6 = *(v3 + 29);
          if (v6)
          {

            *(v3 + 29) = 0;
          }

          re::DynamicString::deinit(v3);
          v3 = (v3 + 240);
          v5 -= 240;
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

uint64_t re::DynamicArray<re::DirectionalLightInfo>::deinit(uint64_t a1)
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
        v5 = 160 * v4;
        do
        {
          re::DynamicString::deinit(v3);
          v3 = (v3 + 160);
          v5 -= 160;
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

uint64_t re::HashTable<unsigned long long,unsigned short,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(uint64_t a1, void *a2, _WORD *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long long,unsigned short,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, v9, v8);
    *(result + 8) = *a2;
    *(result + 16) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,unsigned short,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v28, v9, v8);
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
            v17 = 0;
            v18 = v13 + 8;
            do
            {
              if ((*(v18 - 8) & 0x80000000) != 0)
              {
                v19 = 0xBF58476D1CE4E5B9 * (*v18 ^ (*v18 >> 30));
                v20 = (0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) ^ ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) >> 31);
                v21 = re::HashTable<unsigned long long,unsigned short,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, v20 % *(a1 + 24), v20);
                *(v21 + 8) = *v18;
                *(v21 + 16) = *(v18 + 8);
              }

              ++v17;
              v18 += 24;
            }

            while (v17 < v16);
          }

          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v28);
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
    v23 = *(v22 + 24 * v4);
  }

  else
  {
    v22 = *(a1 + 16);
    v23 = *(v22 + 24 * v4);
    *(a1 + 36) = v23 & 0x7FFFFFFF;
  }

  v25 = 24 * v4;
  *(v22 + v25) = v23 | 0x80000000;
  v26 = *(a1 + 8);
  *(v22 + v25) = *(v26 + 4 * a2) | 0x80000000;
  *(v26 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v22 + 24 * v4;
}

unint64_t re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(unint64_t result, uint64_t a2)
{
  if (result > 0xF)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277, v2, v3);
    result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
    __break(1u);
  }

  return result;
}

uint64_t re::internal::CallableMemFn<re::ecs2::LightSystem,REEventHandlerResult (re::ecs2::LightSystem::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::LightSystem,REEventHandlerResult (re::ecs2::LightSystem::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEE298;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::LightSystem,REEventHandlerResult (re::ecs2::LightSystem::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEE298;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::LightSystem,REEventHandlerResult (re::ecs2::LightSystem::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::LightSystem,REEventHandlerResult (re::ecs2::LightSystem::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEE2F0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::LightSystem,REEventHandlerResult (re::ecs2::LightSystem::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEE2F0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

double re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(uint64_t *a1)
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
          re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::deinit((v6 + v4 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 72;
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

void re::ecs2::BaseLightComponentStateImpl<re::ecs2::RectAreaLightComponent,re::ecs2::RectAreaLightComponentStateImpl>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = 0;
  v17 = 769;
  v9 = a2 + 24;
  v10 = 1;
  do
  {
    v10 &= *(re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](*(a2 + 16) + 8, *(v9 + 8 * *(&v17 + v8++))) + 40) == 0;
  }

  while (v8 != 2);
  if (re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType == a4)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0)
  {
    v16 = *(a2 + 8);
    v15 = 0u;
    memset(v14, 0, sizeof(v14));
    DWORD1(v15) = 0x7FFFFFFF;
    v12 = re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(a1 + 8, &v16, v14);
    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::deinit(v14);
    if (a3)
    {
      v13 = (a3 + 8);
    }

    else
    {
      v13 = 0;
    }

    objc_initWeak(v14, v13);
    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::add(v12, v14);
    objc_destroyWeak(v14);
  }
}

BOOL re::ecs2::BaseLightComponentStateImpl<re::ecs2::RectAreaLightComponent,re::ecs2::RectAreaLightComponentStateImpl>::processDirtyComponents(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a6 + 16);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v32, a5, 0);
  v27 = *&v32[0];
  v28 = DWORD2(v32[0]);
  if (*&v32[0] != a5 || DWORD2(v32[0]) != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v27);
      if (*re::ecs2::RenderOptions::forEntity(v10, *(*v12 + 16)) == 1)
      {
        v13 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v27);
        v14 = *v13;
        v15 = *(*v13 + 16);
        memset(v32, 0, sizeof(v32));
        re::DynamicString::setCapacity(v32, 0);
        v36 = 0u;
        memset(v37, 0, 20);
        v34 = 0u;
        v35 = 0u;
        v33 = 0u;
        *&v37[20] = 0x412000003C23D70ALL;
        v38 = 0;
        v39 = 0;
        re::DynamicString::format(&v29, "%s_%llu", v16, *(v15 + 296), *(v15 + 312));
        re::DynamicString::operator=(v32, &v29);
        if (v29 && (v30 & 1) != 0)
        {
          (*(*v29 + 40))();
        }

        v17 = *(v14 + 200);
        v18 = *(v14 + 208);
        v29 = *(v14 + 192);
        v31 = v18;
        v30 = v17;
        *&v19 = re::ColorGamut3F::as(&v29, *(a6 + 28), 1);
        DWORD2(v19) = v20;
        *v37 = v19;
        *&v37[16] = *(v14 + 28);
        v38 = *(v14 + 32);
        v39 = *(v14 + 40);
        re::DynamicString::operator=((v14 + 48), v32);
        v21 = *&v37[12];
        v22 = v36;
        *(v14 + 112) = v35;
        *(v14 + 128) = v22;
        *(v14 + 144) = *v37;
        *(v14 + 156) = v21;
        v23 = v34;
        *(v14 + 80) = v33;
        *(v14 + 96) = v23;
        *(v14 + 176) = v38;
        *(v14 + 184) = v39;
        if (*&v32[0] && (BYTE8(v32[0]) & 1) != 0)
        {
          (*(**&v32[0] + 40))();
        }

        v24 = 3;
      }

      else
      {
        v24 = 1;
      }

      v25 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v27);
      re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::setComponentState(a3, a4, v25, v24);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v27);
    }

    while (v27 != a5 || v28 != 0xFFFF || HIWORD(v28) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

BOOL re::ecs2::BaseLightComponentStateImpl<re::ecs2::RectAreaLightComponent,re::ecs2::RectAreaLightComponentStateImpl>::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6)
{
  v11 = *a6;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v24, a5, 0);
  v21 = a4;
  v22 = v24[0].i64[0];
  v23 = v24[0].i32[2];
  if (v24[0].i64[0] != a5 || v24[0].u32[2] != 0xFFFFFFFFLL)
  {
    do
    {
      v13 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v22);
      v14 = *v13;
      v15 = *(*v13 + 16);
      re::TransformService::worldMatrix(*(a1 + 192), v15, 0, v24);
      v16 = v24[1];
      v14[5] = v24[0];
      v14[6] = v16;
      v17 = v24[3];
      v14[7] = v24[2];
      v14[8] = v17;
      v18 = re::ecs2::ComponentStatePayload::lightArraysForEntity(a6, v15, v11);
      if (v18)
      {
        re::DynamicArray<re::RectAreaLightInfo>::add((v18 + 104), &v14[3]);
      }

      v19 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v22);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v21, v19, *(a3 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v22);
    }

    while (v22 != a5 || v23 != 0xFFFF || HIWORD(v23) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(&v11, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v12) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 72 * HIDWORD(v12) + 16;
  }

  v7 = re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(a1, v12, v11);
  v8 = *a2;
  *(v7 + 16) = 0u;
  v9 = v7 + 16;
  *(v7 + 8) = v8;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0u;
  *(v7 + 52) = 0x7FFFFFFFLL;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap((v7 + 16), a3);
  ++*(a1 + 40);
  return v9;
}

uint64_t re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::add(uint64_t a1, id *a2)
{
  v4 = *a2;
  v5 = *a2 - 8;
  if (!*a2)
  {
    v5 = 0;
  }

  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) >> 27));
  v7 = v6 ^ (v6 >> 31);
  v8 = *(a1 + 24);
  if (!v8)
  {
    LODWORD(v9) = 0;
    goto LABEL_10;
  }

  v9 = v7 % v8;
  v10 = *(*(a1 + 8) + 4 * (v7 % v8));
  if (v10 == 0x7FFFFFFF)
  {
LABEL_10:
    v13 = re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::addAsMove(a1, v9, v7, a2, a2);
    ++*(a1 + 40);
    v12 = *(a1 + 16) + 24 * v13;
    return v12 + 16;
  }

  v11 = *(a1 + 16);
  while (*(v11 + 24 * v10 + 16) != v4)
  {
    LODWORD(v10) = *(v11 + 24 * v10 + 8) & 0x7FFFFFFF;
    if (v10 == 0x7FFFFFFF)
    {
      goto LABEL_10;
    }
  }

  v12 = v11 + 24 * v10;
  return v12 + 16;
}

uint64_t re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          v13 = *(a1 + 16);
          *&v25[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v25[24];
          *&v25[24] = *(a1 + 24);
          v14 = *&v25[32];
          *(a1 + 24) = v15;
          ++*&v25[40];
          v16 = v14;
          if (v14)
          {
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(a1, *(v13 + 64) % *(a1 + 24), *(v13 + 64));
                v18 = *(v13 + 8);
                *(v17 + 16) = 0u;
                v17 += 16;
                *(v17 - 8) = v18;
                *(v17 + 32) = 0;
                *(v17 + 16) = 0u;
                *(v17 + 36) = 0x7FFFFFFFLL;
                re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap(v17, (v13 + 16));
              }

              v13 += 72;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(v25);
        }
      }

      else
      {
        if (v8)
        {
          v21 = 2 * v7;
        }

        else
        {
          v21 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v19 = *(a1 + 16);
    v20 = *(v19 + 72 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 72 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 72 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 64) = a3;
  ++*(a1 + 28);
  return v19 + 72 * v5;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[a4 + 3]);
  if (!a4 && (result != a2 || v9 != a3 || ((v9 ^ a3) & 0xFFFFFF00000000) != 0))
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, result);
    v12 = *a1;
    v13 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v12 + 56), &v13);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v12 + 168, *(*(v12 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v12);
    }
  }

  return result;
}

uint64_t re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(unsigned __int16 *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1[5];
  v2 = *(*a1 + 16);
  if (v2 <= v1)
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
    v13 = v1;
    v14 = 2048;
    v15 = v2;
    _os_log_send_and_compose_impl(v5, &v7, v16, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v8, 38, v6);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(*a1 + 32) + 16 * v1) + 8 * a1[4];
}

void re::ecs2::BaseLightComponentStateImpl<re::ecs2::AmbientLightComponent,re::ecs2::AmbientLightComponentStateImpl>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = 0;
  v17 = 769;
  v9 = a2 + 24;
  v10 = 1;
  do
  {
    v10 &= *(re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](*(a2 + 16) + 8, *(v9 + 8 * *(&v17 + v8++))) + 40) == 0;
  }

  while (v8 != 2);
  if (re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType == a4)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0)
  {
    v16 = *(a2 + 8);
    v15 = 0u;
    memset(v14, 0, sizeof(v14));
    DWORD1(v15) = 0x7FFFFFFF;
    v12 = re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(a1 + 8, &v16, v14);
    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::deinit(v14);
    if (a3)
    {
      v13 = (a3 + 8);
    }

    else
    {
      v13 = 0;
    }

    objc_initWeak(v14, v13);
    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::add(v12, v14);
    objc_destroyWeak(v14);
  }
}

BOOL re::ecs2::BaseLightComponentStateImpl<re::ecs2::AmbientLightComponent,re::ecs2::AmbientLightComponentStateImpl>::processDirtyComponents(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a6 + 16);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v27, a5, 0);
  v11 = v27;
  v12 = v28;
  v13 = v28;
  v27 = a4;
  v28 = v11;
  v29 = v12;
  if (v11 != a5 || v13 != 0xFFFFFFFFLL)
  {
    do
    {
      v15 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v28);
      if (*re::ecs2::RenderOptions::forEntity(v10, *(*v15 + 16)) == 1)
      {
        v16 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v28);
        v17 = *v16;
        v18 = *(*v16 + 72);
        v19 = *(*v16 + 80);
        v30 = *(*v16 + 64);
        v32 = v19;
        v31 = v18;
        *&v20 = re::ColorGamut3F::as(&v30, *(a6 + 28), 1);
        DWORD2(v20) = v21;
        v22 = *(v17 + 28);
        *(v17 + 32) = v20;
        *(v17 + 48) = v22;
        v23 = 3;
      }

      else
      {
        v23 = 1;
      }

      v24 = v27;
      v25 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v28);
      re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::setComponentState(a3, v24, v25, v23);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v28);
    }

    while (v28 != a5 || v29 != 0xFFFF || HIWORD(v29) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

BOOL re::ecs2::BaseLightComponentStateImpl<re::ecs2::AmbientLightComponent,re::ecs2::AmbientLightComponentStateImpl>::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v10 = *a6;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v21, a5, 0);
  v11 = v21;
  v12 = v22;
  v13 = v22;
  v21 = a4;
  v22 = v11;
  v23 = v12;
  if (v11 != a5 || v13 != 0xFFFFFFFFLL)
  {
    do
    {
      v15 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v22);
      v16 = *v15;
      v17 = re::ecs2::ComponentStatePayload::lightArraysForEntity(a6, *(*v15 + 16), v10);
      if (v17)
      {
        re::DynamicArray<re::AmbientLightInfo>::add((v17 + 4), v16 + 32);
      }

      v18 = v21;
      v19 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v22);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v18, v19, *(a3 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v22);
    }

    while (v22 != a5 || v23 != 0xFFFF || HIWORD(v23) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[a4 + 3]);
  if (!a4 && (result != a2 || v9 != a3 || ((v9 ^ a3) & 0xFFFFFF00000000) != 0))
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, result);
    v12 = *a1;
    v13 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v12 + 56), &v13);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v12 + 168, *(*(v12 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v12);
    }
  }

  return result;
}

void re::ecs2::BaseLightComponentStateImpl<re::ecs2::LightComponent,re::ecs2::LightComponentStateImpl>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = 0;
  v17 = 769;
  v9 = a2 + 24;
  v10 = 1;
  do
  {
    v10 &= *(re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](*(a2 + 16) + 8, *(v9 + 8 * *(&v17 + v8++))) + 40) == 0;
  }

  while (v8 != 2);
  if (re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType == a4)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0)
  {
    v16 = *(a2 + 8);
    v15 = 0u;
    memset(v14, 0, sizeof(v14));
    DWORD1(v15) = 0x7FFFFFFF;
    v12 = re::HashTable<re::ecs2::Scene *,re::HashSet<re::ArcWeakPtr<re::ecs2::Entity>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(a1 + 8, &v16, v14);
    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::deinit(v14);
    if (a3)
    {
      v13 = (a3 + 8);
    }

    else
    {
      v13 = 0;
    }

    objc_initWeak(v14, v13);
    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::add(v12, v14);
    objc_destroyWeak(v14);
  }
}

BOOL re::ecs2::BaseLightComponentStateImpl<re::ecs2::LightComponent,re::ecs2::LightComponentStateImpl>::processDirtyComponents(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v85[2] = *MEMORY[0x1E69E9840];
  v9 = *(a6 + 16);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v71, a5, 0);
  v59 = v71;
  v60 = DWORD2(v71);
  if (v71 != a5 || DWORD2(v71) != 0xFFFFFFFFLL)
  {
    *&v11 = 1.0 / tanf(0.7854);
    v56 = v11;
    LODWORD(v12) = 0;
    HIDWORD(v12) = v11;
    v55 = v12;
    while (1)
    {
      v13 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v59);
      if (*re::ecs2::RenderOptions::forEntity(v9, *(*v13 + 16)) == 1)
      {
        break;
      }

      v34 = 1;
LABEL_58:
      v52 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v59);
      re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::setComponentState(a3, a4, v52, v34);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v59);
      if (v59 == a5 && v60 == 0xFFFF && HIWORD(v60) == 0xFFFF)
      {
        return *(a5 + 40) != 0;
      }
    }

    v14 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v59);
    v15 = *v14;
    v16 = *(*v14 + 16);
    v17 = *(v16 + 296);
    v18 = *(v15 + 872);
    v19 = *(v15 + 880);
    *&v71 = *(v15 + 864);
    BYTE12(v71) = v19;
    DWORD2(v71) = v18;
    v20 = re::ColorGamut3F::as(&v71, *(a6 + 28), 1);
    *&v22 = v20;
    DWORD2(v22) = v21;
    v58 = v22;
    v23 = *(v15 + 32);
    v24 = *(v15 + 28);
    if (v24 <= 3)
    {
      if (v24 >= 2)
      {
        if ((v24 - 2) >= 2)
        {
          goto LABEL_62;
        }

        v71 = 0u;
        v72 = 0u;
        re::DynamicString::setCapacity(&v71, 0);
        v76 = 0u;
        memset(v77, 0, 20);
        v74 = 0u;
        v75 = 0u;
        v73 = 0u;
        *&v77[20] = 0x412000003C23D70ALL;
        *&v81[22] = 0;
        memset(&v78[4], 0, 32);
        v79 = 0u;
        v80 = 0u;
        memset(v81, 0, 21);
        re::DynamicString::operator=(&v71, &v65);
        *v77 = v58;
        *&v77[16] = v23;
        v25 = *(v15 + 40);
        v26 = -0.01;
        v27 = xmmword_1E3085330;
        if (v25 != INFINITY)
        {
          v26 = (v25 * 0.01) / (0.01 - v25);
          *&v27 = 0;
          *(&v27 + 2) = v25 / (0.01 - v25);
          HIDWORD(v27) = -1.0;
        }

        *&v28 = 0;
        *(&v28 + 1) = LODWORD(v26);
        v67 = v56;
        v68 = v55;
        v69 = v27;
        v70 = v28;
        re::Projection::makeReverseDepth(&v67, &v61);
        *&v78[4] = v61;
        *&v78[20] = v62;
        v79 = v63;
        v80 = v64;
        *v81 = *(v16 + 312);
        v29 = *(v15 + 40);
        if (v29 < 0.0)
        {
          v29 = 0.0;
        }

        *&v81[8] = v29;
        *&v81[16] = *(v15 + 60);
        v81[22] = 0;
        v81[23] = *(v15 + 28) == 2;
        re::DynamicString::operator=((v15 + 464), &v71);
        v30 = v76;
        *(v15 + 528) = v75;
        *(v15 + 544) = v30;
        *(v15 + 560) = *v77;
        *(v15 + 572) = *&v77[12];
        v31 = v74;
        *(v15 + 496) = v73;
        *(v15 + 512) = v31;
        v32 = v80;
        *(v15 + 624) = v79;
        *(v15 + 640) = v32;
        *(v15 + 656) = *v81;
        *(v15 + 672) = *&v81[16];
        v33 = *&v78[20];
        *(v15 + 592) = *&v78[4];
        *(v15 + 608) = v33;
        if (*(v15 + 676))
        {
          if ((v81[20] & 1) == 0)
          {
            *(v15 + 676) = 0;
LABEL_38:
            *(v15 + 678) = *&v81[22];
            goto LABEL_51;
          }
        }

        else
        {
          if ((v81[20] & 1) == 0)
          {
            goto LABEL_38;
          }

          *(v15 + 676) = 1;
        }

        *(v15 + 677) = v81[21];
        goto LABEL_38;
      }

      v71 = 0u;
      v72 = 0u;
      re::DynamicString::setCapacity(&v71, 0);
      v76 = 0u;
      memset(v77, 0, 20);
      v74 = 0u;
      v75 = 0u;
      v73 = 0u;
      *&v77[20] = 0x412000003C23D70ALL;
      *v78 = 0;
      v78[8] = 0;
      *&v78[10] = 16842752;
      *&v78[16] = 1065353216;
      *&v78[20] = 0;
      re::DynamicString::operator=(&v71, &v65);
      *v77 = v58;
      *&v77[16] = v23;
      v37 = *(v15 + 40);
      if (v37 < 0.0)
      {
        v37 = 0.0;
      }

      *v78 = v37;
      *&v78[4] = *(v15 + 60);
      v78[10] = *(v15 + 28) == 0;
      *&v78[20] = *(v16 + 312);
      if (v37 == 0.0)
      {
        v78[10] = 0;
      }

      re::DynamicString::operator=((v15 + 64), &v71);
      v38 = v76;
      *(v15 + 128) = v75;
      *(v15 + 144) = v38;
      *(v15 + 160) = *v77;
      *(v15 + 172) = *&v77[12];
      v39 = v74;
      *(v15 + 96) = v73;
      *(v15 + 112) = v39;
      *(v15 + 188) = *v78;
      if (*(v15 + 196))
      {
        if ((v78[8] & 1) == 0)
        {
          *(v15 + 196) = 0;
LABEL_34:
          *(v15 + 198) = *&v78[10];
          *(v15 + 214) = *&v78[26];
          goto LABEL_51;
        }
      }

      else
      {
        if ((v78[8] & 1) == 0)
        {
          goto LABEL_34;
        }

        *(v15 + 196) = 1;
      }

      *(v15 + 197) = v78[9];
      goto LABEL_34;
    }

    if ((v24 - 4) >= 2)
    {
      if (v24 == 6)
      {
        *(v15 + 832) = v22;
        *(v15 + 848) = v23 * 683.0;
LABEL_54:
        if (v65 && (v66 & 1) != 0)
        {
          (*(*v65 + 40))();
        }

        v34 = 3;
        goto LABEL_58;
      }

      if (v24 != 7)
      {
LABEL_62:
        re::internal::assertLog(5, v21, "assertion failure: '%s' (%s:line %i) Invalid light type %d.", "!Unreachable code", "processDirtyComponent", 655, *(v15 + 28));
        _os_crash("assertion failure: (!Unreachable code) Invalid light type %d.", v54);
        __break(1u);
      }

      v71 = 0u;
      v72 = 0u;
      re::DynamicString::setCapacity(&v71, 0);
      v76 = 0u;
      memset(v77, 0, 20);
      v74 = 0u;
      v75 = 0u;
      v73 = 0u;
      *&v77[20] = 0x412000003C23D70ALL;
      *&v78[4] = 0;
      v78[12] = 0;
      re::DynamicString::operator=(&v71, &v65);
      *v77 = v58;
      *&v77[16] = v23;
      *&v78[4] = *(v15 + 48);
      v78[12] = *(v15 + 56);
      re::DynamicString::operator=((v15 + 688), &v71);
      v35 = v76;
      *(v15 + 752) = v75;
      *(v15 + 768) = v35;
      *(v15 + 784) = *v77;
      *(v15 + 796) = *&v77[12];
      v36 = v74;
      *(v15 + 720) = v73;
      *(v15 + 736) = v36;
      *(v15 + 816) = *&v78[4];
      *(v15 + 824) = v78[12];
LABEL_51:
      if (v71 && (BYTE8(v71) & 1) != 0)
      {
        (*(*v71 + 40))();
      }

      goto LABEL_54;
    }

    v71 = 0u;
    v72 = 0u;
    re::DynamicString::setCapacity(&v71, 0);
    v76 = 0u;
    memset(v77, 0, 20);
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    *&v77[20] = 0x412000003C23D70ALL;
    v83 = 0;
    v84 = 0;
    v85[0] = 0;
    memset(&v78[4], 0, 32);
    v79 = 0u;
    v80 = 0u;
    memset(v81, 0, sizeof(v81));
    re::DynamicString::operator=(&v71, &v65);
    *v77 = v58;
    *&v77[16] = v23;
    v40 = *(v15 + 40);
    v41 = 1.0 / tanf(((*(v15 + 36) * 3.1416) / 180.0) * 0.5);
    DWORD1(v42) = 0;
    *(&v42 + 1) = 0;
    *&v42 = v41;
    LODWORD(v43) = 0;
    *(&v43 + 1) = 0;
    *(&v43 + 1) = v41;
    if (v40 == INFINITY)
    {
      v44 = -0.01;
      v45 = xmmword_1E3085330;
    }

    else
    {
      v44 = (v40 * 0.01) / (0.01 - v40);
      *&v45 = 0;
      *(&v45 + 2) = v40 / (0.01 - v40);
      HIDWORD(v45) = -1.0;
    }

    *&v46 = 0;
    *(&v46 + 1) = LODWORD(v44);
    v67 = v42;
    v68 = v43;
    v69 = v45;
    v70 = v46;
    re::Projection::makeReverseDepth(&v67, &v61);
    *&v78[4] = v61;
    *&v78[20] = v62;
    v79 = v63;
    v80 = v64;
    *v81 = *(v16 + 312);
    v47 = *(v15 + 40);
    if (v47 < 0.0)
    {
      v47 = 0.0;
    }

    *&v81[8] = v47;
    *&v81[24] = *(v15 + 60);
    HIBYTE(v83) = 0;
    v84 = *(v15 + 28) == 4;
    re::DynamicString::operator=((v15 + 224), &v71);
    v48 = v76;
    *(v15 + 288) = v75;
    *(v15 + 304) = v48;
    *(v15 + 320) = *v77;
    *(v15 + 332) = *&v77[12];
    v49 = v74;
    *(v15 + 256) = v73;
    *(v15 + 272) = v49;
    v50 = v80;
    *(v15 + 384) = v79;
    *(v15 + 400) = v50;
    *(v15 + 416) = *v81;
    *(v15 + 428) = *&v81[12];
    v51 = *&v78[20];
    *(v15 + 352) = *&v78[4];
    *(v15 + 368) = v51;
    if (*(v15 + 444))
    {
      if ((v81[28] & 1) == 0)
      {
        *(v15 + 444) = 0;
        goto LABEL_49;
      }
    }

    else
    {
      if ((v81[28] & 1) == 0)
      {
        goto LABEL_49;
      }

      *(v15 + 444) = 1;
    }

    *(v15 + 445) = v82;
LABEL_49:
    *(v15 + 446) = v83;
    *(v15 + 448) = v84;
    NS::SharedPtr<MTL::Buffer>::operator=((v15 + 456), v85);
    if (v85[0])
    {

      v85[0] = 0;
    }

    goto LABEL_51;
  }

  return *(a5 + 40) != 0;
}

BOOL re::ecs2::BaseLightComponentStateImpl<re::ecs2::LightComponent,re::ecs2::LightComponentStateImpl>::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6)
{
  v45 = *MEMORY[0x1E69E9840];
  v11 = *a6;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v43, a5, 0);
  v36 = a4;
  v37 = v43;
  v38 = v44;
  if (v43 != a5 || v44 != 0xFFFFFFFFLL)
  {
    do
    {
      v13 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v37);
      v14 = *v13;
      v15 = *(*v13 + 16);
      v16 = re::ecs2::ComponentStatePayload::lightArraysForEntity(a6, v15, v11);
      if (v16)
      {
        v17 = v16;
        re::TransformService::worldMatrix(*(a1 + 192), v15, 0, &v39);
        v19 = *(v14 + 28);
        if (v19 > 3)
        {
          if ((v19 - 4) >= 2)
          {
            if (v19 == 6)
            {
              re::DynamicArray<re::AmbientLightInfo>::add((v17 + 4), v14 + 832);
            }

            else
            {
              if (v19 != 7)
              {
LABEL_27:
                re::internal::assertLog(5, v18, "assertion failure: '%s' (%s:line %i) Invalid light type %d.", "!Unreachable code", "processUpdatingComponent", 555, *(v14 + 28));
                _os_crash("assertion failure: (!Unreachable code) Invalid light type %d.", v35);
                __break(1u);
              }

              v24 = v40;
              *(v14 + 720) = v39;
              *(v14 + 736) = v24;
              v25 = v42;
              *(v14 + 752) = v41;
              *(v14 + 768) = v25;
              re::DynamicArray<re::RectAreaLightInfo>::add((v17 + 104), (v14 + 688));
            }

            goto LABEL_23;
          }

          v29 = v40;
          *(v14 + 256) = v39;
          *(v14 + 272) = v29;
          v30 = v42;
          *(v14 + 288) = v41;
          *(v14 + 304) = v30;
          re::DynamicArray<re::SpotLightInfo>::add((v17 + 64), (v14 + 224));
          if (*(v14 + 448) == 1)
          {
            v31 = *(v17 + 31);
            v22 = (v17 + 124);
            goto LABEL_19;
          }
        }

        else
        {
          if (v19 >= 2)
          {
            if ((v19 - 2) >= 2)
            {
              goto LABEL_27;
            }

            v20 = v40;
            *(v14 + 496) = v39;
            *(v14 + 512) = v20;
            v21 = v42;
            *(v14 + 528) = v41;
            *(v14 + 544) = v21;
            re::DynamicArray<re::PointLightInfo>::add((v17 + 84), (v14 + 464));
            if (*(v14 + 679) != 1)
            {
              goto LABEL_23;
            }

            v23 = *(v17 + 31);
            v22 = (v17 + 124);
            goto LABEL_19;
          }

          v26 = v40;
          *(v14 + 96) = v39;
          *(v14 + 112) = v26;
          v27 = v42;
          *(v14 + 128) = v41;
          *(v14 + 144) = v27;
          re::DynamicArray<re::DirectionalLightInfo>::add((v17 + 24), (v14 + 64));
          if (*(v14 + 198) == 1)
          {
            v28 = *(v17 + 31);
            v22 = (v17 + 124);
LABEL_19:
            v32 = re::DynamicArray<re::DynamicLightShadowInfo>::add(v22, &v43);
            if (v43 && (v44 & 1) != 0)
            {
              (*(*v43 + 40))(v32);
            }
          }
        }
      }

LABEL_23:
      v33 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v37);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v36, v33, *(a3 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v37);
    }

    while (v37 != a5 || v38 != 0xFFFF || HIWORD(v38) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[a4 + 3]);
  if (!a4 && (result != a2 || v9 != a3 || ((v9 ^ a3) & 0xFFFFFF00000000) != 0))
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, result);
    v12 = *a1;
    v13 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v12 + 56), &v13);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v12 + 168, *(*(v12 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v12);
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::DirectionalLightInfo>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::DirectionalLightInfo>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::DirectionalLightInfo>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::DynamicOverflowArray<re::ecs2::ComponentTypeBase const*,8ul>::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*a1)
  {
    if (v4)
    {
      re::DynamicOverflowArray<re::ecs2::ComponentTypeBase const*,8ul>::copy(a1, 0, *a2, v4);
      re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::resize(a1, *(a2 + 8));
    }

    else
    {
      *(a1 + 8) = 0;
      *(a1 + 16) += 2;
    }
  }

  else if (v4)
  {
    re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::setCapacity(a1, v4);
    *(a1 + 16) += 2;
    re::DynamicOverflowArray<re::ecs2::ComponentTypeBase const*,8ul>::copy(a1, 0, *a2, *(a2 + 8));
  }

  return a1;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[a4 + 3]);
  if (!a4 && (result != a2 || v9 != a3 || ((v9 ^ a3) & 0xFFFFFF00000000) != 0))
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, result);
    v12 = *a1;
    v13 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v12 + 56), &v13);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v12 + 168, *(*(v12 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v12);
    }
  }

  return result;
}

char *re::DynamicOverflowArray<re::ecs2::ComponentTypeBase const*,8ul>::copy(char *result, unint64_t a2, char *__src, uint64_t a4)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return result;
  }

  v6 = result;
  v7 = *(result + 1);
  v8 = v7 + 1;
  if (v7 + 1 <= a2)
  {
    v24 = 0;
    memset(v30, 0, sizeof(v30));
    v17 = MEMORY[0x1E69E9C10];
    *v25 = 136315906;
    *&v25[4] = "copy";
    *&v25[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    *&v25[14] = 678;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v18, &v24, v30, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v25, 38, v21, v23);
    _os_crash_msg();
    __break(1u);
LABEL_24:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 682, v7, a2, v4, v24, *v25);
    _os_crash("assertion failure: (!overflow) Size overflow in DynamicOverflowArray<T, N>::copy(). size = %zu, pos = %zu, count = %zu", v19, v20, v22);
    __break(1u);
  }

  v4 = a4;
  v9 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_24;
  }

  if (v7 >= v9)
  {
    if (result[16])
    {
      v15 = result + 24;
    }

    else
    {
      v15 = *(result + 4);
    }

    result = memmove(&v15[8 * a2], __src, 8 * a4);
  }

  else
  {
    re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::growCapacity(result, a2 + a4);
    v11 = *(v6 + 1);
    v12 = v11 - a2;
    v13 = *(v6 + 4);
    if (v13)
    {
      v14 = v6 + 24;
    }

    else
    {
      v14 = *(v6 + 4);
    }

    if (v11 != a2)
    {
      memmove(&v14[8 * a2], __src, 8 * v12);
      v13 = *(v6 + 4);
    }

    if (v13)
    {
      v16 = v6 + 24;
    }

    else
    {
      v16 = *(v6 + 4);
    }

    result = memcpy(&v16[8 * *(v6 + 1)], &__src[8 * v12], 8 * (v4 - v12));
    *(v6 + 1) = v9;
  }

  *(v6 + 4) += 2;
  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[a4 + 3]);
  if (!a4 && (result != a2 || v9 != a3 || ((v9 ^ a3) & 0xFFFFFF00000000) != 0))
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, result);
    v12 = *a1;
    v13 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v12 + 56), &v13);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v12 + 168, *(*(v12 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v12);
    }
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[a4 + 3]);
  if (!a4 && (result != a2 || v9 != a3 || ((v9 ^ a3) & 0xFFFFFF00000000) != 0))
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, result);
    v12 = *a1;
    v13 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v12 + 56), &v13);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v12 + 168, *(*(v12 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v12);
    }
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[a4 + 3]);
  if (!a4 && (result != a2 || v9 != a3 || ((v9 ^ a3) & 0xFFFFFF00000000) != 0))
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, result);
    v12 = *a1;
    v13 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v12 + 56), &v13);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v12 + 168, *(*(v12 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v12);
    }
  }

  return result;
}

re *re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::LightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
  for (i = 24; i != 56; i += 8)
  {
    v7 = re::ecs2::ComponentBucketsBase::addBucket(*(a1 + 16));
    *(a1 + i) = v7;
  }

  v9 = *(a3 + 288);
  if (v9)
  {
    v82 = re::globalAllocators(result)[2];
    v10 = (*(*v82 + 32))(v82, 32, 0);
    *v10 = &unk_1F5CEE508;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::LightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CEE560;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::LightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CEE5B8;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::LightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CEE610;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::LightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v31 = v30;
    v32 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v32 = v29;
    v32[1] = v31;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v72);
    result = (***(a2 + 224))();
    if (v33)
    {
      v34 = result;
      v35 = 8 * v33;
      do
      {
        v36 = *v34++;
        v70 = re::globalAllocators(result)[2];
        v71 = 0;
        v37 = (*(*v70 + 32))(v70, 32, 0);
        *v37 = &unk_1F5CEE508;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
        v37[3] = 0;
        v71 = v37;
        v38 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v69, v36, 0);
        v40 = v39;
        v41 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v41 = v38;
        v41[1] = v40;
        v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v69);
        v67 = re::globalAllocators(v42)[2];
        v68 = 0;
        v43 = (*(*v67 + 32))(v67, 32, 0);
        *v43 = &unk_1F5CEE560;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
        v43[3] = 0;
        v68 = v43;
        v44 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v66, v36, 0);
        v46 = v45;
        v47 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v47 = v44;
        v47[1] = v46;
        v48 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v66);
        v64 = re::globalAllocators(v48)[2];
        v65 = 0;
        v49 = (*(*v64 + 32))(v64, 32, 0);
        *v49 = &unk_1F5CEE5B8;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
        v49[3] = 0;
        v65 = v49;
        v50 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v63, v36, 0);
        v52 = v51;
        v53 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v53 = v50;
        v53[1] = v52;
        v54 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v63);
        v61 = re::globalAllocators(v54)[2];
        v62 = 0;
        v55 = (*(*v61 + 32))(v61, 32, 0);
        *v55 = &unk_1F5CEE610;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
        v55[3] = 0;
        v62 = v55;
        v56 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v60, v36, 0);
        v58 = v57;
        v59 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v59 = v56;
        v59[1] = v58;
        result = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v60);
        v35 -= 8;
      }

      while (v35);
    }
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::LightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::LightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::LightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::LightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEE508;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEE508;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEE560;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEE560;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEE5B8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEE5B8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEE610;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEE610;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

re *re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::PointLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
  for (i = 24; i != 56; i += 8)
  {
    v7 = re::ecs2::ComponentBucketsBase::addBucket(*(a1 + 16));
    *(a1 + i) = v7;
  }

  v9 = *(a3 + 288);
  if (v9)
  {
    v82 = re::globalAllocators(result)[2];
    v10 = (*(*v82 + 32))(v82, 32, 0);
    *v10 = &unk_1F5CEE668;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::PointLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CEE6C0;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::PointLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CEE718;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::PointLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CEE770;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::PointLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v31 = v30;
    v32 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v32 = v29;
    v32[1] = v31;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v72);
    result = (***(a2 + 224))();
    if (v33)
    {
      v34 = result;
      v35 = 8 * v33;
      do
      {
        v36 = *v34++;
        v70 = re::globalAllocators(result)[2];
        v71 = 0;
        v37 = (*(*v70 + 32))(v70, 32, 0);
        *v37 = &unk_1F5CEE668;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
        v37[3] = 0;
        v71 = v37;
        v38 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v69, v36, 0);
        v40 = v39;
        v41 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v41 = v38;
        v41[1] = v40;
        v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v69);
        v67 = re::globalAllocators(v42)[2];
        v68 = 0;
        v43 = (*(*v67 + 32))(v67, 32, 0);
        *v43 = &unk_1F5CEE6C0;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
        v43[3] = 0;
        v68 = v43;
        v44 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v66, v36, 0);
        v46 = v45;
        v47 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v47 = v44;
        v47[1] = v46;
        v48 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v66);
        v64 = re::globalAllocators(v48)[2];
        v65 = 0;
        v49 = (*(*v64 + 32))(v64, 32, 0);
        *v49 = &unk_1F5CEE718;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
        v49[3] = 0;
        v65 = v49;
        v50 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v63, v36, 0);
        v52 = v51;
        v53 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v53 = v50;
        v53[1] = v52;
        v54 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v63);
        v61 = re::globalAllocators(v54)[2];
        v62 = 0;
        v55 = (*(*v61 + 32))(v61, 32, 0);
        *v55 = &unk_1F5CEE770;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
        v55[3] = 0;
        v62 = v55;
        v56 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v60, v36, 0);
        v58 = v57;
        v59 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v59 = v56;
        v59[1] = v58;
        result = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v60);
        v35 -= 8;
      }

      while (v35);
    }
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PointLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PointLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PointLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PointLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEE668;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEE668;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEE6C0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEE6C0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEE718;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEE718;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEE770;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEE770;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

re *re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::SpotLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
  for (i = 24; i != 56; i += 8)
  {
    v7 = re::ecs2::ComponentBucketsBase::addBucket(*(a1 + 16));
    *(a1 + i) = v7;
  }

  v9 = *(a3 + 288);
  if (v9)
  {
    v82 = re::globalAllocators(result)[2];
    v10 = (*(*v82 + 32))(v82, 32, 0);
    *v10 = &unk_1F5CEE7C8;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::SpotLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CEE820;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::SpotLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CEE878;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::SpotLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CEE8D0;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::SpotLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v31 = v30;
    v32 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v32 = v29;
    v32[1] = v31;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v72);
    result = (***(a2 + 224))();
    if (v33)
    {
      v34 = result;
      v35 = 8 * v33;
      do
      {
        v36 = *v34++;
        v70 = re::globalAllocators(result)[2];
        v71 = 0;
        v37 = (*(*v70 + 32))(v70, 32, 0);
        *v37 = &unk_1F5CEE7C8;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
        v37[3] = 0;
        v71 = v37;
        v38 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v69, v36, 0);
        v40 = v39;
        v41 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v41 = v38;
        v41[1] = v40;
        v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v69);
        v67 = re::globalAllocators(v42)[2];
        v68 = 0;
        v43 = (*(*v67 + 32))(v67, 32, 0);
        *v43 = &unk_1F5CEE820;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
        v43[3] = 0;
        v68 = v43;
        v44 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v66, v36, 0);
        v46 = v45;
        v47 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v47 = v44;
        v47[1] = v46;
        v48 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v66);
        v64 = re::globalAllocators(v48)[2];
        v65 = 0;
        v49 = (*(*v64 + 32))(v64, 32, 0);
        *v49 = &unk_1F5CEE878;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
        v49[3] = 0;
        v65 = v49;
        v50 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v63, v36, 0);
        v52 = v51;
        v53 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v53 = v50;
        v53[1] = v52;
        v54 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v63);
        v61 = re::globalAllocators(v54)[2];
        v62 = 0;
        v55 = (*(*v61 + 32))(v61, 32, 0);
        *v55 = &unk_1F5CEE8D0;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
        v55[3] = 0;
        v62 = v55;
        v56 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v60, v36, 0);
        v58 = v57;
        v59 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v59 = v56;
        v59[1] = v58;
        result = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v60);
        v35 -= 8;
      }

      while (v35);
    }
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::SpotLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::SpotLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::SpotLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::SpotLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEE7C8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEE7C8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEE820;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEE820;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEE878;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEE878;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEE8D0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEE8D0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

re *re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::DirectionalLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
  for (i = 24; i != 56; i += 8)
  {
    v7 = re::ecs2::ComponentBucketsBase::addBucket(*(a1 + 16));
    *(a1 + i) = v7;
  }

  v9 = *(a3 + 288);
  if (v9)
  {
    v82 = re::globalAllocators(result)[2];
    v10 = (*(*v82 + 32))(v82, 32, 0);
    *v10 = &unk_1F5CEE928;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::DirectionalLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CEE980;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::DirectionalLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CEE9D8;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::DirectionalLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CEEA30;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::DirectionalLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v31 = v30;
    v32 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v32 = v29;
    v32[1] = v31;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v72);
    result = (***(a2 + 224))();
    if (v33)
    {
      v34 = result;
      v35 = 8 * v33;
      do
      {
        v36 = *v34++;
        v70 = re::globalAllocators(result)[2];
        v71 = 0;
        v37 = (*(*v70 + 32))(v70, 32, 0);
        *v37 = &unk_1F5CEE928;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
        v37[3] = 0;
        v71 = v37;
        v38 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v69, v36, 0);
        v40 = v39;
        v41 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v41 = v38;
        v41[1] = v40;
        v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v69);
        v67 = re::globalAllocators(v42)[2];
        v68 = 0;
        v43 = (*(*v67 + 32))(v67, 32, 0);
        *v43 = &unk_1F5CEE980;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
        v43[3] = 0;
        v68 = v43;
        v44 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v66, v36, 0);
        v46 = v45;
        v47 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v47 = v44;
        v47[1] = v46;
        v48 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v66);
        v64 = re::globalAllocators(v48)[2];
        v65 = 0;
        v49 = (*(*v64 + 32))(v64, 32, 0);
        *v49 = &unk_1F5CEE9D8;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
        v49[3] = 0;
        v65 = v49;
        v50 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v63, v36, 0);
        v52 = v51;
        v53 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v53 = v50;
        v53[1] = v52;
        v54 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v63);
        v61 = re::globalAllocators(v54)[2];
        v62 = 0;
        v55 = (*(*v61 + 32))(v61, 32, 0);
        *v55 = &unk_1F5CEEA30;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
        v55[3] = 0;
        v62 = v55;
        v56 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v60, v36, 0);
        v58 = v57;
        v59 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v59 = v56;
        v59[1] = v58;
        result = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v60);
        v35 -= 8;
      }

      while (v35);
    }
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::DirectionalLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::DirectionalLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::DirectionalLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::DirectionalLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEE928;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEE928;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEE980;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEE980;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEE9D8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEE9D8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEEA30;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEEA30;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

re *re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::AmbientLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
  for (i = 24; i != 56; i += 8)
  {
    v7 = re::ecs2::ComponentBucketsBase::addBucket(*(a1 + 16));
    *(a1 + i) = v7;
  }

  v9 = *(a3 + 288);
  if (v9)
  {
    v82 = re::globalAllocators(result)[2];
    v10 = (*(*v82 + 32))(v82, 32, 0);
    *v10 = &unk_1F5CEEA88;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::AmbientLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CEEAE0;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::AmbientLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CEEB38;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::AmbientLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CEEB90;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::AmbientLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v31 = v30;
    v32 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v32 = v29;
    v32[1] = v31;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v72);
    result = (***(a2 + 224))();
    if (v33)
    {
      v34 = result;
      v35 = 8 * v33;
      do
      {
        v36 = *v34++;
        v70 = re::globalAllocators(result)[2];
        v71 = 0;
        v37 = (*(*v70 + 32))(v70, 32, 0);
        *v37 = &unk_1F5CEEA88;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
        v37[3] = 0;
        v71 = v37;
        v38 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v69, v36, 0);
        v40 = v39;
        v41 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v41 = v38;
        v41[1] = v40;
        v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v69);
        v67 = re::globalAllocators(v42)[2];
        v68 = 0;
        v43 = (*(*v67 + 32))(v67, 32, 0);
        *v43 = &unk_1F5CEEAE0;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
        v43[3] = 0;
        v68 = v43;
        v44 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v66, v36, 0);
        v46 = v45;
        v47 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v47 = v44;
        v47[1] = v46;
        v48 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v66);
        v64 = re::globalAllocators(v48)[2];
        v65 = 0;
        v49 = (*(*v64 + 32))(v64, 32, 0);
        *v49 = &unk_1F5CEEB38;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
        v49[3] = 0;
        v65 = v49;
        v50 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v63, v36, 0);
        v52 = v51;
        v53 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v53 = v50;
        v53[1] = v52;
        v54 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v63);
        v61 = re::globalAllocators(v54)[2];
        v62 = 0;
        v55 = (*(*v61 + 32))(v61, 32, 0);
        *v55 = &unk_1F5CEEB90;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
        v55[3] = 0;
        v62 = v55;
        v56 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v60, v36, 0);
        v58 = v57;
        v59 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v59 = v56;
        v59[1] = v58;
        result = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v60);
        v35 -= 8;
      }

      while (v35);
    }
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AmbientLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AmbientLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AmbientLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AmbientLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}