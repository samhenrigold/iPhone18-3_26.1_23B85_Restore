uint64_t re::TimelineEventData::parameter<int>(re::TimelineEventData *a1, uint64_t a2, re::StringID *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = re::TimelineEventData::parameterDescription(a1, a3);
  if (v6 != 2)
  {
    return 0;
  }

  v7 = v5 + *(a1 + 29) * a2;
  v8 = *(a1 + 32);
  if (v8 <= v7)
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

    v17 = 797;
    v18 = 2048;
    v19 = v7;
    v20 = 2048;
    v21 = v8;
    _os_log_send_and_compose_impl(v11, &v13, v22, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 34) + 4 * v7;
}

_anonymous_namespace_ *RETimelineDefinitionEventTimelineGetParameterFloat(_anonymous_namespace_::TimelineDefinition *a1, char *a2, uint64_t a3)
{
  if (*(v5 + 2) == 48)
  {
    if (a2)
    {
      v6 = *a2;
      if (*a2)
      {
        v7 = a2[1];
        if (v7)
        {
          v8 = a2 + 2;
          do
          {
            v6 = 31 * v6 + v7;
            v9 = *v8++;
            v7 = v9;
          }

          while (v9);
        }
      }
    }

    else
    {
      v6 = 0;
    }

    v14[0] = 2 * v6;
    v14[1] = a2;
    v12 = re::TimelineEventData::parameter<float>((v5 + 80), a3, v14);
    v11 = v12;
    if (v14[0])
    {
      if (v14[0])
      {
      }
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14[0]) = 0;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineGetParameterFloat - Wrong timeline type. Expected an event timeline.", v14, 2u);
    }

    return 0;
  }

  return v11;
}

uint64_t re::TimelineEventData::parameter<float>(re::TimelineEventData *a1, uint64_t a2, re::StringID *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = re::TimelineEventData::parameterDescription(a1, a3);
  if (v6 != 1)
  {
    return 0;
  }

  v7 = v5 + *(a1 + 23) * a2;
  v8 = *(a1 + 26);
  if (v8 <= v7)
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

    v17 = 797;
    v18 = 2048;
    v19 = v7;
    v20 = 2048;
    v21 = v8;
    _os_log_send_and_compose_impl(v11, &v13, v22, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 28) + 4 * v7;
}

const char *RETimelineDefinitionEventTimelineGetParameterString(_anonymous_namespace_::TimelineDefinition *a1, char *a2, uint64_t a3)
{
  if (*(v5 + 2) == 48)
  {
    if (a2)
    {
      v6 = *a2;
      if (*a2)
      {
        v7 = a2[1];
        if (v7)
        {
          v8 = a2 + 2;
          do
          {
            v6 = 31 * v6 + v7;
            v9 = *v8++;
            v7 = v9;
          }

          while (v9);
        }
      }
    }

    else
    {
      v6 = 0;
    }

    v14[0] = 2 * v6;
    v14[1] = a2;
    v12 = re::TimelineEventData::parameter<re::StringID>(v5 + 10, a3, v14);
    v13 = v12;
    if (v14[0])
    {
      if (v14[0])
      {
      }
    }

    if (v13)
    {
      return *(v13 + 1);
    }

    else
    {
      return "";
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14[0]) = 0;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineGetParameterString - Wrong timeline type. Expected an event timeline.", v14, 2u);
    }

    return 0;
  }
}

_anonymous_namespace_ *RETimelineDefinitionEventTimelineGetParameterVector4(_anonymous_namespace_::TimelineDefinition *a1, char *a2, uint64_t a3)
{
  if (*(v5 + 2) == 48)
  {
    if (a2)
    {
      v6 = *a2;
      if (*a2)
      {
        v7 = a2[1];
        if (v7)
        {
          v8 = a2 + 2;
          do
          {
            v6 = 31 * v6 + v7;
            v9 = *v8++;
            v7 = v9;
          }

          while (v9);
        }
      }
    }

    else
    {
      v6 = 0;
    }

    v14[0] = 2 * v6;
    v14[1] = a2;
    v12 = re::TimelineEventData::parameter<re::Vector4<float>>((v5 + 80), a3, v14);
    v11 = v12;
    if (v14[0])
    {
      if (v14[0])
      {
      }
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14[0]) = 0;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "RETimelineDefinitionEventTimelineGetParameterVector4 - Wrong timeline type. Expected an event timeline.", v14, 2u);
    }

    return 0;
  }

  return v11;
}

uint64_t re::TimelineEventData::parameter<re::Vector4<float>>(re::TimelineEventData *a1, uint64_t a2, re::StringID *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = re::TimelineEventData::parameterDescription(a1, a3);
  if (v6 != 4)
  {
    return 0;
  }

  v7 = v5 + *(a1 + 41) * a2;
  v8 = *(a1 + 44);
  if (v8 <= v7)
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

    v17 = 797;
    v18 = 2048;
    v19 = v7;
    v20 = 2048;
    v21 = v8;
    _os_log_send_and_compose_impl(v11, &v13, v22, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 46) + 16 * v7;
}

_anonymous_namespace_::TimelineDefinition *RETimelineDefinitionCreateAudioAnimation(re *a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 96, 8);
  v4 = re::TimelineAssetData::TimelineAssetData(v3, 38);
  *(v4 + 72) = 0;
  *v4 = &unk_1F5CC09F0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  v8[0] = &unk_1F5D2B3C0;
  v8[3] = v8;
  v9 = v4;
  v10[3] = v10;
  v10[0] = &unk_1F5D2B3C0;
  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](&v9);
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](v8);
  v5 = v7;
  return v5;
}

uint64_t RETimelineDefinitionGetEasingFunction(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 24)) + 8);
  }

  v2 = *(v1 + 8);
  if (v2 <= 14)
  {
    if (v2 > 12)
    {
      if (v2 != 13)
      {
        return *(v1 + 192);
      }
    }

    else
    {
      if (v2 == 11)
      {
        return *(v1 + 112);
      }

      if (v2 != 12)
      {
        goto LABEL_18;
      }
    }

    return *(v1 + 136);
  }

  if (v2 <= 16)
  {
    return *(v1 + 192);
  }

  if (v2 == 17)
  {
    return *(v1 + 288);
  }

  if (v2 == 18 || v2 == 50)
  {
    return *(v1 + 184);
  }

LABEL_18:
  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v4 = CoreRELog::log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Cannot get easing function from non-from-to-by animation.", v5, 2u);
  }

  return 0;
}

_anonymous_namespace_ *RETimelineDefinitionCreateEasingFunctionEx(void *a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v1 = a1[6];
  if (!v1)
  {
    a1 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 3));
    v1 = a1[1];
  }

  v2 = *(v1 + 8);
  if (v2 <= 14)
  {
    if (v2 > 12)
    {
      if (v2 != 13)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v2 == 11)
      {
        v3 = 112;
        goto LABEL_18;
      }

      if (v2 != 12)
      {
        goto LABEL_21;
      }
    }

    v3 = 136;
    goto LABEL_18;
  }

  if (v2 <= 16)
  {
LABEL_14:
    v3 = 192;
    goto LABEL_18;
  }

  if (v2 == 17)
  {
    v3 = 288;
LABEL_18:
    v4 = *(v1 + v3);
    if (v4)
    {
      v8[0] = &unk_1F5D2B440;
      v8[3] = v8;
      *buf = v5;
      v10[3] = v10;
      v10[0] = &unk_1F5D2B440;
      std::__function::__value_func<void ()(re::EasingFunction *)>::~__value_func[abi:nn200100](v8);
      re::make::shared::object<re::Shareable<std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>,std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>(buf, v8);
      v4 = v8[0];
      std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>::~unique_ptr[abi:nn200100](buf);
    }

    return v4;
  }

  if (v2 == 18 || v2 == 50)
  {
    v3 = 184;
    goto LABEL_18;
  }

LABEL_21:
  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v7 = CoreRELog::log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Cannot get easing function from non-from-to-by animation.", buf, 2u);
  }

  return 0;
}

uint64_t RETimelineDefinitionSetEasingFunction(void *a1, uint64_t a2)
{
  v4 = a1[6];
  if (!v4)
  {
    v4 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 3)) + 8);
  }

  v5 = *(v4 + 8);
  if (v5 <= 14)
  {
    if (v5 > 12)
    {
      if (v5 != 13)
      {
LABEL_15:
        v9 = re::internal::destroyPersistent<re::EasingFunction>("assignEasingFunction", 7673, *(v8 + 24));
        *(v8 + 24) = 0;
        if (a2)
        {
        }

        return 1;
      }
    }

    else
    {
      if (v5 == 11)
      {
        v13 = re::internal::destroyPersistent<re::EasingFunction>("assignEasingFunction", 7673, *(v12 + 14));
        *(v12 + 14) = 0;
        if (a2)
        {
        }

        return 1;
      }

      if (v5 != 12)
      {
        goto LABEL_24;
      }
    }

    v11 = re::internal::destroyPersistent<re::EasingFunction>("assignEasingFunction", 7673, *(v10 + 17));
    *(v10 + 17) = 0;
    if (a2)
    {
    }

    return 1;
  }

  if (v5 <= 16)
  {
    goto LABEL_15;
  }

  if (v5 == 17)
  {
    v15 = re::internal::destroyPersistent<re::EasingFunction>("assignEasingFunction", 7673, *(v14 + 36));
    *(v14 + 36) = 0;
    if (a2)
    {
    }

    return 1;
  }

  if (v5 == 18 || v5 == 50)
  {
    v7 = re::internal::destroyPersistent<re::EasingFunction>("assignEasingFunction", 7673, *(v6 + 23));
    *(v6 + 23) = 0;
    if (a2)
    {
    }

    return 1;
  }

LABEL_24:
  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v17 = CoreRELog::log;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *v18 = 0;
    _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Cannot set easing function for non-from-to-by animation.", v18, 2u);
  }

  return 0;
}

uint64_t RETimelineDefinitionSetEasingFunctionEx(void *a1, uint64_t a2)
{
  v4 = a1[6];
  if (!v4)
  {
    v4 = *(re::AssetHandle::blockUntilLoaded<re::TimelineAsset>((a1 + 3)) + 8);
  }

  v5 = *(v4 + 8);
  if (v5 <= 14)
  {
    if (v5 > 12)
    {
      if (v5 != 13)
      {
LABEL_15:
        re::internal::destroyPersistent<re::EasingFunction>("assignEasingFunctionEx", 7755, *(v8 + 24));
        *(v8 + 24) = 0;
        v9 = *(a2 + 24);
        if (v9)
        {
        }

        return 1;
      }
    }

    else
    {
      if (v5 == 11)
      {
        re::internal::destroyPersistent<re::EasingFunction>("assignEasingFunctionEx", 7755, *(v12 + 14));
        *(v12 + 14) = 0;
        v13 = *(a2 + 24);
        if (v13)
        {
        }

        return 1;
      }

      if (v5 != 12)
      {
        goto LABEL_24;
      }
    }

    re::internal::destroyPersistent<re::EasingFunction>("assignEasingFunctionEx", 7755, *(v10 + 17));
    *(v10 + 17) = 0;
    v11 = *(a2 + 24);
    if (v11)
    {
    }

    return 1;
  }

  if (v5 <= 16)
  {
    goto LABEL_15;
  }

  if (v5 == 17)
  {
    re::internal::destroyPersistent<re::EasingFunction>("assignEasingFunctionEx", 7755, *(v14 + 36));
    *(v14 + 36) = 0;
    v15 = *(a2 + 24);
    if (v15)
    {
    }

    return 1;
  }

  if (v5 == 18 || v5 == 50)
  {
    re::internal::destroyPersistent<re::EasingFunction>("assignEasingFunctionEx", 7755, *(v6 + 23));
    *(v6 + 23) = 0;
    v7 = *(a2 + 24);
    if (v7)
    {
    }

    return 1;
  }

LABEL_24:
  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v17 = CoreRELog::log;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *v18 = 0;
    _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Cannot set easing function for non-from-to-by animation.", v18, 2u);
  }

  return 0;
}

void std::__function::__func<anonymous namespace::TimelineDefinition::timelineAssetData(void)::{lambda(re::TimelineAssetData *)#1},std::allocator<anonymous namespace::TimelineDefinition::timelineAssetData(void)::{lambda(re::TimelineAssetData *)#1}>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<anonymous namespace::TimelineDefinition::timelineAssetData(void)::{lambda(re::TimelineAssetData *)#1},std::allocator<anonymous namespace::TimelineDefinition::timelineAssetData(void)::{lambda(re::TimelineAssetData *)#1}>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t anonymous namespace::makeAdditive<re::SkeletalPoseAssetData>(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 80);
  v4 = *(a2 + 80);
  if (v3 != v4 && vabds_f32(v3, v4) >= (((fabsf(v3) + fabsf(v4)) + 1.0) * 0.00001))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v6 = "Cannot make additive animation from differing from-to-by durations.";
    goto LABEL_23;
  }

  if ((*(a1 + 72) & 1) != 0 || *(a2 + 72) == 1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v6 = "Cannot make additive animation from existing additive from-to-by animation.";
LABEL_23:
    _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, v6, buf, 2u);
LABEL_24:

    return 0;
  }

  if (*(a1 + 88) != 1 || *(a2 + 88) != 1 || *(a1 + 120) != 1 || *(a2 + 120) != 1 || (*(a1 + 152) & 1) != 0 || *(a2 + 152) == 1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v6 = "Currently only supports from-to animations.";
    goto LABEL_23;
  }

  *buf = a1 + 88;
  v12 = a1 + 120;
  v10[0] = a2 + 96;
  v10[1] = a2 + 128;
  v9[0] = buf;
  v9[1] = 2;
  v8[0] = v10;
  v8[1] = 2;
  result = re::AnimationHelper::makeAdditiveForOptionalValueReferences<re::SkeletalPoseAssetData>(v9, v8, buf, 2);
  *(a1 + 72) = result;
  return result;
}

uint64_t re::AnimationHelper::makeAdditiveForOptionalValueReferences<re::SkeletalPoseAssetData>(re *a1, uint64_t **a2, uint64_t a3, uint64_t **a4)
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
    goto LABEL_35;
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
LABEL_35:
    _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, v19, buf, 2u);
    return 0;
  }

  *buf = 0;
  v33 = 0;
  v34 = 0;
  re::AnimationValueTraits<re::SkeletalPoseAssetData>::init(buf, **a2);
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
        re::Optional<re::SkeletalPoseAssetData>::operator=(v11, v8);
        v10 = *(a1 + 1);
      }

      if (v10 <= v9)
      {
        goto LABEL_37;
      }

      v12 = v4[1];
      if (**(*a1 + 8 * v9) == 1)
      {
        if (v12 <= v9)
        {
          goto LABEL_40;
        }

        re::AnimationValueTraits<re::SkeletalPoseAssetData>::invert((*v4)[v9], buf);
        v14 = *(a1 + 1);
        if (v14 <= v9)
        {
          goto LABEL_41;
        }

        re::AnimationValueTraits<re::SkeletalPoseAssetData>::combine(*(*a1 + 8 * v9) + 8, buf, *(a3 + 8 * v9) + 8);
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
LABEL_37:
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
      if (*buf)
      {
        if (v33)
        {
          (*(**buf + 40))();
        }
      }

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
        re::Optional<re::SkeletalPoseAssetData>::operator=(v16, v15);
        v10 = *(a1 + 1);
      }

      if (v10 <= v9)
      {
        goto LABEL_39;
      }

      re::AnimationValueTraits<re::SkeletalPoseAssetData>::combine(*(*a1 + 8 * v9) + 8, buf, *(a3 + 8 * v9) + 8);
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
LABEL_39:
  re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, v10);
  _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v23, v29);
  __break(1u);
LABEL_40:
  re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, v12);
  _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v24, v30);
  __break(1u);
LABEL_41:
  re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, v14);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v25, v31);
  __break(1u);
  return result;
}

BOOL re::AnimationHelper::makeAdditiveForValues<re::BlendShapeWeightsAssetData>(re *a1, void *a2, uint64_t a3, void *a4)
{
  v49 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) != a4)
  {
    v11 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v13 = "Cannot make additive values, output values expected to match input values size.";
    goto LABEL_9;
  }

  v4 = a2;
  if (!a2[1])
  {
    v11 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v13 = "Cannot make additive values, base values array size must not be zero.";
LABEL_9:
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, v13, buf, 2u);
    return 0;
  }

  v5 = a4;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v8 = *(*a2 + 8);
  if (v8)
  {
    v9 = *(a1 + 1);
    v10 = v4[1] != 0;
  }

  else
  {
    v10 = 1;
    v9 = a4;
  }

  v14 = 0;
  if (v9 && v10)
  {
    v14 = 0;
    while (1)
    {
      v15 = *v4 + 24 * v14;
      v16 = *(v15 + 8);
      if (v16)
      {
        break;
      }

LABEL_18:
      if (v9 <= v14)
      {
        goto LABEL_40;
      }

      if (v14 == v5)
      {
        goto LABEL_41;
      }

      re::AnimationValueTraits<re::BlendShapeWeightsAssetData>::combine(*(*a1 + 24 * v14 + 8), *(*a1 + 24 * v14 + 16), v33, v34, *(a3 + 24 * v14 + 8), *(a3 + 24 * v14 + 16));
      ++v14;
      v9 = *(a1 + 1);
      if (v9 <= v14 || v4[1] <= v14)
      {
        v14 = v14;
        goto LABEL_23;
      }
    }

    v17 = 0;
    v18 = *(v15 + 16);
    v20 = v33;
    v19 = v34;
    while (v20 != v17)
    {
      *(v19 + 4 * v17) = -*(v18 + 4 * v17);
      if (v16 == ++v17)
      {
        goto LABEL_18;
      }
    }

    v35 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    *buf = 0u;
    v5 = MEMORY[0x1E69E9C10];
    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    if (v22)
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v39 = 468;
    v40 = 2048;
    v41 = v20;
    v42 = 2048;
    v43 = v20;
    _os_log_send_and_compose_impl(v23, &v35, buf, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v36, 38, v30, v31);
    _os_crash_msg();
    __break(1u);
LABEL_39:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v24, v27);
    __break(1u);
LABEL_40:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v14, v9);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v25, v28);
    __break(1u);
LABEL_41:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v5, v5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v26, v29);
    __break(1u);
  }

LABEL_23:
  if (v9 > v14)
  {
    if (v5 <= v14)
    {
      v4 = v14;
    }

    else
    {
      v4 = v5;
    }

    v21 = 24 * v14;
    while (v4 != v14)
    {
      re::AnimationValueTraits<re::BlendShapeWeightsAssetData>::combine(*(*a1 + v21 + 8), *(*a1 + v21 + 16), v33, v34, *(a3 + v21 + 8), *(a3 + v21 + 16));
      ++v14;
      v21 += 24;
      if (*(a1 + 1) <= v14)
      {
        goto LABEL_30;
      }
    }

    goto LABEL_39;
  }

LABEL_30:
  if (v32)
  {
    if (v33)
    {
      (*(*v32 + 40))();
    }
  }

  return 1;
}

float re::AnimationValueTraits<re::BlendShapeWeightsAssetData>::combine(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = a5;
    for (i = 0; i != a1; ++i)
    {
      if (a3 == i)
      {
        v15 = 0;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v24 = 0u;
        v6 = MEMORY[0x1E69E9C10];
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

        v19 = 476;
        v20 = 2048;
        v21 = a3;
        v22 = 2048;
        v23 = a3;
        _os_log_send_and_compose_impl(v10, &v15, &v24, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
        _os_crash_msg();
        __break(1u);
LABEL_11:
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

        v19 = 468;
        v20 = 2048;
        v21 = v6;
        v22 = 2048;
        v23 = v6;
        _os_log_send_and_compose_impl(v13, &v15, &v24, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
        _os_crash_msg();
        __break(1u);
      }

      if (a5 == i)
      {
        goto LABEL_11;
      }

      result = *(a2 + 4 * i) + *(a4 + 4 * i);
      *(a6 + 4 * i) = result;
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t *std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(re::TimelineAssetData *)>::operator()((a1 + 1), v2);
  }

  std::__function::__value_func<void ()(re::TimelineAssetData *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::function<void ()(re::TimelineAssetData *)>::operator()(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<void ()(re::TimelineAssetData *)>::__value_func[abi:nn200100](v4, v5);
}

uint64_t std::__function::__value_func<void ()(re::TimelineAssetData *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t anonymous namespace::TimelineDefinition::TimelineDefinition(uint64_t a1, const re::AssetHandle *a2)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5D29DB8;
  re::AssetHandle::AssetHandle((a1 + 24), a2);
  *(a1 + 48) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return a1;
}

void anonymous namespace::TimelineDefinition::~TimelineDefinition(_anonymous_namespace_::TimelineDefinition *this)
{

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5D29DB8;
  if (*(this + 88) == 1)
  {
    re::StringID::destroyString((this + 96));
  }

  std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>::~unique_ptr[abi:nn200100](this + 6);
  re::AssetHandle::~AssetHandle((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

void std::__function::__func<RETimelineDefinitionCreateFromToByFloatAnimation::$_0,std::allocator<RETimelineDefinitionCreateFromToByFloatAnimation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateFromToByFloatAnimation::$_0,std::allocator<RETimelineDefinitionCreateFromToByFloatAnimation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::make::shared::object<anonymous namespace::TimelineDefinition,std::unique_ptr<re::TimelineAssetData,std::function<void ()(re::TimelineAssetData*)>>>@<X0>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 112, 8);
  *a2 = result;
  return result;
}

uint64_t anonymous namespace::TimelineDefinition::TimelineDefinition(uint64_t a1, uint64_t *a2)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(a1 + 24) = 0;
  *a1 = &unk_1F5D29DB8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v4 = *a2;
  *a2 = 0;
  *(a1 + 48) = v4;
  std::__function::__value_func<void ()(re::TimelineAssetData *)>::__value_func[abi:nn200100](a1 + 56, (a2 + 1));
  *(a1 + 88) = 0;
  return a1;
}

void std::__function::__func<RETimelineDefinitionCreateFromToByDoubleAnimation::$_0,std::allocator<RETimelineDefinitionCreateFromToByDoubleAnimation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateFromToByDoubleAnimation::$_0,std::allocator<RETimelineDefinitionCreateFromToByDoubleAnimation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateFromToByFloat2Animation::$_0,std::allocator<RETimelineDefinitionCreateFromToByFloat2Animation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateFromToByFloat2Animation::$_0,std::allocator<RETimelineDefinitionCreateFromToByFloat2Animation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateFromToByFloat3Animation::$_0,std::allocator<RETimelineDefinitionCreateFromToByFloat3Animation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateFromToByFloat3Animation::$_0,std::allocator<RETimelineDefinitionCreateFromToByFloat3Animation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateFromToByFloat4Animation::$_0,std::allocator<RETimelineDefinitionCreateFromToByFloat4Animation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateFromToByFloat4Animation::$_0,std::allocator<RETimelineDefinitionCreateFromToByFloat4Animation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateFromToByQuaternionAnimation::$_0,std::allocator<RETimelineDefinitionCreateFromToByQuaternionAnimation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateFromToByQuaternionAnimation::$_0,std::allocator<RETimelineDefinitionCreateFromToByQuaternionAnimation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateFromToBySRTAnimation::$_0,std::allocator<RETimelineDefinitionCreateFromToBySRTAnimation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateFromToBySRTAnimation::$_0,std::allocator<RETimelineDefinitionCreateFromToBySRTAnimation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateFromToBySkeletalPoseAnimation::$_0,std::allocator<RETimelineDefinitionCreateFromToBySkeletalPoseAnimation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateFromToBySkeletalPoseAnimation::$_0,std::allocator<RETimelineDefinitionCreateFromToBySkeletalPoseAnimation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateFromToByBlendShapeWeightsAnimation::$_0,std::allocator<RETimelineDefinitionCreateFromToByBlendShapeWeightsAnimation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateFromToByBlendShapeWeightsAnimation::$_0,std::allocator<RETimelineDefinitionCreateFromToByBlendShapeWeightsAnimation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateSampledFloatAnimation::$_0,std::allocator<RETimelineDefinitionCreateSampledFloatAnimation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateSampledFloatAnimation::$_0,std::allocator<RETimelineDefinitionCreateSampledFloatAnimation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateSampledDoubleAnimation::$_0,std::allocator<RETimelineDefinitionCreateSampledDoubleAnimation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateSampledDoubleAnimation::$_0,std::allocator<RETimelineDefinitionCreateSampledDoubleAnimation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateSampledFloat2Animation::$_0,std::allocator<RETimelineDefinitionCreateSampledFloat2Animation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateSampledFloat2Animation::$_0,std::allocator<RETimelineDefinitionCreateSampledFloat2Animation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateSampledFloat3Animation::$_0,std::allocator<RETimelineDefinitionCreateSampledFloat3Animation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateSampledFloat3Animation::$_0,std::allocator<RETimelineDefinitionCreateSampledFloat3Animation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateSampledFloat4Animation::$_0,std::allocator<RETimelineDefinitionCreateSampledFloat4Animation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateSampledFloat4Animation::$_0,std::allocator<RETimelineDefinitionCreateSampledFloat4Animation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateSampledQuaternionAnimation::$_0,std::allocator<RETimelineDefinitionCreateSampledQuaternionAnimation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateSampledQuaternionAnimation::$_0,std::allocator<RETimelineDefinitionCreateSampledQuaternionAnimation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateSampledSRTAnimation::$_0,std::allocator<RETimelineDefinitionCreateSampledSRTAnimation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateSampledSRTAnimation::$_0,std::allocator<RETimelineDefinitionCreateSampledSRTAnimation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateSampledSkeletalPoseAnimation::$_0,std::allocator<RETimelineDefinitionCreateSampledSkeletalPoseAnimation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateSampledSkeletalPoseAnimation::$_0,std::allocator<RETimelineDefinitionCreateSampledSkeletalPoseAnimation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateSampledBlendShapeWeightsAnimation::$_0,std::allocator<RETimelineDefinitionCreateSampledBlendShapeWeightsAnimation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateSampledBlendShapeWeightsAnimation::$_0,std::allocator<RETimelineDefinitionCreateSampledBlendShapeWeightsAnimation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_0,std::allocator<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_0,std::allocator<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_1,std::allocator<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_1>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_1,std::allocator<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_1>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_2,std::allocator<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_2>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_2,std::allocator<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_2>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_3,std::allocator<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_3>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_3,std::allocator<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_3>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_4,std::allocator<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_4>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_4,std::allocator<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_4>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_5,std::allocator<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_5>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_5,std::allocator<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_5>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_6,std::allocator<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_6>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_6,std::allocator<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_6>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_7,std::allocator<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_7>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_7,std::allocator<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_7>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_8,std::allocator<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_8>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_8,std::allocator<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_8>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_9,std::allocator<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_9>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_9,std::allocator<createClipAssetData(REAssetManager *,RETimelineDefinition *)::$_9>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::make::shared::object<anonymous namespace::TimelineDefinition,re::AssetHandle &>(re *a1, const re::AssetHandle *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 112, 8);
  re::AssetHandle::AssetHandle(v6, a2);
  *a1 = v5;
  re::AssetHandle::~AssetHandle(v6);
}

void std::__function::__func<RETimelineDefinitionCreateTimelineGroup::$_0,std::allocator<RETimelineDefinitionCreateTimelineGroup::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateTimelineGroup::$_0,std::allocator<RETimelineDefinitionCreateTimelineGroup::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateOrbitAnimation::$_0,std::allocator<RETimelineDefinitionCreateOrbitAnimation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateOrbitAnimation::$_0,std::allocator<RETimelineDefinitionCreateOrbitAnimation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateFloatBlendTree::$_0,std::allocator<RETimelineDefinitionCreateFloatBlendTree::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateFloatBlendTree::$_0,std::allocator<RETimelineDefinitionCreateFloatBlendTree::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void TimelineDefinitionForBlendTree<float>::~TimelineDefinitionForBlendTree(uint64_t *a1)
{
  *a1 = &unk_1F5D2AD80;
  v2 = a1 + 15;
  re::DynamicArray<unsigned long>::deinit((a1 + 71));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 65);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 56);
  re::DynamicArray<re::RigGraphInputValue>::deinit((a1 + 48));
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 43);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit((a1 + 38));
  re::DynamicArray<re::RigGraphParameterProxy>::deinit((a1 + 33));
  re::DynamicArray<re::RigGraphParameterProxy>::deinit((a1 + 28));
  re::StringID::destroyString((a1 + 26));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 20);
  re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::deinit(v2);
}

{
  *a1 = &unk_1F5D2AD80;
  v2 = a1 + 15;
  re::DynamicArray<unsigned long>::deinit((a1 + 71));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 65);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 56);
  re::DynamicArray<re::RigGraphInputValue>::deinit((a1 + 48));
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 43);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit((a1 + 38));
  re::DynamicArray<re::RigGraphParameterProxy>::deinit((a1 + 33));
  re::DynamicArray<re::RigGraphParameterProxy>::deinit((a1 + 28));
  re::StringID::destroyString((a1 + 26));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 20);
  re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::deinit(v2);

  JUMPOUT(0x1E6906520);
}

void std::__function::__func<RETimelineDefinitionCreateDoubleBlendTree::$_0,std::allocator<RETimelineDefinitionCreateDoubleBlendTree::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateDoubleBlendTree::$_0,std::allocator<RETimelineDefinitionCreateDoubleBlendTree::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void TimelineDefinitionForBlendTree<double>::~TimelineDefinitionForBlendTree(uint64_t *a1)
{
  *a1 = &unk_1F5D2AE48;
  v2 = a1 + 15;
  re::DynamicArray<unsigned long>::deinit((a1 + 71));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 65);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 56);
  re::DynamicArray<re::RigGraphInputValue>::deinit((a1 + 48));
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 43);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit((a1 + 38));
  re::DynamicArray<re::RigGraphParameterProxy>::deinit((a1 + 33));
  re::DynamicArray<re::RigGraphParameterProxy>::deinit((a1 + 28));
  re::StringID::destroyString((a1 + 26));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 20);
  re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::deinit(v2);
}

{
  *a1 = &unk_1F5D2AE48;
  v2 = a1 + 15;
  re::DynamicArray<unsigned long>::deinit((a1 + 71));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 65);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 56);
  re::DynamicArray<re::RigGraphInputValue>::deinit((a1 + 48));
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 43);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit((a1 + 38));
  re::DynamicArray<re::RigGraphParameterProxy>::deinit((a1 + 33));
  re::DynamicArray<re::RigGraphParameterProxy>::deinit((a1 + 28));
  re::StringID::destroyString((a1 + 26));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 20);
  re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::deinit(v2);

  JUMPOUT(0x1E6906520);
}

void std::__function::__func<RETimelineDefinitionCreateFloat2BlendTree::$_0,std::allocator<RETimelineDefinitionCreateFloat2BlendTree::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateFloat2BlendTree::$_0,std::allocator<RETimelineDefinitionCreateFloat2BlendTree::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void TimelineDefinitionForBlendTree<re::Vector2<float>>::~TimelineDefinitionForBlendTree(uint64_t *a1)
{
  *a1 = &unk_1F5D2AF10;
  v2 = a1 + 15;
  re::DynamicArray<unsigned long>::deinit((a1 + 71));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 65);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 56);
  re::DynamicArray<re::RigGraphInputValue>::deinit((a1 + 48));
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 43);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit((a1 + 38));
  re::DynamicArray<re::RigGraphParameterProxy>::deinit((a1 + 33));
  re::DynamicArray<re::RigGraphParameterProxy>::deinit((a1 + 28));
  re::StringID::destroyString((a1 + 26));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 20);
  re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::deinit(v2);
}

{
  *a1 = &unk_1F5D2AF10;
  v2 = a1 + 15;
  re::DynamicArray<unsigned long>::deinit((a1 + 71));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 65);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 56);
  re::DynamicArray<re::RigGraphInputValue>::deinit((a1 + 48));
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 43);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit((a1 + 38));
  re::DynamicArray<re::RigGraphParameterProxy>::deinit((a1 + 33));
  re::DynamicArray<re::RigGraphParameterProxy>::deinit((a1 + 28));
  re::StringID::destroyString((a1 + 26));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 20);
  re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::deinit(v2);

  JUMPOUT(0x1E6906520);
}

void std::__function::__func<RETimelineDefinitionCreateFloat3BlendTree::$_0,std::allocator<RETimelineDefinitionCreateFloat3BlendTree::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateFloat3BlendTree::$_0,std::allocator<RETimelineDefinitionCreateFloat3BlendTree::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void TimelineDefinitionForBlendTree<re::Vector3<float>>::~TimelineDefinitionForBlendTree(uint64_t *a1)
{
  *a1 = &unk_1F5D2AFD8;
  v2 = a1 + 15;
  re::DynamicArray<unsigned long>::deinit((a1 + 71));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 65);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 56);
  re::DynamicArray<re::RigGraphInputValue>::deinit((a1 + 48));
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 43);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit((a1 + 38));
  re::DynamicArray<re::RigGraphParameterProxy>::deinit((a1 + 33));
  re::DynamicArray<re::RigGraphParameterProxy>::deinit((a1 + 28));
  re::StringID::destroyString((a1 + 26));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 20);
  re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::deinit(v2);
}

{
  *a1 = &unk_1F5D2AFD8;
  v2 = a1 + 15;
  re::DynamicArray<unsigned long>::deinit((a1 + 71));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 65);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 56);
  re::DynamicArray<re::RigGraphInputValue>::deinit((a1 + 48));
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 43);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit((a1 + 38));
  re::DynamicArray<re::RigGraphParameterProxy>::deinit((a1 + 33));
  re::DynamicArray<re::RigGraphParameterProxy>::deinit((a1 + 28));
  re::StringID::destroyString((a1 + 26));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 20);
  re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::deinit(v2);

  JUMPOUT(0x1E6906520);
}

void std::__function::__func<RETimelineDefinitionCreateFloat4BlendTree::$_0,std::allocator<RETimelineDefinitionCreateFloat4BlendTree::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateFloat4BlendTree::$_0,std::allocator<RETimelineDefinitionCreateFloat4BlendTree::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void TimelineDefinitionForBlendTree<re::Vector4<float>>::~TimelineDefinitionForBlendTree(uint64_t *a1)
{
  *a1 = &unk_1F5D2B0A0;
  v2 = a1 + 15;
  re::DynamicArray<unsigned long>::deinit((a1 + 71));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 65);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 56);
  re::DynamicArray<re::RigGraphInputValue>::deinit((a1 + 48));
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 43);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit((a1 + 38));
  re::DynamicArray<re::RigGraphParameterProxy>::deinit((a1 + 33));
  re::DynamicArray<re::RigGraphParameterProxy>::deinit((a1 + 28));
  re::StringID::destroyString((a1 + 26));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 20);
  re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::deinit(v2);
}

{
  *a1 = &unk_1F5D2B0A0;
  v2 = a1 + 15;
  re::DynamicArray<unsigned long>::deinit((a1 + 71));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 65);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 56);
  re::DynamicArray<re::RigGraphInputValue>::deinit((a1 + 48));
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 43);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit((a1 + 38));
  re::DynamicArray<re::RigGraphParameterProxy>::deinit((a1 + 33));
  re::DynamicArray<re::RigGraphParameterProxy>::deinit((a1 + 28));
  re::StringID::destroyString((a1 + 26));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 20);
  re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::deinit(v2);

  JUMPOUT(0x1E6906520);
}

void std::__function::__func<RETimelineDefinitionCreateQuaternionBlendTree::$_0,std::allocator<RETimelineDefinitionCreateQuaternionBlendTree::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateQuaternionBlendTree::$_0,std::allocator<RETimelineDefinitionCreateQuaternionBlendTree::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void TimelineDefinitionForBlendTree<re::Quaternion<float>>::~TimelineDefinitionForBlendTree(uint64_t *a1)
{
  *a1 = &unk_1F5D2B168;
  v2 = a1 + 15;
  re::DynamicArray<unsigned long>::deinit((a1 + 71));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 65);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 56);
  re::DynamicArray<re::RigGraphInputValue>::deinit((a1 + 48));
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 43);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit((a1 + 38));
  re::DynamicArray<re::RigGraphParameterProxy>::deinit((a1 + 33));
  re::DynamicArray<re::RigGraphParameterProxy>::deinit((a1 + 28));
  re::StringID::destroyString((a1 + 26));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 20);
  re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::deinit(v2);
}

{
  *a1 = &unk_1F5D2B168;
  v2 = a1 + 15;
  re::DynamicArray<unsigned long>::deinit((a1 + 71));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 65);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 56);
  re::DynamicArray<re::RigGraphInputValue>::deinit((a1 + 48));
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 43);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit((a1 + 38));
  re::DynamicArray<re::RigGraphParameterProxy>::deinit((a1 + 33));
  re::DynamicArray<re::RigGraphParameterProxy>::deinit((a1 + 28));
  re::StringID::destroyString((a1 + 26));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 20);
  re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::deinit(v2);

  JUMPOUT(0x1E6906520);
}

void std::__function::__func<RETimelineDefinitionCreateSRTBlendTree::$_0,std::allocator<RETimelineDefinitionCreateSRTBlendTree::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateSRTBlendTree::$_0,std::allocator<RETimelineDefinitionCreateSRTBlendTree::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void TimelineDefinitionForBlendTree<re::GenericSRT<float>>::~TimelineDefinitionForBlendTree(uint64_t *a1)
{
  *a1 = &unk_1F5D2B230;
  v2 = a1 + 15;
  re::DynamicArray<unsigned long>::deinit((a1 + 71));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 65);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 56);
  re::DynamicArray<re::RigGraphInputValue>::deinit((a1 + 48));
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 43);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit((a1 + 38));
  re::DynamicArray<re::RigGraphParameterProxy>::deinit((a1 + 33));
  re::DynamicArray<re::RigGraphParameterProxy>::deinit((a1 + 28));
  re::StringID::destroyString((a1 + 26));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 20);
  re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::deinit(v2);
}

{
  *a1 = &unk_1F5D2B230;
  v2 = a1 + 15;
  re::DynamicArray<unsigned long>::deinit((a1 + 71));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 65);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 56);
  re::DynamicArray<re::RigGraphInputValue>::deinit((a1 + 48));
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 43);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit((a1 + 38));
  re::DynamicArray<re::RigGraphParameterProxy>::deinit((a1 + 33));
  re::DynamicArray<re::RigGraphParameterProxy>::deinit((a1 + 28));
  re::StringID::destroyString((a1 + 26));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 20);
  re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::deinit(v2);

  JUMPOUT(0x1E6906520);
}

void std::__function::__func<RETimelineDefinitionCreateSkeletalPoseBlendTree::$_0,std::allocator<RETimelineDefinitionCreateSkeletalPoseBlendTree::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateSkeletalPoseBlendTree::$_0,std::allocator<RETimelineDefinitionCreateSkeletalPoseBlendTree::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void TimelineDefinitionForBlendTree<re::SkeletalPose>::~TimelineDefinitionForBlendTree(uint64_t *a1)
{
  *a1 = &unk_1F5D2B2F8;
  v2 = a1 + 15;
  re::DynamicArray<unsigned long>::deinit((a1 + 71));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 65);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 56);
  re::DynamicArray<re::RigGraphInputValue>::deinit((a1 + 48));
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 43);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit((a1 + 38));
  re::DynamicArray<re::RigGraphParameterProxy>::deinit((a1 + 33));
  re::DynamicArray<re::RigGraphParameterProxy>::deinit((a1 + 28));
  re::StringID::destroyString((a1 + 26));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 20);
  re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::deinit(v2);
}

{
  *a1 = &unk_1F5D2B2F8;
  v2 = a1 + 15;
  re::DynamicArray<unsigned long>::deinit((a1 + 71));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 65);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 56);
  re::DynamicArray<re::RigGraphInputValue>::deinit((a1 + 48));
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 43);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit((a1 + 38));
  re::DynamicArray<re::RigGraphParameterProxy>::deinit((a1 + 33));
  re::DynamicArray<re::RigGraphParameterProxy>::deinit((a1 + 28));
  re::StringID::destroyString((a1 + 26));
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 20);
  re::DynamicArray<re::AnimationBlendTreeBuilder<float>::BlendTreeBuilderNode>::deinit(v2);

  JUMPOUT(0x1E6906520);
}

uint64_t re::AnimationBlendTreeBuilder<float>::addRigNode(uint64_t a1, const StringID *a2, StringID *a3, const StringID *a4, float a5)
{
  v9 = *(a1 + 392);
  re::StringID::StringID(&v12, a3);
  re::StringID::StringID(v13, a2);
  v14 = 0;
  v15 = &str_67;
  v16 = 0;
  v17 = &str_67;
  re::StringID::StringID(v18, a4);
  v19 = a5;
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::add(v9, &v12);
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  v18[0] = 0;
  v18[1] = &str_67;
  if (v16)
  {
    if (v16)
    {
    }
  }

  v16 = 0;
  v17 = &str_67;
  if (v14)
  {
    if (v14)
    {
    }
  }

  v14 = 0;
  v15 = &str_67;
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  v13[0] = 0;
  v13[1] = &str_67;
  if (v12)
  {
    if (v12)
    {
    }
  }

  return *(*(a1 + 392) + 16) - 1;
}

uint64_t re::AnimationBlendTreeBuilder<float>::addClip(uint64_t a1, const StringID *a2, const StringID *a3, const StringID *a4, float a5)
{
  v10 = *(a1 + 392);
  re::StringID::StringID(&v14, a2);
  v15 = 4206304;
  v16 = "Clip";
  if (*&a4->var0 <= 1uLL)
  {
    var1 = a4->var1;
    if (var1)
    {
      if (!*var1)
      {
        a4 = a2;
      }
    }
  }

  re::StringID::StringID(v17, a4);
  v18 = 0;
  v19 = &str_67;
  re::StringID::StringID(v20, a3);
  v21 = a5;
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::add(v10, &v14);
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  v20[0] = 0;
  v20[1] = &str_67;
  if (v18)
  {
    if (v18)
    {
    }
  }

  v18 = 0;
  v19 = &str_67;
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  v17[0] = 0;
  v17[1] = &str_67;
  if (v15)
  {
    if (v15)
    {
    }
  }

  v15 = 0;
  v16 = &str_67;
  if (v14)
  {
    if (v14)
    {
    }
  }

  return *(*(a1 + 392) + 16) - 1;
}

uint64_t re::AnimationBlendTreeBuilder<float>::addConnection(uint64_t a1, const StringID *a2, const StringID *a3, const StringID *a4, const StringID *a5)
{
  v9 = *(a1 + 392);
  re::StringID::StringID(&v12, a2);
  re::StringID::invalid(v13);
  re::StringID::StringID(v14, a4);
  re::StringID::invalid(v15);
  re::StringID::invalid(v16);
  re::StringID::StringID(v17, a3);
  re::StringID::invalid(v18);
  re::StringID::StringID(v19, a5);
  re::StringID::invalid(v20);
  re::StringID::invalid(v21);
  v10 = re::DynamicArray<re::RigGraphConnection>::add((v9 + 40), &v12);
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  v21[0] = 0;
  v21[1] = &str_67;
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  v20[0] = 0;
  v20[1] = &str_67;
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  v19[0] = 0;
  v19[1] = &str_67;
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  v18[0] = 0;
  v18[1] = &str_67;
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  v17[0] = 0;
  v17[1] = &str_67;
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  v16[0] = 0;
  v16[1] = &str_67;
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  v15[0] = 0;
  v15[1] = &str_67;
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  v14[0] = 0;
  v14[1] = &str_67;
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  v13[0] = 0;
  v13[1] = &str_67;
  if (v12)
  {
    if (v12)
    {
    }
  }

  return *(*(a1 + 392) + 56) - 1;
}

void std::__function::__func<RETimelineDefinitionCreateTypedEventTimeline::$_0,std::allocator<RETimelineDefinitionCreateTypedEventTimeline::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateTypedEventTimeline::$_0,std::allocator<RETimelineDefinitionCreateTypedEventTimeline::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RETimelineDefinitionCreateAudioAnimation::$_0,std::allocator<RETimelineDefinitionCreateAudioAnimation::$_0>,void ()(re::TimelineAssetData *)>::operator()(_anonymous_namespace_ *a1, void (****a2)(void))
{
  v2 = *a2;
  if (v2)
  {
    (**v2)(v2);

    v3();
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateAudioAnimation::$_0,std::allocator<RETimelineDefinitionCreateAudioAnimation::$_0>,void ()(re::TimelineAssetData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<RETimelineDefinitionCreateEasingFunctionEx::$_0,std::allocator<RETimelineDefinitionCreateEasingFunctionEx::$_0>,void ()(re::EasingFunction *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::EasingFunction *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::EasingFunction *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t *std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(re::EasingFunction *)>::operator()((a1 + 1), v2);
  }

  std::__function::__value_func<void ()(re::EasingFunction *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void *std::function<void ()(re::EasingFunction *)>::operator()(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return re::make::shared::object<re::Shareable<std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>,std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>(v4, v5);
}

_anonymous_namespace_ *re::make::shared::object<re::Shareable<std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>,std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>@<X0>(re *a1@<X0>, _anonymous_namespace_ **a2@<X8>)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 64, 8);
  result = re::Shareable<std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>::Shareable<std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>(v5, a1);
  *a2 = result;
  return result;
}

_anonymous_namespace_ *re::Shareable<std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>::Shareable<std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>(_anonymous_namespace_ *a1, uint64_t *a2)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5D2B4D0;
  v4 = *a2;
  *a2 = 0;
  *(a1 + 3) = v4;
  std::__function::__value_func<void ()(re::EasingFunction *)>::__value_func[abi:nn200100](a1 + 32, (a2 + 1));
  return a1;
}

void *re::Shareable<std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>::~Shareable(void *a1)
{
  *a1 = &unk_1F5D2B4D0;
  std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>::~unique_ptr[abi:nn200100](a1 + 3);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::Shareable<std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>::~Shareable(void *a1)
{
  *a1 = &unk_1F5D2B4D0;
  std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>::~unique_ptr[abi:nn200100](a1 + 3);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void RERenderGraphEmitterPreloadProvidersAssets(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a1, &v10);
  if (!v11 || (v3 = atomic_load((v11 + 896)), v3 != 2))
  {
    re::AssetHandle::loadAsync(&v10);
    (*(**(v11 + 24) + 208))(&v9);
    v6 = v9 + 8;
    re::AssetLoadRequest::addAsset(v9, &v10);
    re::AssetHandle::AssetHandle((&v7 + 8), &v10);
    *(&v8 + 1) = a2;
    operator new();
  }

  v4 = atomic_load((v11 + 896));
  if (v4 == 2)
  {
    ++*(v11 + 276);
    v5 = re::AssetHandle::loadedAsset<re::RenderGraphEmitterAsset>(&v10);
    if (v5)
    {
      (*(**(v5 + 16) + 16))(*(v5 + 16), a2, *(v5 + 24));
    }
  }

  re::AssetHandle::~AssetHandle(&v10);
}

void RERenderGraphEmitterAssetRegisterProviders(re *a1, uint64_t a2)
{
  if (*(a2 + 112))
  {
    re::AssetAPIHelper::assetHandleCreate(a1, &v8);
    re::AssetHandle::loadNow(v9, 0);
    if (v9)
    {
      v3 = atomic_load((v9 + 896));
      if (v3 == 2)
      {
        ++*(v9 + 276);
        v4 = re::AssetHandle::loadedAsset<re::RenderGraphEmitterAsset>(&v8);
        if (v4)
        {
          v5 = *(a2 + 112);
          if (v5)
          {
            v6 = *(v5 + 296);
          }

          else
          {
            v6 = 0;
          }

          (*(**(v4 + 16) + 24))(*(v4 + 16), v6, *(v4 + 24));
        }
      }
    }

    re::AssetHandle::~AssetHandle(&v8);
  }

  else if ((atomic_exchange(&RERenderGraphEmitterAssetRegisterProviders::__FILE____LINE___logged, 1u) & 1) == 0)
  {
    v7 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "Tried to call RERenderGraphEmitterAssetRegisterProviders, but DrawingManager was null!", &v8, 2u);
    }
  }
}

void RERenderGraphEmitterAssetUnregisterProviders(re *a1, uint64_t a2)
{
  if (*(a2 + 112))
  {
    re::AssetAPIHelper::assetHandleCreate(a1, v8);
    v3 = re::AssetHandle::blockUntilLoaded<re::RenderGraphEmitterAsset>(v8);
    if (v3)
    {
      v4 = *(v3 + 16);
      v5 = *(a2 + 112);
      if (v5)
      {
        v6 = *(v5 + 296);
      }

      else
      {
        v6 = 0;
      }

      (*(*v4 + 32))(v4, v6);
    }

    re::AssetHandle::~AssetHandle(v8);
  }

  else if ((atomic_exchange(&RERenderGraphEmitterAssetUnregisterProviders::__FILE____LINE___logged, 1u) & 1) == 0)
  {
    v7 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "Tried to call RERenderGraphEmitterAssetUnregisterProviders, but DrawingManager was null!", v8, 2u);
    }
  }
}

uint64_t re::AssetHandle::blockUntilLoaded<re::RenderGraphEmitterAsset>(re::RenderGraphEmitterAsset *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = re::RenderGraphEmitterAsset::assetType(a1);
  v3 = re::AssetHandle::assetWithType(a1, v2, 0);
  if (!v3)
  {
    v4 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = v4;
      v7 = re::AssetHandle::assetInfo(a1);
      if (v7[17])
      {
        v8 = v7[18];
      }

      else
      {
        v8 = v7 + 137;
      }

      v9 = 136315138;
      v10 = v8;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", &v9, 0xCu);
    }
  }

  return v3;
}

void RERenderGraphEmitterAssetExecute(re *a1, uint64_t a2)
{
  if (*(a2 + 112))
  {
    re::AssetAPIHelper::assetHandleCreate(a1, &v6);
    re::AssetHandle::loadNow(v7, 0);
    if (v7)
    {
      v3 = atomic_load((v7 + 896));
      if (v3 == 2)
      {
        ++*(v7 + 276);
        v4 = re::AssetHandle::loadedAsset<re::RenderGraphEmitterAsset>(&v6);
        if (v4)
        {
          (*(**(v4 + 16) + 40))(*(v4 + 16), a2);
        }
      }
    }

    re::AssetHandle::~AssetHandle(&v6);
  }

  else if ((atomic_exchange(&RERenderGraphEmitterAssetExecute::__FILE____LINE___logged, 1u) & 1) == 0)
  {
    v5 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "Tried to call RERenderGraphEmitterAssetExecute, but DrawingManager was null!", &v6, 2u);
    }
  }
}

void RERenderGraphEmitterAssetExecuteWorkload(re *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 112))
  {
    re::AssetAPIHelper::assetHandleCreate(a1, &v8);
    re::AssetHandle::loadNow(v9, 0);
    if (v9)
    {
      v5 = atomic_load((v9 + 896));
      if (v5 == 2)
      {
        ++*(v9 + 276);
        v6 = re::AssetHandle::loadedAsset<re::RenderGraphEmitterAsset>(&v8);
        if (v6)
        {
          (*(**(v6 + 16) + 48))(*(v6 + 16), a2, a3);
        }
      }
    }

    re::AssetHandle::~AssetHandle(&v8);
  }

  else if ((atomic_exchange(RERenderGraphEmitterAssetExecuteWorkload::__FILE____LINE___logged, 1u) & 1) == 0)
  {
    v7 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "Tried to call RERenderGraphEmitterAssetExecute, but DrawingManager was null!", &v8, 2u);
    }
  }
}

void RERenderGraphEmitterAssetSetRuntimeSetting(uint64_t a1, const char *a2, char *a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v26);
  v5 = re::AssetHandle::blockUntilLoaded<re::RenderGraphEmitterAsset>(v26);
  if (v5)
  {
    v6 = *(v5 + 16);
    v7 = &unk_1EE187000;
    {
      v7 = &unk_1EE187000;
      if (v16)
      {
        re::introspect<BOOL>(BOOL)::info = re::introspect_BOOL(0, v17);
        v7 = &unk_1EE187000;
      }
    }

    if ((re::RenderGraphEmitterBase::setRuntimeSetting(v6, v7[42], a2, a3) & 1) == 0)
    {
      v8 = &unk_1EE187000;
      {
        v8 = &unk_1EE187000;
        if (v18)
        {
          re::introspect<double>(BOOL)::info = re::introspect_double(0, v19);
          v8 = &unk_1EE187000;
        }
      }

      if ((re::RenderGraphEmitterBase::setRuntimeSetting(v6, v8[41], a2, a3) & 1) == 0)
      {
        v9 = &unk_1EE187000;
        {
          v9 = &unk_1EE187000;
          if (v20)
          {
            re::introspect<float>(BOOL)::info = re::introspect_float(0, v21);
            v9 = &unk_1EE187000;
          }
        }

        if ((re::RenderGraphEmitterBase::setRuntimeSetting(v6, v9[40], a2, a3) & 1) == 0)
        {
          v10 = &unk_1EE187000;
          {
            v10 = &unk_1EE187000;
            if (v22)
            {
              re::introspect<int>(BOOL)::info = re::introspect_int(0, v23);
              v10 = &unk_1EE187000;
            }
          }

          if ((re::RenderGraphEmitterBase::setRuntimeSetting(v6, v10[38], a2, a3) & 1) == 0)
          {
            v11 = &unk_1EE187000;
            {
              v11 = &unk_1EE187000;
              if (v24)
              {
                re::introspect<unsigned int>(BOOL)::info = re::introspect_uint32_t(0, v25);
                v11 = &unk_1EE187000;
              }
            }

            if ((re::RenderGraphEmitterBase::setRuntimeSetting(v6, v11[37], a2, a3) & 1) == 0)
            {
              v12 = re::introspect<re::Vector2<float>>(0);
              if ((re::RenderGraphEmitterBase::setRuntimeSetting(v6, v12, a2, a3) & 1) == 0)
              {
                v13 = re::introspect<re::Vector3<float>>(0);
                if ((re::RenderGraphEmitterBase::setRuntimeSetting(v6, v13, a2, a3) & 1) == 0)
                {
                  v14 = re::introspect<re::Vector4<float>>(0);
                  if ((re::RenderGraphEmitterBase::setRuntimeSetting(v6, v14, a2, a3) & 1) == 0)
                  {
                    v15 = re::introspect<re::Quaternion<float>>(0);
                    re::RenderGraphEmitterBase::setRuntimeSetting(v6, v15, a2, a3);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  re::AssetHandle::~AssetHandle(v26);
}

uint64_t RERenderGraphEmitterAssetSetRuntimeSettingBool(uint64_t a1, const char *a2, char a3)
{
  v14 = a3;
  re::AssetAPIHelper::assetHandleCreate(a1, v13);
  v4 = re::AssetHandle::blockUntilLoaded<re::RenderGraphEmitterAsset>(v13);
  re::AssetHandle::AssetHandle(v11, v13);
  signalModifiedRuntimeSetting(v12);
  re::AssetHandle::~AssetHandle(v11);
  if (v4)
  {
    v5 = *(v4 + 16);
    {
      v10 = v5;
      v5 = v10;
      if (v9)
      {
        re::introspect<BOOL>(BOOL)::info = re::introspect_BOOL(0, v8);
        v5 = v10;
      }
    }

    v6 = re::RenderGraphEmitterBase::setRuntimeSetting(v5, re::introspect<BOOL>(BOOL)::info, a2, &v14);
  }

  else
  {
    v6 = 0;
  }

  re::AssetHandle::~AssetHandle(v13);
  return v6;
}

_anonymous_namespace_ *signalModifiedRuntimeSetting(_anonymous_namespace_ *result)
{
  if (result)
  {
    v1 = *(result + 3);
    if (v1)
    {
      result = re::ServiceLocator::serviceOrNull<re::FrameAnalysisService>(*(v1 + 1984));
      if (result)
      {
        v2 = *(*result + 160);

        return v2();
      }
    }
  }

  return result;
}

uint64_t RERenderGraphEmitterAssetSetRuntimeSettingDouble(uint64_t a1, const char *a2, double a3)
{
  v14 = a3;
  re::AssetAPIHelper::assetHandleCreate(a1, v13);
  v4 = re::AssetHandle::blockUntilLoaded<re::RenderGraphEmitterAsset>(v13);
  re::AssetHandle::AssetHandle(v11, v13);
  signalModifiedRuntimeSetting(v12);
  re::AssetHandle::~AssetHandle(v11);
  if (v4)
  {
    v5 = *(v4 + 16);
    {
      v10 = v5;
      v5 = v10;
      if (v9)
      {
        re::introspect<double>(BOOL)::info = re::introspect_double(0, v8);
        v5 = v10;
      }
    }

    v6 = re::RenderGraphEmitterBase::setRuntimeSetting(v5, re::introspect<double>(BOOL)::info, a2, &v14);
  }

  else
  {
    v6 = 0;
  }

  re::AssetHandle::~AssetHandle(v13);
  return v6;
}

uint64_t RERenderGraphEmitterAssetSetRuntimeSettingFloat(uint64_t a1, const char *a2, float a3)
{
  v14 = a3;
  re::AssetAPIHelper::assetHandleCreate(a1, v13);
  v4 = re::AssetHandle::blockUntilLoaded<re::RenderGraphEmitterAsset>(v13);
  re::AssetHandle::AssetHandle(v11, v13);
  signalModifiedRuntimeSetting(v12);
  re::AssetHandle::~AssetHandle(v11);
  if (v4)
  {
    v5 = *(v4 + 16);
    {
      v10 = v5;
      v5 = v10;
      if (v9)
      {
        re::introspect<float>(BOOL)::info = re::introspect_float(0, v8);
        v5 = v10;
      }
    }

    v6 = re::RenderGraphEmitterBase::setRuntimeSetting(v5, re::introspect<float>(BOOL)::info, a2, &v14);
  }

  else
  {
    v6 = 0;
  }

  re::AssetHandle::~AssetHandle(v13);
  return v6;
}

uint64_t RERenderGraphEmitterAssetSetRuntimeSettingInt32(uint64_t a1, const char *a2, int a3)
{
  v14 = a3;
  re::AssetAPIHelper::assetHandleCreate(a1, v13);
  v4 = re::AssetHandle::blockUntilLoaded<re::RenderGraphEmitterAsset>(v13);
  re::AssetHandle::AssetHandle(v11, v13);
  signalModifiedRuntimeSetting(v12);
  re::AssetHandle::~AssetHandle(v11);
  if (v4)
  {
    v5 = *(v4 + 16);
    {
      v10 = v5;
      v5 = v10;
      if (v9)
      {
        re::introspect<int>(BOOL)::info = re::introspect_int(0, v8);
        v5 = v10;
      }
    }

    v6 = re::RenderGraphEmitterBase::setRuntimeSetting(v5, re::introspect<int>(BOOL)::info, a2, &v14);
  }

  else
  {
    v6 = 0;
  }

  re::AssetHandle::~AssetHandle(v13);
  return v6;
}

uint64_t RERenderGraphEmitterAssetSetRuntimeSettingUInt32(uint64_t a1, const char *a2, int a3)
{
  v14 = a3;
  re::AssetAPIHelper::assetHandleCreate(a1, v13);
  v4 = re::AssetHandle::blockUntilLoaded<re::RenderGraphEmitterAsset>(v13);
  re::AssetHandle::AssetHandle(v11, v13);
  signalModifiedRuntimeSetting(v12);
  re::AssetHandle::~AssetHandle(v11);
  if (v4)
  {
    v5 = *(v4 + 16);
    {
      v10 = v5;
      v5 = v10;
      if (v9)
      {
        re::introspect<unsigned int>(BOOL)::info = re::introspect_uint32_t(0, v8);
        v5 = v10;
      }
    }

    v6 = re::RenderGraphEmitterBase::setRuntimeSetting(v5, re::introspect<unsigned int>(BOOL)::info, a2, &v14);
  }

  else
  {
    v6 = 0;
  }

  re::AssetHandle::~AssetHandle(v13);
  return v6;
}

uint64_t RERenderGraphEmitterAssetSetRuntimeSettingVector2F(uint64_t a1, const char *a2, double a3)
{
  v13 = a3;
  re::AssetAPIHelper::assetHandleCreate(a1, v12);
  v4 = re::AssetHandle::blockUntilLoaded<re::RenderGraphEmitterAsset>(v12);
  re::AssetHandle::AssetHandle(v10, v12);
  signalModifiedRuntimeSetting(v11);
  re::AssetHandle::~AssetHandle(v10);
  if (v4)
  {
    v5 = *(v4 + 16);
    {
      v9 = v5;
      v5 = v9;
      if (v8)
      {
        re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
        v5 = v9;
      }
    }

    v6 = re::RenderGraphEmitterBase::setRuntimeSetting(v5, re::introspect<re::Vector2<float>>(BOOL)::info, a2, &v13);
  }

  else
  {
    v6 = 0;
  }

  re::AssetHandle::~AssetHandle(v12);
  return v6;
}

uint64_t RERenderGraphEmitterAssetSetRuntimeSettingVector3F(uint64_t a1, const char *a2, __n128 a3)
{
  v13 = a3;
  re::AssetAPIHelper::assetHandleCreate(a1, v12);
  v4 = re::AssetHandle::blockUntilLoaded<re::RenderGraphEmitterAsset>(v12);
  re::AssetHandle::AssetHandle(v10, v12);
  signalModifiedRuntimeSetting(v11);
  re::AssetHandle::~AssetHandle(v10);
  if (v4)
  {
    v5 = *(v4 + 16);
    {
      v9 = v5;
      v5 = v9;
      if (v8)
      {
        re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
        v5 = v9;
      }
    }

    v6 = re::RenderGraphEmitterBase::setRuntimeSetting(v5, re::introspect<re::Vector3<float>>(BOOL)::info, a2, &v13);
  }

  else
  {
    v6 = 0;
  }

  re::AssetHandle::~AssetHandle(v12);
  return v6;
}

uint64_t RERenderGraphEmitterAssetSetRuntimeSettingVector4F(uint64_t a1, const char *a2, __n128 a3)
{
  v13 = a3;
  re::AssetAPIHelper::assetHandleCreate(a1, v12);
  v4 = re::AssetHandle::blockUntilLoaded<re::RenderGraphEmitterAsset>(v12);
  re::AssetHandle::AssetHandle(v10, v12);
  signalModifiedRuntimeSetting(v11);
  re::AssetHandle::~AssetHandle(v10);
  if (v4)
  {
    v5 = *(v4 + 16);
    {
      v9 = v5;
      v5 = v9;
      if (v8)
      {
        re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
        v5 = v9;
      }
    }

    v6 = re::RenderGraphEmitterBase::setRuntimeSetting(v5, re::introspect<re::Vector4<float>>(BOOL)::info, a2, &v13);
  }

  else
  {
    v6 = 0;
  }

  re::AssetHandle::~AssetHandle(v12);
  return v6;
}

uint64_t RERenderGraphEmitterAssetSetRuntimeSettingQuaternionF(uint64_t a1, const char *a2, __n128 a3)
{
  v13 = a3;
  re::AssetAPIHelper::assetHandleCreate(a1, v12);
  v4 = re::AssetHandle::blockUntilLoaded<re::RenderGraphEmitterAsset>(v12);
  re::AssetHandle::AssetHandle(v10, v12);
  signalModifiedRuntimeSetting(v11);
  re::AssetHandle::~AssetHandle(v10);
  if (v4)
  {
    v5 = *(v4 + 16);
    {
      v9 = v5;
      v5 = v9;
      if (v8)
      {
        re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
        v5 = v9;
      }
    }

    v6 = re::RenderGraphEmitterBase::setRuntimeSetting(v5, re::introspect<re::Quaternion<float>>(BOOL)::info, a2, &v13);
  }

  else
  {
    v6 = 0;
  }

  re::AssetHandle::~AssetHandle(v12);
  return v6;
}

void RERenderGraphSelectionEmitterAddCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  re::AssetAPIHelper::assetHandleCreate(a1, v10);
  v6 = re::AssetHandle::blockUntilLoaded<re::RenderGraphEmitterAsset>(v10);
  if (v6)
  {
    v7 = *(v6 + 16);
    v8 = _Block_copy(v5);
    v11[0] = &unk_1F5D2B598;
    v11[1] = v8;
    v11[3] = v11;
    v9 = *(*(a2 + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(a2 + 144) + 16) << 60);
    re::RenderGraphSelectionEmitter::addSelectionCompleteCallback(v7, &v9, v11);
    std::__function::__value_func<void ()(re::Slice<unsigned long long> const&)>::~__value_func[abi:nn200100](v11);
  }

  re::AssetHandle::~AssetHandle(v10);
}

void RERenderGraphSelectionEmitterAddConcludeCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  re::AssetAPIHelper::assetHandleCreate(a1, v10);
  v6 = re::AssetHandle::blockUntilLoaded<re::RenderGraphEmitterAsset>(v10);
  if (v6)
  {
    v7 = *(v6 + 16);
    v8 = _Block_copy(v5);
    v11[0] = &unk_1F5D2B628;
    v11[1] = v8;
    v11[3] = v11;
    v9 = *(*(a2 + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(a2 + 144) + 16) << 60);
    re::RenderGraphSelectionEmitter::addSelectionConcludeCallback(v7, &v9, v11);
    std::__function::__value_func<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::~__value_func[abi:nn200100](v11);
  }

  re::AssetHandle::~AssetHandle(v10);
}

void RERenderGraphSelectionEmitterSetFilteredEntityIDs(uint64_t a1, const __CFArray *a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v3 = re::AssetHandle::blockUntilLoaded<re::RenderGraphEmitterAsset>(v4);
  if (v3)
  {
    re::RenderGraphSelectionEmitter::setFilteredEntityIDSet(*(v3 + 16), a2);
  }

  re::AssetHandle::~AssetHandle(v4);
}

void RERenderGraphSelectionEmitterSetParams(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6)
{
  v14[3] = &unk_1F5D10168;
  *(&v16 + 4) = -1;
  v6.i64[0] = 0x3F0000003FLL;
  v6.i64[1] = 0x3F0000003FLL;
  *&v17[8] = vnegq_f32(v6);
  *&v17[24] = *&v17[8];
  *&v17[40] = *&v17[8];
  *&v17[56] = *&v17[8];
  *&v17[72] = *&v17[8];
  *&v17[88] = *&v17[8];
  *&v17[104] = *&v17[8];
  *&v17[120] = *&v17[8];
  *&v15 = __PAIR64__(a3, a2);
  *(&v15 + 1) = __PAIR64__(a5, a4);
  LODWORD(v16) = a6 ^ 1;
  re::AssetAPIHelper::assetHandleCreate(a1, v14);
  v7 = re::AssetHandle::blockUntilLoaded<re::RenderGraphEmitterAsset>(v14);
  if (v7)
  {
    v8 = *(v7 + 16);
    *(v8 + 456) = *&v17[128];
    v9 = *&v17[112];
    *(v8 + 424) = *&v17[96];
    *(v8 + 440) = v9;
    v10 = *&v17[48];
    *(v8 + 360) = *&v17[32];
    *(v8 + 376) = v10;
    v11 = *&v17[80];
    *(v8 + 392) = *&v17[64];
    *(v8 + 408) = v11;
    v12 = v16;
    *(v8 + 296) = v15;
    *(v8 + 312) = v12;
    v13 = *&v17[16];
    *(v8 + 328) = *v17;
    *(v8 + 344) = v13;
  }

  re::AssetHandle::~AssetHandle(v14);
}

void RERenderGraphSelectionEmitterSetParamsWithTargetSize(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6, unsigned int a7, unsigned int a8)
{
  v16[3] = &unk_1F5D10168;
  *&v17 = __PAIR64__(a3, a2);
  *(&v17 + 1) = __PAIR64__(a5, a4);
  LODWORD(v18) = a6 ^ 1;
  *(&v18 + 4) = __PAIR64__(a8, a7);
  v8.i64[0] = 0x3F0000003FLL;
  v8.i64[1] = 0x3F0000003FLL;
  *&v19[8] = vnegq_f32(v8);
  *&v19[24] = *&v19[8];
  *&v19[40] = *&v19[8];
  *&v19[56] = *&v19[8];
  *&v19[72] = *&v19[8];
  *&v19[88] = *&v19[8];
  *&v19[104] = *&v19[8];
  *&v19[120] = *&v19[8];
  re::AssetAPIHelper::assetHandleCreate(a1, v16);
  v9 = re::AssetHandle::blockUntilLoaded<re::RenderGraphEmitterAsset>(v16);
  if (v9)
  {
    v10 = *(v9 + 16);
    *(v10 + 456) = *&v19[128];
    v11 = *&v19[112];
    *(v10 + 424) = *&v19[96];
    *(v10 + 440) = v11;
    v12 = *&v19[48];
    *(v10 + 360) = *&v19[32];
    *(v10 + 376) = v12;
    v13 = *&v19[80];
    *(v10 + 392) = *&v19[64];
    *(v10 + 408) = v13;
    v14 = v18;
    *(v10 + 296) = v17;
    *(v10 + 312) = v14;
    v15 = *&v19[16];
    *(v10 + 328) = *v19;
    *(v10 + 344) = v15;
  }

  re::AssetHandle::~AssetHandle(v16);
}

void RERenderGraphSelectionEmitterSetParamsWithTargetSizeEx(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6, unsigned int a7, unsigned int a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12, __n128 a13, __n128 a14, __n128 a15, __n128 a16)
{
  v23[3] = &unk_1F5D10168;
  *&v24 = __PAIR64__(a3, a2);
  *(&v24 + 1) = __PAIR64__(a5, a4);
  LODWORD(v25) = a6 ^ 1;
  *(&v25 + 4) = __PAIR64__(a8, a7);
  *&v26[8] = a9;
  *&v26[24] = a10;
  *&v26[40] = a11;
  *&v26[56] = a12;
  *&v26[72] = a13;
  *&v26[88] = a14;
  *&v26[104] = a15;
  *&v26[120] = a16;
  re::AssetAPIHelper::assetHandleCreate(a1, v23);
  v16 = re::AssetHandle::blockUntilLoaded<re::RenderGraphEmitterAsset>(v23);
  if (v16)
  {
    v17 = *(v16 + 16);
    *(v17 + 456) = *&v26[128];
    v18 = *&v26[112];
    *(v17 + 424) = *&v26[96];
    *(v17 + 440) = v18;
    v19 = *&v26[48];
    *(v17 + 360) = *&v26[32];
    *(v17 + 376) = v19;
    v20 = *&v26[80];
    *(v17 + 392) = *&v26[64];
    *(v17 + 408) = v20;
    v21 = v25;
    *(v17 + 296) = v24;
    *(v17 + 312) = v21;
    v22 = *&v26[16];
    *(v17 + 328) = *v26;
    *(v17 + 344) = v22;
  }

  re::AssetHandle::~AssetHandle(v23);
}

void RERenderGraphSelectionEmitterSetScene(uint64_t a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v3 = re::AssetHandle::blockUntilLoaded<re::RenderGraphEmitterAsset>(v4);
  if (v3)
  {
    re::StringID::operator=((*(v3 + 16) + 488), (*(a2 + 104) + 288));
  }

  re::AssetHandle::~AssetHandle(v4);
}

uint64_t RERenderGraphSimpleForwardEmitterGetDisplayWireframe(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = re::AssetHandle::blockUntilLoaded<re::RenderGraphEmitterAsset>(v4);
  if (v1)
  {
    v2 = *(*(v1 + 16) + 136);
  }

  else
  {
    v2 = 0;
  }

  re::AssetHandle::~AssetHandle(v4);
  return v2 & 1;
}

void RERenderGraphSimpleForwardEmitterSetDisplayWireframe(uint64_t a1, char a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v3 = re::AssetHandle::blockUntilLoaded<re::RenderGraphEmitterAsset>(v4);
  if (v3)
  {
    *(*(v3 + 16) + 136) = a2;
  }

  re::AssetHandle::~AssetHandle(v4);
}

uint64_t re::AssetHandle::loadedAsset<re::RenderGraphEmitterAsset>(re::RenderGraphEmitterAsset *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  v2 = re::RenderGraphEmitterAsset::assetType(a1);

  return re::AssetHandle::assetWithType(a1, v2, 1);
}

void *std::__function::__func<RERenderGraphEmitterPreloadProvidersAssets::$_0,std::allocator<RERenderGraphEmitterPreloadProvidersAssets::$_0>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F5D2B518;
  re::AssetHandle::~AssetHandle((a1 + 2));
  return a1;
}

void std::__function::__func<RERenderGraphEmitterPreloadProvidersAssets::$_0,std::allocator<RERenderGraphEmitterPreloadProvidersAssets::$_0>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F5D2B518;
  re::AssetHandle::~AssetHandle((a1 + 2));

  JUMPOUT(0x1E6906520);
}

re::AssetHandle *std::__function::__func<RERenderGraphEmitterPreloadProvidersAssets::$_0,std::allocator<RERenderGraphEmitterPreloadProvidersAssets::$_0>,void ()(BOOL)>::__clone(void *a1, void *a2)
{
  v4 = a1[1];
  *a2 = &unk_1F5D2B518;
  a2[1] = v4;
  result = re::AssetHandle::AssetHandle((a2 + 2), (a1 + 2));
  a2[5] = a1[5];
  return result;
}

void std::__function::__func<RERenderGraphEmitterPreloadProvidersAssets::$_0,std::allocator<RERenderGraphEmitterPreloadProvidersAssets::$_0>,void ()(BOOL)>::destroy_deallocate(uint64_t a1)
{
  re::AssetHandle::~AssetHandle((a1 + 16));

  operator delete(a1);
}

void std::__function::__func<RERenderGraphEmitterPreloadProvidersAssets::$_0,std::allocator<RERenderGraphEmitterPreloadProvidersAssets::$_0>,void ()(BOOL)>::operator()(void *a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    v3 = a1[3];
    if (v3)
    {
      v4 = a1[5];
      v5 = atomic_load((v3 + 896));
      if (v5 == 2)
      {
        ++*(a1[3] + 276);
        v6 = re::AssetHandle::loadedAsset<re::RenderGraphEmitterAsset>((a1 + 2));
        if (v6)
        {
          (*(**(v6 + 16) + 16))(*(v6 + 16), v4, *(v6 + 24));
        }
      }
    }
  }

  v7 = a1[1];
}

uint64_t std::__function::__func<RERenderGraphEmitterPreloadProvidersAssets::$_0,std::allocator<RERenderGraphEmitterPreloadProvidersAssets::$_0>,void ()(BOOL)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RERenderGraphSelectionEmitterAddCallback::$_0,std::allocator<RERenderGraphSelectionEmitterAddCallback::$_0>,void ()(re::Slice<unsigned long long> const&)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

void *std::__function::__func<RERenderGraphSelectionEmitterAddCallback::$_0,std::allocator<RERenderGraphSelectionEmitterAddCallback::$_0>,void ()(re::Slice<unsigned long long> const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D2B598;
  result = _Block_copy(*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RERenderGraphSelectionEmitterAddCallback::$_0,std::allocator<RERenderGraphSelectionEmitterAddCallback::$_0>,void ()(re::Slice<unsigned long long> const&)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<RERenderGraphSelectionEmitterAddCallback::$_0,std::allocator<RERenderGraphSelectionEmitterAddCallback::$_0>,void ()(re::Slice<unsigned long long> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RERenderGraphSelectionEmitterAddConcludeCallback::$_0,std::allocator<RERenderGraphSelectionEmitterAddConcludeCallback::$_0>,void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

void *std::__function::__func<RERenderGraphSelectionEmitterAddConcludeCallback::$_0,std::allocator<RERenderGraphSelectionEmitterAddConcludeCallback::$_0>,void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D2B628;
  result = _Block_copy(*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<RERenderGraphSelectionEmitterAddConcludeCallback::$_0,std::allocator<RERenderGraphSelectionEmitterAddConcludeCallback::$_0>,void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<RERenderGraphSelectionEmitterAddConcludeCallback::$_0,std::allocator<RERenderGraphSelectionEmitterAddConcludeCallback::$_0>,void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t REStateParameterBlackboardAssetCreateAsset(re *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t *a8, uint64_t a9)
{
  v62 = a7;
  v96 = *MEMORY[0x1E69E9840];
  v14 = re::globalAllocators(a1);
  v15 = (*(*v14[2] + 32))(v14[2], 104, 8);
  *v15 = &unk_1F5CBE040;
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  *(v15 + 40) = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 72) = 0u;
  v63 = v15;
  *(v15 + 88) = 0u;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  if (a2)
  {
    v61 = a5;
    v16 = 0;
    v17 = &v66;
    v18 = (a3 + 8);
    v19 = 16;
    do
    {
      v20 = *(v18 - 1);
      v66 = 0;
      v67 = &str_67;
      v21 = *v18;
      v68 = 0;
      v69 = &str_67;
      v23 = v80;
      if (v80 <= v16)
      {
        v82 = 0;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v91 = 0u;
        v49 = MEMORY[0x1E69E9C10];
        v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v83 = 136315906;
        v84 = "operator[]";
        v85 = 1024;
        if (v50)
        {
          v51 = 3;
        }

        else
        {
          v51 = 2;
        }

        v86 = 468;
        v87 = 2048;
        v88 = v16;
        v89 = 2048;
        v90 = v23;
        _os_log_send_and_compose_impl(v51, &v82, &v91, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v83, 38, v61, v62);
        _os_crash_msg();
        __break(1u);
LABEL_53:
        v82 = 0;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v91 = 0u;
        v52 = MEMORY[0x1E69E9C10];
        v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v83 = 136315906;
        v84 = "operator[]";
        v85 = 1024;
        if (v53)
        {
          v54 = 3;
        }

        else
        {
          v54 = 2;
        }

        v86 = 468;
        v87 = 2048;
        v88 = v16;
        v89 = 2048;
        v90 = v17;
        _os_log_send_and_compose_impl(v54, &v82, &v91, 80, &dword_1E1C61000, v52, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v83, 38, v61, v62);
        _os_crash_msg();
        __break(1u);
LABEL_57:
        v82 = 0;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v91 = 0u;
        v55 = MEMORY[0x1E69E9C10];
        v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v83 = 136315906;
        v84 = "operator[]";
        v85 = 1024;
        if (v56)
        {
          v57 = 3;
        }

        else
        {
          v57 = 2;
        }

        v86 = 468;
        v87 = 2048;
        v88 = v17;
        v89 = 2048;
        v90 = v16;
        _os_log_send_and_compose_impl(v57, &v82, &v91, 80, &dword_1E1C61000, v55, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v83, 38, v61, v62);
        _os_crash_msg();
        __break(1u);
LABEL_61:
        v82 = 0;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v91 = 0u;
        v58 = MEMORY[0x1E69E9C10];
        v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v83 = 136315906;
        v84 = "operator[]";
        v85 = 1024;
        if (v59)
        {
          v60 = 3;
        }

        else
        {
          v60 = 2;
        }

        v86 = 468;
        v87 = 2048;
        v88 = v17;
        v89 = 2048;
        v90 = v16;
        _os_log_send_and_compose_impl(v60, &v82, &v91, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v83, 38, v61, v62);
        _os_crash_msg();
        __break(1u);
      }

      v24 = (v81 + v19);
      re::StringID::operator=((v81 + v19 - 16), &v66);
      v15 = re::StringID::operator=(v24, &v68);
      if (v68)
      {
        if (v68)
        {
        }
      }

      v68 = 0;
      v69 = &str_67;
      if (v66)
      {
        if (v66)
        {
        }
      }

      v16 = (v16 + 1);
      v19 += 32;
      v18 += 2;
    }

    while (a2 != v16);
    a2 = &v79;
    a5 = v61;
  }

  if (a4)
  {
    v16 = 0;
    v25 = (a5 + 8);
    v26 = 16;
    do
    {
      v27 = *(v25 - 1);
      v66 = 0;
      v67 = &str_67;
      v28 = *v25;
      v68 = 0;
      v69 = &str_67;
      v17 = v77;
      if (v77 <= v16)
      {
        goto LABEL_53;
      }

      v30 = (v78 + v26);
      re::StringID::operator=((v78 + v26 - 16), &v66);
      v15 = re::StringID::operator=(v30, &v68);
      if (v68)
      {
        if (v68)
        {
        }
      }

      v68 = 0;
      v69 = &str_67;
      if (v66)
      {
        if (v66)
        {
        }
      }

      v16 = (v16 + 1);
      v26 += 32;
      v25 += 2;
    }

    while (a4 != v16);
    a4 = &v76;
  }

  if (a6)
  {
    v17 = 0;
    v31 = (v62 + 8);
    v32 = 16;
    do
    {
      v33 = *(v31 - 1);
      v66 = 0;
      v67 = &str_67;
      v34 = *v31;
      v68 = 0;
      v69 = &str_67;
      v16 = v74;
      if (v74 <= v17)
      {
        goto LABEL_57;
      }

      v36 = (v75 + v32);
      re::StringID::operator=((v75 + v32 - 16), &v66);
      v15 = re::StringID::operator=(v36, &v68);
      if (v68)
      {
        if (v68)
        {
        }
      }

      v68 = 0;
      v69 = &str_67;
      if (v66)
      {
        if (v66)
        {
        }
      }

      v17 = (v17 + 1);
      v32 += 32;
      v31 += 2;
    }

    while (a6 != v17);
    a6 = &v73;
  }

  if (a8)
  {
    v17 = 0;
    v38 = (a9 + 8);
    v39 = 16;
    do
    {
      v40 = *(v38 - 1);
      v66 = 0;
      v67 = &str_67;
      v41 = *v38;
      v68 = 0;
      v69 = &str_67;
      v16 = v71;
      if (v71 <= v17)
      {
        goto LABEL_61;
      }

      v43 = (v72 + v39);
      re::StringID::operator=((v72 + v39 - 16), &v66);
      v37 = re::StringID::operator=(v43, &v68);
      if (v68)
      {
        if (v68)
        {
        }
      }

      v68 = 0;
      v69 = &str_67;
      if (v66)
      {
        if (v66)
        {
        }
      }

      v17 = (v17 + 1);
      v39 += 32;
      v38 += 2;
    }

    while (a8 != v17);
    v44 = &v70;
  }

  else
  {
    v44 = 0;
  }

  inited = re::StateParameterBlackboardAsset::initWithInitData(v63, a2, a4, a6, v44);
  re::StateParameterBlackboardAsset::assetType(inited);
  (*(*a1 + 424))(&v91);
  v46 = v91;
  if (v91)
  {
    v47 = (v91 + 8);
  }

  re::AssetHandle::~AssetHandle(&v91);
  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v70);
  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v73);
  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v76);
  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v79);
  return v46;
}

uint64_t RENetDiscoveryViewCreateWithCallbacks(void *a1)
{
  RESyncDiscoveryViewObserverCreate();
  if (a1[1])
  {
    RESyncDiscoveryViewObserverOnCreate();
  }

  if (a1[2])
  {
    RESyncDiscoveryViewObserverOnDestroy();
  }

  if (a1[3])
  {
    RESyncDiscoveryViewObserverOnGetIdentitiesCount();
  }

  if (a1[4])
  {
    RESyncDiscoveryViewObserverOnGetIdentityAtIndex();
  }

  if (a1[5])
  {
    RESyncDiscoveryViewObserverOnGetAuthData();
  }

  if (a1[6])
  {
    RESyncDiscoveryViewObserverOnRequestIdentity();
  }

  if (a1[7])
  {
    RESyncDiscoveryViewObserverOnCreateProtocolLayer();
  }

  v2 = RESyncDiscoveryViewCreateWithObserver();
  RESyncRelease();
  return v2;
}

void *__RENetDiscoveryViewCreateWithCallbacks_block_invoke_5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = 0;
  v7 = 0;
  v5 = 0;
  result = (*(*(a1 + 32) + 16))(&v5);
  *a2 = v5;
  v4 = v7;
  *(a2 + 8) = v6;
  *(a2 + 16) = v4;
  return result;
}

uint64_t RENetDiscoveryViewCreateWithCallbacksV2(void *a1)
{
  RESyncDiscoveryViewObserverCreate();
  if (a1[1])
  {
    RESyncDiscoveryViewObserverOnCreate();
  }

  if (a1[2])
  {
    RESyncDiscoveryViewObserverOnDestroy();
  }

  if (a1[3])
  {
    RESyncDiscoveryViewObserverOnGetIdentitiesCount();
  }

  if (a1[4])
  {
    RESyncDiscoveryViewObserverOnGetIdentityAtIndex();
  }

  if (a1[5])
  {
    RESyncDiscoveryViewObserverOnGetAuthData();
  }

  if (a1[6])
  {
    RESyncDiscoveryViewObserverOnRequestIdentity();
  }

  if (a1[7])
  {
    RESyncDiscoveryViewObserverOnCreateProtocolLayer();
  }

  v2 = RESyncDiscoveryViewCreateWithObserver();
  RESyncRelease();
  return v2;
}

void *__RENetDiscoveryViewCreateWithCallbacksV2_block_invoke_5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = 0;
  v7 = 0;
  v5 = 0;
  result = (*(*(a1 + 32) + 16))(&v5);
  *a2 = v5;
  v4 = v7;
  *(a2 + 8) = v6;
  *(a2 + 16) = v4;
  return result;
}

uint64_t RENetIdentityCreateWithCallbacks(void *a1)
{
  RESyncDiscoveryIdentityObserverCreate();
  if (a1[1])
  {
    RESyncDiscoveryIdentityObserverOnCreate();
  }

  if (a1[2])
  {
    RESyncDiscoveryIdentityObserverOnDestroy();
  }

  if (a1[3])
  {
    RESyncDiscoveryIdentityObserverOnGetDisplayName();
  }

  if (a1[4])
  {
    RESyncDiscoveryIdentityObserverOnGetAddress();
  }

  if (a1[5])
  {
    RESyncDiscoveryIdentityObserverOnIsLocal();
  }

  v2 = RESyncIdentityCreateWithObserver();
  RESyncRelease();
  return v2;
}

void RENetAuthDataInvalid(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t REMaterialParametersServiceCreateUnlitParameters(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, __n128 a6, float a7)
{
  v14 = a6;
  v15 = a4;
  re::AssetAPIHelper::assetHandleCreate(a5, v12);
  (*(*a1 + 24))(&v13, a1, a2, a3, &v14, v12, a7);
  re::AssetHandle::~AssetHandle(v12);
  return v13;
}

uint64_t REMaterialParametersServiceFindUnlitParametersByID(uint64_t a1)
{
  result = (*(*a1 + 32))(a1);
  if (result)
  {
    v2 = result;
    if (re::ecs2::EntityComponentCollection::get((result + 48), re::ecs2::ComponentImpl<re::ecs2::UnlitMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType))
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t REMaterialParametersServiceFindPbrParametersByID(uint64_t a1)
{
  result = (*(*a1 + 32))(a1);
  if (result)
  {
    v2 = result;
    if (re::ecs2::EntityComponentCollection::get((result + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType))
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t REMaterialParametersServiceGetParametersTypeForID(uint64_t a1)
{
  result = (*(*a1 + 32))(a1);
  if (result)
  {
    v2 = result;
    if (re::ecs2::EntityComponentCollection::get((result + 48), re::ecs2::ComponentImpl<re::ecs2::UnlitMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType))
    {
      return 1;
    }

    else
    {
      return 2 * (re::ecs2::EntityComponentCollection::get((v2 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) != 0);
    }
  }

  return result;
}

uint64_t REMeshDeformationDefinitionAssetBuilderCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 88, 8);
  ArcSharedObject::ArcSharedObject(v2, 0);
  *v2 = &unk_1F5D2B7B8;
  *(v2 + 80) = 0;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  return v2;
}

uint64_t REMeshDeformationDefinitionAssetBuilderCreateFromAsset(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v8);
  v2 = re::MeshDeformationAsset::assetType(v1);
  if (v9 && v2 == *(v9 + 280))
  {
    v5 = re::globalAllocators(v2);
    v4 = (*(*v5[2] + 32))(v5[2], 88, 8);
    v6 = re::AssetHandle::AssetHandle(v10, &v8);
    ArcSharedObject::ArcSharedObject(v4, 0);
    *v4 = &unk_1F5D2B7B8;
    *(v4 + 80) = 0;
    *(v4 + 40) = 0u;
    *(v4 + 24) = 0u;
    re::AssetHandle::AssetHandle(v11, v10);
    re::AssetHandle::AssetHandle(buf, v11);
    re::AssetHandle::operator=(v4 + 24, buf);
    re::AssetHandle::~AssetHandle(buf);
    re::AssetHandle::~AssetHandle(v11);
    re::AssetHandle::~AssetHandle(v10);
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
      LOWORD(buf[0]) = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Asset reference is not a valid Mesh Deformation Asset.", buf, 2u);
    }

    v4 = 0;
  }

  re::AssetHandle::~AssetHandle(&v8);
  return v4;
}

void REMeshDeformationDefinitionAssetBuilderAddFromMeshDeformationDefinition(uint64_t a1, uint64_t a2)
{
  v74 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a2, v59);
  v5 = re::AssetHandle::blockUntilLoaded<re::MeshDeformationAsset>(v59);
  if (v5)
  {
    v6 = v5;
    v10 = *(v6 + 16);
    if (v10)
    {
      v11 = v8;
      v12 = *(v8 + 2);
      v13 = v12 + 1;
      if (v12 + 1 <= v7)
      {
LABEL_36:
        v60 = 0;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v69 = 0u;
        v42 = MEMORY[0x1E69E9C10];
        v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v61 = 136315906;
        v62 = "copy";
        v63 = 1024;
        if (v43)
        {
          v44 = 3;
        }

        else
        {
          v44 = 2;
        }

        v64 = 643;
        v65 = 2048;
        v66 = v7;
        v67 = 2048;
        v68 = v13;
        _os_log_send_and_compose_impl(v44, &v60, &v69, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v52, v55);
        _os_crash_msg();
        __break(1u);
        goto LABEL_40;
      }

      v13 = v7 + v10;
      if (__CFADD__(v7, v10))
      {
LABEL_40:
        re::internal::assertLog(7, v9, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v12, v7, v10);
        _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", v48, v50, v53);
        __break(1u);
        goto LABEL_41;
      }

      v14 = *(v6 + 32);
      if (v12 >= v13)
      {
        v26 = *(v8 + 4) + 40 * v7;
        v27 = 40 * v10;
        do
        {
          re::DynamicArray<re::DeformationDefinition>::operator=(v26, v14);
          v14 += 5;
          v26 += 40;
          v27 -= 40;
        }

        while (v27);
      }

      else
      {
        re::DynamicArray<re::DeformationStackDefinition>::growCapacity(v8, v7 + v10);
        v15 = *(v11 + 2);
        v16 = *(v11 + 4);
        v17 = v7;
        v18 = v15 - v7;
        if (v15 != v7)
        {
          v56 = v15 - v7;
          v57 = *(v11 + 2);
          v19 = v16 + 40 * v7;
          v20 = 40 * v15 - 40 * v7;
          v21 = v14;
          do
          {
            re::DynamicArray<re::DeformationDefinition>::operator=(v19, v21);
            v21 += 5;
            v19 += 40;
            v20 -= 40;
          }

          while (v20);
          v16 = *(v11 + 4);
          v17 = *(v11 + 2);
          v18 = v56;
          v15 = v57;
        }

        if (v18 != v10)
        {
          v22 = &v14[5 * v18];
          v23 = v16 + 40 * v17;
          v24 = 40 * v10 + 40 * v7 - 40 * v15;
          do
          {
            v25 = re::DynamicArray<re::DeformationDefinition>::DynamicArray(v23, v22);
            v22 += 5;
            v23 = v25 + 40;
            v24 -= 40;
          }

          while (v24);
        }

        *(v11 + 2) = v13;
      }

      ++*(v11 + 6);
    }

    v3 = *(v6 + 56);
    if (v3)
    {
      v29 = v28;
      v30 = *(v28 + 7);
      v13 = v30 + 1;
      if (v30 + 1 <= v2)
      {
LABEL_41:
        v60 = 0;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v69 = 0u;
        v45 = MEMORY[0x1E69E9C10];
        v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v61 = 136315906;
        v62 = "copy";
        v63 = 1024;
        if (v46)
        {
          v47 = 3;
        }

        else
        {
          v47 = 2;
        }

        v64 = 643;
        v65 = 2048;
        v66 = v2;
        v67 = 2048;
        v68 = v13;
        _os_log_send_and_compose_impl(v47, &v60, &v69, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v52, v55);
        _os_crash_msg();
        __break(1u);
LABEL_45:
        re::internal::assertLog(7, v31, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v30, v2, v3);
        _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", v49, v51, v54);
        __break(1u);
      }

      v31 = v2 + v3;
      if (__CFADD__(v2, v3))
      {
        goto LABEL_45;
      }

      v32 = *(v6 + 72);
      if (v30 >= v31)
      {
        std::__copy_impl::operator()[abi:nn200100]<re::MeshDeformationIndex const*,re::MeshDeformationIndex const*,re::MeshDeformationIndex*>(*(v6 + 72), &v32[6 * v3], *(v28 + 9) + 48 * v2);
      }

      else
      {
        v58 = v2 + v3;
        re::DynamicArray<re::MeshDeformationIndex>::growCapacity((v28 + 40), v31);
        v10 = *(v29 + 7) - v2;
        v33 = &v32[6 * v10];
        std::__copy_impl::operator()[abi:nn200100]<re::MeshDeformationIndex const*,re::MeshDeformationIndex const*,re::MeshDeformationIndex*>(v32, v33, *(v29 + 9) + 48 * v2);
        if (v10 != v3)
        {
          v10 = 0;
          v34 = &v32[6 * v3];
          v3 = *(v29 + 9) + 48 * *(v29 + 7);
          do
          {
            v35 = v33 + v10;
            *(v3 + v10) = *(v33 + v10);
            re::StringID::StringID((v3 + v10 + 8), (v33 + v10 + 8));
            re::StringID::StringID((v3 + v10 + 24), (v33 + v10 + 24));
            *(v3 + v10 + 40) = *(v33 + v10 + 40);
            v10 += 48;
          }

          while (v35 + 48 != v34);
        }

        *(v29 + 7) = v58;
      }

      ++*(v29 + 16);
    }

    if (v2 < v36)
    {
      v13 = 48 * v2 + 40;
      while (1)
      {
        v38 = *(v37 + 7);
        if (v38 <= v2)
        {
          break;
        }

        *(*(v37 + 9) + v13) += v7;
        ++v2;
        v13 += 48;
        if (v36 == v2)
        {
          goto LABEL_31;
        }
      }

      v60 = 0;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v69 = 0u;
      v39 = MEMORY[0x1E69E9C10];
      v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v61 = 136315906;
      v62 = "operator[]";
      v63 = 1024;
      if (v40)
      {
        v41 = 3;
      }

      else
      {
        v41 = 2;
      }

      v64 = 789;
      v65 = 2048;
      v66 = v2;
      v67 = 2048;
      v68 = v38;
      _os_log_send_and_compose_impl(v41, &v60, &v69, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v52, v55);
      _os_crash_msg();
      __break(1u);
      goto LABEL_36;
    }
  }

LABEL_31:
  re::AssetHandle::~AssetHandle(v59);
}

uint64_t re::AssetHandle::blockUntilLoaded<re::MeshDeformationAsset>(re::MeshDeformationAsset *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = re::MeshDeformationAsset::assetType(a1);
  v3 = re::AssetHandle::assetWithType(a1, v2, 0);
  if (!v3)
  {
    v4 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = v4;
      v7 = re::AssetHandle::assetInfo(a1);
      if (v7[17])
      {
        v8 = v7[18];
      }

      else
      {
        v8 = v7 + 137;
      }

      v9 = 136315138;
      v10 = v8;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", &v9, 0xCu);
    }
  }

  return v3;
}

re *anonymous namespace::MutableAssetRef<re::MeshDeformationAsset>::get(re::MeshDeformationAsset *a1)
{
  v16[4] = *MEMORY[0x1E69E9840];
  v3 = (a1 + 24);
  result = *(a1 + 3);
  if (result)
  {
    return result;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    v5 = atomic_load((v4 + 896));
    if (v5 == 2)
    {
      goto LABEL_7;
    }

    v6 = *(a1 + 1);
  }

  else
  {
    v6 = 0;
  }

  re::AssetHandle::loadNow(v6, 0);
LABEL_7:
  result = re::AssetHandle::blockUntilLoaded<re::MeshDeformationAsset>(a1);
  if (result)
  {
    v7 = result;
    v8 = re::globalAllocators(result);
    v9 = (*(*v8[2] + 32))(v8[2], 80, 8);
    v10 = v9;
    *(v9 + 32) = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    *v9 = 0;
    *(v9 + 24) = 0;
    if (*v7)
    {
      v11 = *(v7 + 2);
      *v9 = *v7;
      re::DynamicArray<re::DeformationStackDefinition>::setCapacity(v9, v11);
      ++*(v10 + 24);
      re::DynamicArray<re::DeformationStackDefinition>::copy(v10, v7);
    }

    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    v12 = *(v7 + 5);
    *(v10 + 72) = 0;
    if (v12)
    {
      v13 = *(v7 + 7);
      *(v10 + 40) = v12;
      re::DynamicArray<re::MeshDeformationIndex>::setCapacity((v10 + 40), v13);
      ++*(v10 + 64);
      re::DynamicArray<re::MeshDeformationIndex>::copy((v10 + 40), v7 + 40);
    }

    v14[0] = &unk_1F5D2B738;
    v14[3] = v14;
    v15 = v10;
    v16[3] = v16;
    v16[0] = &unk_1F5D2B738;
    std::unique_ptr<re::MeshDeformationAsset,std::function<void ()(re::MeshDeformationAsset*)>>::operator=[abi:nn200100](v3, &v15);
    std::unique_ptr<re::MeshDeformationAsset,std::function<void ()(re::MeshDeformationAsset*)>>::~unique_ptr[abi:nn200100](&v15);
    std::__function::__value_func<void ()(re::MeshDeformationAsset *)>::~__value_func[abi:nn200100](v14);
    if (*a1)
    {

      *a1 = 0;
    }

    *(a1 + 1) = 0;
    return *(a1 + 3);
  }

  return result;
}

void REMeshDeformationDefinitionAssetBuilderAddDefaultDeformationStacksForMesh(uint64_t a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, v6);
  v3 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>(v6);
  if (v3)
  {
    v4 = v3;
    re::MeshDeformationAsset::addDefaultModelStackDefinitionsForAllInstances(v5, v4);
  }

  re::AssetHandle::~AssetHandle(v6);
}

uint64_t REMeshDeformationDefinitionAssetBuilderAddDefaultDeformationStacksForMeshModel(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a2, v12);
  v5 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>(v12);
  if (!v5)
  {
LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v6 = v5;
  v7 = 32;
  if (*(v5 + 1264))
  {
    v7 = 608;
  }

  if (*(v5 + v7) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v14 = a3;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Invalid mesh model index: %zu", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v9 = re::MeshDeformationAsset::addDefaultModelStackDefinitionForModel(v8, v6, a3);
LABEL_12:
  re::AssetHandle::~AssetHandle(v12);
  return v9;
}

uint64_t REMeshDeformationDefinitionAssetBuilderAddDefaultDeformationStacksForMeshInstance(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a2, v12);
  v5 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>(v12);
  if (!v5)
  {
LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v6 = v5;
  v7 = 72;
  if (*(v5 + 1264))
  {
    v7 = 568;
  }

  if (*(v5 + v7) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v14 = a3;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Invalid mesh instance index: %zu", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v9 = re::MeshDeformationAsset::addDefaultModelStackDefinitionForInstance(v8, v6, a3);
LABEL_12:
  re::AssetHandle::~AssetHandle(v12);
  return v9;
}

uint64_t anonymous namespace::MutableAssetRef<re::MeshDeformationAsset>::get(re::MeshDeformationAsset *a1)
{
  result = *(a1 + 3);
  if (result)
  {
    return result;
  }

  v3 = *(a1 + 1);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v4 = atomic_load((v3 + 896));
  if (v4 != 2)
  {
    v5 = *(a1 + 1);
LABEL_6:
    re::AssetHandle::loadNow(v5, 0);
  }

  return re::AssetHandle::blockUntilLoaded<re::MeshDeformationAsset>(a1);
}

uint64_t REMeshDeformationDefinitionAssetBuilderAddDeformationStack(uint64_t a1)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  re::DynamicArray<re::DeformationStackDefinition>::add(v2, v4);
  re::DynamicArray<re::DeformationDefinition>::deinit(v4);
}

uint64_t REMeshDeformationDefinitionAssetBuilderGetDeformationStackDeformerCount(uint64_t a1, unint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  {
    v5 = *(v4 + 16);
    if (v5 > a2)
    {
      return *(*(v4 + 32) + 40 * a2 + 16);
    }

    v11 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    *buf = 0u;
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

    v15 = 797;
    v16 = 2048;
    v17 = a2;
    v18 = 2048;
    v19 = v5;
    _os_log_send_and_compose_impl(v9, &v11, buf, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_12:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v7 = CoreRELog::log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
  }

  return 0;
}

CFTypeRef REMeshDeformationDefinitionAssetBuilderDeformationStackGetDeformerName(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_8:
      v11 = CoreRELog::log;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      return 0;
    }

LABEL_21:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_8;
  }

  v7 = *(v6 + 16);
  if (v7 <= a2)
  {
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    *buf = 0u;
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

    v20 = 797;
    v21 = 2048;
    v22 = a2;
    v23 = 2048;
    v24 = v7;
    _os_log_send_and_compose_impl(v14, &v16, buf, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
    _os_crash_msg();
    __break(1u);
    goto LABEL_21;
  }

  v8 = *(v6 + 32) + 40 * a2;
  if (*(v8 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v12 = CoreRELog::log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = a3;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Invalid deformer index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v9 = CFStringCreateWithCString(0, *(*(v8 + 32) + 40 * a3 + 8), 0x8000100u);

  return CFAutorelease(v9);
}

uint64_t REMeshDeformationDefinitionAssetBuilderDeformationStackRemoveDeformer(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_6:
      v10 = CoreRELog::log;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      return 0;
    }

LABEL_19:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_6;
  }

  v7 = *(v6 + 2);
  if (v7 <= a2)
  {
    v15 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    *buf = 0u;
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
    _os_log_send_and_compose_impl(v13, &v15, buf, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v8 = *(v6 + 4) + 40 * a2;
  if (*(v8 + 16) > a3)
  {
    re::DynamicArray<re::DeformationDefinition>::removeStableAt(v8, a3);
    return 1;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v11 = CoreRELog::log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = a3;
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Invalid deformer index: %zu", buf, 0xCu);
  }

  return 0;
}

uint64_t REMeshDeformationDefinitionAssetBuilderDeformationStackMoveDeformer(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_14:
      v15 = CoreRELog::log;
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
LABEL_19:

        return 0;
      }

      *buf = 134217984;
      *&buf[4] = a2;
      v16 = "Invalid deformation stack index: %zu";
LABEL_27:
      _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);
      goto LABEL_19;
    }

LABEL_32:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_14;
  }

  v9 = *(v8 + 2);
  if (v9 <= a2)
  {
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    *buf = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v9;
    _os_log_send_and_compose_impl(v19, &v21, buf, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_32;
  }

  v10 = (*(v8 + 4) + 40 * a2);
  v11 = *(v10 + 2);
  if (v11 <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v16 = "Invalid deformer index: %zu";
    goto LABEL_27;
  }

  if (v11 <= a4)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v17 = CoreRELog::log;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = a4;
      _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Invalid new deformer index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v12 = (*(v10 + 4) + 40 * a3);
  *buf = *v12;
  *&buf[8] = v12[1];
  *v12 = 0;
  v12[1] = &str_67;
  *&v31 = v12[2];
  v12[2] = 0;
  *(&v31 + 1) = v12[3];
  v12[3] = 0;
  *&v32 = v12[4];
  v12[4] = 0;
  re::DynamicArray<re::DeformationDefinition>::removeStableAt(v10, a3);
  re::DynamicArray<re::DeformationDefinition>::insert(v10, a4, buf);
  v13 = v31;
  if (v31)
  {
    if (*(&v31 + 1))
    {
      v13 = (*(*v31 + 40))();
      *(&v31 + 1) = 0;
      *&v32 = 0;
    }

    *&v31 = 0;
  }

  if (buf[0])
  {
    if (buf[0])
    {
    }
  }

  return 1;
}

uint64_t REMeshDeformationDefinitionAssetBuilderDeformationStackAddBlendShape(uint64_t a1, unint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  {
    v5 = *(v4 + 2);
    if (v5 > a2)
    {
      v6 = (*(v4 + 4) + 40 * a2);
      memset(v17, 0, 24);
      v7 = *&v17[16];
      *(*&v17[16] + 4) = 0;
      *v7 = 0;
      *buf = 0x1954B86F1FEF5A4;
      *&buf[8] = "Blend Shape";
      v21 = *v17;
      v8 = *&v17[16];
      memset(v17, 0, 24);
      *&v22 = v8;
      re::DynamicArray<re::DeformationDefinition>::add(v6, buf);
      v9 = v21;
      if (v21)
      {
        if (*(&v21 + 1))
        {
          v9 = (*(*v21 + 40))();
          *(&v21 + 1) = 0;
          *&v22 = 0;
        }

        *&v21 = 0;
      }

      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      v10 = *(v6 + 2) - 1;
      if (*v17 && *&v17[8])
      {
        (*(**v17 + 40))();
      }

      return v10;
    }

    v16 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    *buf = 0u;
    v13 = MEMORY[0x1E69E9C10];
    *v17 = 136315906;
    *&v17[4] = "operator[]";
    *&v17[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    *&v17[14] = 789;
    *&v17[18] = 2048;
    *&v17[20] = a2;
    v18 = 2048;
    v19 = v5;
    _os_log_send_and_compose_impl(v14, &v16, buf, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v17, 38, v15);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_22:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v11 = CoreRELog::log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
  }

  return -1;
}

BOOL REMeshDeformationDefinitionAssetBuilderDeformerIsBlendShape(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_8:
      v12 = CoreRELog::log;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      return 0;
    }

LABEL_22:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_8;
  }

  v7 = *(v6 + 16);
  if (v7 <= a2)
  {
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    *buf = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v21 = 797;
    v22 = 2048;
    v23 = a2;
    v24 = 2048;
    v25 = v7;
    _os_log_send_and_compose_impl(v15, &v17, buf, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  v8 = *(v6 + 32) + 40 * a2;
  if (*(v8 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = a3;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Invalid deformer index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v9 = (*(v8 + 32) + 40 * a3);
  if (*v9 >> 1 != 0xCAA5C378FF7AD2)
  {
    return 0;
  }

  v10 = v9[1];
  return v10 == "Blend Shape" || strcmp(v10, "Blend Shape") == 0;
}

uint64_t REMeshDeformationDefinitionAssetBuilderBlendShapeGetForceCPU(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_12:
      v13 = CoreRELog::log;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      goto LABEL_19;
    }

LABEL_33:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_12;
  }

  v7 = *(v6 + 16);
  if (v7 <= a2)
  {
    v19 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    *buf = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v20 = 136315906;
    v21 = "operator[]";
    v22 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v23 = 797;
    v24 = 2048;
    v25 = a2;
    v26 = 2048;
    v27 = v7;
    _os_log_send_and_compose_impl(v17, &v19, buf, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
    _os_crash_msg();
    __break(1u);
    goto LABEL_33;
  }

  v8 = *(v6 + 32) + 40 * a2;
  if (*(v8 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v11 = CoreRELog::log;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v12 = "Invalid deformer index: %zu";
  }

  else
  {
    v9 = *(v8 + 32) + 40 * a3;
    if (*v9 >> 1 == 0xCAA5C378FF7AD2 && ((v10 = *(v9 + 8), v10 == "Blend Shape") || !strcmp(v10, "Blend Shape")))
    {
      if (*(v9 + 24) == 5)
      {
        v14 = **(v9 + 32);
        return v14 & 1;
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v11 = CoreRELog::log;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 134217984;
      *&buf[4] = a3;
      v12 = "Unexpected blend shape deformation option size for deformer index: %zu";
    }

    else
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v11 = CoreRELog::log;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 134217984;
      *&buf[4] = a3;
      v12 = "Not a blend shape deformer index: %zu";
    }
  }

  _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
LABEL_18:

LABEL_19:
  v14 = 0;
  return v14 & 1;
}

uint64_t REMeshDeformationDefinitionAssetBuilderBlendShapeSetForceCPU(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  v34 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_12:
      v15 = CoreRELog::log;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      return 0;
    }

LABEL_32:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_12;
  }

  v9 = *(v8 + 2);
  if (v9 <= a2)
  {
    v20 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *buf = 0u;
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

    v24 = 789;
    v25 = 2048;
    v26 = a2;
    v27 = 2048;
    v28 = v9;
    _os_log_send_and_compose_impl(v18, &v20, buf, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
    goto LABEL_32;
  }

  v10 = *(v8 + 4) + 40 * a2;
  if (*(v10 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v14 = "Invalid deformer index: %zu";
    goto LABEL_27;
  }

  v11 = *(v10 + 32) + 40 * a3;
  if (*v11 >> 1 != 0xCAA5C378FF7AD2 || (v12 = *(v11 + 8), v12 != "Blend Shape") && strcmp(v12, "Blend Shape"))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v14 = "Not a blend shape deformer index: %zu";
LABEL_27:
    _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);
LABEL_18:

    return 0;
  }

  if (*(v11 + 24) != 5)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v14 = "Unexpected blend shape deformation option size for deformer index: %zu";
    goto LABEL_27;
  }

  **(v11 + 32) = a4;
  return 1;
}

uint64_t REMeshDeformationDefinitionAssetBuilderDeformationStackAddSkinning(uint64_t a1, unint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  {
    v5 = *(v4 + 2);
    if (v5 > a2)
    {
      v6 = (*(v4 + 4) + 40 * a2);
      memset(v16, 0, 24);
      **&v16[16] = 0;
      *buf = 0x4550755B7A2;
      *&buf[8] = "Skinning";
      v20 = *v16;
      v7 = *&v16[16];
      memset(v16, 0, 24);
      *&v21 = v7;
      re::DynamicArray<re::DeformationDefinition>::add(v6, buf);
      v8 = v20;
      if (v20)
      {
        if (*(&v20 + 1))
        {
          v8 = (*(*v20 + 40))();
          *(&v20 + 1) = 0;
          *&v21 = 0;
        }

        *&v20 = 0;
      }

      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      v9 = *(v6 + 2) - 1;
      if (*v16 && *&v16[8])
      {
        (*(**v16 + 40))();
      }

      return v9;
    }

    v15 = 0;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    *buf = 0u;
    v12 = MEMORY[0x1E69E9C10];
    *v16 = 136315906;
    *&v16[4] = "operator[]";
    *&v16[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    *&v16[14] = 789;
    *&v16[18] = 2048;
    *&v16[20] = a2;
    v17 = 2048;
    v18 = v5;
    _os_log_send_and_compose_impl(v13, &v15, buf, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v16, 38, v14);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_22:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v10 = CoreRELog::log;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
  }

  return -1;
}

BOOL REMeshDeformationDefinitionAssetBuilderDeformerIsSkinning(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_8:
      v12 = CoreRELog::log;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      return 0;
    }

LABEL_22:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_8;
  }

  v7 = *(v6 + 16);
  if (v7 <= a2)
  {
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    *buf = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v21 = 797;
    v22 = 2048;
    v23 = a2;
    v24 = 2048;
    v25 = v7;
    _os_log_send_and_compose_impl(v15, &v17, buf, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  v8 = *(v6 + 32) + 40 * a2;
  if (*(v8 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = a3;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Invalid deformer index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v9 = (*(v8 + 32) + 40 * a3);
  if (*v9 >> 1 != 0x22A83AADBD1)
  {
    return 0;
  }

  v10 = v9[1];
  return v10 == "Skinning" || strcmp(v10, "Skinning") == 0;
}

uint64_t REMeshDeformationDefinitionAssetBuilderSkinningGetForceCPU(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_12:
      v13 = CoreRELog::log;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      goto LABEL_19;
    }

LABEL_33:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_12;
  }

  v7 = *(v6 + 16);
  if (v7 <= a2)
  {
    v19 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    *buf = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v20 = 136315906;
    v21 = "operator[]";
    v22 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v23 = 797;
    v24 = 2048;
    v25 = a2;
    v26 = 2048;
    v27 = v7;
    _os_log_send_and_compose_impl(v17, &v19, buf, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
    _os_crash_msg();
    __break(1u);
    goto LABEL_33;
  }

  v8 = *(v6 + 32) + 40 * a2;
  if (*(v8 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v11 = CoreRELog::log;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v12 = "Invalid deformer index: %zu";
  }

  else
  {
    v9 = *(v8 + 32) + 40 * a3;
    if (*v9 >> 1 == 0x22A83AADBD1 && ((v10 = *(v9 + 8), v10 == "Skinning") || !strcmp(v10, "Skinning")))
    {
      if (*(v9 + 24) == 2)
      {
        v14 = **(v9 + 32);
        return v14 & 1;
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v11 = CoreRELog::log;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 134217984;
      *&buf[4] = a3;
      v12 = "Unexpected skinning deformation option size for deformer index: %zu";
    }

    else
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v11 = CoreRELog::log;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 134217984;
      *&buf[4] = a3;
      v12 = "Not a skinning deformer index: %zu";
    }
  }

  _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
LABEL_18:

LABEL_19:
  v14 = 0;
  return v14 & 1;
}

uint64_t REMeshDeformationDefinitionAssetBuilderSkinningSetForceCPU(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  v34 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_12:
      v15 = CoreRELog::log;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      return 0;
    }

LABEL_32:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_12;
  }

  v9 = *(v8 + 2);
  if (v9 <= a2)
  {
    v20 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *buf = 0u;
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

    v24 = 789;
    v25 = 2048;
    v26 = a2;
    v27 = 2048;
    v28 = v9;
    _os_log_send_and_compose_impl(v18, &v20, buf, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
    goto LABEL_32;
  }

  v10 = *(v8 + 4) + 40 * a2;
  if (*(v10 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v14 = "Invalid deformer index: %zu";
    goto LABEL_27;
  }

  v11 = *(v10 + 32) + 40 * a3;
  if (*v11 >> 1 != 0x22A83AADBD1 || (v12 = *(v11 + 8), v12 != "Skinning") && strcmp(v12, "Skinning"))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v14 = "Not a skinning deformer index: %zu";
LABEL_27:
    _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);
LABEL_18:

    return 0;
  }

  if (*(v11 + 24) != 2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v14 = "Unexpected skinning deformation option size for deformer index: %zu";
    goto LABEL_27;
  }

  **(v11 + 32) = a4;
  return 1;
}

uint64_t REMeshDeformationDefinitionAssetBuilderSkinningGetEnableSkinningVertexFrame(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_12:
      v13 = CoreRELog::log;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      goto LABEL_19;
    }

LABEL_33:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_12;
  }

  v7 = *(v6 + 16);
  if (v7 <= a2)
  {
    v19 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    *buf = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v20 = 136315906;
    v21 = "operator[]";
    v22 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v23 = 797;
    v24 = 2048;
    v25 = a2;
    v26 = 2048;
    v27 = v7;
    _os_log_send_and_compose_impl(v17, &v19, buf, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
    _os_crash_msg();
    __break(1u);
    goto LABEL_33;
  }

  v8 = *(v6 + 32) + 40 * a2;
  if (*(v8 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v11 = CoreRELog::log;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v12 = "Invalid deformer index: %zu";
  }

  else
  {
    v9 = (*(v8 + 32) + 40 * a3);
    if (*v9 >> 1 == 0x22A83AADBD1 && ((v10 = v9[1], v10 == "Skinning") || !strcmp(v10, "Skinning")))
    {
      if (v9[3] == 2)
      {
        v14 = *(v9[4] + 1);
        return v14 & 1;
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v11 = CoreRELog::log;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 134217984;
      *&buf[4] = a3;
      v12 = "Unexpected skinning deformation option size for deformer index: %zu";
    }

    else
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v11 = CoreRELog::log;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 134217984;
      *&buf[4] = a3;
      v12 = "Not a skinning deformer index: %zu";
    }
  }

  _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
LABEL_18:

LABEL_19:
  v14 = 0;
  return v14 & 1;
}

uint64_t REMeshDeformationDefinitionAssetBuilderSkinningSetEnableSkinningVertexFrame(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  v34 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_12:
      v15 = CoreRELog::log;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      return 0;
    }

LABEL_32:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_12;
  }

  v9 = *(v8 + 2);
  if (v9 <= a2)
  {
    v20 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *buf = 0u;
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

    v24 = 789;
    v25 = 2048;
    v26 = a2;
    v27 = 2048;
    v28 = v9;
    _os_log_send_and_compose_impl(v18, &v20, buf, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
    goto LABEL_32;
  }

  v10 = *(v8 + 4) + 40 * a2;
  if (*(v10 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v14 = "Invalid deformer index: %zu";
    goto LABEL_27;
  }

  v11 = (*(v10 + 32) + 40 * a3);
  if (*v11 >> 1 != 0x22A83AADBD1 || (v12 = v11[1], v12 != "Skinning") && strcmp(v12, "Skinning"))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v14 = "Not a skinning deformer index: %zu";
LABEL_27:
    _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);
LABEL_18:

    return 0;
  }

  if (v11[3] != 2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v14 = "Unexpected skinning deformation option size for deformer index: %zu";
    goto LABEL_27;
  }

  *(v11[4] + 1) = a4;
  return 1;
}

uint64_t REMeshDeformationDefinitionAssetBuilderDeformationStackAddRenormalization(uint64_t a1, unint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  {
    v5 = *(v4 + 2);
    if (v5 > a2)
    {
      v6 = (*(v4 + 4) + 40 * a2);
      memset(v16, 0, 24);
      **&v16[16] = 0;
      *buf = 0xABCEC87F22A13454;
      *&buf[8] = "Renormalization";
      v20 = *v16;
      v7 = *&v16[16];
      memset(v16, 0, 24);
      *&v21 = v7;
      re::DynamicArray<re::DeformationDefinition>::add(v6, buf);
      v8 = v20;
      if (v20)
      {
        if (*(&v20 + 1))
        {
          v8 = (*(*v20 + 40))();
          *(&v20 + 1) = 0;
          *&v21 = 0;
        }

        *&v20 = 0;
      }

      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      v9 = *(v6 + 2) - 1;
      if (*v16 && *&v16[8])
      {
        (*(**v16 + 40))();
      }

      return v9;
    }

    v15 = 0;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    *buf = 0u;
    v12 = MEMORY[0x1E69E9C10];
    *v16 = 136315906;
    *&v16[4] = "operator[]";
    *&v16[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    *&v16[14] = 789;
    *&v16[18] = 2048;
    *&v16[20] = a2;
    v17 = 2048;
    v18 = v5;
    _os_log_send_and_compose_impl(v13, &v15, buf, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v16, 38, v14);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_22:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v10 = CoreRELog::log;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
  }

  return -1;
}

BOOL REMeshDeformationDefinitionAssetBuilderDeformerIsRenormalization(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_8:
      v12 = CoreRELog::log;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      return 0;
    }

LABEL_22:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_8;
  }

  v7 = *(v6 + 16);
  if (v7 <= a2)
  {
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    *buf = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v21 = 797;
    v22 = 2048;
    v23 = a2;
    v24 = 2048;
    v25 = v7;
    _os_log_send_and_compose_impl(v15, &v17, buf, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  v8 = *(v6 + 32) + 40 * a2;
  if (*(v8 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = a3;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Invalid deformer index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v9 = (*(v8 + 32) + 40 * a3);
  if (*v9 >> 1 != 0x55E7643F91509A2ALL)
  {
    return 0;
  }

  v10 = v9[1];
  return v10 == "Renormalization" || strcmp(v10, "Renormalization") == 0;
}

uint64_t REMeshDeformationDefinitionAssetBuilderRenormalizationGetForceCPU(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_12:
      v13 = CoreRELog::log;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      goto LABEL_19;
    }

LABEL_33:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_12;
  }

  v7 = *(v6 + 16);
  if (v7 <= a2)
  {
    v19 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    *buf = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v20 = 136315906;
    v21 = "operator[]";
    v22 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v23 = 797;
    v24 = 2048;
    v25 = a2;
    v26 = 2048;
    v27 = v7;
    _os_log_send_and_compose_impl(v17, &v19, buf, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
    _os_crash_msg();
    __break(1u);
    goto LABEL_33;
  }

  v8 = *(v6 + 32) + 40 * a2;
  if (*(v8 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v11 = CoreRELog::log;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v12 = "Invalid deformer index: %zu";
  }

  else
  {
    v9 = *(v8 + 32) + 40 * a3;
    if (*v9 >> 1 == 0x55E7643F91509A2ALL && ((v10 = *(v9 + 8), v10 == "Renormalization") || !strcmp(v10, "Renormalization")))
    {
      if (*(v9 + 24) == 1)
      {
        v14 = **(v9 + 32);
        return v14 & 1;
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v11 = CoreRELog::log;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 134217984;
      *&buf[4] = a3;
      v12 = "Unexpected renormalization deformation option size for deformer index: %zu";
    }

    else
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v11 = CoreRELog::log;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 134217984;
      *&buf[4] = a3;
      v12 = "Not a renormalization deformer index: %zu";
    }
  }

  _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
LABEL_18:

LABEL_19:
  v14 = 0;
  return v14 & 1;
}

uint64_t REMeshDeformationDefinitionAssetBuilderRenormalizationSetForceCPU(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  v34 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_12:
      v15 = CoreRELog::log;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      return 0;
    }

LABEL_32:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_12;
  }

  v9 = *(v8 + 2);
  if (v9 <= a2)
  {
    v20 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *buf = 0u;
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

    v24 = 789;
    v25 = 2048;
    v26 = a2;
    v27 = 2048;
    v28 = v9;
    _os_log_send_and_compose_impl(v18, &v20, buf, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
    goto LABEL_32;
  }

  v10 = *(v8 + 4) + 40 * a2;
  if (*(v10 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v14 = "Invalid deformer index: %zu";
    goto LABEL_27;
  }

  v11 = *(v10 + 32) + 40 * a3;
  if (*v11 >> 1 != 0x55E7643F91509A2ALL || (v12 = *(v11 + 8), v12 != "Renormalization") && strcmp(v12, "Renormalization"))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v14 = "Not a renormalization deformer index: %zu";
LABEL_27:
    _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);
LABEL_18:

    return 0;
  }

  if (*(v11 + 24) != 1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v14 = "Unexpected renormalization deformation option size for deformer index: %zu";
    goto LABEL_27;
  }

  **(v11 + 32) = a4;
  return 1;
}

uint64_t REMeshDeformationDefinitionAssetBuilderDeformationStackAddTension(uint64_t a1, unint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  {
    v5 = *(v4 + 2);
    if (v5 > a2)
    {
      v6 = (*(v4 + 4) + 40 * a2);
      memset(v16, 0, 24);
      **&v16[16] = 0;
      *buf = 0x241C51C064;
      *&buf[8] = "Tension";
      v20 = *v16;
      v7 = *&v16[16];
      memset(v16, 0, 24);
      *&v21 = v7;
      re::DynamicArray<re::DeformationDefinition>::add(v6, buf);
      v8 = v20;
      if (v20)
      {
        if (*(&v20 + 1))
        {
          v8 = (*(*v20 + 40))();
          *(&v20 + 1) = 0;
          *&v21 = 0;
        }

        *&v20 = 0;
      }

      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      v9 = *(v6 + 2) - 1;
      if (*v16 && *&v16[8])
      {
        (*(**v16 + 40))();
      }

      return v9;
    }

    v15 = 0;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    *buf = 0u;
    v12 = MEMORY[0x1E69E9C10];
    *v16 = 136315906;
    *&v16[4] = "operator[]";
    *&v16[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    *&v16[14] = 789;
    *&v16[18] = 2048;
    *&v16[20] = a2;
    v17 = 2048;
    v18 = v5;
    _os_log_send_and_compose_impl(v13, &v15, buf, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v16, 38, v14);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_22:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v10 = CoreRELog::log;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
  }

  return -1;
}

BOOL REMeshDeformationDefinitionAssetBuilderDeformerIsTension(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_8:
      v12 = CoreRELog::log;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      return 0;
    }

LABEL_22:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_8;
  }

  v7 = *(v6 + 16);
  if (v7 <= a2)
  {
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    *buf = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v21 = 797;
    v22 = 2048;
    v23 = a2;
    v24 = 2048;
    v25 = v7;
    _os_log_send_and_compose_impl(v15, &v17, buf, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  v8 = *(v6 + 32) + 40 * a2;
  if (*(v8 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = a3;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Invalid deformer index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v9 = (*(v8 + 32) + 40 * a3);
  if (*v9 >> 1 != 0x120E28E032)
  {
    return 0;
  }

  v10 = v9[1];
  return v10 == "Tension" || strcmp(v10, "Tension") == 0;
}

uint64_t REMeshDeformationDefinitionAssetBuilderTensionGetForceCPU(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_12:
      v13 = CoreRELog::log;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      goto LABEL_19;
    }

LABEL_33:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_12;
  }

  v7 = *(v6 + 16);
  if (v7 <= a2)
  {
    v19 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    *buf = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v20 = 136315906;
    v21 = "operator[]";
    v22 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v23 = 797;
    v24 = 2048;
    v25 = a2;
    v26 = 2048;
    v27 = v7;
    _os_log_send_and_compose_impl(v17, &v19, buf, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
    _os_crash_msg();
    __break(1u);
    goto LABEL_33;
  }

  v8 = *(v6 + 32) + 40 * a2;
  if (*(v8 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v11 = CoreRELog::log;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v12 = "Invalid deformer index: %zu";
  }

  else
  {
    v9 = *(v8 + 32) + 40 * a3;
    if (*v9 >> 1 == 0x120E28E032 && ((v10 = *(v9 + 8), v10 == "Tension") || !strcmp(v10, "Tension")))
    {
      if (*(v9 + 24) == 1)
      {
        v14 = **(v9 + 32);
        return v14 & 1;
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v11 = CoreRELog::log;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 134217984;
      *&buf[4] = a3;
      v12 = "Unexpected tension deformer options size for deformer index: %zu";
    }

    else
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v11 = CoreRELog::log;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 134217984;
      *&buf[4] = a3;
      v12 = "Not a tension deformer index: %zu";
    }
  }

  _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
LABEL_18:

LABEL_19:
  v14 = 0;
  return v14 & 1;
}

uint64_t REMeshDeformationDefinitionAssetBuilderTensionSetForceCPU(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  v34 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_12:
      v15 = CoreRELog::log;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      return 0;
    }

LABEL_32:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_12;
  }

  v9 = *(v8 + 2);
  if (v9 <= a2)
  {
    v20 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *buf = 0u;
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

    v24 = 789;
    v25 = 2048;
    v26 = a2;
    v27 = 2048;
    v28 = v9;
    _os_log_send_and_compose_impl(v18, &v20, buf, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
    goto LABEL_32;
  }

  v10 = *(v8 + 4) + 40 * a2;
  if (*(v10 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v14 = "Invalid deformer index: %zu";
    goto LABEL_27;
  }

  v11 = *(v10 + 32) + 40 * a3;
  if (*v11 >> 1 != 0x120E28E032 || (v12 = *(v11 + 8), v12 != "Tension") && strcmp(v12, "Tension"))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v14 = "Not a tension deformer index: %zu";
LABEL_27:
    _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);
LABEL_18:

    return 0;
  }

  if (*(v11 + 24) != 1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v14 = "Unexpected tension deformer options size for deformer index: %zu";
    goto LABEL_27;
  }

  **(v11 + 32) = a4;
  return 1;
}

uint64_t REMeshDeformationDefinitionAssetBuilderDeformationStackAddOffsets(uint64_t a1, unint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  {
    v5 = *(v4 + 2);
    if (v5 > a2)
    {
      v6 = (*(v4 + 4) + 40 * a2);
      memset(v16, 0, 24);
      **&v16[16] = 0;
      *buf = 0x70EBDC9CD6B5D4E4;
      *&buf[8] = "OffsetsDeformer";
      v20 = *v16;
      v7 = *&v16[16];
      memset(v16, 0, 24);
      *&v21 = v7;
      re::DynamicArray<re::DeformationDefinition>::add(v6, buf);
      v8 = v20;
      if (v20)
      {
        if (*(&v20 + 1))
        {
          v8 = (*(*v20 + 40))();
          *(&v20 + 1) = 0;
          *&v21 = 0;
        }

        *&v20 = 0;
      }

      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      v9 = *(v6 + 2) - 1;
      if (*v16 && *&v16[8])
      {
        (*(**v16 + 40))();
      }

      return v9;
    }

    v15 = 0;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    *buf = 0u;
    v12 = MEMORY[0x1E69E9C10];
    *v16 = 136315906;
    *&v16[4] = "operator[]";
    *&v16[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    *&v16[14] = 789;
    *&v16[18] = 2048;
    *&v16[20] = a2;
    v17 = 2048;
    v18 = v5;
    _os_log_send_and_compose_impl(v13, &v15, buf, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v16, 38, v14);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_22:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v10 = CoreRELog::log;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
  }

  return -1;
}

BOOL REMeshDeformationDefinitionAssetBuilderDeformerIsOffsets(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_8:
      v12 = CoreRELog::log;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      return 0;
    }

LABEL_22:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_8;
  }

  v7 = *(v6 + 16);
  if (v7 <= a2)
  {
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    *buf = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v21 = 797;
    v22 = 2048;
    v23 = a2;
    v24 = 2048;
    v25 = v7;
    _os_log_send_and_compose_impl(v15, &v17, buf, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  v8 = *(v6 + 32) + 40 * a2;
  if (*(v8 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = a3;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Invalid deformer index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v9 = (*(v8 + 32) + 40 * a3);
  if (*v9 >> 1 != 0x3875EE4E6B5AEA72)
  {
    return 0;
  }

  v10 = v9[1];
  return v10 == "OffsetsDeformer" || strcmp(v10, "OffsetsDeformer") == 0;
}

uint64_t REMeshDeformationDefinitionAssetBuilderOffsetsGetForceCPU(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_12:
      v13 = CoreRELog::log;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      goto LABEL_19;
    }

LABEL_33:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_12;
  }

  v7 = *(v6 + 16);
  if (v7 <= a2)
  {
    v19 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    *buf = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v20 = 136315906;
    v21 = "operator[]";
    v22 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v23 = 797;
    v24 = 2048;
    v25 = a2;
    v26 = 2048;
    v27 = v7;
    _os_log_send_and_compose_impl(v17, &v19, buf, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
    _os_crash_msg();
    __break(1u);
    goto LABEL_33;
  }

  v8 = *(v6 + 32) + 40 * a2;
  if (*(v8 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v11 = CoreRELog::log;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v12 = "Invalid deformer index: %zu";
  }

  else
  {
    v9 = *(v8 + 32) + 40 * a3;
    if (*v9 >> 1 == 0x3875EE4E6B5AEA72 && ((v10 = *(v9 + 8), v10 == "OffsetsDeformer") || !strcmp(v10, "OffsetsDeformer")))
    {
      if (*(v9 + 24) == 1)
      {
        v14 = **(v9 + 32);
        return v14 & 1;
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v11 = CoreRELog::log;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 134217984;
      *&buf[4] = a3;
      v12 = "Unexpected offsets deformer options size for deformer index: %zu";
    }

    else
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v11 = CoreRELog::log;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 134217984;
      *&buf[4] = a3;
      v12 = "Not an offsets deformer index: %zu";
    }
  }

  _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
LABEL_18:

LABEL_19:
  v14 = 0;
  return v14 & 1;
}

uint64_t REMeshDeformationDefinitionAssetBuilderOffsetsSetForceCPU(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  v34 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_12:
      v15 = CoreRELog::log;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      return 0;
    }

LABEL_32:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_12;
  }

  v9 = *(v8 + 2);
  if (v9 <= a2)
  {
    v20 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *buf = 0u;
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

    v24 = 789;
    v25 = 2048;
    v26 = a2;
    v27 = 2048;
    v28 = v9;
    _os_log_send_and_compose_impl(v18, &v20, buf, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
    goto LABEL_32;
  }

  v10 = *(v8 + 4) + 40 * a2;
  if (*(v10 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v14 = "Invalid deformer index: %zu";
    goto LABEL_27;
  }

  v11 = *(v10 + 32) + 40 * a3;
  if (*v11 >> 1 != 0x3875EE4E6B5AEA72 || (v12 = *(v11 + 8), v12 != "OffsetsDeformer") && strcmp(v12, "OffsetsDeformer"))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v14 = "Not an offsets deformer index: %zu";
LABEL_27:
    _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);
LABEL_18:

    return 0;
  }

  if (*(v11 + 24) != 1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v14 = "Unexpected offsets deformer options size for deformer index: %zu";
    goto LABEL_27;
  }

  **(v11 + 32) = a4;
  return 1;
}

uint64_t REMeshDeformationDefinitionAssetBuilderDeformationStackAddSmooth(uint64_t a1, unint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  {
    v5 = *(v4 + 2);
    if (v5 > a2)
    {
      v6 = (*(v4 + 4) + 40 * a2);
      memset(v16, 0, 24);
      **&v16[16] = 0;
      *buf = 0x5ADE39698BF7F040;
      *&buf[8] = "SmoothDeformer";
      v20 = *v16;
      v7 = *&v16[16];
      memset(v16, 0, 24);
      *&v21 = v7;
      re::DynamicArray<re::DeformationDefinition>::add(v6, buf);
      v8 = v20;
      if (v20)
      {
        if (*(&v20 + 1))
        {
          v8 = (*(*v20 + 40))();
          *(&v20 + 1) = 0;
          *&v21 = 0;
        }

        *&v20 = 0;
      }

      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      v9 = *(v6 + 2) - 1;
      if (*v16 && *&v16[8])
      {
        (*(**v16 + 40))();
      }

      return v9;
    }

    v15 = 0;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    *buf = 0u;
    v12 = MEMORY[0x1E69E9C10];
    *v16 = 136315906;
    *&v16[4] = "operator[]";
    *&v16[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    *&v16[14] = 789;
    *&v16[18] = 2048;
    *&v16[20] = a2;
    v17 = 2048;
    v18 = v5;
    _os_log_send_and_compose_impl(v13, &v15, buf, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v16, 38, v14);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_22:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v10 = CoreRELog::log;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
  }

  return -1;
}

BOOL REMeshDeformationDefinitionAssetBuilderDeformerIsSmooth(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_8:
      v12 = CoreRELog::log;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      return 0;
    }

LABEL_22:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_8;
  }

  v7 = *(v6 + 16);
  if (v7 <= a2)
  {
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    *buf = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v21 = 797;
    v22 = 2048;
    v23 = a2;
    v24 = 2048;
    v25 = v7;
    _os_log_send_and_compose_impl(v15, &v17, buf, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  v8 = *(v6 + 32) + 40 * a2;
  if (*(v8 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = a3;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Invalid deformer index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v9 = (*(v8 + 32) + 40 * a3);
  if (*v9 >> 1 != 0x2D6F1CB4C5FBF820)
  {
    return 0;
  }

  v10 = v9[1];
  return v10 == "SmoothDeformer" || strcmp(v10, "SmoothDeformer") == 0;
}

uint64_t REMeshDeformationDefinitionAssetBuilderSmoothGetForceCPU(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_12:
      v13 = CoreRELog::log;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      goto LABEL_19;
    }

LABEL_33:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_12;
  }

  v7 = *(v6 + 16);
  if (v7 <= a2)
  {
    v19 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    *buf = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v20 = 136315906;
    v21 = "operator[]";
    v22 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v23 = 797;
    v24 = 2048;
    v25 = a2;
    v26 = 2048;
    v27 = v7;
    _os_log_send_and_compose_impl(v17, &v19, buf, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
    _os_crash_msg();
    __break(1u);
    goto LABEL_33;
  }

  v8 = *(v6 + 32) + 40 * a2;
  if (*(v8 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v11 = CoreRELog::log;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v12 = "Invalid deformer index: %zu";
  }

  else
  {
    v9 = *(v8 + 32) + 40 * a3;
    if (*v9 >> 1 == 0x2D6F1CB4C5FBF820 && ((v10 = *(v9 + 8), v10 == "SmoothDeformer") || !strcmp(v10, "SmoothDeformer")))
    {
      if (*(v9 + 24) == 1)
      {
        v14 = **(v9 + 32);
        return v14 & 1;
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v11 = CoreRELog::log;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 134217984;
      *&buf[4] = a3;
      v12 = "Unexpected smooth deformer options size for deformer index: %zu";
    }

    else
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v11 = CoreRELog::log;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 134217984;
      *&buf[4] = a3;
      v12 = "Not a smooth deformer index: %zu";
    }
  }

  _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
LABEL_18:

LABEL_19:
  v14 = 0;
  return v14 & 1;
}

uint64_t REMeshDeformationDefinitionAssetBuilderSmoothSetForceCPU(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  v34 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_12:
      v15 = CoreRELog::log;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      return 0;
    }

LABEL_32:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_12;
  }

  v9 = *(v8 + 2);
  if (v9 <= a2)
  {
    v20 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *buf = 0u;
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

    v24 = 789;
    v25 = 2048;
    v26 = a2;
    v27 = 2048;
    v28 = v9;
    _os_log_send_and_compose_impl(v18, &v20, buf, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
    goto LABEL_32;
  }

  v10 = *(v8 + 4) + 40 * a2;
  if (*(v10 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v14 = "Invalid deformer index: %zu";
    goto LABEL_27;
  }

  v11 = *(v10 + 32) + 40 * a3;
  if (*v11 >> 1 != 0x2D6F1CB4C5FBF820 || (v12 = *(v11 + 8), v12 != "SmoothDeformer") && strcmp(v12, "SmoothDeformer"))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v14 = "Not an smooth deformer index: %zu";
LABEL_27:
    _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);
LABEL_18:

    return 0;
  }

  if (*(v11 + 24) != 1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v14 = "Unexpected smooth deformer options size for deformer index: %zu";
    goto LABEL_27;
  }

  **(v11 + 32) = a4;
  return 1;
}

uint64_t REMeshDeformationDefinitionAssetBuilderDeformationStackAddBoundingBoxCalculation(uint64_t a1, unint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  {
    v5 = *(v4 + 2);
    if (v5 > a2)
    {
      v6 = (*(v4 + 4) + 40 * a2);
      memset(v16, 0, 24);
      **&v16[16] = 0;
      *buf = 0x32458CCC0A585AB0;
      *&buf[8] = "Bounding Box Calculation";
      v20 = *v16;
      v7 = *&v16[16];
      memset(v16, 0, 24);
      *&v21 = v7;
      re::DynamicArray<re::DeformationDefinition>::add(v6, buf);
      v8 = v20;
      if (v20)
      {
        if (*(&v20 + 1))
        {
          v8 = (*(*v20 + 40))();
          *(&v20 + 1) = 0;
          *&v21 = 0;
        }

        *&v20 = 0;
      }

      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      v9 = *(v6 + 2) - 1;
      if (*v16 && *&v16[8])
      {
        (*(**v16 + 40))();
      }

      return v9;
    }

    v15 = 0;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    *buf = 0u;
    v12 = MEMORY[0x1E69E9C10];
    *v16 = 136315906;
    *&v16[4] = "operator[]";
    *&v16[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    *&v16[14] = 789;
    *&v16[18] = 2048;
    *&v16[20] = a2;
    v17 = 2048;
    v18 = v5;
    _os_log_send_and_compose_impl(v13, &v15, buf, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v16, 38, v14);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_22:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v10 = CoreRELog::log;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
  }

  return -1;
}

BOOL REMeshDeformationDefinitionAssetBuilderDeformerIsBoundingBoxCalculation(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_8:
      v12 = CoreRELog::log;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      return 0;
    }

LABEL_22:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_8;
  }

  v7 = *(v6 + 16);
  if (v7 <= a2)
  {
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    *buf = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v21 = 797;
    v22 = 2048;
    v23 = a2;
    v24 = 2048;
    v25 = v7;
    _os_log_send_and_compose_impl(v15, &v17, buf, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  v8 = *(v6 + 32) + 40 * a2;
  if (*(v8 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = a3;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Invalid deformer index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v9 = (*(v8 + 32) + 40 * a3);
  if (*v9 >> 1 != 0x1922C666052C2D58)
  {
    return 0;
  }

  v10 = v9[1];
  return v10 == "Bounding Box Calculation" || strcmp(v10, "Bounding Box Calculation") == 0;
}

uint64_t REMeshDeformationDefinitionAssetBuilderDeformationStackAddCustomDeformer(uint64_t a1, const char *a2, unint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v8 = CoreRELog::log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__dst) = 134217984;
      *(&__dst + 4) = a3;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", &__dst, 0xCu);
    }

    return -1;
  }

  v6 = strlen(a2);
  if (v6 - 63 <= 0xFFFFFFFFFFFFFFBFLL)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v7 = CoreRELog::log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__dst) = 134217984;
      *(&__dst + 4) = 64;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Invalid custom deformer name, maximum length is %zu.", &__dst, 0xCu);
    }

    return -1;
  }

  v11 = v6;
  v13 = *(v12 + 2);
  if (v13 <= a3)
  {
    v23 = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    __dst = 0u;
    v20 = MEMORY[0x1E69E9C10];
    *v26 = 136315906;
    *&v26[4] = "operator[]";
    *&v26[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    *&v26[14] = 789;
    *&v26[18] = 2048;
    *&v26[20] = a3;
    *&v26[28] = 2048;
    *&v26[30] = v13;
    _os_log_send_and_compose_impl(v21, &v23, &__dst, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v26, 38, v22);
    _os_crash_msg();
    __break(1u);
  }

  v14 = (*(v12 + 4) + 40 * a3);
  v29 = 0u;
  v30 = 0u;
  __dst = 0u;
  v28 = 0u;
  v15 = memcpy(&__dst, a2, v11);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v16 = v25;
  *v25 = __dst;
  v16[1] = v28;
  v16[2] = v29;
  v16[3] = v30;
  *v26 = 0xEAA1CBFA3D5AC124;
  *&v26[8] = "Custom Deformers";
  v17 = v23;
  v18 = v24;
  v23 = 0;
  v24 = 0;
  *&v26[16] = v17;
  *&v26[24] = v18;
  *&v26[32] = v16;
  v25 = 0;
  re::DynamicArray<re::DeformationDefinition>::add(v14, v26);
  v19 = *&v26[16];
  if (*&v26[16])
  {
    if (*&v26[24])
    {
      v19 = (*(**&v26[16] + 40))();
      *&v26[24] = 0;
      *&v26[32] = 0;
    }

    *&v26[16] = 0;
  }

  if (v26[0])
  {
    if (v26[0])
    {
    }
  }

  v9 = *(v14 + 2) - 1;
  if (v23 && v24)
  {
    (*(*v23 + 40))();
  }

  return v9;
}

BOOL REMeshDeformationDefinitionAssetBuilderDeformerIsCustomDeformer(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_8:
      v12 = CoreRELog::log;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      return 0;
    }

LABEL_22:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_8;
  }

  v7 = *(v6 + 16);
  if (v7 <= a2)
  {
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    *buf = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v21 = 797;
    v22 = 2048;
    v23 = a2;
    v24 = 2048;
    v25 = v7;
    _os_log_send_and_compose_impl(v15, &v17, buf, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  v8 = *(v6 + 32) + 40 * a2;
  if (*(v8 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = a3;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Invalid deformer index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v9 = (*(v8 + 32) + 40 * a3);
  if (*v9 >> 1 != 0x7550E5FD1EAD6092)
  {
    return 0;
  }

  v10 = v9[1];
  return v10 == "Custom Deformers" || strcmp(v10, "Custom Deformers") == 0;
}

const char *REMeshDeformationDefinitionAssetBuilderDeformerIsCustomNamedDeformer(uint64_t a1, const char *a2, unint64_t a3, unint64_t a4)
{
  result = REMeshDeformationDefinitionAssetBuilderDeformerCustomDeformerName(a1, a3, a4);
  if (result)
  {
    return (strcmp(result, a2) == 0);
  }

  return result;
}

uint64_t REMeshDeformationDefinitionAssetBuilderDeformerCustomDeformerName(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_10:
      v14 = CoreRELog::log;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      return 0;
    }

LABEL_28:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if (v7 <= a2)
  {
    v20 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *buf = 0u;
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

    v24 = 797;
    v25 = 2048;
    v26 = a2;
    v27 = 2048;
    v28 = v7;
    _os_log_send_and_compose_impl(v18, &v20, buf, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
    goto LABEL_28;
  }

  v8 = *(v6 + 32) + 40 * a2;
  if (*(v8 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v16 = "Invalid deformer index: %zu";
    goto LABEL_23;
  }

  v9 = *(v8 + 32);
  v10 = (v9 + 40 * a3);
  if (*v10 >> 1 != 0x7550E5FD1EAD6092)
  {
    return 0;
  }

  v11 = v10[1];
  if (v11 != "Custom Deformers")
  {
    if (strcmp(v11, "Custom Deformers"))
    {
      return 0;
    }
  }

  v12 = v9 + 40 * a3;
  if (*(v12 + 24) == 64)
  {
    return *(v12 + 32);
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v15 = CoreRELog::log;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = a3;
    v16 = "Invalid custom deformation options: %zu";
LABEL_23:
    _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);
  }

LABEL_16:

  return 0;
}

uint64_t REMeshDeformationDefinitionAssetBuilderAssignedMeshDeformationStackIndex(uint64_t a1, unint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  {
    v5 = *(v4 + 56);
    if (v5 > a2)
    {
      return *(*(v4 + 72) + 48 * a2 + 40);
    }

    v11 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    *buf = 0u;
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

    v15 = 797;
    v16 = 2048;
    v17 = a2;
    v18 = 2048;
    v19 = v5;
    _os_log_send_and_compose_impl(v9, &v11, buf, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_12:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v7 = CoreRELog::log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Invalid assigned mesh index: %zu", buf, 0xCu);
  }

  return -1;
}

uint64_t REMeshDeformationDefinitionAssetBuilderAssignedMeshIdentifierType(uint64_t a1, unint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  {
    v5 = *(v4 + 56);
    if (v5 > a2)
    {
      return *(*(v4 + 72) + 48 * a2);
    }

    v11 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    *buf = 0u;
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

    v15 = 797;
    v16 = 2048;
    v17 = a2;
    v18 = 2048;
    v19 = v5;
    _os_log_send_and_compose_impl(v9, &v11, buf, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_12:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v7 = CoreRELog::log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Invalid assigned mesh index: %zu", buf, 0xCu);
  }

  return 0;
}

CFTypeRef REMeshDeformationDefinitionAssetBuilderAssignedMeshIdentifierName(uint64_t a1, unint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  {
    v5 = *(v4 + 56);
    if (v5 > a2)
    {
      v6 = CFStringCreateWithCString(0, *(*(v4 + 72) + 48 * a2 + 16), 0x8000100u);

      return CFAutorelease(v6);
    }

    v12 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    *buf = 0u;
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

    v16 = 797;
    v17 = 2048;
    v18 = a2;
    v19 = 2048;
    v20 = v5;
    _os_log_send_and_compose_impl(v10, &v12, buf, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_14:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v8 = CoreRELog::log;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Invalid assigned mesh index: %zu", buf, 0xCu);
  }

  return 0;
}

uint64_t REMeshDeformationDefinitionAssetBuilderAssignedMeshIdentifierHasPartName(uint64_t a1, unint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  {
    v5 = *(v4 + 56);
    if (v5 > a2)
    {
      v6 = *(v4 + 72) + 48 * a2;
      v8 = *(v6 + 24);
      v7 = v6 + 24;
      return v8 > 1 || (v9 = *(v7 + 8)) == 0 || *v9 != 0;
    }

    v15 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    *buf = 0u;
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

    v19 = 797;
    v20 = 2048;
    v21 = a2;
    v22 = 2048;
    v23 = v5;
    _os_log_send_and_compose_impl(v13, &v15, buf, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
    _os_crash_msg();
    __break(1u);
    goto LABEL_15;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_15:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v11 = CoreRELog::log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Invalid assigned mesh index: %zu", buf, 0xCu);
  }

  return 0xFFFFFFFFLL;
}

CFTypeRef REMeshDeformationDefinitionAssetBuilderAssignedMeshIdentifierPartName(uint64_t a1, unint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  {
    v5 = *(v4 + 56);
    if (v5 > a2)
    {
      v6 = CFStringCreateWithCString(0, *(*(v4 + 72) + 48 * a2 + 32), 0x8000100u);

      return CFAutorelease(v6);
    }

    v12 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    *buf = 0u;
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

    v16 = 797;
    v17 = 2048;
    v18 = a2;
    v19 = 2048;
    v20 = v5;
    _os_log_send_and_compose_impl(v10, &v12, buf, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_14:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v8 = CoreRELog::log;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Invalid assigned mesh index: %zu", buf, 0xCu);
  }

  return 0;
}

BOOL REMeshDeformationDefinitionAssetBuilderAssignedMeshRemove(uint64_t a1, unint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (v4 <= a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 134217984;
      v9 = a2;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Invalid assigned mesh index: %zu", &v8, 0xCu);
    }
  }

  else
  {
    re::DynamicArray<re::MeshDeformationIndex>::removeStableAt(v5 + 40, a2);
  }

  return v4 > a2;
}

void re::DynamicArray<re::MeshDeformationIndex>::removeStableAt(uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3 <= a2)
  {
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v10 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "removeStableAt";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v17 = 969;
    v18 = 2048;
    v19 = a2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v11, &v13, v22, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  if (v3 - 1 > a2)
  {
    v5 = *(a1 + 32);
    if (v5 + 48 * a2 + 48 != v5 + 48 * v3)
    {
      v6 = 48 * a2;
      v7 = 48 * v3 - 48;
      do
      {
        v8 = (v5 + v6);
        *(v5 + v6) = *(v5 + v6 + 48);
        re::StringID::operator=((v5 + v6 + 8), (v5 + v6 + 56));
        re::StringID::operator=((v8 + 3), v8 + 9);
        v8[5] = v8[11];
        v5 += 48;
        v7 -= 48;
      }

      while (v6 != v7);
      v3 = *(a1 + 16);
    }
  }

  v9 = *(a1 + 32) + 48 * v3;
  re::StringID::destroyString((v9 - 24));
  re::StringID::destroyString((v9 - 40));
  --*(a1 + 16);
  ++*(a1 + 24);
}

uint64_t REMeshDeformationDefinitionAssetBuilderAssignedMeshMove(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v52 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v29 = CoreRELog::log;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = a2;
      _os_log_error_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_ERROR, "Invalid assigned mesh index: %zu", buf, 0xCu);
    }

    return 0;
  }

  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_20:
      v30 = CoreRELog::log;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a3;
        _os_log_error_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_ERROR, "Invalid new assigned mesh index: %zu", buf, 0xCu);
      }

      return 0;
    }

LABEL_32:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_20;
  }

  v7 = *(v6 + 7);
  if (v7 <= a2)
  {
    *v40 = 0;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    *buf = 0u;
    v48 = 0u;
    a3 = MEMORY[0x1E69E9C10];
    v37 = 136315906;
    *v38 = "operator[]";
    *&v38[8] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v32 = 3;
    }

    else
    {
      v32 = 2;
    }

    *&v38[10] = 789;
    *&v38[14] = 2048;
    *&v38[16] = a2;
    *&v38[24] = 2048;
    *&v38[26] = v7;
    _os_log_send_and_compose_impl(v32, v40, buf, 80, &dword_1E1C61000, a3, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v37, 38, v35, v36);
    _os_crash_msg();
    __break(1u);
    goto LABEL_32;
  }

  v8 = *(v6 + 9) + 48 * a2;
  v9 = *v8;
  LOBYTE(v37) = *v8;
  v10 = *(v8 + 8);
  *&v38[4] = v10;
  v11 = *(v8 + 16);
  *&v38[12] = v11;
  *(v8 + 8) = 0;
  *(v8 + 16) = &str_67;
  v12 = *(v8 + 24);
  *&v38[20] = v12;
  v13 = *(v8 + 32);
  *&v38[28] = v13;
  *(v8 + 24) = 0;
  *(v8 + 32) = &str_67;
  v14 = *(v8 + 40);
  v39 = v14;
  re::DynamicArray<re::MeshDeformationIndex>::removeStableAt(v15 + 40, a2);
  v17 = *(v16 + 7);
  v18 = v17 + 1;
  if (v17 + 1 <= a3)
  {
    v36 = 0;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    *buf = 0u;
    v48 = 0u;
    v33 = MEMORY[0x1E69E9C10];
    *v40 = 136315906;
    *&v40[4] = "insert";
    v41 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    v42 = 887;
    v43 = 2048;
    v44 = a3;
    v45 = 2048;
    v46 = v18;
    _os_log_send_and_compose_impl(v34, &v36, buf, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v40, 38, v35);
    _os_crash_msg();
    __break(1u);
  }

  v19 = v16;
  if (v17 >= *(v16 + 6))
  {
    v16 = re::DynamicArray<re::MeshDeformationIndex>::growCapacity((v16 + 40), v17 + 1);
    v17 = *(v19 + 7);
  }

  v20 = *(v19 + 9) + 48 * v17;
  if (v17 <= a3)
  {
    *v20 = v9;
    *(v20 + 8) = v10;
    *(v20 + 16) = v11;
    *&v38[4] = 0;
    *&v38[12] = &str_67;
    *(v20 + 24) = v12;
    *(v20 + 32) = v13;
    *(v20 + 40) = v14;
    ++*(v19 + 7);
    ++*(v19 + 16);
  }

  else
  {
    *v20 = *(v20 - 48);
    v21 = *(v20 - 32);
    *(v20 + 8) = *(v20 - 40);
    *(v20 + 16) = v21;
    *(v20 - 40) = 0;
    *(v20 - 32) = &str_67;
    *(v20 + 24) = *(v20 - 24);
    *(v20 - 24) = 0;
    *(v20 - 16) = &str_67;
    *(v20 + 40) = *(v20 - 8);
    v22 = *(v19 + 9);
    v23 = *(v19 + 7);
    if (v22 + 48 * v23 - 48 != v22 + 48 * a3)
    {
      v24 = 48 * v23;
      v25 = 48 * a3 + 48;
      do
      {
        v26 = v22 + v24;
        *(v22 + v24 - 48) = *(v22 + v24 - 96);
        re::StringID::operator=((v22 + v24 - 40), (v22 + v24 - 88));
        re::StringID::operator=((v26 - 24), (v26 - 72));
        *(v26 - 8) = *(v26 - 56);
        v22 -= 48;
        v25 += 48;
      }

      while (v24 != v25);
      v22 = *(v19 + 9);
    }

    v27 = v22 + 48 * a3;
    *v27 = v9;
    re::StringID::operator=((v27 + 8), &v38[4]);
    v16 = re::StringID::operator=((v27 + 24), &v38[20]);
    *(v27 + 40) = v39;
    v28 = v38[20];
    ++*(v19 + 7);
    ++*(v19 + 16);
    if (v28)
    {
    }
  }

  if (v38[4])
  {
  }

  return 1;
}

uint64_t REMeshDeformationDefinitionAssetBuilderAssignDeformationStack(uint64_t a1, unint64_t a2, int a3, const char *a4, const char *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v14 = CoreRELog::log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = 134217984;
      *v17 = a2;
      _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "Invalid deformation stack definition index: %zu", &v16, 0xCu);
    }

    return 0;
  }

  if ((a3 - 1) >= 3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = 67109120;
      *v17 = a3;
      _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Invalid mesh identifier type: %u", &v16, 8u);
    }

    return 0;
  }

  LOBYTE(v16) = a3;
  *&v17[4] = 0;
  v18 = &str_67;
  v19 = 0;
  v20 = &str_67;
  if (a5)
  {
  }

  v21 = a2;
  v12 = re::DynamicArray<re::MeshDeformationIndex>::add((v10 + 40), &v16);
  if (v19)
  {
    if (v19)
    {
    }
  }

  v19 = 0;
  v20 = &str_67;
  if (v17[4])
  {
    if (v17[4])
    {
    }
  }

  return 1;
}

uint64_t REMeshDeformationDefinitionAssetBuilderCreateMeshDeformationDefinitionAsset(void *a1, uint64_t a2)
{
  v3 = a1[6];
  if (v3)
  {
    a1[6] = 0;
    v5 = re::MeshDeformationAsset::assetType(a1);
    (*(*a2 + 424))(v8, a2, v3, v5, 0, 0, 0);
  }

  else
  {
    re::AssetHandle::AssetHandle(v8, (a1 + 3));
  }

  v6 = v8[0];
  v8[0] = 0;
  re::AssetHandle::~AssetHandle(v8);
  return v6;
}

uint64_t REMeshDeformationDefinitionAssetBuilderDeformationStackAddContact(uint64_t a1, unint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  {
    v5 = *(v4 + 2);
    if (v5 > a2)
    {
      v6 = (*(v4 + 4) + 40 * a2);
      *buf = 0x22F387A552F200A4;
      *&buf[8] = "ContactDeformer";
      *v14 = &REMeshDeformationDefinitionAssetBuilderDeformationStackAddContact::kDefaultDeformerOptions;
      *&v14[8] = 1;
      *&v21 = 0;
      v20 = 0uLL;
      re::FixedArray<unsigned char>::copy(&v20, v14);
      re::DynamicArray<re::DeformationDefinition>::add(v6, buf);
      v7 = v20;
      if (v20)
      {
        if (*(&v20 + 1))
        {
          v7 = (*(*v20 + 40))();
          *(&v20 + 1) = 0;
          *&v21 = 0;
        }

        *&v20 = 0;
      }

      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      return *(v6 + 2) - 1;
    }

    v13 = 0;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    *buf = 0u;
    v10 = MEMORY[0x1E69E9C10];
    *v14 = 136315906;
    *&v14[4] = "operator[]";
    *&v14[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    *&v14[14] = 789;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = v5;
    _os_log_send_and_compose_impl(v11, &v13, buf, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v14, 38, v12);
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_19:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v9 = CoreRELog::log;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
  }

  return -1;
}

BOOL REMeshDeformationDefinitionAssetBuilderDeformerIsContact(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_8:
      v12 = CoreRELog::log;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      return 0;
    }

LABEL_22:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_8;
  }

  v7 = *(v6 + 16);
  if (v7 <= a2)
  {
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    *buf = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v21 = 797;
    v22 = 2048;
    v23 = a2;
    v24 = 2048;
    v25 = v7;
    _os_log_send_and_compose_impl(v15, &v17, buf, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  v8 = *(v6 + 32) + 40 * a2;
  if (*(v8 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = a3;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Invalid deformer index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v9 = (*(v8 + 32) + 40 * a3);
  if (*v9 >> 1 != 0x1179C3D2A9790052)
  {
    return 0;
  }

  v10 = v9[1];
  return v10 == "ContactDeformer" || strcmp(v10, "ContactDeformer") == 0;
}

uint64_t REMeshDeformationDefinitionAssetBuilderContactGetForceCPU(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_12:
      v13 = CoreRELog::log;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      goto LABEL_19;
    }

LABEL_33:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_12;
  }

  v7 = *(v6 + 16);
  if (v7 <= a2)
  {
    v19 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    *buf = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v20 = 136315906;
    v21 = "operator[]";
    v22 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v23 = 797;
    v24 = 2048;
    v25 = a2;
    v26 = 2048;
    v27 = v7;
    _os_log_send_and_compose_impl(v17, &v19, buf, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
    _os_crash_msg();
    __break(1u);
    goto LABEL_33;
  }

  v8 = *(v6 + 32) + 40 * a2;
  if (*(v8 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v11 = CoreRELog::log;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v12 = "Invalid deformer index: %zu";
  }

  else
  {
    v9 = *(v8 + 32) + 40 * a3;
    if (*v9 >> 1 == 0x1179C3D2A9790052 && ((v10 = *(v9 + 8), v10 == "ContactDeformer") || !strcmp(v10, "ContactDeformer")))
    {
      if (*(v9 + 24) == 1)
      {
        v14 = **(v9 + 32);
        return v14 & 1;
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v11 = CoreRELog::log;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 134217984;
      *&buf[4] = a3;
      v12 = "Unexpected contact deformer options size for deformer index: %zu";
    }

    else
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v11 = CoreRELog::log;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 134217984;
      *&buf[4] = a3;
      v12 = "Not a contact deformer index: %zu";
    }
  }

  _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
LABEL_18:

LABEL_19:
  v14 = 0;
  return v14 & 1;
}

uint64_t REMeshDeformationDefinitionAssetBuilderContactSetForceCPU(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  v34 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_12:
      v15 = CoreRELog::log;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      return 0;
    }

LABEL_32:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_12;
  }

  v9 = *(v8 + 2);
  if (v9 <= a2)
  {
    v20 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *buf = 0u;
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

    v24 = 789;
    v25 = 2048;
    v26 = a2;
    v27 = 2048;
    v28 = v9;
    _os_log_send_and_compose_impl(v18, &v20, buf, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
    goto LABEL_32;
  }

  v10 = *(v8 + 4) + 40 * a2;
  if (*(v10 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v14 = "Invalid deformer index: %zu";
    goto LABEL_27;
  }

  v11 = *(v10 + 32) + 40 * a3;
  if (*v11 >> 1 != 0x1179C3D2A9790052 || (v12 = *(v11 + 8), v12 != "ContactDeformer") && strcmp(v12, "ContactDeformer"))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v14 = "Not a contact deformer index: %zu";
LABEL_27:
    _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);
LABEL_18:

    return 0;
  }

  if (*(v11 + 24) != 1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v14 = "Unexpected contact deformer options size for deformer index: %zu";
    goto LABEL_27;
  }

  **(v11 + 32) = a4;
  return 1;
}