uint64_t re::ecs2::NetworkComponent::onComponentWillRemoveEvent(uint64_t a1, uint64_t a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 8);
  if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
  {
    re::packCharArrayToUInt64ForAriadne(*(a1 + 296), 0);
    re::packCharArrayToUInt64ForAriadne(v3[4], 0);
    kdebug_trace();
  }

  v4 = re::ecs2::EntityComponentCollection::get((a1 + 48), v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = (*(*v4 + 40))(v4);
  v7 = (*(*v6 + 48))(v6);
  while (1)
  {
    {
      v11 = v7;
      v7 = v11;
      if (v12)
      {
        re::introspect<re::ecs2::NetworkComponent>(BOOL)::info = re::internal::getOrCreateInfo("NetworkComponent", re::ecs2::allocInfo_NetworkComponent, re::ecs2::initInfo_NetworkComponent, &re::internal::introspectionInfoStorage<re::ecs2::NetworkComponent>, 0);
        v7 = v11;
      }
    }

    if (v7 == re::introspect<re::ecs2::NetworkComponent>(BOOL)::info)
    {
      break;
    }

    v8 = *(v7 + 56);
    if (v8)
    {
      v9 = *(v7 + 64);
      while (1)
      {
        v10 = *v9;
        if (**v9 == 1 && v10[10] == 3)
        {
          break;
        }

        ++v9;
        if (!--v8)
        {
          goto LABEL_19;
        }
      }

      v7 = *(v10 + 2);
      if (v7)
      {
        continue;
      }
    }

    goto LABEL_19;
  }

  re::ecs2::NetworkComponent::onRemoved(v5, 0);
LABEL_19:
  v13 = *(a1 + 216);
  if (!v13 || !*(v13 + 56))
  {
    return 0;
  }

  if (*(v13 + 32))
  {
    if (RESyncableGetOwnerPeerID())
    {
      goto LABEL_32;
    }
  }

  else if (*(v13 + 116) < 0 && *(v13 + 64))
  {
    goto LABEL_32;
  }

  v14 = a1;
  do
  {
    v15 = v14;
    v14 = *(v14 + 32);
  }

  while (v14);
  v16 = *(v15 + 24);
  if (v16)
  {
    v17 = *(v16 + 56);
    if (v17)
    {
      v18 = (*(*v17 + 32))(v17);
      v19 = re::ServiceLocator::serviceOrNull<re::NetworkSystem>(v18);
      if (v19)
      {
        re::Event<re::NetworkSystem,re::ecs2::Component *>::raise(v19 + 968, *(v13 + 56), v5);
      }
    }
  }

LABEL_32:
  v20 = (*(*v5 + 40))(v5);
  if (re::ecs2::LocalComponentInfo::contains((v13 + 112), v21, v20[2]))
  {
    v22 = (*(*v5 + 40))(v5);
    if (*(v13 + 116) < 0)
    {
      re::ecs2::LocalComponentInfo::remove((v13 + 112), *(v22 + 16));
    }
  }

  v23 = (*(*v5 + 40))(v5);
  v24 = re::ecs2::RemoteComponentInfo::get((v13 + 144), *(v23 + 16));
  if (v24)
  {
    v25 = v24;
    RESyncRetain();
    re::ecs2::NetworkComponent::unbindComponentFromSyncable(v13, v5, v25);
    if (!*(v13 + 32) || !RESyncableIsAuthoritative())
    {
LABEL_55:
      RESyncRelease();
      return 0;
    }

    LOWORD(v44) = *((*(*v5 + 40))(v5) + 16);
    re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::remove(v13 + 336, &v44);
    v26 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v25 ^ (v25 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v25 ^ (v25 >> 30))) >> 27));
    v27 = v26 ^ (v26 >> 31);
    v28 = *(v13 + 408);
    if (v28)
    {
      v29 = v27 % v28;
      v30 = *(*(v13 + 392) + 4 * (v27 % v28));
      if (v30 != 0x7FFFFFFF)
      {
        v31 = *(v13 + 400);
        if (*(v31 + 24 * v30 + 16) == v25)
        {
LABEL_52:
          v37 = re::NetworkSystemFeatureFlags::enableECSNetworkHFLogs(v36);
          if (v37)
          {
            v38 = *re::ecsNetworkLogObjects(v37);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              v39 = v3[4];
              v40 = *(a1 + 312);
              Guid = RESyncableGetGuid();
              v42 = RESyncableGetGuid();
              v44 = 134219011;
              v45 = v5;
              v46 = 2081;
              v47 = v39;
              v48 = 2048;
              v49 = v40;
              v50 = 2048;
              v51 = Guid;
              v52 = 2048;
              v53 = v42;
              _os_log_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_DEFAULT, "[NetworkComponent] Unbinding component %p(%{private}s) in entity %llu(%llu) from syncable %llu", &v44, 0x34u);
            }
          }

          goto LABEL_55;
        }

        while (1)
        {
          LODWORD(v30) = *(v31 + 24 * v30 + 8) & 0x7FFFFFFF;
          if (v30 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v31 + 24 * v30 + 16) == v25)
          {
            goto LABEL_52;
          }
        }
      }
    }

    else
    {
      LODWORD(v29) = 0;
    }

    v32 = *(v13 + 420);
    if (v32 == 0x7FFFFFFF)
    {
      v32 = *(v13 + 416);
      v33 = v32;
      if (v32 == v28)
      {
        re::HashSetBase<RESyncableRefRetainer,RESyncableRefRetainer,re::internal::ValueAsKey<RESyncableRefRetainer>,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::setCapacity(v13 + 384, 2 * *(v13 + 412));
        LODWORD(v29) = v27 % *(v13 + 408);
        v33 = *(v13 + 416);
      }

      *(v13 + 416) = v33 + 1;
      v34 = *(v13 + 400);
      v35 = *(v34 + 24 * v32 + 8);
    }

    else
    {
      v34 = *(v13 + 400);
      v35 = *(v34 + 24 * v32 + 8);
      *(v13 + 420) = v35 & 0x7FFFFFFF;
    }

    *(v34 + 24 * v32 + 8) = v35 | 0x80000000;
    *(*(v13 + 400) + 24 * v32 + 8) = *(*(v13 + 400) + 24 * v32 + 8) & 0x80000000 | *(*(v13 + 392) + 4 * v29);
    *(*(v13 + 400) + 24 * v32) = v27;
    *(*(v13 + 400) + 24 * v32 + 16) = v25;
    RESyncRetain();
    *(*(v13 + 392) + 4 * v29) = v32;
    ++*(v13 + 412);
    ++*(v13 + 424);
    goto LABEL_52;
  }

  return 0;
}

void re::ecs2::NetworkReceiveSystem::willRemoveSceneFromECSService(re::ecs2::NetworkReceiveSystem *this, re::ecs2::Scene *a2)
{
  v16 = a2;
  v4 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v4)
  {
    v5 = *(v4 + 384);
    if (v5)
    {
      v6 = *(v4 + 400);
      v7 = 8 * v5;
      do
      {
        v8 = *v6++;
        re::ecs2::NetworkComponent::onRemoved(v8, 1);
        v7 -= 8;
      }

      while (v7);
    }
  }

  v9 = *(a2 + 36);
  if (v9)
  {
    v10 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](this + 224, &v16);
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = *(v10 + 32);
      v13 = &v12[2 * v11];
      do
      {
        v14 = *v12;
        v15 = v12[1];
        v12 += 2;
        re::EventBus::unsubscribe(v9, v14, v15);
      }

      while (v12 != v13);
    }

    re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 224, &v16);
  }
}

uint64_t re::ecs2::NetworkReceiveSystem::willRemoveSystemFromECSService(re::ecs2::NetworkReceiveSystem *this)
{
  if (*(this + 34))
  {
    RESyncServiceRemoveObserver();
    RESyncRelease();
    *(this + 35) = 0;
    *(this + 36) = 0;
    *(this + 37) = 0;
    re::internal::destroyPersistent<re::NetworkAssetSerialization>(*(this + 40));
  }

  *(this + 34) = 0;
  RESyncDestroySyncObjectReadContext();
  *(this + 43) = 0;
  result = RESyncDestroySyncObjectContext();
  *(this + 41) = 0;
  *(this + 38) = 0;
  *(this + 39) = 0;
  return result;
}

re *re::internal::destroyPersistent<re::NetworkAssetSerialization>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    (**v1)(v1);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

unint64_t re::ecs2::NetworkComponent::getEntityBoundTo@<X0>(unint64_t result@<X0>, id **a2@<X8>)
{
  if (result && (result = RESyncableGetUserData(), (result & 1) != 0) && (result &= ~1uLL) != 0)
  {
    result = objc_loadWeakRetained(result);
    v3 = (result - 8);
    if (!result)
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void re::ecs2::NetworkReceiveSystem::update(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a1[34])
  {
    v5 = (*(*a1[5] + 184))(a1[5], a2);
    if (v5 || *(a3 + 200))
    {
      isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v5);
      if (isStatisticCollectionEnabled)
      {
        v7 = re::profilerThreadContext(isStatisticCollectionEnabled);
        if (*(v7 + 152))
        {
          v44 = mach_absolute_time();
        }
      }

      else
      {
        v7 = 0;
      }

      re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v88, 3051, a1, v8, 0, 0);
      if (a1[36])
      {
        v45 = v7;
        v70[0] = 0;
        v70[1] = v70;
        v70[2] = 0x15002000000;
        v70[3] = __Block_byref_object_copy__13;
        v70[4] = __Block_byref_object_dispose__13;
        v71 = 0;
        v73 = 0;
        v72 = 0u;
        memset(v74, 0, sizeof(v74));
        v75 = 0x7FFFFFFFLL;
        memset(v76, 0, sizeof(v76));
        v77 = 0;
        v79 = 0;
        memset(v78, 0, sizeof(v78));
        memset(v80, 0, sizeof(v80));
        v81 = 0x7FFFFFFFLL;
        v83 = 0;
        memset(v82, 0, sizeof(v82));
        v84 = 0x7FFFFFFFLL;
        v86 = 0;
        v85 = 0;
        v87 = 0;
        SessionCount = RESyncServiceGetSessionCount();
        if (SessionCount)
        {
          v11 = SessionCount;
          for (i = 0; i != v11; ++i)
          {
            RESyncServiceGetSession();
            IsLocal = RESyncSessionIsLocal();
            if (IsLocal && re::NetworkSystemFeatureFlags::enableAltSharedApp(IsLocal))
            {
              re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v95, 6008, a1, 0, 0, 0);
              v14 = a1[38];
              *(v14 + 448) = a1[40];
              v91 = 0;
              v92 = re::ecs2::NetworkReceiveSystem::processLocalSession(RESyncSession *)const::$_0::__invoke;
              v93 = 0;
              v94 = 0;
              *(v14 + 472) = &v91;
              v46 = MEMORY[0x1E69E9820];
              v47 = 0x40000000;
              v48 = ___ZNK2re4ecs220NetworkReceiveSystem19processLocalSessionEP13RESyncSession_block_invoke;
              v49 = &__block_descriptor_tmp_39;
              *v50 = a1;
              RESyncSessionReceiveRaw();
              v15 = a1[38];
              *(v15 + 472) = 0;
              *(v15 + 448) = 0;
              re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v95, v16, v17);
            }

            else
            {
              v64 = MEMORY[0x1E69E9820];
              v65 = 0x40000000;
              v66 = ___ZNK2re4ecs220NetworkReceiveSystem6updateENS0_6System13UpdateContextE_block_invoke;
              v67 = &unk_1E871E2A8;
              v68 = v70;
              v69 = a1;
              RESyncSessionReceive();
            }
          }
        }

        v46 = 0;
        v47 = 0;
        LODWORD(v49) = 0;
        v48 = 0;
        memset(v50, 0, sizeof(v50));
        v51 = 0x7FFFFFFFLL;
        memset(v52, 0, sizeof(v52));
        v53 = 0;
        memset(v54, 0, sizeof(v54));
        v55 = 0;
        memset(v56, 0, sizeof(v56));
        v57 = 0x7FFFFFFFLL;
        v59 = 0;
        memset(v58, 0, sizeof(v58));
        v60 = 0x7FFFFFFFLL;
        v61 = 0;
        v62 = 0;
        v63 = 0;
        v18 = a1[34];
        v19 = *(v18 + 3104);
        if (v19)
        {
          v20 = *(v18 + 3120);
          v21 = &v20[v19];
          do
          {
            v89 = *v20;
            v22 = re::HashTable<unsigned long long,re::NetworkSystem::LocalPeer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v18 + 3040, &v89);
            if (v22)
            {
              v23 = v22;
              v95[0] = 0;
              v24 = *(v22 + 192);
              if (v24)
              {
                v25 = 0;
                v26 = *(v22 + 176);
                while (1)
                {
                  v27 = *v26;
                  v26 += 8;
                  if (v27 < 0)
                  {
                    break;
                  }

                  if (v24 == ++v25)
                  {
                    LODWORD(v25) = *(v22 + 192);
                    break;
                  }
                }
              }

              else
              {
                LODWORD(v25) = 0;
              }

              if (v25 != v24)
              {
                v28 = *(v22 + 176);
                do
                {
                  re::ecs2::NetworkReceiveSystem::findEntity(&v90, a1, *(v28 + 32 * v25 + 8), v95);
                  if (v90)
                  {
                    v29 = *(v90 + 216);
                    if (v29)
                    {
                      if (*(v29 + 32))
                      {
                        OwnerPeerID = RESyncableGetOwnerPeerID();
                      }

                      else
                      {
                        OwnerPeerID = *(v29 + 64);
                      }

                      if (OwnerPeerID == *v23)
                      {
                        re::HashSetBase<re::SharedPtr<re::ecs2::Entity>,re::SharedPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::Entity>>,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::add(&v50[8], &v90);
                      }

                      else
                      {
                        re::DynamicOverflowArray<unsigned long long,2ul>::indexOf(&v91, v29 + 72, *v23);
                        if (v91 == 1)
                        {
                          re::DynamicOverflowArray<unsigned long long,2ul>::remove(v29 + 72, *v23);
                        }
                      }
                    }

                    if (v90)
                    {
                    }
                  }

                  if (*(v23 + 192) <= (v25 + 1))
                  {
                    v31 = v25 + 1;
                  }

                  else
                  {
                    v31 = *(v23 + 192);
                  }

                  v28 = *(v23 + 176);
                  while (v31 - 1 != v25)
                  {
                    LODWORD(v25) = v25 + 1;
                    if ((*(v28 + 32 * v25) & 0x80000000) != 0)
                    {
                      goto LABEL_47;
                    }
                  }

                  LODWORD(v25) = v31;
LABEL_47:
                  ;
                }

                while (v25 != v24);
              }

              re::HashTable<unsigned long long,re::NetworkSystem::LocalPeer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v18 + 3040, &v89, (0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v89 ^ (v89 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v89 ^ (v89 >> 30))) >> 27))) ^ ((0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v89 ^ (v89 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v89 ^ (v89 >> 30))) >> 27))) >> 31), &v91);
              v32 = HIDWORD(v92);
              if (HIDWORD(v92) != 0x7FFFFFFF)
              {
                v33 = *(v18 + 3056);
                v34 = *(v33 + 328 * HIDWORD(v92)) & 0x7FFFFFFF;
                if (v93 == 0x7FFFFFFF)
                {
                  *(*(v18 + 3048) + 4 * v92) = v34;
                  v32 = HIDWORD(v92);
                }

                else
                {
                  *(v33 + 328 * v93) = *(v33 + 328 * v93) & 0x80000000 | v34;
                }

                v35 = (v33 + 328 * v32);
                v36 = *v35;
                if (*v35 < 0)
                {
                  *v35 = v36 & 0x7FFFFFFF;
                  re::NetworkSystem::LocalPeer::~LocalPeer((v35 + 4));
                  v32 = HIDWORD(v92);
                  v33 = *(v18 + 3056);
                  v36 = *(v33 + 328 * HIDWORD(v92));
                }

                *(v33 + 328 * v32) = *(v18 + 3076) | v36 & 0x80000000;
                *(v18 + 3076) = v32;
                --*(v18 + 3068);
                ++*(v18 + 3080);
              }
            }

            ++v20;
          }

          while (v20 != v21);
        }

        re::ecs2::NetworkReceiveSystem::processDestroyedEntities(a1, &v46);
        re::Event<re::GeometricObjectBase>::raise((a1[34] + 1496), a1[34]);
        re::HashTable<unsigned long long,re::Pair<re::SharedPtr<re::ecs2::Entity>,unsigned long long,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v58);
        re::HashTable<RESyncableRefRetainer,unsigned long long,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::deinit(&v56[8]);
        re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v54 + 8);
        re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v52);
        re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(&v50[8]);
        re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(&v46);
        _Block_object_dispose(v70, 8);
        re::HashTable<unsigned long long,re::Pair<re::SharedPtr<re::ecs2::Entity>,unsigned long long,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v82);
        re::HashTable<RESyncableRefRetainer,unsigned long long,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::deinit(&v80[8]);
        re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(&v78[8]);
        re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v76);
        re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(&v74[8]);
        re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(&v71);
        re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v88, v37, v38);
        if (v45)
        {
          if (*(v45 + 152))
          {
            v39 = mach_absolute_time();
            v40 = *(v45 + 152);
            if (v40)
            {
              v41 = v40[1000].u64[0];
              if (v41 >= v39 - v44)
              {
                v41 = v39 - v44;
              }

              v40[1000].i64[0] = v41;
              v42 = v40[1000].u64[1];
              if (v42 <= v39 - v44)
              {
                v42 = v39 - v44;
              }

              v40[1000].i64[1] = v42;
              v43 = vdupq_n_s64(1uLL);
              v43.i64[0] = v39 - v44;
              v40[1001] = vaddq_s64(v40[1001], v43);
              *(v45 + 184) = 0;
            }
          }
        }
      }

      else
      {
        re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) ", "m_syncService", "update", 460);
        _os_crash("assertion failure: (m_syncService) ");
        __break(1u);
      }
    }
  }
}

uint64_t anonymous namespace::countOfNetworkComponentsInECSService(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v1 = (*(*a1 + 296))(a1) + 120;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v32, v1, 0);
  v2 = *&v32[0];
  v21 = *&v32[0];
  v22 = DWORD2(v32[0]);
  v3 = WORD4(v32[0]);
  v4 = HIWORD(DWORD2(v32[0]));
  v5 = v1 == *&v32[0] && WORD4(v32[0]) == 0xFFFF;
  v6 = 0;
  if (!v5 || v4 != 0xFFFF)
  {
    do
    {
      v8 = v4;
      v9 = *(v2 + 16);
      if (v9 <= v4)
      {
        v23 = 0;
        memset(v32, 0, sizeof(v32));
        v17 = MEMORY[0x1E69E9C10];
        v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v24 = 136315906;
        v25 = "operator[]";
        v26 = 1024;
        if (v18)
        {
          v19 = 3;
        }

        else
        {
          v19 = 2;
        }

        v27 = 797;
        v28 = 2048;
        v29 = v8;
        v30 = 2048;
        v31 = v9;
        _os_log_send_and_compose_impl(v19, &v23, v32, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v20, v21);
        _os_crash_msg();
        __break(1u);
      }

      v10 = *(*(v2 + 32) + 16 * v4) + 240 * v3;
      v11 = *(v10 + 200);
      if (v11)
      {
        v12 = *(v10 + 216);
        v13 = 8 * v11;
        do
        {
          v14 = re::ecs2::SceneComponentTable::get((*v12 + 200), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          if (v14)
          {
            v15 = *(v14 + 384);
          }

          else
          {
            v15 = 0;
          }

          v6 += v15;
          v12 += 8;
          v13 -= 8;
        }

        while (v13);
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v21);
      v2 = v21;
      v3 = v22;
      v4 = HIWORD(v22);
    }

    while (v21 != v1 || v22 != 0xFFFF || HIWORD(v22) != 0xFFFF);
  }

  return v6;
}

__n128 __Block_byref_object_copy__13(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  v2 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v2;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v3 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v3;
  v4 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v4;
  ++*(a2 + 64);
  ++*(a1 + 64);
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 116) = 0x7FFFFFFFLL;
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  v5 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = v5;
  v6 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = v6;
  LODWORD(v6) = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v6;
  LODWORD(v6) = *(a1 + 108);
  *(a1 + 108) = *(a2 + 108);
  *(a2 + 108) = v6;
  LODWORD(v6) = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = v6;
  LODWORD(v6) = *(a1 + 116);
  *(a1 + 116) = *(a2 + 116);
  *(a2 + 116) = v6;
  *(a1 + 160) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  v7 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v7;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  v8 = *(a1 + 144);
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 144) = v8;
  v9 = *(a1 + 160);
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 160) = v9;
  ++*(a2 + 152);
  ++*(a1 + 152);
  *(a1 + 200) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  *(a1 + 192) = 0;
  v10 = *(a2 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = v10;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  v11 = *(a1 + 184);
  *(a1 + 184) = *(a2 + 184);
  *(a2 + 184) = v11;
  v12 = *(a1 + 200);
  *(a1 + 200) = *(a2 + 200);
  *(a2 + 200) = v12;
  ++*(a2 + 192);
  ++*(a1 + 192);
  *(a1 + 240) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 244) = 0x7FFFFFFFLL;
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 208) = 0;
  v13 = *(a1 + 216);
  *(a1 + 216) = *(a2 + 216);
  *(a2 + 216) = v13;
  v14 = *(a1 + 224);
  *(a1 + 224) = *(a2 + 224);
  *(a2 + 224) = v14;
  *(a1 + 232) = *(a2 + 232);
  *(a2 + 232) = 0;
  LODWORD(v14) = *(a1 + 236);
  *(a1 + 236) = *(a2 + 236);
  *(a2 + 236) = v14;
  LODWORD(v14) = *(a1 + 240);
  *(a1 + 240) = *(a2 + 240);
  *(a2 + 240) = v14;
  LODWORD(v14) = *(a1 + 244);
  *(a1 + 244) = *(a2 + 244);
  *(a2 + 244) = v14;
  ++*(a1 + 248);
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 292) = 0x7FFFFFFFLL;
  *(a1 + 256) = *(a2 + 256);
  *(a2 + 256) = 0;
  v15 = *(a1 + 264);
  *(a1 + 264) = *(a2 + 264);
  *(a2 + 264) = v15;
  v16 = *(a1 + 272);
  *(a1 + 272) = *(a2 + 272);
  *(a2 + 272) = v16;
  *(a1 + 280) = *(a2 + 280);
  *(a2 + 280) = 0;
  LODWORD(v16) = *(a1 + 284);
  *(a1 + 284) = *(a2 + 284);
  *(a2 + 284) = v16;
  LODWORD(v16) = *(a1 + 288);
  *(a1 + 288) = *(a2 + 288);
  *(a2 + 288) = v16;
  LODWORD(v16) = *(a1 + 292);
  *(a1 + 292) = *(a2 + 292);
  *(a2 + 292) = v16;
  ++*(a1 + 296);
  result = *(a2 + 304);
  v18 = *(a2 + 320);
  *(a1 + 304) = result;
  *(a1 + 320) = v18;
  return result;
}

uint64_t __Block_byref_object_dispose__13(uint64_t *a1)
{
  re::HashTable<unsigned long long,re::Pair<re::SharedPtr<re::ecs2::Entity>,unsigned long long,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1 + 32);
  re::HashTable<RESyncableRefRetainer,unsigned long long,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::deinit(a1 + 26);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit((a1 + 21));
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit((a1 + 16));
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(a1 + 10);

  return re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit((a1 + 5));
}

uint64_t ___ZNK2re4ecs220NetworkReceiveSystem6updateENS0_6System13UpdateContextE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 328) = RESyncCommitGetSourcePeerID();
  if (v4[34])
  {
    v5 = *(*(a1 + 32) + 8);
    *(v5 + 320) = *(v5 + 320) - CFAbsoluteTimeGetCurrent();
    *(v4[38] + 448) = v4[40];
    if (re::internal::enableSignposts(0, 0))
    {
      kdebug_trace();
    }

    *(v5 + 304) = 0;
    *(v5 + 312) = 0;
    IsAtomic = RESyncCommitIsAtomic();
    RESyncCommitEnumerateForRead();
    *&v34 = MEMORY[0x1E69E9820];
    *(&v34 + 1) = 0x40000000;
    v35 = ___ZNK2re4ecs220NetworkReceiveSystem25processComponentSnapshotsEPK12RESyncCommitRNS0_21NetworkReceiveContextE_block_invoke;
    v36 = &__block_descriptor_tmp_42;
    v37 = v4;
    v38 = v5 + 40;
    RESyncCommitEnumerateForRead();
    RESyncCommitEnumerateForRead();
    v6 = re::internal::enableSignposts(0, 0);
    if (v6)
    {
      v6 = kdebug_trace();
    }

    isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v6);
    if (isStatisticCollectionEnabled)
    {
      isStatisticCollectionEnabled = re::profilerThreadContext(isStatisticCollectionEnabled);
      v8 = *(isStatisticCollectionEnabled + 152);
      if (v8)
      {
        v9 = *(v5 + 304);
        v10 = v8[384].u64[0];
        if (v10 >= v9)
        {
          v10 = *(v5 + 304);
        }

        v8[384].i64[0] = v10;
        v11 = v8[384].u64[1];
        if (v11 <= v9)
        {
          v11 = v9;
        }

        v8[384].i64[1] = v11;
        v12 = vdupq_n_s64(1uLL);
        v12.i64[0] = v9;
        v8[385] = vaddq_s64(v8[385], v12);
        *(isStatisticCollectionEnabled + 184) = 0;
      }
    }

    v13 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
    if (v13)
    {
      v14 = re::profilerThreadContext(v13);
      v15 = *(v14 + 152);
      if (v15)
      {
        v16 = *(v5 + 312);
        v17 = v15[368].u64[0];
        if (v17 >= v16)
        {
          v17 = *(v5 + 312);
        }

        v15[368].i64[0] = v17;
        v18 = v15[368].u64[1];
        if (v18 <= v16)
        {
          v18 = v16;
        }

        v15[368].i64[1] = v18;
        v19 = vdupq_n_s64(1uLL);
        v19.i64[0] = v16;
        v15[369] = vaddq_s64(v15[369], v19);
        *(v14 + 184) = 0;
      }
    }

    *(v4[38] + 448) = 0;
    v21 = CFAbsoluteTimeGetCurrent() + *(v5 + 320);
    *(v5 + 320) = v21;
    if (v21 > 0.05)
    {
      v22 = *re::ecsNetworkLogObjects(v20);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(v5 + 328);
        LODWORD(v34) = 134217984;
        *(&v34 + 4) = v23;
        _os_log_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEFAULT, "50ms threshold crossed in NetworkReceiveSystem::processCommit for peer %llu", &v34, 0xCu);
      }

      *(v5 + 320) = 0;
    }
  }

  RESyncCommitListAddCopy();
  RESyncCommitSetForwarded();
  re::ecs2::NetworkReceiveSystem::processCreatedEntities(v4, *(*(a1 + 32) + 8) + 40);
  re::ecs2::NetworkReceiveSystem::processParentChanges(v4, *(*(a1 + 32) + 8) + 40);
  re::ecs2::NetworkReceiveSystem::processEvents(v4, *(*(a1 + 32) + 8) + 40);
  re::ecs2::NetworkReceiveSystem::processDestroyedEntities(v4, *(*(a1 + 32) + 8) + 40);
  re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::clear(*(*(a1 + 32) + 8) + 40);
  re::HashSetBase<re::SharedPtr<re::ecs2::Entity>,re::SharedPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::Entity>>,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::clear(*(*(a1 + 32) + 8) + 80);
  re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::clear(*(*(a1 + 32) + 8) + 128);
  re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::clear(*(*(a1 + 32) + 8) + 168);
  v24 = *(*(a1 + 32) + 8);
  if (*(v24 + 236))
  {
    v25 = *(v24 + 232);
    if (v25)
    {
      memset_pattern16(*(v24 + 216), &unk_1E304C660, 4 * v25);
    }

    v26 = *(v24 + 240);
    if (v26)
    {
      v27 = 0;
      for (i = 0; i < v26; ++i)
      {
        v29 = *(v24 + 224);
        v30 = *(v29 + v27);
        if (v30 < 0)
        {
          v31 = v29 + v27;
          *(v29 + v27) = v30 & 0x7FFFFFFF;
          if (*(v29 + v27 + 8))
          {
            RESyncRelease();
            *(v31 + 8) = 0;
            v26 = *(v24 + 240);
          }
        }

        v27 += 32;
      }
    }

    *(v24 + 236) = 0;
    *(v24 + 240) = 0;
    v32 = *(v24 + 248) + 1;
    *(v24 + 244) = 0x7FFFFFFF;
    *(v24 + 248) = v32;
  }

  return 1;
}

void re::ecs2::NetworkReceiveSystem::processCreatedEntities(uint64_t a1, uint64_t a2)
{
  v38 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v35, 6045, a1, 0, 0, 0);
  *(a2 + 280) = *(a2 + 280) - CFAbsoluteTimeGetCurrent();
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = *(a2 + 32);
    v5 = &v4[v3];
    do
    {
      v6 = *v4;
      v7 = *(*v4 + 216);
      if (v7 && (v8 = *(v7 + 32), v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27)), re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(buf, a2 + 168, v8, v9 ^ (v9 >> 31)), v37 != 0x7FFFFFFF))
      {
        v10 = (*(a2 + 184) + 32 * v37 + 16);
      }

      else
      {
        v10 = 0;
      }

      v11 = re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a2 + 216, *(v6 + 312));
      v12 = v6;
      do
      {
        v13 = v12;
        v12 = *(v12 + 32);
      }

      while (v12);
      if (!*(v13 + 24) && (!v10 || !*v10) && (!v11 || !*(v11 + 8)))
      {
        v14 = re::ecs2::EntityComponentCollection::get((v6 + 48), re::ecs2::ComponentImpl<re::ecs2::SceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v14)
        {
          *(v6 + 304) |= 0x480u;
          v15 = *(a1 + 40);
          v16 = re::globalAllocators(v14);
          v17 = (*(*v16[2] + 32))(v16[2], 384, 8);
          *buf = re::ecs2::Scene::Scene(v17, v6);
          (*(*v15 + 112))(v15, buf, 0xFFFFFFFFLL);
          if (*buf)
          {
          }
        }

        else
        {
          v33 = 0;
          re::Event<re::NetworkSystem,re::ecs2::Entity *,re::TLEInfo *,re::NewUnboundTLEHandlerResult *>::raise(*(a1 + 272) + 1408, *(a1 + 272), v6, &v34, &v33);
          if (!v33)
          {
            v18 = (*(**(a1 + 40) + 288))(*(a1 + 40)) + 120;
            re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(buf, v18, 0);
            if (v18 != *buf || *&buf[8] != 0xFFFFFFFFLL)
            {
              do
              {
                v20 = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::operator*(buf);
                if (*(v20 + 200))
                {
                  v21 = *(*re::ecs2::EntityComponentCollection::operator[](v20 + 176, 0) + 104);
                  v32 = v6;
                  if (v6)
                  {
                    v22 = (v6 + 8);
                  }

                  re::Collection<re::SharedPtr<re::ecs2::Entity>>::add((v21 + 320), &v32);
                  if (v32)
                  {
                  }
                }

                re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(buf);
              }

              while (*buf != v18 || *&buf[8] != 0xFFFF || *&buf[10] != 0xFFFF);
            }
          }
        }
      }

      ++v4;
    }

    while (v4 != v5);
  }

  v28 = CFAbsoluteTimeGetCurrent() + *(a2 + 280);
  *(a2 + 280) = v28;
  if (v28 > 0.05)
  {
    v29 = *re::ecsNetworkLogObjects(v25);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a2 + 288);
      *buf = 134217984;
      *&buf[4] = v30;
      _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEFAULT, "50ms threshold crossed in NetworkReceiveSystem::processCreatedEntities for peer %llu", buf, 0xCu);
    }

    *(a2 + 280) = 0;
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v35, v26, v27);
}

void re::ecs2::NetworkReceiveSystem::processParentChanges(unint64_t a1, uint64_t a2)
{
  v176[16] = *MEMORY[0x1E69E9840];
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v162 = a1;
  *(a2 + 280) = *(a2 + 280) - CFAbsoluteTimeGetCurrent();
  while (*(a2 + 244))
  {
    v5 = *(a2 + 248);
    v6 = *(a2 + 232);
    if (v5)
    {
      v7 = 0;
      v8 = *(a2 + 232);
      while (1)
      {
        v9 = *v8;
        v8 += 10;
        if (v9 < 0)
        {
          break;
        }

        if (v5 == ++v7)
        {
          LODWORD(v7) = *(a2 + 248);
          break;
        }
      }

      v10 = 0;
      v11 = *(v6 + 40 * v7 + 8);
      v12 = *(a2 + 232);
      while (1)
      {
        v13 = *v12;
        v12 += 10;
        if (v13 < 0)
        {
          break;
        }

        if (v5 == ++v10)
        {
          LODWORD(v10) = *(a2 + 248);
          break;
        }
      }

      v14 = v10;
    }

    else
    {
      v14 = 0;
      v11 = *(v6 + 8);
    }

    v15 = v6 + 40 * v14;
    v18 = *(v15 + 16);
    v16 = v15 + 16;
    v17 = v18;
    if (v18)
    {
      v19 = (v17 + 8);
      v20 = *(v16 + 8);
      *v168 = v17;
      v21 = (v17 + 8);
    }

    else
    {
      v20 = *(v16 + 8);
      *v168 = 0;
    }

    v22 = re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a2 + 216, v20);
    if (v22)
    {
      v23 = v22;
      do
      {
        v11 = v20;
        re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v168, *v23);
        v20 = v23[1];
        v23 = re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a2 + 216, v20);
      }

      while (v23);
    }

    v24 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) >> 27));
    re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(buf, a2 + 216, v11, v24 ^ (v24 >> 31));
    v25 = *&buf[12];
    if (*&buf[12] != 0x7FFFFFFF)
    {
      v26 = *(a2 + 232);
      v27 = (v26 + 40 * *&buf[12]);
      v28 = *v27 & 0x7FFFFFFF;
      if (*&buf[16] == 0x7FFFFFFF)
      {
        *(*(a2 + 224) + 4 * *&buf[8]) = v28;
      }

      else
      {
        *(v26 + 40 * *&buf[16]) = *(v26 + 40 * *&buf[16]) & 0x80000000 | v28;
      }

      v29 = *v27;
      if (*v27 < 0)
      {
        v29 &= ~0x80000000;
        *v27 = v29;
        v30 = *(v27 + 2);
        if (v30)
        {

          *(v27 + 2) = 0;
          v26 = *(a2 + 232);
          v29 = *(v26 + 40 * v25);
        }
      }

      *(v26 + 40 * v25) = *(a2 + 252) | v29 & 0x80000000;
      --*(a2 + 244);
      v31 = *(a2 + 256) + 1;
      *(a2 + 252) = v25;
      *(a2 + 256) = v31;
    }

    if (v20)
    {
      v32 = *v168;
      do
      {
        v33 = v32;
        v32 = *(v32 + 32);
      }

      while (v32);
      v167 = *(v33 + 24);
      re::ecs2::NetworkReceiveSystem::findEntity(&v166, v162, v20, &v167);
      v36 = v166;
      if (v166)
      {
        v37 = *v168;
        do
        {
          v38 = v37;
          v37 = *(v37 + 32);
        }

        while (v37);
        if (!*(v38 + 24))
        {
          goto LABEL_39;
        }

        v39 = v166;
        do
        {
          v40 = v39;
          v39 = *(v39 + 4);
        }

        while (v39);
        if (!*(v40 + 3))
        {
          v51 = *re::ecsNetworkLogObjects(*v168);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            v53 = *(v36 + 39);
            v54 = *(v36 + 37);
            v55 = *(*v168 + 312);
            v56 = *(*v168 + 296);
            *buf = 134218755;
            *&buf[4] = v53;
            *&buf[12] = 2081;
            *&buf[14] = v54;
            v174 = 2048;
            v175 = v55;
            LOWORD(v176[0]) = 2081;
            *(v176 + 2) = v56;
            _os_log_error_impl(&dword_1E1C61000, v51, OS_LOG_TYPE_ERROR, "[NetworkComponent] Parent (id=%llu name=%{private}s) not in scene while reparenting Entity (id=%llu name=%{private}s)", buf, 0x2Au);
          }
        }

        else
        {
LABEL_39:
          re::ecs2::NetworkReceiveSystem::setEntityParent(*v168, v166, v35);
        }

        v166 = 0;
      }

      else
      {
        v48 = *re::ecsNetworkLogObjects(v34);
        EntityBoundTo = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
        if (EntityBoundTo)
        {
          v49 = *(*v168 + 312);
          v50 = *(*v168 + 296);
          *buf = 134218499;
          *&buf[4] = v49;
          *&buf[12] = 2081;
          *&buf[14] = v50;
          v174 = 2048;
          v175 = v20;
          _os_log_error_impl(&dword_1E1C61000, v48, OS_LOG_TYPE_ERROR, "[NetworkComponent] Entity (id=%llu name=%{private}s) unable to find parent %llu.", buf, 0x20u);
        }
      }
    }

    else
    {
      v41 = *v168;
      v42 = *(*v168 + 32);
      if (v42 && (*(v42 + 304) & 0x80) == 0)
      {
        re::ecs2::NetworkReceiveSystem::setEntityParent(*v168, 0, *v168);
        v41 = *v168;
      }

      LODWORD(v167) = 0;
      re::Event<re::NetworkSystem,re::ecs2::Entity *,re::TLEInfo *,re::NewUnboundTLEHandlerResult *>::raise(*(v162 + 272) + 1408, *(v162 + 272), v41, &v166, &v167);
      if (!v167)
      {
        v43 = (*(**(v162 + 40) + 288))(*(v162 + 40)) + 120;
        EntityBoundTo = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(buf, v43, 0);
        v44 = v43 == *buf && *&buf[8] == 0xFFFFFFFFLL;
        if (!v44)
        {
          while (1)
          {
            v45 = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::operator*(buf);
            if (*(v45 + 200))
            {
              break;
            }

            EntityBoundTo = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(buf);
            if (*buf == v43 && *&buf[8] == 0xFFFF && *&buf[10] == 0xFFFF)
            {
              goto LABEL_63;
            }
          }

          v52 = re::ecs2::EntityComponentCollection::operator[](v45 + 176, 0);
          re::Collection<re::SharedPtr<re::ecs2::Entity>>::add((*(*v52 + 104) + 320), v168);
        }
      }
    }

LABEL_63:
    if (*v168)
    {
    }

    if (v17)
    {
    }
  }

  *buf = 0;
  *&buf[8] = 0;
  *&buf[16] = 1;
  v175 = 0;
  v176[0] = 0;
  v57 = *(a2 + 200);
  if (v57)
  {
    v58 = 0;
    v59 = *(a2 + 184);
    while (1)
    {
      v60 = *v59;
      v59 += 8;
      if (v60 < 0)
      {
        break;
      }

      if (v57 == ++v58)
      {
        LODWORD(v58) = *(a2 + 200);
        break;
      }
    }
  }

  else
  {
    LODWORD(v58) = 0;
  }

  if (v58 == v57)
  {
    v61 = v162;
    goto LABEL_162;
  }

  v62 = *(a2 + 184);
  do
  {
    v63 = v62 + 32 * v58;
    v65 = *(v63 + 8);
    v64 = v63 + 8;
    EntityBoundTo = re::ecs2::NetworkComponent::getEntityBoundTo(v65, &v167);
    v66 = v167;
    if (v167)
    {
      if (!*(v64 + 8))
      {
        v76 = *(v167 + 4);
        if (v76 && (*(v76 + 304) & 0x80) == 0)
        {
          re::ecs2::NetworkReceiveSystem::setEntityParent(v167, 0, v167);
          v66 = v167;
        }

        LODWORD(v166) = 0;
        re::Event<re::NetworkSystem,re::ecs2::Entity *,re::TLEInfo *,re::NewUnboundTLEHandlerResult *>::raise(*(v162 + 272) + 1408, *(v162 + 272), v66, &v165, &v166);
        if (!v166)
        {
          v77 = (*(**(v162 + 40) + 288))(*(v162 + 40)) + 120;
          EntityBoundTo = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(v168, v77, 0);
          if (v77 != *v168 || *&v168[8] != 0xFFFFFFFFLL)
          {
            while (1)
            {
              v79 = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::operator*(v168);
              if (*(v79 + 200))
              {
                break;
              }

              EntityBoundTo = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(v168);
              if (*v168 == v77 && *&v168[8] == 0xFFFF && *&v168[10] == 0xFFFF)
              {
                goto LABEL_131;
              }
            }

            v93 = re::ecs2::EntityComponentCollection::operator[](v79 + 176, 0);
            re::Collection<re::SharedPtr<re::ecs2::Entity>>::add((*(*v93 + 104) + 320), &v167);
          }
        }

        goto LABEL_131;
      }

      SyncableWithGuid = RESyncServiceFindSyncableWithGuid();
      v68 = re::ecs2::NetworkComponent::getEntityBoundTo(SyncableWithGuid, &v166);
      v70 = v166;
      if (!v166)
      {
        v82 = *(v162 + 272);
        v83 = *(v64 + 8);
        v164 = v167;
        if (v167)
        {
          v84 = v167 + 8;
        }

        v85 = re::NetworkSystem::queueWaitForParentEntity(v82, v83, &v164);
        if (v164)
        {

          v164 = 0;
        }

        v86 = *re::ecsNetworkLogObjects(v85);
        EntityBoundTo = os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT);
        if (EntityBoundTo)
        {
          Guid = RESyncableGetGuid();
          v88 = *(v167 + 37);
          v89 = *(v64 + 8);
          *v168 = 134218499;
          *&v168[4] = Guid;
          *&v168[12] = 2081;
          *&v168[14] = v88;
          v169 = 2048;
          v170 = v89;
          _os_log_impl(&dword_1E1C61000, v86, OS_LOG_TYPE_DEFAULT, "[NetworkComponent] Entity (guid=%llu name=%{private}s) unable to find parent %llu. Postpone binding with parent.", v168, 0x20u);
        }

        goto LABEL_131;
      }

      v71 = v167;
      v72 = v167;
      do
      {
        v73 = v72;
        v72 = *(v72 + 4);
      }

      while (v72);
      if (!*(v73 + 3))
      {
        goto LABEL_89;
      }

      v74 = v166;
      do
      {
        v75 = v74;
        v74 = *(v74 + 4);
      }

      while (v74);
      if (*(v75 + 3))
      {
LABEL_89:
        re::ecs2::NetworkReceiveSystem::setEntityParent(v167, v166, v69);
LABEL_130:

LABEL_131:
        if (v167)
        {
        }

        goto LABEL_133;
      }

      if (*buf)
      {
        v90 = buf[16];
        if (buf[16])
        {
          if ((*&buf[8] - 8) < 0xFFFFFFFFFFFFFFF7)
          {
            v91 = *&buf[8] + 1;
            v92 = 16;
            goto LABEL_123;
          }
        }

        else if (*&buf[8] >= v175)
        {
          v91 = *&buf[8] + 1;
          if (v175 < *&buf[8] + 1)
          {
            v92 = 2 * v175;
LABEL_123:
            if (v92 <= v91)
            {
              v94 = v91;
            }

            else
            {
              v94 = v92;
            }

            re::DynamicOverflowArray<re::Pair<re::ecs2::Entity *,re::ecs2::Entity *,true>,8ul>::setCapacity(buf, v94);
            v90 = buf[16];
          }
        }
      }

      else
      {
        re::DynamicOverflowArray<re::Pair<re::ecs2::Entity *,re::ecs2::Entity *,true>,8ul>::setCapacity(buf, *&buf[8] + 1);
        v90 = buf[16] + 2;
        *&buf[16] += 2;
      }

      v44 = (v90 & 1) == 0;
      v95 = v176[0];
      v96 = *&buf[8];
      if (!v44)
      {
        v95 = &v175;
      }

      v97 = &v95[2 * *&buf[8]];
      *v97 = v71;
      v97[1] = v70;
      *&buf[8] = v96 + 1;
      *&buf[16] += 2;
      goto LABEL_130;
    }

LABEL_133:
    if (*(a2 + 200) <= (v58 + 1))
    {
      v98 = v58 + 1;
    }

    else
    {
      v98 = *(a2 + 200);
    }

    v62 = *(a2 + 184);
    while (v98 - 1 != v58)
    {
      LODWORD(v58) = v58 + 1;
      if ((*(v62 + 32 * v58) & 0x80000000) != 0)
      {
        goto LABEL_141;
      }
    }

    LODWORD(v58) = v98;
LABEL_141:
    ;
  }

  while (v58 != v57);
  v61 = v162;
  if (*&buf[8])
  {
    v99 = 0;
    v100 = (buf[16] & 1) != 0 ? &v175 : v176[0];
    v101 = &v100[2 * *&buf[8]];
    do
    {
      v102 = 0;
      do
      {
        v103 = v100[1];
        do
        {
          v104 = v103;
          v103 = *(v103 + 4);
        }

        while (v103);
        if (*(v104 + 3))
        {
          re::ecs2::NetworkReceiveSystem::setEntityParent(*v100, v100[1], v66);
          *v168 = *v100;
          *v100 = *(v101 - 1);
          *(v101 - 1) = *v168;
          v101 -= 2;
          v102 = 1;
        }

        else
        {
          v100 += 2;
        }
      }

      while (v100 != v101);
      ++v99;
      if (buf[16])
      {
        v100 = &v175;
      }

      else
      {
        v100 = v176[0];
      }
    }

    while ((v102 & (v100 != v101)) != 0);
    while (v100 != v101)
    {
      v105 = *re::ecsNetworkLogObjects(EntityBoundTo);
      if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
      {
        v107 = v100[1];
        v108 = *(*v100 + 39);
        v109 = *(*v100 + 37);
        v110 = *(v107 + 39);
        v111 = *(v107 + 37);
        *v168 = 134218755;
        *&v168[4] = v108;
        *&v168[12] = 2081;
        *&v168[14] = v109;
        v169 = 2048;
        v170 = v110;
        v171 = 2081;
        v172 = v111;
        _os_log_impl(&dword_1E1C61000, v105, OS_LOG_TYPE_DEFAULT, "[NetworkComponent] Entity %llu(%{private}s) in a scene reparented to %llu(%{private}s) not in a scene", v168, 0x2Au);
      }

      v112 = *v100;
      v113 = v100[1];
      v100 += 2;
      re::ecs2::NetworkReceiveSystem::setEntityParent(v112, v113, v106);
    }
  }

LABEL_162:
  v114 = *(a2 + 16);
  if (v114)
  {
    v115 = *(a2 + 32);
    v161 = &v115[v114];
    do
    {
      v116 = *(*v115 + 27);
      if (v116)
      {
        if (*(v116 + 32))
        {
          v117 = RESyncableGetGuid();
        }

        else
        {
          v117 = 0;
        }

        v119 = *(v61 + 272);
        *v168 = v117;
        v120 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v119 + 2200, v168);
        if (v120)
        {
          v121 = *(v120 + 2);
          if (v121)
          {
            v122 = *(v120 + 4);
            v123 = 8 * v121;
            do
            {
              v124 = *re::ecsNetworkLogObjects(v120);
              if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
              {
                v126 = *(*v122 + 37);
                v127 = *(*v115 + 37);
                *v168 = 136381187;
                *&v168[4] = v126;
                *&v168[12] = 2081;
                *&v168[14] = v127;
                v169 = 2048;
                v170 = v117;
                _os_log_impl(&dword_1E1C61000, v124, OS_LOG_TYPE_DEFAULT, "[NetworkComponent] Late binding entity %{private}s to parent %{private}s(guid=%llu)", v168, 0x20u);
              }

              v128 = *v122++;
              re::ecs2::NetworkReceiveSystem::setEntityParent(v128, *v115, v125);
              v123 -= 8;
            }

            while (v123);
          }
        }

        v61 = v162;
        EntityBoundTo = re::NetworkSystem::clearWaitListForParent(*(v162 + 272), v117);
      }

      else
      {
        v118 = *re::ecsNetworkLogObjects(EntityBoundTo);
        EntityBoundTo = os_log_type_enabled(v118, OS_LOG_TYPE_INFO);
        if (EntityBoundTo)
        {
          *v168 = 0;
          _os_log_impl(&dword_1E1C61000, v118, OS_LOG_TYPE_INFO, "[NetworkComponent] Entity arrived without network component.", v168, 2u);
        }
      }

      ++v115;
    }

    while (v115 != v161);
  }

  v129 = *(v61 + 272);
  v130 = *(v129 + 2232);
  if (!v130)
  {
    LODWORD(v131) = 0;
    goto LABEL_185;
  }

  v131 = 0;
  v132 = *(v129 + 2216);
  do
  {
    v133 = *v132;
    v132 += 16;
    if (v133 < 0)
    {
      goto LABEL_185;
    }

    ++v131;
  }

  while (v130 != v131);
  LODWORD(v131) = *(v129 + 2232);
LABEL_185:
  while (v131 != v130)
  {
    v134 = (*(v129 + 2216) + (v131 << 6));
    v135 = RESyncServiceFindSyncableWithGuid();
    v136 = re::ecs2::NetworkComponent::getEntityBoundTo(v135, &v167);
    v137 = v167;
    if (v167)
    {
      v139 = v134[1];
      v140 = v134[4];
      if (v140)
      {
        v141 = v134[6];
        v142 = 8 * v140;
        do
        {
          v143 = *re::ecsNetworkLogObjects(v136);
          if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
          {
            v145 = *(*v141 + 37);
            v146 = *(v137 + 37);
            *v168 = 136381187;
            *&v168[4] = v145;
            *&v168[12] = 2081;
            *&v168[14] = v146;
            v169 = 2048;
            v170 = v139;
            _os_log_impl(&dword_1E1C61000, v143, OS_LOG_TYPE_DEFAULT, "DOUBLE Late binding entity %{private}s to parent %{private}s(guid=%llu)", v168, 0x20u);
          }

          v147 = *v141++;
          re::ecs2::NetworkReceiveSystem::setEntityParent(v147, v137, v144);
          v142 -= 8;
        }

        while (v142);
      }

      v61 = v162;
      re::NetworkSystem::clearWaitListForParent(*(v162 + 272), v139);

      break;
    }

    v138 = *(v129 + 2232);
    if (v138 <= v131 + 1)
    {
      v138 = v131 + 1;
    }

    while (v138 - 1 != v131)
    {
      LODWORD(v131) = v131 + 1;
      if ((*(*(v129 + 2216) + (v131 << 6)) & 0x80000000) != 0)
      {
        goto LABEL_185;
      }
    }

    LODWORD(v131) = v138;
  }

  v148 = *(a2 + 72);
  if (v148)
  {
    v149 = 0;
    v150 = (*(a2 + 56) + 8);
    while (1)
    {
      v151 = *v150;
      v150 += 6;
      if (v151 < 0)
      {
        break;
      }

      if (v148 == ++v149)
      {
        LODWORD(v149) = *(a2 + 72);
        break;
      }
    }
  }

  else
  {
    LODWORD(v149) = 0;
  }

  if (v149 != v148)
  {
    v152 = *(a2 + 56);
    do
    {
      v153 = *(v61 + 272);
      v154 = *(v152 + 24 * v149 + 16);
      v163 = v154;
      if (v154)
      {
        v155 = (v154 + 8);
      }

      re::NetworkSystem::removeEntityFromParentWaitlist(v153, &v163);
      if (v163)
      {

        v163 = 0;
      }

      v156 = *(a2 + 72);
      v152 = *(a2 + 56);
      if (v156 <= v149 + 1)
      {
        v156 = v149 + 1;
      }

      while (v156 - 1 != v149)
      {
        LODWORD(v149) = v149 + 1;
        if ((*(v152 + 24 * v149 + 8) & 0x80000000) != 0)
        {
          goto LABEL_217;
        }
      }

      LODWORD(v149) = v156;
LABEL_217:
      ;
    }

    while (v149 != v148);
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (*buf && (buf[16] & 1) == 0)
  {
    (*(**buf + 40))();
  }

  v158 = CFAbsoluteTimeGetCurrent() + *(a2 + 280);
  *(a2 + 280) = v158;
  if (v158 > 0.05)
  {
    v159 = *re::ecsNetworkLogObjects(v157);
    if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
    {
      v160 = *(a2 + 288);
      *buf = 134217984;
      *&buf[4] = v160;
      _os_log_impl(&dword_1E1C61000, v159, OS_LOG_TYPE_DEFAULT, "50ms threshold crossed in NetworkReceiveSystem::processParentChanges for peer %llu", buf, 0xCu);
    }

    *(a2 + 280) = 0;
  }
}

void re::ecs2::NetworkReceiveSystem::processEvents(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  *(a2 + 280) = *(a2 + 280) - CFAbsoluteTimeGetCurrent();
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = &v5[v4];
    do
    {
      v7 = *v5;
      re::Event<re::NetworkSystem,re::ecs2::Entity *>::raise(*(a1 + 272), *(a1 + 272));
      if ((*(v7 + 304) & 0x80) != 0)
      {
        do
        {
          v8 = v7;
          v7 = *(v7 + 32);
        }

        while (v7);
        re::Event<re::NetworkSystem,re::ecs2::Scene *>::raise(*(a1 + 272) + 1056, *(a1 + 272), *(v8 + 24));
      }

      ++v5;
    }

    while (v5 != v6);
  }

  v9 = *(a2 + 104);
  if (v9)
  {
    v10 = *(a2 + 120);
    v11 = 8 * v9;
    do
    {
      v10 += 8;
      re::Event<re::NetworkSystem,re::ecs2::Entity *>::raise(*(a1 + 272) + 88, *(a1 + 272));
      v11 -= 8;
    }

    while (v11);
  }

  v12 = *(a2 + 144);
  if (v12)
  {
    v13 = *(a2 + 160);
    v14 = 8 * v12;
    do
    {
      v15 = *v13;
      if (*(*v13 + 16))
      {
        if ((*(*v15 + 40))(*v13) == re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
        {
          re::ecs2::NetworkComponent::resolveViews(v15, 0);
        }

        re::Event<re::NetworkSystem,re::ecs2::Component *>::raise(*(a1 + 272) + 352, *(a1 + 272), v15);
        re::ecs2::Component::markDirty(v15);
      }

      ++v13;
      v14 -= 8;
    }

    while (v14);
  }

  v17 = CFAbsoluteTimeGetCurrent() + *(a2 + 280);
  *(a2 + 280) = v17;
  if (v17 > 0.05)
  {
    v18 = *re::ecsNetworkLogObjects(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a2 + 288);
      v20 = 134217984;
      v21 = v19;
      _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "50ms threshold crossed in NetworkReceiveSystem::processEvents for peer %llu", &v20, 0xCu);
    }

    *(a2 + 280) = 0;
  }
}

void re::ecs2::NetworkReceiveSystem::processDestroyedEntities(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v19, 6047, a1, 0, 0, 0);
  *(a2 + 280) = *(a2 + 280) - CFAbsoluteTimeGetCurrent();
  v4 = *(a2 + 72);
  if (v4)
  {
    v5 = 0;
    v6 = (*(a2 + 56) + 8);
    while (1)
    {
      v7 = *v6;
      v6 += 6;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(a2 + 72);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 != v4)
  {
    v8 = *(a2 + 56);
    do
    {
      v9 = *(v8 + 24 * v5 + 16);
      re::Event<re::NetworkSystem,re::ecs2::Entity *>::raise(*(a1 + 272) + 176, *(a1 + 272));
      if ((*(v9 + 304) & 0x80) != 0)
      {
        v10 = v9;
        do
        {
          v11 = v10;
          v10 = *(v10 + 4);
        }

        while (v10);
        re::Event<re::NetworkSystem,re::ecs2::Scene *>::raise(*(a1 + 272) + 1144, *(a1 + 272), *(v11 + 3));
      }

      re::ecs2::Entity::removeFromSceneOrParent(v9);
      v12 = *(a2 + 72);
      v8 = *(a2 + 56);
      if (v12 <= v5 + 1)
      {
        v12 = v5 + 1;
      }

      while (v12 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(v8 + 24 * v5 + 8) & 0x80000000) != 0)
        {
          goto LABEL_19;
        }
      }

      LODWORD(v5) = v12;
LABEL_19:
      ;
    }

    while (v5 != v4);
  }

  v16 = CFAbsoluteTimeGetCurrent() + *(a2 + 280);
  *(a2 + 280) = v16;
  if (v16 > 0.05)
  {
    v17 = *re::ecsNetworkLogObjects(v13);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a2 + 288);
      *buf = 134217984;
      v21 = v18;
      _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "50ms threshold crossed in NetworkReceiveSystem::processDestroyedEntities for peer %llu", buf, 0xCu);
    }

    *(a2 + 280) = 0;
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v19, v14, v15);
}

uint64_t ___ZNK2re4ecs220NetworkReceiveSystem19processLocalSessionEP13RESyncSession_block_invoke(uint64_t a1, uint64_t a2, const char *a3, const char *a4)
{
  v164 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v157 = 0;
  v158 = &str_67;
  memset(v140, 0, sizeof(v140));
  v141 = 0;
  memset(v142, 0, sizeof(v142));
  v143 = 0x7FFFFFFFLL;
  memset(v144, 0, sizeof(v144));
  memset(v146, 0, sizeof(v146));
  v145 = 0;
  v147 = 0;
  memset(v148, 0, sizeof(v148));
  v149 = 0x7FFFFFFFLL;
  v150 = 0u;
  v151 = 0u;
  v152 = 0;
  v153 = 0x7FFFFFFFLL;
  v156 = 0;
  v155 = 0;
  v154 = 0;
  v8 = re::NetworkSystem::localSyncToPeer(*(v7 + 272), a2);
  v119 = v8 + 160;
  v139 = *v8;
  v9 = *(v7 + 304);
  v10 = v9 + 448;
  *(v9 + 464) = v139;
  v131[1] = a3;
  v131[2] = a4;
  v134 = -1;
  v135 = 0;
  v136 = v10;
  v138 = 0;
  v132 = a3;
  v133 = &a4[a3];
  v130 = 0;
  v131[0] = &unk_1F5D172F0;
  v129 = 0;
  re::snapshot::DecoderRaw::operator>>(v131, &v129);
  if (!v129)
  {
    v11 = 0;
    v120 = 0;
    goto LABEL_165;
  }

  v120 = 0;
  v11 = 0;
  do
  {
    v128 = 0;
    re::snapshot::DecoderRaw::operator>>(v131, &v128);
    if (v133 == v132)
    {
      re::snapshot::BufferDecoder::error(v131, "overrun: attempted to read %zu bytes, only %zu remaining", 1uLL, 0);
      v12 = 0;
    }

    else
    {
      v12 = *v132++;
    }

    v13 = (v12 & 2) == 0;
    re::ecs2::NetworkReceiveSystem::findEntity(&v127, v7, v129, &v130);
    v15 = v127;
    if (v127)
    {
      v16 = 0;
      v13 = 1;
    }

    else
    {
      v17 = re::ecs2::EntityFactory::instance(0);
      re::ecs2::EntityFactory::make(buf, v17, 4uLL);
      v18 = v127;
      v15 = *buf;
      v127 = *buf;
      if (v18)
      {

        v15 = v127;
      }

      *(v15 + 39) = v129;
      v16 = (v12 & 2) == 0;
    }

    v19 = *(v15 + 27);
    if (!v19)
    {
      (*(*re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 32))(buf);
      v19 = *buf;
      *(*buf + 48) = 1;
      *(v19 + 64) = v139;
      *(v19 + 476) = v128;
      *(v19 + 116) |= 0x8000u;
      v20 = *(v7 + 272);
      *(v19 + 56) = v20;
      if (*(v20 + 3156))
      {
        IncomingSyncable = RESyncServiceCreateIncomingSyncable();
        if (*(v19 + 32) != IncomingSyncable)
        {
          RESyncableRefRetainer::reset((v19 + 32), IncomingSyncable);
        }

        if (IncomingSyncable)
        {
          RESyncRelease();
        }

        re::ecs2::NetworkComponent::bindEntityTo(IncomingSyncable, v127);
      }

      v126 = v19;
      re::ecs2::EntityComponentCollection::add(v127 + 48, &v126, 1);
      if (v126)
      {

        v126 = 0;
      }

      *buf = *(v127 + 39);
      re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v119, buf, &v139);
      re::DynamicOverflowArray<unsigned long long,2ul>::add((v19 + 72), &v139);
      re::ecs2::NetworkComponent::resolveViews(v19, 0);
      v15 = v127;
    }

    v22 = *(v15 + 4);
    if (!v22 || (*(v22 + 304) & 0x80) != 0)
    {
      v23 = 0;
    }

    else
    {
      v23 = *(v22 + 312);
    }

    v121 = v12 != 0;
    if (v12)
    {
      *(v19 + 48) = 1;
      if (v133 == v132)
      {
        re::snapshot::BufferDecoder::error(v131, "overrun: attempted to read %zu bytes, only %zu remaining", 1uLL, 0);
        v24 = 0;
        v15 = v127;
      }

      else
      {
        v24 = *v132++;
      }

      if (v24 != ((*(v15 + 304) >> 3) & 1))
      {
        re::ecs2::Entity::setSelfEnabled(v15, v24 & 1);
      }

      v125 = 0;
      v25 = re::snapshot::DecoderRaw::operator>>(v131, &v125);
      if ((*(v19 + 473) & (v125 == 0)) == 0)
      {
        v23 = v125;
      }

      if (v133 == v132)
      {
        v25 = re::snapshot::BufferDecoder::error(v131, "overrun: attempted to read %zu bytes, only %zu remaining", 1uLL, 0);
        v26 = 2;
      }

      else
      {
        v26 = *v132++;
      }

      if (v26 != *(v19 + 432))
      {
        *(v19 + 432) = v26;
        v27 = (v19 + 8);
        *buf = v19;
        v25 = re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(&v146[8], buf);
        if (*buf)
        {
        }
      }

      v28 = v157;
      v157 = 0;
      v158 = &str_67;
      if (v28)
      {
      }

      v159 = 0;
      v29 = re::snapshot::DecoderRaw::beginString(v131, &v159);
      if (v29)
      {
        v30 = v159;
        v31 = v132;
        v32 = v133 - v132;
        if (v133 - v132 >= v159)
        {
          v32 = v159;
        }

        v132 += v32;
        *buf = 0;
        *&buf[8] = &str_67;
        v34 = *buf;
        v33 = *&buf[8];
        v157 = *buf;
        v158 = *&buf[8];
      }

      else
      {
        v34 = 0;
        v33 = &str_67;
      }

      v35 = v127;
      if ((*(v127 + 36) ^ v34) > 1 || (v14 = *(v127 + 37), v33 != v14) && strcmp(v33, v14))
      {
        re::StringID::operator=(v35 + 36, &v157);
      }

      if (!v13 || !v16)
      {
        if (v13)
        {
          v36 = v144;
        }

        else
        {
          v36 = v140;
        }

        re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::add(v36, &v127);
      }

      ++v120;
    }

    v37 = v12 != 0;
    if (v16)
    {
      goto LABEL_109;
    }

    v38 = v127;
    v39 = *(v127 + 4);
    if (!v39 || (*(v39 + 304) & 0x80) != 0)
    {
      if (!v23)
      {
        goto LABEL_71;
      }
    }

    else if (v23 == *(v39 + 312))
    {
      goto LABEL_71;
    }

    v40 = *(v127 + 39);
    v41 = v127 + 8;
    v42 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v40 ^ (v40 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v40 ^ (v40 >> 30))) >> 27));
    v43 = v42 ^ (v42 >> 31);
    if (v150)
    {
      v14 = v43 % DWORD2(v151);
      v44 = *(*(&v150 + 1) + 4 * v14);
      if (v44 != 0x7FFFFFFF)
      {
        if (*(v151 + 40 * v44 + 8) == v40)
        {
LABEL_70:

LABEL_71:
          if ((v12 & 2) == 0)
          {
            goto LABEL_109;
          }

          goto LABEL_75;
        }

        while (1)
        {
          LODWORD(v44) = *(v151 + 40 * v44) & 0x7FFFFFFF;
          if (v44 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v151 + 40 * v44 + 8) == v40)
          {
            if (!v38)
            {
              goto LABEL_71;
            }

            goto LABEL_70;
          }
        }
      }
    }

    else
    {
      LODWORD(v14) = 0;
    }

    v45 = re::HashTable<unsigned long long,re::Pair<re::SharedPtr<re::ecs2::Entity>,unsigned long long,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v150, v14, v43);
    v45[1] = v40;
    v45[2] = v38;
    v45[3] = v23;
    ++HIDWORD(v153);
    if ((v12 & 2) == 0)
    {
      goto LABEL_109;
    }

LABEL_75:
    *buf = 0;
    *&buf[8] = 0;
    *&buf[16] = 1;
    v162 = 0;
    v163 = 0;
    v46 = *(v127 + 9);
    if (!v46)
    {
      goto LABEL_104;
    }

    v47 = *(v127 + 11);
    v48 = 8 * v46;
    do
    {
      v49 = *v47;
      if (!*v47)
      {
        if (!v19)
        {
          goto LABEL_97;
        }

LABEL_81:
        re::Event<re::NetworkSystem,re::ecs2::Component *>::raise(*(v7 + 272) + 440, *(v7 + 272), v49);
        v51 = (*(*v49 + 40))(v49);
        v52 = re::ecs2::RemoteComponentInfo::get((v19 + 144), *(v51 + 16));
        v53 = re::ecs2::NetworkComponent::unbindComponentFromSyncable(v19, v49, v52);
        if (*buf)
        {
          v54 = buf[16];
          if (buf[16])
          {
            if ((*&buf[8] - 8) < 0xFFFFFFFFFFFFFFF7)
            {
              v55 = *&buf[8] + 1;
              v56 = 16;
              goto LABEL_89;
            }
          }

          else if (*&buf[8] >= v162)
          {
            v55 = *&buf[8] + 1;
            if (v162 < *&buf[8] + 1)
            {
              v56 = 2 * v162;
LABEL_89:
              if (v56 <= v55)
              {
                v57 = v55;
              }

              else
              {
                v57 = v56;
              }

              re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::setCapacity(buf, v57);
              v54 = buf[16];
            }
          }
        }

        else
        {
          re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::setCapacity(buf, *&buf[8] + 1);
          v54 = buf[16] + 2;
          *&buf[16] += 2;
        }

        v58 = (v54 & 1) == 0;
        v59 = v163;
        v60 = *&buf[8];
        if (!v58)
        {
          v59 = &v162;
        }

        v59[*&buf[8]] = v49;
        *&buf[8] = v60 + 1;
        *&buf[16] += 2;
        goto LABEL_96;
      }

      v50 = (v49 + 8);
      if (v49 != v19)
      {
        goto LABEL_81;
      }

LABEL_96:

LABEL_97:
      ++v47;
      v48 -= 8;
    }

    while (v48);
    if (buf[16])
    {
      v61 = &v162;
    }

    else
    {
      v61 = v163;
    }

    if (*&buf[8])
    {
      v62 = 8 * *&buf[8];
      do
      {
        v63 = *v61++;
        re::ecs2::EntityComponentCollection::remove((v127 + 48), v63);
        v62 -= 8;
      }

      while (v62);
    }

LABEL_104:
    if (*(v19 + 114) > *(v19 + 112))
    {
      re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) ", "m_live <= m_count", "clearComponents", 3184);
      _os_crash("assertion failure: (m_live <= m_count) ");
      __break(1u);
    }

    memset(*(v19 + 120), 255, 16 * (*(v19 + 116) & 0x1FFF));
    *(v19 + 118) = 0;
    *(v19 + 112) = 0;
    if (*buf && (buf[16] & 1) == 0)
    {
      (*(**buf + 40))();
    }

    v37 = v121;
LABEL_109:
    v159 = 0;
    re::snapshot::DecoderRaw::operator>>(v131, &v159);
    v64 = v159;
    if (v159)
    {
      while (2)
      {
        v65 = *(v7 + 272);
        if (!v16)
        {
          *buf = v64;
          v66 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v65 + 2856, buf);
          if (v66)
          {
            v67 = *v66;
            if (*v66)
            {
              v68 = re::ecs2::EntityComponentCollection::get((v127 + 48), v67);
              if (v68)
              {
                v69 = v68;
                re::ecs2::Component::willSet(v68);
                v70 = re::NetworkSystem::decodeComponent(*(v7 + 272), v131, v69);
                v71 = re::ecs2::Component::didSet(v69);
              }

              else
              {
                (*(*v67 + 32))(buf, v67);
                v69 = *buf;
                v73 = (*(**buf + 40))(*buf);
                if (*(v19 + 116) < 0)
                {
                  re::ecs2::LocalComponentInfo::add((v19 + 112), *(v73 + 16));
                }

                if (*(v19 + 32))
                {
                  v74 = RESyncServiceCreateIncomingSyncable();
                  MEMORY[0x1E6905A30](v74, *(v19 + 32));
                  v124 = v74;
                  re::ecs2::NetworkComponent::bindComponentToSyncable(v19, *buf, &v124);
                  if (v74)
                  {
                    RESyncRelease();
                    v124 = 0;
                  }
                }

                v70 = re::NetworkSystem::decodeComponent(*(v7 + 272), v131, v69);
                v123 = *buf;
                *buf = 0;
                re::ecs2::EntityComponentCollection::add(v127 + 48, &v123, 1);
                if (v123)
                {

                  v123 = 0;
                }

                re::Event<re::NetworkSystem,re::ecs2::Component *>::raise(*(v7 + 272) + 264, *(v7 + 272), v69);
                if (*buf)
                {
                }
              }

              if (v70)
              {
                if (*(v69 + 16))
                {
                  re::ecs2::Component::willSet(v69);
                  re::ecs2::Entity::updateAfterComponentDeserialized(*(v69 + 16), v69);
                  re::ecs2::Component::didSet(v69);
                }

                *buf = v69;
                v75 = (v69 + 8);
                re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(&v146[8], buf);
                if (*buf)
                {
                }

                if (*(v19 + 32))
                {
                  v76 = (*(*v69 + 40))(v69);
                  re::ecs2::RemoteComponentInfo::markDirty(v19 + 144, *(v76 + 16));
                  v37 = 1;
                }
              }

              else
              {
                v77 = *re::ecsNetworkLogObjects(v71);
                if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
                {
                  v78 = *(v67 + 4);
                  v79 = *(v127 + 39);
                  v80 = *(v127 + 37);
                  *buf = 136381187;
                  *&buf[4] = v78;
                  *&buf[12] = 2048;
                  *&buf[14] = v79;
                  v161 = 2081;
                  v162 = v80;
                  _os_log_error_impl(&dword_1E1C61000, v77, OS_LOG_TYPE_ERROR, "[NetworkComponent] failed to decode component %{private}s on entity (id = %llu, name = %{private}s", buf, 0x20u);
                }
              }

LABEL_119:
              v159 = 0;
              re::snapshot::DecoderRaw::operator>>(v131, &v159);
              v64 = v159;
              ++v11;
              if (!v159)
              {
                goto LABEL_139;
              }

              continue;
            }
          }

          v72 = *re::ecsNetworkLogObjects(v66);
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = v159;
            _os_log_impl(&dword_1E1C61000, v72, OS_LOG_TYPE_DEFAULT, "[NetworkComponent] Unknown component type %llx. Skipping...", buf, 0xCu);
          }

          v65 = *(v7 + 272);
        }

        break;
      }

      re::NetworkSystem::decodeComponent(v65, v131, 0);
      goto LABEL_119;
    }

LABEL_139:
    if (v37)
    {
      v81 = *(v7 + 272);
      v122 = v19;
      v82 = (v19 + 8);
      v83 = 2632;
      if (!*(v122 + 32))
      {
        v83 = 2680;
      }

      re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::add(v81 + v83, &v122);
      if (v122)
      {

        v122 = 0;
      }
    }

    v84 = *(v19 + 114);
    do
    {
      while (1)
      {
        v159 = 0;
        re::snapshot::DecoderRaw::operator>>(v131, &v159);
        if (v159 == 0 || v16)
        {
          break;
        }

        v85 = *(v7 + 272);
        *buf = v159;
        v86 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v85 + 2856, buf);
        if (v86 && (v87 = *v86) != 0)
        {
          v88 = re::ecs2::EntityComponentCollection::get((v127 + 48), v87);
          if (v88)
          {
            v89 = v88;
            re::Event<re::NetworkSystem,re::ecs2::Component *>::raise(*(v7 + 272) + 440, *(v7 + 272), v88);
            v90 = (*(*v89 + 40))(v89);
            v91 = re::ecs2::RemoteComponentInfo::get((v19 + 144), *(v90 + 16));
            re::ecs2::NetworkComponent::unbindComponentFromSyncable(v19, v89, v91);
            v92 = (*(*v89 + 40))(v89);
            if (*(v19 + 116) < 0)
            {
              re::ecs2::LocalComponentInfo::remove((v19 + 112), *(v92 + 16));
            }

            re::ecs2::EntityComponentCollection::remove((v127 + 48), v87);
          }

          else
          {
            v94 = *re::ecsNetworkLogObjects(0);
            if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
            {
              v95 = *(v127 + 37);
              v96 = *(v127 + 39);
              v97 = *(v87 + 4);
              *buf = 136315650;
              *&buf[4] = v95;
              *&buf[12] = 2048;
              *&buf[14] = v96;
              v161 = 2080;
              v162 = v97;
              _os_log_impl(&dword_1E1C61000, v94, OS_LOG_TYPE_DEFAULT, "[NetworkComponent] entity %s(%llu)doesn't have a %s component to remove.", buf, 0x20u);
            }
          }
        }

        else
        {
          v93 = *re::ecsNetworkLogObjects(v86);
          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = v159;
            _os_log_impl(&dword_1E1C61000, v93, OS_LOG_TYPE_DEFAULT, "[NetworkComponent] unknown component type hash during local sync: %llu", buf, 0xCu);
          }
        }
      }
    }

    while (v159);
    v98 = *(v19 + 114);
    if (v98 < v84)
    {
      v99 = v84 - v98;
      v100 = *(v19 + 120);
      memmove((v100 + 2 * *(v19 + 114)), (v100 + 2 * (*(v19 + 112) - v99)), 2 * v99);
      memset((v100 + 2 * (*(v19 + 112) - v99)), 255, 2 * v99);
      *(v19 + 112) -= v99;
    }

    if (v127)
    {
    }

    v129 = 0;
    re::snapshot::DecoderRaw::operator>>(v131, &v129);
  }

  while (v129);
LABEL_165:
  re::ecs2::NetworkReceiveSystem::processCreatedEntities(v7, v140);
  re::ecs2::NetworkReceiveSystem::processParentChanges(v7, v140);
  re::ecs2::NetworkReceiveSystem::processEvents(v7, v140);
  while (1)
  {
    *buf = 0;
    re::snapshot::DecoderRaw::operator>>(v131, buf);
    LODWORD(v129) = 0;
    if (!*buf)
    {
      break;
    }

    re::snapshot::DecoderRaw::operator>>(v131, &v129);
    re::ecs2::NetworkReceiveSystem::findEntity(&v159, v7, *buf, &v130);
    v101 = v159;
    if (v159)
    {
      v102 = *(v159 + 216);
      if (v102 && *(v102 + 64) == v139)
      {
        re::Event<re::NetworkSystem,re::ecs2::Entity *>::raise(*(v7 + 272) + 176, *(v7 + 272));
        if ((v101[304] & 0x80) != 0)
        {
          v103 = v101;
          do
          {
            v104 = v103;
            v103 = *(v103 + 4);
          }

          while (v103);
          re::Event<re::NetworkSystem,re::ecs2::Scene *>::raise(*(v7 + 272) + 1144, *(v7 + 272), *(v104 + 3));
        }

        re::ecs2::Entity::removeFromSceneOrParent(v101);
        re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v119, buf);
      }
    }
  }

  v105 = re::internal::enableSignposts(0, 0);
  if (v105)
  {
    v105 = kdebug_trace();
  }

  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v105);
  if (isStatisticCollectionEnabled)
  {
    isStatisticCollectionEnabled = re::profilerThreadContext(isStatisticCollectionEnabled);
    v107 = *(isStatisticCollectionEnabled + 152);
    if (v107)
    {
      v108 = v107[384].u64[0];
      if (v108 >= v120)
      {
        v108 = v120;
      }

      v107[384].i64[0] = v108;
      v109 = v107[384].u64[1];
      if (v109 <= v120)
      {
        v109 = v120;
      }

      v107[384].i64[1] = v109;
      v110 = vdupq_n_s64(1uLL);
      v110.i64[0] = v120;
      v107[385] = vaddq_s64(v107[385], v110);
      *(isStatisticCollectionEnabled + 184) = 0;
    }
  }

  v111 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
  if (v111)
  {
    v112 = re::profilerThreadContext(v111);
    v113 = *(v112 + 152);
    if (v113)
    {
      v114 = v113[368].u64[0];
      if (v114 >= v11)
      {
        v114 = v11;
      }

      v113[368].i64[0] = v114;
      v115 = v113[368].u64[1];
      if (v115 <= v11)
      {
        v115 = v11;
      }

      v113[368].i64[1] = v115;
      v116 = vdupq_n_s64(1uLL);
      v116.i64[0] = v11;
      v113[369] = vaddq_s64(v113[369], v116);
      *(v112 + 184) = 0;
    }
  }

  re::HashTable<unsigned long long,re::Pair<re::SharedPtr<re::ecs2::Entity>,unsigned long long,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v150);
  re::HashTable<RESyncableRefRetainer,unsigned long long,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::deinit(&v148[8]);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(&v146[8]);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v144);
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(&v142[8]);
  v117 = re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v140);
  if (v157)
  {
  }

  return 1;
}

void re::ecs2::NetworkReceiveSystem::findEntity(re::ecs2::NetworkReceiveSystem *this, uint64_t a2, re::ecs2::Scene **a3, uint64_t *a4)
{
  v26 = 0;
  v8 = *a4;
  if (*a4)
  {
    v27 = a3;
    v9 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v8 + 152, &v27);
    if (v9)
    {
      v10 = *(v9 + 8);
    }

    else
    {
      v10 = *(*(v8 + 104) + 312) == v27 ? *(v8 + 104) : 0;
    }

    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v26, v10);
    v11 = v26;
    if (v26)
    {
LABEL_32:
      *this = v11;
      return;
    }
  }

  v12 = (*(**(a2 + 40) + 288))(*(a2 + 40)) + 120;
  re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(&v27, v12, 0);
  v24 = v27;
  v25 = v28;
  if (v12 != v27 || v28 != 0xFFFFFFFFLL)
  {
    while (1)
    {
      v14 = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::operator*(&v24);
      v15 = *(v14 + 200);
      if (v15)
      {
        break;
      }

LABEL_21:
      re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(&v24);
      if (v24 == v12 && v25 == 0xFFFF && HIWORD(v25) == 0xFFFF)
      {
        goto LABEL_29;
      }
    }

    v16 = *(v14 + 216);
    v17 = 8 * v15;
    while (1)
    {
      v18 = *v16;
      v27 = a3;
      v19 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v18 + 152, &v27);
      if (v19)
      {
        v20 = *(v19 + 8);
      }

      else
      {
        v20 = *(*(v18 + 104) + 312) == v27 ? *(v18 + 104) : 0;
      }

      re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v26, v20);
      v11 = v26;
      if (v26)
      {
        break;
      }

      ++v16;
      v17 -= 8;
      if (!v17)
      {
        goto LABEL_21;
      }
    }

    *a4 = v18;
    goto LABEL_32;
  }

LABEL_29:
  v23 = v26;
  *this = 0;
  if (v23)
  {
  }
}

uint64_t re::ecs2::NetworkComponent::bindEntityTo(re *a1, uint64_t a2)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 8, 8);
  if (a2)
  {
    v5 = (a2 + 8);
  }

  else
  {
    v5 = 0;
  }

  objc_initWeak(v4, v5);

  return RESyncableSetUserData();
}

_anonymous_namespace_ *re::DynamicOverflowArray<unsigned long long,2ul>::add(_anonymous_namespace_ *result, void *a2)
{
  v3 = result;
  if (!*result)
  {
    v10 = *(v3 + 1);
    result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v10 + 1);
    v11 = *(v3 + 4) + 2;
    *(v3 + 4) = v11;
    if ((v11 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    v12 = v3 + 24;
    goto LABEL_19;
  }

  v4 = *(result + 1);
  v5 = *(result + 4);
  if ((v5 & 1) == 0)
  {
    v6 = *(result + 3);
    v8 = v4 >= v6;
    v7 = v4 + 1;
    v8 = !v8 || v6 >= v7;
    if (!v8)
    {
      v9 = 2 * v6;
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v7 = v4 + 1;
  if (v7 < 3)
  {
LABEL_11:
    if ((v5 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  v9 = 4;
LABEL_14:
  if (v9 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v9;
  }

  result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(result, v13);
  if (*(v3 + 4))
  {
    goto LABEL_18;
  }

LABEL_12:
  v12 = *(v3 + 4);
LABEL_19:
  v14 = *(v3 + 1);
  *&v12[8 * v14] = *a2;
  *(v3 + 1) = v14 + 1;
  *(v3 + 4) += 2;
  return result;
}

void re::ecs2::NetworkComponent::resolveViews(uint64_t a1, uint64_t a2)
{
  if (a2 || (v4 = *(a1 + 56)) == 0)
  {
    if (re::ecs2::NetworkComponent::resolveSelfView(a1, a2))
    {

      re::ecs2::NetworkComponent::resolveChildEntityViews(a1, a2);
    }
  }

  else
  {
    v6 = a1;
    v5 = (a1 + 8);
    re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::add(v4 + 2760, &v6);
    if (v6)
    {
    }
  }
}

void re::Event<re::NetworkSystem,re::ecs2::Component *>::raise(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 80);
  *(a1 + 80) = v4 + 1;
  if (*(a1 + 16))
  {
    v6 = 0;
    do
    {
      if ((*(*(a1 + 32) + 32 * v6 + 24))(a2) == 1)
      {
        re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt(a1, v6);
      }

      else
      {
        ++v6;
      }
    }

    while (v6 < *(a1 + 16));
    v4 = *(a1 + 80) - 1;
  }

  *(a1 + 80) = v4;
  if (!v4)
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      v8 = 0;
      for (i = 0; i != v7; ++i)
      {
        v10 = *(a1 + 56);
        if (v10 <= i)
        {
          v18 = 0;
          memset(v29, 0, sizeof(v29));
          v14 = MEMORY[0x1E69E9C10];
          v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v21 = 136315906;
          v22 = "operator[]";
          v23 = 1024;
          if (v15)
          {
            v16 = 3;
          }

          else
          {
            v16 = 2;
          }

          v24 = 789;
          v25 = 2048;
          v26 = i;
          v27 = 2048;
          v28 = v10;
          _os_log_send_and_compose_impl(v16, &v18, v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, a3);
          _os_crash_msg();
          __break(1u);
        }

        v11 = *(a1 + 72) + v8;
        v12 = *(v11 + 32);
        v13 = *(v11 + 16);
        v19[0] = *v11;
        v19[1] = v13;
        v20 = v12;
        if (LOBYTE(v19[0]) == 1)
        {
          re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::indexOf(a1, v19 + 1, v29);
          if ((v29[0] & 1) == 0)
          {
            re::DynamicArray<re::EvaluationRegister>::add(a1, v19 + 8);
          }
        }

        else
        {
          re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStable(a1, v19 + 1);
        }

        v8 += 40;
      }
    }
  }
}

_anonymous_namespace_ *re::ecs2::NetworkComponent::unbindComponentFromSyncable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    RESyncableSetUserData();
  }

  v5 = *(a1 + 200);
  if (v5)
  {
    v6 = 64 - __clz((v5 - 1) >> 3);
    v7 = v6 >= 4 ? 4 : v6;
    --re::NetworkSystem::boundComponents[v7];
    if (v5 != 1)
    {
      v8 = 64 - __clz((v5 - 2) >> 3);
      if (v8 >= 4)
      {
        v8 = 4;
      }

      ++re::NetworkSystem::boundComponents[v8];
    }
  }

  result = (*(*a2 + 40))(a2);
  v10 = *(a1 + 146);
  if (*(a1 + 146))
  {
    v11 = (result + 16);
    v12 = *(a1 + 152);
    v13 = vld1q_dup_s16(v11);
    v14 = 1;
    for (i = v12; ; ++i)
    {
      v16 = vandq_s8(vceqq_s16(v13, *i), xmmword_1E306AC00);
      v16.i16[0] = vmaxvq_u16(v16);
      if (v16.i32[0])
      {
        break;
      }

      v14 -= 8;
      if (!--v10)
      {
        return result;
      }
    }

    v17 = v16.u16[0] - v14;
    v18 = *(a1 + 144);
    if (v17 < v18)
    {
      v12->i16[v17] = v12->i16[v18 - 1];
      v12->i16[*(a1 + 144) - 1] = -1;
      v19 = *(a1 + 144) - 1;
      *(a1 + 144) = v19;
      *(a1 + 146) = (v19 + 7) >> 3;
      v20 = *(a1 + 200);
      if (v20 <= v17)
      {
        v46 = 0;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v55 = 0u;
        v37 = MEMORY[0x1E69E9C10];
        v38 = v20;
        v47 = 136315906;
        v48 = "removeAt";
        v49 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v39 = 3;
        }

        else
        {
          v39 = 2;
        }

        v50 = 1000;
        v51 = 2048;
        v52 = v17;
        v53 = 2048;
        v54 = v38;
        _os_log_send_and_compose_impl(v39, &v46, &v55, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v45);
        _os_crash_msg();
        __break(1u);
      }

      else
      {
        v21 = v20 - 1;
        if (v20 - 1 > v17)
        {
          if (*(a1 + 208))
          {
            v22 = a1 + 216;
          }

          else
          {
            v22 = *(a1 + 224);
          }

          v23 = v22 + 8 * v20;
          v24 = *(v22 + 8 * v17);
          *(v22 + 8 * v17) = *(v23 - 8);
          *(v23 - 8) = v24;
        }

        v25 = v18 - 1;
        v26 = *(a1 + 208);
        if (v26)
        {
          v27 = a1 + 216;
        }

        else
        {
          v27 = *(a1 + 224);
        }

        v28 = v27 + 8 * v20;
        if (*(v28 - 8))
        {
          RESyncRelease();
          *(v28 - 8) = 0;
          v26 = *(a1 + 208);
          v21 = *(a1 + 200) - 1;
        }

        *(a1 + 200) = v21;
        *(a1 + 208) = v26 + 2;
        if (re::DynamicBitset<unsigned long long,64ul>::getBit(a1 + 280, v25))
        {
          re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 280, v17);
          goto LABEL_35;
        }

        v29 = v17 >> 6;
        v30 = *(a1 + 288);
        if (v30 > v17 >> 6)
        {
          if (*(a1 + 296))
          {
            v31 = a1 + 304;
          }

          else
          {
            v31 = *(a1 + 312);
          }

          *(v31 + 8 * v29) &= ~(1 << v17);
LABEL_35:
          v32 = *(a1 + 320);
          if ((v25 & 0x3F) != 0)
          {
            v33 = (v25 >> 6) + 1;
          }

          else
          {
            v33 = v25 >> 6;
          }

          *(a1 + 320) = v25;
          *&v55 = 0;
          result = re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 280), v33, &v55);
          if (v25 && v32 > v25)
          {
            v34 = 63;
            v35 = *(a1 + 320) & 0x3FLL;
            if (v35 && v35 != 63)
            {
              v34 = ~(-1 << v35);
            }

            if (*(a1 + 296))
            {
              v36 = a1 + 304;
            }

            else
            {
              v36 = *(a1 + 312);
            }

            *(v36 + 8 * *(a1 + 288) - 8) &= v34;
          }

          return result;
        }
      }

      v46 = 0;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      v40 = MEMORY[0x1E69E9C10];
      v41 = v29;
      v42 = v30;
      v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v47 = 136315906;
      v48 = "operator[]";
      v49 = 1024;
      if (v43)
      {
        v44 = 3;
      }

      else
      {
        v44 = 2;
      }

      v50 = 858;
      v51 = 2048;
      v52 = v41;
      v53 = 2048;
      v54 = v42;
      _os_log_send_and_compose_impl(v44, &v46, &v55, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v45);
      _os_crash_msg();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::ecs2::NetworkComponent::bindComponentToSyncable(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 200);
  if (v5)
  {
    v6 = 64 - __clz((v5 - 1) >> 3);
    if (v6 >= 4)
    {
      v6 = 4;
    }

    --re::NetworkSystem::boundComponents[v6];
  }

  v7 = 64 - __clz(v5 >> 3);
  if (v7 >= 4)
  {
    v7 = 4;
  }

  ++re::NetworkSystem::boundComponents[v7];
  v8 = *a3;
  if (*a3)
  {
    RESyncRetain();
  }

  v9 = (*(*a2 + 40))(a2);
  v10 = v9[8];
  v11 = *(a1 + 146);
  if (!*(a1 + 146))
  {
    goto LABEL_20;
  }

  v12 = v9;
  v13 = *(a1 + 152);
  v14 = vdupq_n_s16(v10);
  v15 = 1;
  while (1)
  {
    v16 = vandq_s8(vceqq_s16(v14, *v13), xmmword_1E306AC00);
    v16.i16[0] = vmaxvq_u16(v16);
    if (v16.i32[0])
    {
      break;
    }

    v15 -= 8;
    ++v13;
    if (!--v11)
    {
      goto LABEL_20;
    }
  }

  v17 = v16.u16[0] - v15;
  if (v17 >= *(a1 + 144))
  {
LABEL_20:
    v22 = re::ecs2::PackedTypeIDs::ensureCapacity((a1 + 144), *(a1 + 144) + 1);
    v23 = *(a1 + 192);
    *(*(a1 + 152) + 2 * *(a1 + 144)) = v10;
    v24 = *(a1 + 144) + 1;
    *(a1 + 144) = v24;
    *(a1 + 146) = (v24 + 7) >> 3;
    if (!v23)
    {
      v30 = *(a1 + 200);
      re::DynamicOverflowArray<RESyncableRefRetainer,8ul>::setCapacity((a1 + 192), v30 + 1);
      v26 = *(a1 + 208) + 2;
      *(a1 + 208) = v26;
      goto LABEL_32;
    }

    v25 = *(a1 + 200);
    v26 = *(a1 + 208);
    if (v26)
    {
      if (v25 - 8 >= 0xFFFFFFFFFFFFFFF7)
      {
        goto LABEL_32;
      }

      v28 = v25 + 1;
      v29 = 16;
    }

    else
    {
      v27 = *(a1 + 216);
      if (v25 < v27)
      {
        goto LABEL_32;
      }

      v28 = v25 + 1;
      if (v27 >= v28)
      {
        goto LABEL_32;
      }

      v29 = 2 * v27;
    }

    if (v29 <= v28)
    {
      v31 = v28;
    }

    else
    {
      v31 = v29;
    }

    re::DynamicOverflowArray<RESyncableRefRetainer,8ul>::setCapacity((a1 + 192), v31);
    v26 = *(a1 + 208);
LABEL_32:
    if (v26)
    {
      v32 = a1 + 216;
    }

    else
    {
      v32 = *(a1 + 224);
    }

    v33 = *(a1 + 200);
    *(v32 + 8 * v33) = v8;
    *(a1 + 200) = v33 + 1;
    *(a1 + 208) += 2;
    v34 = *(a1 + 144);
    v35 = *(a1 + 320);
    if ((v34 & 0x3F) != 0)
    {
      v36 = (v34 >> 6) + 1;
    }

    else
    {
      v36 = v34 >> 6;
    }

    *(a1 + 320) = v34;
    *buf = 0;
    v37 = re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 280), v36, buf);
    if (v34 && v35 > v34)
    {
      v38 = 63;
      v39 = *(a1 + 320) & 0x3FLL;
      if (v39 && v39 != 63)
      {
        v38 = ~(-1 << v39);
      }

      if (*(a1 + 296))
      {
        v40 = a1 + 304;
      }

      else
      {
        v40 = *(a1 + 312);
      }

      *(v40 + 8 * *(a1 + 288) - 8) &= v38;
    }

    goto LABEL_47;
  }

  v18 = *re::ecsNetworkLogObjects(v9);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(v12 + 4);
    *buf = 136315138;
    *&buf[4] = v19;
    _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "[NetworkComponent] component of type %s is already in component info table.  Re-binding?", buf, 0xCu);
  }

  v20 = *(a1 + 200);
  if (v20 <= v17)
  {
    v47 = 0;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    *buf = 0u;
    v44 = MEMORY[0x1E69E9C10];
    v48 = 136315906;
    v49 = "operator[]";
    v50 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v45 = 3;
    }

    else
    {
      v45 = 2;
    }

    v51 = 858;
    v52 = 2048;
    v53 = v17;
    v54 = 2048;
    v55 = v20;
    _os_log_send_and_compose_impl(v45, &v47, buf, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v48, 38, v46);
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 208))
  {
    v21 = a1 + 216;
  }

  else
  {
    v21 = *(a1 + 224);
  }

  v37 = *(v21 + 8 * v17);
  *(v21 + 8 * v17) = v8;
  if (v37)
  {
    v37 = RESyncRelease();
  }

LABEL_47:
  v41 = re::globalAllocators(v37);
  v42 = (*(*v41[2] + 32))(v41[2], 8, 8);
  objc_initWeak(v42, (a2 + 8));
  return RESyncableSetUserData();
}

void re::Event<re::NetworkSystem,re::ecs2::Entity *>::raise(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 80);
  *(a1 + 80) = v3 + 1;
  if (*(a1 + 16))
  {
    v5 = 0;
    do
    {
      if ((*(*(a1 + 32) + 32 * v5 + 24))(a2) == 1)
      {
        re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt(a1, v5);
      }

      else
      {
        ++v5;
      }
    }

    while (v5 < *(a1 + 16));
    v3 = *(a1 + 80) - 1;
  }

  *(a1 + 80) = v3;
  if (!v3)
  {
    re::Event<re::GeometricObjectBase>::doDeferredActions(a1);
  }
}

void re::Event<re::NetworkSystem,re::ecs2::Scene *>::raise(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 80);
  *(a1 + 80) = v4 + 1;
  if (*(a1 + 16))
  {
    v6 = 0;
    do
    {
      if ((*(*(a1 + 32) + 32 * v6 + 24))(a2) == 1)
      {
        re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt(a1, v6);
      }

      else
      {
        ++v6;
      }
    }

    while (v6 < *(a1 + 16));
    v4 = *(a1 + 80) - 1;
  }

  *(a1 + 80) = v4;
  if (!v4)
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      v8 = 0;
      for (i = 0; i != v7; ++i)
      {
        v10 = *(a1 + 56);
        if (v10 <= i)
        {
          v18 = 0;
          memset(v29, 0, sizeof(v29));
          v14 = MEMORY[0x1E69E9C10];
          v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v21 = 136315906;
          v22 = "operator[]";
          v23 = 1024;
          if (v15)
          {
            v16 = 3;
          }

          else
          {
            v16 = 2;
          }

          v24 = 789;
          v25 = 2048;
          v26 = i;
          v27 = 2048;
          v28 = v10;
          _os_log_send_and_compose_impl(v16, &v18, v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, a3);
          _os_crash_msg();
          __break(1u);
        }

        v11 = *(a1 + 72) + v8;
        v12 = *(v11 + 32);
        v13 = *(v11 + 16);
        v19[0] = *v11;
        v19[1] = v13;
        v20 = v12;
        if (LOBYTE(v19[0]) == 1)
        {
          re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::indexOf(a1, v19 + 1, v29);
          if ((v29[0] & 1) == 0)
          {
            re::DynamicArray<re::EvaluationRegister>::add(a1, v19 + 8);
          }
        }

        else
        {
          re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::indexOf(a1, v19 + 1, v29);
          if (LOBYTE(v29[0]) == 1)
          {
            re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt(a1, *(&v29[0] + 1));
          }
        }

        v8 += 40;
      }
    }
  }
}

uint64_t ___ZNK2re4ecs220NetworkReceiveSystem13processCommitEPK12RESyncCommitRNS0_21NetworkReceiveContextE_block_invoke(uint64_t a1, uint64_t a2)
{
  if (RESyncReadContextIsDestroyed())
  {
    Syncable = RESyncReadContextGetSyncable();
    re::ecs2::NetworkComponent::getEntityBoundTo(Syncable, &v9);
    v3 = v9;
    if (v9)
    {
      v4 = v9[27];
      if (v4)
      {
        if (v4[208])
        {
          v5 = v4 + 216;
        }

        else
        {
          v5 = *(v4 + 28);
        }

        v6 = *(v4 + 25);
        if (v6)
        {
          v7 = 8 * v6;
          do
          {
            if (*v5)
            {
              RESyncableSetUserData();
            }

            ++v5;
            v7 -= 8;
          }

          while (v7);
        }

        memset(*(v4 + 15), 255, 16 * (*(v4 + 58) & 0x1FFF));
        *(v4 + 28) = 0;
        *(v4 + 59) = 0;
        *(v4 + 58) &= 0x9FFFu;
        re::ecs2::RemoteComponentInfo::clearAll((v4 + 144));
      }

      RESyncableSetUserData();
    }

    else
    {
      RESyncableSetUserData();
    }
  }

  return 1;
}

uint64_t re::ecs2::RemoteComponentInfo::clearAll(uint64_t this)
{
  v1 = this;
  if (*(this + 2))
  {
    v2 = 0;
    v3 = 16 * *(this + 2);
    *&v4 = -1;
    *(&v4 + 1) = -1;
    do
    {
      *(*(this + 8) + v2) = v4;
      v2 += 16;
    }

    while (v3 != v2);
  }

  *this = 0;
  v5 = *(this + 56);
  *(this + 56) = 0;
  v6 = *(this + 64);
  if (v6)
  {
    v7 = (this + 72);
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = *(this + 80);
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  v8 = 8 * v5;
  do
  {
    this = *v7;
    if (*v7)
    {
      this = RESyncRelease();
      *v7 = 0;
    }

    ++v7;
    v8 -= 8;
  }

  while (v8);
  v6 = *(v1 + 64);
LABEL_13:
  *(v1 + 64) = v6 + 2;
  v9 = *(v1 + 152);
  if (v9)
  {
    v10 = (v1 + 160);
  }

  else
  {
    v10 = *(v1 + 168);
  }

  v11 = *(v1 + 144);
  while (1)
  {
    v12 = v1 + 160;
    if ((v9 & 1) == 0)
    {
      v12 = *(v1 + 168);
    }

    if (v10 == (v12 + 8 * v11))
    {
      break;
    }

    *v10++ = 0;
    v9 = *(v1 + 152);
  }

  return this;
}

uint64_t ___ZNK2re4ecs220NetworkReceiveSystem25processComponentSnapshotsEPK12RESyncCommitRNS0_21NetworkReceiveContextE_block_invoke(uint64_t a1, uint64_t a2)
{
  v75 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  Syncable = RESyncReadContextGetSyncable();
  if ((RESyncableIsOpaque() & 1) != 0 || !RESyncableGetTypeId())
  {
    return 1;
  }

  Parent = RESyncableGetParent();
  re::ecs2::NetworkComponent::getEntityBoundTo(Parent, &v67);
  re::ecs2::NetworkComponent::getComponentBoundTo(&v66, Syncable);
  v7 = v66;
  if (v66)
  {
    v8 = 0;
  }

  else
  {
    if (!RESyncReadContextIsNew())
    {
      goto LABEL_89;
    }

    v11 = *(v4 + 272);
    *buf = RESyncableGetTypeId();
    v12 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v11 + 2856, buf);
    if (v12 && (v13 = *v12) != 0)
    {
      v14 = 0;
    }

    else
    {
      v39 = *re::ecsNetworkLogObjects(v12);
      v12 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
      if (v12)
      {
        TypeId = RESyncableGetTypeId();
        *buf = 134217984;
        *&buf[4] = TypeId;
        _os_log_error_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_ERROR, "[NetworkComponent] Unknown component type hash (%llu)", buf, 0xCu);
      }

      v13 = 0;
      v14 = 1;
    }

    v40 = v67;
    if (!v67)
    {
      v42 = *re::ecsNetworkLogObjects(v12);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        Guid = RESyncableGetGuid();
        v62 = RESyncableGetTypeId();
        RESyncableGetTypeInfo();
        DebugName = RESyncSyncableTypeInfoGetDebugName();
        *buf = 134218755;
        *&buf[4] = Guid;
        v69 = 2048;
        v70 = v62;
        v71 = 2081;
        v72 = DebugName;
        v73 = 2048;
        v74 = Parent;
        _os_log_error_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_ERROR, "[NetworkComponent] Cannot find component's entity (guid=%llu, typeID=%llu, type=%{private}s, entity=%p).", buf, 0x2Au);
      }

      RESyncableIsDestroyed();
      goto LABEL_89;
    }

    if ((v14 | RESyncableIsDestroyed()) == 1)
    {
LABEL_90:

      return 1;
    }

    v41 = v40[27];
    v8 = v13 != re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (v13 == re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      if (v41)
      {
        v57 = v41 + 1;
      }

      v66 = v41;
      v7 = v41;
    }

    else
    {
      (*(*v13 + 32))(buf, v13);
      v7 = *buf;
      v66 = *buf;
    }

    v58 = (*(*v7 + 5))(v7);
    re::ecs2::EntityComponentCollection::remove((v40 + 6), v58);
    v65 = Syncable;
    if (Syncable)
    {
      RESyncRetain();
      re::ecs2::NetworkComponent::bindComponentToSyncable(v41, v7, &v65);
      RESyncRelease();
      v65 = 0;
    }

    else
    {
      re::ecs2::NetworkComponent::bindComponentToSyncable(v41, v7, &v65);
    }
  }

  IsDataChanged = RESyncReadContextIsDataChanged();
  if (IsDataChanged)
  {
    IsDataChanged = RESyncReadContextGetStateSize();
    if (IsDataChanged)
    {
      IsDataChanged = re::ecs2::IntrospectedNetworkTypeHelper::deserialize(*(v4 + 312), Syncable, v7, a2);
      if (IsDataChanged)
      {
        v10 = 1;
        goto LABEL_16;
      }

      v15 = *re::ecsNetworkLogObjects(IsDataChanged);
      IsDataChanged = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
      if (IsDataChanged)
      {
        RESyncableGetTypeInfo();
        v59 = RESyncSyncableTypeInfoGetDebugName();
        *buf = 136380675;
        *&buf[4] = v59;
        _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "[NetworkComponent] Failed to deserialize component of type '%{private}s'. Ignoring state update.", buf, 0xCu);
      }
    }
  }

  v10 = 0;
LABEL_16:
  v16 = v67;
  v17 = !v8;
  if (!v67)
  {
    v17 = 1;
  }

  if (v17)
  {
    v19 = v66;
    if (!v66[2])
    {
      v22 = *re::ecsNetworkLogObjects(IsDataChanged);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = RESyncableGetGuid();
        v24 = RESyncableGetGuid();
        IsDestroyed = RESyncReadContextIsDestroyed();
        *buf = 134218496;
        *&buf[4] = v23;
        v69 = 2048;
        v70 = v24;
        v71 = 1024;
        LODWORD(v72) = IsDestroyed;
        _os_log_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEFAULT, "Received component: {id: %llu, parent: %llu: isDestroyed: %d} with no entity", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v18 = v67[27];
    v19 = v66;
    *buf = *((*(*v66 + 5))(v66) + 16);
    if (!re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::contains((v18 + 336), buf))
    {
      v20 = (*(*v19 + 5))(v19);
      if (*(v18 + 58) < 0)
      {
        re::ecs2::LocalComponentInfo::add((v18 + 112), *(v20 + 16));
      }
    }

    v64 = v19;
    v21 = v19 + 1;
    re::ecs2::EntityComponentCollection::add((v16 + 6), &v64, 1);
    if (v64)
    {

      v64 = 0;
    }

    re::Event<re::NetworkSystem,re::ecs2::Component *>::raise(*(v4 + 272) + 264, *(v4 + 272), v19);
  }

  if ((*(*v19 + 5))(v19) != re::ecs2::ComponentImpl<re::ecs2::LatencyEventsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
  {
    goto LABEL_29;
  }

  v26 = re::internal::enableSignposts(0, 0);
  if (v26)
  {
    v26 = kdebug_trace();
  }

  v27 = v19[5];
  if (v27 == 0x800000000)
  {
    isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v26);
    if (!isStatisticCollectionEnabled)
    {
      goto LABEL_29;
    }

    v29 = re::profilerThreadContext(isStatisticCollectionEnabled);
    v30 = *(v29 + 152);
    if (!v30)
    {
      goto LABEL_29;
    }

    v36 = v19[4];
    v37 = v30[864];
    if (v37 >= v36)
    {
      v37 = v19[4];
    }

    v30[864] = v37;
    v38 = v30[865];
    if (v38 <= v36)
    {
      v38 = v36;
    }

    v30[865] = v38;
    v30[866] += v36;
    v34 = 867;
  }

  else
  {
    if (v27 != 1)
    {
      goto LABEL_29;
    }

    v28 = re::ProfilerConfig::isStatisticCollectionEnabled(v26);
    if (!v28)
    {
      goto LABEL_29;
    }

    v29 = re::profilerThreadContext(v28);
    v30 = *(v29 + 152);
    if (!v30)
    {
      goto LABEL_29;
    }

    v31 = v19[4];
    v32 = v30[848];
    if (v32 >= v31)
    {
      v32 = v19[4];
    }

    v30[848] = v32;
    v33 = v30[849];
    if (v33 <= v31)
    {
      v33 = v31;
    }

    v30[849] = v33;
    v30[850] += v31;
    v34 = 851;
  }

  ++v30[v34];
  *(v29 + 184) = 0;
LABEL_29:
  if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
  {
    v43 = (*(*v19 + 5))(v19);
    re::packCharArrayToUInt64ForAriadne(*(v43 + 32), 0);
    RESyncReadContextGetStateSize();
    kdebug_trace();
  }

  if (re::internal::enableHighFrequencyNetworkTracing(0, 0))
  {
    v44 = v19[2];
    v45 = *(v44 + 27);
    if (v45)
    {
      v46 = re::ecs2::NetworkComponent::owningProcessType(*(v44 + 27));
      if (v46)
      {
        v47 = v46;
        v48 = *(v45 + 432) ? "Remote" : "Local";
        v49 = (*(v45 + 432) == 1 ? "Shared" : v48);
        re::packCharArrayToUInt64ForAriadne(v49, 0);
        if (re::internal::enableSignposts(0, 0))
        {
          if (re::internal::enableHighFrequencyNetworkTracing(0, 0))
          {
            v50 = (*(*v19 + 5))(v19);
            re::packCharArrayToUInt64ForAriadne(*(v50 + 32), 0);
            if (v47 == 1)
            {
              v51 = "Local";
            }

            else
            {
              v51 = "Remote";
            }

            re::packCharArrayToUInt64ForAriadne(v51, 0);
            kdebug_trace();
          }
        }
      }
    }
  }

  ++*(*(a1 + 40) + 272);
  if (RESyncReadContextIsDestroyed())
  {
    if (v19[2])
    {
      re::Event<re::NetworkSystem,re::ecs2::Component *>::raise(*(v4 + 272) + 440, *(v4 + 272), v19);
      v52 = v19[2];
      v53 = v52[27];
      if (v53)
      {
        re::ecs2::NetworkComponent::unbindComponentFromSyncable(v52[27], v19, Syncable);
        v54 = (*(*v19 + 5))(v19);
        if (*(v53 + 116) < 0)
        {
          re::ecs2::LocalComponentInfo::remove((v53 + 112), *(v54 + 16));
        }
      }

      else
      {
        RESyncableSetUserData();
      }

      re::ecs2::EntityComponentCollection::remove((v19[2] + 48), v19);
    }

LABEL_88:

    goto LABEL_89;
  }

  if (!v10)
  {
    goto LABEL_88;
  }

  v55 = v19[2];
  if (v55)
  {
    re::ecs2::Entity::updateAfterComponentDeserialized(v55, v19);
  }

  re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::add((*(a1 + 40) + 128), &v66);
  v19 = v66;
  if (v66)
  {
    goto LABEL_88;
  }

LABEL_89:
  v40 = v67;
  if (v67)
  {
    goto LABEL_90;
  }

  return 1;
}

id **re::ecs2::NetworkComponent::getComponentBoundTo(id **result, uint64_t a2)
{
  v2 = result;
  if (a2)
  {
    result = RESyncableGetUserData();
    v3 = 0;
    if (result)
    {
      if ((result & 1) == 0)
      {
        result = objc_loadWeakRetained(result);
        v3 = result - 1;
        if (!result)
        {
          v3 = 0;
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
  return result;
}

uint64_t re::ecs2::NetworkComponent::owningProcessType(re::ecs2::NetworkComponent *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return v1;
  }

  do
  {
    v3 = v1;
    v1 = *(v1 + 32);
  }

  while (v1);
  v1 = *(v3 + 24);
  if (!v1)
  {
    return v1;
  }

  v4 = *(v1 + 56);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = (*(*v4 + 32))(v4);
  if (!re::ServiceLocator::serviceOrNull<re::NetworkSystem>(v5))
  {
    goto LABEL_15;
  }

  if (*(this + 4))
  {
    if (RESyncableGetOwnerPeerID())
    {
      goto LABEL_8;
    }

LABEL_15:
    LOBYTE(v1) = 0;
    return v1;
  }

  if (!*(this + 8))
  {
    goto LABEL_15;
  }

LABEL_8:
  v6 = 0;
  do
  {
    if (v6 >= RESyncServiceGetSessionCount())
    {
      LOBYTE(v1) = 3;
      return v1;
    }

    RESyncServiceGetSession();
    RESyncSessionGetNetSession();
    ++v6;
  }

  while (!RESyncNetSessionGetParticipantWithPeerID());
  if (RESyncNetSessionGetIsLocal())
  {
    LOBYTE(v1) = 1;
  }

  else
  {
    LOBYTE(v1) = 2;
  }

  return v1;
}

void re::ecs2::NetworkReceiveSystem::setEntityParent(re::ecs2::NetworkReceiveSystem *this, re::ecs2::Entity *a2, re::ecs2::Entity *a3)
{
  if (re::NetworkSystemFeatureFlags::suppressNetworkReparentMarkDirty(this) && (v5 = *(this + 27)) != 0)
  {
    *(v5 + 480) = 1;
    *(v5 + 488) = a2;
    re::ecs2::Entity::setParentInternal(this, a2, 0xFFFFFFFFFFFFFFFFLL);
    *(v5 + 480) = 0;
    *(v5 + 488) = 0;
  }

  else
  {

    re::ecs2::Entity::setParentInternal(this, a2, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void re::Event<re::NetworkSystem,re::ecs2::Entity *,re::TLEInfo *,re::NewUnboundTLEHandlerResult *>::raise(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 80);
  *(a1 + 80) = v6 + 1;
  if (*(a1 + 16))
  {
    v8 = 0;
    do
    {
      if ((*(*(a1 + 32) + 32 * v8 + 24))(a2) == 1)
      {
        re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt(a1, v8);
      }

      else
      {
        ++v8;
      }
    }

    while (v8 < *(a1 + 16));
    v6 = *(a1 + 80) - 1;
  }

  *(a1 + 80) = v6;
  if (!v6)
  {
    v9 = *(a1 + 56);
    if (v9)
    {
      v10 = 0;
      for (i = 0; i != v9; ++i)
      {
        v12 = *(a1 + 56);
        if (v12 <= i)
        {
          v21 = 0;
          memset(v32, 0, sizeof(v32));
          v16 = MEMORY[0x1E69E9C10];
          v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v24 = 136315906;
          v25 = "operator[]";
          v26 = 1024;
          if (v17)
          {
            v18 = 3;
          }

          else
          {
            v18 = 2;
          }

          v27 = 789;
          v28 = 2048;
          v29 = i;
          v30 = 2048;
          v31 = v12;
          _os_log_send_and_compose_impl(v18, &v21, v32, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, a5, a4);
          _os_crash_msg();
          __break(1u);
        }

        v13 = *(a1 + 72) + v10;
        v14 = *(v13 + 32);
        v15 = *(v13 + 16);
        v22[0] = *v13;
        v22[1] = v15;
        v23 = v14;
        if (LOBYTE(v22[0]) == 1)
        {
          re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::indexOf(a1, v22 + 1, v32);
          if ((v32[0] & 1) == 0)
          {
            re::DynamicArray<re::EvaluationRegister>::add(a1, v22 + 8);
          }
        }

        else
        {
          re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::indexOf(a1, v22 + 1, v32);
          if (LOBYTE(v32[0]) == 1)
          {
            re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt(a1, *(&v32[0] + 1));
          }
        }

        v10 += 40;
      }
    }
  }
}

uint64_t ___ZNK2re4ecs220NetworkReceiveSystem22processEntitySnapshotsEPK12RESyncCommitRNS0_21NetworkReceiveContextE_block_invoke(uint64_t a1, uint64_t a2)
{
  v87 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  Syncable = RESyncReadContextGetSyncable();
  if (RESyncableGetTypeId())
  {
    return 1;
  }

  ++*(*(a1 + 40) + 264);
  IsDestroyed = RESyncableIsDestroyed();
  re::ecs2::NetworkComponent::getEntityBoundTo(Syncable, &v79);
  IsNew = RESyncReadContextIsNew();
  if ((IsNew & 1) != 0 || (IsDestroyed & 1) != 0 || v79)
  {
    v74 = 0;
    __s1 = &str_67;
    v76 = 0;
    v77 = 0;
    *v78 = 512;
    v9 = re::ecs2::IntrospectedNetworkTypeHelper::deserialize(*(v4 + 312), Syncable, &v74, a2);
    if (!v9)
    {
      v31 = *re::ecsNetworkLogObjects(v9);
      v9 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
      if (v9)
      {
        Guid = RESyncableGetGuid();
        if (v79)
        {
          v33 = *(v79 + 39);
          v34 = *(v79 + 37);
        }

        else
        {
          v33 = 0;
          v34 = "N/A";
        }

        *buf = 134218499;
        *&buf[4] = Guid;
        v81 = 2048;
        v82 = v33;
        v83 = 2081;
        v84 = v34;
        _os_log_error_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_ERROR, "[NetworkComponent] Failed to deserialize entity state. (syncable=%llu, entity=%llu (%{private}s))", buf, 0x20u);
      }

      goto LABEL_133;
    }

    v10 = v79;
    if (!((v79 != 0) | IsDestroyed & 1))
    {
      if (*(a1 + 48) != 1)
      {
LABEL_133:
        if (v79)
        {
          v9 = RESyncReadContextIsDestroyed();
          if (v9)
          {
            v9 = re::HashSetBase<re::SharedPtr<re::ecs2::Entity>,re::SharedPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::Entity>>,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::add(*(a1 + 40) + 40, &v79);
          }
        }

LABEL_136:
        if (v74)
        {
          if (v74)
          {
          }
        }

        goto LABEL_139;
      }

      v11 = (*(**(v4 + 40) + 288))(*(v4 + 40)) + 120;
      v12 = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(buf, v11, 0);
      v72 = *buf;
      v73 = *&buf[8];
      if (v11 != *buf || *&buf[8] != 0xFFFFFFFFLL)
      {
        while (1)
        {
          v14 = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::operator*(&v72);
          v15 = *(v14 + 200);
          if (v15)
          {
            v16 = *(v14 + 216);
            v17 = 8 * v15;
            while (1)
            {
              v18 = *v16;
              *buf = v76;
              v19 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v18 + 152, buf);
              if (v19)
              {
                v20 = *(v19 + 8);
              }

              else
              {
                v20 = *(*(v18 + 104) + 312) == *buf ? *(v18 + 104) : 0;
              }

              re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v79, v20);
              if (v79)
              {
                break;
              }

              ++v16;
              v17 -= 8;
              if (!v17)
              {
                goto LABEL_35;
              }
            }

            v21 = *(v79 + 27);
            if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
            {
              re::packCharArrayToUInt64ForAriadne(*(v79 + 37), 0);
              if (v21 && *(v21 + 32))
              {
                RESyncableGetGuid();
              }

              RESyncableGetGuid();
              kdebug_trace();
            }

            if (!v21 || RESyncableHasOwnership())
            {
              HasOwnership = RESyncableHasOwnership();
              if ((HasOwnership & 1) == 0)
              {
                break;
              }
            }
          }

LABEL_35:
          v12 = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(&v72);
          if (v72 == v11 && v73 == 0xFFFF && HIWORD(v73) == 0xFFFF)
          {
            goto LABEL_43;
          }
        }

        v39 = *re::ecsNetworkLogObjects(HasOwnership);
        v9 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
        if (v9)
        {
          v40 = *(v79 + 39);
          v41 = *(v79 + 37);
          if (v21 && *(v21 + 32))
          {
            v42 = RESyncableGetGuid();
          }

          else
          {
            v42 = 0;
          }

          v70 = RESyncableGetGuid();
          *buf = 134218755;
          *&buf[4] = v40;
          v81 = 2081;
          v82 = v41;
          v83 = 2048;
          v84 = v42;
          v85 = 2048;
          v86 = v70;
          _os_log_error_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_ERROR, "[NetworkComponent] Trying to rebind entity (id=%llu name=%{private}s) from owned syncable (%llu) to an unowned syncable (%llu)", buf, 0x2Au);
        }

        goto LABEL_136;
      }

LABEL_43:
      v25 = v79;
      if (v79)
      {
        goto LABEL_146;
      }

      v26 = *(v4 + 272);
      v27 = *(v26 + 2280);
      if (v27)
      {
        v28 = 0;
        v29 = *(v26 + 2264);
        while (1)
        {
          v30 = *v29;
          v29 += 8;
          if (v30 < 0)
          {
            break;
          }

          if (v27 == ++v28)
          {
            LODWORD(v28) = *(v26 + 2280);
            break;
          }
        }
      }

      else
      {
        LODWORD(v28) = 0;
      }

      if (v28 != v27)
      {
        v36 = *(v26 + 2264);
        while (1)
        {
          v37 = *(v36 + 32 * v28 + 8);
          if (*(v37 + 312) == v76)
          {
            break;
          }

          if (v27 <= v28 + 1)
          {
            v38 = v28 + 1;
          }

          else
          {
            v38 = v27;
          }

          while (v38 - 1 != v28)
          {
            LODWORD(v28) = v28 + 1;
            if ((*(v36 + 32 * v28) & 0x80000000) != 0)
            {
              goto LABEL_64;
            }
          }

          LODWORD(v28) = v38;
LABEL_64:
          if (v28 == v27)
          {
            goto LABEL_90;
          }
        }

        re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v79, v37);
        v43 = *(v79 + 27);
        v12 = re::internal::enableSignposts(0, 0);
        if (v12)
        {
          v12 = re::internal::enableHighFrequencyNetworkTracing(0, 0);
          if (v12)
          {
            re::packCharArrayToUInt64ForAriadne(*(v79 + 37), 0);
            if (v43 && *(v43 + 32))
            {
              RESyncableGetGuid();
            }

            RESyncableGetGuid();
            v12 = kdebug_trace();
          }
        }

        if (v43)
        {
          if (*(v43 + 208))
          {
            v44 = (v43 + 216);
          }

          else
          {
            v44 = *(v43 + 224);
          }

          v45 = *(v43 + 200);
          if (v45)
          {
            v46 = 8 * v45;
            do
            {
              if (*v44)
              {
                RESyncableSetUserData();
              }

              ++v44;
              v46 -= 8;
            }

            while (v46);
          }

          v12 = *(v43 + 32);
          if (v12)
          {
            RESyncableSetUserData();
            v12 = *(v43 + 32);
            if (v12)
            {
              v12 = RESyncRelease();
              *(v43 + 32) = 0;
            }
          }
        }
      }

LABEL_90:
      v25 = v79;
      if (v79)
      {
LABEL_146:
        while (1)
        {
          v50 = *(v25 + 9);
          if (!v50)
          {
            break;
          }

          re::ecs2::EntityComponentCollection::removeAt((v25 + 48), v50 - 1);
          v25 = v79;
        }

        re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(*(a1 + 40) + 40, v25);
      }

      else
      {
        v47 = re::ecs2::EntityFactory::instance(v12);
        re::ecs2::EntityFactory::make(buf, v47, 4uLL);
        v49 = v79;
        v48 = *buf;
        v79 = *buf;
        if (v49)
        {

          v48 = v79;
        }

        *(v48 + 39) = v76;
        re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::add(*(a1 + 40), &v79);
      }

      (*(*re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 32))(buf);
      v51 = *buf;
      *(*buf + 56) = *(v4 + 272);
      *(v51 + 432) = 2;
      if (Syncable)
      {
        RESyncRetain();
      }

      if (*(v51 + 32) != Syncable)
      {
        RESyncableRefRetainer::reset((v51 + 32), Syncable);
      }

      if (Syncable)
      {
        RESyncRelease();
      }

      re::ecs2::NetworkComponent::bindEntityTo(Syncable, v79);
      v52 = v79;
      v71 = v51;
      v53 = (v51 + 8);
      re::ecs2::EntityComponentCollection::add(v52 + 48, &v71, 1);
      if (v71)
      {

        v71 = 0;
      }

      re::ecs2::NetworkComponent::clearDirty(v51, 2);

      v10 = v79;
    }

    if (v10)
    {
      if (*(v10 + 39) != v76)
      {
        v54 = *re::ecsNetworkLogObjects(v9);
        v55 = os_log_type_enabled(v54, OS_LOG_TYPE_ERROR);
        v10 = v79;
        if (v55)
        {
          v66 = *(v79 + 37);
          v67 = *(v79 + 39);
          v68 = v76;
          v69 = RESyncableGetGuid();
          *buf = 136381443;
          *&buf[4] = v66;
          v81 = 2048;
          v82 = v67;
          v83 = 2048;
          v84 = v68;
          v85 = 2048;
          v86 = v69;
          _os_log_error_impl(&dword_1E1C61000, v54, OS_LOG_TYPE_ERROR, "Trying to reassign id on pre-existing entity %{private}s entity.id:%llu, entityState.entityId:%llu, syncable.guidid:%llu", buf, 0x2Au);
          v10 = v79;
        }
      }

      v56 = *(v10 + 27);
      v57 = *(v10 + 4);
      if (v57 && (v58 = *(v57 + 216)) != 0)
      {
        v59 = *(v58 + 32);
        if (v59)
        {
          v59 = RESyncableGetGuid();
        }
      }

      else
      {
        v59 = 0;
      }

      if (v59 != v77 && (!v56 || v77 || (v56[473] & 1) == 0))
      {
        v60 = *(a1 + 40);
        *buf = Syncable;
        if (Syncable)
        {
          RESyncRetain();
        }

        re::HashTable<RESyncableRefRetainer,unsigned long long,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::addOrReplace(v60 + 168, buf, &v77);
        if (*buf)
        {
          RESyncRelease();
        }
      }

      v61 = v79;
      if (v78[0] != ((*(v79 + 304) >> 3) & 1))
      {
        re::ecs2::Entity::setSelfEnabled(v79, v78[0]);
        v61 = v79;
      }

      if ((*(v61 + 36) ^ v74) > 1 || (v9 = __s1, v62 = *(v61 + 37), __s1 != v62) && (v9 = strcmp(__s1, v62), v9))
      {
        v9 = re::StringID::operator=(v61 + 36, &v74);
      }

      if (v56)
      {
        if (v78[1] != v56[432])
        {
          v56[432] = v78[1];
          v63 = *(a1 + 40);
          v64 = v56 + 8;
          *buf = v56;
          v9 = re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add((v63 + 128), buf);
          if (*buf)
          {
          }
        }
      }
    }

    goto LABEL_133;
  }

  v8 = *re::ecsNetworkLogObjects(IsNew);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v35 = RESyncableGetGuid();
    *buf = 134217984;
    *&buf[4] = v35;
    _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "[NetworkComponent] Trying to process with outdated syncable that has already been unbound, guid=%llu", buf, 0xCu);
  }

  if (re::internal::enableSignposts(0, 0))
  {
    RESyncableGetGuid();
    kdebug_trace();
  }

LABEL_139:
  if (v79)
  {
  }

  return 1;
}

void re::ecs2::NetworkComponent::clearDirty(re::ecs2::NetworkComponent *this, uint64_t a2)
{
  if (a2)
  {
    *(this + 59) = 0;
    *(this + 58) &= 0x9FFFu;
    re::ecs2::LocalComponentInfo::clearRemoved((this + 112), a2);
  }

  *(this + 48) = 0;
  *(this + 50) = 0;
  v3 = *(this + 74);
  if (v3)
  {
    v4 = this + 304;
  }

  else
  {
    v4 = *(this + 39);
  }

  v5 = *(this + 36);
  while (1)
  {
    v6 = this + 304;
    if ((v3 & 1) == 0)
    {
      v6 = *(this + 39);
    }

    if (v4 == &v6[8 * v5])
    {
      break;
    }

    *v4 = 0;
    v4 += 8;
    v3 = *(this + 74);
  }

  re::HashSetBase<RESyncableRefRetainer,RESyncableRefRetainer,re::internal::ValueAsKey<RESyncableRefRetainer>,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::clear(this + 384);
}

uint64_t re::HashTable<RESyncableRefRetainer,unsigned long long,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::addOrReplace(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(&v10, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  v8 = HIDWORD(v11);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    result = re::HashTable<RESyncableRefRetainer,unsigned long long,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::allocEntry(a1, v11, v10);
    v9 = *a3;
    *(result + 8) = *a2;
    *a2 = 0;
    *(result + 16) = v9;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    *(*(a1 + 16) + 32 * v8 + 16) = *a3;
  }

  return result;
}

uint64_t re::HashSetBase<re::SharedPtr<re::ecs2::Entity>,re::SharedPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::Entity>>,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::add(uint64_t result, unint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = *(result + 24);
  if (v7)
  {
    v8 = v6 % v7;
    v9 = *(*(result + 8) + 4 * (v6 % v7));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(result + 16);
      if (*(v10 + 24 * v9 + 16) == v4)
      {
        return result;
      }

      while (1)
      {
        LODWORD(v9) = *(v10 + 24 * v9 + 8) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v10 + 24 * v9 + 16) == v4)
        {
          return result;
        }
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  result = re::HashSetBase<re::SharedPtr<re::ecs2::Entity>,re::SharedPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::Entity>>,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::addAsCopy(result, v8, v6, a2, a2);
  ++*(v3 + 40);
  return result;
}

uint64_t re::ecs2::NetworkSendSystem::willAddSystemToECSService(re::ecs2::NetworkSendSystem *this)
{
  v2 = this;
  v71 = *MEMORY[0x1E69E9840];
  v3 = *(this + 5);
  if (v3)
  {
    v4 = (*(*v3 + 32))(v3);
    v5 = re::ServiceLocator::serviceOrNull<re::NetworkSystem>(v4);
    v3 = *(v2 + 5);
  }

  else
  {
    v5 = 0;
  }

  *(v2 + 33) = v5;
  v6 = (*(*v3 + 32))(v3);
  *(v2 + 35) = re::ServiceLocator::serviceOrNull<re::AssetService>(v6);
  v7 = (*(**(v2 + 5) + 32))(*(v2 + 5));
  Request = re::ServiceLocator::serviceOrNull<re::NetworkSendBlockingAssetLoadRequestService>(v7);
  *(v2 + 34) = Request;
  if (Request)
  {
    Request = (**Request)(Request);
  }

  if (*(v2 + 33))
  {
    v9 = re::globalAllocators(Request);
    v10 = (*(*v9[2] + 32))(v9[2], 144, 8);
    re::NetworkSystem::peerIDStringForAssetSerialization(*(v2 + 33), v70);
    v11 = *(v2 + 35);
    re::DefaultAssetSerialize::DefaultAssetSerialize(v10, 0);
    *v10 = &unk_1F5CB9868;
    *(v10 + 96) = 0;
    re::DynamicString::DynamicString((v10 + 104), v70);
    *(v10 + 136) = v11;
    *(v2 + 40) = v10;
    if (*&v70[0] && (BYTE8(v70[0]) & 1) != 0)
    {
      (*(**&v70[0] + 40))();
    }

    v12 = *(*(v2 + 33) + 2560);
    *(v2 + 36) = v12;
    if (v12)
    {
      *(v2 + 37) = RESyncServiceObserverCreate();
      v59 = MEMORY[0x1E69E9820];
      v60 = 0x40000000;
      v61 = ___ZN2re4ecs217NetworkSendSystem25willAddSystemToECSServiceEv_block_invoke;
      v62 = &__block_descriptor_tmp_51_0;
      v63 = v2;
      RESyncServiceObserverOnSessionDidAdd();
      RESyncServiceAddObserver();
      if (RESyncServiceGetSessionCount())
      {
        v13 = 0;
        do
        {
          RESyncServiceGetSession();
          if ((RESyncSessionHasViewFilterCB() & 1) == 0)
          {
            RESyncSessionSetViewFilterCB();
          }

          ++v13;
        }

        while (RESyncServiceGetSessionCount() > v13);
      }
    }
  }

  v14 = *(v2 + 5);
  v15 = (*(*v14 + 280))(v14);
  v16 = (*(*v14 + 312))(v14, v15);
  v17 = *(v16 + 144);
  if (v17)
  {
    v18 = v16;
    v1 = 0;
    while (2)
    {
      v20 = v18[18];
      if (v20 <= v1)
      {
        v64 = 0;
        memset(v70, 0, sizeof(v70));
        v2 = MEMORY[0x1E69E9C10];
        *v65 = 136315906;
        *&v65[4] = "operator[]";
        *&v65[12] = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v46 = 3;
        }

        else
        {
          v46 = 2;
        }

        *&v65[14] = 797;
        v66 = 2048;
        v67 = v1;
        v68 = 2048;
        v69 = v20;
        _os_log_send_and_compose_impl(v46, &v64, v70, 80, &dword_1E1C61000, v2, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v65, 38, v57, v58);
        _os_crash_msg();
        __break(1u);
        goto LABEL_64;
      }

      v21 = *(v18[20] + 8 * v1);
      v22 = (*(*v21 + 32))(v21);
      do
      {
        {
          v26 = v22;
          v22 = v26;
          if (v27)
          {
            re::introspect<re::ecs2::NetworkReceiveSystem>(BOOL)::info = re::internal::getOrCreateInfo("NetworkReceiveSystem", re::ecs2::allocInfo_NetworkReceiveSystem, re::ecs2::initInfo_NetworkReceiveSystem, &re::internal::introspectionInfoStorage<re::ecs2::NetworkReceiveSystem>, 0);
            v22 = v26;
          }
        }

        if (v22 == re::introspect<re::ecs2::NetworkReceiveSystem>(BOOL)::info)
        {
          v28 = 0;
          goto LABEL_35;
        }

        v23 = *(v22 + 56);
        if (!v23)
        {
          break;
        }

        v24 = *(v22 + 64);
        while (1)
        {
          v25 = *v24;
          if (**v24 == 1 && v25[10] == 3)
          {
            break;
          }

          ++v24;
          if (!--v23)
          {
            goto LABEL_32;
          }
        }

        v22 = *(v25 + 2);
      }

      while (v22);
LABEL_32:
      if (++v1 != v17)
      {
        continue;
      }

      break;
    }
  }

  v28 = 1;
LABEL_35:
  v29 = *(v2 + 5);
  v30 = (*(*v29 + 280))(v29);
  v31 = (*(*v29 + 304))(v29, v30);
  v32 = v2 + 8;
  v33 = *(v31 + 160);
  v34 = *(v31 + 144);
  if (v34)
  {
    v35 = 8 * v34;
    v36 = v33;
    while (*v36 != v2)
    {
      ++v36;
      v35 -= 8;
      if (!v35)
      {
        goto LABEL_43;
      }
    }
  }

  else
  {
    v36 = v33;
  }

  if (v36 != &v33[v34])
  {
    v34 = v36 - v33;
  }

LABEL_43:

  if (v1 > v34)
  {
    v37 = 1;
  }

  else
  {
    v37 = v28;
  }

  if (v37 == 1)
  {
    *(v2 + 49) = 0;
  }

  v18 = (*(**(v2 + 5) + 32))(*(v2 + 5));
  v19 = &unk_1EE187000;
  {
    goto LABEL_67;
  }

  while (1)
  {
    v38 = v19[193];
    re::StringID::invalid(v70);
    v39 = (*(*v18 + 16))(v18, v38, v70);
    v40 = v39;
    if (v70[0])
    {
      if (v70[0])
      {
      }
    }

    *(v2 + 38) = v40;
    *(v2 + 39) = RESyncCreateSyncObjectContext();
    RESyncAddSyncObjectContextEntry();
    v41 = (*(**(v2 + 5) + 32))(*(v2 + 5));
    {
      re::introspect<re::NetworkCompatSerializer>(BOOL)::info = re::introspect_NetworkCompatSerializer(0, v52, v53, v54, v55, v56);
    }

    v19 = re::introspect<re::NetworkCompatSerializer>(BOOL)::info;
    re::StringID::invalid(v70);
    v42 = (*(*v41 + 16))(v41, v19, v70);
    v18 = v42;
    if (v70[0])
    {
      if (v70[0])
      {
      }
    }

    *(v2 + 41) = v18;
    v43 = (*(**(v2 + 5) + 32))(*(v2 + 5));
    *(v2 + 42) = re::ServiceLocator::serviceOrNull<re::FrameManager>(v43);
    *(v2 + 43) = RESyncCreateSyncObjectWriteContext();
    RESyncAddSyncObjectWriteContextEntry();
    result = RESyncAddSyncObjectWriteContextEntry();
    if (!*(v2 + 38))
    {
LABEL_64:
      re::internal::assertLog(4, v45, "assertion failure: '%s' (%s:line %i) [NetworkComponent] Serializer not found. Please register the NetworkOPACKSerializer in the service locator.", "m_opackSerializer", "willAddSystemToECSService", 1566, v59, v60, v61, v62, v63, v64, *v65);
      _os_crash("assertion failure: (m_opackSerializer) [NetworkComponent] Serializer not found. Please register the NetworkOPACKSerializer in the service locator.");
      __break(1u);
LABEL_65:
      re::internal::assertLog(4, v45, "assertion failure: '%s' (%s:line %i) [NetworkComponent] Deserializer not found. Please register the NetworkCompatSerializer in the service locator.", "m_compatSerializer", "willAddSystemToECSService", 1567);
      _os_crash("assertion failure: (m_compatSerializer) [NetworkComponent] Deserializer not found. Please register the NetworkCompatSerializer in the service locator.");
      __break(1u);
      goto LABEL_66;
    }

    if (!*(v2 + 41))
    {
      goto LABEL_65;
    }

    if (*(v2 + 42))
    {
      return result;
    }

LABEL_66:
    re::internal::assertLog(4, v45, "assertion failure: '%s' (%s:line %i) [NetworkComponent] FrameManager not found. Please register the FrameManager in the service locator.", "m_frameManager", "willAddSystemToECSService", 1568);
    _os_crash("assertion failure: (m_frameManager) [NetworkComponent] FrameManager not found. Please register the FrameManager in the service locator.");
    __break(1u);
LABEL_67:
    {
      v19[193] = re::introspect_NetworkOPACKSerializer(0, v47, v48, v49, v50, v51);
    }
  }
}

void ___ZN2re4ecs217NetworkSendSystem25willAddSystemToECSServiceEv_block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (RESyncServiceGetSyncSession())
  {
    if ((RESyncSessionHasViewFilterCB() & 1) == 0)
    {

      RESyncSessionSetViewFilterCB();
    }
  }

  else
  {
    v2 = *re::ecsNetworkLogObjects(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 134217984;
      v4 = RESyncNetSessionPeerID();
      _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "[NetworkComponent] couldn't find sync session for net session %llx", &v3, 0xCu);
    }
  }
}

uint64_t anonymous namespace::viewFilterAccessList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ++re::NetworkSystem::viewFilterListCount;
  if (RESyncSessionIsPrivileged())
  {
    return 1;
  }

  result = RESyncViewGetUserData();
  if (result)
  {
    v5 = result;
    if (RESyncSessionIsLocal())
    {
      if (*(v5 + 88) <= 1u)
      {
        RESyncSessionGetNetSession();
        if (RESyncNetSessionGetParticipantWithPeerID())
        {
          if (RESyncParticipantHasForceAuthorityCapability())
          {
            return 1;
          }
        }
      }
    }

    IsLocal = RESyncSessionIsLocal();
    v7 = *(v5 + 88);
    if (v7 != 2)
    {
      if (*(v5 + 88))
      {
        if (v7 == 3)
        {
          v8 = IsLocal;
        }

        else
        {
          v8 = 0;
        }

        if ((v8 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else if (IsLocal)
      {
LABEL_11:

        return re::ecs2::SyncAccessControl::isAllowed((v5 + 56), a2);
      }
    }

    return 0;
  }

  return result;
}

uint64_t re::ecs2::NetworkSendSystem::willRemoveSystemFromECSService(re::ecs2::NetworkSendSystem *this)
{
  if (*(this + 33))
  {
    RESyncServiceRemoveObserver();
    RESyncRelease();
    *(this + 35) = 0;
    *(this + 36) = 0;
    *(this + 37) = 0;
    re::internal::destroyPersistent<re::NetworkAssetSerialization>(*(this + 40));
  }

  *(this + 33) = 0;
  RESyncDestroySyncObjectWriteContext();
  *(this + 43) = 0;
  result = RESyncDestroySyncObjectContext();
  *(this + 41) = 0;
  *(this + 38) = 0;
  *(this + 39) = 0;
  return result;
}

void re::ecs2::NetworkSendSystem::update(void *a1)
{
  v1 = a1;
  v243 = *MEMORY[0x1E69E9840];
  v2 = a1[34];
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = v1[33];
  if (v3)
  {
    re::NetworkSystem::resolveDeferedViews(v3);
    if (!v1[36])
    {
      goto LABEL_390;
    }

    if (RESyncServiceGetSessionCount())
    {
      isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v5);
      if (isStatisticCollectionEnabled)
      {
        isStatisticCollectionEnabled = re::profilerThreadContext(isStatisticCollectionEnabled);
        v7 = isStatisticCollectionEnabled;
        if (*(isStatisticCollectionEnabled + 19))
        {
          isStatisticCollectionEnabled = mach_absolute_time();
          v216 = isStatisticCollectionEnabled;
        }
      }

      else
      {
        v7 = 0;
      }

      v9 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
      if (v9)
      {
        v10 = re::profilerThreadContext(v9);
        v11 = *(v10 + 152);
        if (v11)
        {
          v12 = v11[392].i64[0];
          if (v12 >= v5)
          {
            v12 = v5;
          }

          v11[392].i64[0] = v12;
          v13 = v11[392].i64[1];
          if (v13 <= v5)
          {
            v13 = v5;
          }

          v11[392].i64[1] = v13;
          v14 = vdupq_n_s64(1uLL);
          v14.i64[0] = v5;
          v11[393] = vaddq_s64(v11[393], v14);
          *(v10 + 184) = 0;
        }
      }

      v217 = v7;
      re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v235, 3055, v1, v5, 0, 0);
      v233 = v1;
      SessionCount = RESyncServiceGetSessionCount();
      if (SessionCount)
      {
        v15 = 0;
        v16 = 0;
        v222 = 0;
        while (1)
        {
          RESyncServiceGetSession();
          if (!RESyncSessionIsLocal() || !*(v1[33] + 3068))
          {
            break;
          }

          v229 = v16;
          if (re::internal::enableSignposts(0, 0))
          {
            kdebug_trace();
          }

          v220 = v15;
          *buf = re::ecs2::NetworkSendSystem::updateLocalSession(RESyncSession *)const::$_0::__invoke;
          memset(&buf[8], 0, 24);
          v17 = v1[38];
          *(v17 + 472) = buf;
          *(v17 + 448) = v1[40];
          v18 = v1[33];
          v19 = *(v18 + 3072);
          if (v19)
          {
            v20 = 0;
            v21 = *(v18 + 3056);
            do
            {
              if ((*v21 & 0x80000000) != 0)
              {
                goto LABEL_110;
              }

              v21 += 82;
              ++v20;
            }

            while (v19 != v20);
            LODWORD(v20) = *(v18 + 3072);
          }

          else
          {
            LODWORD(v20) = 0;
          }

LABEL_110:
          if (v20 == v19)
          {
            v62 = 0;
            v232 = 0;
          }

          else
          {
            v62 = 0;
            v232 = 0;
            v63 = *(v18 + 3072);
            v224 = v1[33];
            do
            {
              v64 = *(v18 + 3056) + 328 * v20;
              if ((*(v64 + 25) & 1) == 0)
              {
                v65 = v64 + 16;
                if (*(v64 + 26))
                {
                  goto LABEL_122;
                }

                *(v64 + 56) = 0;
                v66 = v1[38];
                *(v66 + 464) = *v65;
                *(v64 + 120) = v66 + 448;
                v67 = *(v64 + 160);
                if (v67)
                {
                  v68 = 0;
                  v69 = (*(v64 + 144) + 8);
                  do
                  {
                    v70 = *v69;
                    v69 += 6;
                    if (v70 < 0)
                    {
                      goto LABEL_121;
                    }

                    ++v68;
                  }

                  while (v67 != v68);
                  LODWORD(v68) = *(v65 + 144);
                }

                else
                {
                  LODWORD(v68) = 0;
                }

LABEL_121:
                if (v68 == v67)
                {
LABEL_122:
                  v18 = v224;
                }

                else
                {
                  v71 = *(v65 + 128);
                  do
                  {
                    v72 = *(v71 + 24 * v68 + 16);
                    if (v72)
                    {
                      v73 = v72 + 1;
                    }

                    if (!v72[4] || RESyncableIsAuthoritative())
                    {
                      v74 = v72[2];
                      if (v74)
                      {
                        do
                        {
                          v75 = v74;
                          v74 = *(v74 + 32);
                        }

                        while (v74);
                        if (*(v75 + 24))
                        {
                          ++v62;
                          v232 += re::ecs2::NetworkSendSystem::writeEntity(v1, (v65 + 24), v72, (v72 + 14), 1);
                        }
                      }
                    }

                    v76 = *(v65 + 144);
                    v71 = *(v65 + 128);
                    if (v76 <= v68 + 1)
                    {
                      v76 = v68 + 1;
                    }

                    while (v76 - 1 != v68)
                    {
                      LODWORD(v68) = v68 + 1;
                      if ((*(v71 + 24 * v68 + 8) & 0x80000000) != 0)
                      {
                        goto LABEL_138;
                      }
                    }

                    LODWORD(v68) = v76;
LABEL_138:
                    ;
                  }

                  while (v68 != v67);
                  v18 = v224;
                  v63 = *(v224 + 3072);
                }
              }

              if (v63 <= v20 + 1)
              {
                v77 = v20 + 1;
              }

              else
              {
                v77 = v63;
              }

              while (v77 - 1 != v20)
              {
                LODWORD(v20) = v20 + 1;
                if ((*(*(v18 + 3056) + 328 * v20) & 0x80000000) != 0)
                {
                  goto LABEL_147;
                }
              }

              LODWORD(v20) = v77;
LABEL_147:
              ;
            }

            while (v20 != v19);
            v18 = v1[33];
          }

          v78 = *(v18 + 2616);
          if (v78)
          {
            v79 = 0;
            v80 = (*(v18 + 2600) + 8);
            do
            {
              v81 = *v80;
              v80 += 6;
              if (v81 < 0)
              {
                goto LABEL_155;
              }

              ++v79;
            }

            while (v78 != v79);
            LODWORD(v79) = *(v18 + 2616);
          }

          else
          {
            LODWORD(v79) = 0;
          }

LABEL_155:
          if (v79 == v78)
          {
            v82 = v62;
            goto LABEL_219;
          }

          v83 = *(v18 + 2616);
          v225 = v18;
          v223 = v83;
          do
          {
            v84 = *(v18 + 2600) + 24 * v79;
            v87 = *(v84 + 16);
            v86 = (v84 + 16);
            v85 = v87;
            if (*(v87 + 88))
            {
              v88 = v85 + 12;
            }

            else
            {
              v88 = v85[13];
            }

            v89 = v85[10];
            if (!v89)
            {
              goto LABEL_210;
            }

            v90 = &v88[v89];
            do
            {
              v91 = *v88;
              v92 = *v86;
              if (*(*v86 + 4))
              {
                if (!RESyncableIsAuthoritative())
                {
                  goto LABEL_208;
                }

                v92 = *v86;
              }

              v93 = *(v92 + 2);
              if (v93)
              {
                do
                {
                  v94 = v93;
                  v93 = *(v93 + 32);
                }

                while (v93);
                if (*(v94 + 24))
                {
                  v95 = v1[33];
                  *__src = v91;
                  v96 = re::HashTable<unsigned long long,re::NetworkSystem::LocalPeer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v95 + 3040, __src);
                  if (v96)
                  {
                    v97 = v96;
                    if ((*(v96 + 10) & 1) == 0)
                    {
                      if ((*(v96 + 9) & 1) != 0 || *(v96 + 284))
                      {
                        v98 = *(*v86 + 2);
                        v237 = v98;
                        if (v98)
                        {
                          v99 = (v98 + 8);
                          v98 = v237;
                        }

                        v100 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v98 ^ (v98 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v98 ^ (v98 >> 30))) >> 27));
                        re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityRenderOptions,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(v97 + 256, &v237, v100 ^ (v100 >> 31), __src);
                        if (*&__src[12] == 0x7FFFFFFF)
                        {
                          v102 = 0;
                        }

                        else
                        {
                          v102 = (*(v97 + 272) + 56 * *&__src[12] + 16);
                        }

                        if (v237)
                        {
                        }

                        if (v102)
                        {
                          v226 = v62;
                          v107 = *v86;
                          v108 = (*v86 + 112);
                          v109 = re::ecs2::LocalComponentInfo::removed(v108, v101);
                          if (v110)
                          {
                            v111 = v109;
                            v112 = 2 * v110;
                            do
                            {
                              v113 = *v111++;
                              re::ecs2::LocalComponentInfo::remove(v102, v113);
                              v112 -= 2;
                            }

                            while (v112);
                          }

                          v114 = *(v107 + 58);
                          v115 = 2;
                          if ((v114 & 0x4000) == 0)
                          {
                            v115 = 6;
                          }

                          v116 = *(v108 + v115);
                          if (v116)
                          {
                            v117 = *(v107 + 15);
                            v118 = 2 * v116;
                            do
                            {
                              v119 = *v117++;
                              re::ecs2::LocalComponentInfo::add(v102, v119);
                              re::ecs2::LocalComponentInfo::markDirty(v102, v119);
                              v118 -= 2;
                            }

                            while (v118);
                            v114 = *(v107 + 58);
                          }

                          v120 = *(v102 + 2);
                          v121 = v114 & 0x2000 | v120;
                          *(v102 + 2) = v121;
                          *(v102 + 2) = (*(v107 + 58) | v120) & 0x4000 | v121 & 0xBFFF;
                          v1 = v233;
                          v62 = v226;
                        }

                        else
                        {
                          v122 = *v86;
                          v123 = *(*v86 + 2);
                          v237 = v123;
                          if (v123)
                          {
                            v124 = (v123 + 8);
                            v122 = *v86;
                            v123 = v237;
                          }

                          v1 = v233;
                          memset(__src, 0, 24);
                          v125 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v123 ^ (v123 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v123 ^ (v123 >> 30))) >> 27));
                          re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityRenderOptions,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(v97 + 256, &v237, v125 ^ (v125 >> 31), __src);
                          if (*&__src[12] == 0x7FFFFFFF)
                          {
                            v126 = re::HashTable<re::SharedPtr<re::ecs2::Entity>,re::ecs2::LocalComponentInfo,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::allocEntry(v97 + 256, *&__src[8], *__src);
                            *(v126 + 8) = v237;
                            v237 = 0;
                            *(v126 + 16) = 0;
                            *(v126 + 22) = 0;
                            *(v126 + 24) = v126 + 32;
                            v128 = *(v122 + 8);
                            *(v126 + 16) = *(v122 + 7);
                            *(v126 + 32) = v128;
                            if (*(v126 + 18) > *(v126 + 16))
                            {
                              goto LABEL_389;
                            }

                            v129 = v126;
                            if (*(v122 + 15) == (v122 + 128))
                            {
                              *(v126 + 24) = v126 + 32;
                            }

                            else
                            {
                              v130 = re::globalAllocators(v126);
                              if (8 * *(v129 + 20))
                              {
                                v227 = v62;
                                v131 = (8 * *(v129 + 20));
                                v218 = 2 * v131;
                                v132 = (*(*v130[2] + 32))(v130[2], 2 * v131 + 17, 0);
                                v133 = ((v132 + 17) & 0xFFFFFFFFFFFFFFFELL);
                                *(v133 - 2) = v131;
                                *(v133 - 1) = v132;
                                v62 = v227;
                                bzero(v133, v218);
                                v134 = 16 * (*(v129 + 20) & 0x1FFF);
                              }

                              else
                              {
                                v134 = 0;
                                v133 = 0;
                              }

                              *(v129 + 24) = v133;
                              memcpy(v133, *(v122 + 15), v134);
                            }

                            ++*(v97 + 296);
                            v1 = v233;
                          }

                          if (v237)
                          {
                          }
                        }
                      }

                      else if (!re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(v96 + 112, v86))
                      {
                        ++v62;
                        *(v1[38] + 464) = v91;
                        v232 += re::ecs2::NetworkSendSystem::writeEntity(v1, (v97 + 24), *v86, (*v86 + 112), 0);
                      }
                    }
                  }

                  else
                  {
                    v103 = *re::ecsNetworkLogObjects(0);
                    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
                    {
                      v104 = *(*v86 + 2);
                      v105 = *(v104 + 296);
                      v106 = *(v104 + 312);
                      *__src = 134218498;
                      *&__src[4] = v91;
                      *&__src[12] = 2080;
                      *&__src[14] = v105;
                      *&__src[22] = 2048;
                      *&__src[24] = v106;
                      _os_log_impl(&dword_1E1C61000, v103, OS_LOG_TYPE_DEFAULT, "[NetworkComponent] no peer found for peerID %llu on entity %s(%llu).", __src, 0x20u);
                    }
                  }
                }
              }

LABEL_208:
              ++v88;
            }

            while (v88 != v90);
            v18 = v225;
            v83 = *(v225 + 2616);
            LODWORD(v78) = v223;
LABEL_210:
            if (v83 <= v79 + 1)
            {
              v135 = v79 + 1;
            }

            else
            {
              v135 = v83;
            }

            while (v135 - 1 != v79)
            {
              LODWORD(v79) = v79 + 1;
              if ((*(*(v18 + 2600) + 24 * v79 + 8) & 0x80000000) != 0)
              {
                goto LABEL_217;
              }
            }

            LODWORD(v79) = v135;
LABEL_217:
            ;
          }

          while (v79 != v78);
          v82 = v62;
          v18 = v1[33];
LABEL_219:
          re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(v18 + 2584);
          v136 = v1[33];
          v137 = *(v136 + 3072);
          if (v137)
          {
            v138 = 0;
            v139 = *(v136 + 3056);
            while ((*v139 & 0x80000000) == 0)
            {
              v139 += 82;
              if (v137 == ++v138)
              {
                LODWORD(v138) = *(v136 + 3072);
                break;
              }
            }
          }

          else
          {
            LODWORD(v138) = 0;
          }

          if (v138 == v137)
          {
            v140 = 0;
          }

          else
          {
            v140 = 0;
            v228 = *(v136 + 3072);
            do
            {
              v141 = *(v136 + 3056) + 328 * v138;
              if ((*(v141 + 25) & 1) == 0)
              {
                v142 = v141 + 16;
                if ((*(v141 + 26) & 1) == 0)
                {
                  *(v1[38] + 464) = *v142;
                  v143 = *(v141 + 304);
                  if (v143)
                  {
                    v144 = 0;
                    v145 = *(v141 + 288);
                    while (1)
                    {
                      v146 = *v145;
                      v145 += 14;
                      if (v146 < 0)
                      {
                        break;
                      }

                      if (v143 == ++v144)
                      {
                        LODWORD(v144) = *(v142 + 288);
                        break;
                      }
                    }
                  }

                  else
                  {
                    LODWORD(v144) = 0;
                  }

                  if (v144 == v143)
                  {
                    v147 = *(v142 + 288);
                  }

                  else
                  {
                    v148 = *(v142 + 272);
                    v147 = *(v142 + 288);
                    do
                    {
                      v149 = *(*(v148 + 56 * v144 + 8) + 216);
                      if (v149)
                      {
                        ++v82;
                        v232 += re::ecs2::NetworkSendSystem::writeEntity(v1, (v142 + 24), v149, (v148 + 56 * v144 + 16), 0);
                        v147 = *(v142 + 288);
                        v148 = *(v142 + 272);
                      }

                      if (v147 <= v144 + 1)
                      {
                        v150 = v144 + 1;
                      }

                      else
                      {
                        v150 = v147;
                      }

                      while (v150 - 1 != v144)
                      {
                        LODWORD(v144) = v144 + 1;
                        if ((*(v148 + 56 * v144) & 0x80000000) != 0)
                        {
                          goto LABEL_248;
                        }
                      }

                      LODWORD(v144) = v150;
LABEL_248:
                      ;
                    }

                    while (v144 != v143);
                  }

                  if (*(v142 + 284))
                  {
                    v151 = *(v142 + 280);
                    if (v151)
                    {
                      memset_pattern16(*(v142 + 264), &unk_1E304C660, 4 * v151);
                      v147 = *(v142 + 288);
                    }

                    if (v147)
                    {
                      v152 = 0;
                      v153 = 0;
                      do
                      {
                        re::HashTable<re::SharedPtr<re::ecs2::Entity>,re::ecs2::LocalComponentInfo,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::EntryBase::free(*(v142 + 272) + v152);
                        ++v153;
                        v152 += 56;
                      }

                      while (v153 < *(v142 + 288));
                    }

                    *(v142 + 292) = 0x7FFFFFFF;
                    *(v142 + 284) = 0;
                    ++*(v142 + 296);
                  }

                  v154 = *(v142 + 144);
                  if (v154)
                  {
                    v155 = 0;
                    v156 = (*(v142 + 128) + 8);
                    while (1)
                    {
                      v157 = *v156;
                      v156 += 6;
                      if (v157 < 0)
                      {
                        break;
                      }

                      if (v154 == ++v155)
                      {
                        LODWORD(v155) = *(v142 + 144);
                        break;
                      }
                    }
                  }

                  else
                  {
                    LODWORD(v155) = 0;
                  }

                  if (v155 != v154)
                  {
                    v158 = *(v142 + 128);
                    v159 = *(v142 + 144);
                    do
                    {
                      v160 = *(*(v158 + 24 * v155 + 16) + 16);
                      if (v160)
                      {
                        v237 = *(v160 + 312);
                        memset(__src, 0, 24);
                        v161 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v237 ^ (v237 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v237 ^ (v237 >> 30))) >> 27));
                        re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v142 + 160, &v237, v161 ^ (v161 >> 31), __src);
                        if (*&__src[12] == 0x7FFFFFFF)
                        {
                          v162 = re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v142 + 160, *&__src[8], *__src);
                          *(v162 + 8) = v237;
                          *(v162 + 16) = 0;
                          ++*(v142 + 200);
                        }

                        v159 = *(v142 + 144);
                        v158 = *(v142 + 128);
                      }

                      if (v159 <= v155 + 1)
                      {
                        v163 = v155 + 1;
                      }

                      else
                      {
                        v163 = v159;
                      }

                      while (v163 - 1 != v155)
                      {
                        LODWORD(v155) = v155 + 1;
                        if ((*(v158 + 24 * v155 + 8) & 0x80000000) != 0)
                        {
                          goto LABEL_275;
                        }
                      }

                      LODWORD(v155) = v163;
LABEL_275:
                      ;
                    }

                    while (v155 != v154);
                  }

                  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(v142 + 112);
                  if (*(v142 + 40) | *(v142 + 236))
                  {
                    *__src = 0;
                    re::snapshot::BufferEncoder::writeRaw<true>((v142 + 24), __src, 8uLL);
                    v164 = *(v142 + 240);
                    if (v164)
                    {
                      v165 = 0;
                      v166 = *(v142 + 224);
                      while (1)
                      {
                        v167 = *v166;
                        v166 += 8;
                        if (v167 < 0)
                        {
                          break;
                        }

                        if (v164 == ++v165)
                        {
                          LODWORD(v165) = *(v142 + 240);
                          break;
                        }
                      }
                    }

                    else
                    {
                      LODWORD(v165) = 0;
                    }

                    if (v165 != v164)
                    {
                      v168 = *(v142 + 224);
                      v169 = *(v142 + 240);
                      do
                      {
                        v170 = v168 + 32 * v165;
                        if (*(v170 + 16) != *v142)
                        {
                          *__src = *(v170 + 8);
                          re::snapshot::BufferEncoder::writeRaw<true>((v142 + 24), __src, 8uLL);
                          *__src = 0;
                          re::snapshot::BufferEncoder::writeRaw<true>((v142 + 24), __src, 4uLL);
                          re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v142 + 160, (v170 + 8));
                          v169 = *(v142 + 240);
                          v168 = *(v142 + 224);
                        }

                        if (v169 <= v165 + 1)
                        {
                          v171 = v165 + 1;
                        }

                        else
                        {
                          v171 = v169;
                        }

                        while (v171 - 1 != v165)
                        {
                          LODWORD(v165) = v165 + 1;
                          if ((*(v168 + 32 * v165) & 0x80000000) != 0)
                          {
                            goto LABEL_295;
                          }
                        }

                        LODWORD(v165) = v171;
LABEL_295:
                        ;
                      }

                      while (v165 != v164);
                    }

                    re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(v142 + 208);
                    *__src = 0;
                    re::snapshot::BufferEncoder::writeRaw<true>((v142 + 24), __src, 8uLL);
                    *(v142 + 104) = 0;
                    RESyncSessionSendRaw();
                    v140 = 1;
                  }

                  LODWORD(v137) = v228;
                }
              }

              v172 = *(v136 + 3072);
              if (v172 <= v138 + 1)
              {
                v172 = v138 + 1;
              }

              while (v172 - 1 != v138)
              {
                LODWORD(v138) = v138 + 1;
                if ((*(*(v136 + 3056) + 328 * v138) & 0x80000000) != 0)
                {
                  goto LABEL_304;
                }
              }

              LODWORD(v138) = v172;
LABEL_304:
              ;
            }

            while (v138 != v137);
          }

          if (re::internal::enableSignposts(0, 0))
          {
            kdebug_trace();
          }

          v173 = v1[38];
          v173[56] = 0;
          v173[58] = 0;
          v173[59] = 0;
          v222 |= v140;
          v16 = v229;
          v15 = v220;
LABEL_332:
          if (++v15 == SessionCount)
          {
            v189 = v16;
            v190 = (v222 & 1) == 0;
            goto LABEL_335;
          }
        }

        if (!v16)
        {
          v1[30] = 0;
          ++*(v1 + 62);
          v22 = v1[33];
          v234[0] = MEMORY[0x1E69E9820];
          v234[1] = 0x40000000;
          v234[2] = ___ZNK2re4ecs217NetworkSendSystem6updateENS0_6System13UpdateContextE_block_invoke_2;
          v234[3] = &__block_descriptor_tmp_65_0;
          v234[4] = v1;
          *__src = v234;
          re::NetworkSystem::enumerateRemoteDirtyComponents<void({block_pointer})(re::SharedPtr<re::ecs2::NetworkComponent>)>(v22, __src);
          v23 = RESyncCommitListCreate();
          if (re::internal::enableSignposts(0, 0))
          {
            kdebug_trace();
          }

          v221 = v15;
          v230 = v23;
          v25 = v1[38];
          *(v25 + 448) = v1[40];
          v26 = v1[30];
          if (v26)
          {
            v27 = 0;
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v31 = v1[32];
            v231 = &v31[v26];
            while (1)
            {
              v32 = *v31;
              if (*(*v31 + 48) == 1)
              {
                if (!v30)
                {
                  v30 = RESyncCommitListAddNewCommit();
                }

                if (!v233[36])
                {
                  goto LABEL_388;
                }

                RESyncServiceGetTypeInfo();
                *__src = 0;
                *&__src[8] = &str_67;
                *&__src[16] = 0;
                *&__src[24] = 0;
                LOWORD(v240) = 512;
                v33 = *(v32 + 16);
                re::StringID::operator=(__src, (v33 + 288));
                *&__src[16] = *(v33 + 312);
                LOBYTE(v240) = (*(v33 + 304) & 8) != 0;
                if ((*(v32 + 473) & 1) == 0 && (v34 = *(v33 + 32)) != 0 && (v35 = *(v34 + 216)) != 0)
                {
                  Guid = *(v35 + 32);
                  if (Guid)
                  {
                    Guid = RESyncableGetGuid();
                  }
                }

                else
                {
                  Guid = 0;
                }

                *&__src[24] = Guid;
                BYTE1(v240) = *(v32 + 432);
                v37 = re::ecs2::IntrospectedNetworkTypeHelper::serialize(v233[39], __src, *(v32 + 32), v30, 0);
                if (v37)
                {
                  is_enabled = kdebug_is_enabled();
                  if (is_enabled)
                  {
                    re::packCharArrayToUInt64ForAriadne(*(*(v32 + 16) + 296), 0);
                    is_enabled = kdebug_trace();
                  }
                }

                else
                {
                  v39 = *re::ecsNetworkLogObjects(v37);
                  is_enabled = os_log_type_enabled(v39, OS_LOG_TYPE_FAULT);
                  if (is_enabled)
                  {
                    v60 = *(*(v32 + 16) + 296);
                    v61 = *(v32 + 32);
                    if (v61)
                    {
                      v61 = RESyncableGetGuid();
                    }

                    *buf = 136380931;
                    *&buf[4] = v60;
                    *&buf[12] = 2048;
                    *&buf[14] = v61;
                    _os_log_fault_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_FAULT, "Failed to write entity state. (name=%{private}s, guid=%llu)", buf, 0x16u);
                  }
                }

                if (__src[0])
                {
                  if (__src[0])
                  {
                  }
                }

                ++v29;
                v27 = 1;
              }

              if (*(v32 + 50) != 1)
              {
                break;
              }

              if (*(v32 + 200))
              {
                if (!v30)
                {
                  v30 = RESyncCommitListAddNewCommit();
                }

                if (*(v32 + 208))
                {
                  v40 = (v32 + 216);
                }

                else
                {
                  v40 = *(v32 + 224);
                }

                v52 = *(v32 + 200);
                if (v52)
                {
                  v53 = 8 * v52;
                  do
                  {
                    v54 = *v40++;
                    re::ecs2::NetworkSendSystem::buildComponentSnapshot(v233, v54, v30);
                    v53 -= 8;
                  }

                  while (v53);
                  i = *(v32 + 200);
                }

                else
                {
                  i = 0;
                }

LABEL_86:
                v27 = 1;
                goto LABEL_87;
              }

              i = 0;
LABEL_87:
              v55 = *(v32 + 416);
              if (v55)
              {
                v56 = 0;
                v57 = (*(v32 + 400) + 8);
                do
                {
                  v58 = *v57;
                  v57 += 6;
                  if (v58 < 0)
                  {
                    goto LABEL_93;
                  }

                  ++v56;
                }

                while (v55 != v56);
                LODWORD(v56) = *(v32 + 416);
              }

              else
              {
                LODWORD(v56) = 0;
              }

LABEL_93:
              if (v56 != v55)
              {
                do
                {
                  if (!v30)
                  {
                    v30 = RESyncCommitListAddNewCommit();
                  }

                  RESyncCommitMarkDestroyed();
                  v59 = *(v32 + 416);
                  if (v59 <= v56 + 1)
                  {
                    v59 = v56 + 1;
                  }

                  while (v59 - 1 != v56)
                  {
                    LODWORD(v56) = v56 + 1;
                    if ((*(*(v32 + 400) + 24 * v56 + 8) & 0x80000000) != 0)
                    {
                      goto LABEL_102;
                    }
                  }

                  LODWORD(v56) = v59;
LABEL_102:
                  ;
                }

                while (v56 != v55);
                v27 = 1;
              }

              v28 += i;
              re::ecs2::NetworkComponent::clearDirty(v32, 2);
              if (++v31 == v231)
              {
                v1 = v233;
                v25 = v233[38];
                goto LABEL_309;
              }
            }

            v41 = *(v32 + 296);
            if (v41)
            {
              v42 = (v32 + 304);
            }

            else
            {
              v42 = *(v32 + 312);
            }

            for (i = 0; ; i += v46.u32[0])
            {
              v44 = v32 + 304;
              if ((v41 & 1) == 0)
              {
                v44 = *(v32 + 312);
              }

              if (v42 == (v44 + 8 * *(v32 + 288)))
              {
                break;
              }

              v45 = *v42++;
              v46 = vcnt_s8(v45);
              v46.i16[0] = vaddlv_u8(v46);
            }

            if (!i)
            {
              goto LABEL_87;
            }

            if (!v30)
            {
              v30 = RESyncCommitListAddNewCommit();
            }

            FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v32 + 280, 0);
            if (FirstBitSet != -1)
            {
              v48 = FirstBitSet;
              while (1)
              {
                v49 = *(v32 + 200);
                if (v49 <= v48)
                {
                  break;
                }

                v50 = v32 + 216;
                if ((*(v32 + 208) & 1) == 0)
                {
                  v50 = *(v32 + 224);
                }

                v51 = *(v50 + 8 * v48);
                if (v51)
                {
                  RESyncRetain();
                  re::ecs2::NetworkSendSystem::buildComponentSnapshot(v233, v51, v30);
                  RESyncRelease();
                }

                else
                {
                  re::ecs2::NetworkSendSystem::buildComponentSnapshot(v233, 0, v30);
                }

                v48 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v32 + 280, v48 + 1);
                if (v48 == -1)
                {
                  goto LABEL_86;
                }
              }

              v237 = 0;
              v241 = 0u;
              v242 = 0u;
              v240 = 0u;
              memset(__src, 0, sizeof(__src));
              v211 = MEMORY[0x1E69E9C10];
              v212 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *buf = 136315906;
              *&buf[4] = "operator[]";
              *&buf[12] = 1024;
              if (v212)
              {
                v213 = 3;
              }

              else
              {
                v213 = 2;
              }

              *&buf[14] = 858;
              *&buf[18] = 2048;
              *&buf[20] = v48;
              *&buf[28] = 2048;
              *&buf[30] = v49;
              _os_log_send_and_compose_impl(v213, &v237, __src, 80, &dword_1E1C61000, v211, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v214, v215);
              _os_crash_msg();
              __break(1u);
LABEL_388:
              re::internal::assertLog(4, v24, "assertion failure: '%s' (%s:line %i) ", "m_syncService", "buildEntitySnapshot", 1884);
              _os_crash("assertion failure: (m_syncService) ");
              __break(1u);
LABEL_389:
              re::internal::assertLog(4, v127, "assertion failure: '%s' (%s:line %i) ", "m_live <= m_count", "LocalComponentInfo", 3035);
              _os_crash("assertion failure: (m_live <= m_count) ");
              __break(1u);
LABEL_390:
              re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) ", "m_syncService", "update", 1605);
              _os_crash("assertion failure: (m_syncService) ");
              __break(1u);
            }

            goto LABEL_86;
          }

          v29 = 0;
          v28 = 0;
          v27 = 0;
LABEL_309:
          *(v25 + 448) = 0;
          v174 = re::internal::enableSignposts(0, 0);
          if (v174)
          {
            v174 = kdebug_trace();
          }

          v175 = re::ProfilerConfig::isStatisticCollectionEnabled(v174);
          if (v175)
          {
            v175 = re::profilerThreadContext(v175);
            v176 = *(v175 + 152);
            if (v176)
            {
              v177 = v176[376].u64[0];
              if (v177 >= v29)
              {
                v177 = v29;
              }

              v176[376].i64[0] = v177;
              v178 = v176[376].u64[1];
              if (v178 <= v29)
              {
                v178 = v29;
              }

              v176[376].i64[1] = v178;
              v179 = vdupq_n_s64(1uLL);
              v179.i64[0] = v29;
              v176[377] = vaddq_s64(v176[377], v179);
              *(v175 + 184) = 0;
            }
          }

          v180 = re::ProfilerConfig::isStatisticCollectionEnabled(v175);
          if (v180)
          {
            v181 = re::profilerThreadContext(v180);
            v182 = *(v181 + 152);
            if (v182)
            {
              v183 = v182[360].u64[0];
              if (v183 >= v28)
              {
                v183 = v28;
              }

              v182[360].i64[0] = v183;
              v184 = v182[360].u64[1];
              if (v184 <= v28)
              {
                v184 = v28;
              }

              v182[360].i64[1] = v184;
              v185 = vdupq_n_s64(1uLL);
              v185.i64[0] = v28;
              v182[361] = vaddq_s64(v182[361], v185);
              *(v181 + 184) = 0;
            }
          }

          v222 |= v27;
          EntryCount = RESyncCommitListGetEntryCount();
          if (EntryCount)
          {
            v187 = EntryCount;
            v188 = 0;
            v16 = v230;
            do
            {
              RESyncCommitListGetEntry();
              RESyncCommitListAddCopy();
              ++v188;
            }

            while (v187 != v188);
          }

          else
          {
            v16 = v230;
          }

          v15 = v221;
        }

        RESyncServiceGetSession();
        RESyncSessionSend();
        goto LABEL_332;
      }

      v189 = 0;
      v190 = 1;
LABEL_335:
      v191 = v1[33];
      v192 = *(v191 + 2664);
      if (v192)
      {
        v193 = 0;
        v194 = (*(v191 + 2648) + 8);
        while (1)
        {
          v195 = *v194;
          v194 += 6;
          if (v195 < 0)
          {
            break;
          }

          if (v192 == ++v193)
          {
            LODWORD(v193) = *(v191 + 2664);
            break;
          }
        }
      }

      else
      {
        LODWORD(v193) = 0;
      }

      if (v193 != v192)
      {
        do
        {
          v196 = *(*(v191 + 2648) + 24 * v193 + 16);
          if (v196)
          {
            v197 = (v196 + 8);
          }

          v198 = *(v196 + 416);
          if (v198)
          {
            v199 = 0;
            v200 = (*(v196 + 400) + 8);
            while (1)
            {
              v201 = *v200;
              v200 += 6;
              if (v201 < 0)
              {
                break;
              }

              if (v198 == ++v199)
              {
                LODWORD(v199) = *(v196 + 416);
                break;
              }
            }
          }

          else
          {
            LODWORD(v199) = 0;
          }

LABEL_359:
          while (v199 != v198)
          {
            if (*(*(v196 + 400) + 24 * v199 + 16))
            {
              RESyncRetain();
              RESyncServiceRemoveSyncable();
              RESyncRelease();
            }

            else
            {
              RESyncServiceRemoveSyncable();
            }

            v202 = *(v196 + 416);
            if (v202 <= v199 + 1)
            {
              v202 = v199 + 1;
            }

            while (v202 - 1 != v199)
            {
              LODWORD(v199) = v199 + 1;
              if ((*(*(v196 + 400) + 24 * v199 + 8) & 0x80000000) != 0)
              {
                goto LABEL_359;
              }
            }

            LODWORD(v199) = v202;
          }

          re::HashSetBase<RESyncableRefRetainer,RESyncableRefRetainer,re::internal::ValueAsKey<RESyncableRefRetainer>,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::clear(v196 + 384);
          if (v196)
          {
          }

          v203 = *(v191 + 2664);
          if (v203 <= v193 + 1)
          {
            v203 = v193 + 1;
          }

          v1 = v233;
          while (v203 - 1 != v193)
          {
            LODWORD(v193) = v193 + 1;
            if ((*(*(v191 + 2648) + 24 * v193 + 8) & 0x80000000) != 0)
            {
              goto LABEL_369;
            }
          }

          LODWORD(v193) = v203;
LABEL_369:
          ;
        }

        while (v193 != v192);
        v191 = v233[33];
      }

      re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(v191 + 2344);
      re::NetworkSystem::clearRemoteDirty(v1[33]);
      if (v189)
      {
        re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(v1[33] + 2632);
        RESyncRelease();
      }

      if (!v190)
      {
        re::Event<re::GeometricObjectBase>::raise((v1[33] + 1848), v1[33]);
      }

      re::Event<re::GeometricObjectBase>::raise((v1[33] + 1584), v1[33]);
      re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v235, v204, v205);
      if (v217)
      {
        if (*(v217 + 19))
        {
          v206 = mach_absolute_time();
          v207 = *(v217 + 19);
          if (v207)
          {
            v208 = v207[992].u64[0];
            if (v208 >= v206 - v216)
            {
              v208 = v206 - v216;
            }

            v207[992].i64[0] = v208;
            v209 = v207[992].u64[1];
            if (v209 <= v206 - v216)
            {
              v209 = v206 - v216;
            }

            v207[992].i64[1] = v209;
            v210 = vdupq_n_s64(1uLL);
            v210.i64[0] = v206 - v216;
            v207[993] = vaddq_s64(v207[993], v210);
            *(v217 + 184) = 0;
          }
        }
      }
    }

    else
    {
      v8 = v1[33];
      v236[0] = MEMORY[0x1E69E9820];
      v236[1] = 0x40000000;
      v236[2] = ___ZNK2re4ecs217NetworkSendSystem6updateENS0_6System13UpdateContextE_block_invoke;
      v236[3] = &__block_descriptor_tmp_64;
      v236[4] = v1;
      *__src = v236;
      re::NetworkSystem::enumerateRemoteDirtyComponents<void({block_pointer})(re::SharedPtr<re::ecs2::NetworkComponent>)>(v8, __src);
      re::NetworkSystem::clearRemoteDirty(v1[33]);
    }
  }
}

void re::NetworkSystem::enumerateRemoteDirtyComponents<void({block_pointer})(re::SharedPtr<re::ecs2::NetworkComponent>)>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 2664);
  if (v4)
  {
    v5 = 0;
    v6 = (*(a1 + 2648) + 8);
    while (1)
    {
      v7 = *v6;
      v6 += 6;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(a1 + 2664);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  while (v5 != v4)
  {
    v8 = *a2;
    v9 = *(*(a1 + 2648) + 24 * v5 + 16);
    v12 = v9;
    if (v9)
    {
      v10 = (v9 + 8);
    }

    (*(v8 + 16))(v8, &v12);
    if (v12)
    {

      v12 = 0;
    }

    v11 = *(a1 + 2664);
    if (v11 <= v5 + 1)
    {
      v11 = v5 + 1;
    }

    while (v11 - 1 != v5)
    {
      LODWORD(v5) = v5 + 1;
      if ((*(*(a1 + 2648) + 24 * v5 + 8) & 0x80000000) != 0)
      {
        goto LABEL_18;
      }
    }

    LODWORD(v5) = v11;
LABEL_18:
    ;
  }
}

void *___ZNK2re4ecs217NetworkSendSystem6updateENS0_6System13UpdateContextE_block_invoke(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*a2 + 416);
  if (v4)
  {
    v5 = 0;
    v6 = (*(v3 + 400) + 8);
    while (1)
    {
      v7 = *v6;
      v6 += 6;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(*a2 + 416);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 != v4)
  {
    do
    {
      if (*(*(v3 + 400) + 24 * v5 + 16))
      {
        RESyncRetain();
        RESyncServiceRemoveSyncable();
        RESyncRelease();
      }

      else
      {
        RESyncServiceRemoveSyncable();
      }

      v8 = *(v3 + 416);
      if (v8 <= v5 + 1)
      {
        v8 = v5 + 1;
      }

      while (v8 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(*(v3 + 400) + 24 * v5 + 8) & 0x80000000) != 0)
        {
          goto LABEL_17;
        }
      }

      LODWORD(v5) = v8;
LABEL_17:
      ;
    }

    while (v5 != v4);
    v3 = *a2;
  }

  re::HashSetBase<RESyncableRefRetainer,RESyncableRefRetainer,re::internal::ValueAsKey<RESyncableRefRetainer>,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::clear(v3 + 384);
  v10 = (*a2 + 112);

  return re::ecs2::LocalComponentInfo::clearRemoved(v10, v9);
}

void re::HashSetBase<RESyncableRefRetainer,RESyncableRefRetainer,re::internal::ValueAsKey<RESyncableRefRetainer>,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(a1 + 16) + v4;
        v7 = *(v6 + 8);
        if (v7 < 0)
        {
          *(v6 + 8) = v7 & 0x7FFFFFFF;
          if (*(v6 + 16))
          {
            RESyncRelease();
            *(v6 + 16) = 0;
            v3 = *(a1 + 32);
          }
        }

        v4 += 24;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

void *re::ecs2::LocalComponentInfo::clearRemoved(re::ecs2::LocalComponentInfo *this, uint64_t a2)
{
  v2 = *(this + 1);
  v3 = *this;
  if (v2 > v3)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "m_live <= m_count", "clearRemoved", 3177);
    result = _os_crash("assertion failure: (m_live <= m_count) ");
    __break(1u);
  }

  else
  {
    result = memset((*(this + 1) + 2 * v2), 255, 2 * (v3 - v2));
    *this = *(this + 1);
  }

  return result;
}

_anonymous_namespace_ *___ZNK2re4ecs217NetworkSendSystem6updateENS0_6System13UpdateContextE_block_invoke_2(_anonymous_namespace_ *result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(result + 4);
    result = *(v5 + 32);
    if (!result || (result = RESyncableIsAuthoritative(), result))
    {
      v7 = *(v5 + 16);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *(v7 + 32);
        }

        while (v7);
        if (*(v8 + 24))
        {
          v9 = *(v6 + 232);
          v10 = *(v6 + 240);
          if (v10 >= v9)
          {
            v11 = v10 + 1;
            if (v9 < v10 + 1)
            {
              if (*(v6 + 224))
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

                result = re::DynamicArray<float *>::setCapacity((v6 + 224), v15);
              }

              else
              {
                result = re::DynamicArray<float *>::setCapacity((v6 + 224), v11);
                ++*(v6 + 248);
              }
            }

            v10 = *(v6 + 240);
          }

          *(*(v6 + 256) + 8 * v10) = v5;
          *(v6 + 240) = v10 + 1;
          ++*(v6 + 248);
        }
      }
    }
  }

  return result;
}

uint64_t re::ecs2::NetworkSendSystem::writeEntity(re::ecs2::NetworkSendSystem *this, re::snapshot::EncoderRaw *a2, re::ecs2::NetworkComponent *a3, const re::ecs2::LocalComponentInfo *a4, int a5)
{
  v59 = *MEMORY[0x1E69E9840];
  v10 = 6;
  if ((*(a4 + 2) & 0x4000) != 0)
  {
    v10 = 2;
  }

  v50 = *(a4 + v10);
  v11 = *(a3 + 2);
  *buf = *(v11 + 312);
  re::snapshot::BufferEncoder::writeRaw<true>(a2, buf, 8uLL);
  *buf = *(a3 + 119);
  re::snapshot::BufferEncoder::writeRaw<true>(a2, buf, 4uLL);
  v12 = *(a4 + 2);
  v51 = a5 | ((v12 & 0x4000) >> 14);
  if (v51)
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13 & 0xFFFFFFFE | (v12 >> 13) & 1;
  buf[0] = v14;
  is_enabled = re::snapshot::BufferEncoder::writeRaw<true>(a2, buf, 1uLL);
  if (v14)
  {
    buf[0] = (*(v11 + 304) & 8) != 0;
    re::snapshot::BufferEncoder::writeRaw<true>(a2, buf, 1uLL);
    if (*(a3 + 473) != 1 && (v16 = *(v11 + 32)) != 0 && *(v16 + 216))
    {
      *buf = *(v16 + 312);
    }

    else
    {
      *buf = 0;
    }

    re::snapshot::BufferEncoder::writeRaw<true>(a2, buf, 8uLL);
    buf[0] = *(a3 + 432);
    re::snapshot::BufferEncoder::writeRaw<true>(a2, buf, 1uLL);
    v17 = strlen(*(v11 + 296));
    re::snapshot::EncoderRaw::serializeString(a2, *(v11 + 296), v17);
    is_enabled = kdebug_is_enabled();
    if (is_enabled)
    {
      re::packCharArrayToUInt64ForAriadne(*(*(a3 + 2) + 296), 0);
      is_enabled = kdebug_trace();
    }
  }

  v18 = 2;
  if ((*(a4 + 2) & 0x4000) == 0)
  {
    v18 = 6;
  }

  v19 = *(a4 + v18);
  if (v19)
  {
    v20 = *(a4 + 1);
    v21 = &v20[v19];
    v22 = xmmword_1E306AC00;
    do
    {
      v23 = *v20;
      v24 = *(this + 33);
      if (*(v24 + 2920) > v23 && (v25 = *(*(v24 + 2936) + 8 * v23)) != 0)
      {
        v26 = *(v11 + 98);
        if (!*(v11 + 98))
        {
          goto LABEL_31;
        }

        v27 = v25 + 8;
        v28 = *(v11 + 104);
        v29 = vld1q_dup_s16(v27);
        v30 = 1;
        while (1)
        {
          v31 = vandq_s8(vceqq_s16(v29, *v28), v22);
          v31.i16[0] = vmaxvq_u16(v31);
          if (v31.i32[0])
          {
            break;
          }

          v30 -= 8;
          ++v28;
          if (!--v26)
          {
            goto LABEL_31;
          }
        }

        if (v31.u16[0] - v30 < *(v11 + 96))
        {
          v33 = re::ecs2::EntityComponentCollection::get((v11 + 48), v25);
          *buf = *((*(*v33 + 40))(v33) + 24) >> 1;
          re::snapshot::BufferEncoder::writeRaw<true>(a2, buf, 8uLL);
          is_enabled = re::NetworkSystem::encodeComponent(*(this + 33), a2, v33);
          if ((is_enabled & 1) == 0)
          {
            v34 = *re::ecsNetworkLogObjects(is_enabled);
            is_enabled = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
            if (is_enabled)
            {
              v35 = *((*(*v33 + 40))(v33) + 32);
              v36 = *(v11 + 296);
              v37 = *(v11 + 312);
              *buf = 136315650;
              *&buf[4] = v35;
              v53 = 2080;
              v54 = v36;
              v55 = 2048;
              v56 = v37;
              _os_log_error_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_ERROR, "[NetworkComponent] Failed to serialize component %s for entity %s(%llu)", buf, 0x20u);
            }
          }
        }

        else
        {
LABEL_31:
          v38 = *re::ecsNetworkLogObjects(is_enabled);
          is_enabled = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
          if (is_enabled)
          {
            v39 = *(v11 + 296);
            v40 = *(v11 + 312);
            v41 = *(v25 + 4);
            *buf = 136315906;
            *&buf[4] = v39;
            v53 = 2048;
            v54 = v40;
            v55 = 2080;
            v56 = v41;
            v57 = 1024;
            v58 = v23;
            _os_log_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_DEFAULT, "[NetworkComponent] Entity %s(%llu) no longer has component of type %s(shortID == %d)", buf, 0x26u);
          }
        }
      }

      else
      {
        v32 = *re::ecsNetworkLogObjects(is_enabled);
        is_enabled = os_log_type_enabled(v32, OS_LOG_TYPE_FAULT);
        if (is_enabled)
        {
          *buf = 67109120;
          *&buf[4] = v23;
          _os_log_fault_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_FAULT, "[NetworkComponent] No componentType for localID %d", buf, 8u);
        }
      }

      ++v20;
      v22 = xmmword_1E306AC00;
    }

    while (v20 != v21);
  }

  *buf = 0;
  re::snapshot::BufferEncoder::writeRaw<true>(a2, buf, 8uLL);
  if ((v51 & 1) == 0)
  {
    v43 = re::ecs2::LocalComponentInfo::removed((a3 + 112), v42);
    if (v44)
    {
      v45 = v43;
      v46 = 2 * v44;
      do
      {
        v47 = *v45++;
        *buf = *(*(*(*(this + 33) + 2936) + 8 * v47) + 24) >> 1;
        re::snapshot::BufferEncoder::writeRaw<true>(a2, buf, 8uLL);
        v46 -= 2;
      }

      while (v46);
    }
  }

  *buf = 0;
  re::snapshot::BufferEncoder::writeRaw<true>(a2, buf, 8uLL);
  *(a3 + 59) = 0;
  *(a3 + 58) &= 0x9FFFu;
  re::ecs2::LocalComponentInfo::clearRemoved((a3 + 112), v48);
  return v50;
}

uint64_t re::ecs2::LocalComponentInfo::removed(re::ecs2::LocalComponentInfo *this, uint64_t a2)
{
  v4 = *(this + 1);
  if (v4 <= *this)
  {
    return *(this + 1) + 2 * v4;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "m_live <= m_count", "removed", 203, v2, v3);
  result = _os_crash("assertion failure: (m_live <= m_count) ");
  __break(1u);
  return result;
}

void re::ecs2::NetworkSendSystem::buildComponentSnapshot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  re::ecs2::NetworkComponent::getComponentBoundTo(&v20, a2);
  v6 = v20;
  if (v20)
  {
    v19 = 0;
    v7 = re::ecs2::IntrospectedNetworkTypeHelper::serialize(*(a1 + 312), v20, a2, a3, &v19);
    if (v7)
    {
      if ((*(*v6 + 5))(v6) == re::ecs2::ComponentImpl<re::ecs2::LatencyEventsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType && kdebug_is_enabled())
      {
        kdebug_trace();
      }

      if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
      {
        v8 = (*(*v6 + 5))(v6);
        re::packCharArrayToUInt64ForAriadne(*(v8 + 32), 0);
        kdebug_trace();
      }

      if (re::internal::enableHighFrequencyNetworkTracing(0, 0))
      {
        v9 = v6[2];
        v10 = *(v9 + 27);
        if (v10)
        {
          v11 = re::ecs2::NetworkComponent::owningProcessType(*(v9 + 27));
          if (v11)
          {
            v12 = v11;
            v13 = *(v10 + 432) ? "Remote" : "Local";
            v14 = (*(v10 + 432) == 1 ? "Shared" : v13);
            re::packCharArrayToUInt64ForAriadne(v14, 0);
            if (re::internal::enableSignposts(0, 0))
            {
              if (re::internal::enableHighFrequencyNetworkTracing(0, 0))
              {
                v15 = (*(*v6 + 5))(v6);
                re::packCharArrayToUInt64ForAriadne(*(v15 + 32), 0);
                if (v12 == 1)
                {
                  v16 = "Local";
                }

                else
                {
                  v16 = "Remote";
                }

                re::packCharArrayToUInt64ForAriadne(v16, 0);
                kdebug_trace();
              }
            }
          }
        }
      }
    }

    else
    {
      v17 = *re::ecsNetworkLogObjects(v7);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v18 = *((*(*v6 + 5))(v6) + 32);
        *buf = 136380675;
        v22 = v18;
        _os_log_fault_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_FAULT, "Failed to serialize component of type '%{private}s'", buf, 0xCu);
      }
    }
  }
}

uint64_t re::ecs2::NetworkComponent::findSyncService(re::ecs2::NetworkComponent *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v3 = (v1 + 8);
  v4 = v1;
  do
  {
    v5 = v4;
    v4 = *(v4 + 32);
  }

  while (v4);
  v6 = *(v5 + 24);
  if (v6 && *(v6 + 56) && (v7 = *(this + 7)) != 0)
  {
    v8 = *(v7 + 2560);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL re::ecs2::NetworkComponent::shouldCaptureForSnapshot(re::ecs2::NetworkComponent *this)
{
  if (*(this + 48) & 1) != 0 || (*(this + 50))
  {
    return 1;
  }

  v1 = *(this + 74);
  v2 = (v1 & 1) != 0 ? (this + 304) : *(this + 39);
  for (i = 0; ; i += v6.u32[0])
  {
    v4 = this + 304;
    if ((v1 & 1) == 0)
    {
      v4 = *(this + 39);
    }

    if (v2 == &v4[8 * *(this + 36)])
    {
      break;
    }

    v5 = *v2;
    v2 = (v2 + 8);
    v6 = vcnt_s8(v5);
    v6.i16[0] = vaddlv_u8(v6);
  }

  return i || *(this + 103) != 0;
}

uint64_t re::ecs2::NetworkComponent::isWritable(re::ecs2::NetworkComponent *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(this + 4) && (RESyncableIsAuthoritative() & 1) == 0)
  {
    return RESyncableIsLocked() ^ 1;
  }

  else
  {
    return 1;
  }
}

re::ecs2::NetworkComponent *re::ecs2::NetworkComponent::requestOwnership(re::ecs2::NetworkComponent *this, BOOL a2, const void *a3, double a4)
{
  if (*(this + 4))
  {
    this = re::ecs2::NetworkComponent::findSyncService(this);
    if (this)
    {
      v5.n128_f64[0] = a4;

      return MEMORY[0x1EEE31548](v5);
    }
  }

  return this;
}

void re::ecs2::NetworkComponent::handOff(re::ecs2::NetworkComponent *this)
{
  if (*(this + 4))
  {
    RESyncableHandoffOwnership();

    re::ecs2::NetworkComponent::markEntityDirty(this, 3, v2, v3);
  }
}

void re::ecs2::NetworkComponent::markEntityDirty(re::ecs2::NetworkComponent *this, re::ecs2::NetworkComponent *a2, uint64_t a3, unsigned __int8 a4)
{
  if ((*(this + 49) & 1) == 0)
  {
    if (a2)
    {
      *(this + 58) |= 0x2000u;
    }

    *(this + 48) |= (a2 & 2) >> 1;
    v5 = *(this + 7);
    if (v5)
    {

      re::Event<re::NetworkSystem,re::ecs2::Entity *>::raise(v5 + 616, v5);
    }
  }
}

void anonymous namespace::addToSystemDirtySet(_anonymous_namespace_ *this, re::NetworkSystem *a2, re::ecs2::NetworkComponent *a3)
{
  if (this)
  {
    v3 = a3;
    if (a2)
    {
      v6 = a2 + 8;
      if ((v3 & 1) == 0)
      {
        if ((v3 & 2) == 0)
        {
LABEL_21:

          return;
        }

        v10 = a2;
        goto LABEL_15;
      }

      v11 = a2;
      v7 = a2 + 8;
    }

    else
    {
      if ((a3 & 1) == 0)
      {
        if ((a3 & 2) == 0)
        {
          return;
        }

        v10 = 0;
        goto LABEL_16;
      }

      v11 = 0;
    }

    re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::add(this + 2584, &v11);
    if (v11)
    {

      v11 = 0;
    }

    if ((v3 & 2) == 0)
    {
LABEL_20:
      if (!a2)
      {
        return;
      }

      goto LABEL_21;
    }

    v10 = a2;
    if (!a2)
    {
LABEL_16:
      v9 = 2632;
      if (!*(a2 + 4))
      {
        v9 = 2680;
      }

      re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::add(this + v9, &v10);
      if (v10)
      {

        v10 = 0;
      }

      goto LABEL_20;
    }

LABEL_15:
    v8 = a2 + 8;
    goto LABEL_16;
  }
}

uint64_t re::ecs2::NetworkComponent::isDirty(re::ecs2::NetworkComponent *this, const re::ecs2::Component *a2)
{
  if (re::ecs2::NetworkComponent::isLocalDirty(this, a2))
  {
    return 1;
  }

  v5 = (*(*a2 + 40))(a2);

  return re::ecs2::RemoteComponentInfo::isDirty((this + 144), v5);
}

uint64_t re::ecs2::NetworkComponent::isLocalDirty(re::ecs2::NetworkComponent *this, const re::ecs2::Component *a2)
{
  if (re::NetworkSystemFeatureFlags::enableAltSharedApp(this))
  {
    v4 = (*(*a2 + 40))(a2);
    if ((*(this + 58) & 0x80000000) == 0 || !*(this + 56))
    {
      return 0;
    }

    v7 = (v4 + 16);
    v8 = vld1q_dup_s16(v7);
    v9 = *(this + 15);
    v10 = 1;
    while (1)
    {
      v11 = vandq_s8(vceqq_s16(*v9, v8), xmmword_1E306AC00);
      v11.i16[0] = vmaxvq_u16(v11);
      if (v11.i32[0])
      {
        break;
      }

      ++v9;
      v10 -= 8;
      if (8 * ((*(this + 56) + 7) >> 3) + v10 == 1)
      {
        return 0;
      }
    }

    return v11.u16[0] - v10 >= 0 && v11.u16[0] - v10 < *(this + 59);
  }

  else
  {
    v6 = (*(*a2 + 40))(a2);

    return re::ecs2::RemoteComponentInfo::isDirty((this + 144), v6);
  }
}

void re::ecs2::NetworkComponent::createSyncObjectForLocalComponent(uint64_t *a1, re::NetworkSystem **a2, _anonymous_namespace_ *this)
{
  v15 = *MEMORY[0x1E69E9840];
  {
    goto LABEL_11;
  }

  *buf = *((*(*this + 40))(this) + 16);
  if (re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::contains((a2 + 42), buf))
  {
    goto LABEL_11;
  }

  re::ecs2::NetworkComponent::findSyncService(a2);
  (*(*this + 40))(this);
  if (!RESyncServiceGetTypeInfo())
  {
    re::NetworkSystem::prepareObjectStores(a2[7]);
    (*(*this + 40))(this);
    if (!RESyncServiceGetTypeInfo())
    {
      v7 = *re::ecsNetworkLogObjects(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *((*(*this + 40))(this) + 24) >> 1;
        v9 = *((*(*this + 40))(this) + 32);
        *buf = 134218243;
        v12 = v8;
        v13 = 2081;
        v14 = v9;
        _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "[NetworkComponent] No storage has been registered for component type %llu(%{private}s).", buf, 0x16u);
      }

      goto LABEL_11;
    }
  }

  if ((RESyncSyncableTypeInfoSupportsNetworkSync() & 1) == 0)
  {
LABEL_11:
    *a1 = 0;
    return;
  }

  SyncableWithTypeInfo = RESyncServiceCreateSyncableWithTypeInfo();
  *a1 = SyncableWithTypeInfo;
  MEMORY[0x1E6905A30]();
  v10 = SyncableWithTypeInfo;
  if (SyncableWithTypeInfo)
  {
    RESyncRetain();
    re::ecs2::NetworkComponent::bindComponentToSyncable(a2, this, &v10);
    RESyncRelease();
  }

  else
  {
    re::ecs2::NetworkComponent::bindComponentToSyncable(a2, this, &v10);
  }
}

uint64_t anonymous namespace::supportsNetworkSync(_anonymous_namespace_ *this, const re::ecs2::Component *a2)
{
  v2 = (*(*this + 40))(this, a2);
  if (!(*(*v2 + 64))(v2))
  {
    return 1;
  }

  return RESyncSyncableTypeInfoSupportsNetworkSync();
}

void re::ecs2::NetworkComponent::markDirty(re::ecs2::NetworkComponent *this, const re::ecs2::Component *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if ((*(this + 49) & 1) == 0)
  {
    {
      LOWORD(v14) = *((*(*a2 + 40))(a2) + 16);
      if (!re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::contains(this + 336, &v14))
      {
        v4 = (*(*a2 + 40))(a2);
        if (*(this + 58) < 0)
        {
          v5 = re::ecs2::LocalComponentInfo::markDirty((this + 112), *(v4 + 16));
          if ((v5 & 1) == 0)
          {
            v6 = *re::ecsNetworkLogObjects(v5);
            if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
            {
              v7 = *((*(*a2 + 40))(a2) + 32);
              v8 = *((*(*a2 + 40))(a2) + 16);
              v9 = *(*(this + 2) + 296);
              v14 = 136315650;
              v15 = v7;
              v16 = 1024;
              v17 = v8;
              v18 = 2080;
              v19 = v9;
              _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "[NetworkComponent::markDirty] m_localInfo.markDirty(%s/%d) failed for %s.", &v14, 0x1Cu);
            }
          }
        }

        if (*(this + 4))
        {
          v10 = (*(*a2 + 40))(a2);
          re::ecs2::RemoteComponentInfo::markDirty(this + 144, *(v10 + 16));
        }

        if (*(this + 7))
        {
          v11 = *(a2 + 2);
          v12 = (*(*a2 + 40))(a2);
          v13 = re::ecs2::EntityComponentCollection::get((v11 + 48), v12);
          re::Event<re::NetworkSystem,re::ecs2::Component *>::raise(*(this + 7) + 880, *(this + 7), v13);
        }
      }
    }
  }
}

BOOL re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::contains(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v3) ^ ((0xBF58476D1CE4E5B9 * v3) >> 27));
  v5 = *(*(a1 + 8) + 4 * ((v4 ^ (v4 >> 31)) % v2));
  if (v5 == 0x7FFFFFFF)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  if (*(v7 + 16 * v5 + 12) == v3)
  {
    return 1;
  }

  do
  {
    v5 = *(v7 + 16 * v5 + 8) & 0x7FFFFFFF;
    result = v5 != 0x7FFFFFFF;
  }

  while (v5 != 0x7FFFFFFF && *(v7 + 16 * v5 + 12) != v3);
  return result;
}

void re::ecs2::NetworkComponent::disableSyncForComponent(re::ecs2::NetworkComponent *this, const re::ecs2::Component *a2)
{
  v21 = *((*(*a2 + 40))(a2) + 16);
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v21) ^ ((0xBF58476D1CE4E5B9 * v21) >> 27));
  v5 = v4 ^ (v4 >> 31);
  v6 = *(this + 90);
  if (v6)
  {
    v7 = v5 % v6;
    v8 = *(*(this + 43) + 4 * (v5 % v6));
    if (v8 != 0x7FFFFFFF)
    {
      v9 = *(this + 44);
      if (*(v9 + 16 * v8 + 12) == v21)
      {
        goto LABEL_9;
      }

      while (1)
      {
        v8 = *(v9 + 16 * v8 + 8) & 0x7FFFFFFF;
        if (v8 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v9 + 16 * v8 + 12) == v21)
        {
          goto LABEL_9;
        }
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::addAsCopy(this + 336, v7, v5, &v21, &v21);
  ++*(this + 94);
LABEL_9:
  v10 = (*(*a2 + 40))(a2);
  if (*(this + 58) < 0)
  {
    re::ecs2::LocalComponentInfo::remove((this + 112), *(v10 + 16));
  }

  if (*(this + 4))
  {
    if (RESyncableIsAuthoritative())
    {
      v11 = (*(*a2 + 40))(a2);
      v12 = re::ecs2::RemoteComponentInfo::get((this + 144), *(v11 + 16));
      if (v12)
      {
        v13 = v12;
        re::ecs2::NetworkComponent::unbindComponentFromSyncable(this, a2, v12);
        v20 = v13;
        RESyncRetain();
        v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27));
        v15 = v14 ^ (v14 >> 31);
        v16 = *(this + 102);
        if (v16)
        {
          v17 = v15 % v16;
          v18 = *(*(this + 49) + 4 * (v15 % v16));
          if (v18 != 0x7FFFFFFF)
          {
            v19 = *(this + 50);
            if (*(v19 + 24 * v18 + 16) == v13)
            {
LABEL_23:
              RESyncRelease();
LABEL_24:
              return;
            }

            while (1)
            {
              LODWORD(v18) = *(v19 + 24 * v18 + 8) & 0x7FFFFFFF;
              if (v18 == 0x7FFFFFFF)
              {
                break;
              }

              if (*(v19 + 24 * v18 + 16) == v13)
              {
                goto LABEL_22;
              }
            }
          }
        }

        else
        {
          LODWORD(v17) = 0;
        }

        re::HashSetBase<RESyncableRefRetainer,RESyncableRefRetainer,re::internal::ValueAsKey<RESyncableRefRetainer>,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::addAsMove(this + 384, v17, v15, &v20);
        ++*(this + 106);
        v13 = v20;
LABEL_22:
        if (!v13)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }
  }
}

void re::ecs2::NetworkComponent::setNetworkShareMode(re::ecs2::NetworkComponent *result, int a2, uint64_t a3, unsigned __int8 a4)
{
  if (*(result + 432) != a2)
  {
    *(result + 432) = a2;
    re::ecs2::NetworkComponent::markEntityDirty(result, 3, a3, a4);
    re::ecs2::NetworkComponent::resolveViews(result, 0);

    re::ecs2::NetworkComponent::resolveLocalViews(result, 0);
  }
}

void re::ecs2::NetworkComponent::resolveLocalViews(unint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 56);
  if (!a2)
  {
    if (v3)
    {
      v35 = a1;
      v10 = (a1 + 8);
      re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::add(v3 + 2808, &v35);
      v9 = v35;
      if (v35)
      {
        goto LABEL_13;
      }
    }

    return;
  }

  if (!v3 || (v5 = re::NetworkSystemFeatureFlags::enableAltSharedApp(a1), !v5) || (v6 = *(a1 + 16)) == 0)
  {
    v30 = a1;
LABEL_8:
    v8 = (a1 + 8);
    goto LABEL_9;
  }

  v30 = 0;
  v31 = 0;
  v32 = 1;
  v33 = 0;
  v34 = 0;
  if (*(a1 + 88))
  {
    v7 = (a1 + 96);
  }

  else
  {
    v7 = *(a1 + 104);
  }

  v11 = *(a1 + 80);
  v12 = *(v6 + 32);
  if (v12 && (*(v12 + 304) & 0x80) == 0)
  {
    if (*(a1 + 473))
    {
      goto LABEL_60;
    }

    v13 = *(v12 + 216);
    if (v13)
    {
      if (*(v13 + 88))
      {
        v7 = (v13 + 96);
      }

      else
      {
        v7 = *(v13 + 104);
      }

      v11 = *(v13 + 80);
      if (*(v13 + 32))
      {
        OwnerPeerID = RESyncableGetOwnerPeerID();
      }

      else
      {
        OwnerPeerID = *(v13 + 64);
      }
    }

    else
    {
      OwnerPeerID = 0;
      v7 = 0;
      v11 = 0;
    }

    goto LABEL_61;
  }

  if (*(a1 + 473))
  {
    goto LABEL_60;
  }

  v15 = *(a1 + 56);
  v16 = *(v15 + 3072);
  if (v16)
  {
    v17 = 0;
    v18 = *(v15 + 3056);
    while ((*v18 & 0x80000000) == 0)
    {
      v18 += 82;
      if (v16 == ++v17)
      {
        LODWORD(v17) = *(v15 + 3072);
        break;
      }
    }
  }

  else
  {
    LODWORD(v17) = 0;
  }

  v7 = &v33;
  if (v17 == v16)
  {
    v11 = 0;
    goto LABEL_60;
  }

  v11 = 0;
  v19 = 1;
  do
  {
    v20 = *(v15 + 3056);
    if (v30)
    {
      if ((v19 & 1) == 0)
      {
        v21 = v11 + 1;
        if (v11 < v33 || v33 >= v21)
        {
          goto LABEL_49;
        }

        v23 = 2 * v33;
        goto LABEL_45;
      }

      v21 = v11 + 1;
      if (v11 + 1 >= 5)
      {
        v23 = 8;
LABEL_45:
        if (v23 <= v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        v5 = re::DynamicOverflowArray<re::internal::TimelineTreeInfo const*,4ul>::setCapacity(&v30, v24);
        v19 = v32;
      }
    }

    else
    {
      v5 = re::DynamicOverflowArray<re::internal::TimelineTreeInfo const*,4ul>::setCapacity(&v30, v11 + 1);
      v19 = v32 + 2;
      v32 += 2;
    }

LABEL_49:
    v25 = (v19 & 1) == 0;
    v26 = v34;
    v27 = v31;
    if (!v25)
    {
      v26 = &v33;
    }

    v26[v31] = *(v20 + 328 * v17 + 16);
    v11 = v27 + 1;
    v31 = v27 + 1;
    v28 = v32 & 1;
    v19 = v32 + 2;
    v32 += 2;
    v29 = *(v15 + 3072);
    if (v29 <= v17 + 1)
    {
      v29 = v17 + 1;
    }

    while (v29 - 1 != v17)
    {
      LODWORD(v17) = v17 + 1;
      if ((*(*(v15 + 3056) + 328 * v17) & 0x80000000) != 0)
      {
        goto LABEL_57;
      }
    }

    LODWORD(v17) = v29;
LABEL_57:
    ;
  }

  while (v17 != v16);
  if (!v28)
  {
    v7 = v34;
  }

LABEL_60:
  OwnerPeerID = 0;
LABEL_61:
  re::ecs2::NetworkComponent::resolveLocalViews(a1, a2, v7, v11, OwnerPeerID);
  if (v30)
  {
    if ((v32 & 1) == 0)
    {
      (*(*v30 + 40))();
    }
  }

  v30 = a1;
  if (a1)
  {
    goto LABEL_8;
  }

LABEL_9:
  re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::remove(a2, &v30);
  v9 = v30;
  if (!v30)
  {
    return;
  }

LABEL_13:
}

void re::ecs2::NetworkComponent::setHost(re::ecs2::NetworkComponent *this, re::ecs2::Entity *a2)
{
  v3 = a2 != 0;
  v4 = *(this + 2);
  v5 = *(v4 + 4);
  if (v5 && (*(v5 + 304) & 0x80) != 0)
  {
    v5 = 0;
  }

  if (v5 != a2 || *(this + 473) != v3)
  {
    *(this + 473) = v3;
    re::ecs2::Entity::setParentInternal(v4, a2, 0xFFFFFFFFFFFFFFFFLL);

    re::ecs2::NetworkComponent::markEntityDirty(this, 3, v6, v7);
  }
}

BOOL re::ecs2::NetworkComponent::setAccessControl(re::ecs2::NetworkComponent *this, const re::ecs2::SyncAccessControl *a2)
{
  ++re::NetworkSystem::setAclCount;
  if (*(this + 472))
  {
    return 0;
  }

  re::ecs2::SyncAccessControl::SyncAccessControl(v6, a2);
  re::ecs2::SyncAccessControl::normalize(v6);
  v4 = re::ecs2::SyncAccessControl::operator==(v6, this + 440);
  if (!v4)
  {
    re::ecs2::SyncAccessControl::operator=(this + 440, v6);
    re::ecs2::NetworkComponent::resolveViews(this, 0);
    re::ecs2::NetworkComponent::resolveLocalViews(this, 0);
  }

  v2 = !v4;
  re::ecs2::SyncAccessControl::~SyncAccessControl(v6);
  return v2;
}

unint64_t re::ecs2::NetworkComponent::onAdded(unint64_t this, re::NetworkSystem *a2)
{
  *(this + 56) = a2;
  if (!a2)
  {
    return this;
  }

  v2 = this;
  v3 = re::internal::enableSignposts(0, 0);
  if (v3)
  {
    v3 = re::internal::enableHighFrequencyNetworkTracing(0, 0);
    if (v3)
    {
      v3 = re::internal::enableSignposts(0, 0);
      if (v3)
      {
        re::packCharArrayToUInt64ForAriadne(*(*(v2 + 16) + 296), 0);
        v3 = kdebug_trace();
      }
    }
  }

  if (!re::NetworkSystemFeatureFlags::enableAltSharedApp(v3))
  {
    goto LABEL_24;
  }

  v6 = *(v2 + 116);
  if ((v6 & 0x80000000) == 0)
  {
    ++*(v2 + 476);
    *(v2 + 116) = v6 | 0x8000;
    re::ecs2::NetworkComponent::markEntityDirty(v2, 1, v4, v5);
    *(v2 + 116) |= 0x4000u;
    v8 = *(v2 + 16);
    v9 = *(v8 + 72);
    if (v9)
    {
      v10 = *(v8 + 88);
      v11 = 8 * v9;
      do
      {
        v12 = *v10;
        {
          LOWORD(v26) = *((*(*v12 + 40))(v12) + 16);
          if (!re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::contains(v2 + 336, &v26))
          {
            v13 = (*(*v12 + 40))(v12);
            if (*(v2 + 116) < 0)
            {
              re::ecs2::LocalComponentInfo::add((v2 + 112), *(v13 + 16));
            }

            v14 = (*(*v12 + 40))(v12);
            if (*(v2 + 116) < 0)
            {
              re::ecs2::LocalComponentInfo::markDirty((v2 + 112), *(v14 + 16));
            }
          }
        }

        ++v10;
        v11 -= 8;
      }

      while (v11);
    }

    v15 = *(v2 + 56);
    v25 = v2;
    v16 = (v2 + 8);
    re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::add(v15 + 2584, &v25);
    if (v25)
    {

      v25 = 0;
    }

    v17 = *(v2 + 56);
    v18 = *(v2 + 16);
    v24 = 0;
    re::NetworkSystem::entityAddedToScene(v17, v18, &v24);
    if (v24)
    {
      RESyncRelease();
      v24 = 0;
    }

    re::ecs2::NetworkComponent::resolveLocalViews(v2, 0);
    if (!*(*(v2 + 56) + 3156))
    {
      goto LABEL_29;
    }

    v19 = 1;
LABEL_25:
    v20 = *(v2 + 32);
    if (v20)
    {
      re::ecs2::NetworkComponent::bindEntityTo(v20, *(v2 + 16));
      if ((v19 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      re::ecs2::NetworkComponent::bindEntityForRemoteSync(v2);
    }

LABEL_29:
    re::Event<re::NetworkSystem,re::ecs2::Entity *>::raise(*(v2 + 56) + 528, *(v2 + 56));
    v21 = *(v2 + 56);
    v26 = v2;
    v22 = (v2 + 8);
    v23 = 2632;
    if (!*(v2 + 32))
    {
      v23 = 2680;
    }

    re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::add(v21 + v23, &v26);
    if (v26)
    {

      v26 = 0;
    }

    goto LABEL_33;
  }

  if (*(*(v2 + 56) + 3156))
  {
LABEL_24:
    v19 = 0;
    goto LABEL_25;
  }

LABEL_33:
  this = re::internal::enableSignposts(0, 0);
  if (this)
  {
    this = re::internal::enableHighFrequencyNetworkTracing(0, 0);
    if (this)
    {
      this = re::internal::enableSignposts(0, 0);
      if (this)
      {
        re::packCharArrayToUInt64ForAriadne(*(*(v2 + 16) + 296), 0);
        if (*(v2 + 32))
        {
          RESyncableGetGuid();
        }

        return kdebug_trace();
      }
    }
  }

  return this;
}

void re::ecs2::NetworkComponent::bindEntityForRemoteSync(re::ecs2::NetworkComponent *this)
{
  v43 = *MEMORY[0x1E69E9840];
  re::ecs2::NetworkComponent::findSyncService(this);
  if (*(this + 8))
  {
    IncomingSyncable = RESyncServiceCreateIncomingSyncable();
  }

  else
  {
    IncomingSyncable = RESyncServiceCreateSyncableWithTypeId();
  }

  v3 = IncomingSyncable;
  v4 = (this + 32);
  if (*(this + 4) != IncomingSyncable)
  {
    RESyncableRefRetainer::reset(this + 4, IncomingSyncable);
  }

  if (v3)
  {
    RESyncRelease();
  }

  v5 = re::ecs2::NetworkComponent::bindEntityTo(v3, *(this + 2));
  v6 = re::NetworkSystemFeatureFlags::enableECSNetworkHFLogs(v5);
  if (v6)
  {
    v7 = *re::ecsNetworkLogObjects(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(this + 2);
      v9 = *(v8 + 296);
      v10 = *(v8 + 312);
      *buf = 136381187;
      v34 = v9;
      v35 = 2048;
      v36 = v10;
      v37 = 2048;
      Guid = RESyncableGetGuid();
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "[NetworkComponent] Binding entity '%{private}s' %llu to syncable %llu", buf, 0x20u);
    }
  }

  if (*(this + 51) == 1)
  {
    if (*v4)
    {
LABEL_16:
      RESyncableSetLocked();
      goto LABEL_19;
    }

    *(this + 51) = 1;
  }

  else
  {
    if (*(this + 51))
    {
      goto LABEL_19;
    }

    if (*v4)
    {
      goto LABEL_16;
    }

    *(this + 51) = 0;
  }

LABEL_19:
  RESyncableSetMigrateWhenAbandoned();
  re::ecs2::NetworkComponent::markEntityDirty(this, 2, v11, v12);
  v15 = *(this + 2);
  v16 = v15[9];
  if (v16)
  {
    v17 = v15[11];
    v18 = 8 * v16;
    do
    {
      v19 = *v17;
      re::ecs2::NetworkComponent::createSyncObjectForLocalComponent(&v32, this, *v17);
      if (v32)
      {
        v20 = (*(*v19 + 40))(v19);
        v21 = re::ecs2::RemoteComponentInfo::markDirty(this + 144, *(v20 + 16));
        v22 = re::NetworkSystemFeatureFlags::enableECSNetworkHFLogs(v21);
        if (v22)
        {
          v23 = *re::ecsNetworkLogObjects(v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = *((*(*v19 + 40))(v19) + 32);
            v25 = *(*(this + 2) + 312);
            v26 = RESyncableGetGuid();
            v27 = RESyncableGetGuid();
            *buf = 134219011;
            v34 = v19;
            v35 = 2081;
            v36 = v24;
            v37 = 2048;
            Guid = v25;
            v39 = 2048;
            v40 = v26;
            v41 = 2048;
            v42 = v27;
            _os_log_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_DEFAULT, "[NetworkComponent], Binding component %p(%{private}s) in authoritative entity %llu(%llu) to syncable %llu", buf, 0x34u);
          }
        }

        RESyncRelease();
      }

      ++v17;
      v18 -= 8;
    }

    while (v18);
    v15 = *(this + 2);
  }

  v28 = v15[43];
  if (v28)
  {
    v29 = v15[45];
    v30 = 8 * v28;
    do
    {
      v31 = *(*v29 + 216);
      if (v31 && *(v31 + 4))
      {
        re::ecs2::NetworkComponent::markEntityDirty(v31, 3, v13, v14);
      }

      v29 += 8;
      v30 -= 8;
    }

    while (v30);
  }

  *(this + 50) = 1;
  *(this + 48) = 1;
  re::Event<re::NetworkSystem,re::ecs2::Entity *>::raise(*(this + 7) + 528, *(this + 7));
  re::ecs2::NetworkComponent::resolveViews(this, 0);
}

void re::ecs2::NetworkComponent::onRemoved(re::ecs2::NetworkComponent *this, int a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (*(this + 208))
    {
      v3 = (this + 216);
    }

    else
    {
      v3 = *(this + 28);
    }

    v4 = *(this + 25);
    if (v4)
    {
      v5 = 8 * v4;
      do
      {
        if (*v3)
        {
          RESyncableSetUserData();
        }

        ++v3;
        v5 -= 8;
      }

      while (v5);
    }

    memset(*(this + 15), 255, 16 * (*(this + 58) & 0x1FFF));
    *(this + 28) = 0;
    *(this + 59) = 0;
    *(this + 58) &= 0x1FFFu;
    *(this + 10) = 0;
    *(this + 22) += 2;
    re::ecs2::RemoteComponentInfo::clearAll(this + 144);
  }

  if (*(this + 7))
  {
    v6 = re::internal::enableSignposts(0, 0);
    if (v6)
    {
      v6 = re::internal::enableHighFrequencyNetworkTracing(0, 0);
      if (v6)
      {
        v7 = *(this + 7);
        v8 = *(this + 2);
        v9 = *(v8 + 312);
        v10 = re::packCharArrayToUInt64ForAriadne(*(v8 + 296), 0);
        if (*(this + 4))
        {
          Guid = RESyncableGetGuid();
        }

        else
        {
          Guid = 0;
        }

        re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(buf, 6042, v7, v9, v10, Guid);
        re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(buf, v12, v13);
      }
    }

    v14 = re::NetworkSystemFeatureFlags::enableECSNetworkHFLogs(v6);
    if (v14)
    {
      v15 = *re::ecsNetworkLogObjects(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(this + 2);
        v17 = *(v16 + 296);
        v18 = *(v16 + 312);
        v19 = RESyncableGetGuid();
        *buf = 136381187;
        *&buf[4] = v17;
        v30 = 2048;
        v31 = v18;
        v32 = 2048;
        v33 = v19;
        _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, "[NetworkComponent] Unbinding entity '%{private}s' %llu from syncable %llu", buf, 0x20u);
      }
    }

    if (!*(this + 4) || RESyncableIsAuthoritative())
    {
      v20 = *(this + 7);
      if (v20)
      {
        v21 = *(this + 2);
        v28 = *(this + 4);
        if (v28)
        {
          RESyncRetain();
        }

        re::NetworkSystem::entityRemovedFromScene(v20, v21, &v28);
        if (v28)
        {
          RESyncRelease();
          v28 = 0;
        }

        if (*(this + 208))
        {
          v22 = (this + 216);
        }

        else
        {
          v22 = *(this + 28);
        }

        v23 = *(this + 25);
        if (v23)
        {
          v24 = 8 * v23;
          do
          {
            if (*v22)
            {
              RESyncableSetUserData();
            }

            ++v22;
            v24 -= 8;
          }

          while (v24);
        }

        memset(*(this + 15), 255, 16 * (*(this + 58) & 0x1FFF));
        *(this + 28) = 0;
        *(this + 59) = 0;
        *(this + 58) &= 0x1FFFu;
        *(this + 10) = 0;
        *(this + 22) += 2;
        re::ecs2::RemoteComponentInfo::clearAll(this + 144);
        re::Event<re::NetworkSystem,re::ecs2::Entity *>::raise(*(this + 7) + 704, *(this + 7));
      }
    }

    if (*(this + 4))
    {
      if (RESyncableGetDirectView())
      {
        RESyncRetain();
        RESyncableSetDirectView();
        if (!RESyncViewGetObjectCount() && re::ecs2::NetworkComponent::findSyncService(this))
        {
          RESyncServiceRemoveView();
        }

        RESyncRelease();
      }

      v25 = *(this + 5);
      if (v25)
      {

        *(this + 5) = 0;
      }

      RESyncableSetUserData();
      if (*(this + 4))
      {
        RESyncRelease();
        *(this + 4) = 0;
      }
    }

    re::ecs2::NetworkComponent::clearDirty(this, 3);
    *buf = this;
    v26 = this + 8;
    re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::remove(*(this + 7) + 2584, buf);
    v27 = *(this + 7);
    re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::remove(v27 + 2632, buf);
    re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::remove(v27 + 2680, buf);
    *(this + 7) = 0;
    if (*buf)
    {
    }
  }
}

BOOL re::ecs2::LocalComponentInfo::contains(re::ecs2::LocalComponentInfo *this, const re::ecs2::ComponentTypeBase *a2, int16x4_t a3)
{
  if ((*(this + 2) & 0x80000000) == 0 || !*this)
  {
    return 0;
  }

  v4 = vdupq_lane_s16(a3, 0);
  v5 = *(this + 1);
  v6 = 1;
  while (1)
  {
    v7 = vandq_s8(vceqq_s16(*v5, v4), xmmword_1E306AC00);
    v7.i16[0] = vmaxvq_u16(v7);
    if (v7.i32[0])
    {
      break;
    }

    ++v5;
    v6 -= 8;
    if (8 * ((*this + 7) >> 3) + v6 == 1)
    {
      return 0;
    }
  }

  return v7.u16[0] - v6 >= 0 && v7.u16[0] - v6 < *(this + 1);
}

uint64_t re::ecs2::NetworkComponent::resolveSelfView(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  ++re::NetworkSystem::resolveSelfViewCount;
  SyncService = re::ecs2::NetworkComponent::findSyncService(a1);
  if (SyncService)
  {
    if (!*(a1 + 32) || (RESyncableIsDestroyed() & 1) != 0)
    {
      SyncService = 0;
      goto LABEL_5;
    }

    DirectView = RESyncableGetDirectView();
    v11 = DirectView;
    v12 = *(a1 + 16);
    if (v12 && (v13 = *(v12 + 32)) != 0 && (v14 = *(v13 + 216)) != 0 && (DirectView = *(v14 + 32)) != 0)
    {
      DirectView = RESyncableGetDirectView();
      v15 = DirectView;
      if (!v11)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v15 = 0;
      if (!v11)
      {
LABEL_20:
        v16 = 0;
        if (!v15)
        {
LABEL_21:
          v17 = 0;
LABEL_25:
          v18 = *(a1 + 16);
          v35 = v15;
          v36 = v11;
          if (v18 && (v19 = *(v18 + 32)) != 0 && ((*(v19 + 304) & 0x80) == 0 || *(v19 + 216)))
          {
            if (v17)
            {
              v20 = (v17 + 56);
              v21 = *(v17 + 88);
              v22 = *(v19 + 216);
              if (v22)
              {
                if (*(v22 + 32))
                {
                  OwnerPeerID = RESyncableGetOwnerPeerID();
                }

                else
                {
                  OwnerPeerID = *(v22 + 64);
                }

LABEL_35:
                re::ecs2::SyncAccessControl::resolve(v20, (a1 + 440), buf);
                if (*(a1 + 473) == 1)
                {
                  re::ecs2::SyncAccessControl::removeEntry(buf, OwnerPeerID);
                  if (*(a1 + 32))
                  {
                    v25 = RESyncableGetOwnerPeerID();
                  }

                  else
                  {
                    v25 = *(a1 + 64);
                  }

                  v24 = re::ecs2::SyncAccessControl::addEntry(buf, v25, 0);
                }

                v26 = *(a1 + 432);
                if (v26 == 1)
                {
                  v27 = v21;
                }

                else
                {
                  v27 = 2;
                }

                if (v21 == v26 || v21 == 1)
                {
                  v29 = *(a1 + 432);
                }

                else
                {
                  v29 = v27;
                }

                if (!v16 || *(v16 + 88) != v29 || (v24 = re::ecs2::SyncAccessControl::operator==(buf, v16 + 56), (v24 & 1) == 0))
                {
                  if (!v17 || *(v17 + 88) != v29 || (v24 = re::ecs2::SyncAccessControl::operator==(buf, v17 + 56), !v24))
                  {
                    v31 = re::globalAllocators(v24);
                    v32 = (*(*v31[2] + 32))(v31[2], 104, 8);
                    ArcSharedObject::ArcSharedObject(v32, 0);
                    *v32 = &unk_1F5CF6900;
                    *(v32 + 40) = 0u;
                    *(v32 + 24) = 0u;
                    re::DynamicString::setCapacity((v32 + 24), 0);
                    *(v32 + 56) = 0x300000000;
                    *(v32 + 96) = RESyncViewCreate();
                    RESyncViewSetUserData();
                    v34 = strlen(*(*(a1 + 16) + 296));
                    v37[0] = *(*(a1 + 16) + 296);
                    v37[1] = v34;
                    re::DynamicString::operator=((v32 + 24), v37);
                    re::ecs2::SyncAccessControl::operator=(v32 + 56, buf);
                    *(v32 + 88) = v29;
                    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((a1 + 40), v32);
                    RESyncableGetOwnerPeerID();
                    RESyncViewSetOwnerPeerID();
                    RESyncableGetFromPeerID();
                    RESyncViewSetFromPeerID();
                    RESyncableSetDirectView();
                    RESyncServiceAddView();

                    v30 = v36;
LABEL_58:
                    if (v30 && !RESyncViewGetObjectCount())
                    {
                      RESyncServiceRemoveView();
                    }

                    SyncService = 1;
LABEL_63:
                    re::ecs2::SyncAccessControl::~SyncAccessControl(buf);
                    if (!a2)
                    {
                      goto LABEL_10;
                    }

                    goto LABEL_6;
                  }

                  v30 = v36;
                  if (v35 != v36)
                  {
                    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((a1 + 40), v17);
                    RESyncableSetDirectView();
                    goto LABEL_58;
                  }
                }

                SyncService = 0;
                goto LABEL_63;
              }
            }

            else
            {
              v20 = re::ecs2::syncPolicy::denyAll(DirectView);
              v21 = 0;
            }
          }

          else
          {
            v21 = 1;
            v20 = re::ecs2::syncPolicy::allowAll(DirectView);
          }

          OwnerPeerID = 0;
          goto LABEL_35;
        }

LABEL_24:
        DirectView = RESyncViewGetUserData();
        v17 = DirectView;
        goto LABEL_25;
      }
    }

    DirectView = RESyncViewGetUserData();
    v16 = DirectView;
    if (!v15)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

LABEL_5:
  if (!a2)
  {
    goto LABEL_10;
  }

LABEL_6:
  *buf = a1;
  if (a1)
  {
    v6 = (a1 + 8);
  }

  re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::remove(a2, buf);
  if (*buf)
  {
  }

LABEL_10:
  *&re::NetworkSystem::resolveSelfViewTime = *&re::NetworkSystem::resolveSelfViewTime + CFAbsoluteTimeGetCurrent() - Current;
  if (*&re::NetworkSystem::resolveSelfViewTime > 0.1)
  {
    v8 = *re::ecsNetworkLogObjects(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = re::NetworkSystem::resolveSelfViewCount;
      v39 = 2048;
      v40 = re::NetworkSystem::setAclCount;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "More than 100ms spent in NetworkComponent::resolveSelfView: resolveSelfView: %zu, setAccessControl: %zu", buf, 0x16u);
    }

    re::NetworkSystem::resolveSelfViewTime = 0;
  }

  return SyncService;
}

uint64_t re::ecs2::NetworkComponent::resolveChildEntityViews(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(v2 + 344);
    if (v3)
    {
      v5 = *(v2 + 360);
      v6 = 8 * v3;
      do
      {
        v7 = *(*v5 + 216);
        if (v7)
        {
          result = re::ecs2::NetworkComponent::resolveSelfView(*(*v5 + 216), a2);
          if (result)
          {
            result = re::ecs2::NetworkComponent::resolveChildEntityViews(v7, a2);
          }
        }

        v5 += 8;
        v6 -= 8;
      }

      while (v6);
    }
  }

  return result;
}

void re::ecs2::NetworkComponent::resolveLocalViews(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 56);
  if (!v7 || !*(a1 + 16))
  {
    goto LABEL_65;
  }

  v8 = *(a1 + 88);
  if (*(a1 + 432) > 1u)
  {
    re::NetworkSystem::exitingLocalPeerView(v7, a1);
    *(a1 + 80) = 0;
    *(a1 + 88) += 2;
  }

  else
  {
    v11 = a3;
    v12 = 8 * a4;
    if (*(a1 + 80))
    {
      v13 = 0;
      v42 = &a3[a4];
      do
      {
        v14 = a1 + 96;
        if ((*(a1 + 88) & 1) == 0)
        {
          v14 = *(a1 + 104);
        }

        v15 = *(v14 + 8 * v13);
        if (*(a1 + 32))
        {
          OwnerPeerID = RESyncableGetOwnerPeerID();
        }

        else
        {
          OwnerPeerID = *(a1 + 64);
        }

        v17 = v13 + 1;
        if (v15 != OwnerPeerID)
        {
          if (a4)
          {
            v18 = *(v14 + 8 * v13);
            v19 = v12;
            v20 = v11;
            while (*v20 != v18)
            {
              ++v20;
              v19 -= 8;
              if (!v19)
              {
                goto LABEL_20;
              }
            }
          }

          else
          {
            v20 = v11;
          }

          if (v20 == v42)
          {
            v18 = *(v14 + 8 * v13);
LABEL_20:
            v21 = *(a1 + 56);
            v44[0] = v18;
            v22 = re::HashTable<unsigned long long,re::NetworkSystem::LocalPeer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v21 + 3040, v44);
            if (v22)
            {
              re::NetworkSystem::LocalPeer::exit(v22, a1);
            }

            v23 = a1 + 96;
            if ((*(a1 + 88) & 1) == 0)
            {
              v23 = *(a1 + 104);
            }

            v24 = *(a1 + 80);
            v25 = v23 + 8 * v24;
            v26 = *(v14 + 8 * v13);
            *(v14 + 8 * v13) = *(v25 - 8);
            *(v25 - 8) = v26;
            LODWORD(v25) = *(a1 + 88);
            *(a1 + 80) = v24 - 1;
            *(a1 + 88) = v25 + 2;
            v17 = v13;
          }
        }

        v13 = v17;
      }

      while (v17 < *(a1 + 80));
    }

    if (a4)
    {
      while (1)
      {
        v27 = *v11;
        v43 = v27;
        v44[0] = v27;
        v28 = re::HashTable<unsigned long long,re::NetworkSystem::LocalPeer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(*(a1 + 56) + 3040, v44);
        v29 = *(a1 + 32) ? RESyncableGetOwnerPeerID() : *(a1 + 64);
        if (v29 != v27)
        {
          break;
        }

        isAllowed = 1;
        if (v28)
        {
          goto LABEL_34;
        }

LABEL_35:
        if (*(a1 + 473) == 1 && v27 == a5)
        {
          isAllowed = *(a1 + 64) == a5;
        }

        re::DynamicOverflowArray<unsigned long long,2ul>::indexOf(v44, a1 + 72, v27);
        if (isAllowed & 1) == 0 || (v44[0])
        {
          if (!(isAllowed & 1 | ((v44[0] & 1) == 0)))
          {
            if (v28)
            {
              re::NetworkSystem::LocalPeer::exit(v28, a1);
            }

            re::DynamicOverflowArray<unsigned long long,2ul>::remove(a1 + 72, v27);
          }
        }

        else
        {
          re::DynamicOverflowArray<unsigned long long,2ul>::add((a1 + 72), &v43);
          if (v28)
          {
            re::NetworkSystem::LocalPeer::enter(v28, a1);
          }
        }

        ++v11;
        v12 -= 8;
        if (!v12)
        {
          goto LABEL_49;
        }
      }

      isAllowed = re::ecs2::SyncAccessControl::isAllowed((a1 + 440), v27);
      if (!v28)
      {
        goto LABEL_35;
      }

LABEL_34:
      isAllowed |= *(v28 + 8);
      goto LABEL_35;
    }
  }

LABEL_49:
  if ((*(a1 + 88) ^ v8) < 2 || (v31 = *(a1 + 16), (v32 = *(v31 + 344)) == 0))
  {
LABEL_65:
    v44[0] = a1;
LABEL_66:
    v41 = (a1 + 8);
    goto LABEL_67;
  }

  v33 = *(v31 + 360);
  v34 = 8 * v32;
  do
  {
    v35 = *v33;
    if (*v33)
    {
      v36 = (v35 + 8);
    }

    v37 = *(v35 + 216);
    if (v37)
    {
      if (*(a1 + 88))
      {
        v38 = (a1 + 96);
      }

      else
      {
        v38 = *(a1 + 104);
      }

      v39 = *(a1 + 80);
      if (*(a1 + 32))
      {
        v40 = RESyncableGetOwnerPeerID();
      }

      else
      {
        v40 = *(a1 + 64);
      }

      re::ecs2::NetworkComponent::resolveLocalViews(v37, a2, v38, v39, v40);
    }

    ++v33;
    v34 -= 8;
  }

  while (v34);
  v44[0] = a1;
  if (a1)
  {
    goto LABEL_66;
  }

LABEL_67:
  re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::remove(a2, v44);
  if (v44[0])
  {
  }
}