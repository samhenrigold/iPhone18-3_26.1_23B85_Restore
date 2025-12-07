uint64_t re::ecs2::OcclusionManager::unregisterScene(re::ecs2::OcclusionManager *this, re::ecs2::Scene *a2)
{
  v13 = a2;
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 32, &v13);
  v3 = *(v13 + 13);
  v4 = *(v3 + 344);
  if (v4)
  {
    v5 = *(v3 + 360);
    v6 = 8 * v4;
    do
    {
      if (*(*v5 + 304))
      {
        (*(*(this + 3) + 40))(this + 24);
      }

      v5 += 8;
      v6 -= 8;
    }

    while (v6);
  }

  result = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 176, &v13);
  if (result)
  {
    v8 = *(v13 + 36);
    if (v8)
    {
      v9 = result;
      v10 = *(result + 40);
      if (v10)
      {
        for (i = 0; i != v10; ++i)
        {
          v12 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](v9, i);
          re::EventBus::unsubscribe(v8, *v12, v12[1]);
        }
      }
    }

    return re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::remove(this + 176, &v13);
  }

  return result;
}

uint64_t *re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::~HierarchyStateTracking(uint64_t *a1)
{
  *a1 = &unk_1F5CD3350;
  v2 = a1 + 1;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 31);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 25);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(a1 + 19);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 13);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 7);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v2);
  return a1;
}

uint64_t (***re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CD33E8;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v14);
}

uint64_t (***re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CD3440;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v14);
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::invalidateEntityHierarchyEventHandler<REComponentDidChangeEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD3390;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD3390;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD33E8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD33E8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD3440;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD3440;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::invalidateEntityHierarchyEventHandler<RESceneEntityDidReparentEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,RESceneEntityDidReparentEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,RESceneEntityDidReparentEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD3498;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,RESceneEntityDidReparentEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD3498;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::invalidateEntityHierarchyEventHandler<RESceneEntityDidActivateEvent>(uint64_t a1, unint64_t a2)
{
  v5 = a2;
  if ((*(a2 + 387) & 1) == 0)
  {
    v3 = a1 + 200;
    (*(*a1 + 40))(a1);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v5);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(v3, &v5);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,RESceneEntityDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,RESceneEntityDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD34F0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,RESceneEntityDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD34F0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::invalidateEntityHierarchyEventHandler<RESceneEntityWillDeactivateEvent>(uint64_t a1, unint64_t a2)
{
  v5 = a2;
  v3 = a1 + 200;
  (*(*a1 + 40))(a1);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 104, &v5);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(v3, &v5);
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,RESceneEntityWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,RESceneEntityWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD3548;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::Entity const*>::*)(re::ecs2::Entity*,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity*,RESceneEntityWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD3548;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void re::HashTable<re::ecs2::Entity const*,re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = (v7 + 1);
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 32 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

void *re::FixedArray<re::ecs2::ComponentTypeBase const*>::copy(void *result, const void **a2)
{
  v4 = result[1];
  if (v4 == a2[1])
  {
    if (v4)
    {
      v5 = *a2;
      v6 = result[2];

      return memmove(v6, v5, 8 * v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378, v2, v3);
    result = _os_crash("assertion failure: (m_size == other.size()) Cannot copy from a Slice of a different size");
    __break(1u);
  }

  return result;
}

void re::FixedArray<re::ecs2::ComponentTypeBase const*>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 61)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v9, v10);
    __break(1u);
    goto LABEL_9;
  }

  v5 = 8 * a3;
  v6 = (*(*a2 + 32))(a2, 8 * a3, 8);
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
    bzero(v6, v5 - 8);
    v8 = (v8 + v5 - 8);
  }

  *v8 = 0;
}

void *re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 768, 0);
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

              result = re::DynamicOverflowArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData *,2ul>::setCapacity(v3, v13 + 1);
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

_anonymous_namespace_ *re::DynamicOverflowArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData *,2ul>::setCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData *,2ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = *(result + 3);
  }

  if (v8 != a2)
  {
    v9 = *(result + 1);
    if (v9 <= a2 && (a2 > 2 || (v7 & 1) == 0))
    {
      if (a2 < 3)
      {
        v14 = (result + 24);
        v15 = *(v4 + 4);
        if (v7)
        {
          v16 = v4 + 24;
        }

        else
        {
          v16 = *(v4 + 4);
        }

        memcpy(v14, v16, 8 * v9);
        result = (*(*v5 + 40))(v5, v15);
        v6 = *(v4 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 61)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 8, a2);
        _os_crash("assertion failure: (!overflow) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", v18, v20);
        __break(1u);
      }

      else
      {
        v2 = 8 * a2;
        v10 = (*(*v5 + 32))(*result, 8 * a2, 8);
        if (v10)
        {
          v12 = v10;
          if (*(v4 + 16))
          {
            v13 = v4 + 24;
          }

          else
          {
            v13 = *(v4 + 4);
          }

          result = memcpy(v10, v13, 8 * *(v4 + 1));
          v17 = *(v4 + 4);
          if ((v17 & 1) == 0)
          {
            result = (*(**v4 + 40))(*v4, *(v4 + 4));
            v17 = *(v4 + 4);
          }

          *(v4 + 4) = v17 & 0xFFFFFFFE;
          *(v4 + 3) = a2;
          *(v4 + 4) = v12;
          return result;
        }
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*v4 + 8));
      result = _os_crash("assertion failure: (newData) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", v19, v21);
      __break(1u);
    }
  }

  return result;
}

unint64_t re::BucketArray<re::ecs2::OcclusionManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOcclusionData,32ul>::operator[](uint64_t a1, unint64_t a2)
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

  return *(v5 + 8 * v2) + 24 * (a2 & 0x1F);
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::ecs2::Entity const*,re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 32 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v9 + 24) = a3;
  *(v10 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v7 + 32 * v5;
}

void re::HashTable<re::ecs2::Entity const*,re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::ecs2::Entity const*,re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<re::ecs2::Entity const*,re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::move(a1, v9);
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<re::ecs2::Entity const*,re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(v4, *(v7 + v5 + 24) % *(v4 + 24), *(v7 + v5 + 24));
        *(result + 8) = *(*(a2 + 16) + v5 + 8);
        *(result + 16) = *(*(a2 + 16) + v5 + 16);
        v2 = *(a2 + 32);
      }

      v5 += 32;
    }
  }

  return result;
}

void *re::ecs2::allocInfo_VFXREBindingDescriptor(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE19E728, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E728))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19EAC8, "VFXREBindingDescriptor");
    __cxa_guard_release(&qword_1EE19E728);
  }

  return &unk_1EE19EAC8;
}

void re::ecs2::initInfo_VFXREBindingDescriptor(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v40[0] = 0x5E7718CB343B8272;
  v40[1] = "VFXREBindingDescriptor";
  if (v40[0])
  {
    if (v40[0])
    {
    }
  }

  *(this + 2) = v41;
  if ((atomic_load_explicit(&qword_1EE19E730, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E730))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicString>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "identifier";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE19E8E8 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::DynamicString>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "object";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x2000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE19E8F0 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::DynamicString>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "binding";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x4000000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE19E8F8 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::IntrospectionInfo<re::DynamicString>::get(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "userManual";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x6000000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE19E900 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_int64_t(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "type";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x8000000005;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE19E908 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_int64_t(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "semantic";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x8800000006;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE19E910 = v30;
    v31 = re::introspectionAllocator();
    v33 = re::introspect_double(1, v32);
    v34 = (*(*v31 + 32))(v31, 72, 8);
    *v34 = 1;
    *(v34 + 8) = "min";
    *(v34 + 16) = v33;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0x9000000007;
    *(v34 + 40) = 0;
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;
    *(v34 + 64) = 0;
    qword_1EE19E918 = v34;
    v35 = re::introspectionAllocator();
    v37 = re::introspect_double(1, v36);
    v38 = (*(*v35 + 32))(v35, 72, 8);
    *v38 = 1;
    *(v38 + 8) = "max";
    *(v38 + 16) = v37;
    *(v38 + 24) = 0;
    *(v38 + 32) = 0x9800000008;
    *(v38 + 40) = 0;
    *(v38 + 48) = 0;
    *(v38 + 56) = 0;
    *(v38 + 64) = 0;
    qword_1EE19E920 = v38;
    __cxa_guard_release(&qword_1EE19E730);
  }

  *(this + 2) = 0xA000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 8;
  *(this + 8) = &qword_1EE19E8E8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VFXREBindingDescriptor>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VFXREBindingDescriptor>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VFXREBindingDescriptor>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VFXREBindingDescriptor>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v39 = v41;
}

void *re::internal::defaultConstruct<re::ecs2::VFXREBindingDescriptor>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v4 = re::DynamicString::setCapacity(a3, 0);
  *(a3 + 48) = 0u;
  *(a3 + 32) = 0u;
  v5 = re::DynamicString::setCapacity((a3 + 32), 0);
  *(a3 + 80) = 0u;
  *(a3 + 64) = 0u;
  v6 = re::DynamicString::setCapacity((a3 + 64), 0);
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  v7 = (a3 + 96);

  return re::DynamicString::setCapacity(v7, 0);
}

double re::internal::defaultDestruct<re::ecs2::VFXREBindingDescriptor>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicString::deinit((a3 + 96));
  re::DynamicString::deinit((a3 + 64));
  re::DynamicString::deinit((a3 + 32));

  return re::DynamicString::deinit(a3);
}

void *re::internal::defaultConstructV2<re::ecs2::VFXREBindingDescriptor>(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v2 = re::DynamicString::setCapacity(a1, 0);
  *(a1 + 48) = 0u;
  *(a1 + 32) = 0u;
  v3 = re::DynamicString::setCapacity((a1 + 32), 0);
  *(a1 + 80) = 0u;
  *(a1 + 64) = 0u;
  v4 = re::DynamicString::setCapacity((a1 + 64), 0);
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  v5 = (a1 + 96);

  return re::DynamicString::setCapacity(v5, 0);
}

double re::internal::defaultDestructV2<re::ecs2::VFXREBindingDescriptor>(uint64_t a1)
{
  re::DynamicString::deinit((a1 + 96));
  re::DynamicString::deinit((a1 + 64));
  re::DynamicString::deinit((a1 + 32));

  return re::DynamicString::deinit(a1);
}

void *re::ecs2::allocInfo_VFXREBinding(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE19E740, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E740))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19EB58, "VFXREBinding");
    __cxa_guard_release(&qword_1EE19E740);
  }

  return &unk_1EE19EB58;
}

void re::ecs2::initInfo_VFXREBinding(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0x3E4EFC2E3FAE7C54;
  v20[1] = "VFXREBinding";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE19E748, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E748))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicArray<unsigned char>>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "valueStorage";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0x800000002;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE19E828 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_uint32_t(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "version";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x3000000005;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE19E830 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_int(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "descriptorIndex";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 6;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE19E838 = v18;
    __cxa_guard_release(&qword_1EE19E748);
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE19E828;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VFXREBinding>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VFXREBinding>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VFXREBinding>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VFXREBinding>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void re::internal::defaultConstruct<re::ecs2::VFXREBinding>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = -1;
  *(a3 + 40) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  *(a3 + 32) = 0;
  *(a3 + 48) = 0;
}

uint64_t re::internal::defaultConstructV2<re::ecs2::VFXREBinding>(uint64_t result)
{
  *result = -1;
  *(result + 40) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 8) = 0;
  *(result + 32) = 0;
  *(result + 48) = 0;
  return result;
}

void *re::ecs2::allocInfo_VFXREClientTextureData(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE19E758, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E758))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19EBE8, "VFXREClientTextureData");
    __cxa_guard_release(&qword_1EE19E758);
  }

  return &unk_1EE19EBE8;
}

void re::ecs2::initInfo_VFXREClientTextureData(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0xD1451C1E30445FFELL;
  v20[1] = "VFXREClientTextureData";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE19E760, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E760))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicString>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "identifier";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE19E840 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_AssetHandle(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "texture";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x2000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE19E848 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_int64_t(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "version";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x3800000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE19E850 = v18;
    __cxa_guard_release(&qword_1EE19E760);
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE19E840;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VFXREClientTextureData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VFXREClientTextureData>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VFXREClientTextureData>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VFXREClientTextureData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v19 = v21;
}

double re::internal::defaultConstruct<re::ecs2::VFXREClientTextureData>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  re::DynamicString::setCapacity(a3, 0);
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  return result;
}

double re::internal::defaultDestruct<re::ecs2::VFXREClientTextureData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::AssetHandle::~AssetHandle((a3 + 32));

  return re::DynamicString::deinit(a3);
}

double re::internal::defaultConstructV2<re::ecs2::VFXREClientTextureData>(_anonymous_namespace_ *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  re::DynamicString::setCapacity(a1, 0);
  result = 0.0;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  return result;
}

double re::internal::defaultDestructV2<re::ecs2::VFXREClientTextureData>(uint64_t a1)
{
  re::AssetHandle::~AssetHandle((a1 + 32));

  return re::DynamicString::deinit(a1);
}

void re::ecs2::introspect_VFXSimulationState(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE19E770, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE19E778, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E778))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE19E968, "VFXSimulationState", 1, 1, 1, 1);
      qword_1EE19E968 = &unk_1F5D0C658;
      qword_1EE19E9A8 = &re::ecs2::introspect_VFXSimulationState(BOOL)::enumTable;
      dword_1EE19E978 = 9;
      __cxa_guard_release(&qword_1EE19E778);
    }

    if (_MergedGlobals_143)
    {
      break;
    }

    _MergedGlobals_143 = 1;
    re::IntrospectionRegistry::add(&qword_1EE19E968, a2);
    v33 = 0x1096B9A2A9580404;
    v34 = "VFXSimulationState";
    v37 = 6104748;
    v38 = "char";
    v4 = v36[0];
    v5 = v36[1];
    if (v37)
    {
      if (v37)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE19E9A8;
      v37 = v4;
      v38 = v5;
      re::TypeBuilder::beginEnumType(v36, &v33, 1, 1, &v37);
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
            *&v35.var0 = 2 * v11;
            v35.var1 = v10;
            re::TypeBuilder::addEnumConstant(v36, v15, &v35);
            if (*&v35.var0)
            {
              if (*&v35.var0)
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
              *&v35.var0 = 2 * v20;
              v35.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v36, v24, &v35);
              if (*&v35.var0)
              {
                if (*&v35.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v36, v26);
      xmmword_1EE19E988 = v35;
      if (v33)
      {
        if (v33)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v34);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v32);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE19E770))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Playing";
      qword_1EE19E818 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "Paused";
      qword_1EE19E820 = v31;
      __cxa_guard_release(&qword_1EE19E770);
    }
  }
}

void re::IntrospectionInfo<re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE19E800, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E800))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE19E9B0);
    qword_1EE19E9B0 = &unk_1F5CD3910;
    __cxa_guard_release(&qword_1EE19E800);
  }

  if ((byte_1EE19E71E & 1) == 0)
  {
    v2 = re::introspect_size_t(1, a2);
    v3 = v2;
    v4 = qword_1EE19E750;
    if (!qword_1EE19E750)
    {
      v4 = re::ecs2::allocInfo_VFXREBinding(v2);
      qword_1EE19E750 = v4;
      re::ecs2::initInfo_VFXREBinding(v4, v5, v6, v7);
    }

    if ((byte_1EE19E71E & 1) == 0)
    {
      byte_1EE19E71E = 1;
      v8 = *(v4 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE19E9B0, 0);
      qword_1EE19E9C0 = 0x3000000007;
      dword_1EE19E9C8 = v8;
      word_1EE19E9CC = 0;
      *&xmmword_1EE19E9D0 = 0;
      *(&xmmword_1EE19E9D0 + 1) = 0xFFFFFFFFLL;
      qword_1EE19E9E0 = v3;
      qword_1EE19E9E8 = 0;
      qword_1EE19E9F0 = v4;
      qword_1EE19E9F8 = 0;
      qword_1EE19E9B0 = &unk_1F5CD3910;
      re::IntrospectionRegistry::add(v9, v10);
      re::getPrettyTypeName(&v25, &qword_1EE19E9B0);
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
        re::TypeBuilder::setConstructor(&v25, re::TypeBuilderHelper::registerHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v25, re::TypeBuilderHelper::registerHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v25, re::TypeBuilderHelper::registerHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v25, re::TypeBuilderHelper::registerHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v25, v18);
        re::StackScratchAllocator::~StackScratchAllocator(v27);
      }

      xmmword_1EE19E9D0 = v19;
      if (v22)
      {
        if (v22)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE19E808, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E808))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE19EA00);
    qword_1EE19EA00 = &unk_1F5CD39B0;
    __cxa_guard_release(&qword_1EE19E808);
  }

  if ((byte_1EE19E71F & 1) == 0)
  {
    v2 = re::introspect_int64_t(1, a2);
    v3 = v2;
    v4 = qword_1EE19E768;
    if (!qword_1EE19E768)
    {
      v4 = re::ecs2::allocInfo_VFXREClientTextureData(v2);
      qword_1EE19E768 = v4;
      re::ecs2::initInfo_VFXREClientTextureData(v4, v5, v6, v7);
    }

    if ((byte_1EE19E71F & 1) == 0)
    {
      byte_1EE19E71F = 1;
      v8 = *(v4 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE19EA00, 0);
      qword_1EE19EA10 = 0x3000000007;
      dword_1EE19EA18 = v8;
      word_1EE19EA1C = 0;
      *&xmmword_1EE19EA20 = 0;
      *(&xmmword_1EE19EA20 + 1) = 0xFFFFFFFFLL;
      qword_1EE19EA30 = v3;
      qword_1EE19EA38 = 0;
      qword_1EE19EA40 = v4;
      qword_1EE19EA48 = 0;
      qword_1EE19EA00 = &unk_1F5CD39B0;
      re::IntrospectionRegistry::add(v9, v10);
      re::getPrettyTypeName(&v25, &qword_1EE19EA00);
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
        re::TypeBuilder::setConstructor(&v25, re::TypeBuilderHelper::registerHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v25, re::TypeBuilderHelper::registerHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v25, re::TypeBuilderHelper::registerHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v25, re::TypeBuilderHelper::registerHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v25, v18);
        re::StackScratchAllocator::~StackScratchAllocator(v27);
      }

      xmmword_1EE19EA20 = v19;
      if (v22)
      {
        if (v22)
        {
        }
      }
    }
  }
}

void *re::ecs2::allocInfo_VFXSceneComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE19E788, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E788))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19EC78, "VFXSceneComponent");
    __cxa_guard_release(&qword_1EE19E788);
  }

  return &unk_1EE19EC78;
}

void re::ecs2::initInfo_VFXSceneComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v68[0] = 0x24F9B15154932732;
  v68[1] = "VFXSceneComponent";
  if (v68[0])
  {
    if (v68[0])
    {
    }
  }

  *(this + 2) = v69;
  if ((atomic_load_explicit(&qword_1EE19E780, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E780))
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
    qword_1EE19EA50 = v14;
    v15 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>>::get(v15, v16);
    v17 = (*(*v15 + 32))(v15, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "m_bindingTable";
    *(v17 + 16) = &qword_1EE19E9B0;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x9800000002;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE19EA58 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_float(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "simulationRate";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x1F800000003;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE19EA60 = v21;
    v22 = re::introspectionAllocator();
    re::ecs2::introspect_VFXSimulationState(v22, v23);
    v24 = (*(*v22 + 32))(v22, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "simulationState";
    *(v24 + 16) = &qword_1EE19E968;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x20000000004;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE19EA68 = v24;
    v25 = re::introspectionAllocator();
    v27 = re::introspect_BOOL(1, v26);
    v28 = (*(*v25 + 32))(v25, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "explicitSimulationTime";
    *(v28 + 16) = v27;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0x13800000006;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE19EA70 = v28;
    v29 = re::introspectionAllocator();
    v31 = re::introspect_float(1, v30);
    v32 = (*(*v29 + 32))(v29, 72, 8);
    *v32 = 1;
    *(v32 + 8) = "totalSimulationTime";
    *(v32 + 16) = v31;
    *(v32 + 24) = 0;
    *(v32 + 32) = 0x13C00000007;
    *(v32 + 40) = 0;
    *(v32 + 48) = 0;
    *(v32 + 56) = 0;
    *(v32 + 64) = 0;
    qword_1EE19EA78 = v32;
    v33 = re::introspectionAllocator();
    v35 = re::introspect_float(1, v34);
    v36 = (*(*v33 + 32))(v33, 72, 8);
    *v36 = 1;
    *(v36 + 8) = "lastTickTotalSimulationTime";
    *(v36 + 16) = v35;
    *(v36 + 24) = 0;
    *(v36 + 32) = 0x14000000008;
    *(v36 + 40) = 0;
    *(v36 + 48) = 0;
    *(v36 + 56) = 0;
    *(v36 + 64) = 0;
    qword_1EE19EA80 = v36;
    v37 = re::introspectionAllocator();
    v39 = re::introspect_float(1, v38);
    v40 = (*(*v37 + 32))(v37, 72, 8);
    *v40 = 1;
    *(v40 + 8) = "sceneScale";
    *(v40 + 16) = v39;
    *(v40 + 24) = 0;
    *(v40 + 32) = 0x1FC00000009;
    *(v40 + 40) = 0;
    *(v40 + 48) = 0;
    *(v40 + 56) = 0;
    *(v40 + 64) = 0;
    qword_1EE19EA88 = v40;
    v41 = re::introspectionAllocator();
    v43 = re::introspect_uint32_t(1, v42);
    v44 = (*(*v41 + 32))(v41, 72, 8);
    *v44 = 1;
    *(v44 + 8) = "performResetVersion";
    *(v44 + 16) = v43;
    *(v44 + 24) = 0;
    *(v44 + 32) = 0x1440000000ALL;
    *(v44 + 40) = 0;
    *(v44 + 48) = 0;
    *(v44 + 56) = 0;
    *(v44 + 64) = 0;
    qword_1EE19EA90 = v44;
    v45 = re::introspectionAllocator();
    v47 = re::introspect_BOOL(1, v46);
    v48 = (*(*v45 + 32))(v45, 72, 8);
    *v48 = 1;
    *(v48 + 8) = "m_isInitialized";
    *(v48 + 16) = v47;
    *(v48 + 24) = 0;
    *(v48 + 32) = 0x12D0000000BLL;
    *(v48 + 40) = 0;
    *(v48 + 48) = 0;
    *(v48 + 56) = 0;
    *(v48 + 64) = 0;
    qword_1EE19EA98 = v48;
    v49 = re::introspectionAllocator();
    v51 = re::introspect_BOOL(1, v50);
    v52 = (*(*v49 + 32))(v49, 72, 8);
    *v52 = 1;
    *(v52 + 8) = "m_hasBindingToFetch";
    *(v52 + 16) = v51;
    *(v52 + 24) = 0;
    *(v52 + 32) = 0x12C0000000DLL;
    *(v52 + 40) = 0;
    *(v52 + 48) = 0;
    *(v52 + 56) = 0;
    *(v52 + 64) = 0;
    qword_1EE19EAA0 = v52;
    v53 = re::introspectionAllocator();
    v55 = re::introspect_uint64_t(1, v54);
    v56 = (*(*v53 + 32))(v53, 72, 8);
    *v56 = 1;
    *(v56 + 8) = "m_collidingPortalEntityId";
    *(v56 + 16) = v55;
    *(v56 + 24) = 0;
    *(v56 + 32) = 0x1500000000ELL;
    *(v56 + 40) = 0;
    *(v56 + 48) = 0;
    *(v56 + 56) = 0;
    *(v56 + 64) = 0;
    qword_1EE19EAA8 = v56;
    v57 = re::introspectionAllocator();
    v58 = re::introspect_Vector2F(1);
    v59 = (*(*v57 + 32))(v57, 72, 8);
    *v59 = 1;
    *(v59 + 8) = "m_collidingPortalPadding";
    *(v59 + 16) = v58;
    *(v59 + 24) = 0;
    *(v59 + 32) = 0x1580000000FLL;
    *(v59 + 40) = 0;
    *(v59 + 48) = 0;
    *(v59 + 56) = 0;
    *(v59 + 64) = 0;
    qword_1EE19EAB0 = v59;
    v60 = re::introspectionAllocator();
    v62 = re::introspect_uint64_t(1, v61);
    v63 = (*(*v60 + 32))(v60, 72, 8);
    *v63 = 1;
    *(v63 + 8) = "m_runningEffectId";
    *(v63 + 16) = v62;
    *(v63 + 24) = 0;
    *(v63 + 32) = 0x14800000010;
    *(v63 + 40) = 0;
    *(v63 + 48) = 0;
    *(v63 + 56) = 0;
    *(v63 + 64) = 0;
    qword_1EE19EAB8 = v63;
    v64 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>>::get(v64, v65);
    v66 = (*(*v64 + 32))(v64, 72, 8);
    *v66 = 1;
    *(v66 + 8) = "clientTextures";
    *(v66 + 16) = &qword_1EE19EA00;
    *(v66 + 24) = 0;
    *(v66 + 32) = 0x20800000011;
    *(v66 + 40) = 0;
    *(v66 + 48) = 0;
    *(v66 + 56) = 0;
    *(v66 + 64) = 0;
    qword_1EE19EAC0 = v66;
    __cxa_guard_release(&qword_1EE19E780);
  }

  *(this + 2) = 0x24000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 15;
  *(this + 8) = &qword_1EE19EA50;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VFXSceneComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VFXSceneComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VFXSceneComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VFXSceneComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs217VFXSceneComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v67 = v69;
}

void *re::ecs2::allocInfo_VFXSceneReadbackComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE19E798, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E798))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19ED08, "VFXSceneReadbackComponent");
    __cxa_guard_release(&qword_1EE19E798);
  }

  return &unk_1EE19ED08;
}

void re::ecs2::initInfo_VFXSceneReadbackComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v23[0] = 0xB776A00B8A58A138;
  v23[1] = "VFXSceneReadbackComponent";
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  *(this + 2) = v24;
  if ((atomic_load_explicit(&qword_1EE19E790, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E790))
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
    qword_1EE19E858 = v14;
    v15 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>>::get(v15, v16);
    v17 = (*(*v15 + 32))(v15, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "bindings";
    *(v17 + 16) = &qword_1EE19E9B0;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x2000000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE19E860 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_BOOL(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "hasBeenSyncedBack";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x5000000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE19E868 = v21;
    __cxa_guard_release(&qword_1EE19E790);
  }

  *(this + 2) = 0x5800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE19E858;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VFXSceneReadbackComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VFXSceneReadbackComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VFXSceneReadbackComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VFXSceneReadbackComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs225VFXSceneReadbackComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v22 = v24;
}

double re::internal::defaultConstruct<re::ecs2::VFXSceneReadbackComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD3B70;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v3 + 68) = 0x7FFFFFFFLL;
  *(v3 + 80) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::VFXSceneReadbackComponent>(uint64_t a1)
{
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD3B70;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v1 + 68) = 0x7FFFFFFFLL;
  *(v1 + 80) = 0;
  return result;
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::VFXREBindingDescriptor>>::get(re::ecs2 *a1)
{
  if ((atomic_load_explicit(&qword_1EE19E810, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE19E810);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE19E928);
      qword_1EE19E928 = &unk_1F5CD3A50;
      __cxa_guard_release(&qword_1EE19E810);
    }
  }

  if ((byte_1EE19E720 & 1) == 0)
  {
    v1 = qword_1EE19E738;
    if (qword_1EE19E738 || (v1 = re::ecs2::allocInfo_VFXREBindingDescriptor(a1), qword_1EE19E738 = v1, re::ecs2::initInfo_VFXREBindingDescriptor(v1, v2, v3, v4), (byte_1EE19E720 & 1) == 0))
    {
      byte_1EE19E720 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE19E928, 0);
      qword_1EE19E938 = 0x2800000003;
      dword_1EE19E940 = v5;
      word_1EE19E944 = 0;
      *&xmmword_1EE19E948 = 0;
      *(&xmmword_1EE19E948 + 1) = 0xFFFFFFFFLL;
      qword_1EE19E958 = v1;
      qword_1EE19E960 = 0;
      qword_1EE19E928 = &unk_1F5CD3A50;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE19E928);
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
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VFXREBindingDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VFXREBindingDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VFXREBindingDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VFXREBindingDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VFXREBindingDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VFXREBindingDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VFXREBindingDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VFXREBindingDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE19E948 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void *re::ecs2::allocInfo_VFXSceneMetadataComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE19E7A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E7A8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19ED98, "VFXSceneMetadataComponent");
    __cxa_guard_release(&qword_1EE19E7A8);
  }

  return &unk_1EE19ED98;
}

void re::ecs2::initInfo_VFXSceneMetadataComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v22[0] = 0x5FF980AED9C40254;
  v22[1] = "VFXSceneMetadataComponent";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(this + 2) = v23;
  if ((atomic_load_explicit(&qword_1EE19E7A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E7A0))
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
    qword_1EE19E870 = v14;
    v15 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::ecs2::VFXREBindingDescriptor>>::get(v15);
    v16 = (*(*v15 + 32))(v15, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "m_bindingDescriptors";
    *(v16 + 16) = &qword_1EE19E928;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x2000000001;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE19E878 = v16;
    v17 = re::introspectionAllocator();
    v19 = re::introspect_AssetHandle(1, v18);
    v20 = (*(*v17 + 32))(v17, 72, 8);
    *v20 = 1;
    *(v20 + 8) = "m_effect";
    *(v20 + 16) = v19;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0x4800000002;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    qword_1EE19E880 = v20;
    __cxa_guard_release(&qword_1EE19E7A0);
  }

  *(this + 2) = 0x6000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE19E870;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VFXSceneMetadataComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VFXSceneMetadataComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VFXSceneMetadataComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VFXSceneMetadataComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs225VFXSceneMetadataComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v21 = v23;
}

double re::internal::defaultConstruct<re::ecs2::VFXSceneMetadataComponent>(int a1, int a2, ArcSharedObject *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD3AE8;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0;
  result = 0.0;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::VFXSceneMetadataComponent>(ArcSharedObject *a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD3AE8;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
  *(v1 + 56) = 0;
  result = 0.0;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  return result;
}

void *re::ecs2::allocInfo_VFXSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE19E7B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E7B0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19EE28, "VFXSystem");
    __cxa_guard_release(&qword_1EE19E7B0);
  }

  return &unk_1EE19EE28;
}

void re::ecs2::initInfo_VFXSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x8911F46A97EELL;
  v8[1] = "VFXSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x1A000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_VFXSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VFXSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VFXSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::VFXSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::VFXSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VFXSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VFXSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

double re::internal::defaultConstruct<re::ecs2::VFXSystem>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v3 = re::ecs2::System::System(a3, 1, 1);
  *(v3 + 288) = 0;
  result = 0.0;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *v3 = &unk_1F5CD3720;
  *(v3 + 296) = 0;
  *(v3 + 304) = 0u;
  *(v3 + 320) = 0u;
  *(v3 + 336) = 0u;
  *(v3 + 352) = 0u;
  *(v3 + 368) = 0u;
  *(v3 + 384) = 0u;
  *(v3 + 400) = 0u;
  return result;
}

void re::internal::defaultDestruct<re::ecs2::VFXSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::AssetHandle::~AssetHandle((a3 + 392));

  re::ecs2::System::~System(a3);
}

double re::internal::defaultConstructV2<re::ecs2::VFXSystem>(_OWORD *a1)
{
  a1[24] = 0u;
  a1[25] = 0u;
  a1[22] = 0u;
  a1[23] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  v1 = re::ecs2::System::System(a1, 1, 1);
  *(v1 + 288) = 0;
  result = 0.0;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *v1 = &unk_1F5CD3720;
  *(v1 + 296) = 0;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0u;
  *(v1 + 336) = 0u;
  *(v1 + 352) = 0u;
  *(v1 + 368) = 0u;
  *(v1 + 384) = 0u;
  *(v1 + 400) = 0u;
  return result;
}

void re::internal::defaultDestructV2<re::ecs2::VFXSystem>(uint64_t a1)
{
  re::AssetHandle::~AssetHandle((a1 + 392));

  re::ecs2::System::~System(a1);
}

uint64_t re::ecs2::VFXSystem::onComponentUpdated(re::ecs2::VFXSystem *this, re::NetworkSystem *a2, re::ecs2::Component *a3)
{
  v4 = (*(*a3 + 40))(a3, a2);
  v5 = (*(*v4 + 48))(v4);
  v6 = &unk_1EE187000;
  while (1)
  {
    {
      v13 = v5;
      v6 = &unk_1EE187000;
      v11 = v10;
      v5 = v13;
      if (v11)
      {
        re::introspect<re::ecs2::VFXSceneComponent>(BOOL)::info = re::internal::getOrCreateInfo("VFXSceneComponent", re::ecs2::allocInfo_VFXSceneComponent, re::ecs2::initInfo_VFXSceneComponent, &re::internal::introspectionInfoStorage<re::ecs2::VFXSceneComponent>, 0);
        v6 = &unk_1EE187000;
        v5 = v13;
      }
    }

    if (v5 == v6[129])
    {
      break;
    }

    v7 = *(v5 + 56);
    if (v7)
    {
      for (i = *(v5 + 64); ; ++i)
      {
        v9 = *i;
        if (**i == 1 && v9[10] == 3)
        {
          break;
        }

        if (!--v7)
        {
          return 0;
        }
      }

      v5 = *(v9 + 2);
      if (v5)
      {
        continue;
      }
    }

    return 0;
  }

  re::ecs2::VFXSceneComponent::invalidateIfNeeded(a3);
  return 0;
}

void re::ecs2::VFXSceneComponent::invalidateIfNeeded(re::ecs2::VFXSceneComponent *this)
{
  if (*(this + 40))
  {
    return;
  }

  v2 = *(this + 12);
  if (!v2)
  {
    *(this + 40) = 1;
LABEL_11:
    v9 = *(this + 4);
    if (v9)
    {
      os_unfair_lock_lock((v9 + 40));
      *(v9 + 24) = 1;
      os_unfair_lock_unlock((v9 + 40));
      v10 = *(this + 4);
      if (v10)
      {

        *(this + 4) = 0;
      }
    }

    return;
  }

  v3 = *(this + 2);
  if (v3)
  {
    v4 = re::ecs2::EntityComponentCollection::getOrAdd((v3 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  }

  else
  {
    v4 = *(this + 38);
  }

  v5 = *(v4 + 80);
  if (v5)
  {
    v6 = *(v5 + 792);
  }

  else
  {
    v6 = 0;
  }

  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) >> 27));
  v8 = v6 ^ (v7 >> 31) ^ v7;
  *(this + 40) = v2 != v8;
  if (v2 != v8)
  {
    goto LABEL_11;
  }
}

void re::ecs2::VFXSystem::willAddSystemToECSService(re::ecs2::VFXSystem *this)
{
  v22 = *MEMORY[0x1E69E9840];
  re::ecs2::RenderingSubsystem::willAddSystemToECSService(this);
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 38) = re::ServiceLocator::serviceOrNull<re::ecs2::ClippingService>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 39) = re::ServiceLocator::serviceOrNull<re::ecs2::OpacityService>(v3);
  v4 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 40) = re::ServiceLocator::serviceOrNull<re::ecs2::OcclusionService>(v4);
  v5 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 41) = re::ServiceLocator::serviceOrNull<re::ecs2::EnvironmentLightingService>(v5);
  v6 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 42) = re::ServiceLocator::serviceOrNull<re::ecs2::ImageBasedLightService>(v6);
  v7 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 43) = re::ServiceLocator::serviceOrNull<re::ecs2::VisualProxyScopeService>(v7);
  v8 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 44) = re::ServiceLocator::serviceOrNull<re::ecs2::DepthMitigationStateService>(v8);
  v9 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 45) = re::ServiceLocator::serviceOrNull<re::ecs2::RenderPassGroupService>(v9);
  v10 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 46) = re::ServiceLocator::serviceOrNull<re::ecs2::VisualDepthCustomMaterialService>(v10);
  v11 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 47) = re::ServiceLocator::serviceOrNull<re::ecs2::LightService>(v11);
  v12 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 48) = re::ServiceLocator::serviceOrNull<re::SimulationTimer>(v12);
  (*(**(this + 30) + 8))(&v19);
  v13 = *(this + 392);
  *(this + 392) = v19;
  v19 = v13;
  v14 = *(this + 51);
  *(this + 51) = v20;
  v20 = v14;
  re::AssetHandle::~AssetHandle(&v19);
  v15 = *(this + 50);
  if (!v15 || (v16 = atomic_load((v15 + 896)), v16 != 2))
  {
    re::AssetHandle::loadAsync((this + 392));
  }

  v17 = (*(**(this + 5) + 32))(*(this + 5));
  v18 = re::ServiceLocator::serviceOrNull<re::NetworkSystem>(v17);
  if (v18)
  {
    if ((*(this + 296) & 1) == 0)
    {
      *&v19 = this;
      *(&v19 + 1) = re::ecs2::VFXSystem::onComponentUpdated;
      v20 = 0;
      v21 = re::Event<re::NetworkSystem,re::ecs2::Component *>::createSubscription<re::ecs2::VFXSystem>(re::ecs2::VFXSystem *,REEventHandlerResult (re::ecs2::VFXSystem::*)(re::NetworkSystem*,re::ecs2::Component *))::{lambda(re::NetworkSystem*,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription const&,re::ecs2::Component *&&)#1}::__invoke;
      re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription(v18 + 88, &v19);
      *(this + 296) = 1;
    }
  }
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::ClippingService>(uint64_t a1)
{
  {
    re::introspect<re::ecs2::ClippingService>(BOOL)::info = re::ecs2::introspect_ClippingService(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::ecs2::ClippingService>(BOOL)::info;
  re::StringID::invalid(&v11);
  v3 = (*(*a1 + 16))(a1, v2, &v11);
  v4 = v3;
  if (v11)
  {
    if (v11)
    {
    }
  }

  return v4;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::OpacityService>(uint64_t a1)
{
  {
    re::introspect<re::ecs2::OpacityService>(BOOL)::info = re::ecs2::introspect_OpacityService(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::ecs2::OpacityService>(BOOL)::info;
  re::StringID::invalid(&v11);
  v3 = (*(*a1 + 16))(a1, v2, &v11);
  v4 = v3;
  if (v11)
  {
    if (v11)
    {
    }
  }

  return v4;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::OcclusionService>(uint64_t a1)
{
  {
    re::introspect<re::ecs2::OcclusionService>(BOOL)::info = re::ecs2::introspect_OcclusionService(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::ecs2::OcclusionService>(BOOL)::info;
  re::StringID::invalid(&v11);
  v3 = (*(*a1 + 16))(a1, v2, &v11);
  v4 = v3;
  if (v11)
  {
    if (v11)
    {
    }
  }

  return v4;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::EnvironmentLightingService>(uint64_t a1)
{
  {
    re::introspect<re::ecs2::EnvironmentLightingService>(BOOL)::info = re::ecs2::introspect_EnvironmentLightingService(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::ecs2::EnvironmentLightingService>(BOOL)::info;
  re::StringID::invalid(&v11);
  v3 = (*(*a1 + 16))(a1, v2, &v11);
  v4 = v3;
  if (v11)
  {
    if (v11)
    {
    }
  }

  return v4;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::ImageBasedLightService>(uint64_t a1)
{
  {
    re::introspect<re::ecs2::ImageBasedLightService>(BOOL)::info = re::ecs2::introspect_ImageBasedLightService(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::ecs2::ImageBasedLightService>(BOOL)::info;
  re::StringID::invalid(&v11);
  v3 = (*(*a1 + 16))(a1, v2, &v11);
  v4 = v3;
  if (v11)
  {
    if (v11)
    {
    }
  }

  return v4;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::VisualProxyScopeService>(uint64_t a1)
{
  {
    re::introspect<re::ecs2::VisualProxyScopeService>(BOOL)::info = re::ecs2::introspect_VisualProxyScopeService(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::ecs2::VisualProxyScopeService>(BOOL)::info;
  re::StringID::invalid(&v11);
  v3 = (*(*a1 + 16))(a1, v2, &v11);
  v4 = v3;
  if (v11)
  {
    if (v11)
    {
    }
  }

  return v4;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::DepthMitigationStateService>(uint64_t a1)
{
  {
    re::introspect<re::ecs2::DepthMitigationStateService>(BOOL)::info = re::ecs2::introspect_DepthMitigationStateService(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::ecs2::DepthMitigationStateService>(BOOL)::info;
  re::StringID::invalid(&v11);
  v3 = (*(*a1 + 16))(a1, v2, &v11);
  v4 = v3;
  if (v11)
  {
    if (v11)
    {
    }
  }

  return v4;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::RenderPassGroupService>(uint64_t a1)
{
  {
    re::introspect<re::ecs2::RenderPassGroupService>(BOOL)::info = re::ecs2::introspect_RenderPassGroupService(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::ecs2::RenderPassGroupService>(BOOL)::info;
  re::StringID::invalid(&v11);
  v3 = (*(*a1 + 16))(a1, v2, &v11);
  v4 = v3;
  if (v11)
  {
    if (v11)
    {
    }
  }

  return v4;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::VisualDepthCustomMaterialService>(uint64_t a1)
{
  {
    re::introspect<re::ecs2::VisualDepthCustomMaterialService>(BOOL)::info = re::ecs2::introspect_VisualDepthCustomMaterialService(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::ecs2::VisualDepthCustomMaterialService>(BOOL)::info;
  re::StringID::invalid(&v11);
  v3 = (*(*a1 + 16))(a1, v2, &v11);
  v4 = v3;
  if (v11)
  {
    if (v11)
    {
    }
  }

  return v4;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::LightService>(uint64_t a1)
{
  {
    re::introspect<re::ecs2::LightService>(BOOL)::info = re::ecs2::introspect_LightService(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::ecs2::LightService>(BOOL)::info;
  re::StringID::invalid(&v11);
  v3 = (*(*a1 + 16))(a1, v2, &v11);
  v4 = v3;
  if (v11)
  {
    if (v11)
    {
    }
  }

  return v4;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::SimulationTimer>(uint64_t a1)
{
  {
    re::introspect<re::SimulationTimer>(BOOL)::info = re::introspect_SimulationTimer(0);
  }

  v2 = re::introspect<re::SimulationTimer>(BOOL)::info;
  re::StringID::invalid(&v6);
  v3 = (*(*a1 + 16))(a1, v2, &v6);
  v4 = v3;
  if (v6)
  {
    if (v6)
    {
    }
  }

  return v4;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::NetworkSystem>(uint64_t a1)
{
  {
    re::introspect<re::NetworkSystem>(BOOL)::info = re::introspect_NetworkSystem(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::NetworkSystem>(BOOL)::info;
  re::StringID::invalid(&v11);
  v3 = (*(*a1 + 16))(a1, v2, &v11);
  v4 = v3;
  if (v11)
  {
    if (v11)
    {
    }
  }

  return v4;
}

double re::ecs2::VFXSystem::willRemoveSystemFromECSService(re::ecs2::VFXSystem *this)
{
  v13 = *MEMORY[0x1E69E9840];
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 19) = 0u;
  v2 = *(this + 392);
  v3 = *(this + 51);
  *(this + 50) = 0;
  *(this + 51) = 0;
  *(this + 48) = 0;
  *(this + 49) = 0;
  *v11 = v2;
  *&v11[16] = v3;
  re::AssetHandle::~AssetHandle(v11);
  v4 = (*(**(this + 5) + 32))(*(this + 5));
  v5 = re::ServiceLocator::serviceOrNull<re::NetworkSystem>(v4);
  if (v5)
  {
    if (*(this + 296) == 1)
    {
      v6 = v5;
      if (*(v5 + 46))
      {
        v7 = 0;
        do
        {
          v8 = (*(v6 + 48) + 32 * v7);
          if (*v8 == this)
          {
            if (!*(v6 + 108))
            {
              re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt(v6 + 44, v7);
              continue;
            }

            v11[0] = 0;
            v9 = *v8;
            v12 = *(v8 + 1);
            *&v11[8] = v9;
            re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v6 + 392), v11);
          }

          ++v7;
        }

        while (v7 < *(v6 + 46));
      }
    }
  }

  *(this + 36) = 0;
  result = 0.0;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  return result;
}

void re::ecs2::VFXSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 224) || ((*(**(a1 + 40) + 216))(*(a1 + 40)) & 1) != 0 || (*(*(a1 + 224) + 432) & 0x10) == 0)
  {
    return;
  }

  v5 = re::AssetHandle::loadedAsset<re::TextureAsset>((a1 + 392));
  if (!v5)
  {
    re::AssetHandle::loadAsync((a1 + 392));
    return;
  }

  v6 = v5;
  v7 = *(*(a1 + 232) + 24);
  if (!re::MaterialManager::findTextureTableByName(v7, "VFXTextureTable"))
  {
    TextureTableForName = re::MaterialManager::createTextureTableForName(v7, "VFXTextureTable");
    v16 = 0xC10C601B47401E3;
    if (*(v6 + 120))
    {
LABEL_20:
      v15 = std::__throw_bad_variant_access[abi:nn200100]();
      re::ecs2::VFXSystem::updateSceneForRenderInternal(v15);
      return;
    }

    re::TextureTable::setTexture(TextureTableForName, &v16, (v6 + 112));
  }

  v10 = *(a1 + 232);
  if (!v10)
  {
    re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) ", "m_renderManager", "update", 787);
    _os_crash("assertion failure: (m_renderManager) ");
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(a3 + 200);
  if (v11)
  {
    v12 = *(a3 + 216);
    v13 = 8 * v11;
    do
    {
      v12 += 8;
      re::ecs2::VFXSystem::updateSceneForRenderInternal(a1);
      v13 -= 8;
    }

    while (v13);
    v10 = *(a1 + 232);
  }

  v14 = *(v10 + 72);
  if (v14)
  {

    re::VFXManager::doRemoveEffects(v14);
  }
}

void re::ecs2::VFXSystem::updateSceneForRenderInternal(uint64_t a1)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v653 = *MEMORY[0x1E69E9840];
  if (!v3)
  {
    return;
  }

  v6 = v4;
  v7 = v3;
  v445 = v2;
  v8 = *(v2 + 272);
  if (v8)
  {
    v1 = (*(*v8 + 16))(v8, v5);
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  v464 = 0;
  v462 = 0;
  v461[0] = 0;
  v461[1] = 0;
  v463 = 0;
  v10 = re::ecs2::SceneComponentTable::get((v7 + 200), re::ecs2::ComponentImpl<re::ecs2::VFXSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v10)
  {
    v11 = *(v10 + 400);
    v12 = *(v10 + 384);
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  isRuntimeReady = re::ecs2::SceneComponentTable::get((v7 + 200), re::ecs2::ComponentImpl<re::ecs2::VFXEmitterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (isRuntimeReady)
  {
    v14 = *(isRuntimeReady + 400);
    v15 = *(isRuntimeReady + 384);
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v437 = v7;
  v16 = v15 + v12;
  if (v15 + v12)
  {
    isRuntimeReady = re::DynamicArray<re::RigNodeConstraint>::setCapacity(v461, v16);
  }

  if (v12)
  {
    v17 = 8 * v12;
    do
    {
      v18 = *v11;
      if (*v11)
      {
        LOBYTE(__src[0]) = v9;
        if (!v9 || (__src[1] = v1, isRuntimeReady = re::ecs2::RenderOptions::forEntity(&__src[1], *(v18 + 16)), *isRuntimeReady == 1))
        {
          __dst[0].i64[0] = v18;
          __dst[0].i64[1] = v18;
          isRuntimeReady = re::ecs2::VFXSystem::isRuntimeReady(v445, v18, v18);
          if (isRuntimeReady)
          {
            re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(v461, __dst);
          }
        }
      }

      ++v11;
      v17 -= 8;
    }

    while (v17);
  }

  if (v15)
  {
    v19 = 8 * v15;
    while (1)
    {
      v20 = *v14;
      if (*v14)
      {
        v21 = *(v20 + 32);
        if (v21)
        {
          __dst[0].i8[0] = v9;
          if (!v9)
          {
            goto LABEL_28;
          }

          __dst[0].i64[1] = v1;
          isRuntimeReady = re::ecs2::RenderOptions::forEntity(&__dst[0].u32[2], *(v20 + 16));
          if (*isRuntimeReady == 1)
          {
            break;
          }
        }
      }

LABEL_30:
      ++v14;
      v19 -= 8;
      if (!v19)
      {
        goto LABEL_31;
      }
    }

    v21 = *(v20 + 32);
LABEL_28:
    v479.n128_u64[0] = v20;
    v479.n128_u64[1] = v21;
    isRuntimeReady = re::ecs2::VFXSystem::isRuntimeReady(v445, v20, v21);
    if (isRuntimeReady)
    {
      re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(v461, &v479);
    }

    goto LABEL_30;
  }

LABEL_31:
  v22 = v462;
  if (!v462)
  {
    goto LABEL_448;
  }

  if (!*(v445 + 232))
  {
LABEL_453:
    re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) ", "m_renderManager", "updateSceneForRenderInternal", 1009);
    _os_crash("assertion failure: (m_renderManager) ");
    __break(1u);
LABEL_454:
    v535[0].i64[0] = 0;
    memset(__dst, 0, 80);
    v401 = MEMORY[0x1E69E9C10];
    v402 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v651 = 136315906;
    *&v651[4] = "operator[]";
    *&v651[12] = 1024;
    if (v402)
    {
      v403 = 3;
    }

    else
    {
      v403 = 2;
    }

    *&v651[14] = 866;
    *&v651[18] = 2048;
    *&v651[20] = 0;
    *&v651[28] = 2048;
    *&v651[30] = 0;
    _os_log_send_and_compose_impl(v403, v535, __dst, 80, &dword_1E1C61000, v401, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v651, 38, v404, v405);
    _os_crash_msg();
    __break(1u);
  }

  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(isRuntimeReady);
  if (isStatisticCollectionEnabled)
  {
    v425 = re::profilerThreadContext(isStatisticCollectionEnabled);
    if (*(v425 + 152))
    {
      v420 = mach_absolute_time();
    }
  }

  else
  {
    v425 = 0;
  }

  v24 = re::ecs2::SceneComponentTable::get((v7 + 200), re::ecs2::ComponentImpl<re::ecs2::VFXSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v24)
  {
    v25 = *(v24 + 384);
  }

  else
  {
    v25 = 0;
  }

  v26 = re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v460, 3103, v445, v25, 0, 0);
  v27 = re::ProfilerConfig::isStatisticCollectionEnabled(v26);
  if (v27)
  {
    v30 = re::profilerThreadContext(v27);
    v31 = re::ecs2::SceneComponentTable::get((v7 + 200), re::ecs2::ComponentImpl<re::ecs2::VFXSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v32 = v31 ? *(v31 + 384) : 0;
    v33 = *(v30 + 152);
    if (v33)
    {
      v34 = v33[1200].u64[0];
      if (v34 >= v32)
      {
        v34 = v32;
      }

      v33[1200].i64[0] = v34;
      v35 = v33[1200].u64[1];
      if (v35 <= v32)
      {
        v35 = v32;
      }

      v33[1200].i64[1] = v35;
      v36 = vdupq_n_s64(1uLL);
      v36.i64[0] = v32;
      v33[1201] = vaddq_s64(v33[1201], v36);
      *(v30 + 184) = 0;
    }
  }

  v37 = *(*(v445 + 232) + 112);
  if (v37)
  {
    v38 = re::RenderFrameBox::get((v37 + 328), 0xFFFFFFFFFFFFFFFuLL);
  }

  else
  {
    v38 = 0;
  }

  v39 = *(v445 + 384);
  if (v39)
  {
    (*(*v39 + 56))(v39);
  }

  else
  {
    v40 = v6;
  }

  v427 = v40;
  v41 = *(v445 + 232);
  v42 = *(v41 + 9);
  if (!v42)
  {
    goto LABEL_440;
  }

  v43 = *(v38 + 384) & 0xFFFFFFFFFFFFFFFLL;
  if (*(v42 + 216) != v43)
  {
    v44 = *(v38 + 400) & 0xFFFFFFFFFFFFFFFLL;
    if (*(v42 + 224) == v44)
    {
      v40 = v40 + *(v42 + 208);
    }

    *(v42 + 208) = v40;
    *(v42 + 216) = v43;
    *(v42 + 224) = v44;
  }

  v426 = v38;
  v45 = re::RenderManager::perFrameAllocator(v41);
  v459 = (*(**(v445 + 256) + 24))(*(v445 + 256));
  v46 = (*(*v459 + 16))(v459);
  if (*(v46 + 124))
  {
    v47 = *(v46 + 124);
  }

  else
  {
    v47 = *(v46 + 16);
  }

  v451 = 0u;
  v452 = 0u;
  v453 = 0;
  v454 = 0x7FFFFFFFLL;
  re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(&v451, v45, v47 + 1);
  v457 = 0;
  v455 = 0u;
  v456 = 0u;
  v458 = 0x7FFFFFFFLL;
  memset(__src, 0, 36);
  *(&__src[4] + 4) = 0x7FFFFFFF;
  re::HashTable<unsigned long long,unsigned int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(__src, v45, v47 + 1);
  v49 = v464;
  v50 = &v464[2 * v22];
  v51 = v464;
  do
  {
    (*(*v459 + 8))(__dst);
    if (__dst[0].i8[0])
    {
      v52 = __dst[0].u64[1];
    }

    else
    {
      v52 = 0;
    }

    v53 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v52 ^ (v52 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v52 ^ (v52 >> 30))) >> 27));
    v54 = v53 ^ (v53 >> 31);
    if (!__src[0])
    {
      LODWORD(v55) = 0;
LABEL_74:
      v57 = re::HashTable<unsigned long long,unsigned int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(__src, v55, v54);
      *(v57 + 16) = 0;
      v58 = (v57 + 16);
      *(v58 - 1) = v52;
      ++LODWORD(__src[5]);
      goto LABEL_76;
    }

    v55 = v54 % LODWORD(__src[3]);
    v56 = *(__src[1] + v55);
    if (v56 == 0x7FFFFFFF)
    {
      goto LABEL_74;
    }

    while (*(__src[2] + 4 * v56 + 1) != v52)
    {
      v56 = *(__src[2] + 8 * v56) & 0x7FFFFFFF;
      if (v56 == 0x7FFFFFFF)
      {
        goto LABEL_74;
      }
    }

    v58 = __src[2] + 32 * v56 + 16;
LABEL_76:
    ++*v58;
    v49 += 2;
  }

  while (v49 != v50);
  v59 = __src[4];
  if (LODWORD(__src[4]))
  {
    v60 = 0;
    v61 = __src[2];
    while (1)
    {
      v62 = *v61;
      v61 += 8;
      if (v62 < 0)
      {
        break;
      }

      if (LODWORD(__src[4]) == ++v60)
      {
        LODWORD(v60) = __src[4];
        break;
      }
    }
  }

  else
  {
    LODWORD(v60) = 0;
  }

  if (v60 != LODWORD(__src[4]))
  {
    v63 = __src[2];
    do
    {
      v64 = &v63[32 * v60];
      v65 = *(v64 + 4);
      __dst[1].i64[0] = 0;
      __dst[1].i32[2] = 0;
      __dst[2].i64[0] = 0;
      __dst[0] = v45;
      re::DynamicArray<re::VFXScene>::setCapacity(__dst, v65);
      ++__dst[1].i32[2];
      v66 = re::DynamicArray<re::VFXScene>::deinit(__dst);
      memset(__dst, 0, 36);
      *(__dst[2].i64 + 4) = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(&v455, v64 + 1, __dst);
      re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(__dst);
      if (LODWORD(__src[4]) <= (v60 + 1))
      {
        v67 = v60 + 1;
      }

      else
      {
        v67 = __src[4];
      }

      v63 = __src[2];
      while (v67 - 1 != v60)
      {
        LODWORD(v60) = v60 + 1;
        if ((*(__src[2] + 8 * v60) & 0x80000000) != 0)
        {
          goto LABEL_94;
        }
      }

      LODWORD(v60) = v67;
LABEL_94:
      ;
    }

    while (v60 != v59);
    v51 = v464;
    v22 = v462;
  }

  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(__src);
  if (v22)
  {
    v448 = &v51[2 * v22];
    do
    {
      v450 = v51;
      v68 = v51[1];
      v69 = *(v68 + 448);
      if (v69)
      {
        v70 = *(v68 + 48);
        v71 = [v70 effect];
        if (v71)
        {
          v72 = [v70 scene];
          __src[0] = MEMORY[0x1E69E9820];
          __src[1] = 3221225472;
          __src[2] = ___ZN2re4ecs217VFXSceneComponent10LegacyImpl22writeBindingsToRuntimeERS1__block_invoke;
          __src[3] = &unk_1E871C070;
          __src[5] = v69;
          *&v584 = v68;
          __src[4] = v71;
          [v72 performTransaction:__src];
        }
      }

      else
      {
        v70 = [*(v68 + 64) scene];
        __dst[0].i64[0] = MEMORY[0x1E69E9820];
        __dst[0].i64[1] = 3221225472;
        __dst[1].i64[0] = ___ZN2re4ecs217VFXSceneComponent22writeBindingsToRuntimeEv_block_invoke;
        __dst[1].i64[1] = &__block_descriptor_40_e5_v8__0l;
        __dst[2].i64[0] = v68;
        [v70 performTransaction:__dst];
      }

      v73 = *(v68 + 16);
      if (v73 && *(v68 + 300) == 1)
      {
        v74 = *(v68 + 448);
        if (v74)
        {
          v75 = *(v68 + 48);
          v76 = [v75 effect];
          if (v76)
          {
            v77 = *(v68 + 16);
            if (v77)
            {
              v78 = re::ecs2::EntityComponentCollection::get((v77 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneReadbackComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
              if (v78)
              {
                v79 = v78;
                v80 = [v75 scene];
                __src[0] = MEMORY[0x1E69E9820];
                __src[1] = 3221225472;
                __src[2] = ___ZN2re4ecs217VFXSceneComponent10LegacyImpl23readBindingsFromRuntimeERS1__block_invoke;
                __src[3] = &unk_1E871C150;
                __src[5] = v74;
                *&v584 = v68;
                *(&v584 + 1) = v79;
                __src[4] = v76;
                [v80 performTransaction:__src];

                *(v79 + 80) = 0;
                v81 = *(*(v68 + 16) + 216);
                if (v81)
                {
                  re::ecs2::NetworkComponent::markDirty(v81, v79);
                }
              }
            }
          }
        }

        else
        {
          v82 = re::ecs2::EntityComponentCollection::get((v73 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneReadbackComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          if (v82)
          {
            v83 = v82;
            v84 = *(v68 + 16);
            if (v84)
            {
              v85 = re::ecs2::EntityComponentCollection::getOrAdd((v84 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
            }

            else
            {
              v85 = *(v68 + 304);
            }

            v86 = *(v68 + 64);
            v87 = [v86 presentationScene];
            __dst[0].i64[0] = MEMORY[0x1E69E9820];
            __dst[0].i64[1] = 3221225472;
            __dst[1].i64[0] = ___ZN2re4ecs217VFXSceneComponent23readBindingsFromRuntimeEv_block_invoke;
            __dst[1].i64[1] = &__block_descriptor_56_e5_v8__0l;
            __dst[2].i64[0] = v68;
            __dst[2].i64[1] = v83;
            __dst[3].i64[0] = v85;
            [v87 performTransaction:__dst];

            *(v83 + 80) = 0;
            v88 = *(*(v68 + 16) + 216);
            if (v88)
            {
              re::ecs2::NetworkComponent::markDirty(v88, v83);
            }
          }
        }
      }

      if (!*(v68 + 448))
      {
        v89 = *(v68 + 552);
        if (v89)
        {
          v90 = 0;
          v91 = *(v68 + 536);
          do
          {
            v92 = *v91;
            v91 += 22;
            if (v92 < 0)
            {
              goto LABEL_156;
            }

            ++v90;
          }

          while (v89 != v90);
          LODWORD(v90) = *(v68 + 552);
        }

        else
        {
          LODWORD(v90) = 0;
        }

        while (1)
        {
LABEL_156:
          if (v90 == v89)
          {
            goto LABEL_157;
          }

          v93 = *(v68 + 536) + 88 * v90;
          v96 = *(v93 + 8);
          v95 = v93 + 8;
          v94 = v96;
          v97 = *(v95 + 64);
          v98 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v96 ^ (v96 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v96 ^ (v96 >> 30))) >> 27));
          v99 = v98 ^ (v98 >> 31);
          re::HashTable<long long,re::ecs2::VFXSceneComponent::ClientRuntimeTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::findEntry<long long>(__src, v68 + 456, v96, v99);
          if (HIDWORD(__src[1]) != 0x7FFFFFFF)
          {
            break;
          }

          memset(__src, 0, 24);
          re::HashTable<long long,re::ecs2::VFXSceneComponent::ClientRuntimeTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::findEntry<long long>(__src, v68 + 456, v94, v99);
          if (HIDWORD(__src[1]) == 0x7FFFFFFF)
          {
            v100 = re::HashTable<long long,re::ecs2::VFXSceneComponent::ClientRuntimeTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::allocEntry(v68 + 456, __src[1], __src[0]);
            v101 = *v95;
            *(v100 + 16) = 0u;
            v102 = v100 + 16;
            *(v100 + 8) = v101;
            *(v100 + 32) = 0u;
            ++*(v68 + 496);
          }

          else
          {
            v102 = *(v68 + 472) + 56 * HIDWORD(__src[1]) + 16;
          }

          *v102 = -1;
          if (*(v95 + 16))
          {
            v103 = *(v95 + 24);
          }

          else
          {
            v103 = v95 + 17;
          }

          v104 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v103];
          re::ecs2::VFXSceneComponent::findClientTextureAssetNode(__src, v68, v104);
          v105 = __src[0];

          if (v105)
          {
            re::ObjCObject::operator=((v102 + 16), v105);

LABEL_137:
            v106 = *(v95 + 48);
            if (v106)
            {
              v107 = atomic_load((v106 + 896));
              if (v107 != 1)
              {
                v108 = *(v95 + 48);
                if (v108 && (v109 = atomic_load((v108 + 896)), v109 == 2))
                {
                  v110 = re::AssetHandle::loadedAsset<re::TextureAsset>((v95 + 40));
                  if (v110)
                  {
                    re::TextureHandle::metalTexture(__src, (v110 + 8));
                    v111 = __src[0];
                    v112 = __src[0];
                    v113 = v111;
                    v114 = v113;
                    if (v113)
                    {
                    }

                    if (*(v102 + 24) != v114)
                    {
                      objc_storeStrong((v102 + 24), v111);
                      v115 = [*(v102 + 16) asset];
                      [v115 setTexture:v114];
                    }

                    *v102 = v97;
                  }
                }

                else
                {
                  re::AssetHandle::loadAsync((v95 + 40));
                }
              }
            }

            else if (*v102 != v97)
            {
              *v102 = v97;
              v116 = *(v102 + 24);
              *(v102 + 24) = 0;

              v117 = [*(v102 + 16) asset];
              [v117 setTexture:0];
            }
          }

          v118 = *(v68 + 552);
          if (v118 <= v90 + 1)
          {
            v118 = v90 + 1;
          }

          while (v118 - 1 != v90)
          {
            LODWORD(v90) = v90 + 1;
            if ((*(*(v68 + 536) + 88 * v90) & 0x80000000) != 0)
            {
              goto LABEL_156;
            }
          }

          LODWORD(v90) = v118;
        }

        v102 = *(v68 + 472) + 56 * HIDWORD(__src[1]) + 16;
        goto LABEL_137;
      }

LABEL_157:
      v51 = v450 + 2;
    }

    while (v450 + 2 != v448);
    v119 = v445;
    if (v462)
    {
      v120 = v464;
      v121 = &v464[2 * v462];
      v122.i64[0] = 0x7F0000007FLL;
      v122.i64[1] = 0x7F0000007FLL;
      v431 = vnegq_f32(v122);
      __asm { FMOV            V8.2S, #1.0 }

      v127 = -1.5708;
      v128 = vrsqrte_f32(1065353216);
      v129 = vmul_f32(v128, vrsqrts_f32(1065353216, vmul_f32(v128, v128)));
      LODWORD(v410) = vmul_f32(v129, vrsqrts_f32(1065353216, vmul_f32(v129, v129))).u32[0];
      v130 = vmulq_n_f32(xmmword_1E3047670, v410);
      LODWORD(v412) = vmulq_f32(v130, v130).u32[0];
      v131 = vmuls_lane_f32(v130.f32[1], *v130.f32, 1);
      v132 = vmuls_lane_f32(v130.f32[2], v130, 2);
      v419 = v130;
      v411 = vmuls_lane_f32(v130.f32[1], v130, 2);
      v430 = v121;
      while (2)
      {
        v133 = *v120;
        v134 = v120[1];
        v440 = re::RenderManager::perFrameAllocator(*(v119 + 232));
        v531 = 0;
        v135 = *(v119 + 272);
        if (v135)
        {
          v136 = (*(*v135 + 16))(v135);
          v531 = 1;
          v532 = v136;
        }

        v137 = *(v133 + 16);
        v530 = v137;
        v138 = *(v119 + 288);
        v522 = xmmword_1E3047670;
        v523 = xmmword_1E3047680;
        v524 = xmmword_1E30476A0;
        v525 = xmmword_1E30474D0;
        v526 = xmmword_1E3047670;
        v527 = xmmword_1E3047680;
        v528 = xmmword_1E30476A0;
        v529 = xmmword_1E30474D0;
        re::TransformService::worldMatrixForRendering(&v526, v138, v137, 1);
        v139 = re::ecs2::TransformComponent::rootAnchorComponent(v137);
        if (v139)
        {
          v140 = v139[4];
          v522 = v139[3];
          v523 = v140;
          v141 = v139[6];
          v524 = v139[5];
          v525 = v141;
        }

        (*(*v459 + 8))(__src);
        if (LOBYTE(__src[0]))
        {
          v142 = __src[1];
        }

        else
        {
          v142 = 0;
        }

        v143 = HIDWORD(__src[1]);
        if (HIDWORD(__src[1]) == 0x7FFFFFFF)
        {
          goto LABEL_388;
        }

        v144 = v452;
        v584 = 0u;
        memset(__src, 0, sizeof(__src));
        v585 = 0u;
        v586 = v431;
        *&v145 = 0x7F0000007FLL;
        *(&v145 + 1) = 0x7F0000007FLL;
        v587 = v145;
        v603[80] = 0;
        v603[96] = 0;
        v604 = 0u;
        v588 = 0u;
        v589 = 0u;
        v590 = 0u;
        v591 = 0u;
        v592 = 0u;
        v593 = 0u;
        v594 = 0u;
        v595 = 0u;
        v596 = 0u;
        v597 = 0u;
        v598 = 0;
        memset(v603, 0, 76);
        v601 = 0u;
        v602 = 0u;
        v599 = 0u;
        v600 = 0u;
        if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
        {
          dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
        }

        v605 = re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash;
        v146 = v144 + (v143 << 6);
        v606 = _D8;
        v607 = 1065353216;
        v608 = 0u;
        memset(v609, 0, sizeof(v609));
        v610 = 0xFFFFFFFF00000001;
        v611 = 0;
        v612 = 0;
        v613 = 0;
        v614 = 0;
        v615 = 65537;
        v616 = 1;
        v617 = xmmword_1E3060D60;
        v618 = 16788070;
        v620 = 0;
        v619 = 0;
        v621 = 0;
        v622 = 0;
        v623 = 0;
        v624 = 0u;
        v625 = 0u;
        v626 = 0u;
        v627 = 0u;
        v628 = 0u;
        v629 = 0u;
        v630 = 0u;
        memset(v631, 0, sizeof(v631));
        v633 = 0;
        v634 = 0;
        v632 = 0;
        v635 = 1;
        v636 = 0;
        v637 = 0;
        v638 = 0;
        v639 = 1;
        re::DynamicArray<re::VFXScene>::add(v146 + 16, __src);
        if (v633)
        {
          v147 = v635;
          if ((v635 & 1) == 0)
          {
            (*(*v633 + 40))();
            v147 = v635;
          }

          v633 = 0;
          v634 = 0;
          v635 = (v147 | 1) + 2;
        }

        v447 = v142;
        v436 = v120;

        re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v603[8]);
        v148 = *(v146 + 48) + (*(v146 + 32) << 10);
        v149 = v522;
        v150 = v523;
        v151 = v525;
        *(v148 - 160) = v524;
        *(v148 - 144) = v151;
        *(v148 - 192) = v149;
        *(v148 - 176) = v150;
        v152 = v526;
        v153 = v527;
        v154 = v529;
        *(v148 - 224) = v528;
        *(v148 - 208) = v154;
        *(v148 - 256) = v152;
        *(v148 - 240) = v153;
        objc_storeStrong((v148 - 272), *(v134 + 48));
        v449 = v134;
        *(v148 - 280) = *(v134 + 80);
        v155 = v530;
        v156 = *(v530 + 39);
        *(v148 - 512) = v156;
        v157 = *(v445 + 232);
        __src[0] = 0;
        LODWORD(__src[1]) = 0;
        v158 = *(v157 + 3);
        if (re::MaterialManager::entityHasSystemMaterialParameterBlock(v158, v156))
        {
          v159 = re::MaterialManager::getOrAddSystemMaterialParameterBlock(v158, v156);
          if (re::DynamicInlineArray<__CVBuffer *,2ul>::ensureCapacity(__src, v160))
          {
            v161 = __src[0];
            __src[__src[0] + 2] = v159;
            __src[0] = v161 + 1;
            ++LODWORD(__src[1]);
          }
        }

        v162 = *(v445 + 336);
        if (v162)
        {
          v163 = (*(*v162 + 24))(*(v445 + 336), v7);
        }

        else
        {
          v534 = 0u;
          memset(v533, 0, sizeof(v533));
          v163 = v533;
          DWORD1(v534) = 0x7FFFFFFF;
        }

        __dst[0].i64[0] = v155;
        v164 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v163, __dst);
        if (v164)
        {
          v165 = re::ecs2::EntityHandle::resolve((*v164 + 32), v7);
          if (v165)
          {
            v166 = re::ecs2::EntityComponentCollection::get((v165 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            if (v166)
            {
              v168 = v166;
              if (*(v166 + 152) == 1)
              {
                if (re::DynamicInlineArray<__CVBuffer *,2ul>::ensureCapacity(__src, v167))
                {
                  v169 = __src[0];
                  __src[__src[0] + 2] = (v168 + 160);
                  __src[0] = v169 + 1;
                  ++LODWORD(__src[1]);
                }
              }
            }
          }
        }

        v170 = re::RenderManager::perFrameAllocator(v157);
        if (__src[0])
        {
          v171 = v449;
          if (__src[0] == 1)
          {
            v170 = re::MaterialParameterBlock::deltaSynchronizedMaterialParameterTable(__src[2], v170);
          }

          else
          {
            v170 = re::MaterialParameterBlock::copyParametersFromArray(v170, &__src[2], __src[0]);
          }

          v172 = v170;
          if (!v162)
          {
LABEL_193:
            re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v533);
          }
        }

        else
        {
          v172 = 0;
          v171 = v449;
          if (!v162)
          {
            goto LABEL_193;
          }
        }

        *(v148 - 680) = v172;
        if (*(v171 + 56))
        {
        }

        else
        {
        }

        *(v148 - 744) = v173;
        *(v148 - 736) = v174;
        v175 = *(v445 + 344);
        __src[0] = v530;
        if (v175 && (v176 = (*(*v175 + 16))(v175), (v177 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v176, __src)) != 0))
        {
          v178 = *v177;
        }

        else
        {
          v178 = 1;
        }

        *(v148 - 500) = v178;
        v179 = *(v171 + 56);
        v180 = v171;
        v181 = (v148 - 896);
        if (v179)
        {
          *v181 = xmmword_1E3047670;
          *(v148 - 880) = xmmword_1E3047680;
          *(v148 - 864) = xmmword_1E30476A0;
          *(v148 - 848) = xmmword_1E30474D0;
          v182 = *(v180 + 6);
          if (v182)
          {
            [v182 worldBoundingBox];
            v183.i32[3] = 0;
            v184 = vminnmq_f32(v183, xmmword_1E306D4A0);
            v185.i32[3] = 0;
            v186 = vmaxnmq_f32(v185, xmmword_1E306D4B0);
          }

          else
          {
            v186.i64[0] = 0x7F0000007FLL;
            v186.i64[1] = 0x7F0000007FLL;
            v184 = vnegq_f32(v186);
          }

          *(v148 - 944) = v184;
          *(v148 - 928) = v186;
        }

        else
        {
          v187 = v526;
          v188 = v527;
          v189 = v529;
          *(v148 - 864) = v528;
          *(v148 - 848) = v189;
          *v181 = v187;
          *(v148 - 880) = v188;
          v190 = *(v180 + 6);
          v191 = [v190 presentationNode];
          [v191 boundingBox];
          v441 = v192;
          v446 = v193;

          v194 = v441;
          v194.i32[3] = 0;
          v195 = v446;
          v195.i32[3] = 0;
          *(v148 - 944) = vminnmq_f32(v194, xmmword_1E306D4A0);
          *(v148 - 928) = vmaxnmq_f32(v195, xmmword_1E306D4B0);
        }

        v196 = re::ecs2::MeshComponentHelper::clippingDataForMeshScene(v530, (v148 - 944), (v148 - 896), *(v445 + 304));
        *(v148 - 14) = BYTE5(v196);
        *(v148 - 608) = v196;
        v197 = *(v445 + 312);
        if (v197)
        {
          v198 = (*(*v197 + 24))(v197, v530);
          v200 = v199;
        }

        else
        {
          v200 = 0;
          v198 = 1065353216;
        }

        v201 = (v148 - 552);
        *(v148 - 552) = v198;
        v202 = re::ecs2::EntityComponentCollection::get((v530 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        if (v202)
        {
          *(v148 - 584) = *(v202 + 25);
          *(v148 - 576) = *(v202 + 320);
        }

        if (v531 == 1)
        {
          v203 = re::ecs2::RenderOptions::forEntity(&v532, v530);
          LOWORD(__src[0]) = *v203;
          BYTE2(__src[0]) = v203[2];
          if (BYTE2(__src[0]) == 1)
          {
            BYTE3(__src[0]) = v203[3];
          }

          BYTE4(__src[0]) = v203[4];
          if (BYTE4(__src[0]) == 1)
          {
            BYTE5(__src[0]) = v203[5];
          }

          BYTE6(__src[0]) = v203[6];
          if (BYTE6(__src[0]) == 1)
          {
            HIBYTE(__src[0]) = v203[7];
          }

          LOBYTE(__src[1]) = v203[8];
          v204 = *(v203 + 9);
          BYTE3(__src[1]) = v203[11];
          *(&__src[1] + 1) = v204;
          BYTE4(__src[1]) = v203[12];
          if (BYTE4(__src[1]) == 1)
          {
            BYTE5(__src[1]) = v203[13];
          }

          BYTE6(__src[1]) = v203[14];
          if (BYTE6(__src[1]) == 1)
          {
            HIBYTE(__src[1]) = v203[15];
          }

          LOBYTE(__src[2]) = v203[16];
          if (LOBYTE(__src[2]) == 1)
          {
            BYTE1(__src[2]) = v203[17];
          }

          BYTE2(__src[2]) = v203[18];
          if (BYTE2(__src[2]) == 1)
          {
            BYTE3(__src[2]) = v203[19];
          }

          BYTE4(__src[2]) = v203[20];
          if (BYTE4(__src[2]) == 1)
          {
            HIWORD(__src[2]) = *(v203 + 11);
          }

          v205 = *(v203 + 6);
          BYTE4(__src[3]) = v203[28];
          LODWORD(__src[3]) = v205;
          *(v148 - 520) = re::HierarchicalMeshOverrideFlags::flattenToOverrideFlags((__src + 2));
        }

        v206 = *(v445 + 376);
        if (v206)
        {
          LOWORD(v206) = (*(*v206 + 24))(v206, v530);
        }

        *(v148 - 504) = v206;
        v207 = (*(**(v445 + 360) + 16))(*(v445 + 360));
        v208 = re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(v207, &v530);
        if (v208)
        {
          v209 = *v208;
          v210 = *(v208 + 8);
        }

        else
        {
          v210 = 0;
          v209 = 0;
        }

        __dst[0].i64[0] = &v455;
        __dst[0].i64[1] = v447;
        *__src = xmmword_1E3047670;
        *&__src[2] = xmmword_1E3047680;
        *&__src[4] = xmmword_1E30476A0;
        v584 = xmmword_1E30474D0;
        __dst[1].i64[0] = v148 - 944;
        __dst[1].i64[1] = __src;
        v442 = v200;
        __dst[2].i64[0] = v200;
        v438 = v209;
        __dst[2].i64[1] = v209;
        v211 = v210 & 1;
        __dst[3].i16[0] = v210 & 1;
        v212 = re::ecs2::MeshComponentHelper::addRenderPassGroupBoundsTable(__dst);
        v213 = *(*(v445 + 232) + 352);
        if (v213)
        {
          (*(*v213 + 40))(__src, v213, v212);
          (*(*v213 + 32))(__dst, v213);
          v214 = __src[0];
          if (__src[0])
          {
            _ZF = __dst[0].i64[0] == 0;
          }

          else
          {
            _ZF = 1;
          }

          v216 = !_ZF;
          v434 = v216;
          if (__dst[0].i64[0])
          {

            v214 = __src[0];
          }

          if (v214)
          {
          }
        }

        else
        {
          v434 = 0;
        }

        if ((atomic_load_explicit(&qword_1EE19E7E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E7E8))
        {
          re::Defaults::BOOLValue(__src, "VisualDepthCustomMaterial.enforceVisualDepthCustomMaterial", v374);
          if (LOBYTE(__src[0]))
          {
            v375 = BYTE1(__src[0]);
          }

          else
          {
            v375 = 1;
          }

          byte_1EE19E71C = v375;
          __cxa_guard_release(&qword_1EE19E7E8);
        }

        if (byte_1EE19E71C == 1)
        {
          v217 = *(v445 + 368);
          if (v217)
          {
            v433 = (*(*v217 + 32))(v217, v530);
          }

          else
          {
            v433 = 0;
          }
        }

        else
        {
          v433 = 1;
        }

        v218 = *(v445 + 320);
        if (v218)
        {
          (*(*v218 + 40))(__src);
          v219 = 1;
          *(__dst[1].i64 + 4) = 1;
          __dst[1].i16[6] = 0;
          v220 = (__src + 4);
          if (!LOBYTE(__src[0]))
          {
            v220 = __dst;
          }

          v221 = v220[1];
          v520 = *v220;
          v521 = v221;
          v222 = *(v445 + 320);
          if (v222)
          {
            __src[0] = v437;
            __src[1] = &v459;
            __src[2] = v530;
            __src[3] = (v148 - 896);
            __src[4] = (v148 - 944);
            (*(*v222 + 48))(__dst);
            v223 = __dst[0].i8[2];
            if (!__dst[0].i8[0])
            {
              v223 = 0;
            }

            v432 = v223;
            v435 = __dst[0].i8[0] & __dst[0].i8[1];
            v224 = __dst[0].i8[0] & __dst[0].i8[3];
            if (__dst[0].i8[5])
            {
              v219 = __dst[0].i8[0] ^ 1;
            }

            else
            {
              v219 = 1;
            }

            v225 = __dst[0].i8[0] & __dst[0].i8[4];
          }

          else
          {
            v224 = 0;
            v432 = 0;
            v435 = 0;
            v225 = 0;
          }
        }

        else
        {
          v224 = 0;
          v432 = 0;
          v435 = 0;
          v225 = 0;
          v219 = 1;
          *(v521.i64 + 4) = 1;
          v521.i16[6] = 0;
        }

        _S14 = v521.i32[2];
        re::ecs2::OcclusionStateMachine::getOcclusionTransitionFactor(&v520);
        v228 = v227;
        re::ecs2::OcclusionStateMachine::getDepthMitigationTransitionFactor(&v520);
        v230 = v229;
        re::ecs2::OcclusionStateMachine::getSceneUnderstandingTransitionFactor(&v520);
        if (v219)
        {
          v232 = v231;
          v233 = v521.i8[12];
          __asm { FCVT            H14, S14 }

          re::ecs2::OcclusionStateMachine::getOcclusionEntityReactivateTransitionFactor(&v520);
          *v201 = v235 * *v201;
          *(v148 - 324) = v230;
          *(v148 - 320) = v232;
          *(v148 - 316) = v228;
          *(v148 - 312) = _H14;
          *(v148 - 310) = v435;
          *(v148 - 305) = v224;
          *(v148 - 304) = v225;
          *(v148 - 306) = v233;
          v236 = re::ecs2::MeshComponentHelper::depthMitigationMaskForMeshScene(v530, *(v445 + 352));
          v237 = re::ecs2::MeshComponentHelper::environmentLightingWeightForMeshScene(v530, *(v445 + 328));
          v238 = *(v445 + 336);
          v429 = v236;
          if (v238 && (v239 = (*(*v238 + 24))(v238, v437), (v240 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v239, &v530)) != 0) && (v241 = re::ecs2::EntityHandle::resolve((*v240 + 32), v437)) != 0)
          {
            v428 = re::ecs2::EntityComponentCollection::get((v241 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          }

          else
          {
            v428 = 0;
          }

          v243 = *(v148 - 516);
          v244 = *(v148 - 520);
          if (v521.i32[1] == 1)
          {
            v245 = re::ecs2::MeshComponentHelper::techniqueMappingOverlayNameHashForMeshScene((HIDWORD(v196) & 1), *v201);
          }

          else
          {
            if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
            {
              dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
            }

            v245 = re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash;
          }

          *(v148 - 560) = v245;
          v246 = *(v449 + 126);
          if ((*(v148 - 124) & 1) == 0)
          {
            *(v148 - 124) = 1;
          }

          *(v148 - 120) = v246;
          *(v148 - 16) = *(v449 + 512) == 0;
          *(v148 - 128) = v427;
          v247 = *(v449 + 81);
          if (v247 != *(v449 + 74))
          {
            *(v148 - 15) = 1;
            *(v449 + 74) = v247;
          }

          v248 = 0;
          *(v449 + 312) = 0;
          v517 = 0;
          if (!*(v445 + 256) || *(v530 + 28))
          {
            v119 = v445;
          }

          else
          {
            v119 = v445;
            if ((((v244 ^ 0x180197E) & ~v243 | v244 & v243) & 0x80) != 0)
            {
              v249 = *(v445 + 360);
              v479.n128_u64[0] = 0;
              v479.n128_u64[1] = v249;
              v480 = *(v445 + 304);
              v481 = 0;
              v482 = *(v445 + 312);
              v483 = v440;
              v484 = v437;
              v485 = &v459;
              v486 = v530;
              v487 = 0u;
              memset(v488, 0, 25);
              memset(&v488[32], 0, 153);
              memset(&v488[192], 0, 80);
              v250 = *(v148 - 680);
              v490 = 0;
              v491 = 0;
              v489 = v250;
              v492 = v148 - 944;
              v493 = 0;
              v494 = v148 - 896;
              v495 = *v201;
              v496 = v442;
              v497 = 1065353216;
              v498 = *(v148 - 500);
              v478[0] = 0;
              v478[1] = &str_67;
              v499 = v438;
              v500 = v478;
              v501 = *(v426 + 48);
              v502 = (v244 ^ 0x180197E) & ~v243 | v244 & v243;
              v503 = *(v148 - 520);
              v504 = 0;
              v505 = *(v148 - 584);
              v506 = v148 - 576;
              v507 = 0;
              v508 = 0;
              v509 = 0;
              v510 = v211;
              v512 = 0;
              v511 = 0;
              v513 = 1065353216;
              v514 = 0x1000000;
              v515 = 0;
              v516 = &v455;
              v251 = (*(*v459 + 40))(v459, v447);
              v443 = *(v251 + 32);
              if (v443)
              {
                v253 = 0;
                v254 = (*(v251 + 16) + 8);
                while (1)
                {
                  v255 = *v254;
                  v254 += 6;
                  if (v255 < 0)
                  {
                    break;
                  }

                  if (v443 == ++v253)
                  {
                    LODWORD(v253) = *(v251 + 32);
                    break;
                  }
                }
              }

              else
              {
                LODWORD(v253) = 0;
              }

              if (v253 != v443)
              {
                v256 = *(v251 + 16);
                v439 = v251;
                while (2)
                {
                  v257 = *(v256 + 24 * v253 + 16);
                  if (!v257)
                  {
                    re::internal::assertLog(4, v252, "assertion failure: '%s' (%s:line %i) ", "referencingPortalComponent != nullptr", "processVFXSceneComponent", 1428);
                    _os_crash("assertion failure: (referencingPortalComponent != nullptr) ");
                    __break(1u);
                    goto LABEL_453;
                  }

                  (*(*v459 + 8))(__src);
                  if (LOBYTE(__src[0]))
                  {
                    v258 = __src[1];
                  }

                  else
                  {
                    v258 = 0;
                  }

                  v477 = v258;
                  memset(&__src[1], 0, 20);
                  __src[4] = 0;
                  __src[0] = v440;
                  re::DynamicArray<re::VFXScene>::setCapacity(__src, 1uLL);
                  ++LODWORD(__src[3]);
                  re::DynamicArray<re::VFXScene>::deinit(__src);
                  v640[0] = *(v257 + 16);
                  v640[1] = v258;
                  v260 = *(v257 + 112);
                  v641 = *(v257 + 96);
                  v642 = v260;
                  v444 = v257;
                  v643 = *(v257 + 129);
                  v644 = 0;
                  v645 = &v517;
                  v646 = 0;
                  re::ecs2::MeshComponentHelper::generateSceneForPortalCrossing(&v479, v640, *(v445 + 288), __src);
                  if (__src[2])
                  {
                    v262 = &__src[4];
                  }

                  else
                  {
                    v262 = __src[5];
                  }

                  if (__src[1])
                  {
                    v263 = 0;
                    v264 = 736 * __src[1];
                    do
                    {
                      if (*(v449 + 56))
                      {
                      }

                      else
                      {
                      }

                      v267 = &v262[v263 / 8];
                      v267[35] = v265;
                      v267[36] = v266;
                      memcpy(__dst, &v262[v263 / 8], sizeof(__dst));
                      v539 = 0u;
                      v540 = 0u;
                      v537 = 0u;
                      v538 = 0u;
                      *(&v540 + 1) = v262[v263 / 8 + 51];
                      v267[51] = 0;
                      *&v537 = v262[v263 / 8 + 44];
                      v267[44] = 0;
                      v268 = *(&v537 + 1);
                      *(&v537 + 1) = v262[v263 / 8 + 45];
                      v267[45] = v268;
                      *&v538 = v262[v263 / 8 + 46];
                      v267[46] = 0;
                      v269 = *(&v539 + 1);
                      *(&v539 + 1) = v262[v263 / 8 + 49];
                      v267[49] = v269;
                      v270 = v540;
                      *&v540 = v262[v263 / 8 + 50];
                      v267[50] = v270;
                      v271 = *(&v538 + 1);
                      *(&v538 + 1) = v262[v263 / 8 + 47];
                      v267[47] = v271;
                      v272 = v539;
                      *&v539 = v262[v263 / 8 + 48];
                      v267[48] = v272;
                      v541 = v262[v263 / 8 + 52];
                      v542 = v262[v263 / 8 + 53];
                      if (v542 == 1)
                      {
                        v543 = v267[54];
                      }

                      v273 = *(v267 + 57);
                      v544 = *(v267 + 55);
                      v545 = v273;
                      v274 = *(v267 + 59);
                      v275 = *(v267 + 61);
                      v276 = *(v267 + 63);
                      *(v548 + 13) = *(v267 + 517);
                      v547 = v275;
                      v548[0] = v276;
                      v546 = v274;
                      v549 = *(v267 + 544);
                      if (v549 == 1)
                      {
                        v277 = *&v262[v263 / 8 + 72];
                        v550 = *&v262[v263 / 8 + 70];
                        v551 = v277;
                      }

                      v278 = &v262[v263 / 8];
                      v552 = v262[v263 / 8 + 74];
                      v553 = v262[v263 / 8 + 76];
                      if (v553 == 1)
                      {
                        v279 = *(v278 + 39);
                        v280 = *(v278 + 40);
                        v281 = *(v278 + 42);
                        v556 = *(v278 + 41);
                        v557 = v281;
                        v554 = v279;
                        v555 = v280;
                      }

                      v282 = *(v278 + 43);
                      v283 = *(v278 + 44);
                      v560 = *(v278 + 360);
                      v558 = v282;
                      v559 = v283;
                      v561 = *(v148 - 288);
                      v562 = *(v148 - 272);
                      v284 = *(v148 - 208);
                      v286 = *(v148 - 256);
                      v285 = *(v148 - 240);
                      v565 = *(v148 - 224);
                      v566 = v284;
                      v563 = v286;
                      v564 = v285;
                      v287 = *(v148 - 192);
                      v288 = *(v148 - 176);
                      v289 = *(v148 - 144);
                      v569 = *(v148 - 160);
                      v570 = v289;
                      v567 = v287;
                      v568 = v288;
                      v571 = *(v148 - 128);
                      v572 = *(v148 - 124);
                      if (v572 == 1)
                      {
                        v573 = *(v148 - 120);
                      }

                      v574 = *(v148 - 112);
                      re::DynamicOverflowArray<unsigned short,8ul>::DynamicOverflowArray(v575, (v148 - 104));
                      v577 = *(v148 - 64);
                      if (v577 == 1)
                      {
                        v290 = *(v148 - 32);
                        v578 = *(v148 - 48);
                        v579 = v290;
                      }

                      v580 = *(v148 - 16);
                      v581 = *(v148 - 14);
                      v582 = 0;
                      re::DynamicArray<re::VFXScene>::add(v259, __dst);
                      if (v575[0])
                      {
                        v291 = v576;
                        if ((v576 & 1) == 0)
                        {
                          (*(*v575[0] + 40))();
                          v291 = v576;
                        }

                        v575[0] = 0;
                        v575[1] = 0;
                        v576 = (v291 | 1) + 2;
                      }

                      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v537);
                      v263 += 736;
                    }

                    while (v264 != v263);
                  }

                  v292 = *(v444 + 16);
                  if (!v292)
                  {
                    goto LABEL_367;
                  }

                  v293 = *(v449 + 42);
                  if (v293 != *(v292 + 312))
                  {
                    if (!v293)
                    {
                      v300 = *(v449 + 45);
                      if (v300)
                      {
                        re::ecs2::VFXSceneComponent::removeCollisionPlane(v449, v300);
                        *(v449 + 22) = 0u;
                        *(v449 + 23) = 0u;
                        *(v449 + 24) = xmmword_1E3047670;
                        *(v449 + 25) = xmmword_1E3047680;
                        *(v449 + 26) = xmmword_1E30476A0;
                        *(v449 + 27) = xmmword_1E30474D0;
                      }
                    }

                    goto LABEL_367;
                  }

                  v294 = *(v292 + 192);
                  if (!v294)
                  {
                    goto LABEL_367;
                  }

                  v295 = *(v445 + 288);
                  re::ecs2::MeshComponent::updateStaticBoundingBoxData(*(v292 + 192), *(v294 + 16), 0);
                  v297 = *(v294 + 304);
                  if (!v297)
                  {
                    goto LABEL_367;
                  }

                  v298 = *(v297 + 128);
                  if (v298 > 1)
                  {
                    goto LABEL_367;
                  }

                  v647 = *(v297 + 104);
                  if (!v298)
                  {
                    goto LABEL_454;
                  }

                  v299 = (*(v297 + 136) & 1) != 0 ? (v297 + 144) : *(v297 + 152);
                  v301 = (*(&v647 & 0xFFFFFFFFFFFFFFF7 | (8 * (*v299 & 1))) + ((16 * *v299) & 0xFFFFFFFE0));
                  v302 = vsubq_f32(v301[1], *v301);
                  v302.i32[3] = 0;
                  v303 = vmaxnmq_f32(v302, 0);
                  v296.i32[0] = v303.i32[1];
                  if (*v303.i32 != 0.0 && *&v303.i32[1] != 0.0 && *&v303.i32[2] != 0.0)
                  {
                    goto LABEL_367;
                  }

                  v304 = *&v303.i32[2] == 0.0 ? *v303.i32 : *&v303.i32[2];
                  v305 = *(v449 + 344);
                  v306 = *(v444 + 112);
                  v307 = vmulq_f32(v306, xmmword_1E3047670);
                  v308 = vmulq_f32(v306, xmmword_1E3047680);
                  v309 = vadd_f32(vzip1_s32(*v307.i8, *v308.i8), vzip2_s32(*v307.i8, *v308.i8));
                  v310 = vextq_s8(v307, v307, 8uLL);
                  *v310.f32 = vadd_f32(vzip1_s32(*v310.f32, *&vextq_s8(v308, v308, 8uLL)), v309);
                  v311 = vceqz_f32(*v310.f32);
                  v312 = vmulq_f32(v306, xmmword_1E30476A0);
                  v313 = v312.f32[2] + vaddv_f32(*v312.f32);
                  v314 = (v311.i8[4] & 1) != 0 ? v313 == 0.0 : v311.i8[0] & (v313 == 0.0);
                  if (!v314 && (v311.i8[0] & v311.i8[4] & 1) == 0)
                  {
                    goto LABEL_367;
                  }

                  v647 = xmmword_1E3047670;
                  v648 = xmmword_1E3047680;
                  v649 = xmmword_1E30476A0;
                  v650 = xmmword_1E30474D0;
                  if (v311.i8[0] & v311.i8[4])
                  {
                    v315 = v313 > 0.0;
                    v316 = v313 < 0.0;
                    v317 = v419;
                    v318 = vmuls_lane_f32(v317.f32[0], *v317.f32, 1);
                    v319 = vmuls_lane_f32(v317.f32[0], v317, 2);
                    v421 = v303;
                    v413 = v304;
                    v416 = v296;
                    v320 = __sincosf_stret((v315 - v316) * v127);
                    v323.f32[0] = vmuls_lane_f32(v320.__sinval, *v419.f32, 1);
                    v321 = vmuls_lane_f32(v320.__sinval, v419, 2);
                    v322.i32[3] = 0;
                    v322.f32[0] = v412 + (v320.__cosval * (1.0 - v412));
                    v303 = v421;
                    v322.f32[1] = v321 + (v318 * (1.0 - v320.__cosval));
                    v322.f32[2] = -(v323.f32[0] - (v319 * (1.0 - v320.__cosval)));
                    v310.i32[3] = 0;
                    v310.f32[0] = -(v321 - (v318 * (1.0 - v320.__cosval)));
                    v310.f32[1] = v131 + (v320.__cosval * (1.0 - v131));
                    v310.f32[2] = (v320.__sinval * v419.f32[0]) + (v411 * (1.0 - v320.__cosval));
                    v323.i32[3] = 0;
                    v323.f32[0] = v323.f32[0] + (v319 * (1.0 - v320.__cosval));
                    v304 = v413;
                    v296 = v416;
                    v323.f32[1] = -((v320.__sinval * v419.f32[0]) - (v411 * (1.0 - v320.__cosval)));
                    v324 = v132 + (v320.__cosval * (1.0 - v132));
                    goto LABEL_347;
                  }

                  if ((v311.i8[0] & (v313 == 0.0)) != 0)
                  {
                    v406 = vmulq_n_f32(xmmword_1E3047670, v410);
                    v407 = vmulq_f32(v406, v406).f32[0];
                    v325 = vmuls_lane_f32(v406.f32[1], *v406.f32, 1);
                    v408 = v131;
                    v326 = v132;
                    v327 = vmuls_lane_f32(v406.f32[0], *v406.f32, 1);
                    v328 = v127;
                    v329 = vmuls_lane_f32(v406.f32[0], v406, 2);
                    v409 = _D8;
                    v330 = vmuls_lane_f32(v406.f32[1], v406, 2);
                    v422 = v303;
                    v414 = v304;
                    v417 = v296;
                    v331 = __sincosf_stret(((__PAIR64__(v310.f32[1] > 0.0, v310.u32[1]) - COERCE_UNSIGNED_INT(0.0)) >> 32) * -3.1416);
                    v323.f32[0] = vmuls_lane_f32(v331.__sinval, *v406.f32, 1);
                    v332 = vmuls_lane_f32(v331.__sinval, v406, 2);
                    v333 = -(v332 - (v327 * (1.0 - v331.__cosval)));
                    *&v334 = v323.f32[0] + (v329 * (1.0 - v331.__cosval));
                    v335 = v332 + (v327 * (1.0 - v331.__cosval));
                    v132 = v326;
                    *&v336 = -((v331.__sinval * v406.f32[0]) - (v330 * (1.0 - v331.__cosval)));
                    v323.f32[0] = -(v323.f32[0] - (v329 * (1.0 - v331.__cosval)));
                    v127 = v328;
                    v322.f32[0] = v407 + (v331.__cosval * (1.0 - v407));
                    v303 = v422;
                    *&v337 = (v331.__sinval * v406.f32[0]) + (v330 * (1.0 - v331.__cosval));
                    _D8 = v409;
                    v322.f32[1] = v335;
                    v322.i64[1] = v323.u32[0];
                    v310.f32[0] = v333;
                    v310.f32[1] = v325 + (v331.__cosval * (1.0 - v325));
                    v310.i64[1] = v337;
                    v338 = vmuls_lane_f32(v406.f32[2], v406, 2);
                    v131 = v408;
                    v323.i32[3] = 0;
                    v323.i64[0] = __PAIR64__(v336, v334);
                    v304 = v414;
                    v296 = v417;
                    v324 = v338 + (v331.__cosval * (1.0 - v338));
LABEL_347:
                    v323.f32[2] = v324;
                    v647 = v322;
                    v648 = v310;
                    v649 = v323;
                  }

                  else if ((v311.i8[4] & (v313 == 0.0)) != 0)
                  {
                    __dst[0].i64[0] = 0;
                    __dst[0].i64[1] = 1065353216;
                    v424 = v303;
                    v415 = v304;
                    v418 = v296;
                    re::Matrix4x4<float>::makeRotation(__dst, &v647, ((__PAIR64__(v310.f32[0] > 0.0, v310.u32[0]) - COERCE_UNSIGNED_INT(0.0)) >> 32) * 1.5708);
                    v304 = v415;
                    v296 = v418;
                    v303 = v424;
                  }

                  v310.i64[0] = 0;
                  v339.i64[0] = LODWORD(v304);
                  v339.i64[1] = __PAIR64__(v303.u32[3], v303.u32[1]);
                  v340 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v296, v310)), 0), v339, v303);
                  v341 = vextq_s8(v340, v340, 8uLL);
                  *v341.i8 = vsub_f32(vzip1_s32(*v340.i8, *v341.i8), v305);
                  v423 = vtrn2q_s32(vrev64q_s32(vzip1q_s32(v341, v340)), v340);
                  re::TransformService::worldMatrixForRendering(v535, v295, *(v444 + 16), 1);
                  v342 = 0;
                  v343 = v535[0];
                  v344 = v535[1];
                  v345 = v535[2];
                  v346 = v535[3];
                  *v651 = v647;
                  *&v651[16] = v648;
                  *&v651[32] = v649;
                  v652 = v650;
                  do
                  {
                    __dst[v342 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v343, COERCE_FLOAT(*&v651[v342])), v344, *&v651[v342], 1), v345, *&v651[v342], 2), v346, *&v651[v342], 3);
                    v342 += 16;
                  }

                  while (v342 != 64);
                  v347 = *__dst[0].i64;
                  v348 = *__dst[1].i64;
                  v349 = *__dst[2].i64;
                  v350 = *__dst[3].i64;
                  v647 = __dst[0];
                  v648 = __dst[1];
                  v649 = __dst[2];
                  v650 = __dst[3];
                  if (*(v449 + 44) == *(v292 + 312))
                  {
                    v351 = vceqq_f32(*(v449 + 23), v423);
                    v351.i32[3] = v351.i32[2];
                    if ((vminvq_u32(v351) & 0x80000000) != 0 && (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(v449 + 25), __dst[1]), vceqq_f32(*(v449 + 24), __dst[0])), vandq_s8(vceqq_f32(*(v449 + 26), __dst[2]), vceqq_f32(*(v449 + 27), __dst[3])))) & 0x80000000) != 0)
                    {
                      goto LABEL_367;
                    }

                    re::ecs2::VFXSceneComponent::updateCollisionPlane(v449, *(v449 + 45), *v423.i64, *__dst[0].i64, *__dst[1].i64, *__dst[2].i64, *__dst[3].i64);
                  }

                  else
                  {
                    v352 = *(v449 + 45);
                    if (v352)
                    {
                      re::ecs2::VFXSceneComponent::removeCollisionPlane(v449, v352);
                      v347 = *v647.i64;
                      v348 = *v648.i64;
                      v349 = *v649.i64;
                      v350 = *v650.i64;
                    }

                    v353 = *(v449 + 56);
                    if (v353)
                    {
                      v354 = re::ecs2::VFXSceneComponent::LegacyImpl::addCollisionPlane(*v423.i64, v347, v348, v349, v350, v353, v449);
                    }

                    else
                    {
                      v354 = [*(v449 + 9) addCollisionPlaneWithExtents:*v423.i64 transform:?];
                    }

                    v355 = v354;
                    *(v449 + 45) = v354;
                    if (*(v449 + 56))
                    {
                      v356 = *(v449 + 6);
                      if (v356)
                      {
                        [v356 collideOutsidePlaneWithId:v355];
                      }
                    }

                    else
                    {
                      [*(v449 + 9) updateCollisionPlane:v354 collideOutsideExtents:1];
                    }

                    *(v449 + 44) = *(v292 + 312);
                  }

                  v357 = v647;
                  v358 = v648;
                  *(v449 + 23) = v423;
                  *(v449 + 24) = v357;
                  v359 = v649;
                  v360 = v650;
                  *(v449 + 25) = v358;
                  *(v449 + 26) = v359;
                  *(v449 + 27) = v360;
LABEL_367:
                  re::DynamicOverflowArray<re::MeshScene,2ul>::deinit(__src);
                  v251 = v439;
                  v361 = *(v439 + 8);
                  v256 = *(v439 + 2);
                  if (v361 <= v253 + 1)
                  {
                    v361 = v253 + 1;
                  }

                  while (v361 - 1 != v253)
                  {
                    LODWORD(v253) = v253 + 1;
                    if ((*(v256 + 24 * v253 + 8) & 0x80000000) != 0)
                    {
                      goto LABEL_373;
                    }
                  }

                  LODWORD(v253) = v361;
LABEL_373:
                  if (v253 == v443)
                  {
                    break;
                  }

                  continue;
                }
              }

              if (v478[0])
              {
                if (v478[0])
                {
                }
              }

              v119 = v445;
              if (v517)
              {
                *(&__src[1] + 7) = v518;
                *(&__src[3] + 7) = v519;
                if (*(v148 - 480))
                {
                  v362 = (v148 - 464);
                  v363 = v519;
                  *v362 = v518;
                  v362[1] = v363;
                }

                else
                {
                  *(v148 - 480) = 1;
                  v364 = (v148 - 464);
                  *v364 = *(&__src[1] + 7);
                  v364[1] = *(&__src[3] + 7);
                }

                *(v148 - 432) = 0;
                v248 = 1;
              }

              else
              {
                v248 = 0;
              }
            }
          }

          v465[1] = 0;
          v465[2] = 0;
          v465[0] = v530;
          v465[3] = v428;
          v466 = 0;
          v467 = v429;
          v468 = v434 & (v433 | v432 & 1);
          v469 = v432 & 1;
          v470 = v435;
          v471 = 0;
          v472 = 0;
          v473 = v237;
          v474 = v248;
          if (v248)
          {
            v475 = 2;
          }

          v476 = v440;
          re::ecs2::MeshComponentHelper::dynamicFunctionConstantsForMeshScene(v465, __src);
          v365 = (v148 - 672);
          v7 = v437;
          v120 = v436;
          v121 = v430;
          if ((v148 - 672) != __src)
          {
            v366 = *(v148 - 616);
            *(v148 - 616) = *(&v584 + 1);
            *(&v584 + 1) = v366;
            v367 = *v365;
            *v365 = __src[0];
            __src[0] = v367;
            v368 = *(v148 - 664);
            *(v148 - 664) = __src[1];
            __src[1] = v368;
            v369 = *(v148 - 656);
            *(v148 - 656) = __src[2];
            __src[2] = v369;
            v370 = *(v148 - 632);
            *(v148 - 632) = __src[5];
            __src[5] = v370;
            v371 = *(v148 - 624);
            *(v148 - 624) = v584;
            *&v584 = v371;
            v372 = *(v148 - 648);
            *(v148 - 648) = __src[3];
            __src[3] = v372;
            v373 = *(v148 - 640);
            *(v148 - 640) = __src[4];
            __src[4] = v373;
          }

          re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(__src);
        }

        else
        {
          v242 = *(v146 + 48) + (*(v146 + 32) << 10);
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v242 - 104);

          re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v242 - 672);
          --*(v146 + 32);
          ++*(v146 + 40);
          v7 = v437;
          v119 = v445;
          v120 = v436;
          v121 = v430;
        }

LABEL_388:
        v120 += 2;
        if (v120 == v121)
        {
          break;
        }

        continue;
      }
    }
  }

  v376 = v453;
  if (v453)
  {
    v377 = 0;
    v378 = v452;
    v379 = v426;
    while (1)
    {
      v380 = *v378;
      v378 += 16;
      if (v380 < 0)
      {
        break;
      }

      if (v453 == ++v377)
      {
        LODWORD(v377) = v453;
        break;
      }
    }
  }

  else
  {
    LODWORD(v377) = 0;
    v379 = v426;
  }

  if (v377 != v453)
  {
    v381 = v452;
    v382 = v453;
    do
    {
      v383 = v381 + (v377 << 6);
      if (*(v383 + 32))
      {
        re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(__src, v7, *(v383 + 8), v379);
        __dst[0].i64[0] = __src[0] >> 1;
        v384 = **(re::RenderFrameData::stream((v379 + 264), __dst) + 48);
        v385 = (*(v384 + 736))();
        if (__src[0])
        {
          if (__src[0])
          {
          }
        }

        v382 = v453;
        v381 = v452;
      }

      if (v382 <= v377 + 1)
      {
        v386 = v377 + 1;
      }

      else
      {
        v386 = v382;
      }

      while (v386 - 1 != v377)
      {
        LODWORD(v377) = v377 + 1;
        if ((*(v381 + (v377 << 6)) & 0x80000000) != 0)
        {
          goto LABEL_416;
        }
      }

      LODWORD(v377) = v386;
LABEL_416:
      ;
    }

    while (v377 != v376);
  }

  v387 = v457;
  if (v457)
  {
    v388 = 0;
    v389 = v456;
    while (1)
    {
      v390 = *v389;
      v389 += 18;
      if (v390 < 0)
      {
        break;
      }

      if (v457 == ++v388)
      {
        LODWORD(v388) = v457;
        break;
      }
    }
  }

  else
  {
    LODWORD(v388) = 0;
  }

  if (v388 != v457)
  {
    v391 = v456;
    v392 = v457;
    do
    {
      v393 = v391 + 72 * v388;
      if (*(v393 + 44) && *(v445 + 360))
      {
        re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(__src, v7, *(v393 + 8), v379);
        v394 = (*(**(v445 + 360) + 32))(*(v445 + 360), __src, *(v379 + 48), v393 + 16);
        if (__src[0])
        {
          if (__src[0])
          {
          }
        }

        v392 = v457;
        v391 = v456;
      }

      if (v392 <= v388 + 1)
      {
        v395 = v388 + 1;
      }

      else
      {
        v395 = v392;
      }

      while (v395 - 1 != v388)
      {
        LODWORD(v388) = v388 + 1;
        if ((*(v391 + 72 * v388) & 0x80000000) != 0)
        {
          goto LABEL_438;
        }
      }

      LODWORD(v388) = v395;
LABEL_438:
      ;
    }

    while (v388 != v387);
  }

  re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v455);
LABEL_440:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v460, v28, v29);
  if (v425)
  {
    if (*(v425 + 152))
    {
      v396 = mach_absolute_time();
      v397 = *(v425 + 152);
      if (v397)
      {
        v398 = v397[1048].u64[0];
        if (v398 >= v396 - v420)
        {
          v398 = v396 - v420;
        }

        v397[1048].i64[0] = v398;
        v399 = v397[1048].u64[1];
        if (v399 <= v396 - v420)
        {
          v399 = v396 - v420;
        }

        v397[1048].i64[1] = v399;
        v400 = vdupq_n_s64(1uLL);
        v400.i64[0] = v396 - v420;
        v397[1049] = vaddq_s64(v397[1049], v400);
        *(v425 + 184) = 0;
      }
    }
  }

LABEL_448:
  if (v461[0])
  {
    if (v464)
    {
      (*(*v461[0] + 40))();
    }
  }
}

BOOL re::ecs2::VFXSystem::isRuntimeReady(re *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (!v3 || *(a3 + 301) != 1)
  {
    return 0;
  }

  v5 = *(a1 + 29);
  if (re::loadVFXFramework(a1))
  {
    re::ecs2::VFXSceneComponent::invalidateIfNeeded(a3);
    if (*(a3 + 40) == 1)
    {
      v6 = *(a3 + 16);
      if (v6)
      {
        v7 = re::ecs2::EntityComponentCollection::getOrAdd((v6 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      }

      else
      {
        v7 = *(a3 + 304);
      }

      if (*(v7 + 80))
      {
        v8 = *(v5 + 72);
        *(a3 + 88) = v8;
        v54 = *(a3 + 328);
        v9 = re::HashTable<unsigned long,re::AssetMap::ConfigurationEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v8 + 104, &v54);
        if (v9)
        {
          v10 = v9;
          v11 = *(a3 + 88);
          v54 = *v9;
          v12 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v11 + 56, &v54);
          if (v12)
          {
            v13 = v12;
            v14 = *(v7 + 80);
            if (v14)
            {
              v15 = *(v14 + 792);
            }

            else
            {
              v15 = 0;
            }

            v21 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v14 ^ (v14 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v14 ^ (v14 >> 30))) >> 27));
            *(a3 + 96) = v15 ^ (v21 >> 31) ^ v21;
            *(a3 + 80) = *v10;
            re::ObjCObject::operator=((a3 + 64), v12);
            re::ObjCObject::operator=((a3 + 48), v10 + 1);
            re::ObjCObject::operator=((a3 + 56), v10 + 2);
            re::ObjCObject::operator=((a3 + 72), v13 + 2);
            v22 = *(a3 + 48);
            v23 = v22;
            v24 = *(a3 + 56);
            v54 = MEMORY[0x1E69E9820];
            v55 = 3221225472;
            v56 = ___ZN2re4ecs217VFXSceneComponent12reviveEffectERKNS_11AssetHandleERKNS_10VFXManager13VFXEffectDataE_block_invoke;
            v57 = &__block_descriptor_40_e21_v24__0__VFXNode_8_B16l;
            v58 = a3;
            v25 = v24;
            v26 = v22;
            [v26 enumerateChildNodesUsingBlock:&v54];
            location = MEMORY[0x1E69E9820];
            v67 = 3221225472;
            v68 = ___ZN2re4ecs217VFXSceneComponent12reviveEffectERKNS_11AssetHandleERKNS_10VFXManager13VFXEffectDataE_block_invoke_2;
            v69 = &__block_descriptor_40_e26_v24__0__VFXAssetNode_8_B16l;
            v70 = a3;
            [v25 enumerateHierarchyUsingBlock:&location];
            v27 = *(a3 + 88);
            v28 = *(a3 + 328);
            v29 = v10[1];
            from = *v10;
            v63 = v29;
            v64 = v10[2];
            v65 = *(v10 + 24);
            re::VFXManager::registerEffect(v27, v28, &from);

            *(a3 + 40) = 0;
          }

          goto LABEL_51;
        }

        v16 = re::AssetHandle::loadedAsset<re::VFXAsset>((v7 + 72));
        if (v16)
        {
          v17 = v16;
          v18 = *(v16 + 64);
          if (!v18)
          {
            v30 = *re::ecsComponentsLogObjects(0);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v54) = 0;
              _os_log_error_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_ERROR, "VFX effect model scene is not loaded", &v54, 2u);
            }

            goto LABEL_50;
          }

          if (*(a3 + 80) != -1)
          {
            re::ecs2::VFXSceneComponent::reset(a3);
          }

          v19 = *(v7 + 80);
          if (v19)
          {
            v20 = *(v19 + 792);
          }

          else
          {
            v20 = 0;
          }

          v31 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v19 ^ (v19 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v19 ^ (v19 >> 30))) >> 27));
          *(a3 + 96) = v20 ^ (v31 >> 31) ^ v31;
          if (*(v17 + 72) == 1)
          {
            operator new();
          }

          v32 = std::unique_ptr<re::ecs2::VFXSceneComponent::LegacyImpl>::reset[abi:nn200100]((a3 + 448), 0);
          if ((re::shouldMergeVFXEffectsIntoOneWorld(v32) & 1) == 0)
          {
            v34 = *(v7 + 80);
            if (v34)
            {
              v35 = *(v34 + 24);
              if (v35)
              {
                re::AssetManager::convertToMutable(v35, (v7 + 72));
              }
            }

            re::AssetHandle::mutateLoadedAssetAndReRegister<re::VFXAsset,re::ecs2::VFXSceneComponent::loadIfNeeded(re::ecs2::Entity const&,re::RenderManager &,re::AssetService &)::$_0>(&location, (v7 + 72));
            if ((location & 1) == 0)
            {
            }

            re::AssetHandle::internalForceUnloadAsync((v7 + 72));
          }

          *(a3 + 80) = VFXWorldId;
          if (re::shouldMergeVFXEffectsIntoOneWorld(VFXWorldId))
          {
            re::VFXManager::createRuntimeWorld(&v54, v8, *(a3 + 80));
            v38 = (a3 + 64);
            if ((a3 + 64) != &v54)
            {
              v39 = v54;
              v54 = 0;
              v40 = *v38;
              *v38 = v39;
            }

            if (!*v38)
            {
              v47 = *re::ecsComponentsLogObjects(v41);
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
              {
                LOWORD(v54) = 0;
                _os_log_debug_impl(&dword_1E1C61000, v47, OS_LOG_TYPE_DEBUG, "Can't create VFXWorld", &v54, 2u);
              }

              goto LABEL_50;
            }

            v54 = *(a3 + 80);
            v42 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v8 + 56, &v54);
            if (!v42)
            {
              v48 = *v38;
              *v38 = 0;

              if ((atomic_exchange(&re::ecs2::VFXSceneComponent::loadIfNeeded(re::ecs2::Entity const&,re::RenderManager &,re::AssetService &)::__FILE____LINE___logged, 1u) & 1) == 0)
              {
                v50 = *re::ecsComponentsLogObjects(v49);
                if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(v54) = 0;
                  _os_log_impl(&dword_1E1C61000, v50, OS_LOG_TYPE_DEFAULT, "Can't get vfxRuntimeData for newly created runtime world", &v54, 2u);
                }
              }

              goto LABEL_50;
            }

            re::ObjCObject::operator=((a3 + 72), (v42 + 16));
          }
          v43 = ;
          objc_initWeak(&from, (a3 + 8));
          v60 = v18;
          v54 = MEMORY[0x1E69E9820];
          v55 = 3321888768;
          v56 = ___ZN2re4ecs217VFXSceneComponent12loadIfNeededERKNS0_6EntityERNS_13RenderManagerERNS_12AssetServiceE_block_invoke;
          v57 = &unk_1F5CD36E0;
          v59[0] = 0;
          objc_copyWeak(v59, &from);
          v44 = v43;
          v58 = v44;
          re::VFXManager::makeScheduledLoadRuntimeTask(v8, &v60, &v54, &v61);
          v45 = v61;
          v61 = 0;
          v46 = *(a3 + 32);
          *(a3 + 32) = v45;
          if (v46)
          {

            if (v61)
            {

              v61 = 0;
            }
          }

          *(a3 + 40) = 0;
          objc_destroyWeak(v59);
          v59[0] = 0;
          objc_destroyWeak(&from);

LABEL_50:
          goto LABEL_51;
        }

        re::AssetHandle::loadAsync((v7 + 72));
      }

      re::ecs2::VFXSceneComponent::reset(a3);
    }
  }

LABEL_51:
  if (!*(a3 + 32))
  {
    v53 = *(a3 + 48);
    v51 = v53 != 0;

    return v51;
  }

  return 0;
}

uint64_t re::DynamicArray<re::VFXScene>::add(uint64_t a1, unsigned __int8 *__src)
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

        re::DynamicArray<re::VFXScene>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::VFXScene>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + (v5 << 10);
  memcpy(v11, __src, 0x160uLL);
  *(v11 + 352) = 0u;
  *(v11 + 368) = 0u;
  *(v11 + 384) = 0u;
  *(v11 + 400) = 0u;
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((v11 + 352), __src + 44);
  *(v11 + 416) = *(__src + 104);
  v12 = __src[424];
  *(v11 + 424) = v12;
  if (v12 == 1)
  {
    *(v11 + 432) = *(__src + 54);
  }

  v13 = *(__src + 456);
  *(v11 + 440) = *(__src + 440);
  *(v11 + 456) = v13;
  v14 = *(__src + 472);
  v15 = *(__src + 488);
  v16 = *(__src + 504);
  *(v11 + 517) = *(__src + 517);
  *(v11 + 488) = v15;
  *(v11 + 504) = v16;
  *(v11 + 472) = v14;
  v17 = __src[544];
  *(v11 + 544) = v17;
  if (v17 == 1)
  {
    v18 = *(__src + 36);
    *(v11 + 560) = *(__src + 35);
    *(v11 + 576) = v18;
  }

  *(v11 + 592) = *(__src + 74);
  v19 = __src[608];
  *(v11 + 608) = v19;
  if (v19 == 1)
  {
    v20 = *(__src + 39);
    v21 = *(__src + 40);
    v22 = *(__src + 42);
    *(v11 + 656) = *(__src + 41);
    *(v11 + 672) = v22;
    *(v11 + 624) = v20;
    *(v11 + 640) = v21;
  }

  v23 = *(__src + 43);
  v24 = *(__src + 44);
  *(v11 + 720) = *(__src + 360);
  *(v11 + 688) = v23;
  *(v11 + 704) = v24;
  *(v11 + 736) = *(__src + 46);
  v25 = *(__src + 94);
  *(__src + 94) = 0;
  *(v11 + 752) = v25;
  *(v11 + 768) = *(__src + 48);
  v26 = *(__src + 49);
  v27 = *(__src + 50);
  v28 = *(__src + 52);
  *(v11 + 816) = *(__src + 51);
  *(v11 + 832) = v28;
  *(v11 + 784) = v26;
  *(v11 + 800) = v27;
  v29 = *(__src + 53);
  v30 = *(__src + 54);
  v31 = *(__src + 55);
  *(v11 + 896) = *(__src + 224);
  *(v11 + 864) = v30;
  *(v11 + 880) = v31;
  *(v11 + 848) = v29;
  LODWORD(v25) = __src[900];
  *(v11 + 900) = v25;
  if (v25 == 1)
  {
    *(v11 + 904) = *(__src + 226);
  }

  *(v11 + 912) = *(__src + 114);
  result = re::DynamicOverflowArray<unsigned short,8ul>::DynamicOverflowArray(v11 + 920, (__src + 920));
  v33 = __src[960];
  *(v11 + 960) = v33;
  if (v33 == 1)
  {
    v34 = *(__src + 62);
    *(v11 + 976) = *(__src + 61);
    *(v11 + 992) = v34;
  }

  *(v11 + 1008) = *(__src + 252);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

uint64_t re::ecs2::anonymous namespace::legacyMaterialParameterTables(re::ecs2::_anonymous_namespace_ *this)
{
  if ((atomic_load_explicit(&qword_1EE19E7B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E7B8))
  {
    qword_1EE19E888 = 0;
    qword_1EE19E890 = 0;
    qword_1EE19E898 = 0;
    __cxa_guard_release(&qword_1EE19E7B8);
  }

  if ((atomic_load_explicit(&qword_1EE19E7C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E7C0))
  {
    qword_1EE19E8A0 = 0;
    qword_1EE19E8A8 = 0;
    qword_1EE19E8B0 = 0;
    __cxa_guard_release(&qword_1EE19E7C0);
  }

  if (qword_1EE19E7C8 != -1)
  {
    dispatch_once(&qword_1EE19E7C8, &__block_literal_global_12);
  }

  return qword_1EE19E898;
}

uint64_t re::ecs2::anonymous namespace::materialParameterTables(re::ecs2::_anonymous_namespace_ *this)
{
  if ((atomic_load_explicit(&qword_1EE19E7D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E7D0))
  {
    qword_1EE19E8B8 = 0;
    qword_1EE19E8C0 = 0;
    qword_1EE19E8C8 = 0;
    __cxa_guard_release(&qword_1EE19E7D0);
  }

  if ((atomic_load_explicit(&qword_1EE19E7D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E7D8))
  {
    qword_1EE19E8D0 = 0;
    qword_1EE19E8D8 = 0;
    qword_1EE19E8E0 = 0;
    __cxa_guard_release(&qword_1EE19E7D8);
  }

  if (qword_1EE19E7E0 != -1)
  {
    dispatch_once(&qword_1EE19E7E0, &__block_literal_global_102);
  }

  return qword_1EE19E8C8;
}

float32x4_t re::ecs2::VFXSceneComponent::LegacyImpl::worldAabb@<Q0>(id *a1@<X1>, float32x4_t *a2@<X8>)
{
  v3.i64[0] = 0x7F0000007FLL;
  v3.i64[1] = 0x7F0000007FLL;
  *a2 = vnegq_f32(v3);
  a2[1] = v3;
  v4 = a1[6];
  if (v4)
  {
    [v4 worldBoundingBox];
    v6.i32[3] = 0;
    v7.i32[3] = 0;
    result = vminnmq_f32(v6, xmmword_1E306D4A0);
    *a2 = result;
    a2[1] = vmaxnmq_f32(v7, xmmword_1E306D4B0);
  }

  return result;
}

unint64_t re::HierarchicalMeshOverrideFlags::flattenToOverrideFlags(re::HierarchicalMeshOverrideFlags *this)
{
  if (*this == 1)
  {
    v1 = *(this + 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
    v1 = 0;
  }

  if (*(this + 6) == 1)
  {
    v1 |= 2u;
  }

  else if (*(this + 2) == 1)
  {
    v1 |= 2 * (*(this + 3) == 1);
    v2 = v2 | 2;
  }

  if (*(this + 10) == 1)
  {
    if (*(this + 11))
    {
      v3 = 4;
    }

    else
    {
      v3 = 0;
    }

    v1 |= v3;
    v2 = v2 | 4;
  }

  if (*(this + 12) == 1)
  {
    if (*(this + 13))
    {
      v4 = 8;
    }

    else
    {
      v4 = 0;
    }

    v1 |= v4;
    v2 = v2 | 8;
  }

  if (*(this + 14) == 1)
  {
    if (*(this + 15))
    {
      v5 = 16;
    }

    else
    {
      v5 = 0;
    }

    v1 |= v5;
    v2 = v2 | 0x10;
  }

  if (*(this + 16) == 1)
  {
    if (*(this + 17))
    {
      v6 = 128;
    }

    else
    {
      v6 = 0;
    }

    v1 |= v6;
    v2 = v2 | 0x80;
  }

  if (*(this + 18) == 1)
  {
    v7 = *(this + 10);
    if (v7 >= 3)
    {
      v8 = 3;
    }

    else
    {
      v8 = *(this + 10);
    }

    if (v8 <= -3)
    {
      v8 = -3;
    }

    v9 = v8 ^ (v8 >> 15);
    v10 = v9 & 0x80000001;
    v11 = (v9 & 0x80000001) == 1;
    v15 = (v9 & 0xFFFFFFFE) == 2;
    v12 = v15;
    v13 = !v15;
    v14 = v10 != 1;
    v15 = v7 >= 0;
    if (v7 < 0)
    {
      v16 = v14;
    }

    else
    {
      v16 = v11;
    }

    if (!v15)
    {
      v12 = v13;
    }

    v17 = v1 | (*(this + 10) >> 7) & 0x100;
    if (v16)
    {
      v18 = 512;
    }

    else
    {
      v18 = 0;
    }

    v19 = v17 | v18;
    if (v12)
    {
      v20 = 1024;
    }

    else
    {
      v20 = 0;
    }

    v1 = v19 | v20;
    v2 = v2 | 0x700;
  }

  if (*(this + 4) == 1)
  {
    v1 = v1 & 0xFFF9FFFF | ((*(this + 5) & 3) << 17);
    v2 = v2 | 0x60000;
  }

  return v1 | (v2 << 32);
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), &v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 40 * v6 + 16;
  }
}

uint64_t re::ecs2::OcclusionStateMachine::getOcclusionTransitionFactor(re::ecs2::OcclusionStateMachine *this)
{
  v1 = *(this + 5);
  if (v1 == -1)
  {
    v3 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::ecs2::OcclusionStateMachine::getDepthMitigationTransitionFactor(v3);
  }

  else
  {
    v5 = &v4;
    return (off_1F5CD3810[v1])(&v5, this);
  }
}

uint64_t re::ecs2::OcclusionStateMachine::getDepthMitigationTransitionFactor(re::ecs2::OcclusionStateMachine *this)
{
  v1 = *(this + 5);
  if (v1 == -1)
  {
    v3 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::ecs2::OcclusionStateMachine::getSceneUnderstandingTransitionFactor(v3);
  }

  else
  {
    v5 = &v4;
    return (off_1F5CD3840[v1])(&v5, this);
  }
}

uint64_t re::ecs2::OcclusionStateMachine::getSceneUnderstandingTransitionFactor(re::ecs2::OcclusionStateMachine *this)
{
  v1 = *(this + 5);
  if (v1 == -1)
  {
    v3 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::ecs2::OcclusionStateMachine::getOcclusionEntityReactivateTransitionFactor(v3);
  }

  else
  {
    v5 = &v4;
    return (off_1F5CD3870[v1])(&v5, this);
  }
}

unint64_t re::ecs2::OcclusionStateMachine::getOcclusionEntityReactivateTransitionFactor(re::ecs2::OcclusionStateMachine *this)
{
  v1 = *(this + 5);
  if (v1 == -1)
  {
    v3 = std::__throw_bad_variant_access[abi:nn200100]();
  }

  else
  {
    v7 = &v6;
    return (off_1F5CD38A0[v1])(&v7, this);
  }
}

uint64_t re::HashTable<unsigned long long,re::ecs2::anonymous namespace::PerWorldData::RenderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  if (HIDWORD(v14) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + (HIDWORD(v14) << 6) + 16;
  }

  v7 = *a2;
  *(v6 + 16) = 0;
  result = v6 + 16;
  *(result + 32) = 0;
  *(result + 24) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  v9 = *a3;
  v10 = a3[1];
  *(result - 8) = v7;
  *result = v9;
  *(result + 8) = v10;
  *a3 = 0;
  a3[1] = 0;
  v11 = *(result + 16);
  *(result + 16) = a3[2];
  a3[2] = v11;
  v12 = *(result + 32);
  *(result + 32) = a3[4];
  a3[4] = v12;
  ++*(a3 + 6);
  ++*(result + 24);
  ++*(a1 + 40);
  return result;
}

void re::TextureTable::setTexture(uint64_t *a1, uint64_t *a2, id *a3)
{
  if (*a3)
  {
    v6 = [*a3 protectionOptions];
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  re::TextureTableImpl<NS::SharedPtr<MTL::Texture>>::setTexture(a1, &v7, a3, v6);
}

double re::ecs2::VFXSceneComponent::VFXSceneComponent(re::ecs2::VFXSceneComponent *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD3690;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  result = 0.0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = -1;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0;
  *(v1 + 140) = 0x7FFFFFFFLL;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0u;
  *(v1 + 184) = 0;
  *(v1 + 188) = 0x7FFFFFFFLL;
  *(v1 + 200) = 0u;
  *(v1 + 216) = 0u;
  *(v1 + 232) = 0;
  *(v1 + 236) = 0x7FFFFFFFLL;
  *(v1 + 248) = 0u;
  *(v1 + 280) = 0;
  *(v1 + 264) = 0u;
  *(v1 + 284) = 0x7FFFFFFFLL;
  *(v1 + 296) = 0;
  *(v1 + 300) = 0;
  *(v1 + 304) = 0;
  *(v1 + 312) = 0;
  *(v1 + 316) = 0u;
  *(v1 + 332) = 0u;
  *(v1 + 348) = 0u;
  *(v1 + 364) = 0u;
  *(v1 + 380) = 0;
  *(v1 + 384) = xmmword_1E3047670;
  *(v1 + 400) = xmmword_1E3047680;
  *(v1 + 416) = xmmword_1E30476A0;
  *(v1 + 432) = xmmword_1E30474D0;
  *(v1 + 476) = 0u;
  *(v1 + 448) = 0u;
  *(v1 + 464) = 0u;
  *(v1 + 492) = 0x7FFFFFFFLL;
  __asm { FMOV            V1.2S, #1.0 }

  *(v1 + 504) = _D1;
  *(v1 + 512) = 0;
  *(v1 + 552) = 0;
  *(v1 + 520) = 0u;
  *(v1 + 536) = 0u;
  *(v1 + 556) = 0x7FFFFFFFLL;
  return result;
}

void re::ecs2::VFXSceneComponent::~VFXSceneComponent(re::ecs2::VFXSceneComponent *this)
{
  *this = &unk_1F5CD3690;
  re::ecs2::VFXSceneComponent::reset(this);
  re::HashTable<long long,re::ecs2::VFXREClientTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::deinit(this + 65);
  re::HashTable<long long,re::ecs2::VFXSceneComponent::ClientRuntimeTextureData,re::Hash<long long>,re::EqualTo<long long>,true,false>::deinit(this + 57);
  std::unique_ptr<re::ecs2::VFXSceneComponent::LegacyImpl>::reset[abi:nn200100](this + 56, 0);
  v2 = *(this + 38);
  if (v2)
  {

    *(this + 38) = 0;
  }

  re::HashTable<unsigned long,re::ecs2::VFXSceneComponent::BindingRuntimeData,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 31);
  re::HashTable<unsigned long,re::ecs2::VFXSceneComponent::BindingRuntimeData,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 25);
  re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 19);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 13);

  v3 = *(this + 4);
  if (v3)
  {

    *(this + 4) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::ecs2::VFXSceneComponent::~VFXSceneComponent(this);

  JUMPOUT(0x1E6906520);
}

void **re::ecs2::VFXSceneComponent::reset(re::ecs2::VFXSceneComponent *this)
{
  if (!*(this + 56))
  {
    v2 = *(this + 6);
    v3 = v2;
    v4 = *(this + 11);
    if (v4)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = ___ZN2re4ecs217VFXSceneComponent5resetEv_block_invoke;
      v6[3] = &__block_descriptor_48_e21_v24__0__VFXNode_8_B16l;
      v6[4] = this;
      v6[5] = v4;
      [v2 enumerateChildNodesUsingBlock:v6];
      re::VFXManager::unRegisterEffect(v4, *(this + 41));
    }
  }

  re::ObjCObject::operator=(this + 6, 0);
  result = re::ObjCObject::operator=(this + 7, 0);
  *(this + 10) = -1;
  *(this + 81) = 0;
  return result;
}

void re::ecs2::VFXSceneComponent::createDetachedSceneComponent(void *a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::VFXSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::VFXSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 576, 0);
  v3 = re::ecs2::VFXSceneComponent::VFXSceneComponent(v2);
  *a1 = v4;
  v5 = (*(**(re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 96, 0, v3);
  ArcSharedObject::ArcSharedObject(v5, 0);
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *v6 = &unk_1F5CD3AE8;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 32) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  v7 = *(v2 + 38);
  *(v2 + 38) = v6;
  if (v7)
  {
  }
}

void re::ecs2::VFXSceneComponent::setVFX(uint64_t a1, const re::AssetHandle *a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = re::ecs2::EntityComponentCollection::getOrAdd((v4 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  }

  else
  {
    v5 = *(a1 + 304);
  }

  re::AssetHandle::AssetHandle(&v82, a2);
  v6 = *(v5 + 72);
  *(v5 + 72) = v82;
  v82 = v6;
  v7 = *(v5 + 88);
  *(v5 + 88) = v83;
  v83 = v7;
  re::AssetHandle::~AssetHandle(&v82);
  re::ecs2::VFXSceneMetadataComponent::markDirtyAndMarkDirtyForNetwork(v5);
  v8 = re::AssetHandle::loadedAsset<re::VFXAsset>(a2);
  if (v8 && *(v8 + 72) == 1)
  {
    operator new();
  }

  v9 = std::unique_ptr<re::ecs2::VFXSceneComponent::LegacyImpl>::reset[abi:nn200100]((a1 + 448), 0);
  *(a1 + 301) = 0;
  v10 = *(a2 + 1);
  if (v10 && (v11 = atomic_load((v10 + 896)), v11 == 2))
  {
    re::ecs2::VFXSceneComponent::model(buf, a1);
    v12 = *buf;

    if (v12)
    {
      v14 = *(a1 + 16);
      if (v14)
      {
        v13 = re::ecs2::EntityComponentCollection::getOrAdd((v14 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        v78 = v13;
      }

      else
      {
        v78 = *(a1 + 304);
      }

      v16 = *(a1 + 180);
      v99 = 0;
      v96 = 0;
      v97 = 0;
      v98 = 0;
      v17 = re::DynamicArray<std::pair<unsigned long,re::ecs2::VFXREBinding>>::setCapacity(&v95, v16);
      v81 = ++v98;
      v18 = *(a1 + 180);
      v19 = &re::internal::PrimeHelper::s_primes;
      v20 = 245;
      do
      {
        v21 = v20 >> 1;
        v22 = &v19[v20 >> 1];
        v24 = *v22;
        v23 = v22 + 1;
        v20 += ~(v20 >> 1);
        if (v24 < v18)
        {
          v19 = v23;
        }

        else
        {
          v20 = v21;
        }
      }

      while (v20);
      v25 = *v19;
      if (!v26)
      {
        re::internal::assertLog(4, v27, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750, v78);
        _os_crash("assertion failure: (temp) Out of memory.");
        __break(1u);
        return;
      }

      v28 = v26;
      if (v25)
      {
        memset_pattern16(v26, &unk_1E304C660, 4 * v25);
      }

      v29 = &v28[(4 * v25 + 15) & 0x7FFFFFFF0];
      v79 = v28;
      v80 = *(a1 + 184);
      if (v80)
      {
        v30 = 0;
        v31 = *(a1 + 168);
        while (1)
        {
          v32 = *v31;
          v31 += 22;
          if (v32 < 0)
          {
            break;
          }

          if (v80 == ++v30)
          {
            LODWORD(v30) = *(a1 + 184);
            break;
          }
        }
      }

      else
      {
        LODWORD(v30) = 0;
      }

      if (v30 != v80)
      {
        v35 = v97;
        do
        {
          v36 = v25;
          v37 = *(a1 + 168) + 88 * v30;
          v39 = *(v37 + 8);
          v38 = v37 + 8;
          v40 = *(v38 + 8);
          *buf = v39;
          LODWORD(v85) = v40;
          v41 = re::DynamicArray<BOOL>::DynamicArray(&v86, (v38 + 16));
          *&v89[8] = *(v38 + 56);
          if (v35 >= v96)
          {
            v42 = v81;
            if (v96 < v35 + 1)
            {
              if (v95)
              {
                v43 = 8;
                if (v96)
                {
                  v43 = 2 * v96;
                }

                if (v43 <= v35 + 1)
                {
                  v44 = v35 + 1;
                }

                else
                {
                  v44 = v43;
                }

                re::DynamicArray<std::pair<unsigned long,re::ecs2::VFXREBinding>>::setCapacity(&v95, v44);
                v42 = v98;
              }

              else
              {
                re::DynamicArray<std::pair<unsigned long,re::ecs2::VFXREBinding>>::setCapacity(&v95, v35 + 1);
                v42 = v98 + 1;
              }
            }

            v35 = v97;
          }

          else
          {
            v42 = v81;
          }

          v45 = v99 + 72 * v35;
          *v45 = *buf;
          *(v45 + 8) = v85;
          *(v45 + 48) = 0;
          *(v45 + 24) = 0;
          *(v45 + 32) = 0;
          *(v45 + 16) = 0;
          *(v45 + 40) = 0;
          *(v45 + 16) = v86;
          v86 = 0;
          *(v45 + 24) = v87;
          v87 = 0;
          v46 = *(v45 + 32);
          *(v45 + 32) = v88;
          *&v88 = v46;
          v47 = *(v45 + 48);
          *(v45 + 48) = *v89;
          *v89 = v47;
          ++DWORD2(v88);
          ++*(v45 + 40);
          *(v45 + 56) = *&v89[8];
          v97 = ++v35;
          v81 = v42 + 1;
          v98 = v42 + 1;
          if (v86 && *v89)
          {
            (*(*v86 + 40))();
          }

          Descriptor = re::ecs2::VFXSceneMetadataComponent::getDescriptor(v78, *(v38 + 8));
          re::DynamicString::DynamicString(buf, Descriptor);
          re::DynamicString::DynamicString(&v88, (Descriptor + 2));
          re::DynamicString::DynamicString(&v89[16], (Descriptor + 4));
          re::DynamicString::DynamicString(&v91, (Descriptor + 6));
          v49 = Descriptor[9];
          v93 = Descriptor[8];
          v94 = v49;
          v50 = *v38;
          v51 = 0xBF58476D1CE4E5B9 * (*v38 ^ (*v38 >> 30));
          v25 = v36;
          v52 = *&v28[4 * (((0x94D049BB133111EBLL * (v51 ^ (v51 >> 27))) ^ ((0x94D049BB133111EBLL * (v51 ^ (v51 >> 27))) >> 31)) % v36)];
          if (v52 == 0x7FFFFFFF)
          {
            v52 = 0x7FFFFFFFLL;
          }

          else
          {
            v54 = *&v29[32 * v52 + 8];
            for (i = v52; v54 != v50; v52 = i)
            {
              i = *&v29[32 * i] & 0x7FFFFFFF;
              v52 = 0x7FFFFFFFLL;
              if (i == 0x7FFFFFFF)
              {
                break;
              }

              v54 = *&v29[32 * i + 8];
            }
          }

          *&v29[32 * v52 + 16] = v93;
          if (v91)
          {
            if (BYTE8(v91))
            {
              (*(*v91 + 40))();
            }

            v91 = 0u;
            v92 = 0u;
          }

          if (*&v89[16])
          {
            if (v89[24])
            {
              (*(**&v89[16] + 40))();
            }

            *&v89[16] = 0u;
            v90 = 0u;
          }

          if (v88)
          {
            if (BYTE8(v88))
            {
              (*(*v88 + 40))();
            }

            v88 = 0u;
            *v89 = 0u;
          }

          if (*buf && (v85 & 1) != 0)
          {
            (*(**buf + 40))();
          }

          v53 = *(a1 + 184);
          if (v53 <= v30 + 1)
          {
            v53 = v30 + 1;
          }

          while (v53 - 1 != v30)
          {
            LODWORD(v30) = v30 + 1;
            if ((*(*(a1 + 168) + 88 * v30) & 0x80000000) != 0)
            {
              goto LABEL_71;
            }
          }

          LODWORD(v30) = v53;
LABEL_71:
          ;
        }

        while (v30 != v80);
      }

      re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(a1 + 104);
      re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::clear(a1 + 152);
      v33 = *(a1 + 16);
      if (v33)
      {
        v34 = re::ecs2::EntityComponentCollection::getOrAdd((v33 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      }

      else
      {
        v34 = *(a1 + 304);
      }

      re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::clear(v34 + 32);
      if (*(a1 + 276))
      {
        v56 = *(a1 + 272);
        if (v56)
        {
          memset_pattern16(*(a1 + 256), &unk_1E304C660, 4 * v56);
        }

        if (*(a1 + 280))
        {
          v57 = 0;
          do
          {
            re::HashTable<unsigned long,re::ecs2::VFXSceneComponent::BindingRuntimeData,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::free(*(a1 + 264), v57++);
          }

          while (v57 < *(a1 + 280));
        }

        *(a1 + 284) = 0x7FFFFFFF;
        *(a1 + 276) = 0;
        ++*(a1 + 288);
      }

      v58 = *(a1 + 448);
      if (v58 && *(v58 + 28))
      {
        v59 = *(v58 + 24);
        if (v59)
        {
          memset_pattern16(*(v58 + 8), &unk_1E304C660, 4 * v59);
        }

        v60 = *(v58 + 32);
        if (v60)
        {
          v61 = 0;
          for (j = 0; j < v60; ++j)
          {
            v63 = *(v58 + 16);
            v64 = *(v63 + v61);
            if (v64 < 0)
            {
              v65 = v63 + v61;
              *v65 = v64 & 0x7FFFFFFF;

              v60 = *(v58 + 32);
            }

            v61 += 48;
          }
        }

        *(v58 + 28) = 0;
        *(v58 + 32) = 0;
        v66 = *(v58 + 40) + 1;
        *(v58 + 36) = 0x7FFFFFFF;
        *(v58 + 40) = v66;
      }

      re::ecs2::VFXSceneComponent::initializeBindings(a1);
      if (v97)
      {
        v67 = v99;
        v68 = v99 + 72 * v97;
        do
        {
          if (*(v67 + 56))
          {
            v69 = re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a1 + 152, v67);
            if (v69)
            {
              v70 = v69;
              v71 = re::ecs2::VFXSceneMetadataComponent::getDescriptor(v78, *v69);
              re::DynamicString::DynamicString(buf, v71);
              re::DynamicString::DynamicString(&v88, (v71 + 2));
              re::DynamicString::DynamicString(&v89[16], (v71 + 4));
              re::DynamicString::DynamicString(&v91, (v71 + 6));
              v72 = v71[9];
              v93 = v71[8];
              v94 = v72;
              v73 = 0xBF58476D1CE4E5B9 * (*v67 ^ (*v67 >> 30));
              for (k = *&v79[4 * (((0x94D049BB133111EBLL * (v73 ^ (v73 >> 27))) ^ ((0x94D049BB133111EBLL * (v73 ^ (v73 >> 27))) >> 31)) % v25)]; k != 0x7FFFFFFF; k = *&v29[32 * k] & 0x7FFFFFFF)
              {
                if (*&v29[32 * k + 8] == *v67)
                {
                  if (v93 == *&v29[32 * k + 16])
                  {
                    re::DynamicArray<BOOL>::operator=((v70 + 2), (v67 + 16));
                    v70[12] = 1;
                  }

                  break;
                }
              }

              if (v91)
              {
                if (BYTE8(v91))
                {
                  (*(*v91 + 40))();
                }

                v91 = 0u;
                v92 = 0u;
              }

              if (*&v89[16])
              {
                if (v89[24])
                {
                  (*(**&v89[16] + 40))();
                }

                *&v89[16] = 0u;
                v90 = 0u;
              }

              if (v88)
              {
                if (BYTE8(v88))
                {
                  (*(*v88 + 40))();
                }

                v88 = 0u;
                *v89 = 0u;
              }

              if (*buf && (v85 & 1) != 0)
              {
                (*(**buf + 40))();
              }
            }
          }

          v67 += 72;
        }

        while (v67 != v68);
      }

      re::ecs2::VFXSceneComponent::updateBindingStatesInitialValues(a1);
      v75 = v95;
      if (v95 && v99)
      {
        if (v97)
        {
          v76 = 72 * v97;
          v77 = v99 + 16;
          do
          {
            re::DynamicArray<unsigned long>::deinit(v77);
            v77 += 72;
            v76 -= 72;
          }

          while (v76);
          v75 = v95;
        }

        (*(*v75 + 40))(v75);
      }
    }

    *(a1 + 301) = 1;
    uuid_generate_random(buf);
    *(a1 + 328) = (v85 + (*buf << 6) + (*buf >> 2) - 0x61C8864680B583E9) ^ *buf;
  }

  else
  {
    v15 = *re::ecsComponentsLogObjects(v9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Can't set VFXAsset which is not loaded", buf, 2u);
    }
  }
}

void re::ecs2::VFXSceneMetadataComponent::markDirtyAndMarkDirtyForNetwork(const re::ecs2::Component *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    re::ecs2::Component::enqueueMarkDirty(this);
    v3 = *(v1 + 216);
    if (v3)
    {

      re::ecs2::NetworkComponent::markDirty(v3, this);
    }
  }
}

uint64_t re::AssetHandle::loadedAsset<re::VFXAsset>(re::VFXAsset *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  v2 = re::VFXAsset::assetType(a1);

  return re::AssetHandle::assetWithType(a1, v2, 1);
}

uint64_t **re::ecs2::VFXSceneComponent::setVFXFromParticleEmitter(uint64_t a1, const re::AssetHandle *a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = re::ecs2::EntityComponentCollection::getOrAdd((v4 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  }

  else
  {
    v5 = *(a1 + 304);
  }

  re::AssetHandle::AssetHandle(&v10, a2);
  v6 = *(v5 + 72);
  *(v5 + 72) = v10;
  v10 = v6;
  v7 = *(v5 + 88);
  *(v5 + 88) = v11;
  v11 = v7;
  re::AssetHandle::~AssetHandle(&v10);
  re::ecs2::VFXSceneMetadataComponent::markDirtyAndMarkDirtyForNetwork(v5);
  v8 = re::AssetHandle::loadedAsset<re::VFXAsset>(a2);
  if (v8 && *(v8 + 72) == 1)
  {
    operator new();
  }

  result = std::unique_ptr<re::ecs2::VFXSceneComponent::LegacyImpl>::reset[abi:nn200100]((a1 + 448), 0);
  *(a1 + 301) = 0;
  return result;
}

void re::ecs2::VFXSceneComponent::finishInitializationFromParticleEmitter(re::ecs2::VFXSceneComponent *this)
{
  *(this + 301) = 1;
  uuid_generate_random(v2);
  *(this + 41) = (v2[1] + (v2[0] << 6) + (v2[0] >> 2) - 0x61C8864680B583E9) ^ v2[0];
}

uint64_t *re::ecs2::VFXSceneComponent::model@<X0>(uint64_t *__return_ptr a1@<X8>, re::ecs2::VFXSceneComponent *this@<X0>)
{
  v3 = *(this + 2);
  if (v3)
  {
    v4 = re::ecs2::EntityComponentCollection::getOrAdd((v3 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  }

  else
  {
    v4 = *(this + 38);
  }

  result = re::AssetHandle::loadedAsset<re::VFXAsset>((v4 + 72));
  if (result)
  {
    result = result[8];
    if (result)
    {
      result = result;
    }
  }

  *a1 = result;
  return result;
}

void re::ecs2::VFXSceneComponent::getParameterValueCopy(re::ecs2::VFXSceneComponent *a1, void *a2, uint64_t a3, void *a4)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v7 = a2;
  re::ecs2::VFXSceneComponent::applyReadbackUpdates(a1);
  v8 = [v7 UTF8String];
  v9 = strlen(v8);
  if (v9)
  {
    MurmurHash3_x64_128(v8, v9, 0, v17);
    v10 = (v17[1] + (v17[0] << 6) + (v17[0] >> 2) - 0x61C8864680B583E9) ^ v17[0];
  }

  else
  {
    v10 = 0;
  }

  v17[0] = v10;
  v11 = *(a1 + 2);
  if (v11)
  {
    v12 = re::ecs2::EntityComponentCollection::getOrAdd((v11 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  }

  else
  {
    v12 = *(a1 + 38);
  }

  v13 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a1 + 104, v17);
  if (v13)
  {
    v14 = re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a1 + 152, v13);
    if (v14)
    {
      v15 = (v14 + 2);
      Descriptor = re::ecs2::VFXSceneMetadataComponent::getDescriptor(v12, *v14);
      re::DynamicArray<BOOL>::operator=(a3, v15);
      *a4 = *(Descriptor + 128);
    }
  }
}

uint64_t re::ecs2::VFXSceneComponent::applyReadbackUpdates(uint64_t this)
{
  if (*(this + 300) == 1)
  {
    v1 = this;
    v2 = *(this + 16);
    if (v2)
    {
      this = re::ecs2::EntityComponentCollection::get((v2 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneReadbackComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (this)
      {
        v3 = this;
        if ((*(this + 80) & 1) == 0)
        {
          v4 = *(this + 64);
          if (v4)
          {
            v5 = 0;
            v6 = *(this + 48);
            while (1)
            {
              v7 = *v6;
              v6 += 22;
              if (v7 < 0)
              {
                break;
              }

              if (v4 == ++v5)
              {
                LODWORD(v5) = *(this + 64);
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
            v8 = *(v3 + 48);
            this = re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v1 + 152, (v8 + 88 * v5 + 8));
            if (this)
            {
              this = re::DynamicArray<BOOL>::operator=(this + 8, (v8 + 88 * v5 + 24));
            }

            v9 = *(v3 + 64);
            if (v9 <= v5 + 1)
            {
              v9 = v5 + 1;
            }

            while (v9 - 1 != v5)
            {
              LODWORD(v5) = v5 + 1;
              if ((*(*(v3 + 48) + 88 * v5) & 0x80000000) != 0)
              {
                goto LABEL_20;
              }
            }

            LODWORD(v5) = v9;
LABEL_20:
            ;
          }

          *(v3 + 80) = 1;
        }
      }
    }
  }

  return this;
}

uint64_t re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 32 * v6 + 16;
  }
}

uint64_t re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), &v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 88 * v6 + 16;
  }
}

uint64_t re::ecs2::VFXSceneMetadataComponent::getDescriptor(re::ecs2::VFXSceneMetadataComponent *this, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = *(this + 6);
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

    v12 = 797;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 8) + 160 * a2;
}

void *re::ecs2::VFXSceneComponent::bindingStorageWithIdentifier@<X0>(re::ecs2::VFXSceneComponent *this@<X0>, id a2@<X1>, uint64_t a3@<X8>)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = [a2 UTF8String];
  v8 = strlen(v7);
  if (v8)
  {
    MurmurHash3_x64_128(v7, v8, 0, v11);
    v9 = (v11[1] + (v11[0] << 6) + (v11[0] >> 2) - 0x61C8864680B583E9) ^ v11[0];
  }

  else
  {
    v9 = 0;
  }

  v11[0] = v9;
  result = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 104, v11);
  if (result)
  {
    result = re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 152, result);
    if (result)
    {
      return re::DynamicArray<BOOL>::DynamicArray(a3, result + 1);
    }
  }

  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
  return result;
}

void re::ecs2::VFXSceneComponent::setParameterValueCopy(const re::ecs2::Component *a1, void *a2, uint64_t a3, unint64_t a4, void *a5)
{
  __s1[8] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a5;
  v10 = [v8 UTF8String];
  v11 = strlen(v10);
  if (v11)
  {
    MurmurHash3_x64_128(v10, v11, 0, __s1);
    v12 = (__s1[1] + (__s1[0] << 6) + (__s1[0] >> 2) - 0x61C8864680B583E9) ^ __s1[0];
  }

  else
  {
    v12 = 0;
  }

  v18 = v12;
  v13 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a1 + 104, &v18);
  if (v13)
  {
    v14 = re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a1 + 152, v13);
    if (v14)
    {
      v15 = v14;
      v16 = *(a1 + 2);
      if (v16)
      {
        v17 = re::ecs2::EntityComponentCollection::getOrAdd((v16 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      }

      else
      {
        v17 = *(a1 + 38);
      }

      re::ecs2::VFXSceneMetadataComponent::getDescriptor(v17, *v15);
      if (a4 > 0x40)
      {
        re::DynamicArray<BOOL>::resize(v15 + 8, a4);
        v9[2](v9, *(v15 + 40));
        goto LABEL_14;
      }

      (v9)[2](v9, __s1);
      if (*(v15 + 24) != a4 || memcmp(__s1, *(v15 + 40), a4))
      {
        re::DynamicArray<BOOL>::resize(v15 + 8, a4);
        memcpy(*(v15 + 40), __s1, a4);
LABEL_14:
        ++*(v15 + 48);
        re::ecs2::VFXSceneMetadataComponent::markDirtyAndMarkDirtyForNetwork(a1);
      }
    }
  }
}

void ___ZN2re4ecs217VFXSceneComponent5resetEv_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = v3;
  v5 = [v3 camera];
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = *(v4 + 80);
    v8 = v9;
    v10 = v8;
    re::VFXManager::removeCamera(v6, v7, &v10);
  }
}

void re::ecs2::VFXSceneComponent::LegacyImpl::load(re::VFXLoadRuntimeTask **a1, id *a2, id a3, dispatch_queue_t *a4)
{
  v8 = a3;
  v9 = a3;
  v10 = v9;
  if (v9)
  {
    v13 = 0;
    v14 = v9;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3321888768;
    v12[2] = ___ZN2re4ecs217VFXSceneComponent10LegacyImpl4loadENS_10ArcWeakPtrIS1_EEPKNS_8VFXAssetEPNS_10VFXManagerE_block_invoke;
    v12[3] = &__block_descriptor_40_a8_32c51_ZTSN2re10ArcWeakPtrINS_4ecs217VFXSceneComponentEEE_e98_v16__0__VFXLoadTask_____ArcRefCount__isa_t__v____Allocator_B___UnfairLock__os_unfair_lock_s_I__B_8l;
    objc_copyWeak(&v13, a2);
    re::VFXManager::makeScheduledLoadLegacyRuntimeTask(a4, &v14, v12, a1);
    objc_destroyWeak(&v13);
    v13 = 0;
  }

  else
  {
    v11 = *re::ecsComponentsLogObjects(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "VFX effect model scene is not loaded", buf, 2u);
    }

    *a1 = 0;
  }
}

void re::AssetHandle::mutateLoadedAssetAndReRegister<re::VFXAsset,re::ecs2::VFXSceneComponent::loadIfNeeded(re::ecs2::Entity const&,re::RenderManager &,re::AssetService &)::$_0>(uint64_t a1, os_unfair_lock_s **this)
{
  re::AssetHandle::mutateAssetCommon(this);
  v4 = this[1];
  if (!v4)
  {
    goto LABEL_21;
  }

  if (!*&v4[6]._os_unfair_lock_opaque)
  {
    v10 = re::AssetHandle::assetInfo(this);
    if (v10[17])
    {
      v12 = v10[18];
    }

    else
    {
      v12 = v10 + 137;
    }

    re::DynamicString::format(&v21, "Can't mutate asset that is detached from the AssetManager. '%s'", v11, v12);
    goto LABEL_13;
  }

  v5 = atomic_load(&v4[224]._os_unfair_lock_opaque);
  if (v5 == 2)
  {
    v6 = atomic_load(&this[1][224]._os_unfair_lock_opaque);
    if (v6 != 1)
    {
      ++this[1][69]._os_unfair_lock_opaque;
      v15 = re::AssetHandle::loadedAsset<re::VFXAsset>(this);
      if (!v15)
      {
        v18 = re::AssetHandle::assetInfo(this);
        if (v18[17])
        {
          v20 = v18[18];
        }

        else
        {
          v20 = v18 + 137;
        }

        re::DynamicString::format(&v21, "Failed to get mutable asset pointer for '%s'.", v19, v20);
        goto LABEL_13;
      }

      v16 = v15;
      re::AssetHandle::internalUnregisterAsset(this);
      v17 = *(v16 + 64);
      *(v16 + 64) = 0;

      re::AssetHandle::internalRegisterAsset(this);
      re::internal::AssetEntry::updateMutatedRuntimeAssetSize(this[1]);
      re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(this[1]);
LABEL_21:
      *a1 = 1;
      return;
    }
  }

  v7 = re::AssetHandle::assetInfo(this);
  if (v7[17])
  {
    v9 = v7[18];
  }

  else
  {
    v9 = v7 + 137;
  }

  re::DynamicString::format(&v21, "Can't mutate asset that is not fully loaded. '%s'", v8, v9);
LABEL_13:
  if (v22)
  {
    v13 = *&v23[7];
  }

  else
  {
    v13 = v23;
  }

  re::WrappedError::make(&v24, @"REAssetRefErrorDomain", 5, v13);
  v14 = v24;
  v24 = 0;
  *a1 = 0;
  *(a1 + 8) = v14;

  if (v21)
  {
    if (v22)
    {
      (*(*v21 + 40))();
    }
  }
}

uint64_t re::ecs2::anonymous namespace::getVFXWorldId(re::ecs2::_anonymous_namespace_ *this, const re::ecs2::Entity *a2)
{
  if (re::shouldMergeVFXEffectsIntoOneWorld(this) && (v3 = *(this + 27)) != 0)
  {
    if (*(v3 + 32))
    {

      return RESyncableGetOwnerPeerID();
    }

    else
    {
      return *(v3 + 64);
    }
  }

  else
  {
    uuid_generate_random(v5);
    return (v5[1] + (v5[0] << 6) + (v5[0] >> 2) - 0x61C8864680B583E9) ^ v5[0];
  }
}

id re::ecs2::anonymous namespace::entityAnchorId(re::ecs2::_anonymous_namespace_ *this, const re::ecs2::Entity *a2)
{
  v2 = re::ecs2::TransformComponent::rootAnchorComponent(this);
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v2 + 25];
  }

  else
  {
    {
      v4 = *re::ecsComponentsLogObjects(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "VFXSceneComponent: can't find rootAnchorComponent", v6, 2u);
      }
    }

    v3 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  }

  return v3;
}

void ___ZN2re4ecs217VFXSceneComponent12loadIfNeededERKNS0_6EntityERNS_13RenderManagerERNS_12AssetServiceE_block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    return;
  }

  v5 = WeakRetained;
  v6 = *(WeakRetained + 3);
  if (v6 == a2)
  {
    v7 = *(a2 + 56);

    if (!v7)
    {
      v31 = *re::ecsComponentsLogObjects(v8);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_DEBUG, "VFXLoadRuntimeTask has invalid runtime", buf, 2u);
      }

      goto LABEL_45;
    }

    v9 = *(a2 + 56);
    v10 = *(a1 + 32);
    v11 = v10;
    if (!v10)
    {
      v32 = *re::ecsComponentsLogObjects(0);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_DEBUG, "Missing anchorId", buf, 2u);
      }

      goto LABEL_44;
    }

    VFXNodeClass = re::getVFXNodeClass(v10);
    VFXAssetNodeClass = re::getVFXAssetNodeClass(VFXNodeClass);
    if (VFXNodeClass && (v14 = VFXAssetNodeClass) != 0)
    {
      v15 = *(v5 + 10);
      if (v15)
      {
        if (re::shouldMergeVFXEffectsIntoOneWorld(VFXAssetNodeClass))
        {
          goto LABEL_11;
        }

        re::ObjCObject::operator=(v5 + 7, v9);
        v16 = *(v5 + 9);
        v72 = *(v5 + 7);
        re::VFXManager::registerRuntimeWorld(v15, v16, &v72);

        *buf = *(v5 + 9);
        v17 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v15 + 56, buf);
        if (v17)
        {
          re::ObjCObject::operator=(v5 + 8, (v17 + 16));
LABEL_11:
          v18 = v5 - 8;
          v19 = *(v5 + 7);
          if (!re::shouldMergeVFXEffectsIntoOneWorld(v19))
          {
            v35 = [v19 rootNode];
            v36 = [v35 childNodes];
            v30 = [v36 firstObject];

            v37 = [v30 childNodes];
            v38 = [v37 firstObject];

            v39 = [v19 assetRegistry];
            v40 = [v39 rootNode];

LABEL_35:
            re::ObjCObject::operator=(v5 + 5, v38);
            re::ObjCObject::operator=(v5 + 6, v40);
            *buf = MEMORY[0x1E69E9820];
            v66 = 3221225472;
            v67 = ___ZN2re4ecs217VFXSceneComponent10setRuntimeENS_10ObjCObjectEP6NSUUID_block_invoke;
            v68 = &unk_1E871BFD8;
            v70 = v18;
            v45 = v18;
            v46 = v30;
            v69 = v46;
            v71 = v15;
            [v38 enumerateChildNodesUsingBlock:buf];
            v73 = MEMORY[0x1E69E9820];
            v74 = 3221225472;
            v75 = ___ZN2re4ecs217VFXSceneComponent10setRuntimeENS_10ObjCObjectEP6NSUUID_block_invoke_2;
            v76 = &__block_descriptor_40_e26_v24__0__VFXAssetNode_8_B16l;
            v77 = v45;
            [v40 enumerateHierarchyUsingBlock:&v73];
            v47 = *(v5 + 40);
            *v61 = *(v5 + 9);
            v62 = *(v5 + 5);
            v63 = *(v5 + 6);
            v64 = 1;
            re::VFXManager::registerEffect(v15, v47, v61);

            if (re::shouldMergeVFXEffectsIntoOneWorld(v48))
            {
              v60 = v19;
              re::VFXManager::prepareWorld(v15, &v60);
            }

            v49 = objc_alloc(MEMORY[0x1E696AEC0]);
            v50 = *(v5 + 1);
            if (v50)
            {
              v51 = re::ecs2::EntityComponentCollection::getOrAdd((v50 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
            }

            else
            {
              v51 = *(v5 + 37);
            }

            v52 = re::AssetHandle::assetInfo((v51 + 72));
            if (v52[17])
            {
              v53 = v52[18];
            }

            else
            {
              v53 = v52 + 137;
            }

            v54 = [v49 initWithCString:v53];
            v55 = [v54 componentsSeparatedByString:@"/"];
            v56 = [v55 lastObject];
            [v38 setName:v56];

            goto LABEL_44;
          }

          v58 = v19;
          v20 = v19;
          *buf = 0;
          v66 = buf;
          v67 = 0x3032000000;
          v68 = __Block_byref_object_copy__137;
          v69 = __Block_byref_object_dispose__138;
          v70 = 0;
          v21 = [(re *)v11 UUIDString];
          v59 = v20;
          v22 = [v20 rootNode];
          v73 = MEMORY[0x1E69E9820];
          v74 = 3221225472;
          v75 = ___ZN2re4ecs212_GLOBAL__N_118getOrAddAnchorNodeEP8VFXWorldP6NSUUID_block_invoke;
          v76 = &unk_1E871C0E8;
          v23 = v21;
          v77 = v23;
          v78 = buf;
          [v22 enumerateChildNodesUsingBlock:&v73];

          v25 = re::getVFXNodeClass(v24);
          if (v25)
          {
            v26 = *(v66 + 40);
            if (!v26)
            {
              v27 = objc_alloc_init(v25);
              v28 = *(v66 + 40);
              *(v66 + 40) = v27;

              [*(v66 + 40) setIdentifier:v23];
              v29 = [v59 rootNode];
              [v29 addChildNode:*(v66 + 40)];

              v26 = *(v66 + 40);
            }

            v30 = v26;
          }

          else
          {
            if ((atomic_exchange(&unk_1EE19E71D, 1u) & 1) == 0)
            {
              v57 = *re::ecsComponentsLogObjects(0);
              v18 = v5 - 8;
              if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
              {
                *v61 = 0;
                _os_log_impl(&dword_1E1C61000, v57, OS_LOG_TYPE_DEFAULT, "VFX framework is not loaded", v61, 2u);
              }

              v30 = 0;
              goto LABEL_34;
            }

            v30 = 0;
          }

          v18 = v5 - 8;
LABEL_34:

          _Block_object_dispose(buf, 8);
          v38 = objc_alloc_init(VFXNodeClass);
          [v30 addChildNode:v38];
          v40 = objc_alloc_init(v14);
          v43 = [v59 assetRegistry];
          v44 = [v43 rootNode];
          [v44 addChildNode:v40];

          [v59 mergeWorld:v9 parentNode:v38 parentAssetNode:v40];
          v19 = v58;
          goto LABEL_35;
        }

        v41 = *(v5 + 7);
        *(v5 + 7) = 0;

        if ((atomic_exchange(&unk_1EE19E71B, 1u) & 1) != 0 || (v33 = *re::ecsComponentsLogObjects(v42), !os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT)))
        {
LABEL_44:

LABEL_45:
          v6 = *(v5 + 3);
          goto LABEL_46;
        }

        *buf = 0;
        v34 = "Can't get vfxRuntimeData for newly created runtime world";
      }

      else
      {
        if (atomic_exchange(&unk_1EE19E71A, 1u))
        {
          goto LABEL_44;
        }

        v33 = *re::ecsComponentsLogObjects(VFXAssetNodeClass);
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_44;
        }

        *buf = 0;
        v34 = "vfxManager is not set";
      }
    }

    else
    {
      if (atomic_exchange(&unk_1EE19E719, 1u))
      {
        goto LABEL_44;
      }

      v33 = *re::ecsComponentsLogObjects(VFXAssetNodeClass);
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }

      *buf = 0;
      v34 = "VFX framework is not loaded";
    }

    _os_log_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_DEFAULT, v34, buf, 2u);
    goto LABEL_44;
  }

LABEL_46:
  if (v6)
  {

    *(v5 + 3) = 0;
  }
}

void ___ZN2re4ecs217VFXSceneComponent12reviveEffectERKNS_11AssetHandleERKNS_10VFXManager13VFXEffectDataE_block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = *(a1 + 32);
  v4 = [v12 behaviorGraph];
  v5 = [v12 presentationNode];
  v6 = [v5 behaviorGraph];
  v14 = v6;
  re::ecs2::VFXSceneComponent::registerBehaviorGraphBindings(v3, v4, &v14);

  v7 = [v12 camera];
  if (v7)
  {
    v10 = v3 + 80;
    v8 = *(v3 + 80);
    v9 = *(v10 + 8);
    v11 = v12;
    v13 = v11;
    re::VFXManager::addCamera(v9, v8, &v13);
  }
}

void re::ecs2::VFXSceneComponent::registerBehaviorGraphBindings(uint64_t a1, void *a2, id *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v17 = *a3;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [v5 names];
  v6 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v18 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        v10 = [v5 unsafeParameterHandleForKey:v9];
        v11 = [v5 parameterInfoForKey:v9];
        v12 = [v10 objectName];
        v13 = [v12 UTF8String];

        v14 = [v9 UTF8String];
        if (re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a1 + 152, &v24))
        {
          *buf = v9;
          v20 = v5;
          v21 = v17;
          v22 = 0;
          v23 = 0;
          re::HashTable<unsigned long,re::ecs2::VFXSceneComponent::BindingRuntimeData,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1 + 248, &v24, buf);
        }

        else
        {
          v15 = *re::ecsComponentsLogObjects(0);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEBUG, "Missing VFX binding", buf, 2u);
          }
        }

        if (v25 && (v26 & 1) != 0)
        {
          (*(*v25 + 40))();
        }

        if (v27 && (v28 & 1) != 0)
        {
          (*(*v27 + 40))();
        }
      }

      v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v7);
  }
}

void ___ZN2re4ecs217VFXSceneComponent12reviveEffectERKNS_11AssetHandleERKNS_10VFXManager13VFXEffectDataE_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v8 = v3 = a2;
  v4 = [v3 presentationObject];
  v5 = ;

  if (v8)
  {
    v6 = v8;
    v7 = v5;
    v9 = v7;
    re::ecs2::VFXSceneComponent::registerBehaviorGraphBindings(v2, v6, &v9);
  }
}

id re::ecs2::anonymous namespace::assetNodeBehaviorGraph(void *a1)
{
  v1 = a1;
  if ((atomic_load_explicit(&qword_1EE19E7F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19E7F8))
  {
    qword_1EE19E7F0 = NSSelectorFromString(&cfstr_Behaviorgraph.isa);
    __cxa_guard_release(&qword_1EE19E7F8);
  }

  v2 = [v1 asset];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [v1 asset];
    v5 = [v4 behaviorGraph];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void ___ZN2re4ecs217VFXSceneComponent10setRuntimeENS_10ObjCObjectEP6NSUUID_block_invoke(void *a1, void *a2)
{
  v15 = a2;
  v3 = a1[5];
  v4 = [v15 behaviorGraph];
  v5 = [v15 presentationNode];
  v6 = [v5 behaviorGraph];
  v17 = v6;
  re::ecs2::VFXSceneComponent::registerBehaviorGraphBindings(v3, v4, &v17);

  if (re::shouldMergeVFXEffectsIntoOneWorld(v7))
  {
    v8 = [v15 particleEmitter];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 anchor];

      if (!v10)
      {
        [v9 setAnchor:a1[4]];
      }
    }
  }

  v11 = [v15 camera];
  if (v11)
  {
    v12 = a1[6];
    v13 = *(v3 + 80);
    v14 = v15;
    v16 = v14;
    re::VFXManager::addCamera(v12, v13, &v16);
  }
}

void ___ZN2re4ecs217VFXSceneComponent10setRuntimeENS_10ObjCObjectEP6NSUUID_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v8 = v3 = a2;
  v4 = [v3 presentationObject];
  v5 = ;

  if (v8)
  {
    v6 = v8;
    v7 = v5;
    v9 = v7;
    re::ecs2::VFXSceneComponent::registerBehaviorGraphBindings(v2, v6, &v9);
  }
}

uint64_t re::ecs2::anonymous namespace::bindingUniqueIdentifier(re::ecs2::_anonymous_namespace_ *this, const re::DynamicString *a2, unint64_t a3)
{
  v5 = re::Hash<re::DynamicString>::operator()(&v9, this);
  v6 = ((v5 << 6) + (v5 >> 2) + re::Hash<re::DynamicString>::operator()(&v10, a2) - 0x61C8864680B583E9) ^ v5;
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
  return ((v7 ^ (v7 >> 31)) + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9) ^ v6;
}

void *re::HashTable<unsigned long,re::ecs2::VFXSceneComponent::BindingRuntimeData,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v13, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v14) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long,re::ecs2::VFXSceneComponent::BindingRuntimeData,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, v14, v13);
    result[1] = *a2;
    v8 = *a3;
    *a3 = 0;
    result[2] = v8;
    v9 = a3[1];
    a3[1] = 0;
    result[3] = v9;
    v10 = a3[2];
    a3[2] = 0;
    result[4] = v10;
    v11 = a3[3];
    v12 = a3[4];
    a3[3] = 0;
    result[5] = v11;
    result[6] = v12;
    ++*(a1 + 40);
  }

  return result;
}

void re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::clear(uint64_t a1)
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
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::DynamicArray<unsigned long>::deinit(v6 + v4 + 24);
          v3 = *(a1 + 32);
        }

        v4 += 88;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

void re::ecs2::VFXSceneComponent::startFetchingParameter(re::ecs2::VFXSceneComponent *this, NSString *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [(NSString *)v3 UTF8String];
  v5 = strlen(v4);
  if (v5)
  {
    MurmurHash3_x64_128(v4, v5, 0, &buf);
    v6 = (*(&buf + 1) + (buf << 6) + (buf >> 2) - 0x61C8864680B583E9) ^ buf;
  }

  else
  {
    v6 = 0;
  }

  v18 = v6;
  v7 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 104, &v18);
  if (!v7)
  {
    v16 = *re::ecsComponentsLogObjects(0);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    v13 = "Unable to fetch parameter named %@";
    goto LABEL_16;
  }

  v8 = *(this + 2);
  if (!v8 || (v9 = v7, (v7 = re::ecs2::EntityComponentCollection::getOrAdd((v8 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneReadbackComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)) == 0))
  {
    v12 = *re::ecsComponentsLogObjects(v7);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    LOWORD(buf) = 0;
    v13 = "Unable to get VFXSceneReadbackComponent";
    v14 = v12;
    v15 = 2;
LABEL_17:
    _os_log_debug_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEBUG, v13, &buf, v15);
    goto LABEL_12;
  }

  v10 = v7;
  v11 = re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 152, v9);
  if (!v11)
  {
    v16 = *re::ecsComponentsLogObjects(0);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    v17 = *v9;
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v17;
    v13 = "Missing VFX binding %zu";
LABEL_16:
    v14 = v16;
    v15 = 12;
    goto LABEL_17;
  }

  re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(v10 + 32, v9, v11);
  *(this + 300) = 1;
LABEL_12:
}

__n128 re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(uint64_t a1, unint64_t *a2, __n128 *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, v10, v9);
    v8->n128_u64[1] = *a2;
    v8[1].n128_u32[0] = a3->n128_u32[0];
    re::DynamicArray<BOOL>::DynamicArray(&v8[1].n128_i64[1], &a3->n128_i64[1]);
    result = a3[3];
    v8[4] = result;
    ++*(a1 + 40);
  }

  return result;
}

void re::ecs2::VFXSceneComponent::stopFetchingParameter(re::ecs2::VFXSceneComponent *this, NSString *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [(NSString *)v3 UTF8String];
  v5 = strlen(v4);
  if (v5)
  {
    MurmurHash3_x64_128(v4, v5, 0, &buf);
    v6 = (*(&buf + 1) + (buf << 6) + (buf >> 2) - 0x61C8864680B583E9) ^ buf;
  }

  else
  {
    v6 = 0;
  }

  v25 = v6;
  v7 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 104, &v25);
  if (!v7)
  {
    v18 = *re::ecsComponentsLogObjects(0);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_22;
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    v15 = "Unable to stop fetching parameter named %@";
    v16 = v18;
    v17 = 12;
    goto LABEL_13;
  }

  v8 = *(this + 2);
  if (!v8 || (v9 = v7, (v7 = re::ecs2::EntityComponentCollection::get((v8 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneReadbackComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)) == 0))
  {
    v14 = *re::ecsComponentsLogObjects(v7);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_22;
    }

    LOWORD(buf) = 0;
    v15 = "Unable to get VFXSceneReadbackComponent";
    v16 = v14;
    v17 = 2;
LABEL_13:
    _os_log_debug_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEBUG, v15, &buf, v17);
    goto LABEL_22;
  }

  v10 = v7;
  v11 = 0xBF58476D1CE4E5B9 * (*v9 ^ (*v9 >> 30));
  re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(v7 + 32, v9, (0x94D049BB133111EBLL * (v11 ^ (v11 >> 27))) ^ ((0x94D049BB133111EBLL * (v11 ^ (v11 >> 27))) >> 31), &buf);
  v12 = HIDWORD(buf);
  if (HIDWORD(buf) == 0x7FFFFFFF)
  {
    v13 = *(v10 + 15);
  }

  else
  {
    v19 = *(v10 + 6);
    v20 = *(v19 + 88 * HIDWORD(buf)) & 0x7FFFFFFF;
    if (v27 == 0x7FFFFFFF)
    {
      *(*(v10 + 5) + 4 * DWORD2(buf)) = v20;
      v12 = HIDWORD(buf);
    }

    else
    {
      *(v19 + 88 * v27) = *(v19 + 88 * v27) & 0x80000000 | v20;
    }

    v21 = (v19 + 88 * v12);
    v22 = *v21;
    if (*v21 < 0)
    {
      *v21 = v22 & 0x7FFFFFFF;
      re::DynamicArray<unsigned long>::deinit((v21 + 6));
      v23 = HIDWORD(buf);
      v19 = *(v10 + 6);
      v22 = *(v19 + 88 * HIDWORD(buf));
      v12 = HIDWORD(buf);
    }

    else
    {
      v23 = v12;
    }

    *(v19 + 88 * v23) = *(v10 + 17) | v22 & 0x80000000;
    v13 = *(v10 + 15) - 1;
    *(v10 + 15) = v13;
    v24 = *(v10 + 18) + 1;
    *(v10 + 17) = v12;
    *(v10 + 18) = v24;
  }

  *(this + 300) = v13 != 0;
LABEL_22:
}

void re::ecs2::VFXSceneComponent::initializeBindings(re::ecs2::VFXSceneComponent *this)
{
  v2 = *(this + 56);
  if (v2)
  {

    re::ecs2::VFXSceneComponent::LegacyImpl::initializeBindings(v2, this);
  }

  else
  {
    re::ecs2::VFXSceneComponent::model(&v11, this);
    v3 = v11;

    if (v3)
    {
      v4 = *(this + 2);
      if (v4)
      {
        v5 = re::ecs2::EntityComponentCollection::getOrAdd((v4 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      }

      else
      {
        v5 = *(this + 38);
      }

      v6 = [v3 scene];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = ___ZN2re4ecs217VFXSceneComponent18initializeBindingsEv_block_invoke;
      v7[3] = &unk_1E871C070;
      v9 = this;
      v8 = v3;
      v10 = v5;
      [v6 performTransaction:v7];

      re::ecs2::VFXSceneMetadataComponent::markDirtyAndMarkDirtyForNetwork(v5);
    }
  }
}

void re::ecs2::VFXSceneComponent::updateBindingStatesInitialValues(re::ecs2::VFXSceneComponent *this)
{
  v2 = *(this + 56);
  if (v2)
  {

    re::ecs2::VFXSceneComponent::LegacyImpl::updateBindingStatesInitialValues(v2, this);
  }

  else
  {
    re::ecs2::VFXSceneComponent::model(&v8, this);
    v3 = v8;

    if (v3)
    {
      v4 = *(this + 2);
      if (v4)
      {
        v5 = re::ecs2::EntityComponentCollection::getOrAdd((v4 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      }

      else
      {
        v5 = *(this + 38);
      }

      v6 = [v3 scene];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = ___ZN2re4ecs217VFXSceneComponent32updateBindingStatesInitialValuesEv_block_invoke;
      v7[3] = &__block_descriptor_48_e5_v8__0l;
      v7[4] = this;
      v7[5] = v5;
      [v6 performTransaction:v7];
    }
  }
}

void re::ecs2::VFXSceneComponent::initializeBehaviorGraphBindings(uint64_t a1, void *a2, uint64_t a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = [v4 names];
  v32 = [obj countByEnumeratingWithState:&v53 objects:v62 count:16];
  if (v32)
  {
    v30 = *v54;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v54 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v53 + 1) + 8 * i);
        v7 = [v4 parameterInfoForKey:v6];
        v8 = [v4 unsafeParameterHandleForKey:v6];
        v46.n128_u32[0] = -1;
        v50 = 0;
        v47 = 0;
        v48 = 0;
        v46.n128_u64[1] = 0;
        v49 = 0;
        v51 = 0;
        v35 = 0u;
        v36 = 0u;
        v9 = re::DynamicString::setCapacity(&v35, 0);
        v37 = 0u;
        v38 = 0u;
        v10 = re::DynamicString::setCapacity(&v37, 0);
        v39 = 0u;
        v40 = 0u;
        v11 = re::DynamicString::setCapacity(&v39, 0);
        v41 = 0u;
        v42 = 0u;
        re::DynamicString::setCapacity(&v41, 0);
        v12 = [(_anonymous_namespace_ *)v8 identifier];
        v13 = [v12 UTF8String];
        v14 = strlen(v13);
        v57 = v13;
        v58 = v14;
        re::DynamicString::operator=(&v35, &v57);

        v15 = [(_anonymous_namespace_ *)v8 objectName];
        v16 = [v15 UTF8String];
        v17 = strlen(v16);
        v57 = v16;
        v58 = v17;
        re::DynamicString::operator=(&v37, &v57);

        v18 = [v6 UTF8String];
        v19 = strlen(v18);
        v57 = v18;
        v58 = v19;
        re::DynamicString::operator=(&v39, &v57);
        v43 = [v7 bindingType];
        [v7 range];
        v44 = v20;
        [v7 range];
        v45 = v21;
        v22 = [v7 documentation];
        v23 = [v22 UTF8String];
        v24 = strlen(v23);
        v57 = v23;
        v58 = v24;
        re::DynamicString::operator=(&v41, &v57);

        v25 = *(a3 + 48);
        re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::add((a3 + 32), &v35);
        v46.n128_u32[0] = v25;
        v52 = 0;
        if (BYTE8(v35))
        {
          v26 = v36;
        }

        else
        {
          v26 = &v35 + 9;
        }

        v27 = strlen(v26);
        if (v27)
        {
          MurmurHash3_x64_128(v26, v27, 0, &v57);
          v28 = (v58 + 64 * v57 + (v57 >> 2) - 0x61C8864680B583E9) ^ v57;
        }

        else
        {
          v28 = 0;
        }

        v33 = v28;
        re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1 + 104, &v33, &v34);
        re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1 + 152, &v34, &v46);
        v57 = v6;
        v58 = v4;
        v59 = 0;
        v60 = 0;
        v61 = 0;
        re::HashTable<unsigned long,re::ecs2::VFXSceneComponent::BindingRuntimeData,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1 + 200, &v34, &v57);

        if (v41)
        {
          if (BYTE8(v41))
          {
            (*(*v41 + 40))();
          }

          v41 = 0u;
          v42 = 0u;
        }

        if (v39)
        {
          if (BYTE8(v39))
          {
            (*(*v39 + 40))();
          }

          v39 = 0u;
          v40 = 0u;
        }

        if (v37)
        {
          if (BYTE8(v37))
          {
            (*(*v37 + 40))();
          }

          v37 = 0u;
          v38 = 0u;
        }

        if (v35 && (BYTE8(v35) & 1) != 0)
        {
          (*(*v35 + 40))();
        }

        if (v46.n128_u64[1] && v50)
        {
          (*(*v46.n128_u64[1] + 40))();
        }
      }

      v32 = [obj countByEnumeratingWithState:&v53 objects:v62 count:16];
    }

    while (v32);
  }
}

uint64_t re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(uint64_t a1, void *a2, void *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, v9, v8);
    *(result + 8) = *a2;
    *(result + 16) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

void re::ecs2::VFXSceneComponent::LegacyImpl::initializeBindings(re::ecs2::VFXSceneComponent::LegacyImpl *this, re::ecs2::VFXSceneComponent *a2)
{
  v69 = *MEMORY[0x1E69E9840];
  re::ecs2::VFXSceneComponent::model(v45, a2);
  v3 = v45[0];
  v4 = [v45[0] scene];

  if (v4)
  {
    v5 = *(a2 + 2);
    if (v5)
    {
      v6 = re::ecs2::EntityComponentCollection::getOrAdd((v5 + 48), re::ecs2::ComponentImpl<re::ecs2::VFXSceneMetadataComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    }

    else
    {
      v6 = *(a2 + 38);
    }

    v7 = [v4 bindings];
    v8 = [v7 count];
    if (v6[5] < v8)
    {
      re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::setCapacity(v6 + 4, v8);
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = [v4 bindings];
    v9 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
    if (v9)
    {
      v10 = v9;
      v35 = *v63;
      do
      {
        v11 = 0;
        do
        {
          if (*v63 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v62 + 1) + 8 * v11);
          v55.n128_u32[0] = -1;
          v59 = 0;
          v56 = 0;
          v57 = 0;
          v55.n128_u64[1] = 0;
          v58 = 0;
          v60 = 0;
          memset(v45, 0, sizeof(v45));
          v13 = re::DynamicString::setCapacity(v45, 0);
          v46 = 0u;
          v47 = 0u;
          v14 = re::DynamicString::setCapacity(&v46, 0);
          v48 = 0u;
          v49 = 0u;
          v15 = re::DynamicString::setCapacity(&v48, 0);
          v50 = 0u;
          v51 = 0u;
          re::DynamicString::setCapacity(&v50, 0);
          v16 = [v12 identifier];
          v17 = [v16 UTF8String];

          v18 = [v12 objectName];
          v19 = [v18 UTF8String];

          v20 = [v12 bindingName];
          v21 = [v20 UTF8String];

          re::DynamicString::operator=(v45, &v43);
          re::DynamicString::operator=(&v46, &v41);
          re::DynamicString::operator=(&v48, &v39);
          v52 = [v12 type];
          [v12 min];
          v53 = v22;
          v23 = [v12 max];
          v54 = v24;
          v25 = [v12 userManual];
          v26 = [v25 UTF8String];
          v27 = strlen(v26);
          v67 = v26;
          v68 = v27;
          re::DynamicString::operator=(&v37, &v67);

          re::DynamicString::operator=(&v50, &v37);
          v28 = v6[6];
          re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::add((v6 + 4), v45);
          v55.n128_u32[0] = v28;
          v61 = [v12 objectID];
          v29 = [v12 identifier];
          v30 = [v29 UTF8String];
          v31 = strlen(v30);
          if (v31)
          {
            MurmurHash3_x64_128(v30, v31, 0, &v67);
            v32 = (v68 + (v67 << 6) + (v67 >> 2) - 0x61C8864680B583E9) ^ v67;
          }

          else
          {
            v32 = 0;
          }

          v67 = v32;
          re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a2 + 104, &v67, &v36);
          v33 = re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a2 + 152, &v36, &v55);
          if (v37 && (v38 & 1) != 0)
          {
            (*(*v37 + 40))(v33);
          }

          if (v39 && (v40 & 1) != 0)
          {
            (*(*v39 + 40))(v33);
          }

          if (v41 && (v42 & 1) != 0)
          {
            (*(*v41 + 40))(v33);
          }

          if (v43 && (v44 & 1) != 0)
          {
            (*(*v43 + 40))(v33);
          }

          if (v50)
          {
            if (BYTE8(v50))
            {
              (*(*v50 + 40))(v33);
            }

            v33 = 0uLL;
            v50 = 0u;
            v51 = 0u;
          }

          if (v48)
          {
            if (BYTE8(v48))
            {
              (*(*v48 + 40))(v33);
            }

            v33 = 0uLL;
            v48 = 0u;
            v49 = 0u;
          }

          if (v46)
          {
            if (BYTE8(v46))
            {
              (*(*v46 + 40))(v33);
            }

            v33 = 0uLL;
            v46 = 0u;
            v47 = 0u;
          }

          if (v45[0] && (v45[1] & 1) != 0)
          {
            (*(*v45[0] + 40))(v33);
          }

          v9 = v55.n128_u64[1];
          if (v55.n128_u64[1] && v59)
          {
            v9 = (*(*v55.n128_u64[1] + 40))(v33);
          }

          v11 = (v11 + 1);
        }

        while (v10 != v11);
        v9 = [obj countByEnumeratingWithState:&v62 objects:v66 count:{16, v33.n128_f64[0]}];
        v10 = v9;
      }

      while (v9);
    }

    re::ecs2::VFXSceneMetadataComponent::markDirtyAndMarkDirtyForNetwork(v6);
  }
}

void ___ZN2re4ecs217VFXSceneComponent18initializeBindingsEv_block_invoke(uint64_t a1)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) rootNode];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = ___ZN2re4ecs217VFXSceneComponent18initializeBindingsEv_block_invoke_2;
  v16[3] = &unk_1E871C000;
  v16[4] = &v17;
  [v3 enumerateChildNodesUsingBlock:v16];

  v4 = [*(a1 + 32) assetRegistry];
  v5 = [v4 rootNode];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = ___ZN2re4ecs217VFXSceneComponent18initializeBindingsEv_block_invoke_3;
  v15[3] = &unk_1E871C028;
  v15[4] = &v17;
  [v5 enumerateHierarchyUsingBlock:v15];

  v6 = *(a1 + 48);
  v7 = v18[3];
  if (*(v6 + 40) < v7)
  {
    re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::setCapacity((v6 + 32), v7);
  }

  v8 = [*(a1 + 32) rootNode];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = ___ZN2re4ecs217VFXSceneComponent18initializeBindingsEv_block_invoke_4;
  v14[3] = &__block_descriptor_48_e21_v24__0__VFXNode_8_B16l;
  v9 = *(a1 + 48);
  v14[4] = v2;
  v14[5] = v9;
  [v8 enumerateChildNodesUsingBlock:v14];

  v10 = [*(a1 + 32) assetRegistry];
  v11 = [v10 rootNode];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___ZN2re4ecs217VFXSceneComponent18initializeBindingsEv_block_invoke_5;
  v13[3] = &__block_descriptor_48_e26_v24__0__VFXAssetNode_8_B16l;
  v12 = *(a1 + 48);
  v13[4] = v2;
  v13[5] = v12;
  [v11 enumerateHierarchyUsingBlock:v13];

  _Block_object_dispose(&v17, 8);
}

void ___ZN2re4ecs217VFXSceneComponent18initializeBindingsEv_block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [a2 behaviorGraph];
  v3 = [v4 bindings];
  *(*(*(a1 + 32) + 8) + 24) += [v3 count];
}

void ___ZN2re4ecs217VFXSceneComponent18initializeBindingsEv_block_invoke_3(uint64_t a1, void *a2)
  v3 = {;
  if (v3)
  {
    v5 = v3;
    v4 = [v3 bindings];
    *(*(*(a1 + 32) + 8) + 24) += [v4 count];

    v3 = v5;
  }
}

void ___ZN2re4ecs217VFXSceneComponent18initializeBindingsEv_block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 behaviorGraph];
  re::ecs2::VFXSceneComponent::initializeBehaviorGraphBindings(v3, v4, *(a1 + 40));
}

void ___ZN2re4ecs217VFXSceneComponent18initializeBindingsEv_block_invoke_5(uint64_t a1, void *a2)
{
  v4 = v3 = *(a1 + 32);
  if (v4)
  {
    v6 = v4;
    v5 = v4;
    re::ecs2::VFXSceneComponent::initializeBehaviorGraphBindings(v3, v5, *(a1 + 40));

    v4 = v6;
  }
}

void re::ecs2::VFXSceneComponent::LegacyImpl::updateBindingStatesInitialValues(re::ecs2::VFXSceneComponent::LegacyImpl *this, re::ecs2::VFXSceneComponent *a2)
{
  if (!*(a2 + 4))
  {
    v11[5] = v2;
    v11[6] = v3;
    re::ecs2::VFXSceneComponent::model(v11, a2);
    v5 = v11[0];

    v6 = [v5 scene];
    v7 = v6;
    if (v5)
    {
      if (v6)
      {
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = ___ZN2re4ecs217VFXSceneComponent10LegacyImpl32updateBindingStatesInitialValuesERS1__block_invoke;
        v8[3] = &unk_1E871AD90;
        v10 = a2;
        v9 = v5;
        [v7 performTransaction:v8];
      }
    }
  }
}

void ___ZN2re4ecs217VFXSceneComponent32updateBindingStatesInitialValuesEv_block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  v3 = *(v2 + 184);
  if (v3)
  {
    v4 = 0;
    v5 = *(v2 + 168);
    while (1)
    {
      v6 = *v5;
      v5 += 22;
      if (v6 < 0)
      {
        break;
      }

      if (v3 == ++v4)
      {
        LODWORD(v4) = *(v2 + 184);
        break;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (v4 != v3)
  {
    v7 = *(v2 + 184);
    do
    {
      v8 = *(v2 + 168) + 88 * v4;
      if (!*(v8 + 64))
      {
        *(v8 + 64) = 1;
        v7 = *(v2 + 184);
      }

      if (v7 <= v4 + 1)
      {
        v9 = v4 + 1;
      }

      else
      {
        v9 = v7;
      }

      while (v9 - 1 != v4)
      {
        LODWORD(v4) = v4 + 1;
        if ((*(*(v2 + 168) + 88 * v4) & 0x80000000) != 0)
        {
          goto LABEL_18;
        }
      }

      LODWORD(v4) = v9;
LABEL_18:
      ;
    }

    while (v4 != v3);
  }
}

void re::ecs2::anonymous namespace::readBinding<re::HashTable<unsigned long,re::ecs2::VFXSceneComponent::BindingRuntimeData,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>>(re::ecs2::VFXSceneMetadataComponent *a1, uint64_t a2, uint64_t a3, int a4)
{
  Descriptor = re::ecs2::VFXSceneMetadataComponent::getDescriptor(a1, *a3);
  v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
  re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v22, a2, v8, v9 ^ (v9 >> 31));
  if (v23 != 0x7FFFFFFF)
  {
    v10 = *(a2 + 16) + (v23 << 6);
    v12 = *(v10 + 16);
    v11 = v10 + 16;
    v20 = v12;
    if (a4 && (v13 = *(v11 + 16)) != 0)
    {
      v16 = *(v11 + 24);
      v15 = (v11 + 24);
      v14 = v16;
      if (!v16)
      {
        v17 = [v13 unsafeParameterHandleForKey:v20];
        re::ObjCObject::operator=(v15, v17);

        v14 = *v15;
      }

      v18 = [v14 rawValue];
    }

    else
    {
      v18 = [*(v11 + 8) bindingValueForKey:v20];
    }

    v19 = v18;
    re::DynamicArray<BOOL>::resize(a3 + 8, [v18 length]);
    memcpy(*(a3 + 40), [v19 bytes], *(a3 + 24));
  }
}

void ___ZN2re4ecs217VFXSceneComponent22writeBindingsToRuntimeEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 184);
  if (v2)
  {
    v3 = 0;
    v4 = *(v1 + 168);
    while (1)
    {
      v5 = *v4;
      v4 += 22;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(v1 + 184);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (v3 != v2)
  {
    v6 = 0xBF58476D1CE4E5B9;
    v7 = 0x94D049BB133111EBLL;
    v8 = *(v1 + 184);
    do
    {
      v9 = *(v1 + 168) + 88 * v3;
      v10 = *(v9 + 8);
      v11 = (((v10 ^ (v10 >> 30)) * v6) ^ (((v10 ^ (v10 >> 30)) * v6) >> 27)) * v7;
      re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v25, v1 + 248, v10, v11 ^ (v11 >> 31));
      if (v26 != 0x7FFFFFFF)
      {
        v12 = (*(v1 + 264) + (v26 << 6));
        v13 = *(v9 + 64);
        if (v12[6] != v13)
        {
          v12[6] = v13;
          v14 = v12[3];
          v15 = v14;
          v16 = v12[2];
          v17 = v16;
          v18 = v7;
          v19 = v6;
          v20 = *(v9 + 56);
          v21 = *(v9 + 40);
          v22 = v14;
          v23 = v20;
          v6 = v19;
          v7 = v18;
          [v22 setBindingValue:v23 size:v21 forKey:v16];

          v8 = *(v1 + 184);
        }
      }

      if (v8 <= v3 + 1)
      {
        v24 = v3 + 1;
      }

      else
      {
        v24 = v8;
      }

      while (v24 - 1 != v3)
      {
        LODWORD(v3) = v3 + 1;
        if ((*(*(v1 + 168) + 88 * v3) & 0x80000000) != 0)
        {
          goto LABEL_19;
        }
      }

      LODWORD(v3) = v24;
LABEL_19:
      ;
    }

    while (v3 != v2);
  }
}

void ___ZN2re4ecs217VFXSceneComponent23readBindingsFromRuntimeEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 64);
  if (v3)
  {
    v4 = 0;
    v5 = *(v2 + 48);
    while (1)
    {
      v6 = *v5;
      v5 += 22;
      if (v6 < 0)
      {
        break;
      }

      if (v3 == ++v4)
      {
        LODWORD(v4) = *(v2 + 64);
        break;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (v4 != v3)
  {
    v7 = *(a1 + 32);
    do
    {
      v8 = *(v2 + 64);
      if (v8 <= v4 + 1)
      {
        v8 = v4 + 1;
      }

      while (v8 - 1 != v4)
      {
        LODWORD(v4) = v4 + 1;
        if ((*(*(v2 + 48) + 88 * v4) & 0x80000000) != 0)
        {
          goto LABEL_15;
        }
      }

      LODWORD(v4) = v8;
LABEL_15:
      ;
    }

    while (v4 != v3);
  }
}

void re::ecs2::VFXSceneComponent::findClientTextureAssetNode(uint64_t *__return_ptr a1@<X8>, re::ecs2::VFXSceneComponent *this@<X0>, NSString *a3@<X1>)
{
  v5 = a3;
  VFXClientTextureAssetClass = re::getVFXClientTextureAssetClass(v5);
  if (VFXClientTextureAssetClass)
  {
    v7 = VFXClientTextureAssetClass;
    v8 = *(this + 7);
    v9 = v8;
    *buf = 0;
    v17 = buf;
    v18 = 0x3812000000;
    v19 = __Block_byref_object_copy__10;
    v20 = __Block_byref_object_dispose__10;
    v21 = 256;
    v22 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = ___ZNK2re4ecs217VFXSceneComponent26findClientTextureAssetNodeEP8NSString_block_invoke;
    v12[3] = &unk_1E871C0C0;
    v15 = v7;
    v13 = v5;
    v14 = buf;
    v10 = v8;
    [v10 enumerateHierarchyUsingBlock:v12];
    *a1 = *(v17 + 6);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if ((atomic_exchange(&re::ecs2::VFXSceneComponent::findClientTextureAssetNode(NSString *)const::__FILE____LINE___logged, 1u) & 1) == 0)
    {
      v11 = *re::ecsComponentsLogObjects(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "VFX framework is not loaded", buf, 2u);
      }
    }

    *a1 = 0;
  }
}

id re::ecs2::VFXSceneComponent::LegacyImpl::addCollisionPlane(double a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7)
{
  result = *(a7 + 48);
  if (result)
  {

    return [result addCollisionPlaneWithExtents:a1 transform:{a2, a3, a4, a5}];
  }

  return result;
}

id re::ecs2::VFXSceneComponent::updateCollisionPlane(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  v9 = *(a1 + 448);
  if (v9)
  {
    return re::ecs2::VFXSceneComponent::LegacyImpl::updateCollisionPlane(a3, a4, a5, a6, a7, v9, a1, a2);
  }

  else
  {
    return [*(a1 + 72) updateCollisionPlane:a2 extents:? transform:?];
  }
}

id re::ecs2::VFXSceneComponent::LegacyImpl::updateCollisionPlane(double a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = *(a7 + 48);
  if (result)
  {

    return [result updateCollisionPlaneWithId:a8 extents:a1 transform:{a2, a3, a4, a5}];
  }

  return result;
}

id re::ecs2::VFXSceneComponent::removeCollisionPlane(re::ecs2::VFXSceneComponent *this, uint64_t a2)
{
  v4 = *(this + 56);
  if (v4)
  {
    return re::ecs2::VFXSceneComponent::LegacyImpl::removeCollisionPlane(v4, this, a2);
  }

  else
  {
    return [*(this + 9) removeCollisionPlane:a2];
  }
}

id re::ecs2::VFXSceneComponent::LegacyImpl::removeCollisionPlane(re::ecs2::VFXSceneComponent::LegacyImpl *this, id *a2, uint64_t a3)
{
  result = a2[6];
  if (result)
  {

    return [result removeCollisionPlaneWithId:a3];
  }

  return result;
}

id re::ecs2::VFXSceneComponent::needsCollisionPlanes(re::ecs2::VFXSceneComponent *this)
{
  v2 = *(this + 56);
  if (v2)
  {
    return re::ecs2::VFXSceneComponent::LegacyImpl::needsCollisionPlanes(v2, this);
  }

  else
  {
    return [*(this + 9) wantsCollisionPlanes];
  }
}

id re::ecs2::VFXSceneComponent::LegacyImpl::needsCollisionPlanes(re::ecs2::VFXSceneComponent::LegacyImpl *this, id *a2)
{
  result = a2[6];
  if (result)
  {

    return [result needsCollisionPlanes];
  }

  return result;
}

void re::ecs2::VFXSceneComponent::worldAabb(id *a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  if (a1[56])
  {

    re::ecs2::VFXSceneComponent::LegacyImpl::worldAabb(a1, a3);
  }

  else
  {
    v5 = a1[6];
    v6 = [v5 presentationNode];

    [v6 boundingBox];
    v11 = v7;
    v12 = v8;

    v9 = v11;
    v10 = v12;
    v9.i32[3] = 0;
    v10.i32[3] = 0;
    v13[0] = vminnmq_f32(v9, xmmword_1E306D4A0);
    v13[1] = vmaxnmq_f32(v10, xmmword_1E306D4B0);
    re::AABB::transform(v13, a2, a3);
  }
}

void re::ecs2::VFXSceneComponent::setParameterValueForIdentifier(re::ecs2::VFXSceneComponent *this, NSString *a2, uint64_t a3, NSValue *a4)
{
  v7 = a2;
  v8 = a4;
  VFXMemorySerializationClass = re::getVFXMemorySerializationClass(v8);
  if (VFXMemorySerializationClass)
  {
    v10 = VFXMemorySerializationClass;
    v11 = 0;
    switch(a3)
    {
      case 0:
        v12 = v19;
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_17;
        goto LABEL_24;
      case 1:
        v12 = v35;
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke;
        goto LABEL_24;
      case 2:
        v12 = v34;
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_2;
        goto LABEL_24;
      case 3:
        v12 = v33;
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_3;
        goto LABEL_24;
      case 4:
        v12 = v32;
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_4;
        goto LABEL_24;
      case 5:
        v12 = v31;
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_5;
        goto LABEL_24;
      case 6:
        v12 = v30;
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_6;
        goto LABEL_24;
      case 7:
        v12 = v29;
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_7;
        goto LABEL_24;
      case 8:
        v12 = v28;
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_8;
        goto LABEL_24;
      case 9:
        v12 = v27;
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_9;
        goto LABEL_24;
      case 10:
        v12 = v26;
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_10;
        goto LABEL_24;
      case 11:
      case 12:
        v12 = v25;
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_11;
        goto LABEL_24;
      case 13:
      case 18:
        v12 = v24;
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_12;
        goto LABEL_24;
      case 14:
      case 19:
        v12 = v23;
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_13;
        goto LABEL_24;
      case 15:
      case 20:
        v12 = v22;
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_14;
        goto LABEL_24;
      case 16:
      case 21:
        v12 = v21;
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_15;
        goto LABEL_24;
      case 17:
      case 22:
        v12 = v20;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_16;
        goto LABEL_24;
      case 24:
      case 25:
        v12 = &v17;
        v17 = MEMORY[0x1E69E9820];
        v18 = 3221225472;
        v13 = ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_18;
LABEL_24:
        v12[2] = v13;
        v12[3] = &unk_1E871C098;
        v12[5] = VFXMemorySerializationClass;
        v12[4] = v8;
        v11 = _Block_copy(v12);

        break;
      default:
        break;
    }

    v15 = [(objc_class *)v10 VFXSerializedBufferSize:[(NSValue *)v8 pointerValue:v17] type:a3];
    re::ecs2::VFXSceneComponent::setParameterValueCopy(this, v7, v16, v15, v11);
  }

  else if ((atomic_exchange(&re::ecs2::VFXSceneComponent::setParameterValueForIdentifier(NSString *,long,NSValue *)::__FILE____LINE___logged, 1u) & 1) == 0)
  {
    v14 = *re::ecsComponentsLogObjects(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "VFX framework is not loaded", buf, 2u);
    }
  }
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *[*(a1 + 32) pointerValue];

  return [v3 writeBool:v4 to:a2];
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *[*(a1 + 32) pointerValue];

  return [v3 writeUInt8:v4 to:a2];
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *[*(a1 + 32) pointerValue];

  return [v3 writeUInt16:v4 to:a2];
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *[*(a1 + 32) pointerValue];

  return [v3 writeUInt32:v4 to:a2];
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_5(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *[*(a1 + 32) pointerValue];

  return [v3 writeUInt64:v4 to:a2];
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_6(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *[*(a1 + 32) pointerValue];

  return [v3 writeInt:v4 to:a2];
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_7(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *[*(a1 + 32) pointerValue];

  return [v3 writeInt8:v4 to:a2];
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *[*(a1 + 32) pointerValue];

  return [v3 writeInt16:v4 to:a2];
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_9(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *[*(a1 + 32) pointerValue];

  return [v3 writeInt32:v4 to:a2];
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *[*(a1 + 32) pointerValue];

  return [v3 writeInt64:v4 to:a2];
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_11(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  LODWORD(v4) = *[*(a1 + 32) pointerValue];

  return [v3 writeFloat:a2 to:v4];
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_12(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *[*(a1 + 32) pointerValue];

  return [v3 writeSIMD2F:a2 to:v4];
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_13(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *[*(a1 + 32) pointerValue];

  return [v3 writeSIMD3F:a2 to:*&v4];
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *[*(a1 + 32) pointerValue];

  return [v3 writeSIMD4F:a2 to:*&v4];
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_15(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) pointerValue];
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];

  return [v3 writeSIMD3x3F:a2 to:{*&v5, *&v6, *&v7}];
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_16(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) pointerValue];
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];

  return [v3 writeSIMD4x4F:a2 to:{*&v5, *&v6, *&v7, *&v8}];
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_17(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) pointerValue];

  return [v3 writeString:v4 to:a2];
}

uint64_t ___ZN2re4ecs217VFXSceneComponent30setParameterValueForIdentifierEP8NSStringlP7NSValue_block_invoke_18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) pointerValue];

  return [v3 writeKeyframeAnimation:v4 to:a2];
}

void re::ecs2::VFXSceneComponent::setClientTexture(re::ecs2::VFXSceneComponent *this, NSString *a2, void *a3)
{
  v6 = *(this + 56);
  if (v6)
  {

    re::ecs2::VFXSceneComponent::LegacyImpl::setClientTexture(v6, this, a2, a3);
  }

  else
  {
    re::ecs2::VFXSceneComponent::findClientTextureAssetNode(&v10, this, a2);
    v9 = v10;

    v7 = v9;
    if (v9)
    {
      v8 = [v9 asset];
      [v8 setTexture:*a3];

      v7 = v9;
    }
  }
}

void re::ecs2::VFXSceneComponent::LegacyImpl::setClientTexture(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a3;
  v6 = *(a2 + 48);
  v7 = [v6 effect];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = [v7 fetchClientTextureIDWithNamed:v11];
    if (v10)
    {
      [v8 setClientTextureWithId:v10 texture:*a4];
    }
  }
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

void ___ZNK2re4ecs217VFXSceneComponent26findClientTextureAssetNodeEP8NSString_block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v11 = a2;
  v5 = [v11 asset];
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = v11;
  if (isKindOfClass)
  {
    v8 = [v11 asset];
    v9 = [v8 clientIdentifier];
    v10 = [v9 isEqualToString:a1[4]];

    if (v10)
    {
      re::ObjCObject::operator=((*(a1[5] + 8) + 48), v11);
      *a3 = 1;
    }

    v7 = v11;
  }
}

double re::operator*<float>@<D0>(float32x4_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = 0;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v8;
  do
  {
    v14[v3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(v13[v3])), v5, *&v13[v3], 1), v6, v13[v3], 2), v7, v13[v3], 3);
    ++v3;
  }

  while (v3 != 4);
  result = *v14;
  v10 = v14[1];
  v11 = v14[2];
  v12 = v14[3];
  *a3 = v14[0];
  a3[1] = v10;
  a3[2] = v11;
  a3[3] = v12;
  return result;
}

__n128 re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::add(_anonymous_namespace_ *this, re::DynamicString *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 160 * v4;
  re::DynamicString::DynamicString(v5, a2);
  re::DynamicString::DynamicString((v5 + 32), (a2 + 32));
  re::DynamicString::DynamicString((v5 + 64), (a2 + 64));
  re::DynamicString::DynamicString((v5 + 96), (a2 + 96));
  result = *(a2 + 8);
  v7 = *(a2 + 9);
  *(v5 + 128) = result;
  *(v5 + 144) = v7;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::copy(a1, a2);
    }
  }

  return a1;
}

void re::DynamicArray<re::ecs2::VFXREBindingDescriptor>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 160 * v2;
    do
    {
      re::DynamicString::deinit((v3 + 96));
      re::DynamicString::deinit((v3 + 64));
      re::DynamicString::deinit((v3 + 32));
      re::DynamicString::deinit(v3);
      v3 += 160;
      v4 -= 160;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

void re::ecs2::VFXSystem::~VFXSystem(re::ecs2::VFXSystem *this)
{
  re::AssetHandle::~AssetHandle((this + 392));

  re::ecs2::System::~System(this);
}

{
  re::AssetHandle::~AssetHandle((this + 392));
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long const&,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 72 * HIDWORD(v9) + 16;
  }
}

uint64_t re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long const&,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  *(v7 + 16) = 0u;
  v9 = v7 + 16;
  *(v7 + 8) = v8;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0u;
  *(v7 + 52) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v7 + 16), a4);
  ++*(a1 + 40);
  return v9;
}

uint64_t re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_5;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(result + 16);
  if (*(v7 + 72 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 72 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 72 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 72 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_6;
      }
    }

    v5 = v8;
  }

LABEL_6:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 72 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 72 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 72 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 64) = a3;
  ++*(a1 + 28);
  return v7 + 72 * v5;
}

void re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, v9);
      re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t *re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(uint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 64) % *(v4 + 6), *(v7 + v5 + 64));
        v9 = *(a2 + 16) + v5;
        v10 = *(v9 + 8);
        *(v8 + 16) = 0u;
        v8 += 16;
        *(v8 - 8) = v10;
        *(v8 + 32) = 0;
        *(v8 + 16) = 0u;
        *(v8 + 36) = 0x7FFFFFFFLL;
        result = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v8, (v9 + 16));
        v2 = *(a2 + 32);
      }

      v5 += 72;
    }
  }

  return result;
}

double re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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
          re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v6 + v4 + 16));
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