void re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 176 * v10, 16);
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

uint64_t (***re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CE98E0;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v14);
}

uint64_t (***re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CE9938;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v14);
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::invalidateEntityHierarchyEventHandler<REComponentDidChangeEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CE9888;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CE9888;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CE98E0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CE98E0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CE9938;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CE9938;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::invalidateEntityHierarchyEventHandler<RESceneEntityDidReparentEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CE9990;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CE9990;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::invalidateEntityHierarchyEventHandler<RESceneEntityDidActivateEvent>(uint64_t a1, unint64_t a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CE99E8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CE99E8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::invalidateEntityHierarchyEventHandler<RESceneEntityWillDeactivateEvent>(uint64_t a1, unint64_t a2)
{
  v5 = a2;
  v3 = a1 + 200;
  (*(*a1 + 40))(a1);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 104, &v5);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(v3, &v5);
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CE9A40;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::BillboardData>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CE9A40;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::HashTable<re::ecs2::Entity const*,BOOL,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    result = re::HashTable<re::ecs2::Entity const*,BOOL,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(a1, v9, v8);
    *(result + 8) = *a2;
    *(result + 16) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::HashTable<re::ecs2::Entity const*,BOOL,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::ecs2::Entity const*,BOOL,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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

void re::HashTable<re::ecs2::Entity const*,BOOL,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
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
      re::HashTable<re::ecs2::Entity const*,BOOL,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::move(a1, v9);
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

uint64_t re::HashTable<re::ecs2::Entity const*,BOOL,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    do
    {
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<re::ecs2::Entity const*,BOOL,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(v4, *(v7 + v5 + 24) % *(v4 + 24), *(v7 + v5 + 24));
        *(result + 8) = *(*(a2 + 16) + v5 + 8);
        v7 = *(a2 + 16);
        *(result + 16) = *(v7 + v5 + 16);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_10;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 176 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_10:
    v6 = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v8 = *(v7 + 176 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 176 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 176 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_11;
      }
    }

    v5 = v8;
  }

LABEL_11:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v30, 0, 36);
          *&v30[36] = 0x7FFFFFFFLL;
          re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::init(v30, v9, v8);
          v11 = *v30;
          *v30 = *a1;
          *a1 = v11;
          v12 = *&v30[16];
          v13 = *(a1 + 16);
          *&v30[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v30[24];
          *&v30[24] = *(a1 + 24);
          v14 = *&v30[32];
          *(a1 + 24) = v15;
          ++*&v30[40];
          v16 = v14;
          if (v14)
          {
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(a1, *(v13 + 160) % *(a1 + 24), *(v13 + 160));
                *(v17 + 8) = *(v13 + 8);
                v18 = *(v13 + 96);
                v19 = *(v13 + 112);
                v20 = *(v13 + 144);
                *(v17 + 128) = *(v13 + 128);
                *(v17 + 144) = v20;
                *(v17 + 96) = v18;
                *(v17 + 112) = v19;
                v21 = *(v13 + 32);
                v22 = *(v13 + 48);
                v23 = *(v13 + 80);
                *(v17 + 64) = *(v13 + 64);
                *(v17 + 80) = v23;
                *(v17 + 32) = v21;
                *(v17 + 48) = v22;
                *(v17 + 16) = *(v13 + 16);
              }

              v13 += 176;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::deinit(v30);
        }
      }

      else
      {
        if (v8)
        {
          v26 = 2 * v7;
        }

        else
        {
          v26 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v24 = *(a1 + 16);
    v25 = *(v24 + 176 * v5);
  }

  else
  {
    v24 = *(a1 + 16);
    v25 = *(v24 + 176 * v5);
    *(a1 + 36) = v25 & 0x7FFFFFFF;
  }

  v27 = v24 + 176 * v5;
  *v27 = v25 | 0x80000000;
  v28 = *(a1 + 8);
  *v27 = *(v28 + 4 * a2) | 0x80000000;
  *(v28 + 4 * a2) = v5;
  *(v27 + 160) = a3;
  ++*(a1 + 28);
  return v24 + 176 * v5;
}

uint64_t re::HashTable<re::ecs2::Scene const*,re::ecs2::CameraPosition,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v26, v9, v8);
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
            v17 = (v13 + 32);
            do
            {
              if ((*(v17 - 8) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::ecs2::Scene const*,re::ecs2::CameraPosition,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(a1, *(v17 + 4) % *(a1 + 24), *(v17 + 4));
                *(v18 + 8) = *(v17 - 3);
                *(v18 + 16) = *(v17 - 16);
                v19 = *v17;
                *(v18 + 32) = v19;
                if (v19 == 1)
                {
                  *(v18 + 48) = *(v17 + 1);
                }
              }

              v17 += 80;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v26);
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
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 80 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 80 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 80 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v5;
  *(v23 + 64) = a3;
  ++*(a1 + 28);
  return v20 + 80 * v5;
}

void re::ecs2::RigComponent::updateRigRuntimeData(void *a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, re *a7)
{
  v12 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((a5 + 32));
  v13 = v12;
  if (a6)
  {
    v14 = (a6 + 216);
  }

  else
  {
    v14 = (v12 + 640);
  }

  v15 = *(a5 + 40);
  if (v15)
  {
    v16 = *(v15 + 792);
  }

  else
  {
    v16 = 0;
  }

  v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) >> 27));
  v18 = (*(v14 + 1) + ((v16 ^ (v17 >> 31) ^ v17) << 6) + ((v16 ^ (v17 >> 31) ^ v17) >> 2) - 0x61C8864680B583E9) ^ v16 ^ (v17 >> 31) ^ v17;
  v19 = a1[5];
  if (a2)
  {
    if (v19)
    {
      v20 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v19 ^ (v19 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v19 ^ (v19 >> 30))) >> 27));
      v18 ^= (v18 << 6) - 0x61C8864680B583E9 + (v18 >> 2) + (*(v19 + 792) ^ (v20 >> 31) ^ v20);
      v21 = *(v19 + 280);
      v22 = re::AssetHandle::assetWithType((a1 + 4), v21, 0);
      v23 = v22;
      if (a1[7])
      {
        a1[7] = 0;
        re::DynamicArray<re::RigDefinition>::deinit((a1 + 8));
        v22 = re::DynamicArray<re::MeshRigGraphIndex>::deinit((a1 + 18));
      }

      goto LABEL_16;
    }
  }

  else if (v19)
  {
    re::AssetHandle::loadAsync((a1 + 4));
  }

  if (v18 != a1[7])
  {
    a1[7] = v18;
    re::DynamicArray<re::RigDefinition>::deinit((a1 + 8));
    re::DynamicArray<re::MeshRigGraphIndex>::deinit((a1 + 18));
    re::RigAsset::init((a1 + 8), v13, 0);
    v18 = a1[7];
  }

  v23 = (a1 + 8);
  v22 = re::RigAsset::assetType(v12);
  v21 = v22;
LABEL_16:
  v24 = re::RigAsset::assetType(v22);
  if (v24 == v21)
  {
    v27 = a1[24];
    re::RigRuntimeData::update((a1 + 23), v23, v13, v14, v18);
    if (v27 == a1[24])
    {
      return;
    }
  }

  else
  {
    v25 = re::RigGraphAsset::assetType(v24);
    if (v25 != v21)
    {
      v26 = *re::ecsComponentsLogObjects(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_DEFAULT, "Unknown rig asset type", buf, 2u);
      }

      return;
    }

    v28 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
    re::RigRuntimeData::update((a1 + 23), v23, v13, v14, a3, a7, a4, ((v28 ^ (v28 >> 31)) - 0x61C8864680B583E9 + (v18 << 6) + (v18 >> 2)) ^ v18);
  }

  re::ecs2::Component::markDirty(a1);
}

BOOL re::ecs2::RigComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v19, a5, 0);
  v8 = v19;
  v9 = v20;
  v10 = v20;
  v19 = a4;
  v20 = v8;
  v21 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v19);
      v13 = *(*(v12 + 16) + 192);
      if (v13 && *(v13 + 40))
      {
        v14 = v19;
        v15 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v20);
        re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v14, v15, a3[5]);
      }

      else
      {
        v16 = v19;
        v17 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v20);
        re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v16, v17, a3[4]);
        re::RigRuntimeData::clear((v12 + 184));
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v20);
    }

    while (v20 != a5 || v21 != 0xFFFF || HIWORD(v21) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3, unsigned int a4)
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

BOOL re::ecs2::RigComponentStateImpl::processPreparingComponents(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v44 = 0;
  v45 = 0;
  v8 = (*(**(*(a1 + 8) + 40) + 32))(*(*(a1 + 8) + 40), a2);
  v9 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v8);
  if (v9)
  {
    v10 = v9;
    v11 = a3[1];
    v12 = (*(*v9 + 24))(v9);
    v13 = (*(*v10 + 40))(v10, v11);
    v44 = v12;
    v45 = v13;
  }

  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v41, a5, 0);
  v14 = v41;
  v15 = v42;
  v16 = v42;
  v41 = a4;
  v42 = v14;
  v43 = v15;
  if (v14 != a5 || v16 != 0xFFFFFFFFLL)
  {
    do
    {
      v18 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v41);
      v20 = *(v18 + 2);
      v21 = *(v20[24] + 40);
      if (v21)
      {
        v22 = atomic_load((v21 + 896));
        if (v22 == 2)
        {
          v23 = v18;
          v24 = re::ecs2::RigComponentHelper::areAssetAndDependenciesLoaded(v18, v19);
          v25 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(&v44, v20);
          if (v25 && (v26 = re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(v25)) != 0)
          {
            v27 = *(v26 + 56);
            objc_storeWeak(v23 + 61, (v26 + 8));
          }

          else
          {
            v27 = 0;
          }

          v28 = (*(**(*(a1 + 8) + 40) + 32))(*(*(a1 + 8) + 40));
          v29 = v20[24];
          v30 = re::ecs2::EntityComponentCollection::get((v20 + 6), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          v31 = re::ecs2::EntityComponentCollection::get((v20 + 6), re::ecs2::ComponentImpl<re::ecs2::IKParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          re::ecs2::RigComponent::updateRigRuntimeData(v23, v24, v27, v28, v29, v30, v31);
          if (v24)
          {
            v32 = v41;
            v33 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v42);
            v34 = re::RigGraphAsset::assetType(v33);
            v35 = v23[5];
            if (v35)
            {
              v35 = v35[35];
            }

            if (v34 == v35)
            {
              v36 = 3;
            }

            else
            {
              v36 = 1;
            }

            re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::setComponentState(a3, v32, v33, v36);
          }
        }
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v42);
    }

    while (v42 != a5 || v43 != 0xFFFF || HIWORD(v43) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

BOOL re::ecs2::RigComponentStateImpl::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = 0;
  v36 = 0;
  v9 = (*(**(*(a1 + 8) + 40) + 32))(*(*(a1 + 8) + 40), a2);
  v10 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v9);
  if (v10)
  {
    v11 = v10;
    v12 = *(a3 + 8);
    v13 = (*(*v10 + 24))(v10);
    v14 = (*(*v11 + 40))(v11, v12);
    v35 = v13;
    v36 = v14;
  }

  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v32, a5, 0);
  v15 = v32;
  v16 = v33;
  v17 = v33;
  v32 = a4;
  v33 = v15;
  v34 = v16;
  if (v15 != a5 || v17 != 0xFFFFFFFFLL)
  {
    do
    {
      v19 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v32);
      v20 = *(v19 + 16);
      v21 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(&v35, v20);
      if (v21)
      {
        v22 = re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(v21);
      }

      else
      {
        v22 = 0;
      }

      WeakRetained = objc_loadWeakRetained((v19 + 488));
      if (WeakRetained)
      {
        v24 = WeakRetained - 8;
      }

      else
      {
        v24 = 0;
      }

      if (WeakRetained)
      {
      }

      if (v24 != v22)
      {
        if (v22)
        {
          v25 = *(v22 + 56);
        }

        else
        {
          v25 = 0;
        }

        v26 = (*(**(*(a1 + 8) + 40) + 32))(*(*(a1 + 8) + 40));
        v27 = v20[24];
        v28 = re::ecs2::EntityComponentCollection::get((v20 + 6), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        v29 = re::ecs2::EntityComponentCollection::get((v20 + 6), re::ecs2::ComponentImpl<re::ecs2::IKParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        re::ecs2::RigComponent::updateRigRuntimeData(v19, 1, v25, v26, v27, v28, v29);
        if (v22)
        {
          v30 = (v22 + 8);
        }

        else
        {
          v30 = 0;
        }

        objc_storeWeak((v19 + 488), v30);
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v33);
    }

    while (v33 != a5 || v34 != 0xFFFF || HIWORD(v34) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

void *re::ecs2::RigSystem::update(void *a1, uint64_t a2, uint64_t a3)
{
  v47[0] = a2;
  v47[1] = a3;
  v5 = re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v46);
  v6 = *(a3 + 200);
  if (v6)
  {
    v7 = 0;
    v8 = *(a3 + 216);
    v9 = 8 * v6;
    do
    {
      v5 = re::ecs2::SceneComponentTable::get((*v8 + 200), re::ecs2::ComponentImpl<re::ecs2::RigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
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
      v14 = v13[880].u64[0];
      if (v14 >= v7)
      {
        v14 = v7;
      }

      v13[880].i64[0] = v14;
      v15 = v13[880].u64[1];
      if (v15 <= v7)
      {
        v15 = v7;
      }

      v13[880].i64[1] = v15;
      v16 = vdupq_n_s64(1uLL);
      v16.i64[0] = v7;
      v13[881] = vaddq_s64(v13[881], v16);
      *(v12 + 184) = 0;
    }
  }

  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v45, 3037, a1, v7, 0, 0);
  re::StackScratchAllocator::StackScratchAllocator(v59);
  v55 = 1;
  v56 = 0;
  v57 = 0;
  v53 = v59;
  v54 = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v53, 0);
  v55 += 2;
  v17 = a1[54];
  if ((v17 & 0x3F) != 0)
  {
    v18 = (v17 >> 6) + 1;
  }

  else
  {
    v18 = v17 >> 6;
  }

  v58 = a1[54];
  v48[0] = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v53, v18, v48);
  v19 = *(a3 + 200);
  if (v19)
  {
    v20 = *(a3 + 216);
    v21 = 8 * v19;
    do
    {
      v22 = *v20++;
      v48[0] = v22;
      v23 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 35, v48);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v53, *(a1[36] + 16 * v23 + 8));
      v21 -= 8;
    }

    while (v21);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v53, (a1 + 49));
  v49 = 1;
  v50 = 0;
  v51 = 0;
  v48[0] = v59;
  v48[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v48, 0);
  v49 += 2;
  v24 = a1[54];
  if ((v24 & 0x3F) != 0)
  {
    v25 = (v24 >> 6) + 1;
  }

  else
  {
    v25 = v24 >> 6;
  }

  v52 = a1[54];
  v60 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v48, v25, &v60);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 49), &v53);
  v26 = v57;
  if (v55)
  {
    v26 = &v56;
  }

  v27 = v54;
  if ((v54 & 0x3FFFFFFFFFFFFFFLL) != 0)
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
        goto LABEL_45;
      }
    }

    v31 = __clz(__rbit64(v29));
    if (v31 + 1 != v28)
    {
      FirstBitSet = v31 - v28;
      do
      {
        v33 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 28), FirstBitSet);
        v34 = *(*v33 + 224);
        v35 = v33[3];
        v36 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v33[2] + 8, v35);
        if (*(v36 + 40))
        {
          v37 = (*(*v34 + 24))(v34, v47, v33, v35, v36, 0);
        }

        else
        {
          v37 = 0;
        }

        v38 = v33[5];
        v39 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v33[2] + 8, v38);
        if (*(v39 + 40))
        {
          v37 |= (*(*v34 + 32))(v34, v47, v33, v38, v39, 0);
        }

        v40 = v33[6];
        v41 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v33[2] + 8, v40);
        if (*(v41 + 40))
        {
          if (((v37 | (*(*v34 + 40))(v34, v47, v33, v40, v41, 0)) & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else if (!v37)
        {
LABEL_43:
          re::DynamicBitset<unsigned long long,64ul>::clearBit(v48, FirstBitSet);
          goto LABEL_44;
        }

        re::DynamicBitset<unsigned long long,64ul>::setBit(v48, FirstBitSet);
LABEL_44:
        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v53, FirstBitSet + 1);
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_45:
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 49), v48);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 28));
  if (v48[0] && (v49 & 1) == 0)
  {
    (*(*v48[0] + 40))();
  }

  if (v53 && (v55 & 1) == 0)
  {
    (*(*v53 + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v59);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v45, v42, v43);
  return re::ProfilerTimeGuard<(re::ProfilerStatistic)125>::end(v46);
}

unint64_t re::ecs2::RigSystem::willAddSceneToECSService(re::ecs2::RigSystem *this, re::ecs2::Scene *a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v52 = a2;
  v4 = *(this + 44);
  v5 = *(this + 90);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (this + 368);
    }

    else
    {
      v6 = *(this + 47);
    }

    v8 = 8 * v4;
    while (!*v6)
    {
      ++v6;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v7 = (this + 368);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(this + 47);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  v9 = 0;
  v10 = 8 * v4;
  do
  {
    v11 = *v7++;
    v9 |= v11;
    v10 -= 8;
  }

  while (v10);
  if (v9)
  {
LABEL_16:
    *&v44 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 344, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 224, v44);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::init(v12, this + 224, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 35, &v52, &v44);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 344, v44);
    v13 = v44;
    goto LABEL_49;
  }

LABEL_17:
  v51 = 0u;
  v44 = 0u;
  *&v45 = 0;
  v46 = 0u;
  v47 = 0u;
  *(&v45 + 1) = -1;
  v48 = 0;
  v49 = 1;
  v50 = 0uLL;
  v14 = *(this + 33);
  *&v51 = 0;
  v15 = *(this + 29);
  DWORD2(v51) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>,4ul>::setBucketsCapacity((this + 224), (v14 + 4) >> 2);
    v15 = *(this + 29);
  }

  if (v15 <= v14 >> 2)
  {
    v53 = 0;
    memset(v62, 0, sizeof(v62));
    v40 = MEMORY[0x1E69E9C10];
    v54 = 136315906;
    v55 = "operator[]";
    v56 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v41 = 3;
    }

    else
    {
      v41 = 2;
    }

    v57 = 858;
    v58 = 2048;
    v59 = v14 >> 2;
    v60 = 2048;
    v61 = v15;
    _os_log_send_and_compose_impl(v41, &v53, v62, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v54, 38, v42, v43);
    _os_crash_msg();
    __break(1u);
LABEL_56:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(this + 240))
  {
    v16 = this + 248;
  }

  else
  {
    v16 = *(this + 32);
  }

  v17 = *&v16[8 * (v14 >> 2)];
  ++*(this + 33);
  ++*(this + 68);
  v18 = v17 + 112 * (v14 & 3);
  v19 = v44;
  v20 = v45;
  v21 = v46;
  *(v18 + 48) = v47;
  *(v18 + 16) = v20;
  *(v18 + 32) = v21;
  *v18 = v19;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v18 + 56, &v47 + 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v44);
  v23 = *(this + 33);
  if (!v23)
  {
    goto LABEL_56;
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 224, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::init(v24, this + 224, v52);
  *&v62[0] = *(this + 33) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 35, &v52, v62);
  v25 = *(this + 33);
  v26 = *(this + 48);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(this + 48) = v25;
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 344), v27, &v44);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(this + 48) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(this + 360))
    {
      v30 = this + 368;
    }

    else
    {
      v30 = *(this + 47);
    }

    *&v30[8 * *(this + 44) - 8] &= v28;
  }

  v31 = *(this + 33);
  v32 = *(this + 54);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(this + 54) = v31;
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 392), v33, &v44);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(this + 54) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(this + 408))
    {
      v36 = this + 416;
    }

    else
    {
      v36 = *(this + 53);
    }

    *&v36[8 * *(this + 50) - 8] &= v34;
  }

  v13 = *&v62[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(this + 392, v13);
  if (*(this + 456) == 1)
  {
    v38 = *(this + 55);
    v39 = *(v52 + 47);
    LOWORD(v44) = 257;
    DWORD1(v44) = 1023969417;
    BYTE8(v44) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v44);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 224);
  }

  return result;
}

uint64_t re::ecs2::RigSystem::willRemoveSceneFromECSService(re::ecs2::RigSystem *this, re::ecs2::Scene *a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 35, &v15);
  if (result != -1)
  {
    v4 = *(this + 36) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 344, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 392, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 224, *(v4 + 8));
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

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 280, &v15);
  }

  return result;
}

void *re::ecs2::allocInfo_RigComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_193, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_193))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A36F8, "RigComponent");
    __cxa_guard_release(&_MergedGlobals_193);
  }

  return &unk_1EE1A36F8;
}

void re::ecs2::initInfo_RigComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0x3C4B66CFEC8413DALL;
  v20[1] = "RigComponent";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1A36D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A36D8))
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
    qword_1EE1A36E8 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_AssetHandle(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "rigAssetHandle";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2000000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1A36F0 = v18;
    __cxa_guard_release(&qword_1EE1A36D8);
  }

  *(this + 2) = 0x1F000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A36E8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::RigComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::RigComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::RigComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::RigComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs212RigComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void *re::ecs2::allocInfo_RigSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A36E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A36E0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A3788, "RigSystem");
    __cxa_guard_release(&qword_1EE1A36E0);
  }

  return &unk_1EE1A3788;
}

void re::ecs2::initInfo_RigSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x84A3ECD4567ELL;
  v8[1] = "RigSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x1F800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_RigSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::RigSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::RigSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::RigSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::RigSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::RigSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::RigSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::internal::defaultDestruct<re::ecs2::RigSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  a3[58] = &unk_1F5CE9A98;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 60);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 28);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::RigSystem>(uint64_t *a1)
{
  a1[58] = &unk_1F5CE9A98;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 60);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 28);

  re::ecs2::System::~System(a1);
}

re::ecs2::Component *re::ecs2::BasicComponentStateImpl<re::ecs2::RigComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::RigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::setComponentState(a2, v11, v7, 0);
  }

  return result;
}

void re::ecs2::RigSystem::~RigSystem(re::ecs2::RigSystem *this)
{
  *(this + 58) = &unk_1F5CE9A98;
  re::FixedArray<CoreIKTransform>::deinit(this + 60);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 28);

  re::ecs2::System::~System(this);
}

{
  *(this + 58) = &unk_1F5CE9A98;
  re::FixedArray<CoreIKTransform>::deinit(this + 60);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 28);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

re *re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::RigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
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
    *v10 = &unk_1F5CE9B90;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::RigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CE9BE8;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::RigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CE9C40;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::RigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CE9C98;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::RigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
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
        *v37 = &unk_1F5CE9B90;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CE9BE8;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CE9C40;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CE9C98;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::RigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::RigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::RigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::RigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CE9B90;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CE9B90;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CE9BE8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CE9BE8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CE9C40;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CE9C40;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CE9C98;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CE9C98;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
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

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

ArcSharedObject *re::make::shared::unsafelyInplace<re::ecs2::RigComponent>(ArcSharedObject *a1)
{
  *(a1 + 29) = 0u;
  *(a1 + 30) = 0u;
  *(a1 + 27) = 0u;
  *(a1 + 28) = 0u;
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
  v2 = a1 + 336;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD0438;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 76) = 0u;
  *(v3 + 192) = -1;
  *(v3 + 248) = 0u;
  *(v3 + 232) = 0u;
  *(v3 + 216) = 0u;
  *(v3 + 200) = 0u;
  *(v3 + 264) = 0u;
  *(v3 + 280) = 0u;
  *(v3 + 296) = 1;
  *(v3 + 312) = 0;
  *(v3 + 320) = 0;
  *(v3 + 328) = 0;
  *(v3 + 304) = 0;
  *(v3 + 336) = 0u;
  *(v3 + 352) = 0u;
  *(v3 + 368) = 0u;
  *(v3 + 384) = 0u;
  *(v3 + 400) = 0u;
  *(v3 + 416) = 0u;
  *(v2 + 92) = 0u;
  *(v3 + 444) = 0x7FFFFFFFLL;
  *(v3 + 464) = 0;
  *(v3 + 472) = 0;
  *(v3 + 456) = 0;
  *(v3 + 480) = 0;
  objc_initWeak((v3 + 488), 0);
  return a1;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs212RigComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return result;
}

re::ecs2::RigSystem *re::ecs2::RigSystem::RigSystem(re::ecs2::RigSystem *this)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::System::System(this, 1, 1);
  *v2 = &unk_1F5CE9B00;
  v3 = v2 + 464;
  *(v2 + 232) = 0;
  *(v2 + 224) = 0;
  v4 = v2 + 224;
  *(v2 + 240) = 1;
  *(v2 + 256) = 0;
  *(v2 + 264) = 0;
  *(v2 + 248) = 0;
  *(v2 + 272) = 0;
  v5 = (v2 + 280);
  *(v2 + 280) = 0u;
  *(v2 + 296) = 0u;
  *(v2 + 312) = 0u;
  *(v2 + 328) = 0u;
  *(v2 + 344) = 0u;
  *(v2 + 360) = 1;
  *(v2 + 368) = 0u;
  *(v2 + 384) = 0u;
  *(v2 + 400) = 0;
  *(v2 + 408) = 1;
  *(v2 + 441) = 0u;
  *(v2 + 416) = 0u;
  *(v2 + 432) = 0u;
  v8 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((this + 344), 0);
  *(this + 90) += 2;
  *(this + 48) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((this + 392), 0);
  *(this + 102) += 2;
  *(this + 54) = 0;
  *(this + 55) = this;
  *(this + 56) = v3;
  *(this + 456) = 1;
  *(this + 58) = &unk_1F5CE9A98;
  *(this + 59) = this;
  *(this + 61) = 0;
  *(this + 62) = 0;
  *(this + 60) = 0;
  v11[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v11[1] = re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v10[0] = v11;
  v10[1] = 2;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((this + 480), v10);
  return this;
}

void *re::ecs2::introspect_TextAnchor(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "TopLeft";
    re::ecs2::introspect_TextAnchor(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = "Center";
    qword_1EE1C5B80 = v12;
  }

  {
    v13 = re::IntrospectionBasic::IntrospectionBasic(&re::ecs2::introspect_TextAnchor(BOOL)::info, "TextAnchor", 4, 4, 1, 1);
    *v13 = &unk_1F5D0C658;
    *(v13 + 8) = &re::ecs2::introspect_TextAnchor(BOOL)::enumTable;
    *(v13 + 4) = 9;
  }

  if (v2)
  {
    if (re::ecs2::introspect_TextAnchor(BOOL)::isInitialized)
    {
      return &re::ecs2::introspect_TextAnchor(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::ecs2::introspect_TextAnchor(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::ecs2::introspect_TextAnchor(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::ecs2::introspect_TextAnchor(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::ecs2::introspect_TextAnchor(BOOL)::info;
    }
  }

  re::ecs2::introspect_TextAnchor(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::ecs2::introspect_TextAnchor(BOOL)::info, a2);
  v14[0] = 0x106ABB8C40F4C4;
  v14[1] = "TextAnchor";
  xmmword_1EE1C5B50 = v15;
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::ecs2::introspect_TextAnchor(BOOL)::info;
}

void re::internal::registerEnumType<re::ecs2::TextAnchor>(re::TypeRegistry *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  *&v36.var0 = 0x607DD0F01DCLL;
  v36.var1 = "uint32_t";
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

double re::ecs2::downgradeDynamicTextComponentFromFall2023@<D0>(re::ecs2 *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = HIDWORD(*(this + 13));
  v5 = *(this + 6);
  v6 = *(this + 112);
  v8 = v5;
  v9 = vzip1_s32((v5 >> 32), *(&v5 + 8));
  v10 = v4;
  v11 = v6;
  re::ColorGamut4F::as(&v8, 0, 3, &v12);
  result = *&v12;
  *(this + 6) = v12;
  *(this + 112) = v13;
  *a2 = 1;
  return result;
}

void *re::ecs2::allocInfo_DynamicTextComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A3820, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A3820))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A3868, "DynamicTextComponent");
    __cxa_guard_release(&qword_1EE1A3820);
  }

  return &unk_1EE1A3868;
}

void re::ecs2::initInfo_DynamicTextComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v36[0] = 0x7EF097E9DE0238E2;
  v36[1] = "DynamicTextComponent";
  if (v36[0])
  {
    if (v36[0])
    {
    }
  }

  *(this + 2) = v37;
  if ((atomic_load_explicit(&_MergedGlobals_194, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_194))
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
    qword_1EE1A3830 = v14;
    v15 = re::introspectionAllocator();
    v16 = re::introspect_Vector4F(1);
    v17 = (*(*v15 + 32))(v15, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "color";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x6000000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1A3838 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::IntrospectionInfo<re::DynamicString>::get(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "text";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x2000000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1A3840 = v21;
    v22 = re::introspectionAllocator();
    re::ecs2::introspect_TextAnchor(1, v23);
    v24 = (*(*v22 + 32))(v22, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "anchor";
    *(v24 + 16) = &re::ecs2::introspect_TextAnchor(BOOL)::info;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x4000000003;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE1A3848 = v24;
    v25 = re::introspectionAllocator();
    v27 = re::introspect_AssetHandle(1, v26);
    v28 = (*(*v25 + 32))(v25, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "fontAssetHandle";
    *(v28 + 16) = v27;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0x4800000004;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE1A3850 = v28;
    v29 = re::introspectionAllocator();
    v31 = re::introspect_ColorGamut(1, v30);
    v32 = (*(*v29 + 32))(v29, 72, 8);
    *v32 = 1;
    *(v32 + 8) = "colorGamut";
    *(v32 + 16) = v31;
    *(v32 + 24) = 0;
    *(v32 + 32) = 0x7000000005;
    *(v32 + 40) = 0;
    *(v32 + 48) = 0;
    *(v32 + 56) = 0;
    *(v32 + 64) = 0;
    qword_1EE1A3858 = v32;
    v33 = re::introspectionAllocator();
    v34 = (*(*v33 + 32))(v33, 64, 8);
    *v34 = 6;
    *(v34 + 8) = 1;
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0;
    *(v34 + 40) = 1;
    *(v34 + 48) = re::ecs2::downgradeDynamicTextComponentFromFall2023;
    *(v34 + 56) = 2;
    qword_1EE1A3860 = v34;
    __cxa_guard_release(&_MergedGlobals_194);
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1A3830;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::DynamicTextComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::DynamicTextComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::DynamicTextComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::DynamicTextComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs220DynamicTextComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v35 = v37;
}

void *re::internal::defaultDestruct<re::ecs2::DynamicTextComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  re::AssetHandle::~AssetHandle((a3 + 9));
  re::DynamicString::deinit((a3 + 4));
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

void *re::internal::defaultDestructV2<re::ecs2::DynamicTextComponent>(void *a1)
{
  re::AssetHandle::~AssetHandle((a1 + 9));
  re::DynamicString::deinit((a1 + 4));
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void *re::ecs2::allocInfo_DynamicTextSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A3828, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A3828))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A38F8, "DynamicTextSystem");
    __cxa_guard_release(&qword_1EE1A3828);
  }

  return &unk_1EE1A38F8;
}

void re::ecs2::initInfo_DynamicTextSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x67A59726D7E78E76;
  v8[1] = "DynamicTextSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x12800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_DynamicTextSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::DynamicTextSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::DynamicTextSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::DynamicTextSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::DynamicTextSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::DynamicTextSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::DynamicTextSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

double re::internal::defaultConstruct<re::ecs2::DynamicTextSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 288) = 0;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v3 = re::ecs2::System::System(a3, 1, 1);
  *(v3 + 288) = 0;
  result = 0.0;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *v3 = &unk_1F5CE9CF0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::DynamicTextSystem>(uint64_t a1)
{
  *(a1 + 288) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v1 = re::ecs2::System::System(a1, 1, 1);
  *(v1 + 288) = 0;
  result = 0.0;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *v1 = &unk_1F5CE9CF0;
  return result;
}

_anonymous_namespace_ *re::ecs2::DynamicTextComponent::computeObjectSpaceSize(re::ecs2::DynamicTextComponent *this, re::TextManager *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(this + 10);
  if (!v3)
  {
    v8 = *re::ecsComponentsLogObjects(this);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = this;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "DynamicTextComponent %p has null font asset.", &v10, 0xCu);
    }

    return 0;
  }

  v4 = atomic_load((v3 + 896));
  if (v4 != 2)
  {
    return 0;
  }

  re::makeFontID(&v10, (this + 72));
  v6 = re::TextManager::computeSize(a2, (this + 32), &v10);
  v7 = v6;
  if (v10)
  {
    if (v10)
    {
    }
  }

  return v7;
}

void *re::ecs2::DynamicTextSystem::update(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v122 = *MEMORY[0x1E69E9840];
  v4 = result[28];
  if (!v4 || (*(v4 + 432) & 0x10) != 0)
  {
    v5 = *(a3 + 200);
    if (v5)
    {
      v6 = *(a3 + 216);
      v7 = &v6[v5];
      v8 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
      v83 = v7;
      v86 = result;
      do
      {
        v9 = *v6;
        if (*v6)
        {
          v10 = *(v3 + 232);
          if (!v10)
          {
            re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "m_renderManager", "updateSceneInternal", 114);
            _os_crash("assertion failure: (m_renderManager) ");
            __break(1u);
          }

          v87 = *(v10 + 64);
          if (v87)
          {
            v11 = *(v10 + 160);
            if (v11)
            {
              v89 = *v11;
            }

            else
            {
              v89 = 0;
            }

            re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v101);
            v12 = re::ecs2::SceneComponentTable::get((v9 + 25), v8[24]);
            if (v12)
            {
              v13 = *(v12 + 384);
            }

            else
            {
              v13 = 0;
            }

            re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v100, 3019, v3, v13, 0, 0);
            v14 = re::ecs2::SceneComponentTable::get((v9 + 25), v8[24]);
            if (v14)
            {
              v15 = *(v14 + 400);
              v16 = *(v14 + 384);
            }

            else
            {
              v15 = 0;
              v16 = 0;
            }

            v17 = (*(**(v3 + 256) + 24))(*(v3 + 256));
            v18 = (*(*v17 + 16))(v17);
            if (*(v18 + 31))
            {
              v19 = *(v18 + 31);
            }

            else
            {
              v19 = *(v18 + 4);
            }

            v98 = 0;
            v96 = 0u;
            v97 = 0u;
            v99 = 0x7FFFFFFFLL;
            v114.i32[0] = 0;
            *buf = 0u;
            v113 = 0u;
            *(v114.i64 + 4) = 0x7FFFFFFFLL;
            if (v16)
            {
              v22 = 8 * v16;
              v23 = v15;
              do
              {
                v24 = *v23++;
                (*(*v17 + 8))(&v103, v17, *(v24 + 16));
                if (v103.var0)
                {
                  var1 = v103.var1;
                }

                else
                {
                  var1 = 0;
                }

                *&v103.var0 = var1;
                v90.i64[0] = 0;
                v21 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(buf, &v103, &v90);
                ++*v21;
                v22 -= 8;
              }

              while (v22);
            }

            v84 = v16;
            v26 = v114.i32[0];
            if (v114.i32[0])
            {
              v27 = 0;
              v28 = v113.i64[0];
              while (1)
              {
                v29 = *v28;
                v28 += 8;
                if (v29 < 0)
                {
                  break;
                }

                if (v114.u32[0] == ++v27)
                {
                  LODWORD(v27) = v114.i32[0];
                  break;
                }
              }
            }

            else
            {
              LODWORD(v27) = 0;
            }

            if (v27 != v114.i32[0])
            {
              v30 = v113.i64[0];
              do
              {
                v31 = v30 + 32 * v27;
                v32 = *(v31 + 16);
                v105.i64[0] = 0;
                v103.var1 = 0;
                v104.i64[0] = 0;
                *&v103.var0 = 0;
                v104.i32[2] = 0;
                re::DynamicArray<re::RenderText>::setCapacity(&v103, v32);
                ++v104.i32[2];
                re::HashTable<unsigned long long,re::DynamicArray<re::RenderText>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(&v96, (v31 + 8), &v103);
                v21 = re::DynamicArray<re::RenderText>::deinit(&v103);
                if (v114.i32[0] <= (v27 + 1))
                {
                  v33 = v27 + 1;
                }

                else
                {
                  v33 = v114.i32[0];
                }

                v30 = v113.i64[0];
                while (v33 - 1 != v27)
                {
                  LODWORD(v27) = v27 + 1;
                  if ((*(v113.i64[0] + 32 * v27) & 0x80000000) != 0)
                  {
                    goto LABEL_43;
                  }
                }

                LODWORD(v27) = v33;
LABEL_43:
                ;
              }

              while (v27 != v26);
            }

            v34 = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(buf);
            v95 = (*(**(v86 + 272) + 16))(*(v86 + 272), v34);
            v35 = (*(**(v86 + 40) + 32))(*(v86 + 40));
            v88 = re::ServiceLocator::service<re::TransformService>(v35);
            if (v84)
            {
              v36 = &v15[v84];
              do
              {
                v94 = *v15;
                v37 = *(v94 + 2);
                v38 = re::ecs2::RenderOptions::forEntity(&v95, v37);
                if (*v38 == 1)
                {
                  v39 = *(v94 + 10);
                  if (v39)
                  {
                    v40 = *(v94 + 5);
                    if (v40)
                    {
                      v41 = v40 >> 1;
                    }

                    else
                    {
                      v41 = v40 >> 1;
                    }

                    if (v41)
                    {
                      v42 = atomic_load((v39 + 896));
                      if (v42 == 2)
                      {
                        re::TransformService::worldMatrix(v88, v37, 0, &v90);
                        if (*(v94 + 16) == 1)
                        {
                          v43 = re::ecs2::DynamicTextComponent::computeObjectSpaceSize(v94, v87);
                          v44 = 0;
                          v45 = vnegq_f32(vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v90, *&v43 * 0.5), 0, v91), 0, v92), vmlaq_f32(vmlaq_n_f32(vmulq_f32(v90, 0), v91, *(&v43 + 1) * -0.5), 0, v92)));
                          v45.i32[3] = 1.0;
                          v103 = v90;
                          v104 = v91;
                          v105 = v92;
                          v106 = v93;
                          do
                          {
                            *&buf[v44] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1E3047670, COERCE_FLOAT(*(&v103 + v44))), xmmword_1E3047680, *(&v103.var0 + v44), 1), xmmword_1E30476A0, *(&v103 + v44), 2), v45, *(&v103 + v44), 3);
                            v44 += 16;
                          }

                          while (v44 != 64);
                          v90 = *buf;
                          v91 = v113;
                          v92 = v114;
                          v93 = v115;
                        }

                        re::StringID::invalid(buf);
                        v113.i64[0] = 0x3F8000003F800000;
                        v113.i64[1] = 0x3F8000003F800000;
                        v114 = 0u;
                        v115 = 0u;
                        v116 = 0u;
                        v117 = 0u;
                        v118 = -1;
                        v119 = 0;
                        v120 = 0;
                        v121 = re::kInvalidStringRenderHandle;
                        v46 = v94;
                        v48.i64[0] = *(v94 + 12);
                        v47 = *(v94 + 112);
                        *&v48.u32[2] = vzip1_s32(*(v94 + 104), HIDWORD(*(v94 + 13)));
                        if (v47 != v89)
                        {
                          v85 = v48;
                          re::ColorHelpers::computeGamutTransformMatrix(v47, v89, &v103);
                          v49 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v103, v85.f32[0]), v104, *v85.f32, 1), v105, v85, 2);
                          v49.i32[3] = 0;
                          v50 = vmaxnmq_f32(v49, 0);
                          v50.i32[3] = v85.i32[3];
                          v46 = v94;
                          v48 = v50;
                        }

                        v113 = v48;
                        re::makeFontID(&v103, (v46 + 72));
                        v52 = *&v103.var0;
                        v53 = v103.var1;
                        *&v103.var0 = 0;
                        v103.var1 = &str_67;
                        v54 = buf[0];
                        *buf = v52;
                        *&buf[8] = v53;
                        if (v54)
                        {
                          if (*&v103.var0)
                          {
                            if (*&v103.var0)
                            {
                            }
                          }
                        }

                        v114 = v90;
                        v115 = v91;
                        v116 = v92;
                        v117 = v93;
                        v56 = re::StringID::invalid(&v103);
                        v104.i64[0] = 0x3F8000003F800000;
                        v104.i64[1] = 0x3F8000003F800000;
                        v105 = 0u;
                        v106 = 0u;
                        v107 = 0u;
                        v108 = 0u;
                        v109 = 0u;
                        v110 = 0u;
                        re::DynamicString::setCapacity(&v109, 0);
                        v111 = -1;
                        v57 = v94;
                        re::StringID::operator=(&v103, buf);
                        v104 = v113;
                        v105 = v114;
                        v106 = v115;
                        v107 = v116;
                        v108 = v117;
                        re::DynamicString::operator=(&v109, (v57 + 32));
                        v111 = -1;
                        (*(*v17 + 8))(v102, v17, v37);
                        if (LOBYTE(v102[0]))
                        {
                          v58 = v102[1];
                        }

                        else
                        {
                          v58 = 0;
                        }

                        if (!v96 || (v59 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v58 ^ (v58 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v58 ^ (v58 >> 30))) >> 27)), v60 = *(*(&v96 + 1) + 4 * ((v59 ^ (v59 >> 31)) % DWORD2(v97))), v60 == 0x7FFFFFFF))
                        {
LABEL_70:
                          v61 = 0;
                        }

                        else
                        {
                          while (*(v97 + (v60 << 6) + 8) != v58)
                          {
                            v60 = *(v97 + (v60 << 6)) & 0x7FFFFFFF;
                            if (v60 == 0x7FFFFFFF)
                            {
                              goto LABEL_70;
                            }
                          }

                          v61 = v97 + (v60 << 6) + 16;
                        }

                        v63 = *(v61 + 16);
                        if (v63 >= *(v61 + 8))
                        {
                          re::DynamicArray<re::RenderText>::growCapacity(v61, v63 + 1);
                          v63 = *(v61 + 16);
                        }

                        v64 = *(v61 + 32) + 144 * v63;
                        re::StringID::StringID(v64, &v103);
                        *(v64 + 16) = v104;
                        v65 = v105;
                        v66 = v106;
                        v67 = v108;
                        *(v64 + 64) = v107;
                        *(v64 + 80) = v67;
                        *(v64 + 32) = v65;
                        *(v64 + 48) = v66;
                        re::DynamicString::DynamicString((v64 + 96), &v109);
                        *(v64 + 128) = v111;
                        ++*(v61 + 16);
                        ++*(v61 + 24);
                        v68 = v109;
                        if (v109)
                        {
                          if (BYTE8(v109))
                          {
                            v68 = (*(*v109 + 40))();
                          }

                          v109 = 0u;
                          v110 = 0u;
                        }

                        if (*&v103.var0)
                        {
                          if (*&v103.var0)
                          {
                          }
                        }

                        if (buf[0])
                        {
                          if (buf[0])
                          {
                          }
                        }
                      }

                      else
                      {
                        re::AssetHandle::loadAsync((v94 + 72));
                      }
                    }
                  }

                  else
                  {
                    v62 = *re::ecsComponentsLogObjects(v38);
                    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 134217984;
                      *&buf[4] = &v94;
                      _os_log_impl(&dword_1E1C61000, v62, OS_LOG_TYPE_DEFAULT, "DynamicTextComponent %p has null font asset.", buf, 0xCu);
                    }
                  }
                }

                ++v15;
              }

              while (v15 != v36);
            }

            v3 = v86;
            v69 = *(*(v86 + 232) + 112);
            if (v69)
            {
              v70 = re::RenderFrameBox::get((v69 + 328), 0xFFFFFFFFFFFFFFFuLL);
            }

            else
            {
              v70 = 0;
            }

            v71 = v98;
            if (v98)
            {
              v72 = 0;
              v73 = v97;
              while (1)
              {
                v74 = *v73;
                v73 += 16;
                if (v74 < 0)
                {
                  break;
                }

                if (v98 == ++v72)
                {
                  LODWORD(v72) = v98;
                  break;
                }
              }
            }

            else
            {
              LODWORD(v72) = 0;
            }

            if (v72 != v98)
            {
              v75 = v97;
              v76 = v98;
              do
              {
                v77 = v75 + (v72 << 6);
                if (*(v77 + 32))
                {
                  v78 = re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(buf, v9, *(v77 + 8), v70);
                  if (*(v77 + 32))
                  {
                    *&v103.var0 = *buf >> 1;
                    v79 = **(re::RenderFrameData::stream((v70 + 33), &v103) + 48);
                    v78 = (*(v79 + 704))();
                  }

                  if (buf[0])
                  {
                    if (buf[0])
                    {
                    }
                  }

                  v76 = v98;
                  v75 = v97;
                }

                if (v76 <= v72 + 1)
                {
                  v80 = v72 + 1;
                }

                else
                {
                  v80 = v76;
                }

                while (v80 - 1 != v72)
                {
                  LODWORD(v72) = v72 + 1;
                  if ((*(v75 + (v72 << 6)) & 0x80000000) != 0)
                  {
                    goto LABEL_114;
                  }
                }

                LODWORD(v72) = v80;
LABEL_114:
                ;
              }

              while (v72 != v71);
            }

            re::DebugRenderer::appendDebugTextToRenderFrame(*(*(v86 + 232) + 80), v70, (v9[13] + 288));
            re::HashTable<unsigned long long,re::DynamicArray<re::RenderText>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v96);
            re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v100, v81, v82);
            result = re::ProfilerTimeGuard<(re::ProfilerStatistic)122>::end(v101);
            v7 = v83;
            v8 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
          }
        }

        ++v6;
      }

      while (v6 != v7);
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, unint64_t *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 16;
  }

  v7 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v11, v10);
  v8 = *a2;
  *(v7 + 16) = *a3;
  result = v7 + 16;
  *(result - 8) = v8;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<unsigned long long,re::DynamicArray<re::RenderText>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<unsigned long long,re::DynamicArray<re::RenderText>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long const&,re::DynamicArray<re::RenderText>>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + (HIDWORD(v9) << 6) + 16;
  }
}

void re::ecs2::DynamicTextSystem::~DynamicTextSystem(re::ecs2::DynamicTextSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::DynamicTextComponent>(uint64_t a1)
{
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v2 = (a1 + 32);
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDC2E8;
  *v2 = 0u;
  *(v3 + 48) = 0u;
  re::DynamicString::setCapacity(v2, 0);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0x3F8000003F800000;
  *(a1 + 104) = 0x3F8000003F800000;
  *(a1 + 88) = 0;
  *(a1 + 112) = 0;
  return a1;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs220DynamicTextComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return result;
}

double re::HashTable<unsigned long long,re::DynamicArray<re::RenderText>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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
          re::DynamicArray<re::RenderText>::deinit(v6 + v4 + 16);
          v3 = *(a1 + 8);
        }

        v4 += 64;
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

void *re::DynamicArray<re::RenderText>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RenderText>::setCapacity(v5, a2);
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
        v10 = &v8[18 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          v13 = *(v8 + 2);
          v15 = *(v8 + 4);
          v14 = *(v8 + 5);
          *(v11 + 3) = *(v8 + 3);
          *(v11 + 4) = v15;
          *(v11 + 2) = v13;
          *(v11 + 1) = *(v8 + 1);
          *(v11 + 5) = v14;
          *(v11 + 6) = 0u;
          *(v11 + 7) = 0u;
          v11[12] = v8[12];
          v8[12] = 0;
          v16 = v11[14];
          v11[14] = v8[14];
          v8[14] = v16;
          *(v11 + 15) = *(v8 + 15);
          v8[15] = 0;
          v17 = v11[13];
          v11[13] = v8[13];
          v8[13] = v17;
          re::DynamicString::deinit((v8 + 12));
          re::StringID::destroyString(v8);
          v11 += 18;
          v8 += 18;
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

uint64_t re::DynamicArray<re::RenderText>::deinit(uint64_t a1)
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
          re::DynamicString::deinit((v3 + 96));
          re::StringID::destroyString(v3);
          v3 += 144;
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

uint64_t re::HashTable<unsigned long long,re::DynamicArray<re::RenderText>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long const&,re::DynamicArray<re::RenderText>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = re::HashTable<unsigned long long,re::DynamicArray<re::RenderText>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  *(v7 + 16) = 0;
  result = v7 + 16;
  *(result + 32) = 0;
  *(result + 24) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  v10 = *a4;
  v11 = a4[1];
  *(result - 8) = v8;
  *result = v10;
  *(result + 8) = v11;
  *a4 = 0;
  a4[1] = 0;
  v12 = *(result + 16);
  *(result + 16) = a4[2];
  a4[2] = v12;
  v13 = *(result + 32);
  *(result + 32) = a4[4];
  a4[4] = v13;
  ++*(a4 + 6);
  ++*(result + 24);
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<unsigned long long,re::DynamicArray<re::RenderText>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::DynamicArray<re::RenderText>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + (v5 << 6));
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + (v5 << 6));
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + (v5 << 6);
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v9 + 56) = a3;
  *(v10 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v7 + (v5 << 6);
}

void re::HashTable<unsigned long long,re::DynamicArray<re::RenderText>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v9, v4, a2);
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
      re::HashTable<unsigned long long,re::DynamicArray<re::RenderText>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, v9);
      re::HashTable<unsigned long long,re::DynamicArray<re::RenderText>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
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

uint64_t re::HashTable<unsigned long long,re::DynamicArray<re::RenderText>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<unsigned long long,re::DynamicArray<re::RenderText>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 56) % *(v4 + 24), *(v7 + v5 + 56));
        v8 = *(a2 + 16) + v5;
        v9 = *(v8 + 8);
        *(result + 48) = 0;
        *(result + 40) = 0;
        *(result + 24) = 0;
        *(result + 32) = 0;
        *(result + 8) = v9;
        *(result + 16) = 0;
        v10 = *(v8 + 24);
        *(result + 16) = *(v8 + 16);
        *(result + 24) = v10;
        *(v8 + 16) = 0;
        *(v8 + 24) = 0;
        v11 = *(result + 32);
        *(result + 32) = *(v8 + 32);
        *(v8 + 32) = v11;
        v12 = *(result + 48);
        *(result + 48) = *(v8 + 48);
        *(v8 + 48) = v12;
        ++*(v8 + 40);
        ++*(result + 40);
        v2 = *(a2 + 32);
      }

      v5 += 64;
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::RenderText>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::RenderText>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RenderText>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::ecs2::allocInfo_ReplayEntityState(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_195, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_195))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A39F0, "ReplayEntityState");
    __cxa_guard_release(&_MergedGlobals_195);
  }

  return &unk_1EE1A39F0;
}

void re::ecs2::initInfo_ReplayEntityState(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0xB913E3D0408EBFCELL;
  v20[1] = "ReplayEntityState";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1A3990, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A3990))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicString>::get(1, v8);
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
    qword_1EE1A39D8 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_uint64_t(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "parent";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x2000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1A39E0 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_uint8_t(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "active";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2800000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1A39E8 = v18;
    __cxa_guard_release(&qword_1EE1A3990);
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1A39D8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ReplayEntityState>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ReplayEntityState>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ReplayEntityState>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ReplayEntityState>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void *re::internal::defaultConstruct<re::ecs2::ReplayEntityState>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;

  return re::DynamicString::setCapacity(a3, 0);
}

void *re::internal::defaultConstructV2<re::ecs2::ReplayEntityState>(_anonymous_namespace_ *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;

  return re::DynamicString::setCapacity(a1, 0);
}

double re::ecs2::StateRecorderSystem::StateRecorderSystem(re::ecs2::StateRecorderSystem *this)
{
  v1 = re::ecs2::System::System(this, 2);
  *v1 = &unk_1F5CE9D80;
  *(v1 + 224) = 0;
  result = 0.0;
  *(v1 + 248) = 0u;
  *(v1 + 232) = 0u;
  *(v1 + 260) = 0u;
  *(v1 + 276) = 0x7FFFFFFFLL;
  *(v1 + 328) = 0;
  *(v1 + 336) = 0;
  *(v1 + 344) = 0u;
  *(v1 + 360) = 0u;
  *(v1 + 376) = 0;
  *(v1 + 304) = 0;
  *(v1 + 312) = 0;
  *(v1 + 296) = 0;
  *(v1 + 320) = 0;
  *(v1 + 380) = 0x7FFFFFFFLL;
  *(v1 + 424) = 0;
  *(v1 + 400) = 0;
  *(v1 + 408) = 0;
  *(v1 + 416) = 0;
  *(v1 + 392) = 0;
  return result;
}

_anonymous_namespace_ *re::ecs2::StateRecorderSystem::willAddSystemToECSService(re::ecs2::StateRecorderSystem *this)
{
  v1 = this;
  if ((*(this + 320) & 1) == 0)
  {
    v2 = (*(**(this + 5) + 32))(*(this + 5));
    this = re::ServiceLocator::serviceOrNull<re::TraceService>(v2);
    *(v1 + 38) = this;
  }

  v3 = re::globalAllocators(this);
  v4 = (*(*v3[2] + 32))(v3[2], 616, 8);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  re::DynamicString::setCapacity(v4, 0);
  *(v4 + 48) = 0;
  v5 = (v4 + 48);
  *(v4 + 56) = -1;
  *(v4 + 96) = 0;
  *(v4 + 60) = 0u;
  *(v4 + 76) = 0u;
  re::ecs2::ECSJSONSerializer::ECSJSONSerializer((v4 + 104));
  if ((atomic_load_explicit(&qword_1EE1A39B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A39B0))
  {
    qword_1EE1A39A8 = re::internal::getOrCreateInfo("ReplayEntityState", re::ecs2::allocInfo_ReplayEntityState, re::ecs2::initInfo_ReplayEntityState, &unk_1EE1A3998, 0);
    v5 = (v4 + 48);
    __cxa_guard_release(&qword_1EE1A39B0);
  }

  re::IntrospectionSharedLock::IntrospectionSharedLock(&v12);
  v9 = 0xB913E3D0408EBFCELL;
  v10 = "ReplayEntityState";
  *v5 = v11;
  if (v9)
  {
    if (v9)
    {
    }
  }

  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v12);
  *(v1 + 41) = v4;
  v7 = (*(**(v1 + 5) + 32))(*(v1 + 5));
  result = re::ServiceLocator::serviceOrNull<re::EventBus>(v7);
  *(v1 + 39) = result;
  return result;
}

re::ecs2::StateRecorderSystem *re::ecs2::StateRecorderSystem::willAddSceneToECSService(re::ecs2::StateRecorderSystem *this, re::EventBus **a2)
{
  if (*(this + 224) == 1)
  {
    return re::ecs2::StateRecorderSystem::startRecordingScene(this, a2);
  }

  return this;
}

re::ecs2::StateRecorderSystem *re::ecs2::StateRecorderSystem::startRecordingScene(re::ecs2::StateRecorderSystem *this, re::EventBus **a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v33 = a2;
  v3 = a2[36];
  if (v3)
  {
    v32 = 0;
    v30[1] = 0;
    v30[2] = 0;
    v31 = 0;
    v4 = re::DynamicArray<re::RigNodeConstraint>::setCapacity(v30, 8uLL);
    ++v31;
    v56 = re::globalAllocators(v4)[2];
    v5 = (*(*v56 + 32))(v56, 32, 0);
    *v5 = &unk_1F5CE9E10;
    v5[1] = this;
    v5[2] = re::ecs2::StateRecorderSystem::onEntityAdded;
    v5[3] = 0;
    v57 = v5;
    v29.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidAddEvent>(v3, v55, 0, 0);
    v29.n128_u64[1] = v6;
    re::DynamicArray<re::RigNodeConstraint>::add(v30, &v29);
    v7 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::destroyCallable(v55);
    v53 = re::globalAllocators(v7)[2];
    v8 = (*(*v53 + 32))(v53, 32, 0);
    *v8 = &unk_1F5CE9E68;
    v8[1] = this;
    v8[2] = re::ecs2::StateRecorderSystem::onEntityRemoved;
    v8[3] = 0;
    v54 = v8;
    v29.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(v3, v52, 0, 0);
    v29.n128_u64[1] = v9;
    re::DynamicArray<re::RigNodeConstraint>::add(v30, &v29);
    v10 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(v52);
    v50 = re::globalAllocators(v10)[2];
    v11 = (*(*v50 + 32))(v50, 32, 0);
    *v11 = &unk_1F5CE9EC0;
    v11[1] = this;
    v11[2] = re::ecs2::StateRecorderSystem::onEntityDidActivate;
    v11[3] = 0;
    v51 = v11;
    v29.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidActivateEvent>(v3, v49, 0, 0);
    v29.n128_u64[1] = v12;
    re::DynamicArray<re::RigNodeConstraint>::add(v30, &v29);
    v13 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::destroyCallable(v49);
    v47 = re::globalAllocators(v13)[2];
    v14 = (*(*v47 + 32))(v47, 32, 0);
    *v14 = &unk_1F5CE9F18;
    v14[1] = this;
    v14[2] = re::ecs2::StateRecorderSystem::onEntityWillDeactivate;
    v14[3] = 0;
    v48 = v14;
    v29.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(v3, v46, 0, 0);
    v29.n128_u64[1] = v15;
    re::DynamicArray<re::RigNodeConstraint>::add(v30, &v29);
    v16 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::destroyCallable(v46);
    v44 = re::globalAllocators(v16)[2];
    v17 = (*(*v44 + 32))(v44, 32, 0);
    *v17 = &unk_1F5CE9F70;
    v17[1] = this;
    v17[2] = re::ecs2::StateRecorderSystem::onEntityReparented;
    v17[3] = 0;
    v45 = v17;
    v29.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(v3, v43, 0, 0);
    v29.n128_u64[1] = v18;
    re::DynamicArray<re::RigNodeConstraint>::add(v30, &v29);
    v19 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v43);
    v41 = re::globalAllocators(v19)[2];
    v20 = (*(*v41 + 32))(v41, 32, 0);
    *v20 = &unk_1F5CE9FC8;
    v20[1] = this;
    v20[2] = re::ecs2::StateRecorderSystem::onComponentAdded;
    v20[3] = 0;
    v42 = v20;
    v29.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v3, v40, 0, 0);
    v29.n128_u64[1] = v21;
    re::DynamicArray<re::RigNodeConstraint>::add(v30, &v29);
    v22 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v40);
    v38 = re::globalAllocators(v22)[2];
    v23 = (*(*v38 + 32))(v38, 32, 0);
    *v23 = &unk_1F5CEA020;
    v23[1] = this;
    v23[2] = re::ecs2::StateRecorderSystem::onComponentDidChange;
    v23[3] = 0;
    v39 = v23;
    v29.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v3, v37, 0, 0);
    v29.n128_u64[1] = v24;
    re::DynamicArray<re::RigNodeConstraint>::add(v30, &v29);
    v25 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v37);
    v35 = re::globalAllocators(v25)[2];
    v26 = (*(*v35 + 32))(v35, 32, 0);
    *v26 = &unk_1F5CEA078;
    v26[1] = this;
    v26[2] = re::ecs2::StateRecorderSystem::onComponentRemoved;
    v26[3] = 0;
    v36 = v26;
    v29.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v3, v34, 0, 0);
    v29.n128_u64[1] = v27;
    re::DynamicArray<re::RigNodeConstraint>::add(v30, &v29);
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v34);
    re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(this + 240, &v33, v30);
    if (v30[0] && v32)
    {
      (*(*v30[0] + 40))();
    }

    a2 = v33;
  }

  return re::ecs2::StateRecorderSystem::recordAllEntities(this, *(a2[13] + 46));
}

re::ecs2::StateRecorderSystem *re::ecs2::StateRecorderSystem::willRemoveSceneFromECSService(re::ecs2::StateRecorderSystem *this, re::ecs2::Scene *a2)
{
  if (*(this + 224) == 1)
  {
    return re::ecs2::StateRecorderSystem::stopRecordingScene(this, a2);
  }

  return this;
}

BOOL re::ecs2::StateRecorderSystem::stopRecordingScene(_BOOL8 this, re::ecs2::Scene *a2)
{
  v10 = a2;
  v2 = *(a2 + 36);
  if (v2)
  {
    v3 = this;
    v4 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](this + 240, &v10);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = *(v4 + 32);
      v7 = &v6[2 * v5];
      do
      {
        v8 = *v6;
        v9 = v6[1];
        v6 += 2;
        re::EventBus::unsubscribe(v2, v8, v9);
      }

      while (v6 != v7);
    }

    return re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(v3 + 240, &v10);
  }

  return this;
}

re *re::ecs2::StateRecorderSystem::willRemoveSystemFromECSService(uint64_t **this)
{
  result = re::ecs2::StateRecorderSystem::stopRecording(this);
  v3 = this[41];
  if (v3)
  {
    v4 = re::globalAllocators(result)[2];
    v3[13] = &unk_1F5CC46A8;
    re::DynamicArray<unsigned long>::deinit((v3 + 72));
    re::DynamicArray<unsigned long>::deinit((v3 + 67));
    re::DynamicArray<unsigned long>::deinit((v3 + 62));
    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v3 + 56);
    re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(v3 + 13);
    re::DynamicArray<unsigned long>::deinit((v3 + 8));
    v5 = re::DynamicString::deinit(v3);
    result = (*(*v4 + 40))(v4, v3, v5);
  }

  this[41] = 0;
  this[39] = 0;
  return result;
}

re *re::ecs2::StateRecorderSystem::stopRecording(re *this)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(this + 224) == 1)
  {
    v1 = this;
    *(this + 224) = 0;
    if (*(this + 336) == 1)
    {
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(this + 344);
      v2 = re::DynamicArray<re::TraceEntry>::clear(v1 + 392);
      *(v1 + 336) = 0;
      v3 = *re::ecsComponentsLogObjects(v2);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "[StateRecorderSystem] Targeted mode stopped", &v14, 2u);
      }
    }

    v4 = (*(**(v1 + 40) + 32))(*(v1 + 40));
    v5 = re::ServiceLocator::serviceOrNull<re::NetworkSystem>(v4);
    if (v5)
    {
      v6 = v5;
      *&v14 = v1;
      *(&v14 + 1) = re::ecs2::StateRecorderSystem::onEntityMetadataUpdated;
      v15 = 0;
      v16 = re::Event<re::NetworkSystem,re::ecs2::Entity *>::createSubscription<re::ecs2::StateRecorderSystem>(re::ecs2::StateRecorderSystem *,REEventHandlerResult (re::ecs2::StateRecorderSystem::*)(re::NetworkSystem*,re::ecs2::Entity *))::{lambda(re::NetworkSystem*,re::Event<re::NetworkSystem,re::ecs2::Entity *>::Subscription const&,re::ecs2::Entity *&&)#1}::__invoke;
      re::Event<re::GeometricObjectBase>::removeSubscription(v5 + 616, &v14);
      *&v14 = v1;
      *(&v14 + 1) = re::ecs2::StateRecorderSystem::onLocalComponentDidUpdated;
      v15 = 0;
      v16 = re::Event<re::NetworkSystem,re::ecs2::Component *>::createSubscription<re::ecs2::StateRecorderSystem>(re::ecs2::StateRecorderSystem *,REEventHandlerResult (re::ecs2::StateRecorderSystem::*)(re::NetworkSystem*,re::ecs2::Component *))::{lambda(re::NetworkSystem*,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription const&,re::ecs2::Component *&&)#1}::__invoke;
      re::Event<re::GeometricObjectBase>::removeSubscription(v6 + 880, &v14);
      *&v14 = v1;
      *(&v14 + 1) = re::ecs2::StateRecorderSystem::onEntityUpdatedFromNetwork;
      v15 = 0;
      v16 = re::Event<re::NetworkSystem,re::ecs2::Entity *>::createSubscription<re::ecs2::StateRecorderSystem>(re::ecs2::StateRecorderSystem *,REEventHandlerResult (re::ecs2::StateRecorderSystem::*)(re::NetworkSystem*,re::ecs2::Entity *))::{lambda(re::NetworkSystem*,re::Event<re::NetworkSystem,re::ecs2::Entity *>::Subscription const&,re::ecs2::Entity *&&)#1}::__invoke;
      re::Event<re::GeometricObjectBase>::removeSubscription(v6 + 88, &v14);
      *&v14 = v1;
      *(&v14 + 1) = re::ecs2::StateRecorderSystem::onComponentUpdatedFromNetwork;
      v15 = 0;
      v16 = re::Event<re::NetworkSystem,re::ecs2::Component *>::createSubscription<re::ecs2::StateRecorderSystem>(re::ecs2::StateRecorderSystem *,REEventHandlerResult (re::ecs2::StateRecorderSystem::*)(re::NetworkSystem*,re::ecs2::Component *))::{lambda(re::NetworkSystem*,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription const&,re::ecs2::Component *&&)#1}::__invoke;
      re::Event<re::GeometricObjectBase>::removeSubscription(v6 + 352, &v14);
    }

    while (*(v1 + 268))
    {
      v7 = *(v1 + 272);
      if (v7)
      {
        v8 = 0;
        v9 = *(v1 + 256);
        while (1)
        {
          v10 = *v9;
          v9 += 16;
          if (v10 < 0)
          {
            break;
          }

          if (v7 == ++v8)
          {
            LODWORD(v8) = *(v1 + 272);
            break;
          }
        }

        v11 = v8;
      }

      else
      {
        v11 = 0;
      }

      re::ecs2::StateRecorderSystem::stopRecordingScene(v1, *(*(v1 + 256) + (v11 << 6) + 8));
    }

    this = re::internal::destroyPersistent<re::TraceDelta>("stopRecording", 265, *(v1 + 288));
    *(v1 + 288) = 0;
    v12 = *(v1 + 312);
    if (v12)
    {
      if ((atomic_load_explicit(&qword_1EE1A39D0, memory_order_acquire) & 1) == 0)
      {
        if (__cxa_guard_acquire(&qword_1EE1A39D0))
        {
          qword_1EE1A39C8 = re::EventBus::typeStringToId(("N2re4ecs225StateRecorderDidStopEventE" & 0x7FFFFFFFFFFFFFFFLL), v13);
          __cxa_guard_release(&qword_1EE1A39D0);
        }
      }

      return re::EventBus::publish(v12, v1, qword_1EE1A39C8, &v14, 1uLL, 0);
    }
  }

  return this;
}

uint64_t re::ecs2::StateRecorderSystem::onEntityMetadataUpdated(re::ecs2::StateRecorderSystem *this, re::NetworkSystem *a2, re::ecs2::Entity *a3)
{
  re::ecs2::StateRecorderSystem::logEntityUpdated(this, a3, 1);
  v5 = *(a3 + 27);
  if (v5)
  {
    re::ecs2::StateRecorderSystem::logComponentUpdated(this, v5, 1);
  }

  return 0;
}

uint64_t re::DynamicArray<re::TraceEntry>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = v2 << 6;
    v4 = *(result + 32) + 24;
    do
    {
      result = re::DynamicArray<unsigned long>::deinit(v4);
      v4 += 64;
      v3 -= 64;
    }

    while (v3);
  }

  ++*(v1 + 24);
  return result;
}

re *re::internal::destroyPersistent<re::TraceDelta>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::DynamicArray<re::TraceEntry>::deinit(a3 + 16);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

re::ecs2::StateRecorderSystem *re::ecs2::StateRecorderSystem::recordAllEntities(re::ecs2::StateRecorderSystem *this, re::ecs2::Entity ***a2)
{
  v3 = this;
  if (a2)
  {
    this = re::ecs2::StateRecorderSystem::recordEntity(this, a2);
  }

  v4 = a2[43];
  if (v4)
  {
    v5 = a2[45];
    v6 = 8 * v4;
    do
    {
      v7 = *v5;
      if (*(v3 + 336) != 1 || (this = re::ecs2::StateRecorderSystem::isAppTLE(v3, *v5), this))
      {
        this = re::ecs2::StateRecorderSystem::recordAllDescendants(v3, v7);
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
  }

  return this;
}

uint64_t re::ecs2::StateRecorderSystem::onEntityAdded(re::ecs2::StateRecorderSystem *this, re::ecs2::Entity *a2, re::ecs2::Entity **a3)
{
  if (a2)
  {
    if (*(this + 336) == 1 && re::ecs2::StateRecorderSystem::shouldEntityBeInAppEntitySet(this, a2))
    {
      v6 = *(a2 + 4);
      v7 = a2;
      if (v6)
      {
        v7 = a2;
        if ((*(v6 + 304) & 0x80) == 0)
        {
          do
          {
            v7 = v6;
            v6 = *(v6 + 32);
          }

          while (v6 && (*(v6 + 304) & 0x80) == 0);
        }
      }

      v10 = *(v7 + 39);
      if (!re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(this + 344, &v10))
      {
        re::ecs2::StateRecorderSystem::recordAllDescendants(this, v7);
      }
    }

    if (re::ecs2::NetworkComponent::hasOwnership(a2, a2))
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    re::ecs2::StateRecorderSystem::logEntityAdded(this, *a3, v8);
  }

  return 0;
}

uint64_t re::ecs2::StateRecorderSystem::onEntityReparented(re::ecs2::StateRecorderSystem *a1, re::ecs2::Entity *a2, uint64_t a3)
{
  if (*(a1 + 336) != 1)
  {
    goto LABEL_14;
  }

  v12 = *(a2 + 39);
  v6 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(a1 + 344, &v12);
  shouldEntityBeInAppEntitySet = re::ecs2::StateRecorderSystem::shouldEntityBeInAppEntitySet(a1, a2);
  if (!v6)
  {
    if (!shouldEntityBeInAppEntitySet)
    {
      return 0;
    }

    v8 = *(a2 + 4);
    v9 = a2;
    if (v8)
    {
      v9 = a2;
      if ((*(v8 + 304) & 0x80) == 0)
      {
        do
        {
          v9 = v8;
          v8 = *(v8 + 32);
        }

        while (v8 && (*(v8 + 304) & 0x80) == 0);
      }
    }

    v12 = *(v9 + 39);
    if (re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(a1 + 344, &v12))
    {
      v10 = a2;
    }

    else
    {
      v10 = v9;
    }

    re::ecs2::StateRecorderSystem::recordAllDescendants(a1, v10);
LABEL_14:
    re::ecs2::StateRecorderSystem::logEntityUpdated(a1, *(a3 + 8), 1);
    return 0;
  }

  if (shouldEntityBeInAppEntitySet)
  {
    goto LABEL_14;
  }

  re::ecs2::StateRecorderSystem::logEntityRemoved(a1, *(a2 + 39));
  return 0;
}

uint64_t re::ecs2::StateRecorderSystem::onComponentAdded(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 8);
  v6 = re::ecs2::EntityComponentCollection::get((a2 + 6), v5);
  if (v6)
  {
    re::ecs2::StateRecorderSystem::logComponentAdded(a1, v6);
  }

  else
  {
    v7 = *re::ecsComponentsLogObjects(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = a2[39];
      v10 = a2[37];
      v11 = *(v5 + 4);
      v12 = 134218499;
      v13 = v9;
      v14 = 2081;
      v15 = v10;
      v16 = 2081;
      v17 = v11;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "[StateRecorderSystem] Received onComponentAdded event for entity id=%llu, name=%{private}s, component=%{private}s, but entity doesn't have such component.", &v12, 0x20u);
    }
  }

  return 0;
}

uint64_t re::ecs2::StateRecorderSystem::onComponentDidChange(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 8);
  v6 = re::ecs2::EntityComponentCollection::get((a2 + 6), v5);
  if (v6)
  {
    re::ecs2::StateRecorderSystem::logComponentUpdated(a1, v6, 1);
  }

  else
  {
    v7 = *re::ecsComponentsLogObjects(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = a2[39];
      v10 = a2[37];
      v11 = *(v5 + 4);
      v12 = 134218499;
      v13 = v9;
      v14 = 2081;
      v15 = v10;
      v16 = 2081;
      v17 = v11;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "[StateRecorderSystem] Received onComponentDidChange event for entity id=%llu, name=%{private}s, component=%{private}s, but entity doesn't have such component.", &v12, 0x20u);
    }
  }

  return 0;
}

uint64_t re::ecs2::StateRecorderSystem::onComponentRemoved(uint64_t a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 8);
  v6 = re::ecs2::EntityComponentCollection::get((a2 + 6), v5);
  if (v6)
  {
    v7 = v6;
    v8 = *(v6 + 16);
    if (v8)
    {
      if (*(a1 + 336) != 1 || (*v16 = *(v8 + 312), re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(a1 + 344, v16)))
      {
        v9 = *(a1 + 288);
        if (v9)
        {
          *v16 = *(v7[2] + 312);
          *&v16[8] = *((*(*v7 + 40))(v7) + 24) >> 1;
          *&v16[16] = 259;
          v22 = 0;
          v21 = 0;
          v19 = 0;
          v20 = 0;
          v18 = 0;
          v10 = re::DynamicArray<re::TraceEntry>::add((v9 + 16), v16);
          if (v18)
          {
            if (v22)
            {
              (*(*v18 + 40))(v10);
            }
          }
        }
      }
    }
  }

  else
  {
    v11 = *re::ecsComponentsLogObjects(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = a2[39];
      v14 = a2[37];
      v15 = *(v5 + 4);
      *v16 = 134218499;
      *&v16[4] = v13;
      *&v16[12] = 2081;
      *&v16[14] = v14;
      v17 = 2081;
      v18 = v15;
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "[StateRecorderSystem] Received onComponentRemoved event for entity id=%llu, name=%{private}s, component=%{private}s, but entity doesn't have such component.", v16, 0x20u);
    }
  }

  return 0;
}

void re::ecs2::StateRecorderSystem::update(size_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v127 = *MEMORY[0x1E69E9840];
  v5 = (*(**(a1 + 40) + 168))(*(a1 + 40), a2);
  v6 = *(v5 + 24);
  if (v6)
  {
    v7 = 0;
    v8 = *(v5 + 40);
    v9 = 8 * v6;
    do
    {
      v10 = re::ecs2::SceneComponentTable::get((*v8 + 200), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v10)
      {
        v11 = *(v10 + 384);
      }

      else
      {
        v11 = 0;
      }

      v7 += v11;
      v8 += 8;
      v9 -= 8;
    }

    while (v9);
  }

  else
  {
    v7 = 0;
  }

  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v107, 3089, v4, v7, 0, 0);
  if (*(a3 + 8) == 2)
  {
    goto LABEL_106;
  }

  v14 = *(v4 + 304);
  if (v14 && (*(*v14 + 72))(v14) || (*(v4 + 225) & 1) != 0)
  {
    started = 1;
  }

  else
  {
    started = *(v4 + 304);
    if (!started)
    {
      if ((*(v4 + 224) & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    started = (*(*started + 96))(started);
  }

  if ((*(v4 + 224) & 1) == 0)
  {
    if (started)
    {
      *(v4 + 224) = 1;
      v19 = re::globalAllocators(started);
      v20 = (*(*v19[2] + 32))(v19[2], 56, 8);
      *v20 = 0u;
      *(v20 + 16) = 0u;
      *(v20 + 32) = 0u;
      *(v20 + 48) = 0;
      *(v4 + 288) = v20;
      *v20 = 1;
      v21 = (*(**(v4 + 40) + 32))(*(v4 + 40));
      v22 = re::ServiceLocator::serviceOrNull<re::NetworkSystem>(v21);
      if (v22)
      {
        v24 = v22;
        buf.n128_u64[0] = v4;
        buf.n128_u64[1] = re::ecs2::StateRecorderSystem::onEntityMetadataUpdated;
        *&v121 = 0;
        *(&v121 + 1) = re::Event<re::NetworkSystem,re::ecs2::Entity *>::createSubscription<re::ecs2::StateRecorderSystem>(re::ecs2::StateRecorderSystem *,REEventHandlerResult (re::ecs2::StateRecorderSystem::*)(re::NetworkSystem*,re::ecs2::Entity *))::{lambda(re::NetworkSystem*,re::Event<re::NetworkSystem,re::ecs2::Entity *>::Subscription const&,re::ecs2::Entity *&&)#1}::__invoke;
        re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription(v22 + 154, &buf);
        buf.n128_u64[0] = v4;
        buf.n128_u64[1] = re::ecs2::StateRecorderSystem::onLocalComponentDidUpdated;
        *&v121 = 0;
        *(&v121 + 1) = re::Event<re::NetworkSystem,re::ecs2::Component *>::createSubscription<re::ecs2::StateRecorderSystem>(re::ecs2::StateRecorderSystem *,REEventHandlerResult (re::ecs2::StateRecorderSystem::*)(re::NetworkSystem*,re::ecs2::Component *))::{lambda(re::NetworkSystem*,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription const&,re::ecs2::Component *&&)#1}::__invoke;
        re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription(v24 + 220, &buf);
        buf.n128_u64[0] = v4;
        buf.n128_u64[1] = re::ecs2::StateRecorderSystem::onEntityUpdatedFromNetwork;
        *&v121 = 0;
        *(&v121 + 1) = re::Event<re::NetworkSystem,re::ecs2::Entity *>::createSubscription<re::ecs2::StateRecorderSystem>(re::ecs2::StateRecorderSystem *,REEventHandlerResult (re::ecs2::StateRecorderSystem::*)(re::NetworkSystem*,re::ecs2::Entity *))::{lambda(re::NetworkSystem*,re::Event<re::NetworkSystem,re::ecs2::Entity *>::Subscription const&,re::ecs2::Entity *&&)#1}::__invoke;
        re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription(v24 + 22, &buf);
        buf.n128_u64[0] = v4;
        buf.n128_u64[1] = re::ecs2::StateRecorderSystem::onComponentUpdatedFromNetwork;
        *&v121 = 0;
        *(&v121 + 1) = re::Event<re::NetworkSystem,re::ecs2::Component *>::createSubscription<re::ecs2::StateRecorderSystem>(re::ecs2::StateRecorderSystem *,REEventHandlerResult (re::ecs2::StateRecorderSystem::*)(re::NetworkSystem*,re::ecs2::Component *))::{lambda(re::NetworkSystem*,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription const&,re::ecs2::Component *&&)#1}::__invoke;
        v23.n128_f64[0] = re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription(v24 + 88, &buf);
      }

      v25 = *(v4 + 304);
      if (v25)
      {
        v26 = (*(*v25 + 104))(v25, v23);
        if (v27)
        {
          *(v4 + 336) = 1;
          v28 = *re::ecsComponentsLogObjects(v26);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            buf.n128_u16[0] = 0;
            _os_log_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEFAULT, "[StateRecorderSystem] Targeted mode started", &buf, 2u);
          }
        }
      }

      v29 = *(v4 + 312);
      if (v29)
      {
        if ((atomic_load_explicit(&qword_1EE1A39C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A39C0))
        {
          qword_1EE1A39B8 = re::EventBus::typeStringToId(("N2re4ecs227StateRecorderWillStartEventE" & 0x7FFFFFFFFFFFFFFFLL), v102);
          __cxa_guard_release(&qword_1EE1A39C0);
        }

        re::EventBus::publish(v29, v4, qword_1EE1A39B8, &buf, 1uLL, 0);
      }

      started = (*(**(v4 + 40) + 168))(*(v4 + 40), v23);
      v30 = *(started + 24);
      if (v30)
      {
        v31 = *(started + 40);
        v32 = 8 * v30;
        do
        {
          v33 = *v31++;
          started = re::ecs2::StateRecorderSystem::startRecordingScene(v4, v33);
          v32 -= 8;
        }

        while (v32);
      }
    }

    goto LABEL_38;
  }

  if ((started & 1) == 0)
  {
LABEL_37:
    started = re::ecs2::StateRecorderSystem::stopRecording(v4);
    goto LABEL_38;
  }

  started = (*(**(v4 + 304) + 88))(*(v4 + 304));
  if ((started & 1) == 0)
  {
    v16 = *(v4 + 288);
    *(v16 + 8) = 0;
    re::DynamicArray<re::TraceEntry>::clear(v16 + 16);
    **(v4 + 288) = 3;
    v17 = *(v4 + 304);
    if (v17 && ((*(*v17 + 104))(v17), v18))
    {
      *(v4 + 336) = 1;
    }

    else if (*(v4 + 336) == 1)
    {
      *(v4 + 336) = 0;
    }

    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(v4 + 344);
    re::DynamicArray<re::TraceEntry>::clear(v4 + 392);
    v83 = (*(**(v4 + 40) + 288))() + 120;
    started = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(&buf, v83, 0);
    v84 = buf.n128_u64[0];
    *v111 = buf.n128_u64[0];
    *&v111[8] = buf.n128_u32[2];
    v85 = buf.n128_u16[4];
    v86 = HIWORD(buf.n128_u32[2]);
    v87 = v83 == buf.n128_u64[0] && buf.n128_u16[4] == 0xFFFF;
    if (!v87 || v86 != 0xFFFF)
    {
      while (1)
      {
        v41 = v86;
        v42 = *(v84 + 16);
        if (v42 <= v86)
        {
          break;
        }

        v89 = *(*(v84 + 32) + 16 * v86) + 240 * v85;
        v90 = *(v89 + 200);
        if (v90)
        {
          v91 = *(v89 + 216);
          v92 = 8 * v90;
          do
          {
            v93 = *v91++;
            re::ecs2::StateRecorderSystem::recordAllEntities(v4, *(*(v93 + 104) + 368));
            v92 -= 8;
          }

          while (v92);
        }

        started = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(v111);
        v84 = *v111;
        v85 = *&v111[8];
        v86 = *&v111[10];
        if (*v111 == v83 && *&v111[8] == 0xFFFF && *&v111[10] == 0xFFFF)
        {
          goto LABEL_38;
        }
      }

LABEL_133:
      *v110 = 0;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      buf = 0u;
      v99 = MEMORY[0x1E69E9C10];
      v100 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v114 = 136315906;
      *&v114[4] = "operator[]";
      v115 = 1024;
      if (v100)
      {
        v101 = 3;
      }

      else
      {
        v101 = 2;
      }

      v116 = 797;
      v117 = 2048;
      *v118 = v41;
      *&v118[8] = 2048;
      *&v118[10] = v42;
      _os_log_send_and_compose_impl(v101, v110, &buf, 80, &dword_1E1C61000, v99, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v114, 38, v103, v104);
      _os_crash_msg();
      __break(1u);
    }
  }

LABEL_38:
  if (*(v4 + 224) != 1)
  {
    goto LABEL_106;
  }

  v34 = *(v4 + 312);
  if (v34)
  {
    updated = re::EventBus::getTypeId<re::ecs2::StateRecorderWillUpdateEvent>();
    started = re::EventBus::publish(v34, v4, updated, &buf, 1uLL, 0);
  }

  v36 = re::ecs2::ComponentTypeRegistry::instance(started);
  v37 = v36;
  v38 = *(v36 + 3);
  v106 = v4;
  if (v38 != *(v4 + 296))
  {
    goto LABEL_44;
  }

  v36 = (*(**(v4 + 304) + 80))(*(v4 + 304));
  if ((v36 & 1) == 0)
  {
    v38 = *(v37 + 3);
LABEL_44:
    *(v4 + 296) = v38;
    v39 = re::globalAllocators(v36);
    v40 = (*(*v39[2] + 32))(v39[2], 56, 8);
    *v40 = 0u;
    *(v40 + 16) = 0u;
    *(v40 + 32) = 0u;
    *(v40 + 48) = 0;
    *v110 = v40;
    *v40 = 4;
    v41 = *(v37 + 3);
    if (v41)
    {
      v42 = 0;
      while (v41 > v42)
      {
        v43 = *(*(v37 + 5) + 8 * v42);
        v44 = strlen(*(v43 + 32));
        buf.n128_u64[0] = *(v43 + 32);
        buf.n128_u64[1] = v44;
        re::DynamicArray<unsigned char>::DynamicArray(v114, &buf);
        buf = (*(v43 + 24) >> 1);
        LOWORD(v121) = 1;
        re::DynamicArray<BOOL>::DynamicArray(&v121 + 8, v114);
        v45 = re::DynamicArray<re::TraceEntry>::add((v40 + 16), &buf);
        if (*(&v121 + 1) && *(&v123 + 1))
        {
          (*(**(&v121 + 1) + 40))(v45);
        }

        if (*v114 && *&v118[12])
        {
          (*(**v114 + 40))(v45);
        }

        ++v42;
        v41 = *(v37 + 3);
        if (v42 >= v41)
        {
          goto LABEL_54;
        }
      }

      *v111 = 0;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      buf = 0u;
      v96 = MEMORY[0x1E69E9C10];
      v97 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v114 = 136315906;
      *&v114[4] = "operator[]";
      v115 = 1024;
      if (v97)
      {
        v98 = 3;
      }

      else
      {
        v98 = 2;
      }

      v116 = 797;
      v117 = 2048;
      *v118 = v42;
      *&v118[8] = 2048;
      *&v118[10] = v41;
      _os_log_send_and_compose_impl(v98, v111, &buf, 80, &dword_1E1C61000, v96, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v114, 38, v103, v104);
      _os_crash_msg();
      __break(1u);
      goto LABEL_133;
    }

LABEL_54:
    Current = CFAbsoluteTimeGetCurrent();
    if (Current < *(v4 + 232) + 0.0001)
    {
      Current = *(v4 + 232) + 0.0001;
    }

    *(v40 + 8) = Current;
    *(v4 + 232) = Current;
    std::__stable_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,re::TraceEntry *,std::__less<void,void>>(*(v40 + 48), (*(v40 + 48) + (*(v40 + 32) << 6)), &buf);
    re::TraceDelta::reduce(v40);
    v47 = *(v4 + 304);
    if (v47)
    {
      *v110 = 0;
      buf.n128_u64[0] = v40;
      (*(*v47 + 16))(v47, &buf);
      std::unique_ptr<re::TraceDelta,re::REDeleter<re::TraceDelta>>::~unique_ptr[abi:nn200100](&buf);
    }

    std::unique_ptr<re::TraceDelta,re::REDeleter<re::TraceDelta>>::~unique_ptr[abi:nn200100](v110);
  }

  if (*(v4 + 336) == 1)
  {
    re::ecs2::StateRecorderSystem::processDeferredEntries(v4);
  }

  v48 = CFAbsoluteTimeGetCurrent();
  if (v48 < *(v4 + 232) + 0.0001)
  {
    v48 = *(v4 + 232) + 0.0001;
  }

  v49 = *(v4 + 288);
  *(v49 + 8) = v48;
  *(v4 + 232) = v48;
  std::__stable_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,re::TraceEntry *,std::__less<void,void>>(*(v49 + 48), (*(v49 + 48) + (*(v49 + 32) << 6)), &buf);
  re::TraceDelta::reduce(*(v4 + 288));
  v50 = (*(**(v4 + 40) + 168))(*(v4 + 40));
  v51 = *(v50 + 24);
  if (v51)
  {
    v52 = *(v50 + 40);
    v105 = &v52[v51];
    while (1)
    {
      v53 = *(v4 + 288);
      v54 = *v52;
      v55 = re::IntrospectionSharedLock::IntrospectionSharedLock(&v108);
      v56 = re::ecs2::ComponentTypeRegistry::instance(v55);
      v57 = *(v53 + 32);
      if (v57)
      {
        break;
      }

LABEL_101:
      re::IntrospectionSharedLock::~IntrospectionSharedLock(&v108);
      if (++v52 == v105)
      {
        goto LABEL_102;
      }
    }

    v58 = v56;
    v59 = (*(v53 + 48) + 56);
    v60 = v57 << 6;
    while (1)
    {
      if (*(v59 - 40) - 1 <= 1)
      {
        buf.n128_u64[0] = *(v59 - 7);
        v61 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v54 + 152, &buf);
        if (v61)
        {
          v62 = *(v61 + 8);
          if (v62)
          {
            goto LABEL_72;
          }
        }

        else
        {
          v62 = *(v54 + 104);
          if (*(v62 + 312) == buf.n128_u64[0])
          {
LABEL_72:
            v63 = *(v59 - 6);
            if (v63)
            {
              v64 = re::ecs2::ComponentTypeRegistry::componentTypeWithHash(v58, v63);
              if (v64)
              {
                v65 = re::ecs2::EntityComponentCollection::get((v62 + 48), v64);
                if (v65)
                {
                  v66 = v65;
                  v67 = *(v4 + 328);
                  *(v67 + 80) = 0;
                  ++*(v67 + 88);
                  buf.n128_u16[4] = 0;
                  buf.n128_u64[0] = &unk_1F5D0A850;
                  *&v121 = v67 + 64;
                  *(&v121 + 1) = &unk_1F5D0A8A8;
                  *&v122 = 0;
                  *(&v122 + 1) = &unk_1F5CAC9D0;
                  *&v123 = &v121 + 8;
                  WORD4(v123) = 0;
                  v124 = 0uLL;
                  v125 = 0x2000;
                  v126 = 0;
                  re::ecs2::serializeComponent<re::ecs2::ECSJSONSerializer>(v67 + 104, v65, &buf, v114);
                  if (v114[0])
                  {
                    buf.n128_u8[8] = 0;
                    google::protobuf::io::CopyingOutputStreamAdaptor::Flush((&v122 + 8));
                    re::DynamicArray<BOOL>::resize((v59 - 4), *(v67 + 80));
                    memcpy(*v59, *(v67 + 96), *(v67 + 80));
                  }

                  else
                  {
                    v74 = *re::ecsComponentsLogObjects(v68);
                    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
                    {
                      v76 = *((*(*v66 + 40))(v66) + 32);
                      v77 = &v118[13];
                      if (v118[12])
                      {
                        v77 = v119;
                      }

                      *v111 = 136315394;
                      *&v111[4] = v76;
                      v112 = 2080;
                      v113 = v77;
                      _os_log_error_impl(&dword_1E1C61000, v74, OS_LOG_TYPE_ERROR, "[StateRecorderSystem] Failed to serialize %s. Details: %s", v111, 0x16u);
                    }
                  }

                  if (v114[0] & 1) == 0 && *&v118[4] && (v118[12])
                  {
                    (*(**&v118[4] + 40))();
                  }

                  re::DynamicArrayBufferedOutputStream::~DynamicArrayBufferedOutputStream(&buf);
                  v4 = v106;
                }
              }
            }

            else
            {
              v69 = *(v4 + 328);
              v70 = strlen(*(v62 + 296));
              buf.n128_u64[0] = *(v62 + 296);
              buf.n128_u64[1] = v70;
              re::DynamicString::operator=(v69, &buf);
              *(v69 + 40) = (*(v62 + 304) & 8) != 0;
              v71 = *(v62 + 32);
              if (v71)
              {
                v71 = *(v71 + 312);
              }

              *(v69 + 32) = v71;
              *(v69 + 80) = 0;
              ++*(v69 + 88);
              buf.n128_u16[4] = 0;
              buf.n128_u64[0] = &unk_1F5D0A850;
              *&v121 = v69 + 64;
              *(&v121 + 1) = &unk_1F5D0A8A8;
              *&v122 = 0;
              *(&v122 + 1) = &unk_1F5CAC9D0;
              *&v123 = &v121 + 8;
              WORD4(v123) = 0;
              v124 = 0uLL;
              v125 = 0x2000;
              v126 = 0;
              re::IntrospectionSharedLock::IntrospectionSharedLock(&v109);
              re::TypeRegistry::typeInfo(*(v69 + 376), (v69 + 48), v114);
              re::TypeInfo::TypeInfo(v111, &v114[8]);
              v72 = re::ecs2::serializeObject<re::ecs2::ECSJSONSerializer>(v69 + 104, v69, v111, &buf, v114);
              v4 = v106;
              if (v114[0])
              {
                buf.n128_u8[8] = 0;
                google::protobuf::io::CopyingOutputStreamAdaptor::Flush((&v122 + 8));
                re::DynamicArray<BOOL>::resize((v59 - 4), *(v69 + 80));
                memcpy(*v59, *(v69 + 96), *(v69 + 80));
              }

              else
              {
                v73 = *re::ecsComponentsLogObjects(v72);
                if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                {
                  v75 = &v118[13];
                  if (v118[12])
                  {
                    v75 = v119;
                  }

                  *v110 = 136315138;
                  *&v110[4] = v75;
                  _os_log_error_impl(&dword_1E1C61000, v73, OS_LOG_TYPE_ERROR, "[StateRecorderSystem] Failed to serialize entity state. Details: %s", v110, 0xCu);
                }
              }

              if (v114[0] & 1) == 0 && *&v118[4] && (v118[12])
              {
                (*(**&v118[4] + 40))();
              }

              re::IntrospectionSharedLock::~IntrospectionSharedLock(&v109);
              re::DynamicArrayBufferedOutputStream::~DynamicArrayBufferedOutputStream(&buf);
            }
          }
        }
      }

      v59 += 8;
      v60 -= 64;
      if (!v60)
      {
        goto LABEL_101;
      }
    }
  }

LABEL_102:
  v78 = *(v4 + 304);
  v79 = *(v4 + 288);
  if (v78)
  {
    buf.n128_u64[0] = *(v4 + 288);
    (*(*v78 + 16))(v78, &buf);
    v80 = std::unique_ptr<re::TraceDelta,re::REDeleter<re::TraceDelta>>::~unique_ptr[abi:nn200100](&buf);
    v81 = re::globalAllocators(v80);
    v82 = (*(*v81[2] + 32))(v81[2], 56, 8);
    *v82 = 0u;
    *(v82 + 16) = 0u;
    *(v82 + 32) = 0u;
    *(v82 + 48) = 0;
    *(v4 + 288) = v82;
  }

  else
  {
    *(v79 + 8) = 0;
    re::DynamicArray<re::TraceEntry>::clear(v79 + 16);
    v82 = *(v4 + 288);
  }

  *v82 = 1;
LABEL_106:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v107, v12, v13);
}

__n128 re::DynamicArray<re::TraceEntry>::add(_anonymous_namespace_ *this, __n128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::TraceEntry>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + (v4 << 6));
  result = *a2;
  v5[1].n128_u16[0] = a2[1].n128_u16[0];
  *v5 = result;
  v5[3].n128_u64[1] = 0;
  v5[2].n128_u64[0] = 0;
  v5[2].n128_u64[1] = 0;
  v5[1].n128_u64[1] = 0;
  v5[3].n128_u32[0] = 0;
  v7 = a2[2].n128_u64[0];
  v5[1].n128_u64[1] = a2[1].n128_u64[1];
  v5[2].n128_u64[0] = v7;
  a2[1].n128_u64[1] = 0;
  a2[2].n128_u64[0] = 0;
  v8 = v5[2].n128_u64[1];
  v5[2].n128_u64[1] = a2[2].n128_u64[1];
  a2[2].n128_u64[1] = v8;
  v9 = v5[3].n128_u64[1];
  v5[3].n128_u64[1] = a2[3].n128_u64[1];
  a2[3].n128_u64[1] = v9;
  ++a2[3].n128_u32[0];
  ++v5[3].n128_u32[0];
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

re *std::unique_ptr<re::TraceDelta,re::REDeleter<re::TraceDelta>>::~unique_ptr[abi:nn200100](re *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = re::globalAllocators(a1)[2];
    re::DynamicArray<re::TraceEntry>::deinit(v2 + 16);
    (*(*v3 + 40))(v3, v2);
  }

  return a1;
}

uint64_t re::ecs2::StateRecorderSystem::recordEntity(re::ecs2::StateRecorderSystem *this, uint64_t **a2)
{
  result = re::ecs2::StateRecorderSystem::logEntityAdded(this, a2, 1);
  v5 = a2[9];
  if (v5)
  {
    v6 = a2[11];
    v7 = 8 * v5;
    do
    {
      v8 = *v6++;
      result = re::ecs2::StateRecorderSystem::logComponentAdded(this, v8);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t re::ecs2::StateRecorderSystem::recordAllDescendants(re::ecs2::StateRecorderSystem *this, uint64_t **a2)
{
  result = re::ecs2::StateRecorderSystem::recordEntity(this, a2);
  v5 = a2[43];
  if (v5)
  {
    v6 = a2[45];
    v7 = 8 * v5;
    do
    {
      v8 = *v6++;
      result = re::ecs2::StateRecorderSystem::recordAllDescendants(this, v8);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

re::ecs2::StateRecorderSystem *re::ecs2::StateRecorderSystem::logEntityAdded(re::ecs2::StateRecorderSystem *this, re::ecs2::Entity *a2, char a3)
{
  v5 = this;
  if (*(this + 336) != 1)
  {
    goto LABEL_11;
  }

  this = re::ecs2::StateRecorderSystem::shouldEntityBeInAppEntitySet(this, a2);
  if (!this)
  {
    return this;
  }

  v6 = *(a2 + 39);
  v15.n128_u64[0] = v6;
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
  v8 = v7 ^ (v7 >> 31);
  v9 = *(v5 + 92);
  if (!v9)
  {
    LODWORD(v10) = 0;
    goto LABEL_10;
  }

  v10 = v8 % v9;
  v11 = *(*(v5 + 44) + 4 * (v8 % v9));
  if (v11 == 0x7FFFFFFF)
  {
LABEL_10:
    this = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addAsCopy(v5 + 344, v10, v8, &v15, &v15);
    ++*(v5 + 96);
    goto LABEL_11;
  }

  v12 = *(v5 + 45);
  while (*(v12 + 24 * v11 + 16) != v6)
  {
    LODWORD(v11) = *(v12 + 24 * v11 + 8) & 0x7FFFFFFF;
    if (v11 == 0x7FFFFFFF)
    {
      goto LABEL_10;
    }
  }

LABEL_11:
  v13 = *(v5 + 36);
  if (v13)
  {
    v15 = *(a2 + 39);
    v16 = 1;
    v17 = a3;
    v22 = 0;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    v21 = 0;
    v14 = re::DynamicArray<re::TraceEntry>::add((v13 + 16), &v15);
    this = v18;
    if (v18)
    {
      if (v22)
      {
        return (*(*v18 + 40))(v14);
      }
    }
  }

  return this;
}

uint64_t re::ecs2::StateRecorderSystem::logComponentAdded(uint64_t a1, void *a2)
{
  *&v8 = *(a2[2] + 312);
  result = (*(*a2 + 40))(a2);
  *(&v8 + 1) = *(result + 24) >> 1;
  v9 = 257;
  v14 = 0;
  v13 = 0;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  if (*(a1 + 336) == 1 && (v7 = *(a2[2] + 312), result = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(a1 + 344, &v7), (result & 1) == 0))
  {
    v6 = (a1 + 392);
  }

  else
  {
    v5 = *(a1 + 288);
    if (!v5)
    {
      return result;
    }

    v6 = (v5 + 16);
  }

  re::DynamicArray<re::TraceEntry>::add(v6, &v8);
  result = v10;
  if (v10)
  {
    if (v14)
    {
      return (*(*v10 + 40))();
    }
  }

  return result;
}

uint64_t re::ecs2::StateRecorderSystem::logComponentUpdated(uint64_t result, void *a2, char a3)
{
  v3 = a2[2];
  if (v3)
  {
    v6 = result;
    if (*(result + 336) != 1 || (v9.n128_u64[0] = *(v3 + 312), result = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(result + 344, v9.n128_u64), (result & 1) != 0))
    {
      v7 = *(v6 + 288);
      if (v7)
      {
        v9.n128_u64[0] = *(a2[2] + 312);
        v9.n128_u64[1] = *((*(*a2 + 40))(a2) + 24) >> 1;
        v10 = 2;
        v11 = a3;
        v16 = 0;
        v15 = 0;
        v13 = 0;
        v14 = 0;
        v12 = 0;
        v8 = re::DynamicArray<re::TraceEntry>::add((v7 + 16), &v9);
        result = v12;
        if (v12)
        {
          if (v16)
          {
            return (*(*v12 + 40))(v8);
          }
        }
      }
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::TraceEntry>::add(_anonymous_namespace_ *this, __int128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::TraceEntry>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + (v4 << 6);
  v6 = *a2;
  *(v5 + 16) = *(a2 + 8);
  *v5 = v6;
  result = re::DynamicArray<BOOL>::DynamicArray(v5 + 24, a2 + 3);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::ecs2::StateRecorderSystem::logEntityUpdated(uint64_t result, uint64_t a2, char a3)
{
  v5 = result;
  if (*(result + 336) != 1 || (v8.n128_u64[0] = *(a2 + 312), result = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(result + 344, v8.n128_u64), (result & 1) != 0))
  {
    v6 = *(v5 + 288);
    if (v6)
    {
      v8 = *(a2 + 312);
      v9 = 2;
      v10 = a3;
      v15 = 0;
      v12 = 0;
      v13 = 0;
      v11 = 0;
      v14 = 0;
      v7 = re::DynamicArray<re::TraceEntry>::add((v6 + 16), &v8);
      result = v11;
      if (v11)
      {
        if (v15)
        {
          return (*(*v11 + 40))(v7);
        }
      }
    }
  }

  return result;
}

uint64_t re::ecs2::StateRecorderSystem::logEntityRemoved(uint64_t a1, unint64_t a2)
{
  v6 = a2;
  v7 = 259;
  v12 = 0;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  v11 = 0;
  if (*(a1 + 336) == 1)
  {
    v5 = a2;
    if (!re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(a1 + 344, &v5))
    {
      goto LABEL_6;
    }

    re::DynamicArray<re::TraceEntry>::add((a1 + 392), &v6);
  }

  v3 = *(a1 + 288);
  if (v3)
  {
    re::DynamicArray<re::TraceEntry>::add((v3 + 16), &v6);
  }

LABEL_6:
  result = v8;
  if (v8)
  {
    if (v12)
    {
      return (*(*v8 + 40))();
    }
  }

  return result;
}

void *re::ecs2::allocInfo_StateRecorderSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A39A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A39A0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A3A80, "StateRecorderSystem");
    __cxa_guard_release(&qword_1EE1A39A0);
  }

  return &unk_1EE1A3A80;
}

void re::ecs2::initInfo_StateRecorderSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x8307BF99908B0EBCLL;
  v8[1] = "StateRecorderSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x1B000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_StateRecorderSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::StateRecorderSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::StateRecorderSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::StateRecorderSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::StateRecorderSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::StateRecorderSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::StateRecorderSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::internal::defaultDestruct<re::ecs2::StateRecorderSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::DynamicArray<re::TraceEntry>::deinit((a3 + 49));
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a3 + 43);
  re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(a3 + 30);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::StateRecorderSystem>(uint64_t *a1)
{
  re::DynamicArray<re::TraceEntry>::deinit((a1 + 49));
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 43);
  re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(a1 + 30);

  re::ecs2::System::~System(a1);
}

void re::ecs2::StateRecorderSystem::~StateRecorderSystem(re::ecs2::StateRecorderSystem *this)
{
  re::DynamicArray<re::TraceEntry>::deinit(this + 392);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 43);
  re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 30);

  re::ecs2::System::~System(this);
}

{
  re::DynamicArray<re::TraceEntry>::deinit(this + 392);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 43);
  re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 30);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::CallableMemFn<re::ecs2::StateRecorderSystem,REEventHandlerResult (re::ecs2::StateRecorderSystem::*)(re::ecs2::Entity *,RESceneEntityDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::StateRecorderSystem,REEventHandlerResult (re::ecs2::StateRecorderSystem::*)(re::ecs2::Entity *,RESceneEntityDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CE9E10;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::StateRecorderSystem,REEventHandlerResult (re::ecs2::StateRecorderSystem::*)(re::ecs2::Entity *,RESceneEntityDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CE9E10;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::StateRecorderSystem,REEventHandlerResult (re::ecs2::StateRecorderSystem::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::StateRecorderSystem,REEventHandlerResult (re::ecs2::StateRecorderSystem::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CE9E68;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::StateRecorderSystem,REEventHandlerResult (re::ecs2::StateRecorderSystem::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CE9E68;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::StateRecorderSystem,REEventHandlerResult (re::ecs2::StateRecorderSystem::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::StateRecorderSystem,REEventHandlerResult (re::ecs2::StateRecorderSystem::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CE9EC0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::StateRecorderSystem,REEventHandlerResult (re::ecs2::StateRecorderSystem::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CE9EC0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::StateRecorderSystem,REEventHandlerResult (re::ecs2::StateRecorderSystem::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::StateRecorderSystem,REEventHandlerResult (re::ecs2::StateRecorderSystem::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CE9F18;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::StateRecorderSystem,REEventHandlerResult (re::ecs2::StateRecorderSystem::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CE9F18;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::StateRecorderSystem,REEventHandlerResult (re::ecs2::StateRecorderSystem::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::StateRecorderSystem,REEventHandlerResult (re::ecs2::StateRecorderSystem::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CE9F70;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::StateRecorderSystem,REEventHandlerResult (re::ecs2::StateRecorderSystem::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CE9F70;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::StateRecorderSystem,REEventHandlerResult (re::ecs2::StateRecorderSystem::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::StateRecorderSystem,REEventHandlerResult (re::ecs2::StateRecorderSystem::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CE9FC8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::StateRecorderSystem,REEventHandlerResult (re::ecs2::StateRecorderSystem::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CE9FC8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::StateRecorderSystem,REEventHandlerResult (re::ecs2::StateRecorderSystem::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::StateRecorderSystem,REEventHandlerResult (re::ecs2::StateRecorderSystem::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEA020;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::StateRecorderSystem,REEventHandlerResult (re::ecs2::StateRecorderSystem::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEA020;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::StateRecorderSystem,REEventHandlerResult (re::ecs2::StateRecorderSystem::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::StateRecorderSystem,REEventHandlerResult (re::ecs2::StateRecorderSystem::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEA078;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::StateRecorderSystem,REEventHandlerResult (re::ecs2::StateRecorderSystem::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEA078;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::DynamicArray<re::TraceEntry>::deinit(uint64_t a1)
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
        v5 = v4 << 6;
        v6 = v3 + 24;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v6);
          v6 += 64;
          v5 -= 64;
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

uint64_t re::Event<re::NetworkSystem,re::ecs2::Entity *>::createSubscription<re::ecs2::StateRecorderSystem>(re::ecs2::StateRecorderSystem *,REEventHandlerResult (re::ecs2::StateRecorderSystem::*)(re::NetworkSystem*,re::ecs2::Entity *))::{lambda(re::NetworkSystem*,re::Event<re::NetworkSystem,re::ecs2::Entity *>::Subscription const&,re::ecs2::Entity *&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
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

uint64_t re::Event<re::NetworkSystem,re::ecs2::Component *>::createSubscription<re::ecs2::StateRecorderSystem>(re::ecs2::StateRecorderSystem *,REEventHandlerResult (re::ecs2::StateRecorderSystem::*)(re::NetworkSystem*,re::ecs2::Component *))::{lambda(re::NetworkSystem*,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription const&,re::ecs2::Component *&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
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

char *re::EventBus::getTypeId<re::ecs2::StateRecorderWillUpdateEvent>()
{
  v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
  {
    v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    if (v2)
    {
      re::EventBus::getTypeId<re::ecs2::StateRecorderWillUpdateEvent>(void)const::s_id = re::EventBus::typeStringToId(("N2re4ecs228StateRecorderWillUpdateEventE" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    }
  }

  return v0[46];
}

uint64_t re::DynamicArray<unsigned char>::DynamicArray(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    re::DynamicArray<BOOL>::setCapacity(a1, v3);
    ++*(a1 + 24);
    re::DynamicArray<REFrameAnalysisBottleneck>::copy(a1, 0, *a2, *(a2 + 8));
  }

  return a1;
}

_anonymous_namespace_ *re::DynamicArray<re::TraceEntry>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::TraceEntry>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::TraceEntry>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::TraceEntry>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::TraceEntry>::setCapacity(v5, a2);
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
          *(v11 + 8) = *(v8 + 16);
          *v11 = v12;
          v11[7] = 0;
          v11[4] = 0;
          v11[5] = 0;
          v11[3] = 0;
          *(v11 + 12) = 0;
          v13 = *(v8 + 24);
          v14 = *(v8 + 32);
          v15 = v8 + 24;
          v11[3] = v13;
          v11[4] = v14;
          *v15 = 0;
          *(v15 + 8) = 0;
          v16 = v11[5];
          v11[5] = *(v15 + 16);
          *(v15 + 16) = v16;
          v17 = v11[7];
          v11[7] = *(v15 + 32);
          *(v15 + 32) = v17;
          ++*(v15 + 24);
          ++*(v11 + 12);
          re::DynamicArray<unsigned long>::deinit(v15);
          v11 += 8;
          v8 = v15 + 40;
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

void ___ZN2re4ecs212ShadowHelper32forceEnableMeshProjectiveShadowsEv_block_invoke(uint64_t a1, const char *a2)
{
  re::Defaults::BOOLValue(&v5, "forceEnableMeshProjectiveShadows", a2);
  if (v5 == 1)
  {
    re::ecs2::ShadowHelper::forceEnableMeshProjectiveShadows(void)::g_forceEnableMeshProjectiveShadows = BYTE1(v5);
    if (BYTE1(v5) == 1)
    {
      v3 = *re::ecsComponentsLogObjects(v2);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "Mesh Projective Shadows have been force-enabled. Planar Projective Shadows will be disabled.", v4, 2u);
      }
    }
  }
}

void *re::ecs2::allocInfo_AnchorShadowMarker(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_196, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_196))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A3B28, "AnchorShadowMarker");
    __cxa_guard_release(&_MergedGlobals_196);
  }

  return &unk_1EE1A3B28;
}

void re::ecs2::initInfo_AnchorShadowMarker(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0x12136136298219DELL;
  v16[1] = "AnchorShadowMarker";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1A3B20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A3B20))
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
    qword_1EE1A3B18 = v14;
    __cxa_guard_release(&qword_1EE1A3B20);
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A3B18;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AnchorShadowMarker>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AnchorShadowMarker>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AnchorShadowMarker>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AnchorShadowMarker>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs218AnchorShadowMarkerELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v15 = v17;
}

double re::internal::defaultConstruct<re::ecs2::AnchorShadowMarker>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDFAE0;
  *(v3 + 112) = 0;
  result = 0.0;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::AnchorShadowMarker>(ArcSharedObject *a1)
{
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDFAE0;
  *(v1 + 112) = 0;
  result = 0.0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  return result;
}

__n128 re::ecs2::AnchorShadowMarker::setFloorPlane(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = *a3;
  v8 = *a2;
  *&v9[1] = *a3;
  *&v9[17] = v8;
  if (*(a1 + 64))
  {
    re::ecs2::AnchorShadowMarker::Plane::operator==((a1 + 80), &v9[1]);
    v4 = *(a1 + 64);
    *v9 = v7;
    *&v9[16] = v8;
    if (v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    *v9 = v7;
    *&v9[16] = v8;
  }

  *(a1 + 64) = 1;
LABEL_6:
  result = *v9;
  v6 = *&v9[16];
  *(a1 + 80) = *v9;
  *(a1 + 96) = v6;
  return result;
}

BOOL re::ecs2::AnchorShadowMarker::Plane::operator==(float *a1, float *a2)
{
  if (*a1 != *a2 && vabds_f32(*a1, *a2) >= (((fabsf(*a1) + fabsf(*a2)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  if (v2 != v3 && vabds_f32(v2, v3) >= (((fabsf(v2) + fabsf(v3)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  if (v4 != v5 && vabds_f32(v4, v5) >= (((fabsf(v4) + fabsf(v5)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v6 = a1[4];
  v7 = a2[4];
  if (v6 != v7 && vabds_f32(v6, v7) >= (((fabsf(v6) + fabsf(v7)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v8 = a1[5];
  v9 = a2[5];
  if (v8 != v9 && vabds_f32(v8, v9) >= (((fabsf(v8) + fabsf(v9)) + 1.0) * 0.00001))
  {
    return 0;
  }

  v10 = a1[6];
  v11 = a2[6];
  return v10 == v11 || vabds_f32(v10, v11) < (((fabsf(v10) + fabsf(v11)) + 1.0) * 0.00001);
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs218AnchorShadowMarkerELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return result;
}

void re::ecs2::VisualDepthCustomMaterialSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 232);
  if (v3 && *(v3 + 205) == 1)
  {
    v6 = *(a3 + 200);
    if (v6)
    {
      v8 = *(a3 + 216);
      v9 = 8 * v6;
      do
      {
        v10 = *v8++;
        re::ecs2::VisualDepthCustomMaterialTracker::update(a1 + 296, v10, a2, a3);
        v9 -= 8;
      }

      while (v9);
      v3 = *(a1 + 232);
    }

    if (*(v3 + 352))
    {
      v11 = *(a1 + 560);
      if (v11)
      {
        if ((*(*v11 + 40))(v11, a2))
        {
          if ((*(a1 + 576) & 1) == 0)
          {
            v12 = *(*(a1 + 232) + 352);
            if (v12)
            {
              v13 = v12 + 8;
            }

            else
            {
              v13 = 0;
            }

            objc_initWeak(&location, v13);
            re::CameraStreamProvider::threadSafe_increaseRunningTokenCount(v12);
            if (*(a1 + 576) == 1)
            {
              re::VisualDepthStreamRunningToken::operator=((a1 + 568), &location);
            }

            else
            {
              *(a1 + 568) = 0;
              objc_moveWeak((a1 + 568), &location);
              objc_destroyWeak(&location);
              location = 0;
              *(a1 + 576) = 1;
            }

            re::VisualDepthStreamRunningToken::~VisualDepthStreamRunningToken(&location);
          }
        }

        else if (*(a1 + 576))
        {
          re::VisualDepthStreamRunningToken::~VisualDepthStreamRunningToken((a1 + 568));
          *(a1 + 576) = 0;
        }
      }
    }
  }
}

_anonymous_namespace_ *re::ecs2::VisualDepthCustomMaterialSystem::willAddSystemToECSService(re::ecs2::VisualDepthCustomMaterialSystem *this)
{
  re::ecs2::RenderingSubsystem::willAddSystemToECSService(this);
  if (*(this + 552) == 1)
  {
    re::ecs2::BasicComponentStates<re::ecs2::MeshComponent>::~BasicComponentStates(this + 39);
    *(this + 552) = 0;
  }

  re::ecs2::VisualDepthCustomMaterialTracker::VisualDepthCustomMaterialTracker((this + 296), this);
  *(this + 552) = 1;
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::ecs2::VisualDepthCustomMaterialService>(v2);
  *(this + 70) = result;
  return result;
}

double re::ecs2::VisualDepthCustomMaterialSystem::willRemoveSystemFromECSService(re::ecs2::VisualDepthCustomMaterialSystem *this)
{
  if (*(this + 552) == 1)
  {
    re::ecs2::BasicComponentStates<re::ecs2::MeshComponent>::~BasicComponentStates(this + 39);
    *(this + 552) = 0;
  }

  *(this + 70) = 0;
  result = 0.0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 36) = 0;
  return result;
}

void *re::ecs2::allocInfo_VisualDepthCustomMaterialSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_197, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_197))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A3BC0, "VisualDepthCustomMaterialSystem");
    __cxa_guard_release(&_MergedGlobals_197);
  }

  return &unk_1EE1A3BC0;
}

void re::ecs2::initInfo_VisualDepthCustomMaterialSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xE914C504D5DCFFD4;
  v8[1] = "VisualDepthCustomMaterialSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x24800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_VisualDepthCustomMaterialSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VisualDepthCustomMaterialSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VisualDepthCustomMaterialSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::VisualDepthCustomMaterialSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::VisualDepthCustomMaterialSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VisualDepthCustomMaterialSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VisualDepthCustomMaterialSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

double re::internal::defaultConstruct<re::ecs2::VisualDepthCustomMaterialSystem>(int a1, int a2, void *a3)
{
  bzero(a3, 0x248uLL);
  re::ecs2::System::System(a3, 1, 1);
  a3[36] = 0;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 17) = 0u;
  *(a3 + 14) = 0u;
  *(a3 + 15) = 0u;
  *a3 = &unk_1F5CEA0F0;
  *(a3 + 296) = 0;
  *(a3 + 552) = 0;
  a3[70] = 0;
  *(a3 + 568) = 0;
  *(a3 + 576) = 0;
  return result;
}

void re::internal::defaultDestruct<re::ecs2::VisualDepthCustomMaterialSystem>(int a1, int a2, id *this)
{
  if (*(this + 576) == 1)
  {
    re::VisualDepthStreamRunningToken::~VisualDepthStreamRunningToken(this + 71);
  }

  if (*(this + 552) == 1)
  {
    re::ecs2::BasicComponentStates<re::ecs2::MeshComponent>::~BasicComponentStates(this + 39);
  }

  re::ecs2::System::~System(this);
}

double re::internal::defaultConstructV2<re::ecs2::VisualDepthCustomMaterialSystem>(void *a1)
{
  bzero(a1, 0x248uLL);
  re::ecs2::System::System(a1, 1, 1);
  a1[36] = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 17) = 0u;
  *(a1 + 14) = 0u;
  *(a1 + 15) = 0u;
  *a1 = &unk_1F5CEA0F0;
  *(a1 + 296) = 0;
  *(a1 + 552) = 0;
  a1[70] = 0;
  *(a1 + 568) = 0;
  *(a1 + 576) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::ecs2::VisualDepthCustomMaterialSystem>(id *this)
{
  if (*(this + 576) == 1)
  {
    re::VisualDepthStreamRunningToken::~VisualDepthStreamRunningToken(this + 71);
  }

  if (*(this + 552) == 1)
  {
    re::ecs2::BasicComponentStates<re::ecs2::MeshComponent>::~BasicComponentStates(this + 39);
  }

  re::ecs2::System::~System(this);
}

void re::ecs2::VisualDepthCustomMaterialSystem::~VisualDepthCustomMaterialSystem(id *this)
{
  if (*(this + 576) == 1)
  {
    re::VisualDepthStreamRunningToken::~VisualDepthStreamRunningToken(this + 71);
  }

  if (*(this + 552) == 1)
  {
    re::ecs2::BasicComponentStates<re::ecs2::MeshComponent>::~BasicComponentStates(this + 39);
  }

  re::ecs2::System::~System(this);
}

{
  if (*(this + 576) == 1)
  {
    re::VisualDepthStreamRunningToken::~VisualDepthStreamRunningToken(this + 71);
  }

  if (*(this + 552) == 1)
  {
    re::ecs2::BasicComponentStates<re::ecs2::MeshComponent>::~BasicComponentStates(this + 39);
  }

  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void *re::ecs2::BasicComponentStates<re::ecs2::MeshComponent>::~BasicComponentStates(void *a1)
{
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>,4ul>::deinit(a1);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((a1 + 7));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 15));
  a1[20] = 0;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 21));
  a1[26] = 0;
  a1[27] = 0;
  a1[28] = 0;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 21));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 15));
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((a1 + 7));
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>,4ul>::deinit(a1);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  return a1;
}

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>,4ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1, i);
      v5 = v4;
      if (*v4)
      {
        *v4 = 0;
        v6 = v4 + 1;
        v7 = *(v4[1] + 288);
        if (v7)
        {
          v8 = v4[12];
          if (v8)
          {
            for (j = 0; j != v8; ++j)
            {
              v10 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v5 + 7), j);
              re::EventBus::unsubscribe(v7, *v10, v10[1]);
            }
          }
        }

        re::BucketArray<RESubscriptionHandle,8ul>::deinit((v5 + 7));
        v11 = 0;
        v12 = v5 + 3;
        do
        {
          v13 = v5[2];
          if (*v13)
          {
            re::ecs2::ComponentBucketsBase::removeBucket(v13, v12[v11]);
          }

          v12[v11++] = -1;
        }

        while (v11 != 4);
        *v6 = 0;
        v5[2] = 0;
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v5 + 7));
      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((v5 + 7));
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

BOOL re::ecs2::MeshComponentWithVisualDepthCustomMaterialStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v20, a5, 0);
  v8 = v20;
  v9 = v21;
  v10 = v21;
  v20 = a4;
  v21 = v8;
  v22 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    while (1)
    {
      v12 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v20);
      v13 = *(v12 + 16);
      if (!v13 || (*(v13 + 304) & 1) == 0)
      {
        break;
      }

      v18 = *(v12 + 72);
      v14 = v20;
      v15 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v21);
      v16 = a3[2];
      if (!v18)
      {
        goto LABEL_8;
      }

      v17 = a3[5];
LABEL_9:
      re::ecs2::ComponentBucketsBase::moveComponent(v16, v14, v15, v17);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v21);
      if (v21 == a5 && v22 == 0xFFFF && HIWORD(v22) == 0xFFFF)
      {
        return *(a5 + 40) != 0;
      }
    }

    v14 = v20;
    v15 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v21);
    v16 = a3[2];
LABEL_8:
    v17 = a3[4];
    goto LABEL_9;
  }

  return *(a5 + 40) != 0;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v8 = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[a4 + 3]);
  v10 = v8;
  if (!a4 && (v8 != a2 || v9 != a3 || ((v9 ^ a3) & 0xFFFFFF00000000) != 0))
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v8, v9);
    v13 = *a1;
    v16 = a1[1];
    v14 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v13 + 56), &v16);
    if (v14 != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v13 + 168, *(*(v13 + 64) + 16 * v14 + 8));
      re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v13);
    }
  }

  return v10;
}

BOOL re::ecs2::MeshComponentWithVisualDepthCustomMaterialStateImpl::processPreparingComponents(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v35, a5, 0);
  v9 = v35;
  v10 = v36;
  v11 = v36;
  v35 = a4;
  v36 = v9;
  v37 = v10;
  if (v9 != a5 || v11 != 0xFFFFFFFFLL)
  {
    do
    {
      v13 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v35);
      v14 = *(v13 + 72);
      if (v14)
      {
        v15 = v13;
        v16 = *(v13 + 88);
        v17 = 24 * v14;
        while (1)
        {
          v18 = *(v16 + 1);
          if (v18)
          {
            v19 = atomic_load((v18 + 896));
            if (v19 != 3)
            {
              if (*(v16 + 1))
              {
                v20 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v16);
                if (!v20 || (*(v20 + 1768) & 1) != 0)
                {
                  break;
                }
              }
            }
          }

          v16 = (v16 + 24);
          v17 -= 24;
          if (!v17)
          {
            v21 = v15[9];
            if (!v21)
            {
              goto LABEL_25;
            }

            v22 = v15[11];
            v23 = (v22 + 24 * v21);
            while (1)
            {
              v24 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v22);
              v25 = *(v22 + 1);
              if (v25)
              {
                LODWORD(v25) = atomic_load((v25 + 896));
                LOBYTE(v25) = v25 == 3;
              }

              if ((v25 & 1) == 0 && v24 && *(v24 + 1842) == 6 && (*(v24 + 1840) & 0x4000) != 0)
              {
                break;
              }

              v22 = (v22 + 24);
              if (v22 == v23)
              {
                goto LABEL_25;
              }
            }

            v31 = v35;
            v32 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v36);
            re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v31, v32, a3[6]);
            v33 = *(a1 + 8);
            if (v33)
            {
              (*(*v33 + 24))(v33, v15[2]);
            }

            break;
          }
        }
      }

      else
      {
LABEL_25:
        v27 = v35;
        v28 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v36);
        re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v27, v28, a3[4]);
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v36);
    }

    while (v36 != a5 || v37 != 0xFFFF || HIWORD(v37) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::MeshComponentWithVisualDepthCustomMaterialStateImpl::didSetDirty(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = result;
    result = re::ecs2::ComponentBucketsBase::component(*(a2 + 16), a3, a4);
    if (result)
    {
      result = *(v4 + 8);
      if (result)
      {
        v5 = *(*result + 16);

        return v5();
      }
    }
  }

  return result;
}

re::ecs2::VisualDepthCustomMaterialTracker *re::ecs2::VisualDepthCustomMaterialTracker::VisualDepthCustomMaterialTracker(re::ecs2::VisualDepthCustomMaterialTracker *this, re::ecs2::System *a2)
{
  v4 = *(a2 + 5);
  *this = &unk_1F5CEA180;
  v5 = (*(*v4 + 32))(v4);
  v6 = re::ServiceLocator::serviceOrNull<re::ecs2::VisualDepthCustomMaterialService>(v5);
  *(this + 1) = v6;
  *(this + 3) = 0;
  *(this + 2) = 0;
  *(this + 8) = 1;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  *(this + 16) = 0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 72) = 0u;
  *(this + 38) = 1;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 24) = 0;
  *(this + 50) = 1;
  *(this + 233) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  v9 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((this + 136), 0);
  *(this + 38) += 2;
  *(this + 22) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((this + 184), 0);
  *(this + 50) += 2;
  *(this + 28) = 0;
  *(this + 29) = a2;
  *(this + 30) = this;
  *(this + 248) = 1;
  return this;
}

unint64_t re::ecs2::BasicComponentStates<re::ecs2::MeshComponent>::addScene(unint64_t a1, uint64_t a2)
{
  v48 = a2;
  v4 = *(a1 + 128);
  v5 = *(a1 + 136);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (a1 + 144);
    }

    else
    {
      v6 = *(a1 + 152);
    }

    v8 = 8 * v4;
    while (!*v6)
    {
      ++v6;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v7 = (a1 + 144);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(a1 + 152);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  v9 = 0;
  v10 = 8 * v4;
  do
  {
    v11 = *v7++;
    v9 |= v11;
    v10 -= 8;
  }

  while (v10);
  if (v9)
  {
LABEL_16:
    *&v40 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 120, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1, v40);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::init(v12, a1, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 56), &v48, &v40);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 120, v40);
    v13 = v40;
    goto LABEL_56;
  }

LABEL_17:
  v40 = 0u;
  v41[0] = 0;
  v42 = 0u;
  v43 = 0u;
  v41[1] = -1;
  v44 = 0;
  v45 = 1;
  v46 = 0uLL;
  v47 = 0uLL;
  v14 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>,4ul>::addUninitialized(a1);
  v15 = *v41;
  *(v14 + 48) = 0;
  *(v14 + 16) = v15;
  *(v14 + 32) = 0u;
  *v14 = 0u;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v14 + 56, &v43 + 1);
  if (v40)
  {
    *&v40 = 0;
    v16 = *(*(&v40 + 1) + 288);
    if (v16)
    {
      v17 = v47;
      if (v47)
      {
        v18 = 0;
        do
        {
          v19 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](&v43 + 8, v18);
          re::EventBus::unsubscribe(v16, *v19, v19[1]);
          ++v18;
        }

        while (v17 != v18);
      }
    }

    re::BucketArray<RESubscriptionHandle,8ul>::deinit(&v43 + 8);
    for (i = 0; i != 4; ++i)
    {
      if (*v41[0])
      {
        re::ecs2::ComponentBucketsBase::removeBucket(v41[0], v41[i + 1]);
      }

      v41[i + 1] = -1;
    }

    *(&v40 + 1) = 0;
    v41[0] = 0;
  }

  re::BucketArray<RESubscriptionHandle,8ul>::deinit(&v43 + 8);
  if (*(&v43 + 1) && (v45 & 1) == 0)
  {
    (*(**(&v43 + 1) + 40))();
  }

  v22 = *(a1 + 40);
  if (!v22)
  {
    re::internal::assertLog(4, v21, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    result = _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
    return result;
  }

  v23 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1, v22 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::init(v23, a1, v48);
  v39 = *(a1 + 40) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 56), &v48, &v39);
  v24 = *(a1 + 40);
  v25 = *(a1 + 160);
  if ((v24 & 0x3F) != 0)
  {
    v26 = (v24 >> 6) + 1;
  }

  else
  {
    v26 = v24 >> 6;
  }

  *(a1 + 160) = v24;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 120), v26, &v40);
  if (v24 && v25 > v24)
  {
    v27 = 63;
    v28 = *(a1 + 160) & 0x3FLL;
    if (v28 && v28 != 63)
    {
      v27 = ~(-1 << v28);
    }

    if (*(a1 + 136))
    {
      v29 = a1 + 144;
    }

    else
    {
      v29 = *(a1 + 152);
    }

    *(v29 + 8 * *(a1 + 128) - 8) &= v27;
  }

  v30 = *(a1 + 40);
  v31 = *(a1 + 208);
  if ((v30 & 0x3F) != 0)
  {
    v32 = (v30 >> 6) + 1;
  }

  else
  {
    v32 = v30 >> 6;
  }

  *(a1 + 208) = v30;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 168), v32, &v40);
  if (v30 && v31 > v30)
  {
    v33 = 63;
    v34 = *(a1 + 208) & 0x3FLL;
    if (v34 && v34 != 63)
    {
      v33 = ~(-1 << v34);
    }

    if (*(a1 + 184))
    {
      v35 = a1 + 192;
    }

    else
    {
      v35 = *(a1 + 200);
    }

    *(v35 + 8 * *(a1 + 176) - 8) &= v33;
  }

  v13 = v39;
LABEL_56:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 168, v13);
  if (*(a1 + 232) == 1)
  {
    v37 = *(a1 + 216);
    v38 = *(v48 + 376);
    LOWORD(v40) = 257;
    DWORD1(v40) = 1023969417;
    BYTE8(v40) = 0;
    re::ecs2::System::setTaskOptions(v37, v38, &v40);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1);
  }

  return result;
}

uint64_t re::ecs2::VisualDepthCustomMaterialTracker::removeScene(re::ecs2::VisualDepthCustomMaterialTracker *this, re::ecs2::Scene *a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 9, &v15);
  if (result != -1)
  {
    v4 = *(this + 10) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 136, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 184, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 16, *(v4 + 8));
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

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 72, &v15);
  }

  return result;
}

unint64_t re::ecs2::VisualDepthCustomMaterialTracker::update(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[0] = a3;
  v8[1] = a4;
  v9 = a2;
  v5 = *(*(a1 + 80) + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 72), &v9) + 8);
  re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 184, v5);
  v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 16, v5);
  if (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::update(v6, v8, 0))
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 184, v5);
  }

  return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 16);
}

void re::ecs2::BasicComponentStateImpl<re::ecs2::MeshComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 192);
  if (v3)
  {
    v5 = 24;
    v6 = 0xFFFFFFFFLL;
    do
    {
      v7 = re::ecs2::ComponentBucketsBase::componentHandle(*(a2 + 16), *(a2 + v5), v3);
      if (v7 != -1 && (v8 & 0xFFFFFF00000000) != 0)
      {
        v10 = v7;
        v6 = v8;
        goto LABEL_11;
      }

      v5 += 8;
    }

    while (v5 != 56);
    v10 = -1;
LABEL_11:

    re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::setComponentState(a2, v10, v6, 0);
  }
}

re *re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType) + 480;
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
    *v10 = &unk_1F5CEA1E8;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CEA240;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CEA298;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CEA2F0;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType, 0);
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
        *v37 = &unk_1F5CEA1E8;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CEA240;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CEA298;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CEA2F0;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v14 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v14);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = *(a2 + 192);
  if (v6)
  {
    for (i = 24; i != 56; i += 8)
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v6);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::setComponentState(a1, v8, v9, 0);
        return 0;
      }
    }

    v11 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v6);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v11, v12);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v14 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v14);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = *(a2 + 192);
  if (v6)
  {
    for (i = 24; i != 56; i += 8)
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v6);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::setComponentState(a1, v8, v9, 0);
        return 0;
      }
    }

    v11 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v6);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v11, v12);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v14 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v14);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = *(a2 + 192);
  if (v6)
  {
    for (i = 24; i != 56; i += 8)
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v6);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::setComponentState(a1, v8, v9, 0);
        return 0;
      }
    }

    v11 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v6);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v11, v12);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v14 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v14);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = *(a2 + 192);
  if (v6)
  {
    for (i = 24; i != 56; i += 8)
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v6);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::setComponentState(a1, v8, v9, 0);
        return 0;
      }
    }

    v11 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v6);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v11, v12);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEA1E8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEA1E8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEA240;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEA240;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEA298;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEA298;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEA2F0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEA2F0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>,4ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 4 * v3)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>,4ul>::setBucketsCapacity(a1, (v2 + 4) >> 2);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 2)
  {
    v10 = 0;
    memset(v19, 0, sizeof(v19));
    v7 = MEMORY[0x1E69E9C10];
    v11 = 136315906;
    v12 = "operator[]";
    v13 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v14 = 858;
    v15 = 2048;
    v16 = v2 >> 2;
    v17 = 2048;
    v18 = v3;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 2));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 112 * (v2 & 3);
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::update(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a1 + 224);
  v7 = a1[3];
  v8 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](a1[2] + 8, v7);
  if (*(v8 + 40))
  {
    v9 = (*(*v6 + 24))(v6, a2, a1, v7, v8, a3);
  }

  else
  {
    v9 = 0;
  }

  v10 = a1[5];
  v11 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](a1[2] + 8, v10);
  if (*(v11 + 40))
  {
    v9 = v9 | (*(*v6 + 32))(v6, a2, a1, v10, v11, a3);
  }

  v12 = a1[6];
  v13 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](a1[2] + 8, v12);
  if (*(v13 + 40))
  {
    return v9 | (*(*v6 + 40))(v6, a2, a1, v12, v13, a3);
  }

  return v9;
}

re::ecs2::PortalManagerStateTracking *re::ecs2::PortalManagerStateTracking::PortalManagerStateTracking(re::ecs2::PortalManagerStateTracking *this)
{
  v5[3] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::HierarchyStateTracking<unsigned long long>::HierarchyStateTracking(this);
  *v2 = &unk_1F5CEA348;
  *(v2 + 304) = 0u;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0u;
  *(v2 + 352) = 0u;
  *(v2 + 368) = 0u;
  *(v2 + 384) = 0u;
  *(v2 + 400) = 0u;
  *(v2 + 416) = 0u;
  *(v2 + 432) = 0u;
  *(v2 + 448) = 0u;
  *(v2 + 464) = 0u;
  *(v2 + 480) = 0u;
  *(v2 + 496) = 0;
  *(v2 + 500) = 0x7FFFFFFFLL;
  *(v2 + 592) = 0;
  *(v2 + 600) = 0;
  *(v2 + 672) = 0u;
  *(v2 + 688) = 0u;
  *(v2 + 704) = 0;
  *(v2 + 572) = 0u;
  *(v2 + 544) = 0u;
  *(v2 + 560) = 0u;
  *(v2 + 512) = 0u;
  *(v2 + 528) = 0u;
  *(v2 + 708) = 0x7FFFFFFFLL;
  *(v2 + 752) = 0u;
  *(v2 + 768) = 0u;
  *(v2 + 720) = 0u;
  *(v2 + 736) = 0u;
  v5[0] = re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v5[1] = re::ecs2::ComponentImpl<re::ecs2::PortalComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v5[2] = re::ecs2::ComponentImpl<re::ecs2::EmbeddedStereoContentComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v4[0] = v5;
  v4[1] = 3;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v2 + 312), v4);
  return this;
}

uint64_t re::ecs2::HierarchyStateTracking<unsigned long long>::HierarchyStateTracking(uint64_t a1)
{
  *a1 = &unk_1F5CEA488;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0x7FFFFFFFLL;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  v2 = a1 + 56;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0x7FFFFFFFLL;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  v3 = a1 + 104;
  *(a1 + 136) = 0;
  *(a1 + 140) = 0x7FFFFFFFLL;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  v4 = a1 + 152;
  *(a1 + 184) = 0;
  *(a1 + 188) = 0x7FFFFFFFLL;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  v5 = a1 + 200;
  *(a1 + 232) = 0;
  *(a1 + 236) = 0x7FFFFFFFLL;
  *(a1 + 248) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 284) = 0x7FFFFFFFLL;
  *(a1 + 296) = -1;
  return a1;
}

void re::ecs2::PortalManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchies(uint64_t a1, uint64_t a2)
{
  v55[1] = *MEMORY[0x1E69E9840];
  v40 = *(a2 + 32);
  if (v40)
  {
    v3 = 0;
    v4 = (*(a2 + 16) + 8);
    while (1)
    {
      v5 = *v4;
      v4 += 6;
      if (v5 < 0)
      {
        break;
      }

      if (v40 == ++v3)
      {
        LODWORD(v3) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (v3 != v40)
  {
    v6 = *(a2 + 16);
    while (1)
    {
      v7 = *(v6 + 24 * v3 + 16);
      v8 = *(v7 + 224);
      v42.n128_u64[0] = v8;
      if (v8)
      {
        v9 = re::ecs2::PortalComponent::targetWorldRootToken(v8, *(a1 + 304));
        v10 = re::ecs2::PortalComponent::targetWorldUseLegacyIBL(v42.n128_i64[0], *(a1 + 304));
        re::ecs2::PortalManagerStateTracking::addComponentForWorldId(a1, v9, v10, v42.n128_u64[0]);
        v11 = v42.n128_u64[0];
        v44 = v9;
        v43[0] = v42.n128_u64[0];
        if (v9)
        {
          v12 = re::HashBrown<unsigned long long,re::HashSet<re::ecs2::PortalComponent const*,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 400), v9);
          if (v12 == -1)
          {
            v54 = v11;
            v51 = 0u;
            v52 = 0u;
            LODWORD(v53) = 0;
            *(&v53 + 4) = 0x7FFFFFFFLL;
            re::HashSetBase<re::ecs2::PortalComponent const*,re::ecs2::PortalComponent const*,re::internal::ValueAsKey<re::ecs2::PortalComponent const*>,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>::add(&v51, &v54);
            re::HashBrown<unsigned long long,re::HashSet<re::ecs2::PortalComponent const*,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::addNew((a1 + 400), &v44, &v51);
            re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v51);
          }

          else
          {
            re::HashSetBase<re::ecs2::PortalComponent const*,re::ecs2::PortalComponent const*,re::internal::ValueAsKey<re::ecs2::PortalComponent const*>,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>::add(*(a1 + 408) + 56 * v12 + 8, v43);
          }
        }

        v13 = v42.n128_u64[0];
        *(v42.n128_u64[0] + 144) = v9;
        v14 = v13[6];
        v44 = v14;
        if (v14)
        {
          v15 = re::HashBrown<unsigned long long,re::HashSet<re::ecs2::PortalComponent const*,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 512), v14);
          if (v15 == -1)
          {
            v52 = 0u;
            v53 = 0u;
            v51 = 0u;
            DWORD1(v53) = 0x7FFFFFFF;
            v16 = re::HashBrown<unsigned long long,re::HashSet<re::ecs2::PortalComponent const*,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::addNew((a1 + 512), &v44, &v51);
            re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v51);
          }

          else
          {
            v16 = *(a1 + 520) + 56 * v15 + 8;
          }

          re::HashSetBase<re::ecs2::PortalComponent const*,re::ecs2::PortalComponent const*,re::internal::ValueAsKey<re::ecs2::PortalComponent const*>,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>::add(v16, v42.n128_u64);
          v13 = v42.n128_u64[0];
        }

        re::ecs2::EntityHandle::EntityHandle(location, (v13 + 5));
        re::ecs2::EntityHandle::operator=((v13 + 19), location);
        re::ecs2::EntityHandle::reset(location);
        objc_destroyWeak(location);
        location[0] = 0;
      }

      v17 = re::ecs2::EntityComponentCollection::get((v7 + 48), re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v17)
      {
        v18 = v17;
        re::ecs2::PortalManagerStateTracking::addComponentForWorldId(a1, *(v17 + 32), *(v17 + 41), v17);
        *(v18 + 48) = *(v18 + 32);
      }

      v19 = re::ecs2::EntityComponentCollection::get((v7 + 48), re::ecs2::ComponentImpl<re::ecs2::EmbeddedStereoContentComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v19)
      {
        v20 = v19;
        re::ecs2::PortalManagerStateTracking::addComponentForWorldId(a1, *(v19 + 32), 0, v19);
        *(v20 + 104) = *(v20 + 32);
      }

      if (*(a1 + 56))
      {
        v21 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) >> 27));
        v22 = *(*(a1 + 64) + 4 * ((v21 ^ (v21 >> 31)) % *(a1 + 80)));
        if (v22 != 0x7FFFFFFF)
        {
          v23 = *(a1 + 72);
          while (*(v23 + 32 * v22 + 8) != v7)
          {
            v22 = *(v23 + 32 * v22) & 0x7FFFFFFF;
            if (v22 == 0x7FFFFFFF)
            {
              goto LABEL_29;
            }
          }

          goto LABEL_64;
        }
      }

LABEL_29:
      v24 = v7;
      while (1)
      {
        v25 = re::ecs2::EntityComponentCollection::get((v24 + 48), re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        if (v25)
        {
          if (v24 != v7 || (*(v25 + 40) & 1) != 0)
          {
            break;
          }
        }

        v24 = *(v24 + 32);
        if (!v24)
        {
          goto LABEL_37;
        }

        if ((*(v24 + 304) & 0x80) != 0)
        {
          v24 = 0;
          goto LABEL_37;
        }
      }

      v24 = *(v25 + 32);
LABEL_37:
      re::StackScratchAllocator::StackScratchAllocator(&v51);
      v44 = 0;
      v45 = 0;
      v46 = 1;
      v48 = 0;
      v49 = 0;
      v47 = 0;
      v50 = 0;
      re::BucketArray<re::ecs2::PortalManagerStateTracking::buildWorldIdsForEntityHierarchy(re::ecs2::Entity const*)::EntityWorldId,32ul>::init(&v44, &v51, 1uLL);
      v43[0] = v7;
      v43[1] = v24;
      v26 = re::BucketArray<re::ecs2::PortalManagerStateTracking::buildWorldIdsForEntityHierarchy(re::ecs2::Entity const*)::EntityWorldId,32ul>::add(&v44, v43);
      v27 = v49;
      if (v49)
      {
        break;
      }

LABEL_59:
      while (v45)
      {
        re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v44);
      }

      if (v44 && (v46 & 1) == 0)
      {
        (*(*v44 + 40))(v26);
      }

      re::StackScratchAllocator::~StackScratchAllocator(&v51);
LABEL_64:
      v38 = *(a2 + 32);
      v6 = *(a2 + 16);
      if (v38 <= v3 + 1)
      {
        v38 = v3 + 1;
      }

      while (v38 - 1 != v3)
      {
        LODWORD(v3) = v3 + 1;
        if ((*(v6 + 24 * v3 + 8) & 0x80000000) != 0)
        {
          goto LABEL_70;
        }
      }

      LODWORD(v3) = v38;
LABEL_70:
      if (v3 == v40)
      {
        return;
      }
    }

    while (1)
    {
      *v43 = *re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](&v44, --v27);
      re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](&v44, v27);
      v49 = v27;
      ++v50;
      if (*(v43[0] + 304))
      {
        break;
      }

LABEL_56:
      if (!v27)
      {
        goto LABEL_59;
      }
    }

    LOBYTE(v54) = 0;
    v28 = re::ecs2::EntityComponentCollection::get((v43[0] + 48), re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v29 = v28;
    if (v28)
    {
      v24 = *(v28 + 32);
      v30 = v54;
      if (*(v28 + 40) == 1)
      {
        if ((v54 & 1) == 0)
        {
          LOBYTE(v54) = 1;
        }

        v55[0] = v24;
LABEL_46:
        v31 = v55;
LABEL_47:
        if (*v31)
        {
          re::HashTable<re::ecs2::Entity const*,unsigned long long,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::addOrReplace(a1 + 56, v43, v31);
        }

        else
        {
          re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityVisualProxyScopeData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 56, v43);
        }

        v32 = *(v43[0] + 344);
        if (v32)
        {
          v33 = *(v43[0] + 360);
          v34 = 8 * v32;
          do
          {
            v36 = *v33++;
            v35 = v36;
            v37 = v43[1];
            if (v29)
            {
              v37 = v24;
            }

            v42.n128_u64[0] = v35;
            v42.n128_u64[1] = v37;
            v26 = re::BucketArray<re::ecs2::PortalManagerStateTracking::buildWorldIdsForEntityHierarchy(re::ecs2::Entity const*)::EntityWorldId,32ul>::add(&v44, &v42);
            v34 -= 8;
          }

          while (v34);
          v27 = v49;
        }

        goto LABEL_56;
      }
    }

    else
    {
      v30 = v54;
    }

    v31 = &v43[1];
    if ((v30 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }
}

void re::ecs2::PortalManagerStateTracking::addComponentForWorldId(uint64_t result, unint64_t a2, int a3, unint64_t a4)
{
  v37[1] = *MEMORY[0x1E69E9840];
  v35 = a4;
  v36 = a2;
  if (a2)
  {
    v8 = re::HashBrown<unsigned long long,re::HashSet<re::ecs2::PortalComponent const*,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((result + 336), a2);
    if (v8 != -1)
    {
      re::HashSetBase<re::internal::TimelineTreeInfo *,re::internal::TimelineTreeInfo *,re::internal::ValueAsKey<re::internal::TimelineTreeInfo *>,re::Hash<re::internal::TimelineTreeInfo *>,re::EqualTo<re::internal::TimelineTreeInfo *>,true,false>::add(*(result + 344) + 56 * v8 + 8, &v35);
      return;
    }

    v37[0] = a4;
    v32 = 0u;
    v33 = 0u;
    LODWORD(v34) = 0;
    *(&v34 + 4) = 0x7FFFFFFFLL;
    re::HashSetBase<re::internal::TimelineTreeInfo *,re::internal::TimelineTreeInfo *,re::internal::ValueAsKey<re::internal::TimelineTreeInfo *>,re::Hash<re::internal::TimelineTreeInfo *>,re::EqualTo<re::internal::TimelineTreeInfo *>,true,false>::add(&v32, v37);
    if (re::HashBrown<unsigned long long,re::HashSet<re::ecs2::PortalComponent const*,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((result + 336), a2) == -1)
    {
      re::HashBrown<unsigned long long,re::HashSet<re::ecs2::Component const*,re::Hash<re::ecs2::Component const*>,re::EqualTo<re::ecs2::Component const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd((result + 336), &v36, &v32);
    }

    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v32);
    re::SmallHashSet<unsigned long long,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::add(result + 576, &v36);
    if (re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::find((result + 720), v36) == -1)
    {
      if (!*(result + 776))
      {
      }

      v10 = *(result + 752);
      if (!v10 || (v11 = *(result + 736), v11 > 8 * v10))
      {
        re::HashBrown<unsigned long long,re::ecs2::PortalServiceQuery::WorldType,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(result + 720, 1u);
        v11 = *(result + 736);
      }

      v12 = 0xBF58476D1CE4E5B9;
      v13 = 0x94D049BB133111EBLL;
      v14 = (0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v36 ^ (v36 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v36 ^ (v36 >> 30))) >> 27))) ^ ((0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v36 ^ (v36 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v36 ^ (v36 >> 30))) >> 27))) >> 31);
      v15 = v11 >> 4;
      v16 = *(result + 720);
      v17 = v14 % v15;
      while (1)
      {
        v18 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v16 + 16 * v17)), xmmword_1E304FAD0)))), 0x3830282018100800)));
        if (v18 < 0x40)
        {
          break;
        }

        if (v17 + 1 == v15)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        if (v17 == v14 % v15)
        {
          re::internal::assertLog(4, v9, -1.79399301e-307, 4.74803907e-38, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658, v32, v33, v34, v35);
          _os_crash("assertion failure: (blockIndex != h1(key) % blockCount()) Unexpected full hash-table");
          __break(1u);
          break;
        }
      }

      v19 = v16 + 16 * v17;
      v20 = *(v19 + v18);
      *(v19 + v18) = v14 & 0x7F;
      v21 = *(result + 728) + 16 * (v18 + 16 * v17);
      v22 = v36;
      *v21 = v36;
      *(v21 + 8) = 1;
      if (v20 == 255)
      {
        v23 = -1;
      }

      else
      {
        v23 = 0;
      }

      v24.i64[0] = vdupq_n_s64(1uLL).u64[0];
      v24.i64[1] = v23;
      *(result + 744) = vaddq_s64(*(result + 744), v24);
      v25 = (((v22 ^ (v22 >> 30)) * v12) ^ (((v22 ^ (v22 >> 30)) * v12) >> 27)) * v13;
      *(result + 760) ^= (v25 >> 31) ^ v25;
    }

    if (a3)
    {
      v26 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v36 ^ (v36 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v36 ^ (v36 >> 30))) >> 27));
      v27 = v26 ^ (v26 >> 31);
      v28 = *(result + 488);
      if (v28)
      {
        v29 = v27 % v28;
        v30 = *(*(result + 472) + 4 * (v27 % v28));
        if (v30 != 0x7FFFFFFF)
        {
          v31 = *(result + 480);
          if (*(v31 + 24 * v30 + 16) == v36)
          {
            return;
          }

          while (1)
          {
            LODWORD(v30) = *(v31 + 24 * v30 + 8) & 0x7FFFFFFF;
            if (v30 == 0x7FFFFFFF)
            {
              break;
            }

            if (*(v31 + 24 * v30 + 16) == v36)
            {
              return;
            }
          }
        }
      }

      else
      {
        LODWORD(v29) = 0;
      }

      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addAsCopy(result + 464, v29, v27, &v36, &v36);
      ++*(result + 504);
    }
  }
}

uint64_t re::HashBrown<unsigned long long,re::HashSet<re::ecs2::PortalComponent const*,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::addNew(uint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v6 = re::HashBrown<unsigned long long,re::HashSet<re::ecs2::PortalComponent const*,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(a1, *a2);
  if (v6 != -1)
  {
    return a1[1] + 56 * v6 + 8;
  }

  return re::HashBrown<unsigned long long,re::HashSet<re::ecs2::PortalComponent const*,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd(a1, a2, a3);
}

uint64_t re::HashSetBase<re::ecs2::PortalComponent const*,re::ecs2::PortalComponent const*,re::internal::ValueAsKey<re::ecs2::PortalComponent const*>,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>::add(uint64_t result, unint64_t *a2)
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

  result = re::HashSetBase<re::ecs2::PortalComponent const*,re::ecs2::PortalComponent const*,re::internal::ValueAsKey<re::ecs2::PortalComponent const*>,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>::addAsCopy(result, v8, v6, a2, a2);
  ++*(v3 + 40);
  return result;
}

__n128 re::BucketArray<re::ecs2::PortalManagerStateTracking::buildWorldIdsForEntityHierarchy(re::ecs2::Entity const*)::EntityWorldId,32ul>::add(uint64_t a1, __n128 *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = *(a1 + 8);
  if (v4 + 1 > 32 * v5)
  {
    re::BucketArray<re::ecs2::PortalManagerStateTracking::buildWorldIdsForEntityHierarchy(re::ecs2::Entity const*)::EntityWorldId,32ul>::setBucketsCapacity(a1, (v4 + 32) >> 5);
    v5 = *(a1 + 8);
  }

  if (v5 <= v4 >> 5)
  {
    v12 = 0;
    memset(v21, 0, sizeof(v21));
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

    v16 = 858;
    v17 = 2048;
    v18 = v4 >> 5;
    v19 = 2048;
    v20 = v5;
    _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v6 = a1 + 24;
  }

  else
  {
    v6 = *(a1 + 32);
  }

  v7 = *(v6 + 8 * (v4 >> 5));
  ++*(a1 + 40);
  ++*(a1 + 48);
  result = *a2;
  *(v7 + 16 * (v4 & 0x1F)) = *a2;
  return result;
}

void re::ecs2::PortalManagerStateTracking::clearEntityHierarchyStateData(re::ecs2::PortalManagerStateTracking *this, const re::ecs2::Entity *a2)
{
  v4 = *(a2 + 28);
  v29 = v4;
  if (v4)
  {
    v5 = v4[18];
    re::ecs2::PortalManagerStateTracking::removeComponentForWorldId(this, v5, v4);
    re::ecs2::PortalManagerStateTracking::removePortalComponentForWorldId(this, v5, v4);
    re::ecs2::EntityHandle::EntityHandle(location, (v4 + 19));
    v6 = location[1];
    re::ecs2::EntityHandle::reset(location);
    objc_destroyWeak(location);
    if (v6)
    {
      v7 = re::HashBrown<unsigned long long,re::HashSet<re::ecs2::PortalComponent const*,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(this + 64, v6);
      if (v7 != -1)
      {
        v8 = *(this + 65) + 56 * v7;
        re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(v8 + 8, &v29);
        if (!*(v8 + 36))
        {
          re::HashBrown<unsigned long long,re::HashSet<re::ecs2::PortalComponent const*,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::remove(this + 512, v6);
        }
      }
    }
  }

  v9 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v9)
  {
    re::ecs2::PortalManagerStateTracking::removeComponentForWorldId(this, *(v9 + 48), v9);
  }

  v10 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::EmbeddedStereoContentComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v10)
  {
    re::ecs2::PortalManagerStateTracking::removeComponentForWorldId(this, *(v10 + 104), v10);
  }

  v11 = *(a2 + 39);
  v12 = re::HashBrown<unsigned long long,re::HashSet<re::ecs2::PortalComponent const*,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(this + 64, v11);
  if (v12 == -1)
  {
    goto LABEL_35;
  }

  v13 = *(this + 65) + 56 * v12;
  v14 = *(v13 + 40);
  if (v14)
  {
    v15 = 0;
    v16 = (*(v13 + 24) + 8);
    while (1)
    {
      v17 = *v16;
      v16 += 6;
      if (v17 < 0)
      {
        break;
      }

      if (v14 == ++v15)
      {
        LODWORD(v15) = *(v13 + 40);
        break;
      }
    }
  }

  else
  {
    LODWORD(v15) = 0;
  }

  if (v15 == v14)
  {
    goto LABEL_34;
  }

  do
  {
    v18 = *(*(v13 + 24) + 24 * v15 + 16);
    v19 = *(v18 + 18);
    re::ecs2::PortalManagerStateTracking::removeComponentForWorldId(this, v19, v18);
    re::ecs2::PortalManagerStateTracking::removePortalComponentForWorldId(this, v19, v18);
    v20 = *(v18 + 2);
    location[0] = v20;
    v21 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v20 ^ (v20 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v20 ^ (v20 >> 30))) >> 27));
    v22 = v21 ^ (v21 >> 31);
    v23 = *(this + 32);
    if (!v23)
    {
      LODWORD(v24) = 0;
LABEL_25:
      re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::addAsCopy(this + 104, v24, v22, location, location);
      ++*(this + 36);
      goto LABEL_26;
    }

    v24 = v22 % v23;
    v25 = *(*(this + 14) + 4 * (v22 % v23));
    if (v25 == 0x7FFFFFFF)
    {
      goto LABEL_25;
    }

    v26 = *(this + 15);
    while (*(v26 + 24 * v25 + 16) != v20)
    {
      LODWORD(v25) = *(v26 + 24 * v25 + 8) & 0x7FFFFFFF;
      if (v25 == 0x7FFFFFFF)
      {
        goto LABEL_25;
      }
    }

LABEL_26:
    v27 = *(v13 + 40);
    if (v27 <= v15 + 1)
    {
      v27 = v15 + 1;
    }

    while (v27 - 1 != v15)
    {
      LODWORD(v15) = v15 + 1;
      if ((*(*(v13 + 24) + 24 * v15 + 8) & 0x80000000) != 0)
      {
        goto LABEL_32;
      }
    }

    LODWORD(v15) = v27;
LABEL_32:
    ;
  }

  while (v15 != v14);
  v11 = *(a2 + 39);
LABEL_34:
  re::HashBrown<unsigned long long,re::HashSet<re::ecs2::PortalComponent const*,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::remove(this + 512, v11);
LABEL_35:
  re::ecs2::HierarchyStateTracking<unsigned long long>::clearEntityHierarchyStateData(this, a2);
}

uint64_t re::ecs2::PortalManagerStateTracking::removeComponentForWorldId(re::ecs2::PortalManagerStateTracking *this, unint64_t a2, unint64_t a3)
{
  v61 = a2;
  result = re::HashBrown<unsigned long long,re::HashSet<re::ecs2::PortalComponent const*,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(this + 42, a2);
  if (result != -1)
  {
    v7 = *(this + 43) + 56 * result;
    v8 = *(v7 + 32);
    if (v8)
    {
      v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
      v10 = (v9 ^ (v9 >> 31)) % v8;
      v11 = *(v7 + 16);
      v12 = *(v11 + 4 * v10);
      if (v12 != 0x7FFFFFFF)
      {
        v13 = *(v7 + 24);
        if (*(v13 + 24 * v12 + 16) == a3)
        {
          *(v11 + 4 * v10) = *(v13 + 24 * v12 + 8) & 0x7FFFFFFF;
LABEL_9:
          v15 = *(v7 + 24);
          v16 = v15 + 24 * v12;
          v19 = *(v16 + 8);
          v18 = (v16 + 8);
          v17 = v19;
          if (v19 < 0)
          {
            *v18 = v17 & 0x7FFFFFFF;
            v15 = *(v7 + 24);
            v17 = *(v15 + 24 * v12 + 8);
          }

          v20 = *(v7 + 48);
          *(v15 + 24 * v12 + 8) = *(v7 + 44) | v17 & 0x80000000;
          --*(v7 + 36);
          *(v7 + 44) = v12;
          *(v7 + 48) = v20 + 1;
        }

        else
        {
          while (1)
          {
            v14 = v12;
            LODWORD(v12) = *(v13 + 24 * v12 + 8) & 0x7FFFFFFF;
            if (v12 == 0x7FFFFFFF)
            {
              break;
            }

            if (*(v13 + 24 * v12 + 16) == a3)
            {
              *(v13 + 24 * v14 + 8) = *(v13 + 24 * v14 + 8) & 0x80000000 | *(v13 + 24 * v12 + 8) & 0x7FFFFFFF;
              goto LABEL_9;
            }
          }
        }
      }
    }

    if (!*(v7 + 36))
    {
      v21 = (this + 360);
      v22 = re::HashBrown<unsigned long long,re::HashSet<re::ecs2::PortalComponent const*,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(this + 42, a2);
      if (v22 != -1)
      {
        v25 = (*(this + 42) + (v22 & 0xFFFFFFFFFFFFFFF0));
        v26.i64[0] = -1;
        v26.i64[1] = -1;
        v27 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v25, v26), xmmword_1E304FAD0)))), 0x3830282018100800);
        v28 = *&v27 != 0;
        v29 = *&v27 ? -1 : 0x80;
        v25->i8[v22 & 0xF] = v29;
        v30 = (*(this + 43) + 56 * v22);
        v31 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*v30 ^ (*v30 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*v30 ^ (*v30 >> 30))) >> 27));
        *(this + 47) ^= (v31 >> 31) ^ v31;
        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v30 + 1);
        v32.i64[0] = -1;
        v32.i64[1] = v28;
        v24 = vaddq_s64(*v21, v32);
        *v21 = v24;
        v33 = *(this + 44);
        if (v33 >= 0x11 && v24.i64[0] < v33 >> 2)
        {
          *v24.i64 = re::HashBrown<unsigned long long,re::HashSet<re::ecs2::Component const*,re::Hash<re::ecs2::Component const*>,re::EqualTo<re::ecs2::Component const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(this + 336, 0);
        }
      }

      if (*(this + 175))
      {
        v34 = *(this + 174);
        if (!v34)
        {
          goto LABEL_42;
        }

        v35 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
        v36 = (v35 ^ (v35 >> 31)) % v34;
        v37 = *(this + 85);
        v38 = *(v37 + 4 * v36);
        if (v38 == 0x7FFFFFFF)
        {
          goto LABEL_42;
        }

        v39 = *(this + 86);
        if (*(v39 + 16 * v38 + 8) != a2)
        {
          while (1)
          {
            v46 = v38;
            v38 = *(v39 + 16 * v38) & 0x7FFFFFFF;
            if (v38 == 0x7FFFFFFF)
            {
              goto LABEL_42;
            }

            if (*(v39 + 16 * v38 + 8) == a2)
            {
              *(v39 + 16 * v46) = *(v39 + 16 * v46) & 0x80000000 | *(v39 + 16 * v38) & 0x7FFFFFFF;
              goto LABEL_38;
            }
          }
        }

        *(v37 + 4 * v36) = *(v39 + 16 * v38) & 0x7FFFFFFF;
LABEL_38:
        v47 = *(this + 86);
        v48 = (v47 + 16 * v38);
        v49 = *v48;
        if (*v48 < 0)
        {
          *v48 = v49 & 0x7FFFFFFF;
          v47 = *(this + 86);
          v49 = *(v47 + 16 * v38);
        }

        *(v47 + 16 * v38) = *(this + 177) | v49 & 0x80000000;
        *(this + 177) = v38;
        --*(this + 175);
        v45 = 712;
      }

      else
      {
        v40 = (this + 608);
        v41 = *(this + 74);
        v42 = (this + 608);
        if (v41)
        {
          v43 = 8 * v41;
          v42 = (this + 608);
          while (*v42 != a2)
          {
            v42 = (v42 + 8);
            v43 -= 8;
            if (!v43)
            {
              goto LABEL_42;
            }
          }
        }

        if (v42 == (this + 8 * v41 + 608))
        {
          goto LABEL_42;
        }

        v44 = v42 - v40;
        if (v41 <= v44 >> 3)
        {
          re::internal::assertLog(6, v23, *v24.i64, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "removeAt", 527, v44 >> 3, v41);
          result = _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v59, v60);
          __break(1u);
          return result;
        }

        if (v41 - 1 > v44 >> 3)
        {
          *(v40 + v44) = *(v40 + v41 - 1);
        }

        *(this + 74) = v41 - 1;
        v45 = 600;
      }

      ++*(this + v45);
LABEL_42:
      v50 = re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::find(this + 90, a2);
      if (v50 != -1)
      {
        v51 = (*(this + 90) + (v50 & 0xFFFFFFFFFFFFFFF0));
        v52.i64[0] = -1;
        v52.i64[1] = -1;
        v53 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v51, v52), xmmword_1E304FAD0)))), 0x3830282018100800);
        if (v53)
        {
          v54 = -1;
        }

        else
        {
          v54 = 0x80;
        }

        v51->i8[v50 & 0xF] = v54;
        v55 = *(*(this + 91) + 16 * v50);
        v56 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v55 ^ (v55 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v55 ^ (v55 >> 30))) >> 27));
        *(this + 95) ^= (v56 >> 31) ^ v56;
        v52.i64[1] = *&v53 != 0;
        v57 = vaddq_s64(*(this + 744), v52);
        *(this + 744) = v57;
        v58 = *(this + 92);
        if (v58 >= 0x11 && v57.i64[0] < v58 >> 2)
        {
          re::HashBrown<unsigned long long,re::ecs2::PortalServiceQuery::WorldType,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(this + 720, 0);
        }
      }

      return re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this + 464, &v61);
    }
  }

  return result;
}

void re::ecs2::PortalManagerStateTracking::removePortalComponentForWorldId(re::ecs2::PortalManagerStateTracking *this, unint64_t a2, const re::ecs2::PortalComponent *a3)
{
  v7 = a3;
  v5 = re::HashBrown<unsigned long long,re::HashSet<re::ecs2::PortalComponent const*,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(this + 50, a2);
  if (v5 != -1)
  {
    v6 = *(this + 51) + 56 * v5;
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(v6 + 8, &v7);
    if (!*(v6 + 36))
    {
      re::HashBrown<unsigned long long,re::HashSet<re::ecs2::PortalComponent const*,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::remove(this + 400, a2);
    }
  }
}

void re::HashBrown<unsigned long long,re::HashSet<re::ecs2::PortalComponent const*,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::remove(uint64_t a1, unint64_t a2)
{
  v3 = re::HashBrown<unsigned long long,re::HashSet<re::ecs2::PortalComponent const*,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(a1, a2);
  if (v3 != -1)
  {
    v4 = (*a1 + (v3 & 0xFFFFFFFFFFFFFFF0));
    v5.i64[0] = -1;
    v5.i64[1] = -1;
    v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v4, v5), xmmword_1E304FAD0)))), 0x3830282018100800);
    v7 = *&v6 != 0;
    v8 = *&v6 ? -1 : 0x80;
    v4->i8[v3 & 0xF] = v8;
    v9 = (*(a1 + 8) + 56 * v3);
    v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*v9 ^ (*v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*v9 ^ (*v9 >> 30))) >> 27));
    *(a1 + 40) ^= (v10 >> 31) ^ v10;
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v9 + 1);
    v11.i64[0] = -1;
    v11.i64[1] = v7;
    v12 = vaddq_s64(*(a1 + 24), v11);
    *(a1 + 24) = v12;
    v13 = *(a1 + 16);
    if (v13 >= 0x11 && v12.i64[0] < v13 >> 2)
    {

      re::HashBrown<unsigned long long,re::HashSet<re::ecs2::PortalComponent const*,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(a1, 0);
    }
  }
}

void re::ecs2::HierarchyStateTracking<unsigned long long>::clearEntityHierarchyStateData(_DWORD *a1, uint64_t a2)
{
  if (a1[21])
  {
    if (a1[74] != a1[24])
    {
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear((a1 + 62));
    }

    re::StackScratchAllocator::StackScratchAllocator(v15);
    v9[0] = 0;
    v9[1] = 0;
    v10 = 1;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v14 = 0;
    re::BucketArray<re::ecs2::Entity const*,32ul>::init(v9, v15, 1uLL);
    *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v9) = a2;
    while (v13)
    {
      v8 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v9, v13 - 1);
      re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v9, --v13);
      ++v14;
      if (!re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains((a1 + 62), &v8))
      {
        re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityVisualProxyScopeData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove((a1 + 14), &v8);
        re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add((a1 + 62), &v8);
        v4 = *(v8 + 344);
        if (v4)
        {
          v5 = *(v8 + 360);
          v6 = 8 * v4;
          do
          {
            v7 = *v5++;
            *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v9) = v7;
            v6 -= 8;
          }

          while (v6);
        }
      }
    }

    a1[74] = a1[24];
    re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v9);
    if (v9[0] && (v10 & 1) == 0)
    {
      (*(*v9[0] + 40))();
    }

    re::StackScratchAllocator::~StackScratchAllocator(v15);
  }
}

_anonymous_namespace_ *re::SmallHashSet<unsigned long long,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::add(uint64_t a1, unint64_t *a2)
{
  if (*(a1 + 124))
  {
    v4 = a1 + 96;
LABEL_3:

    return re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(v4, a2);
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = 8 * v6;
  v8 = (a1 + 32);
  result = (a1 + 32);
  while (*result != *a2)
  {
    result = (result + 8);
    v7 -= 8;
    if (!v7)
    {
      result = (a1 + 8 * v6 + 32);
      break;
    }
  }

  if (result == &v8[v6])
  {
    if (v6 <= 7)
    {
LABEL_13:
      v9 = re::DynamicInlineArray<unsigned long long,8ul>::ensureCapacity((a1 + 16), a2);
      v11 = *(a1 + 16);
      if (v9)
      {
        *(a1 + 8 * v11++ + 32) = *a2;
        *(a1 + 16) = v11;
        ++*(a1 + 24);
      }

      if (v11)
      {
        return (a1 + 8 * (v11 - 1) + 32);
      }

      re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, -1, 0);
      result = _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v21, v22);
      __break(1u);
      return result;
    }

    v12 = *a1;
    if (!*a1)
    {
    }

    if (!*(a1 + 96))
    {
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(a1 + 96, v12, 16);
    }

    v13 = *(a1 + 16);
    if (!v13)
    {
LABEL_33:
      *(a1 + 16) = 0;
      ++*(a1 + 24);
      v4 = a1 + 96;
      goto LABEL_3;
    }

    v14 = a1 + 8 * v13 + 32;
    while (1)
    {
      v15 = 0xBF58476D1CE4E5B9 * (*v8 ^ (*v8 >> 30));
      v16 = (0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) ^ ((0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) >> 31);
      v17 = *(a1 + 120);
      if (v17)
      {
        v18 = v16 % v17;
        v19 = *(*(a1 + 104) + 4 * (v16 % v17));
        if (v19 != 0x7FFFFFFF)
        {
          v20 = *(a1 + 112);
          while (*(v20 + 16 * v19 + 8) != *v8)
          {
            v19 = *(v20 + 16 * v19) & 0x7FFFFFFF;
            if (v19 == 0x7FFFFFFF)
            {
              goto LABEL_31;
            }
          }

          goto LABEL_32;
        }
      }

      else
      {
        LODWORD(v18) = 0;
      }

LABEL_31:
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::addAsCopy(a1 + 96, v18, v16, v8, v8);
      ++*(a1 + 136);
LABEL_32:
      if (++v8 == v14)
      {
        goto LABEL_33;
      }
    }
  }

  return result;
}

void *re::ecs2::PortalManagerQuery::perEntityStateMap(re::ecs2::PortalManagerQuery *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return (v1 + 56);
  }

  else
  {
    return &re::ecs2::PortalManagerQuery::perEntityStateMap(void)const::empty;
  }
}

void *re::ecs2::PortalManagerQuery::worldIdForEntity@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2;
  v4 = result[1];
  if (v4 && (result = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v4 + 56, &v5)) != 0)
  {
    *a3 = 1;
    *(a3 + 8) = *result;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t *re::ecs2::PortalManagerQuery::worldIds(re::ecs2::PortalManagerQuery *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return (v1 + 576);
  }

  result = &qword_1ECF18B00;
  if ((atomic_load_explicit(&_MergedGlobals_53, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&_MergedGlobals_53))
    {
      qword_1ECF18B00 = 0;
      dword_1ECF18B08 = 0;
      qword_1ECF18B10 = 0;
      dword_1ECF18B18 = 0;
      *&algn_1ECF18B1C[68] = 0u;
      *&algn_1ECF18B1C[84] = 0u;
      dword_1ECF18B80 = 0;
      *algn_1ECF18B84 = 0x7FFFFFFFLL;
      __cxa_guard_release(&_MergedGlobals_53);
    }

    return &qword_1ECF18B00;
  }

  return result;
}

uint64_t re::ecs2::PortalManagerQuery::worldTypeForWorldId(re::ecs2::PortalManagerQuery *this, unint64_t a2)
{
  result = 0;
  if (a2)
  {
    v4 = *(this + 1);
    if (v4)
    {
      return *(*(v4 + 728) + 16 * re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::find((v4 + 720), a2) + 8);
    }
  }

  return result;
}

BOOL re::ecs2::PortalManagerQuery::worldUseLegacyIBL(re::ecs2::PortalManagerQuery *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return 0;
  }

  v4 = a2;
  return re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(v2 + 464, &v4);
}

void *re::ecs2::PortalManagerQuery::portalsForWorldId(re::ecs2::PortalManagerQuery *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return &unk_1EE188E10;
  }

  v3 = re::HashBrown<unsigned long long,re::HashSet<re::ecs2::PortalComponent const*,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((v2 + 400), a2);
  if (v3 == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 408) + 56 * v3 + 8;
  }

  if (v4)
  {
    return v4;
  }

  else
  {
    return &_MergedGlobals_8;
  }
}

uint64_t re::ecs2::PortalManager::init(uint64_t result, uint64_t a2)
{
  *(result + 312) = a2;
  *(result + 800) = result + 8;
  return result;
}

uint64_t re::ecs2::PortalManager::query(re::ecs2::PortalManager *this)
{
  if (*(this + 35))
  {
    re::ecs2::HierarchyStateTracking<unsigned long long>::updatePerEntityStateData(this + 8, 1);
  }

  return this + 792;
}

void re::ecs2::HierarchyStateTracking<unsigned long long>::updatePerEntityStateData(uint64_t a1, int a2)
{
  if (a2)
  {
    (*(*a1 + 32))(a1, a1 + 104);
  }

  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1 + 104);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1 + 200);

  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1 + 248);
}

uint64_t re::ecs2::HierarchyStateTracking<unsigned long long>::registerScene(uint64_t a1, unint64_t a2)
{
  v27 = a2;
  v2 = *(a2 + 288);
  if (!v2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) An event bus is expected for this system to track entity state changes.", "eventBus", "registerScene", 106);
    result = _os_crash("assertion failure: (eventBus) An event bus is expected for this system to track entity state changes.");
    __break(1u);
    return result;
  }

  v21[0] = 0;
  v21[1] = 0;
  v22 = 1;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v26 = 0;
  v4 = (*(*a1 + 16))(a1);
  if (v5)
  {
    v6 = v4;
    v7 = 8 * v5;
    do
    {
      v8 = *v6++;
      re::ecs2::HierarchyStateTracking<unsigned long long>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidChangeEvent>(a1, v2, v21, v8);
      re::ecs2::HierarchyStateTracking<unsigned long long>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(a1, v2, v21, v8);
      re::ecs2::HierarchyStateTracking<unsigned long long>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(a1, v2, v21, v8);
      v7 -= 8;
    }

    while (v7);
  }

  v9 = (*(*a1 + 24))(a1);
  if (v10)
  {
    v11 = v9;
    v12 = 8 * v10;
    do
    {
      v13 = *v11++;
      re::ecs2::HierarchyStateTracking<unsigned long long>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(a1, v2, v21, v13);
      re::ecs2::HierarchyStateTracking<unsigned long long>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(a1, v2, v21, v13);
      v12 -= 8;
    }

    while (v12);
  }

  re::ecs2::HierarchyStateTracking<unsigned long long>::subscribeToEventToInvalidateEntityHierarchy<RESceneEntityDidReparentEvent>(a1, v2, v21, 0);
  re::ecs2::HierarchyStateTracking<unsigned long long>::subscribeToEventToInvalidateEntityHierarchy<RESceneEntityDidActivateEvent>(a1, v2, v21, 0);
  re::ecs2::HierarchyStateTracking<unsigned long long>::subscribeToEventToInvalidateEntityHierarchy<RESceneEntityWillDeactivateEvent>(a1, v2, v21, 0);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::add(a1 + 152, &v27, v21);
  v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v27 ^ (v27 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v27 ^ (v27 >> 30))) >> 27));
  v15 = v14 ^ (v14 >> 31);
  v16 = *(a1 + 32);
  if (v16)
  {
    v17 = v15 % v16;
    v18 = *(*(a1 + 16) + 4 * (v15 % v16));
    if (v18 != 0x7FFFFFFF)
    {
      v19 = *(a1 + 24);
      if (*(v19 + 24 * v18 + 16) == v27)
      {
        goto LABEL_16;
      }

      while (1)
      {
        LODWORD(v18) = *(v19 + 24 * v18 + 8) & 0x7FFFFFFF;
        if (v18 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v19 + 24 * v18 + 16) == v27)
        {
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    LODWORD(v17) = 0;
  }

  re::HashSetBase<re::ecs2::Scene const*,re::ecs2::Scene const*,re::internal::ValueAsKey<re::ecs2::Scene const*>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::addAsCopy(a1 + 8, v17, v15, &v27, &v27);
  ++*(a1 + 48);
LABEL_16:
  re::BucketArray<RESubscriptionHandle,8ul>::deinit(v21);
  result = v21[0];
  if (v21[0])
  {
    if ((v22 & 1) == 0)
    {
      return (*(*v21[0] + 40))();
    }
  }

  return result;
}

uint64_t re::ecs2::HierarchyStateTracking<unsigned long long>::unregisterScene(uint64_t a1, uint64_t a2)
{
  v13 = a2;
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 8, &v13);
  v3 = *(v13 + 104);
  v4 = *(v3 + 344);
  if (v4)
  {
    v5 = *(v3 + 360);
    v6 = 8 * v4;
    do
    {
      if (*(*v5 + 304))
      {
        (*(*a1 + 40))(a1);
      }

      v5 += 8;
      v6 -= 8;
    }

    while (v6);
  }

  result = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(a1 + 152, &v13);
  if (result)
  {
    v8 = *(v13 + 288);
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

    return re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::remove(a1 + 152, &v13);
  }

  return result;
}

void re::ecs2::PortalManagerStateTracking::~PortalManagerStateTracking(re::ecs2::PortalManagerStateTracking *this)
{
  re::ecs2::PortalManagerStateTracking::~PortalManagerStateTracking(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CEA348;
  re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit(this + 720);
  re::SmallHashSet<unsigned long long,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::~SmallHashSet(this + 576);
  re::HashBrown<re::ecs2::ShadowScopeComponent const*,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::ShadowScopeComponent const*>,re::EqualTo<re::ecs2::ShadowScopeComponent const*>,void,false>::deinit(this + 512);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 58);
  re::HashBrown<re::ecs2::ShadowScopeComponent const*,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::ShadowScopeComponent const*>,re::EqualTo<re::ecs2::ShadowScopeComponent const*>,void,false>::deinit(this + 400);
  re::HashBrown<re::ecs2::ShadowScopeComponent const*,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::ShadowScopeComponent const*>,re::EqualTo<re::ecs2::ShadowScopeComponent const*>,void,false>::deinit(this + 336);
  re::FixedArray<CoreIKTransform>::deinit(this + 39);

  re::ecs2::HierarchyStateTracking<unsigned long long>::~HierarchyStateTracking(this);
}

void re::ecs2::PortalManager::~PortalManager(re::ecs2::PortalManager *this)
{
  re::ecs2::PortalManagerStateTracking::~PortalManagerStateTracking((this + 8));
}

{
  re::ecs2::PortalManagerStateTracking::~PortalManagerStateTracking((this + 8));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::ecs2::HierarchyStateTracking<unsigned long long>::~HierarchyStateTracking(uint64_t *a1)
{
  *a1 = &unk_1F5CEA488;
  v2 = a1 + 1;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 31);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 25);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(a1 + 19);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 13);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 7);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v2);
  return a1;
}

uint64_t re::HashBrown<unsigned long long,re::HashSet<re::ecs2::PortalComponent const*,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(void *a1, unint64_t a2)
{
  if (!a1[7])
  {
    return -1;
  }

  v2 = a1[2];
  if (v2 < 0x10 || !a1[3])
  {
    return -1;
  }

  v3 = v2 >> 4;
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v5 = v4 ^ (v4 >> 31);
  v6 = v5 % v3;
  v7 = vdupq_n_s8(v5 & 0x7F);
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v9 = v5 % v3;
  while (1)
  {
    v10 = *(*a1 + 16 * v9);
    v11 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v7, v10), xmmword_1E304FAD0)))), 0x3830282018100800);
    v12 = __clz(__rbit64(v11));
    if (v12 <= 0x3F)
    {
      break;
    }

LABEL_10:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v10, v8), xmmword_1E304FAD0)))), 0x3830282018100800))
    {
      return -1;
    }

    if (v9 + 1 == v3)
    {
      v9 = 0;
    }

    else
    {
      ++v9;
    }

    v14 = -1;
    if (v9 == v6)
    {
      return v14;
    }
  }

  v13 = 16 * v9;
  while (1)
  {
    v14 = v12 + v13;
    if (*(a1[1] + 56 * (v12 + v13)) == a2)
    {
      return v14;
    }

    if (v12 <= 0x3E)
    {
      v12 = __clz(__rbit64((-2 << v12) & v11));
      if (v12 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_10;
  }
}

uint64_t re::HashBrown<unsigned long long,re::HashSet<re::ecs2::PortalComponent const*,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd(uint64_t *a1, void *a2, uint64_t a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<unsigned long long,re::HashSet<re::ecs2::PortalComponent const*,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(a1, 1u);
    v7 = a1[2];
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = v9 % (v7 >> 4);
  v12 = *a1;
  v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v13 >= 0x40)
  {
    do
    {
      if (v11 + 1 == v10)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v12 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v13 > 0x3F);
  }

  v14 = v12 + 16 * v11;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = 56 * (v13 + 16 * v11);
  v17 = a1[1] + v16;
  *v17 = *a2;
  *(v17 + 8) = 0u;
  *(v17 + 40) = 0;
  *(v17 + 24) = 0u;
  *(v17 + 44) = 0x7FFFFFFFLL;
  *(v17 + 8) = *a3;
  *a3 = 0;
  v18 = *(v17 + 16);
  *(v17 + 16) = *(a3 + 8);
  *(a3 + 8) = v18;
  v19 = *(v17 + 24);
  *(v17 + 24) = *(a3 + 16);
  *(a3 + 16) = v19;
  LODWORD(v19) = *(v17 + 32);
  *(v17 + 32) = *(a3 + 24);
  *(a3 + 24) = v19;
  LODWORD(v19) = *(v17 + 36);
  *(v17 + 36) = *(a3 + 28);
  *(a3 + 28) = v19;
  LODWORD(v19) = *(v17 + 40);
  *(v17 + 40) = *(a3 + 32);
  *(a3 + 32) = v19;
  LODWORD(v19) = *(v17 + 44);
  *(v17 + 44) = *(a3 + 36);
  *(a3 + 36) = v19;
  if (v15 == 255)
  {
    v20 = -1;
  }

  else
  {
    v20 = 0;
  }

  v21.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v21.i64[1] = v20;
  *(a1 + 3) = vaddq_s64(*(a1 + 3), v21);
  v22 = a1[1];
  result = v22 + v16 + 8;
  v24 = *(v22 + v16) ^ (*(v22 + v16) >> 30);
  v25 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v24) ^ ((0xBF58476D1CE4E5B9 * v24) >> 27));
  a1[5] ^= (v25 >> 31) ^ v25;
  return result;
}

double re::HashBrown<unsigned long long,re::HashSet<re::ecs2::PortalComponent const*,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24) + a2;
  v5 = (((151 * v4) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v5 > v3)
  {
    v6 = 3 * v3;
    v7 = v6 << 6;
    v8 = (v6 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v5 > v7 >> 7)
    {
      v8 = (((151 * v4) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v4 = (v8 << 7) / 0x97;
  }

  v9 = *(a1 + 56);
  memset(v26, 0, sizeof(v26));
  re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::init(v26, v9, v4);
  v24[0] = a1;
  v10 = *(a1 + 16);
  if (v10 >= 0x10)
  {
    v11 = 0;
    v12 = *a1;
    v13 = v10 >> 4;
    while (1)
    {
      v14 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v12), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v24[1] = v14 ^ 0xFFFFLL;
      if (v14 != 0xFFFFLL)
      {
        break;
      }

      v11 -= 16;
      ++v12;
      if (!--v13)
      {
        goto LABEL_13;
      }
    }

    v15 = __clz(__rbit64(v14 ^ 0xFFFFLL));
    v16 = v15 - v11;
    v25 = v15 - v11;
    if (v15 + 1 != v11)
    {
      do
      {
        re::HashBrown<unsigned long long,re::HashSet<re::ecs2::PortalComponent const*,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd(v26, (*(v24[0] + 8) + 56 * v16), *(v24[0] + 8) + 56 * v16 + 8);
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v24);
        v16 = v25;
      }

      while (v25 != -1);
      v10 = *(a1 + 16);
    }
  }

LABEL_13:
  v17 = *(&v26[3] + 1);
  *(&v26[3] + 1) = *(a1 + 56);
  v18 = v26[0];
  v19 = v26[1];
  v26[0] = *a1;
  *&v26[1] = v10;
  v20 = v26[2];
  v21 = *(a1 + 40);
  *(a1 + 48) = *&v26[3];
  *(a1 + 56) = v17;
  *(&v26[2] + 8) = v21;
  v22 = *(a1 + 24);
  *a1 = v18;
  *(a1 + 16) = v19;
  *(a1 + 32) = v20;
  *(&v26[1] + 8) = v22;
  return re::HashBrown<re::ecs2::ShadowScopeComponent const*,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::ShadowScopeComponent const*>,re::EqualTo<re::ecs2::ShadowScopeComponent const*>,void,false>::deinit(v26);
}

uint64_t re::HashSetBase<re::ecs2::PortalComponent const*,re::ecs2::PortalComponent const*,re::internal::ValueAsKey<re::ecs2::PortalComponent const*>,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<re::ecs2::PortalComponent const*,re::ecs2::PortalComponent const*,re::internal::ValueAsKey<re::ecs2::PortalComponent const*>,re::Hash<re::ecs2::PortalComponent const*>,re::EqualTo<re::ecs2::PortalComponent const*>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v9 = *(a1 + 32);
    }

    *(a1 + 32) = v9 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  *(v10 + 24 * v8 + 8) = v11 | 0x80000000;
  *(*(a1 + 16) + 24 * v8 + 8) = *(*(a1 + 16) + 24 * v8 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 24 * v8) = a3;
  *(*(a1 + 16) + 24 * v8 + 16) = *a5;
  *(*(a1 + 8) + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}