re *re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
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
    *v10 = &unk_1F5CD5CD0;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CD5D28;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CD5D80;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CD5DD8;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
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
        *v37 = &unk_1F5CD5CD0;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CD5D28;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CD5D80;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CD5DD8;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD5CD0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD5CD0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD5D28;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD5D28;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD5D80;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD5D80;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD5DD8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD5DD8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
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

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::CharacterControllerComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 40 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 32) = a3;
  ++*(a1 + 28);
  return v7 + 40 * v5;
}

void re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
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
      re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::move(a1, v9);
      re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(v4, *(v7 + v5 + 32) % *(v4 + 24), *(v7 + v5 + 32));
        *(result + 8) = *(*(a2 + 16) + v5 + 8);
        *(result + 16) = *(*(a2 + 16) + v5 + 16);
        v2 = *(a2 + 32);
      }

      v5 += 40;
    }
  }

  return result;
}

BOOL re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v3 = a2[4];
    v4 = *(a1 + 16);
    v5 = *(v4 + 40 * v2) & 0x7FFFFFFF;
    if (v3 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v5;
      v6 = a2[3];
      v7 = v6;
    }

    else
    {
      *(v4 + 40 * v3) = *(v4 + 40 * v3) & 0x80000000 | v5;
      v6 = v2;
      v7 = v2;
    }

    v8 = *(a1 + 40);
    *(v4 + 40 * v6) = *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v7;
    *(a1 + 40) = v8 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

uint64_t re::SpatialMediaManager::SpatialMediaManager(uint64_t a1, re::StringID *a2)
{
  *a1 = &unk_1F5CD5E30;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0x7FFFFFFFLL;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0x7FFFFFFFLL;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = a2;
  *(a1 + 168) = re::ServiceLocator::serviceOrNull<re::AssetService>(a2);
  *(a1 + 176) = re::ServiceLocator::serviceOrNull<re::RenderManager>(a2);
  return a1;
}

void re::SpatialMediaManager::~SpatialMediaManager(re::SpatialMediaManager *this)
{
  v2 = *(this + 22);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 9);
    while (1)
    {
      v5 = *v4;
      v4 += 8;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 22);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  while (v3 != v2)
  {
    re::internal::destroyPersistent<re::ecs2::SpatialMediaComponentHelper>("~SpatialMediaManager", 25, *(*(this + 9) + 32 * v3 + 16));
    v6 = *(this + 22);
    if (v6 <= v3 + 1)
    {
      v6 = v3 + 1;
    }

    while (v6 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(this + 9) + 32 * v3) & 0x80000000) != 0)
      {
        goto LABEL_15;
      }
    }

    LODWORD(v3) = v6;
LABEL_15:
    ;
  }

  re::HashTable<re::ecs2::Entity *,re::ecs2::SpatialMediaComponentHelper *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(this + 56);
  re::BucketArray<re::SharedPtr<re::UnlitParameterTable>,8ul>::deinit(this + 104);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 104);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 7);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 1);
}

{
  re::SpatialMediaManager::~SpatialMediaManager(this);

  JUMPOUT(0x1E6906520);
}

re *re::internal::destroyPersistent<re::ecs2::SpatialMediaComponentHelper>(re *result, uint64_t a2, id **a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::ecs2::SpatialMediaComponentHelper::~SpatialMediaComponentHelper(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void re::HashTable<re::ecs2::Entity *,re::ecs2::SpatialMediaComponentHelper *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_67, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 8;
        --v3;
      }

      while (v3);
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

uint64_t re::SpatialMediaManager::registerScene(re::SpatialMediaManager *this, re::EventBus **a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v44 = a2;
  v2 = a2[36];
  if (!v2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) An event bus is expected for this system to track spatial media component changes.", "eventBus", "registerScene", 33);
    _os_crash("assertion failure: (eventBus) An event bus is expected for this system to track spatial media component changes.");
    __break(1u);
  }

  v38[0] = 0;
  v38[1] = 0;
  v39 = 1;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v43 = 0;
  v5 = re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v58 = re::globalAllocators(v4)[2];
  v6 = (*(*v58 + 32))(v58, 32, 0);
  *v6 = &unk_1F5CD5E88;
  v6[1] = this;
  v6[2] = re::SpatialMediaManager::didAddSpatialMediaComponent;
  v6[3] = 0;
  v59 = v6;
  v7 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v2, v57, v5, 0);
  v9 = v8;
  v10 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v38);
  *v10 = v7;
  v10[1] = v9;
  v11 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v57);
  v55 = re::globalAllocators(v11)[2];
  v12 = (*(*v55 + 32))(v55, 32, 0);
  *v12 = &unk_1F5CD5EE0;
  v12[1] = this;
  v12[2] = re::SpatialMediaManager::didChangeSpatialMediaComponent;
  v12[3] = 0;
  v56 = v12;
  v13 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v2, v54, v5, 0);
  v15 = v14;
  v16 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v38);
  *v16 = v13;
  v16[1] = v15;
  v17 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v54);
  v52 = re::globalAllocators(v17)[2];
  v18 = (*(*v52 + 32))(v52, 32, 0);
  *v18 = &unk_1F5CD5F38;
  v18[1] = this;
  v18[2] = re::SpatialMediaManager::willRemoveSpatialMediaComponent;
  v18[3] = 0;
  v53 = v18;
  v19 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v2, v51, v5, 0);
  v21 = v20;
  v22 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v38);
  *v22 = v19;
  v22[1] = v21;
  v23 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v51);
  v24 = re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v25 = re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v49 = re::globalAllocators(v23)[2];
  v26 = (*(*v49 + 32))(v49, 32, 0);
  *v26 = &unk_1F5CD5EE0;
  v26[1] = this;
  v26[2] = re::SpatialMediaManager::didChangeImagePresentationComponent;
  v26[3] = 0;
  v50 = v26;
  v27 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v2, v48, v24, 0);
  v29 = v28;
  v30 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v38);
  *v30 = v27;
  v30[1] = v29;
  v31 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v48);
  v46 = re::globalAllocators(v31)[2];
  v32 = (*(*v46 + 32))(v46, 32, 0);
  *v32 = &unk_1F5CD5EE0;
  v32[1] = this;
  v32[2] = re::SpatialMediaManager::didChangeVideoPlayerComponent;
  v32[3] = 0;
  v47 = v32;
  v33 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v2, v45, v25, 0);
  v35 = v34;
  v36 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v38);
  *v36 = v33;
  v36[1] = v35;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v45);
  re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(this + 8, &v44, v38);
  re::BucketArray<RESubscriptionHandle,8ul>::deinit(v38);
  result = v38[0];
  if (v38[0])
  {
    if ((v39 & 1) == 0)
    {
      return (*(*v38[0] + 40))();
    }
  }

  return result;
}

uint64_t re::SpatialMediaManager::didAddSpatialMediaComponent(re::SpatialMediaManager *a1, unint64_t a2)
{
  v9 = a2;
  if (!re::SpatialMediaManager::getSpatialMediaComponentHelper(a1, a2))
  {
    v4 = re::globalAllocators(0);
    v5 = (*(*v4[2] + 32))(v4[2], 8, 8);
    re::ecs2::SpatialMediaComponentHelper::SpatialMediaComponentHelper(v5);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1 + 56, &v9, v6 ^ (v6 >> 31), &v10);
    if (HIDWORD(v11) == 0x7FFFFFFF)
    {
      v7 = re::HashTable<re::ecs2::Entity *,re::ecs2::SpatialMediaComponentHelper *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::allocEntry(a1 + 7, v11, v10);
      *(v7 + 8) = v9;
      *(v7 + 16) = v5;
      ++*(a1 + 24);
    }
  }

  return 0;
}

uint64_t re::SpatialMediaManager::willRemoveSpatialMediaComponent(uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (re::SpatialMediaManager::getSpatialMediaComponentHelper(a1, a2))
  {
    if (a2)
    {
      v4 = (a2 + 8);
    }

    v5 = *(a1 + 144);
    v6 = *(a1 + 112);
    if (v5 + 1 > 8 * v6)
    {
      re::BucketArray<re::TimelineGroupBuilder *,8ul>::setBucketsCapacity((a1 + 104), (v5 + 8) >> 3);
      v6 = *(a1 + 112);
    }

    if (v6 <= v5 >> 3)
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

      v17 = 858;
      v18 = 2048;
      v19 = v5 >> 3;
      v20 = 2048;
      v21 = v6;
      _os_log_send_and_compose_impl(v11, &v13, v22, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
      _os_crash_msg();
      __break(1u);
    }

    if (*(a1 + 120))
    {
      v7 = a1 + 128;
    }

    else
    {
      v7 = *(a1 + 136);
    }

    v8 = *(v7 + 8 * (v5 >> 3));
    ++*(a1 + 144);
    ++*(a1 + 152);
    *(v8 + 8 * (v5 & 7)) = a2;
  }

  return 0;
}

uint64_t re::SpatialMediaManager::unregisterScene(re::SpatialMediaManager *this, re::ecs2::Scene *a2)
{
  v9 = a2;
  result = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 8, &v9);
  if (result)
  {
    v4 = *(v9 + 36);
    if (v4)
    {
      v5 = result;
      v6 = *(result + 40);
      if (v6)
      {
        for (i = 0; i != v6; ++i)
        {
          v8 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](v5, i);
          re::EventBus::unsubscribe(v4, *v8, v8[1]);
        }
      }
    }

    return re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::remove(this + 8, &v9);
  }

  return result;
}

uint64_t re::SpatialMediaManager::getSpatialMediaComponentHelper(uint64_t a1, unint64_t a2)
{
  v9 = a2;
  v4 = *(a1 + 56);
  v3 = a1 + 56;
  if (!v4)
  {
    return 0;
  }

  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v6 = *(*(a1 + 64) + 4 * ((v5 ^ (v5 >> 31)) % *(a1 + 80)));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  v7 = *(a1 + 72);
  while (*(v7 + 32 * v6 + 8) != a2)
  {
    v6 = *(v7 + 32 * v6) & 0x7FFFFFFF;
    if (v6 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v3, &v9);
}

void re::SpatialMediaManager::updateRemovedComponentEntities(re::SpatialMediaManager *this)
{
  v2 = *(this + 18);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<unsigned long,8ul>::operator[](this + 104, i);
      v5 = *v4;
      v6 = *(*v4 + 49);
      if (!*(*v4 + 49))
      {
        goto LABEL_9;
      }

      v7 = (re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 16);
      v8 = *(v5 + 104);
      v9 = vld1q_dup_s16(v7);
      v10 = 1;
      while (1)
      {
        v11 = vandq_s8(vceqq_s16(v9, *v8), xmmword_1E306AC00);
        v11.i16[0] = vmaxvq_u16(v11);
        if (v11.i32[0])
        {
          break;
        }

        v10 -= 8;
        ++v8;
        if (!--v6)
        {
          goto LABEL_9;
        }
      }

      if (v11.u16[0] - v10 >= *(v5 + 96))
      {
LABEL_9:
        SpatialMediaComponentHelper = re::SpatialMediaManager::getSpatialMediaComponentHelper(this, v5);
        if (SpatialMediaComponentHelper)
        {
          re::ecs2::SpatialMediaComponentHelper::impl::removeSpatialMediaMaterialParameters(SpatialMediaComponentHelper, *v4, *(this + 22));
          re::SpatialMediaManager::removeSpatialMediaComponentHelper(this, *v4);
        }
      }
    }
  }

  re::BucketArray<re::SharedPtr<re::ecs2::Entity>,8ul>::clear(this + 104);
}

id **re::SpatialMediaManager::removeSpatialMediaComponentHelper(re::SpatialMediaManager *this, re::ecs2::Entity *a2)
{
  v6 = a2;
  result = re::SpatialMediaManager::getSpatialMediaComponentHelper(this, a2);
  if (result)
  {
    v4 = result;
    v5 = re::globalAllocators(result)[2];
    re::ecs2::SpatialMediaComponentHelper::~SpatialMediaComponentHelper(v4);
    (*(*v5 + 40))(v5, v4);
    return re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityVisualProxyScopeData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 56, &v6);
  }

  return result;
}

void re::BucketArray<re::SharedPtr<re::ecs2::Entity>,8ul>::clear(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<unsigned long,8ul>::operator[](a1, i);
      if (*v4)
      {
        v5 = v4;

        *v5 = 0;
      }
    }
  }

  *(a1 + 40) = 0;
  ++*(a1 + 48);
}

uint64_t re::internal::CallableMemFn<re::SpatialMediaManager,REEventHandlerResult (re::SpatialMediaManager::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::SpatialMediaManager,REEventHandlerResult (re::SpatialMediaManager::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD5E88;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::SpatialMediaManager,REEventHandlerResult (re::SpatialMediaManager::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD5E88;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::SpatialMediaManager,REEventHandlerResult (re::SpatialMediaManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::SpatialMediaManager,REEventHandlerResult (re::SpatialMediaManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD5EE0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::SpatialMediaManager,REEventHandlerResult (re::SpatialMediaManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD5EE0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::SpatialMediaManager,REEventHandlerResult (re::SpatialMediaManager::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::SpatialMediaManager,REEventHandlerResult (re::SpatialMediaManager::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD5F38;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::SpatialMediaManager,REEventHandlerResult (re::SpatialMediaManager::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD5F38;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::HashTable<re::ecs2::Entity *,re::ecs2::SpatialMediaComponentHelper *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 9);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    v6 = v5;
    if (v5 == *(a1 + 6))
    {
      v7 = *(a1 + 7);
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
          re::HashTable<re::ecs2::Entity *,re::ecs2::SpatialMediaComponentHelper *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = a1[2];
          *&v26[16] = v13;
          a1[2] = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 3);
          v14 = *&v26[32];
          *(a1 + 3) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = (v13 + 16);
            do
            {
              if ((*(v18 - 2) & 0x80000000) != 0)
              {
                v19 = re::HashTable<re::ecs2::Entity *,re::ecs2::SpatialMediaComponentHelper *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::allocEntry(a1, v18[1] % *(a1 + 6), v18[1]);
                *(v19 + 8) = *(v18 - 1);
                *(v19 + 16) = *v18;
              }

              ++v17;
              v18 += 4;
            }

            while (v17 < v16);
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v26);
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

      a2 = a3 % *(a1 + 6);
      v6 = *(a1 + 8);
    }

    *(a1 + 8) = v6 + 1;
    v20 = a1[2];
    v21 = *(v20 + 32 * v5);
  }

  else
  {
    v20 = a1[2];
    v21 = *(v20 + 32 * v5);
    *(a1 + 9) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 32 * v5;
  *v23 = v21 | 0x80000000;
  v24 = a1[1];
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v23 + 24) = a3;
  *(v24 + 4 * a2) = v5;
  ++*(a1 + 7);
  return v20 + 32 * v5;
}

void re::HashTable<re::ecs2::Entity *,re::ecs2::SpatialMediaComponentHelper *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_67, 4 * v10);
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

void *re::ecs2::allocInfo_ProbeResource(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE19FD10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19FD10))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19FDB0, "ProbeResource");
    __cxa_guard_release(&qword_1EE19FD10);
  }

  return &unk_1EE19FDB0;
}

void re::ecs2::initInfo_ProbeResource(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0x27F54796EFB4DF7CLL;
  v20[1] = "ProbeResource";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE19FD18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19FD18))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_AssetHandle(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "ibl";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE19FD58 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_float(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "intensityExponent";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x1800000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE19FD60 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_float(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "relativeWeight";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1C00000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE19FD68 = v18;
    __cxa_guard_release(&qword_1EE19FD18);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE19FD58;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ProbeResource>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ProbeResource>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ProbeResource>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ProbeResource>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void re::internal::defaultConstruct<re::ecs2::ProbeResource>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = 0x3F80000000000000;
}

void *re::internal::defaultConstructV2<re::ecs2::ProbeResource>(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0x3F80000000000000;
  return result;
}

void *re::ecs2::allocInfo_VirtualEnvironmentProbeComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE19FD28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19FD28))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19FE40, "VirtualEnvironmentProbeComponent");
    __cxa_guard_release(&qword_1EE19FD28);
  }

  return &unk_1EE19FE40;
}

void re::ecs2::initInfo_VirtualEnvironmentProbeComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v18[0] = 0x52C8F478D61A66EALL;
  v18[1] = "VirtualEnvironmentProbeComponent";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE19FD30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19FD30))
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
    qword_1EE19FD48 = v14;
    v15 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::ecs2::ProbeResource>>::get(v15);
    v16 = (*(*v15 + 32))(v15, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "probeResources";
    *(v16 + 16) = &qword_1EE19FD70;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x2000000001;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE19FD50 = v16;
    __cxa_guard_release(&qword_1EE19FD30);
  }

  *(this + 2) = 0x4800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE19FD48;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VirtualEnvironmentProbeComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VirtualEnvironmentProbeComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VirtualEnvironmentProbeComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VirtualEnvironmentProbeComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs232VirtualEnvironmentProbeComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v17 = v19;
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::ProbeResource>>::get(re::ecs2 *a1)
{
  if ((atomic_load_explicit(&qword_1EE19FD40, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE19FD40);
    if (a1)
    {
      re::IntrospectionDynamicArray<re::ecs2::ProbeResource>::IntrospectionDynamicArray();
      __cxa_guard_release(&qword_1EE19FD40);
    }
  }

  if ((_MergedGlobals_158 & 1) == 0)
  {
    v1 = qword_1EE19FD20;
    if (qword_1EE19FD20 || (v1 = re::ecs2::allocInfo_ProbeResource(a1), qword_1EE19FD20 = v1, re::ecs2::initInfo_ProbeResource(v1, v2, v3, v4), (_MergedGlobals_158 & 1) == 0))
    {
      _MergedGlobals_158 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE19FD70, 0);
      qword_1EE19FD80 = 0x2800000003;
      dword_1EE19FD88 = v5;
      word_1EE19FD8C = 0;
      *&xmmword_1EE19FD90 = 0;
      *(&xmmword_1EE19FD90 + 1) = 0xFFFFFFFFLL;
      qword_1EE19FDA0 = v1;
      qword_1EE19FDA8 = 0;
      qword_1EE19FD70 = &unk_1F5CD6088;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE19FD70);
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
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ProbeResource>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ProbeResource>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ProbeResource>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ProbeResource>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ProbeResource>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ProbeResource>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ProbeResource>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ProbeResource>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE19FD90 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::internal::defaultConstruct<re::ecs2::VirtualEnvironmentProbeComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD6120;
  *(v3 + 64) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::VirtualEnvironmentProbeComponent>(uint64_t a1)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD6120;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
  *(v1 + 56) = 0;
}

void *re::ecs2::allocInfo_VirtualEnvironmentProbeSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE19FD38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19FD38))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19FED0, "VirtualEnvironmentProbeSystem");
    __cxa_guard_release(&qword_1EE19FD38);
  }

  return &unk_1EE19FED0;
}

void re::ecs2::initInfo_VirtualEnvironmentProbeSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x3FCA43CF34C55D6ELL;
  v8[1] = "VirtualEnvironmentProbeSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x24000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_VirtualEnvironmentProbeSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VirtualEnvironmentProbeSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VirtualEnvironmentProbeSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::VirtualEnvironmentProbeSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::VirtualEnvironmentProbeSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VirtualEnvironmentProbeSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VirtualEnvironmentProbeSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::internal::defaultDestruct<re::ecs2::VirtualEnvironmentProbeSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 42);
  a3[37] = &unk_1F5CD5F90;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 39);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::VirtualEnvironmentProbeSystem>(uint64_t *a1)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 42);
  a1[37] = &unk_1F5CD5F90;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 39);

  re::ecs2::System::~System(a1);
}

BOOL re::ecs2::VirtualEnvironmentProbeComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(**(*(a1 + 8) + 256) + 24))(*(*(a1 + 8) + 256));
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v20, a5, 0);
  v10 = v20;
  v11 = v21;
  v12 = v21;
  v20 = a4;
  v21 = v10;
  v22 = v11;
  if (v10 != a5 || v12 != 0xFFFFFFFFLL)
  {
    do
    {
      v14 = *(re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v20) + 16);
      (*(*v9 + 8))(v23, v9, v14);
      if ((*(v14 + 304) & 1) == 0)
      {
        goto LABEL_10;
      }

      v15 = v23[0];
      if (!v23[1])
      {
        v15 = 0;
      }

      v16 = a3 + 5;
      if ((v15 & 1) == 0)
      {
        v16 = a3 + 5;
        if (*(*(a2 + 8) + 8) != 2)
        {
LABEL_10:
          v16 = a3 + 4;
        }
      }

      v17 = v20;
      v18 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v21);
      re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v17, v18, *v16);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v21);
    }

    while (v21 != a5 || v22 != 0xFFFF || HIWORD(v22) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

BOOL re::ecs2::VirtualEnvironmentProbeComponentStateImpl::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
    do
    {
      v12 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v20);
      v13 = *(v12 + 48);
      if (!v13)
      {
        goto LABEL_14;
      }

      v14 = *(v12 + 64);
      v15 = (v14 + 32 * v13);
      v16 = 1;
      do
      {
        while (*(v14 + 1) && !re::AssetHandle::loadedAsset<re::ImageBasedLightAsset>(v14))
        {
          re::AssetHandle::loadAsync(v14);
          v16 = 0;
          v14 = (v14 + 32);
          if (v14 == v15)
          {
            goto LABEL_15;
          }
        }

        v14 = (v14 + 32);
      }

      while (v14 != v15);
      if (v16)
      {
LABEL_14:
        v17 = v20;
        v18 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v21);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v17, v18, *(a3 + 48));
      }

LABEL_15:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v21);
    }

    while (v21 != a5 || v22 != 0xFFFF || HIWORD(v22) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::AssetHandle::loadedAsset<re::ImageBasedLightAsset>(re::ImageBasedLightAsset *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  v2 = re::ImageBasedLightAsset::assetType(a1);

  return re::AssetHandle::assetWithType(a1, v2, 1);
}

BOOL re::ecs2::VirtualEnvironmentProbeComponentStateImpl::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v104 = *MEMORY[0x1E69E9840];
  v92 = *(*(*(*(a1 + 8) + 232) + 56) + 88);
  v9 = (*(**(*(a1 + 8) + 256) + 24))(*(*(a1 + 8) + 256));
  re::StackScratchAllocator::StackScratchAllocator(v91);
  v10 = (*(*v9 + 16))(v9);
  v11 = *(v10 + 124);
  if (!v11)
  {
    v11 = *(v10 + 16);
  }

  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::init(&v87, v91, (v11 + 1));
  v12 = *(*(*(a1 + 8) + 232) + 112);
  if (v12)
  {
    v74 = re::RenderFrameBox::get((v12 + 328), 0xFFFFFFFFFFFFFFFuLL);
  }

  else
  {
    v74 = 0;
  }

  v75 = *(a3 + 8);
  v85[0] = 0;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v93, a5, 0);
  v14 = v93;
  v13 = v94;
  v93 = a4;
  v94 = v14;
  LODWORD(v95) = v13;
  if (v14 != a5 || v13 != 0xFFFFFFFFLL)
  {
    do
    {
      v15 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v93);
      v16 = v15[2];
      (*(*v9 + 8))(v76, v9, v16);
      if (LOBYTE(v76[0]))
      {
        v17 = v76[1];
      }

      else
      {
        v17 = 0;
      }

      v84 = v17;
      if ((*(*v9 + 24))(v9, v17) == 2)
      {
        re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(&v82, v75, 0, v74);
        LOBYTE(v76[0]) = 1;
        re::StringID::StringID(&v76[1], &v82);
        v18 = re::Optional<re::StringID>::operator=(v85, v76);
        if (LOBYTE(v76[0]) == 1)
        {
          if (v76[1])
          {
            if (v76[1])
            {
            }
          }

          v76[1] = 0;
          v77 = &str_67;
        }

        if (*&v82.var0)
        {
          if (*&v82.var0)
          {
          }
        }
      }

      v19 = 0;
      do
      {
        v20 = v19;
        v16 = *(v16 + 32);
        if (!v16)
        {
          break;
        }

        ++v19;
      }

      while ((*(v16 + 304) & 0x80) == 0);
      v21 = re::HashBrown<unsigned long long,re::ecs2::ProbeHierarchyDepth,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(&v87, v17);
      if (v21 == -1 || *(*(&v87 + 1) + 24 * v21 + 16) > v20)
      {
        v76[0] = v15;
        LODWORD(v76[1]) = v20;
        v22 = re::HashBrown<unsigned long long,re::ecs2::ProbeHierarchyDepth,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(&v87, v17);
        if (v22 == -1)
        {
          re::HashBrown<unsigned long long,re::ecs2::ProbeHierarchyDepth,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd(&v87, &v84, v76);
        }

        else
        {
          *(*(&v87 + 1) + 24 * v22 + 8) = *v76;
        }
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v94);
    }

    while (v94 != a5 || v95 != 0xFFFF || WORD1(v95) != 0xFFFF);
  }

  v23 = (*(**(v75 + 7) + 32))(*(v75 + 7));
  v24 = re::ServiceLocator::service<re::TransformService>(v23);
  v73 = v24;
  *&v82.var0 = &v87;
  if (v88 >= 0x10)
  {
    v25 = 0;
    v26 = v87;
    v27 = v88 >> 4;
    while (1)
    {
      v28 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v26), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v82.var1 = (v28 ^ 0xFFFFLL);
      if (v28 != 0xFFFFLL)
      {
        break;
      }

      v25 -= 16;
      ++v26;
      if (!--v27)
      {
        goto LABEL_81;
      }
    }

    v29 = __clz(__rbit64(v28 ^ 0xFFFFLL));
    v30 = v29 - v25;
    v83 = v29 - v25;
    if (v29 + 1 != v25)
    {
      do
      {
        v31 = *(*&v82.var0 + 8) + 24 * v30;
        v33 = *v31;
        v32 = *(v31 + 8);
        v34 = v32[2];
        v97 = 0;
        v94 = 0;
        v95 = 0;
        v93 = 0;
        v96 = 0;
        v98 = xmmword_1E3047670;
        v99 = xmmword_1E3047680;
        v100 = xmmword_1E30476A0;
        v101[0] = 0;
        v35 = v32[6];
        v36 = re::DynamicArray<re::VirtualEnvironmentProbeSource>::setCapacity(&v93, v35);
        ++v96;
        v37 = v32[6];
        if (v37)
        {
          v38 = v32[8];
          v39 = 32 * v37;
          v40 = 0.0;
          do
          {
            v41 = *(v38 + 28);
            if (v41 > 0.0)
            {
              v76[0] = 0;
              v76[1] = 0;
              v77 = 0;
              v42 = re::AssetHandle::loadedAsset<re::ImageBasedLightAsset>(v38);
              if (v42)
              {
                v43 = v42;
                re::AssetHandle::AssetHandle(v81, (v42 + 24));
                re::ecs2::getTextureCubeWithFallback(v81, &v92);
                NS::SharedPtr<MTL::Buffer>::operator=(&v76[1], v44);
                re::AssetHandle::~AssetHandle(v81);
                re::AssetHandle::AssetHandle(v80, (v43 + 72));
                re::ecs2::getTextureCubeWithFallback(v80, &v92);
                NS::SharedPtr<MTL::Buffer>::operator=(v76, v45);
                re::AssetHandle::~AssetHandle(v80);
              }

              else
              {
                NS::SharedPtr<MTL::Buffer>::operator=(&v76[1], &v92);
                v46 = NS::SharedPtr<MTL::Buffer>::operator=(v76, &v92);
              }

              v77 = *(v38 + 24);
              v47 = v95;
              if (v95 >= v94)
              {
                v48 = v95 + 1;
                if (v94 < v95 + 1)
                {
                  if (v93)
                  {
                    v49 = 8;
                    if (v94)
                    {
                      v49 = 2 * v94;
                    }

                    if (v49 <= v48)
                    {
                      v50 = v95 + 1;
                    }

                    else
                    {
                      v50 = v49;
                    }

                    re::DynamicArray<re::VirtualEnvironmentProbeSource>::setCapacity(&v93, v50);
                  }

                  else
                  {
                    re::DynamicArray<re::VirtualEnvironmentProbeSource>::setCapacity(&v93, v48);
                    ++v96;
                  }
                }

                v47 = v95;
              }

              v51 = v97 + 24 * v47;
              *v51 = v76[0];
              v76[0] = 0;
              *(v51 + 8) = v76[1];
              v76[1] = 0;
              *(v51 + 16) = v77;
              ++v95;
              ++v96;
              if (v76[1])
              {

                v76[1] = 0;
              }

              v36 = v76[0];
              if (v76[0])
              {
              }

              v40 = v40 + v41;
            }

            v38 += 32;
            v39 -= 32;
          }

          while (v39);
        }

        else
        {
          v40 = 0.0;
        }

        if (v85[0])
        {
          v36 = (*(*v9 + 24))(v9, v33);
          if (v36 == 1)
          {
            LOBYTE(v76[0]) = 1;
            re::StringID::StringID(&v76[1], &v86);
            v36 = re::Optional<re::StringID>::operator=(v101, v76);
            if (LOBYTE(v76[0]) == 1 && (v76[1] & 1) != 0)
            {
              if (v76[1])
              {
              }
            }
          }
        }

        if (v40 > 0.0)
        {
          if (v95)
          {
            v52 = 24 * v95;
            v53 = (v97 + 20);
            do
            {
              *v53 = *v53 / v40;
              v53 += 6;
              v52 -= 24;
            }

            while (v52);
          }

          re::TransformService::worldTransform(v73, v34, 0, v76);
          v54 = *&v77;
          v55 = v78;
          v56 = v54 + v54;
          v57 = v55 + v55;
          v58 = v54 * (v54 + v54);
          v59 = *(&v77 + 1) * (*(&v77 + 1) + *(&v77 + 1));
          v60 = v55 * (v55 + v55);
          v61 = v56 * *(&v77 + 1);
          v62 = v56 * v78;
          v63 = (*(&v77 + 1) + *(&v77 + 1)) * v78;
          v64 = v56 * v79;
          v65 = (*(&v77 + 1) + *(&v77 + 1)) * v79;
          v66 = v57 * v79;
          *&v67 = 1.0 - (v59 + v60);
          *&v68 = v61 + v66;
          *&v69 = v62 - v65;
          *(&v67 + 1) = v61 - v66;
          *(&v68 + 1) = 1.0 - (v58 + v60);
          *(&v69 + 1) = v63 + v64;
          *(&v98 + 2) = v62 + v65;
          *&v98 = v67;
          *(&v99 + 2) = v63 - v64;
          *&v99 = v68;
          *(&v100 + 2) = 1.0 - (v58 + v59);
          *&v100 = v69;
          re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(v76, v75, v33, v74);
          v84 = v76[0] >> 1;
          v70 = **(re::RenderFrameData::stream((v74 + 33), &v84) + 48);
          v36 = (*(v70 + 1224))();
          if (v76[0])
          {
            if (v76[0])
            {
            }
          }
        }

        if (v101[0] == 1)
        {
          if (v102)
          {
            if (v102)
            {
            }
          }

          v102 = 0;
          v103 = &str_67;
        }

        re::DynamicArray<re::VirtualEnvironmentProbeSource>::deinit(&v93);
        v24 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v82);
        v30 = v83;
      }

      while (v83 != -1);
    }
  }

LABEL_81:
  v71 = *(a5 + 40);
  if (v85[0] == 1 && (*&v86.var0 & 1) != 0)
  {
    if (*&v86.var0)
    {
    }
  }

  re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit(&v87);
  re::StackScratchAllocator::~StackScratchAllocator(v91);
  if (v92)
  {
  }

  return v71 != 0;
}

void re::ecs2::getTextureCubeWithFallback(re::TextureAsset *a1, uint64_t a2)
{
  v2 = re::AssetHandle::loadedAsset<re::TextureAsset>(a1);
  if (v2)
  {
    v3 = v2;
    if (*(v2 + 120) || (v4 = *(v2 + 112)) != 0 && [v4 textureType] == 5 && *(v3 + 120))
    {
      v5 = std::__throw_bad_variant_access[abi:nn200100]();
      re::ecs2::VirtualEnvironmentProbeSystem::update(v5, v6, v7);
    }
  }
}

void re::ecs2::VirtualEnvironmentProbeSystem::update(void *a1, uint64_t a2, uint64_t a3)
{
  v31[0] = a2;
  v31[1] = a3;
  v5 = a1[28];
  if (!v5 || (*(v5 + 432) & 0x10) != 0)
  {
    re::StackScratchAllocator::StackScratchAllocator(v43);
    v39 = 1;
    v40 = 0;
    v41 = 0;
    v37 = v43;
    v38 = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v37, 0);
    v39 += 2;
    v6 = a1[68];
    if ((v6 & 0x3F) != 0)
    {
      v7 = (v6 >> 6) + 1;
    }

    else
    {
      v7 = v6 >> 6;
    }

    v42 = a1[68];
    v32[0] = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v37, v7, v32);
    v8 = *(a3 + 200);
    if (v8)
    {
      v9 = *(a3 + 216);
      v10 = 8 * v8;
      do
      {
        v11 = *v9++;
        v32[0] = v11;
        v12 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 49, v32);
        re::DynamicBitset<unsigned long long,64ul>::setBit(&v37, *(a1[50] + 16 * v12 + 8));
        v10 -= 8;
      }

      while (v10);
    }

    re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v37, (a1 + 63));
    v33 = 1;
    v34 = 0;
    v35 = 0;
    v32[0] = v43;
    v32[1] = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v32, 0);
    v33 += 2;
    v13 = a1[68];
    if ((v13 & 0x3F) != 0)
    {
      v14 = (v13 >> 6) + 1;
    }

    else
    {
      v14 = v13 >> 6;
    }

    v36 = a1[68];
    v44 = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(v32, v14, &v44);
    re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 63), &v37);
    v15 = v41;
    if (v39)
    {
      v15 = &v40;
    }

    v16 = v38;
    if ((v38 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v17 = 0;
      while (1)
      {
        v19 = *v15++;
        v18 = v19;
        if (v19)
        {
          break;
        }

        v17 -= 64;
        if (!--v16)
        {
          goto LABEL_32;
        }
      }

      v20 = __clz(__rbit64(v18));
      if (v20 + 1 != v17)
      {
        FirstBitSet = v20 - v17;
        do
        {
          v22 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 42), FirstBitSet);
          v23 = *(*v22 + 224);
          v24 = v22[3];
          v25 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v22[2] + 8, v24);
          if (*(v25 + 40))
          {
            v26 = (*(*v23 + 24))(v23, v31, v22, v24, v25, 0);
          }

          else
          {
            v26 = 0;
          }

          v27 = v22[5];
          v28 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v22[2] + 8, v27);
          if (*(v28 + 40))
          {
            v26 |= (*(*v23 + 32))(v23, v31, v22, v27, v28, 0);
          }

          v29 = v22[6];
          v30 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v22[2] + 8, v29);
          if (*(v30 + 40))
          {
            if (((v26 | (*(*v23 + 40))(v23, v31, v22, v29, v30, 0)) & 1) == 0)
            {
              goto LABEL_30;
            }
          }

          else if (!v26)
          {
LABEL_30:
            re::DynamicBitset<unsigned long long,64ul>::clearBit(v32, FirstBitSet);
            goto LABEL_31;
          }

          re::DynamicBitset<unsigned long long,64ul>::setBit(v32, FirstBitSet);
LABEL_31:
          FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v37, FirstBitSet + 1);
        }

        while (FirstBitSet != -1);
      }
    }

LABEL_32:
    re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 63), v32);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 42));
    if (v32[0] && (v33 & 1) == 0)
    {
      (*(*v32[0] + 40))(v32[0], v35);
    }

    if (v37)
    {
      if ((v39 & 1) == 0)
      {
        (*(*v37 + 40))(v37, v41);
      }
    }

    re::StackScratchAllocator::~StackScratchAllocator(v43);
  }
}

unint64_t re::ecs2::VirtualEnvironmentProbeSystem::willAddSceneToECSService(re::ecs2::VirtualEnvironmentProbeSystem *this, re::ecs2::Scene *a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v52 = a2;
  v4 = *(this + 58);
  v5 = *(this + 118);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (this + 480);
    }

    else
    {
      v6 = *(this + 61);
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
    v7 = (this + 480);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(this + 61);
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
    *&v44 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 456, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 336, v44);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::init(v12, this + 336, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 49, &v52, &v44);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 456, v44);
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
  v14 = *(this + 47);
  *&v51 = 0;
  v15 = *(this + 43);
  DWORD2(v51) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>,4ul>::setBucketsCapacity(this + 42, (v14 + 4) >> 2);
    v15 = *(this + 43);
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

  if (*(this + 352))
  {
    v16 = this + 360;
  }

  else
  {
    v16 = *(this + 46);
  }

  v17 = *&v16[8 * (v14 >> 2)];
  ++*(this + 47);
  ++*(this + 96);
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
  v23 = *(this + 47);
  if (!v23)
  {
    goto LABEL_56;
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 336, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::init(v24, this + 336, v52);
  *&v62[0] = *(this + 47) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 49, &v52, v62);
  v25 = *(this + 47);
  v26 = *(this + 62);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(this + 62) = v25;
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 456), v27, &v44);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(this + 62) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(this + 472))
    {
      v30 = this + 480;
    }

    else
    {
      v30 = *(this + 61);
    }

    *&v30[8 * *(this + 58) - 8] &= v28;
  }

  v31 = *(this + 47);
  v32 = *(this + 68);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(this + 68) = v31;
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 504), v33, &v44);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(this + 68) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(this + 520))
    {
      v36 = this + 528;
    }

    else
    {
      v36 = *(this + 67);
    }

    *&v36[8 * *(this + 64) - 8] &= v34;
  }

  v13 = *&v62[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(this + 504, v13);
  if (*(this + 568) == 1)
  {
    v38 = *(this + 69);
    v39 = *(v52 + 47);
    LOWORD(v44) = 257;
    DWORD1(v44) = 1023969417;
    BYTE8(v44) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v44);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 336);
  }

  return result;
}

uint64_t re::ecs2::VirtualEnvironmentProbeSystem::willRemoveSceneFromECSService(re::ecs2::VirtualEnvironmentProbeSystem *this, re::ecs2::Scene *a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 49, &v15);
  if (result != -1)
  {
    v4 = *(this + 50) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 456, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 504, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 336, *(v4 + 8));
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

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 392, &v15);
  }

  return result;
}

re::ecs2::Component *re::ecs2::BasicComponentStateImpl<re::ecs2::VirtualEnvironmentProbeComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::VirtualEnvironmentProbeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

void re::ecs2::VirtualEnvironmentProbeSystem::~VirtualEnvironmentProbeSystem(re::ecs2::VirtualEnvironmentProbeSystem *this)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 42);
  *(this + 37) = &unk_1F5CD5F90;
  re::FixedArray<CoreIKTransform>::deinit(this + 39);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 42);
  *(this + 37) = &unk_1F5CD5F90;
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::DynamicArray<re::VirtualEnvironmentProbeSource>::deinit(uint64_t a1)
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
        v5 = 24 * v4;
        v6 = (v3 + 8);
        do
        {
          if (*v6)
          {

            *v6 = 0;
          }

          v7 = *(v6 - 1);
          if (v7)
          {

            *(v6 - 1) = 0;
          }

          v6 += 3;
          v5 -= 24;
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

uint64_t re::IntrospectionDynamicArray<re::ecs2::ProbeResource>::IntrospectionDynamicArray()
{
  ArcSharedObject::ArcSharedObject(&qword_1EE19FD70, 0);
  *(&qword_1EE19FD80 + 6) = 0;
  qword_1EE19FD80 = 0;
  *&xmmword_1EE19FD90 = 0;
  *(&xmmword_1EE19FD90 + 1) = 0xFFFFFFFFLL;
  qword_1EE19FD70 = &unk_1F5CADA48;
  qword_1EE19FDA8 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(&qword_1EE19FDA0);
  qword_1EE19FD70 = &unk_1F5CD6088;
  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::ProbeResource>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::ProbeResource>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::ProbeResource>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::ProbeResource>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::ecs2::ProbeResource>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::ecs2::ProbeResource>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::ecs2::ProbeResource>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::ecs2::ProbeResource>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::ecs2::ProbeResource>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::ProbeResource>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10 = 0u;
  v11 = 0u;
  HIDWORD(v11) = 1065353216;
  re::DynamicArray<re::ecs2::ProbeResource>::add(this, &v10);
  re::AssetHandle::~AssetHandle(&v10);
  v8 = (*(this + 4) + 32 * *(this + 2) - 32);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<re::ecs2::ProbeResource>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 32 * a3;
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

  return *(a2 + 32) + 32 * a3;
}

uint64_t re::DynamicArray<re::ecs2::ProbeResource>::deinit(uint64_t a1)
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
        v5 = 32 * v4;
        do
        {
          re::AssetHandle::~AssetHandle(v3);
          v3 = (v3 + 32);
          v5 -= 32;
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

void *re::DynamicArray<re::ecs2::ProbeResource>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::ProbeResource>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 59)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 32, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v14, v16);
          __break(1u);
        }

        else
        {
          v2 = 32 * a2;
          result = (*(*result + 32))(result, 32 * a2, 8);
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
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v15, v17);
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
        v10 = 32 * v9;
        v11 = v7;
        do
        {
          *v11 = 0;
          v11[1] = 0;
          v11[2] = 0;
          v11[1] = *(v8 + 1);
          *(v8 + 1) = 0;
          v12 = *v11;
          *v11 = 0;
          *v11 = *v8;
          *v8 = v12;
          v13 = v11[2];
          v11[2] = *(v8 + 2);
          *(v8 + 2) = v13;
          v11[3] = *(v8 + 3);
          re::AssetHandle::~AssetHandle(v8);
          v8 = (v8 + 32);
          v11 += 4;
          v10 -= 32;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void re::DynamicArray<re::ecs2::ProbeResource>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 32 * a2;
    v9 = a2;
    do
    {
      re::AssetHandle::~AssetHandle((*(a1 + 32) + v8));
      ++v9;
      v8 += 32;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::ecs2::ProbeResource>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 32 * v4;
      do
      {
        v7 = (*(a1 + 32) + v6);
        *v7 = 0;
        v7[1] = 0;
        v7[2] = 0;
        v7[3] = 0x3F80000000000000;
        v6 += 32;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

_anonymous_namespace_ *re::DynamicArray<re::ecs2::ProbeResource>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::ecs2::ProbeResource>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = (*(v3 + 4) + 32 * v4);
  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
  v5[1] = a2[1];
  a2[1] = 0;
  v6 = *v5;
  *v5 = 0;
  *v5 = *a2;
  *a2 = v6;
  v7 = v5[2];
  v5[2] = a2[2];
  a2[2] = v7;
  v5[3] = a2[3];
  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::ecs2::ProbeResource>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::ecs2::ProbeResource>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ecs2::ProbeResource>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ProbeResource>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::ecs2::ProbeResource>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ProbeResource>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::ecs2::ProbeResource>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::ecs2::ProbeResource>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::ecs2::ProbeResource>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::ecs2::ProbeResource>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 32 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 32;
        v11 -= 32;
      }

      while (v11);
    }
  }
}

re::AssetHandle *re::DynamicArray<re::ecs2::ProbeResource>::clear(re::AssetHandle *result)
{
  v1 = result;
  v2 = *(result + 2);
  *(result + 2) = 0;
  if (v2)
  {
    result = *(result + 4);
    v3 = 32 * v2;
    do
    {
      re::AssetHandle::~AssetHandle(result);
      result = (v4 + 32);
      v3 -= 32;
    }

    while (v3);
  }

  ++*(v1 + 6);
  return result;
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ProbeResource>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 32 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ProbeResource>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ProbeResource>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 32 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ProbeResource>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::ecs2::VirtualEnvironmentProbeComponent::~VirtualEnvironmentProbeComponent(re::ecs2::VirtualEnvironmentProbeComponent *this)
{
  *this = &unk_1F5CD6120;
  re::DynamicArray<re::ecs2::ProbeResource>::deinit(this + 32);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CD6120;
  re::DynamicArray<re::ecs2::ProbeResource>::deinit(this + 32);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs232VirtualEnvironmentProbeComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 12;
    *(a2 + 8) = 0;
  }
}

re::ecs2::VirtualEnvironmentProbeSystem *re::ecs2::VirtualEnvironmentProbeSystem::VirtualEnvironmentProbeSystem(re::ecs2::VirtualEnvironmentProbeSystem *this)
{
  v2 = re::ecs2::System::System(this, 1, 1);
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *v2 = &unk_1F5CD5FF8;
  v3 = v2 + 296;
  *(v2 + 288) = 0;
  *(v2 + 296) = &unk_1F5CD5F90;
  *(v2 + 304) = v2;
  *(v2 + 312) = 0u;
  *(v2 + 328) = 0u;
  *(v2 + 344) = 0;
  *(v2 + 352) = 1;
  *(v2 + 368) = 0;
  *(v2 + 376) = 0;
  *(v2 + 360) = 0;
  *(v2 + 384) = 0;
  v4 = (v2 + 392);
  *(v2 + 392) = 0u;
  *(v2 + 408) = 0u;
  *(v2 + 424) = 0u;
  *(v2 + 440) = 0u;
  *(v2 + 456) = 0u;
  *(v2 + 472) = 1;
  *(v2 + 480) = 0u;
  *(v2 + 496) = 0u;
  *(v2 + 512) = 0;
  *(v2 + 520) = 1;
  *(v2 + 528) = 0u;
  *(v2 + 544) = 0u;
  *(v2 + 553) = 0u;
  v7 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((this + 456), 0);
  *(this + 118) += 2;
  *(this + 62) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((this + 504), 0);
  *(this + 130) += 2;
  *(this + 68) = 0;
  *(this + 69) = this;
  *(this + 70) = v3;
  *(this + 568) = 1;
  return this;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 448, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t re::HashBrown<unsigned long long,re::ecs2::ProbeHierarchyDepth,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(void *a1, unint64_t a2)
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
    if (*(a1[1] + 24 * (v12 + v13)) == a2)
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

int64x2_t re::HashBrown<unsigned long long,re::ecs2::ProbeHierarchyDepth,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd(uint64_t *a1, void *a2, _OWORD *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<unsigned long long,re::ecs2::ProbeHierarchyDepth,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(a1);
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
  v16 = 3 * (v13 + 16 * v11);
  v17 = a1[1] + 24 * (v13 + 16 * v11);
  *v17 = *a2;
  *(v17 + 8) = *a3;
  if (v15 == 255)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v19.i64[1] = v18;
  result = vaddq_s64(*(a1 + 3), v19);
  *(a1 + 3) = result;
  v21 = *(a1[1] + 8 * v16) ^ (*(a1[1] + 8 * v16) >> 30);
  v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v21) ^ ((0xBF58476D1CE4E5B9 * v21) >> 27));
  a1[5] ^= (v22 >> 31) ^ v22;
  return result;
}

double re::HashBrown<unsigned long long,re::ecs2::ProbeHierarchyDepth,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + 1;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  v8 = *(a1 + 56);
  memset(v25, 0, sizeof(v25));
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::init(v25, v8, v3);
  v23[0] = a1;
  v9 = *(a1 + 16);
  if (v9 >= 0x10)
  {
    v10 = 0;
    v11 = *a1;
    v12 = v9 >> 4;
    while (1)
    {
      v13 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v11), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v23[1] = v13 ^ 0xFFFFLL;
      if (v13 != 0xFFFFLL)
      {
        break;
      }

      v10 -= 16;
      ++v11;
      if (!--v12)
      {
        goto LABEL_13;
      }
    }

    v14 = __clz(__rbit64(v13 ^ 0xFFFFLL));
    v15 = v14 - v10;
    v24 = v14 - v10;
    if (v14 + 1 != v10)
    {
      do
      {
        re::HashBrown<unsigned long long,re::ecs2::ProbeHierarchyDepth,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd(v25, (*(v23[0] + 8) + 24 * v15), (*(v23[0] + 8) + 24 * v15 + 8));
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v23);
        v15 = v24;
      }

      while (v24 != -1);
      v9 = *(a1 + 16);
    }
  }

LABEL_13:
  v16 = *(&v25[3] + 1);
  *(&v25[3] + 1) = *(a1 + 56);
  v17 = v25[0];
  v18 = v25[1];
  v25[0] = *a1;
  *&v25[1] = v9;
  v19 = v25[2];
  v20 = *(a1 + 40);
  *(a1 + 48) = *&v25[3];
  *(a1 + 56) = v16;
  *(&v25[2] + 8) = v20;
  v21 = *(a1 + 24);
  *a1 = v17;
  *(a1 + 16) = v18;
  *(a1 + 32) = v19;
  *(&v25[1] + 8) = v21;
  return re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit(v25);
}

void *re::DynamicArray<re::VirtualEnvironmentProbeSource>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::VirtualEnvironmentProbeSource>::setCapacity(v5, a2);
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
              goto LABEL_20;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 24, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v14, v16);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v15, v17);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_20:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 24 * v9;
        v11 = v8 + 8;
        v12 = v7;
        do
        {
          *v12 = *(v11 - 8);
          *(v11 - 8) = 0;
          v12[1] = *v11;
          *v11 = 0;
          v12[2] = *(v11 + 8);
          if (*v11)
          {

            *v11 = 0;
          }

          v13 = *(v11 - 8);
          if (v13)
          {

            *(v11 - 8) = 0;
          }

          v12 += 3;
          v11 += 24;
          v10 -= 24;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_20;
    }
  }

  return result;
}

re *re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::VirtualEnvironmentProbeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
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
    *v10 = &unk_1F5CD61A8;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::VirtualEnvironmentProbeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CD6200;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::VirtualEnvironmentProbeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CD6258;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::VirtualEnvironmentProbeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CD62B0;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::VirtualEnvironmentProbeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
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
        *v37 = &unk_1F5CD61A8;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CD6200;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CD6258;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CD62B0;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VirtualEnvironmentProbeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VirtualEnvironmentProbeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VirtualEnvironmentProbeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VirtualEnvironmentProbeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD61A8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD61A8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD6200;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD6200;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD6258;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD6258;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD62B0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VirtualEnvironmentProbeComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD62B0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

_anonymous_namespace_ *re::ecs2::PhysicsSimulationTracking::updateEnginePreferredUpdateRate(re::ecs2::PhysicsSimulationTracking *this)
{
  result = re::ServiceLocator::serviceOrNull<re::Engine>(*(this + 44));
  if (result)
  {
    v3 = *(result + 324);
    if (v3 > 0.0)
    {
      while (v3 < 59.9)
      {
        v3 = v3 + v3;
      }
    }
  }

  else
  {
    v3 = 0.0;
  }

  if (v3 <= 0.0)
  {
    v4 = 0.016667;
  }

  else
  {
    v4 = 1.0 / v3;
  }

  v5 = *(this + 99);
  if (v5 != v4)
  {
    v6 = fabsf(v5);
    v7 = fabsf(1.0 / v3);
    v8 = v3 <= 0.0 ? 0.016667 : v7;
    if (vabds_f32(v5, v4) >= (((v6 + v8) + 1.0) * 0.00001))
    {
      *(this + 99) = v4;
      if (*(this + 98) <= 0.0)
      {

        return re::ecs2::PhysicsSimulationTracking::updateDefaultFixedTimeStepsForPhysicsSimulations(this);
      }
    }
  }

  return result;
}

uint64_t re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::operator[](uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return *(a1 + 16) + 80 * v6 + 16;
}

uint64_t re::ecs2::PhysicsSimulationTracking::clearPhysicsSimulationEventHandler<RESceneEntityWillDeactivateEvent>(uint64_t a1, unint64_t a2)
{
  v4 = re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(a1 + 560, a2);
  if (v4)
  {
    v5 = v4;
    v6 = a2;
    do
    {
      v7 = v6;
      v6 = *(v6 + 32);
    }

    while (v6);
    v13 = *(v7 + 24);
    v8 = re::HashTable<re::ecs2::Scene const*,re::DataArray<re::ecs2::PhysicsSimulationData>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(a1 + 464, &v13);
    if (v8)
    {
      if (re::DataArray<re::ecs2::PhysicsSimulationData>::tryGet(v8, *v5))
      {
        v9 = v13;
        v10 = *v5;
        v11 = re::BucketArray<re::Pair<re::ecs2::Scene const*,re::DataArrayHandle<re::ecs2::PhysicsSimulationData>,true>,8ul>::addUninitialized(a1 + 408);
        *v11 = v9;
        v11[1] = v10;
        re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::remove(a1 + 560, a2);
      }
    }
  }

  return 0;
}

uint64_t re::ecs2::PhysicsSimulationTracking::updateDefaultFixedTimeStepsForPhysicsSimulations(uint64_t this)
{
  v1 = this;
  v2 = *(this + 392);
  if (v2 <= 0.0)
  {
    v2 = *(this + 396);
  }

  v3 = *(this + 496);
  if (v3)
  {
    v4 = 0;
    v5 = *(this + 480);
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
        LODWORD(v4) = *(this + 496);
        break;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  while (v4 != v3)
  {
    v7 = *(v1 + 480) + 88 * v4 + 16;
    this = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v14, v7, 0);
    if (v7 != v14 || v15 != 0xFFFFFFFFLL)
    {
      do
      {
        v9 = re::DataArray<re::ecs2::PhysicsSimulationData>::DataArrayIterator<re::ecs2::PhysicsSimulationData,re::ecs2::PhysicsSimulationData&>::operator*(&v14);
        if ((*(v9 + 96) & 1) == 0)
        {
          v10 = *(v9 + 16);
          if (v10)
          {
            *(v10 + 68) = v2;
          }

          else
          {
            *(v9 + 256) = v2;
          }
        }

        this = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v14);
      }

      while (v14 != v7 || v15 != 0xFFFF || WORD1(v15) != 0xFFFF);
    }

    v13 = *(v1 + 496);
    if (v13 <= v4 + 1)
    {
      v13 = v4 + 1;
    }

    while (v13 - 1 != v4)
    {
      LODWORD(v4) = v4 + 1;
      if ((*(*(v1 + 480) + 88 * v4) & 0x80000000) != 0)
      {
        goto LABEL_32;
      }
    }

    LODWORD(v4) = v13;
LABEL_32:
    ;
  }

  return this;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::Engine>(uint64_t a1)
{
  {
    re::introspect<re::Engine>(BOOL)::info = re::introspect_Engine(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::Engine>(BOOL)::info;
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

re::ecs2::PhysicsSimulationTracking *re::ecs2::PhysicsSimulationTracking::PhysicsSimulationTracking(re::ecs2::PhysicsSimulationTracking *this)
{
  v16[3] = *MEMORY[0x1E69E9840];
  *this = &unk_1F5CB7C80;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  *(this + 44) = 0x7FFFFFFFLL;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  v2 = this + 56;
  *(this + 22) = 0;
  *(this + 92) = 0x7FFFFFFFLL;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  v3 = this + 104;
  *(this + 34) = 0;
  *(this + 140) = 0x7FFFFFFFLL;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  v4 = this + 152;
  *(this + 46) = 0;
  *(this + 188) = 0x7FFFFFFFLL;
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  v5 = this + 200;
  *(this + 58) = 0;
  *(this + 236) = 0x7FFFFFFFLL;
  *(this + 248) = 0u;
  *(this + 70) = 0;
  *(this + 264) = 0u;
  *(this + 284) = 0x7FFFFFFFLL;
  *(this + 74) = -1;
  *this = &unk_1F5CD6308;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 44) = 0;
  *(this + 360) = 1;
  *(this + 23) = re::PhysicsSimulation::kDefaultGravity;
  *(this + 24) = xmmword_1E3070E00;
  *(this + 100) = 4;
  *(this + 51) = 0;
  *(this + 52) = 0;
  *(this + 106) = 1;
  *(this + 55) = 0;
  *(this + 56) = 0;
  *(this + 54) = 0;
  *(this + 114) = 0;
  *(this + 124) = 0;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 500) = 0x7FFFFFFFLL;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 136) = 0;
  *(this + 548) = 0x7FFFFFFFLL;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 148) = 0;
  *(this + 596) = 0x7FFFFFFFLL;
  *(this + 608) = 0;
  v16[0] = re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v16[1] = re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v16[2] = re::ecs2::ComponentImpl<re::ecs2::AnchoringComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v13 = v16;
  v14 = 3;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((this + 328), &v13);
  v14 = 1;
  v15 = re::ecs2::ComponentImpl<re::ecs2::AnchoringComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v13 = &v15;
  v9 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((this + 304), &v13);
  return this;
}

void re::ecs2::PhysicsSimulationTracking::buildPerEntityStateForDirtyEntityHierarchies(uint64_t a1, char a2, uint64_t a3)
{
  v4 = a3;
  v183 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 32);
  if (v6)
  {
    v7 = 0;
    v8 = (*(a3 + 16) + 8);
    while (1)
    {
      v9 = *v8;
      v8 += 6;
      if (v9 < 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        LODWORD(v7) = *(a3 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  if (v7 != v6)
  {
    v10 = *(a3 + 16);
    v158 = *(a3 + 32);
    do
    {
      v11 = *(v10 + 24 * v7 + 16);
      if (!*(a1 + 56) || (v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) >> 27)), v13 = *(*(a1 + 64) + 4 * ((v12 ^ (v12 >> 31)) % *(a1 + 80))), v13 == 0x7FFFFFFF))
      {
LABEL_14:
        v15 = 56;
        while (1)
        {
          v16 = *(v11 + 32);
          if (!v16 || (*(v16 + 304) & 0x80) != 0)
          {
            goto LABEL_22;
          }

          v181.columns[0].i64[0] = *(v11 + 32);
          v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v16 ^ (v16 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v16 ^ (v16 >> 30))) >> 27));
          re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityRenderOptions,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(a1 + 56, &v181, v17 ^ (v17 >> 31), v171);
          if (v172 != 0x7FFFFFFF)
          {
            break;
          }

          v11 = v181.columns[0].i64[0];
        }

        v18 = *(a1 + 72) + 56 * v172;
        v19 = *(v18 + 16);
        v160 = *(v18 + 20);
        if (v19)
        {
          v161 = *(v18 + 24);
          v20 = *(v18 + 40);
LABEL_26:
          re::StackScratchAllocator::StackScratchAllocator(v171);
          *v174 = 0;
          *&v174[8] = 0;
          v25 = 1;
          *&v174[16] = 1;
          memset(&v174[24], 0, 28);
          re::BucketArray<re::ecs2::Entity const*,32ul>::init(v174, v171, 1uLL);
          v167 = 0uLL;
          LODWORD(v168) = 1;
          v169 = 0uLL;
          *(&v168 + 1) = 0;
          v170 = 0;
          re::BucketArray<re::ecs2::RootPhysicsSimulationData,32ul>::init(&v167, v171, 1uLL);
          *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v174) = v11;
          v26 = re::BucketArray<re::ecs2::RootPhysicsSimulationData,32ul>::addUninitialized(&v167);
          *v26 = v19;
          *(v26 + 4) = v160;
          *(v26 + 8) = v161;
          *(v26 + 24) = v20;
          do
          {
            v27 = v11;
            v11 = *(v11 + 32);
          }

          while (v11);
          v181.columns[0].i64[0] = *(v27 + 24);
          v162 = re::HashTable<re::ecs2::Scene const*,re::DataArray<re::ecs2::PhysicsSimulationData>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::operator[](a1 + 464, &v181);
          do
          {
LABEL_29:
            if (!*&v174[40])
            {
              v74 = *(&v169 + 1);
              if (*(&v169 + 1))
              {
                v75 = 0;
                do
                {
                  re::BucketArray<re::ecs2::RootPhysicsSimulationData,32ul>::operator[](&v167, v75++);
                }

                while (v74 != v75);
              }

              while (*(&v167 + 1))
              {
                re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v167);
              }

              v4 = a3;
              LODWORD(v6) = v158;
              if (v167 && (v168 & 1) == 0)
              {
                (*(*v167 + 40))();
              }

              re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v174);
              if (*v174 && (v174[16] & 1) == 0)
              {
                (*(**v174 + 40))();
              }

              re::StackScratchAllocator::~StackScratchAllocator(v171);
              goto LABEL_92;
            }

            v166 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v174, *&v174[40] - 1);
            re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v174, *&v174[40] - 1);
            --*&v174[40];
            ++*&v174[48];
            if (!*(&v169 + 1))
            {
              re::internal::assertLog(4, v28, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
              _os_crash("assertion failure: (m_size > 0) Array is empty");
              __break(1u);
              goto LABEL_218;
            }

            v20 = *(&v169 + 1) - 1;
            v29 = re::BucketArray<re::ecs2::RootPhysicsSimulationData,32ul>::operator[](&v167, *(&v169 + 1) - 1);
            v3 = *v29;
            v19 = v29[1];
            v30 = *(v29 + 1);
            v31 = *(v29 + 2);
            v15 = *(v29 + 3);
            re::BucketArray<re::ecs2::RootPhysicsSimulationData,32ul>::operator[](&v167, v20);
            *(&v169 + 1) = v20;
            ++v170;
            v32 = v166;
          }

          while ((*(v166 + 304) & 1) == 0);
          v33 = *(v166 + 98);
          if (!*(v166 + 98))
          {
            goto LABEL_49;
          }

          v34 = (re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
          v35 = *(v166 + 104);
          v36 = vld1q_dup_s16(v34);
          v37 = 1;
          v38 = v35;
          v39 = *(v166 + 98);
          while (1)
          {
            v40 = vandq_s8(vceqq_s16(v36, *v38), xmmword_1E306AC00);
            v40.i16[0] = vmaxvq_u16(v40);
            if (v40.i32[0])
            {
              break;
            }

            v37 -= 8;
            ++v38;
            if (!--v39)
            {
              goto LABEL_42;
            }
          }

          if (v40.u16[0] - v37 < *(v166 + 96))
          {
            v41 = 3;
            goto LABEL_39;
          }

          if (!*(v166 + 144))
          {
            goto LABEL_49;
          }

LABEL_42:
          v44 = (re::ecs2::ComponentImpl<re::ecs2::AnchoringComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
          v45 = vld1q_dup_s16(v44);
          v46 = 1;
          while (1)
          {
            v47 = vandq_s8(vceqq_s16(v45, *v35), xmmword_1E306AC00);
            v47.i16[0] = vmaxvq_u16(v47);
            if (v47.i32[0])
            {
              break;
            }

            v46 -= 8;
            ++v35;
            if (!--v33)
            {
              goto LABEL_49;
            }
          }

          if (v47.u16[0] - v46 < *(v166 + 96) && (*(a1 + 608) & 1) == 0 && (v41 = 2 * (*(re::ecs2::EntityComponentCollection::get((v166 + 48), re::ecs2::ComponentImpl<re::ecs2::AnchoringComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 312) == 1), v32 = v166, v41))
          {
LABEL_39:
            if ((*(a1 + 360) & 1) == 0)
            {
              goto LABEL_49;
            }

            v42 = re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(a1 + 560, v32);
            if (v42)
            {
              v20 = v166;
            }

            else
            {
              v59 = *(a1 + 392);
              v60 = v162;
              if (v59 <= 0.0)
              {
                v59 = *(a1 + 396);
              }

              v61 = *(a1 + 352);
              v62 = *(a1 + 360);
              v63 = *(v162 + 56);
              if ((v63 + 1) >> 24)
              {
                v64 = 1;
              }

              else
              {
                v64 = v63 + 1;
              }

              *(v162 + 56) = v64;
              v15 = *(v162 + 52);
              v65 = *(v162 + 54);
              if (v15 == 0xFFFF && v65 == 0xFFFF)
              {
                if (*(v162 + 48) >= *(v162 + 44))
                {
                  re::DataArray<re::ecs2::PhysicsSimulationData>::allocBlock(v162);
                  v60 = v162;
                }

                v66 = *(v60 + 16);
                v65 = (v66 - 1);
                if (!v66)
                {
                  goto LABEL_227;
                }

                v15 = *(v60 + 48);
                if (v15 >= 0x10000)
                {
                  goto LABEL_235;
                }

                v67 = (*(v60 + 32) + 16 * v65);
                *(v60 + 48) = v15 + 1;
                *(v67[1] + 4 * v15) = *(v60 + 56);
                v68 = (*v67 + 272 * v15);
              }

              else
              {
                v20 = *(v162 + 16);
                if (v20 <= v65)
                {
                  goto LABEL_231;
                }

                v69 = (*(v162 + 32) + 16 * v65);
                *(v69[1] + 4 * v15) = v64;
                v68 = (*v69 + 272 * v15);
                *(v162 + 52) = *v68;
              }

              ++*(v60 + 40);
              v70 = v61;
              v71 = v60;
              re::ecs2::PhysicsSimulationData::PhysicsSimulationData(v68, v70, v166, (a1 + 368), *(a1 + 400), (v62 ^ 1) & 1, v59);
              v3 = *(v71 + 56);
              memset(&v181, 0, 24);
              v20 = v166;
              v72 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v166 ^ (v166 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v166 ^ (v166 >> 30))) >> 27));
              re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(&v181, a1 + 560, v166, v72 ^ (v72 >> 31));
              if (v181.columns[0].i32[3] == 0x7FFFFFFF)
              {
                v73 = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::allocEntry(a1 + 560, v181.columns[0].u32[2], v181.columns[0].u64[0]);
                v20 = v166;
                *(v73 + 16) = v15 + (v65 << 16) + ((v3 & 0xFFFFFF) << 32);
                v42 = (v73 + 16);
                *(v42 - 1) = v20;
                ++*(a1 + 600);
              }

              else
              {
                v42 = (*(a1 + 576) + 32 * v181.columns[0].u32[3] + 16);
              }
            }

            v25 = 0x7FFFFFFFLL;
            v15 = *v42;
            v30 = v20;
          }

          else
          {
LABEL_49:
            v48 = re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(a1 + 560, v32);
            v20 = v166;
            if (v48)
            {
              do
              {
                v49 = v20;
                v20 = *(v20 + 32);
              }

              while (v20);
              v50 = *(v49 + 24);
              v51 = *v48;
              v52 = re::BucketArray<re::Pair<re::ecs2::Scene const*,re::DataArrayHandle<re::ecs2::PhysicsSimulationData>,true>,8ul>::addUninitialized(a1 + 408);
              *v52 = v50;
              v52[1] = v51;
              re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::remove(a1 + 560, v166);
              v20 = v166;
            }

            v41 = v3;
            v25 = 0x7FFFFFFFLL;
          }

          memset(&v181, 0, 24);
          v53 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v20 ^ (v20 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v20 ^ (v20 >> 30))) >> 27));
          re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityRenderOptions,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(a1 + 56, &v166, v53 ^ (v53 >> 31), &v181);
          if (v181.columns[0].i32[3] == 0x7FFFFFFF)
          {
            v54 = re::HashTable<re::ecs2::Entity const*,re::ecs2::RootPhysicsSimulationData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(a1 + 56, v181.columns[0].u32[2], v181.columns[0].u64[0]);
            v55 = v166;
            *(v54 + 8) = v166;
            *(v54 + 16) = v41;
            *(v54 + 20) = v19;
            *(v54 + 24) = v30;
            *(v54 + 32) = v31;
            *(v54 + 40) = v15;
            ++*(a1 + 96);
          }

          else
          {
            v55 = v166;
          }

          v56 = *(v55 + 344);
          if (v56)
          {
            v20 = *(v55 + 360);
            v3 = 8 * v56;
            do
            {
              v57 = *v20;
              v20 += 8;
              v25 = v57;
              *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v174) = v57;
              v58 = re::BucketArray<re::ecs2::RootPhysicsSimulationData,32ul>::addUninitialized(&v167);
              *v58 = v41;
              *(v58 + 4) = v19;
              *(v58 + 8) = v30;
              *(v58 + 16) = v31;
              *(v58 + 24) = v15;
              v3 -= 8;
            }

            while (v3);
          }

          goto LABEL_29;
        }

        v4 = a3;
        LODWORD(v6) = v158;
LABEL_22:
        v21 = v11;
        do
        {
          v22 = v21;
          v21 = *(v21 + 32);
        }

        while (v21);
        v23 = *(v22 + 24);
        v24 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v23 ^ (v23 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v23 ^ (v23 >> 30))) >> 27));
        re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(v171, a1 + 512, v23, v24 ^ (v24 >> 31));
        if (v172 != 0x7FFFFFFF)
        {
          v20 = *(*(a1 + 528) + 32 * v172 + 16);
          v161 = 0u;
          v19 = 1;
          goto LABEL_26;
        }
      }

      else
      {
        v14 = *(a1 + 72);
        while (*(v14 + 56 * v13 + 8) != v11)
        {
          v13 = *(v14 + 56 * v13) & 0x7FFFFFFF;
          if (v13 == 0x7FFFFFFF)
          {
            goto LABEL_14;
          }
        }
      }

LABEL_92:
      v76 = *(v4 + 32);
      v10 = *(v4 + 16);
      if (v76 <= v7 + 1)
      {
        v76 = v7 + 1;
      }

      while (v76 - 1 != v7)
      {
        LODWORD(v7) = v7 + 1;
        if ((*(v10 + 24 * v7 + 8) & 0x80000000) != 0)
        {
          goto LABEL_98;
        }
      }

      LODWORD(v7) = v76;
LABEL_98:
      ;
    }

    while (v7 != v6);
  }

  if (a2)
  {
    re::StackScratchAllocator::StackScratchAllocator(v171);
    LODWORD(v169) = 0;
    v167 = 0u;
    v168 = 0u;
    *(&v169 + 4) = 0x7FFFFFFFLL;
    re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(&v167, v171, 3);
    v77 = *(a1 + 544);
    if (v77)
    {
      v78 = 0;
      v79 = *(a1 + 528);
      while (1)
      {
        v80 = *v79;
        v79 += 8;
        if (v80 < 0)
        {
          break;
        }

        if (v77 == ++v78)
        {
          LODWORD(v78) = *(a1 + 544);
          break;
        }
      }
    }

    else
    {
      LODWORD(v78) = 0;
    }

    while (v78 != v77)
    {
      v81 = *(a1 + 528);
      v181.columns[0] = 0uLL;
      v181.columns[1].i32[0] = 1;
      v82 = v81 + 32 * v78;
      memset(&v181.columns[1].u32[2], 0, 28);
      re::BucketArray<re::ecs2::Entity const*,8ul>::init(&v181, v171, 1uLL);
      v85 = *(v82 + 8);
      v84 = (v82 + 8);
      v83 = v85;
      v86 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v85 ^ (v85 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v85 ^ (v85 >> 30))) >> 27));
      v87 = v86 ^ (v86 >> 31);
      if (v167)
      {
        v88 = v87 % DWORD2(v168);
        v89 = *(*(&v167 + 1) + 4 * v88);
        if (v89 != 0x7FFFFFFF)
        {
          while (*(v168 + 80 * v89 + 8) != v83)
          {
            LODWORD(v89) = *(v168 + 80 * v89) & 0x7FFFFFFF;
            if (v89 == 0x7FFFFFFF)
            {
              goto LABEL_114;
            }
          }

          goto LABEL_115;
        }
      }

      else
      {
        LODWORD(v88) = 0;
      }

LABEL_114:
      v90 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<re::ecs2::Entity const*,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(&v167, v88, v87);
      v91 = *v84;
      *(v90 + 16) = 0;
      v90 += 16;
      *(v90 - 8) = v91;
      *(v90 + 8) = 0;
      *(v90 + 16) = 1;
      *(v90 + 48) = 0;
      *(v90 + 32) = 0;
      *(v90 + 40) = 0;
      *(v90 + 24) = 0;
      re::BucketArray<re::ecs2::Entity const*,8ul>::swap(v90, &v181);
      ++DWORD2(v169);
LABEL_115:
      re::BucketArray<re::ecs2::Entity const*,8ul>::deinit(&v181);
      if (v181.columns[0].i64[0] && (v181.columns[1].i8[0] & 1) == 0)
      {
        (*(*v181.columns[0].i64[0] + 40))();
      }

      v92 = *(a1 + 544);
      if (v92 <= v78 + 1)
      {
        v92 = v78 + 1;
      }

      while (v92 - 1 != v78)
      {
        LODWORD(v78) = v78 + 1;
        if ((*(*(a1 + 528) + 32 * v78) & 0x80000000) != 0)
        {
          goto LABEL_124;
        }
      }

      LODWORD(v78) = v92;
LABEL_124:
      ;
    }

    v93 = *(a1 + 592);
    if (v93)
    {
      v94 = 0;
      v95 = *(a1 + 576);
      v25 = v174;
      while (1)
      {
        v96 = *v95;
        v95 += 8;
        if (v96 < 0)
        {
          break;
        }

        if (v93 == ++v94)
        {
          LODWORD(v94) = *(a1 + 592);
          break;
        }
      }
    }

    else
    {
      LODWORD(v94) = 0;
      v25 = v174;
    }

    if (v94 != v93)
    {
      v165 = DWORD2(v168);
      v101 = v167;
      v15 = v168;
      v163 = *(&v167 + 1);
      do
      {
        v102 = *(*(a1 + 576) + 32 * v94 + 8);
        v103 = v102;
        do
        {
          v104 = v103;
          v103 = *(v103 + 32);
        }

        while (v103);
        if (v101 && (v105 = *(v104 + 24), v106 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v105 ^ (v105 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v105 ^ (v105 >> 30))) >> 27)), v107 = *(v163 + 4 * ((v106 ^ (v106 >> 31)) % v165)), v107 != 0x7FFFFFFF))
        {
          v115 = *(v15 + 80 * v107 + 8);
          for (i = v107; v115 != v105; LODWORD(v107) = i)
          {
            i = *(v15 + 80 * i) & 0x7FFFFFFF;
            LODWORD(v107) = 0x7FFFFFFF;
            if (i == 0x7FFFFFFF)
            {
              break;
            }

            v115 = *(v15 + 80 * i + 8);
          }
        }

        else
        {
          LODWORD(v107) = 0x7FFFFFFF;
        }

        v108 = v15 + 80 * v107;
        v109 = v108 + 16;
        v65 = *(v108 + 56);
        v3 = *(v108 + 24);
        if (v65 + 1 > 8 * v3)
        {
          v110 = v93;
          v111 = v101;
          re::BucketArray<re::ecs2::Entity const*,8ul>::setBucketsCapacity(v109, (v65 + 8) >> 3);
          v101 = v111;
          v93 = v110;
          v3 = *(v109 + 8);
        }

        v20 = v65 >> 3;
        if (v3 <= v65 >> 3)
        {
          goto LABEL_223;
        }

        if (*(v109 + 16))
        {
          v112 = v109 + 24;
        }

        else
        {
          v112 = *(v109 + 32);
        }

        v113 = *(v112 + 8 * v20);
        ++*(v109 + 40);
        ++*(v109 + 48);
        *(v113 + 8 * (v65 & 7)) = v102;
        v114 = *(a1 + 592);
        if (v114 <= v94 + 1)
        {
          v114 = v94 + 1;
        }

        v25 = v174;
        while (v114 - 1 != v94)
        {
          LODWORD(v94) = v94 + 1;
          if ((*(*(a1 + 576) + 32 * v94) & 0x80000000) != 0)
          {
            goto LABEL_157;
          }
        }

        LODWORD(v94) = v114;
LABEL_157:
        ;
      }

      while (v94 != v93);
    }

    v164 = re::ServiceLocator::service<re::TransformService>(*(a1 + 352));
    v97 = v169;
    if (v169)
    {
      v98 = 0;
      v99 = v168;
      while (1)
      {
        v100 = *v99;
        v99 += 20;
        if (v100 < 0)
        {
          break;
        }

        if (v169 == ++v98)
        {
          LODWORD(v98) = v169;
          break;
        }
      }
    }

    else
    {
      LODWORD(v98) = 0;
    }

    if (v98 != v169)
    {
      v117 = v168;
      v157 = v169;
      do
      {
        v19 = v117 + 80 * v98;
        v166 = *(v19 + 8);
        v119 = re::HashTable<re::ecs2::Scene const*,re::DataArray<re::ecs2::PhysicsSimulationData>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::operator[](a1 + 464, &v166);
        v174[0] = 0;
        v120 = *(re::ecs2::ComponentImpl<re::ecs2::PhysicsOriginComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 8);
        if (*(v166 + 224) > v120 && (v121 = *(*(v166 + 240) + 8 * v120)) != 0 && (v122 = *(v121 + 384)) != 0)
        {
          v123 = *(v121 + 400);
          v124 = 8 * v122;
          while (1)
          {
            v118 = *(*v123 + 16);
            if ((*(v118 + 304) & 1) != 0 && (*(v118 + 387) & 1) == 0)
            {
              break;
            }

            v123 += 8;
            v124 -= 8;
            if (!v124)
            {
              goto LABEL_173;
            }
          }

          re::TransformService::worldMatrix(v164, v118, 0, &v181);
          if ((v174[0] & 1) == 0)
          {
            v174[0] = 1;
          }

          *&v174[16] = v181;
          re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v181, v119, 0);
          if (v119 != v181.columns[0].i64[0] || v181.columns[0].u32[2] != 0xFFFFFFFFLL)
          {
            do
            {
              v135 = re::DataArray<re::ecs2::PhysicsSimulationData>::DataArrayIterator<re::ecs2::PhysicsSimulationData,re::ecs2::PhysicsSimulationData&>::operator*(&v181);
              re::ecs2::PhysicsSimulationData::updatePhysicsOrigin(v135, &v174[16]);
              re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v181);
            }

            while (v181.columns[0].i64[0] != v119 || v181.columns[0].u16[4] != 0xFFFF || v181.columns[0].u16[5] != 0xFFFF);
          }
        }

        else
        {
LABEL_173:
          v15 = v19 + 16;
          v3 = *(v19 + 56);
          if (v3)
          {
            v20 = 0;
            while (1)
            {
              v125 = *(v15 + 40);
              if (v125 <= v20)
              {
                break;
              }

              v19 = v20 >> 3;
              v25 = *(v15 + 8);
              if (v25 <= v20 >> 3)
              {
                goto LABEL_219;
              }

              v126 = v15 + 24;
              if ((*(v15 + 16) & 1) == 0)
              {
                v126 = *(v15 + 32);
              }

              v19 = *(*(v126 + 8 * v19) + 8 * (v20 & 7));
              re::TransformService::worldMatrix(v164, v19, 0, &v181);
              v127 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v19 ^ (v19 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v19 ^ (v19 >> 30))) >> 27));
              re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(v175, a1 + 560, v19, v127 ^ (v127 >> 31));
              v128 = re::DataArray<re::ecs2::PhysicsSimulationData>::get(*(v119 + 16), *(v119 + 32), *(*(a1 + 576) + 32 * *v176 + 16));
              re::ecs2::PhysicsSimulationData::updatePhysicsOrigin(v128, &v181);
              if (v3 == ++v20)
              {
                goto LABEL_180;
              }
            }

LABEL_218:
            re::internal::assertLog(6, v118, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, v20, v125);
            _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v151, v153);
            __break(1u);
LABEL_219:
            v173 = 0;
            v65 = v174;
            v182 = 0u;
            memset(&v181, 0, sizeof(v181));
            v139 = MEMORY[0x1E69E9C10];
            v140 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v175 = 136315906;
            *&v175[4] = "operator[]";
            *v176 = 1024;
            if (v140)
            {
              v141 = 3;
            }

            else
            {
              v141 = 2;
            }

            *&v176[2] = 866;
            v177 = 2048;
            v178 = v19;
            v179 = 2048;
            v180 = v25;
            _os_log_send_and_compose_impl(v141, &v173, &v181, 80, &dword_1E1C61000, v139, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v175, 38, v154, v155);
            _os_crash_msg();
            __break(1u);
LABEL_223:
            *v175 = 0;
            v182 = 0u;
            memset(&v181, 0, sizeof(v181));
            v142 = MEMORY[0x1E69E9C10];
            v143 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v174 = 136315906;
            *&v174[4] = "operator[]";
            *&v174[12] = 1024;
            if (v143)
            {
              v144 = 3;
            }

            else
            {
              v144 = 2;
            }

            *&v174[14] = 858;
            *&v174[18] = 2048;
            *&v174[20] = v20;
            *&v174[28] = 2048;
            *&v174[30] = v3;
            _os_log_send_and_compose_impl(v144, v175, &v181, 80, &dword_1E1C61000, v142, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v174, 38, v154, v155);
            _os_crash_msg();
            __break(1u);
LABEL_227:
            v173 = 0;
            v182 = 0u;
            memset(&v181, 0, sizeof(v181));
            v145 = MEMORY[0x1E69E9C10];
            v146 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v175 = 136315906;
            *&v175[4] = "operator[]";
            *v176 = 1024;
            if (v146)
            {
              v147 = 3;
            }

            else
            {
              v147 = 2;
            }

            *&v176[2] = 789;
            v177 = 2048;
            v178 = v65;
            v179 = 2048;
            v180 = 0;
            _os_log_send_and_compose_impl(v147, &v173, &v181, 80, &dword_1E1C61000, v145, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v175, 38, v154, v155);
            _os_crash_msg();
            __break(1u);
LABEL_231:
            v173 = 0;
            v182 = 0u;
            memset(&v181, 0, sizeof(v181));
            v148 = MEMORY[0x1E69E9C10];
            v149 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v175 = 136315906;
            *&v175[4] = "operator[]";
            *v176 = 1024;
            if (v149)
            {
              v150 = 3;
            }

            else
            {
              v150 = 2;
            }

            *&v176[2] = 789;
            v177 = 2048;
            v178 = v65;
            v179 = 2048;
            v180 = v20;
            _os_log_send_and_compose_impl(v150, &v173, &v181, 80, &dword_1E1C61000, v148, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v175, 38, v154, v155);
            _os_crash_msg();
            __break(1u);
LABEL_235:
            re::internal::assertLog(5, v43, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v15);
            _os_crash("assertion failure: (!overflow) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", v152);
            __break(1u);
          }

LABEL_180:
          v129 = *(a1 + 544);
          if (v129)
          {
            v130 = 0;
            v131 = *(a1 + 528);
            v25 = v174;
            while (1)
            {
              v132 = *v131;
              v131 += 8;
              if (v132 < 0)
              {
                break;
              }

              if (v129 == ++v130)
              {
                LODWORD(v130) = *(a1 + 544);
                break;
              }
            }
          }

          else
          {
            LODWORD(v130) = 0;
            v25 = v174;
          }

          v97 = v157;
LABEL_188:
          while (v130 != v129)
          {
            v133 = re::DataArray<re::ecs2::PhysicsSimulationData>::get(*(v119 + 16), *(v119 + 32), *(*(a1 + 528) + 32 * v130 + 16));
            v181.columns[0] = xmmword_1E3047670;
            v181.columns[1] = xmmword_1E3047680;
            v181.columns[2] = xmmword_1E30476A0;
            v181.columns[3] = xmmword_1E30474D0;
            re::ecs2::PhysicsSimulationData::updatePhysicsOrigin(v133, &v181);
            v134 = *(a1 + 544);
            if (v134 <= v130 + 1)
            {
              v134 = v130 + 1;
            }

            while (v134 - 1 != v130)
            {
              LODWORD(v130) = v130 + 1;
              if ((*(*(a1 + 528) + 32 * v130) & 0x80000000) != 0)
              {
                goto LABEL_188;
              }
            }

            LODWORD(v130) = v134;
          }
        }

        if (v97 <= v98 + 1)
        {
          v138 = v98 + 1;
        }

        else
        {
          v138 = v97;
        }

        while (v138 - 1 != v98)
        {
          LODWORD(v98) = v98 + 1;
          if ((*(v117 + 80 * v98) & 0x80000000) != 0)
          {
            goto LABEL_214;
          }
        }

        LODWORD(v98) = v138;
LABEL_214:
        ;
      }

      while (v98 != v97);
    }

    re::HashTable<re::ecs2::Scene const*,re::BucketArray<re::ecs2::Entity const*,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(&v167);
    re::StackScratchAllocator::~StackScratchAllocator(v171);
  }
}

uint64_t re::HashTable<re::ecs2::Scene const*,re::DataArray<re::ecs2::PhysicsSimulationData>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::operator[](uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::Scene const*,re::DataArray<re::ecs2::PhysicsSimulationData>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return *(a1 + 16) + 88 * v6 + 16;
}

uint64_t re::DataArray<re::ecs2::PhysicsSimulationData>::get(unint64_t a1, uint64_t a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = HIWORD(a3);
  if (HIWORD(a3) >= a1)
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
    v15 = v3;
    v16 = 2048;
    v17 = a1;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16 * HIWORD(a3)) + 272 * a3;
}

_anonymous_namespace_ *re::ecs2::PhysicsSimulationManager::init(uint64_t a1, uint64_t a2, char a3)
{
  re::initCollision(a1);
  {
    re::initCollision(0);
  }

  re::PhysicsFactory::init(v7, v6);
  *(a1 + 368) = a2;
  *(a1 + 376) = a3;
  result = re::ecs2::PhysicsSimulationTracking::updateEnginePreferredUpdateRate((a1 + 16));
  *(a1 + 672) = a2;
  return result;
}

uint64_t re::ecs2::PhysicsSimulationManager::ensureLegacyGlobalSimulation(re::ecs2::PhysicsSimulationManager *this, re::CollisionFactory *a2)
{
  result = *(this + 80);
  if (!result)
  {
    v4 = re::PhysicsFactory::defaultFactory(0, a2);
    v5 = (*(*v4 + 32))(v4, re::PhysicsFactory::m_defaultAllocator);
    *(this + 80) = v5;
    v6 = *(this + 84);
    v7 = re::ServiceLocator::serviceOrNull<re::JobService>(*(this + 84));
    v9 = re::globalAllocators(v8);
    v10 = (*(*v9[2] + 32))(v9[2], 48, 16);
    *(v10 + 16) = 1;
    *v10 = &unk_1F5D0CD50;
    *(v10 + 8) = 0;
    *(v10 + 32) = xmmword_1E3070E10;
    *(this + 81) = v10;
    v11 = *(this + 80);
    v16 = v10;
    re::DynamicArray<re::TransitionCondition *>::add((v11 + 256), &v16);
    v12 = re::ForceEffect::setSimulation(v16, *(v11 + 248));
    v13 = re::globalAllocators(v12);
    v14 = (*(*v13[2] + 32))(v13[2], 32, 8);
    *(v14 + 16) = 1;
    *v14 = &unk_1F5D0DB30;
    *(v14 + 8) = 0;
    *(v14 + 20) = 0x3E4CCCCD3CA3D70ALL;
    *(this + 82) = v14;
    v15 = *(this + 80);
    v16 = v14;
    re::DynamicArray<re::TransitionCondition *>::add((v15 + 256), &v16);
    re::ForceEffect::setSimulation(v16, *(v15 + 248));
    return *(this + 80);
  }

  return result;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::JobService>(uint64_t a1)
{
  {
    re::introspect<re::JobService>(BOOL)::info = re::introspect_JobService(0);
  }

  v2 = re::introspect<re::JobService>(BOOL)::info;
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

re *re::ecs2::PhysicsSimulationManager::deinit(re::ecs2::PhysicsSimulationManager *this)
{
  *(this + 46) = 0;
  v1 = *(this + 80);
  if (v1)
  {
    v2 = this;
    v3 = re::globalAllocators(this)[2];
    (**v1)(v1);
    this = (*(*v3 + 40))(v3, v1);
    *(v2 + 80) = 0;
    v4 = *(v2 + 81);
    if (v4)
    {
      v5 = re::globalAllocators(this);
      this = (*(*v5[2] + 40))(v5[2], v4);
    }

    *(v2 + 81) = 0;
    v6 = *(v2 + 82);
    if (v6)
    {
      v7 = re::globalAllocators(this);
      this = (*(*v7[2] + 40))(v7[2], v6);
    }

    *(v2 + 82) = 0;
  }

  v8 = re::PhysicsFactory::deinit(this);

  return re::deinitCollision(v8);
}

uint64_t re::ecs2::PhysicsSimulationManager::reportDeadPhysicsSimulation(uint64_t this, unint64_t a2)
{
  v2 = this;
  v10 = a2;
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v4 = v3 ^ (v3 >> 31);
  v5 = *(this + 704);
  if (v5)
  {
    v7 = v4 % v5;
    v8 = *(*(this + 688) + 4 * (v4 % v5));
    if (v8 != 0x7FFFFFFF)
    {
      v9 = *(this + 696);
      if (*(v9 + 24 * v8 + 16) == a2)
      {
        return this;
      }

      while (1)
      {
        LODWORD(v8) = *(v9 + 24 * v8 + 8) & 0x7FFFFFFF;
        if (v8 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v9 + 24 * v8 + 16) == a2)
        {
          return this;
        }
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  this = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addAsCopy(this + 680, v7, v4, &v10, &v10);
  ++*(v2 + 720);
  return this;
}

void re::ecs2::PhysicsSimulationManager::~PhysicsSimulationManager(re::ecs2::PhysicsSimulationManager *this)
{
  re::ecs2::PhysicsSimulationManager::deinit(this);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 85);
  re::ecs2::PhysicsSimulationTracking::~PhysicsSimulationTracking((this + 16));
}

{
  re::ecs2::PhysicsSimulationManager::deinit(this);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 85);
  re::ecs2::PhysicsSimulationTracking::~PhysicsSimulationTracking((this + 16));

  JUMPOUT(0x1E6906520);
}

uint64_t re::ecs2::PhysicsSimulationManager::physicsSimulationsForScene(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  return re::HashTable<re::ecs2::Scene const*,re::DataArray<re::ecs2::PhysicsSimulationData>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(a1 + 480, &v3);
}

{
  v3 = a2;
  return re::HashTable<re::ecs2::Scene const*,re::DataArray<re::ecs2::PhysicsSimulationData>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(a1 + 480, &v3);
}

void re::ecs2::PhysicsSimulationManager::destroyPendingPhysicsSimulations(re::ecs2::PhysicsSimulationManager *this)
{
  v2 = *(this + 58);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v7 = *re::BucketArray<RESubscriptionHandle,8ul>::operator[](this + 424, i);
      v4 = re::HashTable<re::ecs2::Scene const*,re::DataArray<re::ecs2::PhysicsSimulationData>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 480, &v7);
      if (v4)
      {
        re::DataArray<re::ecs2::PhysicsSimulationData>::destroy(v4, *(&v7 + 1));
      }
    }

    v5 = *(this + 58);
    if (v5)
    {
      for (j = 0; j != v5; ++j)
      {
        re::BucketArray<RESubscriptionHandle,8ul>::operator[](this + 424, j);
      }
    }
  }

  *(this + 58) = 0;
  ++*(this + 118);
}

void re::ecs2::PhysicsSimulationManager::updatePerEntityPhysicsSimulationRoot(re::ecs2::PhysicsSimulationManager *this, char a2)
{
  re::ecs2::PhysicsSimulationTracking::updateEnginePreferredUpdateRate((this + 16));
  re::ecs2::PhysicsSimulationTracking::buildPerEntityStateForDirtyEntityHierarchies(this + 16, a2, this + 120);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(this + 120);

  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(this + 216);
}

uint64_t (***re::ecs2::PhysicsSimulationManager::registerScene(re::ecs2::PhysicsSimulationManager *this, unint64_t a2))(void)
{
  v91 = *MEMORY[0x1E69E9840];
  v84 = a2;
  memset(v86 + 8, 0, 20);
  v87 = 0u;
  LODWORD(v88) = 0;
  *(&v88 + 4) = 0x1FFFFFFFFLL;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(v86, 0);
  ++DWORD2(v86[1]);
  HIDWORD(v87) = 4;
  re::DataArray<re::ecs2::PhysicsSimulationData>::allocBlock(v86);
  memset(v90, 0, 24);
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<re::ecs2::Scene const*,re::DataArray<re::ecs2::PhysicsSimulationData>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(this + 480, &v84, v5 ^ (v5 >> 31), v90);
  if (*&v90[12] == 0x7FFFFFFF)
  {
    v6 = re::HashTable<re::ecs2::Scene const*,re::DataArray<re::ecs2::PhysicsSimulationData>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(this + 480, *&v90[8], *v90);
    v7 = v84;
    *(v6 + 16) = 0;
    v8 = v6 + 16;
    *(v6 + 8) = v7;
    *(v6 + 24) = 0u;
    *(v6 + 40) = 0;
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0;
    *(v6 + 68) = 0x1FFFFFFFFLL;
    re::DataArray<re::ecs2::PhysicsSimulationData>::swap(v6 + 16, v86);
    ++*(this + 130);
  }

  else
  {
    v8 = *(this + 62) + 88 * *&v90[12] + 16;
  }

  re::DataArray<re::ecs2::PhysicsSimulationData>::deinit(v86);
  if (*&v86[0])
  {
    v9 = v87;
    if (v87)
    {
      (*(**&v86[0] + 40))();
    }
  }

  v10 = *(this + 102);
  if (v10 <= 0.0)
  {
    v10 = *(this + 103);
  }

  v11 = *(this + 46);
  v12 = *(this + 376);
  v13 = *(v8 + 56);
  if ((v13 + 1) >> 24)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13 + 1;
  }

  *(v8 + 56) = v14;
  v15 = *(v8 + 52);
  v16 = *(v8 + 54);
  if (v15 == 0xFFFF && v16 == 0xFFFF)
  {
    if (*(v8 + 48) >= *(v8 + 44))
    {
      re::DataArray<re::ecs2::PhysicsSimulationData>::allocBlock(v8);
    }

    v20 = *(v8 + 16);
    v16 = (v20 - 1);
    if (!v20)
    {
      goto LABEL_51;
    }

    v15 = *(v8 + 48);
    if (v15 >= 0x10000)
    {
      goto LABEL_55;
    }

    v21 = (*(v8 + 32) + 16 * v16);
    *(v8 + 48) = v15 + 1;
    *(v21[1] + 4 * v15) = *(v8 + 56);
    v19 = (*v21 + 272 * v15);
  }

  else
  {
    v2 = *(v8 + 16);
    if (v2 <= v16)
    {
LABEL_47:
      v85 = 0;
      v88 = 0u;
      v89 = 0u;
      v87 = 0u;
      memset(v86, 0, sizeof(v86));
      v75 = MEMORY[0x1E69E9C10];
      v76 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v90 = 136315906;
      *&v90[4] = "operator[]";
      *&v90[12] = 1024;
      if (v76)
      {
        v77 = 3;
      }

      else
      {
        v77 = 2;
      }

      *&v90[14] = 789;
      *&v90[18] = 2048;
      *&v90[20] = v16;
      *&v90[28] = 2048;
      *&v90[30] = v2;
      _os_log_send_and_compose_impl(v77, &v85, v86, 80, &dword_1E1C61000, v75, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v90, 38, v82, v83);
      _os_crash_msg();
      __break(1u);
LABEL_51:
      v85 = 0;
      v88 = 0u;
      v89 = 0u;
      v87 = 0u;
      memset(v86, 0, sizeof(v86));
      v78 = MEMORY[0x1E69E9C10];
      v79 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v90 = 136315906;
      *&v90[4] = "operator[]";
      *&v90[12] = 1024;
      if (v79)
      {
        v80 = 3;
      }

      else
      {
        v80 = 2;
      }

      *&v90[14] = 789;
      *&v90[18] = 2048;
      *&v90[20] = v16;
      *&v90[28] = 2048;
      *&v90[30] = 0;
      _os_log_send_and_compose_impl(v80, &v85, v86, 80, &dword_1E1C61000, v78, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v90, 38, v82, v83);
      _os_crash_msg();
      __break(1u);
LABEL_55:
      re::internal::assertLog(5, v9, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v15);
      _os_crash("assertion failure: (!overflow) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", v81);
      __break(1u);
    }

    v18 = (*(v8 + 32) + 16 * v16);
    *(v18[1] + 4 * v15) = v14;
    v19 = (*v18 + 272 * v15);
    *(v8 + 52) = *v19;
  }

  ++*(v8 + 40);
  re::ecs2::PhysicsSimulationData::PhysicsSimulationData(v19, v11, 0, this + 24, *(this + 104), (v12 ^ 1) & 1, v10);
  v22 = *(v8 + 56);
  memset(v86, 0, 24);
  v23 = v84;
  v24 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v84 ^ (v84 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v84 ^ (v84 >> 30))) >> 27));
  v25 = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(v86, this + 528, v84, v24 ^ (v24 >> 31));
  if (HIDWORD(v86[0]) == 0x7FFFFFFF)
  {
    v25 = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::allocEntry(this + 528, DWORD2(v86[0]), *&v86[0]);
    v23 = v84;
    *(v25 + 1) = v84;
    *(v25 + 2) = v15 + (v16 << 16) + ((v22 & 0xFFFFFF) << 32);
    ++*(this + 142);
  }

  v85 = v23;
  v27 = *(v23 + 288);
  if (!v27)
  {
    re::internal::assertLog(4, v26, "assertion failure: '%s' (%s:line %i) An event bus is expected for this system to track entity state changes.", "eventBus", "registerScene", 106);
    _os_crash("assertion failure: (eventBus) An event bus is expected for this system to track entity state changes.");
    __break(1u);
    goto LABEL_47;
  }

  v28 = this + 16;
  v86[0] = 0uLL;
  LODWORD(v86[1]) = 1;
  v87 = 0uLL;
  *(&v86[1] + 1) = 0;
  LODWORD(v88) = 0;
  v29 = (*(*(this + 2) + 16))(this + 16);
  if (v30)
  {
    v31 = v29;
    v32 = 8 * v30;
    do
    {
      v33 = *v31++;
      *&v90[24] = re::globalAllocators(v29)[2];
      v34 = (*(**&v90[24] + 32))(*&v90[24], 32, 0);
      *v34 = &unk_1F5CD64E0;
      v34[1] = v28;
      v34[2] = re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::invalidateEntityHierarchyEventHandler<REComponentDidChangeEvent>;
      v34[3] = 0;
      *&v90[32] = v34;
      v35 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v27, v90, v33, 0);
      v37 = v36;
      v38 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v86);
      *v38 = v35;
      v38[1] = v37;
      re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v90);
      re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>((this + 16), v27, v86, v33);
      v29 = re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>((this + 16), v27, v86, v33);
      v32 -= 8;
    }

    while (v32);
  }

  v39 = (*(*v28 + 24))(this + 16);
  if (v40)
  {
    v41 = v39;
    v42 = 8 * v40;
    do
    {
      v43 = *v41++;
      re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>((this + 16), v27, v86, v43);
      v39 = re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>((this + 16), v27, v86, v43);
      v42 -= 8;
    }

    while (v42);
  }

  *&v90[24] = re::globalAllocators(v39)[2];
  v44 = (*(**&v90[24] + 32))(*&v90[24], 32, 0);
  *v44 = &unk_1F5CD65E8;
  v44[1] = v28;
  v44[2] = re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::invalidateEntityHierarchyEventHandler<RESceneEntityDidReparentEvent>;
  v44[3] = 0;
  *&v90[32] = v44;
  v45 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(v27, v90, 0, 0);
  v47 = v46;
  v48 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v86);
  *v48 = v45;
  v48[1] = v47;
  v49 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v90);
  *&v90[24] = re::globalAllocators(v49)[2];
  v50 = (*(**&v90[24] + 32))(*&v90[24], 32, 0);
  *v50 = &unk_1F5CD6640;
  v50[1] = v28;
  v50[2] = re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::invalidateEntityHierarchyEventHandler<RESceneEntityDidActivateEvent>;
  v50[3] = 0;
  *&v90[32] = v50;
  v51 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidActivateEvent>(v27, v90, 0, 0);
  v53 = v52;
  v54 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v86);
  *v54 = v51;
  v54[1] = v53;
  v55 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::destroyCallable(v90);
  *&v90[24] = re::globalAllocators(v55)[2];
  v56 = (*(**&v90[24] + 32))(*&v90[24], 32, 0);
  *v56 = &unk_1F5CD6698;
  v56[1] = v28;
  v56[2] = re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::invalidateEntityHierarchyEventHandler<RESceneEntityWillDeactivateEvent>;
  v56[3] = 0;
  *&v90[32] = v56;
  v57 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(v27, v90, 0, 0);
  v59 = v58;
  v60 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v86);
  *v60 = v57;
  v60[1] = v59;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::destroyCallable(v90);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::add(this + 168, &v85, v86);
  v61 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v85 ^ (v85 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v85 ^ (v85 >> 30))) >> 27));
  v62 = v61 ^ (v61 >> 31);
  v63 = *(this + 12);
  if (!v63)
  {
    LODWORD(v64) = 0;
    goto LABEL_39;
  }

  v64 = v62 % v63;
  v65 = *(*(this + 4) + 4 * (v62 % v63));
  if (v65 == 0x7FFFFFFF)
  {
LABEL_39:
    re::HashSetBase<re::ecs2::Scene const*,re::ecs2::Scene const*,re::internal::ValueAsKey<re::ecs2::Scene const*>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::addAsCopy(this + 24, v64, v62, &v85, &v85);
    ++*(this + 16);
    goto LABEL_40;
  }

  v66 = *(this + 5);
  while (*(v66 + 24 * v65 + 16) != v85)
  {
    LODWORD(v65) = *(v66 + 24 * v65 + 8) & 0x7FFFFFFF;
    if (v65 == 0x7FFFFFFF)
    {
      goto LABEL_39;
    }
  }

LABEL_40:
  re::BucketArray<RESubscriptionHandle,8ul>::deinit(v86);
  result = *&v86[0];
  if (*&v86[0] && (v86[1] & 1) == 0)
  {
    result = (*(**&v86[0] + 40))();
  }

  v68 = *(v84 + 288);
  if (v68)
  {
    v69 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::operator[](this + 168, &v84);
    *(&v86[1] + 1) = re::globalAllocators(v69)[2];
    v70 = (*(**(&v86[1] + 1) + 32))(*(&v86[1] + 1), 32, 0);
    *v70 = &unk_1F5CD6488;
    v70[1] = v28;
    v70[2] = re::ecs2::PhysicsSimulationTracking::clearPhysicsSimulationEventHandler<RESceneEntityWillDeactivateEvent>;
    v70[3] = 0;
    *&v87 = v70;
    v71 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(v68, v86, 0, 0);
    v73 = v72;
    v74 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v69);
    *v74 = v71;
    v74[1] = v73;
    return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::destroyCallable(v86);
  }

  return result;
}

void re::ecs2::PhysicsSimulationManager::unregisterScene(re::ecs2::PhysicsSimulationManager *this, unint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v37 = a2;
  *buf = a2;
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 24, buf);
  v4 = *(*buf + 104);
  v5 = *(v4 + 344);
  if (v5)
  {
    v6 = *(v4 + 360);
    v7 = 8 * v5;
    do
    {
      if (*(*v6 + 304))
      {
        (*(*(this + 2) + 40))(this + 16);
      }

      v6 += 8;
      v7 -= 8;
    }

    while (v7);
  }

  v8 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 168, buf);
  if (v8)
  {
    v9 = *(*buf + 288);
    if (v9)
    {
      v10 = v8;
      v11 = *(v8 + 40);
      if (v11)
      {
        for (i = 0; i != v11; ++i)
        {
          v13 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](v10, i);
          re::EventBus::unsubscribe(v9, *v13, v13[1]);
        }
      }
    }

    re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::remove(this + 168, buf);
  }

  v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v15 = v14 ^ (v14 >> 31);
  v16 = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(buf, this + 528, a2, v15);
  v17 = v39;
  if (v39 != 0x7FFFFFFF)
  {
    v18 = *(this + 68);
    v19 = (v18 + 32 * v39);
    v20 = *v19 & 0x7FFFFFFF;
    if (v40 == 0x7FFFFFFF)
    {
      *(*(this + 67) + 4 * *&buf[8]) = v20;
    }

    else
    {
      *(v18 + 32 * v40) = *(v18 + 32 * v40) & 0x80000000 | v20;
    }

    *v19 = *(this + 141);
    *(this + 141) = v17;
    --*(this + 139);
    ++*(this + 142);
  }

  v21 = *re::physicsLogObjects(v16);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "PhysicsSimulationTracking::unregisterScene begin %p", buf, 0xCu);
  }

  v22 = re::HashTable<re::ecs2::Scene const*,re::DataArray<re::ecs2::PhysicsSimulationData>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(this + 480, &v37, v15, buf);
  v23 = v39;
  if (v39 != 0x7FFFFFFF)
  {
    v24 = *(this + 62);
    v25 = *(v24 + 88 * v39) & 0x7FFFFFFF;
    if (v40 == 0x7FFFFFFF)
    {
      *(*(this + 61) + 4 * *&buf[8]) = v25;
      v23 = v39;
    }

    else
    {
      *(v24 + 88 * v40) = *(v24 + 88 * v40) & 0x80000000 | v25;
    }

    v22 = re::HashTable<re::ecs2::Scene const*,re::DataArray<re::ecs2::PhysicsSimulationData>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::free(v24, v23);
    v26 = v39;
    *(*(this + 62) + 88 * v39) = *(*(this + 62) + 88 * v39) & 0x80000000 | *(this + 129);
    *(this + 129) = v26;
    --*(this + 127);
    ++*(this + 130);
  }

  v27 = *re::physicsLogObjects(v22);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v37;
    _os_log_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_DEFAULT, "PhysicsSimulationTracking::unregisterScene end %p", buf, 0xCu);
  }

  if (*(this + 58))
  {
    v28 = 0;
    do
    {
      v29 = v37;
      if (v29 == *re::BucketArray<RESubscriptionHandle,8ul>::operator[](this + 424, v28))
      {
        v32 = *(this + 58);
        if (v32 <= v28)
        {
          re::internal::assertLog(6, v30, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "removeAt", 848, v28, v32);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v35, v36);
          __break(1u);
        }

        v33 = v32 - 1;
        if (v32 - 1 > v28)
        {
          v34 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](this + 424, v33);
          *re::BucketArray<RESubscriptionHandle,8ul>::operator[](this + 424, v28) = *v34;
          v33 = *(this + 58) - 1;
        }

        re::BucketArray<RESubscriptionHandle,8ul>::operator[](this + 424, v33);
        v31 = *(this + 58) - 1;
        *(this + 58) = v31;
        ++*(this + 118);
      }

      else
      {
        ++v28;
        v31 = *(this + 58);
      }
    }

    while (v28 < v31);
  }
}

uint64_t re::ecs2::PhysicsSimulationManager::setDefaultGravity(uint64_t result, _OWORD *a2)
{
  v3 = result;
  *(result + 384) = *a2;
  v4 = *(result + 512);
  if (v4)
  {
    v5 = 0;
    v6 = *(result + 496);
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
        LODWORD(v5) = *(result + 512);
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
    v8 = *(v3 + 496) + 88 * v5 + 16;
    result = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v15, v8, 0);
    if (v8 != v15 || v16 != 0xFFFFFFFFLL)
    {
      do
      {
        v10 = re::DataArray<re::ecs2::PhysicsSimulationData>::DataArrayIterator<re::ecs2::PhysicsSimulationData,re::ecs2::PhysicsSimulationData&>::operator*(&v15);
        if ((*(v10 + 64) & 1) == 0)
        {
          v11 = *(v10 + 16);
          if (v11)
          {
            (*(*v11 + 80))(*(v10 + 16), a2);
          }

          else
          {
            *(v10 + 240) = *a2;
          }
        }

        result = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v15);
      }

      while (v15 != v8 || v16 != 0xFFFF || WORD1(v16) != 0xFFFF);
    }

    v14 = *(v3 + 512);
    if (v14 <= v5 + 1)
    {
      v14 = v5 + 1;
    }

    while (v14 - 1 != v5)
    {
      LODWORD(v5) = v5 + 1;
      if ((*(*(v3 + 496) + 88 * v5) & 0x80000000) != 0)
      {
        goto LABEL_30;
      }
    }

    LODWORD(v5) = v14;
LABEL_30:
    ;
  }

  return result;
}

float re::ecs2::PhysicsSimulationManager::defaultFixedTimeStep(re::ecs2::PhysicsSimulationManager *this)
{
  result = *(this + 102);
  if (result <= 0.0)
  {
    return *(this + 103);
  }

  return result;
}

uint64_t re::ecs2::PhysicsSimulationManager::setDefaultMaxSubStepCount(uint64_t this, int a2)
{
  v3 = this;
  *(this + 416) = a2;
  v4 = *(this + 512);
  if (v4)
  {
    v5 = 0;
    v6 = *(this + 496);
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
        LODWORD(v5) = *(this + 512);
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
    v8 = *(v3 + 496) + 88 * v5 + 16;
    this = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v16, v8, 0);
    if (v8 != v16 || v17 != 0xFFFFFFFFLL)
    {
      do
      {
        v10 = re::DataArray<re::ecs2::PhysicsSimulationData>::DataArrayIterator<re::ecs2::PhysicsSimulationData,re::ecs2::PhysicsSimulationData&>::operator*(&v16);
        v11 = *(v10 + 16);
        if (v11)
        {
          v12 = (v11 + 64);
        }

        else
        {
          v12 = (v10 + 260);
        }

        *v12 = a2;
        this = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v16);
      }

      while (v16 != v8 || v17 != 0xFFFF || WORD1(v17) != 0xFFFF);
    }

    v15 = *(v3 + 512);
    if (v15 <= v5 + 1)
    {
      v15 = v5 + 1;
    }

    while (v15 - 1 != v5)
    {
      LODWORD(v5) = v5 + 1;
      if ((*(*(v3 + 496) + 88 * v5) & 0x80000000) != 0)
      {
        goto LABEL_29;
      }
    }

    LODWORD(v5) = v15;
LABEL_29:
    ;
  }

  return this;
}

uint64_t re::ecs2::PhysicsSimulationManager::isSimulationPendingDestroy(re::ecs2::PhysicsSimulationManager *this, const re::PhysicsSimulation *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = *(this + 58);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = this + 448;
  while (1)
  {
    v9 = *(this + 58);
    if (v9 <= v7)
    {
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, v7, v9);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v17, v18);
      __break(1u);
LABEL_15:
      v22 = 0;
      memset(v31, 0, sizeof(v31));
      v14 = MEMORY[0x1E69E9C10];
      v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v23 = 136315906;
      v24 = "operator[]";
      v25 = 1024;
      if (v15)
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      v26 = 866;
      v27 = 2048;
      v28 = v2;
      v29 = 2048;
      v30 = v3;
      _os_log_send_and_compose_impl(v16, &v22, v31, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v19, v20);
      _os_crash_msg();
      __break(1u);
    }

    v2 = v7 >> 3;
    v3 = *(this + 54);
    if (v3 <= v7 >> 3)
    {
      goto LABEL_15;
    }

    v10 = v8;
    if ((*(this + 440) & 1) == 0)
    {
      v10 = *(this + 57);
    }

    v21 = *(*&v10[8 * v2] + 16 * (v7 & 7));
    v11 = re::HashTable<re::ecs2::Scene const*,re::DataArray<re::ecs2::PhysicsSimulationData>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 480, &v21);
    if (v11)
    {
      v12 = re::DataArray<re::ecs2::PhysicsSimulationData>::tryGet(v11, *(&v21 + 1));
      if (v12)
      {
        if (*(v12 + 16) == a2)
        {
          return 1;
        }
      }
    }

    if (v4 == ++v7)
    {
      return 0;
    }
  }
}

uint64_t re::internal::CallableMemFn<re::ecs2::PhysicsSimulationTracking,REEventHandlerResult (re::ecs2::PhysicsSimulationTracking::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::PhysicsSimulationTracking,REEventHandlerResult (re::ecs2::PhysicsSimulationTracking::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD6488;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::PhysicsSimulationTracking,REEventHandlerResult (re::ecs2::PhysicsSimulationTracking::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD6488;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

_anonymous_namespace_ *re::DataArray<re::ecs2::PhysicsSimulationData>::allocBlock(void *a1)
{
  v3 = 272 * *(a1 + 11);
  v4 = (*(**a1 + 32))(*a1, v3, 0);
  if (!v4)
  {
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v3, *(*a1 + 8));
    _os_crash("assertion failure: (block.elements) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v16, v18);
    __break(1u);
    goto LABEL_16;
  }

  v6 = v4;
  v1 = 4 * *(a1 + 11);
  result = (*(**a1 + 32))(*a1, v1, 0);
  if (!result)
  {
LABEL_16:
    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v1, *(*a1 + 8));
    result = _os_crash("assertion failure: (block.allocationCounters) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v17, v19);
    __break(1u);
    return result;
  }

  v9 = result;
  v11 = a1[1];
  v10 = a1[2];
  if (v10 >= v11)
  {
    v12 = v10 + 1;
    if (v11 < v10 + 1)
    {
      if (*a1)
      {
        v13 = 2 * v11;
        if (!v11)
        {
          v13 = 8;
        }

        if (v13 <= v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v13;
        }

        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v14);
      }

      else
      {
        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v12);
        ++*(a1 + 6);
      }
    }

    v10 = a1[2];
  }

  v15 = (a1[4] + 16 * v10);
  *v15 = v6;
  v15[1] = v9;
  a1[2] = v10 + 1;
  ++*(a1 + 6);
  *(a1 + 12) = 0;
  return result;
}

uint64_t re::HashTable<re::ecs2::Scene const*,re::DataArray<re::ecs2::PhysicsSimulationData>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v26, v9, v8);
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
            v17 = 0;
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::ecs2::Scene const*,re::DataArray<re::ecs2::PhysicsSimulationData>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(a1, *(v13 + 80) % *(a1 + 24), *(v13 + 80));
                v19 = *(v13 + 8);
                *(v18 + 16) = 0;
                v18 += 16;
                *(v18 - 8) = v19;
                *(v18 + 24) = 0;
                *(v18 + 8) = 0u;
                *(v18 + 48) = 0;
                *(v18 + 32) = 0u;
                *(v18 + 52) = 0x1FFFFFFFFLL;
                re::DataArray<re::ecs2::PhysicsSimulationData>::swap(v18, v13 + 16);
              }

              ++v17;
              v13 += 88;
            }

            while (v17 < v16);
          }

          re::HashTable<re::ecs2::Scene const*,re::DataArray<re::ecs2::PhysicsSimulationData>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(v26);
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
    v21 = *(v20 + 88 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 88 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 88 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v5;
  *(v23 + 80) = a3;
  ++*(a1 + 28);
  return v20 + 88 * v5;
}

uint64_t re::HashTable<re::ecs2::Scene const*,re::DataArray<re::ecs2::PhysicsSimulationData>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::free(uint64_t result, unsigned int a2)
{
  v2 = (result + 88 * a2);
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    v3 = (v2 + 4);
    re::DataArray<re::ecs2::PhysicsSimulationData>::deinit(v3);

    return re::DynamicArray<unsigned long>::deinit(v3);
  }

  return result;
}

uint64_t re::DataArray<re::ecs2::PhysicsSimulationData>::swap(uint64_t a1, uint64_t a2)
{
  v10 = *a1;
  v11 = *(a1 + 8);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v13 = *(a1 + 32);
  *(a1 + 32) = 0;
  ++*(a1 + 24);
  v12 = 1;
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a1, a2);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a2, &v10);
  result = v10;
  if (v10 && v13)
  {
    result = (*(*v10 + 40))();
  }

  v5 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v5;
  v6 = *(a1 + 44);
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = v6;
  v7 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v7;
  v8 = *(a1 + 52);
  *(a1 + 52) = *(a2 + 52);
  *(a2 + 52) = v8;
  v9 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v9;
  return result;
}

uint64_t re::ecs2::PhysicsSimulationData::PhysicsSimulationData(uint64_t a1, re::StringID *a2, uint64_t a3, _OWORD *a4, int a5, char a6, float a7)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  objc_initWeak((a1 + 56), 0);
  *(a1 + 64) = 0;
  *(a1 + 96) = 0;
  *(a1 + 112) = xmmword_1E3047670;
  *(a1 + 128) = xmmword_1E3047680;
  *(a1 + 144) = xmmword_1E30476A0;
  *(a1 + 160) = xmmword_1E30474D0;
  *(a1 + 176) = xmmword_1E3047670;
  *(a1 + 192) = xmmword_1E3047680;
  *(a1 + 208) = xmmword_1E30476A0;
  *(a1 + 224) = xmmword_1E30474D0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0;
  *(a1 + 264) = 0;
  *a1 = a2;
  *(a1 + 8) = re::ServiceLocator::serviceOrNull<re::TransformService>(a2);
  if (a3)
  {
    v14 = (a3 + 8);
  }

  else
  {
    v14 = 0;
  }

  objc_storeWeak((a1 + 56), v14);
  *(a1 + 240) = *a4;
  *(a1 + 256) = a7;
  *(a1 + 260) = a5;
  *(a1 + 264) = a6;
  return a1;
}

uint64_t (***re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CD6538;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v14);
}

uint64_t (***re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CD6590;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v14);
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::invalidateEntityHierarchyEventHandler<REComponentDidChangeEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD64E0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD64E0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD6538;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD6538;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD6590;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD6590;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::invalidateEntityHierarchyEventHandler<RESceneEntityDidReparentEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD65E8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD65E8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::invalidateEntityHierarchyEventHandler<RESceneEntityDidActivateEvent>(uint64_t a1, unint64_t a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD6640;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD6640;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::invalidateEntityHierarchyEventHandler<RESceneEntityWillDeactivateEvent>(uint64_t a1, unint64_t a2)
{
  v5 = a2;
  v3 = a1 + 200;
  (*(*a1 + 40))(a1);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 104, &v5);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(v3, &v5);
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD6698;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD6698;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::RootPhysicsSimulationData,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::RootPhysicsSimulationData,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::RootPhysicsSimulationData,32ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 1024, 0);
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

unint64_t re::BucketArray<re::ecs2::RootPhysicsSimulationData,32ul>::operator[](uint64_t a1, unint64_t a2)
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

  return *(v5 + 8 * v2) + 32 * (a2 & 0x1F);
}

uint64_t re::BucketArray<re::ecs2::RootPhysicsSimulationData,32ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 32 * v3)
  {
    re::BucketArray<re::ecs2::RootPhysicsSimulationData,32ul>::setBucketsCapacity(a1, (v2 + 32) >> 5);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 5)
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
    v16 = v2 >> 5;
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

  v5 = *(v4 + 8 * (v2 >> 5));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 32 * (v2 & 0x1F);
}

uint64_t re::BucketArray<re::Pair<re::ecs2::Scene const*,re::DataArrayHandle<re::ecs2::PhysicsSimulationData>,true>,8ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 8 * v3)
  {
    re::BucketArray<re::Pair<re::ecs2::Scene const*,re::DataArrayHandle<re::ecs2::PhysicsSimulationData>,true>,8ul>::setBucketsCapacity(a1, (v2 + 8) >> 3);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 3)
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
    v16 = v2 >> 3;
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

  v5 = *(v4 + 8 * (v2 >> 3));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 16 * (v2 & 7);
}

_anonymous_namespace_ *re::BucketArray<re::Pair<re::ecs2::Scene const*,re::DataArrayHandle<re::ecs2::PhysicsSimulationData>,true>,8ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 8 * a2)
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
          result = (*(**v3 + 32))(*v3, 128, 0);
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
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
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

LABEL_22:
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
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    *(v3 + 5) = 0;
    result = re::BucketArray<re::Pair<re::ecs2::Scene const*,re::DataArrayHandle<re::ecs2::PhysicsSimulationData>,true>,8ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::RootPhysicsSimulationData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v26, v9, v8);
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
            v17 = 0;
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::ecs2::Entity const*,re::ecs2::RootPhysicsSimulationData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(a1, *(v13 + 48) % *(a1 + 24), *(v13 + 48));
                *(v18 + 8) = *(v13 + 8);
                v19 = *(v13 + 32);
                *(v18 + 16) = *(v13 + 16);
                *(v18 + 32) = v19;
              }

              ++v17;
              v13 += 56;
            }

            while (v17 < v16);
          }

          re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::deinit(v26);
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
    v21 = *(v20 + 56 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 56 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 56 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v5;
  *(v23 + 48) = a3;
  ++*(a1 + 28);
  return v20 + 56 * v5;
}

double re::HashTable<re::ecs2::Scene const*,re::BucketArray<re::ecs2::Entity const*,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(uint64_t *a1)
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
          v8 = v6 + v4 + 16;
          re::BucketArray<re::ecs2::Entity const*,8ul>::deinit(v8);
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v8);
          v3 = *(a1 + 8);
        }

        v4 += 80;
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

_anonymous_namespace_ *re::BucketArray<re::ecs2::Entity const*,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::Entity const*,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::Entity const*,8ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 8 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 64, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t re::BucketArray<re::ecs2::Entity const*,8ul>::deinit(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      if (v3 <= i >> 3)
      {
        v6 = i >> 3;
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
        v16 = v6;
        v17 = 2048;
        v18 = v3;
        _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
        _os_crash_msg();
        __break(1u);
      }
    }
  }

  else if (!v3)
  {
    goto LABEL_8;
  }

  do
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  while (*(a1 + 8));
LABEL_8:
  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

uint64_t re::HashTable<re::ecs2::Scene const*,re::BucketArray<re::ecs2::Entity const*,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v25, v9, v8);
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
                v17 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<re::ecs2::Entity const*,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(a1, *(v13 + 72) % *(a1 + 24), *(v13 + 72));
                v18 = *(v13 + 8);
                *(v17 + 16) = 0;
                v17 += 16;
                *(v17 - 8) = v18;
                *(v17 + 8) = 0;
                *(v17 + 16) = 1;
                *(v17 + 48) = 0;
                *(v17 + 32) = 0;
                *(v17 + 40) = 0;
                *(v17 + 24) = 0;
                re::BucketArray<re::ecs2::Entity const*,8ul>::swap(v17, v13 + 16);
              }

              v13 += 80;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::ecs2::Scene const*,re::BucketArray<re::ecs2::Entity const*,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(v25);
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
    v20 = *(v19 + 80 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 80 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 80 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 72) = a3;
  ++*(a1 + 28);
  return v19 + 80 * v5;
}

uint64_t re::BucketArray<re::ecs2::Entity const*,8ul>::swap(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  v8 = 1;
  v9 = 0;
  v10 = 0;
  v4 = *(a1 + 16);
  if (v4)
  {
    if (*(a1 + 8))
    {
      re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::move(v7, a1);
    }

    else
    {
      v7[0] = *a1;
      *(a1 + 16) = v4 + 2;
      v8 = 3;
    }
  }

  else
  {
    v8 = 3;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap(v7, a1);
  }

  re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::operator=(a1, a2);
  re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::operator=(a2, v7);
  result = v7[0];
  if (v7[0] && (v8 & 1) == 0)
  {
    result = (*(*v7[0] + 40))();
  }

  v6 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v6;
  ++*(a1 + 48);
  ++*(a2 + 48);
  return result;
}

void *re::ecs2::allocInfo_GroundPlaneSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_159, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_159))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19FF68, "GroundPlaneSystem");
    __cxa_guard_release(&_MergedGlobals_159);
  }

  return &unk_1EE19FF68;
}

void re::ecs2::initInfo_GroundPlaneSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xD8D974E6B5794F08;
  v8[1] = "GroundPlaneSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0xE000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_GroundPlaneSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::GroundPlaneSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::GroundPlaneSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::GroundPlaneSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::GroundPlaneSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::GroundPlaneSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::GroundPlaneSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void *re::internal::defaultConstruct<re::ecs2::GroundPlaneSystem>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
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
  result = re::ecs2::System::System(a3, 1);
  *result = &unk_1F5CD66F0;
  return result;
}

void *re::internal::defaultConstructV2<re::ecs2::GroundPlaneSystem>(_OWORD *a1)
{
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
  result = re::ecs2::System::System(a1, 1);
  *result = &unk_1F5CD66F0;
  return result;
}

void re::ecs2::GroundPlaneSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 200);
  if (v3)
  {
    v4 = *(a3 + 216);
    v5 = &v4[v3];
    do
    {
      v6 = *v4;
      v7 = re::ecs2::SceneComponentTable::get((*v4 + 200), re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingRenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v7 && *(v7 + 384))
      {
        v8 = *(**(v7 + 400) + 31);
      }

      else
      {
        v8 = 0;
      }

      v9 = re::ecs2::SceneComponentTable::get((v6 + 200), re::ecs2::ComponentImpl<re::ecs2::GroundPlaneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v9)
      {
        v10 = *(v9 + 384);
        if (v10)
        {
          v11 = *(v9 + 400);
          v12 = 8 * v10;
          do
          {
            v13 = *v11++;
            re::ecs2::Entity::setSelfEnabled(*(v13 + 16), (*(v13 + 25) & v8 & 1) == 0);
            v12 -= 8;
          }

          while (v12);
        }
      }

      ++v4;
    }

    while (v4 != v5);
  }
}

void re::ecs2::GroundPlaneSystem::~GroundPlaneSystem(re::ecs2::GroundPlaneSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void re::StateMachineBlackboardBinding::collectAllGraphParameters(uint64_t a1, uint64_t a2)
{
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a2);
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a2 + 48);
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a2 + 96);
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a2 + 144);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(a1 + 32);
    v20 = &v5[v4];
    while (1)
    {
      v21 = v5;
      v6 = *v5;
      v7 = *(v6 + 40);
      if (v7)
      {
        break;
      }

LABEL_19:
      v5 = v21 + 1;
      if (v21 + 1 == v20)
      {
        return;
      }
    }

    v8 = *(v6 + 56);
    v22 = &v8[v7];
    while (1)
    {
      v23 = v8;
      v9 = *v8;
      v10 = *(v9 + 24);
      if (v10)
      {
        break;
      }

LABEL_18:
      v8 = v23 + 1;
      if (v23 + 1 == v22)
      {
        goto LABEL_19;
      }
    }

    v11 = *(v9 + 40);
    v24 = v11 + 8 * v10;
    while (1)
    {
      v12 = *(*v11 + 16);
      if (v12)
      {
        break;
      }

LABEL_17:
      v11 += 8;
      if (v11 == v24)
      {
        goto LABEL_18;
      }
    }

    v13 = *(*v11 + 32);
    v14 = 8 * v12;
    while (1)
    {
      v15 = *v13;
      if (*v13)
      {
        v17 = a2;
        if (v16)
        {
          goto LABEL_15;
        }

        v17 = a2 + 48;
        if (v18)
        {
          goto LABEL_15;
        }

        {
          re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a2 + 144, (v15 + 8));
          v17 = a2 + 96;
LABEL_15:
          re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v17, (v15 + 8));
          goto LABEL_16;
        }

        v17 = a2 + 96;
        if (v19)
        {
          goto LABEL_15;
        }
      }

LABEL_16:
      ++v13;
      v14 -= 8;
      if (!v14)
      {
        goto LABEL_17;
      }
    }
  }
}

uint64_t re::StateMachineBlackboardBinding::removeUnreferencedParameters(uint64_t a1, uint64_t a2)
{
  v53 = 0;
  v50[1] = 0;
  v51 = 0;
  v50[0] = 0;
  v52 = 0;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = 0;
    v6 = *(a1 + 24);
    while (1)
    {
      v7 = *v6;
      v6 += 8;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(a1 + 40);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 == v4)
  {
    goto LABEL_28;
  }

  v8 = *(a1 + 24);
  do
  {
    v9 = v8 + 32 * v5;
    if (!re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::contains(a2, (v9 + 8)))
    {
      re::DynamicArray<re::StringID>::add(v50, (v9 + 8));
    }

    if (*(a1 + 40) <= (v5 + 1))
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = *(a1 + 40);
    }

    v8 = *(a1 + 24);
    while (v10 - 1 != v5)
    {
      LODWORD(v5) = v5 + 1;
      if ((*(v8 + 32 * v5) & 0x80000000) != 0)
      {
        goto LABEL_20;
      }
    }

    LODWORD(v5) = v10;
LABEL_20:
    ;
  }

  while (v5 != v4);
  if (!v51)
  {
LABEL_28:
    v51 = 0;
  }

  else
  {
    v11 = v53;
    v12 = 16 * v51;
    do
    {
      re::StateParameterBlackboard::removeStateParameterInt(a1, v11);
      v11 = (v11 + 16);
      v12 -= 16;
    }

    while (v12);
    v13 = v53;
    v14 = v51;
    v51 = 0;
    if (v14)
    {
      v15 = 16 * v14;
      do
      {
        re::StringID::destroyString(v13);
        v13 = (v13 + 16);
        v15 -= 16;
      }

      while (v15);
    }
  }

  ++v52;
  v16 = *(a1 + 88);
  if (v16)
  {
    v17 = 0;
    v18 = *(a1 + 72);
    while (1)
    {
      v19 = *v18;
      v18 += 8;
      if (v19 < 0)
      {
        break;
      }

      if (v16 == ++v17)
      {
        LODWORD(v17) = *(a1 + 88);
        break;
      }
    }
  }

  else
  {
    LODWORD(v17) = 0;
  }

  if (v17 != v16)
  {
    v20 = *(a1 + 72);
    do
    {
      v21 = v20 + 32 * v17;
      if (!re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::contains(a2 + 48, (v21 + 8)))
      {
        re::DynamicArray<re::StringID>::add(v50, (v21 + 8));
      }

      if (*(a1 + 88) <= (v17 + 1))
      {
        v22 = v17 + 1;
      }

      else
      {
        v22 = *(a1 + 88);
      }

      v20 = *(a1 + 72);
      while (v22 - 1 != v17)
      {
        LODWORD(v17) = v17 + 1;
        if ((*(v20 + 32 * v17) & 0x80000000) != 0)
        {
          goto LABEL_48;
        }
      }

      LODWORD(v17) = v22;
LABEL_48:
      ;
    }

    while (v17 != v16);
  }

  if (v51)
  {
    v23 = v53;
    v24 = 16 * v51;
    do
    {
      re::StateParameterBlackboard::removeStateParameterFloat(a1, v23);
      v23 = (v23 + 16);
      v24 -= 16;
    }

    while (v24);
    v25 = v51;
    v26 = v53;
    v51 = 0;
    if (v25)
    {
      v27 = 16 * v25;
      do
      {
        re::StringID::destroyString(v26);
        v26 = (v26 + 16);
        v27 -= 16;
      }

      while (v27);
    }
  }

  ++v52;
  v28 = *(a1 + 136);
  if (v28)
  {
    v29 = 0;
    v30 = *(a1 + 120);
    while (1)
    {
      v31 = *v30;
      v30 += 8;
      if (v31 < 0)
      {
        break;
      }

      if (v28 == ++v29)
      {
        LODWORD(v29) = *(a1 + 136);
        break;
      }
    }
  }

  else
  {
    LODWORD(v29) = 0;
  }

  if (v29 != v28)
  {
    v32 = *(a1 + 120);
    do
    {
      v33 = v32 + 32 * v29;
      if (!re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::contains(a2 + 96, (v33 + 8)))
      {
        re::DynamicArray<re::StringID>::add(v50, (v33 + 8));
      }

      if (*(a1 + 136) <= (v29 + 1))
      {
        v34 = v29 + 1;
      }

      else
      {
        v34 = *(a1 + 136);
      }

      v32 = *(a1 + 120);
      while (v34 - 1 != v29)
      {
        LODWORD(v29) = v29 + 1;
        if ((*(v32 + 32 * v29) & 0x80000000) != 0)
        {
          goto LABEL_74;
        }
      }

      LODWORD(v29) = v34;
LABEL_74:
      ;
    }

    while (v29 != v28);
  }

  if (v51)
  {
    v35 = v53;
    v36 = 16 * v51;
    do
    {
      re::StateParameterBlackboard::removeStateParameterBool(a1, v35);
      v35 = (v35 + 16);
      v36 -= 16;
    }

    while (v36);
    v37 = v51;
    v38 = v53;
    v51 = 0;
    if (v37)
    {
      v39 = 16 * v37;
      do
      {
        re::StringID::destroyString(v38);
        v38 = (v38 + 16);
        v39 -= 16;
      }

      while (v39);
    }
  }

  ++v52;
  v40 = *(a1 + 184);
  if (v40)
  {
    v41 = 0;
    v42 = *(a1 + 168);
    while (1)
    {
      v43 = *v42;
      v42 += 8;
      if (v43 < 0)
      {
        break;
      }

      if (v40 == ++v41)
      {
        LODWORD(v41) = *(a1 + 184);
        break;
      }
    }
  }

  else
  {
    LODWORD(v41) = 0;
  }

  if (v41 != v40)
  {
    v44 = *(a1 + 168);
    do
    {
      v45 = v44 + 32 * v41;
      if (!re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::contains(a2 + 144, (v45 + 8)))
      {
        re::DynamicArray<re::StringID>::add(v50, (v45 + 8));
      }

      if (*(a1 + 184) <= (v41 + 1))
      {
        v46 = v41 + 1;
      }

      else
      {
        v46 = *(a1 + 184);
      }

      v44 = *(a1 + 168);
      while (v46 - 1 != v41)
      {
        LODWORD(v41) = v41 + 1;
        if ((*(v44 + 32 * v41) & 0x80000000) != 0)
        {
          goto LABEL_100;
        }
      }

      LODWORD(v41) = v46;
LABEL_100:
      ;
    }

    while (v41 != v40);
  }

  if (v51)
  {
    v47 = v53;
    v48 = 16 * v51;
    do
    {
      re::StateParameterBlackboard::removeStateParameterTrigger(a1, v47);
      v47 = (v47 + 16);
      v48 -= 16;
    }

    while (v48);
  }

  return re::DynamicArray<re::StringID>::deinit(v50);
}

BOOL re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::contains(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v4 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  v5 = *(*(a1 + 8) + 4 * (((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31)) % v2));
  if (v5 == 0x7FFFFFFF)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  do
  {
    result = re::StringID::operator==((v7 + 24 * v5 + 8), a2);
    if (result)
    {
      break;
    }

    v5 = *(v7 + 24 * v5) & 0x7FFFFFFF;
  }

  while (v5 != 0x7FFFFFFF);
  return result;
}

re::StateParameterBlackboard *re::StateMachineBlackboardBinding::addMissingParameters(re::StateParameterBlackboard *result, uint64_t a2, void *a3)
{
  v4 = result;
  v70[4] = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 6;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 != v5)
  {
    v9 = *(a2 + 16);
    do
    {
      v10 = v9 + 24 * v6;
      v12 = *(v10 + 8);
      v11 = (v10 + 8);
      v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v12 >> 31) ^ (v12 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v12 >> 31) ^ (v12 >> 1))) >> 27));
      result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v4 + 8, v11, v13 ^ (v13 >> 31), &v62);
      if (HIDWORD(v62) == 0x7FFFFFFF)
      {
        v61 = 0;
        v58 = 0u;
        v59 = 0u;
        v60 = 0;
        v14 = a3[23];
        if (!v14)
        {
          v14 = re::ecs2::EntityComponentCollection::add((a3 + 6), re::ecs2::ComponentImpl<re::ecs2::KeyValueComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        }

        v15 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&v11->var0 >> 31) ^ (*&v11->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&v11->var0 >> 31) ^ (*&v11->var0 >> 1))) >> 27));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((v14 + 89), v11, v15 ^ (v15 >> 31), &v62);
        if (HIDWORD(v62) == 0x7FFFFFFF)
        {
          *&v62 = 0;
          re::KeyValueStore::addOrReplaceValue<long long>((v14 + 4), v11, &v62);
          re::ecs2::Component::markDirty(v14);
        }

        re::makeBindNode(v70, a3);
        re::DynamicString::operator+(&v62, &v66, v11->var1);
        re::DynamicString::operator+(&v67, &v62, "]");
        if (v62)
        {
          if (BYTE8(v62))
          {
            (*(*v62 + 40))();
          }

          v62 = 0u;
          v63 = 0u;
        }

        if (v66 && (BYTE8(v66) & 1) != 0)
        {
          (*(*v66 + 40))();
        }

        v17 = v69;
        if ((v68 & 1) == 0)
        {
          v17 = &v68 + 1;
        }

        v18 = v68 >> 1;
        if (v68)
        {
          v18 = v68 >> 1;
        }

        *&v66 = v17;
        *(&v66 + 1) = v18;
        re::BindNode::bindPoint<long long>(&v62, v70, &v66);
        *&v58 = v62;
        re::DynamicArray<re::RigDataValue>::operator=(&v58 + 8, &v62 + 1);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v62 + 8);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v62 + 8);
        v19 = *(&v59 + 1);
        if (v67 && (v68 & 1) != 0)
        {
          (*(*v67 + 40))();
        }

        re::BindNode::deinit(v70);
        if (v19)
        {
          re::StateParameterBlackboard::addStateParameterInt(v4, v11, &v58);
        }

        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v58 + 8);
        result = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v58 + 8);
      }

      v20 = *(a2 + 32);
      v9 = *(a2 + 16);
      if (v20 <= v6 + 1)
      {
        v20 = v6 + 1;
      }

      while (v20 - 1 != v6)
      {
        LODWORD(v6) = v6 + 1;
        if ((*(v9 + 24 * v6) & 0x80000000) != 0)
        {
          goto LABEL_37;
        }
      }

      LODWORD(v6) = v20;
LABEL_37:
      ;
    }

    while (v6 != v5);
  }

  v21 = *(a2 + 80);
  if (v21)
  {
    v22 = 0;
    v23 = *(a2 + 64);
    while (1)
    {
      v24 = *v23;
      v23 += 6;
      if (v24 < 0)
      {
        break;
      }

      if (v21 == ++v22)
      {
        LODWORD(v22) = *(a2 + 80);
        break;
      }
    }
  }

  else
  {
    LODWORD(v22) = 0;
  }

  if (v22 != v21)
  {
    v25 = *(a2 + 64);
    do
    {
      v26 = v25 + 24 * v22;
      v28 = *(v26 + 8);
      v27 = (v26 + 8);
      v29 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v28 >> 31) ^ (v28 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v28 >> 31) ^ (v28 >> 1))) >> 27));
      result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v4 + 56, v27, v29 ^ (v29 >> 31), &v62);
      if (HIDWORD(v62) == 0x7FFFFFFF)
      {
        v61 = 0;
        v58 = 0u;
        v59 = 0u;
        v60 = 0;
        v30 = a3[23];
        if (!v30)
        {
          v30 = re::ecs2::EntityComponentCollection::add((a3 + 6), re::ecs2::ComponentImpl<re::ecs2::KeyValueComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        }

        v31 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&v27->var0 >> 31) ^ (*&v27->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&v27->var0 >> 31) ^ (*&v27->var0 >> 1))) >> 27));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((v30 + 17), v27, v31 ^ (v31 >> 31), &v62);
        if (HIDWORD(v62) == 0x7FFFFFFF)
        {
          LODWORD(v62) = 0;
          re::KeyValueStore::addOrReplaceValue<float>((v30 + 4), v27, &v62);
          re::ecs2::Component::markDirty(v30);
        }

        re::makeBindNode(v70, a3);
        re::DynamicString::operator+(&v62, &v66, v27->var1);
        re::DynamicString::operator+(&v67, &v62, "]");
        if (v62)
        {
          if (BYTE8(v62))
          {
            (*(*v62 + 40))();
          }

          v62 = 0u;
          v63 = 0u;
        }

        if (v66 && (BYTE8(v66) & 1) != 0)
        {
          (*(*v66 + 40))();
        }

        v33 = v69;
        if ((v68 & 1) == 0)
        {
          v33 = &v68 + 1;
        }

        v34 = v68 >> 1;
        if (v68)
        {
          v34 = v68 >> 1;
        }

        *&v66 = v33;
        *(&v66 + 1) = v34;
        re::BindNode::bindPoint<float>(&v62, v70, &v66);
        *&v58 = v62;
        re::DynamicArray<re::RigDataValue>::operator=(&v58 + 8, &v62 + 1);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v62 + 8);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v62 + 8);
        v35 = *(&v59 + 1);
        if (v67 && (v68 & 1) != 0)
        {
          (*(*v67 + 40))();
        }

        re::BindNode::deinit(v70);
        if (v35)
        {
          re::StateParameterBlackboard::addStateParameterFloat(v4, v27, &v58);
        }

        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v58 + 8);
        result = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v58 + 8);
      }

      v36 = *(a2 + 80);
      v25 = *(a2 + 64);
      if (v36 <= v22 + 1)
      {
        v36 = v22 + 1;
      }

      while (v36 - 1 != v22)
      {
        LODWORD(v22) = v22 + 1;
        if ((*(v25 + 24 * v22) & 0x80000000) != 0)
        {
          goto LABEL_74;
        }
      }

      LODWORD(v22) = v36;
LABEL_74:
      ;
    }

    while (v22 != v21);
  }

  v37 = *(a2 + 128);
  if (v37)
  {
    v38 = 0;
    v39 = *(a2 + 112);
    while (1)
    {
      v40 = *v39;
      v39 += 6;
      if (v40 < 0)
      {
        break;
      }

      if (v37 == ++v38)
      {
        LODWORD(v38) = *(a2 + 128);
        break;
      }
    }
  }

  else
  {
    LODWORD(v38) = 0;
  }

  if (v38 != v37)
  {
    v41 = *(a2 + 112);
    do
    {
      v42 = v41 + 24 * v38;
      v44 = *(v42 + 8);
      v43 = (v42 + 8);
      v45 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v44 >> 31) ^ (v44 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v44 >> 31) ^ (v44 >> 1))) >> 27));
      result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v4 + 104, v43, v45 ^ (v45 >> 31), &v62);
      if (HIDWORD(v62) == 0x7FFFFFFF)
      {
        v65 = 0;
        v62 = 0u;
        v63 = 0u;
        v64 = 0;
        {
          re::StateParameterBlackboard::addStateParameterBool(v4, v43, &v62);
        }

        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v62 + 8);
        result = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v62 + 8);
      }

      v46 = *(a2 + 128);
      v41 = *(a2 + 112);
      if (v46 <= v38 + 1)
      {
        v46 = v38 + 1;
      }

      while (v46 - 1 != v38)
      {
        LODWORD(v38) = v38 + 1;
        if ((*(v41 + 24 * v38) & 0x80000000) != 0)
        {
          goto LABEL_93;
        }
      }

      LODWORD(v38) = v46;
LABEL_93:
      ;
    }

    while (v38 != v37);
  }

  v47 = *(a2 + 176);
  if (v47)
  {
    v48 = 0;
    v49 = *(a2 + 160);
    while (1)
    {
      v50 = *v49;
      v49 += 6;
      if (v50 < 0)
      {
        break;
      }

      if (v47 == ++v48)
      {
        LODWORD(v48) = *(a2 + 176);
        break;
      }
    }
  }

  else
  {
    LODWORD(v48) = 0;
  }

  if (v48 != v47)
  {
    v51 = *(a2 + 160);
    do
    {
      v52 = v51 + 24 * v48;
      v54 = *(v52 + 8);
      v53 = (v52 + 8);
      v55 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v54 >> 31) ^ (v54 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v54 >> 31) ^ (v54 >> 1))) >> 27));
      result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v4 + 152, v53, v55 ^ (v55 >> 31), &v62);
      if (HIDWORD(v62) == 0x7FFFFFFF)
      {
        v65 = 0;
        v62 = 0u;
        v63 = 0u;
        v64 = 0;
        {
          re::StateParameterBlackboard::addStateParameterBool(v4, v53, &v62);
          re::StateParameterBlackboard::addStateParameterTrigger(v4, v53, &v62);
        }

        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v62 + 8);
        result = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v62 + 8);
      }

      v56 = *(a2 + 176);
      v51 = *(a2 + 160);
      if (v56 <= v48 + 1)
      {
        v56 = v48 + 1;
      }

      while (v56 - 1 != v48)
      {
        LODWORD(v48) = v48 + 1;
        if ((*(v51 + 24 * v48) & 0x80000000) != 0)
        {
          goto LABEL_112;
        }
      }

      LODWORD(v48) = v56;
LABEL_112:
      ;
    }

    while (v48 != v47);
  }

  return result;
}

uint64_t re::StateParameterBlackboard::addStateParameterInt(re::StateParameterBlackboard *this, StringID *a2, const re::BindPoint *a3)
{
  v6 = re::globalAllocators(this);
  v7 = (*(*v6[2] + 32))(v6[2], 64, 8);
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 40) = 0;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 0;
  v10 = v7;
  v8 = *a3;
  *v7 = &unk_1F5CD6780;
  *(v7 + 8) = v8;
  re::DynamicArray<re::BindPoint::BindPointData>::operator=(v7 + 16, a3 + 1);
  return re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(this + 8, a2, &v10);
}

uint64_t re::StateParameterBlackboard::addStateParameterFloat(re::StateParameterBlackboard *this, StringID *a2, const re::BindPoint *a3)
{
  v6 = re::globalAllocators(this);
  v7 = (*(*v6[2] + 32))(v6[2], 64, 8);
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 40) = 0;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 0;
  v10 = v7;
  v8 = *a3;
  *v7 = &unk_1F5CD67B8;
  *(v7 + 8) = v8;
  re::DynamicArray<re::BindPoint::BindPointData>::operator=(v7 + 16, a3 + 1);
  return re::HashTable<re::StringID,re::StateParameterFloat *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(this + 56, a2, &v10);
}

BOOL anonymous namespace::createKeyValueEntryAndBindPoint<BOOL>(StringID *a1, void *a2, void *a3)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v6 = a2[23];
  if (!v6)
  {
    v6 = re::ecs2::EntityComponentCollection::add((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::KeyValueComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  }

  v7 = 0xBF58476D1CE4E5B9 * ((*&a1->var0 >> 31) ^ (*&a1->var0 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((v6 + 11), a1, (0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) ^ ((0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) >> 31), v13);
  if (HIDWORD(v13[0]) == 0x7FFFFFFF)
  {
    LOBYTE(v13[0]) = 0;
    re::KeyValueStore::addOrReplaceValue<BOOL>((v6 + 4), a1, v13);
    re::ecs2::Component::markDirty(v6);
  }

  re::makeBindNode(v17, a2);
  re::DynamicString::operator+(v13, &v14, a1->var1);
  re::DynamicString::operator+(&v15, v13, "]");
  if (*&v13[0])
  {
    if (BYTE8(v13[0]))
    {
      (*(**&v13[0] + 40))();
    }

    memset(v13, 0, 32);
  }

  if (v14 && (BYTE8(v14) & 1) != 0)
  {
    (*(*v14 + 40))();
  }

  v9 = v16[1];
  if ((v16[0] & 1) == 0)
  {
    v9 = v16 + 1;
  }

  v10 = LOBYTE(v16[0]) >> 1;
  if (v16[0])
  {
    v10 = v16[0] >> 1;
  }

  *&v14 = v9;
  *(&v14 + 1) = v10;
  re::BindNode::bindPoint<BOOL>(v13, v17, &v14);
  *a3 = *&v13[0];
  re::DynamicArray<re::RigDataValue>::operator=((a3 + 1), v13 + 1);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v13 + 8);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v13 + 8);
  v11 = a3[3];
  if (v15 && (v16[0] & 1) != 0)
  {
    (*(*v15 + 40))();
  }

  re::BindNode::deinit(v17);
  return v11 != 0;
}

uint64_t re::StateParameterBlackboard::addStateParameterBool(re::StateParameterBlackboard *this, StringID *a2, const re::BindPoint *a3)
{
  v6 = re::globalAllocators(this);
  v7 = (*(*v6[2] + 32))(v6[2], 64, 8);
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 40) = 0;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 0;
  v10 = v7;
  v8 = *a3;
  *v7 = &unk_1F5CD67F0;
  *(v7 + 8) = v8;
  re::DynamicArray<re::BindPoint::BindPointData>::operator=(v7 + 16, a3 + 1);
  return re::HashTable<re::StringID,re::StateParameterBool *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(this + 104, a2, &v10);
}

uint64_t re::StateParameterBlackboard::addStateParameterTrigger(re::StateParameterBlackboard *this, StringID *a2, const re::BindPoint *a3)
{
  v6 = re::globalAllocators(this);
  v7 = (*(*v6[2] + 32))(v6[2], 64, 8);
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 40) = 0;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 0;
  v10 = v7;
  v8 = *a3;
  *v7 = &unk_1F5CD6828;
  *(v7 + 8) = v8;
  re::DynamicArray<re::BindPoint::BindPointData>::operator=(v7 + 16, a3 + 1);
  return re::HashTable<re::StringID,re::StateParameterTrigger *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(this + 152, a2, &v10);
}

uint64_t re::StateMachineBlackboardBinding::populateFromExplicitParameterBinding(re::StateMachineBlackboardBinding *this, re::StateParameterBlackboard *a2, re::StateMachineParameterBinding *a3, re::ecs2::Entity *a4)
{
  v23[4] = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 6);
  if ((a4 & 1) == 0 && v6 == *(a2 + 10))
  {
    return 1;
  }

  *(a2 + 10) = v6;
  re::makeBindNode(v23, a3);
  if (!*(a2 + 2))
  {
LABEL_16:
    v7 = 1;
    goto LABEL_19;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    v10 = *(a2 + 4);
    v11 = v10 + v8;
    v12 = *(v10 + v8 + 16);
    if (v12 != 3)
    {
      break;
    }

    v17 = strlen(*(v11 + 32));
    *&v19 = *(v11 + 32);
    *(&v19 + 1) = v17;
    re::BindNode::bindPoint<BOOL>(&v20, v23, &v19);
    if (!v22)
    {
      goto LABEL_17;
    }

    re::StateParameterBlackboard::addStateParameterBool(this, v11, &v20);
    re::StateParameterBlackboard::addStateParameterTrigger(this, v11, &v20);
LABEL_15:
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(v21);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(v21);
    ++v9;
    v8 += 40;
    if (v9 >= *(a2 + 2))
    {
      goto LABEL_16;
    }
  }

  if (v12 == 2)
  {
    v15 = *(v10 + v8 + 32);
    v16 = strlen(v15);
    *&v19 = v15;
    *(&v19 + 1) = v16;
    re::BindNode::bindPoint<float>(&v20, v23, &v19);
    if (!v22)
    {
      goto LABEL_17;
    }

    re::StateParameterBlackboard::addStateParameterFloat(this, v11, &v20);
    goto LABEL_15;
  }

  if (v12 != 1)
  {
    goto LABEL_18;
  }

  v13 = *(v10 + v8 + 32);
  v14 = strlen(v13);
  *&v19 = v13;
  *(&v19 + 1) = v14;
  re::BindNode::bindPoint<long long>(&v20, v23, &v19);
  if (v22)
  {
    re::StateParameterBlackboard::addStateParameterInt(this, v11, &v20);
    goto LABEL_15;
  }

LABEL_17:
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v21);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v21);
LABEL_18:
  v7 = 0;
LABEL_19:
  re::BindNode::deinit(v23);
  return v7;
}

double re::BindNode::bindPoint<long long>(uint64_t *a1, re::BindNode **a2, __int128 *a3)
{
  v4 = a2;
  v5 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
  {
    v13 = a1;
    v12 = a3;
    v5 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
    v4 = a2;
    a3 = v12;
    v10 = v8;
    a1 = v13;
    if (v10)
    {
      re::introspect<long long>(BOOL)::info = re::introspect_int64_t(0, v9);
      v5 = &re::MaterialDefinitionCompiler::getSupportedExtensions(void)const::supportedExtensions;
      a1 = v13;
      v4 = a2;
      a3 = v12;
    }
  }

  v6 = v5[24];

  return re::BindNode::bindPoint(a1, v4, v6, a3);
}

double re::BindNode::bindPoint<float>(uint64_t *a1, re::BindNode **a2, __int128 *a3)
{
  v4 = a2;
  v5 = &unk_1EE187000;
  {
    v13 = a1;
    v12 = a3;
    v5 = &unk_1EE187000;
    v4 = a2;
    a3 = v12;
    v10 = v8;
    a1 = v13;
    if (v10)
    {
      re::introspect<float>(BOOL)::info = re::introspect_float(0, v9);
      v5 = &unk_1EE187000;
      a1 = v13;
      v4 = a2;
      a3 = v12;
    }
  }

  v6 = v5[40];

  return re::BindNode::bindPoint(a1, v4, v6, a3);
}

double re::BindNode::bindPoint<BOOL>@<D0>(uint64_t *__return_ptr a1@<X8>, re::BindNode **a2@<X0>, __int128 *a3@<X1>)
{
  v4 = a3;
  v5 = &unk_1EE187000;
  {
    v13 = a2;
    v11 = a1;
    v5 = &unk_1EE187000;
    a1 = v11;
    v4 = a3;
    v10 = v8;
    a2 = v13;
    if (v10)
    {
      re::introspect<BOOL>(BOOL)::info = re::introspect_BOOL(0, v9);
      v5 = &unk_1EE187000;
      a1 = v11;
      v4 = a3;
      a2 = v13;
    }
  }

  v6 = v5[42];

  return re::BindNode::bindPoint(a1, a2, v6, v4);
}

uint64_t re::StateMachineBlackboardBinding::updateFromGraphsAndParameterBinding(re::StateMachineBlackboardBinding *this, re::StateParameterBlackboard *a2, const re::AssetHandle *a3, re::StateMachineParameterBinding *a4, re::ecs2::Entity *a5)
{
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v14 = 0x7FFFFFFFLL;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v17 = 0x7FFFFFFFLL;
  memset(v18, 0, sizeof(v18));
  v20 = 0x7FFFFFFFLL;
  memset(v21, 0, sizeof(v21));
  v19 = 0;
  v22 = 0;
  v23 = 0x7FFFFFFFLL;
  if (a5)
  {
    v8 = re::AssetHandle::blockUntilLoaded<re::StateMachineAsset>(a2);
    if (v8)
    {
      re::StateMachineAsset::getAllGraphs(v8, v11);
      re::StateMachineBlackboardBinding::collectAllGraphParameters(v11, v12);
      if (v11[0] && v11[4])
      {
        (*(*v11[0] + 40))();
      }

      re::StateMachineBlackboardBinding::removeUnreferencedParameters(this, v12);
    }

    v9 = 1;
    re::StateMachineBlackboardBinding::populateFromExplicitParameterBinding(this, a3, a4, 1);
    re::StateMachineBlackboardBinding::addMissingParameters(this, v12, a4);
  }

  else
  {
    v9 = re::StateMachineBlackboardBinding::populateFromExplicitParameterBinding(this, a3, a4, 0);
  }

  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v21);
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v18);
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v15);
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v12);
  return v9;
}

uint64_t re::AssetHandle::blockUntilLoaded<re::StateMachineAsset>(re::StateMachineAsset *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = re::StateMachineAsset::assetType(a1);
  v3 = re::AssetHandle::assetWithType(a1, v2, 0);
  if (!v3)
  {
    v4 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = re::AssetHandle::assetInfo(a1);
      if (v6[17])
      {
        v7 = v6[18];
      }

      else
      {
        v7 = v6 + 137;
      }

      v8 = 136315138;
      v9 = v7;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", &v8, 0xCu);
    }
  }

  return v3;
}

uint64_t re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 24;
  }

  v7 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
  re::StringID::StringID((v7 + 8), a2);
  *(v7 + 24) = *a3;
  v8 = v7 + 24;
  ++*(a1 + 40);
  return v8;
}

uint64_t re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 32 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 32 * v4;
}

void re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
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
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
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

void *re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(void *result, uint64_t a2)
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
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 6), v9);
        v10 = *(a2 + 16) + v5;
        v11 = *(v10 + 8);
        result[1] = result[1] & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        result[1] = *(v10 + 8) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        result[2] = *(v10 + 16);
        *(v10 + 8) = 0;
        *(v10 + 16) = &str_67;
        result[3] = *(*(a2 + 16) + v5 + 24);
        v2 = *(a2 + 32);
      }

      v5 += 32;
    }
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::StateParameterFloat *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 24;
  }

  v7 = re::HashTable<re::StringID,re::StateParameterFloat *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
  re::StringID::StringID((v7 + 8), a2);
  *(v7 + 24) = *a3;
  v8 = v7 + 24;
  ++*(a1 + 40);
  return v8;
}

uint64_t re::HashTable<re::StringID,re::StateParameterFloat *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::StateParameterFloat *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 32 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 32 * v4;
}

void re::HashTable<re::StringID,re::StateParameterFloat *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
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
      re::HashTable<re::StringID,re::StateParameterFloat *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
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

void *re::HashTable<re::StringID,re::StateParameterFloat *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(void *result, uint64_t a2)
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
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        result = re::HashTable<re::StringID,re::StateParameterFloat *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 6), v9);
        v10 = *(a2 + 16) + v5;
        v11 = *(v10 + 8);
        result[1] = result[1] & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        result[1] = *(v10 + 8) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        result[2] = *(v10 + 16);
        *(v10 + 8) = 0;
        *(v10 + 16) = &str_67;
        result[3] = *(*(a2 + 16) + v5 + 24);
        v2 = *(a2 + 32);
      }

      v5 += 32;
    }
  }

  return result;
}