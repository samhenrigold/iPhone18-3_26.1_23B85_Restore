uint64_t re::TargetDisplayInfoProvider::{unnamed type#10}::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(*v2 + 16);

    return v3();
  }

  else
  {
    if ((atomic_exchange(&re::TargetDisplayInfoProvider::{unnamed type#10}::operator()(void)const::__FILE____LINE___logged, 1u) & 1) == 0)
    {
      v5 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "Target nits provider has not been set.", v6, 2u);
      }
    }

    return *(a1 + 40);
  }
}

float re::TargetDisplayInfoProvider::{unnamed type#12}::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(*v2 + 16);

    v3();
  }

  else
  {
    if ((atomic_exchange(&re::TargetDisplayInfoProvider::{unnamed type#12}::operator()(void)const::__FILE____LINE___logged, 1u) & 1) == 0)
    {
      v5 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "Max EDR factor provider has not been set.", v6, 2u);
      }
    }

    return *(a1 + 40);
  }

  return result;
}

float re::TargetDisplayInfoProvider::{unnamed type#6}::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(*v2 + 16);

    v3();
  }

  else
  {
    if ((atomic_exchange(&re::TargetDisplayInfoProvider::{unnamed type#6}::operator()(void)const::__FILE____LINE___logged, 1u) & 1) == 0)
    {
      v5 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "SDR max brightness nits provider has not been set.", v6, 2u);
      }
    }

    return *(a1 + 40);
  }

  return result;
}

uint64_t re::TargetDisplayInfoProvider::{unnamed type#2}::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(*v2 + 16);

    return v3();
  }

  else
  {
    if ((atomic_exchange(&re::TargetDisplayInfoProvider::{unnamed type#2}::operator()(void)const::__FILE____LINE___logged, 1u) & 1) == 0)
    {
      v5 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "Display average brightness nits provider has not been set.", v6, 2u);
      }
    }

    return *(a1 + 40);
  }
}

float re::TargetDisplayInfoProvider::{unnamed type#1}::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(*v2 + 16);

    v3();
  }

  else
  {
    if ((atomic_exchange(&re::TargetDisplayInfoProvider::{unnamed type#1}::operator()(void)const::__FILE____LINE___logged, 1u) & 1) == 0)
    {
      v5 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "Display min brightness nits provider has not been set.", v6, 2u);
      }
    }

    return *(a1 + 40);
  }

  return result;
}

float re::TargetDisplayInfoProvider::{unnamed type#4}::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(*v2 + 16);

    v3();
  }

  else
  {
    if ((atomic_exchange(&re::TargetDisplayInfoProvider::{unnamed type#4}::operator()(void)const::__FILE____LINE___logged, 1u) & 1) == 0)
    {
      v5 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "Display contrast ratio provider has not been set.", v6, 2u);
      }
    }

    return *(a1 + 40);
  }

  return result;
}

uint64_t re::TargetDisplayInfoProvider::{unnamed type#5}::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(*v2 + 16);

    return v3();
  }

  else
  {
    if ((atomic_exchange(re::TargetDisplayInfoProvider::{unnamed type#5}::operator()(void)const::__FILE____LINE___logged, 1u) & 1) == 0)
    {
      v5 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "Display adjusts black level provider has not been set.", v6, 2u);
      }
    }

    return *(a1 + 40);
  }
}

uint64_t *re::HashTable<unsigned long long,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoColorInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~HashTable(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = a1[2];
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 20;
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

uint64_t *re::HashTable<re::VideoAsset const*,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetRenderInfo,re::Hash<re::VideoAsset const*>,re::EqualTo<re::VideoAsset const*>,true,false>::~HashTable(uint64_t *a1)
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
          re::AssetHandle::~AssetHandle((v6 + v4 + 24));
          v3 = *(a1 + 8);
        }

        v4 += 56;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return a1;
}

void re::ecs2::VideoComponentSystem::~VideoComponentSystem(re::ecs2::VideoComponentSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

__n128 re::DynamicArray<anonymous namespace::ViewInfo>::add(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v5 + 1;
  if (v5 >= v4 && v4 < v6)
  {
    if (*a1)
    {
      v15 = 2 * v4;
      v16 = v4 == 0;
      v17 = 8;
      if (!v16)
      {
        v17 = v15;
      }

      if (v17 <= v6)
      {
        v18 = v6;
      }

      else
      {
        v18 = v17;
      }
    }

    else
    {
      ++*(a1 + 24);
    }
  }

  v8 = *(a1 + 32) + (*(a1 + 16) << 7);
  v9 = *(a2 + 112);
  v11 = *(a2 + 64);
  v10 = *(a2 + 80);
  *(v8 + 96) = *(a2 + 96);
  *(v8 + 112) = v9;
  *(v8 + 64) = v11;
  *(v8 + 80) = v10;
  result = *a2;
  v13 = *(a2 + 16);
  v14 = *(a2 + 48);
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 48) = v14;
  *v8 = result;
  *(v8 + 16) = v13;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void *re::DynamicArray<anonymous namespace::ViewInfo>::setCapacity(void *result, unint64_t a2)
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

        if (a2 >> 57)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 128, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        else
        {
          v2 = a2 << 7;
          result = (*(*result + 32))(result, a2 << 7, 16);
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
            memcpy(v7, v5[4], v5[2] << 7);
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
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs214VideoComponentELNS_17RealityKitReleaseE3EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 3;
    *(a2 + 8) = 0;
  }
}

uint64_t re::Event<re::NetworkSystem,re::ecs2::Component *>::createSubscription<re::ecs2::VideoComponentSystem>(re::ecs2::VideoComponentSystem *,REEventHandlerResult (re::ecs2::VideoComponentSystem::*)(re::NetworkSystem*,re::ecs2::Component *))::{lambda(re::NetworkSystem*,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription const&,re::ecs2::Component *&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = (*a2 + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a1, *a3);
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::VideoComponentSystem::willRemoveComponents,re::ecs2::VideoComponentSystem>(uint64_t a1, uint64_t a2, re::ecs2::VideoComponent **a3, uint64_t a4)
{
  v4 = *(*(a1 + 240) + 24);
  if (v4)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v7 = 8 * a4;
    do
    {
      v8 = *a3++;
      re::ecs2::VideoComponent::removeParamsFromSystemParameterBlock(v8, v4, 1, 1);
      v7 -= 8;
    }

    while (v7);
  }

  return 0;
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::VideoComponentSystem::willRemoveVideoPlayerComponents,re::ecs2::VideoComponentSystem>(_BOOL8 a1, uint64_t a2, void *a3, uint64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v4 = a3;
    v5 = &a3[a4];
    v6 = &unk_1EE187000;
    do
    {
      v7 = *v4;
      v8 = *re::videoLogObjects(a1);
      a1 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (a1)
      {
        *buf = 134217984;
        v37 = v7;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "VideoComponentSystem::willRemoveVideoPlayerComponents: %p", buf, 0xCu);
      }

      v9 = v7[2];
      if (v9)
      {
        if (v7[6])
        {
          v10 = re::AssetHandle::loadedAsset<re::VideoAsset>((v7 + 5));
          if (v10)
          {
            v11 = v10;
            if (*(v10 + 216))
            {
              v12 = v9[43];
              if (v12)
              {
                v13 = v9[45];
                v14 = 8 * v12;
                v15 = 8 * v12;
                v16 = v13;
                while (1)
                {
                  v17 = *v16;
                  if ((*(*v16 + 288) ^ 0xF4664E2E6A44E25ALL) <= 1)
                  {
                    v18 = *(v17 + 296);
                    if (v18 == "__InternalVPC-Screen__" || !strcmp(v18, "__InternalVPC-Screen__"))
                    {
                      break;
                    }
                  }

                  ++v16;
                  v15 -= 8;
                  if (!v15)
                  {
                    v17 = 0;
                    break;
                  }
                }

                while (1)
                {
                  v19 = *v13;
                  if ((*(*v13 + 288) ^ 0x931CC76C0DD179BALL) <= 1)
                  {
                    v20 = *(v19 + 296);
                    if (v20 == "__InternalVPC-ScreenGlowEntity__" || !strcmp(v20, "__InternalVPC-ScreenGlowEntity__"))
                    {
                      break;
                    }
                  }

                  ++v13;
                  v14 -= 8;
                  if (!v14)
                  {
                    goto LABEL_22;
                  }
                }
              }

              else
              {
                v17 = 0;
LABEL_22:
                v19 = 0;
              }

              *&v35.var0 = 0xD0AE8347A834160;
              v35.var1 = "__InternalVPC-CyclopEye__";
              v21 = re::ecs2::Entity::findInHierarchyByName(v9, &v35);
              v22 = v21;
              if (*&v35.var0)
              {
                if (*&v35.var0)
                {
                }
              }

              *&v35.var0 = 0;
              v35.var1 = &str_67;
              *&v34.var0 = 0x98636CD79C3E2C92;
              v34.var1 = "__InternalVPC-LeftEye__";
              v23 = re::ecs2::Entity::findInHierarchyByName(v9, &v34);
              v24 = v23;
              if (*&v34.var0)
              {
                if (*&v34.var0)
                {
                }
              }

              *&v34.var0 = 0;
              v34.var1 = &str_67;
              *&v33.var0 = 0x740B54E87609516CLL;
              v33.var1 = "__InternalVPC-RightEye__";
              v25 = re::ecs2::Entity::findInHierarchyByName(v9, &v33);
              v26 = v25;
              if (*&v33.var0)
              {
                if (*&v33.var0)
                {
                }
              }

              *&v33.var0 = 0;
              v33.var1 = &str_67;
              v27 = *(v11 + 27);
              memset(v32, 0, sizeof(v32));
              re::ecs2::VideoPlayerComponentHelper::setVideo(v27, v17, v19, v22, v24, v26, v32);
              re::AssetHandle::~AssetHandle(v32);
              re::VideoAsset::cleanupVideoPlayerHelper(v11);
              v6 = &unk_1EE187000;
            }
          }

          v28 = v7[6];
          if (v28)
          {
            v29 = atomic_load((v28 + 896));
            if (v29 == 2)
            {
              memset(v31, 0, sizeof(v31));
              re::ecs2::VideoPlayerComponent::setVideoAsset(v7, v31);
              re::AssetHandle::~AssetHandle(v31);
            }
          }
        }

        re::ecs2::EntityComponentCollection::remove((v9 + 6), v6[448]);
      }

      ++v4;
    }

    while (v4 != v5);
  }

  return 0;
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::VideoComponentSystem::didAddVideoPlayerComponents,re::ecs2::VideoComponentSystem>(_BOOL8 a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v5 = 8 * a4;
    do
    {
      v6 = *a3;
      v7 = *re::videoLogObjects(a1);
      a1 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (a1)
      {
        *buf = 134217984;
        v10 = v6;
        _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "VideoComponentSystem::didAddVideoPlayerComponents: %p", buf, 0xCu);
      }

      ++a3;
      v5 -= 8;
    }

    while (v5);
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::VideoProxyComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::VideoProxyComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::VideoProxyComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = (*a2 + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a1, *a3, a3[1]);
}

void *re::DynamicArray<re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetInfo>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetInfo>::setCapacity(v5, a2);
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
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 56, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v18, v20);
          __break(1u);
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
        v10 = v8 + 56 * v9;
        v11 = (v8 + 16);
        v12 = v7;
        do
        {
          *v12 = *(v11 - 1);
          v12[3] = 0;
          v12[4] = 0;
          v12[2] = 0;
          v12[3] = v11[1];
          v11[1] = 0;
          v13 = v12[2];
          v12[2] = 0;
          v12[2] = *v11;
          *v11 = v13;
          v14 = v12[4];
          v12[4] = v11[2];
          v11[2] = v14;
          v15 = v11[3];
          *(v12 + 45) = *(v11 + 29);
          v12[5] = v15;
          re::AssetHandle::~AssetHandle(v11);
          v12 += 7;
          v17 = v16 + 40;
          v11 = (v16 + 56);
        }

        while (v17 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::$_1 &,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetInfo *,false>(char *a1, char *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v269 = (a2 - 56);
    v7 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v7;
          v8 = a2 - v7;
          v9 = 0x6DB6DB6DB6DB6DB7 * ((a2 - v7) >> 3);
          v10 = v9 - 2;
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3:
                std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::$_1 &,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetInfo *,0>(a1, (a1 + 56), v269);
                return;
              case 4:
                std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::$_1 &,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetInfo *,0>(a1, (a1 + 56), (a1 + 112), v269);
                return;
              case 5:
                std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::$_1 &,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetInfo *,0>(a1, (a1 + 56), a1 + 7, (a1 + 168), v269);
                return;
            }
          }

          else
          {
            if (v9 < 2)
            {
              return;
            }

            if (v9 == 2)
            {
              v121 = *(a2 - 4);
              v122 = a1[52];
              v123 = v121 == v122;
              v124 = v121 > v122;
              if (v123)
              {
                v124 = *(a2 - 6) > a1[50];
              }

              if (v124)
              {
                v278 = *a1;
                v280 = 0;
                v125 = *(a1 + 3);
                v126 = *(a1 + 4);
                *&v279 = 0;
                *(&v279 + 1) = v125;
                *&v279 = *(a1 + 2);
                *(a1 + 2) = 0;
                *(a1 + 3) = 0;
                v127 = v280;
                v280 = v126;
                *(a1 + 4) = v127;
                v128 = *(a1 + 45);
                *v281 = *(a1 + 5);
                *&v281[5] = v128;
                *a1 = *(a2 - 56);
                v129 = *(a1 + 3);
                *(a1 + 3) = *(a2 - 4);
                *(a2 - 4) = v129;
                v130 = *(a1 + 2);
                *(a1 + 2) = 0;
                *(a1 + 2) = *(a2 - 5);
                *(a2 - 5) = v130;
                v131 = *(a1 + 4);
                *(a1 + 4) = *(a2 - 3);
                *(a2 - 3) = v131;
                v132 = *(a2 - 2);
                *(a1 + 45) = *(a2 - 11);
                *(a1 + 5) = v132;
                *(a2 - 56) = v278;
                v133 = *(a2 - 4);
                *(a2 - 4) = *(&v279 + 1);
                *(&v279 + 1) = v133;
                v134 = *(a2 - 5);
                *(a2 - 5) = 0;
                *(a2 - 5) = v279;
                *&v279 = v134;
                v135 = *(a2 - 3);
                *(a2 - 3) = v280;
                v280 = v135;
                v136 = *v281;
                *(a2 - 11) = *&v281[5];
                *(a2 - 2) = v136;
                re::AssetHandle::~AssetHandle(&v279);
              }

              return;
            }
          }

          if (v8 <= 1343)
          {
            if (a4)
            {
              if (a1 != a2)
              {
                v137 = a1 + 56;
                if (a1 + 56 != a2)
                {
                  v138 = 0;
                  v139 = a1;
                  do
                  {
                    v140 = v137;
                    v141 = v139[108];
                    v142 = v139[52];
                    v123 = v141 == v142;
                    v143 = v141 > v142;
                    if (v123)
                    {
                      v143 = v139[106] > v139[50];
                    }

                    if (v143)
                    {
                      v144 = *(v139 + 72);
                      v278 = *v140;
                      v279 = v144;
                      *(v139 + 9) = 0;
                      *(v139 + 10) = 0;
                      v145 = *(v139 + 12);
                      v280 = *(v139 + 11);
                      *(v139 + 11) = 0;
                      *v281 = v145;
                      v146 = v138;
                      *&v281[5] = *(v139 + 101);
                      while (1)
                      {
                        v147 = &a1[v146];
                        v148 = *&a1[v146 + 32];
                        v149 = *&a1[v146 + 40];
                        *(v147 + 4) = *&a1[v146 + 88];
                        *(v147 + 101) = *&a1[v146 + 45];
                        v150 = *&a1[v146 + 16];
                        *(v147 + 56) = *&a1[v146];
                        v151 = *&a1[v146 + 72];
                        *(v147 + 72) = v150;
                        *(v147 + 1) = v151;
                        *(v147 + 11) = v148;
                        *(v147 + 12) = v149;
                        if (!v146)
                        {
                          break;
                        }

                        v152 = *(v147 - 4);
                        v153 = v281[12] > v152;
                        if (v281[12] == v152)
                        {
                          v153 = v281[10] > *(v147 - 6);
                        }

                        v146 -= 56;
                        if (!v153)
                        {
                          v154 = &a1[v146 + 56];
                          goto LABEL_103;
                        }
                      }

                      v154 = a1;
LABEL_103:
                      *v154 = v278;
                      v155 = *(v147 + 3);
                      *(v147 + 3) = *(&v279 + 1);
                      *(&v279 + 1) = v155;
                      v156 = *(v147 + 2);
                      *(v147 + 2) = 0;
                      *(v147 + 2) = v279;
                      *&v279 = v156;
                      v157 = *(v147 + 4);
                      *(v147 + 4) = v280;
                      v280 = v157;
                      v158 = *v281;
                      *(v147 + 45) = *&v281[5];
                      *(v147 + 5) = v158;
                      re::AssetHandle::~AssetHandle(&v279);
                    }

                    v137 = v140 + 56;
                    v138 += 56;
                    v139 = v140;
                  }

                  while (v140 + 56 != a2);
                }
              }
            }

            else if (a1 != a2)
            {
              v248 = a1 + 56;
              if (a1 + 56 != a2)
              {
                v249 = a1 + 96;
                do
                {
                  v250 = v248;
                  v251 = a1[108];
                  v252 = a1[52];
                  v123 = v251 == v252;
                  v253 = v251 > v252;
                  if (v123)
                  {
                    v253 = a1[106] > a1[50];
                  }

                  if (v253)
                  {
                    v254 = *(a1 + 72);
                    v278 = *v250;
                    v279 = v254;
                    *(a1 + 9) = 0;
                    *(a1 + 10) = 0;
                    v255 = *(a1 + 12);
                    v280 = *(a1 + 11);
                    *(a1 + 11) = 0;
                    *v281 = v255;
                    v256 = v249;
                    *&v281[5] = *(a1 + 101);
                    do
                    {
                      v257 = v256;
                      v258 = *(v256 - 5);
                      *(v256 - 5) = *(v256 - 6);
                      v259 = *(v256 - 3);
                      *(v256 - 3) = v258;
                      *(v256 - 5) = v259;
                      v260 = *(v256 - 8);
                      *(v256 - 8) = *(v256 - 1);
                      v261 = *(v256 - 51);
                      v262 = *(v256 - 7);
                      v256 -= 7;
                      *(v257 + 5) = v261;
                      *(v257 - 1) = v260;
                      *v257 = v262;
                      v263 = *(v257 - 100);
                      v264 = v281[10] > *(v257 - 102);
                      if (v281[12] != v263)
                      {
                        v264 = v281[12] > v263;
                      }
                    }

                    while (v264);
                    *(v256 - 5) = v278;
                    v265 = *(v256 - 2);
                    *(v256 - 2) = *(&v279 + 1);
                    *(&v279 + 1) = v265;
                    v266 = *(v256 - 3);
                    *(v256 - 3) = 0;
                    *(v256 - 3) = v279;
                    *&v279 = v266;
                    v267 = *(v256 - 1);
                    *(v256 - 1) = v280;
                    v280 = v267;
                    v268 = *v281;
                    *(v256 + 5) = *&v281[5];
                    *v256 = v268;
                    re::AssetHandle::~AssetHandle(&v279);
                  }

                  v248 = v250 + 56;
                  v249 = (v249 + 56);
                  a1 = v250;
                }

                while (v250 + 56 != a2);
              }
            }

            return;
          }

          if (!a3)
          {
            if (a1 != a2)
            {
              v159 = v10 >> 1;
              v160 = v10 >> 1;
              do
              {
                v161 = v160;
                if (v159 >= v160)
                {
                  v162 = (2 * v160) | 1;
                  v163 = &a1[56 * v162];
                  if (2 * v161 + 2 < v9)
                  {
                    v164 = v163[52];
                    v165 = v163[108];
                    v123 = v164 == v165;
                    v166 = v164 > v165;
                    if (v123)
                    {
                      v166 = v163[50] > v163[106];
                    }

                    v167 = !v166;
                    if (v166)
                    {
                      v168 = 56;
                    }

                    else
                    {
                      v168 = 0;
                    }

                    v163 += v168;
                    if (!v167)
                    {
                      v162 = 2 * v161 + 2;
                    }
                  }

                  v169 = &a1[56 * v161];
                  v170 = v163[52];
                  v171 = v169[52];
                  v123 = v170 == v171;
                  v172 = v170 > v171;
                  if (v123)
                  {
                    v172 = v163[50] > v169[50];
                  }

                  if (!v172)
                  {
                    v278 = *v169;
                    v280 = 0;
                    v279 = 0uLL;
                    *(&v279 + 1) = *(v169 + 3);
                    *(v169 + 3) = 0;
                    v173 = v279;
                    *&v279 = 0;
                    *&v279 = *(v169 + 2);
                    *(v169 + 2) = v173;
                    v174 = v280;
                    v280 = *(v169 + 4);
                    *(v169 + 4) = v174;
                    v175 = *(v169 + 5);
                    *&v281[5] = *(v169 + 45);
                    *v281 = v175;
                    do
                    {
                      v176 = v163;
                      *v169 = *v163;
                      v177 = *(v169 + 3);
                      *(v169 + 3) = *(v176 + 3);
                      *(v176 + 3) = v177;
                      v178 = *(v169 + 2);
                      *(v169 + 2) = 0;
                      *(v169 + 2) = *(v176 + 2);
                      *(v176 + 2) = v178;
                      v179 = *(v169 + 4);
                      *(v169 + 4) = *(v176 + 4);
                      *(v176 + 4) = v179;
                      v180 = *(v176 + 5);
                      *(v169 + 45) = *(v176 + 45);
                      *(v169 + 5) = v180;
                      if (v159 < v162)
                      {
                        break;
                      }

                      v181 = (2 * v162) | 1;
                      v163 = &a1[56 * v181];
                      v182 = 2 * v162 + 2;
                      if (v182 < v9)
                      {
                        v183 = v163[52];
                        v184 = v163[108];
                        v123 = v183 == v184;
                        v185 = v183 > v184;
                        if (v123)
                        {
                          v185 = v163[50] > v163[106];
                        }

                        v186 = !v185;
                        if (v185)
                        {
                          v187 = 56;
                        }

                        else
                        {
                          v187 = 0;
                        }

                        v163 += v187;
                        if (!v186)
                        {
                          v181 = v182;
                        }
                      }

                      v188 = v163[52];
                      v189 = v163[50] > v281[10];
                      v123 = v188 == v281[12];
                      v190 = v188 > v281[12];
                      if (!v123)
                      {
                        v189 = v190;
                      }

                      v169 = v176;
                      v162 = v181;
                    }

                    while (!v189);
                    *v176 = v278;
                    v191 = *(v176 + 3);
                    v192 = *(v176 + 4);
                    *(v176 + 3) = *(&v279 + 1);
                    *(&v279 + 1) = v191;
                    v193 = *(v176 + 2);
                    *(v176 + 2) = 0;
                    *(v176 + 2) = v279;
                    *(v176 + 4) = v280;
                    *&v279 = v193;
                    v280 = v192;
                    v194 = *&v281[5];
                    *(v176 + 5) = *v281;
                    *(v176 + 45) = v194;
                    re::AssetHandle::~AssetHandle(&v279);
                  }
                }

                v160 = v161 - 1;
              }

              while (v161);
              v195 = 0x6DB6DB6DB6DB6DB7 * (v8 >> 3);
              do
              {
                v196 = 0;
                v197 = a2;
                v273 = *a1;
                v275 = 0;
                v276 = 0;
                v274 = 0;
                v198 = *(a1 + 4);
                v275 = *(a1 + 3);
                v274 = *(a1 + 2);
                *(a1 + 2) = 0;
                *(a1 + 3) = 0;
                v199 = v276;
                v276 = v198;
                *(a1 + 4) = v199;
                v200 = *(a1 + 45);
                *v277 = *(a1 + 5);
                *&v277[5] = v200;
                v201 = a1;
                do
                {
                  v202 = v201 + 56 * v196;
                  v203 = v202 + 56;
                  v204 = (2 * v196) | 1;
                  v196 = 2 * v196 + 2;
                  if (v196 >= v195)
                  {
                    v196 = v204;
                  }

                  else
                  {
                    v205 = v202[108];
                    v206 = v202[164];
                    v123 = v205 == v206;
                    v207 = v205 > v206;
                    if (v123)
                    {
                      v207 = v202[106] > v202[162];
                    }

                    v208 = v202 + 112;
                    if (v207)
                    {
                      v203 = v208;
                    }

                    else
                    {
                      v196 = v204;
                    }
                  }

                  *v201 = *v203;
                  v209 = *(v201 + 3);
                  *(v201 + 3) = *(v203 + 3);
                  *(v203 + 3) = v209;
                  v210 = *(v201 + 2);
                  *(v201 + 2) = 0;
                  *(v201 + 2) = *(v203 + 2);
                  *(v203 + 2) = v210;
                  v211 = *(v201 + 4);
                  *(v201 + 4) = *(v203 + 4);
                  v212 = v203 + 40;
                  v213 = *(v203 + 5);
                  *(v203 + 4) = v211;
                  *(v201 + 45) = *(v203 + 45);
                  *(v201 + 5) = v213;
                  v201 = v203;
                }

                while (v196 <= ((v195 - 2) >> 1));
                a2 -= 56;
                if (v203 == (v197 - 56))
                {
                  *v203 = v273;
                  v243 = *(v203 + 3);
                  v244 = *(v203 + 4);
                  *(v203 + 3) = v275;
                  v275 = v243;
                  v245 = *(v203 + 2);
                  *(v203 + 2) = 0;
                  *(v203 + 2) = v274;
                  *(v203 + 4) = v276;
                  v274 = v245;
                  v276 = v244;
                  v246 = *&v277[5];
                  *v212 = *v277;
                  *(v212 + 5) = v246;
                }

                else
                {
                  *v203 = *a2;
                  v214 = *(v203 + 3);
                  *(v203 + 3) = *(v197 - 4);
                  *(v197 - 4) = v214;
                  v215 = *(v203 + 2);
                  *(v203 + 2) = 0;
                  *(v203 + 2) = *(v197 - 5);
                  *(v197 - 5) = v215;
                  v216 = *(v203 + 4);
                  *(v203 + 4) = *(v197 - 3);
                  *(v197 - 3) = v216;
                  v217 = *(v197 - 2);
                  *(v203 + 45) = *(v197 - 11);
                  *v212 = v217;
                  *a2 = v273;
                  v218 = *(v197 - 4);
                  *(v197 - 4) = v275;
                  v275 = v218;
                  v219 = *(v197 - 5);
                  *(v197 - 5) = 0;
                  *(v197 - 5) = v274;
                  v274 = v219;
                  v220 = *(v197 - 3);
                  *(v197 - 3) = v276;
                  v276 = v220;
                  v221 = *v277;
                  *(v197 - 11) = *&v277[5];
                  *(v197 - 2) = v221;
                  v222 = v203 - a1 + 56;
                  if (v222 >= 57)
                  {
                    v223 = (0x6DB6DB6DB6DB6DB7 * (v222 >> 3) - 2) >> 1;
                    v224 = &a1[56 * v223];
                    v225 = v224[52];
                    v226 = v203[52];
                    v123 = v225 == v226;
                    v227 = v225 > v226;
                    if (v123)
                    {
                      v227 = v224[50] > v203[50];
                    }

                    if (v227)
                    {
                      v278 = *v203;
                      v280 = 0;
                      v279 = 0uLL;
                      v228 = *(v203 + 4);
                      v279 = *(v203 + 1);
                      *(v203 + 2) = 0;
                      *(v203 + 3) = 0;
                      v229 = v280;
                      v280 = v228;
                      *(v203 + 4) = v229;
                      v230 = *(v203 + 45);
                      *v281 = *v212;
                      *&v281[5] = v230;
                      do
                      {
                        v231 = v224;
                        *v203 = *v224;
                        v232 = *(v203 + 3);
                        *(v203 + 3) = *(v231 + 3);
                        *(v231 + 3) = v232;
                        v233 = *(v203 + 2);
                        *(v203 + 2) = 0;
                        *(v203 + 2) = *(v231 + 2);
                        *(v231 + 2) = v233;
                        v234 = *(v203 + 4);
                        *(v203 + 4) = *(v231 + 4);
                        *(v231 + 4) = v234;
                        v235 = *(v231 + 5);
                        *(v203 + 45) = *(v231 + 45);
                        *(v203 + 5) = v235;
                        if (!v223)
                        {
                          break;
                        }

                        v223 = (v223 - 1) >> 1;
                        v224 = &a1[56 * v223];
                        v236 = v224[52];
                        v123 = v236 == v281[12];
                        v237 = v236 > v281[12];
                        v238 = v123 ? v224[50] > v281[10] : v237;
                        v203 = v231;
                      }

                      while (v238);
                      *v231 = v278;
                      v239 = *(v231 + 3);
                      v240 = *(v231 + 4);
                      *(v231 + 3) = *(&v279 + 1);
                      *(&v279 + 1) = v239;
                      v241 = *(v231 + 2);
                      *(v231 + 2) = 0;
                      *(v231 + 2) = v279;
                      *(v231 + 4) = v280;
                      *&v279 = v241;
                      v280 = v240;
                      v242 = *&v281[5];
                      *(v231 + 5) = *v281;
                      *(v231 + 45) = v242;
                      re::AssetHandle::~AssetHandle(&v279);
                    }
                  }
                }

                re::AssetHandle::~AssetHandle(&v274);
              }

              while (v195-- > 2);
            }

            return;
          }

          v11 = v9 >> 1;
          v12 = &a1[56 * (v9 >> 1)];
          if (v8 < 0x1C01)
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::$_1 &,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetInfo *,0>(v12, a1, v269);
          }

          else
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::$_1 &,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetInfo *,0>(a1, v12, v269);
            v13 = 56 * v11;
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::$_1 &,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetInfo *,0>((a1 + 56), &a1[v13 - 56], a2 - 7);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::$_1 &,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetInfo *,0>(a1 + 7, &a1[v13 + 56], (a2 - 168));
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::$_1 &,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetInfo *,0>(&a1[v13 - 56], v12, &a1[v13 + 56]);
            v278 = *a1;
            v280 = 0;
            v279 = 0uLL;
            v14 = *(a1 + 4);
            v279 = *(a1 + 1);
            *(a1 + 2) = 0;
            *(a1 + 3) = 0;
            v15 = v280;
            v280 = v14;
            *(a1 + 4) = v15;
            v16 = *(a1 + 45);
            *v281 = *(a1 + 5);
            *&v281[5] = v16;
            *a1 = *v12;
            v17 = *(a1 + 2);
            *(a1 + 2) = 0;
            v18 = *(v12 + 3);
            v19 = *(a1 + 24);
            *(a1 + 2) = *(v12 + 2);
            *(a1 + 3) = v18;
            *(v12 + 2) = v17;
            v20 = *(v12 + 4);
            v21 = *(v12 + 5);
            *(a1 + 45) = *(v12 + 45);
            *(a1 + 4) = v20;
            *(a1 + 5) = v21;
            *(v12 + 24) = v19;
            *v12 = v278;
            *(v12 + 3) = *(&v279 + 1);
            *(&v279 + 1) = v19;
            v22 = *(v12 + 2);
            *(v12 + 2) = 0;
            *(v12 + 2) = v279;
            *&v279 = v22;
            v23 = *(v12 + 4);
            *(v12 + 4) = v280;
            v280 = v23;
            v24 = *v281;
            *(v12 + 45) = *&v281[5];
            *(v12 + 5) = v24;
            re::AssetHandle::~AssetHandle(&v279);
          }

          --a3;
          if (a4)
          {
            break;
          }

          v25 = *(a1 - 4);
          v26 = a1[52];
          v123 = v25 == v26;
          v27 = v25 > v26;
          if (v123)
          {
            v27 = *(a1 - 6) > a1[50];
          }

          if (v27)
          {
            break;
          }

          v272 = *a1;
          v275 = 0;
          v276 = 0;
          v274 = 0;
          v75 = *(a1 + 4);
          v275 = *(a1 + 3);
          v274 = *(a1 + 2);
          *(a1 + 2) = 0;
          *(a1 + 3) = 0;
          v76 = v276;
          v276 = v75;
          *(a1 + 4) = v76;
          v77 = *(a1 + 5);
          *&v277[5] = *(a1 + 45);
          *v277 = v77;
          v78 = *(a2 - 4);
          v123 = v277[12] == v78;
          v79 = v277[12] > v78;
          if (v123)
          {
            v79 = v277[10] > *(a2 - 6);
          }

          if (v79)
          {
            v80 = a1;
            do
            {
              v7 = (v80 + 56);
              v81 = *(v80 + 108);
              v82 = v277[10] > *(v80 + 106);
              v123 = v277[12] == v81;
              v83 = v277[12] > v81;
              if (v123)
              {
                v83 = v82;
              }

              v80 = v7;
            }

            while (!v83);
          }

          else
          {
            v84 = a1 + 56;
            do
            {
              v7 = v84;
              if (v84 >= a2)
              {
                break;
              }

              v85 = v84[52];
              v86 = v277[10] > *(v7 + 50);
              v123 = v277[12] == v85;
              v87 = v277[12] > v85;
              if (!v123)
              {
                v86 = v87;
              }

              v84 = v7 + 56;
            }

            while (!v86);
          }

          v88 = a2;
          if (v7 < a2)
          {
            v89 = a2;
            do
            {
              v88 = (v89 - 56);
              v90 = *(v89 - 4);
              v91 = v277[10] > *(v89 - 6);
              v123 = v277[12] == v90;
              v92 = v277[12] > v90;
              if (v123)
              {
                v92 = v91;
              }

              v89 = v88;
            }

            while (v92);
          }

          while (v7 < v88)
          {
            v278 = *v7;
            v280 = 0;
            v279 = 0uLL;
            v93 = *(v7 + 4);
            v279 = v7[1];
            *(v7 + 2) = 0;
            *(v7 + 3) = 0;
            v94 = v280;
            v280 = v93;
            *(v7 + 4) = v94;
            v95 = *(v7 + 45);
            *v281 = *(v7 + 5);
            *&v281[5] = v95;
            *v7 = *v88;
            v96 = *(v7 + 3);
            *(v7 + 3) = *(v88 + 3);
            *(v88 + 3) = v96;
            v97 = *(v7 + 2);
            *(v7 + 2) = 0;
            *(v7 + 2) = *(v88 + 2);
            *(v88 + 2) = v97;
            v98 = *(v7 + 4);
            *(v7 + 4) = *(v88 + 4);
            *(v88 + 4) = v98;
            v99 = *(v88 + 5);
            *(v7 + 45) = *(v88 + 45);
            *(v7 + 5) = v99;
            *v88 = v278;
            v100 = *(v88 + 3);
            v101 = *(v88 + 4);
            *(v88 + 3) = *(&v279 + 1);
            *(&v279 + 1) = v100;
            v102 = *(v88 + 2);
            *(v88 + 2) = 0;
            *(v88 + 2) = v279;
            *(v88 + 4) = v280;
            *&v279 = v102;
            v280 = v101;
            v103 = *&v281[5];
            *(v88 + 5) = *v281;
            *(v88 + 45) = v103;
            re::AssetHandle::~AssetHandle(&v279);
            do
            {
              v104 = *(v7 + 108);
              v105 = *(v7 + 106);
              v7 = (v7 + 56);
              v106 = v277[10] > v105;
              v123 = v277[12] == v104;
              v107 = v277[12] > v104;
              if (v123)
              {
                v107 = v106;
              }
            }

            while (!v107);
            do
            {
              v108 = *(v88 - 4);
              v109 = *(v88 - 6);
              v88 = (v88 - 56);
              v110 = v277[10] > v109;
              v123 = v277[12] == v108;
              v111 = v277[12] > v108;
              if (v123)
              {
                v111 = v110;
              }
            }

            while (v111);
          }

          v112 = (v7 - 56);
          if (v7 - 56 != a1)
          {
            *a1 = *v112;
            v113 = *(a1 + 3);
            *(a1 + 3) = *(v7 - 4);
            *(v7 - 4) = v113;
            v114 = *(a1 + 2);
            *(a1 + 2) = 0;
            *(a1 + 2) = *(v7 - 5);
            *(v7 - 5) = v114;
            v115 = *(a1 + 4);
            *(a1 + 4) = *(v7 - 3);
            *(v7 - 3) = v115;
            v116 = *(v7 - 2);
            *(a1 + 45) = *(v7 - 11);
            *(a1 + 5) = v116;
          }

          *v112 = v272;
          v117 = *(v7 - 4);
          *(v7 - 4) = v275;
          v275 = v117;
          v118 = *(v7 - 5);
          *(v7 - 5) = 0;
          *(v7 - 5) = v274;
          v274 = v118;
          v119 = *(v7 - 3);
          *(v7 - 3) = v276;
          v276 = v119;
          v120 = *v277;
          *(v7 - 11) = *&v277[5];
          *(v7 - 2) = v120;
          re::AssetHandle::~AssetHandle(&v274);
          a4 = 0;
        }

        v28 = 0;
        v271 = *a1;
        v275 = 0;
        v276 = 0;
        v274 = 0;
        v29 = *(a1 + 4);
        v275 = *(a1 + 3);
        v274 = *(a1 + 2);
        *(a1 + 2) = 0;
        *(a1 + 3) = 0;
        v30 = v276;
        v276 = v29;
        v31 = *(a1 + 5);
        *(a1 + 4) = v30;
        *&v277[5] = *(a1 + 45);
        *v277 = v31;
        do
        {
          v32 = a1[v28 + 108];
          v33 = a1[v28 + 106] > v277[10];
          v123 = v32 == v277[12];
          v34 = v32 > v277[12];
          if (!v123)
          {
            v33 = v34;
          }

          v28 += 56;
        }

        while (v33);
        v35 = &a1[v28];
        v36 = a2;
        if (v28 == 56)
        {
          v41 = a2;
          while (v35 < v41)
          {
            v37 = v41 - 56;
            v42 = *(v41 - 4);
            v43 = *(v41 - 6) > v277[10];
            v123 = v42 == v277[12];
            v44 = v42 > v277[12];
            if (v123)
            {
              v44 = v43;
            }

            v41 = v37;
            if (v44)
            {
              goto LABEL_34;
            }
          }

          v37 = v41;
        }

        else
        {
          do
          {
            v37 = v36 - 56;
            v38 = *(v36 - 4);
            v39 = *(v36 - 6) > v277[10];
            v123 = v38 == v277[12];
            v40 = v38 > v277[12];
            if (v123)
            {
              v40 = v39;
            }

            v36 = v37;
          }

          while (!v40);
        }

LABEL_34:
        v7 = v35;
        if (v35 < v37)
        {
          v45 = v37;
          do
          {
            v278 = *v7;
            v280 = 0;
            v279 = 0uLL;
            v46 = *(v7 + 4);
            v279 = v7[1];
            *(v7 + 2) = 0;
            *(v7 + 3) = 0;
            v47 = v280;
            v280 = v46;
            *(v7 + 4) = v47;
            v48 = *(v7 + 45);
            *v281 = *(v7 + 5);
            *&v281[5] = v48;
            *v7 = *v45;
            v49 = *(v7 + 3);
            *(v7 + 3) = *(v45 + 24);
            *(v45 + 24) = v49;
            v50 = *(v7 + 2);
            *(v7 + 2) = 0;
            *(v7 + 2) = *(v45 + 16);
            *(v45 + 16) = v50;
            v51 = *(v7 + 4);
            *(v7 + 4) = *(v45 + 32);
            *(v45 + 32) = v51;
            v52 = *(v45 + 40);
            *(v7 + 45) = *(v45 + 45);
            *(v7 + 5) = v52;
            *v45 = v278;
            v53 = *(v45 + 24);
            v54 = *(v45 + 32);
            *(v45 + 24) = *(&v279 + 1);
            *(&v279 + 1) = v53;
            v55 = *(v45 + 16);
            *(v45 + 16) = 0;
            *(v45 + 16) = v279;
            *(v45 + 32) = v280;
            *&v279 = v55;
            v280 = v54;
            v56 = *&v281[5];
            *(v45 + 40) = *v281;
            *(v45 + 45) = v56;
            re::AssetHandle::~AssetHandle(&v279);
            do
            {
              v57 = *(v7 + 108);
              v58 = *(v7 + 106);
              v7 = (v7 + 56);
              v59 = v58 > v277[10];
              v123 = v57 == v277[12];
              v60 = v57 > v277[12];
              if (v123)
              {
                v60 = v59;
              }
            }

            while (v60);
            do
            {
              v61 = *(v45 - 4);
              v62 = *(v45 - 6);
              v45 -= 56;
              v63 = v62 > v277[10];
              v123 = v61 == v277[12];
              v64 = v61 > v277[12];
              if (v123)
              {
                v64 = v63;
              }
            }

            while (!v64);
          }

          while (v7 < v45);
        }

        v65 = (v7 - 56);
        if (v7 - 56 != a1)
        {
          *a1 = *v65;
          v66 = *(a1 + 3);
          *(a1 + 3) = *(v7 - 4);
          *(v7 - 4) = v66;
          v67 = *(a1 + 2);
          *(a1 + 2) = 0;
          *(a1 + 2) = *(v7 - 5);
          *(v7 - 5) = v67;
          v68 = *(a1 + 4);
          *(a1 + 4) = *(v7 - 3);
          *(v7 - 3) = v68;
          v69 = *(v7 - 2);
          *(a1 + 45) = *(v7 - 11);
          *(a1 + 5) = v69;
        }

        *v65 = v271;
        v70 = *(v7 - 4);
        *(v7 - 4) = v275;
        v275 = v70;
        v71 = *(v7 - 5);
        *(v7 - 5) = 0;
        *(v7 - 5) = v274;
        v274 = v71;
        v72 = *(v7 - 3);
        *(v7 - 3) = v276;
        v276 = v72;
        v73 = *v277;
        *(v7 - 11) = *&v277[5];
        *(v7 - 2) = v73;
        re::AssetHandle::~AssetHandle(&v274);
        if (v35 >= v37)
        {
          break;
        }

LABEL_49:
        std::__introsort<std::_ClassicAlgPolicy,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::$_1 &,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetInfo *,false>(a1, (v7 - 56), a3, a4 & 1);
        a4 = 0;
      }

      v74 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::$_1 &,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetInfo *>(a1, (v7 - 56));
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::$_1 &,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetInfo *>(v7, a2))
      {
        break;
      }

      if (!v74)
      {
        goto LABEL_49;
      }
    }

    a2 = v7 - 56;
    if (!v74)
    {
      continue;
    }

    break;
  }
}

void std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::$_1 &,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetInfo *,0>(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v6 = *(a2 + 52);
  v7 = *(a1 + 52);
  v8 = *(a2 + 50);
  v9 = v6 == v7;
  v10 = v6 > v7;
  if (v9)
  {
    v10 = v8 > *(a1 + 50);
  }

  v11 = *(a3 + 52);
  v12 = *(a3 + 50) > v8;
  v9 = v11 == v6;
  v13 = v11 > v6;
  if (v9)
  {
    v13 = v12;
  }

  if (v10)
  {
    if (v13)
    {
      v14 = *a1;
      v15 = a1[1];
      a1[1] = 0uLL;
      v16 = *(a1 + 4);
      v17 = *(a1 + 5);
      *(a1 + 4) = 0;
      v18 = *(a1 + 45);
      *a1 = *a3;
      *(a1 + 3) = *(a3 + 3);
      *(a3 + 3) = 0;
      v19 = *(a1 + 2);
      *(a1 + 2) = 0;
      *(a1 + 2) = *(a3 + 2);
      *(a3 + 2) = v19;
      v20 = *(a1 + 4);
      *(a1 + 4) = *(a3 + 4);
      *(a3 + 4) = v20;
      v21 = *(a3 + 45);
      *(a1 + 5) = *(a3 + 5);
      *(a1 + 45) = v21;
      v65 = a3[1];
      v66 = *(a3 + 4);
      v67[0] = v17;
      *(v67 + 5) = v18;
      *a3 = v14;
      a3[1] = v15;
      *(a3 + 45) = v18;
      v22 = v67[0];
      *(a3 + 4) = v16;
      *(a3 + 5) = v22;
LABEL_17:
      re::AssetHandle::~AssetHandle(&v65);
      return;
    }

    v44 = *a1;
    v45 = a1[1];
    a1[1] = 0uLL;
    v46 = *(a1 + 4);
    v47 = *(a1 + 5);
    *(a1 + 4) = 0;
    v48 = *(a1 + 45);
    *a1 = *a2;
    *(a1 + 3) = *(a2 + 3);
    *(a2 + 3) = 0;
    v49 = *(a1 + 2);
    *(a1 + 2) = 0;
    *(a1 + 2) = *(a2 + 2);
    *(a2 + 2) = v49;
    v50 = *(a1 + 4);
    *(a1 + 4) = *(a2 + 4);
    *(a2 + 4) = v50;
    v51 = a2 + 5;
    v52 = *(a2 + 45);
    *(a1 + 5) = *(a2 + 5);
    *(a1 + 45) = v52;
    v65 = a2[1];
    v66 = *(a2 + 4);
    v67[0] = v47;
    *(v67 + 5) = v48;
    *a2 = v44;
    a2[1] = v45;
    *(a2 + 4) = v46;
    *(a2 + 5) = v67[0];
    *(a2 + 45) = v48;
    re::AssetHandle::~AssetHandle(&v65);
    v53 = *(a3 + 52);
    v54 = *(a2 + 52);
    v9 = v53 == v54;
    v55 = v53 > v54;
    if (v9)
    {
      v55 = *(a3 + 50) > *(a2 + 50);
    }

    if (v55)
    {
      v56 = *a2;
      v57 = a2[1];
      *(a2 + 2) = 0;
      *(a2 + 3) = 0;
      v58 = *(a2 + 4);
      *(a2 + 4) = 0;
      v59 = *v51;
      v60 = *(a2 + 45);
      *a2 = *a3;
      *(a2 + 3) = *(a3 + 3);
      *(a3 + 3) = 0;
      v61 = *(a2 + 2);
      *(a2 + 2) = 0;
      *(a2 + 2) = *(a3 + 2);
      *(a3 + 2) = v61;
      v62 = *(a2 + 4);
      *(a2 + 4) = *(a3 + 4);
      *(a3 + 4) = v62;
      v63 = *(a3 + 45);
      *v51 = *(a3 + 5);
      *(a2 + 45) = v63;
      v65 = a3[1];
      v66 = *(a3 + 4);
      v67[0] = v59;
      *(v67 + 5) = v60;
      *a3 = v56;
      a3[1] = v57;
      *(a3 + 45) = v60;
      v64 = v67[0];
      *(a3 + 4) = v58;
      *(a3 + 5) = v64;
      goto LABEL_17;
    }
  }

  else if (v13)
  {
    v23 = *a2;
    v24 = a2[1];
    a2[1] = 0uLL;
    v25 = *(a2 + 4);
    v27 = a2 + 5;
    v26 = *(a2 + 5);
    *(a2 + 4) = 0;
    v28 = *(a2 + 45);
    *a2 = *a3;
    *(a2 + 3) = *(a3 + 3);
    *(a3 + 3) = 0;
    v29 = *(a2 + 2);
    *(a2 + 2) = 0;
    *(a2 + 2) = *(a3 + 2);
    *(a3 + 2) = v29;
    v30 = *(a2 + 4);
    *(a2 + 4) = *(a3 + 4);
    *(a3 + 4) = v30;
    v31 = *(a3 + 45);
    *(a2 + 5) = *(a3 + 5);
    *(a2 + 45) = v31;
    v65 = a3[1];
    v66 = *(a3 + 4);
    v67[0] = v26;
    *(v67 + 5) = v28;
    *a3 = v23;
    a3[1] = v24;
    v32 = v67[0];
    *(a3 + 4) = v25;
    *(a3 + 5) = v32;
    *(a3 + 45) = v28;
    re::AssetHandle::~AssetHandle(&v65);
    v33 = *(a2 + 52);
    v34 = *(a1 + 52);
    v9 = v33 == v34;
    v35 = v33 > v34;
    if (v9)
    {
      v35 = *(a2 + 50) > *(a1 + 50);
    }

    if (v35)
    {
      v36 = *a1;
      v37 = a1[1];
      *(a1 + 2) = 0;
      *(a1 + 3) = 0;
      v38 = *(a1 + 4);
      v39 = *(a1 + 5);
      *(a1 + 4) = 0;
      v40 = *(a1 + 45);
      *a1 = *a2;
      *(a1 + 3) = *(a2 + 3);
      *(a2 + 3) = 0;
      v41 = *(a1 + 2);
      *(a1 + 2) = 0;
      *(a1 + 2) = *(a2 + 2);
      *(a2 + 2) = v41;
      v42 = *(a1 + 4);
      *(a1 + 4) = *(a2 + 4);
      *(a2 + 4) = v42;
      v43 = *(a2 + 45);
      *(a1 + 5) = *v27;
      *(a1 + 45) = v43;
      v65 = a2[1];
      v66 = *(a2 + 4);
      v67[0] = v39;
      *(v67 + 5) = v40;
      *a2 = v36;
      a2[1] = v37;
      *(a2 + 4) = v38;
      *(a2 + 45) = v40;
      *v27 = v67[0];
      goto LABEL_17;
    }
  }
}

__n128 std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::$_1 &,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetInfo *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::$_1 &,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetInfo *,0>(a1, a2, a3);
  v9 = *(a4 + 52);
  v10 = *(a3 + 52);
  v11 = v9 == v10;
  v12 = v9 > v10;
  if (v11)
  {
    v12 = *(a4 + 50) > *(a3 + 50);
  }

  if (v12)
  {
    v13 = *a3;
    v14 = *(a3 + 16);
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    v15 = *(a3 + 32);
    v17 = (a3 + 40);
    v16 = *(a3 + 40);
    *(a3 + 32) = 0;
    v18 = *(a3 + 45);
    *a3 = *a4;
    *(a3 + 24) = *(a4 + 24);
    *(a4 + 24) = 0;
    v19 = *(a3 + 16);
    *(a3 + 16) = 0;
    *(a3 + 16) = *(a4 + 16);
    *(a4 + 16) = v19;
    v20 = *(a3 + 32);
    *(a3 + 32) = *(a4 + 32);
    *(a4 + 32) = v20;
    v21 = *(a4 + 45);
    *(a3 + 40) = *(a4 + 40);
    *(a3 + 45) = v21;
    v46 = *(a4 + 16);
    v47 = *(a4 + 32);
    v48[0] = v16;
    *(v48 + 5) = v18;
    *a4 = v13;
    *(a4 + 16) = v14;
    v22 = v48[0];
    *(a4 + 32) = v15;
    *(a4 + 40) = v22;
    *(a4 + 45) = v18;
    re::AssetHandle::~AssetHandle(&v46);
    v23 = *(a3 + 52);
    v24 = *(a2 + 52);
    v11 = v23 == v24;
    v25 = v23 > v24;
    if (v11)
    {
      v25 = *(a3 + 50) > *(a2 + 50);
    }

    if (v25)
    {
      v26 = *a2;
      v27 = *(a2 + 16);
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      v28 = *(a2 + 32);
      *(a2 + 32) = 0;
      v30 = (a2 + 40);
      v29 = *(a2 + 40);
      v31 = *(a2 + 45);
      *a2 = *a3;
      *(a2 + 24) = *(a3 + 24);
      *(a3 + 24) = 0;
      v32 = *(a2 + 16);
      *(a2 + 16) = 0;
      *(a2 + 16) = *(a3 + 16);
      *(a3 + 16) = v32;
      v33 = *(a2 + 32);
      *(a2 + 32) = *(a3 + 32);
      *(a3 + 32) = v33;
      v34 = *(a3 + 45);
      *(a2 + 40) = *v17;
      *(a2 + 45) = v34;
      v47 = *(a3 + 32);
      v48[0] = v29;
      v46 = *(a3 + 16);
      *(v48 + 5) = v31;
      *a3 = v26;
      *(a3 + 16) = v27;
      *(a3 + 32) = v28;
      *v17 = v48[0];
      *(a3 + 45) = v31;
      re::AssetHandle::~AssetHandle(&v46);
      v35 = *(a2 + 52);
      v36 = *(a1 + 52);
      v11 = v35 == v36;
      v37 = v35 > v36;
      if (v11)
      {
        v37 = *(a2 + 50) > *(a1 + 50);
      }

      if (v37)
      {
        v38 = *a1;
        v39 = *(a1 + 16);
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        v40 = *(a1 + 32);
        v41 = *(a1 + 40);
        *(a1 + 32) = 0;
        v42 = *(a1 + 45);
        *a1 = *a2;
        *(a1 + 24) = *(a2 + 24);
        *(a2 + 24) = 0;
        v43 = *(a1 + 16);
        *(a1 + 16) = 0;
        *(a1 + 16) = *(a2 + 16);
        *(a2 + 16) = v43;
        v44 = *(a1 + 32);
        *(a1 + 32) = *(a2 + 32);
        *(a2 + 32) = v44;
        v45 = *(a2 + 45);
        *(a1 + 40) = *v30;
        *(a1 + 45) = v45;
        v46 = *(a2 + 16);
        v47 = *(a2 + 32);
        v48[0] = v41;
        *(v48 + 5) = v42;
        *a2 = v38;
        *(a2 + 16) = v39;
        *(a2 + 32) = v40;
        *(a2 + 45) = v42;
        *v30 = v48[0];
        re::AssetHandle::~AssetHandle(&v46);
      }
    }
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::$_1 &,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetInfo *,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  result.n128_u64[0] = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::$_1 &,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetInfo *,0>(a1, a2, a3, a4).n128_u64[0];
  v11 = *(a5 + 52);
  v12 = *(a4 + 52);
  v13 = v11 == v12;
  v14 = v11 > v12;
  if (v13)
  {
    v14 = *(a5 + 50) > *(a4 + 50);
  }

  if (v14)
  {
    v15 = *a4;
    v16 = a4[1];
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v17 = *(a4 + 4);
    v19 = a4 + 5;
    v18 = *(a4 + 5);
    *(a4 + 4) = 0;
    v20 = *(a4 + 45);
    *a4 = *a5;
    *(a4 + 3) = *(a5 + 3);
    *(a5 + 3) = 0;
    v21 = *(a4 + 2);
    *(a4 + 2) = 0;
    *(a4 + 2) = *(a5 + 2);
    *(a5 + 2) = v21;
    v22 = *(a4 + 4);
    *(a4 + 4) = *(a5 + 4);
    *(a5 + 4) = v22;
    v23 = *(a5 + 45);
    *(a4 + 5) = *(a5 + 5);
    *(a4 + 45) = v23;
    v60 = a5[1];
    v61 = *(a5 + 4);
    v62[0] = v18;
    *(v62 + 5) = v20;
    *a5 = v15;
    a5[1] = v16;
    v24 = v62[0];
    *(a5 + 4) = v17;
    *(a5 + 5) = v24;
    *(a5 + 45) = v20;
    re::AssetHandle::~AssetHandle(&v60);
    v25 = *(a4 + 52);
    v26 = *(a3 + 52);
    v13 = v25 == v26;
    v27 = v25 > v26;
    if (v13)
    {
      v27 = *(a4 + 50) > *(a3 + 50);
    }

    if (v27)
    {
      v28 = *a3;
      v29 = a3[1];
      *(a3 + 2) = 0;
      *(a3 + 3) = 0;
      v30 = *(a3 + 4);
      *(a3 + 4) = 0;
      v32 = a3 + 5;
      v31 = *(a3 + 5);
      v33 = *(a3 + 45);
      *a3 = *a4;
      *(a3 + 3) = *(a4 + 3);
      *(a4 + 3) = 0;
      v34 = *(a3 + 2);
      *(a3 + 2) = 0;
      *(a3 + 2) = *(a4 + 2);
      *(a4 + 2) = v34;
      v35 = *(a3 + 4);
      *(a3 + 4) = *(a4 + 4);
      *(a4 + 4) = v35;
      v36 = *(a4 + 45);
      *(a3 + 5) = *v19;
      *(a3 + 45) = v36;
      v61 = *(a4 + 4);
      v62[0] = v31;
      v60 = a4[1];
      *(v62 + 5) = v33;
      *a4 = v28;
      a4[1] = v29;
      *(a4 + 4) = v30;
      *v19 = v62[0];
      *(a4 + 45) = v33;
      re::AssetHandle::~AssetHandle(&v60);
      v37 = *(a3 + 52);
      v38 = *(a2 + 52);
      v13 = v37 == v38;
      v39 = v37 > v38;
      if (v13)
      {
        v39 = *(a3 + 50) > *(a2 + 50);
      }

      if (v39)
      {
        v40 = *a2;
        v41 = a2[1];
        *(a2 + 2) = 0;
        *(a2 + 3) = 0;
        v42 = *(a2 + 4);
        v44 = a2 + 5;
        v43 = *(a2 + 5);
        *(a2 + 4) = 0;
        v45 = *(a2 + 45);
        *a2 = *a3;
        *(a2 + 3) = *(a3 + 3);
        *(a3 + 3) = 0;
        v46 = *(a2 + 2);
        *(a2 + 2) = 0;
        *(a2 + 2) = *(a3 + 2);
        *(a3 + 2) = v46;
        v47 = *(a2 + 4);
        *(a2 + 4) = *(a3 + 4);
        *(a3 + 4) = v47;
        v48 = *(a3 + 45);
        *(a2 + 5) = *v32;
        *(a2 + 45) = v48;
        v60 = a3[1];
        v61 = *(a3 + 4);
        v62[0] = v43;
        *(v62 + 5) = v45;
        *a3 = v40;
        a3[1] = v41;
        *(a3 + 4) = v42;
        *v32 = v62[0];
        *(a3 + 45) = v45;
        re::AssetHandle::~AssetHandle(&v60);
        v49 = *(a2 + 52);
        v50 = *(a1 + 52);
        v13 = v49 == v50;
        v51 = v49 > v50;
        if (v13)
        {
          v51 = *(a2 + 50) > *(a1 + 50);
        }

        if (v51)
        {
          v52 = *a1;
          v53 = a1[1];
          *(a1 + 2) = 0;
          *(a1 + 3) = 0;
          v54 = *(a1 + 4);
          v55 = *(a1 + 5);
          *(a1 + 4) = 0;
          v56 = *(a1 + 45);
          *a1 = *a2;
          *(a1 + 3) = *(a2 + 3);
          *(a2 + 3) = 0;
          v57 = *(a1 + 2);
          *(a1 + 2) = 0;
          *(a1 + 2) = *(a2 + 2);
          *(a2 + 2) = v57;
          v58 = *(a1 + 4);
          *(a1 + 4) = *(a2 + 4);
          *(a2 + 4) = v58;
          v59 = *(a2 + 45);
          *(a1 + 5) = *v44;
          *(a1 + 45) = v59;
          v60 = a2[1];
          v61 = *(a2 + 4);
          v62[0] = v55;
          *(v62 + 5) = v56;
          *a2 = v52;
          a2[1] = v53;
          *(a2 + 4) = v54;
          *(a2 + 45) = v56;
          *v44 = v62[0];
          re::AssetHandle::~AssetHandle(&v60);
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::$_1 &,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetInfo *>(uint64_t a1, __int128 *a2)
{
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::$_1 &,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetInfo *,0>(a1, (a1 + 56), (a2 - 56));
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::$_1 &,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetInfo *,0>(a1, a1 + 56, a1 + 112, a2 - 56);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::$_1 &,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetInfo *,0>(a1, (a1 + 56), (a1 + 112), (a1 + 168), (a2 - 56));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 4);
      v6 = *(a1 + 52);
      v7 = v5 == v6;
      v8 = v5 > v6;
      if (v7)
      {
        v8 = *(a2 - 6) > *(a1 + 50);
      }

      if (v8)
      {
        v9 = *a1;
        v10 = *(a1 + 16);
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        v11 = *(a1 + 32);
        v12 = *(a1 + 40);
        *(a1 + 32) = 0;
        v13 = *(a1 + 45);
        *a1 = *(a2 - 56);
        *(a1 + 24) = *(a2 - 4);
        *(a2 - 4) = 0;
        v14 = *(a1 + 16);
        *(a1 + 16) = 0;
        *(a1 + 16) = *(a2 - 5);
        *(a2 - 5) = v14;
        v15 = *(a1 + 32);
        *(a1 + 32) = *(a2 - 3);
        *(a2 - 3) = v15;
        v16 = *(a2 - 11);
        *(a1 + 40) = *(a2 - 2);
        *(a1 + 45) = v16;
        v41 = *(a2 - 40);
        *(a2 - 56) = v9;
        v42 = *(a2 - 3);
        *v43 = v12;
        *&v43[5] = v13;
        *(a2 - 40) = v10;
        *(a2 - 11) = v13;
        v17 = *v43;
        *(a2 - 3) = v11;
        *(a2 - 2) = v17;
        re::AssetHandle::~AssetHandle(&v41);
      }

      return 1;
    }
  }

  v18 = (a1 + 112);
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::$_1 &,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetInfo *,0>(a1, (a1 + 56), (a1 + 112));
  v19 = (a1 + 168);
  if ((a1 + 168) != a2)
  {
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = *(v19 + 52);
      v23 = *(v18 + 52);
      v7 = v22 == v23;
      v24 = v22 > v23;
      if (v7)
      {
        v24 = *(v19 + 50) > *(v18 + 50);
      }

      if (v24)
      {
        v40 = *v19;
        v41 = v19[1];
        *(v19 + 2) = 0;
        *(v19 + 3) = 0;
        v25 = *(v19 + 5);
        v42 = *(v19 + 4);
        *(v19 + 4) = 0;
        *v43 = v25;
        v26 = v20;
        *&v43[5] = *(v19 + 45);
        while (1)
        {
          v27 = a1 + v26;
          v28 = *(a1 + v26 + 144);
          v29 = *(a1 + v26 + 152);
          *(v27 + 144) = *(a1 + v26 + 200);
          *(v27 + 213) = *(a1 + v26 + 157);
          v30 = *(a1 + v26 + 128);
          *(v27 + 168) = *(a1 + v26 + 112);
          v31 = *(a1 + v26 + 184);
          *(v27 + 184) = v30;
          *(v27 + 128) = v31;
          *(v27 + 200) = v28;
          *(v27 + 208) = v29;
          if (v26 == -112)
          {
            break;
          }

          v32 = *(v27 + 108);
          v33 = v43[12] > v32;
          if (v43[12] == v32)
          {
            v33 = v43[10] > *(v27 + 106);
          }

          v26 -= 56;
          if (!v33)
          {
            v34 = a1 + v26 + 168;
            goto LABEL_25;
          }
        }

        v34 = a1;
LABEL_25:
        v35 = *(v34 + 16);
        v36 = v41;
        *v34 = v40;
        *(v34 + 16) = v36;
        v41 = v35;
        v37 = *(v34 + 32);
        *(v34 + 32) = v42;
        v42 = v37;
        *(v27 + 152) = *v43;
        ++v21;
        *(v27 + 157) = *&v43[5];
        if (v21 == 8)
        {
          v38 = (v19 + 56) == a2;
          re::AssetHandle::~AssetHandle(&v41);
          return v38;
        }

        re::AssetHandle::~AssetHandle(&v41);
      }

      v18 = v19;
      v20 += 56;
      v19 = (v19 + 56);
    }

    while (v19 != a2);
  }

  return 1;
}

uint64_t re::HashTable<re::VideoAsset const*,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetRenderInfo,re::Hash<re::VideoAsset const*>,re::EqualTo<re::VideoAsset const*>,true,false>::findEntry<re::VideoAsset const*>(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
  v4 = v3 ^ (v3 >> 31);
  v5 = *a2;
  LODWORD(v6) = 0x7FFFFFFF;
  if (!*a2)
  {
    v7 = 0x7FFFFFFF;
    goto LABEL_9;
  }

  v5 = v4 % *(a2 + 24);
  v7 = *(*(a2 + 8) + 4 * v5);
  if (v7 == 0x7FFFFFFF)
  {
LABEL_8:
    v7 = 0x7FFFFFFF;
    goto LABEL_9;
  }

  v8 = *(a2 + 16);
  if (*(v8 + 56 * v7 + 8) == a3)
  {
    LODWORD(v6) = *(*(a2 + 8) + 4 * v5);
    goto LABEL_8;
  }

  v6 = *(v8 + 56 * v7) & 0x7FFFFFFF;
  if (v6 == 0x7FFFFFFF)
  {
    LODWORD(v6) = 0x7FFFFFFF;
  }

  else if (*(v8 + 56 * v6 + 8) != a3)
  {
    LODWORD(v9) = *(v8 + 56 * v7) & 0x7FFFFFFF;
    while (1)
    {
      v7 = v9;
      v9 = *(v8 + 56 * v6) & 0x7FFFFFFF;
      LODWORD(v6) = 0x7FFFFFFF;
      if (v9 == 0x7FFFFFFF)
      {
        break;
      }

      v6 = v9;
      if (*(v8 + 56 * v9 + 8) == a3)
      {
        LODWORD(v6) = v9;
        break;
      }
    }
  }

LABEL_9:
  *result = v4;
  *(result + 8) = v5;
  *(result + 12) = v6;
  *(result + 16) = v7;
  return result;
}

uint64_t re::HashTable<re::VideoAsset const*,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetRenderInfo,re::Hash<re::VideoAsset const*>,re::EqualTo<re::VideoAsset const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v27, v9, v8);
          v11 = *v27;
          *v27 = *a1;
          *a1 = v11;
          v12 = *&v27[16];
          v13 = *(a1 + 16);
          *&v27[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v27[24];
          *&v27[24] = *(a1 + 24);
          v14 = *&v27[32];
          *(a1 + 24) = v15;
          ++*&v27[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 24);
            do
            {
              if ((*(v17 - 3) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::VideoAsset const*,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetRenderInfo,re::Hash<re::VideoAsset const*>,re::EqualTo<re::VideoAsset const*>,true,false>::allocEntry(a1, v17[3] % *(a1 + 24), v17[3]);
                *(v18 + 8) = *(v17 - 2);
                *(v18 + 16) = *(v17 - 8);
                *(v18 + 32) = 0;
                *(v18 + 40) = 0;
                *(v18 + 24) = 0;
                *(v18 + 32) = v17[1];
                v17[1] = 0;
                v19 = *(v18 + 24);
                *(v18 + 24) = 0;
                *(v18 + 24) = *v17;
                *v17 = v19;
                v20 = *(v18 + 40);
                *(v18 + 40) = v17[2];
                v17[2] = v20;
              }

              v17 += 7;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::VideoAsset const*,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoAssetRenderInfo,re::Hash<re::VideoAsset const*>,re::EqualTo<re::VideoAsset const*>,true,false>::~HashTable(v27);
        }
      }

      else
      {
        if (v8)
        {
          v23 = 2 * v7;
        }

        else
        {
          v23 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 56 * v5);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 56 * v5);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = v21 + 56 * v5;
  *v24 = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *v24 = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v5;
  *(v24 + 48) = a3;
  ++*(a1 + 28);
  return v21 + 56 * v5;
}

uint64_t re::HashTable<unsigned long long,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoColorInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
  v4 = v3 ^ (v3 >> 31);
  v5 = *a2;
  LODWORD(v6) = 0x7FFFFFFF;
  if (!*a2)
  {
    v7 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v5 = v4 % *(a2 + 24);
  v7 = *(*(a2 + 8) + 4 * v5);
  if (v7 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v8 = *(a2 + 16);
  if (*(v8 + 80 * v7 + 8) == a3)
  {
    LODWORD(v6) = *(*(a2 + 8) + 4 * v5);
LABEL_5:
    v7 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v6 = *(v8 + 80 * v7) & 0x7FFFFFFF;
  if (v6 == 0x7FFFFFFF)
  {
    LODWORD(v6) = 0x7FFFFFFF;
  }

  else if (*(v8 + 80 * v6 + 8) != a3)
  {
    LODWORD(v9) = *(v8 + 80 * v7) & 0x7FFFFFFF;
    while (1)
    {
      v7 = v9;
      v9 = *(v8 + 80 * v6) & 0x7FFFFFFF;
      LODWORD(v6) = 0x7FFFFFFF;
      if (v9 == 0x7FFFFFFF)
      {
        break;
      }

      v6 = v9;
      if (*(v8 + 80 * v9 + 8) == a3)
      {
        LODWORD(v6) = v9;
        break;
      }
    }
  }

LABEL_7:
  *result = v4;
  *(result + 8) = v5;
  *(result + 12) = v6;
  *(result + 16) = v7;
  return result;
}

uint64_t re::HashTable<unsigned long long,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoColorInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v27, v9, v8);
          v11 = *v27;
          *v27 = *a1;
          *a1 = v11;
          v12 = *&v27[16];
          v13 = *(a1 + 16);
          *&v27[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v27[24];
          *&v27[24] = *(a1 + 24);
          v14 = *&v27[32];
          *(a1 + 24) = v15;
          ++*&v27[40];
          v16 = v14;
          if (v14)
          {
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = re::HashTable<unsigned long long,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoColorInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v13 + 72) % *(a1 + 24), *(v13 + 72));
                *(v17 + 8) = *(v13 + 8);
                v18 = *(v13 + 16);
                v19 = *(v13 + 32);
                v20 = *(v13 + 48);
                *(v17 + 64) = *(v13 + 64);
                *(v17 + 32) = v19;
                *(v17 + 48) = v20;
                *(v17 + 16) = v18;
              }

              v13 += 80;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::ecs2::VideoComponentSystem::updateInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::VideoColorInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~HashTable(v27);
        }
      }

      else
      {
        if (v8)
        {
          v23 = 2 * v7;
        }

        else
        {
          v23 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 80 * v5);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 80 * v5);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = v21 + 80 * v5;
  *v24 = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *v24 = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v5;
  *(v24 + 72) = a3;
  ++*(a1 + 28);
  return v21 + 80 * v5;
}

void *introspect_REVisibilityMode(int a1, const re::IntrospectionBase *a2)
{
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "Always";
    introspect_REVisibilityMode(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = "Never";
    qword_1EE1C7C10 = v12;
    v13 = re::introspectionAllocator();
    v14 = (*(*v13 + 32))(v13, 24, 8);
    *v14 = 1;
    *(v14 + 8) = 2;
    *(v14 + 16) = "VisibleOnRemote";
    qword_1EE1C7C18 = v14;
  }

  {
    v15 = re::IntrospectionBasic::IntrospectionBasic(&introspect_REVisibilityMode(BOOL)::info, "REVisibilityMode", 1, 1, 1, 1);
    *v15 = &unk_1F5D0C658;
    *(v15 + 8) = &introspect_REVisibilityMode(BOOL)::enumTable;
    *(v15 + 4) = 9;
  }

  if (a1)
  {
    if (introspect_REVisibilityMode(BOOL)::isInitialized)
    {
      return &introspect_REVisibilityMode(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v17);
    v3 = introspect_REVisibilityMode(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v17);
    if (v3)
    {
      return &introspect_REVisibilityMode(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (introspect_REVisibilityMode(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &introspect_REVisibilityMode(BOOL)::info;
    }
  }

  introspect_REVisibilityMode(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&introspect_REVisibilityMode(BOOL)::info, a2);
  v16[0] = 0x94DC8454B42571D0;
  v16[1] = "REVisibilityMode";
  xmmword_1EE1C7BE0 = v17;
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  if ((a1 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &introspect_REVisibilityMode(BOOL)::info;
}

BOOL re::ecs2::SubdivisionSurfaceSystemComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, void *a3, size_t a4, uint64_t a5)
{
  v35 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v34, a5, 0);
  v22 = a4;
  v23 = *&v34[0];
  v24 = DWORD2(v34[0]);
  if (*&v34[0] != a5 || DWORD2(v34[0]) != 0xFFFFFFFFLL)
  {
    do
    {
      v9 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v22);
      v10 = *(v9[2] + 192);
      if (v9[30])
      {
        v11 = v10 == 0;
      }

      else
      {
        v11 = 1;
      }

      v12 = a3 + 4;
      if (!v11)
      {
        v12 = a3 + 4;
        if (*(v10 + 40))
        {
          v13 = v9[46];
          if (v13 <= 7)
          {
            v25 = 0;
            memset(v34, 0, sizeof(v34));
            v19 = MEMORY[0x1E69E9C10];
            v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v26 = 136315906;
            v27 = "operator[]";
            v28 = 1024;
            if (v20)
            {
              v21 = 3;
            }

            else
            {
              v21 = 2;
            }

            v29 = 476;
            v30 = 2048;
            v31 = 7;
            v32 = 2048;
            v33 = v13;
            _os_log_send_and_compose_impl(v21, &v25, v34, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v22, v23);
            _os_crash_msg();
            __break(1u);
          }

          if (*(v9[47] + 680))
          {
            v12 = a3 + 5;
          }

          else
          {
            v12 = a3 + 4;
          }
        }
      }

      v14 = v22;
      v15 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v23);
      re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v14, v15, *v12);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v23);
    }

    while (v23 != a5 || v24 != 0xFFFF || HIWORD(v24) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

BOOL re::ecs2::SubdivisionSurfaceSystemComponentStateImpl::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v22, a5, 0);
  v8 = v22;
  v9 = v23;
  v10 = v23;
  v22 = a4;
  v23 = v8;
  v24 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = *(*(re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v22) + 16) + 192);
      if (re::ecs2::MeshComponentHelper::areRequiredAssetsLoaded(v12, v13))
      {
        v14 = *(v12 + 5);
        if (v14)
        {
          v15 = atomic_load((v14 + 896));
          if (v15 == 3)
          {
            v16 = 32;
          }

          else
          {
            v16 = 48;
          }
        }

        else
        {
          v16 = 48;
        }

        v17 = v22;
        v18 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v23);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v17, v18, *(a3 + v16));
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v23);
    }

    while (v23 != a5 || v24 != 0xFFFF || HIWORD(v24) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

void *re::ecs2::SubdivisionSurfaceSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v5);
  re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::update((a1 + 296), v6, 0);
  return re::ProfilerTimeGuard<(re::ProfilerStatistic)125>::end(v5);
}

uint64_t re::ecs2::SubdivisionSurfaceSystem::willRemoveSceneFromECSService(re::ecs2::SubdivisionSurfaceSystem *this, re::ecs2::Scene *a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 44, &v15);
  if (result != -1)
  {
    v4 = *(this + 45) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 416, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 464, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 296, *(v4 + 8));
    if (*v5)
    {
      v6 = v5;
      *v5 = 0;
      v7 = v5 + 1;
      v8 = *(v5[1] + 288);
      if (v8)
      {
        v9 = v5[12];
        if (v9)
        {
          for (i = 0; i != v9; ++i)
          {
            v11 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v6 + 7), i);
            re::EventBus::unsubscribe(v8, *v11, v11[1]);
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v6 + 7));
      v12 = 0;
      v13 = v6 + 3;
      do
      {
        v14 = v6[2];
        if (*v14)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v14, v13[v12]);
        }

        v13[v12++] = -1;
      }

      while (v12 != 4);
      *v7 = 0;
      v7[1] = 0;
    }

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 352, &v15);
  }

  return result;
}

void *re::ecs2::allocInfo_SubdivisionSurfaceSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_374, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_374))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B3008, "SubdivisionSurfaceSystem");
    __cxa_guard_release(&_MergedGlobals_374);
  }

  return &unk_1EE1B3008;
}

void re::ecs2::initInfo_SubdivisionSurfaceSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xCEBCE26D071EC6DELL;
  v8[1] = "SubdivisionSurfaceSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x21800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_SubdivisionSurfaceSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SubdivisionSurfaceSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SubdivisionSurfaceSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::SubdivisionSurfaceSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::SubdivisionSurfaceSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SubdivisionSurfaceSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SubdivisionSurfaceSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::internal::defaultDestruct<re::ecs2::SubdivisionSurfaceSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 37);
  a3[32] = &unk_1F5CFDCA8;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 34);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::SubdivisionSurfaceSystem>(uint64_t *a1)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 37);
  a1[32] = &unk_1F5CFDCA8;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 34);

  re::ecs2::System::~System(a1);
}

void re::ecs2::SubdivisionSurfaceSystem::~SubdivisionSurfaceSystem(re::ecs2::SubdivisionSurfaceSystem *this)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 37);
  *(this + 32) = &unk_1F5CFDCA8;
  re::FixedArray<CoreIKTransform>::deinit(this + 34);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 37);
  *(this + 32) = &unk_1F5CFDCA8;
  re::FixedArray<CoreIKTransform>::deinit(this + 34);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionInfo<re::DynamicArray<re::AcousticAbsorptionMaterial>>::get(uint64_t a1, BOOL a2, uint64_t a3, uint64_t a4, uint64_t a5, BOOL a6)
{
  if ((atomic_load_explicit(&qword_1EE1B30B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B30B8))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1B3100);
    qword_1EE1B3100 = &unk_1F5CFDEE0;
    __cxa_guard_release(&qword_1EE1B30B8);
  }

  if ((_MergedGlobals_375 & 1) == 0)
  {
    v6 = re::introspect_AcousticAbsorptionMaterial(1, a2, a3, a4, a5, a6);
    if ((_MergedGlobals_375 & 1) == 0)
    {
      v7 = v6;
      _MergedGlobals_375 = 1;
      v8 = *(v6 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B3100, 0);
      qword_1EE1B3110 = 0x2800000003;
      dword_1EE1B3118 = v8;
      word_1EE1B311C = 0;
      *&xmmword_1EE1B3120 = 0;
      *(&xmmword_1EE1B3120 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B3130 = v7;
      unk_1EE1B3138 = 0;
      qword_1EE1B3100 = &unk_1F5CFDEE0;
      re::IntrospectionRegistry::add(v9, v10);
      re::getPrettyTypeName(&v18, &qword_1EE1B3100);
      if (v19)
      {
        v11 = *&v20[7];
      }

      else
      {
        v11 = v20;
      }

      if (v18 && (v19 & 1) != 0)
      {
        (*(*v18 + 40))();
      }

      v15 = *(v7 + 32);
      if (v22)
      {
        v14 = v22;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v21);
        re::TypeBuilder::TypeBuilder(&v18, v21);
        v17 = v15;
        re::TypeBuilder::beginListType(&v18, &v16, 1, 0x28uLL, 8uLL, &v17);
        re::TypeBuilder::setConstructor(&v18, re::TypeBuilderHelper::registerDynamicArray<re::AcousticAbsorptionMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v18, re::TypeBuilderHelper::registerDynamicArray<re::AcousticAbsorptionMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v18, 1);
        re::TypeBuilder::setListAccessors(&v18, re::TypeBuilderHelper::registerDynamicArray<re::AcousticAbsorptionMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AcousticAbsorptionMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v18, re::TypeBuilderHelper::registerDynamicArray<re::AcousticAbsorptionMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v18, re::TypeBuilderHelper::registerDynamicArray<re::AcousticAbsorptionMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AcousticAbsorptionMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AcousticAbsorptionMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v18, v13);
        re::StackScratchAllocator::~StackScratchAllocator(v21);
      }

      xmmword_1EE1B3120 = v14;
      if (v16)
      {
        if (v16)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::AcousticScatteringMaterial>>::get(uint64_t a1, BOOL a2, uint64_t a3, uint64_t a4, uint64_t a5, BOOL a6)
{
  if ((atomic_load_explicit(&qword_1EE1B30C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B30C0))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1B3140);
    qword_1EE1B3140 = &unk_1F5CFDF78;
    __cxa_guard_release(&qword_1EE1B30C0);
  }

  if ((byte_1EE1B3099 & 1) == 0)
  {
    v6 = re::introspect_AcousticScatteringMaterial(1, a2, a3, a4, a5, a6);
    if ((byte_1EE1B3099 & 1) == 0)
    {
      v7 = v6;
      byte_1EE1B3099 = 1;
      v8 = *(v6 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B3140, 0);
      *&algn_1EE1B3148[8] = 0x2800000003;
      *&algn_1EE1B3148[16] = v8;
      *&algn_1EE1B3148[20] = 0;
      *&xmmword_1EE1B3160 = 0;
      *(&xmmword_1EE1B3160 + 1) = 0xFFFFFFFFLL;
      *algn_1EE1B3170 = v7;
      *&algn_1EE1B3170[8] = 0;
      qword_1EE1B3140 = &unk_1F5CFDF78;
      re::IntrospectionRegistry::add(v9, v10);
      re::getPrettyTypeName(&v18, &qword_1EE1B3140);
      if (v19)
      {
        v11 = *&v20[7];
      }

      else
      {
        v11 = v20;
      }

      if (v18 && (v19 & 1) != 0)
      {
        (*(*v18 + 40))();
      }

      v15 = *(v7 + 32);
      if (v22)
      {
        v14 = v22;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v21);
        re::TypeBuilder::TypeBuilder(&v18, v21);
        v17 = v15;
        re::TypeBuilder::beginListType(&v18, &v16, 1, 0x28uLL, 8uLL, &v17);
        re::TypeBuilder::setConstructor(&v18, re::TypeBuilderHelper::registerDynamicArray<re::AcousticScatteringMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v18, re::TypeBuilderHelper::registerDynamicArray<re::AcousticScatteringMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v18, 1);
        re::TypeBuilder::setListAccessors(&v18, re::TypeBuilderHelper::registerDynamicArray<re::AcousticScatteringMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AcousticScatteringMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v18, re::TypeBuilderHelper::registerDynamicArray<re::AcousticScatteringMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v18, re::TypeBuilderHelper::registerDynamicArray<re::AcousticScatteringMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AcousticScatteringMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AcousticScatteringMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v18, v13);
        re::StackScratchAllocator::~StackScratchAllocator(v21);
      }

      xmmword_1EE1B3160 = v14;
      if (v16)
      {
        if (v16)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::AcousticSoundReductionMaterial>>::get(uint64_t a1, BOOL a2, uint64_t a3, uint64_t a4, uint64_t a5, BOOL a6)
{
  if ((atomic_load_explicit(&qword_1EE1B30C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B30C8))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(qword_1EE1B3180);
    qword_1EE1B3180[0] = &unk_1F5CFE010;
    __cxa_guard_release(&qword_1EE1B30C8);
  }

  if ((byte_1EE1B309A & 1) == 0)
  {
    v6 = re::introspect_AcousticSoundReductionMaterial(1, a2, a3, a4, a5, a6);
    if ((byte_1EE1B309A & 1) == 0)
    {
      v7 = v6;
      byte_1EE1B309A = 1;
      v8 = *(v6 + 24);
      ArcSharedObject::ArcSharedObject(qword_1EE1B3180, 0);
      unk_1EE1B3190 = 0x2800000003;
      unk_1EE1B3198 = v8;
      word_1EE1B319C = 0;
      *&xmmword_1EE1B31A0 = 0;
      *(&xmmword_1EE1B31A0 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B31B0 = v7;
      unk_1EE1B31B8 = 0;
      qword_1EE1B3180[0] = &unk_1F5CFE010;
      re::IntrospectionRegistry::add(v9, v10);
      re::getPrettyTypeName(&v18, qword_1EE1B3180);
      if (v19)
      {
        v11 = *&v20[7];
      }

      else
      {
        v11 = v20;
      }

      if (v18 && (v19 & 1) != 0)
      {
        (*(*v18 + 40))();
      }

      v15 = *(v7 + 32);
      if (v22)
      {
        v14 = v22;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v21);
        re::TypeBuilder::TypeBuilder(&v18, v21);
        v17 = v15;
        re::TypeBuilder::beginListType(&v18, &v16, 1, 0x28uLL, 8uLL, &v17);
        re::TypeBuilder::setConstructor(&v18, re::TypeBuilderHelper::registerDynamicArray<re::AcousticSoundReductionMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v18, re::TypeBuilderHelper::registerDynamicArray<re::AcousticSoundReductionMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v18, 1);
        re::TypeBuilder::setListAccessors(&v18, re::TypeBuilderHelper::registerDynamicArray<re::AcousticSoundReductionMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AcousticSoundReductionMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v18, re::TypeBuilderHelper::registerDynamicArray<re::AcousticSoundReductionMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v18, re::TypeBuilderHelper::registerDynamicArray<re::AcousticSoundReductionMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AcousticSoundReductionMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AcousticSoundReductionMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v18, v13);
        re::StackScratchAllocator::~StackScratchAllocator(v21);
      }

      xmmword_1EE1B31A0 = v14;
      if (v16)
      {
        if (v16)
        {
        }
      }
    }
  }
}

void *re::ecs2::allocInfo_AcousticMeshComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B30A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B30A8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B31C0, "AcousticMeshComponent");
    __cxa_guard_release(&qword_1EE1B30A8);
  }

  return &unk_1EE1B31C0;
}

void re::ecs2::initInfo_AcousticMeshComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v45[0] = 0x4FE77884F66CF2DALL;
  v45[1] = "AcousticMeshComponent";
  if (v45[0])
  {
    if (v45[0])
    {
    }
  }

  *(this + 2) = v46;
  if ((atomic_load_explicit(&qword_1EE1B30A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B30A0))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B30D0 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_AssetHandle(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "mesh";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2000000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B30D8 = v18;
    v19 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::AcousticAbsorptionMaterial>>::get(v19, v20, v21, v22, v23, v24);
    v25 = (*(*v19 + 32))(v19, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "absorptionMaterials";
    *(v25 + 16) = &qword_1EE1B3100;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x6000000002;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1B30E0 = v25;
    v26 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::AcousticScatteringMaterial>>::get(v26, v27, v28, v29, v30, v31);
    v32 = (*(*v26 + 32))(v26, 72, 8);
    *v32 = 1;
    *(v32 + 8) = "scatteringMaterials";
    *(v32 + 16) = &qword_1EE1B3140;
    *(v32 + 24) = 0;
    *(v32 + 32) = 0xB000000003;
    *(v32 + 40) = 0;
    *(v32 + 48) = 0;
    *(v32 + 56) = 0;
    *(v32 + 64) = 0;
    qword_1EE1B30E8 = v32;
    v33 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::AcousticSoundReductionMaterial>>::get(v33, v34, v35, v36, v37, v38);
    v39 = (*(*v33 + 32))(v33, 72, 8);
    *v39 = 1;
    *(v39 + 8) = "soundReductionMaterials";
    *(v39 + 16) = qword_1EE1B3180;
    *(v39 + 24) = 0;
    *(v39 + 32) = 0x10000000004;
    *(v39 + 40) = 0;
    *(v39 + 48) = 0;
    *(v39 + 56) = 0;
    *(v39 + 64) = 0;
    qword_1EE1B30F0 = v39;
    v40 = re::introspectionAllocator();
    v42 = re::introspect_double(1, v41);
    v43 = (*(*v40 + 32))(v40, 72, 8);
    *v43 = 1;
    *(v43 + 8) = "lastUpdateTimestamp";
    *(v43 + 16) = v42;
    *(v43 + 24) = 0;
    *(v43 + 32) = 0x1A000000005;
    *(v43 + 40) = 0;
    *(v43 + 48) = 0;
    *(v43 + 56) = 0;
    *(v43 + 64) = 0;
    qword_1EE1B30F8 = v43;
    __cxa_guard_release(&qword_1EE1B30A0);
  }

  *(this + 2) = 0x1B000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE1B30D0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AcousticMeshComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AcousticMeshComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AcousticMeshComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AcousticMeshComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs221AcousticMeshComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v44 = v46;
}

void *re::ecs2::allocInfo_AcousticMeshSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B30B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B30B0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B3250, "AcousticMeshSystem");
    __cxa_guard_release(&qword_1EE1B30B0);
  }

  return &unk_1EE1B3250;
}

void re::ecs2::initInfo_AcousticMeshSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xFAA62CA9EBAFD77ELL;
  v8[1] = "AcousticMeshSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x22000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_AcousticMeshSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AcousticMeshSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AcousticMeshSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::AcousticMeshSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::AcousticMeshSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AcousticMeshSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AcousticMeshSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::internal::defaultDestruct<re::ecs2::AcousticMeshSystem>(uint64_t a1, uint64_t a2, re::ecs2::System *a3)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(a3 + 504);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 31);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::AcousticMeshSystem>(re::ecs2::System *a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(a1 + 504);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 31);

  re::ecs2::System::~System(a1);
}

uint64_t re::DynamicArray<re::AcousticAbsorptionMaterial>::add(_anonymous_namespace_ *this, re::DynamicString *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::AcousticAbsorptionMaterial>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 112 * v4);
  re::DynamicString::DynamicString(v5, a2);
  re::DynamicArray<float>::DynamicArray(v5 + 32, a2 + 4);
  result = re::DynamicArray<float>::DynamicArray(v5 + 72, a2 + 9);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::DynamicArray<re::AcousticScatteringMaterial>::add(_anonymous_namespace_ *this, re::DynamicString *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::AcousticScatteringMaterial>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 112 * v4);
  re::DynamicString::DynamicString(v5, a2);
  re::DynamicArray<float>::DynamicArray(v5 + 32, a2 + 4);
  result = re::DynamicArray<float>::DynamicArray(v5 + 72, a2 + 9);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::DynamicArray<re::AcousticSoundReductionMaterial>::add(_anonymous_namespace_ *this, re::DynamicString *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::AcousticSoundReductionMaterial>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 112 * v4);
  re::DynamicString::DynamicString(v5, a2);
  re::DynamicArray<float>::DynamicArray(v5 + 32, a2 + 4);
  result = re::DynamicArray<float>::DynamicArray(v5 + 72, a2 + 9);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::ecs2::AcousticMeshComponent::clearAllMeshMaterials(re::ecs2::AcousticMeshComponent *this)
{
  re::DynamicArray<re::AcousticAbsorptionMaterial>::clear(this + 96);
  re::DynamicArray<re::AcousticAbsorptionMaterial>::clear(this + 136);
  re::DynamicArray<re::AcousticAbsorptionMaterial>::clear(this + 176);
  re::DynamicArray<re::AcousticAbsorptionMaterial>::clear(this + 216);
  re::DynamicArray<re::AcousticAbsorptionMaterial>::clear(this + 256);

  re::DynamicArray<re::AcousticAbsorptionMaterial>::clear(this + 296);
}

void re::DynamicArray<re::AcousticAbsorptionMaterial>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 112 * v2;
    do
    {
      re::DynamicArray<unsigned long>::deinit(v3 + 72);
      re::DynamicArray<unsigned long>::deinit(v3 + 32);
      re::DynamicString::deinit(v3);
      v3 = (v3 + 112);
      v4 -= 112;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

void re::ecs2::AcousticMeshComponent::adjustAcousticMaterialsWetDry(re::ecs2::AcousticMeshComponent *this, float a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = 1.0;
  if (a2 > 1.0)
  {
    a2 = 1.0;
  }

  if (a2 >= -1.0)
  {
    v3 = -a2;
  }

  *&v5 = powf(3.0, v3);
  v6 = *(this + 14);
  if (v6)
  {
    v7 = *&v5;
    v8 = 0;
    v9 = *&v5;
    *&v5 = 134218496;
    v17 = v5;
    do
    {
      v10 = *(this + 16) + 112 * v8;
      if (*(v10 + 88))
      {
        v11 = 0;
        do
        {
          *(*(v10 + 104) + 4 * v11) = v7 * *(*(v10 + 104) + 4 * v11);
          v12 = *re::audioLogObjects(v4);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v13 = *(v10 + 88);
            if (v13 <= v11)
            {
              v18 = 0;
              memset(buf, 0, sizeof(buf));
              v15 = MEMORY[0x1E69E9C10];
              v19 = 136315906;
              v20 = "operator[]";
              v21 = 1024;
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v16 = 3;
              }

              else
              {
                v16 = 2;
              }

              v22 = 789;
              v23 = 2048;
              v24 = v11;
              v25 = 2048;
              v26 = v13;
              _os_log_send_and_compose_impl(v16, &v18, buf, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17, *(&v17 + 1));
              _os_crash_msg();
              __break(1u);
            }

            v14 = *(*(v10 + 104) + 4 * v11);
            LODWORD(buf[0]) = v17;
            *(buf + 4) = v14;
            WORD6(buf[0]) = 2048;
            *(buf + 14) = v9;
            WORD3(buf[1]) = 2048;
            *(&buf[1] + 1) = 0x4072C00000000000;
            _os_log_debug_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEBUG, "[DryWet Ratio] absorption coefficient set to %f with ratioScale set to %f, maxScaleValue set to +/- %f [%%]", buf, 0x20u);
          }

          ++v11;
        }

        while (*(v10 + 88) > v11);
        v6 = *(this + 14);
      }

      ++v8;
    }

    while (v6 > v8);
  }
}

void re::ecs2::AcousticMeshComponent::adjustAcousticMaterialsSpecDiffuse(re::ecs2::AcousticMeshComponent *this, float a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a2 > 1.0)
  {
    a2 = 1.0;
  }

  v3 = -1.0;
  if (a2 >= -1.0)
  {
    v3 = a2;
  }

  *&v5 = powf(3.0, v3);
  v6 = *(this + 24);
  if (v6)
  {
    v7 = *&v5;
    v8 = 0;
    v9 = *&v5;
    *&v5 = 134218496;
    v17 = v5;
    do
    {
      v10 = *(this + 26) + 112 * v8;
      if (*(v10 + 88))
      {
        v11 = 0;
        do
        {
          *(*(v10 + 104) + 4 * v11) = v7 * *(*(v10 + 104) + 4 * v11);
          v12 = *re::audioLogObjects(v4);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v13 = *(v10 + 88);
            if (v13 <= v11)
            {
              v18 = 0;
              memset(buf, 0, sizeof(buf));
              v15 = MEMORY[0x1E69E9C10];
              v19 = 136315906;
              v20 = "operator[]";
              v21 = 1024;
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v16 = 3;
              }

              else
              {
                v16 = 2;
              }

              v22 = 789;
              v23 = 2048;
              v24 = v11;
              v25 = 2048;
              v26 = v13;
              _os_log_send_and_compose_impl(v16, &v18, buf, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17, *(&v17 + 1));
              _os_crash_msg();
              __break(1u);
            }

            v14 = *(*(v10 + 104) + 4 * v11);
            LODWORD(buf[0]) = v17;
            *(buf + 4) = v14;
            WORD6(buf[0]) = 2048;
            *(buf + 14) = v9;
            WORD3(buf[1]) = 2048;
            *(&buf[1] + 1) = 0x4072C00000000000;
            _os_log_debug_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEBUG, "[SpecDiffuse] scattering coefficient set to %f with ratioScale set to %f, maxScaleValue set to +/- %f [%%]", buf, 0x20u);
          }

          ++v11;
        }

        while (*(v10 + 88) > v11);
        v6 = *(this + 24);
      }

      ++v8;
    }

    while (v6 > v8);
  }
}

void re::ecs2::AcousticMeshComponent::adjustAcousticMaterialsDullBright(uint64_t this, __n128 a2)
{
  v53 = *MEMORY[0x1E69E9840];
  if (a2.n128_f32[0] > 1.0)
  {
    a2.n128_f32[0] = 1.0;
  }

  if (a2.n128_f32[0] >= -1.0)
  {
    v2 = a2.n128_f32[0];
  }

  else
  {
    v2 = -1.0;
  }

  if (v2 >= 0.0)
  {
    v3 = 0.5;
  }

  else
  {
    v3 = 0.8;
  }

  if (*(this + 112))
  {
    v4 = this;
    v5 = 0;
    v6 = flt_1E309BAE0[v2 < 0.0];
    a2.n128_u64[0] = 134218498;
    v42 = a2;
    do
    {
      v7 = *(v4 + 128) + 112 * v5;
      if (*(v7 + 88) == *(v7 + 48))
      {
        std::string::basic_string[abi:nn200100]<0>(&v44, "");
        v8 = std::string::basic_string[abi:nn200100]<0>(&v43, "");
        if (*(v7 + 88))
        {
          v9 = 0;
          while (1)
          {
            v10 = *(v7 + 48);
            if (v10 <= v9)
            {
              break;
            }

            v11 = *(*(v7 + 64) + 4 * v9);
            v12 = (log10f(v11) * 4.0) + -11.20412;
            *(*(v7 + 104) + 4 * v9) = *(*(v7 + 104) + 4 * v9) * ((v2 * ((v3 + (0.7 / (expf(-(v6 + ((v12 + 0.4) * -0.8))) + 1.0))) + -1.0)) + 1.0);
            std::to_string(v46, v11);
            v13 = std::string::append(v46, ", ");
            v14 = v13->__r_.__value_.__r.__words[2];
            *__p = *&v13->__r_.__value_.__l.__data_;
            __p[2] = v14;
            v13->__r_.__value_.__l.__size_ = 0;
            v13->__r_.__value_.__r.__words[2] = 0;
            v13->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(__p[2]) >= 0)
            {
              v15 = __p;
            }

            else
            {
              v15 = __p[0];
            }

            if (SHIBYTE(__p[2]) >= 0)
            {
              v16 = HIBYTE(__p[2]);
            }

            else
            {
              v16 = __p[1];
            }

            std::string::append(&v44, v15, v16);
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }

            if ((v46[23] & 0x80000000) != 0)
            {
              operator delete(*v46);
            }

            v10 = *(v7 + 88);
            if (v10 <= v9)
            {
              goto LABEL_77;
            }

            std::to_string(v46, *(*(v7 + 104) + 4 * v9));
            v17 = std::string::append(v46, ", ");
            v18 = v17->__r_.__value_.__r.__words[2];
            *__p = *&v17->__r_.__value_.__l.__data_;
            __p[2] = v18;
            v17->__r_.__value_.__l.__size_ = 0;
            v17->__r_.__value_.__r.__words[2] = 0;
            v17->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(__p[2]) >= 0)
            {
              v19 = __p;
            }

            else
            {
              v19 = __p[0];
            }

            if (SHIBYTE(__p[2]) >= 0)
            {
              v20 = HIBYTE(__p[2]);
            }

            else
            {
              v20 = __p[1];
            }

            v8 = std::string::append(&v43, v19, v20);
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }

            if ((v46[23] & 0x80000000) != 0)
            {
              operator delete(*v46);
            }

            if (*(v7 + 88) <= ++v9)
            {
              goto LABEL_37;
            }
          }

          v45 = 0;
          v51 = 0u;
          v52 = 0u;
          v50 = 0u;
          memset(__p, 0, sizeof(__p));
          v36 = MEMORY[0x1E69E9C10];
          v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v46 = 136315906;
          *&v46[4] = "operator[]";
          *&v46[12] = 1024;
          if (v37)
          {
            v38 = 3;
          }

          else
          {
            v38 = 2;
          }

          *&v46[14] = 789;
          *&v46[18] = 2048;
          *&v46[20] = v9;
          v47 = 2048;
          v48 = v10;
          _os_log_send_and_compose_impl(v38, &v45, __p, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v46, 38, v42.n128_u64[0], v42.n128_u64[1]);
          _os_crash_msg();
          __break(1u);
LABEL_77:
          v45 = 0;
          v51 = 0u;
          v52 = 0u;
          v50 = 0u;
          memset(__p, 0, sizeof(__p));
          v39 = MEMORY[0x1E69E9C10];
          v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v46 = 136315906;
          *&v46[4] = "operator[]";
          *&v46[12] = 1024;
          if (v40)
          {
            v41 = 3;
          }

          else
          {
            v41 = 2;
          }

          *&v46[14] = 789;
          *&v46[18] = 2048;
          *&v46[20] = v9;
          v47 = 2048;
          v48 = v10;
          _os_log_send_and_compose_impl(v41, &v45, __p, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v46, 38, v42.n128_u64[0], v42.n128_u64[1]);
          _os_crash_msg();
          __break(1u);
        }

LABEL_37:
        if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v22 = v44.__r_.__value_.__r.__words[0];
          v21 = --v44.__r_.__value_.__l.__size_;
        }

        else
        {
          v21 = SHIBYTE(v44.__r_.__value_.__r.__words[2]) - 1;
          *(&v44.__r_.__value_.__s + 23) = v21 & 0x7F;
          v22 = &v44;
        }

        v22->__r_.__value_.__s.__data_[v21] = 0;
        if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v26 = v44.__r_.__value_.__r.__words[0];
          v25 = --v44.__r_.__value_.__l.__size_;
        }

        else
        {
          v25 = SHIBYTE(v44.__r_.__value_.__r.__words[2]) - 1;
          *(&v44.__r_.__value_.__s + 23) = v25 & 0x7F;
          v26 = &v44;
        }

        v26->__r_.__value_.__s.__data_[v25] = 0;
        if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v28 = v43.__r_.__value_.__r.__words[0];
          v27 = --v43.__r_.__value_.__l.__size_;
        }

        else
        {
          v27 = SHIBYTE(v43.__r_.__value_.__r.__words[2]) - 1;
          *(&v43.__r_.__value_.__s + 23) = v27 & 0x7F;
          v28 = &v43;
        }

        v28->__r_.__value_.__s.__data_[v27] = 0;
        if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v30 = v43.__r_.__value_.__r.__words[0];
          v29 = --v43.__r_.__value_.__l.__size_;
        }

        else
        {
          v29 = SHIBYTE(v43.__r_.__value_.__r.__words[2]) - 1;
          *(&v43.__r_.__value_.__s + 23) = v29 & 0x7F;
          v30 = &v43;
        }

        v30->__r_.__value_.__s.__data_[v29] = 0;
        v31 = *re::audioLogObjects(v8);
        this = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);
        if (this)
        {
          v34 = &v44;
          if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v34 = v44.__r_.__value_.__r.__words[0];
          }

          v35 = &v43;
          if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v35 = v43.__r_.__value_.__r.__words[0];
          }

          LODWORD(__p[0]) = v42.n128_u32[0];
          *(__p + 4) = v2;
          WORD2(__p[1]) = 2080;
          *(&__p[1] + 6) = v34;
          HIWORD(__p[2]) = 2080;
          __p[3] = v35;
          _os_log_debug_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_DEBUG, "[DullBright] adjustment of %f changed the material's absorption coefficient for the frequencies %s to %s.", __p, 0x20u);
        }

        if (*(v7 + 48) != 31)
        {
          v32 = *re::audioLogObjects(this);
          this = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
          if (this)
          {
            if (*(v7 + 8))
            {
              v33 = *(v7 + 16);
            }

            else
            {
              v33 = (v7 + 9);
            }

            LODWORD(__p[0]) = 136315138;
            *(__p + 4) = v33;
            _os_log_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_DEFAULT, "Material %s's absorpion coefficient adjustment may not match expectations. The algorithm was tuned to adjust 31 ISO 1/3 octave-band frequencies, but the material's coefficients are defined for other ones.", __p, 0xCu);
          }
        }

        if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v43.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v44.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v23 = *re::audioLogObjects(this);
        this = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        if (this)
        {
          if (*(v7 + 8))
          {
            v24 = *(v7 + 16);
          }

          else
          {
            v24 = (v7 + 9);
          }

          LODWORD(__p[0]) = 136315138;
          *(__p + 4) = v24;
          _os_log_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_DEFAULT, "Material %s's absorpion coefficients could not be adjusted because the number of frequencies did not match the number of absorption coefficients.", __p, 0xCu);
        }
      }

      ++v5;
    }

    while (*(v4 + 112) > v5);
  }
}

_anonymous_namespace_ *re::ecs2::AcousticMeshComponent::resetAllAcousticMaterials(re::DynamicString **this)
{
  re::DynamicArray<re::AcousticAbsorptionMaterial>::clear((this + 12));
  re::DynamicArray<re::AcousticAbsorptionMaterial>::copy((this + 12), 0, this[21], this[19]);
  re::DynamicArray<re::AcousticAbsorptionMaterial>::clear((this + 22));
  re::DynamicArray<re::AcousticScatteringMaterial>::copy((this + 22), 0, this[31], this[29]);
  re::DynamicArray<re::AcousticAbsorptionMaterial>::clear((this + 32));
  v2 = this[41];
  v3 = this[39];

  return re::DynamicArray<re::AcousticSoundReductionMaterial>::copy((this + 32), 0, v2, v3);
}

_anonymous_namespace_ *re::DynamicArray<re::AcousticAbsorptionMaterial>::copy(_anonymous_namespace_ *this, unint64_t a2, re::DynamicString *a3, uint64_t a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return this;
  }

  v6 = this;
  v7 = *(this + 2);
  v8 = v7 + 1;
  if (v7 + 1 <= a2)
  {
    v23 = 0;
    memset(v29, 0, sizeof(v29));
    v16 = MEMORY[0x1E69E9C10];
    *v24 = 136315906;
    *&v24[4] = "copy";
    *&v24[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    *&v24[14] = 643;
    v25 = 2048;
    v26 = a2;
    v27 = 2048;
    v28 = v8;
    _os_log_send_and_compose_impl(v17, &v23, v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v24, 38, v20, v22);
    _os_crash_msg();
    __break(1u);
LABEL_16:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, a2, v4, v23, *v24);
    _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", v18, v19, v21);
    __break(1u);
  }

  v4 = a4;
  v9 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_16;
  }

  if (v7 >= v9)
  {
    this = std::__copy_impl::operator()[abi:nn200100]<re::AcousticAbsorptionMaterial const*,re::AcousticAbsorptionMaterial const*,re::AcousticAbsorptionMaterial*>(a3, a3 + 14 * a4, (*(this + 4) + 112 * a2));
  }

  else
  {
    re::DynamicArray<re::AcousticAbsorptionMaterial>::growCapacity(this, a2 + a4);
    v11 = *(v6 + 2);
    v12 = (a3 + 112 * (v11 - a2));
    this = std::__copy_impl::operator()[abi:nn200100]<re::AcousticAbsorptionMaterial const*,re::AcousticAbsorptionMaterial const*,re::AcousticAbsorptionMaterial*>(a3, v12, (*(v6 + 4) + 112 * a2));
    if (v11 - a2 != v4)
    {
      v13 = 0;
      v14 = *(v6 + 4) + 112 * *(v6 + 2);
      v15 = 112 * a2 + 112 * v4 - 112 * v11;
      do
      {
        re::DynamicString::DynamicString((v14 + v13), &v12[v13 / 8]);
        re::DynamicArray<float>::DynamicArray(v14 + v13 + 32, &v12[v13 / 8 + 4]);
        this = re::DynamicArray<float>::DynamicArray(v14 + v13 + 72, &v12[v13 / 8 + 9]);
        v13 += 112;
      }

      while (v15 != v13);
    }

    *(v6 + 2) = v9;
  }

  ++*(v6 + 6);
  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::AcousticScatteringMaterial>::copy(_anonymous_namespace_ *this, unint64_t a2, re::DynamicString *a3, uint64_t a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return this;
  }

  v6 = this;
  v7 = *(this + 2);
  v8 = v7 + 1;
  if (v7 + 1 <= a2)
  {
    v23 = 0;
    memset(v29, 0, sizeof(v29));
    v16 = MEMORY[0x1E69E9C10];
    *v24 = 136315906;
    *&v24[4] = "copy";
    *&v24[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    *&v24[14] = 643;
    v25 = 2048;
    v26 = a2;
    v27 = 2048;
    v28 = v8;
    _os_log_send_and_compose_impl(v17, &v23, v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v24, 38, v20, v22);
    _os_crash_msg();
    __break(1u);
LABEL_16:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, a2, v4, v23, *v24);
    _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", v18, v19, v21);
    __break(1u);
  }

  v4 = a4;
  v9 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_16;
  }

  if (v7 >= v9)
  {
    this = std::__copy_impl::operator()[abi:nn200100]<re::AcousticAbsorptionMaterial const*,re::AcousticAbsorptionMaterial const*,re::AcousticAbsorptionMaterial*>(a3, a3 + 14 * a4, (*(this + 4) + 112 * a2));
  }

  else
  {
    re::DynamicArray<re::AcousticScatteringMaterial>::growCapacity(this, a2 + a4);
    v11 = *(v6 + 2);
    v12 = (a3 + 112 * (v11 - a2));
    this = std::__copy_impl::operator()[abi:nn200100]<re::AcousticAbsorptionMaterial const*,re::AcousticAbsorptionMaterial const*,re::AcousticAbsorptionMaterial*>(a3, v12, (*(v6 + 4) + 112 * a2));
    if (v11 - a2 != v4)
    {
      v13 = 0;
      v14 = *(v6 + 4) + 112 * *(v6 + 2);
      v15 = 112 * a2 + 112 * v4 - 112 * v11;
      do
      {
        re::DynamicString::DynamicString((v14 + v13), &v12[v13 / 8]);
        re::DynamicArray<float>::DynamicArray(v14 + v13 + 32, &v12[v13 / 8 + 4]);
        this = re::DynamicArray<float>::DynamicArray(v14 + v13 + 72, &v12[v13 / 8 + 9]);
        v13 += 112;
      }

      while (v15 != v13);
    }

    *(v6 + 2) = v9;
  }

  ++*(v6 + 6);
  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::AcousticSoundReductionMaterial>::copy(_anonymous_namespace_ *this, unint64_t a2, re::DynamicString *a3, uint64_t a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return this;
  }

  v6 = this;
  v7 = *(this + 2);
  v8 = v7 + 1;
  if (v7 + 1 <= a2)
  {
    v23 = 0;
    memset(v29, 0, sizeof(v29));
    v16 = MEMORY[0x1E69E9C10];
    *v24 = 136315906;
    *&v24[4] = "copy";
    *&v24[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    *&v24[14] = 643;
    v25 = 2048;
    v26 = a2;
    v27 = 2048;
    v28 = v8;
    _os_log_send_and_compose_impl(v17, &v23, v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v24, 38, v20, v22);
    _os_crash_msg();
    __break(1u);
LABEL_16:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, a2, v4, v23, *v24);
    _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", v18, v19, v21);
    __break(1u);
  }

  v4 = a4;
  v9 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_16;
  }

  if (v7 >= v9)
  {
    this = std::__copy_impl::operator()[abi:nn200100]<re::AcousticAbsorptionMaterial const*,re::AcousticAbsorptionMaterial const*,re::AcousticAbsorptionMaterial*>(a3, a3 + 14 * a4, (*(this + 4) + 112 * a2));
  }

  else
  {
    re::DynamicArray<re::AcousticSoundReductionMaterial>::growCapacity(this, a2 + a4);
    v11 = *(v6 + 2);
    v12 = (a3 + 112 * (v11 - a2));
    this = std::__copy_impl::operator()[abi:nn200100]<re::AcousticAbsorptionMaterial const*,re::AcousticAbsorptionMaterial const*,re::AcousticAbsorptionMaterial*>(a3, v12, (*(v6 + 4) + 112 * a2));
    if (v11 - a2 != v4)
    {
      v13 = 0;
      v14 = *(v6 + 4) + 112 * *(v6 + 2);
      v15 = 112 * a2 + 112 * v4 - 112 * v11;
      do
      {
        re::DynamicString::DynamicString((v14 + v13), &v12[v13 / 8]);
        re::DynamicArray<float>::DynamicArray(v14 + v13 + 32, &v12[v13 / 8 + 4]);
        this = re::DynamicArray<float>::DynamicArray(v14 + v13 + 72, &v12[v13 / 8 + 9]);
        v13 += 112;
      }

      while (v15 != v13);
    }

    *(v6 + 2) = v9;
  }

  ++*(v6 + 6);
  return this;
}

BOOL re::ecs2::AcousticMeshStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(**(a1 + 16) + 16))(*(a1 + 16), *(a3 + 8));
  if ((*(*v8 + 568))())
  {
    v73 = 0;
    v70[1] = 0;
    v71 = 0;
    v69 = 0;
    v70[0] = 0;
    v72 = 0;
    v66[1] = 0;
    v67 = 0;
    v66[0] = 0;
    v68 = 0;
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&__buf, a5, 0);
    v63 = a4;
    v64 = __buf.i64[0];
    v65 = __buf.i32[2];
    if (__buf.i64[0] == a5 && __buf.u32[2] == 0xFFFFFFFFLL)
    {
LABEL_4:
      if (v67)
      {
        re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>::DynamicArray(&__buf, v66);
        *&v57[24] = 2;
        (*(*v8 + 232))(v8, &__buf);
        if (*&v57[24] != -1)
        {
          (off_1F5CFDEA8[*&v57[24]])(v51, &__buf);
        }
      }

      if (v71)
      {
        re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>::DynamicArray(&__buf, v70);
        *&v57[24] = 1;
        (*(*v8 + 232))(v8, &__buf);
        if (*&v57[24] != -1)
        {
          (off_1F5CFDEA8[*&v57[24]])(v51, &__buf);
        }
      }

      v9 = *(a5 + 40) != 0;
      re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>::deinit(v66);
      re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>::deinit(v70);
      return v9;
    }

    v16 = a3 + 24;
    while (1)
    {
      v17 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v63);
      v18 = v17;
      if ((*(*(v17 + 16) + 304) & 1) == 0)
      {
        for (i = 0; i != 32; i += 8)
        {
          v20 = re::ecs2::ComponentBucketsBase::componentHandle(*(a3 + 16), *(v16 + i), v18);
          if (v20 != -1 && (v21 & 0xFFFFFF00000000) != 0)
          {
            v28 = v20;
            v29 = v21;
            goto LABEL_40;
          }
        }

        v28 = -1;
        v29 = 0xFFFFFFFFLL;
LABEL_40:
        v30 = *(a3 + 16);
        v31 = *(a3 + 32);
LABEL_57:
        re::ecs2::ComponentBucketsBase::moveComponent(v30, v28, v29, v31);
        goto LABEL_58;
      }

      if (*(v17 + 88) == 1)
      {
        v23 = *(v17 + 72);
        __buf.i64[0] = 0;
        do
        {
          arc4random_buf(&__buf, 8uLL);
          v24 = __buf.i64[0];
        }

        while (__buf.i64[0] < 0x3E8uLL);
        if (v23)
        {
          v49 = *(v18 + 56);
          v25 = *(v18 + 80);
          v26 = *(v18 + 89);
          v27 = *(v18 + 416);
          __buf = vextq_s8(v49, v49, 8uLL);
          *v57 = v23;
          *&v57[8] = v24;
          *&v57[16] = v25;
          v57[24] = v26;
          *&v57[32] = v27;
          v62 = 1;
          re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>::add(v66, &__buf);
          if (v62 != -1)
          {
            (off_1F5CFDE88[v62])(v51, &__buf);
          }

          *(v18 + 72) = v24;
        }

        else
        {
          *(v18 + 72) = __buf.i64[0];
          v50 = *(v18 + 56);
          v44 = *(v18 + 80);
          v45 = *(v18 + 89);
          v46 = *(v18 + 416);
          __buf = vextq_s8(v50, v50, 8uLL);
          *v57 = v24;
          *&v57[8] = v44;
          v57[16] = v45;
          *&v57[24] = v46;
          LODWORD(v61) = 1;
          re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>::add(v70, &__buf);
          if (v61 != -1)
          {
            (off_1F5CFDE78[v61])(v51, &__buf);
          }
        }
      }

      else if (*(v17 + 336) == 1)
      {
        v32 = *(v17 + 72);
        __buf.i64[0] = 0;
        do
        {
          arc4random_buf(&__buf, 8uLL);
          v33 = __buf.i64[0];
        }

        while (__buf.i64[0] < 0x3E8uLL);
        v55 = 0;
        *v52 = 0;
        memset(&v52[8], 0, 32);
        *v53 = 0;
        memset(&v53[8], 0, 32);
        LODWORD(v54) = 0;
        memset(&v51[32], 0, 32);
        *v51 = vextq_s8(*(v18 + 56), *(v18 + 56), 8uLL);
        *&v51[16] = v32;
        *&v51[24] = __buf.i64[0];
        *&v51[32] = *(v18 + 80);
        re::DynamicArray<re::AcousticAbsorptionMaterial>::operator=(&v51[40], (v18 + 96));
        re::DynamicArray<re::AcousticScatteringMaterial>::operator=(&v52[16], (v18 + 176));
        re::DynamicArray<re::AcousticSoundReductionMaterial>::operator=(&v53[16], (v18 + 256));
        __buf = *v51;
        *v57 = *&v51[16];
        *&v57[16] = *&v51[32];
        *&v57[32] = *&v51[48];
        memset(&v51[32], 0, 32);
        ++*v52;
        *&v58[8] = *&v52[8];
        memset(&v52[8], 0, 32);
        *&v58[24] = *&v52[24];
        ++*v53;
        *v58 = 1;
        *v59 = 1;
        *&v59[8] = *&v53[8];
        *&v59[24] = *&v53[24];
        memset(&v53[8], 0, 32);
        v61 = v55;
        v55 = 0;
        LODWORD(v54) = v54 + 1;
        LODWORD(v60) = 1;
        v62 = 0;
        re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>::add(v66, &__buf);
        if (v62 != -1)
        {
          (off_1F5CFDE88[v62])(v74, &__buf);
        }

        *(v18 + 72) = v33;
        re::DynamicArray<re::AcousticSoundReductionMaterial>::deinit(&v53[16]);
        re::DynamicArray<re::AcousticScatteringMaterial>::deinit(&v52[16]);
        re::DynamicArray<re::AcousticAbsorptionMaterial>::deinit(&v51[40]);
      }

      else
      {
        __buf.i64[0] = 0;
        do
        {
          arc4random_buf(&__buf, 8uLL);
        }

        while (__buf.i64[0] < 0x3E8uLL);
        *(v18 + 72) = __buf.i64[0];
        v40 = *(v18 + 40);
        if (!v40)
        {
LABEL_80:
          re::AssetHandle::loadAsync((v18 + 32));
          goto LABEL_58;
        }

        v41 = atomic_load((v40 + 896));
        if (v41 != 2)
        {
          v47 = *(v18 + 40);
          if (!v47)
          {
            goto LABEL_80;
          }

          v48 = atomic_load((v47 + 896));
          if (v48 != 1)
          {
            goto LABEL_80;
          }

          goto LABEL_58;
        }

        if (!*(v18 + 80))
        {
          v42 = re::AssetHandle::blockUntilLoaded<re::AcousticMeshAsset>((v18 + 32));
          re::ObjCObject::operator=((v18 + 80), (v42 + 752));
        }

        v54 = 0;
        memset(&v51[8], 0, 52);
        memset(v52, 0, 36);
        memset(v53, 0, 36);
        v43 = *(v18 + 80);
        *&v51[16] = *(v18 + 72);
        *v51 = vextq_s8(*(v18 + 56), *(v18 + 56), 8uLL);
        *&v51[24] = v43;
        re::DynamicArray<re::AcousticAbsorptionMaterial>::operator=(&v51[32], (v18 + 96));
        re::DynamicArray<re::AcousticScatteringMaterial>::operator=(&v52[8], (v18 + 176));
        re::DynamicArray<re::AcousticSoundReductionMaterial>::operator=(&v53[8], (v18 + 256));
        __buf = *v51;
        *v57 = *&v51[16];
        *&v57[8] = *&v51[24];
        memset(&v51[24], 0, 32);
        *&v57[24] = *&v51[40];
        ++*&v51[56];
        *&v57[40] = 1;
        *v58 = *v52;
        *&v58[16] = *&v52[16];
        memset(v52, 0, 32);
        ++*&v52[32];
        *v59 = *v53;
        memset(v53, 0, 32);
        *&v59[16] = *&v53[16];
        v60 = v54;
        v54 = 0;
        ++*&v53[32];
        *&v58[32] = 1;
        *&v59[32] = 1;
        LODWORD(v61) = 0;
        re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>::add(v70, &__buf);
        if (v61 != -1)
        {
          (off_1F5CFDE78[v61])(v74, &__buf);
        }

        re::DynamicArray<re::AcousticSoundReductionMaterial>::deinit(&v53[8]);
        re::DynamicArray<re::AcousticScatteringMaterial>::deinit(&v52[8]);
        re::DynamicArray<re::AcousticAbsorptionMaterial>::deinit(&v51[32]);
      }

      if (*(v18 + 72))
      {
        v34 = 0;
        *(v18 + 336) = 1;
        do
        {
          v35 = re::ecs2::ComponentBucketsBase::componentHandle(*(a3 + 16), *(v16 + v34), v18);
          if (v35 != -1 && (v36 & 0xFFFFFF00000000) != 0)
          {
            v28 = v35;
            v29 = v36;
            goto LABEL_56;
          }

          v34 += 8;
        }

        while (v34 != 32);
        v28 = -1;
        v29 = 0xFFFFFFFFLL;
LABEL_56:
        v30 = *(a3 + 16);
        v31 = *(a3 + 48);
        goto LABEL_57;
      }

LABEL_58:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v64);
      if (v64 == a5 && v65 == 0xFFFF && HIWORD(v65) == 0xFFFF)
      {
        goto LABEL_4;
      }
    }
  }

  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&__buf, a5, 0);
  v10 = __buf;
  __buf.i64[0] = a4;
  __buf.i64[1] = v10.i64[0];
  *v57 = v10.i32[2];
  if (v10.i64[0] != a5 || v10.u32[2] != 0xFFFFFFFFLL)
  {
    do
    {
      v11 = __buf.i64[0];
      v12 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&__buf.u16[4]);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v11, v12, *(a3 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&__buf.i16[4]);
    }

    while (__buf.i64[1] != a5 || *v57 != 0xFFFF || *&v57[2] != 0xFFFF);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[3]);
  if (result != a2 || v7 != a3 || ((v7 ^ a3) & 0xFFFFFF00000000) != 0)
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, result);
    v10 = *a1;
    v11 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v10 + 56), &v11);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v10 + 168, *(*(v10 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v10);
    }
  }

  return result;
}

uint64_t re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>::add(uint64_t a1, uint64_t a2)
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

        re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<std::variant<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 160 * v5;
  *v11 = 0;
  *(v11 + 152) = -1;
  result = std::__variant_detail::__ctor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>,(std::__variant_detail::_Trait)1>>(v11, a2);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

uint64_t re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>::add(uint64_t a1, uint64_t a2)
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

        re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<std::variant<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 168 * v5;
  *v11 = 0;
  *(v11 + 160) = -1;
  result = std::__variant_detail::__ctor<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>,(std::__variant_detail::_Trait)1>>(v11, a2);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

BOOL re::ecs2::AcousticMeshStateImpl::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(**(a1 + 16) + 16))(*(a1 + 16), *(a3 + 8));
  v9 = (*(**(*(a3 + 8) + 56) + 32))(*(*(a3 + 8) + 56));
  v10 = re::ServiceLocator::service<re::TransformService>(v9);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v48, a5, 0);
  v44 = a4;
  v45 = v48.n128_u64[0];
  v46 = v48.n128_i32[2];
  if (v48.n128_u64[0] != a5 || v48.n128_u32[2] != 0xFFFFFFFFLL)
  {
    do
    {
      v11 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v44);
      v12 = v11;
      if (*(v11 + 336))
      {
        re::TransformService::worldMatrix(v10, *(v11 + 16), 0, &v48);
        if (v12[21].n128_u8[1] != 1 || (v13 = v12[22].n128_f32[0], v48.n128_f32[0] != v13) && vabds_f32(v48.n128_f32[0], v13) >= (((fabsf(v48.n128_f32[0]) + fabsf(v13)) + 1.0) * 0.00001) || (v14 = v12[22].n128_f32[1], v48.n128_f32[1] != v14) && vabds_f32(v48.n128_f32[1], v14) >= (((fabsf(v48.n128_f32[1]) + fabsf(v14)) + 1.0) * 0.00001) || (v15 = v12[22].n128_f32[2], v48.n128_f32[2] != v15) && vabds_f32(v48.n128_f32[2], v15) >= (((fabsf(v48.n128_f32[2]) + fabsf(v15)) + 1.0) * 0.00001) || (v16 = v12[22].n128_f32[3], v48.n128_f32[3] != v16) && vabds_f32(v48.n128_f32[3], v16) >= (((fabsf(v48.n128_f32[3]) + fabsf(v16)) + 1.0) * 0.00001) || (v17 = v12[23].n128_f32[0], v49.n128_f32[0] != v17) && vabds_f32(v49.n128_f32[0], v17) >= (((fabsf(v49.n128_f32[0]) + fabsf(v17)) + 1.0) * 0.00001) || (v18 = v12[23].n128_f32[1], v49.n128_f32[1] != v18) && vabds_f32(v49.n128_f32[1], v18) >= (((fabsf(v49.n128_f32[1]) + fabsf(v18)) + 1.0) * 0.00001) || (v19 = v12[23].n128_f32[2], v49.n128_f32[2] != v19) && vabds_f32(v49.n128_f32[2], v19) >= (((fabsf(v49.n128_f32[2]) + fabsf(v19)) + 1.0) * 0.00001) || (v20 = v12[23].n128_f32[3], v49.n128_f32[3] != v20) && vabds_f32(v49.n128_f32[3], v20) >= (((fabsf(v49.n128_f32[3]) + fabsf(v20)) + 1.0) * 0.00001) || (v21 = v12[24].n128_f32[0], v50.n128_f32[0] != v21) && vabds_f32(v50.n128_f32[0], v21) >= (((fabsf(v50.n128_f32[0]) + fabsf(v21)) + 1.0) * 0.00001) || (v22 = v12[24].n128_f32[1], v50.n128_f32[1] != v22) && vabds_f32(v50.n128_f32[1], v22) >= (((fabsf(v50.n128_f32[1]) + fabsf(v22)) + 1.0) * 0.00001) || (v23 = v12[24].n128_f32[2], v50.n128_f32[2] != v23) && vabds_f32(v50.n128_f32[2], v23) >= (((fabsf(v50.n128_f32[2]) + fabsf(v23)) + 1.0) * 0.00001) || (v24 = v12[24].n128_f32[3], v50.n128_f32[3] != v24) && vabds_f32(v50.n128_f32[3], v24) >= (((fabsf(v50.n128_f32[3]) + fabsf(v24)) + 1.0) * 0.00001) || (v25 = v12[25].n128_f32[0], v51.n128_f32[0] != v25) && vabds_f32(v51.n128_f32[0], v25) >= (((fabsf(v51.n128_f32[0]) + fabsf(v25)) + 1.0) * 0.00001) || (v26 = v12[25].n128_f32[1], v51.n128_f32[1] != v26) && vabds_f32(v51.n128_f32[1], v26) >= (((fabsf(v51.n128_f32[1]) + fabsf(v26)) + 1.0) * 0.00001) || (v27 = v12[25].n128_f32[2], v51.n128_f32[2] != v27) && vabds_f32(v51.n128_f32[2], v27) >= (((fabsf(v51.n128_f32[2]) + fabsf(v27)) + 1.0) * 0.00001) || (v28 = v12[25].n128_f32[3], v51.n128_f32[3] != v28) && vabds_f32(v51.n128_f32[3], v28) >= (((fabsf(v51.n128_f32[3]) + fabsf(v28)) + 1.0) * 0.00001))
        {
          v29 = v49;
          v12[22] = v48;
          v12[23] = v29;
          v30 = v51;
          v12[24] = v50;
          v12[25] = v30;
          if ((*(*v8 + 568))(v8))
          {
            v34 = v12[23];
            v35 = v12[24];
            v36 = v12[25];
            v47[0] = v12[22];
            v47[1] = v34;
            v47[2] = v35;
            v47[3] = v36;
            re::audio::cleanUpTransformForPHASE(v47, &v48, v31, v32, v33);
            (*(*v8 + 272))(v8, v12[4].n128_u64[0], v12[3].n128_u64[1], 0, v48, v49, v50, v51, v12[22], v12[23], v12[24], v12[25]);
            v12[21].n128_u8[1] = 1;
          }
        }
      }

      else
      {
        for (i = 24; i != 56; i += 8)
        {
          v38 = re::ecs2::ComponentBucketsBase::componentHandle(*(a3 + 16), *(a3 + i), v12);
          if (v38 != -1 && (v39 & 0xFFFFFF00000000) != 0)
          {
            v41 = v38;
            v42 = v39;
            goto LABEL_47;
          }
        }

        v41 = -1;
        v42 = 0xFFFFFFFFLL;
LABEL_47:
        re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::setComponentState(a3, v41, v42);
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v45);
    }

    while (v45 != a5 || v46 != 0xFFFF || HIWORD(v46) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

_anonymous_namespace_ *re::ecs2::AcousticMeshSystem::willAddSystemToECSService(re::ecs2::AcousticMeshSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::AudioSceneService>(v2);
  *(this + 61) = result;
  *(this + 30) = result;
  return result;
}

uint64_t re::ecs2::AcousticMeshSystem::willRemoveSystemFromECSService(uint64_t this)
{
  *(this + 488) = 0;
  *(this + 240) = 0;
  return this;
}

uint64_t re::ecs2::AcousticMeshSystem::willAddSceneToECSService(uint64_t this, re::ecs2::Scene *a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v45 = a2;
  if (!a2)
  {
    return this;
  }

  v2 = this;
  v3 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::AcousticMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  *&v48 = v2;
  *(&v48 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AcousticMeshSystem::activateComponents,re::ecs2::AcousticMeshSystem>;
  *&v49 = 0;
  *(&v49 + 1) = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription(v3 + 24, &v48);
  *&v48 = v2;
  *(&v48 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AcousticMeshSystem::deactivateComponents,re::ecs2::AcousticMeshSystem>;
  *&v49 = 0;
  *(&v49 + 1) = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription(v3 + 46, &v48);
  *&v48 = v2;
  *(&v48 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AcousticMeshSystem::deactivateComponents,re::ecs2::AcousticMeshSystem>;
  *&v49 = 0;
  *(&v49 + 1) = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription(v3 + 68, &v48);
  std::__hash_table<re::ecs2::Scene *,std::hash<re::ecs2::Scene *>,std::equal_to<re::ecs2::Scene *>,std::allocator<re::ecs2::Scene *>>::__emplace_unique_key_args<re::ecs2::Scene *,re::ecs2::Scene * const&>((v2 + 504), &v45, &v45);
  v4 = v45;
  v46 = v45;
  v5 = *(v2 + 376);
  v6 = *(v2 + 384);
  if (v5 >= 0xB)
  {
    if (v6)
    {
      v7 = (v2 + 392);
    }

    else
    {
      v7 = *(v2 + 400);
    }

    v9 = 8 * v5;
    while (!*v7)
    {
      ++v7;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_17;
  }

  if (v6)
  {
    v8 = (v2 + 392);
    if (!v5)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v8 = *(v2 + 400);
    if (!v5)
    {
      goto LABEL_18;
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
  if (!v10)
  {
LABEL_18:
    v55 = 0u;
    v48 = 0u;
    *&v49 = 0;
    v50 = 0u;
    v51 = 0u;
    *(&v49 + 1) = -1;
    v52 = 0;
    v53 = 1;
    v54 = 0uLL;
    v15 = *(v2 + 288);
    *&v55 = 0;
    v16 = *(v2 + 256);
    DWORD2(v55) = 0;
    if (v15 + 1 > 4 * v16)
    {
      re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>,4ul>::setBucketsCapacity((v2 + 248), (v15 + 4) >> 2);
      v16 = *(v2 + 256);
    }

    if (v16 <= v15 >> 2)
    {
      v47 = 0;
      memset(v64, 0, sizeof(v64));
      v40 = MEMORY[0x1E69E9C10];
      v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v56 = 136315906;
      v57 = "operator[]";
      v58 = 1024;
      if (v41)
      {
        v42 = 3;
      }

      else
      {
        v42 = 2;
      }

      v59 = 858;
      v60 = 2048;
      v61 = v15 >> 2;
      v62 = 2048;
      v63 = v16;
      _os_log_send_and_compose_impl(v42, &v47, v64, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v56, 38, v43, v44);
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      if (*(v2 + 264))
      {
        v17 = v2 + 272;
      }

      else
      {
        v17 = *(v2 + 280);
      }

      v18 = *(v17 + 8 * (v15 >> 2));
      ++*(v2 + 288);
      ++*(v2 + 296);
      v19 = v18 + 112 * (v15 & 3);
      v20 = v48;
      v21 = v49;
      v22 = v50;
      *(v19 + 48) = v51;
      *(v19 + 16) = v21;
      *(v19 + 32) = v22;
      *v19 = v20;
      re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v19 + 56, &v51 + 1);
      re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v48);
      v24 = *(v2 + 288);
      if (v24)
      {
        v25 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v2 + 248, v24 - 1);
        re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::init(v25, v2 + 248, v46);
        *&v64[0] = *(v2 + 288) - 1;
        re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((v2 + 304), &v46, v64);
        v26 = *(v2 + 288);
        v27 = *(v2 + 408);
        if ((v26 & 0x3F) != 0)
        {
          v28 = (v26 >> 6) + 1;
        }

        else
        {
          v28 = v26 >> 6;
        }

        *(v2 + 408) = v26;
        *&v48 = 0;
        re::DynamicOverflowArray<unsigned long long,2ul>::resize((v2 + 368), v28, &v48);
        if (v26 && v27 > v26)
        {
          v29 = 63;
          v30 = *(v2 + 408) & 0x3FLL;
          if (v30 && v30 != 63)
          {
            v29 = ~(-1 << v30);
          }

          if (*(v2 + 384))
          {
            v31 = v2 + 392;
          }

          else
          {
            v31 = *(v2 + 400);
          }

          *(v31 + 8 * *(v2 + 376) - 8) &= v29;
        }

        v32 = *(v2 + 288);
        v33 = *(v2 + 456);
        if ((v32 & 0x3F) != 0)
        {
          v34 = (v32 >> 6) + 1;
        }

        else
        {
          v34 = v32 >> 6;
        }

        *(v2 + 456) = v32;
        *&v48 = 0;
        re::DynamicOverflowArray<unsigned long long,2ul>::resize((v2 + 416), v34, &v48);
        if (v32 && v33 > v32)
        {
          v35 = 63;
          v36 = *(v2 + 456) & 0x3FLL;
          if (v36 && v36 != 63)
          {
            v35 = ~(-1 << v36);
          }

          if (*(v2 + 432))
          {
            v37 = v2 + 440;
          }

          else
          {
            v37 = *(v2 + 448);
          }

          *(v37 + 8 * *(v2 + 424) - 8) &= v35;
        }

        v14 = *&v64[0];
        goto LABEL_50;
      }
    }

    re::internal::assertLog(4, v23, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

LABEL_17:
  *&v48 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v2 + 368, 0);
  v13 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v2 + 248, v48);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::init(v13, v2 + 248, v4);
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((v2 + 304), &v46, &v48);
  re::DynamicBitset<unsigned long long,64ul>::clearBit(v2 + 368, v48);
  v14 = v48;
LABEL_50:
  re::DynamicBitset<unsigned long long,64ul>::setBit(v2 + 416, v14);
  if (*(v2 + 480) == 1)
  {
    v38 = *(v2 + 464);
    v39 = *(v46 + 47);
    LOWORD(v48) = 257;
    DWORD1(v48) = 1023969417;
    BYTE8(v48) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v48);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v2 + 248);
  }

  this = *(v2 + 488);
  if (this)
  {
    this = (*(*this + 16))(this, v45);
    if (this)
    {
      return (*(*this + 32))(this, 770);
    }
  }

  return this;
}

uint64_t ___ZN2re4ecs218AcousticMeshSystem24willAddSceneToECSServiceEPNS0_5SceneE_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::SceneComponentTable::get((*(a1 + 32) + 200), re::ecs2::ComponentImpl<re::ecs2::AcousticMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v2)
  {
    v3 = *(v2 + 48);
    if (v3)
    {
      v4 = *(v2 + 50);
      v5 = 8 * v3;
      do
      {
        v6 = *v4;
        v7 = *re::audioLogObjects(v2);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 32);
          v9 = v7;
          v10 = *(*(v8 + 104) + 296);
          v11 = *(a1 + 40);
          v12 = *(v6 + 16);
          v13 = *(v12 + 296);
          v14 = *(v12 + 312);
          v15 = *(v6 + 72);
          *buf = 136316162;
          v18 = v10;
          v19 = 2048;
          v20 = v11;
          v21 = 2080;
          v22 = v13;
          v23 = 2048;
          v24 = v14;
          v25 = 2048;
          v26 = v15;
          _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "[AcousticMeshSystem::ServiceResetCallback] deregistering geometry for scene(%s, %llu) entity(%s, %llu) meshAssetID(%llu)", buf, 0x34u);
        }

        *(v6 + 72) = 0;
        *(v6 + 336) = 0;
        v2 = re::ecs2::Component::markDirty(v6);
        ++v4;
        v5 -= 8;
      }

      while (v5);
    }
  }

  return (*(**(a1 + 48) + 88))(*(a1 + 48), 3, *(a1 + 40), 1);
}

void *re::ecs2::AcousticMeshSystem::willRemoveSceneFromECSService(void *this, re::ecs2::Scene *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = a2;
  if (a2)
  {
    v2 = this;
    v3 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::AcousticMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    *&v17 = v2;
    *(&v17 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AcousticMeshSystem::activateComponents,re::ecs2::AcousticMeshSystem>;
    v18 = 0;
    v19 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v3 + 96, &v17);
    *&v17 = v2;
    *(&v17 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AcousticMeshSystem::deactivateComponents,re::ecs2::AcousticMeshSystem>;
    v18 = 0;
    v19 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v3 + 184, &v17);
    *&v17 = v2;
    *(&v17 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AcousticMeshSystem::deactivateComponents,re::ecs2::AcousticMeshSystem>;
    v18 = 0;
    v19 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v3 + 272, &v17);
    std::__hash_table<re::ecs2::Scene *,std::hash<re::ecs2::Scene *>,std::equal_to<re::ecs2::Scene *>,std::allocator<re::ecs2::Scene *>>::__erase_unique<re::ecs2::Scene *>(v2 + 63, &v16);
    *&v17 = v16;
    v4 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v2 + 38, &v17);
    if (v4 != -1)
    {
      v5 = v2[39] + 16 * v4;
      re::DynamicBitset<unsigned long long,64ul>::setBit((v2 + 46), *(v5 + 8));
      re::DynamicBitset<unsigned long long,64ul>::clearBit((v2 + 52), *(v5 + 8));
      v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((v2 + 31), *(v5 + 8));
      if (*v6)
      {
        v7 = v6;
        *v6 = 0;
        v8 = v6 + 1;
        v9 = *(v6[1] + 288);
        if (v9)
        {
          v10 = v6[12];
          if (v10)
          {
            for (i = 0; i != v10; ++i)
            {
              v12 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v7 + 7), i);
              re::EventBus::unsubscribe(v9, *v12, v12[1]);
            }
          }
        }

        re::BucketArray<RESubscriptionHandle,8ul>::deinit((v7 + 7));
        v13 = 0;
        v14 = v7 + 3;
        do
        {
          v15 = v7[2];
          if (*v15)
          {
            re::ecs2::ComponentBucketsBase::removeBucket(v15, v14[v13]);
          }

          v14[v13++] = -1;
        }

        while (v13 != 4);
        *v8 = 0;
        v8[1] = 0;
      }

      re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove((v2 + 38), &v17);
    }

    this = v2[61];
    if (this)
    {
      this = (*(*this + 16))(this, v16);
      if (this)
      {
        return (*(*this + 40))(this, 770, *(*(v16 + 13) + 288) >> 1);
      }
    }
  }

  return this;
}

void *re::ecs2::AcousticMeshSystem::update(void *result, uint64_t a2, uint64_t a3)
{
  v46[0] = a2;
  v46[1] = a3;
  if (result[61])
  {
    v4 = result;
    v5 = re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v45);
    v6 = *(a3 + 200);
    if (v6)
    {
      v7 = 0;
      v8 = *(a3 + 216);
      v9 = 8 * v6;
      do
      {
        v5 = re::ecs2::SceneComponentTable::get((*v8 + 200), re::ecs2::ComponentImpl<re::ecs2::AcousticMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        if (v5)
        {
          v10 = *(v5 + 48);
        }

        else
        {
          v10 = 0;
        }

        v7 += v10;
        v8 += 8;
        v9 -= 8;
      }

      while (v9);
    }

    else
    {
      v7 = 0;
    }

    isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v5);
    if (isStatisticCollectionEnabled)
    {
      v12 = re::profilerThreadContext(isStatisticCollectionEnabled);
      v13 = *(v12 + 152);
      if (v13)
      {
        v14 = v13[1176].u64[0];
        if (v14 >= v7)
        {
          v14 = v7;
        }

        v13[1176].i64[0] = v14;
        v15 = v13[1176].u64[1];
        if (v15 <= v7)
        {
          v15 = v7;
        }

        v13[1176].i64[1] = v15;
        v16 = vdupq_n_s64(1uLL);
        v16.i64[0] = v7;
        v13[1177] = vaddq_s64(v13[1177], v16);
        *(v12 + 184) = 0;
      }
    }

    re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v44, 3057, v4, v7, 0, 0);
    re::StackScratchAllocator::StackScratchAllocator(v58);
    v54 = 1;
    v55 = 0;
    v56 = 0;
    v52 = v58;
    v53 = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v52, 0);
    v54 += 2;
    v17 = v4[57];
    if ((v17 & 0x3F) != 0)
    {
      v18 = (v17 >> 6) + 1;
    }

    else
    {
      v18 = v17 >> 6;
    }

    v57 = v4[57];
    v47[0] = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v52, v18, v47);
    v19 = *(a3 + 200);
    if (v19)
    {
      v20 = *(a3 + 216);
      v21 = 8 * v19;
      do
      {
        v22 = *v20++;
        v47[0] = v22;
        v23 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 38, v47);
        re::DynamicBitset<unsigned long long,64ul>::setBit(&v52, *(v4[39] + 16 * v23 + 8));
        v21 -= 8;
      }

      while (v21);
    }

    re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v52, (v4 + 52));
    v48 = 1;
    v49 = 0;
    v50 = 0;
    v47[0] = v58;
    v47[1] = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v47, 0);
    v48 += 2;
    v24 = v4[57];
    if ((v24 & 0x3F) != 0)
    {
      v25 = (v24 >> 6) + 1;
    }

    else
    {
      v25 = v24 >> 6;
    }

    v51 = v4[57];
    v59 = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(v47, v25, &v59);
    re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((v4 + 52), &v52);
    v26 = v56;
    if (v54)
    {
      v26 = &v55;
    }

    v27 = v53;
    if ((v53 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v28 = 0;
      while (1)
      {
        v30 = *v26++;
        v29 = v30;
        if (v30)
        {
          break;
        }

        v28 -= 64;
        if (!--v27)
        {
          goto LABEL_46;
        }
      }

      v31 = __clz(__rbit64(v29));
      if (v31 + 1 != v28)
      {
        FirstBitSet = v31 - v28;
        do
        {
          v33 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((v4 + 31), FirstBitSet);
          v34 = *(*v33 + 224);
          v35 = v33[3];
          v36 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v33[2] + 8, v35);
          if (*(v36 + 40))
          {
            v37 = (*(*v34 + 24))(v34, v46, v33, v35, v36, 0);
          }

          else
          {
            v37 = 0;
          }

          v38 = v33[5];
          v39 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v33[2] + 8, v38);
          if (*(v39 + 40))
          {
            v37 |= (*(*v34 + 32))(v34, v46, v33, v38, v39, 0);
          }

          v40 = v33[6];
          v41 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v33[2] + 8, v40);
          if (*(v41 + 40))
          {
            if (((v37 | (*(*v34 + 40))(v34, v46, v33, v40, v41, 0)) & 1) == 0)
            {
              goto LABEL_44;
            }
          }

          else if (!v37)
          {
LABEL_44:
            re::DynamicBitset<unsigned long long,64ul>::clearBit(v47, FirstBitSet);
            goto LABEL_45;
          }

          re::DynamicBitset<unsigned long long,64ul>::setBit(v47, FirstBitSet);
LABEL_45:
          FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v52, FirstBitSet + 1);
        }

        while (FirstBitSet != -1);
      }
    }

LABEL_46:
    re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((v4 + 52), v47);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((v4 + 31));
    if (v47[0] && (v48 & 1) == 0)
    {
      (*(*v47[0] + 40))();
    }

    if (v52)
    {
      if ((v54 & 1) == 0)
      {
        (*(*v52 + 40))();
      }
    }

    re::StackScratchAllocator::~StackScratchAllocator(v58);
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v44, v42, v43);
    return re::ProfilerTimeGuard<(re::ProfilerStatistic)120>::end(v45);
  }

  return result;
}

void re::ecs2::AcousticMeshSystem::~AcousticMeshSystem(re::ecs2::AcousticMeshSystem *this)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(this + 504);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 31);

  re::ecs2::System::~System(this);
}

{
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(this + 504);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 31);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

re::ecs2::Component *re::ecs2::BasicComponentStateImpl<re::ecs2::AcousticMeshComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::AcousticMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (result)
  {
    v5 = result;
    v6 = 24;
    v7 = 0xFFFFFFFFLL;
    do
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a2 + 16), *(a2 + v6), v5);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        v11 = v8;
        v7 = v9;
        goto LABEL_11;
      }

      v6 += 8;
    }

    while (v6 != 56);
    v11 = -1;
LABEL_11:

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::AcousticMeshComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN2re5audio16AcousticMeshDataENS9_21AcousticARKitMeshDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSD_1EJSA_SB_EEEEEEDcSF_DpT0_(uint64_t a1, uint64_t a2)
{
  re::DynamicArray<re::AcousticSoundReductionMaterial>::deinit(a2 + 112);
  re::DynamicArray<re::AcousticScatteringMaterial>::deinit(a2 + 72);
  re::DynamicArray<re::AcousticAbsorptionMaterial>::deinit(a2 + 32);
  v3 = *(a2 + 24);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN2re5audio22AcousticMeshUpdateDataENS9_27AcousticARKitMeshUpdateDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSD_1EJSA_SB_EEEEEEDcSF_DpT0_(uint64_t a1, uint64_t a2)
{
  re::DynamicArray<re::AcousticSoundReductionMaterial>::deinit(a2 + 120);
  re::DynamicArray<re::AcousticScatteringMaterial>::deinit(a2 + 80);
  re::DynamicArray<re::AcousticAbsorptionMaterial>::deinit(a2 + 40);
  v3 = *(a2 + 32);
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 160);
  if (v4 != -1)
  {
    result = (off_1F5CFDE88[v4])(&v7, result);
  }

  *(v3 + 160) = -1;
  v5 = *(a2 + 160);
  if (v5 != -1)
  {
    v6 = v3;
    result = (off_1F5CFDE98[v5])(&v6, a2);
    *(v3 + 160) = v5;
  }

  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  *v2 = *a2;
  *(v2 + 16) = v4;
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  *(v2 + 72) = 0;
  *(v2 + 32) = v5;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  v6 = *(a2 + 48);
  *(v2 + 40) = *(a2 + 40);
  *(v2 + 48) = v6;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v7 = *(v2 + 56);
  *(v2 + 56) = *(a2 + 56);
  *(a2 + 56) = v7;
  v8 = *(v2 + 72);
  *(v2 + 72) = *(a2 + 72);
  *(a2 + 72) = v8;
  ++*(a2 + 64);
  ++*(v2 + 64);
  *(v2 + 112) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 80) = 0;
  *(v2 + 104) = 0;
  v9 = *(a2 + 88);
  *(v2 + 80) = *(a2 + 80);
  *(v2 + 88) = v9;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v10 = *(v2 + 96);
  *(v2 + 96) = *(a2 + 96);
  *(a2 + 96) = v10;
  v11 = *(v2 + 112);
  *(v2 + 112) = *(a2 + 112);
  *(a2 + 112) = v11;
  ++*(a2 + 104);
  ++*(v2 + 104);
  *(v2 + 152) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 120) = 0;
  *(v2 + 144) = 0;
  v12 = *(a2 + 128);
  *(v2 + 120) = *(a2 + 120);
  *(v2 + 128) = v12;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  v13 = *(v2 + 136);
  *(v2 + 136) = *(a2 + 136);
  *(a2 + 136) = v13;
  v14 = *(v2 + 152);
  *(v2 + 152) = *(a2 + 152);
  *(a2 + 152) = v14;
  ++*(a2 + 144);
  ++*(v2 + 144);
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::audio::AcousticMeshUpdateData,re::audio::AcousticARKitMeshUpdateData> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  *v2 = *a2;
  *(v2 + 16) = v3;
  v4 = *(a2 + 32);
  *(a2 + 32) = 0;
  *(v2 + 32) = v4;
  result = *(a2 + 40);
  *(v2 + 40) = result;
  return result;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 152);
  if (v4 != -1)
  {
    result = (off_1F5CFDE78[v4])(&v7, result);
  }

  *(v3 + 152) = -1;
  v5 = *(a2 + 152);
  if (v5 != -1)
  {
    v6 = v3;
    result = (off_1F5CFDEC0[v5])(&v6, a2);
    *(v3 + 152) = v5;
  }

  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  v4 = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = 0;
  v2[4].n128_u64[0] = 0;
  v2[1].n128_u64[1] = v4;
  v2[2].n128_u64[0] = 0;
  v2[2].n128_u64[1] = 0;
  v2[3].n128_u64[0] = 0;
  v2[3].n128_u32[2] = 0;
  v5 = a2[2].n128_u64[1];
  v2[2].n128_u64[0] = a2[2].n128_u64[0];
  v2[2].n128_u64[1] = v5;
  a2[2] = 0uLL;
  v6 = v2[3].n128_u64[0];
  v2[3].n128_u64[0] = a2[3].n128_u64[0];
  a2[3].n128_u64[0] = v6;
  v7 = v2[4].n128_u64[0];
  v2[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[4].n128_u64[0] = v7;
  ++a2[3].n128_u32[2];
  ++v2[3].n128_u32[2];
  v2[6].n128_u64[1] = 0;
  v2[5].n128_u64[0] = 0;
  v2[5].n128_u64[1] = 0;
  v2[4].n128_u64[1] = 0;
  v2[6].n128_u32[0] = 0;
  v8 = a2[5].n128_u64[0];
  v2[4].n128_u64[1] = a2[4].n128_u64[1];
  v2[5].n128_u64[0] = v8;
  *(&a2[4] + 8) = 0uLL;
  v9 = v2[5].n128_u64[1];
  v2[5].n128_u64[1] = a2[5].n128_u64[1];
  a2[5].n128_u64[1] = v9;
  v10 = v2[6].n128_u64[1];
  v2[6].n128_u64[1] = a2[6].n128_u64[1];
  a2[6].n128_u64[1] = v10;
  ++a2[6].n128_u32[0];
  ++v2[6].n128_u32[0];
  v2[9].n128_u64[0] = 0;
  v2[7].n128_u64[1] = 0;
  v2[8].n128_u64[0] = 0;
  v2[7].n128_u64[0] = 0;
  v2[8].n128_u32[2] = 0;
  v11 = a2[7].n128_u64[1];
  v2[7].n128_u64[0] = a2[7].n128_u64[0];
  v2[7].n128_u64[1] = v11;
  a2[7] = 0uLL;
  v12 = v2[8].n128_u64[0];
  v2[8].n128_u64[0] = a2[8].n128_u64[0];
  a2[8].n128_u64[0] = v12;
  v13 = v2[9].n128_u64[0];
  v2[9].n128_u64[0] = a2[9].n128_u64[0];
  a2[9].n128_u64[0] = v13;
  ++a2[8].n128_u32[2];
  ++v2[8].n128_u32[2];
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::audio::AcousticMeshData,re::audio::AcousticARKitMeshData> &&>(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  *(v2 + 16) = *(a2 + 2);
  *v2 = v3;
  v4 = *(a2 + 3);
  *(a2 + 3) = 0;
  *(v2 + 24) = v4;
  result = a2[2];
  *(v2 + 32) = result;
  return result;
}

void *re::IntrospectionDynamicArray<re::AcousticAbsorptionMaterial>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::AcousticAbsorptionMaterial>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::AcousticAbsorptionMaterial>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::AcousticAbsorptionMaterial>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::AcousticAbsorptionMaterial>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::AcousticAbsorptionMaterial>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::AcousticAbsorptionMaterial>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::AcousticAbsorptionMaterial>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::AcousticAbsorptionMaterial>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::AcousticAbsorptionMaterial>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v20 = 0;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  re::DynamicString::setCapacity(&v13, 0);
  v8 = *(a4 + 16);
  if (v8 >= *(a4 + 8))
  {
    re::DynamicArray<re::AcousticAbsorptionMaterial>::growCapacity(a4, v8 + 1);
    v8 = *(a4 + 16);
  }

  v9 = *(a4 + 32) + 112 * v8;
  *v9 = v13;
  *(v9 + 24) = v15;
  *(v9 + 8) = v14;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0;
  *(v9 + 64) = 0;
  *(v9 + 56) = 1;
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0;
  *(v9 + 104) = 0;
  *(v9 + 96) = 1;
  v10 = *(a4 + 16);
  *(a4 + 16) = v10 + 1;
  ++*(a4 + 24);
  v11 = (*(a4 + 32) + 112 * v10);
  re::introspectionInitElement(a2, a3, a1[6], v11);
  return v11;
}

unint64_t re::IntrospectionDynamicArray<re::AcousticAbsorptionMaterial>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void re::DynamicArray<re::AcousticAbsorptionMaterial>::resize(_anonymous_namespace_ *a1, unint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 112 * a2;
    v9 = a2;
    do
    {
      v10 = (*(v3 + 4) + v8);
      re::DynamicArray<unsigned long>::deinit(v10 + 72);
      re::DynamicArray<unsigned long>::deinit(v10 + 32);
      re::DynamicString::deinit(v10);
      ++v9;
      v8 += 112;
    }

    while (v9 < *(v3 + 2));
  }

  else
  {
    if (*(a1 + 1) < a2)
    {
      a1 = re::DynamicArray<re::AcousticAbsorptionMaterial>::setCapacity(a1, a2);
      v4 = *(v3 + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 112 * v4;
      do
      {
        v7 = *(v3 + 4) + v6;
        *v7 = 0u;
        *(v7 + 16) = 0u;
        a1 = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 32) = 0;
        *(v7 + 40) = 0;
        *(v7 + 56) = 0;
        *(v7 + 48) = 0;
        *(v7 + 104) = 0;
        *(v7 + 64) = 0u;
        *(v7 + 80) = 0u;
        v6 += 112;
        *(v7 + 96) = 0;
        --v5;
      }

      while (v5);
    }
  }

  *(v3 + 2) = a2;
  ++*(v3 + 6);
}

_anonymous_namespace_ *re::DynamicArray<re::AcousticAbsorptionMaterial>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::AcousticAbsorptionMaterial>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::AcousticAbsorptionMaterial>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::AcousticAbsorptionMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::AcousticAbsorptionMaterial>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::AcousticAbsorptionMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::AcousticAbsorptionMaterial>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::AcousticAbsorptionMaterial>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::AcousticAbsorptionMaterial>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::AcousticAbsorptionMaterial>::resize(a1, a4);
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

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::AcousticAbsorptionMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AcousticAbsorptionMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AcousticAbsorptionMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AcousticAbsorptionMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::AcousticScatteringMaterial>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::AcousticScatteringMaterial>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::AcousticScatteringMaterial>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::AcousticScatteringMaterial>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::AcousticScatteringMaterial>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::AcousticScatteringMaterial>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::AcousticScatteringMaterial>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::AcousticScatteringMaterial>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::AcousticScatteringMaterial>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::AcousticScatteringMaterial>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v20 = 0;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  re::DynamicString::setCapacity(&v13, 0);
  v8 = *(a4 + 16);
  if (v8 >= *(a4 + 8))
  {
    re::DynamicArray<re::AcousticScatteringMaterial>::growCapacity(a4, v8 + 1);
    v8 = *(a4 + 16);
  }

  v9 = *(a4 + 32) + 112 * v8;
  *v9 = v13;
  *(v9 + 24) = v15;
  *(v9 + 8) = v14;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0;
  *(v9 + 64) = 0;
  *(v9 + 56) = 1;
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0;
  *(v9 + 104) = 0;
  *(v9 + 96) = 1;
  v10 = *(a4 + 16);
  *(a4 + 16) = v10 + 1;
  ++*(a4 + 24);
  v11 = (*(a4 + 32) + 112 * v10);
  re::introspectionInitElement(a2, a3, a1[6], v11);
  return v11;
}

unint64_t re::IntrospectionDynamicArray<re::AcousticScatteringMaterial>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void re::DynamicArray<re::AcousticScatteringMaterial>::resize(_anonymous_namespace_ *a1, unint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 112 * a2;
    v9 = a2;
    do
    {
      v10 = (*(v3 + 4) + v8);
      re::DynamicArray<unsigned long>::deinit(v10 + 72);
      re::DynamicArray<unsigned long>::deinit(v10 + 32);
      re::DynamicString::deinit(v10);
      ++v9;
      v8 += 112;
    }

    while (v9 < *(v3 + 2));
  }

  else
  {
    if (*(a1 + 1) < a2)
    {
      a1 = re::DynamicArray<re::AcousticScatteringMaterial>::setCapacity(a1, a2);
      v4 = *(v3 + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 112 * v4;
      do
      {
        v7 = *(v3 + 4) + v6;
        *v7 = 0u;
        *(v7 + 16) = 0u;
        a1 = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 32) = 0;
        *(v7 + 40) = 0;
        *(v7 + 56) = 0;
        *(v7 + 48) = 0;
        *(v7 + 104) = 0;
        *(v7 + 64) = 0u;
        *(v7 + 80) = 0u;
        v6 += 112;
        *(v7 + 96) = 0;
        --v5;
      }

      while (v5);
    }
  }

  *(v3 + 2) = a2;
  ++*(v3 + 6);
}

_anonymous_namespace_ *re::DynamicArray<re::AcousticScatteringMaterial>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::AcousticScatteringMaterial>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::AcousticScatteringMaterial>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::AcousticScatteringMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::AcousticScatteringMaterial>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::AcousticScatteringMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::AcousticAbsorptionMaterial>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::AcousticScatteringMaterial>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::AcousticScatteringMaterial>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::AcousticScatteringMaterial>::resize(a1, a4);
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

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::AcousticScatteringMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AcousticScatteringMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AcousticScatteringMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AcousticScatteringMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::AcousticSoundReductionMaterial>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::AcousticSoundReductionMaterial>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::AcousticSoundReductionMaterial>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::AcousticSoundReductionMaterial>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::AcousticSoundReductionMaterial>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::AcousticSoundReductionMaterial>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::AcousticSoundReductionMaterial>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::AcousticSoundReductionMaterial>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::AcousticSoundReductionMaterial>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::AcousticSoundReductionMaterial>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v20 = 0;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  re::DynamicString::setCapacity(&v13, 0);
  v8 = *(a4 + 16);
  if (v8 >= *(a4 + 8))
  {
    re::DynamicArray<re::AcousticSoundReductionMaterial>::growCapacity(a4, v8 + 1);
    v8 = *(a4 + 16);
  }

  v9 = *(a4 + 32) + 112 * v8;
  *v9 = v13;
  *(v9 + 24) = v15;
  *(v9 + 8) = v14;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0;
  *(v9 + 64) = 0;
  *(v9 + 56) = 1;
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0;
  *(v9 + 104) = 0;
  *(v9 + 96) = 1;
  v10 = *(a4 + 16);
  *(a4 + 16) = v10 + 1;
  ++*(a4 + 24);
  v11 = (*(a4 + 32) + 112 * v10);
  re::introspectionInitElement(a2, a3, a1[6], v11);
  return v11;
}

unint64_t re::IntrospectionDynamicArray<re::AcousticSoundReductionMaterial>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void re::DynamicArray<re::AcousticSoundReductionMaterial>::resize(_anonymous_namespace_ *a1, unint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 112 * a2;
    v9 = a2;
    do
    {
      v10 = (*(v3 + 4) + v8);
      re::DynamicArray<unsigned long>::deinit(v10 + 72);
      re::DynamicArray<unsigned long>::deinit(v10 + 32);
      re::DynamicString::deinit(v10);
      ++v9;
      v8 += 112;
    }

    while (v9 < *(v3 + 2));
  }

  else
  {
    if (*(a1 + 1) < a2)
    {
      a1 = re::DynamicArray<re::AcousticSoundReductionMaterial>::setCapacity(a1, a2);
      v4 = *(v3 + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 112 * v4;
      do
      {
        v7 = *(v3 + 4) + v6;
        *v7 = 0u;
        *(v7 + 16) = 0u;
        a1 = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 32) = 0;
        *(v7 + 40) = 0;
        *(v7 + 56) = 0;
        *(v7 + 48) = 0;
        *(v7 + 104) = 0;
        *(v7 + 64) = 0u;
        *(v7 + 80) = 0u;
        v6 += 112;
        *(v7 + 96) = 0;
        --v5;
      }

      while (v5);
    }
  }

  *(v3 + 2) = a2;
  ++*(v3 + 6);
}

_anonymous_namespace_ *re::DynamicArray<re::AcousticSoundReductionMaterial>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::AcousticSoundReductionMaterial>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::AcousticSoundReductionMaterial>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::AcousticSoundReductionMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::AcousticSoundReductionMaterial>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::AcousticSoundReductionMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::AcousticAbsorptionMaterial>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::AcousticSoundReductionMaterial>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::AcousticSoundReductionMaterial>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::AcousticSoundReductionMaterial>::resize(a1, a4);
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

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::AcousticSoundReductionMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AcousticSoundReductionMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AcousticSoundReductionMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AcousticSoundReductionMaterial>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

double re::make::shared::unsafelyInplace<re::ecs2::AcousticMeshComponent>(ArcSharedObject *a1)
{
  *(a1 + 25) = 0u;
  *(a1 + 26) = 0u;
  *(a1 + 23) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 21) = 0u;
  *(a1 + 22) = 0u;
  *(a1 + 19) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 17) = 0u;
  *(a1 + 18) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 14) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 12) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 10) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD8C60;
  result = 0.0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 73) = 0u;
  *(v1 + 89) = 1;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 96) = 0;
  *(v1 + 120) = 0;
  *(v1 + 328) = 0;
  *(v1 + 336) = 0;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0;
  *(v1 + 200) = 0;
  *(v1 + 184) = 0u;
  *(v1 + 168) = 0u;
  *(v1 + 240) = 0;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 280) = 0;
  *(v1 + 248) = 0u;
  *(v1 + 264) = 0u;
  *(v1 + 288) = 0u;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0;
  *(v1 + 352) = 0u;
  *(v1 + 368) = 0u;
  *(v1 + 384) = 0u;
  *(v1 + 400) = 0u;
  *(v1 + 416) = 0;
  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs221AcousticMeshComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 1;
    *(a2 + 8) = 0;
  }
}

re::ecs2::AcousticMeshSystem *re::ecs2::AcousticMeshSystem::AcousticMeshSystem(re::ecs2::AcousticMeshSystem *this)
{
  v2 = re::ecs2::System::System(this, 1, 1);
  *v2 = &unk_1F5CFDDD0;
  v3 = v2 + 224;
  *(v2 + 224) = &unk_1F5CFDD90;
  *(v2 + 232) = v2;
  *(v2 + 240) = 0;
  *(v2 + 256) = 0;
  *(v2 + 248) = 0;
  v4 = v2 + 248;
  *(v2 + 264) = 1;
  *(v2 + 280) = 0;
  *(v2 + 288) = 0;
  *(v2 + 272) = 0;
  *(v2 + 296) = 0;
  *(v2 + 304) = 0u;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0u;
  *(v2 + 352) = 0u;
  *(v2 + 368) = 0u;
  *(v2 + 384) = 1;
  *(v2 + 392) = 0u;
  *(v2 + 408) = 0u;
  *(v2 + 424) = 0;
  *(v2 + 432) = 1;
  *(v2 + 440) = 0u;
  *(v2 + 456) = 0u;
  *(v2 + 465) = 0u;
  v7 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((this + 368), 0);
  *(this + 96) += 2;
  *(this + 51) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((this + 416), 0);
  *(this + 108) += 2;
  *(this + 57) = 0;
  *(this + 58) = this;
  *(this + 59) = v3;
  *(this + 480) = 1;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 134) = 1065353216;
  return this;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
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
          result = (*(**v3 + 32))(*v3, 448, 0);
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

uint64_t *std::__copy_impl::operator()[abi:nn200100]<re::AcousticAbsorptionMaterial const*,re::AcousticAbsorptionMaterial const*,re::AcousticAbsorptionMaterial*>(uint64_t *result, uint64_t *a2, re::DynamicString *this)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      re::DynamicString::operator=(this, v5);
      re::DynamicArray<float>::operator=(this + 32, v5 + 4);
      result = re::DynamicArray<float>::operator=(this + 72, v5 + 9);
      v5 += 14;
      this = (this + 112);
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AcousticMeshSystem::activateComponents,re::ecs2::AcousticMeshSystem>(_BOOL8 a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v4 = a3;
    v5 = &a3[a4];
    do
    {
      v6 = *v4;
      *(v6 + 337) = 0;
      v7 = *(v6 + 16);
      *(v6 + 56) = *(v7 + 312);
      do
      {
        v8 = v7;
        v7 = *(v7 + 32);
      }

      while (v7);
      *(v6 + 64) = *(*(*(v8 + 24) + 104) + 288) >> 1;
      v9 = *re::audioLogObjects(a1);
      a1 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
      if (a1)
      {
        v10 = *(v6 + 16);
        v11 = v9;
        do
        {
          v12 = v10;
          v10 = *(v10 + 32);
        }

        while (v10);
        v13 = *(*(*(v12 + 24) + 104) + 296);
        v14 = *(*(v6 + 16) + 296);
        v16 = *(v6 + 56);
        v15 = *(v6 + 64);
        *buf = 136315906;
        v19 = v13;
        v20 = 2048;
        v21 = v15;
        v22 = 2080;
        v23 = v14;
        v24 = 2048;
        v25 = v16;
        _os_log_debug_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEBUG, "[AcousticMeshSystem::activateComponents] component for scene(%s, %llu) entity(%s, %llu)", buf, 0x2Au);
      }

      ++v4;
    }

    while (v4 != v5);
  }

  return 0;
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::AcousticMeshComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AcousticMeshSystem::deactivateComponents,re::ecs2::AcousticMeshSystem>(uint64_t prime, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3;
  v75 = *MEMORY[0x1E69E9840];
  if (*(prime + 488))
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = &a3[a4];
  if (v5)
  {
    goto LABEL_63;
  }

  v7 = prime;
  v59 = a4;
  *__p = 0u;
  v64 = 0u;
  v65 = 1065353216;
  *v60 = 0u;
  *v61 = 0u;
  v62 = 1065353216;
  v8 = a3;
  do
  {
    v9 = *v8;
    v10 = *(*v8 + 72);
    if (!v10)
    {
      goto LABEL_41;
    }

    LOBYTE(v74) = 0;
    v73[24] = 0;
    v11 = *(v9 + 56);
    v12 = *(v9 + 64);
    *v73 = v12;
    *&v73[8] = v11;
    *&v73[16] = v10;
    if (*(v9 + 88) == 1)
    {
      *&v73[24] = *(v9 + 416);
      LOBYTE(v74) = 1;
    }

    if (!__p[1])
    {
      goto LABEL_25;
    }

    v13 = vcnt_s8(__p[1]);
    v13.i16[0] = vaddlv_u8(v13);
    if (v13.u32[0] > 1uLL)
    {
      v14 = v12;
      if (__p[1] <= v12)
      {
        v14 = v12 % __p[1];
      }
    }

    else
    {
      v14 = (__p[1] - 1) & v12;
    }

    v15 = *(__p[0] + v14);
    if (!v15 || (v16 = *v15) == 0)
    {
LABEL_25:
      operator new();
    }

    while (1)
    {
      v17 = v16[1];
      if (v17 == v12)
      {
        break;
      }

      if (v13.u32[0] > 1uLL)
      {
        if (v17 >= __p[1])
        {
          v17 %= __p[1];
        }
      }

      else
      {
        v17 &= __p[1] - 1;
      }

      if (v17 != v14)
      {
        goto LABEL_25;
      }

LABEL_24:
      v16 = *v16;
      if (!v16)
      {
        goto LABEL_25;
      }
    }

    if (v16[2] != v12)
    {
      goto LABEL_24;
    }

    v18 = v16[4];
    v19 = v16[5];
    if (v19 >= v18)
    {
      v20 = v19 + 1;
      if (v18 < v19 + 1)
      {
        if (v16[3])
        {
          v21 = 2 * v18;
          v5 = v18 == 0;
          v22 = 8;
          if (!v5)
          {
            v22 = v21;
          }

          if (v22 <= v20)
          {
            v23 = v20;
          }

          else
          {
            v23 = v22;
          }

          prime = re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::setCapacity(v16 + 3, v23);
        }

        else
        {
          prime = re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::setCapacity(v16 + 3, v20);
          ++*(v16 + 12);
        }
      }

      v19 = v16[5];
    }

    v24 = v16[7] + 40 * v19;
    v25 = *v73;
    v26 = *&v73[16];
    *(v24 + 32) = v74;
    *v24 = v25;
    *(v24 + 16) = v26;
    ++v16[5];
    ++*(v16 + 12);
    v27 = re::audioLogObjects(prime);
    v28 = re::AudioLogObjects::loggingEnabled(v27);
    if (v28)
    {
      v32 = *re::audioLogObjects(v28);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v34 = *(v9 + 64);
        v33 = *(v9 + 72);
        v35 = *(v9 + 56);
        *buf = 134218496;
        *&buf[4] = v33;
        v68 = 2048;
        v69 = v34;
        v70 = 2048;
        v71 = v35;
        _os_log_debug_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_DEBUG, "AcousticMeshSystem::deactivateComponents: component mesh(%llu) for scene(%llu) entity(%llu)", buf, 0x20u);
      }
    }

    v29 = *(v9 + 16);
    do
    {
      v30 = v29;
      v29 = *(v29 + 32);
    }

    while (v29);
    v31 = *(v30 + 24);
    *buf = v73;
    prime = std::__hash_table<std::__hash_value_type<unsigned long long,re::ecs2::Scene *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::Scene *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::Scene *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ecs2::Scene *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v60, *v73, buf);
    *(prime + 24) = v31;
LABEL_41:
    ++v8;
  }

  while (v8 != v6);
  if (*(&v64 + 1))
  {
    v36 = re::audioLogObjects(prime);
    v37 = re::AudioLogObjects::loggingEnabled(v36);
    if (v37)
    {
      v58 = *re::audioLogObjects(v37);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        *v73 = 134217984;
        *&v73[4] = *(&v64 + 1);
        _os_log_debug_impl(&dword_1E1C61000, v58, OS_LOG_TYPE_DEBUG, "AcousticMeshSystem::deactivateComponents: adding %lu meshes for removal", v73, 0xCu);
      }
    }

    for (i = v64; i; i = *i)
    {
      *v73 = i[2];
      re::DynamicArray<re::audio::AcousticMeshRemovalData>::DynamicArray(&v73[8], i + 3);
      v39 = *(v7 + 488);
      *buf = v73;
      v40 = std::__hash_table<std::__hash_value_type<unsigned long long,re::ecs2::Scene *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::Scene *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::Scene *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ecs2::Scene *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v60, *v73, buf);
      v41 = (*(*v39 + 16))(v39, v40[3]);
      re::DynamicArray<re::audio::AcousticMeshRemovalData>::DynamicArray(buf, &v73[8]);
      v72 = 0;
      (*(*v41 + 232))(v41, buf);
      if (v72 != -1)
      {
        (off_1F5CFDEA8[v72])(&v66, buf);
      }

      if (*&v73[8] && *(&v74 + 1))
      {
        (*(**&v73[8] + 40))();
      }
    }
  }

  v42 = v61[0];
  if (v61[0])
  {
    do
    {
      v43 = *v42;
      operator delete(v42);
      v42 = v43;
    }

    while (v43);
  }

  v44 = v60[0];
  v60[0] = 0;
  if (v44)
  {
    operator delete(v44);
  }

  v45 = v64;
  if (v64)
  {
    do
    {
      v46 = *v45;
      re::DynamicArray<unsigned long>::deinit((v45 + 3));
      operator delete(v45);
      v45 = v46;
    }

    while (v46);
  }

  prime = __p[0];
  __p[0] = 0;
  if (prime)
  {
    operator delete(prime);
  }

  a4 = v59;
LABEL_63:
  if (a4)
  {
    do
    {
      v47 = *v4;
      v48 = re::audioLogObjects(prime);
      prime = re::AudioLogObjects::loggingEnabled(v48);
      if (prime)
      {
        v49 = *re::audioLogObjects(prime);
        prime = os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG);
        if (prime)
        {
          v50 = *(v47 + 16);
          v51 = v49;
          do
          {
            v52 = v50;
            v50 = *(v50 + 32);
          }

          while (v50);
          v53 = *(*(*(v52 + 24) + 104) + 296);
          v54 = *(*(v47 + 16) + 296);
          v56 = *(v47 + 56);
          v55 = *(v47 + 64);
          *v73 = 136315906;
          *&v73[4] = v53;
          *&v73[12] = 2048;
          *&v73[14] = v55;
          *&v73[22] = 2080;
          *&v73[24] = v54;
          LOWORD(v74) = 2048;
          *(&v74 + 2) = v56;
          _os_log_debug_impl(&dword_1E1C61000, v51, OS_LOG_TYPE_DEBUG, "[AcousticMeshSystem::deactivateComponents] component for scene(%s, %llu) entity(%s, %llu)", v73, 0x2Au);
        }
      }

      *(v47 + 336) = 0;
      ++v4;
      *(v47 + 64) = 0;
      *(v47 + 72) = 0;
      *(v47 + 56) = 0;
    }

    while (v4 != v6);
  }

  return 0;
}

re *re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::AcousticMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
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
    *v10 = &unk_1F5CFE0A8;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::AcousticMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CFE100;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::AcousticMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CFE158;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::AcousticMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CFE1B0;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::AcousticMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
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
        *v37 = &unk_1F5CFE0A8;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CFE100;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CFE158;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CFE1B0;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AcousticMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AcousticMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AcousticMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AcousticMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFE0A8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFE0A8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFE100;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFE100;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFE158;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFE158;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFE1B0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AcousticMeshComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFE1B0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,re::ecs2::Scene *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::Scene *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::Scene *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ecs2::Scene *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(float *a1, unint64_t a2, void **a3)
{
  v3 = *(a1 + 2);
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (*&v3 <= a2)
    {
      v5 = a2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

double anonymous namespace::internalDrawBox(void *a1, float32x4_t *a2, float *a3, __n128 *a4, float a5)
{
  v43 = a5;
  v7 = a3[1];
  v8 = a3[5] - v7;
  v9 = a3[2];
  v10 = a3[6] - v9;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v14 = vmulq_n_f32(*a2, *a3);
  v15 = vmlaq_n_f32(v14, v11, v7);
  v16 = vmulq_n_f32(*a2, *a3 + (a3[4] - *a3));
  v17 = vmlaq_n_f32(v16, v11, v7);
  v41 = vaddq_f32(v13, vmlaq_n_f32(v17, v12, v9));
  v42 = vaddq_f32(v13, vmlaq_n_f32(v15, v12, v9));
  v18 = v9 + v10;
  v39 = vaddq_f32(v13, vmlaq_n_f32(v15, v12, v18));
  v40 = vaddq_f32(v13, vmlaq_n_f32(v17, v12, v18));
  v19 = v7 + v8;
  v20 = vmlaq_n_f32(v14, v11, v19);
  v21 = vmlaq_n_f32(v16, v11, v19);
  v37 = vaddq_f32(v13, vmlaq_n_f32(v21, v12, v9));
  v38 = vaddq_f32(v13, vmlaq_n_f32(v20, v12, v9));
  v35 = vaddq_f32(v13, vmlaq_n_f32(v20, v12, v18));
  v36 = vaddq_f32(v13, vmlaq_n_f32(v21, v12, v18));
  v22 = re::PrimitiveRenderingContext::addLine(a1, &v42, &v41);
  re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(6, v22, &v43, (a1 + 30), a1 + 518, a1[17], a1[66], a1[149]);
  re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v22, a4, (a1 + 25), a1 + 517, a1[17], a1[66], a1[149]);
  v23 = re::PrimitiveRenderingContext::addLine(a1, &v41, &v40);
  re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(6, v23, &v43, (a1 + 30), a1 + 518, a1[17], a1[66], a1[149]);
  re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v23, a4, (a1 + 25), a1 + 517, a1[17], a1[66], a1[149]);
  v24 = re::PrimitiveRenderingContext::addLine(a1, &v40, &v39);
  re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(6, v24, &v43, (a1 + 30), a1 + 518, a1[17], a1[66], a1[149]);
  re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v24, a4, (a1 + 25), a1 + 517, a1[17], a1[66], a1[149]);
  v25 = re::PrimitiveRenderingContext::addLine(a1, &v42, &v39);
  re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(6, v25, &v43, (a1 + 30), a1 + 518, a1[17], a1[66], a1[149]);
  re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v25, a4, (a1 + 25), a1 + 517, a1[17], a1[66], a1[149]);
  v26 = re::PrimitiveRenderingContext::addLine(a1, &v42, &v38);
  re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(6, v26, &v43, (a1 + 30), a1 + 518, a1[17], a1[66], a1[149]);
  re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v26, a4, (a1 + 25), a1 + 517, a1[17], a1[66], a1[149]);
  v27 = re::PrimitiveRenderingContext::addLine(a1, &v41, &v37);
  re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(6, v27, &v43, (a1 + 30), a1 + 518, a1[17], a1[66], a1[149]);
  re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v27, a4, (a1 + 25), a1 + 517, a1[17], a1[66], a1[149]);
  v28 = re::PrimitiveRenderingContext::addLine(a1, &v40, &v36);
  re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(6, v28, &v43, (a1 + 30), a1 + 518, a1[17], a1[66], a1[149]);
  re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v28, a4, (a1 + 25), a1 + 517, a1[17], a1[66], a1[149]);
  v29 = re::PrimitiveRenderingContext::addLine(a1, &v39, &v35);
  re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(6, v29, &v43, (a1 + 30), a1 + 518, a1[17], a1[66], a1[149]);
  re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v29, a4, (a1 + 25), a1 + 517, a1[17], a1[66], a1[149]);
  v30 = re::PrimitiveRenderingContext::addLine(a1, &v38, &v37);
  re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(6, v30, &v43, (a1 + 30), a1 + 518, a1[17], a1[66], a1[149]);
  re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v30, a4, (a1 + 25), a1 + 517, a1[17], a1[66], a1[149]);
  v31 = re::PrimitiveRenderingContext::addLine(a1, &v37, &v36);
  re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(6, v31, &v43, (a1 + 30), a1 + 518, a1[17], a1[66], a1[149]);
  re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v31, a4, (a1 + 25), a1 + 517, a1[17], a1[66], a1[149]);
  v32 = re::PrimitiveRenderingContext::addLine(a1, &v36, &v35);
  re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(6, v32, &v43, (a1 + 30), a1 + 518, a1[17], a1[66], a1[149]);
  re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v32, a4, (a1 + 25), a1 + 517, a1[17], a1[66], a1[149]);
  v33 = re::PrimitiveRenderingContext::addLine(a1, &v38, &v35);
  re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(6, v33, &v43, (a1 + 30), a1 + 518, a1[17], a1[66], a1[149]);
  *&result = re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v33, a4, (a1 + 25), a1 + 517, a1[17], a1[66], a1[149]).n128_u64[0];
  return result;
}

void *re::ecs2::SkeletalDebugComponentStateImpl::SkeletalDebugComponentStateImpl(void *a1, uint64_t a2)
{
  v5[5] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5CFE208;
  a1[1] = a2;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  v5[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v5[1] = re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v5[2] = re::ecs2::ComponentImpl<re::ecs2::RigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v5[3] = re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v5[4] = re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v4[0] = v5;
  v4[1] = 5;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((a1 + 2), v4);
  return a1;
}

BOOL re::ecs2::SkeletalDebugComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v33, a5, 0);
  v8 = v33;
  v9 = v34;
  v10 = v34;
  v33 = a4;
  v34 = v8;
  v35 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v33);
      v13 = *(v12 + 16);
      if ((*(v12 + 25) & 1) != 0 || (*(v12 + 120) & 1) != 0 || (v14 = a3 + 4, *(v12 + 121) == 1))
      {
        v15 = *(v13 + 192);
        v14 = a3 + 4;
        if (v15)
        {
          v14 = a3 + 4;
          if (*(v15 + 40))
          {
            v16 = *(v13 + 98);
            v14 = a3 + 4;
            if (*(v13 + 98))
            {
              v17 = (re::ecs2::ComponentImpl<re::ecs2::RigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
              v18 = *(v13 + 104);
              v19 = vld1q_dup_s16(v17);
              v20 = 1;
              v21 = v18;
              v22 = *(v13 + 98);
              while (1)
              {
                v23 = vandq_s8(vceqq_s16(v19, *v21), xmmword_1E306AC00);
                v23.i16[0] = vmaxvq_u16(v23);
                if (v23.i32[0])
                {
                  break;
                }

                v20 -= 8;
                ++v21;
                if (!--v22)
                {
LABEL_14:
                  v14 = a3 + 4;
                  goto LABEL_24;
                }
              }

              v24 = v23.u16[0] - v20;
              v25 = *(v13 + 96);
              v14 = a3 + 4;
              if (v24 < v25)
              {
                v14 = a3 + 4;
                if (*(v13 + 248))
                {
                  v26 = (re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 16);
                  v27 = vld1q_dup_s16(v26);
                  v28 = 1;
                  while (1)
                  {
                    v29 = vandq_s8(vceqq_s16(v27, *v18), xmmword_1E306AC00);
                    v29.i16[0] = vmaxvq_u16(v29);
                    if (v29.i32[0])
                    {
                      break;
                    }

                    v28 -= 8;
                    ++v18;
                    if (!--v16)
                    {
                      goto LABEL_14;
                    }
                  }

                  if (v29.u16[0] - v28 >= v25)
                  {
                    v14 = a3 + 4;
                  }

                  else
                  {
                    v14 = a3 + 6;
                  }
                }
              }
            }
          }
        }
      }

LABEL_24:
      v30 = v33;
      v31 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v34);
      re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v30, v31, *v14);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v34);
    }

    while (v34 != a5 || v35 != 0xFFFF || HIWORD(v35) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[3]);
  if (result != a2 || v7 != a3 || ((v7 ^ a3) & 0xFFFFFF00000000) != 0)
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, result);
    v10 = *a1;
    v11 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v10 + 56), &v11);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v10 + 168, *(*(v10 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v10);
    }
  }

  return result;
}

BOOL re::ecs2::SkeletalDebugComponentStateImpl::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v407 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v371, a5, 0);
  v362 = a4;
  v363 = v371;
  v364 = DWORD2(v371);
  v314 = a5;
  if (v371 != a5 || DWORD2(v371) != 0xFFFFFFFFLL)
  {
    do
    {
      v327 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v362);
      v8 = *(v327 + 16);
      v9 = v8[24];
      v10 = re::ecs2::EntityComponentCollection::get((v8 + 6), re::ecs2::ComponentImpl<re::ecs2::RigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      v11 = v8[31];
      v12 = re::ecs2::EntityComponentCollection::get((v8 + 6), re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      v13 = re::ecs2::EntityComponentCollection::get((v8 + 6), re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
      v14 = *(v9 + 40);
      if (v14 && (v15 = atomic_load((v14 + 896)), v15 == 2))
      {
        v347 = v12;
        v315 = v11;
        v308 = v13;
        v16 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((v9 + 32));
        v17 = *(v16 + 584);
        v18 = *(v16 + 568);
        v19 = re::ecs2::EntityComponentCollection::get((v8 + 6), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v19)
        {
          v20 = (v19 + 216);
          v309 = *(v19 + 192);
          v310 = *(v19 + 208);
        }

        else
        {
          v309 = v18;
          v310 = v17;
          v20 = (v16 + 640);
        }

        v23 = re::AssetHandle::loadedAsset<re::SkeletalPoseDefinitionAsset>((v11 + 4));
        if (v23)
        {
          v24 = v23;
        }

        else
        {
          v24 = (v11 + 19);
        }

        v25 = re::ecs2::SkeletalPoseComponent::calculateRigMappingDataDepHash(v11, v10);
        v26 = v24;
        v27 = v11;
        re::ecs2::SkeletalPoseComponent::ensureSkeletalPoseRigMappingDataUpToDate(v11, v26, v16, v20, (v10 + 23), v25);
        if (v11[59] && v11[71] <= *(v347 + 112))
        {
          re::TransformService::worldTransform(*(*(a1 + 8) + 288), v8, 0, &v359);
          v356 = 0uLL;
          v28 = v8;
          v357 = 0;
          v358 = 0x3F80000000000000;
          do
          {
            v29 = v28;
            v28 = v28[4];
          }

          while (v28);
          PerspectiveCameraInScene = re::ecs2::PerspectiveCameraComponent::firstPerspectiveCameraInScene(v29[3]);
          v31 = v8;
          do
          {
            v32 = v31;
            v31 = v31[4];
          }

          while (v31);
          v33 = v32[3];
          if (PerspectiveCameraInScene)
          {
            v34 = re::ecs2::PerspectiveCameraComponent::firstPerspectiveCameraInScene(v33);
            re::ecs2::PerspectiveCameraComponent::calculateWorldPose(v34, 0, &v356);
          }

          else
          {
            OrthographicCameraInScene = re::ecs2::OrthographicCameraComponent::firstOrthographicCameraInScene(v33);
            v37 = v8;
            do
            {
              v38 = v37;
              v37 = v37[4];
            }

            while (v37);
            v39 = v38[3];
            if (OrthographicCameraInScene)
            {
              v40 = re::ecs2::OrthographicCameraComponent::firstOrthographicCameraInScene(v39);
              re::ecs2::OrthographicCameraComponent::calculateWorldPose(v40, 0, &v356);
            }

            else if (re::ecs2::CustomMatrixCameraComponent::firstCustomMatrixCameraInScene(v39))
            {
              do
              {
                v41 = v8;
                v8 = v8[4];
              }

              while (v8);
              CustomMatrixCameraInScene = re::ecs2::CustomMatrixCameraComponent::firstCustomMatrixCameraInScene(v41[3]);
              re::ecs2::CustomMatrixCameraComponent::calculateWorldPose(CustomMatrixCameraInScene, 0, &v356);
            }
          }

          if (*(v327 + 25) == 1)
          {
            v43 = *(v347 + 112);
            v355[0] = *(v347 + 128);
            v355[1] = v43;
            v312 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((v9 + 32));
            v45 = *(a1 + 8);
            v46 = *(v45 + 232);
            if (!v46)
            {
              goto LABEL_235;
            }

            v307 = *(v45 + 240);
            v47 = v327;
            v48 = *(v327 + 40);
            v49 = v48 >> 1;
            if ((v48 & 1) == 0)
            {
              v49 = v48 >> 1;
            }

            if (v49)
            {
              if (re::DynamicString::operator!=(v327 + 32, v327 + 208) || !*(v327 + 256))
              {
                if (v48)
                {
                  v50 = v327;
                  v51 = *(v327 + 48);
                }

                else
                {
                  v50 = v327;
                  v51 = (v327 + 41);
                }

                re::internal::regularExpressionCreate(v51, &v402);
                v342 = v46;
                if (v50[27])
                {
                  v50[27] = 1;
                  v53 = v50[28];
                }

                else
                {
                  *(v50 + 216) = 0;
                  v53 = v50 + 217;
                }

                *v53 = 0;
                re::DynamicArray<re::DynamicArray<unsigned int>>::clear((v50 + 30));
                if (v402.u8[0] == 1)
                {
                  v54 = v315[71];
                  re::DynamicArray<re::DynamicArray<float>>::resize(v50 + 30, v54);
                  v348 = v54;
                  if (v54)
                  {
                    v27 = 0;
                    v55 = 0;
                    while (1)
                    {
                      v56 = v55;
                      if (v315[80] <= v55)
                      {
                        v57 = 0xFFFFFFFFLL;
                      }

                      else
                      {
                        v57 = *(v315[81] + 4 * v55);
                      }

                      v58 = re::MeshAsset::skeletonAtIndex(v312, v57);
                      v59 = v50[32];
                      if (v59 <= v27)
                      {
                        goto LABEL_231;
                      }

                      v60 = v58;
                      v59 = *(v58 + 24);
                      re::DynamicArray<BOOL>::resize(v50[34] + 40 * v27, v59);
                      if (v59)
                      {
                        break;
                      }

LABEL_73:
                      v27 = v56 + 1;
                      v55 = v56 + 1;
                      v50 = v327;
                      if (v348 <= v27)
                      {
                        goto LABEL_74;
                      }
                    }

                    v62 = 0;
                    v63 = 8;
                    while (1)
                    {
                      v64 = *(v60 + 24);
                      if (v64 <= v62)
                      {
                        goto LABEL_211;
                      }

                      v65 = *(*(v60 + 32) + v63);
                      v66 = strrchr(v65, 47);
                      v67 = v66 ? v66 + 1 : v65;
                      re::internal::regularExpressionFullMatch(v67, &v402.i64[1], v395);
                      v16 = *(v327 + 256);
                      if (v16 <= v27)
                      {
                        break;
                      }

                      v68 = *(v327 + 272) + 40 * v27;
                      v16 = *(v68 + 16);
                      if (v16 <= v62)
                      {
                        goto LABEL_216;
                      }

                      v69 = v395[0];
                      *(*(v68 + 32) + v62) = v395[0];
                      if (v69)
                      {
                        if (*&v395[8])
                        {
                          v61 = *&v395[40];
                          if (*&v395[40])
                          {
                            (*(**&v395[8] + 40))();
                          }
                        }
                      }

                      ++v62;
                      v63 += 16;
                      if (v59 == v62)
                      {
                        goto LABEL_73;
                      }
                    }

LABEL_212:
                    v370.i64[0] = 0;
                    v374 = 0u;
                    v375 = 0u;
                    v372 = 0u;
                    v373 = 0u;
                    v371 = 0u;
                    v62 = MEMORY[0x1E69E9C10];
                    v282 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v397 = 136315906;
                    *&v397[4] = "operator[]";
                    *&v397[12] = 1024;
                    if (v282)
                    {
                      v283 = 3;
                    }

                    else
                    {
                      v283 = 2;
                    }

                    *&v397[14] = 789;
                    v398 = 2048;
                    v399 = v27;
                    v400 = 2048;
                    v401 = v16;
                    _os_log_send_and_compose_impl(v283, &v370, &v371, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v397, 38, v303, v304);
                    _os_crash_msg();
                    __break(1u);
LABEL_216:
                    v370.i64[0] = 0;
                    v374 = 0u;
                    v375 = 0u;
                    v372 = 0u;
                    v373 = 0u;
                    v371 = 0u;
                    v75 = MEMORY[0x1E69E9C10];
                    v284 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v397 = 136315906;
                    *&v397[4] = "operator[]";
                    *&v397[12] = 1024;
                    if (v284)
                    {
                      v285 = 3;
                    }

                    else
                    {
                      v285 = 2;
                    }

                    *&v397[14] = 789;
                    v398 = 2048;
                    v399 = v62;
                    v400 = 2048;
                    v401 = v16;
                    _os_log_send_and_compose_impl(v285, &v370, &v371, 80, &dword_1E1C61000, v75, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v397, 38, v303, v304);
                    _os_crash_msg();
                    __break(1u);
LABEL_220:
                    re::internal::assertLog(6, v197, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v75, v16);
                    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v297, v301);
                    __break(1u);
LABEL_221:
                    re::internal::assertLog(6, v197, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v75, v59);
                    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v298, v302);
                    __break(1u);
LABEL_222:
                    *v397 = 0;
                    v405 = 0u;
                    v406 = 0u;
                    v403 = 0u;
                    v404 = 0u;
                    v402 = 0u;
                    v286 = MEMORY[0x1E69E9C10];
                    v287 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v395 = 136315906;
                    *&v395[4] = "operator[]";
                    *&v395[12] = 1024;
                    if (v287)
                    {
                      v288 = 3;
                    }

                    else
                    {
                      v288 = 2;
                    }

                    *&v395[14] = 789;
                    *&v395[18] = 2048;
                    *&v395[20] = v75;
                    *&v395[28] = 2048;
                    *&v395[30] = v59;
                    _os_log_send_and_compose_impl(v288, v397, &v402, 80, &dword_1E1C61000, v286, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v395, 38, v303, v304);
                    _os_crash_msg();
                    __break(1u);
LABEL_226:
                    v370.i64[0] = 0;
                    v405 = 0u;
                    v406 = 0u;
                    v403 = 0u;
                    v404 = 0u;
                    v402 = 0u;
                    v289 = MEMORY[0x1E69E9C10];
                    v290 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v397 = 136315906;
                    *&v397[4] = "operator[]";
                    *&v397[12] = 1024;
                    if (v290)
                    {
                      v291 = 3;
                    }

                    else
                    {
                      v291 = 2;
                    }

                    *&v397[14] = 797;
                    v398 = 2048;
                    v399 = v27;
                    v400 = 2048;
                    v401 = v75;
                    _os_log_send_and_compose_impl(v291, &v370, &v402, 80, &dword_1E1C61000, v289, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v397, 38, v303, v304);
                    _os_crash_msg();
                    __break(1u);
LABEL_230:
                    re::internal::assertLog(4, v82, v88.n128_f64[0], "assertion failure: '%s' (%s:line %i) ", "assetService", "isFontLoaded", 320);
                    _os_crash("assertion failure: (assetService) ");
                    __break(1u);
LABEL_231:
                    *v397 = 0;
                    v374 = 0u;
                    v375 = 0u;
                    v372 = 0u;
                    v373 = 0u;
                    v371 = 0u;
                    v292 = MEMORY[0x1E69E9C10];
                    v293 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v395 = 136315906;
                    *&v395[4] = "operator[]";
                    *&v395[12] = 1024;
                    if (v293)
                    {
                      v294 = 3;
                    }

                    else
                    {
                      v294 = 2;
                    }

                    *&v395[14] = 789;
                    *&v395[18] = 2048;
                    *&v395[20] = v27;
                    *&v395[28] = 2048;
                    *&v395[30] = v59;
                    _os_log_send_and_compose_impl(v294, v397, &v371, 80, &dword_1E1C61000, v292, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v395, 38, v303, v304);
                    _os_crash_msg();
                    __break(1u);
LABEL_235:
                    re::internal::assertLog(4, v44, "assertion failure: '%s' (%s:line %i) ", "renderManager", "doDrawModelSkeletons", 404);
                    _os_crash("assertion failure: (renderManager) ");
                    __break(1u);
LABEL_236:
                    re::internal::assertLog(4, v35, "assertion failure: '%s' (%s:line %i) ", "meshBoundingBoxes.size() == instances.size()", "doDrawModelBoundingBoxes", 338);
                    _os_crash("assertion failure: (meshBoundingBoxes.size() == instances.size()) ");
                    __break(1u);
                  }
                }

LABEL_74:
                re::DynamicString::operator=((v50 + 26), (v50 + 4));
                if (v402.u8[0] == 1)
                {
                  std::unique_ptr<re::internal::RegexRoot,std::function<void ()(re::internal::RegexRoot*)>>::~unique_ptr[abi:nn200100](&v402.i64[1]);
                  v27 = v315;
                  v46 = v342;
                }

                else
                {
                  v27 = v315;
                  v46 = v342;
                  if (v403.i64[1] && (v404.i8[0] & 1) != 0)
                  {
                    (*(*v403.i64[1] + 40))();
                  }
                }

                v47 = v327;
              }
            }

            else
            {
              if (*(v327 + 216))
              {
                *(v327 + 216) = 1;
                v52 = *(v327 + 224);
              }

              else
              {
                *(v327 + 216) = 0;
                v52 = (v327 + 217);
              }

              *v52 = 0;
              re::DynamicArray<re::DynamicArray<unsigned int>>::clear(v327 + 240);
            }

            v316 = *(v46 + 80);
            v305 = *(v46 + 88);
            re::PrimitiveRenderingContext::PrimitiveRenderingContext(&v371, *(v305 + 224), *(v305 + 248));
            v388 = *(v47 + 28);
            v70 = *(v47 + 116);
            v71 = v359.f32[0];
            v72 = *(v27 + 568);
            re::DynamicArray<re::DynamicArray<float>>::resize((v47 + 240), v72);
            v73.n128_u64[0] = *(v47 + 96);
            v73.n128_u32[2] = *(v47 + 104);
            v73.n128_u32[3] = 1.0;
            v366 = v73;
            v311 = v72;
            if (!v72)
            {
              goto LABEL_138;
            }

            v74 = v47;
            v75 = 0;
            v76 = 0;
            v77 = fmax((v70 * v71), 0.001);
            while (1)
            {
              v16 = v76;
              if (*(v27 + 640) <= v76)
              {
                v78 = 0xFFFFFFFFLL;
              }

              else
              {
                v78 = *(*(v27 + 648) + 4 * v76);
              }

              v317 = re::MeshAsset::skeletonAtIndex(v312, v78);
              v59 = *(v74 + 256);
              if (v59)
              {
                if (v59 <= v75)
                {
                  goto LABEL_222;
                }

                v79 = *(v74 + 272) + 40 * v75;
                v80 = *(v79 + 32);
                v59 = *(v79 + 16);
              }

              else
              {
                v80 = 0;
              }

              v81 = re::SkeletalPoseRigMappingData::poseRigMapAbsoluteJointTransforms(v27 + 472, v16, v355);
              if (!v82)
              {
                goto LABEL_137;
              }

              v84 = v81;
              v27 = v82;
              v313 = v16;
              v85 = v74;
              v62 = 0;
              v338 = v317[7];
              v343 = v317[6];
              v83.i32[0] = *(v85 + 112);
              v86 = *(v85 + 27);
              v368 = v77;
              v87 = (*v83.i32 * 0.25) / *v83.i32;
              v88 = vdupq_lane_s32(v83, 0);
              v323 = v88;
              v325 = *v83.i32;
              v322 = v80;
              do
              {
                if (v62 >= v59 || *(v80 + v62) == 1)
                {
                  if (v343 <= v62)
                  {
                    re::internal::assertLog(6, v82, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v62, v343, v305);
                    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v295, v299);
                    __break(1u);
LABEL_211:
                    re::internal::assertLog(6, v61, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v62, v64);
                    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v296, v300);
                    __break(1u);
                    goto LABEL_212;
                  }

                  v89 = *(v338 + 4 * v62);
                  v16 = v84 + (v62 << 6);
                  if (v27 > v89)
                  {
                    v90 = vmulq_f32(v359, *(v16 + 48));
                    v91 = vextq_s8(vuzp1q_s32(v360, v360), v360, 0xCuLL);
                    v92 = vnegq_f32(v360);
                    v93 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v90, v90), v90, 0xCuLL), v92), v90, v91);
                    v94 = vaddq_f32(v93, v93);
                    v95 = vextq_s8(vuzp1q_s32(v94, v94), v94, 0xCuLL);
                    v96 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v95, v95), v95, 0xCuLL), v92), v95, v91);
                    v402 = vaddq_f32(v361, vaddq_f32(vaddq_f32(v90, vmulq_laneq_f32(v95, v360, 3)), vextq_s8(vuzp1q_s32(v96, v96), v96, 0xCuLL)));
                    v97 = vmulq_f32(v359, *(v84 + (v89 << 6) + 48));
                    v98 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v97, v97), v97, 0xCuLL), v92), v97, v91);
                    v99 = vaddq_f32(v98, v98);
                    v100 = vextq_s8(vuzp1q_s32(v99, v99), v99, 0xCuLL);
                    v101 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v100, v100), v100, 0xCuLL), v92), v100, v91);
                    v88 = vaddq_f32(v361, vaddq_f32(vaddq_f32(v97, vmulq_laneq_f32(v100, v360, 3)), vextq_s8(vuzp1q_s32(v101, v101), v101, 0xCuLL)));
                    *v395 = v88;
                    v102 = vsubq_f32(v402, v88);
                    v103 = vmulq_f32(v102, v102);
                    v104 = v103.f32[2] + vaddv_f32(*v103.f32);
                    if (fabsf(v104) >= 1.0e-10)
                    {
                      v105 = vrsqrte_f32(LODWORD(v104));
                      v106 = vmul_f32(v105, vrsqrts_f32(LODWORD(v104), vmul_f32(v105, v105)));
                      v107 = vmulq_n_f32(v102, vmul_f32(v106, vrsqrts_f32(LODWORD(v104), vmul_f32(v106, v106))).f32[0]);
                      v108 = vextq_s8(vuzp1q_s32(v107, v107), v107, 0xCuLL);
                      v109 = vmlaq_f32(vmulq_f32(v107, xmmword_1E30661E0), xmmword_1E3047680, v108);
                      v110 = vmulq_f32(v109, v109);
                      if (fabsf(v110.f32[1] + (v110.f32[2] + v110.f32[0])) < 1.0e-10)
                      {
                        v109 = vmlaq_f32(vmulq_f32(v107, xmmword_1E30661F0), xmmword_1E30476A0, v108);
                      }

                      v111 = vextq_s8(vuzp1q_s32(v109, v109), v109, 0xCuLL);
                      v112 = sqrtf(v104);
                      v113 = vmulq_f32(v111, v111);
                      *&v114 = v113.f32[2] + vaddv_f32(*v113.f32);
                      *v113.f32 = vrsqrte_f32(v114);
                      *v113.f32 = vmul_f32(*v113.f32, vrsqrts_f32(v114, vmul_f32(*v113.f32, *v113.f32)));
                      v115 = vmulq_n_f32(v111, vmul_f32(*v113.f32, vrsqrts_f32(v114, vmul_f32(*v113.f32, *v113.f32))).f32[0]);
                      v116 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v115, v115), v115, 0xCuLL), vnegq_f32(v107)), v115, v108);
                      v117 = vextq_s8(vuzp1q_s32(v116, v116), v116, 0xCuLL);
                      v118 = vmulq_f32(v116, v116);
                      v113.f32[0] = v118.f32[1] + (v118.f32[2] + v118.f32[0]);
                      *v118.f32 = vrsqrte_f32(v113.u32[0]);
                      *v118.f32 = vmul_f32(*v118.f32, vrsqrts_f32(v113.u32[0], vmul_f32(*v118.f32, *v118.f32)));
                      v119 = vmulq_n_f32(v117, vmul_f32(*v118.f32, vrsqrts_f32(v113.u32[0], vmul_f32(*v118.f32, *v118.f32))).f32[0]);
                      v120 = v112 * 0.1;
                      if ((v112 * 0.1) > 0.025)
                      {
                        v120 = 0.025;
                      }

                      v121 = vmulq_n_f32(v115, v120);
                      v122 = vmulq_n_f32(v119, v120);
                      v123 = v112 * 0.2;
                      if (v123 > 0.04)
                      {
                        v123 = 0.04;
                      }

                      v124 = vaddq_f32(v88, vmulq_n_f32(v107, v123));
                      *v397 = vaddq_f32(v124, v121);
                      v369 = vsubq_f32(v124, v121);
                      v370 = vaddq_f32(v124, v122);
                      v367 = vsubq_f32(v124, v122);
                      v125 = re::PrimitiveRenderingContext::addLine(&v371, v395, v397);
                      re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(6, v125, &v368, v378, v380, v376, v381, v394);
                      re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v125, &v366, v377, &v379, v376, v381, v394);
                      v126 = re::PrimitiveRenderingContext::addLine(&v371, v395, &v370);
                      re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(6, v126, &v368, v378, v380, v376, v381, v394);
                      re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v126, &v366, v377, &v379, v376, v381, v394);
                      v127 = re::PrimitiveRenderingContext::addLine(&v371, v395, &v369);
                      re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(6, v127, &v368, v378, v380, v376, v381, v394);
                      re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v127, &v366, v377, &v379, v376, v381, v394);
                      v128 = re::PrimitiveRenderingContext::addLine(&v371, v395, &v367);
                      re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(6, v128, &v368, v378, v380, v376, v381, v394);
                      re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v128, &v366, v377, &v379, v376, v381, v394);
                      v129 = re::PrimitiveRenderingContext::addLine(&v371, v397, &v370);
                      re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(6, v129, &v368, v378, v380, v376, v381, v394);
                      re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v129, &v366, v377, &v379, v376, v381, v394);
                      v130 = re::PrimitiveRenderingContext::addLine(&v371, &v370, &v369);
                      re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(6, v130, &v368, v378, v380, v376, v381, v394);
                      re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v130, &v366, v377, &v379, v376, v381, v394);
                      v131 = re::PrimitiveRenderingContext::addLine(&v371, &v369, &v367);
                      re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(6, v131, &v368, v378, v380, v376, v381, v394);
                      re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v131, &v366, v377, &v379, v376, v381, v394);
                      v132 = re::PrimitiveRenderingContext::addLine(&v371, &v367, v397);
                      re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(6, v132, &v368, v378, v380, v376, v381, v394);
                      re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v132, &v366, v377, &v379, v376, v381, v394);
                      v133 = re::PrimitiveRenderingContext::addLine(&v371, v397, &v402);
                      re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(6, v133, &v368, v378, v380, v376, v381, v394);
                      re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v133, &v366, v377, &v379, v376, v381, v394);
                      v134 = re::PrimitiveRenderingContext::addLine(&v371, &v370, &v402);
                      re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(6, v134, &v368, v378, v380, v376, v381, v394);
                      re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v134, &v366, v377, &v379, v376, v381, v394);
                      v135 = re::PrimitiveRenderingContext::addLine(&v371, &v369, &v402);
                      re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(6, v135, &v368, v378, v380, v376, v381, v394);
                      re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v135, &v366, v377, &v379, v376, v381, v394);
                      v136 = re::PrimitiveRenderingContext::addLine(&v371, &v367, &v402);
                      re::PrimitiveRenderingDynamicGeometry::set<float,re::PrimitiveRenderingAttribute>(6, v136, &v368, v378, v380, v376, v381, v394);
                      v88 = re::PrimitiveRenderingDynamicGeometry::set<re::Vector4<float>,re::PrimitiveRenderingAttribute>(5, v136, &v366, v377, &v379, v376, v381, v394);
                      v80 = v322;
                    }
                  }

                  if (v86)
                  {
                    v137 = 0;
                    v138 = *v360.i32;
                    v139 = v138 + v138;
                    v140 = *&v360.i32[2];
                    v141 = v140 + v140;
                    v142 = v138 * (v138 + v138);
                    v143 = *&v360.i32[1] * (*&v360.i32[1] + *&v360.i32[1]);
                    v144 = v140 * (v140 + v140);
                    v145 = v139 * *&v360.i32[1];
                    v146 = v139 * *&v360.i32[2];
                    v147 = (*&v360.i32[1] + *&v360.i32[1]) * *&v360.i32[2];
                    v148 = (*&v360.i32[1] + *&v360.i32[1]) * *&v360.i32[3];
                    v149 = v141 * *&v360.i32[3];
                    v150.i32[3] = 0;
                    v150.f32[0] = 1.0 - (v143 + v144);
                    v150.f32[1] = (v139 * *&v360.i32[1]) + v149;
                    v150.f32[2] = (v139 * *&v360.i32[2]) - v148;
                    v151 = v139 * *&v360.i32[3];
                    v152 = 1.0 - (v142 + v144);
                    v153.i32[3] = 0;
                    v153.f32[0] = v145 - v149;
                    v153.f32[1] = v152;
                    v153.f32[2] = v147 + v151;
                    v154.i32[3] = 0;
                    v154.f32[0] = v146 + v148;
                    v154.f32[1] = v147 - v151;
                    v154.f32[2] = 1.0 - (v142 + v143);
                    v155 = vmulq_n_f32(v150, v359.f32[0]);
                    v156 = vmulq_laneq_f32(v154, v359, 2);
                    v157 = *(v16 + 16);
                    v158 = *(v16 + 32);
                    v159 = *(v16 + 48);
                    v160 = v361;
                    v160.i32[3] = 1.0;
                    *v395 = *v16;
                    *&v395[16] = v157;
                    v161 = vmulq_n_f32(v153, v359.f32[1]);
                    *&v395[32] = v158;
                    v396 = v159;
                    do
                    {
                      *(&v402 + v137) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v155, COERCE_FLOAT(*&v395[v137])), v161, *&v395[v137], 1), v156, *&v395[v137], 2), v160, *&v395[v137], 3);
                      v137 += 16;
                    }

                    while (v137 != 64);
                    v162 = v402;
                    v163 = v368;
                    v164 = vaddq_f32(v405, vmlaq_f32(vmlaq_f32(vmulq_n_f32(v402, v325), 0, v403), 0, v404));
                    v402 = vdivq_f32(v164, vdupq_laneq_s32(v164, 3));
                    v165 = vmulq_f32(v162, 0);
                    v166 = vaddq_f32(v405, vmlaq_f32(vmlaq_f32(v165, v323, v403), 0, v404));
                    *v395 = vdivq_f32(v166, vdupq_laneq_s32(v166, 3));
                    v349 = v405;
                    v167 = vaddq_f32(v405, vmlaq_f32(vmlaq_f32(v165, 0, v403), v323, v404));
                    v329 = *v395;
                    v332 = vdivq_f32(v167, vdupq_laneq_s32(v167, 3));
                    *v397 = v332;
                    v369 = xmmword_1E3060D30;
                    v370 = v405;
                    v168 = vsubq_f32(v402, v405);
                    v169 = vmulq_f32(v168, v168);
                    v369 = xmmword_1E3071540;
                    v370 = v349;
                    v170 = vsubq_f32(v329, v349);
                    v171 = vmulq_f32(v170, v170);
                    v369 = xmmword_1E3063230;
                    v370 = v349;
                    v172 = vsubq_f32(v332, v349);
                    v173 = vmulq_f32(v172, v172);
                  }
                }

                ++v62;
              }

              while (v62 != v27);
              v74 = v327;
              LODWORD(v16) = v313;
              if (*(v327 + 26) != 1)
              {
                goto LABEL_137;
              }

              if (!v307)
              {
                goto LABEL_230;
              }

              v174 = *(v327 + 192);
              if (!v174)
              {
                goto LABEL_115;
              }

              v175 = atomic_load((v174 + 896));
              if (v175 != 2)
              {
                if (!*(v327 + 192))
                {
LABEL_115:
                  (*(*v307 + 8))(&v402, v88);
                  v176 = *(v327 + 184);
                  *(v327 + 184) = v402;
                  v402 = v176;
                  v177 = *(v327 + 200);
                  *(v327 + 200) = v403.i64[0];
                  v403.i64[0] = v177;
                  re::AssetHandle::~AssetHandle(&v402);
                }

                re::AssetHandle::loadAsync((v327 + 184));
              }

              v178 = *(v327 + 192);
              if (v178)
              {
                v179 = atomic_load((v178 + 896));
                if (v179 == 2)
                {
                  re::makeFontID(v397, (v327 + 184));
                  v180 = *v360.i32;
                  v181 = v180 + v180;
                  v182 = *&v360.i32[2];
                  v183 = v182 + v182;
                  v184 = v180 * (v180 + v180);
                  v185 = *&v360.i32[1] * (*&v360.i32[1] + *&v360.i32[1]);
                  v186 = v182 * (v182 + v182);
                  v187 = v181 * *&v360.i32[1];
                  v188 = v181 * *&v360.i32[2];
                  v189 = (*&v360.i32[1] + *&v360.i32[1]) * *&v360.i32[2];
                  v190 = v181 * *&v360.i32[3];
                  v191 = (*&v360.i32[1] + *&v360.i32[1]) * *&v360.i32[3];
                  v192.i32[3] = 0;
                  v192.f32[0] = 1.0 - (v185 + v186);
                  v192.f32[1] = v187 + (v183 * *&v360.i32[3]);
                  v192.f32[2] = v188 - v191;
                  v193.i32[3] = 0;
                  v193.f32[0] = v187 - (v183 * *&v360.i32[3]);
                  v193.f32[1] = 1.0 - (v184 + v186);
                  v193.f32[2] = v189 + v190;
                  v194.i32[3] = 0;
                  v194.f32[0] = v188 + v191;
                  v194.f32[1] = v189 - v190;
                  v194.f32[2] = 1.0 - (v184 + v185);
                  v330 = vmulq_n_f32(v192, v359.f32[0]);
                  v324 = vmulq_n_f32(v193, v359.f32[1]);
                  v326 = vmulq_laneq_f32(v194, v359, 2);
                  v195 = v361;
                  v195.i32[3] = 1.0;
                  v321 = v195;
                  v196 = re::StringID::StringID(&v365, v397);
                  v75 = 0;
                  v204.i32[0] = v357;
                  v198 = *v204.i32 + *v204.i32;
                  v199 = *&v358;
                  v200 = (*v204.i32 + *v204.i32) * *&v358;
                  v201 = (*(&v357 + 1) + *(&v357 + 1)) * *(&v358 + 1);
                  v202 = *&v358 * (*(&v357 + 1) + *(&v357 + 1));
                  v203 = (*v204.i32 + *v204.i32) * *(&v358 + 1);
                  *v204.i32 = *v204.i32 * (*v204.i32 + *v204.i32);
                  v205 = *(&v357 + 1) * (*(&v357 + 1) + *(&v357 + 1));
                  v206.i32[3] = 0;
                  v206.f32[0] = v200 + v201;
                  v206.f32[1] = v202 - v203;
                  v206.f32[2] = 1.0 - (*v204.i32 + v205);
                  v207 = v198 * *(&v357 + 1);
                  v208 = (v199 + v199) * *(&v358 + 1);
                  v209 = v199 * (v199 + v199);
                  v210.i32[3] = 0;
                  v210.f32[0] = v207 - v208;
                  v210.f32[1] = 1.0 - (*v204.i32 + v209);
                  v210.f32[2] = v202 + v203;
                  v319 = v210;
                  v320 = v206;
                  v16 = v317[3];
                  v211 = v317[4];
                  v212.i32[3] = 0;
                  v212.f32[0] = 1.0 - (v209 + v205);
                  v212.f32[1] = v207 + v208;
                  v212.f32[2] = v200 - v201;
                  v318 = v212;
                  do
                  {
                    if (!v59)
                    {
                      goto LABEL_123;
                    }

                    if (v59 <= v75)
                    {
                      goto LABEL_221;
                    }

                    if (*(v322 + v75) == 1)
                    {
LABEL_123:
                      if (v16 <= v75)
                      {
                        goto LABEL_220;
                      }

                      v213 = *(v84 + (v75 << 6) + 48);
                      v213.i32[3] = 1.0;
                      v350 = v213;
                      v204.i32[0] = *(v74 + 80);
                      v339 = vmulq_n_f32(v319, COERCE_FLOAT(vdupq_lane_s32(v204, 0).i32[1]));
                      v344 = vmulq_n_f32(v320, *v204.i32);
                      v333 = vmulq_n_f32(v318, *v204.i32);
                      v214 = *(v211 + 16 * v75 + 8);
                      v215 = strrchr(v214, 47);
                      v216 = 0;
                      *v395 = v333;
                      *&v395[16] = v339;
                      *&v395[32] = v344;
                      v396 = v350;
                      do
                      {
                        *(&v402 + v216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v330, COERCE_FLOAT(*&v395[v216])), v324, *&v395[v216], 1), v326, *&v395[v216], 2), v321, *&v395[v216], 3);
                        v216 += 16;
                      }

                      while (v216 != 64);
                      if (v215)
                      {
                        v217 = v215 + 1;
                      }

                      else
                      {
                        v217 = v214;
                      }

                      v74 = v327;
                      re::DebugRenderer::drawText(v316, &v402, v217, &v365, (v327 + 64), 0);
                    }

                    ++v75;
                  }

                  while (v75 != v27);
                  if (*&v365.var0)
                  {
                    if (*&v365.var0)
                    {
                    }
                  }

                  v365.var1 = &str_67;
                  *&v365.var0 = 0;
                  LODWORD(v16) = v313;
                  if (v397[0])
                  {
                    if (v397[0])
                    {
                    }
                  }
                }
              }

LABEL_137:
              v75 = (v16 + 1);
              v76 = v16 + 1;
              v27 = v315;
              if (v311 <= v75)
              {
LABEL_138:
                if (!re::PrimitiveRenderingContext::isEmpty(&v371))
                {
                  re::PrimitiveRenderer::submitContext(v305, &v371);
                }

                if (v389)
                {
                  if (v393)
                  {
                    (*(*v389 + 40))();
                  }

                  v393 = 0;
                  v390 = 0;
                  v391 = 0;
                  v389 = 0;
                  ++v392;
                }

                re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::deinit(v387);
                if (v382)
                {
                  if (v386)
                  {
                    (*(*v382 + 40))();
                  }

                  v386 = 0;
                  v383 = 0;
                  v384 = 0;
                  v382 = 0;
                  ++v385;
                }

                for (i = 976; i != 816; i -= 40)
                {
                  re::DynamicArray<unsigned long>::deinit(&v371 + i);
                }

                do
                {
                  re::DynamicArray<unsigned long>::deinit(&v371 + i);
                  i -= 40;
                }

                while (i != 656);
                do
                {
                  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(&v371 + i);
                  i -= 40;
                }

                while (i != 496);
                for (j = 240; j != -40; j -= 40)
                {
                  re::DynamicArray<unsigned long>::deinit(&v371 + j);
                }

                break;
              }
            }
          }

          v220 = v327;
          v221 = v308;
          if (v308)
          {
            if (*(v327 + 120) == 1)
            {
              v222 = *(v308 + 96);
              if (v222)
              {
                if (*(v222 + 104) != v309)
                {
                  goto LABEL_236;
                }

                v223 = *(*(a1 + 8) + 232);
                v224 = *(v223 + 32);
                v225 = *(v223 + 88);
                v226 = v360;
                v334 = v359;
                v351 = v361;
                re::PrimitiveRenderingContext::PrimitiveRenderingContext(&v371, *(v225 + 224), *(v225 + 248));
                v388 = *(v327 + 28);
                if (v309)
                {
                  v227 = 0;
                  v228 = *v226.i32 * (*v226.i32 + *v226.i32);
                  v229 = *&v226.i32[1] * (*&v226.i32[1] + *&v226.i32[1]);
                  v230 = *&v226.i32[2] * (*&v226.i32[2] + *&v226.i32[2]);
                  v231 = (*v226.i32 + *v226.i32) * *&v226.i32[1];
                  v232 = (*v226.i32 + *v226.i32) * *&v226.i32[2];
                  v233 = (*&v226.i32[1] + *&v226.i32[1]) * *&v226.i32[2];
                  v234 = (*v226.i32 + *v226.i32) * *&v226.i32[3];
                  v235 = (*&v226.i32[1] + *&v226.i32[1]) * *&v226.i32[3];
                  v236 = (*&v226.i32[2] + *&v226.i32[2]) * *&v226.i32[3];
                  v237.i32[3] = 0;
                  v237.f32[0] = 1.0 - (v229 + v230);
                  v237.f32[1] = v231 + v236;
                  v237.f32[2] = v232 - v235;
                  v238.i32[3] = 0;
                  v238.f32[0] = v231 - v236;
                  v238.f32[1] = 1.0 - (v228 + v230);
                  v238.f32[2] = v233 + v234;
                  *&v239 = 1.0 - (v228 + v229);
                  v240.f32[0] = v232 + v235;
                  v240.f32[1] = v233 - v234;
                  v240.i64[1] = v239;
                  v340 = vmulq_n_f32(v238, v334.f32[1]);
                  v345 = vmulq_n_f32(v237, v334.f32[0]);
                  v335 = vmulq_laneq_f32(v240, v334, 2);
                  v241 = v351;
                  v241.i32[3] = 1.0;
                  v352 = v241;
                  v242 = fmax((*(v327 + 116) * v359.f32[0]), 0.001);
                  do
                  {
                    v243 = re::DataArray<re::MeshInstance>::get(v224 + 72, *(v310 + 8 * v227));
                    v244 = 0;
                    v245 = v243[3];
                    v246 = v243[4];
                    v247 = v243[5];
                    *v395 = v243[2];
                    *&v395[16] = v245;
                    *&v395[32] = v246;
                    v396 = v247;
                    do
                    {
                      *(&v402 + v244) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v345, COERCE_FLOAT(*&v395[v244])), v340, *&v395[v244], 1), v335, *&v395[v244], 2), v352, *&v395[v244], 3);
                      v244 += 16;
                    }

                    while (v244 != 64);
                    v248 = re::MeshBoundingBoxes::boundingBox((v222 + 80), v227);
                    ++v227;
                  }

                  while (v227 != v309);
                }

                if (!re::PrimitiveRenderingContext::isEmpty(&v371))
                {
                  re::PrimitiveRenderer::submitContext(v225, &v371);
                }

                if (v389)
                {
                  if (v393)
                  {
                    (*(*v389 + 40))();
                  }

                  v393 = 0;
                  v390 = 0;
                  v391 = 0;
                  v389 = 0;
                  ++v392;
                }

                re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::deinit(v387);
                if (v382)
                {
                  if (v386)
                  {
                    (*(*v382 + 40))();
                  }

                  v386 = 0;
                  v383 = 0;
                  v384 = 0;
                  v382 = 0;
                  ++v385;
                }

                for (k = 976; k != 816; k -= 40)
                {
                  re::DynamicArray<unsigned long>::deinit(&v371 + k);
                }

                do
                {
                  re::DynamicArray<unsigned long>::deinit(&v371 + k);
                  k -= 40;
                }

                while (k != 656);
                do
                {
                  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(&v371 + k);
                  k -= 40;
                }

                while (k != 496);
                for (m = 240; m != -40; m -= 40)
                {
                  re::DynamicArray<unsigned long>::deinit(&v371 + m);
                }

                v220 = v327;
                v221 = v308;
              }
            }

            if (v220[7].n128_u8[9] == 1)
            {
              v59 = *(v221 + 96);
              if (v59)
              {
                v251 = *(*(a1 + 8) + 232);
                v252 = *(v251 + 32);
                v253 = v360;
                v336 = v359;
                v353 = v361;
                v328 = *(v251 + 88);
                re::PrimitiveRenderingContext::PrimitiveRenderingContext(&v371, *(v328 + 224), *(v328 + 248));
                v388 = v220[1].n128_u8[12];
                if (v309)
                {
                  v254 = 0;
                  v255 = 0;
                  v256 = *v253.i32 * (*v253.i32 + *v253.i32);
                  v257 = *&v253.i32[1] * (*&v253.i32[1] + *&v253.i32[1]);
                  v258 = *&v253.i32[2] * (*&v253.i32[2] + *&v253.i32[2]);
                  v259 = (*v253.i32 + *v253.i32) * *&v253.i32[1];
                  v260 = (*v253.i32 + *v253.i32) * *&v253.i32[2];
                  v261 = (*&v253.i32[1] + *&v253.i32[1]) * *&v253.i32[2];
                  v262 = (*v253.i32 + *v253.i32) * *&v253.i32[3];
                  v263 = (*&v253.i32[1] + *&v253.i32[1]) * *&v253.i32[3];
                  v264 = (*&v253.i32[2] + *&v253.i32[2]) * *&v253.i32[3];
                  v265.i32[3] = 0;
                  v265.f32[0] = 1.0 - (v257 + v258);
                  v265.f32[1] = v259 + v264;
                  v265.f32[2] = v260 - v263;
                  v266.i32[3] = 0;
                  v266.f32[0] = v259 - v264;
                  v266.f32[1] = 1.0 - (v256 + v258);
                  v266.f32[2] = v261 + v262;
                  *&v267 = 1.0 - (v256 + v257);
                  v268.f32[0] = v260 + v263;
                  v268.f32[1] = v261 - v262;
                  v268.i64[1] = v267;
                  v341 = vmulq_n_f32(v266, v336.f32[1]);
                  v346 = vmulq_n_f32(v265, v336.f32[0]);
                  v337 = vmulq_laneq_f32(v268, v336, 2);
                  v269 = v353;
                  v269.i32[3] = 1.0;
                  v354 = v269;
                  v270 = fmax((v220[7].n128_f32[1] * v359.f32[0]), 0.001);
                  v331 = v252;
                  do
                  {
                    v271 = re::DataArray<re::MeshInstance>::get(v252 + 72, *(v310 + 8 * v255));
                    v272 = 0;
                    v273 = *(v271 + 48);
                    v274 = *(v271 + 64);
                    v275 = *(v271 + 80);
                    *v395 = *(v271 + 32);
                    *&v395[16] = v273;
                    *&v395[32] = v274;
                    v396 = v275;
                    do
                    {
                      *(&v402 + v272) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v346, COERCE_FLOAT(*&v395[v272])), v341, *&v395[v272], 1), v337, *&v395[v272], 2), v354, *&v395[v272], 3);
                      v272 += 16;
                    }

                    while (v272 != 64);
                    *v395 = v402;
                    *&v395[16] = v403;
                    *&v395[32] = v404;
                    v396 = v405;
                    v27 = WORD1(*(v271 + 16));
                    v75 = *(v252 + 24);
                    if (v75 <= v27)
                    {
                      goto LABEL_226;
                    }

                    v276 = *(*(*(v252 + 40) + 16 * WORD1(*(v271 + 16))) + 864 * *(v271 + 16) + 56);
                    if (v276)
                    {
                      v277 = v276 + v254;
                      do
                      {
                        v278 = re::MeshBoundingBoxes::boundingBox((v59 + 152), v254);
                        ++v254;
                        --v276;
                      }

                      while (v276);
                      v254 = v277;
                      v252 = v331;
                    }
                  }

                  while (++v255 != v309);
                }

                if (!re::PrimitiveRenderingContext::isEmpty(&v371))
                {
                  re::PrimitiveRenderer::submitContext(v328, &v371);
                }

                if (v389)
                {
                  if (v393)
                  {
                    (*(*v389 + 40))();
                  }

                  v393 = 0;
                  v390 = 0;
                  v391 = 0;
                  v389 = 0;
                  ++v392;
                }

                re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::deinit(v387);
                if (v382)
                {
                  if (v386)
                  {
                    (*(*v382 + 40))();
                  }

                  v386 = 0;
                  v383 = 0;
                  v384 = 0;
                  v382 = 0;
                  ++v385;
                }

                for (n = 976; n != 816; n -= 40)
                {
                  re::DynamicArray<unsigned long>::deinit(&v371 + n);
                }

                do
                {
                  re::DynamicArray<unsigned long>::deinit(&v371 + n);
                  n -= 40;
                }

                while (n != 656);
                do
                {
                  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(&v371 + n);
                  n -= 40;
                }

                while (n != 496);
                for (ii = 240; ii != -40; ii -= 40)
                {
                  re::DynamicArray<unsigned long>::deinit(&v371 + ii);
                }
              }
            }
          }
        }
      }

      else
      {
        re::AssetHandle::loadAsync((v9 + 32));
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v363);
    }

    while (v363 != v314 || v364 != 0xFFFF || HIWORD(v364) != 0xFFFF);
  }

  return *(v314 + 40) != 0;
}